glabel func_801E1E24_ovl9
/* 18FE74 801E1E24 27BDFF80 */  addiu      $sp, $sp, -0x80
.L801E1E28_ovl16:
/* 18FE78 801E1E28 AFB00044 */  sw         $s0, 0x44($sp)
/* 18FE7C 801E1E2C 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 18FE80 801E1E30 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 18FE84 801E1E34 8E020000 */  lw         $v0, 0x0($s0)
glabel func_801E1E38_ovl12
/* 18FE88 801E1E38 AFBF0064 */  sw         $ra, 0x64($sp)
.L801E1E3C_ovl13:
/* 18FE8C 801E1E3C AFB70060 */  sw         $s7, 0x60($sp)
.L801E1E40_ovl13:
/* 18FE90 801E1E40 AFB6005C */  sw         $s6, 0x5C($sp)
.L801E1E44_ovl13:
/* 18FE94 801E1E44 AFB50058 */  sw         $s5, 0x58($sp)
/* 18FE98 801E1E48 AFB40054 */  sw         $s4, 0x54($sp)
/* 18FE9C 801E1E4C AFB30050 */  sw         $s3, 0x50($sp)
/* 18FEA0 801E1E50 AFB2004C */  sw         $s2, 0x4C($sp)
/* 18FEA4 801E1E54 AFB10048 */  sw         $s1, 0x48($sp)
/* 18FEA8 801E1E58 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 18FEAC 801E1E5C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 18FEB0 801E1E60 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 18FEB4 801E1E64 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 18FEB8 801E1E68 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 18FEBC 801E1E6C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 18FEC0 801E1E70 AFA40080 */  sw         $a0, 0x80($sp)
.L801E1E74_ovl16:
/* 18FEC4 801E1E74 8C4F0000 */  lw         $t7, 0x0($v0)
/* 18FEC8 801E1E78 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 18FECC 801E1E7C 240E0002 */  addiu      $t6, $zero, 0x2
/* 18FED0 801E1E80 000FC080 */  sll        $t8, $t7, 2
glabel func_801E1E84_ovl16
/* 18FED4 801E1E84 00380821 */  addu       $at, $at, $t8
glabel func_801E1E88_ovl15
/* 18FED8 801E1E88 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801E1E8C_ovl12:
/* 18FEDC 801E1E8C 8C590000 */  lw         $t9, 0x0($v0)
.L801E1E90_ovl17:
/* 18FEE0 801E1E90 3C04801D */  lui        $a0, %hi(D_801CA9F8_ovl7)
/* 18FEE4 801E1E94 3C01800E */  lui        $at, %hi(D_800E0490)
.L801E1E98_ovl14:
/* 18FEE8 801E1E98 00194080 */  sll        $t0, $t9, 2
/* 18FEEC 801E1E9C 2484A9F8 */  addiu      $a0, $a0, %lo(D_801CA9F8_ovl7)
/* 18FEF0 801E1EA0 00280821 */  addu       $at, $at, $t0
/* 18FEF4 801E1EA4 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 18FEF8 801E1EA8 AC240490 */   sw        $a0, %lo(D_800E0490)($at)
/* 18FEFC 801E1EAC 8E0A0000 */  lw         $t2, 0x0($s0)
/* 18FF00 801E1EB0 3C0D800E */  lui        $t5, %hi(D_800E1B50)
/* 18FF04 801E1EB4 3C09801D */  lui        $t1, %hi(D_801CBA10)
.L801E1EB8_ovl17:
/* 18FF08 801E1EB8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 18FF0C 801E1EBC 2529BA10 */  addiu      $t1, $t1, %lo(D_801CBA10)
.L801E1EC0_ovl13:
/* 18FF10 801E1EC0 3C014040 */  lui        $at, (0x40400000 >> 16)
.L801E1EC4_ovl12:
/* 18FF14 801E1EC4 000B6080 */  sll        $t4, $t3, 2
/* 18FF18 801E1EC8 01AC6821 */  addu       $t5, $t5, $t4
/* 18FF1C 801E1ECC 8DAD1B50 */  lw         $t5, %lo(D_800E1B50)($t5)
/* 18FF20 801E1ED0 4481E000 */  mtc1       $at, $f28
/* 18FF24 801E1ED4 3C01800E */  lui        $at, %hi(D_800E6850)
glabel func_801E1ED8_ovl13
/* 18FF28 801E1ED8 ADA90098 */  sw         $t1, 0x98($t5)
/* 18FF2C 801E1EDC 8E020000 */  lw         $v0, 0x0($s0)
.L801E1EE0_ovl12:
/* 18FF30 801E1EE0 3C040001 */  lui        $a0, (0x101AF >> 16)
/* 18FF34 801E1EE4 348401AF */  ori        $a0, $a0, (0x101AF & 0xFFFF)
/* 18FF38 801E1EE8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 18FF3C 801E1EEC 000F7080 */  sll        $t6, $t7, 2
.L801E1EF0_ovl14:
/* 18FF40 801E1EF0 002E0821 */  addu       $at, $at, $t6
/* 18FF44 801E1EF4 E43C6850 */  swc1       $f28, %lo(D_800E6850)($at)
/* 18FF48 801E1EF8 8C580000 */  lw         $t8, 0x0($v0)
/* 18FF4C 801E1EFC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 18FF50 801E1F00 0018C880 */  sll        $t9, $t8, 2
.L801E1F04_ovl10:
/* 18FF54 801E1F04 00390821 */  addu       $at, $at, $t9
/* 18FF58 801E1F08 0C02A7A9 */  jal        func_800A9EA4
/* 18FF5C 801E1F0C E43C3C90 */   swc1      $f28, %lo(D_800E3C90)($at)
.L801E1F10_ovl12:
/* 18FF60 801E1F10 0C006291 */  jal        random_soft_s32_range
/* 18FF64 801E1F14 2404000A */   addiu     $a0, $zero, 0xA
/* 18FF68 801E1F18 28410003 */  slti       $at, $v0, 0x3
glabel func_801E1F1C_ovl13
/* 18FF6C 801E1F1C 14200014 */  bnez       $at, .L801E1F70_ovl9
/* 18FF70 801E1F20 00409025 */   or        $s2, $v0, $zero
/* 18FF74 801E1F24 8E0A0000 */  lw         $t2, 0x0($s0)
/* 18FF78 801E1F28 2448FFFD */  addiu      $t0, $v0, -0x3
.L801E1F2C_ovl15:
/* 18FF7C 801E1F2C AFA8006C */  sw         $t0, 0x6C($sp)
/* 18FF80 801E1F30 24120003 */  addiu      $s2, $zero, 0x3
glabel func_801E1F34_ovl15
/* 18FF84 801E1F34 00002825 */  or         $a1, $zero, $zero
/* 18FF88 801E1F38 0C03E60A */  jal        func_800F9828
.L801E1F3C_ovl14:
/* 18FF8C 801E1F3C 8D440000 */   lw        $a0, 0x0($t2)
glabel func_801E1F40_ovl16
/* 18FF90 801E1F40 8E0B0000 */  lw         $t3, 0x0($s0)
/* 18FF94 801E1F44 3C11800E */  lui        $s1, %hi(gEntitiesNextPosYArray)
.L801E1F48_ovl12:
/* 18FF98 801E1F48 26312790 */  addiu      $s1, $s1, %lo(gEntitiesNextPosYArray)
/* 18FF9C 801E1F4C 8D6C0000 */  lw         $t4, 0x0($t3)
/* 18FFA0 801E1F50 C6240000 */  lwc1       $f4, 0x0($s1)
/* 18FFA4 801E1F54 46000306 */  mov.s      $f12, $f0
/* 18FFA8 801E1F58 000C4880 */  sll        $t1, $t4, 2
/* 18FFAC 801E1F5C 02296821 */  addu       $t5, $s1, $t1
/* 18FFB0 801E1F60 C5A60000 */  lwc1       $f6, 0x0($t5)
.L801E1F64_ovl12:
/* 18FFB4 801E1F64 0C0061C3 */  jal        atan2f
/* 18FFB8 801E1F68 46062381 */   sub.s     $f14, $f4, $f6
/* 18FFBC 801E1F6C E7A00078 */  swc1       $f0, 0x78($sp)
.L801E1F70_ovl9:
/* 18FFC0 801E1F70 8E020000 */  lw         $v0, 0x0($s0)
.L801E1F74_ovl12:
/* 18FFC4 801E1F74 3C17800F */  lui        $s7, %hi(D_800E98E0)
.L801E1F78_ovl13:
/* 18FFC8 801E1F78 26F798E0 */  addiu      $s7, $s7, %lo(D_800E98E0)
/* 18FFCC 801E1F7C 8C4F0000 */  lw         $t7, 0x0($v0)
.L801E1F80_ovl14:
/* 18FFD0 801E1F80 3C11800E */  lui        $s1, %hi(gEntitiesNextPosYArray)
/* 18FFD4 801E1F84 3C16800E */  lui        $s6, %hi(D_800E3210)
/* 18FFD8 801E1F88 000F7080 */  sll        $t6, $t7, 2
/* 18FFDC 801E1F8C 02EE2021 */  addu       $a0, $s7, $t6
.L801E1F90_ovl17:
/* 18FFE0 801E1F90 8C980000 */  lw         $t8, 0x0($a0)
.L801E1F94_ovl12:
/* 18FFE4 801E1F94 3C15800E */  lui        $s5, %hi(D_800E64D0)
/* 18FFE8 801E1F98 26312790 */  addiu      $s1, $s1, %lo(gEntitiesNextPosYArray)
/* 18FFEC 801E1F9C 2719FFFF */  addiu      $t9, $t8, -0x1
/* 18FFF0 801E1FA0 AC990000 */  sw         $t9, 0x0($a0)
/* 18FFF4 801E1FA4 8C460000 */  lw         $a2, 0x0($v0)
/* 18FFF8 801E1FA8 C7B40078 */  lwc1       $f20, 0x78($sp)
.L801E1FAC_ovl16:
/* 18FFFC 801E1FAC 26B564D0 */  addiu      $s5, $s5, %lo(D_800E64D0)
/* 190000 801E1FB0 00061880 */  sll        $v1, $a2, 2
/* 190004 801E1FB4 02E34021 */  addu       $t0, $s7, $v1
/* 190008 801E1FB8 8D0A0000 */  lw         $t2, 0x0($t0)
/* 19000C 801E1FBC 26D63210 */  addiu      $s6, $s6, %lo(D_800E3210)
/* 190010 801E1FC0 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
.L801E1FC4_ovl14:
/* 190014 801E1FC4 054000B8 */  bltz       $t2, .L801E22A8_ovl9
/* 190018 801E1FC8 3C14800E */   lui       $s4, %hi(D_800E3750)
.L801E1FCC_ovl12:
/* 19001C 801E1FCC 4481F000 */  mtc1       $at, $f30
/* 190020 801E1FD0 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 190024 801E1FD4 4481D000 */  mtc1       $at, $f26
glabel func_801E1FD8_ovl10
/* 190028 801E1FD8 3C018022 */  lui        $at, %hi(D_8021CFB8_ovl9)
.L801E1FDC_ovl13:
/* 19002C 801E1FDC 3C13800E */  lui        $s3, %hi(D_800E6690)
/* 190030 801E1FE0 4480C000 */  mtc1       $zero, $f24
/* 190034 801E1FE4 26736690 */  addiu      $s3, $s3, %lo(D_800E6690)
.L801E1FE8_ovl14:
/* 190038 801E1FE8 C436CFB8 */  lwc1       $f22, %lo(D_8021CFB8_ovl9)($at)
/* 19003C 801E1FEC 26943750 */  addiu      $s4, $s4, %lo(D_800E3750)
.L801E1FF0_ovl9:
/* 190040 801E1FF0 1240000C */  beqz       $s2, .L801E2024_ovl9
/* 190044 801E1FF4 00C02025 */   or        $a0, $a2, $zero
.L801E1FF8_ovl13:
/* 190048 801E1FF8 24010001 */  addiu      $at, $zero, 0x1
/* 19004C 801E1FFC 12410029 */  beq        $s2, $at, .L801E20A4_ovl9
/* 190050 801E2000 00C02025 */   or        $a0, $a2, $zero
/* 190054 801E2004 24010002 */  addiu      $at, $zero, 0x2
/* 190058 801E2008 12410043 */  beq        $s2, $at, .L801E2118_ovl9
.L801E200C_ovl13:
/* 19005C 801E200C 00C02025 */   or        $a0, $a2, $zero
.L801E2010_ovl14:
/* 190060 801E2010 24010003 */  addiu      $at, $zero, 0x3
/* 190064 801E2014 5241005E */  beql       $s2, $at, .L801E2190_ovl12
glabel func_801E2018_ovl14
/* 190068 801E2018 4406C000 */   mfc1      $a2, $f24
/* 19006C 801E201C 10000093 */  b          .L801E226C_ovl9
/* 190070 801E2020 00000000 */   nop
.L801E2024_ovl9:
/* 190074 801E2024 0C03E60A */  jal        func_800F9828
glabel func_801E2028_ovl14
/* 190078 801E2028 00002825 */   or        $a1, $zero, $zero
/* 19007C 801E202C 4600C03C */  c.lt.s     $f24, $f0
/* 190080 801E2030 00000000 */  nop
glabel func_801E2034_ovl16
/* 190084 801E2034 45020008 */  bc1fl      .L801E2058_ovl9
/* 190088 801E2038 8E020000 */   lw        $v0, 0x0($s0)
/* 19008C 801E203C 8E020000 */  lw         $v0, 0x0($s0)
/* 190090 801E2040 8C4B0000 */  lw         $t3, 0x0($v0)
/* 190094 801E2044 000B6080 */  sll        $t4, $t3, 2
/* 190098 801E2048 026C4821 */  addu       $t1, $s3, $t4
.L801E204C_ovl17:
/* 19009C 801E204C 10000006 */  b          .L801E2068_ovl9
/* 1900A0 801E2050 E53A0000 */   swc1      $f26, 0x0($t1)
/* 1900A4 801E2054 8E020000 */  lw         $v0, 0x0($s0)
.L801E2058_ovl9:
/* 1900A8 801E2058 8C4D0000 */  lw         $t5, 0x0($v0)
.L801E205C_ovl10:
/* 1900AC 801E205C 000D7880 */  sll        $t7, $t5, 2
.L801E2060_ovl17:
/* 1900B0 801E2060 026F7021 */  addu       $t6, $s3, $t7
/* 1900B4 801E2064 E5DE0000 */  swc1       $f30, 0x0($t6)
.L801E2068_ovl9:
/* 1900B8 801E2068 8C430000 */  lw         $v1, 0x0($v0)
glabel func_801E206C_ovl10
/* 1900BC 801E206C C62A0000 */  lwc1       $f10, 0x0($s1)
/* 1900C0 801E2070 00031880 */  sll        $v1, $v1, 2
.L801E2074_ovl14:
/* 1900C4 801E2074 0223C021 */  addu       $t8, $s1, $v1
/* 1900C8 801E2078 C7080000 */  lwc1       $f8, 0x0($t8)
/* 1900CC 801E207C 02834021 */  addu       $t0, $s4, $v1
/* 1900D0 801E2080 0283C821 */  addu       $t9, $s4, $v1
/* 1900D4 801E2084 460A403C */  c.lt.s     $f8, $f10
/* 1900D8 801E2088 00000000 */  nop
glabel func_801E208C_ovl14
/* 1900DC 801E208C 45000003 */  bc1f       .L801E209C_ovl9
/* 1900E0 801E2090 00000000 */   nop
/* 1900E4 801E2094 10000075 */  b          .L801E226C_ovl9
/* 1900E8 801E2098 E73A0000 */   swc1      $f26, 0x0($t9)
.L801E209C_ovl9:
/* 1900EC 801E209C 10000073 */  b          .L801E226C_ovl9
/* 1900F0 801E20A0 E51E0000 */   swc1      $f30, 0x0($t0)
.L801E20A4_ovl9:
/* 1900F4 801E20A4 0C03E60A */  jal        func_800F9828
/* 1900F8 801E20A8 00002825 */   or        $a1, $zero, $zero
/* 1900FC 801E20AC 8E0A0000 */  lw         $t2, 0x0($s0)
/* 190100 801E20B0 C6300000 */  lwc1       $f16, 0x0($s1)
.L801E20B4_ovl15:
/* 190104 801E20B4 46000306 */  mov.s      $f12, $f0
/* 190108 801E20B8 8D4B0000 */  lw         $t3, 0x0($t2)
.L801E20BC_ovl17:
/* 19010C 801E20BC 000B6080 */  sll        $t4, $t3, 2
/* 190110 801E20C0 022C4821 */  addu       $t1, $s1, $t4
/* 190114 801E20C4 C5320000 */  lwc1       $f18, 0x0($t1)
.L801E20C8_ovl16:
/* 190118 801E20C8 0C0061C3 */  jal        atan2f
/* 19011C 801E20CC 46128381 */   sub.s     $f14, $f16, $f18
.L801E20D0_ovl17:
/* 190120 801E20D0 46000506 */  mov.s      $f20, $f0
/* 190124 801E20D4 0C00B5B8 */  jal        sinf
glabel func_801E20D8_ovl16
/* 190128 801E20D8 46000306 */   mov.s     $f12, $f0
.L801E20DC_ovl15:
/* 19012C 801E20DC 8E0D0000 */  lw         $t5, 0x0($s0)
/* 190130 801E20E0 461A0102 */  mul.s      $f4, $f0, $f26
/* 190134 801E20E4 4600A306 */  mov.s      $f12, $f20
/* 190138 801E20E8 8DAF0000 */  lw         $t7, 0x0($t5)
.L801E20EC_ovl15:
/* 19013C 801E20EC 000F7080 */  sll        $t6, $t7, 2
/* 190140 801E20F0 026EC021 */  addu       $t8, $s3, $t6
/* 190144 801E20F4 0C00D604 */  jal        cosf
/* 190148 801E20F8 E7040000 */   swc1      $f4, 0x0($t8)
/* 19014C 801E20FC 8E190000 */  lw         $t9, 0x0($s0)
/* 190150 801E2100 461A0182 */  mul.s      $f6, $f0, $f26
/* 190154 801E2104 8F280000 */  lw         $t0, 0x0($t9)
.L801E2108_ovl12:
/* 190158 801E2108 00085080 */  sll        $t2, $t0, 2
/* 19015C 801E210C 028A5821 */  addu       $t3, $s4, $t2
.L801E2110_ovl15:
/* 190160 801E2110 10000056 */  b          .L801E226C_ovl9
/* 190164 801E2114 E5660000 */   swc1      $f6, 0x0($t3)
.L801E2118_ovl9:
/* 190168 801E2118 0C03E60A */  jal        func_800F9828
/* 19016C 801E211C 00002825 */   or        $a1, $zero, $zero
/* 190170 801E2120 8E0C0000 */  lw         $t4, 0x0($s0)
/* 190174 801E2124 C6280000 */  lwc1       $f8, 0x0($s1)
/* 190178 801E2128 46000306 */  mov.s      $f12, $f0
.L801E212C_ovl17:
/* 19017C 801E212C 8D890000 */  lw         $t1, 0x0($t4)
/* 190180 801E2130 00096880 */  sll        $t5, $t1, 2
.L801E2134_ovl16:
/* 190184 801E2134 022D7821 */  addu       $t7, $s1, $t5
/* 190188 801E2138 C5EA0000 */  lwc1       $f10, 0x0($t7)
/* 19018C 801E213C 0C0061C3 */  jal        atan2f
.L801E2140_ovl17:
/* 190190 801E2140 460A4381 */   sub.s     $f14, $f8, $f10
/* 190194 801E2144 46000506 */  mov.s      $f20, $f0
/* 190198 801E2148 0C00B5B8 */  jal        sinf
/* 19019C 801E214C 46000306 */   mov.s     $f12, $f0
/* 1901A0 801E2150 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1901A4 801E2154 461C0402 */  mul.s      $f16, $f0, $f28
/* 1901A8 801E2158 4600A306 */  mov.s      $f12, $f20
/* 1901AC 801E215C 8DD80000 */  lw         $t8, 0x0($t6)
/* 1901B0 801E2160 0018C880 */  sll        $t9, $t8, 2
.L801E2164_ovl12:
/* 1901B4 801E2164 02B94021 */  addu       $t0, $s5, $t9
/* 1901B8 801E2168 0C00D604 */  jal        cosf
/* 1901BC 801E216C E5100000 */   swc1      $f16, 0x0($t0)
glabel func_801E2170_ovl17
/* 1901C0 801E2170 8E0A0000 */  lw         $t2, 0x0($s0)
/* 1901C4 801E2174 461C0482 */  mul.s      $f18, $f0, $f28
/* 1901C8 801E2178 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1901CC 801E217C 000B6080 */  sll        $t4, $t3, 2
/* 1901D0 801E2180 02CC4821 */  addu       $t1, $s6, $t4
/* 1901D4 801E2184 10000039 */  b          .L801E226C_ovl9
/* 1901D8 801E2188 E5320000 */   swc1      $f18, 0x0($t1)
/* 1901DC 801E218C 4406C000 */  mfc1       $a2, $f24
.L801E2190_ovl12:
/* 1901E0 801E2190 4600A306 */  mov.s      $f12, $f20
.L801E2194_ovl14:
/* 1901E4 801E2194 0C066AB4 */  jal        func_8019AAD0_ovl7
/* 1901E8 801E2198 4600C386 */   mov.s     $f14, $f24
/* 1901EC 801E219C 46180032 */  c.eq.s     $f0, $f24
/* 1901F0 801E21A0 00000000 */  nop
/* 1901F4 801E21A4 45010021 */  bc1t       .L801E222C_ovl14
/* 1901F8 801E21A8 00000000 */   nop
/* 1901FC 801E21AC 44802000 */  mtc1       $zero, $f4
/* 190200 801E21B0 8FAD006C */  lw         $t5, 0x6C($sp)
/* 190204 801E21B4 3C0E8022 */  lui        $t6, %hi(D_8021BE60_ovl9)
/* 190208 801E21B8 4600203C */  c.lt.s     $f4, $f0
/* 19020C 801E21BC 25CEBE60 */  addiu      $t6, $t6, %lo(D_8021BE60_ovl9)
/* 190210 801E21C0 000D7880 */  sll        $t7, $t5, 2
/* 190214 801E21C4 01EE1021 */  addu       $v0, $t7, $t6
.L801E21C8_ovl10:
/* 190218 801E21C8 45020004 */  bc1fl      .L801E21DC_ovl9
/* 19021C 801E21CC C4400000 */   lwc1      $f0, 0x0($v0)
/* 190220 801E21D0 10000003 */  b          .L801E21E0_ovl9
.L801E21D4_ovl10:
/* 190224 801E21D4 C4400000 */   lwc1      $f0, 0x0($v0)
glabel func_801E21D8_ovl12
/* 190228 801E21D8 C4400000 */  lwc1       $f0, 0x0($v0)
.L801E21DC_ovl9:
/* 19022C 801E21DC 46000007 */  neg.s      $f0, $f0
.L801E21E0_ovl9:
/* 190230 801E21E0 4600A500 */  add.s      $f20, $f20, $f0
/* 190234 801E21E4 4614B03E */  c.le.s     $f22, $f20
/* 190238 801E21E8 00000000 */  nop
/* 19023C 801E21EC 45020007 */  bc1fl      func_801E220C_ovl17
/* 190240 801E21F0 4618A03C */   c.lt.s    $f20, $f24
.L801E21F4_ovl17:
/* 190244 801E21F4 4616A501 */  sub.s      $f20, $f20, $f22
.L801E21F8_ovl9:
/* 190248 801E21F8 4614B03E */  c.le.s     $f22, $f20
/* 19024C 801E21FC 00000000 */  nop
.L801E2200_ovl17:
/* 190250 801E2200 4503FFFD */  bc1tl      .L801E21F8_ovl9
/* 190254 801E2204 4616A501 */   sub.s     $f20, $f20, $f22
/* 190258 801E2208 4618A03C */  c.lt.s     $f20, $f24
glabel func_801E220C_ovl17
/* 19025C 801E220C 00000000 */  nop
/* 190260 801E2210 45000006 */  bc1f       .L801E222C_ovl14
.L801E2214_ovl13:
/* 190264 801E2214 00000000 */   nop
/* 190268 801E2218 4616A500 */  add.s      $f20, $f20, $f22
.L801E221C_ovl9:
/* 19026C 801E221C 4618A03C */  c.lt.s     $f20, $f24
/* 190270 801E2220 00000000 */  nop
/* 190274 801E2224 4503FFFD */  bc1tl      .L801E221C_ovl9
/* 190278 801E2228 4616A500 */   add.s     $f20, $f20, $f22
.L801E222C_ovl14:
/* 19027C 801E222C 0C00B5B8 */  jal        sinf
/* 190280 801E2230 4600A306 */   mov.s     $f12, $f20
/* 190284 801E2234 8E180000 */  lw         $t8, 0x0($s0)
/* 190288 801E2238 461C0182 */  mul.s      $f6, $f0, $f28
/* 19028C 801E223C 4600A306 */  mov.s      $f12, $f20
/* 190290 801E2240 8F190000 */  lw         $t9, 0x0($t8)
/* 190294 801E2244 00194080 */  sll        $t0, $t9, 2
/* 190298 801E2248 02A85021 */  addu       $t2, $s5, $t0
/* 19029C 801E224C 0C00D604 */  jal        cosf
/* 1902A0 801E2250 E5460000 */   swc1      $f6, 0x0($t2)
/* 1902A4 801E2254 8E0B0000 */  lw         $t3, 0x0($s0)
.L801E2258_ovl17:
/* 1902A8 801E2258 461C0202 */  mul.s      $f8, $f0, $f28
/* 1902AC 801E225C 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1902B0 801E2260 000C4880 */  sll        $t1, $t4, 2
.L801E2264_ovl12:
/* 1902B4 801E2264 02C96821 */  addu       $t5, $s6, $t1
/* 1902B8 801E2268 E5A80000 */  swc1       $f8, 0x0($t5)
.L801E226C_ovl9:
/* 1902BC 801E226C 0C002DAF */  jal        finish_current_thread
/* 1902C0 801E2270 24040001 */   addiu     $a0, $zero, 0x1
/* 1902C4 801E2274 8E020000 */  lw         $v0, 0x0($s0)
/* 1902C8 801E2278 8C4F0000 */  lw         $t7, 0x0($v0)
.L801E227C_ovl15:
/* 1902CC 801E227C 000F7080 */  sll        $t6, $t7, 2
/* 1902D0 801E2280 02EE2021 */  addu       $a0, $s7, $t6
/* 1902D4 801E2284 8C980000 */  lw         $t8, 0x0($a0)
/* 1902D8 801E2288 2719FFFF */  addiu      $t9, $t8, -0x1
.L801E228C_ovl12:
/* 1902DC 801E228C AC990000 */  sw         $t9, 0x0($a0)
/* 1902E0 801E2290 8C460000 */  lw         $a2, 0x0($v0)
.L801E2294_ovl10:
/* 1902E4 801E2294 00061880 */  sll        $v1, $a2, 2
glabel func_801E2298_ovl12
/* 1902E8 801E2298 02E34021 */  addu       $t0, $s7, $v1
.L801E229C_ovl17:
/* 1902EC 801E229C 8D0A0000 */  lw         $t2, 0x0($t0)
/* 1902F0 801E22A0 0541FF53 */  bgez       $t2, .L801E1FF0_ovl9
/* 1902F4 801E22A4 00000000 */   nop
.L801E22A8_ovl9:
/* 1902F8 801E22A8 8FBF0064 */  lw         $ra, 0x64($sp)
/* 1902FC 801E22AC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 190300 801E22B0 00230821 */  addu       $at, $at, $v1
/* 190304 801E22B4 240B0008 */  addiu      $t3, $zero, 0x8
/* 190308 801E22B8 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 19030C 801E22BC D7B60018 */  ldc1       $f22, 0x18($sp)
.L801E22C0_ovl17:
/* 190310 801E22C0 D7B80020 */  ldc1       $f24, 0x20($sp)
.L801E22C4_ovl14:
/* 190314 801E22C4 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 190318 801E22C8 D7BC0030 */  ldc1       $f28, 0x30($sp)
.L801E22CC_ovl13:
/* 19031C 801E22CC D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 190320 801E22D0 8FB00044 */  lw         $s0, 0x44($sp)
.L801E22D4_ovl10:
/* 190324 801E22D4 8FB10048 */  lw         $s1, 0x48($sp)
glabel func_801E22D8_ovl15
/* 190328 801E22D8 8FB2004C */  lw         $s2, 0x4C($sp)
.L801E22DC_ovl16:
/* 19032C 801E22DC 8FB30050 */  lw         $s3, 0x50($sp)
/* 190330 801E22E0 8FB40054 */  lw         $s4, 0x54($sp)
/* 190334 801E22E4 8FB50058 */  lw         $s5, 0x58($sp)
/* 190338 801E22E8 8FB6005C */  lw         $s6, 0x5C($sp)
/* 19033C 801E22EC 8FB70060 */  lw         $s7, 0x60($sp)
/* 190340 801E22F0 AC2BDC50 */  sw         $t3, %lo(gEntityVtableIndexArray)($at)
/* 190344 801E22F4 03E00008 */  jr         $ra
glabel func_801E22F8_ovl12
/* 190348 801E22F8 27BD0080 */   addiu     $sp, $sp, 0x80
