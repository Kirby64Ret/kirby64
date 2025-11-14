glabel func_8011B5AC
/* 0A401C 8011B5AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A4020 8011B5B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A4024 8011B5B4 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A4028 8011B5B8 904E0002 */  lbu   $t6, 2($v0)
/* 0A402C 8011B5BC 35CF0002 */  ori   $t7, $t6, 2
/* 0A4030 8011B5C0 0C0454EE */  jal   func_801153B8
/* 0A4034 8011B5C4 A04F0002 */   sb    $t7, 2($v0)
/* 0A4038 8011B5C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A403C 8011B5CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A4040 8011B5D0 03E00008 */  jr    $ra
/* 0A4044 8011B5D4 00000000 */   nop   
.type func_8011B5AC, @function
.size func_8011B5AC, . - func_8011B5AC
