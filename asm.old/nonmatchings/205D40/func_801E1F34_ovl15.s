glabel func_801E1F34_ovl15
/* 20CA94 801E1F34 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 20CA98 801E1F38 AFB40040 */  sw         $s4, 0x40($sp)
.L801E1F3C_ovl14:
/* 20CA9C 801E1F3C 3C148005 */  lui        $s4, %hi(D_8004A7C4)
glabel func_801E1F40_ovl16
/* 20CAA0 801E1F40 2694A7C4 */  addiu      $s4, $s4, %lo(D_8004A7C4)
/* 20CAA4 801E1F44 8E850000 */  lw         $a1, 0x0($s4)
.L801E1F48_ovl12:
/* 20CAA8 801E1F48 AFBF0054 */  sw         $ra, 0x54($sp)
/* 20CAAC 801E1F4C AFBE0050 */  sw         $fp, 0x50($sp)
/* 20CAB0 801E1F50 AFB7004C */  sw         $s7, 0x4C($sp)
/* 20CAB4 801E1F54 AFB60048 */  sw         $s6, 0x48($sp)
/* 20CAB8 801E1F58 AFB50044 */  sw         $s5, 0x44($sp)
/* 20CABC 801E1F5C AFB3003C */  sw         $s3, 0x3C($sp)
/* 20CAC0 801E1F60 AFB20038 */  sw         $s2, 0x38($sp)
.L801E1F64_ovl12:
/* 20CAC4 801E1F64 AFB10034 */  sw         $s1, 0x34($sp)
/* 20CAC8 801E1F68 AFB00030 */  sw         $s0, 0x30($sp)
/* 20CACC 801E1F6C F7B80028 */  sdc1       $f24, 0x28($sp)
.L801E1F70_ovl9:
/* 20CAD0 801E1F70 F7B60020 */  sdc1       $f22, 0x20($sp)
.L801E1F74_ovl12:
/* 20CAD4 801E1F74 F7B40018 */  sdc1       $f20, 0x18($sp)
.L801E1F78_ovl13:
/* 20CAD8 801E1F78 8CAE0000 */  lw         $t6, 0x0($a1)
/* 20CADC 801E1F7C 3C11800F */  lui        $s1, %hi(D_800E8E60)
.L801E1F80_ovl14:
/* 20CAE0 801E1F80 26318E60 */  addiu      $s1, $s1, %lo(D_800E8E60)
/* 20CAE4 801E1F84 000E7880 */  sll        $t7, $t6, 2
/* 20CAE8 801E1F88 022FC021 */  addu       $t8, $s1, $t7
/* 20CAEC 801E1F8C AF000000 */  sw         $zero, 0x0($t8)
.L801E1F90_ovl17:
/* 20CAF0 801E1F90 8CA30000 */  lw         $v1, 0x0($a1)
.L801E1F94_ovl12:
/* 20CAF4 801E1F94 3C19800E */  lui        $t9, %hi(D_800E5F90)
/* 20CAF8 801E1F98 3C01800F */  lui        $at, %hi(D_800EA520)
/* 20CAFC 801E1F9C 00031880 */  sll        $v1, $v1, 2
/* 20CB00 801E1FA0 0323C821 */  addu       $t9, $t9, $v1
/* 20CB04 801E1FA4 8F395F90 */  lw         $t9, %lo(D_800E5F90)($t9)
/* 20CB08 801E1FA8 00230821 */  addu       $at, $at, $v1
.L801E1FAC_ovl16:
/* 20CB0C 801E1FAC AC39A520 */  sw         $t9, %lo(D_800EA520)($at)
/* 20CB10 801E1FB0 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CB14 801E1FB4 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 20CB18 801E1FB8 00031880 */  sll        $v1, $v1, 2
/* 20CB1C 801E1FBC 00230821 */  addu       $at, $at, $v1
/* 20CB20 801E1FC0 C4246BD0 */  lwc1       $f4, %lo(D_800E6BD0)($at)
.L801E1FC4_ovl14:
/* 20CB24 801E1FC4 3C01800F */  lui        $at, %hi(D_800EB320)
/* 20CB28 801E1FC8 00230821 */  addu       $at, $at, $v1
.L801E1FCC_ovl12:
/* 20CB2C 801E1FCC E424B320 */  swc1       $f4, %lo(D_800EB320)($at)
/* 20CB30 801E1FD0 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CB34 801E1FD4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
glabel func_801E1FD8_ovl10
/* 20CB38 801E1FD8 00031880 */  sll        $v1, $v1, 2
.L801E1FDC_ovl13:
/* 20CB3C 801E1FDC 00230821 */  addu       $at, $at, $v1
/* 20CB40 801E1FE0 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
/* 20CB44 801E1FE4 3C01800F */  lui        $at, %hi(D_800EADE0)
.L801E1FE8_ovl14:
/* 20CB48 801E1FE8 00230821 */  addu       $at, $at, $v1
/* 20CB4C 801E1FEC E426ADE0 */  swc1       $f6, %lo(D_800EADE0)($at)
.L801E1FF0_ovl9:
/* 20CB50 801E1FF0 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CB54 801E1FF4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L801E1FF8_ovl13:
/* 20CB58 801E1FF8 00031880 */  sll        $v1, $v1, 2
/* 20CB5C 801E1FFC 00230821 */  addu       $at, $at, $v1
/* 20CB60 801E2000 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 20CB64 801E2004 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 20CB68 801E2008 00230821 */  addu       $at, $at, $v1
.L801E200C_ovl13:
/* 20CB6C 801E200C E428AFA0 */  swc1       $f8, %lo(D_800EAFA0)($at)
.L801E2010_ovl14:
/* 20CB70 801E2010 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CB74 801E2014 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
glabel func_801E2018_ovl14
/* 20CB78 801E2018 00031880 */  sll        $v1, $v1, 2
/* 20CB7C 801E201C 00230821 */  addu       $at, $at, $v1
/* 20CB80 801E2020 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
.L801E2024_ovl9:
/* 20CB84 801E2024 3C01800F */  lui        $at, %hi(D_800EB160)
glabel func_801E2028_ovl14
/* 20CB88 801E2028 00230821 */  addu       $at, $at, $v1
/* 20CB8C 801E202C E42AB160 */  swc1       $f10, %lo(D_800EB160)($at)
/* 20CB90 801E2030 8CA80000 */  lw         $t0, 0x0($a1)
glabel func_801E2034_ovl16
/* 20CB94 801E2034 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20CB98 801E2038 44818000 */  mtc1       $at, $f16
/* 20CB9C 801E203C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 20CBA0 801E2040 00084880 */  sll        $t1, $t0, 2
/* 20CBA4 801E2044 00290821 */  addu       $at, $at, $t1
/* 20CBA8 801E2048 E4306A10 */  swc1       $f16, %lo(D_800E6A10)($at)
.L801E204C_ovl17:
/* 20CBAC 801E204C 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20CBB0 801E2050 3C01801E */  lui        $at, %hi(D_801E68B0_ovl15)
/* 20CBB4 801E2054 C43268B0 */  lwc1       $f18, %lo(D_801E68B0_ovl15)($at)
.L801E2058_ovl9:
/* 20CBB8 801E2058 3C01800E */  lui        $at, %hi(D_800E64D0)
.L801E205C_ovl10:
/* 20CBBC 801E205C 000A5880 */  sll        $t3, $t2, 2
.L801E2060_ovl17:
/* 20CBC0 801E2060 002B0821 */  addu       $at, $at, $t3
/* 20CBC4 801E2064 0C03E39B */  jal        func_800F8E6C
.L801E2068_ovl9:
/* 20CBC8 801E2068 E43264D0 */   swc1      $f18, %lo(D_800E64D0)($at)
glabel func_801E206C_ovl10
/* 20CBCC 801E206C 0C02CCFD */  jal        func_800B33F4
/* 20CBD0 801E2070 00000000 */   nop
.L801E2074_ovl14:
/* 20CBD4 801E2074 8E850000 */  lw         $a1, 0x0($s4)
/* 20CBD8 801E2078 3C04800E */  lui        $a0, %hi(D_800E17D0)
/* 20CBDC 801E207C 248417D0 */  addiu      $a0, $a0, %lo(D_800E17D0)
/* 20CBE0 801E2080 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CBE4 801E2084 3C01801E */  lui        $at, %hi(.L801E68B4_ovl16)
/* 20CBE8 801E2088 C42268B4 */  lwc1       $f2, %lo(.L801E68B4_ovl16)($at)
glabel func_801E208C_ovl14
/* 20CBEC 801E208C 00031880 */  sll        $v1, $v1, 2
/* 20CBF0 801E2090 00831021 */  addu       $v0, $a0, $v1
/* 20CBF4 801E2094 C4400000 */  lwc1       $f0, 0x0($v0)
/* 20CBF8 801E2098 4480A000 */  mtc1       $zero, $f20
.L801E209C_ovl9:
/* 20CBFC 801E209C 3C01801E */  lui        $at, %hi(D_801E68B8_ovl15)
/* 20CC00 801E20A0 4600103E */  c.le.s     $f2, $f0
.L801E20A4_ovl9:
/* 20CC04 801E20A4 00000000 */  nop
/* 20CC08 801E20A8 4502000C */  bc1fl      .L801E20DC_ovl15
/* 20CC0C 801E20AC 4614003C */   c.lt.s    $f0, $f20
/* 20CC10 801E20B0 46020101 */  sub.s      $f4, $f0, $f2
.L801E20B4_ovl15:
/* 20CC14 801E20B4 E4440000 */  swc1       $f4, 0x0($v0)
/* 20CC18 801E20B8 8CA30000 */  lw         $v1, 0x0($a1)
.L801E20BC_ovl17:
/* 20CC1C 801E20BC 00031880 */  sll        $v1, $v1, 2
/* 20CC20 801E20C0 00831021 */  addu       $v0, $a0, $v1
/* 20CC24 801E20C4 C4400000 */  lwc1       $f0, 0x0($v0)
.L801E20C8_ovl16:
/* 20CC28 801E20C8 4600103E */  c.le.s     $f2, $f0
/* 20CC2C 801E20CC 00000000 */  nop
.L801E20D0_ovl17:
/* 20CC30 801E20D0 4503FFF8 */  bc1tl      .L801E20B4_ovl15
/* 20CC34 801E20D4 46020101 */   sub.s     $f4, $f0, $f2
glabel func_801E20D8_ovl16
/* 20CC38 801E20D8 4614003C */  c.lt.s     $f0, $f20
.L801E20DC_ovl15:
/* 20CC3C 801E20DC 00000000 */  nop
/* 20CC40 801E20E0 4500000B */  bc1f       .L801E2110_ovl15
/* 20CC44 801E20E4 00000000 */   nop
/* 20CC48 801E20E8 46020180 */  add.s      $f6, $f0, $f2
.L801E20EC_ovl15:
/* 20CC4C 801E20EC E4460000 */  swc1       $f6, 0x0($v0)
/* 20CC50 801E20F0 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CC54 801E20F4 00031880 */  sll        $v1, $v1, 2
/* 20CC58 801E20F8 00831021 */  addu       $v0, $a0, $v1
/* 20CC5C 801E20FC C4400000 */  lwc1       $f0, 0x0($v0)
/* 20CC60 801E2100 4614003C */  c.lt.s     $f0, $f20
/* 20CC64 801E2104 00000000 */  nop
.L801E2108_ovl12:
/* 20CC68 801E2108 4503FFF8 */  bc1tl      .L801E20EC_ovl15
/* 20CC6C 801E210C 46020180 */   add.s     $f6, $f0, $f2
.L801E2110_ovl15:
/* 20CC70 801E2110 C42868B8 */  lwc1       $f8, %lo(D_801E68B8_ovl15)($at)
/* 20CC74 801E2114 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L801E2118_ovl9:
/* 20CC78 801E2118 00230821 */  addu       $at, $at, $v1
/* 20CC7C 801E211C 46080080 */  add.s      $f2, $f0, $f8
/* 20CC80 801E2120 3C10800F */  lui        $s0, %hi(D_800EA6E0)
/* 20CC84 801E2124 2610A6E0 */  addiu      $s0, $s0, %lo(D_800EA6E0)
/* 20CC88 801E2128 E42241D0 */  swc1       $f2, %lo(gEntitiesAngleYArray)($at)
.L801E212C_ovl17:
/* 20CC8C 801E212C 8CAC0000 */  lw         $t4, 0x0($a1)
/* 20CC90 801E2130 000C6880 */  sll        $t5, $t4, 2
.L801E2134_ovl16:
/* 20CC94 801E2134 020D7021 */  addu       $t6, $s0, $t5
/* 20CC98 801E2138 E5C20000 */  swc1       $f2, 0x0($t6)
/* 20CC9C 801E213C 8CAF0000 */  lw         $t7, 0x0($a1)
.L801E2140_ovl17:
/* 20CCA0 801E2140 000FC080 */  sll        $t8, $t7, 2
/* 20CCA4 801E2144 0218C821 */  addu       $t9, $s0, $t8
/* 20CCA8 801E2148 0C00B5B8 */  jal        sinf
/* 20CCAC 801E214C C72C0000 */   lwc1      $f12, 0x0($t9)
/* 20CCB0 801E2150 8E850000 */  lw         $a1, 0x0($s4)
/* 20CCB4 801E2154 3C014407 */  lui        $at, (0x44070000 >> 16)
/* 20CCB8 801E2158 4481B000 */  mtc1       $at, $f22
/* 20CCBC 801E215C 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CCC0 801E2160 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
.L801E2164_ovl12:
/* 20CCC4 801E2164 46160282 */  mul.s      $f10, $f0, $f22
/* 20CCC8 801E2168 00031880 */  sll        $v1, $v1, 2
/* 20CCCC 801E216C 00230821 */  addu       $at, $at, $v1
glabel func_801E2170_ovl17
/* 20CCD0 801E2170 C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
/* 20CCD4 801E2174 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 20CCD8 801E2178 00230821 */  addu       $at, $at, $v1
/* 20CCDC 801E217C 46105480 */  add.s      $f18, $f10, $f16
/* 20CCE0 801E2180 E432AA60 */  swc1       $f18, %lo(D_800EAA60)($at)
/* 20CCE4 801E2184 8CA80000 */  lw         $t0, 0x0($a1)
/* 20CCE8 801E2188 00084880 */  sll        $t1, $t0, 2
/* 20CCEC 801E218C 02095021 */  addu       $t2, $s0, $t1
.L801E2190_ovl12:
/* 20CCF0 801E2190 0C00D604 */  jal        cosf
.L801E2194_ovl14:
/* 20CCF4 801E2194 C54C0000 */   lwc1      $f12, 0x0($t2)
/* 20CCF8 801E2198 8E850000 */  lw         $a1, 0x0($s4)
/* 20CCFC 801E219C 46160102 */  mul.s      $f4, $f0, $f22
/* 20CD00 801E21A0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 20CD04 801E21A4 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CD08 801E21A8 24100001 */  addiu      $s0, $zero, 0x1
/* 20CD0C 801E21AC 3C0E801E */  lui        $t6, %hi(func_801E27BC_ovl15)
/* 20CD10 801E21B0 00031880 */  sll        $v1, $v1, 2
/* 20CD14 801E21B4 00230821 */  addu       $at, $at, $v1
/* 20CD18 801E21B8 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
/* 20CD1C 801E21BC 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 20CD20 801E21C0 00230821 */  addu       $at, $at, $v1
/* 20CD24 801E21C4 46062200 */  add.s      $f8, $f4, $f6
.L801E21C8_ovl10:
/* 20CD28 801E21C8 25CE27BC */  addiu      $t6, $t6, %lo(func_801E27BC_ovl15)
/* 20CD2C 801E21CC 4600A306 */  mov.s      $f12, $f20
/* 20CD30 801E21D0 E428AC20 */  swc1       $f8, %lo(D_800EAC20)($at)
.L801E21D4_ovl10:
/* 20CD34 801E21D4 8CAB0000 */  lw         $t3, 0x0($a1)
glabel func_801E21D8_ovl12
/* 20CD38 801E21D8 3C01800E */  lui        $at, %hi(D_800DF150)
.L801E21DC_ovl9:
/* 20CD3C 801E21DC 000B6080 */  sll        $t4, $t3, 2
.L801E21E0_ovl9:
/* 20CD40 801E21E0 022C6821 */  addu       $t5, $s1, $t4
/* 20CD44 801E21E4 ADB00000 */  sw         $s0, 0x0($t5)
/* 20CD48 801E21E8 8CAF0000 */  lw         $t7, 0x0($a1)
/* 20CD4C 801E21EC 000FC080 */  sll        $t8, $t7, 2
/* 20CD50 801E21F0 00380821 */  addu       $at, $at, $t8
.L801E21F4_ovl17:
/* 20CD54 801E21F4 0C02BB48 */  jal        func_800AED20
.L801E21F8_ovl9:
/* 20CD58 801E21F8 AC2EF150 */   sw        $t6, %lo(D_800DF150)($at)
/* 20CD5C 801E21FC 3C01800D */  lui        $at, %hi(D_800D6B10)
.L801E2200_ovl17:
/* 20CD60 801E2200 0C02BB30 */  jal        func_800AECC0
/* 20CD64 801E2204 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 20CD68 801E2208 3C040001 */  lui        $a0, (0x10066 >> 16)
glabel func_801E220C_ovl17
/* 20CD6C 801E220C 34840066 */  ori        $a0, $a0, (0x10066 & 0xFFFF)
/* 20CD70 801E2210 24050023 */  addiu      $a1, $zero, 0x23
.L801E2214_ovl13:
/* 20CD74 801E2214 0C02A619 */  jal        func_800A9864
/* 20CD78 801E2218 24060010 */   addiu     $a2, $zero, 0x10
.L801E221C_ovl9:
/* 20CD7C 801E221C 8E850000 */  lw         $a1, 0x0($s4)
/* 20CD80 801E2220 3C11800F */  lui        $s1, %hi(D_800EA360)
/* 20CD84 801E2224 2631A360 */  addiu      $s1, $s1, %lo(D_800EA360)
/* 20CD88 801E2228 8CB90000 */  lw         $t9, 0x0($a1)
.L801E222C_ovl14:
/* 20CD8C 801E222C 3C01801E */  lui        $at, %hi(D_801E68BC_ovl15)
/* 20CD90 801E2230 3C1E801E */  lui        $fp, %hi(func_801E6648_ovl9 + 0x28)
/* 20CD94 801E2234 00194080 */  sll        $t0, $t9, 2
/* 20CD98 801E2238 02284821 */  addu       $t1, $s1, $t0
/* 20CD9C 801E223C AD200000 */  sw         $zero, 0x0($t1)
/* 20CDA0 801E2240 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CDA4 801E2244 C43868BC */  lwc1       $f24, %lo(D_801E68BC_ovl15)($at)
/* 20CDA8 801E2248 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 20CDAC 801E224C 3C17801E */  lui        $s7, %hi(.L801E6680_ovl16)
/* 20CDB0 801E2250 3C16801E */  lui        $s6, %hi(func_801E6648_ovl9 + 0x48)
/* 20CDB4 801E2254 3C13800E */  lui        $s3, %hi(D_800DFF50)
.L801E2258_ovl17:
/* 20CDB8 801E2258 3C12800F */  lui        $s2, %hi(D_800EA1A0)
/* 20CDBC 801E225C 4481B000 */  mtc1       $at, $f22
/* 20CDC0 801E2260 2652A1A0 */  addiu      $s2, $s2, %lo(D_800EA1A0)
.L801E2264_ovl12:
/* 20CDC4 801E2264 2673FF50 */  addiu      $s3, $s3, %lo(D_800DFF50)
/* 20CDC8 801E2268 26D66690 */  addiu      $s6, $s6, %lo(func_801E6648_ovl9 + 0x48)
.L801E226C_ovl9:
/* 20CDCC 801E226C 26F76680 */  addiu      $s7, $s7, %lo(.L801E6680_ovl16)
/* 20CDD0 801E2270 27DE6670 */  addiu      $fp, $fp, %lo(func_801E6648_ovl9 + 0x28)
/* 20CDD4 801E2274 24150002 */  addiu      $s5, $zero, 0x2
/* 20CDD8 801E2278 00031880 */  sll        $v1, $v1, 2
.L801E227C_ovl15:
/* 20CDDC 801E227C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 20CDE0 801E2280 00230821 */  addu       $at, $at, $v1
/* 20CDE4 801E2284 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 20CDE8 801E2288 8CAA0000 */  lw         $t2, 0x0($a1)
.L801E228C_ovl12:
/* 20CDEC 801E228C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 20CDF0 801E2290 3C0F800B */  lui        $t7, %hi(func_800B7560)
.L801E2294_ovl10:
/* 20CDF4 801E2294 000A5880 */  sll        $t3, $t2, 2
glabel func_801E2298_ovl12
/* 20CDF8 801E2298 024B6021 */  addu       $t4, $s2, $t3
.L801E229C_ovl17:
/* 20CDFC 801E229C AD800000 */  sw         $zero, 0x0($t4)
/* 20CE00 801E22A0 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CE04 801E22A4 25EF7560 */  addiu      $t7, $t7, %lo(func_800B7560)
.L801E22A8_ovl9:
/* 20CE08 801E22A8 00031880 */  sll        $v1, $v1, 2
/* 20CE0C 801E22AC 02236821 */  addu       $t5, $s1, $v1
/* 20CE10 801E22B0 8DA20000 */  lw         $v0, 0x0($t5)
/* 20CE14 801E22B4 00230821 */  addu       $at, $at, $v1
/* 20CE18 801E22B8 10400007 */  beqz       $v0, func_801E22D8_ovl15
/* 20CE1C 801E22BC 00000000 */   nop
.L801E22C0_ovl17:
/* 20CE20 801E22C0 1050006A */  beq        $v0, $s0, .L801E246C_ovl15
.L801E22C4_ovl14:
/* 20CE24 801E22C4 3C19800B */   lui       $t9, %hi(func_800B7560)
/* 20CE28 801E22C8 105500CA */  beq        $v0, $s5, .L801E25F4_ovl16
.L801E22CC_ovl13:
/* 20CE2C 801E22CC 3C0E800B */   lui       $t6, %hi(func_800B7560)
/* 20CE30 801E22D0 1000FFEA */  b          .L801E227C_ovl15
.L801E22D4_ovl10:
/* 20CE34 801E22D4 00000000 */   nop
glabel func_801E22D8_ovl15
/* 20CE38 801E22D8 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
.L801E22DC_ovl16:
/* 20CE3C 801E22DC 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CE40 801E22E0 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 20CE44 801E22E4 00031880 */  sll        $v1, $v1, 2
/* 20CE48 801E22E8 00230821 */  addu       $at, $at, $v1
/* 20CE4C 801E22EC C42AAA60 */  lwc1       $f10, %lo(D_800EAA60)($at)
/* 20CE50 801E22F0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 20CE54 801E22F4 00230821 */  addu       $at, $at, $v1
glabel func_801E22F8_ovl12
/* 20CE58 801E22F8 E42A25D0 */  swc1       $f10, %lo(gEntitiesNextPosXArray)($at)
glabel func_801E22FC_ovl17
/* 20CE5C 801E22FC 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CE60 801E2300 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 20CE64 801E2304 00031880 */  sll        $v1, $v1, 2
/* 20CE68 801E2308 00230821 */  addu       $at, $at, $v1
/* 20CE6C 801E230C C430AC20 */  lwc1       $f16, %lo(D_800EAC20)($at)
.L801E2310_ovl17:
/* 20CE70 801E2310 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 20CE74 801E2314 00230821 */  addu       $at, $at, $v1
/* 20CE78 801E2318 E4302950 */  swc1       $f16, %lo(gEntitiesNextPosZArray)($at)
.L801E231C_ovl10:
/* 20CE7C 801E231C 8CAE0000 */  lw         $t6, 0x0($a1)
glabel func_801E2320_ovl17
/* 20CE80 801E2320 3C01C348 */  lui        $at, (0xC3480000 >> 16)
/* 20CE84 801E2324 44819000 */  mtc1       $at, $f18
/* 20CE88 801E2328 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 20CE8C 801E232C 000EC080 */  sll        $t8, $t6, 2
/* 20CE90 801E2330 00380821 */  addu       $at, $at, $t8
/* 20CE94 801E2334 E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 20CE98 801E2338 8CB90000 */  lw         $t9, 0x0($a1)
/* 20CE9C 801E233C 3C01800F */  lui        $at, %hi(D_800E9020)
/* 20CEA0 801E2340 00194080 */  sll        $t0, $t9, 2
/* 20CEA4 801E2344 00280821 */  addu       $at, $at, $t0
/* 20CEA8 801E2348 E4349020 */  swc1       $f20, %lo(D_800E9020)($at)
/* 20CEAC 801E234C 8CA90000 */  lw         $t1, 0x0($a1)
/* 20CEB0 801E2350 3C01801E */  lui        $at, %hi(D_801E68C0_ovl15)
.L801E2354_ovl9:
/* 20CEB4 801E2354 C42468C0 */  lwc1       $f4, %lo(D_801E68C0_ovl15)($at)
.L801E2358_ovl14:
/* 20CEB8 801E2358 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 20CEBC 801E235C 00095080 */  sll        $t2, $t1, 2
/* 20CEC0 801E2360 002A0821 */  addu       $at, $at, $t2
/* 20CEC4 801E2364 E42417D0 */  swc1       $f4, %lo(D_800E17D0)($at)
/* 20CEC8 801E2368 8CAB0000 */  lw         $t3, 0x0($a1)
glabel func_801E236C_ovl9
/* 20CECC 801E236C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20CED0 801E2370 44813000 */  mtc1       $at, $f6
/* 20CED4 801E2374 3C01800E */  lui        $at, %hi(D_800E6A10)
glabel func_801E2378_ovl14
/* 20CED8 801E2378 000B6080 */  sll        $t4, $t3, 2
/* 20CEDC 801E237C 002C0821 */  addu       $at, $at, $t4
/* 20CEE0 801E2380 E4266A10 */  swc1       $f6, %lo(D_800E6A10)($at)
/* 20CEE4 801E2384 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CEE8 801E2388 00031880 */  sll        $v1, $v1, 2
/* 20CEEC 801E238C 02236821 */  addu       $t5, $s1, $v1
.L801E2390_ovl17:
/* 20CEF0 801E2390 8DAF0000 */  lw         $t7, 0x0($t5)
.L801E2394_ovl12:
/* 20CEF4 801E2394 15E0FFB9 */  bnez       $t7, .L801E227C_ovl15
.L801E2398_ovl16:
/* 20CEF8 801E2398 00000000 */   nop
.L801E239C_ovl15:
/* 20CEFC 801E239C 3C01800F */  lui        $at, %hi(D_800E9E20)
glabel func_801E23A0_ovl12
/* 20CF00 801E23A0 00230821 */  addu       $at, $at, $v1
.L801E23A4_ovl10:
/* 20CF04 801E23A4 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 20CF08 801E23A8 8CAE0000 */  lw         $t6, 0x0($a1)
/* 20CF0C 801E23AC 000EC080 */  sll        $t8, $t6, 2
/* 20CF10 801E23B0 0258C821 */  addu       $t9, $s2, $t8
/* 20CF14 801E23B4 8F280000 */  lw         $t0, 0x0($t9)
.L801E23B8_ovl13:
/* 20CF18 801E23B8 00084880 */  sll        $t1, $t0, 2
/* 20CF1C 801E23BC 03C95021 */  addu       $t2, $fp, $t1
/* 20CF20 801E23C0 0C02A806 */  jal        func_800AA018
/* 20CF24 801E23C4 8D440000 */   lw        $a0, 0x0($t2)
/* 20CF28 801E23C8 0C02BC8C */  jal        func_800AF230
/* 20CF2C 801E23CC 00000000 */   nop
/* 20CF30 801E23D0 5050001E */  beql       $v0, $s0, .L801E244C_ovl15
/* 20CF34 801E23D4 8E850000 */   lw        $a1, 0x0($s4)
/* 20CF38 801E23D8 8E8B0000 */  lw         $t3, 0x0($s4)
/* 20CF3C 801E23DC 8D630000 */  lw         $v1, 0x0($t3)
glabel func_801E23E0_ovl17
/* 20CF40 801E23E0 00031880 */  sll        $v1, $v1, 2
/* 20CF44 801E23E4 02236021 */  addu       $t4, $s1, $v1
/* 20CF48 801E23E8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20CF4C 801E23EC 15A00016 */  bnez       $t5, .L801E2448_ovl15
/* 20CF50 801E23F0 0243C021 */   addu      $t8, $s2, $v1
.L801E23F4_ovl15:
/* 20CF54 801E23F4 8F190000 */  lw         $t9, 0x0($t8)
glabel func_801E23F8_ovl14
/* 20CF58 801E23F8 02637821 */  addu       $t7, $s3, $v1
.L801E23FC_ovl10:
/* 20CF5C 801E23FC 8DEE0000 */  lw         $t6, 0x0($t7)
.L801E2400_ovl13:
/* 20CF60 801E2400 00194080 */  sll        $t0, $t9, 2
.L801E2404_ovl14:
/* 20CF64 801E2404 03C84821 */  addu       $t1, $fp, $t0
/* 20CF68 801E2408 8D2A0000 */  lw         $t2, 0x0($t1)
/* 20CF6C 801E240C 55CA000F */  bnel       $t6, $t2, .L801E244C_ovl15
glabel func_801E2410_ovl14
/* 20CF70 801E2410 8E850000 */   lw        $a1, 0x0($s4)
/* 20CF74 801E2414 0C002DAF */  jal        finish_current_thread
/* 20CF78 801E2418 02002025 */   or        $a0, $s0, $zero
/* 20CF7C 801E241C 0C02BC8C */  jal        func_800AF230
/* 20CF80 801E2420 00000000 */   nop
/* 20CF84 801E2424 50500009 */  beql       $v0, $s0, .L801E244C_ovl15
.L801E2428_ovl10:
/* 20CF88 801E2428 8E850000 */   lw        $a1, 0x0($s4)
/* 20CF8C 801E242C 8E8B0000 */  lw         $t3, 0x0($s4)
/* 20CF90 801E2430 8D630000 */  lw         $v1, 0x0($t3)
/* 20CF94 801E2434 00031880 */  sll        $v1, $v1, 2
/* 20CF98 801E2438 02236021 */  addu       $t4, $s1, $v1
/* 20CF9C 801E243C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20CFA0 801E2440 51A0FFEC */  beql       $t5, $zero, .L801E23F4_ovl15
/* 20CFA4 801E2444 0243C021 */   addu      $t8, $s2, $v1
.L801E2448_ovl15:
/* 20CFA8 801E2448 8E850000 */  lw         $a1, 0x0($s4)
.L801E244C_ovl15:
/* 20CFAC 801E244C 8CA30000 */  lw         $v1, 0x0($a1)
/* 20CFB0 801E2450 00031880 */  sll        $v1, $v1, 2
/* 20CFB4 801E2454 02237821 */  addu       $t7, $s1, $v1
/* 20CFB8 801E2458 8DF80000 */  lw         $t8, 0x0($t7)
/* 20CFBC 801E245C 1300FFCF */  beqz       $t8, .L801E239C_ovl15
/* 20CFC0 801E2460 00000000 */   nop
/* 20CFC4 801E2464 1000FF85 */  b          .L801E227C_ovl15
.L801E2468_ovl16:
/* 20CFC8 801E2468 00000000 */   nop
.L801E246C_ovl15:
/* 20CFCC 801E246C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 20CFD0 801E2470 00230821 */  addu       $at, $at, $v1
/* 20CFD4 801E2474 27397560 */  addiu      $t9, $t9, %lo(func_800B7560)
/* 20CFD8 801E2478 AC39EF90 */  sw         $t9, %lo(D_800DEF90)($at)
/* 20CFDC 801E247C 8CA80000 */  lw         $t0, 0x0($a1)
.L801E2480_ovl9:
/* 20CFE0 801E2480 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 20CFE4 801E2484 00084880 */  sll        $t1, $t0, 2
.L801E2488_ovl12:
/* 20CFE8 801E2488 00290821 */  addu       $at, $at, $t1
/* 20CFEC 801E248C E4366A10 */  swc1       $f22, %lo(D_800E6A10)($at)
/* 20CFF0 801E2490 8CA30000 */  lw         $v1, 0x0($a1)
glabel func_801E2494_ovl12
/* 20CFF4 801E2494 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 20CFF8 801E2498 00031880 */  sll        $v1, $v1, 2
/* 20CFFC 801E249C 00230821 */  addu       $at, $at, $v1
/* 20D000 801E24A0 C428ADE0 */  lwc1       $f8, %lo(D_800EADE0)($at)
/* 20D004 801E24A4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 20D008 801E24A8 00230821 */  addu       $at, $at, $v1
/* 20D00C 801E24AC E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 20D010 801E24B0 8CAE0000 */  lw         $t6, 0x0($a1)
/* 20D014 801E24B4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 20D018 801E24B8 000E5080 */  sll        $t2, $t6, 2
/* 20D01C 801E24BC 002A0821 */  addu       $at, $at, $t2
/* 20D020 801E24C0 E4342790 */  swc1       $f20, %lo(gEntitiesNextPosYArray)($at)
/* 20D024 801E24C4 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D028 801E24C8 3C01800F */  lui        $at, %hi(D_800EB160)
/* 20D02C 801E24CC 00031880 */  sll        $v1, $v1, 2
/* 20D030 801E24D0 00230821 */  addu       $at, $at, $v1
.L801E24D4_ovl10:
/* 20D034 801E24D4 C42AB160 */  lwc1       $f10, %lo(D_800EB160)($at)
.L801E24D8_ovl12:
/* 20D038 801E24D8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
.L801E24DC_ovl10:
/* 20D03C 801E24DC 00230821 */  addu       $at, $at, $v1
/* 20D040 801E24E0 E42A2950 */  swc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* 20D044 801E24E4 8CAB0000 */  lw         $t3, 0x0($a1)
/* 20D048 801E24E8 3C01800F */  lui        $at, %hi(D_800E9020)
/* 20D04C 801E24EC 000B6080 */  sll        $t4, $t3, 2
/* 20D050 801E24F0 002C0821 */  addu       $at, $at, $t4
/* 20D054 801E24F4 E4349020 */  swc1       $f20, %lo(D_800E9020)($at)
.L801E24F8_ovl12:
/* 20D058 801E24F8 8CAD0000 */  lw         $t5, 0x0($a1)
/* 20D05C 801E24FC 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 20D060 801E2500 000D7880 */  sll        $t7, $t5, 2
/* 20D064 801E2504 002F0821 */  addu       $at, $at, $t7
/* 20D068 801E2508 E43817D0 */  swc1       $f24, %lo(D_800E17D0)($at)
.L801E250C_ovl9:
/* 20D06C 801E250C 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D070 801E2510 00031880 */  sll        $v1, $v1, 2
.L801E2514_ovl14:
/* 20D074 801E2514 0223C021 */  addu       $t8, $s1, $v1
/* 20D078 801E2518 8F190000 */  lw         $t9, 0x0($t8)
/* 20D07C 801E251C 1619FF57 */  bne        $s0, $t9, .L801E227C_ovl15
.L801E2520_ovl13:
/* 20D080 801E2520 00000000 */   nop
.L801E2524_ovl16:
/* 20D084 801E2524 3C01800F */  lui        $at, %hi(D_800E9E20)
glabel func_801E2528_ovl12
/* 20D088 801E2528 00230821 */  addu       $at, $at, $v1
/* 20D08C 801E252C AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
glabel func_801E2530_ovl12
/* 20D090 801E2530 8CA80000 */  lw         $t0, 0x0($a1)
/* 20D094 801E2534 00084880 */  sll        $t1, $t0, 2
/* 20D098 801E2538 02497021 */  addu       $t6, $s2, $t1
.L801E253C_ovl10:
/* 20D09C 801E253C 8DCA0000 */  lw         $t2, 0x0($t6)
/* 20D0A0 801E2540 000A5880 */  sll        $t3, $t2, 2
/* 20D0A4 801E2544 02EB6021 */  addu       $t4, $s7, $t3
glabel func_801E2548_ovl9
/* 20D0A8 801E2548 0C02A806 */  jal        func_800AA018
/* 20D0AC 801E254C 8D840000 */   lw        $a0, 0x0($t4)
.L801E2550_ovl10:
/* 20D0B0 801E2550 0C02BC8C */  jal        func_800AF230
/* 20D0B4 801E2554 00000000 */   nop
/* 20D0B8 801E2558 5050001E */  beql       $v0, $s0, .L801E25D4_ovl15
.L801E255C_ovl14:
/* 20D0BC 801E255C 8E850000 */   lw        $a1, 0x0($s4)
/* 20D0C0 801E2560 8E8D0000 */  lw         $t5, 0x0($s4)
.L801E2564_ovl13:
/* 20D0C4 801E2564 8DA30000 */  lw         $v1, 0x0($t5)
/* 20D0C8 801E2568 00031880 */  sll        $v1, $v1, 2
/* 20D0CC 801E256C 02237821 */  addu       $t7, $s1, $v1
/* 20D0D0 801E2570 8DF80000 */  lw         $t8, 0x0($t7)
/* 20D0D4 801E2574 16180016 */  bne        $s0, $t8, .L801E25D0_ovl15
/* 20D0D8 801E2578 02434821 */   addu      $t1, $s2, $v1
.L801E257C_ovl15:
/* 20D0DC 801E257C 8D2E0000 */  lw         $t6, 0x0($t1)
/* 20D0E0 801E2580 0263C821 */  addu       $t9, $s3, $v1
/* 20D0E4 801E2584 8F280000 */  lw         $t0, 0x0($t9)
glabel func_801E2588_ovl9
/* 20D0E8 801E2588 000E5080 */  sll        $t2, $t6, 2
/* 20D0EC 801E258C 02EA5821 */  addu       $t3, $s7, $t2
/* 20D0F0 801E2590 8D6C0000 */  lw         $t4, 0x0($t3)
/* 20D0F4 801E2594 550C000F */  bnel       $t0, $t4, .L801E25D4_ovl15
/* 20D0F8 801E2598 8E850000 */   lw        $a1, 0x0($s4)
/* 20D0FC 801E259C 0C002DAF */  jal        finish_current_thread
/* 20D100 801E25A0 02002025 */   or        $a0, $s0, $zero
/* 20D104 801E25A4 0C02BC8C */  jal        func_800AF230
/* 20D108 801E25A8 00000000 */   nop
.L801E25AC_ovl14:
/* 20D10C 801E25AC 50500009 */  beql       $v0, $s0, .L801E25D4_ovl15
/* 20D110 801E25B0 8E850000 */   lw        $a1, 0x0($s4)
.L801E25B4_ovl10:
/* 20D114 801E25B4 8E8D0000 */  lw         $t5, 0x0($s4)
/* 20D118 801E25B8 8DA30000 */  lw         $v1, 0x0($t5)
/* 20D11C 801E25BC 00031880 */  sll        $v1, $v1, 2
.L801E25C0_ovl17:
/* 20D120 801E25C0 02237821 */  addu       $t7, $s1, $v1
/* 20D124 801E25C4 8DF80000 */  lw         $t8, 0x0($t7)
/* 20D128 801E25C8 5218FFEC */  beql       $s0, $t8, .L801E257C_ovl15
/* 20D12C 801E25CC 02434821 */   addu      $t1, $s2, $v1
.L801E25D0_ovl15:
/* 20D130 801E25D0 8E850000 */  lw         $a1, 0x0($s4)
.L801E25D4_ovl15:
/* 20D134 801E25D4 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D138 801E25D8 00031880 */  sll        $v1, $v1, 2
/* 20D13C 801E25DC 0223C821 */  addu       $t9, $s1, $v1
.L801E25E0_ovl10:
/* 20D140 801E25E0 8F290000 */  lw         $t1, 0x0($t9)
/* 20D144 801E25E4 1209FFCF */  beq        $s0, $t1, .L801E2524_ovl16
/* 20D148 801E25E8 00000000 */   nop
/* 20D14C 801E25EC 1000FF23 */  b          .L801E227C_ovl15
.L801E25F0_ovl14:
/* 20D150 801E25F0 00000000 */   nop
.L801E25F4_ovl16:
/* 20D154 801E25F4 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 20D158 801E25F8 00230821 */  addu       $at, $at, $v1
/* 20D15C 801E25FC 25CE7560 */  addiu      $t6, $t6, %lo(func_800B7560)
/* 20D160 801E2600 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 20D164 801E2604 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20D168 801E2608 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 20D16C 801E260C 000A5880 */  sll        $t3, $t2, 2
glabel func_801E2610_ovl14
/* 20D170 801E2610 002B0821 */  addu       $at, $at, $t3
/* 20D174 801E2614 E4366A10 */  swc1       $f22, %lo(D_800E6A10)($at)
/* 20D178 801E2618 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D17C 801E261C 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 20D180 801E2620 00031880 */  sll        $v1, $v1, 2
/* 20D184 801E2624 00230821 */  addu       $at, $at, $v1
/* 20D188 801E2628 C430ADE0 */  lwc1       $f16, %lo(D_800EADE0)($at)
.L801E262C_ovl17:
/* 20D18C 801E262C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
glabel func_801E2630_ovl13
/* 20D190 801E2630 00230821 */  addu       $at, $at, $v1
/* 20D194 801E2634 E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
/* 20D198 801E2638 8CA80000 */  lw         $t0, 0x0($a1)
/* 20D19C 801E263C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 20D1A0 801E2640 00086080 */  sll        $t4, $t0, 2
/* 20D1A4 801E2644 002C0821 */  addu       $at, $at, $t4
/* 20D1A8 801E2648 E4342790 */  swc1       $f20, %lo(gEntitiesNextPosYArray)($at)
/* 20D1AC 801E264C 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D1B0 801E2650 3C01800F */  lui        $at, %hi(D_800EB160)
/* 20D1B4 801E2654 00031880 */  sll        $v1, $v1, 2
/* 20D1B8 801E2658 00230821 */  addu       $at, $at, $v1
/* 20D1BC 801E265C C432B160 */  lwc1       $f18, %lo(D_800EB160)($at)
.L801E2660_ovl10:
/* 20D1C0 801E2660 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 20D1C4 801E2664 00230821 */  addu       $at, $at, $v1
.L801E2668_ovl17:
/* 20D1C8 801E2668 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 20D1CC 801E266C 8CAD0000 */  lw         $t5, 0x0($a1)
/* 20D1D0 801E2670 3C01800F */  lui        $at, %hi(D_800E9020)
/* 20D1D4 801E2674 000D7880 */  sll        $t7, $t5, 2
/* 20D1D8 801E2678 002F0821 */  addu       $at, $at, $t7
/* 20D1DC 801E267C E4349020 */  swc1       $f20, %lo(D_800E9020)($at)
/* 20D1E0 801E2680 8CB80000 */  lw         $t8, 0x0($a1)
.L801E2684_ovl10:
/* 20D1E4 801E2684 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 20D1E8 801E2688 0018C880 */  sll        $t9, $t8, 2
.L801E268C_ovl17:
/* 20D1EC 801E268C 00390821 */  addu       $at, $at, $t9
/* 20D1F0 801E2690 E43817D0 */  swc1       $f24, %lo(D_800E17D0)($at)
/* 20D1F4 801E2694 8CA30000 */  lw         $v1, 0x0($a1)
glabel func_801E2698_ovl9
/* 20D1F8 801E2698 00031880 */  sll        $v1, $v1, 2
/* 20D1FC 801E269C 02234821 */  addu       $t1, $s1, $v1
/* 20D200 801E26A0 8D2E0000 */  lw         $t6, 0x0($t1)
/* 20D204 801E26A4 16AEFEF5 */  bne        $s5, $t6, .L801E227C_ovl15
glabel func_801E26A8_ovl12
/* 20D208 801E26A8 00000000 */   nop
.L801E26AC_ovl15:
/* 20D20C 801E26AC 3C01800F */  lui        $at, %hi(D_800E9E20)
.L801E26B0_ovl16:
/* 20D210 801E26B0 00230821 */  addu       $at, $at, $v1
/* 20D214 801E26B4 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 20D218 801E26B8 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20D21C 801E26BC 000A5880 */  sll        $t3, $t2, 2
/* 20D220 801E26C0 024B4021 */  addu       $t0, $s2, $t3
/* 20D224 801E26C4 8D0C0000 */  lw         $t4, 0x0($t0)
.L801E26C8_ovl13:
/* 20D228 801E26C8 000C6880 */  sll        $t5, $t4, 2
/* 20D22C 801E26CC 02CD7821 */  addu       $t7, $s6, $t5
.L801E26D0_ovl13:
/* 20D230 801E26D0 0C02A806 */  jal        func_800AA018
/* 20D234 801E26D4 8DE40000 */   lw        $a0, 0x0($t7)
/* 20D238 801E26D8 0C02BC8C */  jal        func_800AF230
/* 20D23C 801E26DC 00000000 */   nop
/* 20D240 801E26E0 5050001E */  beql       $v0, $s0, .L801E275C_ovl15
/* 20D244 801E26E4 8E850000 */   lw        $a1, 0x0($s4)
.L801E26E8_ovl13:
/* 20D248 801E26E8 8E980000 */  lw         $t8, 0x0($s4)
/* 20D24C 801E26EC 8F030000 */  lw         $v1, 0x0($t8)
/* 20D250 801E26F0 00031880 */  sll        $v1, $v1, 2
.L801E26F4_ovl13:
/* 20D254 801E26F4 0223C821 */  addu       $t9, $s1, $v1
/* 20D258 801E26F8 8F290000 */  lw         $t1, 0x0($t9)
/* 20D25C 801E26FC 16A90016 */  bne        $s5, $t1, .L801E2758_ovl15
/* 20D260 801E2700 02435821 */   addu      $t3, $s2, $v1
.L801E2704_ovl15:
/* 20D264 801E2704 8D680000 */  lw         $t0, 0x0($t3)
/* 20D268 801E2708 02637021 */  addu       $t6, $s3, $v1
glabel func_801E270C_ovl9
/* 20D26C 801E270C 8DCA0000 */  lw         $t2, 0x0($t6)
/* 20D270 801E2710 00086080 */  sll        $t4, $t0, 2
/* 20D274 801E2714 02CC6821 */  addu       $t5, $s6, $t4
/* 20D278 801E2718 8DAF0000 */  lw         $t7, 0x0($t5)
/* 20D27C 801E271C 554F000F */  bnel       $t2, $t7, .L801E275C_ovl15
/* 20D280 801E2720 8E850000 */   lw        $a1, 0x0($s4)
glabel func_801E2724_ovl10
/* 20D284 801E2724 0C002DAF */  jal        finish_current_thread
/* 20D288 801E2728 02002025 */   or        $a0, $s0, $zero
/* 20D28C 801E272C 0C02BC8C */  jal        func_800AF230
/* 20D290 801E2730 00000000 */   nop
/* 20D294 801E2734 50500009 */  beql       $v0, $s0, .L801E275C_ovl15
/* 20D298 801E2738 8E850000 */   lw        $a1, 0x0($s4)
/* 20D29C 801E273C 8E980000 */  lw         $t8, 0x0($s4)
/* 20D2A0 801E2740 8F030000 */  lw         $v1, 0x0($t8)
/* 20D2A4 801E2744 00031880 */  sll        $v1, $v1, 2
/* 20D2A8 801E2748 0223C821 */  addu       $t9, $s1, $v1
/* 20D2AC 801E274C 8F290000 */  lw         $t1, 0x0($t9)
/* 20D2B0 801E2750 52A9FFEC */  beql       $s5, $t1, .L801E2704_ovl15
/* 20D2B4 801E2754 02435821 */   addu      $t3, $s2, $v1
.L801E2758_ovl15:
/* 20D2B8 801E2758 8E850000 */  lw         $a1, 0x0($s4)
.L801E275C_ovl15:
/* 20D2BC 801E275C 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D2C0 801E2760 00031880 */  sll        $v1, $v1, 2
.L801E2764_ovl17:
/* 20D2C4 801E2764 02237021 */  addu       $t6, $s1, $v1
/* 20D2C8 801E2768 8DCB0000 */  lw         $t3, 0x0($t6)
/* 20D2CC 801E276C 12ABFFCF */  beq        $s5, $t3, .L801E26AC_ovl15
/* 20D2D0 801E2770 00000000 */   nop
/* 20D2D4 801E2774 1000FEC1 */  b          .L801E227C_ovl15
.L801E2778_ovl13:
/* 20D2D8 801E2778 00000000 */   nop
/* 20D2DC 801E277C 00000000 */  nop
.L801E2780_ovl16:
/* 20D2E0 801E2780 8FBF0054 */  lw         $ra, 0x54($sp)
/* 20D2E4 801E2784 D7B40018 */  ldc1       $f20, 0x18($sp)
.L801E2788_ovl14:
/* 20D2E8 801E2788 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 20D2EC 801E278C D7B80028 */  ldc1       $f24, 0x28($sp)
/* 20D2F0 801E2790 8FB00030 */  lw         $s0, 0x30($sp)
/* 20D2F4 801E2794 8FB10034 */  lw         $s1, 0x34($sp)
/* 20D2F8 801E2798 8FB20038 */  lw         $s2, 0x38($sp)
.L801E279C_ovl12:
/* 20D2FC 801E279C 8FB3003C */  lw         $s3, 0x3C($sp)
/* 20D300 801E27A0 8FB40040 */  lw         $s4, 0x40($sp)
/* 20D304 801E27A4 8FB50044 */  lw         $s5, 0x44($sp)
/* 20D308 801E27A8 8FB60048 */  lw         $s6, 0x48($sp)
/* 20D30C 801E27AC 8FB7004C */  lw         $s7, 0x4C($sp)
/* 20D310 801E27B0 8FBE0050 */  lw         $fp, 0x50($sp)
.L801E27B4_ovl13:
/* 20D314 801E27B4 03E00008 */  jr         $ra
/* 20D318 801E27B8 27BD0058 */   addiu     $sp, $sp, 0x58
