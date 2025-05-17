glabel func_801E75E4_ovl10
/* 1D8354 801E75E4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D8358 801E75E8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D835C 801E75EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D8360 801E75F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D8364 801E75F4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D8368 801E75F8 8DCF0000 */  lw    $t7, ($t6)
/* 1D836C 801E75FC 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D8370 801E7600 3C06801F */  lui   $a2, %hi(D_801F4540_ovl10) # $a2, 0x801f
/* 1D8374 801E7604 000FC080 */  sll   $t8, $t7, 2
/* 1D8378 801E7608 00982021 */  addu  $a0, $a0, $t8
/* 1D837C 801E760C 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D8380 801E7610 24C64540 */  addiu $a2, %lo(D_801F4540_ovl10) # addiu $a2, $a2, 0x4540
/* 1D8384 801E7614 0C02911F */  jal   call_virtual_function
/* 1D8388 801E7618 24050003 */   li    $a1, 3
/* 1D838C 801E761C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D8390 801E7620 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D8394 801E7624 03E00008 */  jr    $ra
/* 1D8398 801E7628 00000000 */   nop   
.type func_801E75E4_ovl10, @function
.size func_801E75E4_ovl10, . - func_801E75E4_ovl10
