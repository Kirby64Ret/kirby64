glabel func_801F2098_ovl10
/* 1E2E08 801F2098 27BDFF10 */  addiu      $sp, $sp, -0xF0
/* 1E2E0C 801F209C 3C0E801F */  lui        $t6, %hi(func_801F471C_ovl9 + 0x4C)
/* 1E2E10 801F20A0 AFBF005C */  sw         $ra, 0x5C($sp)
/* 1E2E14 801F20A4 AFBE0058 */  sw         $fp, 0x58($sp)
/* 1E2E18 801F20A8 AFB70054 */  sw         $s7, 0x54($sp)
/* 1E2E1C 801F20AC AFB60050 */  sw         $s6, 0x50($sp)
/* 1E2E20 801F20B0 AFB5004C */  sw         $s5, 0x4C($sp)
/* 1E2E24 801F20B4 AFB40048 */  sw         $s4, 0x48($sp)
/* 1E2E28 801F20B8 AFB30044 */  sw         $s3, 0x44($sp)
.L801F20BC_ovl9:
/* 1E2E2C 801F20BC AFB20040 */  sw         $s2, 0x40($sp)
.L801F20C0_ovl9:
/* 1E2E30 801F20C0 AFB1003C */  sw         $s1, 0x3C($sp)
/* 1E2E34 801F20C4 AFB00038 */  sw         $s0, 0x38($sp)
/* 1E2E38 801F20C8 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 1E2E3C 801F20CC F7B60028 */  sdc1       $f22, 0x28($sp)
/* 1E2E40 801F20D0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1E2E44 801F20D4 AFA400F0 */  sw         $a0, 0xF0($sp)
/* 1E2E48 801F20D8 AFA500F4 */  sw         $a1, 0xF4($sp)
/* 1E2E4C 801F20DC 25CE4768 */  addiu      $t6, $t6, %lo(func_801F471C_ovl9 + 0x4C)
.L801F20E0_ovl9:
/* 1E2E50 801F20E0 8DD80000 */  lw         $t8, 0x0($t6)
/* 1E2E54 801F20E4 27A200D4 */  addiu      $v0, $sp, 0xD4
/* 1E2E58 801F20E8 3C19801F */  lui        $t9, %hi(func_801F471C_ovl9 + 0x68)
/* 1E2E5C 801F20EC AC580000 */  sw         $t8, 0x0($v0)
/* 1E2E60 801F20F0 8DCF0004 */  lw         $t7, 0x4($t6)
/* 1E2E64 801F20F4 27394784 */  addiu      $t9, $t9, %lo(func_801F471C_ovl9 + 0x68)
/* 1E2E68 801F20F8 27B300B8 */  addiu      $s3, $sp, 0xB8
/* 1E2E6C 801F20FC AC4F0004 */  sw         $t7, 0x4($v0)
/* 1E2E70 801F2100 8DD80008 */  lw         $t8, 0x8($t6)
/* 1E2E74 801F2104 3C0A801F */  lui        $t2, %hi(func_801F471C_ovl9 + 0x84)
.L801F2108_ovl9:
/* 1E2E78 801F2108 254A47A0 */  addiu      $t2, $t2, %lo(func_801F471C_ovl9 + 0x84)
/* 1E2E7C 801F210C AC580008 */  sw         $t8, 0x8($v0)
/* 1E2E80 801F2110 8DCF000C */  lw         $t7, 0xC($t6)
/* 1E2E84 801F2114 27B400A8 */  addiu      $s4, $sp, 0xA8
/* 1E2E88 801F2118 3C0D801F */  lui        $t5, %hi(func_801F471C_ovl9 + 0x94)
/* 1E2E8C 801F211C AC4F000C */  sw         $t7, 0xC($v0)
/* 1E2E90 801F2120 8DD80010 */  lw         $t8, 0x10($t6)
/* 1E2E94 801F2124 25AD47B0 */  addiu      $t5, $t5, %lo(func_801F471C_ovl9 + 0x94)
/* 1E2E98 801F2128 27B50098 */  addiu      $s5, $sp, 0x98
.L801F212C_ovl9:
/* 1E2E9C 801F212C AC580010 */  sw         $t8, 0x10($v0)
/* 1E2EA0 801F2130 8DCF0014 */  lw         $t7, 0x14($t6)
/* 1E2EA4 801F2134 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 1E2EA8 801F2138 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 1E2EAC 801F213C AC4F0014 */  sw         $t7, 0x14($v0)
/* 1E2EB0 801F2140 8DD80018 */  lw         $t8, 0x18($t6)
/* 1E2EB4 801F2144 8E300000 */  lw         $s0, 0x0($s1)
/* 1E2EB8 801F2148 3C01801F */  lui        $at, %hi(D_801F4D68_ovl10)
/* 1E2EBC 801F214C AC580018 */  sw         $t8, 0x18($v0)
/* 1E2EC0 801F2150 8F290000 */  lw         $t1, 0x0($t9)
/* 1E2EC4 801F2154 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 1E2EC8 801F2158 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 1E2ECC 801F215C AE690000 */  sw         $t1, 0x0($s3)
/* 1E2ED0 801F2160 8F280004 */  lw         $t0, 0x4($t9)
/* 1E2ED4 801F2164 24060010 */  addiu      $a2, $zero, 0x10
/* 1E2ED8 801F2168 AE680004 */  sw         $t0, 0x4($s3)
/* 1E2EDC 801F216C 8F290008 */  lw         $t1, 0x8($t9)
/* 1E2EE0 801F2170 AE690008 */  sw         $t1, 0x8($s3)
/* 1E2EE4 801F2174 8F28000C */  lw         $t0, 0xC($t9)
/* 1E2EE8 801F2178 AE68000C */  sw         $t0, 0xC($s3)
/* 1E2EEC 801F217C 8F290010 */  lw         $t1, 0x10($t9)
/* 1E2EF0 801F2180 AE690010 */  sw         $t1, 0x10($s3)
/* 1E2EF4 801F2184 8F280014 */  lw         $t0, 0x14($t9)
/* 1E2EF8 801F2188 AE680014 */  sw         $t0, 0x14($s3)
/* 1E2EFC 801F218C 8F290018 */  lw         $t1, 0x18($t9)
/* 1E2F00 801F2190 AE690018 */  sw         $t1, 0x18($s3)
/* 1E2F04 801F2194 8D4C0000 */  lw         $t4, 0x0($t2)
/* 1E2F08 801F2198 AE8C0000 */  sw         $t4, 0x0($s4)
/* 1E2F0C 801F219C 8D4B0004 */  lw         $t3, 0x4($t2)
/* 1E2F10 801F21A0 AE8B0004 */  sw         $t3, 0x4($s4)
/* 1E2F14 801F21A4 8D4C0008 */  lw         $t4, 0x8($t2)
/* 1E2F18 801F21A8 AE8C0008 */  sw         $t4, 0x8($s4)
/* 1E2F1C 801F21AC 8D4B000C */  lw         $t3, 0xC($t2)
/* 1E2F20 801F21B0 AE8B000C */  sw         $t3, 0xC($s4)
/* 1E2F24 801F21B4 8DAF0000 */  lw         $t7, 0x0($t5)
/* 1E2F28 801F21B8 AEAF0000 */  sw         $t7, 0x0($s5)
/* 1E2F2C 801F21BC 8DAE0004 */  lw         $t6, 0x4($t5)
/* 1E2F30 801F21C0 AEAE0004 */  sw         $t6, 0x4($s5)
/* 1E2F34 801F21C4 8DAF0008 */  lw         $t7, 0x8($t5)
/* 1E2F38 801F21C8 AEAF0008 */  sw         $t7, 0x8($s5)
/* 1E2F3C 801F21CC 8DAE000C */  lw         $t6, 0xC($t5)
/* 1E2F40 801F21D0 AEAE000C */  sw         $t6, 0xC($s5)
/* 1E2F44 801F21D4 8FB200F4 */  lw         $s2, 0xF4($sp)
/* 1E2F48 801F21D8 8E180000 */  lw         $t8, 0x0($s0)
/* 1E2F4C 801F21DC 8FAB00F4 */  lw         $t3, 0xF4($sp)
/* 1E2F50 801F21E0 00129080 */  sll        $s2, $s2, 2
/* 1E2F54 801F21E4 00320821 */  addu       $at, $at, $s2
/* 1E2F58 801F21E8 AC384D68 */  sw         $t8, %lo(D_801F4D68_ovl10)($at)
/* 1E2F5C 801F21EC 8E190000 */  lw         $t9, 0x0($s0)
/* 1E2F60 801F21F0 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E2F64 801F21F4 0052C021 */  addu       $t8, $v0, $s2
/* 1E2F68 801F21F8 00194080 */  sll        $t0, $t9, 2
/* 1E2F6C 801F21FC 00280821 */  addu       $at, $at, $t0
/* 1E2F70 801F2200 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 1E2F74 801F2204 8E090000 */  lw         $t1, 0x0($s0)
/* 1E2F78 801F2208 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1E2F7C 801F220C 00095080 */  sll        $t2, $t1, 2
/* 1E2F80 801F2210 002A0821 */  addu       $at, $at, $t2
.L801F2214_ovl9:
/* 1E2F84 801F2214 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 1E2F88 801F2218 24010005 */  addiu      $at, $zero, 0x5
/* 1E2F8C 801F221C 15610014 */  bne        $t3, $at, .L801F2270_ovl10
/* 1E2F90 801F2220 00000000 */   nop
/* 1E2F94 801F2224 0C006291 */  jal        random_soft_s32_range
/* 1E2F98 801F2228 24040004 */   addiu     $a0, $zero, 0x4
/* 1E2F9C 801F222C 00026080 */  sll        $t4, $v0, 2
/* 1E2FA0 801F2230 028C6821 */  addu       $t5, $s4, $t4
/* 1E2FA4 801F2234 3C050001 */  lui        $a1, (0x1869F >> 16)
glabel func_801F2238_ovl9
/* 1E2FA8 801F2238 00408025 */  or         $s0, $v0, $zero
/* 1E2FAC 801F223C 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 1E2FB0 801F2240 8DA40000 */  lw         $a0, 0x0($t5)
/* 1E2FB4 801F2244 0C02A619 */  jal        func_800A9864
/* 1E2FB8 801F2248 24060010 */   addiu     $a2, $zero, 0x10
/* 1E2FBC 801F224C 00107080 */  sll        $t6, $s0, 2
/* 1E2FC0 801F2250 02AE7821 */  addu       $t7, $s5, $t6
/* 1E2FC4 801F2254 8DE40000 */  lw         $a0, 0x0($t7)
/* 1E2FC8 801F2258 5080000E */  beql       $a0, $zero, .L801F2294_ovl10
/* 1E2FCC 801F225C 3C040001 */   lui       $a0, (0x105F6 >> 16)
/* 1E2FD0 801F2260 0C02A806 */  jal        func_800AA018
/* 1E2FD4 801F2264 00000000 */   nop
/* 1E2FD8 801F2268 1000000A */  b          .L801F2294_ovl10
/* 1E2FDC 801F226C 3C040001 */   lui       $a0, (0x105F6 >> 16)
.L801F2270_ovl10:
/* 1E2FE0 801F2270 0C02A619 */  jal        func_800A9864
/* 1E2FE4 801F2274 8F040000 */   lw        $a0, 0x0($t8)
/* 1E2FE8 801F2278 0272C821 */  addu       $t9, $s3, $s2
/* 1E2FEC 801F227C 8F240000 */  lw         $a0, 0x0($t9)
/* 1E2FF0 801F2280 50800004 */  beql       $a0, $zero, .L801F2294_ovl10
/* 1E2FF4 801F2284 3C040001 */   lui       $a0, (0x105F6 >> 16)
/* 1E2FF8 801F2288 0C02A806 */  jal        func_800AA018
/* 1E2FFC 801F228C 00000000 */   nop
/* 1E3000 801F2290 3C040001 */  lui        $a0, (0x105F6 >> 16)
.L801F2294_ovl10:
/* 1E3004 801F2294 0C02A806 */  jal        func_800AA018
/* 1E3008 801F2298 348405F6 */   ori       $a0, $a0, (0x105F6 & 0xFFFF)
/* 1E300C 801F229C 27A40084 */  addiu      $a0, $sp, 0x84
/* 1E3010 801F22A0 0C07C7DF */  jal        func_801F1F7C_ovl10
/* 1E3014 801F22A4 8FA500F4 */   lw        $a1, 0xF4($sp)
/* 1E3018 801F22A8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E301C 801F22AC C7A40084 */  lwc1       $f4, 0x84($sp)
/* 1E3020 801F22B0 3C17800E */  lui        $s7, %hi(gEntitiesNextPosXArray)
/* 1E3024 801F22B4 8E080000 */  lw         $t0, 0x0($s0)
/* 1E3028 801F22B8 26F725D0 */  addiu      $s7, $s7, %lo(gEntitiesNextPosXArray)
/* 1E302C 801F22BC 3C1E800E */  lui        $fp, %hi(gEntitiesNextPosYArray)
/* 1E3030 801F22C0 00084880 */  sll        $t1, $t0, 2
/* 1E3034 801F22C4 02E95021 */  addu       $t2, $s7, $t1
/* 1E3038 801F22C8 E5440000 */  swc1       $f4, 0x0($t2)
/* 1E303C 801F22CC 8E0B0000 */  lw         $t3, 0x0($s0)
/* 1E3040 801F22D0 C7A60088 */  lwc1       $f6, 0x88($sp)
/* 1E3044 801F22D4 27DE2790 */  addiu      $fp, $fp, %lo(gEntitiesNextPosYArray)
/* 1E3048 801F22D8 000B6080 */  sll        $t4, $t3, 2
/* 1E304C 801F22DC 03CC6821 */  addu       $t5, $fp, $t4
/* 1E3050 801F22E0 E5A60000 */  swc1       $f6, 0x0($t5)
/* 1E3054 801F22E4 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1E3058 801F22E8 C7A8008C */  lwc1       $f8, 0x8C($sp)
/* 1E305C 801F22EC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1E3060 801F22F0 000E7880 */  sll        $t7, $t6, 2
/* 1E3064 801F22F4 002F0821 */  addu       $at, $at, $t7
/* 1E3068 801F22F8 0C03FC51 */  jal        func_800FF144
/* 1E306C 801F22FC E4282950 */   swc1      $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1E3070 801F2300 8E380000 */  lw         $t8, 0x0($s1)
/* 1E3074 801F2304 3C01800F */  lui        $at, %hi(D_800EA520)
/* 1E3078 801F2308 00402025 */  or         $a0, $v0, $zero
/* 1E307C 801F230C 8F190000 */  lw         $t9, 0x0($t8)
/* 1E3080 801F2310 00194080 */  sll        $t0, $t9, 2
/* 1E3084 801F2314 00280821 */  addu       $at, $at, $t0
/* 1E3088 801F2318 0C07C005 */  jal        func_801F0014_ovl16
/* 1E308C 801F231C AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* 1E3090 801F2320 3C01801F */  lui        $at, %hi(D_801F4CB4_ovl10)
/* 1E3094 801F2324 3C15800E */  lui        $s5, %hi(D_800DE350)
/* 1E3098 801F2328 3C14800E */  lui        $s4, %hi(gEntitiesScaleZArray)
/* 1E309C 801F232C 3C13800E */  lui        $s3, %hi(gEntitiesScaleYArray)
/* 1E30A0 801F2330 3C12800E */  lui        $s2, %hi(gEntitiesScaleXArray)
/* 1E30A4 801F2334 4480B000 */  mtc1       $zero, $f22
/* 1E30A8 801F2338 26524550 */  addiu      $s2, $s2, %lo(gEntitiesScaleXArray)
/* 1E30AC 801F233C 26734710 */  addiu      $s3, $s3, %lo(gEntitiesScaleYArray)
/* 1E30B0 801F2340 269448D0 */  addiu      $s4, $s4, %lo(gEntitiesScaleZArray)
/* 1E30B4 801F2344 26B5E350 */  addiu      $s5, $s5, %lo(D_800DE350)
/* 1E30B8 801F2348 C4384CB4 */  lwc1       $f24, %lo(D_801F4CB4_ovl10)($at)
/* 1E30BC 801F234C 24160001 */  addiu      $s6, $zero, 0x1
/* 1E30C0 801F2350 8E290000 */  lw         $t1, 0x0($s1)
.L801F2354_ovl10:
/* 1E30C4 801F2354 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* 1E30C8 801F2358 02C02025 */  or         $a0, $s6, $zero
/* 1E30CC 801F235C 8D220000 */  lw         $v0, 0x0($t1)
/* 1E30D0 801F2360 00021080 */  sll        $v0, $v0, 2
/* 1E30D4 801F2364 01425021 */  addu       $t2, $t2, $v0
/* 1E30D8 801F2368 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
/* 1E30DC 801F236C 11400054 */  beqz       $t2, .L801F24C0_ovl10
/* 1E30E0 801F2370 00000000 */   nop
/* 1E30E4 801F2374 0C02BEED */  jal        func_800AFBB4
/* 1E30E8 801F2378 8FA500F0 */   lw        $a1, 0xF0($sp)
/* 1E30EC 801F237C 8EAB0000 */  lw         $t3, 0x0($s5)
/* 1E30F0 801F2380 27A40084 */  addiu      $a0, $sp, 0x84
/* 1E30F4 801F2384 00003025 */  or         $a2, $zero, $zero
/* 1E30F8 801F2388 0C02C8D0 */  jal        func_800B2340
/* 1E30FC 801F238C 8D65003C */   lw        $a1, 0x3C($t3)
/* 1E3100 801F2390 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3104 801F2394 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* 1E3108 801F2398 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1E310C 801F239C 8E0C0000 */  lw         $t4, 0x0($s0)
/* 1E3110 801F23A0 27A40078 */  addiu      $a0, $sp, 0x78
/* 1E3114 801F23A4 00003025 */  or         $a2, $zero, $zero
/* 1E3118 801F23A8 000C6880 */  sll        $t5, $t4, 2
/* 1E311C 801F23AC 02ED7021 */  addu       $t6, $s7, $t5
/* 1E3120 801F23B0 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 1E3124 801F23B4 8E0F0000 */  lw         $t7, 0x0($s0)
/* 1E3128 801F23B8 C7B00088 */  lwc1       $f16, 0x88($sp)
/* 1E312C 801F23BC 000FC080 */  sll        $t8, $t7, 2
/* 1E3130 801F23C0 03D8C821 */  addu       $t9, $fp, $t8
/* 1E3134 801F23C4 E7300000 */  swc1       $f16, 0x0($t9)
/* 1E3138 801F23C8 8E080000 */  lw         $t0, 0x0($s0)
/* 1E313C 801F23CC C7B2008C */  lwc1       $f18, 0x8C($sp)
/* 1E3140 801F23D0 00084880 */  sll        $t1, $t0, 2
/* 1E3144 801F23D4 00290821 */  addu       $at, $at, $t1
/* 1E3148 801F23D8 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 1E314C 801F23DC 8EAA0000 */  lw         $t2, 0x0($s5)
/* 1E3150 801F23E0 0C02C9B6 */  jal        func_800B26D8
glabel func_801F23E4_ovl9
/* 1E3154 801F23E4 8D45003C */   lw        $a1, 0x3C($t2)
/* 1E3158 801F23E8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E315C 801F23EC C7A40078 */  lwc1       $f4, 0x78($sp)
/* 1E3160 801F23F0 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 1E3164 801F23F4 8E0B0000 */  lw         $t3, 0x0($s0)
/* 1E3168 801F23F8 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* 1E316C 801F23FC C7A80080 */  lwc1       $f8, 0x80($sp)
/* 1E3170 801F2400 000B6080 */  sll        $t4, $t3, 2
/* 1E3174 801F2404 002C0821 */  addu       $at, $at, $t4
/* 1E3178 801F2408 E4244010 */  swc1       $f4, %lo(gEntitiesAngleXArray)($at)
/* 1E317C 801F240C 8E0D0000 */  lw         $t5, 0x0($s0)
/* 1E3180 801F2410 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 1E3184 801F2414 8FA400F4 */  lw         $a0, 0xF4($sp)
/* 1E3188 801F2418 000D7080 */  sll        $t6, $t5, 2
/* 1E318C 801F241C 002E0821 */  addu       $at, $at, $t6
/* 1E3190 801F2420 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* 1E3194 801F2424 8E0F0000 */  lw         $t7, 0x0($s0)
glabel func_801F2428_ovl9
/* 1E3198 801F2428 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
/* 1E319C 801F242C 000FC080 */  sll        $t8, $t7, 2
/* 1E31A0 801F2430 00380821 */  addu       $at, $at, $t8
/* 1E31A4 801F2434 0C07C81D */  jal        func_801F2074_ovl10
/* 1E31A8 801F2438 E4284390 */   swc1      $f8, %lo(gEntitiesAngleZArray)($at)
/* 1E31AC 801F243C 14560006 */  bne        $v0, $s6, .L801F2458_ovl10
/* 1E31B0 801F2440 8FB900F4 */   lw        $t9, 0xF4($sp)
/* 1E31B4 801F2444 3C040003 */  lui        $a0, (0x30065 >> 16)
/* 1E31B8 801F2448 0C02A806 */  jal        func_800AA018
/* 1E31BC 801F244C 34840065 */   ori       $a0, $a0, (0x30065 & 0xFFFF)
/* 1E31C0 801F2450 10000014 */  b          .L801F24A4_ovl10
/* 1E31C4 801F2454 8E300000 */   lw        $s0, 0x0($s1)
.L801F2458_ovl10:
/* 1E31C8 801F2458 24010006 */  addiu      $at, $zero, 0x6
/* 1E31CC 801F245C 1721000E */  bne        $t9, $at, .L801F2498_ovl10
/* 1E31D0 801F2460 3C040003 */   lui       $a0, (0x30067 >> 16)
/* 1E31D4 801F2464 8E280000 */  lw         $t0, 0x0($s1)
/* 1E31D8 801F2468 3C0B800F */  lui        $t3, %hi(D_800E9C60)
/* 1E31DC 801F246C 8D090000 */  lw         $t1, 0x0($t0)
/* 1E31E0 801F2470 00095080 */  sll        $t2, $t1, 2
/* 1E31E4 801F2474 016A5821 */  addu       $t3, $t3, $t2
/* 1E31E8 801F2478 8D6B9C60 */  lw         $t3, %lo(D_800E9C60)($t3)
/* 1E31EC 801F247C 16CB0006 */  bne        $s6, $t3, .L801F2498_ovl10
/* 1E31F0 801F2480 00000000 */   nop
/* 1E31F4 801F2484 3C040003 */  lui        $a0, (0x30066 >> 16)
/* 1E31F8 801F2488 0C02A806 */  jal        func_800AA018
/* 1E31FC 801F248C 34840066 */   ori       $a0, $a0, (0x30066 & 0xFFFF)
/* 1E3200 801F2490 10000004 */  b          .L801F24A4_ovl10
/* 1E3204 801F2494 8E300000 */   lw        $s0, 0x0($s1)
.L801F2498_ovl10:
/* 1E3208 801F2498 0C02A806 */  jal        func_800AA018
/* 1E320C 801F249C 34840067 */   ori       $a0, $a0, (0x30067 & 0xFFFF)
/* 1E3210 801F24A0 8E300000 */  lw         $s0, 0x0($s1)
.L801F24A4_ovl10:
/* 1E3214 801F24A4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E3218 801F24A8 8E0C0000 */  lw         $t4, 0x0($s0)
/* 1E321C 801F24AC 000C6880 */  sll        $t5, $t4, 2
/* 1E3220 801F24B0 002D0821 */  addu       $at, $at, $t5
/* 1E3224 801F24B4 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 1E3228 801F24B8 8E020000 */  lw         $v0, 0x0($s0)
/* 1E322C 801F24BC 00021080 */  sll        $v0, $v0, 2
.L801F24C0_ovl10:
/* 1E3230 801F24C0 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 1E3234 801F24C4 01C27021 */  addu       $t6, $t6, $v0
/* 1E3238 801F24C8 8DCE9AA0 */  lw         $t6, %lo(D_800E9AA0)($t6)
/* 1E323C 801F24CC 3C04800F */  lui        $a0, %hi(D_800EA520)
/* 1E3240 801F24D0 00822021 */  addu       $a0, $a0, $v0
/* 1E3244 801F24D4 11C00034 */  beqz       $t6, .L801F25A8_ovl10
/* 1E3248 801F24D8 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 1E324C 801F24DC 4481A000 */  mtc1       $at, $f20
/* 1E3250 801F24E0 0C03FC73 */  jal        func_800FF1CC
/* 1E3254 801F24E4 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
/* 1E3258 801F24E8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1E325C 801F24EC 44815000 */  mtc1       $at, $f10
/* 1E3260 801F24F0 00000000 */  nop
/* 1E3264 801F24F4 460AB03E */  c.le.s     $f22, $f10
/* 1E3268 801F24F8 00000000 */  nop
glabel func_801F24FC_ovl9
/* 1E326C 801F24FC 45020016 */  bc1fl      .L801F2558_ovl10
/* 1E3270 801F2500 00002025 */   or        $a0, $zero, $zero
/* 1E3274 801F2504 8E300000 */  lw         $s0, 0x0($s1)
.L801F2508_ovl10:
/* 1E3278 801F2508 02C02025 */  or         $a0, $s6, $zero
/* 1E327C 801F250C 8E0F0000 */  lw         $t7, 0x0($s0)
/* 1E3280 801F2510 000FC080 */  sll        $t8, $t7, 2
/* 1E3284 801F2514 0258C821 */  addu       $t9, $s2, $t8
/* 1E3288 801F2518 E7340000 */  swc1       $f20, 0x0($t9)
/* 1E328C 801F251C 8E080000 */  lw         $t0, 0x0($s0)
/* 1E3290 801F2520 00084880 */  sll        $t1, $t0, 2
/* 1E3294 801F2524 02695021 */  addu       $t2, $s3, $t1
/* 1E3298 801F2528 E5540000 */  swc1       $f20, 0x0($t2)
/* 1E329C 801F252C 8E0B0000 */  lw         $t3, 0x0($s0)
/* 1E32A0 801F2530 000B6080 */  sll        $t4, $t3, 2
/* 1E32A4 801F2534 028C6821 */  addu       $t5, $s4, $t4
/* 1E32A8 801F2538 0C002DAF */  jal        finish_current_thread
glabel func_801F253C_ovl9
/* 1E32AC 801F253C E5B40000 */   swc1      $f20, 0x0($t5)
/* 1E32B0 801F2540 4618A501 */  sub.s      $f20, $f20, $f24
/* 1E32B4 801F2544 4614B03E */  c.le.s     $f22, $f20
/* 1E32B8 801F2548 00000000 */  nop
/* 1E32BC 801F254C 4503FFEE */  bc1tl      .L801F2508_ovl10
/* 1E32C0 801F2550 8E300000 */   lw        $s0, 0x0($s1)
/* 1E32C4 801F2554 00002025 */  or         $a0, $zero, $zero
.L801F2558_ovl10:
/* 1E32C8 801F2558 0C02BEED */  jal        func_800AFBB4
/* 1E32CC 801F255C 8E250000 */   lw        $a1, 0x0($s1)
/* 1E32D0 801F2560 8E2E0000 */  lw         $t6, 0x0($s1)
/* 1E32D4 801F2564 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1E32D8 801F2568 24040003 */  addiu      $a0, $zero, 0x3
/* 1E32DC 801F256C 8DC20000 */  lw         $v0, 0x0($t6)
/* 1E32E0 801F2570 00002825 */  or         $a1, $zero, $zero
/* 1E32E4 801F2574 24060007 */  addiu      $a2, $zero, 0x7
/* 1E32E8 801F2578 00021080 */  sll        $v0, $v0, 2
/* 1E32EC 801F257C 03C2C021 */  addu       $t8, $fp, $v0
/* 1E32F0 801F2580 00220821 */  addu       $at, $at, $v0
glabel func_801F2584_ovl9
/* 1E32F4 801F2584 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 1E32F8 801F2588 C7100000 */  lwc1       $f16, 0x0($t8)
/* 1E32FC 801F258C 02E27821 */  addu       $t7, $s7, $v0
/* 1E3300 801F2590 8DE70000 */  lw         $a3, 0x0($t7)
/* 1E3304 801F2594 E7B20014 */  swc1       $f18, 0x14($sp)
/* 1E3308 801F2598 0C029FDD */  jal        func_800A7F74
/* 1E330C 801F259C E7B00010 */   swc1      $f16, 0x10($sp)
/* 1E3310 801F25A0 0C02BE85 */  jal        func_800AFA14
/* 1E3314 801F25A4 00000000 */   nop
.L801F25A8_ovl10:
/* 1E3318 801F25A8 0C002DAF */  jal        finish_current_thread
/* 1E331C 801F25AC 02C02025 */   or        $a0, $s6, $zero
/* 1E3320 801F25B0 1000FF68 */  b          .L801F2354_ovl10
/* 1E3324 801F25B4 8E290000 */   lw        $t1, 0x0($s1)
/* 1E3328 801F25B8 00000000 */  nop
/* 1E332C 801F25BC 00000000 */  nop
/* 1E3330 801F25C0 8FBF005C */  lw         $ra, 0x5C($sp)
/* 1E3334 801F25C4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1E3338 801F25C8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 1E333C 801F25CC D7B80030 */  ldc1       $f24, 0x30($sp)
/* 1E3340 801F25D0 8FB00038 */  lw         $s0, 0x38($sp)
/* 1E3344 801F25D4 8FB1003C */  lw         $s1, 0x3C($sp)
/* 1E3348 801F25D8 8FB20040 */  lw         $s2, 0x40($sp)
/* 1E334C 801F25DC 8FB30044 */  lw         $s3, 0x44($sp)
/* 1E3350 801F25E0 8FB40048 */  lw         $s4, 0x48($sp)
/* 1E3354 801F25E4 8FB5004C */  lw         $s5, 0x4C($sp)
/* 1E3358 801F25E8 8FB60050 */  lw         $s6, 0x50($sp)
/* 1E335C 801F25EC 8FB70054 */  lw         $s7, 0x54($sp)
/* 1E3360 801F25F0 8FBE0058 */  lw         $fp, 0x58($sp)
/* 1E3364 801F25F4 03E00008 */  jr         $ra
/* 1E3368 801F25F8 27BD00F0 */   addiu     $sp, $sp, 0xF0
