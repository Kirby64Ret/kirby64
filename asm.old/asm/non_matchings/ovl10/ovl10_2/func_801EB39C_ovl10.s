glabel func_801EB39C_ovl10
/* 1DC10C 801EB39C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DC110 801EB3A0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DC114 801EB3A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DC118 801EB3A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DC11C 801EB3AC AFA40018 */  sw    $a0, 0x18($sp)
/* 1DC120 801EB3B0 8C430000 */  lw    $v1, ($v0)
/* 1DC124 801EB3B4 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1DC128 801EB3B8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DC12C 801EB3BC 00031880 */  sll   $v1, $v1, 2
/* 1DC130 801EB3C0 01C37021 */  addu  $t6, $t6, $v1
/* 1DC134 801EB3C4 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1DC138 801EB3C8 00230821 */  addu  $at, $at, $v1
/* 1DC13C 801EB3CC 240F0002 */  li    $t7, 2
/* 1DC140 801EB3D0 11C00009 */  beqz  $t6, .L801EB3F8_ovl10
/* 1DC144 801EB3D4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DC148 801EB3D8 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1DC14C 801EB3DC 8C580000 */  lw    $t8, ($v0)
/* 1DC150 801EB3E0 3C05801F */  lui   $a1, %hi(D_801EA784) # $a1, 0x801f
/* 1DC154 801EB3E4 24A5A784 */  addiu $a1, %lo(D_801EA784) # addiu $a1, $a1, -0x587c
/* 1DC158 801EB3E8 0018C880 */  sll   $t9, $t8, 2
/* 1DC15C 801EB3EC 00992021 */  addu  $a0, $a0, $t9
/* 1DC160 801EB3F0 0C02C7B2 */  jal   assign_new_process_entry
/* 1DC164 801EB3F4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801EB3F8_ovl10:
/* 1DC168 801EB3F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DC16C 801EB3FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DC170 801EB400 03E00008 */  jr    $ra
/* 1DC174 801EB404 00000000 */   nop   
.type func_801EB39C_ovl10, @function
.size func_801EB39C_ovl10, . - func_801EB39C_ovl10
