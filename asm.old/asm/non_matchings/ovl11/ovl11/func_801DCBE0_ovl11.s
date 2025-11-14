glabel func_801DCBE0_ovl11
/* 1E74A0 801DCBE0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E74A4 801DCBE4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E74A8 801DCBE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E74AC 801DCBEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E74B0 801DCBF0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E74B4 801DCBF4 8C430000 */  lw    $v1, ($v0)
/* 1E74B8 801DCBF8 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1E74BC 801DCBFC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E74C0 801DCC00 00031880 */  sll   $v1, $v1, 2
/* 1E74C4 801DCC04 01C37021 */  addu  $t6, $t6, $v1
/* 1E74C8 801DCC08 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1E74CC 801DCC0C 00230821 */  addu  $at, $at, $v1
/* 1E74D0 801DCC10 240F0001 */  li    $t7, 1
/* 1E74D4 801DCC14 11C00009 */  beqz  $t6, .L801DCC3C_ovl11
/* 1E74D8 801DCC18 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E74DC 801DCC1C AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1E74E0 801DCC20 8C580000 */  lw    $t8, ($v0)
/* 1E74E4 801DCC24 3C05801E */  lui   $a1, %hi(D_801DC258) # $a1, 0x801e
/* 1E74E8 801DCC28 24A5C258 */  addiu $a1, %lo(D_801DC258) # addiu $a1, $a1, -0x3da8
/* 1E74EC 801DCC2C 0018C880 */  sll   $t9, $t8, 2
/* 1E74F0 801DCC30 00992021 */  addu  $a0, $a0, $t9
/* 1E74F4 801DCC34 0C02C7B2 */  jal   assign_new_process_entry
/* 1E74F8 801DCC38 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DCC3C_ovl11:
/* 1E74FC 801DCC3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E7500 801DCC40 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E7504 801DCC44 03E00008 */  jr    $ra
/* 1E7508 801DCC48 00000000 */   nop   
.type func_801DCBE0_ovl11, @function
.size func_801DCBE0_ovl11, . - func_801DCBE0_ovl11
