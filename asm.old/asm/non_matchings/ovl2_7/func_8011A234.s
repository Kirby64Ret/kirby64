glabel func_8011A234
/* 0A2CA4 8011A234 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2CA8 8011A238 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2CAC 8011A23C 0C046361 */  jal   func_80118D84
/* 0A2CB0 8011A240 24050050 */   li    $a1, 80
/* 0A2CB4 8011A244 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2CB8 8011A248 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2CBC 8011A24C 03E00008 */  jr    $ra
/* 0A2CC0 8011A250 00000000 */   nop   
.type func_8011A234, @function
.size func_8011A234, . - func_8011A234
