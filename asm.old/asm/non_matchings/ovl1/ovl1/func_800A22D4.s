glabel func_800A22D4
/* 04A524 800A22D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04A528 800A22D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04A52C 800A22DC 00803025 */  move  $a2, $a0
/* 04A530 800A22E0 90C5000A */  lbu   $a1, 0xa($a2)
/* 04A534 800A22E4 94840004 */  lhu   $a0, 4($a0)
/* 04A538 800A22E8 0C028820 */  jal   func_800A2080
/* 04A53C 800A22EC 000528C3 */   sra   $a1, $a1, 3
/* 04A540 800A22F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04A544 800A22F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 04A548 800A22F8 03E00008 */  jr    $ra
/* 04A54C 800A22FC 00000000 */   nop   
.type func_800A22D4, @function
.size func_800A22D4, . - func_800A22D4
