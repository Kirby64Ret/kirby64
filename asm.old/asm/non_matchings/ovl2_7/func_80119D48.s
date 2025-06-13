glabel func_80119D48
/* 0A27B8 80119D48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A27BC 80119D4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A27C0 80119D50 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A27C4 80119D54 904E0002 */  lbu   $t6, 2($v0)
/* 0A27C8 80119D58 35CF0002 */  ori   $t7, $t6, 2
/* 0A27CC 80119D5C 0C04541C */  jal   func_80115070
/* 0A27D0 80119D60 A04F0002 */   sb    $t7, 2($v0)
/* 0A27D4 80119D64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A27D8 80119D68 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A27DC 80119D6C 03E00008 */  jr    $ra
/* 0A27E0 80119D70 00000000 */   nop   
.type func_80119D48, @function
.size func_80119D48, . - func_80119D48
