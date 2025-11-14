glabel func_80151E10
/* 1361A0 80151E10 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1361A4 80151E14 AFA40028 */  sw    $a0, 0x28($sp)
/* 1361A8 80151E18 8FAE0028 */  lw    $t6, 0x28($sp)
/* 1361AC 80151E1C 3C18800E */  lui   $t8, 0x800e
/* 1361B0 80151E20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1361B4 80151E24 000E7880 */  sll   $t7, $t6, 2
/* 1361B8 80151E28 030FC021 */  addu  $t8, $t8, $t7
/* 1361BC 80151E2C 8F18E350 */  lw    $t8, -0x1cb0($t8)
/* 1361C0 80151E30 27A4001C */  addiu $a0, $sp, 0x1c
/* 1361C4 80151E34 8F19003C */  lw    $t9, 0x3c($t8)
/* 1361C8 80151E38 8F280010 */  lw    $t0, 0x10($t9)
/* 1361CC 80151E3C 0C0291E5 */  jal   func_800A4794
/* 1361D0 80151E40 8D050010 */   lw    $a1, 0x10($t0)
/* 1361D4 80151E44 8FA40028 */  lw    $a0, 0x28($sp)
/* 1361D8 80151E48 0C054734 */  jal   func_80151CD0_ovl6
/* 1361DC 80151E4C 27A5001C */   addiu $a1, $sp, 0x1c
/* 1361E0 80151E50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1361E4 80151E54 27BD0028 */  addiu $sp, $sp, 0x28
/* 1361E8 80151E58 03E00008 */  jr    $ra
/* 1361EC 80151E5C 00000000 */   nop   
.type func_80151E10, @function
.size func_80151E10, . - func_80151E10
