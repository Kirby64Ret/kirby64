glabel func_801DC258_ovl12
/* 1E6B18 801DC258 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1E6B1C 801DC25C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E6B20 801DC260 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E6B24 801DC264 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E6B28 801DC268 AFA40018 */  sw         $a0, 0x18($sp)
.L801DC26C_ovl17:
/* 1E6B2C 801DC26C 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DC270_ovl12:
/* 1E6B30 801DC270 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 1E6B34 801DC274 3C06801E */  lui        $a2, %hi(.L801E0B4C_ovl12)
glabel func_801DC278_ovl12
/* 1E6B38 801DC278 000FC080 */  sll        $t8, $t7, 2
/* 1E6B3C 801DC27C 00982021 */  addu       $a0, $a0, $t8
/* 1E6B40 801DC280 8C84DC50 */  lw         $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1E6B44 801DC284 24C60B4C */  addiu      $a2, $a2, %lo(.L801E0B4C_ovl12)
/* 1E6B48 801DC288 0C02911F */  jal        call_virtual_function
/* 1E6B4C 801DC28C 24050009 */   addiu     $a1, $zero, 0x9
/* 1E6B50 801DC290 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DC294_ovl16:
/* 1E6B54 801DC294 27BD0018 */  addiu      $sp, $sp, 0x18
glabel func_801DC298_ovl16
/* 1E6B58 801DC298 03E00008 */  jr         $ra
/* 1E6B5C 801DC29C 00000000 */   nop
