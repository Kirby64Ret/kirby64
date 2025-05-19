glabel func_8017644C_ovl3
/* 0D6E8C 8017644C 3C03801A */  lui   $v1, %hi(D_80198824) # $v1, 0x801a
/* 0D6E90 80176450 24638824 */  addiu $v1, %lo(D_80198824) # addiu $v1, $v1, -0x77dc
/* 0D6E94 80176454 84620000 */  lh    $v0, ($v1)
/* 0D6E98 80176458 10400008 */  beqz  $v0, .L8017647C_ovl3
/* 0D6E9C 8017645C 244E0005 */   addiu $t6, $v0, 5
/* 0D6EA0 80176460 A46E0000 */  sh    $t6, ($v1)
/* 0D6EA4 80176464 846F0000 */  lh    $t7, ($v1)
/* 0D6EA8 80176468 241800FF */  li    $t8, 255
/* 0D6EAC 8017646C 29E100FF */  slti  $at, $t7, 0xff
/* 0D6EB0 80176470 14200002 */  bnez  $at, .L8017647C_ovl3
/* 0D6EB4 80176474 00000000 */   nop   
/* 0D6EB8 80176478 A4780000 */  sh    $t8, ($v1)
.L8017647C_ovl3:
/* 0D6EBC 8017647C 03E00008 */  jr    $ra
/* 0D6EC0 80176480 00000000 */   nop   
.type func_8017644C_ovl3, @function
.size func_8017644C_ovl3, . - func_8017644C_ovl3
