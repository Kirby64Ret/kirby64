glabel func_801DFAA0_ovl16
/* 215D50 801DFAA0 3C0E800D */  lui        $t6, %hi(D_800D7098 + 0x4)
/* 215D54 801DFAA4 8DCE709C */  lw         $t6, %lo(D_800D7098 + 0x4)($t6)
.L801DFAA8_ovl14:
/* 215D58 801DFAA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 215D5C 801DFAAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 215D60 801DFAB0 2DC10007 */  sltiu      $at, $t6, 0x7
.L801DFAB4_ovl9:
/* 215D64 801DFAB4 10200054 */  beqz       $at, .L801DFC08_ovl16
/* 215D68 801DFAB8 AFA40018 */   sw        $a0, 0x18($sp)
glabel func_801DFABC_ovl17
/* 215D6C 801DFABC 000E7080 */  sll        $t6, $t6, 2
.L801DFAC0_ovl10:
/* 215D70 801DFAC0 3C01801F */  lui        $at, %hi(jtbl_801EFED8_ovl16)
/* 215D74 801DFAC4 002E0821 */  addu       $at, $at, $t6
/* 215D78 801DFAC8 8C2EFED8 */  lw         $t6, %lo(jtbl_801EFED8_ovl16)($at)
glabel func_801DFACC_ovl11
/* 215D7C 801DFACC 01C00008 */  jr         $t6
/* 215D80 801DFAD0 00000000 */   nop
/* 215D84 801DFAD4 0C077CC5 */  jal        func_801DF314_ovl16
.L801DFAD8_ovl9:
/* 215D88 801DFAD8 00000000 */   nop
/* 215D8C 801DFADC 1000004A */  b          .L801DFC08_ovl16
/* 215D90 801DFAE0 00000000 */   nop
/* 215D94 801DFAE4 0C077D8B */  jal        func_801DF62C_ovl16
.L801DFAE8_ovl12:
/* 215D98 801DFAE8 00000000 */   nop
.L801DFAEC_ovl12:
/* 215D9C 801DFAEC 10000046 */  b          .L801DFC08_ovl16
/* 215DA0 801DFAF0 00000000 */   nop
/* 215DA4 801DFAF4 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 215DA8 801DFAF8 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 215DAC 801DFAFC 8CA60000 */  lw         $a2, 0x0($a1)
glabel func_801DFB00_ovl14
/* 215DB0 801DFB00 3C01801F */  lui        $at, %hi(.L801EFEF4_ovl16)
/* 215DB4 801DFB04 C422FEF4 */  lwc1       $f2, %lo(.L801EFEF4_ovl16)($at)
/* 215DB8 801DFB08 8CC40000 */  lw         $a0, 0x0($a2)
/* 215DBC 801DFB0C 3C08800F */  lui        $t0, %hi(D_800EA6E0)
.L801DFB10_ovl13:
/* 215DC0 801DFB10 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
/* 215DC4 801DFB14 00042080 */  sll        $a0, $a0, 2
/* 215DC8 801DFB18 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 215DCC 801DFB1C 00240821 */  addu       $at, $at, $a0
/* 215DD0 801DFB20 01043821 */  addu       $a3, $t0, $a0
.L801DFB24_ovl12:
/* 215DD4 801DFB24 C4E40000 */  lwc1       $f4, 0x0($a3)
glabel func_801DFB28_ovl9
/* 215DD8 801DFB28 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* 215DDC 801DFB2C 3C03800E */  lui        $v1, %hi(D_800DFBD0)
/* 215DE0 801DFB30 2463FBD0 */  addiu      $v1, $v1, %lo(D_800DFBD0)
glabel func_801DFB34_ovl12
/* 215DE4 801DFB34 46062200 */  add.s      $f8, $f4, $f6
/* 215DE8 801DFB38 3C01801F */  lui        $at, %hi(D_801EFEF8_ovl16)
/* 215DEC 801DFB3C E4E80000 */  swc1       $f8, 0x0($a3)
.L801DFB40_ovl15:
/* 215DF0 801DFB40 8CC40000 */  lw         $a0, 0x0($a2)
glabel func_801DFB44_ovl11
/* 215DF4 801DFB44 00042080 */  sll        $a0, $a0, 2
glabel func_801DFB48_ovl14
/* 215DF8 801DFB48 0064C021 */  addu       $t8, $v1, $a0
/* 215DFC 801DFB4C 8F190000 */  lw         $t9, 0x0($t8)
glabel func_801DFB50_ovl9
/* 215E00 801DFB50 01047821 */  addu       $t7, $t0, $a0
/* 215E04 801DFB54 C5EA0000 */  lwc1       $f10, 0x0($t7)
/* 215E08 801DFB58 8F29000C */  lw         $t1, 0xC($t9)
.L801DFB5C_ovl13:
/* 215E0C 801DFB5C E52A0038 */  swc1       $f10, 0x38($t1)
.L801DFB60_ovl13:
/* 215E10 801DFB60 8CAA0000 */  lw         $t2, 0x0($a1)
/* 215E14 801DFB64 8D4B0000 */  lw         $t3, 0x0($t2)
/* 215E18 801DFB68 000B6080 */  sll        $t4, $t3, 2
/* 215E1C 801DFB6C 006C6821 */  addu       $t5, $v1, $t4
/* 215E20 801DFB70 8DAE0000 */  lw         $t6, 0x0($t5)
/* 215E24 801DFB74 8DC2000C */  lw         $v0, 0xC($t6)
/* 215E28 801DFB78 C4400038 */  lwc1       $f0, 0x38($v0)
.L801DFB7C_ovl15:
/* 215E2C 801DFB7C 4600103C */  c.lt.s     $f2, $f0
/* 215E30 801DFB80 00000000 */  nop
/* 215E34 801DFB84 4500000E */  bc1f       .L801DFBC0_ovl16
.L801DFB88_ovl15:
/* 215E38 801DFB88 00000000 */   nop
.L801DFB8C_ovl13:
/* 215E3C 801DFB8C 46020401 */  sub.s      $f16, $f0, $f2
.L801DFB90_ovl16:
/* 215E40 801DFB90 E4500038 */  swc1       $f16, 0x38($v0)
/* 215E44 801DFB94 8CAF0000 */  lw         $t7, 0x0($a1)
/* 215E48 801DFB98 8DF80000 */  lw         $t8, 0x0($t7)
/* 215E4C 801DFB9C 0018C880 */  sll        $t9, $t8, 2
/* 215E50 801DFBA0 00794821 */  addu       $t1, $v1, $t9
/* 215E54 801DFBA4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 215E58 801DFBA8 8D42000C */  lw         $v0, 0xC($t2)
/* 215E5C 801DFBAC C4400038 */  lwc1       $f0, 0x38($v0)
/* 215E60 801DFBB0 4600103C */  c.lt.s     $f2, $f0
/* 215E64 801DFBB4 00000000 */  nop
.L801DFBB8_ovl13:
/* 215E68 801DFBB8 4503FFF5 */  bc1tl      .L801DFB90_ovl16
/* 215E6C 801DFBBC 46020401 */   sub.s     $f16, $f0, $f2
.L801DFBC0_ovl16:
/* 215E70 801DFBC0 C42CFEF8 */  lwc1       $f12, %lo(D_801EFEF8_ovl16)($at)
/* 215E74 801DFBC4 460C003C */  c.lt.s     $f0, $f12
/* 215E78 801DFBC8 00000000 */  nop
.L801DFBCC_ovl14:
/* 215E7C 801DFBCC 4500000E */  bc1f       .L801DFC08_ovl16
/* 215E80 801DFBD0 00000000 */   nop
.L801DFBD4_ovl13:
/* 215E84 801DFBD4 46020480 */  add.s      $f18, $f0, $f2
.L801DFBD8_ovl16:
/* 215E88 801DFBD8 E4520038 */  swc1       $f18, 0x38($v0)
/* 215E8C 801DFBDC 8CAB0000 */  lw         $t3, 0x0($a1)
/* 215E90 801DFBE0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 215E94 801DFBE4 000C6880 */  sll        $t5, $t4, 2
/* 215E98 801DFBE8 006D7021 */  addu       $t6, $v1, $t5
glabel func_801DFBEC_ovl12
/* 215E9C 801DFBEC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 215EA0 801DFBF0 8DE2000C */  lw         $v0, 0xC($t7)
.L801DFBF4_ovl15:
/* 215EA4 801DFBF4 C4400038 */  lwc1       $f0, 0x38($v0)
/* 215EA8 801DFBF8 460C003C */  c.lt.s     $f0, $f12
glabel func_801DFBFC_ovl10
/* 215EAC 801DFBFC 00000000 */  nop
/* 215EB0 801DFC00 4503FFF5 */  bc1tl      .L801DFBD8_ovl16
.L801DFC04_ovl14:
/* 215EB4 801DFC04 46020480 */   add.s     $f18, $f0, $f2
.L801DFC08_ovl16:
/* 215EB8 801DFC08 3C058005 */  lui        $a1, %hi(D_8004A7C4)
.L801DFC0C_ovl13:
/* 215EBC 801DFC0C 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
glabel func_801DFC10_ovl15
/* 215EC0 801DFC10 8CB80000 */  lw         $t8, 0x0($a1)
/* 215EC4 801DFC14 3C01800F */  lui        $at, %hi(D_800E8920)
/* 215EC8 801DFC18 8F190000 */  lw         $t9, 0x0($t8)
/* 215ECC 801DFC1C 00194880 */  sll        $t1, $t9, 2
/* 215ED0 801DFC20 00290821 */  addu       $at, $at, $t1
/* 215ED4 801DFC24 0C076D00 */  jal        func_801DB400_ovl16
glabel func_801DFC28_ovl14
/* 215ED8 801DFC28 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 215EDC 801DFC2C 00002025 */  or         $a0, $zero, $zero
glabel func_801DFC30_ovl14
/* 215EE0 801DFC30 00002825 */  or         $a1, $zero, $zero
/* 215EE4 801DFC34 0C0770C5 */  jal        func_801DC314_ovl16
/* 215EE8 801DFC38 00003025 */   or        $a2, $zero, $zero
.L801DFC3C_ovl13:
/* 215EEC 801DFC3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 215EF0 801DFC40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 215EF4 801DFC44 03E00008 */  jr         $ra
/* 215EF8 801DFC48 00000000 */   nop
