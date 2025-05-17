glabel func_80119C98
/* 0A2708 80119C98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A270C 80119C9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2710 80119CA0 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A2714 80119CA4 904E0002 */  lbu   $t6, 2($v0)
/* 0A2718 80119CA8 35CF0002 */  ori   $t7, $t6, 2
/* 0A271C 80119CAC 0C04541C */  jal   func_80115070
/* 0A2720 80119CB0 A04F0002 */   sb    $t7, 2($v0)
/* 0A2724 80119CB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2728 80119CB8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A272C 80119CBC 03E00008 */  jr    $ra
/* 0A2730 80119CC0 00000000 */   nop   
.type func_80119C98, @function
.size func_80119C98, . - func_80119C98
