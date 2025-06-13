glabel func_80119CC4
/* 0A2734 80119CC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2738 80119CC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A273C 80119CCC 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A2740 80119CD0 904E0002 */  lbu   $t6, 2($v0)
/* 0A2744 80119CD4 35CF0002 */  ori   $t7, $t6, 2
/* 0A2748 80119CD8 0C04541C */  jal   func_80115070
/* 0A274C 80119CDC A04F0002 */   sb    $t7, 2($v0)
/* 0A2750 80119CE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2754 80119CE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A2758 80119CE8 03E00008 */  jr    $ra
/* 0A275C 80119CEC 00000000 */   nop   
.type func_80119CC4, @function
.size func_80119CC4, . - func_80119CC4
