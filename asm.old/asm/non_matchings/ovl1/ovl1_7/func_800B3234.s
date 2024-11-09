glabel func_800B3234
/* 05B484 800B3234 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 05B488 800B3238 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 05B48C 800B323C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 05B490 800B3240 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05B494 800B3244 E7AC0040 */  swc1  $f12, 0x40($sp)
/* 05B498 800B3248 E7AE0044 */  swc1  $f14, 0x44($sp)
/* 05B49C 800B324C AFA60048 */  sw    $a2, 0x48($sp)
/* 05B4A0 800B3250 8C6E0000 */  lw    $t6, ($v1)
/* 05B4A4 800B3254 44802000 */  mtc1  $zero, $f4
/* 05B4A8 800B3258 3C08800E */  lui   $t0, %hi(D_800E6F50) # $t0, 0x800e
/* 05B4AC 800B325C 25086F50 */  addiu $t0, %lo(D_800E6F50) # addiu $t0, $t0, 0x6f50
/* 05B4B0 800B3260 000E7900 */  sll   $t7, $t6, 4
/* 05B4B4 800B3264 010FC021 */  addu  $t8, $t0, $t7
/* 05B4B8 800B3268 E7040008 */  swc1  $f4, 8($t8)
/* 05B4BC 800B326C 8C640000 */  lw    $a0, ($v1)
/* 05B4C0 800B3270 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 05B4C4 800B3274 3C063FD9 */  lui   $a2, (0x3FD9999A >> 16) # lui $a2, 0x3fd9
/* 05B4C8 800B3278 0004C880 */  sll   $t9, $a0, 2
/* 05B4CC 800B327C 00390821 */  addu  $at, $at, $t9
/* 05B4D0 800B3280 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 05B4D4 800B3284 3C01800D */  lui   $at, %hi(D_800D67E8) # $at, 0x800d
/* 05B4D8 800B3288 C42867E8 */  lwc1  $f8, %lo(D_800D67E8)($at)
/* 05B4DC 800B328C 3C074019 */  lui   $a3, (0x4019999A >> 16) # lui $a3, 0x4019
/* 05B4E0 800B3290 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 05B4E4 800B3294 4608303C */  c.lt.s $f6, $f8
/* 05B4E8 800B3298 34E7999A */  ori   $a3, (0x4019999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 05B4EC 800B329C 34C6999A */  ori   $a2, (0x3FD9999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* 05B4F0 800B32A0 27A50030 */  addiu $a1, $sp, 0x30
/* 05B4F4 800B32A4 45000008 */  bc1f  .L800B32C8_ovl1
/* 05B4F8 800B32A8 3C0B800D */   lui   $t3, %hi(D_800D799C) # $t3, 0x800d
/* 05B4FC 800B32AC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 05B500 800B32B0 44815000 */  mtc1  $at, $f10
/* 05B504 800B32B4 00044900 */  sll   $t1, $a0, 4
/* 05B508 800B32B8 01095021 */  addu  $t2, $t0, $t1
/* 05B50C 800B32BC 24020001 */  li    $v0, 1
/* 05B510 800B32C0 10000048 */  b     .L800B33E4_ovl1
/* 05B514 800B32C4 E54A0008 */   swc1  $f10, 8($t2)
.L800B32C8_ovl1:
/* 05B518 800B32C8 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 05B51C 800B32CC C7A40048 */  lwc1  $f4, 0x48($sp)
/* 05B520 800B32D0 8D6B799C */  lw    $t3, %lo(D_800D799C)($t3)
/* 05B524 800B32D4 E7B00030 */  swc1  $f16, 0x30($sp)
/* 05B528 800B32D8 E7B20034 */  swc1  $f18, 0x34($sp)
/* 05B52C 800B32DC E7A40038 */  swc1  $f4, 0x38($sp)
/* 05B530 800B32E0 0C0293D2 */  jal   func_800A4F48
/* 05B534 800B32E4 8D64003C */   lw    $a0, 0x3c($t3)
/* 05B538 800B32E8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 05B53C 800B32EC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 05B540 800B32F0 AFA2002C */  sw    $v0, 0x2c($sp)
/* 05B544 800B32F4 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 05B548 800B32F8 8C6C0000 */  lw    $t4, ($v1)
/* 05B54C 800B32FC 3C08800E */  lui   $t0, %hi(D_800E6F50) # $t0, 0x800e
/* 05B550 800B3300 25086F50 */  addiu $t0, %lo(D_800E6F50) # addiu $t0, $t0, 0x6f50
/* 05B554 800B3304 000C6900 */  sll   $t5, $t4, 4
/* 05B558 800B3308 010D7021 */  addu  $t6, $t0, $t5
/* 05B55C 800B330C E5C60000 */  swc1  $f6, ($t6)
/* 05B560 800B3310 8C6F0000 */  lw    $t7, ($v1)
/* 05B564 800B3314 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 05B568 800B3318 3C01800E */  lui   $at, %hi(gEntitiesNextPosXArray) # $at, 0x800e
/* 05B56C 800B331C 000FC100 */  sll   $t8, $t7, 4
/* 05B570 800B3320 0118C821 */  addu  $t9, $t0, $t8
/* 05B574 800B3324 E7280004 */  swc1  $f8, 4($t9)
/* 05B578 800B3328 C43025D0 */  lwc1  $f16, %lo(gEntitiesNextPosXArray)($at)
/* 05B57C 800B332C 3C01800E */  lui   $at, %hi(gEntitiesNextPosYArray) # $at, 0x800e
/* 05B580 800B3330 C4322790 */  lwc1  $f18, %lo(gEntitiesNextPosYArray)($at)
/* 05B584 800B3334 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 05B588 800B3338 44812000 */  mtc1  $at, $f4
/* 05B58C 800B333C C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 05B590 800B3340 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 05B594 800B3344 46049180 */  add.s $f6, $f18, $f4
/* 05B598 800B3348 3C01800E */  lui   $at, %hi(gEntitiesNextPosZArray) # $at, 0x800e
/* 05B59C 800B334C 46105001 */  sub.s $f0, $f10, $f16
/* 05B5A0 800B3350 C4302950 */  lwc1  $f16, %lo(gEntitiesNextPosZArray)($at)
/* 05B5A4 800B3354 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 05B5A8 800B3358 46064081 */  sub.s $f2, $f8, $f6
/* 05B5AC 800B335C 46000482 */  mul.s $f18, $f0, $f0
/* 05B5B0 800B3360 46105381 */  sub.s $f14, $f10, $f16
/* 05B5B4 800B3364 46021102 */  mul.s $f4, $f2, $f2
/* 05B5B8 800B3368 46049200 */  add.s $f8, $f18, $f4
/* 05B5BC 800B336C 460E7182 */  mul.s $f6, $f14, $f14
/* 05B5C0 800B3370 0C00CAC8 */  jal   sqrtf
/* 05B5C4 800B3374 46064300 */   add.s $f12, $f8, $f6
/* 05B5C8 800B3378 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 05B5CC 800B337C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 05B5D0 800B3380 3C08800E */  lui   $t0, %hi(D_800E6F50) # $t0, 0x800e
/* 05B5D4 800B3384 25086F50 */  addiu $t0, %lo(D_800E6F50) # addiu $t0, $t0, 0x6f50
/* 05B5D8 800B3388 8C690000 */  lw    $t1, ($v1)
/* 05B5DC 800B338C 00095100 */  sll   $t2, $t1, 4
/* 05B5E0 800B3390 010A5821 */  addu  $t3, $t0, $t2
/* 05B5E4 800B3394 E560000C */  swc1  $f0, 0xc($t3)
/* 05B5E8 800B3398 8FAC002C */  lw    $t4, 0x2c($sp)
/* 05B5EC 800B339C 55800011 */  bnezl $t4, .L800B33E4_ovl1
/* 05B5F0 800B33A0 00001025 */   move  $v0, $zero
/* 05B5F4 800B33A4 8C6D0000 */  lw    $t5, ($v1)
/* 05B5F8 800B33A8 3C0143FA */  li    $at, 0x43FA0000 # 500.000000
/* 05B5FC 800B33AC 44815000 */  mtc1  $at, $f10
/* 05B600 800B33B0 000D7100 */  sll   $t6, $t5, 4
/* 05B604 800B33B4 010E2021 */  addu  $a0, $t0, $t6
/* 05B608 800B33B8 C490000C */  lwc1  $f16, 0xc($a0)
/* 05B60C 800B33BC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 05B610 800B33C0 4610503C */  c.lt.s $f10, $f16
/* 05B614 800B33C4 00000000 */  nop   
/* 05B618 800B33C8 45020006 */  bc1fl .L800B33E4_ovl1
/* 05B61C 800B33CC 00001025 */   move  $v0, $zero
/* 05B620 800B33D0 44819000 */  mtc1  $at, $f18
/* 05B624 800B33D4 24020001 */  li    $v0, 1
/* 05B628 800B33D8 10000002 */  b     .L800B33E4_ovl1
/* 05B62C 800B33DC E4920008 */   swc1  $f18, 8($a0)
/* 05B630 800B33E0 00001025 */  move  $v0, $zero
.L800B33E4_ovl1:
/* 05B634 800B33E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05B638 800B33E8 27BD0040 */  addiu $sp, $sp, 0x40
/* 05B63C 800B33EC 03E00008 */  jr    $ra
/* 05B640 800B33F0 00000000 */   nop   
.type func_800B3234, @function
.size func_800B3234, . - func_800B3234
