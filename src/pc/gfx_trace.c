/* F3DEX2 display-list tracer.
 *
 * Not a renderer, and specifically not the first half of one written badly.
 * It walks a display list, decodes each command's opcode and the fields that
 * are cheap and unambiguous to read, follows G_DL branches, and stops at
 * G_ENDDL. That is the part of "interpret a display list" that contains no
 * rendering decisions at all, so it can be written now, be correct now, and
 * be thrown away or kept independently of whatever renderer eventually
 * appears.
 *
 * It earns its place by answering questions that otherwise get guessed:
 * how deep do this game's lists nest, which combine modes does it actually
 * use, does it use G_LOAD_UCODE to switch between F3DEX2 and S2DEX mid-frame
 * (it does -- gspS2DEX2_fifo is in the ROM), how many primitives per frame.
 * Those answers shape a renderer's design and none of them require one.
 *
 * ONE THING IT CANNOT DO, and this is the honest limit: every pointer in a
 * display list is a SEGMENTED address -- a 4-bit segment number and a 24-bit
 * offset, resolved through a table the list itself loads with
 * G_MOVEWORD/G_MW_SEGMENT. The tracer tracks that table as it goes, so
 * addresses inside one list resolve, but a list that assumes a segment set up
 * by an earlier task will show unresolved pointers. They are printed as
 * `seg%X:%06X` rather than silently mapped to something wrong.
 *
 * Enable with PC_TRACE=gfx.
 */
#include <ultra64.h>
#include <PR/gbi.h>
#include <stddef.h>
#include <stdio.h>

#include "pc/pc_platform.h"

#define MAX_DEPTH 12
#define MAX_CMDS  200000

typedef struct {
    u32 seg[16];
    int depth;
    unsigned count;
    unsigned tris;
    unsigned verts;
} TraceState;

static const char *op_name(u32 op) {
    switch (op) {
        case G_NOOP:            return "NOOP";
        case G_VTX:             return "VTX";
        case G_MODIFYVTX:       return "MODIFYVTX";
        case G_CULLDL:          return "CULLDL";
        case G_BRANCH_Z:        return "BRANCH_Z";
        case G_TRI1:            return "TRI1";
        case G_TRI2:            return "TRI2";
        case G_QUAD:            return "QUAD";
        case G_LINE3D:          return "LINE3D";
        case G_SPECIAL_3:       return "SPECIAL_3";
        case G_SPECIAL_2:       return "SPECIAL_2";
        case G_SPECIAL_1:       return "SPECIAL_1";
        case G_DMA_IO:          return "DMA_IO";
        case G_TEXTURE:         return "TEXTURE";
        case G_POPMTX:          return "POPMTX";
        case G_GEOMETRYMODE:    return "GEOMETRYMODE";
        case G_MTX:             return "MTX";
        case G_MOVEWORD:        return "MOVEWORD";
        case G_MOVEMEM:         return "MOVEMEM";
        case G_LOAD_UCODE:      return "LOAD_UCODE";
        case G_DL:              return "DL";
        case G_ENDDL:           return "ENDDL";
        case G_SPNOOP:          return "SPNOOP";
        case G_RDPHALF_1:       return "RDPHALF_1";
        case G_SETOTHERMODE_L:  return "SETOTHERMODE_L";
        case G_SETOTHERMODE_H:  return "SETOTHERMODE_H";
        case G_TEXRECT:         return "TEXRECT";
        case G_TEXRECTFLIP:     return "TEXRECTFLIP";
        case G_RDPLOADSYNC:     return "RDPLOADSYNC";
        case G_RDPPIPESYNC:     return "RDPPIPESYNC";
        case G_RDPTILESYNC:     return "RDPTILESYNC";
        case G_RDPFULLSYNC:     return "RDPFULLSYNC";
        case G_SETKEYGB:        return "SETKEYGB";
        case G_SETKEYR:         return "SETKEYR";
        case G_SETCONVERT:      return "SETCONVERT";
        case G_SETSCISSOR:      return "SETSCISSOR";
        case G_SETPRIMDEPTH:    return "SETPRIMDEPTH";
        case G_RDPSETOTHERMODE: return "RDPSETOTHERMODE";
        case G_LOADTLUT:        return "LOADTLUT";
        case G_RDPHALF_2:       return "RDPHALF_2";
        case G_SETTILESIZE:     return "SETTILESIZE";
        case G_LOADBLOCK:       return "LOADBLOCK";
        case G_LOADTILE:        return "LOADTILE";
        case G_SETTILE:         return "SETTILE";
        case G_FILLRECT:        return "FILLRECT";
        case G_SETFILLCOLOR:    return "SETFILLCOLOR";
        case G_SETFOGCOLOR:     return "SETFOGCOLOR";
        case G_SETBLENDCOLOR:   return "SETBLENDCOLOR";
        case G_SETPRIMCOLOR:    return "SETPRIMCOLOR";
        case G_SETENVCOLOR:     return "SETENVCOLOR";
        case G_SETCOMBINE:      return "SETCOMBINE";
        case G_SETTIMG:         return "SETTIMG";
        case G_SETZIMG:         return "SETZIMG";
        case G_SETCIMG:         return "SETCIMG";
        default:                return "???";
    }
}

/* Segmented address -> host pointer, or NULL if the segment is unknown.
 *
 * Segment 0 is the identity segment on N64 (a raw KSEG0 address). On PC the
 * "physical" address IS the host pointer -- see osVirtualToPhysical in
 * src/pc/os_time.c -- so segment 0 resolves to the value itself. */
static const void *resolve(TraceState *st, u32 addr) {
    u32 seg = (addr >> 24) & 0xF;
    u32 off = addr & 0x00FFFFFF;

    if (seg == 0) {
        return (const void *)addr;
    }
    if (st->seg[seg] == 0) {
        return NULL;
    }
    return (const void *)(st->seg[seg] + off);
}

static void trace_list(TraceState *st, const u32 *p);

static void trace_indent(TraceState *st) {
    int i;

    for (i = 0; i < st->depth; i++) {
        fputs("  ", stderr);
    }
}

static void trace_list(TraceState *st, const u32 *p) {
    if (p == NULL || st->depth >= MAX_DEPTH) {
        return;
    }
    st->depth++;

    for (;;) {
        u32 w0;
        u32 w1;
        u32 op;

        if (st->count++ >= MAX_CMDS) {
            trace_indent(st);
            fprintf(stderr, "... command limit reached, list truncated\n");
            break;
        }
        w0 = p[0];
        w1 = p[1];
        op = w0 >> 24;

        trace_indent(st);
        fprintf(stderr, "%08X %08X  %s", w0, w1, op_name(op));

        switch (op) {
            case G_VTX: {
                unsigned n = (w0 >> 12) & 0xFF;

                st->verts += n;
                fprintf(stderr, "  n=%u dst=%u src=%08X", n,
                        ((w0 >> 1) & 0x7F), w1);
                break;
            }
            case G_TRI1:
                st->tris += 1;
                break;
            case G_TRI2:
            case G_QUAD:
                st->tris += 2;
                break;
            case G_MOVEWORD: {
                unsigned index = (w0 >> 16) & 0xFF;
                unsigned offset = w0 & 0xFFFF;

                fprintf(stderr, "  index=%02X offset=%04X value=%08X", index,
                        offset, w1);
                if (index == G_MW_SEGMENT) {
                    /* offset is the segment number * 4 */
                    unsigned s = (offset >> 2) & 0xF;

                    st->seg[s] = w1;
                    fprintf(stderr, "   [segment %X = %08X]", s, w1);
                }
                break;
            }
            case G_SETTIMG: {
                const void *t = resolve(st, w1);

                if (t != NULL) {
                    fprintf(stderr, "  img=%p", t);
                } else {
                    fprintf(stderr, "  img=seg%X:%06X (unresolved)",
                            (w1 >> 24) & 0xF, w1 & 0xFFFFFF);
                }
                break;
            }
            case G_SETCIMG:
            case G_SETZIMG:
                fprintf(stderr, "  addr=%08X", w1);
                break;
            case G_SETCOMBINE:
                fprintf(stderr, "  %05X %08X", w0 & 0xFFFFFF, w1);
                break;
            case G_GEOMETRYMODE:
                fprintf(stderr, "  clear=%06X set=%08X", w0 & 0xFFFFFF, w1);
                break;
            case G_MTX:
                fprintf(stderr, "  params=%02X mtx=%08X", w0 & 0xFF, w1);
                break;
            case G_LOAD_UCODE:
                fprintf(stderr, "  <<< microcode switch >>> text=%08X", w1);
                break;
            case G_DL: {
                const void *sub = resolve(st, w1);
                int push = ((w0 >> 16) & 0xFF) == G_DL_PUSH;

                fprintf(stderr, "  %s %08X\n", push ? "push" : "branch", w1);
                if (sub != NULL) {
                    trace_list(st, (const u32 *)sub);
                }
                if (!push) {
                    st->depth--;
                    return; /* branch does not return */
                }
                p += 2;
                continue;
            }
            case G_ENDDL:
                fputc('\n', stderr);
                st->depth--;
                return;
            default:
                break;
        }
        fputc('\n', stderr);
        p += 2;
    }
    st->depth--;
}

void pc_gfx_trace_task(OSTask *task) {
    TraceState st;

    if (!(pc_trace_mask & PC_TR_GFX) || task == NULL ||
        task->t.data_ptr == NULL) {
        return;
    }
    memset(&st, 0, sizeof(st));
    st.depth = -1; /* so the outermost list prints unindented */

    fprintf(stderr, "[gfx] ==== display list at %p (%u bytes declared) ====\n",
            (void *)task->t.data_ptr, (unsigned)task->t.data_size);
    trace_list(&st, (const u32 *)task->t.data_ptr);
    fprintf(stderr, "[gfx] ==== %u commands, %u vertices, %u triangles ====\n",
            st.count, st.verts, st.tris);
}
