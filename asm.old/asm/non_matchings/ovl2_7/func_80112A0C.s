glabel func_80112A0C
/* 09B47C 80112A0C 3C028013 */  lui   $v0, %hi(D_8012D930) # $v0, 0x8013
/* 09B480 80112A10 2442D930 */  addiu $v0, %lo(D_8012D930) # addiu $v0, $v0, -0x26d0
/* 09B484 80112A14 904E0000 */  lbu   $t6, ($v0)
/* 09B488 80112A18 31CBFFBF */  andi  $t3, $t6, 0xffbf
/* 09B48C 80112A1C A04B0000 */  sb    $t3, ($v0)
/* 09B490 80112A20 8C580000 */  lw    $t8, ($v0)
/* 09B494 80112A24 316C007F */  andi  $t4, $t3, 0x7f
/* 09B498 80112A28 0018C840 */  sll   $t9, $t8, 1
/* 09B49C 80112A2C 001947C2 */  srl   $t0, $t9, 0x1f
/* 09B4A0 80112A30 000851C0 */  sll   $t2, $t0, 7
/* 09B4A4 80112A34 014C6825 */  or    $t5, $t2, $t4
/* 09B4A8 80112A38 03E00008 */  jr    $ra
/* 09B4AC 80112A3C A04D0000 */   sb    $t5, ($v0)
.type func_80112A0C, @function
.size func_80112A0C, . - func_80112A0C
