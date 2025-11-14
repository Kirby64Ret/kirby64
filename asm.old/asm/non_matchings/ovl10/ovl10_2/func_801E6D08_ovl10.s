glabel func_801E6D08_ovl10
/* 1D7A78 801E6D08 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D7A7C 801E6D0C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D7A80 801E6D10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D7A84 801E6D14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7A88 801E6D18 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D7A8C 801E6D1C 8DCF0000 */  lw    $t7, ($t6)
/* 1D7A90 801E6D20 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D7A94 801E6D24 3C06801F */  lui   $a2, %hi(D_801F4528_ovl10) # $a2, 0x801f
/* 1D7A98 801E6D28 000FC080 */  sll   $t8, $t7, 2
/* 1D7A9C 801E6D2C 00982021 */  addu  $a0, $a0, $t8
/* 1D7AA0 801E6D30 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D7AA4 801E6D34 24C64528 */  addiu $a2, %lo(D_801F4528_ovl10) # addiu $a2, $a2, 0x4528
/* 1D7AA8 801E6D38 0C02911F */  jal   call_virtual_function
/* 1D7AAC 801E6D3C 24050003 */   li    $a1, 3
/* 1D7AB0 801E6D40 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D7AB4 801E6D44 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D7AB8 801E6D48 03E00008 */  jr    $ra
/* 1D7ABC 801E6D4C 00000000 */   nop   
.type func_801E6D08_ovl10, @function
.size func_801E6D08_ovl10, . - func_801E6D08_ovl10
