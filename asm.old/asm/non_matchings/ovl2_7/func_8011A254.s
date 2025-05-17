glabel func_8011A254
/* 0A2CC4 8011A254 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2CC8 8011A258 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2CCC 8011A25C 0C046391 */  jal   func_80118E44
/* 0A2CD0 8011A260 24050050 */   li    $a1, 80
/* 0A2CD4 8011A264 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2CD8 8011A268 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2CDC 8011A26C 03E00008 */  jr    $ra
/* 0A2CE0 8011A270 00000000 */   nop   
.type func_8011A254, @function
.size func_8011A254, . - func_8011A254
