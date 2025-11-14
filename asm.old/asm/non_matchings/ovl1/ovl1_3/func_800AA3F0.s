glabel func_800AA3F0
/* 052640 800AA3F0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 052644 800AA3F4 AFB00020 */  sw    $s0, 0x20($sp)
/* 052648 800AA3F8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 05264C 800AA3FC 3C01800D */  lui   $at, %hi(D_800D5DE0) # $at, 0x800d
/* 052650 800AA400 00808025 */  move  $s0, $a0
/* 052654 800AA404 AFBF0024 */  sw    $ra, 0x24($sp)
/* 052658 800AA408 C4345DE0 */  lwc1  $f20, %lo(D_800D5DE0)($at)
/* 05265C 800AA40C C6040074 */  lwc1  $f4, 0x74($s0)
.L800AA410_ovl1:
/* 052660 800AA410 4604A032 */  c.eq.s $f20, $f4
/* 052664 800AA414 00000000 */  nop   
/* 052668 800AA418 45010005 */  bc1t  .L800AA430_ovl1
/* 05266C 800AA41C 00000000 */   nop   
/* 052670 800AA420 0C002DAF */  jal   finish_current_thread
/* 052674 800AA424 24040001 */   li    $a0, 1
/* 052678 800AA428 1000FFF9 */  b     .L800AA410_ovl1
/* 05267C 800AA42C C6040074 */   lwc1  $f4, 0x74($s0)
.L800AA430_ovl1:
/* 052680 800AA430 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 052684 800AA434 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 052688 800AA438 3C05800E */  lui   $a1, %hi(D_800DFA10) # $a1, 0x800e
/* 05268C 800AA43C 24A5FA10 */  addiu $a1, %lo(D_800DFA10) # addiu $a1, $a1, -0x5f0
/* 052690 800AA440 8C640000 */  lw    $a0, ($v1)
/* 052694 800AA444 3C01800E */  lui   $at, 0x800e
/* 052698 800AA448 00042080 */  sll   $a0, $a0, 2
/* 05269C 800AA44C 00A47021 */  addu  $t6, $a1, $a0
/* 0526A0 800AA450 8DC20000 */  lw    $v0, ($t6)
/* 0526A4 800AA454 00240821 */  addu  $at, $at, $a0
/* 0526A8 800AA458 AC22F4D0 */  sw    $v0, -0xb30($at)
/* 0526AC 800AA45C 8C780000 */  lw    $t8, ($v1)
/* 0526B0 800AA460 8C4F0000 */  lw    $t7, ($v0)
/* 0526B4 800AA464 3C01800E */  lui   $at, 0x800e
/* 0526B8 800AA468 0018C880 */  sll   $t9, $t8, 2
/* 0526BC 800AA46C 00B94021 */  addu  $t0, $a1, $t9
/* 0526C0 800AA470 AD0F0000 */  sw    $t7, ($t0)
/* 0526C4 800AA474 8C6A0000 */  lw    $t2, ($v1)
/* 0526C8 800AA478 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0526CC 800AA47C 8C490004 */  lw    $t1, 4($v0)
/* 0526D0 800AA480 000A5880 */  sll   $t3, $t2, 2
/* 0526D4 800AA484 002B0821 */  addu  $at, $at, $t3
/* 0526D8 800AA488 8FB00020 */  lw    $s0, 0x20($sp)
/* 0526DC 800AA48C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0526E0 800AA490 27BD0028 */  addiu $sp, $sp, 0x28
/* 0526E4 800AA494 03E00008 */  jr    $ra
/* 0526E8 800AA498 AC29FD90 */   sw    $t1, -0x270($at)
.type func_800AA3F0, @function
.size func_800AA3F0, . - func_800AA3F0
