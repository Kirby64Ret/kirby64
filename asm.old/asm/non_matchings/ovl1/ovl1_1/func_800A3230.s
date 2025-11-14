glabel func_800A3230
/* 04B480 800A3230 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 04B484 800A3234 3C0E800C */  lui   $t6, %hi(D_800BE500) # $t6, 0x800c
/* 04B488 800A3238 8DCEE500 */  lw    $t6, %lo(D_800BE500)($t6)
/* 04B48C 800A323C AFBF0034 */  sw    $ra, 0x34($sp)
/* 04B490 800A3240 AFB60030 */  sw    $s6, 0x30($sp)
/* 04B494 800A3244 AFB5002C */  sw    $s5, 0x2c($sp)
/* 04B498 800A3248 AFB40028 */  sw    $s4, 0x28($sp)
/* 04B49C 800A324C AFB30024 */  sw    $s3, 0x24($sp)
/* 04B4A0 800A3250 AFB20020 */  sw    $s2, 0x20($sp)
/* 04B4A4 800A3254 AFB1001C */  sw    $s1, 0x1c($sp)
/* 04B4A8 800A3258 15C0003A */  bnez  $t6, .L800A3344_ovl1
/* 04B4AC 800A325C AFB00018 */   sw    $s0, 0x18($sp)
/* 04B4B0 800A3260 3C15800C */  lui   $s5, %hi(D_800BE534) # $s5, 0x800c
/* 04B4B4 800A3264 3C14800C */  lui   $s4, %hi(D_800BE508) # $s4, 0x800c
/* 04B4B8 800A3268 3C13800D */  lui   $s3, %hi(D_800D6B88) # $s3, 0x800d
/* 04B4BC 800A326C 3C12800C */  lui   $s2, %hi(D_800BE504) # $s2, 0x800c
/* 04B4C0 800A3270 3C11800C */  lui   $s1, %hi(D_800BE400) # $s1, 0x800c
/* 04B4C4 800A3274 2631E400 */  addiu $s1, %lo(D_800BE400) # addiu $s1, $s1, -0x1c00
/* 04B4C8 800A3278 2652E504 */  addiu $s2, %lo(D_800BE504) # addiu $s2, $s2, -0x1afc
/* 04B4CC 800A327C 26736B88 */  addiu $s3, %lo(D_800D6B88) # addiu $s3, $s3, 0x6b88
/* 04B4D0 800A3280 2694E508 */  addiu $s4, %lo(D_800BE508) # addiu $s4, $s4, -0x1af8
/* 04B4D4 800A3284 26B5E534 */  addiu $s5, %lo(D_800BE534) # addiu $s5, $s5, -0x1acc
/* 04B4D8 800A3288 00008025 */  move  $s0, $zero
/* 04B4DC 800A328C 24160006 */  li    $s6, 6
/* 04B4E0 800A3290 8E4F0000 */  lw    $t7, ($s2)
.L800A3294_ovl1:
/* 04B4E4 800A3294 8E880000 */  lw    $t0, ($s4)
/* 04B4E8 800A3298 000FC080 */  sll   $t8, $t7, 2
/* 04B4EC 800A329C 030FC023 */  subu  $t8, $t8, $t7
/* 04B4F0 800A32A0 0018C040 */  sll   $t8, $t8, 1
/* 04B4F4 800A32A4 0238C821 */  addu  $t9, $s1, $t8
/* 04B4F8 800A32A8 03301021 */  addu  $v0, $t9, $s0
/* 04B4FC 800A32AC 90490000 */  lbu   $t1, ($v0)
/* 04B500 800A32B0 55090022 */  bnel  $t0, $t1, .L800A333C_ovl1
/* 04B504 800A32B4 26100003 */   addiu $s0, $s0, 3
/* 04B508 800A32B8 8EAA0000 */  lw    $t2, ($s5)
/* 04B50C 800A32BC 904B0001 */  lbu   $t3, 1($v0)
/* 04B510 800A32C0 554B001E */  bnel  $t2, $t3, .L800A333C_ovl1
/* 04B514 800A32C4 26100003 */   addiu $s0, $s0, 3
/* 04B518 800A32C8 0C02E7D4 */  jal   check_cutscene_watched
/* 04B51C 800A32CC 90440002 */   lbu   $a0, 2($v0)
/* 04B520 800A32D0 5440001A */  bnezl $v0, .L800A333C_ovl1
/* 04B524 800A32D4 26100003 */   addiu $s0, $s0, 3
/* 04B528 800A32D8 0C029D36 */  jal   func_800A74D8
/* 04B52C 800A32DC 00000000 */   nop   
/* 04B530 800A32E0 8E4C0000 */  lw    $t4, ($s2)
/* 04B534 800A32E4 8E650000 */  lw    $a1, ($s3)
/* 04B538 800A32E8 000C6880 */  sll   $t5, $t4, 2
/* 04B53C 800A32EC 01AC6823 */  subu  $t5, $t5, $t4
/* 04B540 800A32F0 000D6840 */  sll   $t5, $t5, 1
/* 04B544 800A32F4 022D7021 */  addu  $t6, $s1, $t5
/* 04B548 800A32F8 01D07821 */  addu  $t7, $t6, $s0
/* 04B54C 800A32FC 0C02E7E4 */  jal   set_cutscene_watched
/* 04B550 800A3300 91E40002 */   lbu   $a0, 2($t7)
/* 04B554 800A3304 0C02E714 */  jal   func_800B9C50
/* 04B558 800A3308 8E640000 */   lw    $a0, ($s3)
/* 04B55C 800A330C 0C029AC8 */  jal   load_overlay
/* 04B560 800A3310 24040004 */   li    $a0, 4
/* 04B564 800A3314 8E580000 */  lw    $t8, ($s2)
/* 04B568 800A3318 24050002 */  li    $a1, 2
/* 04B56C 800A331C 0018C880 */  sll   $t9, $t8, 2
/* 04B570 800A3320 0338C823 */  subu  $t9, $t9, $t8
/* 04B574 800A3324 0019C840 */  sll   $t9, $t9, 1
/* 04B578 800A3328 02394021 */  addu  $t0, $s1, $t9
/* 04B57C 800A332C 01104821 */  addu  $t1, $t0, $s0
/* 04B580 800A3330 0C055358 */  jal   func_80154D60_ovl1
/* 04B584 800A3334 91240002 */   lbu   $a0, 2($t1)
/* 04B588 800A3338 26100003 */  addiu $s0, $s0, 3
.L800A333C_ovl1:
/* 04B58C 800A333C 5616FFD5 */  bnel  $s0, $s6, .L800A3294_ovl1
/* 04B590 800A3340 8E4F0000 */   lw    $t7, ($s2)
.L800A3344_ovl1:
/* 04B594 800A3344 8FBF0034 */  lw    $ra, 0x34($sp)
/* 04B598 800A3348 8FB00018 */  lw    $s0, 0x18($sp)
/* 04B59C 800A334C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 04B5A0 800A3350 8FB20020 */  lw    $s2, 0x20($sp)
/* 04B5A4 800A3354 8FB30024 */  lw    $s3, 0x24($sp)
/* 04B5A8 800A3358 8FB40028 */  lw    $s4, 0x28($sp)
/* 04B5AC 800A335C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 04B5B0 800A3360 8FB60030 */  lw    $s6, 0x30($sp)
/* 04B5B4 800A3364 03E00008 */  jr    $ra
/* 04B5B8 800A3368 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800A3230, @function
.size func_800A3230, . - func_800A3230
