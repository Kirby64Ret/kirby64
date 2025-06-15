glabel func_801129F4
/* 09B464 801129F4 3C028013 */  lui   $v0, %hi(D_8012D930) # $v0, 0x8013
/* 09B468 801129F8 2442D930 */  addiu $v0, %lo(D_8012D930) # addiu $v0, $v0, -0x26d0
/* 09B46C 801129FC 904E0000 */  lbu   $t6, ($v0)
/* 09B470 80112A00 31CFFFBF */  andi  $t7, $t6, 0xffbf
/* 09B474 80112A04 03E00008 */  jr    $ra
/* 09B478 80112A08 A04F0000 */   sb    $t7, ($v0)
.type func_801129F4, @function
.size func_801129F4, . - func_801129F4
