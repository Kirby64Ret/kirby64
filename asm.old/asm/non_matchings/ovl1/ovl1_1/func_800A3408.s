glabel func_800A3408
/* 04B658 800A3408 3C0E800D */  lui   $t6, %hi(gCurrentWorld) # $t6, 0x800d
/* 04B65C 800A340C 8DCE6B90 */  lw    $t6, %lo(gCurrentWorld)($t6)
/* 04B660 800A3410 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04B664 800A3414 AFB20020 */  sw    $s2, 0x20($sp)
/* 04B668 800A3418 24120001 */  li    $s2, 1
/* 04B66C 800A341C AFBF0024 */  sw    $ra, 0x24($sp)
/* 04B670 800A3420 AFB1001C */  sw    $s1, 0x1c($sp)
/* 04B674 800A3424 164E0022 */  bne   $s2, $t6, .L800A34B0_ovl1
/* 04B678 800A3428 AFB00018 */   sw    $s0, 0x18($sp)
/* 04B67C 800A342C 3C0F800D */  lui   $t7, %hi(gCurrentLevel) # $t7, 0x800d
/* 04B680 800A3430 8DEF6B94 */  lw    $t7, %lo(gCurrentLevel)($t7)
/* 04B684 800A3434 564F001F */  bnel  $s2, $t7, .L800A34B4_ovl1
/* 04B688 800A3438 8FBF0024 */   lw    $ra, 0x24($sp)
/* 04B68C 800A343C 0C029AC8 */  jal   load_overlay
/* 04B690 800A3440 24040012 */   li    $a0, 18
/* 04B694 800A3444 0C089CC2 */  jal   func_80227308_ovl18
/* 04B698 800A3448 00002025 */   move  $a0, $zero
/* 04B69C 800A344C 10400018 */  beqz  $v0, .L800A34B0_ovl1
/* 04B6A0 800A3450 3C11800C */   lui   $s1, %hi(gGameState) # $s1, 0x800c
/* 04B6A4 800A3454 2631E4F0 */  addiu $s1, %lo(gGameState) # addiu $s1, $s1, -0x1b10
/* 04B6A8 800A3458 8E380000 */  lw    $t8, ($s1)
/* 04B6AC 800A345C 3C01800C */  lui   $at, %hi(D_800BE4F4) # $at, 0x800c
/* 04B6B0 800A3460 2410000E */  li    $s0, 14
/* 04B6B4 800A3464 AC38E4F4 */  sw    $t8, %lo(D_800BE4F4)($at)
/* 04B6B8 800A3468 AE300000 */  sw    $s0, ($s1)
.L800A346C_ovl1:
/* 04B6BC 800A346C 0C028C54 */  jal   func_800A3150
/* 04B6C0 800A3470 24040004 */   li    $a0, 4
/* 04B6C4 800A3474 0C029AC8 */  jal   load_overlay
/* 04B6C8 800A3478 24040012 */   li    $a0, 18
/* 04B6CC 800A347C 0C089CC2 */  jal   func_80227308_ovl18
/* 04B6D0 800A3480 02402025 */   move  $a0, $s2
/* 04B6D4 800A3484 5052FFF9 */  beql  $v0, $s2, .L800A346C_ovl1
/* 04B6D8 800A3488 AE300000 */   sw    $s0, ($s1)
/* 04B6DC 800A348C 0C028B39 */  jal   func_800A2CE4
/* 04B6E0 800A3490 00000000 */   nop   
/* 04B6E4 800A3494 3C04800D */  lui   $a0, %hi(D_800D6B88) # $a0, 0x800d
/* 04B6E8 800A3498 8C846B88 */  lw    $a0, %lo(D_800D6B88)($a0)
/* 04B6EC 800A349C 0C02E5A8 */  jal   func_800B96A0
/* 04B6F0 800A34A0 00002825 */   move  $a1, $zero
/* 04B6F4 800A34A4 3C19800C */  lui   $t9, %hi(D_800BE4F4) # $t9, 0x800c
/* 04B6F8 800A34A8 8F39E4F4 */  lw    $t9, %lo(D_800BE4F4)($t9)
/* 04B6FC 800A34AC AE390000 */  sw    $t9, ($s1)
.L800A34B0_ovl1:
/* 04B700 800A34B0 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A34B4_ovl1:
/* 04B704 800A34B4 8FB00018 */  lw    $s0, 0x18($sp)
/* 04B708 800A34B8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 04B70C 800A34BC 8FB20020 */  lw    $s2, 0x20($sp)
/* 04B710 800A34C0 03E00008 */  jr    $ra
/* 04B714 800A34C4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800A3408, @function
.size func_800A3408, . - func_800A3408
