glabel func_80119D74
/* 0A27E4 80119D74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A27E8 80119D78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A27EC 80119D7C 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A27F0 80119D80 904E0002 */  lbu   $t6, 2($v0)
/* 0A27F4 80119D84 35CF0002 */  ori   $t7, $t6, 2
/* 0A27F8 80119D88 0C04541C */  jal   func_80115070
/* 0A27FC 80119D8C A04F0002 */   sb    $t7, 2($v0)
/* 0A2800 80119D90 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2804 80119D94 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2808 80119D98 03E00008 */  jr    $ra
/* 0A280C 80119D9C 00000000 */   nop   
.type func_80119D74, @function
.size func_80119D74, . - func_80119D74
