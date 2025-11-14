glabel func_8011829C
/* 0A0D0C 8011829C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0D10 801182A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0D14 801182A4 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A0D18 801182A8 904E0002 */  lbu   $t6, 2($v0)
/* 0A0D1C 801182AC 35CF0002 */  ori   $t7, $t6, 2
/* 0A0D20 801182B0 0C0454EE */  jal   func_801153B8
/* 0A0D24 801182B4 A04F0002 */   sb    $t7, 2($v0)
/* 0A0D28 801182B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A0D2C 801182BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0D30 801182C0 03E00008 */  jr    $ra
/* 0A0D34 801182C4 00000000 */   nop   
.type func_8011829C, @function
.size func_8011829C, . - func_8011829C
