glabel func_801EDAA0_ovl10
/* 1DE810 801EDAA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1DE814 801EDAA4 AFB00034 */  sw         $s0, 0x34($sp)
/* 1DE818 801EDAA8 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1DE81C 801EDAAC 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 1DE820 801EDAB0 8E020000 */  lw         $v0, 0x0($s0)
.L801EDAB4_ovl9:
/* 1DE824 801EDAB4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 1DE828 801EDAB8 AFB10038 */  sw         $s1, 0x38($sp)
/* 1DE82C 801EDABC F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 1DE830 801EDAC0 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 1DE834 801EDAC4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1DE838 801EDAC8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1DE83C 801EDACC AFA40040 */  sw         $a0, 0x40($sp)
/* 1DE840 801EDAD0 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE844 801EDAD4 3C0E800B */  lui        $t6, %hi(func_800B79F4)
/* 1DE848 801EDAD8 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1DE84C 801EDADC 00031880 */  sll        $v1, $v1, 2
/* 1DE850 801EDAE0 00230821 */  addu       $at, $at, $v1
/* 1DE854 801EDAE4 25CE79F4 */  addiu      $t6, $t6, %lo(func_800B79F4)
/* 1DE858 801EDAE8 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 1DE85C 801EDAEC 8C580000 */  lw         $t8, 0x0($v0)
/* 1DE860 801EDAF0 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 1DE864 801EDAF4 00A32821 */  addu       $a1, $a1, $v1
/* 1DE868 801EDAF8 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1DE86C 801EDAFC 0018C880 */  sll        $t9, $t8, 2
/* 1DE870 801EDB00 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 1DE874 801EDB04 00390821 */  addu       $at, $at, $t9
/* 1DE878 801EDB08 240F0008 */  addiu      $t7, $zero, 0x8
/* 1DE87C 801EDB0C 3C08801F */  lui        $t0, %hi(func_801F40C8_ovl9 + 0x80)
/* 1DE880 801EDB10 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 1DE884 801EDB14 25084148 */  addiu      $t0, $t0, %lo(func_801F40C8_ovl9 + 0x80)
/* 1DE888 801EDB18 3C040001 */  lui        $a0, (0x10272 >> 16)
/* 1DE88C 801EDB1C 34840272 */  ori        $a0, $a0, (0x10272 & 0xFFFF)
/* 1DE890 801EDB20 0C02A806 */  jal        func_800AA018
/* 1DE894 801EDB24 ACA80098 */   sw        $t0, 0x98($a1)
/* 1DE898 801EDB28 3C040001 */  lui        $a0, (0x10273 >> 16)
/* 1DE89C 801EDB2C 0C02A806 */  jal        func_800AA018
/* 1DE8A0 801EDB30 34840273 */   ori       $a0, $a0, (0x10273 & 0xFFFF)
/* 1DE8A4 801EDB34 0C02CD48 */  jal        func_800B3520
/* 1DE8A8 801EDB38 00000000 */   nop
/* 1DE8AC 801EDB3C 0C02BC9F */  jal        func_800AF27C
/* 1DE8B0 801EDB40 00000000 */   nop
/* 1DE8B4 801EDB44 3C040001 */  lui        $a0, (0x1026A >> 16)
/* 1DE8B8 801EDB48 0C02A806 */  jal        func_800AA018
/* 1DE8BC 801EDB4C 3484026A */   ori       $a0, $a0, (0x1026A & 0xFFFF)
/* 1DE8C0 801EDB50 3C040001 */  lui        $a0, (0x1026B >> 16)
/* 1DE8C4 801EDB54 0C02A806 */  jal        func_800AA018
/* 1DE8C8 801EDB58 3484026B */   ori       $a0, $a0, (0x1026B & 0xFFFF)
/* 1DE8CC 801EDB5C 8E020000 */  lw         $v0, 0x0($s0)
/* 1DE8D0 801EDB60 3C11800E */  lui        $s1, %hi(D_800E6A10)
.L801EDB64_ovl16:
/* 1DE8D4 801EDB64 26316A10 */  addiu      $s1, $s1, %lo(D_800E6A10)
/* 1DE8D8 801EDB68 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE8DC 801EDB6C 3C014020 */  lui        $at, (0x40200000 >> 16)
/* 1DE8E0 801EDB70 44813000 */  mtc1       $at, $f6
/* 1DE8E4 801EDB74 00031880 */  sll        $v1, $v1, 2
/* 1DE8E8 801EDB78 02234821 */  addu       $t1, $s1, $v1
/* 1DE8EC 801EDB7C C5240000 */  lwc1       $f4, 0x0($t1)
.L801EDB80_ovl16:
/* 1DE8F0 801EDB80 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1DE8F4 801EDB84 00230821 */  addu       $at, $at, $v1
/* 1DE8F8 801EDB88 46062202 */  mul.s      $f8, $f4, $f6
/* 1DE8FC 801EDB8C 44803000 */  mtc1       $zero, $f6
.L801EDB90_ovl16:
/* 1DE900 801EDB90 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 1DE904 801EDB94 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 1DE908 801EDB98 240401ED */  addiu      $a0, $zero, 0x1ED
/* 1DE90C 801EDB9C E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1DE910 801EDBA0 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE914 801EDBA4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801EDBA8_ovl16:
/* 1DE918 801EDBA8 44818000 */  mtc1       $at, $f16
.L801EDBAC_ovl16:
/* 1DE91C 801EDBAC 00031880 */  sll        $v1, $v1, 2
/* 1DE920 801EDBB0 02235021 */  addu       $t2, $s1, $v1
/* 1DE924 801EDBB4 C54A0000 */  lwc1       $f10, 0x0($t2)
/* 1DE928 801EDBB8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1DE92C 801EDBBC 00230821 */  addu       $at, $at, $v1
/* 1DE930 801EDBC0 46105482 */  mul.s      $f18, $f10, $f16
/* 1DE934 801EDBC4 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
/* 1DE938 801EDBC8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1DE93C 801EDBCC 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1DE940 801EDBD0 44812000 */  mtc1       $at, $f4
/* 1DE944 801EDBD4 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1DE948 801EDBD8 000B6080 */  sll        $t4, $t3, 2
/* 1DE94C 801EDBDC 002C0821 */  addu       $at, $at, $t4
/* 1DE950 801EDBE0 E4246850 */  swc1       $f4, %lo(D_800E6850)($at)
/* 1DE954 801EDBE4 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1DE958 801EDBE8 3C01800E */  lui        $at, %hi(D_800E3210)
glabel func_801EDBEC_ovl9
/* 1DE95C 801EDBEC 000D7080 */  sll        $t6, $t5, 2
/* 1DE960 801EDBF0 00AEC021 */  addu       $t8, $a1, $t6
/* 1DE964 801EDBF4 E7060000 */  swc1       $f6, 0x0($t8)
/* 1DE968 801EDBF8 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE96C 801EDBFC 00031880 */  sll        $v1, $v1, 2
/* 1DE970 801EDC00 00A37821 */  addu       $t7, $a1, $v1
/* 1DE974 801EDC04 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 1DE978 801EDC08 00230821 */  addu       $at, $at, $v1
/* 1DE97C 801EDC0C E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 1DE980 801EDC10 8C590000 */  lw         $t9, 0x0($v0)
/* 1DE984 801EDC14 3C01801F */  lui        $at, %hi(func_801F4BBC_ovl10 + 0x14)
/* 1DE988 801EDC18 C42A4BD0 */  lwc1       $f10, %lo(func_801F4BBC_ovl10 + 0x14)($at)
/* 1DE98C 801EDC1C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1DE990 801EDC20 00194080 */  sll        $t0, $t9, 2
/* 1DE994 801EDC24 00280821 */  addu       $at, $at, $t0
/* 1DE998 801EDC28 0C029D9E */  jal        play_sound
/* 1DE99C 801EDC2C E42A3C90 */   swc1      $f10, %lo(D_800E3C90)($at)
/* 1DE9A0 801EDC30 8E020000 */  lw         $v0, 0x0($s0)
/* 1DE9A4 801EDC34 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1DE9A8 801EDC38 24090002 */  addiu      $t1, $zero, 0x2
/* 1DE9AC 801EDC3C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1DE9B0 801EDC40 3C10800E */  lui        $s0, %hi(gEntitiesNextPosXArray)
.L801EDC44_ovl16:
/* 1DE9B4 801EDC44 261025D0 */  addiu      $s0, $s0, %lo(gEntitiesNextPosXArray)
/* 1DE9B8 801EDC48 000A5880 */  sll        $t3, $t2, 2
/* 1DE9BC 801EDC4C 002B0821 */  addu       $at, $at, $t3
/* 1DE9C0 801EDC50 AC299AA0 */  sw         $t1, %lo(D_800E9AA0)($at)
/* 1DE9C4 801EDC54 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* 1DE9C8 801EDC58 4481D000 */  mtc1       $at, $f26
/* 1DE9CC 801EDC5C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
.L801EDC60_ovl16:
/* 1DE9D0 801EDC60 4481C000 */  mtc1       $at, $f24
/* 1DE9D4 801EDC64 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 1DE9D8 801EDC68 4481B000 */  mtc1       $at, $f22
/* 1DE9DC 801EDC6C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801EDC70_ovl16:
/* 1DE9E0 801EDC70 4481A000 */  mtc1       $at, $f20
/* 1DE9E4 801EDC74 00000000 */  nop
.L801EDC78_ovl10:
/* 1DE9E8 801EDC78 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE9EC 801EDC7C 00031880 */  sll        $v1, $v1, 2
/* 1DE9F0 801EDC80 02236021 */  addu       $t4, $s1, $v1
/* 1DE9F4 801EDC84 C5800000 */  lwc1       $f0, 0x0($t4)
.L801EDC88_ovl16:
/* 1DE9F8 801EDC88 02036821 */  addu       $t5, $s0, $v1
.L801EDC8C_ovl16:
/* 1DE9FC 801EDC8C 4600A032 */  c.eq.s     $f20, $f0
/* 1DEA00 801EDC90 00000000 */  nop
/* 1DEA04 801EDC94 45020007 */  bc1fl      .L801EDCB4_ovl10
/* 1DEA08 801EDC98 4600C032 */   c.eq.s    $f24, $f0
/* 1DEA0C 801EDC9C C5B00000 */  lwc1       $f16, 0x0($t5)
/* 1DEA10 801EDCA0 4610B03E */  c.le.s     $f22, $f16
/* 1DEA14 801EDCA4 00000000 */  nop
/* 1DEA18 801EDCA8 45030010 */  bc1tl      .L801EDCEC_ovl10
/* 1DEA1C 801EDCAC 8FBF003C */   lw        $ra, 0x3C($sp)
/* 1DEA20 801EDCB0 4600C032 */  c.eq.s     $f24, $f0
.L801EDCB4_ovl10:
/* 1DEA24 801EDCB4 02037021 */  addu       $t6, $s0, $v1
/* 1DEA28 801EDCB8 45000006 */  bc1f       .L801EDCD4_ovl10
/* 1DEA2C 801EDCBC 00000000 */   nop
.L801EDCC0_ovl16:
/* 1DEA30 801EDCC0 C5D20000 */  lwc1       $f18, 0x0($t6)
/* 1DEA34 801EDCC4 461A903E */  c.le.s     $f18, $f26
/* 1DEA38 801EDCC8 00000000 */  nop
/* 1DEA3C 801EDCCC 45030007 */  bc1tl      .L801EDCEC_ovl10
/* 1DEA40 801EDCD0 8FBF003C */   lw        $ra, 0x3C($sp)
.L801EDCD4_ovl10:
/* 1DEA44 801EDCD4 0C002DAF */  jal        finish_current_thread
/* 1DEA48 801EDCD8 24040001 */   addiu     $a0, $zero, 0x1
/* 1DEA4C 801EDCDC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1DEA50 801EDCE0 1000FFE5 */  b          .L801EDC78_ovl10
.L801EDCE4_ovl16:
/* 1DEA54 801EDCE4 8C42A7C4 */   lw        $v0, %lo(D_8004A7C4)($v0)
/* 1DEA58 801EDCE8 8FBF003C */  lw         $ra, 0x3C($sp)
.L801EDCEC_ovl10:
/* 1DEA5C 801EDCEC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1DEA60 801EDCF0 00230821 */  addu       $at, $at, $v1
/* 1DEA64 801EDCF4 2418000B */  addiu      $t8, $zero, 0xB
/* 1DEA68 801EDCF8 D7B40010 */  ldc1       $f20, 0x10($sp)
.L801EDCFC_ovl16:
/* 1DEA6C 801EDCFC D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1DEA70 801EDD00 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 1DEA74 801EDD04 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 1DEA78 801EDD08 8FB00034 */  lw         $s0, 0x34($sp)
/* 1DEA7C 801EDD0C 8FB10038 */  lw         $s1, 0x38($sp)
/* 1DEA80 801EDD10 AC38DC50 */  sw         $t8, %lo(gEntityVtableIndexArray)($at)
/* 1DEA84 801EDD14 03E00008 */  jr         $ra
/* 1DEA88 801EDD18 27BD0040 */   addiu     $sp, $sp, 0x40
