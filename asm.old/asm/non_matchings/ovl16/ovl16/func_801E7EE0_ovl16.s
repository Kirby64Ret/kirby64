glabel func_801E7EE0_ovl16
/* 21E190 801E7EE0 3C0F801F */  lui   $t7, %hi(D_801EFA3C_ovl16) # $t7, 0x801f
/* 21E194 801E7EE4 25EFFA3C */  addiu $t7, %lo(D_801EFA3C_ovl16) # addiu $t7, $t7, -0x5c4
/* 21E198 801E7EE8 000470C0 */  sll   $t6, $a0, 3
/* 21E19C 801E7EEC 01CF1021 */  addu  $v0, $t6, $t7
/* 21E1A0 801E7EF0 8C580000 */  lw    $t8, ($v0)
/* 21E1A4 801E7EF4 ACB80000 */  sw    $t8, ($a1)
/* 21E1A8 801E7EF8 8C590004 */  lw    $t9, 4($v0)
/* 21E1AC 801E7EFC 03E00008 */  jr    $ra
/* 21E1B0 801E7F00 ACD90000 */   sw    $t9, ($a2)
.type func_801E7EE0_ovl16, @function

/* 21E1B4 801E7F04 00000000 */  nop   
/* 21E1B8 801E7F08 00000000 */  nop   
/* 21E1BC 801E7F0C 00000000 */  nop   
/* 21E1C0 801E7F10 00000000 */  nop   
/* 21E1C4 801E7F14 00000000 */  nop   
/* 21E1C8 801E7F18 00000000 */  nop   
/* 21E1CC 801E7F1C 00000000 */  nop   
.type func_801E7EE0_ovl16, @function
.size func_801E7EE0_ovl16, . - func_801E7EE0_ovl16
