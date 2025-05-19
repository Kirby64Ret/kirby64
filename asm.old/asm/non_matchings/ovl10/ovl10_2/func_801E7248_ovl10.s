glabel func_801E7248_ovl10
/* 1D7FB8 801E7248 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D7FBC 801E724C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7FC0 801E7250 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D7FC4 801E7254 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7FC8 801E7258 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D7FCC 801E725C 8C430000 */  lw    $v1, ($v0)
/* 1D7FD0 801E7260 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1D7FD4 801E7264 24010001 */  li    $at, 1
/* 1D7FD8 801E7268 00031880 */  sll   $v1, $v1, 2
/* 1D7FDC 801E726C 01C37021 */  addu  $t6, $t6, $v1
/* 1D7FE0 801E7270 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1D7FE4 801E7274 240F0002 */  li    $t7, 2
/* 1D7FE8 801E7278 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D7FEC 801E727C 15C1000A */  bne   $t6, $at, .L801E72A8_ovl10
/* 1D7FF0 801E7280 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D7FF4 801E7284 00230821 */  addu  $at, $at, $v1
/* 1D7FF8 801E7288 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1D7FFC 801E728C 8C580000 */  lw    $t8, ($v0)
/* 1D8000 801E7290 3C05801E */  lui   $a1, %hi(D_801E6D08) # $a1, 0x801e
/* 1D8004 801E7294 24A56D08 */  addiu $a1, %lo(D_801E6D08) # addiu $a1, $a1, 0x6d08
/* 1D8008 801E7298 0018C880 */  sll   $t9, $t8, 2
/* 1D800C 801E729C 00992021 */  addu  $a0, $a0, $t9
/* 1D8010 801E72A0 0C02C7B2 */  jal   assign_new_process_entry
/* 1D8014 801E72A4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E72A8_ovl10:
/* 1D8018 801E72A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D801C 801E72AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D8020 801E72B0 03E00008 */  jr    $ra
/* 1D8024 801E72B4 00000000 */   nop   
.type func_801E7248_ovl10, @function
.size func_801E7248_ovl10, . - func_801E7248_ovl10
