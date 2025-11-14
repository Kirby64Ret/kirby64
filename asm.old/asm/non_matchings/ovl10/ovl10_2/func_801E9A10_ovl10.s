glabel func_801E9A10_ovl10
/* 1DA780 801E9A10 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DA784 801E9A14 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DA788 801E9A18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DA78C 801E9A1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DA790 801E9A20 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DA794 801E9A24 8DCF0000 */  lw    $t7, ($t6)
/* 1DA798 801E9A28 3C19800F */ lui $t9, %hi(D_800E9E20)
/* 1DA79C 801E9A2C 000FC080 */  sll   $t8, $t7, 2
/* 1DA7A0 801E9A30 0338C821 */  addu  $t9, $t9, $t8
/* 1DA7A4 801E9A34 8F399E20 */ lw $t9, %lo(D_800D9E20)($t9)
/* 1DA7A8 801E9A38 53200021 */  beql  $t9, $zero, .L801E9AC0_ovl10
/* 1DA7AC 801E9A3C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DA7B0 801E9A40 0C07A6B3 */  jal   func_801E9ACC_ovl10
/* 1DA7B4 801E9A44 00000000 */   nop   
/* 1DA7B8 801E9A48 0C066D09 */  jal   func_8019B424_ovl10
/* 1DA7BC 801E9A4C 8FA40018 */   lw    $a0, 0x18($sp)
/* 1DA7C0 801E9A50 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DA7C4 801E9A54 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DA7C8 801E9A58 3C08800F */ lui $t0, %hi(D_800E9FE0)
/* 1DA7CC 801E9A5C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DA7D0 801E9A60 8C620000 */  lw    $v0, ($v1)
/* 1DA7D4 801E9A64 240A0004 */  li    $t2, 4
/* 1DA7D8 801E9A68 240B0003 */  li    $t3, 3
/* 1DA7DC 801E9A6C 00021080 */  sll   $v0, $v0, 2
/* 1DA7E0 801E9A70 01024021 */  addu  $t0, $t0, $v0
/* 1DA7E4 801E9A74 8D089FE0 */ lw $t0, %lo(D_800E9FE0)($t0)
/* 1DA7E8 801E9A78 00220821 */  addu  $at, $at, $v0
/* 1DA7EC 801E9A7C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DA7F0 801E9A80 31090001 */  andi  $t1, $t0, 1
/* 1DA7F4 801E9A84 11200005 */  beqz  $t1, .L801E9A9C_ovl10
/* 1DA7F8 801E9A88 00000000 */   nop   
/* 1DA7FC 801E9A8C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DA800 801E9A90 00220821 */  addu  $at, $at, $v0
/* 1DA804 801E9A94 10000002 */  b     .L801E9AA0_ovl10
/* 1DA808 801E9A98 AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
.L801E9A9C_ovl10:
/* 1DA80C 801E9A9C AC2BDC50 */  sw    $t3, -0x23b0($at)
.L801E9AA0_ovl10:
/* 1DA810 801E9AA0 8C6C0000 */  lw    $t4, ($v1)
/* 1DA814 801E9AA4 3C05801F */  lui   $a1, %hi(D_801E91B0) # $a1, 0x801f
/* 1DA818 801E9AA8 24A591B0 */  addiu $a1, %lo(D_801E91B0) # addiu $a1, $a1, -0x6e50
/* 1DA81C 801E9AAC 000C6880 */  sll   $t5, $t4, 2
/* 1DA820 801E9AB0 008D2021 */  addu  $a0, $a0, $t5
/* 1DA824 801E9AB4 0C02C7B2 */  jal   assign_new_process_entry
/* 1DA828 801E9AB8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1DA82C 801E9ABC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E9AC0_ovl10:
/* 1DA830 801E9AC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DA834 801E9AC4 03E00008 */  jr    $ra
/* 1DA838 801E9AC8 00000000 */   nop   
.type func_801E9A10_ovl10, @function
.size func_801E9A10_ovl10, . - func_801E9A10_ovl10
