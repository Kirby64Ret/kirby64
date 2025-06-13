glabel func_8011B528
/* 0A3F98 8011B528 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3F9C 8011B52C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3FA0 8011B530 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A3FA4 8011B534 904E0002 */  lbu   $t6, 2($v0)
/* 0A3FA8 8011B538 35CF0002 */  ori   $t7, $t6, 2
/* 0A3FAC 8011B53C 0C0454EE */  jal   func_801153B8
/* 0A3FB0 8011B540 A04F0002 */   sb    $t7, 2($v0)
/* 0A3FB4 8011B544 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A3FB8 8011B548 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A3FBC 8011B54C 03E00008 */  jr    $ra
/* 0A3FC0 8011B550 00000000 */   nop   
.type func_8011B528, @function
.size func_8011B528, . - func_8011B528
