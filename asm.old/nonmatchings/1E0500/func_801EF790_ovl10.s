glabel func_801EF790_ovl10
/* 1E0500 801EF790 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 1E0504 801EF794 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 1E0508 801EF798 8CC20000 */  lw         $v0, 0x0($a2)
/* 1E050C 801EF79C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E0510 801EF7A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E0514 801EF7A4 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E0518 801EF7A8 8C430000 */  lw         $v1, 0x0($v0)
/* 1E051C 801EF7AC 3C0E800B */  lui        $t6, %hi(func_800B7790)
/* 1E0520 801EF7B0 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1E0524 801EF7B4 00031880 */  sll        $v1, $v1, 2
/* 1E0528 801EF7B8 00230821 */  addu       $at, $at, $v1
/* 1E052C 801EF7BC 25CE7790 */  addiu      $t6, $t6, %lo(func_800B7790)
/* 1E0530 801EF7C0 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 1E0534 801EF7C4 8C580000 */  lw         $t8, 0x0($v0)
/* 1E0538 801EF7C8 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 1E053C 801EF7CC 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 1E0540 801EF7D0 0018C880 */  sll        $t9, $t8, 2
.L801EF7D4_ovl9:
/* 1E0544 801EF7D4 00390821 */  addu       $at, $at, $t9
glabel D_801EF7D8_ovl16
/* 1E0548 801EF7D8 240F0001 */  addiu      $t7, $zero, 0x1
/* 1E054C 801EF7DC 00A32821 */  addu       $a1, $a1, $v1
/* 1E0550 801EF7E0 AC2F8E60 */  sw         $t7, %lo(D_800E8E60)($at)
/* 1E0554 801EF7E4 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0558 801EF7E8 3C08800E */  lui        $t0, %hi(D_800E0D50)
/* 1E055C 801EF7EC 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 1E0560 801EF7F0 00031880 */  sll        $v1, $v1, 2
glabel D_801EF7F4_ovl16
/* 1E0564 801EF7F4 01034021 */  addu       $t0, $t0, $v1
/* 1E0568 801EF7F8 8D080D50 */  lw         $t0, %lo(D_800E0D50)($t0)
/* 1E056C 801EF7FC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1E0570 801EF800 00230821 */  addu       $at, $at, $v1
/* 1E0574 801EF804 44882000 */  mtc1       $t0, $f4
/* 1E0578 801EF808 3C09801D */  lui        $t1, %hi(D_801CA04C)
/* 1E057C 801EF80C 2529A04C */  addiu      $t1, $t1, %lo(D_801CA04C)
glabel D_801EF810_ovl16
/* 1E0580 801EF810 468021A0 */  cvt.s.w    $f6, $f4
/* 1E0584 801EF814 3C0A801F */  lui        $t2, %hi(func_801EF9B0_ovl16)
/* 1E0588 801EF818 254AF9B0 */  addiu      $t2, $t2, %lo(func_801EF9B0_ovl16)
/* 1E058C 801EF81C 3C040001 */  lui        $a0, (0x105F9 >> 16)
/* 1E0590 801EF820 348405F9 */  ori        $a0, $a0, (0x105F9 & 0xFFFF)
/* 1E0594 801EF824 E4266A10 */  swc1       $f6, %lo(D_800E6A10)($at)
/* 1E0598 801EF828 ACA9008C */  sw         $t1, 0x8C($a1)
glabel D_801EF82C_ovl16
/* 1E059C 801EF82C 8CCB0000 */  lw         $t3, 0x0($a2)
/* 1E05A0 801EF830 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1E05A4 801EF834 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1E05A8 801EF838 000C6880 */  sll        $t5, $t4, 2
/* 1E05AC 801EF83C 002D0821 */  addu       $at, $at, $t5
/* 1E05B0 801EF840 0C02A806 */  jal        func_800AA018
/* 1E05B4 801EF844 AC2AF150 */   sw        $t2, %lo(D_800DF150)($at)
.L801EF848_ovl16:
/* 1E05B8 801EF848 3C040001 */  lui        $a0, (0x105FA >> 16)
/* 1E05BC 801EF84C 0C02A806 */  jal        func_800AA018
/* 1E05C0 801EF850 348405FA */   ori       $a0, $a0, (0x105FA & 0xFFFF)
/* 1E05C4 801EF854 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E05C8 801EF858 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E05CC 801EF85C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E05D0 801EF860 2404003C */  addiu      $a0, $zero, 0x3C
glabel D_801EF864_ovl16
/* 1E05D4 801EF864 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E05D8 801EF868 000EC080 */  sll        $t8, $t6, 2
/* 1E05DC 801EF86C 00380821 */  addu       $at, $at, $t8
glabel D_801EF870_ovl16
/* 1E05E0 801EF870 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 1E05E4 801EF874 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1E05E8 801EF878 3C01801F */  lui        $at, %hi(D_801F4C40_ovl10)
.L801EF87C_ovl16:
/* 1E05EC 801EF87C C4284C40 */  lwc1       $f8, %lo(D_801F4C40_ovl10)($at)
.L801EF880_ovl9:
/* 1E05F0 801EF880 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E05F4 801EF884 000FC880 */  sll        $t9, $t7, 2
/* 1E05F8 801EF888 00390821 */  addu       $at, $at, $t9
/* 1E05FC 801EF88C E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 1E0600 801EF890 8C480000 */  lw         $t0, 0x0($v0)
/* 1E0604 801EF894 3C01801F */  lui        $at, %hi(D_801F4C44_ovl10)
/* 1E0608 801EF898 C42A4C44 */  lwc1       $f10, %lo(D_801F4C44_ovl10)($at)
/* 1E060C 801EF89C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1E0610 801EF8A0 00084880 */  sll        $t1, $t0, 2
/* 1E0614 801EF8A4 00290821 */  addu       $at, $at, $t1
/* 1E0618 801EF8A8 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
/* 1E061C 801EF8AC 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0620 801EF8B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1E0624 801EF8B4 00031880 */  sll        $v1, $v1, 2
/* 1E0628 801EF8B8 00230821 */  addu       $at, $at, $v1
/* 1E062C 801EF8BC C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
/* 1E0630 801EF8C0 3C014270 */  lui        $at, (0x42700000 >> 16)
glabel D_801EF8C4_ovl16
/* 1E0634 801EF8C4 44819000 */  mtc1       $at, $f18
/* 1E0638 801EF8C8 3C01800E */  lui        $at, %hi(D_800E3050)
glabel D_801EF8CC_ovl16
/* 1E063C 801EF8CC 00230821 */  addu       $at, $at, $v1
/* 1E0640 801EF8D0 46128103 */  div.s      $f4, $f16, $f18
/* 1E0644 801EF8D4 46002187 */  neg.s      $f6, $f4
/* 1E0648 801EF8D8 0C002DAF */  jal        finish_current_thread
glabel D_801EF8DC_ovl16
/* 1E064C 801EF8DC E4263050 */   swc1      $f6, %lo(D_800E3050)($at)
/* 1E0650 801EF8E0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E0654 801EF8E4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E0658 801EF8E8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E065C 801EF8EC 240B0001 */  addiu      $t3, $zero, 0x1
/* 1E0660 801EF8F0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1E0664 801EF8F4 44804000 */  mtc1       $zero, $f8
/* 1E0668 801EF8F8 3C05800E */  lui        $a1, %hi(D_800E3750)
glabel D_801EF8FC_ovl16
/* 1E066C 801EF8FC 000C5080 */  sll        $t2, $t4, 2
/* 1E0670 801EF900 002A0821 */  addu       $at, $at, $t2
/* 1E0674 801EF904 AC2B98E0 */  sw         $t3, %lo(D_800E98E0)($at)
/* 1E0678 801EF908 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1E067C 801EF90C 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 1E0680 801EF910 3C01800E */  lui        $at, %hi(D_800E3590)
glabel D_801EF914_ovl16
/* 1E0684 801EF914 000D7080 */  sll        $t6, $t5, 2
/* 1E0688 801EF918 00AEC021 */  addu       $t8, $a1, $t6
/* 1E068C 801EF91C E7080000 */  swc1       $f8, 0x0($t8)
glabel D_801EF920_ovl16
/* 1E0690 801EF920 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0694 801EF924 3C04800E */  lui        $a0, %hi(D_800E3C90)
/* 1E0698 801EF928 24843C90 */  addiu      $a0, $a0, %lo(D_800E3C90)
glabel D_801EF92C_ovl16
/* 1E069C 801EF92C 00031880 */  sll        $v1, $v1, 2
/* 1E06A0 801EF930 00A37821 */  addu       $t7, $a1, $v1
/* 1E06A4 801EF934 C5E00000 */  lwc1       $f0, 0x0($t7)
glabel D_801EF938_ovl16
/* 1E06A8 801EF938 00230821 */  addu       $at, $at, $v1
glabel D_801EF93C_ovl16
/* 1E06AC 801EF93C E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 1E06B0 801EF940 8C590000 */  lw         $t9, 0x0($v0)
/* 1E06B4 801EF944 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E06B8 801EF948 00194080 */  sll        $t0, $t9, 2
/* 1E06BC 801EF94C 00280821 */  addu       $at, $at, $t0
/* 1E06C0 801EF950 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1E06C4 801EF954 8C490000 */  lw         $t1, 0x0($v0)
/* 1E06C8 801EF958 3C01800E */  lui        $at, %hi(D_800E3050)
glabel D_801EF95C_ovl16
/* 1E06CC 801EF95C 00096080 */  sll        $t4, $t1, 2
/* 1E06D0 801EF960 002C0821 */  addu       $at, $at, $t4
/* 1E06D4 801EF964 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 1E06D8 801EF968 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E06DC 801EF96C 3C01801F */  lui        $at, %hi(D_801F4C48_ovl10)
/* 1E06E0 801EF970 C42A4C48 */  lwc1       $f10, %lo(D_801F4C48_ovl10)($at)
/* 1E06E4 801EF974 000B5080 */  sll        $t2, $t3, 2
/* 1E06E8 801EF978 008A6821 */  addu       $t5, $a0, $t2
glabel D_801EF97C_ovl16
/* 1E06EC 801EF97C E5AA0000 */  swc1       $f10, 0x0($t5)
/* 1E06F0 801EF980 8C430000 */  lw         $v1, 0x0($v0)
/* 1E06F4 801EF984 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 1E06F8 801EF988 00031880 */  sll        $v1, $v1, 2
glabel D_801EF98C_ovl16
/* 1E06FC 801EF98C 00837021 */  addu       $t6, $a0, $v1
/* 1E0700 801EF990 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 1E0704 801EF994 00230821 */  addu       $at, $at, $v1
/* 1E0708 801EF998 0C02BE85 */  jal        func_800AFA14
/* 1E070C 801EF99C E4303AD0 */   swc1      $f16, %lo(D_800E3AD0)($at)
glabel D_801EF9A0_ovl16
/* 1E0710 801EF9A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E0714 801EF9A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E0718 801EF9A8 03E00008 */  jr         $ra
/* 1E071C 801EF9AC 00000000 */   nop
