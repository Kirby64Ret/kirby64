glabel func_80117808_ovl2
/* 0A0278 80117808 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A027C 8011780C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0280 80117810 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A0284 80117814 904E0002 */  lbu   $t6, 2($v0)
/* 0A0288 80117818 35CF0002 */  ori   $t7, $t6, 2
/* 0A028C 8011781C 0C0454EE */  jal   func_801153B8_ovl2
/* 0A0290 80117820 A04F0002 */   sb    $t7, 2($v0)
/* 0A0294 80117824 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A0298 80117828 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A029C 8011782C 03E00008 */  jr    $ra
/* 0A02A0 80117830 00000000 */   nop   
