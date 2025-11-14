glabel func_80118F9C
/* 0A1A0C 80118F9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A1A10 80118FA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1A14 80118FA4 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A1A18 80118FA8 904E0002 */  lbu   $t6, 2($v0)
/* 0A1A1C 80118FAC 35CF0002 */  ori   $t7, $t6, 2
/* 0A1A20 80118FB0 0C04632A */  jal   func_80118CA8
/* 0A1A24 80118FB4 A04F0002 */   sb    $t7, 2($v0)
/* 0A1A28 80118FB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1A2C 80118FBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1A30 80118FC0 03E00008 */  jr    $ra
/* 0A1A34 80118FC4 00000000 */   nop   
.type func_80118F9C, @function
.size func_80118F9C, . - func_80118F9C
