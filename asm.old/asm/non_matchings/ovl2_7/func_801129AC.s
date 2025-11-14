glabel func_801129AC
/* 09B41C 801129AC 3C028013 */  lui   $v0, %hi(D_8012D930) # $v0, 0x8013
/* 09B420 801129B0 2442D930 */  addiu $v0, %lo(D_8012D930) # addiu $v0, $v0, -0x26d0
/* 09B424 801129B4 904F0000 */  lbu   $t7, ($v0)
/* 09B428 801129B8 35F80080 */  ori   $t8, $t7, 0x80
/* 09B42C 801129BC 03E00008 */  jr    $ra
/* 09B430 801129C0 A0580000 */   sb    $t8, ($v0)
.type func_801129AC, @function
.size func_801129AC, . - func_801129AC
