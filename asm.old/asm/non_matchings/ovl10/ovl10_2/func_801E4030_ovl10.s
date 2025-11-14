glabel func_801E4030_ovl10
/* 1D4DA0 801E4030 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D4DA4 801E4034 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D4DA8 801E4038 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D4DAC 801E403C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D4DB0 801E4040 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D4DB4 801E4044 8C430000 */  lw    $v1, ($v0)
/* 1D4DB8 801E4048 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1D4DBC 801E404C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D4DC0 801E4050 00031880 */  sll   $v1, $v1, 2
/* 1D4DC4 801E4054 01C37021 */  addu  $t6, $t6, $v1
/* 1D4DC8 801E4058 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1D4DCC 801E405C 00230821 */  addu  $at, $at, $v1
/* 1D4DD0 801E4060 240F0001 */  li    $t7, 1
/* 1D4DD4 801E4064 11C00009 */  beqz  $t6, .L801E408C_ovl10
/* 1D4DD8 801E4068 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D4DDC 801E406C AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1D4DE0 801E4070 8C580000 */  lw    $t8, ($v0)
/* 1D4DE4 801E4074 3C05801E */  lui   $a1, %hi(D_801E3BE4) # $a1, 0x801e
/* 1D4DE8 801E4078 24A53BE4 */  addiu $a1, %lo(D_801E3BE4) # addiu $a1, $a1, 0x3be4
/* 1D4DEC 801E407C 0018C880 */  sll   $t9, $t8, 2
/* 1D4DF0 801E4080 00992021 */  addu  $a0, $a0, $t9
/* 1D4DF4 801E4084 0C02C7B2 */  jal   assign_new_process_entry
/* 1D4DF8 801E4088 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E408C_ovl10:
/* 1D4DFC 801E408C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D4E00 801E4090 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D4E04 801E4094 03E00008 */  jr    $ra
/* 1D4E08 801E4098 00000000 */   nop   
.type func_801E4030_ovl10, @function
.size func_801E4030_ovl10, . - func_801E4030_ovl10
