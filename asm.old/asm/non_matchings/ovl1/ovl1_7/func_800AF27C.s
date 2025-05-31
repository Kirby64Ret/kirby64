glabel func_800AF27C
/* 0574CC 800AF27C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0574D0 800AF280 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0574D4 800AF284 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0574D8 800AF288 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0574DC 800AF28C 8E2E0000 */  lw    $t6, ($s1)
/* 0574E0 800AF290 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0574E4 800AF294 AFB20020 */  sw    $s2, 0x20($sp)
/* 0574E8 800AF298 AFB00018 */  sw    $s0, 0x18($sp)
/* 0574EC 800AF29C 8DCF0000 */  lw    $t7, ($t6)
/* 0574F0 800AF2A0 3C10800E */  lui   $s0, %hi(D_800DD8D0) # $s0, 0x800e
/* 0574F4 800AF2A4 2610D8D0 */  addiu $s0, %lo(D_800DD8D0) # addiu $s0, $s0, -0x2730
/* 0574F8 800AF2A8 000FC080 */  sll   $t8, $t7, 2
/* 0574FC 800AF2AC 02181021 */  addu  $v0, $s0, $t8
/* 057500 800AF2B0 8C430000 */  lw    $v1, ($v0)
/* 057504 800AF2B4 3C12C000 */  lui   $s2, 0xc000
/* 057508 800AF2B8 0003CF82 */  srl   $t9, $v1, 0x1e
/* 05750C 800AF2BC 5720000C */  bnezl $t9, .L800AF2F0_ovl1
/* 057510 800AF2C0 8FBF0024 */   lw    $ra, 0x24($sp)
.L800AF2C4_ovl1:
/* 057514 800AF2C4 0C002DAF */  jal   finish_current_thread
/* 057518 800AF2C8 24040001 */   li    $a0, 1
/* 05751C 800AF2CC 8E280000 */  lw    $t0, ($s1)
/* 057520 800AF2D0 8D090000 */  lw    $t1, ($t0)
/* 057524 800AF2D4 00095080 */  sll   $t2, $t1, 2
/* 057528 800AF2D8 020A1021 */  addu  $v0, $s0, $t2
/* 05752C 800AF2DC 8C430000 */  lw    $v1, ($v0)
/* 057530 800AF2E0 00725824 */  and   $t3, $v1, $s2
/* 057534 800AF2E4 1160FFF7 */  beqz  $t3, .L800AF2C4_ovl1
/* 057538 800AF2E8 00000000 */   nop   
/* 05753C 800AF2EC 8FBF0024 */  lw    $ra, 0x24($sp)
.L800AF2F0_ovl1:
/* 057540 800AF2F0 3C013FFF */  lui   $at, (0x3FFFFFFF >> 16) # lui $at, 0x3fff
/* 057544 800AF2F4 3421FFFF */  ori   $at, (0x3FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 057548 800AF2F8 00616024 */  and   $t4, $v1, $at
/* 05754C 800AF2FC 8FB00018 */  lw    $s0, 0x18($sp)
/* 057550 800AF300 8FB1001C */  lw    $s1, 0x1c($sp)
/* 057554 800AF304 8FB20020 */  lw    $s2, 0x20($sp)
/* 057558 800AF308 AC4C0000 */  sw    $t4, ($v0)
/* 05755C 800AF30C 03E00008 */  jr    $ra
/* 057560 800AF310 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800AF27C, @function
.size func_800AF27C, . - func_800AF27C
