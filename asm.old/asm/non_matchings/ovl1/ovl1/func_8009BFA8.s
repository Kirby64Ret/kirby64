glabel func_8009BFA8
/* 0441F8 8009BFA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0441FC 8009BFAC 10800005 */  beqz  $a0, .L8009BFC4_ovl1
/* 044200 8009BFB0 AFBF0014 */   sw    $ra, 0x14($sp)
/* 044204 8009BFB4 90860008 */  lbu   $a2, 8($a0)
/* 044208 8009BFB8 00002825 */  move  $a1, $zero
/* 04420C 8009BFBC 0C027138 */  jal   func_8009C4E0
/* 044210 8009BFC0 000630C3 */   sra   $a2, $a2, 3
.L8009BFC4_ovl1:
/* 044214 8009BFC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 044218 8009BFC8 27BD0018 */  addiu $sp, $sp, 0x18
/* 04421C 8009BFCC 03E00008 */  jr    $ra
/* 044220 8009BFD0 00000000 */   nop   
.type func_8009BFA8, @function
.size func_8009BFA8, . - func_8009BFA8
