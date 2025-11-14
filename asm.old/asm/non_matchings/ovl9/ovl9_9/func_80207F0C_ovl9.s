glabel func_80207F0C_ovl9
/* 1B5F5C 80207F0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1B5F60 80207F10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1B5F64 80207F14 0C0821D6 */  jal   func_80208758_ovl9
/* 1B5F68 80207F18 00000000 */   nop   
/* 1B5F6C 80207F1C 3C0E8005 */ lui $t6, %hi(D_8004A7C4)
/* 1B5F70 80207F20 8DCEA7C4 */ lw $t6, %lo(D_8004A7C4)($t6)
/* 1B5F74 80207F24 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1B5F78 80207F28 3C068022 */ lui $a2, %hi(D_8021C904)
/* 1B5F7C 80207F2C 8DCF0000 */  lw    $t7, ($t6)
/* 1B5F80 80207F30 24C6C904 */ addiu $a2, %lo(D_8021C904)
/* 1B5F84 80207F34 24050008 */  li    $a1, 8
/* 1B5F88 80207F38 000FC080 */  sll   $t8, $t7, 2
/* 1B5F8C 80207F3C 00982021 */  addu  $a0, $a0, $t8
/* 1B5F90 80207F40 0C02911F */  jal   call_virtual_function
/* 1B5F94 80207F44 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1B5F98 80207F48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1B5F9C 80207F4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1B5FA0 80207F50 03E00008 */  jr    $ra
/* 1B5FA4 80207F54 00000000 */   nop   
.type func_80207F0C_ovl9, @function
.size func_80207F0C_ovl9, . - func_80207F0C_ovl9
