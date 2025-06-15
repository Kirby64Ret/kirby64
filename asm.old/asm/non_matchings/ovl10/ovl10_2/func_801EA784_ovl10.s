glabel func_801EA784_ovl10
/* 1DB4F4 801EA784 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DB4F8 801EA788 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DB4FC 801EA78C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DB500 801EA790 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DB504 801EA794 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DB508 801EA798 8DCF0000 */  lw    $t7, ($t6)
/* 1DB50C 801EA79C 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1DB510 801EA7A0 3C06801F */  lui   $a2, %hi(D_801F45B8_ovl10) # $a2, 0x801f
/* 1DB514 801EA7A4 000FC080 */  sll   $t8, $t7, 2
/* 1DB518 801EA7A8 00982021 */  addu  $a0, $a0, $t8
/* 1DB51C 801EA7AC 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1DB520 801EA7B0 24C645B8 */  addiu $a2, %lo(D_801F45B8_ovl10) # addiu $a2, $a2, 0x45b8
/* 1DB524 801EA7B4 0C02911F */  jal   call_virtual_function
/* 1DB528 801EA7B8 24050005 */   li    $a1, 5
/* 1DB52C 801EA7BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DB530 801EA7C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DB534 801EA7C4 03E00008 */  jr    $ra
/* 1DB538 801EA7C8 00000000 */   nop   
.type func_801EA784_ovl10, @function
.size func_801EA784_ovl10, . - func_801EA784_ovl10
