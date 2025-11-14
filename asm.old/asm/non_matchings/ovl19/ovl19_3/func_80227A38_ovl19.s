glabel func_80227A38_ovl19
/* 248148 80227A38 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 24814C 80227A3C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 248150 80227A40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 248154 80227A44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 248158 80227A48 AFA40018 */  sw    $a0, 0x18($sp)
/* 24815C 80227A4C 8DCF0000 */  lw    $t7, ($t6)
/* 248160 80227A50 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray4)
/* 248164 80227A54 3C058022 */  lui   $a1, %hi(D_80227AA8) # $a1, 0x8022
/* 248168 80227A58 000FC080 */  sll   $t8, $t7, 2
/* 24816C 80227A5C 00982021 */  addu  $a0, $a0, $t8
/* 248170 80227A60 8C84EA50 */ lw $a0, %lo(gEntityGObjProcessArray4)($a0)
/* 248174 80227A64 0C02C7DA */  jal   func_800B1F68
/* 248178 80227A68 24A57AA8 */   addiu $a1, %lo(D_80227AA8) # addiu $a1, $a1, 0x7aa8
/* 24817C 80227A6C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 248180 80227A70 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 248184 80227A74 3C04800E */ lui $a0, %hi(D_800DDE10)
/* 248188 80227A78 3C068023 */  lui   $a2, %hi(D_8022F530) # $a2, 0x8023
/* 24818C 80227A7C 8F280000 */  lw    $t0, ($t9)
/* 248190 80227A80 24C6F530 */  addiu $a2, %lo(D_8022F530) # addiu $a2, $a2, -0xad0
/* 248194 80227A84 24050003 */  li    $a1, 3
/* 248198 80227A88 00084880 */  sll   $t1, $t0, 2
/* 24819C 80227A8C 00892021 */  addu  $a0, $a0, $t1
/* 2481A0 80227A90 0C02911F */  jal   call_virtual_function
/* 2481A4 80227A94 8C84DE10 */ lw $a0, %lo(D_800DDE10)($a0)
/* 2481A8 80227A98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2481AC 80227A9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 2481B0 80227AA0 03E00008 */  jr    $ra
/* 2481B4 80227AA4 00000000 */   nop   
.type func_80227A38_ovl19, @function
.size func_80227A38_ovl19, . - func_80227A38_ovl19
