glabel func_801E7C38_ovl10
/* 1D89A8 801E7C38 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D89AC 801E7C3C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D89B0 801E7C40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D89B4 801E7C44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D89B8 801E7C48 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D89BC 801E7C4C 8C430000 */  lw    $v1, ($v0)
/* 1D89C0 801E7C50 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1D89C4 801E7C54 24010001 */  li    $at, 1
/* 1D89C8 801E7C58 00031880 */  sll   $v1, $v1, 2
/* 1D89CC 801E7C5C 01C37021 */  addu  $t6, $t6, $v1
/* 1D89D0 801E7C60 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1D89D4 801E7C64 240F0001 */  li    $t7, 1
/* 1D89D8 801E7C68 24180002 */  li    $t8, 2
/* 1D89DC 801E7C6C 15C10010 */  bne   $t6, $at, .L801E7CB0_ovl10
/* 1D89E0 801E7C70 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D89E4 801E7C74 00230821 */  addu  $at, $at, $v1
/* 1D89E8 801E7C78 AC2F8920 */ sw $t7, %lo(D_800E8920)($at)
/* 1D89EC 801E7C7C 8C590000 */  lw    $t9, ($v0)
/* 1D89F0 801E7C80 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D89F4 801E7C84 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D89F8 801E7C88 00194080 */  sll   $t0, $t9, 2
/* 1D89FC 801E7C8C 00280821 */  addu  $at, $at, $t0
/* 1D8A00 801E7C90 AC38DC50 */ sw $t8, %lo(gEntityVtableIndexArray)($at)
/* 1D8A04 801E7C94 8C490000 */  lw    $t1, ($v0)
/* 1D8A08 801E7C98 3C05801E */  lui   $a1, %hi(D_801E75E4) # $a1, 0x801e
/* 1D8A0C 801E7C9C 24A575E4 */  addiu $a1, %lo(D_801E75E4) # addiu $a1, $a1, 0x75e4
/* 1D8A10 801E7CA0 00095080 */  sll   $t2, $t1, 2
/* 1D8A14 801E7CA4 008A2021 */  addu  $a0, $a0, $t2
/* 1D8A18 801E7CA8 0C02C7B2 */  jal   assign_new_process_entry
/* 1D8A1C 801E7CAC 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E7CB0_ovl10:
/* 1D8A20 801E7CB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D8A24 801E7CB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D8A28 801E7CB8 03E00008 */  jr    $ra
/* 1D8A2C 801E7CBC 00000000 */   nop   
.type func_801E7C38_ovl10, @function
.size func_801E7C38_ovl10, . - func_801E7C38_ovl10
