glabel func_801E8008_ovl10
/* 1D8D78 801E8008 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D8D7C 801E800C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D8D80 801E8010 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D8D84 801E8014 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D8D88 801E8018 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D8D8C 801E801C 8DCF0000 */  lw    $t7, ($t6)
/* 1D8D90 801E8020 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D8D94 801E8024 3C06801F */  lui   $a2, %hi(D_801F4558_ovl10) # $a2, 0x801f
/* 1D8D98 801E8028 000FC080 */  sll   $t8, $t7, 2
/* 1D8D9C 801E802C 00982021 */  addu  $a0, $a0, $t8
/* 1D8DA0 801E8030 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D8DA4 801E8034 24C64558 */  addiu $a2, %lo(D_801F4558_ovl10) # addiu $a2, $a2, 0x4558
/* 1D8DA8 801E8038 0C02911F */  jal   call_virtual_function
/* 1D8DAC 801E803C 24050003 */   li    $a1, 3
/* 1D8DB0 801E8040 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D8DB4 801E8044 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D8DB8 801E8048 03E00008 */  jr    $ra
/* 1D8DBC 801E804C 00000000 */   nop   
.type func_801E8008_ovl10, @function
.size func_801E8008_ovl10, . - func_801E8008_ovl10
