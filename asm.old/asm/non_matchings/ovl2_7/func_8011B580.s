glabel func_8011B580
/* 0A3FF0 8011B580 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3FF4 8011B584 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3FF8 8011B588 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A3FFC 8011B58C 904E0002 */  lbu   $t6, 2($v0)
/* 0A4000 8011B590 35CF0002 */  ori   $t7, $t6, 2
/* 0A4004 8011B594 0C0454EE */  jal   func_801153B8
/* 0A4008 8011B598 A04F0002 */   sb    $t7, 2($v0)
/* 0A400C 8011B59C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A4010 8011B5A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A4014 8011B5A4 03E00008 */  jr    $ra
/* 0A4018 8011B5A8 00000000 */   nop   
.type func_8011B580, @function
.size func_8011B580, . - func_8011B580
