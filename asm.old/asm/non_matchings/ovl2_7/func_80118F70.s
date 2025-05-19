glabel func_80118F70
/* 0A19E0 80118F70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A19E4 80118F74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A19E8 80118F78 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A19EC 80118F7C 904E0002 */  lbu   $t6, 2($v0)
/* 0A19F0 80118F80 35CF0002 */  ori   $t7, $t6, 2
/* 0A19F4 80118F84 0C046322 */  jal   func_80118C88
/* 0A19F8 80118F88 A04F0002 */   sb    $t7, 2($v0)
/* 0A19FC 80118F8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1A00 80118F90 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1A04 80118F94 03E00008 */  jr    $ra
/* 0A1A08 80118F98 00000000 */   nop   
.type func_80118F70, @function
.size func_80118F70, . - func_80118F70
