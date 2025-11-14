glabel func_80119CF0
/* 0A2760 80119CF0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2764 80119CF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2768 80119CF8 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A276C 80119CFC 904E0002 */  lbu   $t6, 2($v0)
/* 0A2770 80119D00 35CF0002 */  ori   $t7, $t6, 2
/* 0A2774 80119D04 0C04541C */  jal   func_80115070
/* 0A2778 80119D08 A04F0002 */   sb    $t7, 2($v0)
/* 0A277C 80119D0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2780 80119D10 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2784 80119D14 03E00008 */  jr    $ra
/* 0A2788 80119D18 00000000 */   nop   
.type func_80119CF0, @function
.size func_80119CF0, . - func_80119CF0
