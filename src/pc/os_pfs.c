/* Controller Pak: the five osPfs* entry points src/main/contpad.c uses.
 *
 * WHAT THIS IS NOT. The real Controller Pak is a 32 KB SRAM with a genuine
 * filesystem on it: a 32-byte ID block with a checksum, two mirrored inode
 * tables, a 16-entry directory, and 123 usable 256-byte pages chained through
 * the inode table. libreultra/src/io/pfs*.c implements all of it, over a dozen
 * files, and every one of them is written against SI transactions to real
 * hardware.
 *
 * Reproducing that byte layout on PC would only matter if a real pak image
 * had to be interchangeable with this port. Nothing in this project needs
 * that, and the format's checksums and bank-select quirks are a large surface
 * to get subtly wrong. So this is a REIMPLEMENTATION of the interface, not an
 * emulation of the device: the same five calls with the same semantics and
 * the same error codes, over a straightforward file.
 *
 * WHAT THAT COSTS, stated plainly: an image written here cannot be loaded
 * into an emulator's Controller Pak slot, and a real pak dump cannot be read
 * here. Making that work means porting libreultra's pfs*.c on top of a 32 KB
 * byte array instead of SI -- mechanical, but a day's careful work and no
 * benefit until someone wants image interchange.
 *
 * The semantics that ARE reproduced, because contpad.c depends on them:
 *
 *   * a file is identified by (company_code, game_code, game_name[16],
 *     ext_name[4]) and answered with a file NUMBER, which is then the handle
 *     for reads and writes;
 *   * osPfsAllocateFile takes a size in BYTES but the device allocates in
 *     256-byte pages, so a file always occupies a whole number of pages and
 *     osPfsReadWriteFile can address the padding;
 *   * the error codes are the ones in <PR/os_pfs.h>: PFS_ERR_INVALID for a
 *     missing file, PFS_ERR_EXIST for a duplicate, PFS_DATA_FULL and
 *     PFS_DIR_FULL when the pak is out of pages or directory entries.
 */
#include <ultra64.h>
#include <PR/os_pfs.h>
#include <errno.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "pc/pc_platform.h"

#define PFS_DIR_ENTRIES 16
#define PFS_PAGE_BYTES  256
#define PFS_USER_PAGES  123 /* what a real 32 KB pak leaves for files */
#define PFS_MAGIC       0x4B36344Du /* "K64M" */

typedef struct {
    u32 used;
    u32 game_code;
    u16 company_code;
    char game_name[PFS_FILE_NAME_LEN];
    char ext_name[PFS_FILE_EXT_LEN];
    u32 pages;
    u32 firstPage;
} PCPfsDirEnt;

typedef struct {
    u32 magic;
    PCPfsDirEnt dir[PFS_DIR_ENTRIES];
    u8 data[PFS_USER_PAGES * PFS_PAGE_BYTES];
} PCPakImage;

static PCPakImage sPak[MAXCONTROLLERS];
static u8 sPakLoaded[MAXCONTROLLERS];

static void pak_path(int ch, char *out, size_t n) {
    const char *base = getenv("KIRBY_MPK");

    if (base == NULL) {
        base = "kirby64";
    }
    snprintf(out, n, "%s.mpk%d", base, ch);
}

static void pak_load(int ch) {
    char path[512];
    FILE *f;

    if (sPakLoaded[ch]) {
        return;
    }
    sPakLoaded[ch] = 1;
    memset(&sPak[ch], 0, sizeof(sPak[ch]));
    sPak[ch].magic = PFS_MAGIC;

    pak_path(ch, path, sizeof(path));
    f = fopen(path, "rb");
    if (f != NULL) {
        PCPakImage tmp;

        if (fread(&tmp, 1, sizeof(tmp), f) == sizeof(tmp) &&
            tmp.magic == PFS_MAGIC) {
            sPak[ch] = tmp;
        } else {
            /* A file that is not ours: leave the in-memory pak formatted and
             * empty rather than guessing at foreign contents. Reformatting is
             * what the real console offers too. */
            pc_trace(PC_TR_CONT, "[pfs] %s is not a port pak image; ignored\n",
                     path);
        }
        fclose(f);
    }
}

static void pak_flush(int ch) {
    char path[512];
    FILE *f;

    pak_path(ch, path, sizeof(path));
    f = fopen(path, "wb");
    if (f != NULL) {
        fwrite(&sPak[ch], 1, sizeof(sPak[ch]), f);
        fclose(f);
    }
}

static int name_matches(const PCPfsDirEnt *e, u16 company, u32 game,
                        const u8 *name, const u8 *ext) {
    if (!e->used || e->company_code != company || e->game_code != game) {
        return 0;
    }
    if (name != NULL &&
        memcmp(e->game_name, name, PFS_FILE_NAME_LEN) != 0) {
        return 0;
    }
    if (ext != NULL && memcmp(e->ext_name, ext, PFS_FILE_EXT_LEN) != 0) {
        return 0;
    }
    return 1;
}

/* First-fit page allocation. The real pak's inode table lets a file's pages
 * be scattered; here they are contiguous, which is simpler and is invisible
 * through this interface because nothing exposes page numbers. */
static int alloc_pages(int ch, u32 want, u32 *firstOut) {
    u8 busy[PFS_USER_PAGES];
    u32 i;
    u32 run = 0;
    int k;

    memset(busy, 0, sizeof(busy));
    for (k = 0; k < PFS_DIR_ENTRIES; k++) {
        const PCPfsDirEnt *e = &sPak[ch].dir[k];

        if (e->used) {
            for (i = 0; i < e->pages && e->firstPage + i < PFS_USER_PAGES;
                 i++) {
                busy[e->firstPage + i] = 1;
            }
        }
    }
    for (i = 0; i < PFS_USER_PAGES; i++) {
        run = busy[i] ? 0 : run + 1;
        if (run == want) {
            *firstOut = i + 1 - want;
            return 0;
        }
    }
    return -1;
}

/* ------------------------------------------------------------------- API */

s32 osPfsInitPak(OSMesgQueue *mq, OSPfs *pfs, int channel) {
    if (pfs == NULL || channel < 0 || channel >= MAXCONTROLLERS) {
        return PFS_ERR_INVALID;
    }
    pak_load(channel);

    pfs->queue = mq;
    pfs->channel = channel;
    pfs->status = PFS_INITIALIZED;
    pfs->version = OS_PFS_VERSION;
    pfs->dir_size = PFS_DIR_ENTRIES;
    pfs->inode_table = 1;
    pfs->minode_table = 3;
    pfs->dir_table = 5;
    pfs->inode_start_page = PFS_ONE_PAGE;
    pfs->banks = 1;
    pfs->activebank = 0;
    memset(pfs->id, 0, sizeof(pfs->id));
    memset(pfs->label, 0, sizeof(pfs->label));
    return 0;
}

s32 osPfsFindFile(OSPfs *pfs, u16 company_code, u32 game_code, u8 *game_name,
                  u8 *ext_name, s32 *file_no) {
    int ch;
    int i;

    if (pfs == NULL || !(pfs->status & PFS_INITIALIZED)) {
        return PFS_ERR_INVALID;
    }
    ch = pfs->channel;
    for (i = 0; i < PFS_DIR_ENTRIES; i++) {
        if (name_matches(&sPak[ch].dir[i], company_code, game_code, game_name,
                         ext_name)) {
            if (file_no != NULL) {
                *file_no = i;
            }
            return 0;
        }
    }
    return PFS_ERR_INVALID;
}

s32 osPfsAllocateFile(OSPfs *pfs, u16 company_code, u32 game_code,
                      u8 *game_name, u8 *ext_name, int length, s32 *file_no) {
    int ch;
    int i;
    int slot = -1;
    u32 pages;
    u32 first;
    PCPfsDirEnt *e;

    if (pfs == NULL || !(pfs->status & PFS_INITIALIZED) || length < 0) {
        return PFS_ERR_INVALID;
    }
    ch = pfs->channel;

    for (i = 0; i < PFS_DIR_ENTRIES; i++) {
        if (name_matches(&sPak[ch].dir[i], company_code, game_code, game_name,
                         ext_name)) {
            return PFS_ERR_EXIST;
        }
        if (!sPak[ch].dir[i].used && slot < 0) {
            slot = i;
        }
    }
    if (slot < 0) {
        return PFS_DIR_FULL;
    }

    pages = ((u32)length + PFS_PAGE_BYTES - 1) / PFS_PAGE_BYTES;
    if (pages == 0) {
        pages = 1;
    }
    if (alloc_pages(ch, pages, &first) != 0) {
        return PFS_DATA_FULL;
    }

    e = &sPak[ch].dir[slot];
    memset(e, 0, sizeof(*e));
    e->used = 1;
    e->company_code = company_code;
    e->game_code = game_code;
    if (game_name != NULL) {
        memcpy(e->game_name, game_name, PFS_FILE_NAME_LEN);
    }
    if (ext_name != NULL) {
        memcpy(e->ext_name, ext_name, PFS_FILE_EXT_LEN);
    }
    e->pages = pages;
    e->firstPage = first;
    memset(sPak[ch].data + first * PFS_PAGE_BYTES, 0, pages * PFS_PAGE_BYTES);

    pak_flush(ch);
    if (file_no != NULL) {
        *file_no = slot;
    }
    return 0;
}

s32 osPfsDeleteFile(OSPfs *pfs, u16 company_code, u32 game_code, u8 *game_name,
                    u8 *ext_name) {
    int ch;
    int i;

    if (pfs == NULL || !(pfs->status & PFS_INITIALIZED)) {
        return PFS_ERR_INVALID;
    }
    ch = pfs->channel;
    for (i = 0; i < PFS_DIR_ENTRIES; i++) {
        if (name_matches(&sPak[ch].dir[i], company_code, game_code, game_name,
                         ext_name)) {
            memset(&sPak[ch].dir[i], 0, sizeof(sPak[ch].dir[i]));
            pak_flush(ch);
            return 0;
        }
    }
    return PFS_ERR_INVALID;
}

s32 osPfsReadWriteFile(OSPfs *pfs, s32 file_no, u8 flag, int offset,
                       int nbytes, u8 *data_buffer) {
    int ch;
    PCPfsDirEnt *e;
    u32 cap;
    u8 *base;

    if (pfs == NULL || !(pfs->status & PFS_INITIALIZED) || file_no < 0 ||
        file_no >= PFS_DIR_ENTRIES || offset < 0 || nbytes < 0) {
        return PFS_ERR_INVALID;
    }
    ch = pfs->channel;
    e = &sPak[ch].dir[file_no];
    if (!e->used) {
        return PFS_ERR_INVALID;
    }

    cap = e->pages * PFS_PAGE_BYTES;
    if ((u32)offset >= cap) {
        return PFS_ERR_INVALID;
    }
    if ((u32)offset + (u32)nbytes > cap) {
        /* Past the end of the file's pages. The device reports EOF rather
         * than short-transferring. */
        return PFS_EOF;
    }
    base = sPak[ch].data + e->firstPage * PFS_PAGE_BYTES + offset;

    if (flag == PFS_READ) {
        memcpy(data_buffer, base, (size_t)nbytes);
    } else {
        memcpy(base, data_buffer, (size_t)nbytes);
        pak_flush(ch);
    }
    return 0;
}

/* --------------------------------------------- convenience, not required */

s32 osPfsFreeBlocks(OSPfs *pfs, s32 *bytes_not_used) {
    int ch;
    int i;
    u32 used = 0;

    if (pfs == NULL || !(pfs->status & PFS_INITIALIZED)) {
        return PFS_ERR_INVALID;
    }
    ch = pfs->channel;
    for (i = 0; i < PFS_DIR_ENTRIES; i++) {
        if (sPak[ch].dir[i].used) {
            used += sPak[ch].dir[i].pages;
        }
    }
    if (bytes_not_used != NULL) {
        *bytes_not_used = (s32)((PFS_USER_PAGES - used) * PFS_PAGE_BYTES);
    }
    return 0;
}

s32 osPfsNumFiles(OSPfs *pfs, s32 *max_files, s32 *files_used) {
    int ch;
    int i;
    s32 n = 0;

    if (pfs == NULL || !(pfs->status & PFS_INITIALIZED)) {
        return PFS_ERR_INVALID;
    }
    ch = pfs->channel;
    for (i = 0; i < PFS_DIR_ENTRIES; i++) {
        if (sPak[ch].dir[i].used) {
            n++;
        }
    }
    if (max_files != NULL) {
        *max_files = PFS_DIR_ENTRIES;
    }
    if (files_used != NULL) {
        *files_used = n;
    }
    return 0;
}

s32 osPfsIsPlug(OSMesgQueue *mq, u8 *pattern) {
    (void)mq;
    /* Every port always has a pak, because every pak is a file. */
    if (pattern != NULL) {
        *pattern = 0x0F;
    }
    return 0;
}
