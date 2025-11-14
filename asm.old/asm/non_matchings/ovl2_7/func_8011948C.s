glabel func_8011948C
/* 0A1EFC 8011948C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A1F00 80119490 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1F04 80119494 0C0462F2 */  jal   func_80118BC8
/* 0A1F08 80119498 2405003C */   li    $a1, 60
/* 0A1F0C 8011949C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1F10 801194A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1F14 801194A4 03E00008 */  jr    $ra
/* 0A1F18 801194A8 00000000 */   nop   
.type func_8011948C, @function
.size func_8011948C, . - func_8011948C
