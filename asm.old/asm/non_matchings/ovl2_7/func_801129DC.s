glabel func_801129DC
/* 09B44C 801129DC 3C028013 */  lui   $v0, %hi(D_8012D930) # $v0, 0x8013
/* 09B450 801129E0 2442D930 */  addiu $v0, %lo(D_8012D930) # addiu $v0, $v0, -0x26d0
/* 09B454 801129E4 904F0000 */  lbu   $t7, ($v0)
/* 09B458 801129E8 35F80040 */  ori   $t8, $t7, 0x40
/* 09B45C 801129EC 03E00008 */  jr    $ra
/* 09B460 801129F0 A0580000 */   sb    $t8, ($v0)
.type func_801129DC, @function
.size func_801129DC, . - func_801129DC
