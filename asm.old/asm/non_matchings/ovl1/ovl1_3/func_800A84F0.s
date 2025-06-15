glabel func_800A84F0
/* 050740 800A84F0 3C05800D */  lui   $a1, %hi(D_800D7C10) # $a1, 0x800d
/* 050744 800A84F4 24A57C10 */  addiu $a1, %lo(D_800D7C10) # addiu $a1, $a1, 0x7c10
/* 050748 800A84F8 8CA20000 */  lw    $v0, ($a1)
/* 05074C 800A84FC 3C0100FF */  lui   $at, (0x00FFFFF0 >> 16) # lui $at, 0xff
/* 050750 800A8500 3421FFF0 */  ori   $at, (0x00FFFFF0 & 0xFFFF) # ori $at, $at, 0xfff0
/* 050754 800A8504 248F000F */  addiu $t7, $a0, 0xf
/* 050758 800A8508 01E1C024 */  and   $t8, $t7, $at
/* 05075C 800A850C 0058C821 */  addu  $t9, $v0, $t8
/* 050760 800A8510 03E00008 */  jr    $ra
/* 050764 800A8514 ACB90000 */   sw    $t9, ($a1)
.type func_800A84F0, @function
.size func_800A84F0, . - func_800A84F0
