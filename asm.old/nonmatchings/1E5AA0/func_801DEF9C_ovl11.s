glabel func_801DEF9C_ovl11
/* 1E985C 801DEF9C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1E9860 801DEFA0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E9864 801DEFA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E9868 801DEFA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E986C 801DEFAC AFA40018 */  sw         $a0, 0x18($sp)
glabel func_801DEFB0_ovl15
/* 1E9870 801DEFB0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1E9874 801DEFB4 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
.L801DEFB8_ovl16:
/* 1E9878 801DEFB8 3C06801E */  lui        $a2, %hi(D_801E0BC4_ovl11)
.L801DEFBC_ovl14:
/* 1E987C 801DEFBC 000FC080 */  sll        $t8, $t7, 2
/* 1E9880 801DEFC0 00982021 */  addu       $a0, $a0, $t8
.L801DEFC4_ovl17:
/* 1E9884 801DEFC4 8C84DC50 */  lw         $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1E9888 801DEFC8 24C60BC4 */  addiu      $a2, $a2, %lo(D_801E0BC4_ovl11)
/* 1E988C 801DEFCC 0C02911F */  jal        call_virtual_function
/* 1E9890 801DEFD0 24050003 */   addiu     $a1, $zero, 0x3
/* 1E9894 801DEFD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E9898 801DEFD8 27BD0018 */  addiu      $sp, $sp, 0x18
.L801DEFDC_ovl9:
/* 1E989C 801DEFDC 03E00008 */  jr         $ra
/* 1E98A0 801DEFE0 00000000 */   nop
