glabel func_801F1C90_ovl9
/* 19FCE0 801F1C90 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 19FCE4 801F1C94 AFB00020 */  sw         $s0, 0x20($sp)
/* 19FCE8 801F1C98 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 19FCEC 801F1C9C 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
glabel func_801F1CA0_ovl10
/* 19FCF0 801F1CA0 8E020000 */  lw         $v0, 0x0($s0)
/* 19FCF4 801F1CA4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19FCF8 801F1CA8 AFA40070 */  sw         $a0, 0x70($sp)
/* 19FCFC 801F1CAC 8C430000 */  lw         $v1, 0x0($v0)
/* 19FD00 801F1CB0 3C07800E */  lui        $a3, %hi(D_800E1B50)
/* 19FD04 801F1CB4 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
/* 19FD08 801F1CB8 00031880 */  sll        $v1, $v1, 2
/* 19FD0C 801F1CBC 3C18800E */  lui        $t8, %hi(D_800E0D50)
/* 19FD10 801F1CC0 00E37021 */  addu       $t6, $a3, $v1
/* 19FD14 801F1CC4 0303C021 */  addu       $t8, $t8, $v1
/* 19FD18 801F1CC8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19FD1C 801F1CCC 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
/* 19FD20 801F1CD0 3C19801B */  lui        $t9, %hi(func_801ACF5C_ovl7)
/* 19FD24 801F1CD4 3C01800E */  lui        $at, %hi(D_800DF150)
/* 19FD28 801F1CD8 00230821 */  addu       $at, $at, $v1
/* 19FD2C 801F1CDC 2739CF5C */  addiu      $t9, $t9, %lo(func_801ACF5C_ovl7)
/* 19FD30 801F1CE0 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* 19FD34 801F1CE4 AFAF006C */  sw         $t7, 0x6C($sp)
/* 19FD38 801F1CE8 AFB80068 */  sw         $t8, 0x68($sp)
/* 19FD3C 801F1CEC 8C490000 */  lw         $t1, 0x0($v0)
/* 19FD40 801F1CF0 3C08801D */  lui        $t0, %hi(D_801CB4DC_ovl7)
/* 19FD44 801F1CF4 2508B4DC */  addiu      $t0, $t0, %lo(D_801CB4DC_ovl7)
/* 19FD48 801F1CF8 00095080 */  sll        $t2, $t1, 2
/* 19FD4C 801F1CFC 00EA5821 */  addu       $t3, $a3, $t2
/* 19FD50 801F1D00 8D6C0000 */  lw         $t4, 0x0($t3)
/* 19FD54 801F1D04 3C01800F */  lui        $at, %hi(D_800E8920)
/* 19FD58 801F1D08 3C040001 */  lui        $a0, (0x100A6 >> 16)
/* 19FD5C 801F1D0C AD880098 */  sw         $t0, 0x98($t4)
/* 19FD60 801F1D10 8E0D0000 */  lw         $t5, 0x0($s0)
/* 19FD64 801F1D14 348400A6 */  ori        $a0, $a0, (0x100A6 & 0xFFFF)
/* 19FD68 801F1D18 24050023 */  addiu      $a1, $zero, 0x23
/* 19FD6C 801F1D1C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 19FD70 801F1D20 24060010 */  addiu      $a2, $zero, 0x10
/* 19FD74 801F1D24 000E7880 */  sll        $t7, $t6, 2
/* 19FD78 801F1D28 002F0821 */  addu       $at, $at, $t7
/* 19FD7C 801F1D2C 0C02A619 */  jal        func_800A9864
/* 19FD80 801F1D30 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 19FD84 801F1D34 3C040001 */  lui        $a0, (0x10565 >> 16)
/* 19FD88 801F1D38 0C02A806 */  jal        func_800AA018
/* 19FD8C 801F1D3C 34840565 */   ori       $a0, $a0, (0x10565 & 0xFFFF)
/* 19FD90 801F1D40 8FA50068 */  lw         $a1, 0x68($sp)
/* 19FD94 801F1D44 3C18800E */  lui        $t8, %hi(D_800DD710)
/* 19FD98 801F1D48 2401FFFF */  addiu      $at, $zero, -0x1
/* 19FD9C 801F1D4C 00052880 */  sll        $a1, $a1, 2
/* 19FDA0 801F1D50 0305C021 */  addu       $t8, $t8, $a1
/* 19FDA4 801F1D54 8F18D710 */  lw         $t8, %lo(D_800DD710)($t8)
/* 19FDA8 801F1D58 3C09800F */  lui        $t1, %hi(D_800EBBE0)
/* 19FDAC 801F1D5C 53010008 */  beql       $t8, $at, .L801F1D80_ovl9
glabel func_801F1D60_ovl10
/* 19FDB0 801F1D60 8E0A0000 */   lw        $t2, 0x0($s0)
/* 19FDB4 801F1D64 8E190000 */  lw         $t9, 0x0($s0)
/* 19FDB8 801F1D68 01254821 */  addu       $t1, $t1, $a1
/* 19FDBC 801F1D6C 8D29BBE0 */  lw         $t1, %lo(D_800EBBE0)($t1)
/* 19FDC0 801F1D70 8F220000 */  lw         $v0, 0x0($t9)
/* 19FDC4 801F1D74 10490008 */  beq        $v0, $t1, .L801F1D98_ovl9
/* 19FDC8 801F1D78 00000000 */   nop
/* 19FDCC 801F1D7C 8E0A0000 */  lw         $t2, 0x0($s0)
.L801F1D80_ovl9:
/* 19FDD0 801F1D80 95440002 */  lhu        $a0, 0x2($t2)
/* 19FDD4 801F1D84 0C067656 */  jal        func_8019D958_ovl7
/* 19FDD8 801F1D88 AFA50034 */   sw        $a1, 0x34($sp)
/* 19FDDC 801F1D8C 8E0B0000 */  lw         $t3, 0x0($s0)
/* 19FDE0 801F1D90 8FA50034 */  lw         $a1, 0x34($sp)
/* 19FDE4 801F1D94 8D620000 */  lw         $v0, 0x0($t3)
.L801F1D98_ovl9:
/* 19FDE8 801F1D98 3C03800E */  lui        $v1, %hi(D_800E7880)
/* 19FDEC 801F1D9C 00621821 */  addu       $v1, $v1, $v0
/* 19FDF0 801F1DA0 90637880 */  lbu        $v1, %lo(D_800E7880)($v1)
/* 19FDF4 801F1DA4 10600005 */  beqz       $v1, .L801F1DBC_ovl9
/* 19FDF8 801F1DA8 24010001 */   addiu     $at, $zero, 0x1
/* 19FDFC 801F1DAC 1061006B */  beq        $v1, $at, .L801F1F5C_ovl9
/* 19FE00 801F1DB0 00025080 */   sll       $t2, $v0, 2
/* 19FE04 801F1DB4 10000117 */  b          .L801F2214_ovl9
/* 19FE08 801F1DB8 00000000 */   nop
.L801F1DBC_ovl9:
/* 19FE0C 801F1DBC 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 19FE10 801F1DC0 AFA50034 */   sw        $a1, 0x34($sp)
.L801F1DC4_ovl10:
/* 19FE14 801F1DC4 8FA8006C */  lw         $t0, 0x6C($sp)
/* 19FE18 801F1DC8 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 19FE1C 801F1DCC 44812000 */  mtc1       $at, $f4
/* 19FE20 801F1DD0 8D0C0080 */  lw         $t4, 0x80($t0)
/* 19FE24 801F1DD4 8FA50034 */  lw         $a1, 0x34($sp)
/* 19FE28 801F1DD8 3C03800F */  lui        $v1, %hi(D_800EA8A0)
/* 19FE2C 801F1DDC E5840010 */  swc1       $f4, 0x10($t4)
/* 19FE30 801F1DE0 8E020000 */  lw         $v0, 0x0($s0)
/* 19FE34 801F1DE4 2463A8A0 */  addiu      $v1, $v1, %lo(D_800EA8A0)
/* 19FE38 801F1DE8 00656821 */  addu       $t5, $v1, $a1
/* 19FE3C 801F1DEC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 19FE40 801F1DF0 C5A00000 */  lwc1       $f0, 0x0($t5)
/* 19FE44 801F1DF4 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 19FE48 801F1DF8 000E7880 */  sll        $t7, $t6, 2
/* 19FE4C 801F1DFC 006FC021 */  addu       $t8, $v1, $t7
/* 19FE50 801F1E00 E7000000 */  swc1       $f0, 0x0($t8)
/* 19FE54 801F1E04 8C590000 */  lw         $t9, 0x0($v0)
/* 19FE58 801F1E08 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 19FE5C 801F1E0C 00194880 */  sll        $t1, $t9, 2
.L801F1E10_ovl10:
/* 19FE60 801F1E10 00C95021 */  addu       $t2, $a2, $t1
/* 19FE64 801F1E14 8D4B0000 */  lw         $t3, 0x0($t2)
.L801F1E18_ovl10:
/* 19FE68 801F1E18 8D680004 */  lw         $t0, 0x4($t3)
.L801F1E1C_ovl10:
/* 19FE6C 801F1E1C E5000030 */  swc1       $f0, 0x30($t0)
/* 19FE70 801F1E20 8E0C0000 */  lw         $t4, 0x0($s0)
/* 19FE74 801F1E24 8D8D0000 */  lw         $t5, 0x0($t4)
/* 19FE78 801F1E28 000D7080 */  sll        $t6, $t5, 2
/* 19FE7C 801F1E2C 006E7821 */  addu       $t7, $v1, $t6
/* 19FE80 801F1E30 0C00B5B8 */  jal        sinf
/* 19FE84 801F1E34 C5EC0000 */   lwc1      $f12, 0x0($t7)
/* 19FE88 801F1E38 8E020000 */  lw         $v0, 0x0($s0)
/* 19FE8C 801F1E3C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 19FE90 801F1E40 44813000 */  mtc1       $at, $f6
/* 19FE94 801F1E44 8C430000 */  lw         $v1, 0x0($v0)
glabel func_801F1E48_ovl10
/* 19FE98 801F1E48 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19FE9C 801F1E4C 46060202 */  mul.s      $f8, $f0, $f6
/* 19FEA0 801F1E50 00031880 */  sll        $v1, $v1, 2
/* 19FEA4 801F1E54 00230821 */  addu       $at, $at, $v1
/* 19FEA8 801F1E58 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 19FEAC 801F1E5C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 19FEB0 801F1E60 00230821 */  addu       $at, $at, $v1
/* 19FEB4 801F1E64 460A4102 */  mul.s      $f4, $f8, $f10
/* 19FEB8 801F1E68 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 19FEBC 801F1E6C 8C580000 */  lw         $t8, 0x0($v0)
/* 19FEC0 801F1E70 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19FEC4 801F1E74 0018C880 */  sll        $t9, $t8, 2
/* 19FEC8 801F1E78 00390821 */  addu       $at, $at, $t9
/* 19FECC 801F1E7C 0C00D604 */  jal        cosf
/* 19FED0 801F1E80 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 19FED4 801F1E84 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 19FED8 801F1E88 44813000 */  mtc1       $at, $f6
/* 19FEDC 801F1E8C 8E090000 */  lw         $t1, 0x0($s0)
/* 19FEE0 801F1E90 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19FEE4 801F1E94 46060202 */  mul.s      $f8, $f0, $f6
/* 19FEE8 801F1E98 8D2A0000 */  lw         $t2, 0x0($t1)
/* 19FEEC 801F1E9C 24040001 */  addiu      $a0, $zero, 0x1
/* 19FEF0 801F1EA0 000A5880 */  sll        $t3, $t2, 2
/* 19FEF4 801F1EA4 002B0821 */  addu       $at, $at, $t3
/* 19FEF8 801F1EA8 0C002DAF */  jal        finish_current_thread
/* 19FEFC 801F1EAC E4283210 */   swc1      $f8, %lo(D_800E3210)($at)
/* 19FF00 801F1EB0 44807000 */  mtc1       $zero, $f14
/* 19FF04 801F1EB4 00002025 */  or         $a0, $zero, $zero
/* 19FF08 801F1EB8 24050005 */  addiu      $a1, $zero, 0x5
/* 19FF0C 801F1EBC 44067000 */  mfc1       $a2, $f14
/* 19FF10 801F1EC0 44077000 */  mfc1       $a3, $f14
/* 19FF14 801F1EC4 0C03F55C */  jal        func_800FD570
/* 19FF18 801F1EC8 E7AE0010 */   swc1      $f14, 0x10($sp)
/* 19FF1C 801F1ECC 8E080000 */  lw         $t0, 0x0($s0)
/* 19FF20 801F1ED0 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19FF24 801F1ED4 8D0C0000 */  lw         $t4, 0x0($t0)
/* 19FF28 801F1ED8 000C6880 */  sll        $t5, $t4, 2
/* 19FF2C 801F1EDC 002D0821 */  addu       $at, $at, $t5
/* 19FF30 801F1EE0 0C00B5B8 */  jal        sinf
/* 19FF34 801F1EE4 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 19FF38 801F1EE8 8E020000 */  lw         $v0, 0x0($s0)
/* 19FF3C 801F1EEC 3C014110 */  lui        $at, (0x41100000 >> 16)
/* 19FF40 801F1EF0 44815000 */  mtc1       $at, $f10
/* 19FF44 801F1EF4 8C430000 */  lw         $v1, 0x0($v0)
/* 19FF48 801F1EF8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19FF4C 801F1EFC 460A0102 */  mul.s      $f4, $f0, $f10
/* 19FF50 801F1F00 00031880 */  sll        $v1, $v1, 2
/* 19FF54 801F1F04 00230821 */  addu       $at, $at, $v1
/* 19FF58 801F1F08 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 19FF5C 801F1F0C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 19FF60 801F1F10 00230821 */  addu       $at, $at, $v1
/* 19FF64 801F1F14 46062202 */  mul.s      $f8, $f4, $f6
/* 19FF68 801F1F18 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 19FF6C 801F1F1C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 19FF70 801F1F20 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19FF74 801F1F24 000E7880 */  sll        $t7, $t6, 2
/* 19FF78 801F1F28 002F0821 */  addu       $at, $at, $t7
/* 19FF7C 801F1F2C 0C00D604 */  jal        cosf
/* 19FF80 801F1F30 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 19FF84 801F1F34 3C014110 */  lui        $at, (0x41100000 >> 16)
/* 19FF88 801F1F38 44815000 */  mtc1       $at, $f10
/* 19FF8C 801F1F3C 8E180000 */  lw         $t8, 0x0($s0)
/* 19FF90 801F1F40 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19FF94 801F1F44 460A0102 */  mul.s      $f4, $f0, $f10
/* 19FF98 801F1F48 8F190000 */  lw         $t9, 0x0($t8)
/* 19FF9C 801F1F4C 00194880 */  sll        $t1, $t9, 2
/* 19FFA0 801F1F50 00290821 */  addu       $at, $at, $t1
/* 19FFA4 801F1F54 100000AF */  b          .L801F2214_ovl9
/* 19FFA8 801F1F58 E4243210 */   swc1      $f4, %lo(D_800E3210)($at)
.L801F1F5C_ovl9:
/* 19FFAC 801F1F5C 3C0B800E */  lui        $t3, %hi(D_800E0D50)
/* 19FFB0 801F1F60 016A5821 */  addu       $t3, $t3, $t2
/* 19FFB4 801F1F64 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
/* 19FFB8 801F1F68 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* 19FFBC 801F1F6C 27A4004C */  addiu      $a0, $sp, 0x4C
/* 19FFC0 801F1F70 000B4080 */  sll        $t0, $t3, 2
/* 19FFC4 801F1F74 01886021 */  addu       $t4, $t4, $t0
/* 19FFC8 801F1F78 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
glabel func_801F1F7C_ovl10
/* 19FFCC 801F1F7C 0C02936E */  jal        func_800A4DB8
/* 19FFD0 801F1F80 8D850008 */   lw        $a1, 0x8($t4)
/* 19FFD4 801F1F84 8E0D0000 */  lw         $t5, 0x0($s0)
/* 19FFD8 801F1F88 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 19FFDC 801F1F8C 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 19FFE0 801F1F90 8DAE0000 */  lw         $t6, 0x0($t5)
/* 19FFE4 801F1F94 C7A6004C */  lwc1       $f6, 0x4C($sp)
/* 19FFE8 801F1F98 000E7880 */  sll        $t7, $t6, 2
/* 19FFEC 801F1F9C 00CFC021 */  addu       $t8, $a2, $t7
/* 19FFF0 801F1FA0 8F190000 */  lw         $t9, 0x0($t8)
/* 19FFF4 801F1FA4 8F290004 */  lw         $t1, 0x4($t9)
/* 19FFF8 801F1FA8 E5260030 */  swc1       $f6, 0x30($t1)
/* 19FFFC 801F1FAC 8E0A0000 */  lw         $t2, 0x0($s0)
/* 1A0000 801F1FB0 C7A80050 */  lwc1       $f8, 0x50($sp)
/* 1A0004 801F1FB4 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1A0008 801F1FB8 000B4080 */  sll        $t0, $t3, 2
/* 1A000C 801F1FBC 00C86021 */  addu       $t4, $a2, $t0
/* 1A0010 801F1FC0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1A0014 801F1FC4 8DAE0004 */  lw         $t6, 0x4($t5)
/* 1A0018 801F1FC8 E5C80034 */  swc1       $f8, 0x34($t6)
/* 1A001C 801F1FCC 8E0F0000 */  lw         $t7, 0x0($s0)
/* 1A0020 801F1FD0 C7AA0054 */  lwc1       $f10, 0x54($sp)
.L801F1FD4_ovl10:
/* 1A0024 801F1FD4 8DF80000 */  lw         $t8, 0x0($t7)
/* 1A0028 801F1FD8 0018C880 */  sll        $t9, $t8, 2
/* 1A002C 801F1FDC 00D94821 */  addu       $t1, $a2, $t9
/* 1A0030 801F1FE0 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1A0034 801F1FE4 8D4B0004 */  lw         $t3, 0x4($t2)
/* 1A0038 801F1FE8 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 1A003C 801F1FEC E56A0038 */   swc1      $f10, 0x38($t3)
.L801F1FF0_ovl10:
/* 1A0040 801F1FF0 8FA8006C */  lw         $t0, 0x6C($sp)
/* 1A0044 801F1FF4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1A0048 801F1FF8 44812000 */  mtc1       $at, $f4
/* 1A004C 801F1FFC 8D0C0080 */  lw         $t4, 0x80($t0)
/* 1A0050 801F2000 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1A0054 801F2004 3C0D800B */  lui        $t5, %hi(func_800B7514)
/* 1A0058 801F2008 E5840010 */  swc1       $f4, 0x10($t4)
/* 1A005C 801F200C 8E020000 */  lw         $v0, 0x0($s0)
/* 1A0060 801F2010 25AD7514 */  addiu      $t5, $t5, %lo(func_800B7514)
/* 1A0064 801F2014 3C09800E */  lui        $t1, %hi(D_800E0D50)
/* 1A0068 801F2018 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1A006C 801F201C 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 1A0070 801F2020 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 1A0074 801F2024 000E7880 */  sll        $t7, $t6, 2
/* 1A0078 801F2028 002F0821 */  addu       $at, $at, $t7
/* 1A007C 801F202C AC2DEF90 */  sw         $t5, %lo(D_800DEF90)($at)
/* 1A0080 801F2030 8C580000 */  lw         $t8, 0x0($v0)
/* 1A0084 801F2034 27A4004C */  addiu      $a0, $sp, 0x4C
/* 1A0088 801F2038 0018C880 */  sll        $t9, $t8, 2
/* 1A008C 801F203C 01394821 */  addu       $t1, $t1, $t9
/* 1A0090 801F2040 8D290D50 */  lw         $t1, %lo(D_800E0D50)($t1)
/* 1A0094 801F2044 00095080 */  sll        $t2, $t1, 2
/* 1A0098 801F2048 00CA5821 */  addu       $t3, $a2, $t2
/* 1A009C 801F204C 8D680000 */  lw         $t0, 0x0($t3)
/* 1A00A0 801F2050 0C0291E5 */  jal        func_800A4794
/* 1A00A4 801F2054 8D050010 */   lw        $a1, 0x10($t0)
/* 1A00A8 801F2058 8E020000 */  lw         $v0, 0x0($s0)
/* 1A00AC 801F205C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1A00B0 801F2060 C7A6004C */  lwc1       $f6, 0x4C($sp)
/* 1A00B4 801F2064 8C430000 */  lw         $v1, 0x0($v0)
/* 1A00B8 801F2068 C7AA0050 */  lwc1       $f10, 0x50($sp)
/* 1A00BC 801F206C 44800000 */  mtc1       $zero, $f0
/* 1A00C0 801F2070 00031880 */  sll        $v1, $v1, 2
glabel func_801F2074_ovl10
/* 1A00C4 801F2074 00230821 */  addu       $at, $at, $v1
/* 1A00C8 801F2078 C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 1A00CC 801F207C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1A00D0 801F2080 00230821 */  addu       $at, $at, $v1
/* 1A00D4 801F2084 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
.L801F2088_ovl10:
/* 1A00D8 801F2088 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1A00DC 801F208C 46083401 */  sub.s      $f16, $f6, $f8
.L801F2090_ovl10:
/* 1A00E0 801F2090 00230821 */  addu       $at, $at, $v1
/* 1A00E4 801F2094 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
glabel func_801F2098_ovl10
/* 1A00E8 801F2098 46045481 */  sub.s      $f18, $f10, $f4
/* 1A00EC 801F209C C7A60054 */  lwc1       $f6, 0x54($sp)
/* 1A00F0 801F20A0 4600903C */  c.lt.s     $f18, $f0
/* 1A00F4 801F20A4 46083281 */  sub.s      $f10, $f6, $f8
/* 1A00F8 801F20A8 45000004 */  bc1f       .L801F20BC_ovl9
/* 1A00FC 801F20AC E7AA005C */   swc1      $f10, 0x5C($sp)
/* 1A0100 801F20B0 46009107 */  neg.s      $f4, $f18
/* 1A0104 801F20B4 10000002 */  b          .L801F20C0_ovl9
/* 1A0108 801F20B8 E7A4003C */   swc1      $f4, 0x3C($sp)
.L801F20BC_ovl9:
/* 1A010C 801F20BC E7B2003C */  swc1       $f18, 0x3C($sp)
.L801F20C0_ovl9:
/* 1A0110 801F20C0 4600803C */  c.lt.s     $f16, $f0
/* 1A0114 801F20C4 3C018022 */  lui        $at, %hi(D_8021D8D4_ovl9)
/* 1A0118 801F20C8 45020005 */  bc1fl      .L801F20E0_ovl9
/* 1A011C 801F20CC E7B00040 */   swc1      $f16, 0x40($sp)
/* 1A0120 801F20D0 46008187 */  neg.s      $f6, $f16
/* 1A0124 801F20D4 10000002 */  b          .L801F20E0_ovl9
/* 1A0128 801F20D8 E7A60040 */   swc1      $f6, 0x40($sp)
/* 1A012C 801F20DC E7B00040 */  swc1       $f16, 0x40($sp)
.L801F20E0_ovl9:
/* 1A0130 801F20E0 C7A8005C */  lwc1       $f8, 0x5C($sp)
/* 1A0134 801F20E4 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 1A0138 801F20E8 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* 1A013C 801F20EC 4600403C */  c.lt.s     $f8, $f0
/* 1A0140 801F20F0 C7A0005C */  lwc1       $f0, 0x5C($sp)
/* 1A0144 801F20F4 46045180 */  add.s      $f6, $f10, $f4
/* 1A0148 801F20F8 45000003 */  bc1f       .L801F2108_ovl9
/* 1A014C 801F20FC 00000000 */   nop
/* 1A0150 801F2100 10000001 */  b          .L801F2108_ovl9
/* 1A0154 801F2104 46004007 */   neg.s     $f0, $f8
.L801F2108_ovl9:
/* 1A0158 801F2108 46060300 */  add.s      $f12, $f0, $f6
/* 1A015C 801F210C 44807000 */  mtc1       $zero, $f14
/* 1A0160 801F2110 00000000 */  nop
/* 1A0164 801F2114 460C7032 */  c.eq.s     $f14, $f12
/* 1A0168 801F2118 00000000 */  nop
/* 1A016C 801F211C 45020003 */  bc1fl      .L801F212C_ovl9
/* 1A0170 801F2120 460C8083 */   div.s     $f2, $f16, $f12
/* 1A0174 801F2124 C42CD8D4 */  lwc1       $f12, %lo(D_8021D8D4_ovl9)($at)
/* 1A0178 801F2128 460C8083 */  div.s      $f2, $f16, $f12
.L801F212C_ovl9:
/* 1A017C 801F212C 3C014210 */  lui        $at, (0x42100000 >> 16)
/* 1A0180 801F2130 44810000 */  mtc1       $at, $f0
/* 1A0184 801F2134 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1A0188 801F2138 00230821 */  addu       $at, $at, $v1
/* 1A018C 801F213C 24040001 */  addiu      $a0, $zero, 0x1
/* 1A0190 801F2140 460C9283 */  div.s      $f10, $f18, $f12
/* 1A0194 801F2144 46001202 */  mul.s      $f8, $f2, $f0
/* 1A0198 801F2148 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
/* 1A019C 801F214C C7A8005C */  lwc1       $f8, 0x5C($sp)
/* 1A01A0 801F2150 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1A01A4 801F2154 E7AA002C */  swc1       $f10, 0x2C($sp)
/* 1A01A8 801F2158 460C4283 */  div.s      $f10, $f8, $f12
/* 1A01AC 801F215C C7A4002C */  lwc1       $f4, 0x2C($sp)
/* 1A01B0 801F2160 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1A01B4 801F2164 46002182 */  mul.s      $f6, $f4, $f0
/* 1A01B8 801F2168 000C7080 */  sll        $t6, $t4, 2
/* 1A01BC 801F216C 002E0821 */  addu       $at, $at, $t6
/* 1A01C0 801F2170 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 1A01C4 801F2174 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 1A01C8 801F2178 46005102 */  mul.s      $f4, $f10, $f0
/* 1A01CC 801F217C E7AA0028 */  swc1       $f10, 0x28($sp)
/* 1A01D0 801F2180 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1A01D4 801F2184 E7A20030 */  swc1       $f2, 0x30($sp)
/* 1A01D8 801F2188 000D7880 */  sll        $t7, $t5, 2
/* 1A01DC 801F218C 002F0821 */  addu       $at, $at, $t7
/* 1A01E0 801F2190 0C002DAF */  jal        finish_current_thread
/* 1A01E4 801F2194 E42433D0 */   swc1      $f4, %lo(D_800E33D0)($at)
/* 1A01E8 801F2198 44807000 */  mtc1       $zero, $f14
/* 1A01EC 801F219C 00002025 */  or         $a0, $zero, $zero
/* 1A01F0 801F21A0 24050005 */  addiu      $a1, $zero, 0x5
/* 1A01F4 801F21A4 44067000 */  mfc1       $a2, $f14
/* 1A01F8 801F21A8 44077000 */  mfc1       $a3, $f14
/* 1A01FC 801F21AC 0C03F55C */  jal        func_800FD570
/* 1A0200 801F21B0 E7AE0010 */   swc1      $f14, 0x10($sp)
/* 1A0204 801F21B4 3C014138 */  lui        $at, (0x41380000 >> 16)
/* 1A0208 801F21B8 44810000 */  mtc1       $at, $f0
/* 1A020C 801F21BC C7A60030 */  lwc1       $f6, 0x30($sp)
/* 1A0210 801F21C0 8E020000 */  lw         $v0, 0x0($s0)
/* 1A0214 801F21C4 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* 1A0218 801F21C8 46003202 */  mul.s      $f8, $f6, $f0
/* 1A021C 801F21CC 8C580000 */  lw         $t8, 0x0($v0)
/* 1A0220 801F21D0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1A0224 801F21D4 46005102 */  mul.s      $f4, $f10, $f0
/* 1A0228 801F21D8 0018C880 */  sll        $t9, $t8, 2
/* 1A022C 801F21DC 00390821 */  addu       $at, $at, $t9
/* 1A0230 801F21E0 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 1A0234 801F21E4 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
/* 1A0238 801F21E8 8C490000 */  lw         $t1, 0x0($v0)
/* 1A023C 801F21EC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1A0240 801F21F0 46003202 */  mul.s      $f8, $f6, $f0
/* 1A0244 801F21F4 00095080 */  sll        $t2, $t1, 2
/* 1A0248 801F21F8 002A0821 */  addu       $at, $at, $t2
/* 1A024C 801F21FC E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 1A0250 801F2200 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1A0254 801F2204 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 1A0258 801F2208 000B4080 */  sll        $t0, $t3, 2
/* 1A025C 801F220C 00280821 */  addu       $at, $at, $t0
/* 1A0260 801F2210 E42833D0 */  swc1       $f8, %lo(D_800E33D0)($at)
.L801F2214_ovl9:
/* 1A0264 801F2214 0C002DAF */  jal        finish_current_thread
/* 1A0268 801F2218 2404003C */   addiu     $a0, $zero, 0x3C
/* 1A026C 801F221C 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 1A0270 801F2220 8FA40070 */   lw        $a0, 0x70($sp)
/* 1A0274 801F2224 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A0278 801F2228 8FB00020 */  lw         $s0, 0x20($sp)
/* 1A027C 801F222C 27BD0070 */  addiu      $sp, $sp, 0x70
/* 1A0280 801F2230 03E00008 */  jr         $ra
/* 1A0284 801F2234 00000000 */   nop
