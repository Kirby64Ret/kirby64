glabel func_801182F4
/* 0A0D64 801182F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0D68 801182F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0D6C 801182FC 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A0D70 80118300 904E0002 */  lbu   $t6, 2($v0)
/* 0A0D74 80118304 35CF0002 */  ori   $t7, $t6, 2
/* 0A0D78 80118308 0C0454EE */  jal   func_801153B8
/* 0A0D7C 8011830C A04F0002 */   sb    $t7, 2($v0)
/* 0A0D80 80118310 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A0D84 80118314 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0D88 80118318 03E00008 */  jr    $ra
/* 0A0D8C 8011831C 00000000 */   nop   
.type func_801182F4, @function
.size func_801182F4, . - func_801182F4
