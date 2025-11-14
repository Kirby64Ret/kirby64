glabel func_80119C40
/* 0A26B0 80119C40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A26B4 80119C44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A26B8 80119C48 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A26BC 80119C4C 904E0002 */  lbu   $t6, 2($v0)
/* 0A26C0 80119C50 35CF0002 */  ori   $t7, $t6, 2
/* 0A26C4 80119C54 0C04541C */  jal   func_80115070
/* 0A26C8 80119C58 A04F0002 */   sb    $t7, 2($v0)
/* 0A26CC 80119C5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A26D0 80119C60 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A26D4 80119C64 03E00008 */  jr    $ra
/* 0A26D8 80119C68 00000000 */   nop   
.type func_80119C40, @function
.size func_80119C40, . - func_80119C40
