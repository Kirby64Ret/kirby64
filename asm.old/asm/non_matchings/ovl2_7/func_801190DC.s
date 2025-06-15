glabel func_801190DC
/* 0A1B4C 801190DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A1B50 801190E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1B54 801190E4 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A1B58 801190E8 904E0002 */  lbu   $t6, 2($v0)
/* 0A1B5C 801190EC 35CF0002 */  ori   $t7, $t6, 2
/* 0A1B60 801190F0 0C04632A */  jal   func_80118CA8
/* 0A1B64 801190F4 A04F0002 */   sb    $t7, 2($v0)
/* 0A1B68 801190F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1B6C 801190FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1B70 80119100 03E00008 */  jr    $ra
/* 0A1B74 80119104 00000000 */   nop   
.type func_801190DC, @function
.size func_801190DC, . - func_801190DC
