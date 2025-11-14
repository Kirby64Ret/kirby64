glabel func_80020BB8
/* 0217B8 80020BB8 00047080 */  sll   $t6, $a0, 2
/* 0217BC 80020BBC 3C0F8009 */ lui $t7, %hi(D_80096478)
/* 0217C0 80020BC0 01EE7821 */  addu  $t7, $t7, $t6
/* 0217C4 80020BC4 8DEF6478 */ lw $t7, %lo(D_80096478)($t7)
/* 0217C8 80020BC8 24020001 */  li    $v0, 1
/* 0217CC 80020BCC 8DF80034 */  lw    $t8, 0x34($t7)
/* 0217D0 80020BD0 17000003 */  bnez  $t8, .L80020BE0_ovl0
/* 0217D4 80020BD4 00000000 */   nop   
/* 0217D8 80020BD8 03E00008 */  jr    $ra
/* 0217DC 80020BDC 00001025 */   move  $v0, $zero
.type func_80020BB8, @function

.L80020BE0_ovl0:
/* 0217E0 80020BE0 03E00008 */  jr    $ra
/* 0217E4 80020BE4 00000000 */   nop   
.type func_80020BB8, @function
.size func_80020BB8, . - func_80020BB8
