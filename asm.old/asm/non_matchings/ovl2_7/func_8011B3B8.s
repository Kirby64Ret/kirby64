glabel func_8011B3B8
/* 0A3E28 8011B3B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A3E2C 8011B3BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A3E30 8011B3C0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A3E34 8011B3C4 0C03EE45 */  jal   func_800FB914
/* 0A3E38 8011B3C8 24040005 */   li    $a0, 5
/* 0A3E3C 8011B3CC 8FA40018 */  lw    $a0, 0x18($sp)
/* 0A3E40 8011B3D0 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A3E44 8011B3D4 904E0002 */  lbu   $t6, 2($v0)
/* 0A3E48 8011B3D8 35CF0002 */  ori   $t7, $t6, 2
/* 0A3E4C 8011B3DC 0C04541C */  jal   func_80115070
/* 0A3E50 8011B3E0 A04F0002 */   sb    $t7, 2($v0)
/* 0A3E54 8011B3E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A3E58 8011B3E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A3E5C 8011B3EC 03E00008 */  jr    $ra
/* 0A3E60 8011B3F0 00000000 */   nop   
.type func_8011B3B8, @function
.size func_8011B3B8, . - func_8011B3B8
