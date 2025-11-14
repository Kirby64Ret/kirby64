glabel func_801129C4
/* 09B434 801129C4 3C028013 */  lui   $v0, %hi(D_8012D930) # $v0, 0x8013
/* 09B438 801129C8 2442D930 */  addiu $v0, %lo(D_8012D930) # addiu $v0, $v0, -0x26d0
/* 09B43C 801129CC 904E0000 */  lbu   $t6, ($v0)
/* 09B440 801129D0 31CFFF7F */  andi  $t7, $t6, 0xff7f
/* 09B444 801129D4 03E00008 */  jr    $ra
/* 09B448 801129D8 A04F0000 */   sb    $t7, ($v0)
.type func_801129C4, @function
.size func_801129C4, . - func_801129C4
