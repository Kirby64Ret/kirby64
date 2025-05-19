glabel func_80118270
/* 0A0CE0 80118270 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0CE4 80118274 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0CE8 80118278 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A0CEC 8011827C 904E0002 */  lbu   $t6, 2($v0)
/* 0A0CF0 80118280 35CF0002 */  ori   $t7, $t6, 2
/* 0A0CF4 80118284 0C0454EE */  jal   func_801153B8
/* 0A0CF8 80118288 A04F0002 */   sb    $t7, 2($v0)
/* 0A0CFC 8011828C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A0D00 80118290 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0D04 80118294 03E00008 */  jr    $ra
/* 0A0D08 80118298 00000000 */   nop   
.type func_80118270, @function
.size func_80118270, . - func_80118270
