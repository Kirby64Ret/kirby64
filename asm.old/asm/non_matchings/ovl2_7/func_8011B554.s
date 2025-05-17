glabel func_8011B554
/* 0A3FC4 8011B554 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3FC8 8011B558 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3FCC 8011B55C 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A3FD0 8011B560 904E0002 */  lbu   $t6, 2($v0)
/* 0A3FD4 8011B564 35CF0002 */  ori   $t7, $t6, 2
/* 0A3FD8 8011B568 0C0454EE */  jal   func_801153B8
/* 0A3FDC 8011B56C A04F0002 */   sb    $t7, 2($v0)
/* 0A3FE0 8011B570 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A3FE4 8011B574 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A3FE8 8011B578 03E00008 */  jr    $ra
/* 0A3FEC 8011B57C 00000000 */   nop   
.type func_8011B554, @function
.size func_8011B554, . - func_8011B554
