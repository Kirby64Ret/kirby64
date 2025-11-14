glabel func_800A22A8
/* 04A4F8 800A22A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04A4FC 800A22AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04A500 800A22B0 00803025 */  move  $a2, $a0
/* 04A504 800A22B4 90C50008 */  lbu   $a1, 8($a2)
/* 04A508 800A22B8 94840004 */  lhu   $a0, 4($a0)
/* 04A50C 800A22BC 0C028820 */  jal   func_800A2080
/* 04A510 800A22C0 000528C3 */   sra   $a1, $a1, 3
/* 04A514 800A22C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04A518 800A22C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 04A51C 800A22CC 03E00008 */  jr    $ra
/* 04A520 800A22D0 00000000 */   nop   
.type func_800A22A8, @function
.size func_800A22A8, . - func_800A22A8
