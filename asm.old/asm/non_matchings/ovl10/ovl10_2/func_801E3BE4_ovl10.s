glabel func_801E3BE4_ovl10
/* 1D4954 801E3BE4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D4958 801E3BE8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D495C 801E3BEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D4960 801E3BF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D4964 801E3BF4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D4968 801E3BF8 8DCF0000 */  lw    $t7, ($t6)
/* 1D496C 801E3BFC 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D4970 801E3C00 3C06801F */  lui   $a2, %hi(D_801F44B4_ovl10) # $a2, 0x801f
/* 1D4974 801E3C04 000FC080 */  sll   $t8, $t7, 2
/* 1D4978 801E3C08 00982021 */  addu  $a0, $a0, $t8
/* 1D497C 801E3C0C 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D4980 801E3C10 24C644B4 */  addiu $a2, %lo(D_801F44B4_ovl10) # addiu $a2, $a2, 0x44b4
/* 1D4984 801E3C14 0C02911F */  jal   call_virtual_function
/* 1D4988 801E3C18 24050009 */   li    $a1, 9
/* 1D498C 801E3C1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D4990 801E3C20 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D4994 801E3C24 03E00008 */  jr    $ra
/* 1D4998 801E3C28 00000000 */   nop   
.type func_801E3BE4_ovl10, @function
.size func_801E3BE4_ovl10, . - func_801E3BE4_ovl10
