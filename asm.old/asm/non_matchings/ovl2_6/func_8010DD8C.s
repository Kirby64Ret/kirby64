glabel func_8010DD8C
/* 0967FC 8010DD8C 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 096800 8010DD90 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 096804 8010DD94 8C4E0040 */  lw    $t6, 0x40($v0)
/* 096808 8010DD98 25CF0001 */  addiu $t7, $t6, 1
/* 09680C 8010DD9C 03E00008 */  jr    $ra
/* 096810 8010DDA0 AC4F0040 */   sw    $t7, 0x40($v0)
.type func_8010DD8C, @function
.size func_8010DD8C, . - func_8010DD8C
