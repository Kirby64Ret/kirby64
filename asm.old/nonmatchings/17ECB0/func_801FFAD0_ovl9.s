glabel func_801FFAD0_ovl9
/* 1ADB20 801FFAD0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1ADB24 801FFAD4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1ADB28 801FFAD8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1ADB2C 801FFADC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1ADB30 801FFAE0 AFA40030 */  sw         $a0, 0x30($sp)
/* 1ADB34 801FFAE4 8DC30000 */  lw         $v1, 0x0($t6)
/* 1ADB38 801FFAE8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1ADB3C 801FFAEC 44802000 */  mtc1       $zero, $f4
/* 1ADB40 801FFAF0 00031880 */  sll        $v1, $v1, 2
/* 1ADB44 801FFAF4 00230821 */  addu       $at, $at, $v1
/* 1ADB48 801FFAF8 C4266690 */  lwc1       $f6, %lo(D_800E6690)($at)
/* 1ADB4C 801FFAFC 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 1ADB50 801FFB00 01E37821 */  addu       $t7, $t7, $v1
/* 1ADB54 801FFB04 46062032 */  c.eq.s     $f4, $f6
/* 1ADB58 801FFB08 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 1ADB5C 801FFB0C 45000014 */  bc1f       .L801FFB60_ovl9
/* 1ADB60 801FFB10 AFAF002C */   sw        $t7, 0x2C($sp)
/* 1ADB64 801FFB14 91F9003C */  lbu        $t9, 0x3C($t7)
/* 1ADB68 801FFB18 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 1ADB6C 801FFB1C 57200008 */  bnel       $t9, $zero, .L801FFB40_ovl9
/* 1ADB70 801FFB20 44810000 */   mtc1      $at, $f0
/* 1ADB74 801FFB24 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
/* 1ADB78 801FFB28 44816000 */  mtc1       $at, $f12
/* 1ADB7C 801FFB2C 0C0671C7 */  jal        func_8019C71C_ovl7
/* 1ADB80 801FFB30 00000000 */   nop
/* 1ADB84 801FFB34 1000000D */  b          .L801FFB6C_ovl9
/* 1ADB88 801FFB38 8FA8002C */   lw        $t0, 0x2C($sp)
/* 1ADB8C 801FFB3C 44810000 */  mtc1       $at, $f0
.L801FFB40_ovl9:
/* 1ADB90 801FFB40 44804000 */  mtc1       $zero, $f8
/* 1ADB94 801FFB44 27A40020 */  addiu      $a0, $sp, 0x20
/* 1ADB98 801FFB48 E7A00020 */  swc1       $f0, 0x20($sp)
/* 1ADB9C 801FFB4C E7A00028 */  swc1       $f0, 0x28($sp)
/* 1ADBA0 801FFB50 0C067211 */  jal        func_8019C844_ovl7
/* 1ADBA4 801FFB54 E7A80024 */   swc1      $f8, 0x24($sp)
/* 1ADBA8 801FFB58 10000004 */  b          .L801FFB6C_ovl9
/* 1ADBAC 801FFB5C 8FA8002C */   lw        $t0, 0x2C($sp)
.L801FFB60_ovl9:
/* 1ADBB0 801FFB60 0C07FF18 */  jal        func_801FFC60_ovl9
/* 1ADBB4 801FFB64 00000000 */   nop
/* 1ADBB8 801FFB68 8FA8002C */  lw         $t0, 0x2C($sp)
.L801FFB6C_ovl9:
/* 1ADBBC 801FFB6C 3C014370 */  lui        $at, (0x43700000 >> 16)
/* 1ADBC0 801FFB70 9109003C */  lbu        $t1, 0x3C($t0)
/* 1ADBC4 801FFB74 55200037 */  bnel       $t1, $zero, .L801FFC54_ovl9
/* 1ADBC8 801FFB78 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ADBCC 801FFB7C 44816000 */  mtc1       $at, $f12
/* 1ADBD0 801FFB80 3C014420 */  lui        $at, (0x44200000 >> 16)
/* 1ADBD4 801FFB84 44817000 */  mtc1       $at, $f14
/* 1ADBD8 801FFB88 0C066A6B */  jal        func_8019A9AC_ovl7
/* 1ADBDC 801FFB8C 00000000 */   nop
/* 1ADBE0 801FFB90 24010003 */  addiu      $at, $zero, 0x3
/* 1ADBE4 801FFB94 5441002F */  bnel       $v0, $at, .L801FFC54_ovl9
/* 1ADBE8 801FFB98 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ADBEC 801FFB9C 0C066D09 */  jal        func_8019B424_ovl7
/* 1ADBF0 801FFBA0 8FA40030 */   lw        $a0, 0x30($sp)
/* 1ADBF4 801FFBA4 8FAA002C */  lw         $t2, 0x2C($sp)
/* 1ADBF8 801FFBA8 914B003C */  lbu        $t3, 0x3C($t2)
/* 1ADBFC 801FFBAC 11600003 */  beqz       $t3, .L801FFBBC_ovl9
/* 1ADC00 801FFBB0 00000000 */   nop
/* 1ADC04 801FFBB4 0C0671AB */  jal        func_8019C6AC_ovl7
/* 1ADC08 801FFBB8 8FA40030 */   lw        $a0, 0x30($sp)
.L801FFBBC_ovl9:
/* 1ADC0C 801FFBBC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1ADC10 801FFBC0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1ADC14 801FFBC4 44805000 */  mtc1       $zero, $f10
/* 1ADC18 801FFBC8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1ADC1C 801FFBCC 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1ADC20 801FFBD0 24180001 */  addiu      $t8, $zero, 0x1
/* 1ADC24 801FFBD4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1ADC28 801FFBD8 000C6880 */  sll        $t5, $t4, 2
/* 1ADC2C 801FFBDC 002D0821 */  addu       $at, $at, $t5
/* 1ADC30 801FFBE0 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
/* 1ADC34 801FFBE4 8C430000 */  lw         $v1, 0x0($v0)
/* 1ADC38 801FFBE8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1ADC3C 801FFBEC 3C058020 */  lui        $a1, %hi(func_801FF860_ovl9)
/* 1ADC40 801FFBF0 00031880 */  sll        $v1, $v1, 2
/* 1ADC44 801FFBF4 00230821 */  addu       $at, $at, $v1
/* 1ADC48 801FFBF8 C4306690 */  lwc1       $f16, %lo(D_800E6690)($at)
/* 1ADC4C 801FFBFC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1ADC50 801FFC00 00230821 */  addu       $at, $at, $v1
/* 1ADC54 801FFC04 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* 1ADC58 801FFC08 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1ADC5C 801FFC0C 3C018022 */  lui        $at, %hi(D_8021D9E0_ovl9)
/* 1ADC60 801FFC10 C432D9E0 */  lwc1       $f18, %lo(D_8021D9E0_ovl9)($at)
/* 1ADC64 801FFC14 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1ADC68 801FFC18 000E7880 */  sll        $t7, $t6, 2
/* 1ADC6C 801FFC1C 002F0821 */  addu       $at, $at, $t7
/* 1ADC70 801FFC20 E4326850 */  swc1       $f18, %lo(D_800E6850)($at)
/* 1ADC74 801FFC24 8C590000 */  lw         $t9, 0x0($v0)
/* 1ADC78 801FFC28 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1ADC7C 801FFC2C 24A5F860 */  addiu      $a1, $a1, %lo(func_801FF860_ovl9)
/* 1ADC80 801FFC30 00194080 */  sll        $t0, $t9, 2
/* 1ADC84 801FFC34 00280821 */  addu       $at, $at, $t0
/* 1ADC88 801FFC38 AC38DC50 */  sw         $t8, %lo(gEntityVtableIndexArray)($at)
/* 1ADC8C 801FFC3C 8C490000 */  lw         $t1, 0x0($v0)
/* 1ADC90 801FFC40 00095080 */  sll        $t2, $t1, 2
/* 1ADC94 801FFC44 008A2021 */  addu       $a0, $a0, $t2
/* 1ADC98 801FFC48 0C02C7B2 */  jal        assign_new_process_entry
/* 1ADC9C 801FFC4C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1ADCA0 801FFC50 8FBF0014 */  lw         $ra, 0x14($sp)
.L801FFC54_ovl9:
/* 1ADCA4 801FFC54 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1ADCA8 801FFC58 03E00008 */  jr         $ra
/* 1ADCAC 801FFC5C 00000000 */   nop
