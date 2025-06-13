glabel func_80207EAC_ovl9
/* 1B5EFC 80207EAC 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 1B5F00 80207EB0 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 1B5F04 80207EB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1B5F08 80207EB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1B5F0C 80207EBC AFA40018 */  sw    $a0, 0x18($sp)
/* 1B5F10 80207EC0 8C4F0000 */  lw    $t7, ($v0)
/* 1B5F14 80207EC4 3C0E800B */ lui $t6, %hi(D_800B6B8C)
/* 1B5F18 80207EC8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1B5F1C 80207ECC 000FC080 */  sll   $t8, $t7, 2
/* 1B5F20 80207ED0 00380821 */  addu  $at, $at, $t8
/* 1B5F24 80207ED4 25CE6B8C */ addiu $t6, %lo(D_800B6B8C)
/* 1B5F28 80207ED8 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1B5F2C 80207EDC 8C590000 */  lw    $t9, ($v0)
/* 1B5F30 80207EE0 3C04800E */ lui $a0, %hi(D_800E7880)
/* 1B5F34 80207EE4 3C068022 */ lui $a2, %hi(D_8021C900)
/* 1B5F38 80207EE8 00992021 */  addu  $a0, $a0, $t9
/* 1B5F3C 80207EEC 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 1B5F40 80207EF0 24C6C900 */ addiu $a2, %lo(D_8021C900)
/* 1B5F44 80207EF4 0C02911F */  jal   call_virtual_function
/* 1B5F48 80207EF8 24050001 */   li    $a1, 1
/* 1B5F4C 80207EFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1B5F50 80207F00 27BD0018 */  addiu $sp, $sp, 0x18
/* 1B5F54 80207F04 03E00008 */  jr    $ra
/* 1B5F58 80207F08 00000000 */   nop   
.type func_80207EAC_ovl9, @function
.size func_80207EAC_ovl9, . - func_80207EAC_ovl9
