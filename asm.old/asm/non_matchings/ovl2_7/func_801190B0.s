glabel func_801190B0
/* 0A1B20 801190B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A1B24 801190B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1B28 801190B8 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A1B2C 801190BC 904E0002 */  lbu   $t6, 2($v0)
/* 0A1B30 801190C0 35CF0002 */  ori   $t7, $t6, 2
/* 0A1B34 801190C4 0C046322 */  jal   func_80118C88
/* 0A1B38 801190C8 A04F0002 */   sb    $t7, 2($v0)
/* 0A1B3C 801190CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1B40 801190D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1B44 801190D4 03E00008 */  jr    $ra
/* 0A1B48 801190D8 00000000 */   nop   
.type func_801190B0, @function
.size func_801190B0, . - func_801190B0
