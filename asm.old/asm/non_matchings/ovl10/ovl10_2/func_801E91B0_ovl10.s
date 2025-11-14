glabel func_801E91B0_ovl10
/* 1D9F20 801E91B0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D9F24 801E91B4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D9F28 801E91B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D9F2C 801E91BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9F30 801E91C0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D9F34 801E91C4 8DCF0000 */  lw    $t7, ($t6)
/* 1D9F38 801E91C8 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D9F3C 801E91CC 3C06801F */  lui   $a2, %hi(D_801F4588_ovl10) # $a2, 0x801f
/* 1D9F40 801E91D0 000FC080 */  sll   $t8, $t7, 2
/* 1D9F44 801E91D4 00982021 */  addu  $a0, $a0, $t8
/* 1D9F48 801E91D8 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D9F4C 801E91DC 24C64588 */  addiu $a2, %lo(D_801F4588_ovl10) # addiu $a2, $a2, 0x4588
/* 1D9F50 801E91E0 0C02911F */  jal   call_virtual_function
/* 1D9F54 801E91E4 24050006 */   li    $a1, 6
/* 1D9F58 801E91E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D9F5C 801E91EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9F60 801E91F0 03E00008 */  jr    $ra
/* 1D9F64 801E91F4 00000000 */   nop   
.type func_801E91B0_ovl10, @function
.size func_801E91B0_ovl10, . - func_801E91B0_ovl10
