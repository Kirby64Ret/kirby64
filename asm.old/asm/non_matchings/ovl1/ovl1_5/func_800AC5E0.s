glabel func_800AC5E0
/* 054830 800AC5E0 3C02800E */  lui   $v0, %hi(D_800DD6E8) # $v0, 0x800e
/* 054834 800AC5E4 2442D6E8 */  addiu $v0, %lo(D_800DD6E8) # addiu $v0, $v0, -0x2918
/* 054838 800AC5E8 8C4E0000 */  lw    $t6, ($v0)
/* 05483C 800AC5EC 15C00002 */  bnez  $t6, .L800AC5F8_ovl1
/* 054840 800AC5F0 00000000 */   nop   
/* 054844 800AC5F4 AC440000 */  sw    $a0, ($v0)
.L800AC5F8_ovl1:
/* 054848 800AC5F8 3C02800E */  lui   $v0, %hi(D_800DD6E4) # $v0, 0x800e
/* 05484C 800AC5FC 2442D6E4 */  addiu $v0, %lo(D_800DD6E4) # addiu $v0, $v0, -0x291c
/* 054850 800AC600 8C4F0000 */  lw    $t7, ($v0)
/* 054854 800AC604 AC8F0000 */  sw    $t7, ($a0)
/* 054858 800AC608 03E00008 */  jr    $ra
/* 05485C 800AC60C AC440000 */   sw    $a0, ($v0)
.type func_800AC5E0, @function
.size func_800AC5E0, . - func_800AC5E0
