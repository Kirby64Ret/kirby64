glabel func_801E00B8_ovl11
/* 1EA978 801E00B8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L801E00BC_ovl16:
/* 1EA97C 801E00BC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1EA980 801E00C0 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
glabel func_801E00C4_ovl15
/* 1EA984 801E00C4 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
/* 1EA988 801E00C8 8DC20000 */  lw         $v0, 0x0($t6)
/* 1EA98C 801E00CC 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 1EA990 801E00D0 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* 1EA994 801E00D4 00042880 */  sll        $a1, $a0, 2
glabel func_801E00D8_ovl12
/* 1EA998 801E00D8 00021080 */  sll        $v0, $v0, 2
/* 1EA99C 801E00DC 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
glabel func_801E00E0_ovl14
/* 1EA9A0 801E00E0 24E725D0 */  addiu      $a3, $a3, %lo(gEntitiesNextPosXArray)
.L801E00E4_ovl10:
/* 1EA9A4 801E00E4 00C27821 */  addu       $t7, $a2, $v0
/* 1EA9A8 801E00E8 00C5C021 */  addu       $t8, $a2, $a1
.L801E00EC_ovl17:
/* 1EA9AC 801E00EC C7060000 */  lwc1       $f6, 0x0($t8)
/* 1EA9B0 801E00F0 C5E40000 */  lwc1       $f4, 0x0($t7)
/* 1EA9B4 801E00F4 01055021 */  addu       $t2, $t0, $a1
/* 1EA9B8 801E00F8 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 1EA9BC 801E00FC 44819000 */  mtc1       $at, $f18
/* 1EA9C0 801E0100 C5500000 */  lwc1       $f16, 0x0($t2)
/* 1EA9C4 801E0104 00E2C821 */  addu       $t9, $a3, $v0
.L801E0108_ovl16:
/* 1EA9C8 801E0108 00E54821 */  addu       $t1, $a3, $a1
/* 1EA9CC 801E010C C52A0000 */  lwc1       $f10, 0x0($t1)
/* 1EA9D0 801E0110 C7280000 */  lwc1       $f8, 0x0($t9)
/* 1EA9D4 801E0114 46062081 */  sub.s      $f2, $f4, $f6
.L801E0118_ovl16:
/* 1EA9D8 801E0118 01025821 */  addu       $t3, $t0, $v0
/* 1EA9DC 801E011C C5660000 */  lwc1       $f6, 0x0($t3)
/* 1EA9E0 801E0120 46128100 */  add.s      $f4, $f16, $f18
.L801E0124_ovl14:
/* 1EA9E4 801E0124 3C0144C8 */  lui        $at, (0x44C80000 >> 16)
/* 1EA9E8 801E0128 00001825 */  or         $v1, $zero, $zero
/* 1EA9EC 801E012C 460A4301 */  sub.s      $f12, $f8, $f10
/* 1EA9F0 801E0130 46043381 */  sub.s      $f14, $f6, $f4
.L801E0134_ovl13:
/* 1EA9F4 801E0134 460C6202 */  mul.s      $f8, $f12, $f12
/* 1EA9F8 801E0138 44813000 */  mtc1       $at, $f6
/* 1EA9FC 801E013C 460E7282 */  mul.s      $f10, $f14, $f14
/* 1EAA00 801E0140 460A4400 */  add.s      $f16, $f8, $f10
/* 1EAA04 801E0144 46021482 */  mul.s      $f18, $f2, $f2
.L801E0148_ovl10:
/* 1EAA08 801E0148 46109000 */  add.s      $f0, $f18, $f16
/* 1EAA0C 801E014C 4606003E */  c.le.s     $f0, $f6
/* 1EAA10 801E0150 00000000 */  nop
.L801E0154_ovl12:
/* 1EAA14 801E0154 45000002 */  bc1f       .L801E0160_ovl12
/* 1EAA18 801E0158 00000000 */   nop
/* 1EAA1C 801E015C 24030001 */  addiu      $v1, $zero, 0x1
.L801E0160_ovl12:
/* 1EAA20 801E0160 03E00008 */  jr         $ra
/* 1EAA24 801E0164 00601025 */   or        $v0, $v1, $zero
