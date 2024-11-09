glabel func_801177B0
/* 0A0220 801177B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0224 801177B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0228 801177B8 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A022C 801177BC 904E0002 */  lbu   $t6, 2($v0)
/* 0A0230 801177C0 35CF0002 */  ori   $t7, $t6, 2
/* 0A0234 801177C4 0C0454EE */  jal   func_801153B8
/* 0A0238 801177C8 A04F0002 */   sb    $t7, 2($v0)
/* 0A023C 801177CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A0240 801177D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0244 801177D4 03E00008 */  jr    $ra
/* 0A0248 801177D8 00000000 */   nop   
.type func_801177B0, @function
.size func_801177B0, . - func_801177B0
