glabel func_8001E6B8
/* 01F2B8 8001E6B8 908E0009 */  lbu   $t6, 9($a0)
/* 01F2BC 8001E6BC 240F0001 */  li    $t7, 1
/* 01F2C0 8001E6C0 15C00016 */  bnez  $t6, .L8001E71C_ovl0
/* 01F2C4 8001E6C4 00000000 */   nop   
/* 01F2C8 8001E6C8 8C980000 */  lw    $t8, ($a0)
/* 01F2CC 8001E6CC 90820008 */  lbu   $v0, 8($a0)
/* 01F2D0 8001E6D0 A08F0009 */  sb    $t7, 9($a0)
/* 01F2D4 8001E6D4 0306C821 */  addu  $t9, $t8, $a2
/* 01F2D8 8001E6D8 14400009 */  bnez  $v0, .L8001E700_ovl0
/* 01F2DC 8001E6DC AC990000 */   sw    $t9, ($a0)
/* 01F2E0 8001E6E0 8C880010 */  lw    $t0, 0x10($a0)
/* 01F2E4 8001E6E4 8C82000C */  lw    $v0, 0xc($a0)
/* 01F2E8 8001E6E8 01054821 */  addu  $t1, $t0, $a1
/* 01F2EC 8001E6EC 1040000B */  beqz  $v0, .L8001E71C_ovl0
/* 01F2F0 8001E6F0 AC890010 */   sw    $t1, 0x10($a0)
/* 01F2F4 8001E6F4 00455021 */  addu  $t2, $v0, $a1
/* 01F2F8 8001E6F8 03E00008 */  jr    $ra
/* 01F2FC 8001E6FC AC8A000C */   sw    $t2, 0xc($a0)
.type func_8001E6B8, @function

.L8001E700_ovl0:
/* 01F300 8001E700 24010001 */  li    $at, 1
/* 01F304 8001E704 14410005 */  bne   $v0, $at, .L8001E71C_ovl0
/* 01F308 8001E708 00000000 */   nop   
/* 01F30C 8001E70C 8C82000C */  lw    $v0, 0xc($a0)
/* 01F310 8001E710 10400002 */  beqz  $v0, .L8001E71C_ovl0
/* 01F314 8001E714 00455821 */   addu  $t3, $v0, $a1
/* 01F318 8001E718 AC8B000C */  sw    $t3, 0xc($a0)
.L8001E71C_ovl0:
/* 01F31C 8001E71C 03E00008 */  jr    $ra
/* 01F320 8001E720 00000000 */   nop   
.type func_8001E6B8, @function
.size func_8001E6B8, . - func_8001E6B8
