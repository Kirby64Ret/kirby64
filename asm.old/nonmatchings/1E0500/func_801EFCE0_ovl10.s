glabel func_801EFCE0_ovl10
/* 1E0A50 801EFCE0 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 1E0A54 801EFCE4 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 1E0A58 801EFCE8 8CC20000 */  lw         $v0, 0x0($a2)
/* 1E0A5C 801EFCEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E0A60 801EFCF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E0A64 801EFCF4 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E0A68 801EFCF8 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0A6C 801EFCFC 3C0E800B */  lui        $t6, %hi(func_800B7790)
/* 1E0A70 801EFD00 3C01800E */  lui        $at, %hi(D_800DEF90)
.L801EFD04_ovl9:
/* 1E0A74 801EFD04 00031880 */  sll        $v1, $v1, 2
/* 1E0A78 801EFD08 00230821 */  addu       $at, $at, $v1
/* 1E0A7C 801EFD0C 25CE7790 */  addiu      $t6, $t6, %lo(func_800B7790)
/* 1E0A80 801EFD10 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
.L801EFD14_ovl9:
/* 1E0A84 801EFD14 8C580000 */  lw         $t8, 0x0($v0)
.L801EFD18_ovl9:
/* 1E0A88 801EFD18 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 1E0A8C 801EFD1C 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 1E0A90 801EFD20 0018C880 */  sll        $t9, $t8, 2
/* 1E0A94 801EFD24 00390821 */  addu       $at, $at, $t9
/* 1E0A98 801EFD28 240F0001 */  addiu      $t7, $zero, 0x1
/* 1E0A9C 801EFD2C 00A32821 */  addu       $a1, $a1, $v1
/* 1E0AA0 801EFD30 AC2F8E60 */  sw         $t7, %lo(D_800E8E60)($at)
/* 1E0AA4 801EFD34 8C430000 */  lw         $v1, 0x0($v0)
glabel D_801EFD38_ovl16
/* 1E0AA8 801EFD38 3C08800E */  lui        $t0, %hi(D_800E0D50)
/* 1E0AAC 801EFD3C 3C07800E */  lui        $a3, %hi(D_800E6A10)
/* 1E0AB0 801EFD40 00031880 */  sll        $v1, $v1, 2
/* 1E0AB4 801EFD44 01034021 */  addu       $t0, $t0, $v1
glabel D_801EFD48_ovl16
/* 1E0AB8 801EFD48 8D080D50 */  lw         $t0, %lo(D_800E0D50)($t0)
/* 1E0ABC 801EFD4C 24E76A10 */  addiu      $a3, $a3, %lo(D_800E6A10)
/* 1E0AC0 801EFD50 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 1E0AC4 801EFD54 00084880 */  sll        $t1, $t0, 2
/* 1E0AC8 801EFD58 00E95021 */  addu       $t2, $a3, $t1
glabel D_801EFD5C_ovl16
/* 1E0ACC 801EFD5C C5440000 */  lwc1       $f4, 0x0($t2)
/* 1E0AD0 801EFD60 00E35821 */  addu       $t3, $a3, $v1
glabel D_801EFD64_ovl16
/* 1E0AD4 801EFD64 3C0C801D */  lui        $t4, %hi(D_801CA04C)
/* 1E0AD8 801EFD68 258CA04C */  addiu      $t4, $t4, %lo(D_801CA04C)
glabel D_801EFD6C_ovl16
/* 1E0ADC 801EFD6C E5640000 */  swc1       $f4, 0x0($t3)
/* 1E0AE0 801EFD70 ACAC008C */  sw         $t4, 0x8C($a1)
/* 1E0AE4 801EFD74 8CCE0000 */  lw         $t6, 0x0($a2)
/* 1E0AE8 801EFD78 3C01800E */  lui        $at, %hi(D_800DF150)
glabel D_801EFD7C_ovl16
/* 1E0AEC 801EFD7C 3C0D801F */  lui        $t5, %hi(func_801EF9B0_ovl16)
glabel D_801EFD80_ovl16
/* 1E0AF0 801EFD80 8DD80000 */  lw         $t8, 0x0($t6)
glabel D_801EFD84_ovl16
/* 1E0AF4 801EFD84 25ADF9B0 */  addiu      $t5, $t5, %lo(func_801EF9B0_ovl16)
/* 1E0AF8 801EFD88 3C040001 */  lui        $a0, (0x105F9 >> 16)
/* 1E0AFC 801EFD8C 00187880 */  sll        $t7, $t8, 2
.L801EFD90_ovl9:
/* 1E0B00 801EFD90 002F0821 */  addu       $at, $at, $t7
.L801EFD94_ovl16:
/* 1E0B04 801EFD94 AC2DF150 */  sw         $t5, %lo(D_800DF150)($at)
/* 1E0B08 801EFD98 0C02A806 */  jal        func_800AA018
/* 1E0B0C 801EFD9C 348405F9 */   ori       $a0, $a0, (0x105F9 & 0xFFFF)
glabel D_801EFDA0_ovl16
/* 1E0B10 801EFDA0 3C040001 */  lui        $a0, (0x105FA >> 16)
/* 1E0B14 801EFDA4 0C02A806 */  jal        func_800AA018
/* 1E0B18 801EFDA8 348405FA */   ori       $a0, $a0, (0x105FA & 0xFFFF)
glabel func_801EFDAC_ovl9
/* 1E0B1C 801EFDAC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E0B20 801EFDB0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E0B24 801EFDB4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E0B28 801EFDB8 2404001E */  addiu      $a0, $zero, 0x1E
/* 1E0B2C 801EFDBC 8C590000 */  lw         $t9, 0x0($v0)
/* 1E0B30 801EFDC0 00194080 */  sll        $t0, $t9, 2
/* 1E0B34 801EFDC4 00280821 */  addu       $at, $at, $t0
/* 1E0B38 801EFDC8 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 1E0B3C 801EFDCC 8C490000 */  lw         $t1, 0x0($v0)
/* 1E0B40 801EFDD0 3C01801F */  lui        $at, %hi(D_801F4C58_ovl10)
/* 1E0B44 801EFDD4 C4264C58 */  lwc1       $f6, %lo(D_801F4C58_ovl10)($at)
/* 1E0B48 801EFDD8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E0B4C 801EFDDC 00095080 */  sll        $t2, $t1, 2
/* 1E0B50 801EFDE0 002A0821 */  addu       $at, $at, $t2
/* 1E0B54 801EFDE4 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 1E0B58 801EFDE8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E0B5C 801EFDEC 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
.L801EFDF0_ovl16:
/* 1E0B60 801EFDF0 44814000 */  mtc1       $at, $f8
glabel D_801EFDF4_ovl16
/* 1E0B64 801EFDF4 3C01800E */  lui        $at, %hi(D_800E3750)
glabel D_801EFDF8_ovl16
/* 1E0B68 801EFDF8 000B6080 */  sll        $t4, $t3, 2
glabel D_801EFDFC_ovl16
/* 1E0B6C 801EFDFC 002C0821 */  addu       $at, $at, $t4
jtbl_801EFE00_ovl16:
/* 1E0B70 801EFE00 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
/* 1E0B74 801EFE04 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0B78 801EFE08 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1E0B7C 801EFE0C 00031880 */  sll        $v1, $v1, 2
.L801EFE10_ovl9:
/* 1E0B80 801EFE10 00230821 */  addu       $at, $at, $v1
/* 1E0B84 801EFE14 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 1E0B88 801EFE18 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
glabel func_801EFE1C_ovl16
/* 1E0B8C 801EFE1C 44818000 */  mtc1       $at, $f16
/* 1E0B90 801EFE20 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 1E0B94 801EFE24 44812000 */  mtc1       $at, $f4
/* 1E0B98 801EFE28 46105482 */  mul.s      $f18, $f10, $f16
jtbl_801EFE2C_ovl16:
/* 1E0B9C 801EFE2C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1E0BA0 801EFE30 00230821 */  addu       $at, $at, $v1
/* 1E0BA4 801EFE34 46049183 */  div.s      $f6, $f18, $f4
/* 1E0BA8 801EFE38 0C002DAF */  jal        finish_current_thread
/* 1E0BAC 801EFE3C E4263050 */   swc1      $f6, %lo(D_800E3050)($at)
/* 1E0BB0 801EFE40 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E0BB4 801EFE44 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
glabel D_801EFE48_ovl16
/* 1E0BB8 801EFE48 3C01800F */  lui        $at, %hi(D_800E98E0)
jtbl_801EFE4C_ovl16:
/* 1E0BBC 801EFE4C 240E0001 */  addiu      $t6, $zero, 0x1
/* 1E0BC0 801EFE50 8C580000 */  lw         $t8, 0x0($v0)
/* 1E0BC4 801EFE54 44804000 */  mtc1       $zero, $f8
/* 1E0BC8 801EFE58 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 1E0BCC 801EFE5C 00186880 */  sll        $t5, $t8, 2
/* 1E0BD0 801EFE60 002D0821 */  addu       $at, $at, $t5
/* 1E0BD4 801EFE64 AC2E98E0 */  sw         $t6, %lo(D_800E98E0)($at)
/* 1E0BD8 801EFE68 8C4F0000 */  lw         $t7, 0x0($v0)
jtbl_801EFE6C_ovl16:
/* 1E0BDC 801EFE6C 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 1E0BE0 801EFE70 3C01800E */  lui        $at, %hi(D_800E3590)
/* 1E0BE4 801EFE74 000FC880 */  sll        $t9, $t7, 2
/* 1E0BE8 801EFE78 00B94021 */  addu       $t0, $a1, $t9
/* 1E0BEC 801EFE7C E5080000 */  swc1       $f8, 0x0($t0)
/* 1E0BF0 801EFE80 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0BF4 801EFE84 3C04800E */  lui        $a0, %hi(D_800E3C90)
glabel D_801EFE88_ovl16
/* 1E0BF8 801EFE88 24843C90 */  addiu      $a0, $a0, %lo(D_800E3C90)
glabel D_801EFE8C_ovl16
/* 1E0BFC 801EFE8C 00031880 */  sll        $v1, $v1, 2
glabel D_801EFE90_ovl16
/* 1E0C00 801EFE90 00A34821 */  addu       $t1, $a1, $v1
glabel D_801EFE94_ovl16
/* 1E0C04 801EFE94 C5200000 */  lwc1       $f0, 0x0($t1)
glabel D_801EFE98_ovl16
/* 1E0C08 801EFE98 00230821 */  addu       $at, $at, $v1
jtbl_801EFE9C_ovl16:
/* 1E0C0C 801EFE9C E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 1E0C10 801EFEA0 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1E0C14 801EFEA4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E0C18 801EFEA8 000A5880 */  sll        $t3, $t2, 2
/* 1E0C1C 801EFEAC 002B0821 */  addu       $at, $at, $t3
/* 1E0C20 801EFEB0 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1E0C24 801EFEB4 8C4C0000 */  lw         $t4, 0x0($v0)
glabel D_801EFEB8_ovl16
/* 1E0C28 801EFEB8 3C01800E */  lui        $at, %hi(D_800E3050)
glabel D_801EFEBC_ovl16
/* 1E0C2C 801EFEBC 000CC080 */  sll        $t8, $t4, 2
glabel D_801EFEC0_ovl16
/* 1E0C30 801EFEC0 00380821 */  addu       $at, $at, $t8
glabel D_801EFEC4_ovl16
/* 1E0C34 801EFEC4 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
glabel D_801EFEC8_ovl16
/* 1E0C38 801EFEC8 8C4E0000 */  lw         $t6, 0x0($v0)
glabel D_801EFECC_ovl16
/* 1E0C3C 801EFECC 3C01801F */  lui        $at, %hi(D_801F4C5C_ovl10)
glabel D_801EFED0_ovl16
/* 1E0C40 801EFED0 C42A4C5C */  lwc1       $f10, %lo(D_801F4C5C_ovl10)($at)
glabel D_801EFED4_ovl16
/* 1E0C44 801EFED4 000E6880 */  sll        $t5, $t6, 2
jtbl_801EFED8_ovl16:
/* 1E0C48 801EFED8 008D7821 */  addu       $t7, $a0, $t5
/* 1E0C4C 801EFEDC E5EA0000 */  swc1       $f10, 0x0($t7)
/* 1E0C50 801EFEE0 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0C54 801EFEE4 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801EFEE8_ovl9:
/* 1E0C58 801EFEE8 00031880 */  sll        $v1, $v1, 2
/* 1E0C5C 801EFEEC 0083C821 */  addu       $t9, $a0, $v1
/* 1E0C60 801EFEF0 C7300000 */  lwc1       $f16, 0x0($t9)
.L801EFEF4_ovl16:
/* 1E0C64 801EFEF4 00230821 */  addu       $at, $at, $v1
glabel D_801EFEF8_ovl16
/* 1E0C68 801EFEF8 0C02BE85 */  jal        func_800AFA14
glabel D_801EFEFC_ovl16
/* 1E0C6C 801EFEFC E4303AD0 */   swc1      $f16, %lo(D_800E3AD0)($at)
glabel D_801EFF00_ovl16
/* 1E0C70 801EFF00 8FBF0014 */  lw         $ra, 0x14($sp)
glabel D_801EFF04_ovl16
/* 1E0C74 801EFF04 27BD0018 */  addiu      $sp, $sp, 0x18
glabel D_801EFF08_ovl16
/* 1E0C78 801EFF08 03E00008 */  jr         $ra
glabel D_801EFF0C_ovl16
/* 1E0C7C 801EFF0C 00000000 */   nop
