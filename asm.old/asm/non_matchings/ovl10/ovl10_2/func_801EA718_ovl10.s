glabel func_801EA718_ovl10
/* 1DB488 801EA718 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DB48C 801EA71C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DB490 801EA720 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DB494 801EA724 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DB498 801EA728 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DB49C 801EA72C 8C430000 */  lw    $v1, ($v0)
/* 1DB4A0 801EA730 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1DB4A4 801EA734 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DB4A8 801EA738 00031880 */  sll   $v1, $v1, 2
/* 1DB4AC 801EA73C 01C37021 */  addu  $t6, $t6, $v1
/* 1DB4B0 801EA740 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1DB4B4 801EA744 00230821 */  addu  $at, $at, $v1
/* 1DB4B8 801EA748 240F0002 */  li    $t7, 2
/* 1DB4BC 801EA74C 11C00009 */  beqz  $t6, .L801EA774_ovl10
/* 1DB4C0 801EA750 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DB4C4 801EA754 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1DB4C8 801EA758 8C580000 */  lw    $t8, ($v0)
/* 1DB4CC 801EA75C 3C05801F */  lui   $a1, %hi(D_801E91B0) # $a1, 0x801f
/* 1DB4D0 801EA760 24A591B0 */  addiu $a1, %lo(D_801E91B0) # addiu $a1, $a1, -0x6e50
/* 1DB4D4 801EA764 0018C880 */  sll   $t9, $t8, 2
/* 1DB4D8 801EA768 00992021 */  addu  $a0, $a0, $t9
/* 1DB4DC 801EA76C 0C02C7B2 */  jal   assign_new_process_entry
/* 1DB4E0 801EA770 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801EA774_ovl10:
/* 1DB4E4 801EA774 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DB4E8 801EA778 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DB4EC 801EA77C 03E00008 */  jr    $ra
/* 1DB4F0 801EA780 00000000 */   nop   
.type func_801EA718_ovl10, @function
.size func_801EA718_ovl10, . - func_801EA718_ovl10
