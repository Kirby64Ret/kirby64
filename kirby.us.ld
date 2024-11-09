
OUTPUT_ARCH (mips)

#define SYM(s, addr) s = DEFINED(s) ? s : addr
#include "unnamed_syms.txt"

#define BEGIN_SEG(name, addr) \
     _##name##SegmentStart = ADDR(.name); \
     _##name##SegmentRomStart = __romPos; \
     .name addr : AT(__romPos)

#define END_SEG(name) \
     _##name##SegmentEnd = ADDR(.name) + SIZEOF(.name); \
     _##name##SegmentRomEnd = __romPos + SIZEOF(.name); \
     __romPos += SIZEOF(.name);

#define BEGIN_UCODE_TEXT(name, addr) \
     name##TextStart = ADDR(.name); \
     name##TextRomStart = __romPos; \
     .name addr : AT(__romPos)

#define END_UCODE_TEXT(name) \
     name##TextEnd = ADDR(.name) + SIZEOF(.name); \
     name##TextRomEnd = __romPos + SIZEOF(.name); \
     __romPos += SIZEOF(.name);

#define BEGIN_UCODE_DATA(name, addr) \
     name##DataStart = ADDR(.name##_data); \
     name##DataRomStart = __romPos; \
     .name##_data addr : AT(__romPos)

#define END_UCODE_DATA(name) \
     name##DataEnd = ADDR(.name##_data) + SIZEOF(.name##_data); \
     name##DataRomEnd = __romPos + SIZEOF(.name##_data); \
     __romPos += SIZEOF(.name##_data);

#define BEGIN_NOLOAD(name) \
     _##name##SegNoloadStart = ADDR(.name.noload); \
     .name.noload (NOLOAD) :

#define END_NOLOAD(name) \
     _##name##SegNoloadEnd = ADDR(.name.noload) + SIZEOF(.name.noload); \
     _##name##SegNoloadSize = _##name##SegNoloadEnd - _##name##SegNoloadStart;


SECTIONS
{
    __romPos = 0x0;

    /* header and boot */
    BEGIN_SEG(boot, 0xA4000000) {
        BUILD_DIR/src/rom_header.o(.data*);
        BUILD_DIR/asm/boot.o(.text);
    }
    END_SEG(boot)
 
    /* 0x80000400 001000-039DF0 [38DF0] */
    BEGIN_SEG(ovl0, 0x80000400) {
        BUILD_DIR/asm/EntryPoint.o(.text);
        BUILD_DIR/src/ovl0/main.o(.text);
        BUILD_DIR/src/ovl0/ovl0.o(.text);
        BUILD_DIR/src/ovl0/ovl0_1.o(.text);
        BUILD_DIR/src/ovl0/ovl0_2.o(.text);
        BUILD_DIR/src/ovl0/ovl0_2_5.o(.text);
        BUILD_DIR/src/ovl0/memory_layer.o(.text);
        BUILD_DIR/src/ovl0/ovl0_2_5_1.o(.text);
        BUILD_DIR/src/ovl0/rdp_reset.o(.text*); /* Why is the asterisk needed? */
        BUILD_DIR/src/ovl0/object_manager.o(.text);
        BUILD_DIR/src/ovl0/ovl0_3.o(.text);
        BUILD_DIR/src/ovl0/ovl0_4.o(.text);
        BUILD_DIR/src/ovl0/lbvector.o(.text);
        BUILD_DIR/src/ovl0/ovl0_6.o(.text);
        BUILD_DIR/src/ovl0/ovl0_7.o(.text);
        BUILD_DIR/src/ovl0/ovl0_8.o(.text);

        BUILD_DIR/asm/ovl0/ovl0_9.o(.text);
        BUILD_DIR/libn_audio.a:n_synaddplayer.o(.text);
        BUILD_DIR/libn_audio.a:n_synstopvoice.o(.text);
        BUILD_DIR/asm/ovl0/n_synallocvoice.o(.text);
        BUILD_DIR/libn_audio.a:n_synsetpan.o(.text);
        /*BUILD_DIR/libn_audio.a:n_synallocvoice.o(.text);*/
        BUILD_DIR/asm/ovl0/ovl0_9_2.o(.text);
        BUILD_DIR/libn_audio.a:n_synsetvol.o(.text);
        BUILD_DIR/libultra.a:sendmesg.o(.text);
        BUILD_DIR/libultra.a:stopthread.o(.text);
        BUILD_DIR/libultra.a:recvmesg.o(.text);

        BUILD_DIR/libultra.a:setintmask.o(.text);
        BUILD_DIR/libultra.a:sinf.o(.text);
        BUILD_DIR/libultra.a:sptask.o(.text);
        BUILD_DIR/libultra.a:destroythread.o(.text);
        BUILD_DIR/libultra.a:ll.o(.text);
        /*BUILD_DIR/libultra.a:exceptasm.o(.text);*/
        BUILD_DIR/asm/ovl0/exception.o(.text);
        BUILD_DIR/libultra.a:thread.o(.text);
        BUILD_DIR/libultra.a:bzero.o(.text);

        BUILD_DIR/libultra.a:leointerrupt.o(.text);

        BUILD_DIR/asm/ovl0/ovl0_beforeSiacs.o(.text);
        BUILD_DIR/libultra.a:siacs.o(.text);
        BUILD_DIR/libultra.a:controller.o(.text);

        BUILD_DIR/asm/ovl0/conteepwrite.o(.text);
        /*BUILD_DIR/libultra.a:conteepwrite.o(.text);*/

        BUILD_DIR/libultra.a:createthread.o(.text);
        BUILD_DIR/libultra.a:contreaddata.o(.text);
        BUILD_DIR/libultra.a:conteeplongread.o(.text);
        BUILD_DIR/libultra.a:virtualtophysical.o(.text);
        BUILD_DIR/libultra.a:writebackdcache.o(.text);
        BUILD_DIR/libultra.a:initialize.o(.text);
        BUILD_DIR/libultra.a:pirawread.o(.text);
        . += 0x60;
        BUILD_DIR/libultra.a:setsr.o(.text);
        BUILD_DIR/libultra.a:getsr.o(.text);
        BUILD_DIR/libultra.a:vigetnextframebuf.o(.text);
        BUILD_DIR/libultra.a:sprawdma.o(.text);
        BUILD_DIR/libultra.a:sirawdma.o(.text);
        BUILD_DIR/libultra.a:epilinkhandle.o(.text);
        BUILD_DIR/libultra.a:viblack.o(.text);
        BUILD_DIR/libultra.a:sirawread.o(.text);
        BUILD_DIR/libultra.a:sptaskyield.o(.text);
        BUILD_DIR/libultra.a:pfsreadwritefile.o(.text);
        BUILD_DIR/libultra.a:mtxutil.o(.text);
        BUILD_DIR/libultra.a:visetmode.o(.text);

        BUILD_DIR/asm/ovl0/ovl0_afterException.o(.text);
        /*BUILD_DIR/libultra.a:pfsallocatefile.o(.text);*/
        BUILD_DIR/libultra.a:pfsfreeblocks.o(.text);
        BUILD_DIR/libultra.a:probetlb.o(.text);
        BUILD_DIR/libultra.a:getcount.o(.text);
        BUILD_DIR/asm/ovl0/contpfs.o(.text);

        BUILD_DIR/libultra.a:conteepprobe.o(.text);
        BUILD_DIR/libultra.a:pfssearchfile.o(.text);
        BUILD_DIR/libultra.a:pimgr.o(.text);
        BUILD_DIR/libultra.a:piacs.o(.text);
        BUILD_DIR/libultra.a:devmgr.o(.text);
        BUILD_DIR/libultra.a:pirawdma.o(.text);
        BUILD_DIR/libultra.a:seteventmesg.o(.text);
        BUILD_DIR/libultra.a:sqrtf.o(.text);
        BUILD_DIR/libultra.a:afterprenmi.o(.text);
        BUILD_DIR/libultra.a:contquery.o(.text);
        BUILD_DIR/libultra.a:xprintf.o(.text);
        BUILD_DIR/libultra.a:epidma.o(.text);

        BUILD_DIR/libultra.a:leodiskinit.o(.text);

        BUILD_DIR/libultra.a:string.o(.text); 
        BUILD_DIR/libultra.a:createmesgqueue.o(.text);
        BUILD_DIR/libultra.a:invalicache.o(.text);
        BUILD_DIR/libultra.a:invaldcache.o(.text);
        BUILD_DIR/libultra.a:conteeplongwrite.o(.text);
        BUILD_DIR/libultra.a:sp.o(.text);
        BUILD_DIR/libultra.a:si.o(.text);
        BUILD_DIR/libultra.a:jammesg.o(.text);
        BUILD_DIR/libultra.a:setthreadpri.o(.text);
        BUILD_DIR/libultra.a:getthreadpri.o(.text);
        BUILD_DIR/libultra.a:viswapbuf.o(.text);
        BUILD_DIR/libultra.a:mtxcatf.o(.text);
        BUILD_DIR/libultra.a:epirawdma.o(.text);
        BUILD_DIR/libultra.a:sptaskyielded.o(.text);
        BUILD_DIR/libultra.a:bcmp.o(.text);
        BUILD_DIR/libultra.a:gettime.o(.text);
        BUILD_DIR/libultra.a:timerintr.o(.text);
        BUILD_DIR/libultra.a:setglobalintmask.o(.text);
        BUILD_DIR/libultra.a:aisetfreq.o(.text);
        BUILD_DIR/libultra.a:normalize.o(.text);
        BUILD_DIR/libultra.a:setcompare.o(.text);
        BUILD_DIR/libultra.a:getactivequeue.o(.text);
        BUILD_DIR/libultra.a:bcopy.o(.text);
        BUILD_DIR/libultra.a:copy.o(.text);
        BUILD_DIR/libultra.a:resetglobalintmask.o(.text);

        BUILD_DIR/libultra.a:pfsdeletefile.o(.text);

        BUILD_DIR/libultra.a:interrupt.o(.text);
        BUILD_DIR/libultra.a:vi.o(.text);
        BUILD_DIR/libultra.a:viswapcontext.o(.text);
        BUILD_DIR/libultra.a:pigetcmdq.o(.text);
        BUILD_DIR/libultra.a:cosf.o(.text);
        BUILD_DIR/libultra.a:settime.o(.text);
        BUILD_DIR/libultra.a:visetevent.o(.text);
        BUILD_DIR/libultra.a:cartrominit.o(.text);

        BUILD_DIR/asm/ovl0/ovl0_after_bcopy.o(.text);
        BUILD_DIR/libultra.a:pfsselectbank.o(.text);
        BUILD_DIR/libultra.a:setfpccsr.o(.text);
        BUILD_DIR/libultra.a:pfsinitpak.o(.text);
        BUILD_DIR/libultra.a:pfsgetstatus.o(.text);
        BUILD_DIR/libultra.a:pfschecker.o(.text);
        BUILD_DIR/libultra.a:pfsisplug.o(.text);
        BUILD_DIR/libultra.a:epirawread.o(.text);
        BUILD_DIR/libultra.a:maptlbrdb.o(.text);
        BUILD_DIR/libultra.a:yieldthread.o(.text);
        BUILD_DIR/libultra.a:cents2ratio.o(.text);
        BUILD_DIR/asm/ovl0/libultra_after_bcopy.o(.text);


        BUILD_DIR/libultra.a:epirawwrite.o(.text);
        BUILD_DIR/libultra.a:settimer.o(.text);
        BUILD_DIR/libultra.a:xldtob.o(.text);
        . += 0x10; 
        BUILD_DIR/libultra.a:ldiv.o(.text);
        BUILD_DIR/libultra.a:xlitob.o(.text);
        BUILD_DIR/libultra.a:sirawwrite.o(.text);
        BUILD_DIR/libultra.a:dpsetnextbuf.o(.text);
        BUILD_DIR/libultra.a:dp.o(.text);
        BUILD_DIR/libultra.a:spsetstat.o(.text);
        BUILD_DIR/libultra.a:spgetstat.o(.text);
        BUILD_DIR/libultra.a:vimgr.o(.text);
        BUILD_DIR/libultra.a:vigetcurrcontext.o(.text);
        BUILD_DIR/libultra.a:writebackdcacheall.o(.text);
        BUILD_DIR/libultra.a:startthread.o(.text);
        BUILD_DIR/libultra.a:visetyscale.o(.text);
        BUILD_DIR/libultra.a:aisetnextbuf.o(.text);
        BUILD_DIR/libultra.a:ai.o(.text);
        /*BUILD_DIR/libultra.a:conteepread.o(.text);*/
        BUILD_DIR/asm/ovl0/conteepread.o(.text);
        BUILD_DIR/libultra.a:vigetcurrframebuf.o(.text);
        BUILD_DIR/libultra.a:spsetpc.o(.text);
    }
    END_SEG(ovl0)
    BEGIN_UCODE_TEXT(n_aspMain, _ovl0SegmentEnd) {
        BUILD_DIR/data/kirby.039DF0.o(.data*);
    }
    END_UCODE_TEXT(n_aspMain)

    /* RSP microcodes */
    BEGIN_UCODE_TEXT(gspF3DEX2_fifo, n_aspMainTextEnd) {
        BUILD_DIR/ucode/F3DEX2_2.04H/F3DEX2_2.04H.code.o;
    }
    END_UCODE_TEXT(gspF3DEX2_fifo)
    BEGIN_UCODE_TEXT(gspL3DEX2_fifo, gspF3DEX2_fifoTextEnd) {
        BUILD_DIR/ucode/L3DEX2_2.04H/L3DEX2_2.04H.code.o(*);
    }
    END_UCODE_TEXT(gspL3DEX2_fifo)
    BEGIN_UCODE_TEXT(gspS2DEX2_fifo, gspL3DEX2_fifoTextEnd) {
        BUILD_DIR/ucode/S2DEX2_2.04/S2DEX2_2.04.code.o(*);
    }
    END_UCODE_TEXT(gspS2DEX2_fifo)

    BEGIN_SEG(ovl0Data2, gspS2DEX2_fifoTextEnd) SUBALIGN(16) {
        /* BUILD_DIR/data/kirby.039DF0.0.1.o(.data*); */
        BUILD_DIR/src/ovl0/main.o(.data*);
        BUILD_DIR/src/ovl0/ovl0_2_5.o(.data*);
        BUILD_DIR/src/ovl0/rdp_reset.o(.data*);
        BUILD_DIR/src/ovl0/object_manager.o(.data*);
        BUILD_DIR/src/ovl0/ovl0_4.o(.data*);
        BUILD_DIR/src/ovl0/ovl0_6.o(.data*);
        BUILD_DIR/src/ovl0/ovl0_7.o(.data*);
        BUILD_DIR/src/ovl0/ovl0_8.o(.data*);
        BUILD_DIR/src/ovl0/ovl0_9.o(.data*);
        BUILD_DIR/asm/ovl0/exception.o(.data*);
        BUILD_DIR/libultra.a:thread.o(.data*);
        BUILD_DIR/libultra.a:siacs.o(.data*);
        BUILD_DIR/libultra.a:controller.o(.data*);
        BUILD_DIR/libultra.a:initialize.o(.data*);

        BUILD_DIR/data/kirby.039DF0.0.5.o(.data*);
        BUILD_DIR/libultra.a:pimgr.o(.data*);
        BUILD_DIR/libultra.a:piacs.o(.data*);
        BUILD_DIR/libultra.a:xprintf.o(.data*);
        BUILD_DIR/libultra.a:timerintr.o(.data*);
        BUILD_DIR/libultra.a:vimodentsclan1.o(.data*);
        BUILD_DIR/libultra.a:vimodempallan1.o(.data*);
        BUILD_DIR/libultra.a:vi.o(.data*);
        BUILD_DIR/libultra.a:vimodepallan1.o(.data*);
        BUILD_DIR/src/ovl0/ovl0.o(.data*);
        BUILD_DIR/libultra.a:xlitob.o(.data*);
        BUILD_DIR/libultra.a:vimgr.o(.data*);
        BUILD_DIR/libultra.a:aisetnextbuf.o(.data*);
        BUILD_DIR/src/ovl0/main.o(.rodata);
        BUILD_DIR/data/ovl0/ovl0_rodata.o(.rodata);
        BUILD_DIR/src/ovl0/ovl0_1.o(.rodata);
        BUILD_DIR/src/ovl0/ovl0_2.o(.rodata);
        BUILD_DIR/data/kirby.039DF0.2.001.o(.rodata);
        BUILD_DIR/src/ovl0/ovl0_2_5.o(.rodata);
        BUILD_DIR/src/ovl0/memory_layer.o(.rodata);
        BUILD_DIR/src/ovl0/object_manager.o(.rodata);
        BUILD_DIR/data/kirby.039DF0.2.01.o(.data*);
        BUILD_DIR/data/ovl0/ovl0_4.rodata.o(.data*);
        BUILD_DIR/data/kirby.039DF0.2.02.o(.data*);
        BUILD_DIR/libultra.a:setintmask.o(.rodata);
        BUILD_DIR/libultra.a:sinf.o(.rodata);
        BUILD_DIR/data/kirby.039DF0.2.05.o(.data*);
        BUILD_DIR/libultra.a:devmgr.o(.rodata);
        BUILD_DIR/libultra.a:xprintf.o(.rodata);
        BUILD_DIR/libultra.a:cosf.o(.rodata);
        BUILD_DIR/libultra.a:libm_vals.o(.rodata);
        BUILD_DIR/libultra.a:cents2ratio.o(.rodata);
        BUILD_DIR/libultra.a:xldtob.o(.rodata);
    }
    END_SEG(ovl0Data2)

    BEGIN_UCODE_DATA(n_aspMain, _ovl0Data2SegmentEnd) {
        BUILD_DIR/data/kirby.039DF0.3.o(.data*);
    }
    END_UCODE_DATA(n_aspMain)
    BEGIN_UCODE_DATA(gspF3DEX2_fifo, n_aspMainDataEnd) {
        BUILD_DIR/ucode/F3DEX2_2.04H/F3DEX2_2.04H.data.o(*);
    }
    END_UCODE_DATA(gspF3DEX2_fifo)
    BEGIN_UCODE_DATA(gspL3DEX2_fifo, gspF3DEX2_fifoDataEnd) {
        BUILD_DIR/ucode/L3DEX2_2.04H/L3DEX2_2.04H.data.o(*);
    }
    END_UCODE_DATA(gspL3DEX2_fifo)
    BEGIN_UCODE_DATA(gspS2DEX2_fifo, gspL3DEX2_fifoDataEnd) {
        BUILD_DIR/ucode/S2DEX2_2.04/S2DEX2_2.04.data.o(*);
    }
    END_UCODE_DATA(gspS2DEX2_fifo)

    BEGIN_NOLOAD(ovl0) {
        BUILD_DIR/src/ovl0/main.o(.bss);
        BUILD_DIR/src/ovl0/ovl0.o(.bss);
        BUILD_DIR/src/ovl0/ovl0_1.o(.bss);
        BUILD_DIR/src/ovl0/ovl0_2.o(.bss);
        BUILD_DIR/src/ovl0/ovl0_2_5.o(.bss);
        BUILD_DIR/src/ovl0/ovl0_2_5_1.o(.bss);
        BUILD_DIR/src/ovl0/rdp_reset.o(.bss);
        BUILD_DIR/src/ovl0/object_manager.o(.bss);
        BUILD_DIR/asm/ovl0/ovl0_bss.o(.bss);
        BUILD_DIR/libultra.a:sptask.o(.bss);
        BUILD_DIR/libultra.a:leointerrupt.o(.bss);
        BUILD_DIR/asm/ovl0/bss_after_leointerrupt.o(.bss);
        BUILD_DIR/libultra.a:pimgr.o(.bss);
        BUILD_DIR/libultra.a:piacs.o(.bss);
        BUILD_DIR/libultra.a:seteventmesg.o(.bss);
        BUILD_DIR/libultra.a:leodiskinit.o(.bss);
        BUILD_DIR/libultra.a:timerintr.o(.bss);
        BUILD_DIR/libultra.a:cartrominit.o(.bss);
        BUILD_DIR/libultra.a:pfsisplug.o(.bss);
        BUILD_DIR/libultra.a:vimgr.o(.bss);
        BUILD_DIR/libultra.a:conteepread.o(.bss);
        . += 0x40;
    }
    END_NOLOAD(ovl0)
    /* edit this line when modifying bss */
    _mainSegmentNoloadSize = SIZEOF(.ovl0.noload);
    
    _mainSegmentNoloadSizeHi = _mainSegmentNoloadSize >> 16;
    _mainSegmentNoloadSizeLo = _mainSegmentNoloadSize & 0xFFFF;


    /* 0x8009B540 043790-066630 [22EA0] */
    BEGIN_SEG(ovl1, 0x8009B540) {
        . += 0x10;
        BUILD_DIR/src/ovl1/ovl1.o(.text);
        BUILD_DIR/src/ovl1/ovl1_1.o(.text);
        BUILD_DIR/src/ovl1/ovl1_2.o(.text);
        BUILD_DIR/src/ovl1/ovl1_3.o(.text);
        BUILD_DIR/asm/ovl1/ovl1_4.o(.text);
        BUILD_DIR/src/ovl1/ovl1_5.o(.text);
        BUILD_DIR/src/ovl1/ovl1_6.o(.text);
        . += 0x10;
        BUILD_DIR/src/ovl1/ovl1_7.o(.text);
        . += 0x20;
        BUILD_DIR/src/ovl1/ovl1_8.o(.text);
        BUILD_DIR/src/ovl1/save_file.o(.text);
        BUILD_DIR/src/ovl1/ovl1_10.o(.text);
        . += 0x10;
        BUILD_DIR/src/ovl1/ovl1_11.o(.text);
        BUILD_DIR/src/ovl1/ovl1_12.o(.text);
        . += 0x10;
        BUILD_DIR/src/ovl1/ovl1_13.o(.text);
    }
    END_SEG(ovl1)
    BEGIN_SEG(ovl1Data, _ovl1SegmentEnd) SUBALIGN(16) {
        BUILD_DIR/data/kirby.066630.o(.data*);
        BUILD_DIR/data/ovl1/ovl1_1_rodata.o(.data*);
        BUILD_DIR/src/ovl1/ovl1.o(.rodata*);
        BUILD_DIR/src/ovl1/ovl1_1.o(.rodata*);
        BUILD_DIR/data/ovl1/kirby.066630.3.o(.data*);
        BUILD_DIR/data/kirby.066630.o(.rodata*);
        BUILD_DIR/asm/ovl1/ovl1_5_rodata.o(.rodata*);
        BUILD_DIR/src/ovl1/ovl1_6.o(.rodata*);
        BUILD_DIR/src/ovl1/ovl1_7.o(.rodata*);
        BUILD_DIR/data/ovl1/kirby.066630.4.o(.data*);
        BUILD_DIR/src/ovl1/ovl1_8.o(.rodata);
        BUILD_DIR/src/ovl1/ovl1_10.o(.rodata);
        BUILD_DIR/src/ovl1/ovl1_11.o(.rodata);
        BUILD_DIR/data/ovl1/ovl1_11_rodata.o(.rodata);
        BUILD_DIR/src/ovl1/ovl1_12.o(.rodata);
    }
    END_SEG(ovl1Data)
    BEGIN_NOLOAD(ovl1) {
        BUILD_DIR/asm/ovl1/ovl1_bss.o(.bss);
        BUILD_DIR/src/ovl1/object_process_buffers.o(.bss);
        BUILD_DIR/asm/ovl1/ovl1_bss_after_objprocess_bufs.o(.bss);
    }
    END_NOLOAD(ovl1)

    /* 0x800F61A0 07EC10-0AC900 [2DCF0] */
    BEGIN_SEG(ovl2, 0x800F61A0) SUBALIGN(16) {
        BUILD_DIR/src/ovl2/ovl2.o(.text);
        BUILD_DIR/src/ovl2/ovl2_2.o(.text);
        BUILD_DIR/src/ovl2/ovl2_3.o(.text);
        BUILD_DIR/src/ovl2/ovl2_4.o(.text);
        BUILD_DIR/src/ovl2/ovl2_5.o(.text);
        BUILD_DIR/src/ovl2/ovl2_6.o(.text);
        BUILD_DIR/src/ovl2/ovl2_6_2.o(.text);
        BUILD_DIR/src/ovl2/ovl2_7.o(.text);
        BUILD_DIR/src/ovl2/ovl2_8.o(.text);
    }
    END_SEG(ovl2)
    BEGIN_SEG(ovl2Data, _ovl2SegmentEnd) SUBALIGN(16)
    {
        BUILD_DIR/data/kirby.0AC900_1.o(.data*);
        BUILD_DIR/src/ovl2/ovl2_3.o(.rodata);
        BUILD_DIR/data/kirby.0AC900_2.o(.data*);
    }
    END_SEG(ovl2Data)
    BEGIN_NOLOAD(ovl2) {
        BUILD_DIR/asm/ovl2/ovl2_bss.o(.bss);
    }
    END_NOLOAD(ovl2)

    /* 0x80151100 0B1B40-0F0D50 [3F210] */
    BEGIN_SEG(ovl3, 0x80151100) {
        BUILD_DIR/src/ovl3/ovl3.o(.text);
        BUILD_DIR/src/ovl3/ovl3_1.o(.text);
        BUILD_DIR/src/ovl3/ovl3_2.o(.text);
        BUILD_DIR/asm/ovl3/ovl3_3.o(.text);
        BUILD_DIR/asm/ovl3/ovl3_4.o(.text);
        BUILD_DIR/src/ovl3/ovl3_5.o(.text);
    }
    END_SEG(ovl3)
    BEGIN_SEG(ovl3Data, _ovl3SegmentEnd) SUBALIGN(16) {
        BUILD_DIR/data/kirby.0F0D50.o(.data*);
        BUILD_DIR/src/ovl3/ovl3.o(.rodata);
        BUILD_DIR/src/ovl3/ovl3_5.o(.data*);
        BUILD_DIR/data/ovl3/kirby.o(.data*);
        BUILD_DIR/data/ovl3/kirby.0F0D50.1.o(.data*);
        BUILD_DIR/data/ovl3/kirby.0F0D50.2.o(.data*);
        BUILD_DIR/src/ovl3/ovl3_5.o(.rodata*);
        BUILD_DIR/data/ovl3/kirby_rodata.o(.rodata*);
    }
    END_SEG(ovl3Data)
    BEGIN_NOLOAD(ovl3) {
        BUILD_DIR/data/ovl3/ovl3_bss.o(.bss);
        BUILD_DIR/src/ovl3/ovl3_5.o(.rodata);
    }
    END_NOLOAD(ovl3)

    /* 0x80151100 0F8630-1014F0 [8EC0] */
    BEGIN_SEG(ovl4, 0x80151100) SUBALIGN(16) {
        BUILD_DIR/src/ovl4/ovl4.o(.text);
        BUILD_DIR/asm/ovl4/ovl4_2.o(.text);
        BUILD_DIR/asm/ovl4/ovl4_2_1.o(.text);
        BUILD_DIR/src/ovl4/ovl4_3.o(.text);
        BUILD_DIR/data/kirby.1014F0.o(.data*);
        BUILD_DIR/src/ovl4/ovl4.o(.rodata);
        BUILD_DIR/asm/ovl4/ovl4_2.o(.rodata);
        . = ALIGN(0x10);
        BUILD_DIR/asm/ovl4/ovl4_2_1.o(.rodata);
        BUILD_DIR/src/ovl4/ovl4_3.o(.rodata*);
        BUILD_DIR/data/ovl4/ovl4_rodata_3.o(.data*);
        . = ALIGN(0x10);
    }
    END_SEG(ovl4)
    BEGIN_NOLOAD(ovl4) {
        BUILD_DIR/src/ovl4/ovl4_bss.o(.bss);
    }
    END_NOLOAD(ovl4)

    /* 0x8015C740 103BB0-12D410 [29860] */
    BEGIN_SEG(ovl5, 0x8015C740) SUBALIGN(16) {
        BUILD_DIR/src/ovl5/ovl5.o(.text);
        BUILD_DIR/asm/ovl5/ovl5_1.o(.text);
        BUILD_DIR/asm/ovl5/ovl5_11.o(.text);
        BUILD_DIR/data/ovl5/data.o(.data);
        BUILD_DIR/data/ovl5/rodata.o(.rodata);
    }
    END_SEG(ovl5)
    BEGIN_NOLOAD(ovl5) {
        BUILD_DIR/data/ovl5/ovl5_bss.o(.bss);
    }
    END_NOLOAD(ovl5)

    /* only loaded in the opening cutscene? */
    /* 0x80151100 135490-139150 [3CC0] */
    BEGIN_SEG(ovl6, 0x80151100) SUBALIGN(16) {
        BUILD_DIR/src/ovl6/ovl6.o(.text);
    }
    END_SEG(ovl6)
    BEGIN_SEG(ovl6Data, _ovl6SegmentEnd) {
        BUILD_DIR/data/kirby.139150.o(.data*);
    }
    END_SEG(ovl6Data)

    /* 0x80198880 13E8F0-168840 [29F50] */
    BEGIN_SEG(ovl7, 0x80198880) SUBALIGN(16) {
        BUILD_DIR/asm/ovl7/ovl7_1.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_2.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_3.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_4.o(.text);
        BUILD_DIR/src/ovl7/ovl7_5.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_6.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_7.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_8.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_9.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_10.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_11.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_12.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_13.o(.text);
        BUILD_DIR/src/ovl7/ovl7_14.o(.text);
        BUILD_DIR/src/ovl7/yakulib.o(.text);
        BUILD_DIR/src/ovl7/ovl7_16.o(.text);
        BUILD_DIR/asm/ovl7/ovl7_17.o(.text);
        BUILD_DIR/data/ovl7/data.o(.data*);
        BUILD_DIR/src/ovl7/ovl7_5.o(.rodata*);
        BUILD_DIR/data/ovl7/ovl7_5_rodata.o(.rodata*);
        BUILD_DIR/data/ovl7/ovl7_6_rodata.o(.rodata*);
        BUILD_DIR/src/ovl7/ovl7_14.o(.rodata);
        BUILD_DIR/src/ovl7/yakulib.o(.rodata);
        BUILD_DIR/data/ovl7/yakulib_rodata.o(.rodata);
        BUILD_DIR/data/ovl7/after_yakulib_rodata.o(.rodata);
    }
    END_SEG(ovl7)

    /* 0x801D0C60 174740-17B360 [6C20] */
    BEGIN_SEG(ovl8, 0x801D0C60) SUBALIGN(16) {
        BUILD_DIR/src/ovl8/ovl8.o(.text);
        BUILD_DIR/src/ovl8/eneeff.o(.text);
        BUILD_DIR/asm/ovl8/ovl8_3.o(.text);
        BUILD_DIR/asm/ovl8/ovl8_4.o(.text);
        BUILD_DIR/data/ovl8/data.o(.data);
        BUILD_DIR/src/ovl8/eneeff.o(.rodata);
        BUILD_DIR/data/ovl8/rodata.o(.rodata);
    }
    END_SEG(ovl8)

    /* 0x801D0C60 17ECB0-1C9B00 [4AE50] */
    BEGIN_SEG(ovl9, 0x801D0C60) SUBALIGN(16) {
        BUILD_DIR/asm/ovl9/ovl9.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_2.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_3.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_4.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_5.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_6.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_7.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_8.o(.text);
        BUILD_DIR/src/ovl9/ovl9_9.o(.text);
        BUILD_DIR/src/ovl9/ovl9_10.o(.text);
        . += 0x10;
        BUILD_DIR/asm/ovl9/ovl9_11.o(.text);
        BUILD_DIR/asm/ovl9/ovl9_12.o(.text);
        BUILD_DIR/src/ovl9/ovl9_13.o(.text);
        BUILD_DIR/src/ovl9/ovl9_16.o(.text);
        BUILD_DIR/data/ovl9/data.o(.data*);
        BUILD_DIR/data/ovl9/rodata.o(.rodata);
        BUILD_DIR/src/ovl9/ovl9_13.o(.rodata*);
        BUILD_DIR/data/ovl9/rodata_11_12.o(.rodata);
    }
    END_SEG(ovl9)

    /* 0x801DB1E0 1CBF50-1E4160 [18210] */
    BEGIN_SEG(ovl10, 0x801DB1E0) SUBALIGN(16) {
        BUILD_DIR/asm/ovl10/ovl10.o(.text);
        BUILD_DIR/src/ovl10/ovl10_1.o(.text);
        BUILD_DIR/src/ovl10/ovl10_2.o(.text);
        BUILD_DIR/src/ovl10/ovl10_3.o(.text);
        BUILD_DIR/asm/ovl10/ovl10_4.o(.text);
    }
    END_SEG(ovl10)
    BEGIN_SEG(ovl10Data, _ovl10SegmentEnd) {
        BUILD_DIR/data/ovl10/data.o(.data*);
        BUILD_DIR/src/ovl10/ovl10_3.o(.rodata);
        BUILD_DIR/data/ovl10/data_after_ovl10_3.o(.rodata);
    }
    END_SEG(ovl10Data)
    BEGIN_NOLOAD(ovl10) {
        BUILD_DIR/asm/ovl10/ovl10_bss.o(.bss);
    }
    END_NOLOAD(ovl10)

    /* 0x801DB1E0 1E5AA0-1EB3C0 [5920] */
    BEGIN_SEG(ovl11, 0x801DB1E0) SUBALIGN(16) {
        BUILD_DIR/src/ovl11/boss2.o(.text);
        BUILD_DIR/asm/ovl11/ovl11_2.o(.text);
        BUILD_DIR/data/ovl11/kirby.1EB3C0.o(.data*);
    }
    END_SEG(ovl11)

    /* 0x801DB1E0 1EB520-1F2DE0 [78C0] */
    BEGIN_SEG(ovl12, 0x801DB1E0) SUBALIGN(16) {
        . += 0x20;
        BUILD_DIR/src/ovl12/ovl12.o(.text);
        BUILD_DIR/src/ovl12/ovl12_2.o(.text);
        BUILD_DIR/src/ovl12/ovl12_3.o(.text);
    }
    END_SEG(ovl12)
    BEGIN_SEG(ovl12Data, _ovl12SegmentEnd) SUBALIGN(16) {
        BUILD_DIR/src/ovl12/ovl12.o(.data);
        BUILD_DIR/src/ovl12/ovl12_2.o(.data);
        BUILD_DIR/src/ovl12/ovl12_3.o(.data);

        BUILD_DIR/src/ovl12/ovl12.o(.rodata);
        BUILD_DIR/src/ovl12/ovl12_3.o(.rodata);
        . = ALIGN(16);
    }
    END_SEG(ovl12Data)
    BEGIN_NOLOAD(ovl12) {
        BUILD_DIR/src/ovl12/ovl12_2.o(.bss);
    }
    END_NOLOAD(ovl12)

    /* 0x801DB1E0 1F3160-1FDA00 [A8A0] */
    BEGIN_SEG(ovl13, 0x801DB1E0) {
        BUILD_DIR/src/ovl13/ovl13.o(.text);
        BUILD_DIR/asm/ovl13/ovl13_2.o(.text);
        BUILD_DIR/asm/ovl13/ovl13_3.o(.text);
    }
    END_SEG(ovl13)
    BEGIN_SEG(ovl13Data, _ovl13SegmentEnd) {
        /*BUILD_DIR/data/ovl13/ovl13_data.o(.data);*/
        BUILD_DIR/src/ovl13/ovl13.o(.data);
        BUILD_DIR/data/ovl13/ovl13_2_data.o(.data);
        BUILD_DIR/data/ovl13/ovl13_3_data.o(.data);

        /*BUILD_DIR/data/ovl13/ovl13_data.o(.rodata);*/
        BUILD_DIR/src/ovl13/ovl13.o(.rodata);
        BUILD_DIR/data/ovl13/ovl13_2_data.o(.rodata);
        BUILD_DIR/data/ovl13/ovl13_3_data.o(.rodata);
    }
    END_SEG(ovl13Data)
    BEGIN_NOLOAD(ovl13) {
        BUILD_DIR/data/ovl13/ovl13_data.o(.bss);
    }
    END_NOLOAD(ovl13)

    /* 0x801DB1E0 1FDDD0-205A90 [7CC0] */
    BEGIN_SEG(ovl14, 0x801DB1E0) {
        BUILD_DIR/src/ovl14/ovl14.o(.text);
        . += 0x10;
        BUILD_DIR/asm/ovl14/ovl14_2.o(.text);
    }
    END_SEG(ovl14)
    BEGIN_SEG(ovl14Data, _ovl14SegmentEnd) {
        BUILD_DIR/src/ovl14/ovl14.o(.data);
        /*BUILD_DIR/asm/ovl14/ovl14_data.o(.data);*/
        BUILD_DIR/asm/ovl14/ovl14_data2.o(.data);
        /*BUILD_DIR/asm/ovl14/ovl14_rodata.o(.rodata);*/
        BUILD_DIR/src/ovl14/ovl14.o(.rodata);
        BUILD_DIR/asm/ovl14/ovl14_rodata.o(.late_rodata);
        BUILD_DIR/asm/ovl14/ovl14_rodata2.o(.rodata);
    }
    END_SEG(ovl14Data)
    BEGIN_NOLOAD(ovl14) {
        BUILD_DIR/asm/ovl14/ovl14_bss.o(.bss);
    }
    END_NOLOAD(ovl14)

    /* 0x801DB1E0 205D40-210FB0 [B270] */
    BEGIN_SEG(ovl15, 0x801DB1E0) {
        BUILD_DIR/asm/ovl15/ovl15.o(.text);
    }
    END_SEG(ovl15)
    BEGIN_SEG(ovl15Data, _ovl15SegmentEnd) {
        BUILD_DIR/data/ovl15/ovl15.o(.data);
    }
    END_SEG(ovl15Data)

    /* 0x801DB1E0 211490-225770 [142E0] */
    BEGIN_SEG(ovl16, 0x801DB1E0) SUBALIGN(16) {
        BUILD_DIR/src/ovl16/ovl16.o(.text);
        BUILD_DIR/asm/ovl16/ovl16_2.o(.text);
    }
    END_SEG(ovl16)
    BEGIN_SEG(ovl16Data, _ovl16SegmentEnd) {
        BUILD_DIR/data/ovl16/data.o(.data);
        BUILD_DIR/data/ovl16/data_2.o(.rodata);
    }
    END_SEG(ovl16Data)

    /* 0x801DB1E0 2263D0-230050 [9C80] */
    BEGIN_SEG(ovl17, 0x801DB1E0) SUBALIGN(16) {
        BUILD_DIR/asm/ovl17/ovl17_0.o(.text);
        BUILD_DIR/src/ovl17/ovl17.o(.text);
        BUILD_DIR/asm/ovl17/ovl17_2.o(.text);
        BUILD_DIR/asm/ovl17/ovl17_3.o(.text);
        BUILD_DIR/src/ovl17/ovl17_last-0.o(.text);
    }
    END_SEG(ovl17)
    BEGIN_SEG(ovl17Data, _ovl17SegmentEnd) SUBALIGN(16) {
        BUILD_DIR/data/ovl17/data.o(.data*);
    }
    END_SEG(ovl17Data)
    BEGIN_NOLOAD(ovl17) {
        BUILD_DIR/data/ovl17/ovl17_bss.o(.bss);
    }
    END_NOLOAD(ovl17)

    /* 0x8021DF20 2308C0-239D80 [94C0] */
    BEGIN_SEG(ovl18, 0x8021DF20) SUBALIGN(16) {
        BUILD_DIR/src/ovl18/ovl18.o(.text);
        BUILD_DIR/src/ovl18/ovl18_1.o(.text);
        BUILD_DIR/src/ovl18/ovl18_2.o(.text);
        BUILD_DIR/src/ovl18/ovl18_3.o(.text);
        BUILD_DIR/src/ovl18/ovl18_4.o(.text);
        /*. += 0x10;*/
        BUILD_DIR/src/ovl18/ovl18_5.o(.text);
        BUILD_DIR/asm/ovl18/ovl18_6.o(.text);
        BUILD_DIR/src/ovl18/ovl18_7.o(.text);
    }
    END_SEG(ovl18)
    BEGIN_SEG(ovl18Data, _ovl18SegmentEnd) SUBALIGN(16) {
        BUILD_DIR/data/ovl18/data.o(.data*);
        BUILD_DIR/data/ovl18/rodata.o(.rodata);
        BUILD_DIR/src/ovl18/ovl18_1.o(.rodata);
        BUILD_DIR/src/ovl18/ovl18_3.o(.rodata);
        BUILD_DIR/src/ovl18/ovl18_5.o(.rodata);
        BUILD_DIR/data/ovl18/data_5.o(.rodata);
        BUILD_DIR/data/ovl18/data_6.o(.rodata);
    }
    END_SEG(ovl18Data)
    BEGIN_NOLOAD(ovl18) {
        BUILD_DIR/asm/ovl18/ovl18_bss.o(.bss);
    }
    END_NOLOAD(ovl18)

    /* 0x8021DF20 23E630-24F750 [11120] */
    BEGIN_SEG(ovl19, 0x8021DF20) SUBALIGN(16) {
        BUILD_DIR/src/ovl19/helplib.o(.text);
        . += 0x10;
        BUILD_DIR/src/ovl19/helper.o(.text);
        BUILD_DIR/src/ovl19/ovl19_3.o(.text);
        BUILD_DIR/asm/ovl19/ovl19_4.o(.text);
        BUILD_DIR/src/ovl19/ovl19_5.o(.text);
    }
    END_SEG(ovl19)

    BEGIN_SEG(ovl19Data, _ovl19SegmentEnd) SUBALIGN(16) {
        BUILD_DIR/data/kirby.ovl19.data.o(.data*);
        BUILD_DIR/data/kirby.ovl19.rodata.o(.rodata*);
    }
    END_SEG(ovl19Data)
    BEGIN_NOLOAD(ovl19) {
        BUILD_DIR/asm/ovl19/ovl19_bss.o(.bss);
        BUILD_DIR/src/ovl19/ovl19_3.o(.rodata); 
    }
    END_NOLOAD(ovl19)

    /* 0x80300000 2501C0-2502A0 [E0] */
    BEGIN_SEG(ovl20, 0x80300000) {
        BUILD_DIR/src/ovl20.o(.text);
    }
    END_SEG(ovl20)
    BEGIN_SEG(ovl20Data, _ovl20SegmentEnd) SUBALIGN(16){
        BUILD_DIR/src/ovl20.o(.data*);
    }
    END_SEG(ovl20Data)
    BEGIN_NOLOAD(ovl20) {
        . += 0x10;
        BUILD_DIR/src/ovl20.o(.bss);
    }
    END_NOLOAD(ovl20)

    BEGIN_SEG(data_250320, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.250320.o(.data*);
    }
    END_SEG(data_250320)
    BEGIN_SEG(data_2A8CB0, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.2A8CB0.o(.data*);
    }
    END_SEG(data_2A8CB0)

    BEGIN_SEG(data_2B1510, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.2B1510.o(.data*);
    }
    END_SEG(data_2B1510)
    BEGIN_SEG(data_3E1400, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.3E1400.o(.data*);
    }
    END_SEG(data_3E1400)
    BEGIN_SEG(data_3E6BC0, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.3E6BC0.o(.data*);
    }
    END_SEG(data_3E6BC0)
    BEGIN_SEG(data_49F590, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.49F590.o(.data*);
    }
    END_SEG(data_49F590)
    BEGIN_SEG(data_4A0340, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.4A0340.o(.data*);
    }
    END_SEG(data_4A0340)
    BEGIN_SEG(data_4A3B60, 0) SUBALIGN(16) {
        BUILD_DIR/asm/data/kirby.u.4A3B60.o(.data*);
    }
    END_SEG(data_4A3B60)

    #include "assets/bank0.ld"

    #include "assets/bank1.ld"

    #include "assets/bank2.ld"
    
    #include "assets/bank3.ld"

    #include "assets/bank4.ld"

    #include "assets/bank5.ld"

    #include "assets/bank6.ld"

    #include "assets/bank7.ld"

#ifndef NON_MATCHING
    BEGIN_SEG(epic_pad, 0) {
        QUAD(0);
        LONG(0);
    }
    END_SEG(epic_pad)
#endif
    /DISCARD/ :
    {
        *(*);
    }
}


