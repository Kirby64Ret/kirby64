glabel func_801E208C_ovl14
/* 204C7C 801E208C 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 204C80 801E2090 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 204C84 801E2094 8CEE0000 */  lw         $t6, 0x0($a3)
/* 204C88 801E2098 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801E209C_ovl9:
/* 204C8C 801E209C AFBF0014 */  sw         $ra, 0x14($sp)
/* 204C90 801E20A0 AFA40018 */  sw         $a0, 0x18($sp)
.L801E20A4_ovl9:
/* 204C94 801E20A4 8DC30000 */  lw         $v1, 0x0($t6)
/* 204C98 801E20A8 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 204C9C 801E20AC 3C0F801E */  lui        $t7, %hi(func_801E2378_ovl14)
/* 204CA0 801E20B0 00031880 */  sll        $v1, $v1, 2
.L801E20B4_ovl15:
/* 204CA4 801E20B4 00431021 */  addu       $v0, $v0, $v1
/* 204CA8 801E20B8 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
.L801E20BC_ovl17:
/* 204CAC 801E20BC 3C01800E */  lui        $at, %hi(D_800DF150)
/* 204CB0 801E20C0 00230821 */  addu       $at, $at, $v1
/* 204CB4 801E20C4 25EF2378 */  addiu      $t7, $t7, %lo(func_801E2378_ovl14)
.L801E20C8_ovl16:
/* 204CB8 801E20C8 3C18801D */  lui        $t8, %hi(D_801CB4DC_ovl7)
/* 204CBC 801E20CC AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
.L801E20D0_ovl17:
/* 204CC0 801E20D0 2718B4DC */  addiu      $t8, $t8, %lo(D_801CB4DC_ovl7)
/* 204CC4 801E20D4 AC580098 */  sw         $t8, 0x98($v0)
glabel func_801E20D8_ovl16
/* 204CC8 801E20D8 8CF90000 */  lw         $t9, 0x0($a3)
.L801E20DC_ovl15:
/* 204CCC 801E20DC 3C01800F */  lui        $at, %hi(D_800E8920)
/* 204CD0 801E20E0 3C040001 */  lui        $a0, (0x100A2 >> 16)
/* 204CD4 801E20E4 8F280000 */  lw         $t0, 0x0($t9)
/* 204CD8 801E20E8 348400A2 */  ori        $a0, $a0, (0x100A2 & 0xFFFF)
.L801E20EC_ovl15:
/* 204CDC 801E20EC 24050023 */  addiu      $a1, $zero, 0x23
/* 204CE0 801E20F0 00084880 */  sll        $t1, $t0, 2
/* 204CE4 801E20F4 00290821 */  addu       $at, $at, $t1
/* 204CE8 801E20F8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 204CEC 801E20FC 0C02A619 */  jal        func_800A9864
/* 204CF0 801E2100 24060010 */   addiu     $a2, $zero, 0x10
/* 204CF4 801E2104 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
.L801E2108_ovl12:
/* 204CF8 801E2108 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 204CFC 801E210C 3C01800F */  lui        $at, %hi(D_800EC660)
.L801E2110_ovl15:
/* 204D00 801E2110 3C05800E */  lui        $a1, %hi(D_800E6A10)
/* 204D04 801E2114 8D430000 */  lw         $v1, 0x0($t2)
.L801E2118_ovl9:
/* 204D08 801E2118 24A56A10 */  addiu      $a1, $a1, %lo(D_800E6A10)
/* 204D0C 801E211C 3C040001 */  lui        $a0, (0x10560 >> 16)
/* 204D10 801E2120 00031880 */  sll        $v1, $v1, 2
/* 204D14 801E2124 00230821 */  addu       $at, $at, $v1
/* 204D18 801E2128 C424C660 */  lwc1       $f4, %lo(D_800EC660)($at)
.L801E212C_ovl17:
/* 204D1C 801E212C 00A35821 */  addu       $t3, $a1, $v1
/* 204D20 801E2130 34840560 */  ori        $a0, $a0, (0x10560 & 0xFFFF)
.L801E2134_ovl16:
/* 204D24 801E2134 0C02A806 */  jal        func_800AA018
/* 204D28 801E2138 E5640000 */   swc1      $f4, 0x0($t3)
/* 204D2C 801E213C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801E2140_ovl17:
/* 204D30 801E2140 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 204D34 801E2144 3C04800F */  lui        $a0, %hi(D_800EC2E0)
/* 204D38 801E2148 3C05800E */  lui        $a1, %hi(D_800E6A10)
/* 204D3C 801E214C 8C430000 */  lw         $v1, 0x0($v0)
/* 204D40 801E2150 24A56A10 */  addiu      $a1, $a1, %lo(D_800E6A10)
/* 204D44 801E2154 3C0140E8 */  lui        $at, (0x40E80000 >> 16)
/* 204D48 801E2158 00031880 */  sll        $v1, $v1, 2
/* 204D4C 801E215C 00832021 */  addu       $a0, $a0, $v1
/* 204D50 801E2160 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
.L801E2164_ovl12:
/* 204D54 801E2164 00A36021 */  addu       $t4, $a1, $v1
/* 204D58 801E2168 5080000A */  beql       $a0, $zero, .L801E2194_ovl14
/* 204D5C 801E216C 44810000 */   mtc1      $at, $f0
glabel func_801E2170_ovl17
/* 204D60 801E2170 24010001 */  addiu      $at, $zero, 0x1
/* 204D64 801E2174 1081002D */  beq        $a0, $at, .L801E222C_ovl14
/* 204D68 801E2178 00A36821 */   addu      $t5, $a1, $v1
/* 204D6C 801E217C 24010002 */  addiu      $at, $zero, 0x2
/* 204D70 801E2180 10810050 */  beq        $a0, $at, .L801E22C4_ovl14
/* 204D74 801E2184 00A37021 */   addu      $t6, $a1, $v1
/* 204D78 801E2188 10000073 */  b          .L801E2358_ovl14
/* 204D7C 801E218C 00000000 */   nop
.L801E2190_ovl12:
/* 204D80 801E2190 44810000 */  mtc1       $at, $f0
.L801E2194_ovl14:
/* 204D84 801E2194 C5860000 */  lwc1       $f6, 0x0($t4)
/* 204D88 801E2198 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 204D8C 801E219C 44811000 */  mtc1       $at, $f2
/* 204D90 801E21A0 46003202 */  mul.s      $f8, $f6, $f0
/* 204D94 801E21A4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 204D98 801E21A8 00230821 */  addu       $at, $at, $v1
/* 204D9C 801E21AC 44805000 */  mtc1       $zero, $f10
/* 204DA0 801E21B0 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 204DA4 801E21B4 8C4D0000 */  lw         $t5, 0x0($v0)
/* 204DA8 801E21B8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 204DAC 801E21BC 000D7080 */  sll        $t6, $t5, 2
/* 204DB0 801E21C0 002E0821 */  addu       $at, $at, $t6
/* 204DB4 801E21C4 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
.L801E21C8_ovl10:
/* 204DB8 801E21C8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 204DBC 801E21CC 3C01800E */  lui        $at, %hi(D_800E6850)
/* 204DC0 801E21D0 000FC080 */  sll        $t8, $t7, 2
.L801E21D4_ovl10:
/* 204DC4 801E21D4 00380821 */  addu       $at, $at, $t8
glabel func_801E21D8_ovl12
/* 204DC8 801E21D8 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801E21DC_ovl9:
/* 204DCC 801E21DC 8C590000 */  lw         $t9, 0x0($v0)
.L801E21E0_ovl9:
/* 204DD0 801E21E0 3C01801E */  lui        $at, %hi(D_801E310C_ovl14)
/* 204DD4 801E21E4 C430310C */  lwc1       $f16, %lo(D_801E310C_ovl14)($at)
/* 204DD8 801E21E8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 204DDC 801E21EC 00194080 */  sll        $t0, $t9, 2
/* 204DE0 801E21F0 00280821 */  addu       $at, $at, $t0
.L801E21F4_ovl17:
/* 204DE4 801E21F4 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
.L801E21F8_ovl9:
/* 204DE8 801E21F8 8C490000 */  lw         $t1, 0x0($v0)
/* 204DEC 801E21FC 3C01801E */  lui        $at, %hi(D_801E3110_ovl14)
.L801E2200_ovl17:
/* 204DF0 801E2200 C4323110 */  lwc1       $f18, %lo(D_801E3110_ovl14)($at)
/* 204DF4 801E2204 3C01800E */  lui        $at, %hi(D_800E3750)
/* 204DF8 801E2208 00095080 */  sll        $t2, $t1, 2
glabel func_801E220C_ovl17
/* 204DFC 801E220C 002A0821 */  addu       $at, $at, $t2
/* 204E00 801E2210 E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
.L801E2214_ovl13:
/* 204E04 801E2214 8C4B0000 */  lw         $t3, 0x0($v0)
/* 204E08 801E2218 3C01800E */  lui        $at, %hi(D_800E3C90)
.L801E221C_ovl9:
/* 204E0C 801E221C 000B6080 */  sll        $t4, $t3, 2
/* 204E10 801E2220 002C0821 */  addu       $at, $at, $t4
/* 204E14 801E2224 1000004C */  b          .L801E2358_ovl14
/* 204E18 801E2228 E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
.L801E222C_ovl14:
/* 204E1C 801E222C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 204E20 801E2230 44810000 */  mtc1       $at, $f0
/* 204E24 801E2234 C5A40000 */  lwc1       $f4, 0x0($t5)
/* 204E28 801E2238 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 204E2C 801E223C 44811000 */  mtc1       $at, $f2
/* 204E30 801E2240 46002182 */  mul.s      $f6, $f4, $f0
/* 204E34 801E2244 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 204E38 801E2248 00230821 */  addu       $at, $at, $v1
/* 204E3C 801E224C 44804000 */  mtc1       $zero, $f8
/* 204E40 801E2250 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 204E44 801E2254 8C4E0000 */  lw         $t6, 0x0($v0)
.L801E2258_ovl17:
/* 204E48 801E2258 3C01800E */  lui        $at, %hi(D_800E6690)
/* 204E4C 801E225C 000E7880 */  sll        $t7, $t6, 2
/* 204E50 801E2260 002F0821 */  addu       $at, $at, $t7
.L801E2264_ovl12:
/* 204E54 801E2264 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* 204E58 801E2268 8C580000 */  lw         $t8, 0x0($v0)
.L801E226C_ovl9:
/* 204E5C 801E226C 3C01800E */  lui        $at, %hi(D_800E6850)
/* 204E60 801E2270 0018C880 */  sll        $t9, $t8, 2
/* 204E64 801E2274 00390821 */  addu       $at, $at, $t9
/* 204E68 801E2278 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801E227C_ovl15:
/* 204E6C 801E227C 8C480000 */  lw         $t0, 0x0($v0)
/* 204E70 801E2280 3C01800E */  lui        $at, %hi(D_800E3210)
/* 204E74 801E2284 00084880 */  sll        $t1, $t0, 2
/* 204E78 801E2288 00290821 */  addu       $at, $at, $t1
.L801E228C_ovl12:
/* 204E7C 801E228C E4223210 */  swc1       $f2, %lo(D_800E3210)($at)
/* 204E80 801E2290 8C4A0000 */  lw         $t2, 0x0($v0)
.L801E2294_ovl10:
/* 204E84 801E2294 3C01801E */  lui        $at, %hi(.L801E3114_ovl14)
glabel func_801E2298_ovl12
/* 204E88 801E2298 C42A3114 */  lwc1       $f10, %lo(.L801E3114_ovl14)($at)
.L801E229C_ovl17:
/* 204E8C 801E229C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 204E90 801E22A0 000A5880 */  sll        $t3, $t2, 2
/* 204E94 801E22A4 002B0821 */  addu       $at, $at, $t3
.L801E22A8_ovl9:
/* 204E98 801E22A8 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
/* 204E9C 801E22AC 8C4C0000 */  lw         $t4, 0x0($v0)
/* 204EA0 801E22B0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 204EA4 801E22B4 000C6880 */  sll        $t5, $t4, 2
/* 204EA8 801E22B8 002D0821 */  addu       $at, $at, $t5
/* 204EAC 801E22BC 10000026 */  b          .L801E2358_ovl14
.L801E22C0_ovl17:
/* 204EB0 801E22C0 E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
.L801E22C4_ovl14:
/* 204EB4 801E22C4 3C014050 */  lui        $at, (0x40500000 >> 16)
/* 204EB8 801E22C8 44810000 */  mtc1       $at, $f0
.L801E22CC_ovl13:
/* 204EBC 801E22CC C5D00000 */  lwc1       $f16, 0x0($t6)
/* 204EC0 801E22D0 3C01801E */  lui        $at, %hi(D_801E3118_ovl14)
.L801E22D4_ovl10:
/* 204EC4 801E22D4 C4223118 */  lwc1       $f2, %lo(D_801E3118_ovl14)($at)
glabel func_801E22D8_ovl15
/* 204EC8 801E22D8 46008482 */  mul.s      $f18, $f16, $f0
.L801E22DC_ovl16:
/* 204ECC 801E22DC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 204ED0 801E22E0 00230821 */  addu       $at, $at, $v1
/* 204ED4 801E22E4 44802000 */  mtc1       $zero, $f4
/* 204ED8 801E22E8 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
/* 204EDC 801E22EC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 204EE0 801E22F0 3C01800E */  lui        $at, %hi(D_800E6690)
/* 204EE4 801E22F4 000FC080 */  sll        $t8, $t7, 2
glabel func_801E22F8_ovl12
/* 204EE8 801E22F8 00380821 */  addu       $at, $at, $t8
glabel func_801E22FC_ovl17
/* 204EEC 801E22FC E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
/* 204EF0 801E2300 8C590000 */  lw         $t9, 0x0($v0)
/* 204EF4 801E2304 3C01800E */  lui        $at, %hi(D_800E6850)
/* 204EF8 801E2308 00194080 */  sll        $t0, $t9, 2
/* 204EFC 801E230C 00280821 */  addu       $at, $at, $t0
.L801E2310_ovl17:
/* 204F00 801E2310 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
/* 204F04 801E2314 8C490000 */  lw         $t1, 0x0($v0)
/* 204F08 801E2318 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E231C_ovl10:
/* 204F0C 801E231C 00095080 */  sll        $t2, $t1, 2
glabel func_801E2320_ovl17
/* 204F10 801E2320 002A0821 */  addu       $at, $at, $t2
/* 204F14 801E2324 E4223210 */  swc1       $f2, %lo(D_800E3210)($at)
/* 204F18 801E2328 8C4B0000 */  lw         $t3, 0x0($v0)
/* 204F1C 801E232C 3C01801E */  lui        $at, %hi(D_801E311C_ovl14)
/* 204F20 801E2330 C426311C */  lwc1       $f6, %lo(D_801E311C_ovl14)($at)
/* 204F24 801E2334 3C01800E */  lui        $at, %hi(D_800E3750)
/* 204F28 801E2338 000B6080 */  sll        $t4, $t3, 2
/* 204F2C 801E233C 002C0821 */  addu       $at, $at, $t4
/* 204F30 801E2340 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 204F34 801E2344 8C4D0000 */  lw         $t5, 0x0($v0)
/* 204F38 801E2348 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 204F3C 801E234C 000D7080 */  sll        $t6, $t5, 2
/* 204F40 801E2350 002E0821 */  addu       $at, $at, $t6
.L801E2354_ovl9:
/* 204F44 801E2354 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
.L801E2358_ovl14:
/* 204F48 801E2358 0C002DAF */  jal        finish_current_thread
/* 204F4C 801E235C 2404003C */   addiu     $a0, $zero, 0x3C
/* 204F50 801E2360 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 204F54 801E2364 8FA40018 */   lw        $a0, 0x18($sp)
/* 204F58 801E2368 8FBF0014 */  lw         $ra, 0x14($sp)
glabel func_801E236C_ovl9
/* 204F5C 801E236C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 204F60 801E2370 03E00008 */  jr         $ra
/* 204F64 801E2374 00000000 */   nop
