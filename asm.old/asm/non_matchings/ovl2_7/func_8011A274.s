glabel func_8011A274
/* 0A2CE4 8011A274 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2CE8 8011A278 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2CEC 8011A27C 0C0462D8 */  jal   func_80118B60
/* 0A2CF0 8011A280 2405003C */   li    $a1, 60
/* 0A2CF4 8011A284 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2CF8 8011A288 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2CFC 8011A28C 03E00008 */  jr    $ra
/* 0A2D00 8011A290 00000000 */   nop   
.type func_8011A274, @function
.size func_8011A274, . - func_8011A274
