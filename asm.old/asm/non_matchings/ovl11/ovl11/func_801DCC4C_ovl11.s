glabel func_801DCC4C_ovl11
/* 1E750C 801DCC4C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E7510 801DCC50 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E7514 801DCC54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E7518 801DCC58 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E751C 801DCC5C AFA40018 */  sw    $a0, 0x18($sp)
/* 1E7520 801DCC60 8C4E0000 */  lw    $t6, ($v0)
/* 1E7524 801DCC64 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E7528 801DCC68 24030001 */  li    $v1, 1
/* 1E752C 801DCC6C 000E7880 */  sll   $t7, $t6, 2
/* 1E7530 801DCC70 002F0821 */  addu  $at, $at, $t7
/* 1E7534 801DCC74 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1E7538 801DCC78 8C580000 */  lw    $t8, ($v0)
/* 1E753C 801DCC7C 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1E7540 801DCC80 3C040001 */  lui   $a0, (0x00010402 >> 16) # lui $a0, 1
/* 1E7544 801DCC84 0018C880 */  sll   $t9, $t8, 2
/* 1E7548 801DCC88 00390821 */  addu  $at, $at, $t9
/* 1E754C 801DCC8C AC239FE0 */ sw $v1, %lo(D_800E9FE0)($at)
/* 1E7550 801DCC90 8C480000 */  lw    $t0, ($v0)
/* 1E7554 801DCC94 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1E7558 801DCC98 34840402 */  ori   $a0, (0x00010402 & 0xFFFF) # ori $a0, $a0, 0x402
/* 1E755C 801DCC9C 00084880 */  sll   $t1, $t0, 2
/* 1E7560 801DCCA0 00290821 */  addu  $at, $at, $t1
/* 1E7564 801DCCA4 0C02A806 */  jal   func_800AA018
/* 1E7568 801DCCA8 AC23DFD0 */ sw $v1, %lo(D_800DDFD0)($at)
/* 1E756C 801DCCAC 3C040001 */  lui   $a0, (0x00010401 >> 16) # lui $a0, 1
/* 1E7570 801DCCB0 0C02A806 */  jal   func_800AA018
/* 1E7574 801DCCB4 34840401 */   ori   $a0, (0x00010401 & 0xFFFF) # ori $a0, $a0, 0x401
/* 1E7578 801DCCB8 0C02BE85 */  jal   func_800AFA14
/* 1E757C 801DCCBC 00000000 */   nop   
/* 1E7580 801DCCC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E7584 801DCCC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E7588 801DCCC8 03E00008 */  jr    $ra
/* 1E758C 801DCCCC 00000000 */   nop   
.type func_801DCC4C_ovl11, @function
.size func_801DCC4C_ovl11, . - func_801DCC4C_ovl11
