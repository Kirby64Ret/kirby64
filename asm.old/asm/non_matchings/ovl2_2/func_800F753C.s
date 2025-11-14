glabel func_800F753C
/* 07FFAC 800F753C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 07FFB0 800F7540 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 07FFB4 800F7544 3C02800E */  lui   $v0, 0x800e
/* 07FFB8 800F7548 8DCF0000 */  lw    $t7, ($t6)
/* 07FFBC 800F754C 004F1021 */  addu  $v0, $v0, $t7
/* 07FFC0 800F7550 904276C0 */  lbu   $v0, 0x76c0($v0)
/* 07FFC4 800F7554 04400006 */  bltz  $v0, .L800F7570_ovl2
/* 07FFC8 800F7558 28410040 */   slti  $at, $v0, 0x40
/* 07FFCC 800F755C 10200004 */  beqz  $at, .L800F7570_ovl2
/* 07FFD0 800F7560 24180001 */   li    $t8, 1
/* 07FFD4 800F7564 3C01800D */  lui   $at, 0x800d
/* 07FFD8 800F7568 00220821 */  addu  $at, $at, $v0
/* 07FFDC 800F756C A0386CD0 */  sb    $t8, 0x6cd0($at)
.L800F7570_ovl2:
/* 07FFE0 800F7570 03E00008 */  jr    $ra
/* 07FFE4 800F7574 00000000 */   nop   
.type func_800F753C, @function
.size func_800F753C, . - func_800F753C
