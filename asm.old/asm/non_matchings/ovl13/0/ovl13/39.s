glabel func_801E2034_ovl13 # 39
/* 1F9FB4 801E2034 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 1F9FB8 801E2038 AFB10020 */  sw          $s1, 0x20($sp)
/* 1F9FBC 801E203C 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1F9FC0 801E2040 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1F9FC4 801E2044 8E230000 */  lw          $v1, 0x0($s1)
/* 1F9FC8 801E2048 AFBF002C */  sw          $ra, 0x2C($sp)
/* 1F9FCC 801E204C AFB30028 */  sw          $s3, 0x28($sp)
/* 1F9FD0 801E2050 AFB20024 */  sw          $s2, 0x24($sp)
/* 1F9FD4 801E2054 AFB0001C */  sw          $s0, 0x1C($sp)
/* 1F9FD8 801E2058 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 1F9FDC 801E205C AFA40030 */  sw          $a0, 0x30($sp)
/* 1F9FE0 801E2060 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F9FE4 801E2064 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F9FE8 801E2068 240E000A */  addiu       $t6, $zero, 0xA
/* 1F9FEC 801E206C 000FC080 */  sll         $t8, $t7, 2
/* 1F9FF0 801E2070 00380821 */  addu        $at, $at, $t8
/* 1F9FF4 801E2074 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1F9FF8 801E2078 8C680000 */  lw          $t0, 0x0($v1)
/* 1F9FFC 801E207C 3C10800E */  lui         $s0, %hi(D_800E1B50)
/* 1FA000 801E2080 26101B50 */  addiu       $s0, $s0, %lo(D_800E1B50)
/* 1FA004 801E2084 00084880 */  sll         $t1, $t0, 2
/* 1FA008 801E2088 02095021 */  addu        $t2, $s0, $t1
/* 1FA00C 801E208C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FA010 801E2090 3C19801E */  lui         $t9, %hi(D_801D93A8)
/* 1FA014 801E2094 273993A8 */  addiu       $t9, $t9, %lo(D_801D93A8)
/* 1FA018 801E2098 AD79008C */  sw          $t9, 0x8C($t3)
/* 1FA01C 801E209C 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1FA020 801E20A0 3C04801E */  lui         $a0, %hi(D_801DAB04)
/* 1FA024 801E20A4 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1FA028 801E20A8 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FA02C 801E20AC 2484AB04 */  addiu       $a0, $a0, %lo(D_801DAB04)
/* 1FA030 801E20B0 000D7880 */  sll         $t7, $t5, 2
/* 1FA034 801E20B4 002F0821 */  addu        $at, $at, $t7
/* 1FA038 801E20B8 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1FA03C 801E20BC AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1FA040 801E20C0 8E380000 */  lw          $t8, 0x0($s1)
/* 1FA044 801E20C4 3C0E801E */  lui         $t6, %hi(D_801DAE1C)
/* 1FA048 801E20C8 25CEAE1C */  addiu       $t6, $t6, %lo(D_801DAE1C)
/* 1FA04C 801E20CC 8F080000 */  lw          $t0, 0x0($t8)
/* 1FA050 801E20D0 3C01800F */  lui         $at, %hi(D_800EA360)
/* 1FA054 801E20D4 240B0001 */  addiu       $t3, $zero, 0x1
/* 1FA058 801E20D8 00084880 */  sll         $t1, $t0, 2
/* 1FA05C 801E20DC 02095021 */  addu        $t2, $s0, $t1
/* 1FA060 801E20E0 8D590000 */  lw          $t9, 0x0($t2)
/* 1FA064 801E20E4 3C040001 */  lui         $a0, (0x10426 >> 16)
/* 1FA068 801E20E8 34840426 */  ori         $a0, $a0, (0x10426 & 0xFFFF)
/* 1FA06C 801E20EC AF2E0098 */  sw          $t6, 0x98($t9)
/* 1FA070 801E20F0 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1FA074 801E20F4 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FA078 801E20F8 000D7880 */  sll         $t7, $t5, 2
/* 1FA07C 801E20FC 002F0821 */  addu        $at, $at, $t7
/* 1FA080 801E2100 0C02A806 */  jal         func_800AA018
/* 1FA084 801E2104 AC2BA360 */   sw         $t3, %lo(D_800EA360)($at)
/* 1FA088 801E2108 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA08C 801E210C 3C01801E */  lui         $at, %hi(D_801E5D9C_ovl13)
/* 1FA090 801E2110 C4205D9C */  lwc1        $f0, %lo(D_801E5D9C_ovl13)($at)
/* 1FA094 801E2114 8C780000 */  lw          $t8, 0x0($v1)
/* 1FA098 801E2118 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1FA09C 801E211C 3C13800E */  lui         $s3, %hi(D_800E6690)
/* 1FA0A0 801E2120 00184080 */  sll         $t0, $t8, 2
/* 1FA0A4 801E2124 00280821 */  addu        $at, $at, $t0
/* 1FA0A8 801E2128 E4203750 */  swc1        $f0, %lo(D_800E3750)($at)
/* 1FA0AC 801E212C 8C690000 */  lw          $t1, 0x0($v1)
/* 1FA0B0 801E2130 3C014100 */  lui         $at, (0x41000000 >> 16)
/* 1FA0B4 801E2134 44812000 */  mtc1        $at, $f4
/* 1FA0B8 801E2138 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1FA0BC 801E213C 00095080 */  sll         $t2, $t1, 2
/* 1FA0C0 801E2140 002A0821 */  addu        $at, $at, $t2
/* 1FA0C4 801E2144 E4243C90 */  swc1        $f4, %lo(D_800E3C90)($at)
/* 1FA0C8 801E2148 8C620000 */  lw          $v0, 0x0($v1)
/* 1FA0CC 801E214C 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1FA0D0 801E2150 26736690 */  addiu       $s3, $s3, %lo(D_800E6690)
/* 1FA0D4 801E2154 00021080 */  sll         $v0, $v0, 2
/* 1FA0D8 801E2158 00220821 */  addu        $at, $at, $v0
/* 1FA0DC 801E215C C42664D0 */  lwc1        $f6, %lo(D_800E64D0)($at)
/* 1FA0E0 801E2160 02627021 */  addu        $t6, $s3, $v0
/* 1FA0E4 801E2164 2404000A */  addiu       $a0, $zero, 0xA
/* 1FA0E8 801E2168 46003202 */  mul.s       $f8, $f6, $f0
/* 1FA0EC 801E216C 0C002DAF */  jal         finish_current_thread
/* 1FA0F0 801E2170 E5C80000 */   swc1       $f8, 0x0($t6)
/* 1FA0F4 801E2174 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA0F8 801E2178 44805000 */  mtc1        $zero, $f10
/* 1FA0FC 801E217C 3C014382 */  lui         $at, (0x43820000 >> 16)
/* 1FA100 801E2180 8C790000 */  lw          $t9, 0x0($v1)
/* 1FA104 801E2184 4481A000 */  mtc1        $at, $f20
/* 1FA108 801E2188 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1FA10C 801E218C 00196080 */  sll         $t4, $t9, 2
/* 1FA110 801E2190 026C6821 */  addu        $t5, $s3, $t4
/* 1FA114 801E2194 E5AA0000 */  swc1        $f10, 0x0($t5)
/* 1FA118 801E2198 8C620000 */  lw          $v0, 0x0($v1)
/* 1FA11C 801E219C 3C12800F */  lui         $s2, %hi(D_800EBBE0)
/* 1FA120 801E21A0 2652BBE0 */  addiu       $s2, $s2, %lo(D_800EBBE0)
/* 1FA124 801E21A4 00021080 */  sll         $v0, $v0, 2
/* 1FA128 801E21A8 02625821 */  addu        $t3, $s3, $v0
/* 1FA12C 801E21AC C5700000 */  lwc1        $f16, 0x0($t3)
/* 1FA130 801E21B0 00220821 */  addu        $at, $at, $v0
/* 1FA134 801E21B4 3C10800E */  lui         $s0, %hi(gEntitiesNextPosYArray)
/* 1FA138 801E21B8 E43064D0 */  swc1        $f16, %lo(D_800E64D0)($at)
/* 1FA13C 801E21BC 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FA140 801E21C0 3C01801E */  lui         $at, %hi(D_801E5DA0_ovl13)
/* 1FA144 801E21C4 C4325DA0 */  lwc1        $f18, %lo(D_801E5DA0_ovl13)($at)
/* 1FA148 801E21C8 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1FA14C 801E21CC 000FC080 */  sll         $t8, $t7, 2
/* 1FA150 801E21D0 00380821 */  addu        $at, $at, $t8
/* 1FA154 801E21D4 E4326850 */  swc1        $f18, %lo(D_800E6850)($at)
/* 1FA158 801E21D8 8C620000 */  lw          $v0, 0x0($v1)
/* 1FA15C 801E21DC 26102790 */  addiu       $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 1FA160 801E21E0 00021080 */  sll         $v0, $v0, 2
/* 1FA164 801E21E4 02424021 */  addu        $t0, $s2, $v0
/* 1FA168 801E21E8 8D090000 */  lw          $t1, 0x0($t0)
/* 1FA16C 801E21EC 0202C821 */  addu        $t9, $s0, $v0
/* 1FA170 801E21F0 C7280000 */  lwc1        $f8, 0x0($t9)
/* 1FA174 801E21F4 00095080 */  sll         $t2, $t1, 2
/* 1FA178 801E21F8 020A7021 */  addu        $t6, $s0, $t2
/* 1FA17C 801E21FC C5C40000 */  lwc1        $f4, 0x0($t6)
/* 1FA180 801E2200 46142181 */  sub.s       $f6, $f4, $f20
/* 1FA184 801E2204 4608303C */  c.lt.s      $f6, $f8
/* 1FA188 801E2208 00000000 */  nop
/* 1FA18C 801E220C 45000012 */  bc1f        L801E2258_ovl13
/* 1FA190 801E2210 00000000 */   nop
glabel L801E2214_ovl13
/* 1FA194 801E2214 0C002DAF */  jal         finish_current_thread
/* 1FA198 801E2218 24040001 */   addiu      $a0, $zero, 0x1
/* 1FA19C 801E221C 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1FA1A0 801E2220 8D820000 */  lw          $v0, 0x0($t4)
/* 1FA1A4 801E2224 00021080 */  sll         $v0, $v0, 2
/* 1FA1A8 801E2228 02426821 */  addu        $t5, $s2, $v0
/* 1FA1AC 801E222C 8DAB0000 */  lw          $t3, 0x0($t5)
/* 1FA1B0 801E2230 02024021 */  addu        $t0, $s0, $v0
/* 1FA1B4 801E2234 C5120000 */  lwc1        $f18, 0x0($t0)
/* 1FA1B8 801E2238 000B7880 */  sll         $t7, $t3, 2
/* 1FA1BC 801E223C 020FC021 */  addu        $t8, $s0, $t7
/* 1FA1C0 801E2240 C70A0000 */  lwc1        $f10, 0x0($t8)
/* 1FA1C4 801E2244 46145401 */  sub.s       $f16, $f10, $f20
/* 1FA1C8 801E2248 4612803C */  c.lt.s      $f16, $f18
/* 1FA1CC 801E224C 00000000 */  nop
/* 1FA1D0 801E2250 4501FFF0 */  bc1t        L801E2214_ovl13
/* 1FA1D4 801E2254 00000000 */   nop
glabel L801E2258_ovl13
/* 1FA1D8 801E2258 0C029D9E */  jal         play_sound
/* 1FA1DC 801E225C 240401A1 */   addiu      $a0, $zero, 0x1A1
/* 1FA1E0 801E2260 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA1E4 801E2264 3C01800F */  lui         $at, %hi(D_800EA360)
/* 1FA1E8 801E2268 3C13800E */  lui         $s3, %hi(D_800DFBD0)
/* 1FA1EC 801E226C 8C690000 */  lw          $t1, 0x0($v1)
/* 1FA1F0 801E2270 2673FBD0 */  addiu       $s3, $s3, %lo(D_800DFBD0)
/* 1FA1F4 801E2274 24040002 */  addiu       $a0, $zero, 0x2
/* 1FA1F8 801E2278 00095080 */  sll         $t2, $t1, 2
/* 1FA1FC 801E227C 002A0821 */  addu        $at, $at, $t2
/* 1FA200 801E2280 AC20A360 */  sw          $zero, %lo(D_800EA360)($at)
/* 1FA204 801E2284 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FA208 801E2288 3C01801E */  lui         $at, %hi(D_801E5DA4_ovl13)
/* 1FA20C 801E228C C4245DA4 */  lwc1        $f4, %lo(D_801E5DA4_ovl13)($at)
/* 1FA210 801E2290 000EC880 */  sll         $t9, $t6, 2
/* 1FA214 801E2294 02796021 */  addu        $t4, $s3, $t9
/* 1FA218 801E2298 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FA21C 801E229C 8DAB0004 */  lw          $t3, 0x4($t5)
/* 1FA220 801E22A0 0C006291 */  jal         random_soft_s32_range
/* 1FA224 801E22A4 E5640034 */   swc1       $f4, 0x34($t3)
/* 1FA228 801E22A8 10400005 */  beqz        $v0, L801E22C0_ovl13
/* 1FA22C 801E22AC 3C01C190 */   lui        $at, (0xC1900000 >> 16)
/* 1FA230 801E22B0 3C014190 */  lui         $at, (0x41900000 >> 16)
/* 1FA234 801E22B4 44810000 */  mtc1        $at, $f0
/* 1FA238 801E22B8 10000004 */  b           L801E22CC_ovl13
/* 1FA23C 801E22BC 3C014120 */   lui        $at, (0x41200000 >> 16)
glabel L801E22C0_ovl13
/* 1FA240 801E22C0 44810000 */  mtc1        $at, $f0
/* 1FA244 801E22C4 00000000 */  nop
/* 1FA248 801E22C8 3C014120 */  lui         $at, (0x41200000 >> 16)
glabel L801E22CC_ovl13
/* 1FA24C 801E22CC 44811000 */  mtc1        $at, $f2
/* 1FA250 801E22D0 3C0143FA */  lui         $at, (0x43FA0000 >> 16)
/* 1FA254 801E22D4 4481A000 */  mtc1        $at, $f20
/* 1FA258 801E22D8 3C01801E */  lui         $at, %hi(D_801E5DA8_ovl13)
/* 1FA25C 801E22DC C4265DA8 */  lwc1        $f6, %lo(D_801E5DA8_ovl13)($at)
/* 1FA260 801E22E0 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA264 801E22E4 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1FA268 801E22E8 46003203 */  div.s       $f8, $f6, $f0
/* 1FA26C 801E22EC 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FA270 801E22F0 44805000 */  mtc1        $zero, $f10
/* 1FA274 801E22F4 44808000 */  mtc1        $zero, $f16
/* 1FA278 801E22F8 000FC080 */  sll         $t8, $t7, 2
/* 1FA27C 801E22FC 00380821 */  addu        $at, $at, $t8
/* 1FA280 801E2300 E428AC20 */  swc1        $f8, %lo(D_800EAC20)($at)
/* 1FA284 801E2304 8C680000 */  lw          $t0, 0x0($v1)
/* 1FA288 801E2308 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1FA28C 801E230C 00084880 */  sll         $t1, $t0, 2
/* 1FA290 801E2310 00290821 */  addu        $at, $at, $t1
/* 1FA294 801E2314 E4223210 */  swc1        $f2, %lo(D_800E3210)($at)
/* 1FA298 801E2318 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1FA29C 801E231C 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1FA2A0 801E2320 000A7080 */  sll         $t6, $t2, 2
/* 1FA2A4 801E2324 002E0821 */  addu        $at, $at, $t6
/* 1FA2A8 801E2328 E42A3750 */  swc1        $f10, %lo(D_800E3750)($at)
/* 1FA2AC 801E232C 8C790000 */  lw          $t9, 0x0($v1)
/* 1FA2B0 801E2330 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1FA2B4 801E2334 00196080 */  sll         $t4, $t9, 2
/* 1FA2B8 801E2338 002C0821 */  addu        $at, $at, $t4
/* 1FA2BC 801E233C E4223C90 */  swc1        $f2, %lo(D_800E3C90)($at)
/* 1FA2C0 801E2340 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1FA2C4 801E2344 3C01801E */  lui         $at, %hi(D_801E5DAC_ovl13)
/* 1FA2C8 801E2348 000D5880 */  sll         $t3, $t5, 2
/* 1FA2CC 801E234C 026B7821 */  addu        $t7, $s3, $t3
/* 1FA2D0 801E2350 8DF80000 */  lw          $t8, 0x0($t7)
/* 1FA2D4 801E2354 8F080004 */  lw          $t0, 0x4($t8)
/* 1FA2D8 801E2358 E5100024 */  swc1        $f16, 0x24($t0)
/* 1FA2DC 801E235C 8E290000 */  lw          $t1, 0x0($s1)
/* 1FA2E0 801E2360 C4325DAC */  lwc1        $f18, %lo(D_801E5DAC_ovl13)($at)
/* 1FA2E4 801E2364 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1FA2E8 801E2368 000A7080 */  sll         $t6, $t2, 2
/* 1FA2EC 801E236C 026EC821 */  addu        $t9, $s3, $t6
/* 1FA2F0 801E2370 8F2C0000 */  lw          $t4, 0x0($t9)
/* 1FA2F4 801E2374 8D8D0008 */  lw          $t5, 0x8($t4)
/* 1FA2F8 801E2378 E5B20030 */  swc1        $f18, 0x30($t5)
/* 1FA2FC 801E237C 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA300 801E2380 8C620000 */  lw          $v0, 0x0($v1)
/* 1FA304 801E2384 00021080 */  sll         $v0, $v0, 2
/* 1FA308 801E2388 02427821 */  addu        $t7, $s2, $v0
/* 1FA30C 801E238C 8DF80000 */  lw          $t8, 0x0($t7)
/* 1FA310 801E2390 02025821 */  addu        $t3, $s0, $v0
/* 1FA314 801E2394 C5640000 */  lwc1        $f4, 0x0($t3)
/* 1FA318 801E2398 00184080 */  sll         $t0, $t8, 2
/* 1FA31C 801E239C 02084821 */  addu        $t1, $s0, $t0
/* 1FA320 801E23A0 C5260000 */  lwc1        $f6, 0x0($t1)
/* 1FA324 801E23A4 46143200 */  add.s       $f8, $f6, $f20
/* 1FA328 801E23A8 4608203C */  c.lt.s      $f4, $f8
/* 1FA32C 801E23AC 00000000 */  nop
/* 1FA330 801E23B0 45020013 */  bc1fl       L801E2400_ovl13
/* 1FA334 801E23B4 3C01442A */   lui        $at, (0x442A0000 >> 16)
glabel L801E23B8_ovl13
/* 1FA338 801E23B8 0C002DAF */  jal         finish_current_thread
/* 1FA33C 801E23BC 24040001 */   addiu      $a0, $zero, 0x1
/* 1FA340 801E23C0 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA344 801E23C4 8C620000 */  lw          $v0, 0x0($v1)
/* 1FA348 801E23C8 00021080 */  sll         $v0, $v0, 2
/* 1FA34C 801E23CC 02427021 */  addu        $t6, $s2, $v0
/* 1FA350 801E23D0 8DD90000 */  lw          $t9, 0x0($t6)
/* 1FA354 801E23D4 02025021 */  addu        $t2, $s0, $v0
/* 1FA358 801E23D8 C54A0000 */  lwc1        $f10, 0x0($t2)
/* 1FA35C 801E23DC 00196080 */  sll         $t4, $t9, 2
/* 1FA360 801E23E0 020C6821 */  addu        $t5, $s0, $t4
/* 1FA364 801E23E4 C5B00000 */  lwc1        $f16, 0x0($t5)
/* 1FA368 801E23E8 46148480 */  add.s       $f18, $f16, $f20
/* 1FA36C 801E23EC 4612503C */  c.lt.s      $f10, $f18
/* 1FA370 801E23F0 00000000 */  nop
/* 1FA374 801E23F4 4501FFF0 */  bc1t        L801E23B8_ovl13
/* 1FA378 801E23F8 00000000 */   nop
/* 1FA37C 801E23FC 3C01442A */  lui         $at, (0x442A0000 >> 16)
glabel L801E2400_ovl13
/* 1FA380 801E2400 4481A000 */  mtc1        $at, $f20
/* 1FA384 801E2404 3C01800F */  lui         $at, %hi(D_800EA360)
/* 1FA388 801E2408 00220821 */  addu        $at, $at, $v0
/* 1FA38C 801E240C 240B0001 */  addiu       $t3, $zero, 0x1
/* 1FA390 801E2410 AC2BA360 */  sw          $t3, %lo(D_800EA360)($at)
/* 1FA394 801E2414 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FA398 801E2418 3C01C47A */  lui         $at, (0xC47A0000 >> 16)
/* 1FA39C 801E241C 44813000 */  mtc1        $at, $f6
/* 1FA3A0 801E2420 000FC080 */  sll         $t8, $t7, 2
/* 1FA3A4 801E2424 02784021 */  addu        $t0, $s3, $t8
/* 1FA3A8 801E2428 8D090000 */  lw          $t1, 0x0($t0)
/* 1FA3AC 801E242C 3C01801E */  lui         $at, %hi(D_801E5DB0_ovl13)
/* 1FA3B0 801E2430 44808000 */  mtc1        $zero, $f16
/* 1FA3B4 801E2434 8D2A0004 */  lw          $t2, 0x4($t1)
/* 1FA3B8 801E2438 44809000 */  mtc1        $zero, $f18
/* 1FA3BC 801E243C E5460024 */  swc1        $f6, 0x24($t2)
/* 1FA3C0 801E2440 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1FA3C4 801E2444 C4245DB0 */  lwc1        $f4, %lo(D_801E5DB0_ovl13)($at)
/* 1FA3C8 801E2448 3C01801E */  lui         $at, %hi(D_801E5DB4_ovl13)
/* 1FA3CC 801E244C 8DD90000 */  lw          $t9, 0x0($t6)
/* 1FA3D0 801E2450 00196080 */  sll         $t4, $t9, 2
/* 1FA3D4 801E2454 026C6821 */  addu        $t5, $s3, $t4
/* 1FA3D8 801E2458 8DAB0000 */  lw          $t3, 0x0($t5)
/* 1FA3DC 801E245C 8D6F0008 */  lw          $t7, 0x8($t3)
/* 1FA3E0 801E2460 E5E40030 */  swc1        $f4, 0x30($t7)
/* 1FA3E4 801E2464 8E380000 */  lw          $t8, 0x0($s1)
/* 1FA3E8 801E2468 C4285DB4 */  lwc1        $f8, %lo(D_801E5DB4_ovl13)($at)
/* 1FA3EC 801E246C 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1FA3F0 801E2470 8F080000 */  lw          $t0, 0x0($t8)
/* 1FA3F4 801E2474 00084880 */  sll         $t1, $t0, 2
/* 1FA3F8 801E2478 02695021 */  addu        $t2, $s3, $t1
/* 1FA3FC 801E247C 8D4E0000 */  lw          $t6, 0x0($t2)
/* 1FA400 801E2480 8DD90004 */  lw          $t9, 0x4($t6)
/* 1FA404 801E2484 E7280034 */  swc1        $f8, 0x34($t9)
/* 1FA408 801E2488 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA40C 801E248C 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1FA410 801E2490 000C6880 */  sll         $t5, $t4, 2
/* 1FA414 801E2494 002D0821 */  addu        $at, $at, $t5
/* 1FA418 801E2498 E430AC20 */  swc1        $f16, %lo(D_800EAC20)($at)
/* 1FA41C 801E249C 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1FA420 801E24A0 3C01C180 */  lui         $at, (0xC1800000 >> 16)
/* 1FA424 801E24A4 44815000 */  mtc1        $at, $f10
/* 1FA428 801E24A8 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1FA42C 801E24AC 000B7880 */  sll         $t7, $t3, 2
/* 1FA430 801E24B0 002F0821 */  addu        $at, $at, $t7
/* 1FA434 801E24B4 E42A3210 */  swc1        $f10, %lo(D_800E3210)($at)
/* 1FA438 801E24B8 8C780000 */  lw          $t8, 0x0($v1)
/* 1FA43C 801E24BC 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1FA440 801E24C0 00184080 */  sll         $t0, $t8, 2
/* 1FA444 801E24C4 00280821 */  addu        $at, $at, $t0
/* 1FA448 801E24C8 E4323750 */  swc1        $f18, %lo(D_800E3750)($at)
/* 1FA44C 801E24CC 8C690000 */  lw          $t1, 0x0($v1)
/* 1FA450 801E24D0 3C014180 */  lui         $at, (0x41800000 >> 16)
/* 1FA454 801E24D4 44813000 */  mtc1        $at, $f6
/* 1FA458 801E24D8 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1FA45C 801E24DC 00095080 */  sll         $t2, $t1, 2
/* 1FA460 801E24E0 002A0821 */  addu        $at, $at, $t2
/* 1FA464 801E24E4 E4263C90 */  swc1        $f6, %lo(D_800E3C90)($at)
/* 1FA468 801E24E8 8C620000 */  lw          $v0, 0x0($v1)
/* 1FA46C 801E24EC 00021080 */  sll         $v0, $v0, 2
/* 1FA470 801E24F0 02427021 */  addu        $t6, $s2, $v0
/* 1FA474 801E24F4 8DD90000 */  lw          $t9, 0x0($t6)
/* 1FA478 801E24F8 02025821 */  addu        $t3, $s0, $v0
/* 1FA47C 801E24FC C5700000 */  lwc1        $f16, 0x0($t3)
/* 1FA480 801E2500 00196080 */  sll         $t4, $t9, 2
/* 1FA484 801E2504 020C6821 */  addu        $t5, $s0, $t4
/* 1FA488 801E2508 C5A40000 */  lwc1        $f4, 0x0($t5)
/* 1FA48C 801E250C 46142201 */  sub.s       $f8, $f4, $f20
/* 1FA490 801E2510 4610403C */  c.lt.s      $f8, $f16
/* 1FA494 801E2514 00000000 */  nop
/* 1FA498 801E2518 45000012 */  bc1f        L801E2564_ovl13
/* 1FA49C 801E251C 00000000 */   nop
glabel L801E2520_ovl13
/* 1FA4A0 801E2520 0C002DAF */  jal         finish_current_thread
/* 1FA4A4 801E2524 24040001 */   addiu      $a0, $zero, 0x1
/* 1FA4A8 801E2528 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1FA4AC 801E252C 8DE20000 */  lw          $v0, 0x0($t7)
/* 1FA4B0 801E2530 00021080 */  sll         $v0, $v0, 2
/* 1FA4B4 801E2534 0242C021 */  addu        $t8, $s2, $v0
/* 1FA4B8 801E2538 8F080000 */  lw          $t0, 0x0($t8)
/* 1FA4BC 801E253C 02027021 */  addu        $t6, $s0, $v0
/* 1FA4C0 801E2540 C5C60000 */  lwc1        $f6, 0x0($t6)
/* 1FA4C4 801E2544 00084880 */  sll         $t1, $t0, 2
/* 1FA4C8 801E2548 02095021 */  addu        $t2, $s0, $t1
/* 1FA4CC 801E254C C54A0000 */  lwc1        $f10, 0x0($t2)
/* 1FA4D0 801E2550 46145481 */  sub.s       $f18, $f10, $f20
/* 1FA4D4 801E2554 4606903C */  c.lt.s      $f18, $f6
/* 1FA4D8 801E2558 00000000 */  nop
/* 1FA4DC 801E255C 4501FFF0 */  bc1t        L801E2520_ovl13
/* 1FA4E0 801E2560 00000000 */   nop
glabel L801E2564_ovl13
/* 1FA4E4 801E2564 0C02CCFD */  jal         func_800B33F4
/* 1FA4E8 801E2568 00000000 */   nop
/* 1FA4EC 801E256C 8E230000 */  lw          $v1, 0x0($s1)
/* 1FA4F0 801E2570 3C0143DC */  lui         $at, (0x43DC0000 >> 16)
/* 1FA4F4 801E2574 44814000 */  mtc1        $at, $f8
/* 1FA4F8 801E2578 8C790000 */  lw          $t9, 0x0($v1)
/* 1FA4FC 801E257C 44805000 */  mtc1        $zero, $f10
/* 1FA500 801E2580 3C01801E */  lui         $at, %hi(D_801E5DB8_ovl13)
/* 1FA504 801E2584 00196080 */  sll         $t4, $t9, 2
/* 1FA508 801E2588 020C1021 */  addu        $v0, $s0, $t4
/* 1FA50C 801E258C C4440000 */  lwc1        $f4, 0x0($v0)
/* 1FA510 801E2590 46082400 */  add.s       $f16, $f4, $f8
/* 1FA514 801E2594 E4500000 */  swc1        $f16, 0x0($v0)
/* 1FA518 801E2598 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1FA51C 801E259C 000D5880 */  sll         $t3, $t5, 2
/* 1FA520 801E25A0 026B7821 */  addu        $t7, $s3, $t3
/* 1FA524 801E25A4 8DF80000 */  lw          $t8, 0x0($t7)
/* 1FA528 801E25A8 8F080004 */  lw          $t0, 0x4($t8)
/* 1FA52C 801E25AC E50A0024 */  swc1        $f10, 0x24($t0)
/* 1FA530 801E25B0 8E290000 */  lw          $t1, 0x0($s1)
/* 1FA534 801E25B4 C4325DB8 */  lwc1        $f18, %lo(D_801E5DB8_ovl13)($at)
/* 1FA538 801E25B8 3C01801E */  lui         $at, %hi(D_801E5DBC_ovl13)
/* 1FA53C 801E25BC 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1FA540 801E25C0 000A7080 */  sll         $t6, $t2, 2
/* 1FA544 801E25C4 026EC821 */  addu        $t9, $s3, $t6
/* 1FA548 801E25C8 8F2C0000 */  lw          $t4, 0x0($t9)
/* 1FA54C 801E25CC 240E0009 */  addiu       $t6, $zero, 0x9
/* 1FA550 801E25D0 8D8D0004 */  lw          $t5, 0x4($t4)
/* 1FA554 801E25D4 E5B20034 */  swc1        $f18, 0x34($t5)
/* 1FA558 801E25D8 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1FA55C 801E25DC C4265DBC */  lwc1        $f6, %lo(D_801E5DBC_ovl13)($at)
/* 1FA560 801E25E0 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FA564 801E25E4 8D6F0000 */  lw          $t7, 0x0($t3)
/* 1FA568 801E25E8 000FC080 */  sll         $t8, $t7, 2
/* 1FA56C 801E25EC 02784021 */  addu        $t0, $s3, $t8
/* 1FA570 801E25F0 8D090000 */  lw          $t1, 0x0($t0)
/* 1FA574 801E25F4 8D2A0008 */  lw          $t2, 0x8($t1)
/* 1FA578 801E25F8 E5460030 */  swc1        $f6, 0x30($t2)
/* 1FA57C 801E25FC 8E390000 */  lw          $t9, 0x0($s1)
/* 1FA580 801E2600 8FBF002C */  lw          $ra, 0x2C($sp)
/* 1FA584 801E2604 8FB10020 */  lw          $s1, 0x20($sp)
/* 1FA588 801E2608 8F2C0000 */  lw          $t4, 0x0($t9)
/* 1FA58C 801E260C 8FB30028 */  lw          $s3, 0x28($sp)
/* 1FA590 801E2610 8FB20024 */  lw          $s2, 0x24($sp)
/* 1FA594 801E2614 000C6880 */  sll         $t5, $t4, 2
/* 1FA598 801E2618 002D0821 */  addu        $at, $at, $t5
/* 1FA59C 801E261C 8FB0001C */  lw          $s0, 0x1C($sp)
/* 1FA5A0 801E2620 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 1FA5A4 801E2624 AC2EDC50 */  sw          $t6, %lo(gEntityVtableIndexArray)($at)
/* 1FA5A8 801E2628 03E00008 */  jr          $ra
/* 1FA5AC 801E262C 27BD0030 */   addiu      $sp, $sp, 0x30
.type func_801E2034_ovl13, @function

.size func_801E2034_ovl13, . - func_801E2034_ovl13
.section .late_rodata
glabel D_801E5D9C_ovl13
/* 1FDD1C 801E5D9C */ .word 0xBDCCCCCD

glabel D_801E5DA0_ovl13
/* 1FDD20 801E5DA0 */ .word 0x477FFF00

glabel D_801E5DA4_ovl13
/* 1FDD24 801E5DA4 */ .word 0x40490FDB

glabel D_801E5DA8_ovl13
/* 1FDD28 801E5DA8 */ .word 0x40490FDB

glabel D_801E5DAC_ovl13
/* 1FDD2C 801E5DAC */ .word 0xBFC90FDB

glabel D_801E5DB0_ovl13
/* 1FDD30 801E5DB0 */ .word 0x3FC90FDB

glabel D_801E5DB4_ovl13
/* 1FDD34 801E5DB4 */ .word 0x40490FDB

glabel D_801E5DB8_ovl13
/* 1FDD38 801E5DB8 */ .word 0x40490FDB

glabel D_801E5DBC_ovl13
/* 1FDD3C 801E5DBC */ .word 0xBFC90FDB

