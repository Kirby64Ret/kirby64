glabel func_801177DC
/* 0A024C 801177DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0250 801177E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0254 801177E4 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A0258 801177E8 904E0002 */  lbu   $t6, 2($v0)
/* 0A025C 801177EC 35CF0002 */  ori   $t7, $t6, 2
/* 0A0260 801177F0 0C0454EE */  jal   func_801153B8
/* 0A0264 801177F4 A04F0002 */   sb    $t7, 2($v0)
/* 0A0268 801177F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A026C 801177FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0270 80117800 03E00008 */  jr    $ra
/* 0A0274 80117804 00000000 */   nop   
.type func_801177DC, @function
.size func_801177DC, . - func_801177DC
