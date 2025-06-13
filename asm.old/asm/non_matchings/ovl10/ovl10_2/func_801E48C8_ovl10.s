glabel func_801E48C8_ovl10
/* 1D5638 801E48C8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D563C 801E48CC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1D5640 801E48D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D5644 801E48D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D5648 801E48D8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D564C 801E48DC 8C620000 */  lw    $v0, ($v1)
/* 1D5650 801E48E0 3C0E800F */ lui $t6, %hi(D_800EA360)
/* 1D5654 801E48E4 3C0F800F */  lui   $t7, %hi(D_800E9E20) # $t7, 0x800f
/* 1D5658 801E48E8 00021080 */  sll   $v0, $v0, 2
/* 1D565C 801E48EC 01C27021 */  addu  $t6, $t6, $v0
/* 1D5660 801E48F0 8DCEA360 */ lw $t6, %lo(D_800EA360)($t6)
/* 1D5664 801E48F4 3C0C800F */ lui $t4, %hi(D_800E9E20)
/* 1D5668 801E48F8 25EF9E20 */  addiu $t7, %lo(D_800E9E20) # addiu $t7, $t7, -0x61e0
/* 1D566C 801E48FC 15C0001B */  bnez  $t6, .L801E496C_ovl10
/* 1D5670 801E4900 01826021 */   addu  $t4, $t4, $v0
/* 1D5674 801E4904 004F2021 */  addu  $a0, $v0, $t7
/* 1D5678 801E4908 8C980000 */  lw    $t8, ($a0)
/* 1D567C 801E490C 24060003 */  li    $a2, 3
/* 1D5680 801E4910 3C09800E */ lui $t1, %hi(D_800DD8D0)
/* 1D5684 801E4914 14D8000E */  bne   $a2, $t8, .L801E4950_ovl10
/* 1D5688 801E4918 01224821 */   addu  $t1, $t1, $v0
/* 1D568C 801E491C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D5690 801E4920 00220821 */  addu  $at, $at, $v0
/* 1D5694 801E4924 AC26DC50 */ sw $a2, %lo(gEntityVtableIndexArray)($at)
/* 1D5698 801E4928 8C790000 */  lw    $t9, ($v1)
/* 1D569C 801E492C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D56A0 801E4930 3C05801E */  lui   $a1, %hi(D_801E3BE4) # $a1, 0x801e
/* 1D56A4 801E4934 00194080 */  sll   $t0, $t9, 2
/* 1D56A8 801E4938 00882021 */  addu  $a0, $a0, $t0
/* 1D56AC 801E493C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D56B0 801E4940 0C02C7B2 */  jal   assign_new_process_entry
/* 1D56B4 801E4944 24A53BE4 */   addiu $a1, %lo(D_801E3BE4) # addiu $a1, $a1, 0x3be4
/* 1D56B8 801E4948 10000011 */  b     .L801E4990_ovl10
/* 1D56BC 801E494C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E4950_ovl10:
/* 1D56C0 801E4950 8D29D8D0 */ lw $t1, %lo(D_800DD8D0)($t1)
/* 1D56C4 801E4954 240B0002 */  li    $t3, 2
/* 1D56C8 801E4958 00095782 */  srl   $t2, $t1, 0x1e
/* 1D56CC 801E495C 5140000C */  beql  $t2, $zero, .L801E4990_ovl10
/* 1D56D0 801E4960 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D56D4 801E4964 10000009 */  b     .L801E498C_ovl10
/* 1D56D8 801E4968 AC8B0000 */   sw    $t3, ($a0)
.L801E496C_ovl10:
/* 1D56DC 801E496C 8D8C9E20 */ lw $t4, %lo(D_800E9E20)($t4)
/* 1D56E0 801E4970 24010001 */  li    $at, 1
/* 1D56E4 801E4974 55810006 */  bnel  $t4, $at, .L801E4990_ovl10
/* 1D56E8 801E4978 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D56EC 801E497C 0C079267 */  jal   func_801E499C_ovl10
/* 1D56F0 801E4980 00000000 */   nop   
/* 1D56F4 801E4984 0C07929D */  jal   func_801E4A74_ovl10
/* 1D56F8 801E4988 00000000 */   nop   
.L801E498C_ovl10:
/* 1D56FC 801E498C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E4990_ovl10:
/* 1D5700 801E4990 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D5704 801E4994 03E00008 */  jr    $ra
/* 1D5708 801E4998 00000000 */   nop   
.type func_801E48C8_ovl10, @function
.size func_801E48C8_ovl10, . - func_801E48C8_ovl10
