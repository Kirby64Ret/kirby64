glabel func_8011B3F4
/* 0A3E64 8011B3F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3E68 8011B3F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3E6C 8011B3FC 0C044AD3 */  jal   func_80112B4C
/* 0A3E70 8011B400 AFA40018 */   sw    $a0, 0x18($sp)
/* 0A3E74 8011B404 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0A3E78 8011B408 3C19800E */ lui $t9, %hi(D_800DD8D0)
/* 0A3E7C 8011B40C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0A3E80 8011B410 8DCF0000 */  lw    $t7, ($t6)
/* 0A3E84 8011B414 000FC080 */  sll   $t8, $t7, 2
/* 0A3E88 8011B418 0338C821 */  addu  $t9, $t9, $t8
/* 0A3E8C 8011B41C 8F39D8D0 */ lw $t9, %lo(D_800DD8D0)($t9)
/* 0A3E90 8011B420 00194040 */  sll   $t0, $t9, 1
/* 0A3E94 8011B424 0503000C */  bgezl $t0, .L8011B458_ovl2
/* 0A3E98 8011B428 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A3E9C 8011B42C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0A3EA0 8011B430 3C098011 */  lui   $t1, %hi(func_80112B4C) # $t1, 0x8011
/* 0A3EA4 8011B434 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A3EA8 8011B438 8D4B0000 */  lw    $t3, ($t2)
/* 0A3EAC 8011B43C 25292B4C */  addiu $t1, %lo(func_80112B4C) # addiu $t1, $t1, 0x2b4c
/* 0A3EB0 8011B440 24040001 */  li    $a0, 1
/* 0A3EB4 8011B444 000B6080 */  sll   $t4, $t3, 2
/* 0A3EB8 8011B448 002C0821 */  addu  $at, $at, $t4
/* 0A3EBC 8011B44C 0C03EE45 */  jal   func_800FB914
/* 0A3EC0 8011B450 AC29EF90 */ sw $t1, %lo(D_800DEF90)($at)
/* 0A3EC4 8011B454 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011B458_ovl2:
/* 0A3EC8 8011B458 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A3ECC 8011B45C 03E00008 */  jr    $ra
/* 0A3ED0 8011B460 00000000 */   nop   
.type func_8011B3F4, @function
.size func_8011B3F4, . - func_8011B3F4
