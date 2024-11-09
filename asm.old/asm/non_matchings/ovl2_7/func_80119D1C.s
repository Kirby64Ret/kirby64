glabel func_80119D1C
/* 0A278C 80119D1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2790 80119D20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2794 80119D24 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A2798 80119D28 904E0002 */  lbu   $t6, 2($v0)
/* 0A279C 80119D2C 35CF0002 */  ori   $t7, $t6, 2
/* 0A27A0 80119D30 0C04541C */  jal   func_80115070
/* 0A27A4 80119D34 A04F0002 */   sb    $t7, 2($v0)
/* 0A27A8 80119D38 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A27AC 80119D3C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A27B0 80119D40 03E00008 */  jr    $ra
/* 0A27B4 80119D44 00000000 */   nop   
.type func_80119D1C, @function
.size func_80119D1C, . - func_80119D1C
