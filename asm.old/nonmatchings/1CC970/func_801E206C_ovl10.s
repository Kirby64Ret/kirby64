glabel func_801E206C_ovl10
/* 1D2DDC 801E206C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1D2DE0 801E2070 AFB60048 */  sw         $s6, 0x48($sp)
.L801E2074_ovl14:
/* 1D2DE4 801E2074 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 1D2DE8 801E2078 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* 1D2DEC 801E207C 8ECE0000 */  lw         $t6, 0x0($s6)
/* 1D2DF0 801E2080 AFBF0054 */  sw         $ra, 0x54($sp)
/* 1D2DF4 801E2084 AFBE0050 */  sw         $fp, 0x50($sp)
/* 1D2DF8 801E2088 AFB7004C */  sw         $s7, 0x4C($sp)
glabel func_801E208C_ovl14
/* 1D2DFC 801E208C AFB50044 */  sw         $s5, 0x44($sp)
/* 1D2E00 801E2090 AFB40040 */  sw         $s4, 0x40($sp)
/* 1D2E04 801E2094 AFB3003C */  sw         $s3, 0x3C($sp)
/* 1D2E08 801E2098 AFB20038 */  sw         $s2, 0x38($sp)
.L801E209C_ovl9:
/* 1D2E0C 801E209C AFB10034 */  sw         $s1, 0x34($sp)
/* 1D2E10 801E20A0 AFB00030 */  sw         $s0, 0x30($sp)
.L801E20A4_ovl9:
/* 1D2E14 801E20A4 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 1D2E18 801E20A8 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1D2E1C 801E20AC AFA40058 */  sw         $a0, 0x58($sp)
/* 1D2E20 801E20B0 8DCF0000 */  lw         $t7, 0x0($t6)
.L801E20B4_ovl15:
/* 1D2E24 801E20B4 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 1D2E28 801E20B8 26101B50 */  addiu      $s0, $s0, %lo(D_800E1B50)
.L801E20BC_ovl17:
/* 1D2E2C 801E20BC 3C12800D */  lui        $s2, %hi(D_800D6B10)
/* 1D2E30 801E20C0 000FC080 */  sll        $t8, $t7, 2
/* 1D2E34 801E20C4 26526B10 */  addiu      $s2, $s2, %lo(D_800D6B10)
.L801E20C8_ovl16:
/* 1D2E38 801E20C8 0218C821 */  addu       $t9, $s0, $t8
/* 1D2E3C 801E20CC 8F310000 */  lw         $s1, 0x0($t9)
.L801E20D0_ovl17:
/* 1D2E40 801E20D0 0C02BB30 */  jal        func_800AECC0
/* 1D2E44 801E20D4 C64C0000 */   lwc1      $f12, 0x0($s2)
glabel func_801E20D8_ovl16
/* 1D2E48 801E20D8 0C02BB48 */  jal        func_800AED20
.L801E20DC_ovl15:
/* 1D2E4C 801E20DC C64C0000 */   lwc1      $f12, 0x0($s2)
/* 1D2E50 801E20E0 8EC40000 */  lw         $a0, 0x0($s6)
/* 1D2E54 801E20E4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D2E58 801E20E8 24080010 */  addiu      $t0, $zero, 0x10
.L801E20EC_ovl15:
/* 1D2E5C 801E20EC 8C890000 */  lw         $t1, 0x0($a0)
/* 1D2E60 801E20F0 3C0B801F */  lui        $t3, %hi(func_801F3AC4_ovl9 + 0x8)
/* 1D2E64 801E20F4 256B3ACC */  addiu      $t3, $t3, %lo(func_801F3AC4_ovl9 + 0x8)
/* 1D2E68 801E20F8 00095080 */  sll        $t2, $t1, 2
/* 1D2E6C 801E20FC 002A0821 */  addu       $at, $at, $t2
/* 1D2E70 801E2100 AC28DFD0 */  sw         $t0, %lo(D_800DDFD0)($at)
/* 1D2E74 801E2104 8C8C0000 */  lw         $t4, 0x0($a0)
.L801E2108_ovl12:
/* 1D2E78 801E2108 3C18801F */  lui        $t8, %hi(D_801F4094_ovl10)
/* 1D2E7C 801E210C 27184094 */  addiu      $t8, $t8, %lo(D_801F4094_ovl10)
.L801E2110_ovl15:
/* 1D2E80 801E2110 000C6880 */  sll        $t5, $t4, 2
/* 1D2E84 801E2114 020D7021 */  addu       $t6, $s0, $t5
.L801E2118_ovl9:
/* 1D2E88 801E2118 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1D2E8C 801E211C ADEB008C */  sw         $t3, 0x8C($t7)
/* 1D2E90 801E2120 8ED90000 */  lw         $t9, 0x0($s6)
/* 1D2E94 801E2124 8F290000 */  lw         $t1, 0x0($t9)
/* 1D2E98 801E2128 00094080 */  sll        $t0, $t1, 2
.L801E212C_ovl17:
/* 1D2E9C 801E212C 02085021 */  addu       $t2, $s0, $t0
/* 1D2EA0 801E2130 8D4C0000 */  lw         $t4, 0x0($t2)
.L801E2134_ovl16:
/* 1D2EA4 801E2134 0C02CCFD */  jal        func_800B33F4
/* 1D2EA8 801E2138 AD980098 */   sw        $t8, 0x98($t4)
/* 1D2EAC 801E213C 0C029D9E */  jal        play_sound
.L801E2140_ovl17:
/* 1D2EB0 801E2140 2404002A */   addiu     $a0, $zero, 0x2A
/* 1D2EB4 801E2144 24040003 */  addiu      $a0, $zero, 0x3
/* 1D2EB8 801E2148 0C02ED1A */  jal        func_800BB468
/* 1D2EBC 801E214C 00002825 */   or        $a1, $zero, $zero
/* 1D2EC0 801E2150 8E2D0088 */  lw         $t5, 0x88($s1)
/* 1D2EC4 801E2154 4480B000 */  mtc1       $zero, $f22
/* 1D2EC8 801E2158 00002025 */  or         $a0, $zero, $zero
/* 1D2ECC 801E215C 8DAE0010 */  lw         $t6, 0x10($t5)
/* 1D2ED0 801E2160 4406B000 */  mfc1       $a2, $f22
.L801E2164_ovl12:
/* 1D2ED4 801E2164 24050001 */  addiu      $a1, $zero, 0x1
/* 1D2ED8 801E2168 8DC70000 */  lw         $a3, 0x0($t6)
/* 1D2EDC 801E216C 0C03F55C */  jal        func_800FD570
glabel func_801E2170_ovl17
/* 1D2EE0 801E2170 E7B60010 */   swc1      $f22, 0x10($sp)
/* 1D2EE4 801E2174 3C040001 */  lui        $a0, (0x10306 >> 16)
/* 1D2EE8 801E2178 0C02A806 */  jal        func_800AA018
/* 1D2EEC 801E217C 34840306 */   ori       $a0, $a0, (0x10306 & 0xFFFF)
/* 1D2EF0 801E2180 3C040001 */  lui        $a0, (0x10307 >> 16)
/* 1D2EF4 801E2184 0C02A806 */  jal        func_800AA018
/* 1D2EF8 801E2188 34840307 */   ori       $a0, $a0, (0x10307 & 0xFFFF)
/* 1D2EFC 801E218C 8ECB0000 */  lw         $t3, 0x0($s6)
.L801E2190_ovl12:
/* 1D2F00 801E2190 3C11800F */  lui        $s1, %hi(D_800E9020)
.L801E2194_ovl14:
/* 1D2F04 801E2194 26319020 */  addiu      $s1, $s1, %lo(D_800E9020)
/* 1D2F08 801E2198 8D6F0000 */  lw         $t7, 0x0($t3)
/* 1D2F0C 801E219C 000FC880 */  sll        $t9, $t7, 2
/* 1D2F10 801E21A0 02394821 */  addu       $t1, $s1, $t9
/* 1D2F14 801E21A4 C5240000 */  lwc1       $f4, 0x0($t1)
/* 1D2F18 801E21A8 4604B032 */  c.eq.s     $f22, $f4
/* 1D2F1C 801E21AC 00000000 */  nop
/* 1D2F20 801E21B0 45010005 */  bc1t       .L801E21C8_ovl10
/* 1D2F24 801E21B4 00000000 */   nop
/* 1D2F28 801E21B8 0C077F30 */  jal        func_801DFCC0_ovl10
/* 1D2F2C 801E21BC 00000000 */   nop
/* 1D2F30 801E21C0 10000004 */  b          .L801E21D4_ovl10
/* 1D2F34 801E21C4 8EC40000 */   lw        $a0, 0x0($s6)
.L801E21C8_ovl10:
/* 1D2F38 801E21C8 0C02BC9F */  jal        func_800AF27C
/* 1D2F3C 801E21CC 00000000 */   nop
/* 1D2F40 801E21D0 8EC40000 */  lw         $a0, 0x0($s6)
.L801E21D4_ovl10:
/* 1D2F44 801E21D4 3C01800E */  lui        $at, %hi(D_800E64D0)
glabel func_801E21D8_ovl12
/* 1D2F48 801E21D8 3C10800F */  lui        $s0, %hi(D_800EA520)
.L801E21DC_ovl9:
/* 1D2F4C 801E21DC 8C880000 */  lw         $t0, 0x0($a0)
.L801E21E0_ovl9:
/* 1D2F50 801E21E0 2610A520 */  addiu      $s0, $s0, %lo(D_800EA520)
/* 1D2F54 801E21E4 3C1E800E */  lui        $fp, %hi(D_800E3750)
/* 1D2F58 801E21E8 00085080 */  sll        $t2, $t0, 2
/* 1D2F5C 801E21EC 022AC021 */  addu       $t8, $s1, $t2
/* 1D2F60 801E21F0 E7160000 */  swc1       $f22, 0x0($t8)
.L801E21F4_ovl17:
/* 1D2F64 801E21F4 8C8C0000 */  lw         $t4, 0x0($a0)
.L801E21F8_ovl9:
/* 1D2F68 801E21F8 3C17800E */  lui        $s7, %hi(D_800E6690)
/* 1D2F6C 801E21FC 3C15800F */  lui        $s5, %hi(D_800EA6E0)
.L801E2200_ovl17:
/* 1D2F70 801E2200 000C6880 */  sll        $t5, $t4, 2
/* 1D2F74 801E2204 002D0821 */  addu       $at, $at, $t5
/* 1D2F78 801E2208 E43664D0 */  swc1       $f22, %lo(D_800E64D0)($at)
glabel func_801E220C_ovl17
/* 1D2F7C 801E220C 8C8E0000 */  lw         $t6, 0x0($a0)
/* 1D2F80 801E2210 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E2214_ovl13:
/* 1D2F84 801E2214 3C14800F */  lui        $s4, %hi(D_800EA8A0)
/* 1D2F88 801E2218 000E5880 */  sll        $t3, $t6, 2
.L801E221C_ovl9:
/* 1D2F8C 801E221C 002B0821 */  addu       $at, $at, $t3
/* 1D2F90 801E2220 E4363210 */  swc1       $f22, %lo(D_800E3210)($at)
/* 1D2F94 801E2224 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1D2F98 801E2228 3C01800F */  lui        $at, %hi(D_800E9E20)
.L801E222C_ovl14:
/* 1D2F9C 801E222C 3C13800E */  lui        $s3, %hi(gEntitiesNextPosYArray)
/* 1D2FA0 801E2230 000FC880 */  sll        $t9, $t7, 2
/* 1D2FA4 801E2234 00390821 */  addu       $at, $at, $t9
/* 1D2FA8 801E2238 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1D2FAC 801E223C 8C890000 */  lw         $t1, 0x0($a0)
/* 1D2FB0 801E2240 3C12801F */  lui        $s2, %hi(func_801F427C_ovl9 + 0xE8)
/* 1D2FB4 801E2244 26524364 */  addiu      $s2, $s2, %lo(func_801F427C_ovl9 + 0xE8)
/* 1D2FB8 801E2248 00094080 */  sll        $t0, $t1, 2
/* 1D2FBC 801E224C 02085021 */  addu       $t2, $s0, $t0
/* 1D2FC0 801E2250 AD400000 */  sw         $zero, 0x0($t2)
/* 1D2FC4 801E2254 8C820000 */  lw         $v0, 0x0($a0)
.L801E2258_ovl17:
/* 1D2FC8 801E2258 26732790 */  addiu      $s3, $s3, %lo(gEntitiesNextPosYArray)
/* 1D2FCC 801E225C 2694A8A0 */  addiu      $s4, $s4, %lo(D_800EA8A0)
/* 1D2FD0 801E2260 00021080 */  sll        $v0, $v0, 2
.L801E2264_ovl12:
/* 1D2FD4 801E2264 0202C021 */  addu       $t8, $s0, $v0
/* 1D2FD8 801E2268 8F050000 */  lw         $a1, 0x0($t8)
.L801E226C_ovl9:
/* 1D2FDC 801E226C 26B5A6E0 */  addiu      $s5, $s5, %lo(D_800EA6E0)
/* 1D2FE0 801E2270 26F76690 */  addiu      $s7, $s7, %lo(D_800E6690)
/* 1D2FE4 801E2274 28A1000A */  slti       $at, $a1, 0xA
/* 1D2FE8 801E2278 102000D9 */  beqz       $at, .L801E25E0_ovl10
.L801E227C_ovl15:
/* 1D2FEC 801E227C 27DE3750 */   addiu     $fp, $fp, %lo(D_800E3750)
/* 1D2FF0 801E2280 3C11800E */  lui        $s1, %hi(D_800E0D50)
/* 1D2FF4 801E2284 3C07800E */  lui        $a3, %hi(D_800E3C90)
/* 1D2FF8 801E2288 4480A000 */  mtc1       $zero, $f20
.L801E228C_ovl12:
/* 1D2FFC 801E228C 24E73C90 */  addiu      $a3, $a3, %lo(D_800E3C90)
/* 1D3000 801E2290 26310D50 */  addiu      $s1, $s1, %lo(D_800E0D50)
.L801E2294_ovl10:
/* 1D3004 801E2294 3C03801F */  lui        $v1, %hi(func_801F427C_ovl9 + 0xBC)
glabel func_801E2298_ovl12
/* 1D3008 801E2298 24634338 */  addiu      $v1, $v1, %lo(func_801F427C_ovl9 + 0xBC)
.L801E229C_ovl17:
/* 1D300C 801E229C 00056080 */  sll        $t4, $a1, 2
/* 1D3010 801E22A0 006C6821 */  addu       $t5, $v1, $t4
/* 1D3014 801E22A4 C5A00000 */  lwc1       $f0, 0x0($t5)
.L801E22A8_ovl9:
/* 1D3018 801E22A8 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1D301C 801E22AC 00220821 */  addu       $at, $at, $v0
/* 1D3020 801E22B0 4614003C */  c.lt.s     $f0, $f20
/* 1D3024 801E22B4 00000000 */  nop
/* 1D3028 801E22B8 45000006 */  bc1f       .L801E22D4_ovl10
/* 1D302C 801E22BC 00000000 */   nop
.L801E22C0_ovl17:
/* 1D3030 801E22C0 3C01800E */  lui        $at, %hi(D_800E6850)
.L801E22C4_ovl14:
/* 1D3034 801E22C4 46000187 */  neg.s      $f6, $f0
/* 1D3038 801E22C8 00220821 */  addu       $at, $at, $v0
.L801E22CC_ovl13:
/* 1D303C 801E22CC 10000002 */  b          func_801E22D8_ovl15
/* 1D3040 801E22D0 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
.L801E22D4_ovl10:
/* 1D3044 801E22D4 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
glabel func_801E22D8_ovl15
/* 1D3048 801E22D8 8C820000 */  lw         $v0, 0x0($a0)
.L801E22DC_ovl16:
/* 1D304C 801E22DC 00021080 */  sll        $v0, $v0, 2
/* 1D3050 801E22E0 02027021 */  addu       $t6, $s0, $v0
/* 1D3054 801E22E4 8DCB0000 */  lw         $t3, 0x0($t6)
/* 1D3058 801E22E8 00E24021 */  addu       $t0, $a3, $v0
/* 1D305C 801E22EC 00E24821 */  addu       $t1, $a3, $v0
/* 1D3060 801E22F0 000B7880 */  sll        $t7, $t3, 2
/* 1D3064 801E22F4 006FC821 */  addu       $t9, $v1, $t7
glabel func_801E22F8_ovl12
/* 1D3068 801E22F8 C7200000 */  lwc1       $f0, 0x0($t9)
glabel func_801E22FC_ovl17
/* 1D306C 801E22FC 4614003C */  c.lt.s     $f0, $f20
/* 1D3070 801E2300 00000000 */  nop
/* 1D3074 801E2304 45020005 */  bc1fl      .L801E231C_ovl10
/* 1D3078 801E2308 E5000000 */   swc1      $f0, 0x0($t0)
/* 1D307C 801E230C 46000207 */  neg.s      $f8, $f0
.L801E2310_ovl17:
/* 1D3080 801E2310 10000002 */  b          .L801E231C_ovl10
/* 1D3084 801E2314 E5280000 */   swc1      $f8, 0x0($t1)
/* 1D3088 801E2318 E5000000 */  swc1       $f0, 0x0($t0)
.L801E231C_ovl10:
/* 1D308C 801E231C 8C8A0000 */  lw         $t2, 0x0($a0)
glabel func_801E2320_ovl17
/* 1D3090 801E2320 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 1D3094 801E2324 44815000 */  mtc1       $at, $f10
/* 1D3098 801E2328 000AC080 */  sll        $t8, $t2, 2
/* 1D309C 801E232C 02986021 */  addu       $t4, $s4, $t8
/* 1D30A0 801E2330 E58A0000 */  swc1       $f10, 0x0($t4)
/* 1D30A4 801E2334 8C820000 */  lw         $v0, 0x0($a0)
/* 1D30A8 801E2338 00021080 */  sll        $v0, $v0, 2
/* 1D30AC 801E233C 02826821 */  addu       $t5, $s4, $v0
/* 1D30B0 801E2340 C5B00000 */  lwc1       $f16, 0x0($t5)
/* 1D30B4 801E2344 02A27021 */  addu       $t6, $s5, $v0
/* 1D30B8 801E2348 E5D00000 */  swc1       $f16, 0x0($t6)
/* 1D30BC 801E234C 8C830000 */  lw         $v1, 0x0($a0)
/* 1D30C0 801E2350 00031080 */  sll        $v0, $v1, 2
.L801E2354_ovl9:
/* 1D30C4 801E2354 02023021 */  addu       $a2, $s0, $v0
.L801E2358_ovl14:
/* 1D30C8 801E2358 8CC50000 */  lw         $a1, 0x0($a2)
/* 1D30CC 801E235C 02A27821 */  addu       $t7, $s5, $v0
/* 1D30D0 801E2360 28A1000B */  slti       $at, $a1, 0xB
/* 1D30D4 801E2364 10200093 */  beqz       $at, .L801E25B4_ovl10
/* 1D30D8 801E2368 00055880 */   sll       $t3, $a1, 2
glabel func_801E236C_ovl9
/* 1D30DC 801E236C 3C01801F */  lui        $at, %hi(func_801F4368_ovl9 + 0x28)
/* 1D30E0 801E2370 002B0821 */  addu       $at, $at, $t3
/* 1D30E4 801E2374 C4204390 */  lwc1       $f0, %lo(func_801F4368_ovl9 + 0x28)($at)
glabel func_801E2378_ovl14
/* 1D30E8 801E2378 C5F20000 */  lwc1       $f18, 0x0($t7)
/* 1D30EC 801E237C 0282C821 */  addu       $t9, $s4, $v0
/* 1D30F0 801E2380 4612003C */  c.lt.s     $f0, $f18
/* 1D30F4 801E2384 00000000 */  nop
/* 1D30F8 801E2388 45030006 */  bc1tl      .L801E23A4_ovl10
/* 1D30FC 801E238C 02224821 */   addu      $t1, $s1, $v0
.L801E2390_ovl17:
/* 1D3100 801E2390 C7240000 */  lwc1       $f4, 0x0($t9)
.L801E2394_ovl12:
/* 1D3104 801E2394 4604003C */  c.lt.s     $f0, $f4
.L801E2398_ovl16:
/* 1D3108 801E2398 00000000 */  nop
.L801E239C_ovl15:
/* 1D310C 801E239C 45000085 */  bc1f       .L801E25B4_ovl10
glabel func_801E23A0_ovl12
/* 1D3110 801E23A0 02224821 */   addu      $t1, $s1, $v0
.L801E23A4_ovl10:
/* 1D3114 801E23A4 8D250000 */  lw         $a1, 0x0($t1)
/* 1D3118 801E23A8 0C03E60A */  jal        func_800F9828
/* 1D311C 801E23AC 00602025 */   or        $a0, $v1, $zero
/* 1D3120 801E23B0 4614003C */  c.lt.s     $f0, $f20
/* 1D3124 801E23B4 00000000 */  nop
.L801E23B8_ovl13:
/* 1D3128 801E23B8 45020010 */  bc1fl      .L801E23FC_ovl10
/* 1D312C 801E23BC 8ECB0000 */   lw        $t3, 0x0($s6)
/* 1D3130 801E23C0 8EC80000 */  lw         $t0, 0x0($s6)
/* 1D3134 801E23C4 8D030000 */  lw         $v1, 0x0($t0)
/* 1D3138 801E23C8 00035080 */  sll        $t2, $v1, 2
/* 1D313C 801E23CC 022AC021 */  addu       $t8, $s1, $t2
/* 1D3140 801E23D0 8F050000 */  lw         $a1, 0x0($t8)
/* 1D3144 801E23D4 0C03E60A */  jal        func_800F9828
/* 1D3148 801E23D8 00602025 */   or        $a0, $v1, $zero
/* 1D314C 801E23DC 8EC40000 */  lw         $a0, 0x0($s6)
glabel func_801E23E0_ovl17
/* 1D3150 801E23E0 46000187 */  neg.s      $f6, $f0
/* 1D3154 801E23E4 8C8C0000 */  lw         $t4, 0x0($a0)
/* 1D3158 801E23E8 000C6880 */  sll        $t5, $t4, 2
/* 1D315C 801E23EC 02AD7021 */  addu       $t6, $s5, $t5
/* 1D3160 801E23F0 1000000D */  b          .L801E2428_ovl10
.L801E23F4_ovl15:
/* 1D3164 801E23F4 E5C60000 */   swc1      $f6, 0x0($t6)
glabel func_801E23F8_ovl14
/* 1D3168 801E23F8 8ECB0000 */  lw         $t3, 0x0($s6)
.L801E23FC_ovl10:
/* 1D316C 801E23FC 8D630000 */  lw         $v1, 0x0($t3)
.L801E2400_ovl13:
/* 1D3170 801E2400 00037880 */  sll        $t7, $v1, 2
.L801E2404_ovl14:
/* 1D3174 801E2404 022FC821 */  addu       $t9, $s1, $t7
/* 1D3178 801E2408 8F250000 */  lw         $a1, 0x0($t9)
/* 1D317C 801E240C 0C03E60A */  jal        func_800F9828
glabel func_801E2410_ovl14
/* 1D3180 801E2410 00602025 */   or        $a0, $v1, $zero
/* 1D3184 801E2414 8EC40000 */  lw         $a0, 0x0($s6)
/* 1D3188 801E2418 8C890000 */  lw         $t1, 0x0($a0)
/* 1D318C 801E241C 00094080 */  sll        $t0, $t1, 2
/* 1D3190 801E2420 02A85021 */  addu       $t2, $s5, $t0
/* 1D3194 801E2424 E5400000 */  swc1       $f0, 0x0($t2)
.L801E2428_ovl10:
/* 1D3198 801E2428 4600B03C */  c.lt.s     $f22, $f0
/* 1D319C 801E242C 00000000 */  nop
/* 1D31A0 801E2430 4502000D */  bc1fl      .L801E2468_ovl16
/* 1D31A4 801E2434 8C820000 */   lw        $v0, 0x0($a0)
/* 1D31A8 801E2438 8C820000 */  lw         $v0, 0x0($a0)
/* 1D31AC 801E243C 00021080 */  sll        $v0, $v0, 2
/* 1D31B0 801E2440 0202C021 */  addu       $t8, $s0, $v0
/* 1D31B4 801E2444 8F0C0000 */  lw         $t4, 0x0($t8)
.L801E2448_ovl15:
/* 1D31B8 801E2448 02E25821 */  addu       $t3, $s7, $v0
.L801E244C_ovl15:
/* 1D31BC 801E244C 000C6880 */  sll        $t5, $t4, 2
/* 1D31C0 801E2450 024D7021 */  addu       $t6, $s2, $t5
/* 1D31C4 801E2454 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 1D31C8 801E2458 46004287 */  neg.s      $f10, $f8
/* 1D31CC 801E245C 1000000A */  b          .L801E2488_ovl12
/* 1D31D0 801E2460 E56A0000 */   swc1      $f10, 0x0($t3)
/* 1D31D4 801E2464 8C820000 */  lw         $v0, 0x0($a0)
.L801E2468_ovl16:
/* 1D31D8 801E2468 00021080 */  sll        $v0, $v0, 2
.L801E246C_ovl15:
/* 1D31DC 801E246C 02027821 */  addu       $t7, $s0, $v0
/* 1D31E0 801E2470 8DF90000 */  lw         $t9, 0x0($t7)
/* 1D31E4 801E2474 02E25021 */  addu       $t2, $s7, $v0
/* 1D31E8 801E2478 00194880 */  sll        $t1, $t9, 2
/* 1D31EC 801E247C 02494021 */  addu       $t0, $s2, $t1
.L801E2480_ovl9:
/* 1D31F0 801E2480 C5100000 */  lwc1       $f16, 0x0($t0)
/* 1D31F4 801E2484 E5500000 */  swc1       $f16, 0x0($t2)
.L801E2488_ovl12:
/* 1D31F8 801E2488 8C820000 */  lw         $v0, 0x0($a0)
/* 1D31FC 801E248C 00021080 */  sll        $v0, $v0, 2
/* 1D3200 801E2490 02226021 */  addu       $t4, $s1, $v0
glabel func_801E2494_ovl12
/* 1D3204 801E2494 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1D3208 801E2498 0262C021 */  addu       $t8, $s3, $v0
/* 1D320C 801E249C C7000000 */  lwc1       $f0, 0x0($t8)
/* 1D3210 801E24A0 000D7080 */  sll        $t6, $t5, 2
/* 1D3214 801E24A4 026E5821 */  addu       $t3, $s3, $t6
/* 1D3218 801E24A8 C5620000 */  lwc1       $f2, 0x0($t3)
/* 1D321C 801E24AC 4602003C */  c.lt.s     $f0, $f2
/* 1D3220 801E24B0 00000000 */  nop
/* 1D3224 801E24B4 45020007 */  bc1fl      .L801E24D4_ovl10
/* 1D3228 801E24B8 46020181 */   sub.s     $f6, $f0, $f2
/* 1D322C 801E24BC 46020481 */  sub.s      $f18, $f0, $f2
/* 1D3230 801E24C0 02827821 */  addu       $t7, $s4, $v0
/* 1D3234 801E24C4 46009107 */  neg.s      $f4, $f18
/* 1D3238 801E24C8 10000004 */  b          .L801E24DC_ovl10
/* 1D323C 801E24CC E5E40000 */   swc1      $f4, 0x0($t7)
/* 1D3240 801E24D0 46020181 */  sub.s      $f6, $f0, $f2
.L801E24D4_ovl10:
/* 1D3244 801E24D4 0282C821 */  addu       $t9, $s4, $v0
.L801E24D8_ovl12:
/* 1D3248 801E24D8 E7260000 */  swc1       $f6, 0x0($t9)
.L801E24DC_ovl10:
/* 1D324C 801E24DC 8C820000 */  lw         $v0, 0x0($a0)
/* 1D3250 801E24E0 00021080 */  sll        $v0, $v0, 2
/* 1D3254 801E24E4 02224021 */  addu       $t0, $s1, $v0
/* 1D3258 801E24E8 8D0A0000 */  lw         $t2, 0x0($t0)
/* 1D325C 801E24EC 02624821 */  addu       $t1, $s3, $v0
/* 1D3260 801E24F0 C5280000 */  lwc1       $f8, 0x0($t1)
/* 1D3264 801E24F4 000AC080 */  sll        $t8, $t2, 2
.L801E24F8_ovl12:
/* 1D3268 801E24F8 02786021 */  addu       $t4, $s3, $t8
/* 1D326C 801E24FC C58A0000 */  lwc1       $f10, 0x0($t4)
/* 1D3270 801E2500 02024821 */  addu       $t1, $s0, $v0
/* 1D3274 801E2504 02026821 */  addu       $t5, $s0, $v0
/* 1D3278 801E2508 460A403C */  c.lt.s     $f8, $f10
.L801E250C_ovl9:
/* 1D327C 801E250C 00000000 */  nop
/* 1D3280 801E2510 4502000A */  bc1fl      .L801E253C_ovl10
.L801E2514_ovl14:
/* 1D3284 801E2514 8D280000 */   lw        $t0, 0x0($t1)
/* 1D3288 801E2518 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1D328C 801E251C 03C2C821 */  addu       $t9, $fp, $v0
.L801E2520_ovl13:
/* 1D3290 801E2520 000E5880 */  sll        $t3, $t6, 2
.L801E2524_ovl16:
/* 1D3294 801E2524 024B7821 */  addu       $t7, $s2, $t3
glabel func_801E2528_ovl12
/* 1D3298 801E2528 C5F00000 */  lwc1       $f16, 0x0($t7)
/* 1D329C 801E252C 46008487 */  neg.s      $f18, $f16
glabel func_801E2530_ovl12
/* 1D32A0 801E2530 10000007 */  b          .L801E2550_ovl10
/* 1D32A4 801E2534 E7320000 */   swc1      $f18, 0x0($t9)
/* 1D32A8 801E2538 8D280000 */  lw         $t0, 0x0($t1)
.L801E253C_ovl10:
/* 1D32AC 801E253C 03C26021 */  addu       $t4, $fp, $v0
/* 1D32B0 801E2540 00085080 */  sll        $t2, $t0, 2
/* 1D32B4 801E2544 024AC021 */  addu       $t8, $s2, $t2
glabel func_801E2548_ovl9
/* 1D32B8 801E2548 C7040000 */  lwc1       $f4, 0x0($t8)
/* 1D32BC 801E254C E5840000 */  swc1       $f4, 0x0($t4)
.L801E2550_ovl10:
/* 1D32C0 801E2550 0C002DAF */  jal        finish_current_thread
/* 1D32C4 801E2554 24040001 */   addiu     $a0, $zero, 0x1
/* 1D32C8 801E2558 8EC40000 */  lw         $a0, 0x0($s6)
.L801E255C_ovl14:
/* 1D32CC 801E255C 8C830000 */  lw         $v1, 0x0($a0)
/* 1D32D0 801E2560 00031080 */  sll        $v0, $v1, 2
.L801E2564_ovl13:
/* 1D32D4 801E2564 02023021 */  addu       $a2, $s0, $v0
/* 1D32D8 801E2568 8CC50000 */  lw         $a1, 0x0($a2)
/* 1D32DC 801E256C 02A27021 */  addu       $t6, $s5, $v0
/* 1D32E0 801E2570 28A1000B */  slti       $at, $a1, 0xB
/* 1D32E4 801E2574 1020000F */  beqz       $at, .L801E25B4_ovl10
/* 1D32E8 801E2578 00056880 */   sll       $t5, $a1, 2
.L801E257C_ovl15:
/* 1D32EC 801E257C 3C01801F */  lui        $at, %hi(func_801F4368_ovl9 + 0x28)
/* 1D32F0 801E2580 002D0821 */  addu       $at, $at, $t5
/* 1D32F4 801E2584 C4204390 */  lwc1       $f0, %lo(func_801F4368_ovl9 + 0x28)($at)
glabel func_801E2588_ovl9
/* 1D32F8 801E2588 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 1D32FC 801E258C 4606003C */  c.lt.s     $f0, $f6
/* 1D3300 801E2590 00000000 */  nop
/* 1D3304 801E2594 4503FF83 */  bc1tl      .L801E23A4_ovl10
/* 1D3308 801E2598 02224821 */   addu      $t1, $s1, $v0
/* 1D330C 801E259C 02825821 */  addu       $t3, $s4, $v0
/* 1D3310 801E25A0 C5680000 */  lwc1       $f8, 0x0($t3)
/* 1D3314 801E25A4 4608003C */  c.lt.s     $f0, $f8
/* 1D3318 801E25A8 00000000 */  nop
.L801E25AC_ovl14:
/* 1D331C 801E25AC 4503FF7D */  bc1tl      .L801E23A4_ovl10
/* 1D3320 801E25B0 02224821 */   addu      $t1, $s1, $v0
.L801E25B4_ovl10:
/* 1D3324 801E25B4 24AF0001 */  addiu      $t7, $a1, 0x1
/* 1D3328 801E25B8 ACCF0000 */  sw         $t7, 0x0($a2)
/* 1D332C 801E25BC 8C820000 */  lw         $v0, 0x0($a0)
.L801E25C0_ovl17:
/* 1D3330 801E25C0 3C07800E */  lui        $a3, %hi(D_800E3C90)
/* 1D3334 801E25C4 24E73C90 */  addiu      $a3, $a3, %lo(D_800E3C90)
/* 1D3338 801E25C8 00021080 */  sll        $v0, $v0, 2
/* 1D333C 801E25CC 0202C821 */  addu       $t9, $s0, $v0
.L801E25D0_ovl15:
/* 1D3340 801E25D0 8F250000 */  lw         $a1, 0x0($t9)
.L801E25D4_ovl15:
/* 1D3344 801E25D4 28A1000A */  slti       $at, $a1, 0xA
/* 1D3348 801E25D8 1420FF2E */  bnez       $at, .L801E2294_ovl10
/* 1D334C 801E25DC 00000000 */   nop
.L801E25E0_ovl10:
/* 1D3350 801E25E0 3C1E800E */  lui        $fp, %hi(D_800E3750)
/* 1D3354 801E25E4 0C02BC9F */  jal        func_800AF27C
/* 1D3358 801E25E8 27DE3750 */   addiu     $fp, $fp, %lo(D_800E3750)
/* 1D335C 801E25EC 0C02CCFD */  jal        func_800B33F4
.L801E25F0_ovl14:
/* 1D3360 801E25F0 00000000 */   nop
.L801E25F4_ovl16:
/* 1D3364 801E25F4 8EC40000 */  lw         $a0, 0x0($s6)
/* 1D3368 801E25F8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1D336C 801E25FC 3C10800F */  lui        $s0, %hi(D_800E8920)
/* 1D3370 801E2600 8C890000 */  lw         $t1, 0x0($a0)
/* 1D3374 801E2604 26108920 */  addiu      $s0, $s0, %lo(D_800E8920)
/* 1D3378 801E2608 00094080 */  sll        $t0, $t1, 2
/* 1D337C 801E260C 00280821 */  addu       $at, $at, $t0
glabel func_801E2610_ovl14
/* 1D3380 801E2610 E4363210 */  swc1       $f22, %lo(D_800E3210)($at)
/* 1D3384 801E2614 8C8A0000 */  lw         $t2, 0x0($a0)
/* 1D3388 801E2618 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 1D338C 801E261C 44815000 */  mtc1       $at, $f10
/* 1D3390 801E2620 000AC080 */  sll        $t8, $t2, 2
/* 1D3394 801E2624 03D86021 */  addu       $t4, $fp, $t8
/* 1D3398 801E2628 E58A0000 */  swc1       $f10, 0x0($t4)
.L801E262C_ovl17:
/* 1D339C 801E262C 8C8D0000 */  lw         $t5, 0x0($a0)
glabel func_801E2630_ovl13
/* 1D33A0 801E2630 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 1D33A4 801E2634 44818000 */  mtc1       $at, $f16
/* 1D33A8 801E2638 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1D33AC 801E263C 000D7080 */  sll        $t6, $t5, 2
/* 1D33B0 801E2640 002E0821 */  addu       $at, $at, $t6
/* 1D33B4 801E2644 E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
/* 1D33B8 801E2648 8C8B0000 */  lw         $t3, 0x0($a0)
/* 1D33BC 801E264C 000B7880 */  sll        $t7, $t3, 2
/* 1D33C0 801E2650 020FC821 */  addu       $t9, $s0, $t7
/* 1D33C4 801E2654 8F290000 */  lw         $t1, 0x0($t9)
/* 1D33C8 801E2658 1520000A */  bnez       $t1, .L801E2684_ovl10
/* 1D33CC 801E265C 00000000 */   nop
.L801E2660_ovl10:
/* 1D33D0 801E2660 0C002DAF */  jal        finish_current_thread
/* 1D33D4 801E2664 24040001 */   addiu     $a0, $zero, 0x1
.L801E2668_ovl17:
/* 1D33D8 801E2668 8EC80000 */  lw         $t0, 0x0($s6)
/* 1D33DC 801E266C 8D0A0000 */  lw         $t2, 0x0($t0)
/* 1D33E0 801E2670 000AC080 */  sll        $t8, $t2, 2
/* 1D33E4 801E2674 02186021 */  addu       $t4, $s0, $t8
/* 1D33E8 801E2678 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1D33EC 801E267C 11A0FFF8 */  beqz       $t5, .L801E2660_ovl10
/* 1D33F0 801E2680 00000000 */   nop
.L801E2684_ovl10:
/* 1D33F4 801E2684 0C02BC9F */  jal        func_800AF27C
/* 1D33F8 801E2688 00000000 */   nop
.L801E268C_ovl17:
/* 1D33FC 801E268C 8EC40000 */  lw         $a0, 0x0($s6)
/* 1D3400 801E2690 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1D3404 801E2694 2402FFFF */  addiu      $v0, $zero, -0x1
glabel func_801E2698_ovl9
/* 1D3408 801E2698 8C8E0000 */  lw         $t6, 0x0($a0)
/* 1D340C 801E269C 24090001 */  addiu      $t1, $zero, 0x1
/* 1D3410 801E26A0 8FBF0054 */  lw         $ra, 0x54($sp)
/* 1D3414 801E26A4 000E5880 */  sll        $t3, $t6, 2
glabel func_801E26A8_ovl12
/* 1D3418 801E26A8 002B0821 */  addu       $at, $at, $t3
.L801E26AC_ovl15:
/* 1D341C 801E26AC AC2298E0 */  sw         $v0, %lo(D_800E98E0)($at)
.L801E26B0_ovl16:
/* 1D3420 801E26B0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1D3424 801E26B4 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1D3428 801E26B8 24180013 */  addiu      $t8, $zero, 0x13
/* 1D342C 801E26BC 000FC880 */  sll        $t9, $t7, 2
/* 1D3430 801E26C0 00390821 */  addu       $at, $at, $t9
/* 1D3434 801E26C4 AC229AA0 */  sw         $v0, %lo(D_800E9AA0)($at)
.L801E26C8_ovl13:
/* 1D3438 801E26C8 8C880000 */  lw         $t0, 0x0($a0)
/* 1D343C 801E26CC 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801E26D0_ovl13:
/* 1D3440 801E26D0 8FB60048 */  lw         $s6, 0x48($sp)
/* 1D3444 801E26D4 00085080 */  sll        $t2, $t0, 2
/* 1D3448 801E26D8 002A0821 */  addu       $at, $at, $t2
/* 1D344C 801E26DC AC299C60 */  sw         $t1, %lo(D_800E9C60)($at)
/* 1D3450 801E26E0 8C8C0000 */  lw         $t4, 0x0($a0)
/* 1D3454 801E26E4 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801E26E8_ovl13:
/* 1D3458 801E26E8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1D345C 801E26EC 000C6880 */  sll        $t5, $t4, 2
/* 1D3460 801E26F0 002D0821 */  addu       $at, $at, $t5
.L801E26F4_ovl13:
/* 1D3464 801E26F4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 1D3468 801E26F8 8FB00030 */  lw         $s0, 0x30($sp)
/* 1D346C 801E26FC 8FB10034 */  lw         $s1, 0x34($sp)
/* 1D3470 801E2700 8FB20038 */  lw         $s2, 0x38($sp)
.L801E2704_ovl15:
/* 1D3474 801E2704 8FB3003C */  lw         $s3, 0x3C($sp)
/* 1D3478 801E2708 8FB40040 */  lw         $s4, 0x40($sp)
glabel func_801E270C_ovl9
/* 1D347C 801E270C 8FB50044 */  lw         $s5, 0x44($sp)
/* 1D3480 801E2710 8FB7004C */  lw         $s7, 0x4C($sp)
/* 1D3484 801E2714 8FBE0050 */  lw         $fp, 0x50($sp)
/* 1D3488 801E2718 AC38DC50 */  sw         $t8, %lo(gEntityVtableIndexArray)($at)
/* 1D348C 801E271C 03E00008 */  jr         $ra
/* 1D3490 801E2720 27BD0058 */   addiu     $sp, $sp, 0x58
