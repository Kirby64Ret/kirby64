glabel func_801F2584_ovl9
/* 1A05D4 801F2584 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 1A05D8 801F2588 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 1A05DC 801F258C 8D020000 */  lw         $v0, 0x0($t0)
/* 1A05E0 801F2590 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 1A05E4 801F2594 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1A05E8 801F2598 AFA40068 */  sw         $a0, 0x68($sp)
/* 1A05EC 801F259C 8C430000 */  lw         $v1, 0x0($v0)
/* 1A05F0 801F25A0 3C07800E */  lui        $a3, %hi(D_800E1B50)
/* 1A05F4 801F25A4 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
.L801F25A8_ovl10:
/* 1A05F8 801F25A8 00031880 */  sll        $v1, $v1, 2
/* 1A05FC 801F25AC 3C18800E */  lui        $t8, %hi(D_800E0D50)
/* 1A0600 801F25B0 00E37021 */  addu       $t6, $a3, $v1
/* 1A0604 801F25B4 0303C021 */  addu       $t8, $t8, $v1
/* 1A0608 801F25B8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1A060C 801F25BC 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
/* 1A0610 801F25C0 3C19801F */  lui        $t9, %hi(func_801F2910_ovl9)
/* 1A0614 801F25C4 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1A0618 801F25C8 00230821 */  addu       $at, $at, $v1
/* 1A061C 801F25CC 27392910 */  addiu      $t9, $t9, %lo(func_801F2910_ovl9)
/* 1A0620 801F25D0 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* 1A0624 801F25D4 AFAF0064 */  sw         $t7, 0x64($sp)
/* 1A0628 801F25D8 AFB80060 */  sw         $t8, 0x60($sp)
/* 1A062C 801F25DC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1A0630 801F25E0 3C09801D */  lui        $t1, %hi(D_801CB4DC_ovl7)
/* 1A0634 801F25E4 2529B4DC */  addiu      $t1, $t1, %lo(D_801CB4DC_ovl7)
/* 1A0638 801F25E8 000A5880 */  sll        $t3, $t2, 2
/* 1A063C 801F25EC 00EB6021 */  addu       $t4, $a3, $t3
/* 1A0640 801F25F0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1A0644 801F25F4 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1A0648 801F25F8 3C040001 */  lui        $a0, (0x10086 >> 16)
glabel func_801F25FC_ovl10
/* 1A064C 801F25FC ADA90098 */  sw         $t1, 0x98($t5)
/* 1A0650 801F2600 8D0E0000 */  lw         $t6, 0x0($t0)
/* 1A0654 801F2604 34840086 */  ori        $a0, $a0, (0x10086 & 0xFFFF)
/* 1A0658 801F2608 24050023 */  addiu      $a1, $zero, 0x23
/* 1A065C 801F260C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1A0660 801F2610 24060010 */  addiu      $a2, $zero, 0x10
/* 1A0664 801F2614 000FC080 */  sll        $t8, $t7, 2
/* 1A0668 801F2618 00380821 */  addu       $at, $at, $t8
/* 1A066C 801F261C 0C02A619 */  jal        func_800A9864
/* 1A0670 801F2620 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1A0674 801F2624 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A0678 801F2628 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A067C 801F262C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 1A0680 801F2630 44812000 */  mtc1       $at, $f4
/* 1A0684 801F2634 8C590000 */  lw         $t9, 0x0($v0)
/* 1A0688 801F2638 3C05800E */  lui        $a1, %hi(gEntitiesScaleZArray)
/* 1A068C 801F263C 24A548D0 */  addiu      $a1, $a1, %lo(gEntitiesScaleZArray)
/* 1A0690 801F2640 00195080 */  sll        $t2, $t9, 2
/* 1A0694 801F2644 00AA5821 */  addu       $t3, $a1, $t2
/* 1A0698 801F2648 E5640000 */  swc1       $f4, 0x0($t3)
/* 1A069C 801F264C 8C430000 */  lw         $v1, 0x0($v0)
/* 1A06A0 801F2650 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 1A06A4 801F2654 8FA40060 */  lw         $a0, 0x60($sp)
/* 1A06A8 801F2658 00031880 */  sll        $v1, $v1, 2
/* 1A06AC 801F265C 00A36021 */  addu       $t4, $a1, $v1
/* 1A06B0 801F2660 C5800000 */  lwc1       $f0, 0x0($t4)
/* 1A06B4 801F2664 00230821 */  addu       $at, $at, $v1
/* 1A06B8 801F2668 3C0E800E */  lui        $t6, %hi(D_800DD710)
/* 1A06BC 801F266C E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 1A06C0 801F2670 8C490000 */  lw         $t1, 0x0($v0)
/* 1A06C4 801F2674 00042080 */  sll        $a0, $a0, 2
/* 1A06C8 801F2678 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 1A06CC 801F267C 01C47021 */  addu       $t6, $t6, $a0
/* 1A06D0 801F2680 00096880 */  sll        $t5, $t1, 2
/* 1A06D4 801F2684 8DCED710 */  lw         $t6, %lo(D_800DD710)($t6)
/* 1A06D8 801F2688 002D0821 */  addu       $at, $at, $t5
/* 1A06DC 801F268C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 1A06E0 801F2690 2401FFFF */  addiu      $at, $zero, -0x1
/* 1A06E4 801F2694 11C10006 */  beq        $t6, $at, .L801F26B0_ovl9
/* 1A06E8 801F2698 3C18800F */   lui       $t8, %hi(D_800EBBE0)
/* 1A06EC 801F269C 0304C021 */  addu       $t8, $t8, $a0
/* 1A06F0 801F26A0 8F18BBE0 */  lw         $t8, %lo(D_800EBBE0)($t8)
/* 1A06F4 801F26A4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1A06F8 801F26A8 11F80003 */  beq        $t7, $t8, .L801F26B8_ovl9
/* 1A06FC 801F26AC 00000000 */   nop
.L801F26B0_ovl9:
/* 1A0700 801F26B0 0C067656 */  jal        func_8019D958_ovl7
/* 1A0704 801F26B4 94440002 */   lhu       $a0, 0x2($v0)
.L801F26B8_ovl9:
/* 1A0708 801F26B8 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 1A070C 801F26BC 00000000 */   nop
/* 1A0710 801F26C0 8FB90064 */  lw         $t9, 0x64($sp)
/* 1A0714 801F26C4 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 1A0718 801F26C8 44813000 */  mtc1       $at, $f6
/* 1A071C 801F26CC 8F2A0080 */  lw         $t2, 0x80($t9)
/* 1A0720 801F26D0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A0724 801F26D4 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1A0728 801F26D8 E5460010 */  swc1       $f6, 0x10($t2)
/* 1A072C 801F26DC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A0730 801F26E0 3C0B800B */  lui        $t3, %hi(func_800B7514)
/* 1A0734 801F26E4 256B7514 */  addiu      $t3, $t3, %lo(func_800B7514)
/* 1A0738 801F26E8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1A073C 801F26EC 3C0F800E */  lui        $t7, %hi(D_800E0D50)
/* 1A0740 801F26F0 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* 1A0744 801F26F4 000C4880 */  sll        $t1, $t4, 2
/* 1A0748 801F26F8 00290821 */  addu       $at, $at, $t1
/* 1A074C 801F26FC AC2BEF90 */  sw         $t3, %lo(D_800DEF90)($at)
/* 1A0750 801F2700 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1A0754 801F2704 27A40044 */  addiu      $a0, $sp, 0x44
/* 1A0758 801F2708 000D7080 */  sll        $t6, $t5, 2
/* 1A075C 801F270C 01EE7821 */  addu       $t7, $t7, $t6
/* 1A0760 801F2710 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
/* 1A0764 801F2714 000FC080 */  sll        $t8, $t7, 2
/* 1A0768 801F2718 0338C821 */  addu       $t9, $t9, $t8
/* 1A076C 801F271C 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* 1A0770 801F2720 0C0291E5 */  jal        func_800A4794
/* 1A0774 801F2724 8F250014 */   lw        $a1, 0x14($t9)
/* 1A0778 801F2728 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A077C 801F272C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A0780 801F2730 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1A0784 801F2734 C7A80044 */  lwc1       $f8, 0x44($sp)
/* 1A0788 801F2738 8C430000 */  lw         $v1, 0x0($v0)
/* 1A078C 801F273C C7A40048 */  lwc1       $f4, 0x48($sp)
/* 1A0790 801F2740 44800000 */  mtc1       $zero, $f0
/* 1A0794 801F2744 00031880 */  sll        $v1, $v1, 2
.L801F2748_ovl10:
/* 1A0798 801F2748 00230821 */  addu       $at, $at, $v1
/* 1A079C 801F274C C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* 1A07A0 801F2750 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1A07A4 801F2754 00230821 */  addu       $at, $at, $v1
.L801F2758_ovl10:
/* 1A07A8 801F2758 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1A07AC 801F275C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1A07B0 801F2760 460A4401 */  sub.s      $f16, $f8, $f10
/* 1A07B4 801F2764 00230821 */  addu       $at, $at, $v1
/* 1A07B8 801F2768 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* 1A07BC 801F276C 46062481 */  sub.s      $f18, $f4, $f6
glabel func_801F2770_ovl10
/* 1A07C0 801F2770 C7A8004C */  lwc1       $f8, 0x4C($sp)
/* 1A07C4 801F2774 4600903C */  c.lt.s     $f18, $f0
/* 1A07C8 801F2778 460A4101 */  sub.s      $f4, $f8, $f10
/* 1A07CC 801F277C 45000004 */  bc1f       .L801F2790_ovl9
/* 1A07D0 801F2780 E7A40054 */   swc1      $f4, 0x54($sp)
/* 1A07D4 801F2784 46009187 */  neg.s      $f6, $f18
/* 1A07D8 801F2788 10000002 */  b          .L801F2794_ovl9
/* 1A07DC 801F278C E7A60038 */   swc1      $f6, 0x38($sp)
.L801F2790_ovl9:
/* 1A07E0 801F2790 E7B20038 */  swc1       $f18, 0x38($sp)
.L801F2794_ovl9:
/* 1A07E4 801F2794 4600803C */  c.lt.s     $f16, $f0
/* 1A07E8 801F2798 00000000 */  nop
/* 1A07EC 801F279C 45020005 */  bc1fl      .L801F27B4_ovl9
/* 1A07F0 801F27A0 E7B0003C */   swc1      $f16, 0x3C($sp)
/* 1A07F4 801F27A4 46008207 */  neg.s      $f8, $f16
/* 1A07F8 801F27A8 10000002 */  b          .L801F27B4_ovl9
/* 1A07FC 801F27AC E7A8003C */   swc1      $f8, 0x3C($sp)
/* 1A0800 801F27B0 E7B0003C */  swc1       $f16, 0x3C($sp)
.L801F27B4_ovl9:
/* 1A0804 801F27B4 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* 1A0808 801F27B8 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* 1A080C 801F27BC C7A60038 */  lwc1       $f6, 0x38($sp)
/* 1A0810 801F27C0 4600503C */  c.lt.s     $f10, $f0
/* 1A0814 801F27C4 C7A00054 */  lwc1       $f0, 0x54($sp)
/* 1A0818 801F27C8 3C018022 */  lui        $at, %hi(D_8021D8E8_ovl9)
/* 1A081C 801F27CC 46062200 */  add.s      $f8, $f4, $f6
/* 1A0820 801F27D0 45000003 */  bc1f       .L801F27E0_ovl9
/* 1A0824 801F27D4 00000000 */   nop
/* 1A0828 801F27D8 10000001 */  b          .L801F27E0_ovl9
/* 1A082C 801F27DC 46005007 */   neg.s     $f0, $f10
.L801F27E0_ovl9:
/* 1A0830 801F27E0 46080300 */  add.s      $f12, $f0, $f8
/* 1A0834 801F27E4 44807000 */  mtc1       $zero, $f14
/* 1A0838 801F27E8 00000000 */  nop
/* 1A083C 801F27EC 460C7032 */  c.eq.s     $f14, $f12
/* 1A0840 801F27F0 00000000 */  nop
/* 1A0844 801F27F4 45020003 */  bc1fl      .L801F2804_ovl9
/* 1A0848 801F27F8 460C8083 */   div.s     $f2, $f16, $f12
/* 1A084C 801F27FC C42CD8E8 */  lwc1       $f12, %lo(D_8021D8E8_ovl9)($at)
/* 1A0850 801F2800 460C8083 */  div.s      $f2, $f16, $f12
.L801F2804_ovl9:
/* 1A0854 801F2804 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 1A0858 801F2808 44810000 */  mtc1       $at, $f0
/* 1A085C 801F280C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1A0860 801F2810 00230821 */  addu       $at, $at, $v1
/* 1A0864 801F2814 24040001 */  addiu      $a0, $zero, 0x1
/* 1A0868 801F2818 460C9103 */  div.s      $f4, $f18, $f12
/* 1A086C 801F281C 46001282 */  mul.s      $f10, $f2, $f0
/* 1A0870 801F2820 E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
/* 1A0874 801F2824 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* 1A0878 801F2828 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1A087C 801F282C E7A40028 */  swc1       $f4, 0x28($sp)
/* 1A0880 801F2830 460C5103 */  div.s      $f4, $f10, $f12
/* 1A0884 801F2834 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 1A0888 801F2838 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1A088C 801F283C 46003202 */  mul.s      $f8, $f6, $f0
/* 1A0890 801F2840 000A6080 */  sll        $t4, $t2, 2
/* 1A0894 801F2844 002C0821 */  addu       $at, $at, $t4
/* 1A0898 801F2848 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 1A089C 801F284C 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 1A08A0 801F2850 46002182 */  mul.s      $f6, $f4, $f0
/* 1A08A4 801F2854 E7A40024 */  swc1       $f4, 0x24($sp)
/* 1A08A8 801F2858 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1A08AC 801F285C E7A2002C */  swc1       $f2, 0x2C($sp)
/* 1A08B0 801F2860 000B4880 */  sll        $t1, $t3, 2
/* 1A08B4 801F2864 00290821 */  addu       $at, $at, $t1
/* 1A08B8 801F2868 0C002DAF */  jal        finish_current_thread
/* 1A08BC 801F286C E42633D0 */   swc1      $f6, %lo(D_800E33D0)($at)
/* 1A08C0 801F2870 44807000 */  mtc1       $zero, $f14
/* 1A08C4 801F2874 00002025 */  or         $a0, $zero, $zero
/* 1A08C8 801F2878 24050005 */  addiu      $a1, $zero, 0x5
.L801F287C_ovl10:
/* 1A08CC 801F287C 44067000 */  mfc1       $a2, $f14
/* 1A08D0 801F2880 44077000 */  mfc1       $a3, $f14
/* 1A08D4 801F2884 0C03F55C */  jal        func_800FD570
/* 1A08D8 801F2888 E7AE0010 */   swc1      $f14, 0x10($sp)
/* 1A08DC 801F288C 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* 1A08E0 801F2890 44810000 */  mtc1       $at, $f0
.L801F2894_ovl10:
/* 1A08E4 801F2894 C7A8002C */  lwc1       $f8, 0x2C($sp)
/* 1A08E8 801F2898 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A08EC 801F289C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A08F0 801F28A0 46004282 */  mul.s      $f10, $f8, $f0
/* 1A08F4 801F28A4 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 1A08F8 801F28A8 8C4D0000 */  lw         $t5, 0x0($v0)
glabel func_801F28AC_ovl10
/* 1A08FC 801F28AC 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1A0900 801F28B0 46002182 */  mul.s      $f6, $f4, $f0
/* 1A0904 801F28B4 000D7080 */  sll        $t6, $t5, 2
/* 1A0908 801F28B8 002E0821 */  addu       $at, $at, $t6
/* 1A090C 801F28BC E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
/* 1A0910 801F28C0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1A0914 801F28C4 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 1A0918 801F28C8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1A091C 801F28CC 000FC080 */  sll        $t8, $t7, 2
/* 1A0920 801F28D0 00380821 */  addu       $at, $at, $t8
/* 1A0924 801F28D4 46004282 */  mul.s      $f10, $f8, $f0
/* 1A0928 801F28D8 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 1A092C 801F28DC 8C590000 */  lw         $t9, 0x0($v0)
/* 1A0930 801F28E0 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 1A0934 801F28E4 24040028 */  addiu      $a0, $zero, 0x28
/* 1A0938 801F28E8 00195080 */  sll        $t2, $t9, 2
/* 1A093C 801F28EC 002A0821 */  addu       $at, $at, $t2
/* 1A0940 801F28F0 0C002DAF */  jal        finish_current_thread
/* 1A0944 801F28F4 E42A33D0 */   swc1      $f10, %lo(D_800E33D0)($at)
/* 1A0948 801F28F8 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 1A094C 801F28FC 8FA40068 */   lw        $a0, 0x68($sp)
/* 1A0950 801F2900 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1A0954 801F2904 27BD0068 */  addiu      $sp, $sp, 0x68
/* 1A0958 801F2908 03E00008 */  jr         $ra
/* 1A095C 801F290C 00000000 */   nop
