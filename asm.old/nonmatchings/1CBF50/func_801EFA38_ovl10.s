glabel func_801EFA38_ovl10
/* 1E07A8 801EFA38 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 1E07AC 801EFA3C 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 1E07B0 801EFA40 8CC20000 */  lw         $v0, 0x0($a2)
/* 1E07B4 801EFA44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E07B8 801EFA48 AFBF0014 */  sw         $ra, 0x14($sp)
.L801EFA4C_ovl9:
/* 1E07BC 801EFA4C AFA40018 */  sw         $a0, 0x18($sp)
/* 1E07C0 801EFA50 8C430000 */  lw         $v1, 0x0($v0)
/* 1E07C4 801EFA54 3C0E800B */  lui        $t6, %hi(func_800B7790)
/* 1E07C8 801EFA58 3C01800E */  lui        $at, %hi(D_800DEF90)
.L801EFA5C_ovl9:
/* 1E07CC 801EFA5C 00031880 */  sll        $v1, $v1, 2
/* 1E07D0 801EFA60 00230821 */  addu       $at, $at, $v1
/* 1E07D4 801EFA64 25CE7790 */  addiu      $t6, $t6, %lo(func_800B7790)
/* 1E07D8 801EFA68 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 1E07DC 801EFA6C 8C580000 */  lw         $t8, 0x0($v0)
/* 1E07E0 801EFA70 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 1E07E4 801EFA74 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 1E07E8 801EFA78 0018C880 */  sll        $t9, $t8, 2
/* 1E07EC 801EFA7C 00390821 */  addu       $at, $at, $t9
/* 1E07F0 801EFA80 240F0001 */  addiu      $t7, $zero, 0x1
/* 1E07F4 801EFA84 00A32821 */  addu       $a1, $a1, $v1
/* 1E07F8 801EFA88 AC2F8E60 */  sw         $t7, %lo(D_800E8E60)($at)
/* 1E07FC 801EFA8C 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0800 801EFA90 3C08800E */  lui        $t0, %hi(D_800E0D50)
/* 1E0804 801EFA94 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 1E0808 801EFA98 00031880 */  sll        $v1, $v1, 2
/* 1E080C 801EFA9C 01034021 */  addu       $t0, $t0, $v1
/* 1E0810 801EFAA0 8D080D50 */  lw         $t0, %lo(D_800E0D50)($t0)
/* 1E0814 801EFAA4 3C01800E */  lui        $at, %hi(D_800E6A10)
.L801EFAA8_ovl9:
/* 1E0818 801EFAA8 00230821 */  addu       $at, $at, $v1
/* 1E081C 801EFAAC 44882000 */  mtc1       $t0, $f4
/* 1E0820 801EFAB0 3C09801D */  lui        $t1, %hi(D_801CA04C)
/* 1E0824 801EFAB4 2529A04C */  addiu      $t1, $t1, %lo(D_801CA04C)
/* 1E0828 801EFAB8 468021A0 */  cvt.s.w    $f6, $f4
/* 1E082C 801EFABC 3C0A801F */  lui        $t2, %hi(func_801EFC58_ovl10)
/* 1E0830 801EFAC0 254AFC58 */  addiu      $t2, $t2, %lo(func_801EFC58_ovl10)
/* 1E0834 801EFAC4 3C040001 */  lui        $a0, (0x105F9 >> 16)
/* 1E0838 801EFAC8 348405F9 */  ori        $a0, $a0, (0x105F9 & 0xFFFF)
/* 1E083C 801EFACC E4266A10 */  swc1       $f6, %lo(D_800E6A10)($at)
.L801EFAD0_ovl9:
/* 1E0840 801EFAD0 ACA9008C */  sw         $t1, 0x8C($a1)
/* 1E0844 801EFAD4 8CCB0000 */  lw         $t3, 0x0($a2)
/* 1E0848 801EFAD8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1E084C 801EFADC 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1E0850 801EFAE0 000C6880 */  sll        $t5, $t4, 2
/* 1E0854 801EFAE4 002D0821 */  addu       $at, $at, $t5
.L801EFAE8_ovl9:
/* 1E0858 801EFAE8 0C02A806 */  jal        func_800AA018
/* 1E085C 801EFAEC AC2AF150 */   sw        $t2, %lo(D_800DF150)($at)
/* 1E0860 801EFAF0 3C040001 */  lui        $a0, (0x105FA >> 16)
/* 1E0864 801EFAF4 0C02A806 */  jal        func_800AA018
/* 1E0868 801EFAF8 348405FA */   ori       $a0, $a0, (0x105FA & 0xFFFF)
/* 1E086C 801EFAFC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E0870 801EFB00 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E0874 801EFB04 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E0878 801EFB08 2404003C */  addiu      $a0, $zero, 0x3C
/* 1E087C 801EFB0C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E0880 801EFB10 000EC080 */  sll        $t8, $t6, 2
/* 1E0884 801EFB14 00380821 */  addu       $at, $at, $t8
/* 1E0888 801EFB18 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 1E088C 801EFB1C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1E0890 801EFB20 3C01801F */  lui        $at, %hi(D_801F4C4C_ovl10)
/* 1E0894 801EFB24 C4284C4C */  lwc1       $f8, %lo(D_801F4C4C_ovl10)($at)
/* 1E0898 801EFB28 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E089C 801EFB2C 000FC880 */  sll        $t9, $t7, 2
/* 1E08A0 801EFB30 00390821 */  addu       $at, $at, $t9
/* 1E08A4 801EFB34 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 1E08A8 801EFB38 8C480000 */  lw         $t0, 0x0($v0)
/* 1E08AC 801EFB3C 3C01801F */  lui        $at, %hi(D_801F4C50_ovl10)
.L801EFB40_ovl9:
/* 1E08B0 801EFB40 C42A4C50 */  lwc1       $f10, %lo(D_801F4C50_ovl10)($at)
/* 1E08B4 801EFB44 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1E08B8 801EFB48 00084880 */  sll        $t1, $t0, 2
/* 1E08BC 801EFB4C 00290821 */  addu       $at, $at, $t1
/* 1E08C0 801EFB50 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
/* 1E08C4 801EFB54 8C430000 */  lw         $v1, 0x0($v0)
/* 1E08C8 801EFB58 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1E08CC 801EFB5C 00031880 */  sll        $v1, $v1, 2
/* 1E08D0 801EFB60 00230821 */  addu       $at, $at, $v1
/* 1E08D4 801EFB64 C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
/* 1E08D8 801EFB68 3C014270 */  lui        $at, (0x42700000 >> 16)
.L801EFB6C_ovl9:
/* 1E08DC 801EFB6C 44819000 */  mtc1       $at, $f18
/* 1E08E0 801EFB70 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1E08E4 801EFB74 00230821 */  addu       $at, $at, $v1
/* 1E08E8 801EFB78 46128103 */  div.s      $f4, $f16, $f18
/* 1E08EC 801EFB7C 46002187 */  neg.s      $f6, $f4
/* 1E08F0 801EFB80 0C002DAF */  jal        finish_current_thread
/* 1E08F4 801EFB84 E4263050 */   swc1      $f6, %lo(D_800E3050)($at)
/* 1E08F8 801EFB88 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E08FC 801EFB8C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E0900 801EFB90 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E0904 801EFB94 240B0001 */  addiu      $t3, $zero, 0x1
/* 1E0908 801EFB98 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1E090C 801EFB9C 44804000 */  mtc1       $zero, $f8
/* 1E0910 801EFBA0 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 1E0914 801EFBA4 000C5080 */  sll        $t2, $t4, 2
/* 1E0918 801EFBA8 002A0821 */  addu       $at, $at, $t2
/* 1E091C 801EFBAC AC2B98E0 */  sw         $t3, %lo(D_800E98E0)($at)
/* 1E0920 801EFBB0 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1E0924 801EFBB4 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 1E0928 801EFBB8 3C01800E */  lui        $at, %hi(D_800E3590)
/* 1E092C 801EFBBC 000D7080 */  sll        $t6, $t5, 2
/* 1E0930 801EFBC0 00AEC021 */  addu       $t8, $a1, $t6
/* 1E0934 801EFBC4 E7080000 */  swc1       $f8, 0x0($t8)
/* 1E0938 801EFBC8 8C430000 */  lw         $v1, 0x0($v0)
/* 1E093C 801EFBCC 3C04800E */  lui        $a0, %hi(D_800E3C90)
/* 1E0940 801EFBD0 24843C90 */  addiu      $a0, $a0, %lo(D_800E3C90)
/* 1E0944 801EFBD4 00031880 */  sll        $v1, $v1, 2
/* 1E0948 801EFBD8 00A37821 */  addu       $t7, $a1, $v1
/* 1E094C 801EFBDC C5E00000 */  lwc1       $f0, 0x0($t7)
.L801EFBE0_ovl9:
/* 1E0950 801EFBE0 00230821 */  addu       $at, $at, $v1
/* 1E0954 801EFBE4 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 1E0958 801EFBE8 8C590000 */  lw         $t9, 0x0($v0)
/* 1E095C 801EFBEC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E0960 801EFBF0 00194080 */  sll        $t0, $t9, 2
/* 1E0964 801EFBF4 00280821 */  addu       $at, $at, $t0
.L801EFBF8_ovl9:
/* 1E0968 801EFBF8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1E096C 801EFBFC 8C490000 */  lw         $t1, 0x0($v0)
.L801EFC00_ovl9:
/* 1E0970 801EFC00 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1E0974 801EFC04 00096080 */  sll        $t4, $t1, 2
/* 1E0978 801EFC08 002C0821 */  addu       $at, $at, $t4
/* 1E097C 801EFC0C E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
glabel D_801EFC10_ovl16
/* 1E0980 801EFC10 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E0984 801EFC14 3C01801F */  lui        $at, %hi(D_801F4C54_ovl10)
/* 1E0988 801EFC18 C42A4C54 */  lwc1       $f10, %lo(D_801F4C54_ovl10)($at)
/* 1E098C 801EFC1C 000B5080 */  sll        $t2, $t3, 2
glabel D_801EFC20_ovl16
/* 1E0990 801EFC20 008A6821 */  addu       $t5, $a0, $t2
/* 1E0994 801EFC24 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 1E0998 801EFC28 8C430000 */  lw         $v1, 0x0($v0)
/* 1E099C 801EFC2C 3C01800E */  lui        $at, %hi(D_800E3AD0)
glabel D_801EFC30_ovl16
/* 1E09A0 801EFC30 00031880 */  sll        $v1, $v1, 2
/* 1E09A4 801EFC34 00837021 */  addu       $t6, $a0, $v1
/* 1E09A8 801EFC38 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 1E09AC 801EFC3C 00230821 */  addu       $at, $at, $v1
glabel D_801EFC40_ovl16
/* 1E09B0 801EFC40 0C02BE85 */  jal        func_800AFA14
/* 1E09B4 801EFC44 E4303AD0 */   swc1      $f16, %lo(D_800E3AD0)($at)
/* 1E09B8 801EFC48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E09BC 801EFC4C 27BD0018 */  addiu      $sp, $sp, 0x18
glabel D_801EFC50_ovl16
/* 1E09C0 801EFC50 03E00008 */  jr         $ra
/* 1E09C4 801EFC54 00000000 */   nop
