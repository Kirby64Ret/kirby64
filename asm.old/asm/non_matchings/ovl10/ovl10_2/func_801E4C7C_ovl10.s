glabel func_801E4C7C_ovl10
/* 1D59EC 801E4C7C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D59F0 801E4C80 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1D59F4 801E4C84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D59F8 801E4C88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D59FC 801E4C8C AFA40018 */  sw    $a0, 0x18($sp)
/* 1D5A00 801E4C90 8C620000 */  lw    $v0, ($v1)
/* 1D5A04 801E4C94 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D5A08 801E4C98 3C07800F */  lui   $a3, %hi(D_800E9FE0) # $a3, 0x800f
/* 1D5A0C 801E4C9C 00021080 */  sll   $v0, $v0, 2
/* 1D5A10 801E4CA0 01E27821 */  addu  $t7, $t7, $v0
/* 1D5A14 801E4CA4 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D5A18 801E4CA8 24E79FE0 */  addiu $a3, %lo(D_800E9FE0) # addiu $a3, $a3, -0x6020
/* 1D5A1C 801E4CAC 00E27021 */  addu  $t6, $a3, $v0
/* 1D5A20 801E4CB0 11E0002A */  beqz  $t7, .L801E4D5C_ovl10
/* 1D5A24 801E4CB4 8DC50000 */   lw    $a1, ($t6)
/* 1D5A28 801E4CB8 3C06800F */  lui   $a2, %hi(D_800E98E0) # $a2, 0x800f
/* 1D5A2C 801E4CBC 24C698E0 */  addiu $a2, %lo(D_800E98E0) # addiu $a2, $a2, -0x6720
/* 1D5A30 801E4CC0 00C22021 */  addu  $a0, $a2, $v0
/* 1D5A34 801E4CC4 8C980000 */  lw    $t8, ($a0)
/* 1D5A38 801E4CC8 24A50008 */  addiu $a1, $a1, 8
/* 1D5A3C 801E4CCC 27190001 */  addiu $t9, $t8, 1
/* 1D5A40 801E4CD0 AC990000 */  sw    $t9, ($a0)
/* 1D5A44 801E4CD4 8C620000 */  lw    $v0, ($v1)
/* 1D5A48 801E4CD8 00021080 */  sll   $v0, $v0, 2
/* 1D5A4C 801E4CDC 00C24021 */  addu  $t0, $a2, $v0
/* 1D5A50 801E4CE0 8D090000 */  lw    $t1, ($t0)
/* 1D5A54 801E4CE4 00E25021 */  addu  $t2, $a3, $v0
/* 1D5A58 801E4CE8 29210003 */  slti  $at, $t1, 3
/* 1D5A5C 801E4CEC 1020000F */  beqz  $at, .L801E4D2C_ovl10
/* 1D5A60 801E4CF0 00000000 */   nop   
/* 1D5A64 801E4CF4 AD450000 */  sw    $a1, ($t2)
/* 1D5A68 801E4CF8 8C6C0000 */  lw    $t4, ($v1)
/* 1D5A6C 801E4CFC 90AB0000 */  lbu   $t3, ($a1)
/* 1D5A70 801E4D00 3C01800F */ lui $at, %hi(D_800E93A0)
/* 1D5A74 801E4D04 000C6880 */  sll   $t5, $t4, 2
/* 1D5A78 801E4D08 002D0821 */  addu  $at, $at, $t5
/* 1D5A7C 801E4D0C AC2B93A0 */ sw $t3, %lo(D_800E93A0)($at)
/* 1D5A80 801E4D10 8C6F0000 */  lw    $t7, ($v1)
/* 1D5A84 801E4D14 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D5A88 801E4D18 240E0001 */  li    $t6, 1
/* 1D5A8C 801E4D1C 000FC080 */  sll   $t8, $t7, 2
/* 1D5A90 801E4D20 00380821 */  addu  $at, $at, $t8
/* 1D5A94 801E4D24 10000005 */  b     .L801E4D3C_ovl10
/* 1D5A98 801E4D28 AC2EDC50 */ sw $t6, %lo(gEntityVtableIndexArray)($at)
.L801E4D2C_ovl10:
/* 1D5A9C 801E4D2C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D5AA0 801E4D30 00220821 */  addu  $at, $at, $v0
/* 1D5AA4 801E4D34 24190004 */  li    $t9, 4
/* 1D5AA8 801E4D38 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.L801E4D3C_ovl10:
/* 1D5AAC 801E4D3C 8C680000 */  lw    $t0, ($v1)
/* 1D5AB0 801E4D40 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D5AB4 801E4D44 3C05801E */  lui   $a1, %hi(D_801E3BE4) # $a1, 0x801e
/* 1D5AB8 801E4D48 00084880 */  sll   $t1, $t0, 2
/* 1D5ABC 801E4D4C 00892021 */  addu  $a0, $a0, $t1
/* 1D5AC0 801E4D50 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D5AC4 801E4D54 0C02C7B2 */  jal   assign_new_process_entry
/* 1D5AC8 801E4D58 24A53BE4 */   addiu $a1, %lo(D_801E3BE4) # addiu $a1, $a1, 0x3be4
.L801E4D5C_ovl10:
/* 1D5ACC 801E4D5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D5AD0 801E4D60 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D5AD4 801E4D64 03E00008 */  jr    $ra
/* 1D5AD8 801E4D68 00000000 */   nop   
.type func_801E4C7C_ovl10, @function
.size func_801E4C7C_ovl10, . - func_801E4C7C_ovl10
