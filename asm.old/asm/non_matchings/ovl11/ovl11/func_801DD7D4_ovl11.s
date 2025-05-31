glabel func_801DD7D4_ovl11
/* 1E8094 801DD7D4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E8098 801DD7D8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E809C 801DD7DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E80A0 801DD7E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E80A4 801DD7E4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E80A8 801DD7E8 8C430000 */  lw    $v1, ($v0)
/* 1E80AC 801DD7EC 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1E80B0 801DD7F0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E80B4 801DD7F4 00031880 */  sll   $v1, $v1, 2
/* 1E80B8 801DD7F8 01C37021 */  addu  $t6, $t6, $v1
/* 1E80BC 801DD7FC 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1E80C0 801DD800 00230821 */  addu  $at, $at, $v1
/* 1E80C4 801DD804 240F0001 */  li    $t7, 1
/* 1E80C8 801DD808 11C00009 */  beqz  $t6, .L801DD830_ovl11
/* 1E80CC 801DD80C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E80D0 801DD810 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1E80D4 801DD814 8C580000 */  lw    $t8, ($v0)
/* 1E80D8 801DD818 3C05801E */  lui   $a1, %hi(D_801DC258) # $a1, 0x801e
/* 1E80DC 801DD81C 24A5C258 */  addiu $a1, %lo(D_801DC258) # addiu $a1, $a1, -0x3da8
/* 1E80E0 801DD820 0018C880 */  sll   $t9, $t8, 2
/* 1E80E4 801DD824 00992021 */  addu  $a0, $a0, $t9
/* 1E80E8 801DD828 0C02C7B2 */  jal   assign_new_process_entry
/* 1E80EC 801DD82C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DD830_ovl11:
/* 1E80F0 801DD830 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E80F4 801DD834 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E80F8 801DD838 03E00008 */  jr    $ra
/* 1E80FC 801DD83C 00000000 */   nop   
.type func_801DD7D4_ovl11, @function
.size func_801DD7D4_ovl11, . - func_801DD7D4_ovl11
