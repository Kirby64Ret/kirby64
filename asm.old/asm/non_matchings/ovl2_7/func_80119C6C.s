glabel func_80119C6C
/* 0A26DC 80119C6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A26E0 80119C70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A26E4 80119C74 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A26E8 80119C78 904E0002 */  lbu   $t6, 2($v0)
/* 0A26EC 80119C7C 35CF0002 */  ori   $t7, $t6, 2
/* 0A26F0 80119C80 0C04541C */  jal   func_80115070
/* 0A26F4 80119C84 A04F0002 */   sb    $t7, 2($v0)
/* 0A26F8 80119C88 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A26FC 80119C8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2700 80119C90 03E00008 */  jr    $ra
/* 0A2704 80119C94 00000000 */   nop   
.type func_80119C6C, @function
.size func_80119C6C, . - func_80119C6C
