glabel func_801DFABC_ovl17
/* 22ACAC 801DFABC 3C0E800D */  lui        $t6, %hi(D_800D7098)
.L801DFAC0_ovl10:
/* 22ACB0 801DFAC0 8DCE7098 */  lw         $t6, %lo(D_800D7098)($t6)
/* 22ACB4 801DFAC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22ACB8 801DFAC8 24010002 */  addiu      $at, $zero, 0x2
glabel func_801DFACC_ovl11
/* 22ACBC 801DFACC 11C102EF */  beq        $t6, $at, .L801E068C_ovl17
/* 22ACC0 801DFAD0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 22ACC4 801DFAD4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801DFAD8_ovl9:
/* 22ACC8 801DFAD8 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 22ACCC 801DFADC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 22ACD0 801DFAE0 3C09800F */  lui        $t1, %hi(D_800E9C60)
/* 22ACD4 801DFAE4 25299C60 */  addiu      $t1, $t1, %lo(D_800E9C60)
.L801DFAE8_ovl12:
/* 22ACD8 801DFAE8 8DE40000 */  lw         $a0, 0x0($t7)
.L801DFAEC_ovl12:
/* 22ACDC 801DFAEC 24070001 */  addiu      $a3, $zero, 0x1
/* 22ACE0 801DFAF0 00042080 */  sll        $a0, $a0, 2
/* 22ACE4 801DFAF4 0124C021 */  addu       $t8, $t1, $a0
/* 22ACE8 801DFAF8 8F020000 */  lw         $v0, 0x0($t8)
/* 22ACEC 801DFAFC 14E2005C */  bne        $a3, $v0, .L801DFC70_ovl17
glabel func_801DFB00_ovl14
/* 22ACF0 801DFB00 00000000 */   nop
/* 22ACF4 801DFB04 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 22ACF8 801DFB08 2442FBD0 */  addiu      $v0, $v0, %lo(D_800DFBD0)
/* 22ACFC 801DFB0C 0044C821 */  addu       $t9, $v0, $a0
.L801DFB10_ovl13:
/* 22AD00 801DFB10 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22AD04 801DFB14 3C01801E */  lui        $at, %hi(D_801E5654_ovl17)
/* 22AD08 801DFB18 C4205654 */  lwc1       $f0, %lo(D_801E5654_ovl17)($at)
/* 22AD0C 801DFB1C 8D8D0014 */  lw         $t5, 0x14($t4)
/* 22AD10 801DFB20 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
.L801DFB24_ovl12:
/* 22AD14 801DFB24 44811000 */  mtc1       $at, $f2
glabel func_801DFB28_ovl9
/* 22AD18 801DFB28 E5A00044 */  swc1       $f0, 0x44($t5)
/* 22AD1C 801DFB2C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22AD20 801DFB30 8DCF0000 */  lw         $t7, 0x0($t6)
glabel func_801DFB34_ovl12
/* 22AD24 801DFB34 000FC080 */  sll        $t8, $t7, 2
/* 22AD28 801DFB38 0058C821 */  addu       $t9, $v0, $t8
/* 22AD2C 801DFB3C 8F2C0000 */  lw         $t4, 0x0($t9)
.L801DFB40_ovl15:
/* 22AD30 801DFB40 8D8D0014 */  lw         $t5, 0x14($t4)
glabel func_801DFB44_ovl11
/* 22AD34 801DFB44 E5A00048 */  swc1       $f0, 0x48($t5)
glabel func_801DFB48_ovl14
/* 22AD38 801DFB48 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22AD3C 801DFB4C 8DCF0000 */  lw         $t7, 0x0($t6)
glabel func_801DFB50_ovl9
/* 22AD40 801DFB50 000FC080 */  sll        $t8, $t7, 2
/* 22AD44 801DFB54 0058C821 */  addu       $t9, $v0, $t8
/* 22AD48 801DFB58 8F2C0000 */  lw         $t4, 0x0($t9)
.L801DFB5C_ovl13:
/* 22AD4C 801DFB5C 8D8D0018 */  lw         $t5, 0x18($t4)
.L801DFB60_ovl13:
/* 22AD50 801DFB60 E5A00044 */  swc1       $f0, 0x44($t5)
/* 22AD54 801DFB64 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22AD58 801DFB68 8DCF0000 */  lw         $t7, 0x0($t6)
/* 22AD5C 801DFB6C 000FC080 */  sll        $t8, $t7, 2
/* 22AD60 801DFB70 0058C821 */  addu       $t9, $v0, $t8
/* 22AD64 801DFB74 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22AD68 801DFB78 8D8D0018 */  lw         $t5, 0x18($t4)
.L801DFB7C_ovl15:
/* 22AD6C 801DFB7C E5A00048 */  swc1       $f0, 0x48($t5)
/* 22AD70 801DFB80 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22AD74 801DFB84 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DFB88_ovl15:
/* 22AD78 801DFB88 000FC080 */  sll        $t8, $t7, 2
.L801DFB8C_ovl13:
/* 22AD7C 801DFB8C 0058C821 */  addu       $t9, $v0, $t8
.L801DFB90_ovl16:
/* 22AD80 801DFB90 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22AD84 801DFB94 8D8D0020 */  lw         $t5, 0x20($t4)
/* 22AD88 801DFB98 E5A00044 */  swc1       $f0, 0x44($t5)
/* 22AD8C 801DFB9C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22AD90 801DFBA0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 22AD94 801DFBA4 000FC080 */  sll        $t8, $t7, 2
/* 22AD98 801DFBA8 0058C821 */  addu       $t9, $v0, $t8
/* 22AD9C 801DFBAC 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22ADA0 801DFBB0 8D8D0020 */  lw         $t5, 0x20($t4)
/* 22ADA4 801DFBB4 E5A00048 */  swc1       $f0, 0x48($t5)
.L801DFBB8_ovl13:
/* 22ADA8 801DFBB8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22ADAC 801DFBBC 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DFBC0_ovl16:
/* 22ADB0 801DFBC0 000FC080 */  sll        $t8, $t7, 2
/* 22ADB4 801DFBC4 0058C821 */  addu       $t9, $v0, $t8
/* 22ADB8 801DFBC8 8F2C0000 */  lw         $t4, 0x0($t9)
.L801DFBCC_ovl14:
/* 22ADBC 801DFBCC 8D8D0024 */  lw         $t5, 0x24($t4)
/* 22ADC0 801DFBD0 E5A00044 */  swc1       $f0, 0x44($t5)
.L801DFBD4_ovl13:
/* 22ADC4 801DFBD4 8C6E0000 */  lw         $t6, 0x0($v1)
.L801DFBD8_ovl16:
/* 22ADC8 801DFBD8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 22ADCC 801DFBDC 000FC080 */  sll        $t8, $t7, 2
/* 22ADD0 801DFBE0 0058C821 */  addu       $t9, $v0, $t8
/* 22ADD4 801DFBE4 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22ADD8 801DFBE8 8D8D0024 */  lw         $t5, 0x24($t4)
glabel func_801DFBEC_ovl12
/* 22ADDC 801DFBEC E5A00048 */  swc1       $f0, 0x48($t5)
/* 22ADE0 801DFBF0 8C6E0000 */  lw         $t6, 0x0($v1)
.L801DFBF4_ovl15:
/* 22ADE4 801DFBF4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 22ADE8 801DFBF8 000FC080 */  sll        $t8, $t7, 2
glabel func_801DFBFC_ovl10
/* 22ADEC 801DFBFC 0058C821 */  addu       $t9, $v0, $t8
/* 22ADF0 801DFC00 8F2C0000 */  lw         $t4, 0x0($t9)
.L801DFC04_ovl14:
/* 22ADF4 801DFC04 8D8D002C */  lw         $t5, 0x2C($t4)
.L801DFC08_ovl16:
/* 22ADF8 801DFC08 E5A00044 */  swc1       $f0, 0x44($t5)
.L801DFC0C_ovl13:
/* 22ADFC 801DFC0C 8C6E0000 */  lw         $t6, 0x0($v1)
glabel func_801DFC10_ovl15
/* 22AE00 801DFC10 8DCF0000 */  lw         $t7, 0x0($t6)
/* 22AE04 801DFC14 000FC080 */  sll        $t8, $t7, 2
/* 22AE08 801DFC18 0058C821 */  addu       $t9, $v0, $t8
/* 22AE0C 801DFC1C 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22AE10 801DFC20 8D8D002C */  lw         $t5, 0x2C($t4)
/* 22AE14 801DFC24 E5A00048 */  swc1       $f0, 0x48($t5)
glabel func_801DFC28_ovl14
/* 22AE18 801DFC28 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22AE1C 801DFC2C 8DCF0000 */  lw         $t7, 0x0($t6)
glabel func_801DFC30_ovl14
/* 22AE20 801DFC30 000FC080 */  sll        $t8, $t7, 2
/* 22AE24 801DFC34 0058C821 */  addu       $t9, $v0, $t8
/* 22AE28 801DFC38 8F2C0000 */  lw         $t4, 0x0($t9)
.L801DFC3C_ovl13:
/* 22AE2C 801DFC3C 8D8D0030 */  lw         $t5, 0x30($t4)
/* 22AE30 801DFC40 E5A00044 */  swc1       $f0, 0x44($t5)
/* 22AE34 801DFC44 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22AE38 801DFC48 8DCF0000 */  lw         $t7, 0x0($t6)
glabel func_801DFC4C_ovl16
/* 22AE3C 801DFC4C 000FC080 */  sll        $t8, $t7, 2
/* 22AE40 801DFC50 0058C821 */  addu       $t9, $v0, $t8
/* 22AE44 801DFC54 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22AE48 801DFC58 8D8D0030 */  lw         $t5, 0x30($t4)
/* 22AE4C 801DFC5C E5A00048 */  swc1       $f0, 0x48($t5)
/* 22AE50 801DFC60 8C6E0000 */  lw         $t6, 0x0($v1)
glabel func_801DFC64_ovl12
/* 22AE54 801DFC64 8DC40000 */  lw         $a0, 0x0($t6)
/* 22AE58 801DFC68 100000C2 */  b          .L801DFF74_ovl17
/* 22AE5C 801DFC6C 00042080 */   sll       $a0, $a0, 2
.L801DFC70_ovl17:
/* 22AE60 801DFC70 1440005B */  bnez       $v0, .L801DFDE0_ovl17
/* 22AE64 801DFC74 3C02800E */   lui       $v0, %hi(D_800DFBD0)
/* 22AE68 801DFC78 2442FBD0 */  addiu      $v0, $v0, %lo(D_800DFBD0)
/* 22AE6C 801DFC7C 00447821 */  addu       $t7, $v0, $a0
/* 22AE70 801DFC80 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AE74 801DFC84 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 22AE78 801DFC88 44817000 */  mtc1       $at, $f14
.L801DFC8C_ovl10:
/* 22AE7C 801DFC8C 8F190014 */  lw         $t9, 0x14($t8)
/* 22AE80 801DFC90 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* 22AE84 801DFC94 44811000 */  mtc1       $at, $f2
/* 22AE88 801DFC98 E72E0044 */  swc1       $f14, 0x44($t9)
/* 22AE8C 801DFC9C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AE90 801DFCA0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 22AE94 801DFCA4 000D7080 */  sll        $t6, $t5, 2
/* 22AE98 801DFCA8 004E7821 */  addu       $t7, $v0, $t6
/* 22AE9C 801DFCAC 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AEA0 801DFCB0 8F190014 */  lw         $t9, 0x14($t8)
/* 22AEA4 801DFCB4 E72E0048 */  swc1       $f14, 0x48($t9)
.L801DFCB8_ovl9:
/* 22AEA8 801DFCB8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AEAC 801DFCBC 8D8D0000 */  lw         $t5, 0x0($t4)
glabel func_801DFCC0_ovl10
/* 22AEB0 801DFCC0 000D7080 */  sll        $t6, $t5, 2
/* 22AEB4 801DFCC4 004E7821 */  addu       $t7, $v0, $t6
/* 22AEB8 801DFCC8 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AEBC 801DFCCC 8F190018 */  lw         $t9, 0x18($t8)
.L801DFCD0_ovl13:
/* 22AEC0 801DFCD0 E72E0044 */  swc1       $f14, 0x44($t9)
/* 22AEC4 801DFCD4 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AEC8 801DFCD8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 22AECC 801DFCDC 000D7080 */  sll        $t6, $t5, 2
/* 22AED0 801DFCE0 004E7821 */  addu       $t7, $v0, $t6
.L801DFCE4_ovl16:
/* 22AED4 801DFCE4 8DF80000 */  lw         $t8, 0x0($t7)
.L801DFCE8_ovl15:
/* 22AED8 801DFCE8 8F190018 */  lw         $t9, 0x18($t8)
/* 22AEDC 801DFCEC E72E0048 */  swc1       $f14, 0x48($t9)
/* 22AEE0 801DFCF0 8C6C0000 */  lw         $t4, 0x0($v1)
glabel func_801DFCF4_ovl15
/* 22AEE4 801DFCF4 8D8D0000 */  lw         $t5, 0x0($t4)
.L801DFCF8_ovl16:
/* 22AEE8 801DFCF8 000D7080 */  sll        $t6, $t5, 2
/* 22AEEC 801DFCFC 004E7821 */  addu       $t7, $v0, $t6
/* 22AEF0 801DFD00 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AEF4 801DFD04 8F190020 */  lw         $t9, 0x20($t8)
/* 22AEF8 801DFD08 E72E0044 */  swc1       $f14, 0x44($t9)
/* 22AEFC 801DFD0C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AF00 801DFD10 8D8D0000 */  lw         $t5, 0x0($t4)
/* 22AF04 801DFD14 000D7080 */  sll        $t6, $t5, 2
/* 22AF08 801DFD18 004E7821 */  addu       $t7, $v0, $t6
/* 22AF0C 801DFD1C 8DF80000 */  lw         $t8, 0x0($t7)
.L801DFD20_ovl9:
/* 22AF10 801DFD20 8F190020 */  lw         $t9, 0x20($t8)
/* 22AF14 801DFD24 E72E0048 */  swc1       $f14, 0x48($t9)
/* 22AF18 801DFD28 8C6C0000 */  lw         $t4, 0x0($v1)
.L801DFD2C_ovl9:
/* 22AF1C 801DFD2C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 22AF20 801DFD30 000D7080 */  sll        $t6, $t5, 2
.L801DFD34_ovl12:
/* 22AF24 801DFD34 004E7821 */  addu       $t7, $v0, $t6
/* 22AF28 801DFD38 8DF80000 */  lw         $t8, 0x0($t7)
glabel func_801DFD3C_ovl11
/* 22AF2C 801DFD3C 8F190024 */  lw         $t9, 0x24($t8)
/* 22AF30 801DFD40 E72E0044 */  swc1       $f14, 0x44($t9)
.L801DFD44_ovl10:
/* 22AF34 801DFD44 8C6C0000 */  lw         $t4, 0x0($v1)
glabel func_801DFD48_ovl16
/* 22AF38 801DFD48 8D8D0000 */  lw         $t5, 0x0($t4)
/* 22AF3C 801DFD4C 000D7080 */  sll        $t6, $t5, 2
/* 22AF40 801DFD50 004E7821 */  addu       $t7, $v0, $t6
/* 22AF44 801DFD54 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AF48 801DFD58 8F190024 */  lw         $t9, 0x24($t8)
/* 22AF4C 801DFD5C E72E0048 */  swc1       $f14, 0x48($t9)
/* 22AF50 801DFD60 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AF54 801DFD64 8D8D0000 */  lw         $t5, 0x0($t4)
.L801DFD68_ovl9:
/* 22AF58 801DFD68 000D7080 */  sll        $t6, $t5, 2
/* 22AF5C 801DFD6C 004E7821 */  addu       $t7, $v0, $t6
/* 22AF60 801DFD70 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AF64 801DFD74 8F19002C */  lw         $t9, 0x2C($t8)
.L801DFD78_ovl10:
/* 22AF68 801DFD78 E72E0044 */  swc1       $f14, 0x44($t9)
glabel func_801DFD7C_ovl14
/* 22AF6C 801DFD7C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AF70 801DFD80 8D8D0000 */  lw         $t5, 0x0($t4)
/* 22AF74 801DFD84 000D7080 */  sll        $t6, $t5, 2
/* 22AF78 801DFD88 004E7821 */  addu       $t7, $v0, $t6
/* 22AF7C 801DFD8C 8DF80000 */  lw         $t8, 0x0($t7)
glabel func_801DFD90_ovl14
/* 22AF80 801DFD90 8F19002C */  lw         $t9, 0x2C($t8)
/* 22AF84 801DFD94 E72E0048 */  swc1       $f14, 0x48($t9)
/* 22AF88 801DFD98 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AF8C 801DFD9C 8D8D0000 */  lw         $t5, 0x0($t4)
.L801DFDA0_ovl9:
/* 22AF90 801DFDA0 000D7080 */  sll        $t6, $t5, 2
/* 22AF94 801DFDA4 004E7821 */  addu       $t7, $v0, $t6
.L801DFDA8_ovl12:
/* 22AF98 801DFDA8 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AF9C 801DFDAC 8F190030 */  lw         $t9, 0x30($t8)
.L801DFDB0_ovl16:
/* 22AFA0 801DFDB0 E72E0044 */  swc1       $f14, 0x44($t9)
/* 22AFA4 801DFDB4 8C6C0000 */  lw         $t4, 0x0($v1)
.L801DFDB8_ovl12:
/* 22AFA8 801DFDB8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 22AFAC 801DFDBC 000D7080 */  sll        $t6, $t5, 2
/* 22AFB0 801DFDC0 004E7821 */  addu       $t7, $v0, $t6
.L801DFDC4_ovl15:
/* 22AFB4 801DFDC4 8DF80000 */  lw         $t8, 0x0($t7)
/* 22AFB8 801DFDC8 8F190030 */  lw         $t9, 0x30($t8)
glabel func_801DFDCC_ovl16
/* 22AFBC 801DFDCC E72E0048 */  swc1       $f14, 0x48($t9)
/* 22AFC0 801DFDD0 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22AFC4 801DFDD4 8D840000 */  lw         $a0, 0x0($t4)
/* 22AFC8 801DFDD8 10000066 */  b          .L801DFF74_ovl17
/* 22AFCC 801DFDDC 00042080 */   sll       $a0, $a0, 2
.L801DFDE0_ovl17:
/* 22AFD0 801DFDE0 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 22AFD4 801DFDE4 2442FBD0 */  addiu      $v0, $v0, %lo(D_800DFBD0)
/* 22AFD8 801DFDE8 00446821 */  addu       $t5, $v0, $a0
/* 22AFDC 801DFDEC 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22AFE0 801DFDF0 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* 22AFE4 801DFDF4 44811000 */  mtc1       $at, $f2
/* 22AFE8 801DFDF8 8DCF0014 */  lw         $t7, 0x14($t6)
.L801DFDFC_ovl10:
/* 22AFEC 801DFDFC E5E20044 */  swc1       $f2, 0x44($t7)
glabel func_801DFE00_ovl9
/* 22AFF0 801DFE00 8C780000 */  lw         $t8, 0x0($v1)
/* 22AFF4 801DFE04 8F190000 */  lw         $t9, 0x0($t8)
.L801DFE08_ovl11:
/* 22AFF8 801DFE08 00196080 */  sll        $t4, $t9, 2
/* 22AFFC 801DFE0C 004C6821 */  addu       $t5, $v0, $t4
/* 22B000 801DFE10 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B004 801DFE14 8DCF0014 */  lw         $t7, 0x14($t6)
/* 22B008 801DFE18 E5E20048 */  swc1       $f2, 0x48($t7)
/* 22B00C 801DFE1C 8C780000 */  lw         $t8, 0x0($v1)
.L801DFE20_ovl10:
/* 22B010 801DFE20 8F190000 */  lw         $t9, 0x0($t8)
/* 22B014 801DFE24 00196080 */  sll        $t4, $t9, 2
.L801DFE28_ovl16:
/* 22B018 801DFE28 004C6821 */  addu       $t5, $v0, $t4
.L801DFE2C_ovl10:
/* 22B01C 801DFE2C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B020 801DFE30 8DCF0018 */  lw         $t7, 0x18($t6)
/* 22B024 801DFE34 E5E20044 */  swc1       $f2, 0x44($t7)
.L801DFE38_ovl10:
/* 22B028 801DFE38 8C780000 */  lw         $t8, 0x0($v1)
/* 22B02C 801DFE3C 8F190000 */  lw         $t9, 0x0($t8)
/* 22B030 801DFE40 00196080 */  sll        $t4, $t9, 2
glabel func_801DFE44_ovl16
/* 22B034 801DFE44 004C6821 */  addu       $t5, $v0, $t4
/* 22B038 801DFE48 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B03C 801DFE4C 8DCF0018 */  lw         $t7, 0x18($t6)
/* 22B040 801DFE50 E5E20048 */  swc1       $f2, 0x48($t7)
/* 22B044 801DFE54 8C780000 */  lw         $t8, 0x0($v1)
/* 22B048 801DFE58 8F190000 */  lw         $t9, 0x0($t8)
/* 22B04C 801DFE5C 00196080 */  sll        $t4, $t9, 2
/* 22B050 801DFE60 004C6821 */  addu       $t5, $v0, $t4
glabel func_801DFE64_ovl10
/* 22B054 801DFE64 8DAE0000 */  lw         $t6, 0x0($t5)
.L801DFE68_ovl9:
/* 22B058 801DFE68 8DCF0020 */  lw         $t7, 0x20($t6)
.L801DFE6C_ovl11:
/* 22B05C 801DFE6C E5E20044 */  swc1       $f2, 0x44($t7)
/* 22B060 801DFE70 8C780000 */  lw         $t8, 0x0($v1)
glabel func_801DFE74_ovl9
/* 22B064 801DFE74 8F190000 */  lw         $t9, 0x0($t8)
.L801DFE78_ovl12:
/* 22B068 801DFE78 00196080 */  sll        $t4, $t9, 2
.L801DFE7C_ovl12:
/* 22B06C 801DFE7C 004C6821 */  addu       $t5, $v0, $t4
/* 22B070 801DFE80 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B074 801DFE84 8DCF0020 */  lw         $t7, 0x20($t6)
/* 22B078 801DFE88 E5E20048 */  swc1       $f2, 0x48($t7)
glabel func_801DFE8C_ovl12
/* 22B07C 801DFE8C 8C780000 */  lw         $t8, 0x0($v1)
/* 22B080 801DFE90 8F190000 */  lw         $t9, 0x0($t8)
/* 22B084 801DFE94 00196080 */  sll        $t4, $t9, 2
/* 22B088 801DFE98 004C6821 */  addu       $t5, $v0, $t4
/* 22B08C 801DFE9C 8DAE0000 */  lw         $t6, 0x0($t5)
.L801DFEA0_ovl15:
/* 22B090 801DFEA0 8DCF0024 */  lw         $t7, 0x24($t6)
glabel func_801DFEA4_ovl14
/* 22B094 801DFEA4 E5E20044 */  swc1       $f2, 0x44($t7)
glabel func_801DFEA8_ovl11
/* 22B098 801DFEA8 8C780000 */  lw         $t8, 0x0($v1)
.L801DFEAC_ovl16:
/* 22B09C 801DFEAC 8F190000 */  lw         $t9, 0x0($t8)
/* 22B0A0 801DFEB0 00196080 */  sll        $t4, $t9, 2
/* 22B0A4 801DFEB4 004C6821 */  addu       $t5, $v0, $t4
/* 22B0A8 801DFEB8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B0AC 801DFEBC 8DCF0024 */  lw         $t7, 0x24($t6)
/* 22B0B0 801DFEC0 E5E20048 */  swc1       $f2, 0x48($t7)
/* 22B0B4 801DFEC4 8C780000 */  lw         $t8, 0x0($v1)
glabel func_801DFEC8_ovl16
/* 22B0B8 801DFEC8 8F190000 */  lw         $t9, 0x0($t8)
/* 22B0BC 801DFECC 00196080 */  sll        $t4, $t9, 2
.L801DFED0_ovl12:
/* 22B0C0 801DFED0 004C6821 */  addu       $t5, $v0, $t4
/* 22B0C4 801DFED4 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801DFED8_ovl12
/* 22B0C8 801DFED8 8DCF002C */  lw         $t7, 0x2C($t6)
/* 22B0CC 801DFEDC E5E20044 */  swc1       $f2, 0x44($t7)
/* 22B0D0 801DFEE0 8C780000 */  lw         $t8, 0x0($v1)
/* 22B0D4 801DFEE4 8F190000 */  lw         $t9, 0x0($t8)
/* 22B0D8 801DFEE8 00196080 */  sll        $t4, $t9, 2
/* 22B0DC 801DFEEC 004C6821 */  addu       $t5, $v0, $t4
/* 22B0E0 801DFEF0 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B0E4 801DFEF4 8DCF002C */  lw         $t7, 0x2C($t6)
/* 22B0E8 801DFEF8 E5E20048 */  swc1       $f2, 0x48($t7)
/* 22B0EC 801DFEFC 8C780000 */  lw         $t8, 0x0($v1)
/* 22B0F0 801DFF00 8F190000 */  lw         $t9, 0x0($t8)
/* 22B0F4 801DFF04 00196080 */  sll        $t4, $t9, 2
/* 22B0F8 801DFF08 004C6821 */  addu       $t5, $v0, $t4
/* 22B0FC 801DFF0C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B100 801DFF10 8DCF0030 */  lw         $t7, 0x30($t6)
glabel func_801DFF14_ovl15
/* 22B104 801DFF14 E5E20044 */  swc1       $f2, 0x44($t7)
/* 22B108 801DFF18 8C780000 */  lw         $t8, 0x0($v1)
/* 22B10C 801DFF1C 8F190000 */  lw         $t9, 0x0($t8)
/* 22B110 801DFF20 00196080 */  sll        $t4, $t9, 2
.L801DFF24_ovl16:
/* 22B114 801DFF24 004C6821 */  addu       $t5, $v0, $t4
/* 22B118 801DFF28 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B11C 801DFF2C 8DCF0030 */  lw         $t7, 0x30($t6)
/* 22B120 801DFF30 E5E20048 */  swc1       $f2, 0x48($t7)
/* 22B124 801DFF34 8C660000 */  lw         $a2, 0x0($v1)
/* 22B128 801DFF38 8CD80000 */  lw         $t8, 0x0($a2)
/* 22B12C 801DFF3C 0018C880 */  sll        $t9, $t8, 2
glabel func_801DFF40_ovl16
/* 22B130 801DFF40 01392821 */  addu       $a1, $t1, $t9
/* 22B134 801DFF44 8CAC0000 */  lw         $t4, 0x0($a1)
/* 22B138 801DFF48 258DFFFF */  addiu      $t5, $t4, -0x1
/* 22B13C 801DFF4C ACAD0000 */  sw         $t5, 0x0($a1)
/* 22B140 801DFF50 8CC40000 */  lw         $a0, 0x0($a2)
/* 22B144 801DFF54 00042080 */  sll        $a0, $a0, 2
/* 22B148 801DFF58 01242821 */  addu       $a1, $t1, $a0
/* 22B14C 801DFF5C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 22B150 801DFF60 14EE0004 */  bne        $a3, $t6, .L801DFF74_ovl17
.L801DFF64_ovl12:
/* 22B154 801DFF64 00000000 */   nop
/* 22B158 801DFF68 ACA00000 */  sw         $zero, 0x0($a1)
/* 22B15C 801DFF6C 8CC40000 */  lw         $a0, 0x0($a2)
/* 22B160 801DFF70 00042080 */  sll        $a0, $a0, 2
.L801DFF74_ovl17:
/* 22B164 801DFF74 3C08800F */  lui        $t0, %hi(D_800E9E20)
/* 22B168 801DFF78 25089E20 */  addiu      $t0, $t0, %lo(D_800E9E20)
/* 22B16C 801DFF7C 3C01801E */  lui        $at, %hi(D_801E5658_ovl17)
/* 22B170 801DFF80 01047821 */  addu       $t7, $t0, $a0
/* 22B174 801DFF84 8DE50000 */  lw         $a1, 0x0($t7)
glabel func_801DFF88_ovl10
/* 22B178 801DFF88 C4205658 */  lwc1       $f0, %lo(D_801E5658_ovl17)($at)
/* 22B17C 801DFF8C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 22B180 801DFF90 44817000 */  mtc1       $at, $f14
/* 22B184 801DFF94 14E50055 */  bne        $a3, $a1, .L801E00EC_ovl17
/* 22B188 801DFF98 0044C021 */   addu      $t8, $v0, $a0
/* 22B18C 801DFF9C 8F190000 */  lw         $t9, 0x0($t8)
/* 22B190 801DFFA0 8F2C0040 */  lw         $t4, 0x40($t9)
/* 22B194 801DFFA4 E5800044 */  swc1       $f0, 0x44($t4)
glabel func_801DFFA8_ovl12
/* 22B198 801DFFA8 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B19C 801DFFAC 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B1A0 801DFFB0 000E7880 */  sll        $t7, $t6, 2
/* 22B1A4 801DFFB4 004FC021 */  addu       $t8, $v0, $t7
/* 22B1A8 801DFFB8 8F190000 */  lw         $t9, 0x0($t8)
/* 22B1AC 801DFFBC 8F2C0040 */  lw         $t4, 0x40($t9)
/* 22B1B0 801DFFC0 E5800048 */  swc1       $f0, 0x48($t4)
/* 22B1B4 801DFFC4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B1B8 801DFFC8 8DAE0000 */  lw         $t6, 0x0($t5)
.L801DFFCC_ovl9:
/* 22B1BC 801DFFCC 000E7880 */  sll        $t7, $t6, 2
/* 22B1C0 801DFFD0 004FC021 */  addu       $t8, $v0, $t7
/* 22B1C4 801DFFD4 8F190000 */  lw         $t9, 0x0($t8)
glabel func_801DFFD8_ovl14
/* 22B1C8 801DFFD8 8F2C0044 */  lw         $t4, 0x44($t9)
/* 22B1CC 801DFFDC E5800044 */  swc1       $f0, 0x44($t4)
/* 22B1D0 801DFFE0 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B1D4 801DFFE4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B1D8 801DFFE8 000E7880 */  sll        $t7, $t6, 2
/* 22B1DC 801DFFEC 004FC021 */  addu       $t8, $v0, $t7
glabel func_801DFFF0_ovl12
/* 22B1E0 801DFFF0 8F190000 */  lw         $t9, 0x0($t8)
.L801DFFF4_ovl15:
/* 22B1E4 801DFFF4 8F2C0044 */  lw         $t4, 0x44($t9)
.L801DFFF8_ovl16:
/* 22B1E8 801DFFF8 E5800048 */  swc1       $f0, 0x48($t4)
/* 22B1EC 801DFFFC 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B1F0 801E0000 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B1F4 801E0004 000E7880 */  sll        $t7, $t6, 2
/* 22B1F8 801E0008 004FC021 */  addu       $t8, $v0, $t7
.L801E000C_ovl14:
/* 22B1FC 801E000C 8F190000 */  lw         $t9, 0x0($t8)
/* 22B200 801E0010 8F2C004C */  lw         $t4, 0x4C($t9)
/* 22B204 801E0014 E5800044 */  swc1       $f0, 0x44($t4)
/* 22B208 801E0018 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B20C 801E001C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B210 801E0020 000E7880 */  sll        $t7, $t6, 2
/* 22B214 801E0024 004FC021 */  addu       $t8, $v0, $t7
/* 22B218 801E0028 8F190000 */  lw         $t9, 0x0($t8)
/* 22B21C 801E002C 8F2C004C */  lw         $t4, 0x4C($t9)
.L801E0030_ovl15:
/* 22B220 801E0030 E5800048 */  swc1       $f0, 0x48($t4)
/* 22B224 801E0034 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B228 801E0038 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E003C_ovl15:
/* 22B22C 801E003C 000E7880 */  sll        $t7, $t6, 2
/* 22B230 801E0040 004FC021 */  addu       $t8, $v0, $t7
/* 22B234 801E0044 8F190000 */  lw         $t9, 0x0($t8)
/* 22B238 801E0048 8F2C0050 */  lw         $t4, 0x50($t9)
/* 22B23C 801E004C E5800044 */  swc1       $f0, 0x44($t4)
.L801E0050_ovl16:
/* 22B240 801E0050 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B244 801E0054 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801E0058_ovl14
/* 22B248 801E0058 000E7880 */  sll        $t7, $t6, 2
/* 22B24C 801E005C 004FC021 */  addu       $t8, $v0, $t7
.L801E0060_ovl16:
/* 22B250 801E0060 8F190000 */  lw         $t9, 0x0($t8)
/* 22B254 801E0064 8F2C0050 */  lw         $t4, 0x50($t9)
.L801E0068_ovl9:
/* 22B258 801E0068 E5800048 */  swc1       $f0, 0x48($t4)
/* 22B25C 801E006C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B260 801E0070 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B264 801E0074 000E7880 */  sll        $t7, $t6, 2
.L801E0078_ovl11:
/* 22B268 801E0078 004FC021 */  addu       $t8, $v0, $t7
/* 22B26C 801E007C 8F190000 */  lw         $t9, 0x0($t8)
/* 22B270 801E0080 8F2C0058 */  lw         $t4, 0x58($t9)
/* 22B274 801E0084 E5800044 */  swc1       $f0, 0x44($t4)
.L801E0088_ovl9:
/* 22B278 801E0088 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B27C 801E008C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B280 801E0090 000E7880 */  sll        $t7, $t6, 2
/* 22B284 801E0094 004FC021 */  addu       $t8, $v0, $t7
/* 22B288 801E0098 8F190000 */  lw         $t9, 0x0($t8)
/* 22B28C 801E009C 8F2C0058 */  lw         $t4, 0x58($t9)
/* 22B290 801E00A0 E5800048 */  swc1       $f0, 0x48($t4)
.L801E00A4_ovl11:
/* 22B294 801E00A4 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E00A8_ovl15:
/* 22B298 801E00A8 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E00AC_ovl11:
/* 22B29C 801E00AC 000E7880 */  sll        $t7, $t6, 2
.L801E00B0_ovl9:
/* 22B2A0 801E00B0 004FC021 */  addu       $t8, $v0, $t7
/* 22B2A4 801E00B4 8F190000 */  lw         $t9, 0x0($t8)
glabel func_801E00B8_ovl11
/* 22B2A8 801E00B8 8F2C005C */  lw         $t4, 0x5C($t9)
.L801E00BC_ovl16:
/* 22B2AC 801E00BC E5800044 */  swc1       $f0, 0x44($t4)
/* 22B2B0 801E00C0 8C6D0000 */  lw         $t5, 0x0($v1)
glabel func_801E00C4_ovl15
/* 22B2B4 801E00C4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B2B8 801E00C8 000E7880 */  sll        $t7, $t6, 2
/* 22B2BC 801E00CC 004FC021 */  addu       $t8, $v0, $t7
/* 22B2C0 801E00D0 8F190000 */  lw         $t9, 0x0($t8)
/* 22B2C4 801E00D4 8F2C005C */  lw         $t4, 0x5C($t9)
glabel func_801E00D8_ovl12
/* 22B2C8 801E00D8 E5800048 */  swc1       $f0, 0x48($t4)
/* 22B2CC 801E00DC 8C660000 */  lw         $a2, 0x0($v1)
glabel func_801E00E0_ovl14
/* 22B2D0 801E00E0 8CC40000 */  lw         $a0, 0x0($a2)
.L801E00E4_ovl10:
/* 22B2D4 801E00E4 100000B8 */  b          .L801E03C8_ovl17
/* 22B2D8 801E00E8 00042080 */   sll       $a0, $a0, 2
.L801E00EC_ovl17:
/* 22B2DC 801E00EC 14A00056 */  bnez       $a1, .L801E0248_ovl17
/* 22B2E0 801E00F0 0044C021 */   addu      $t8, $v0, $a0
/* 22B2E4 801E00F4 00446821 */  addu       $t5, $v0, $a0
/* 22B2E8 801E00F8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B2EC 801E00FC 8DCF0040 */  lw         $t7, 0x40($t6)
/* 22B2F0 801E0100 E5EE0044 */  swc1       $f14, 0x44($t7)
/* 22B2F4 801E0104 8C780000 */  lw         $t8, 0x0($v1)
.L801E0108_ovl16:
/* 22B2F8 801E0108 8F190000 */  lw         $t9, 0x0($t8)
/* 22B2FC 801E010C 00196080 */  sll        $t4, $t9, 2
/* 22B300 801E0110 004C6821 */  addu       $t5, $v0, $t4
/* 22B304 801E0114 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E0118_ovl16:
/* 22B308 801E0118 8DCF0040 */  lw         $t7, 0x40($t6)
/* 22B30C 801E011C E5EE0048 */  swc1       $f14, 0x48($t7)
/* 22B310 801E0120 8C780000 */  lw         $t8, 0x0($v1)
.L801E0124_ovl14:
/* 22B314 801E0124 8F190000 */  lw         $t9, 0x0($t8)
/* 22B318 801E0128 00196080 */  sll        $t4, $t9, 2
/* 22B31C 801E012C 004C6821 */  addu       $t5, $v0, $t4
/* 22B320 801E0130 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E0134_ovl13:
/* 22B324 801E0134 8DCF0044 */  lw         $t7, 0x44($t6)
/* 22B328 801E0138 E5EE0044 */  swc1       $f14, 0x44($t7)
/* 22B32C 801E013C 8C780000 */  lw         $t8, 0x0($v1)
/* 22B330 801E0140 8F190000 */  lw         $t9, 0x0($t8)
/* 22B334 801E0144 00196080 */  sll        $t4, $t9, 2
.L801E0148_ovl10:
/* 22B338 801E0148 004C6821 */  addu       $t5, $v0, $t4
/* 22B33C 801E014C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B340 801E0150 8DCF0044 */  lw         $t7, 0x44($t6)
.L801E0154_ovl12:
/* 22B344 801E0154 E5EE0048 */  swc1       $f14, 0x48($t7)
/* 22B348 801E0158 8C780000 */  lw         $t8, 0x0($v1)
/* 22B34C 801E015C 8F190000 */  lw         $t9, 0x0($t8)
.L801E0160_ovl12:
/* 22B350 801E0160 00196080 */  sll        $t4, $t9, 2
/* 22B354 801E0164 004C6821 */  addu       $t5, $v0, $t4
glabel func_801E0168_ovl14
/* 22B358 801E0168 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801E016C_ovl12
/* 22B35C 801E016C 8DCF004C */  lw         $t7, 0x4C($t6)
/* 22B360 801E0170 E5EE0044 */  swc1       $f14, 0x44($t7)
/* 22B364 801E0174 8C780000 */  lw         $t8, 0x0($v1)
/* 22B368 801E0178 8F190000 */  lw         $t9, 0x0($t8)
/* 22B36C 801E017C 00196080 */  sll        $t4, $t9, 2
.L801E0180_ovl13:
/* 22B370 801E0180 004C6821 */  addu       $t5, $v0, $t4
.L801E0184_ovl14:
/* 22B374 801E0184 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B378 801E0188 8DCF004C */  lw         $t7, 0x4C($t6)
/* 22B37C 801E018C E5EE0048 */  swc1       $f14, 0x48($t7)
/* 22B380 801E0190 8C780000 */  lw         $t8, 0x0($v1)
/* 22B384 801E0194 8F190000 */  lw         $t9, 0x0($t8)
/* 22B388 801E0198 00196080 */  sll        $t4, $t9, 2
.L801E019C_ovl14:
/* 22B38C 801E019C 004C6821 */  addu       $t5, $v0, $t4
.L801E01A0_ovl10:
/* 22B390 801E01A0 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B394 801E01A4 8DCF0050 */  lw         $t7, 0x50($t6)
/* 22B398 801E01A8 E5EE0044 */  swc1       $f14, 0x44($t7)
.L801E01AC_ovl13:
/* 22B39C 801E01AC 8C780000 */  lw         $t8, 0x0($v1)
.L801E01B0_ovl13:
/* 22B3A0 801E01B0 8F190000 */  lw         $t9, 0x0($t8)
/* 22B3A4 801E01B4 00196080 */  sll        $t4, $t9, 2
/* 22B3A8 801E01B8 004C6821 */  addu       $t5, $v0, $t4
/* 22B3AC 801E01BC 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B3B0 801E01C0 8DCF0050 */  lw         $t7, 0x50($t6)
/* 22B3B4 801E01C4 E5EE0048 */  swc1       $f14, 0x48($t7)
.L801E01C8_ovl11:
/* 22B3B8 801E01C8 8C780000 */  lw         $t8, 0x0($v1)
/* 22B3BC 801E01CC 8F190000 */  lw         $t9, 0x0($t8)
.L801E01D0_ovl10:
/* 22B3C0 801E01D0 00196080 */  sll        $t4, $t9, 2
/* 22B3C4 801E01D4 004C6821 */  addu       $t5, $v0, $t4
/* 22B3C8 801E01D8 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E01DC_ovl13:
/* 22B3CC 801E01DC 8DCF0058 */  lw         $t7, 0x58($t6)
/* 22B3D0 801E01E0 E5EE0044 */  swc1       $f14, 0x44($t7)
/* 22B3D4 801E01E4 8C780000 */  lw         $t8, 0x0($v1)
/* 22B3D8 801E01E8 8F190000 */  lw         $t9, 0x0($t8)
/* 22B3DC 801E01EC 00196080 */  sll        $t4, $t9, 2
/* 22B3E0 801E01F0 004C6821 */  addu       $t5, $v0, $t4
/* 22B3E4 801E01F4 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E01F8_ovl13:
/* 22B3E8 801E01F8 8DCF0058 */  lw         $t7, 0x58($t6)
/* 22B3EC 801E01FC E5EE0048 */  swc1       $f14, 0x48($t7)
/* 22B3F0 801E0200 8C780000 */  lw         $t8, 0x0($v1)
.L801E0204_ovl10:
/* 22B3F4 801E0204 8F190000 */  lw         $t9, 0x0($t8)
/* 22B3F8 801E0208 00196080 */  sll        $t4, $t9, 2
/* 22B3FC 801E020C 004C6821 */  addu       $t5, $v0, $t4
.L801E0210_ovl16:
/* 22B400 801E0210 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B404 801E0214 8DCF005C */  lw         $t7, 0x5C($t6)
.L801E0218_ovl13:
/* 22B408 801E0218 E5EE0044 */  swc1       $f14, 0x44($t7)
/* 22B40C 801E021C 8C780000 */  lw         $t8, 0x0($v1)
.L801E0220_ovl11:
/* 22B410 801E0220 8F190000 */  lw         $t9, 0x0($t8)
.L801E0224_ovl11:
/* 22B414 801E0224 00196080 */  sll        $t4, $t9, 2
glabel func_801E0228_ovl9
/* 22B418 801E0228 004C6821 */  addu       $t5, $v0, $t4
.L801E022C_ovl11:
/* 22B41C 801E022C 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E0230_ovl13:
/* 22B420 801E0230 8DCF005C */  lw         $t7, 0x5C($t6)
.L801E0234_ovl16:
/* 22B424 801E0234 E5EE0048 */  swc1       $f14, 0x48($t7)
/* 22B428 801E0238 8C660000 */  lw         $a2, 0x0($v1)
/* 22B42C 801E023C 8CC40000 */  lw         $a0, 0x0($a2)
/* 22B430 801E0240 10000061 */  b          .L801E03C8_ovl17
/* 22B434 801E0244 00042080 */   sll       $a0, $a0, 2
.L801E0248_ovl17:
/* 22B438 801E0248 8F190000 */  lw         $t9, 0x0($t8)
glabel func_801E024C_ovl14
/* 22B43C 801E024C 8F2C0040 */  lw         $t4, 0x40($t9)
.L801E0250_ovl14:
/* 22B440 801E0250 E5820044 */  swc1       $f2, 0x44($t4)
/* 22B444 801E0254 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B448 801E0258 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801E025C_ovl14
/* 22B44C 801E025C 000E7880 */  sll        $t7, $t6, 2
.L801E0260_ovl13:
/* 22B450 801E0260 004FC021 */  addu       $t8, $v0, $t7
/* 22B454 801E0264 8F190000 */  lw         $t9, 0x0($t8)
/* 22B458 801E0268 8F2C0040 */  lw         $t4, 0x40($t9)
/* 22B45C 801E026C E5820048 */  swc1       $f2, 0x48($t4)
/* 22B460 801E0270 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B464 801E0274 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B468 801E0278 000E7880 */  sll        $t7, $t6, 2
/* 22B46C 801E027C 004FC021 */  addu       $t8, $v0, $t7
/* 22B470 801E0280 8F190000 */  lw         $t9, 0x0($t8)
/* 22B474 801E0284 8F2C0044 */  lw         $t4, 0x44($t9)
/* 22B478 801E0288 E5820044 */  swc1       $f2, 0x44($t4)
glabel func_801E028C_ovl11
/* 22B47C 801E028C 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E0290_ovl10:
/* 22B480 801E0290 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B484 801E0294 000E7880 */  sll        $t7, $t6, 2
glabel func_801E0298_ovl12
/* 22B488 801E0298 004FC021 */  addu       $t8, $v0, $t7
.L801E029C_ovl15:
/* 22B48C 801E029C 8F190000 */  lw         $t9, 0x0($t8)
/* 22B490 801E02A0 8F2C0044 */  lw         $t4, 0x44($t9)
/* 22B494 801E02A4 E5820048 */  swc1       $f2, 0x48($t4)
.L801E02A8_ovl10:
/* 22B498 801E02A8 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B49C 801E02AC 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B4A0 801E02B0 000E7880 */  sll        $t7, $t6, 2
/* 22B4A4 801E02B4 004FC021 */  addu       $t8, $v0, $t7
/* 22B4A8 801E02B8 8F190000 */  lw         $t9, 0x0($t8)
/* 22B4AC 801E02BC 8F2C004C */  lw         $t4, 0x4C($t9)
/* 22B4B0 801E02C0 E5820044 */  swc1       $f2, 0x44($t4)
/* 22B4B4 801E02C4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B4B8 801E02C8 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E02CC_ovl15:
/* 22B4BC 801E02CC 000E7880 */  sll        $t7, $t6, 2
/* 22B4C0 801E02D0 004FC021 */  addu       $t8, $v0, $t7
.L801E02D4_ovl10:
/* 22B4C4 801E02D4 8F190000 */  lw         $t9, 0x0($t8)
/* 22B4C8 801E02D8 8F2C004C */  lw         $t4, 0x4C($t9)
/* 22B4CC 801E02DC E5820048 */  swc1       $f2, 0x48($t4)
/* 22B4D0 801E02E0 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B4D4 801E02E4 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E02E8_ovl10:
/* 22B4D8 801E02E8 000E7880 */  sll        $t7, $t6, 2
/* 22B4DC 801E02EC 004FC021 */  addu       $t8, $v0, $t7
/* 22B4E0 801E02F0 8F190000 */  lw         $t9, 0x0($t8)
.L801E02F4_ovl13:
/* 22B4E4 801E02F4 8F2C0050 */  lw         $t4, 0x50($t9)
/* 22B4E8 801E02F8 E5820044 */  swc1       $f2, 0x44($t4)
/* 22B4EC 801E02FC 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E0300_ovl10:
/* 22B4F0 801E0300 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B4F4 801E0304 000E7880 */  sll        $t7, $t6, 2
/* 22B4F8 801E0308 004FC021 */  addu       $t8, $v0, $t7
/* 22B4FC 801E030C 8F190000 */  lw         $t9, 0x0($t8)
/* 22B500 801E0310 8F2C0050 */  lw         $t4, 0x50($t9)
/* 22B504 801E0314 E5820048 */  swc1       $f2, 0x48($t4)
/* 22B508 801E0318 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B50C 801E031C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B510 801E0320 000E7880 */  sll        $t7, $t6, 2
/* 22B514 801E0324 004FC021 */  addu       $t8, $v0, $t7
.L801E0328_ovl13:
/* 22B518 801E0328 8F190000 */  lw         $t9, 0x0($t8)
.L801E032C_ovl10:
/* 22B51C 801E032C 8F2C0058 */  lw         $t4, 0x58($t9)
.L801E0330_ovl16:
/* 22B520 801E0330 E5820044 */  swc1       $f2, 0x44($t4)
/* 22B524 801E0334 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B528 801E0338 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B52C 801E033C 000E7880 */  sll        $t7, $t6, 2
.L801E0340_ovl10:
/* 22B530 801E0340 004FC021 */  addu       $t8, $v0, $t7
/* 22B534 801E0344 8F190000 */  lw         $t9, 0x0($t8)
/* 22B538 801E0348 8F2C0058 */  lw         $t4, 0x58($t9)
/* 22B53C 801E034C E5820048 */  swc1       $f2, 0x48($t4)
/* 22B540 801E0350 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E0354_ovl16:
/* 22B544 801E0354 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B548 801E0358 000E7880 */  sll        $t7, $t6, 2
.L801E035C_ovl10:
/* 22B54C 801E035C 004FC021 */  addu       $t8, $v0, $t7
/* 22B550 801E0360 8F190000 */  lw         $t9, 0x0($t8)
/* 22B554 801E0364 8F2C005C */  lw         $t4, 0x5C($t9)
/* 22B558 801E0368 E5820044 */  swc1       $f2, 0x44($t4)
/* 22B55C 801E036C 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E0370_ovl10:
/* 22B560 801E0370 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B564 801E0374 000E7880 */  sll        $t7, $t6, 2
.L801E0378_ovl11:
/* 22B568 801E0378 004FC021 */  addu       $t8, $v0, $t7
/* 22B56C 801E037C 8F190000 */  lw         $t9, 0x0($t8)
glabel func_801E0380_ovl15
/* 22B570 801E0380 8F2C005C */  lw         $t4, 0x5C($t9)
/* 22B574 801E0384 E5820048 */  swc1       $f2, 0x48($t4)
/* 22B578 801E0388 8C660000 */  lw         $a2, 0x0($v1)
.L801E038C_ovl10:
/* 22B57C 801E038C 8CCD0000 */  lw         $t5, 0x0($a2)
/* 22B580 801E0390 000D7080 */  sll        $t6, $t5, 2
/* 22B584 801E0394 010E2821 */  addu       $a1, $t0, $t6
.L801E0398_ovl10:
/* 22B588 801E0398 8CAF0000 */  lw         $t7, 0x0($a1)
/* 22B58C 801E039C 25F8FFFF */  addiu      $t8, $t7, -0x1
.L801E03A0_ovl9:
/* 22B590 801E03A0 ACB80000 */  sw         $t8, 0x0($a1)
glabel func_801E03A4_ovl12
/* 22B594 801E03A4 8CC40000 */  lw         $a0, 0x0($a2)
/* 22B598 801E03A8 00042080 */  sll        $a0, $a0, 2
/* 22B59C 801E03AC 01042821 */  addu       $a1, $t0, $a0
glabel func_801E03B0_ovl12
/* 22B5A0 801E03B0 8CB90000 */  lw         $t9, 0x0($a1)
/* 22B5A4 801E03B4 54F90005 */  bnel       $a3, $t9, func_801E03CC_ovl17
/* 22B5A8 801E03B8 01246021 */   addu      $t4, $t1, $a0
/* 22B5AC 801E03BC ACA00000 */  sw         $zero, 0x0($a1)
/* 22B5B0 801E03C0 8CC40000 */  lw         $a0, 0x0($a2)
/* 22B5B4 801E03C4 00042080 */  sll        $a0, $a0, 2
.L801E03C8_ovl17:
/* 22B5B8 801E03C8 01246021 */  addu       $t4, $t1, $a0
glabel func_801E03CC_ovl17
/* 22B5BC 801E03CC 8D820000 */  lw         $v0, 0x0($t4)
/* 22B5C0 801E03D0 10E20013 */  beq        $a3, $v0, .L801E0420_ovl17
/* 22B5C4 801E03D4 01046821 */   addu      $t5, $t0, $a0
/* 22B5C8 801E03D8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B5CC 801E03DC 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
glabel func_801E03E0_ovl14
/* 22B5D0 801E03E0 10EE000F */  beq        $a3, $t6, .L801E0420_ovl17
glabel func_801E03E4_ovl9
/* 22B5D4 801E03E4 00000000 */   nop
glabel func_801E03E8_ovl14
/* 22B5D8 801E03E8 C4207170 */  lwc1       $f0, %lo(D_800D7158 + 0x18)($at)
glabel func_801E03EC_ovl16
/* 22B5DC 801E03EC 3C01801E */  lui        $at, %hi(D_801E565C_ovl17)
.L801E03F0_ovl15:
/* 22B5E0 801E03F0 C424565C */  lwc1       $f4, %lo(D_801E565C_ovl17)($at)
/* 22B5E4 801E03F4 3C0A801E */  lui        $t2, %hi(.L801E5700_ovl17)
/* 22B5E8 801E03F8 254A5700 */  addiu      $t2, $t2, %lo(.L801E5700_ovl17)
/* 22B5EC 801E03FC 46040182 */  mul.s      $f6, $f0, $f4
/* 22B5F0 801E0400 3C01801E */  lui        $at, %hi(func_801E5660_ovl17)
/* 22B5F4 801E0404 3C0B801E */  lui        $t3, %hi(.L801E5704_ovl17)
/* 22B5F8 801E0408 256B5704 */  addiu      $t3, $t3, %lo(.L801E5704_ovl17)
glabel func_801E040C_ovl15
/* 22B5FC 801E040C E5460000 */  swc1       $f6, 0x0($t2)
/* 22B600 801E0410 C4285660 */  lwc1       $f8, %lo(func_801E5660_ovl17)($at)
/* 22B604 801E0414 46080282 */  mul.s      $f10, $f0, $f8
/* 22B608 801E0418 1000002D */  b          .L801E04D0_ovl17
/* 22B60C 801E041C E56A0000 */   swc1      $f10, 0x0($t3)
.L801E0420_ovl17:
/* 22B610 801E0420 14E20018 */  bne        $a3, $v0, .L801E0484_ovl17
/* 22B614 801E0424 01047821 */   addu      $t7, $t0, $a0
/* 22B618 801E0428 8DF80000 */  lw         $t8, 0x0($t7)
/* 22B61C 801E042C 3C01801E */  lui        $at, %hi(func_801E5660_ovl17 + 0x4)
/* 22B620 801E0430 14F80014 */  bne        $a3, $t8, .L801E0484_ovl17
/* 22B624 801E0434 00000000 */   nop
/* 22B628 801E0438 C4225664 */  lwc1       $f2, %lo(func_801E5660_ovl17 + 0x4)($at)
/* 22B62C 801E043C 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
/* 22B630 801E0440 C4207170 */  lwc1       $f0, %lo(D_800D7158 + 0x18)($at)
/* 22B634 801E0444 3C01801E */  lui        $at, %hi(.L801E5668_ovl17)
/* 22B638 801E0448 C4305668 */  lwc1       $f16, %lo(.L801E5668_ovl17)($at)
/* 22B63C 801E044C 3C0A801E */  lui        $t2, %hi(.L801E5700_ovl17)
.L801E0450_ovl10:
/* 22B640 801E0450 254A5700 */  addiu      $t2, $t2, %lo(.L801E5700_ovl17)
/* 22B644 801E0454 46100482 */  mul.s      $f18, $f0, $f16
/* 22B648 801E0458 3C01801E */  lui        $at, %hi(.L801E566C_ovl17)
.L801E045C_ovl16:
/* 22B64C 801E045C 3C0B801E */  lui        $t3, %hi(.L801E5704_ovl17)
glabel func_801E0460_ovl10
/* 22B650 801E0460 256B5704 */  addiu      $t3, $t3, %lo(.L801E5704_ovl17)
/* 22B654 801E0464 46029102 */  mul.s      $f4, $f18, $f2
/* 22B658 801E0468 E5440000 */  swc1       $f4, 0x0($t2)
.L801E046C_ovl15:
/* 22B65C 801E046C C426566C */  lwc1       $f6, %lo(.L801E566C_ovl17)($at)
/* 22B660 801E0470 46060202 */  mul.s      $f8, $f0, $f6
/* 22B664 801E0474 00000000 */  nop
.L801E0478_ovl14:
/* 22B668 801E0478 46024282 */  mul.s      $f10, $f8, $f2
.L801E047C_ovl16:
/* 22B66C 801E047C 10000014 */  b          .L801E04D0_ovl17
/* 22B670 801E0480 E56A0000 */   swc1      $f10, 0x0($t3)
.L801E0484_ovl17:
/* 22B674 801E0484 3C01801E */  lui        $at, %hi(D_801E5670_ovl17)
.L801E0488_ovl15:
/* 22B678 801E0488 C4225670 */  lwc1       $f2, %lo(D_801E5670_ovl17)($at)
/* 22B67C 801E048C 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
/* 22B680 801E0490 C4207170 */  lwc1       $f0, %lo(D_800D7158 + 0x18)($at)
/* 22B684 801E0494 3C01801E */  lui        $at, %hi(D_801E5674_ovl17)
/* 22B688 801E0498 C4305674 */  lwc1       $f16, %lo(D_801E5674_ovl17)($at)
/* 22B68C 801E049C 3C0A801E */  lui        $t2, %hi(.L801E5700_ovl17)
/* 22B690 801E04A0 254A5700 */  addiu      $t2, $t2, %lo(.L801E5700_ovl17)
/* 22B694 801E04A4 46100482 */  mul.s      $f18, $f0, $f16
/* 22B698 801E04A8 3C01801E */  lui        $at, %hi(.L801E5678_ovl17)
/* 22B69C 801E04AC 3C0B801E */  lui        $t3, %hi(.L801E5704_ovl17)
/* 22B6A0 801E04B0 256B5704 */  addiu      $t3, $t3, %lo(.L801E5704_ovl17)
.L801E04B4_ovl11:
/* 22B6A4 801E04B4 46029102 */  mul.s      $f4, $f18, $f2
/* 22B6A8 801E04B8 E5440000 */  swc1       $f4, 0x0($t2)
.L801E04BC_ovl14:
/* 22B6AC 801E04BC C4265678 */  lwc1       $f6, %lo(.L801E5678_ovl17)($at)
/* 22B6B0 801E04C0 46060202 */  mul.s      $f8, $f0, $f6
.L801E04C4_ovl15:
/* 22B6B4 801E04C4 00000000 */  nop
/* 22B6B8 801E04C8 46024282 */  mul.s      $f10, $f8, $f2
/* 22B6BC 801E04CC E56A0000 */  swc1       $f10, 0x0($t3)
.L801E04D0_ovl17:
/* 22B6C0 801E04D0 8CC40000 */  lw         $a0, 0x0($a2)
.L801E04D4_ovl9:
/* 22B6C4 801E04D4 3C02800E */  lui        $v0, %hi(gEntityVtableIndexArray)
/* 22B6C8 801E04D8 3C05800F */  lui        $a1, %hi(D_800EA520)
.L801E04DC_ovl15:
/* 22B6CC 801E04DC 00042080 */  sll        $a0, $a0, 2
/* 22B6D0 801E04E0 00441021 */  addu       $v0, $v0, $a0
/* 22B6D4 801E04E4 8C42DC50 */  lw         $v0, %lo(gEntityVtableIndexArray)($v0)
/* 22B6D8 801E04E8 24A5A520 */  addiu      $a1, $a1, %lo(D_800EA520)
.L801E04EC_ovl11:
/* 22B6DC 801E04EC 24010003 */  addiu      $at, $zero, 0x3
/* 22B6E0 801E04F0 10410004 */  beq        $v0, $at, .L801E0504_ovl17
.L801E04F4_ovl16:
/* 22B6E4 801E04F4 00A4C821 */   addu      $t9, $a1, $a0
/* 22B6E8 801E04F8 24010004 */  addiu      $at, $zero, 0x4
/* 22B6EC 801E04FC 14410004 */  bne        $v0, $at, .L801E0510_ovl17
/* 22B6F0 801E0500 00000000 */   nop
.L801E0504_ovl17:
/* 22B6F4 801E0504 AF200000 */  sw         $zero, 0x0($t9)
/* 22B6F8 801E0508 8CC40000 */  lw         $a0, 0x0($a2)
/* 22B6FC 801E050C 00042080 */  sll        $a0, $a0, 2
.L801E0510_ovl17:
/* 22B700 801E0510 3C05800F */  lui        $a1, %hi(D_800EA520)
.L801E0514_ovl16:
/* 22B704 801E0514 24A5A520 */  addiu      $a1, $a1, %lo(D_800EA520)
/* 22B708 801E0518 00A46021 */  addu       $t4, $a1, $a0
/* 22B70C 801E051C 8D820000 */  lw         $v0, 0x0($t4)
/* 22B710 801E0520 01246821 */  addu       $t5, $t1, $a0
.L801E0524_ovl16:
/* 22B714 801E0524 5840004A */  blezl      $v0, .L801E0650_ovl17
/* 22B718 801E0528 3C014000 */   lui       $at, (0x40000000 >> 16)
.L801E052C_ovl16:
/* 22B71C 801E052C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B720 801E0530 01047821 */  addu       $t7, $t0, $a0
/* 22B724 801E0534 54EE0005 */  bnel       $a3, $t6, .L801E054C_ovl17
/* 22B728 801E0538 44829000 */   mtc1      $v0, $f18
/* 22B72C 801E053C 8DF80000 */  lw         $t8, 0x0($t7)
/* 22B730 801E0540 50F80043 */  beql       $a3, $t8, .L801E0650_ovl17
.L801E0544_ovl12:
/* 22B734 801E0544 3C014000 */   lui       $at, (0x40000000 >> 16)
/* 22B738 801E0548 44829000 */  mtc1       $v0, $f18
.L801E054C_ovl17:
/* 22B73C 801E054C 3C014270 */  lui        $at, (0x42700000 >> 16)
/* 22B740 801E0550 44810000 */  mtc1       $at, $f0
/* 22B744 801E0554 46809120 */  cvt.s.w    $f4, $f18
/* 22B748 801E0558 C5500000 */  lwc1       $f16, 0x0($t2)
/* 22B74C 801E055C C5720000 */  lwc1       $f18, 0x0($t3)
/* 22B750 801E0560 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 22B754 801E0564 46002183 */  div.s      $f6, $f4, $f0
/* 22B758 801E0568 46067200 */  add.s      $f8, $f14, $f6
/* 22B75C 801E056C 46088282 */  mul.s      $f10, $f16, $f8
/* 22B760 801E0570 E54A0000 */  swc1       $f10, 0x0($t2)
/* 22B764 801E0574 8CD90000 */  lw         $t9, 0x0($a2)
/* 22B768 801E0578 00196080 */  sll        $t4, $t9, 2
/* 22B76C 801E057C 00AC6821 */  addu       $t5, $a1, $t4
/* 22B770 801E0580 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B774 801E0584 448E2000 */  mtc1       $t6, $f4
/* 22B778 801E0588 00000000 */  nop
glabel func_801E058C_ovl9
/* 22B77C 801E058C 468021A0 */  cvt.s.w    $f6, $f4
.L801E0590_ovl12:
/* 22B780 801E0590 46003403 */  div.s      $f16, $f6, $f0
/* 22B784 801E0594 46107200 */  add.s      $f8, $f14, $f16
.L801E0598_ovl16:
/* 22B788 801E0598 44818000 */  mtc1       $at, $f16
.L801E059C_ovl15:
/* 22B78C 801E059C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 22B790 801E05A0 46089282 */  mul.s      $f10, $f18, $f8
/* 22B794 801E05A4 44814000 */  mtc1       $at, $f8
glabel func_801E05A8_ovl15
/* 22B798 801E05A8 E56A0000 */  swc1       $f10, 0x0($t3)
/* 22B79C 801E05AC 8CCF0000 */  lw         $t7, 0x0($a2)
/* 22B7A0 801E05B0 000FC080 */  sll        $t8, $t7, 2
/* 22B7A4 801E05B4 00B8C821 */  addu       $t9, $a1, $t8
/* 22B7A8 801E05B8 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22B7AC 801E05BC 448C2000 */  mtc1       $t4, $f4
/* 22B7B0 801E05C0 00000000 */  nop
/* 22B7B4 801E05C4 468021A0 */  cvt.s.w    $f6, $f4
/* 22B7B8 801E05C8 46103483 */  div.s      $f18, $f6, $f16
.L801E05CC_ovl13:
/* 22B7BC 801E05CC 0C02BB30 */  jal        func_800AECC0
/* 22B7C0 801E05D0 46089300 */   add.s     $f12, $f18, $f8
/* 22B7C4 801E05D4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 22B7C8 801E05D8 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 22B7CC 801E05DC 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22B7D0 801E05E0 3C18800F */  lui        $t8, %hi(D_800EA520)
.L801E05E4_ovl13:
/* 22B7D4 801E05E4 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
glabel func_801E05E8_ovl12
/* 22B7D8 801E05E8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 22B7DC 801E05EC 44813000 */  mtc1       $at, $f6
/* 22B7E0 801E05F0 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 22B7E4 801E05F4 000E7880 */  sll        $t7, $t6, 2
/* 22B7E8 801E05F8 030FC021 */  addu       $t8, $t8, $t7
/* 22B7EC 801E05FC 8F18A520 */  lw         $t8, %lo(D_800EA520)($t8)
.L801E0600_ovl13:
/* 22B7F0 801E0600 44819000 */  mtc1       $at, $f18
/* 22B7F4 801E0604 44985000 */  mtc1       $t8, $f10
/* 22B7F8 801E0608 00000000 */  nop
/* 22B7FC 801E060C 46805120 */  cvt.s.w    $f4, $f10
glabel func_801E0610_ovl14
/* 22B800 801E0610 46062403 */  div.s      $f16, $f4, $f6
/* 22B804 801E0614 0C02BB48 */  jal        func_800AED20
glabel func_801E0618_ovl14
/* 22B808 801E0618 46128300 */   add.s     $f12, $f16, $f18
.L801E061C_ovl16:
/* 22B80C 801E061C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 22B810 801E0620 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 22B814 801E0624 8C790000 */  lw         $t9, 0x0($v1)
glabel func_801E0628_ovl16
/* 22B818 801E0628 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 22B81C 801E062C 25CEA520 */  addiu      $t6, $t6, %lo(D_800EA520)
/* 22B820 801E0630 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22B824 801E0634 000C6880 */  sll        $t5, $t4, 2
/* 22B828 801E0638 01AE1021 */  addu       $v0, $t5, $t6
/* 22B82C 801E063C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 22B830 801E0640 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 22B834 801E0644 10000011 */  b          .L801E068C_ovl17
/* 22B838 801E0648 AC580000 */   sw        $t8, 0x0($v0)
/* 22B83C 801E064C 3C014000 */  lui        $at, (0x40000000 >> 16)
.L801E0650_ovl17:
/* 22B840 801E0650 44816000 */  mtc1       $at, $f12
/* 22B844 801E0654 0C02BB30 */  jal        func_800AECC0
/* 22B848 801E0658 00000000 */   nop
.L801E065C_ovl13:
/* 22B84C 801E065C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 22B850 801E0660 44816000 */  mtc1       $at, $f12
/* 22B854 801E0664 0C02BB48 */  jal        func_800AED20
.L801E0668_ovl12:
/* 22B858 801E0668 00000000 */   nop
/* 22B85C 801E066C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 22B860 801E0670 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
.L801E0674_ovl13:
/* 22B864 801E0674 8C790000 */  lw         $t9, 0x0($v1)
/* 22B868 801E0678 3C01800F */  lui        $at, %hi(D_800EA520)
/* 22B86C 801E067C 8F2C0000 */  lw         $t4, 0x0($t9)
/* 22B870 801E0680 000C6880 */  sll        $t5, $t4, 2
/* 22B874 801E0684 002D0821 */  addu       $at, $at, $t5
.L801E0688_ovl10:
/* 22B878 801E0688 AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
.L801E068C_ovl17:
/* 22B87C 801E068C 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E0690_ovl16:
/* 22B880 801E0690 27BD0018 */  addiu      $sp, $sp, 0x18
.L801E0694_ovl13:
/* 22B884 801E0694 03E00008 */  jr         $ra
/* 22B888 801E0698 00000000 */   nop
