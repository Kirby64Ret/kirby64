glabel func_801182C8
/* 0A0D38 801182C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0D3C 801182CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0D40 801182D0 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A0D44 801182D4 904E0002 */  lbu   $t6, 2($v0)
/* 0A0D48 801182D8 35CF0002 */  ori   $t7, $t6, 2
/* 0A0D4C 801182DC 0C0454EE */  jal   func_801153B8
/* 0A0D50 801182E0 A04F0002 */   sb    $t7, 2($v0)
/* 0A0D54 801182E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A0D58 801182E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0D5C 801182EC 03E00008 */  jr    $ra
/* 0A0D60 801182F0 00000000 */   nop   
.type func_801182C8, @function
.size func_801182C8, . - func_801182C8
