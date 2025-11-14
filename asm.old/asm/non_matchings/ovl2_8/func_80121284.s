glabel func_80121284
/* 0A9CF4 80121284 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0A9CF8 80121288 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0A9CFC 8012128C 904E000C */  lbu   $t6, 0xc($v0)
/* 0A9D00 80121290 15C00002 */  bnez  $t6, .L8012129C_ovl2
/* 0A9D04 80121294 00000000 */   nop   
/* 0A9D08 80121298 A0440017 */  sb    $a0, 0x17($v0)
.L8012129C_ovl2:
/* 0A9D0C 8012129C 03E00008 */  jr    $ra
/* 0A9D10 801212A0 00000000 */   nop   
.type func_80121284, @function
.size func_80121284, . - func_80121284
