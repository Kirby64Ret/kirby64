glabel func_801E8F24_ovl10
/* 1D9C94 801E8F24 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9C98 801E8F28 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9C9C 801E8F2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D9CA0 801E8F30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9CA4 801E8F34 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D9CA8 801E8F38 8C430000 */  lw    $v1, ($v0)
/* 1D9CAC 801E8F3C 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1D9CB0 801E8F40 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D9CB4 801E8F44 00031880 */  sll   $v1, $v1, 2
/* 1D9CB8 801E8F48 01C37021 */  addu  $t6, $t6, $v1
/* 1D9CBC 801E8F4C 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1D9CC0 801E8F50 00230821 */  addu  $at, $at, $v1
/* 1D9CC4 801E8F54 240F0002 */  li    $t7, 2
/* 1D9CC8 801E8F58 11C00009 */  beqz  $t6, .L801E8F80_ovl10
/* 1D9CCC 801E8F5C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D9CD0 801E8F60 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1D9CD4 801E8F64 8C580000 */  lw    $t8, ($v0)
/* 1D9CD8 801E8F68 3C05801F */  lui   $a1, %hi(D_801E8988) # $a1, 0x801f
/* 1D9CDC 801E8F6C 24A58988 */  addiu $a1, %lo(D_801E8988) # addiu $a1, $a1, -0x7678
/* 1D9CE0 801E8F70 0018C880 */  sll   $t9, $t8, 2
/* 1D9CE4 801E8F74 00992021 */  addu  $a0, $a0, $t9
/* 1D9CE8 801E8F78 0C02C7B2 */  jal   assign_new_process_entry
/* 1D9CEC 801E8F7C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E8F80_ovl10:
/* 1D9CF0 801E8F80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D9CF4 801E8F84 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9CF8 801E8F88 03E00008 */  jr    $ra
/* 1D9CFC 801E8F8C 00000000 */   nop   
.type func_801E8F24_ovl10, @function
.size func_801E8F24_ovl10, . - func_801E8F24_ovl10
