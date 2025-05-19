glabel func_80207F58_ovl9
/* 1B5FA8 80207F58 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 1B5FAC 80207F5C 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 1B5FB0 80207F60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1B5FB4 80207F64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1B5FB8 80207F68 AFA40018 */  sw    $a0, 0x18($sp)
/* 1B5FBC 80207F6C 8C4F0000 */  lw    $t7, ($v0)
/* 1B5FC0 80207F70 3C0E8021 */ lui $t6, %hi(D_80208020)
/* 1B5FC4 80207F74 3C01800E */ lui $at, %hi(D_800DF150)
/* 1B5FC8 80207F78 000FC080 */  sll   $t8, $t7, 2
/* 1B5FCC 80207F7C 00380821 */  addu  $at, $at, $t8
/* 1B5FD0 80207F80 25CE8020 */ addiu $t6, %lo(D_80208020)
/* 1B5FD4 80207F84 AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 1B5FD8 80207F88 8C590000 */  lw    $t9, ($v0)
/* 1B5FDC 80207F8C 3C01800F */ lui $at, %hi(D_800E93A0)
/* 1B5FE0 80207F90 3C09800F */ lui $t1, %hi(D_800E8920)
/* 1B5FE4 80207F94 00194080 */  sll   $t0, $t9, 2
/* 1B5FE8 80207F98 00280821 */  addu  $at, $at, $t0
/* 1B5FEC 80207F9C AC2093A0 */ sw $zero, %lo(D_800E93A0)($at)
/* 1B5FF0 80207FA0 8C430000 */  lw    $v1, ($v0)
/* 1B5FF4 80207FA4 24010001 */  li    $at, 1
/* 1B5FF8 80207FA8 240A0004 */  li    $t2, 4
/* 1B5FFC 80207FAC 00031880 */  sll   $v1, $v1, 2
/* 1B6000 80207FB0 01234821 */  addu  $t1, $t1, $v1
/* 1B6004 80207FB4 8D298920 */ lw $t1, %lo(D_800E8920)($t1)
/* 1B6008 80207FB8 3C048020 */ lui $a0, %hi(D_80207F0C)
/* 1B600C 80207FBC 15210004 */  bne   $t1, $at, .L80207FD0_ovl9
/* 1B6010 80207FC0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1B6014 80207FC4 00230821 */  addu  $at, $at, $v1
/* 1B6018 80207FC8 10000004 */  b     .L80207FDC_ovl9
/* 1B601C 80207FCC AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
.L80207FD0_ovl9:
/* 1B6020 80207FD0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1B6024 80207FD4 00230821 */  addu  $at, $at, $v1
/* 1B6028 80207FD8 AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
.L80207FDC_ovl9:
/* 1B602C 80207FDC 0C068354 */  jal   func_801A0D50
/* 1B6030 80207FE0 24847F0C */ addiu $a0, %lo(D_80207F0C)
/* 1B6034 80207FE4 3C0B8005 */ lui $t3, %hi(D_8004A7C4)
/* 1B6038 80207FE8 8D6BA7C4 */ lw $t3, %lo(D_8004A7C4)($t3)
/* 1B603C 80207FEC 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1B6040 80207FF0 3C068022 */ lui $a2, %hi(D_8021C904)
/* 1B6044 80207FF4 8D6C0000 */  lw    $t4, ($t3)
/* 1B6048 80207FF8 24C6C904 */ addiu $a2, %lo(D_8021C904)
/* 1B604C 80207FFC 24050008 */  li    $a1, 8
/* 1B6050 80208000 000C6880 */  sll   $t5, $t4, 2
/* 1B6054 80208004 008D2021 */  addu  $a0, $a0, $t5
/* 1B6058 80208008 0C02911F */  jal   call_virtual_function
/* 1B605C 8020800C 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1B6060 80208010 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1B6064 80208014 27BD0018 */  addiu $sp, $sp, 0x18
/* 1B6068 80208018 03E00008 */  jr    $ra
/* 1B606C 8020801C 00000000 */   nop   
.type func_80207F58_ovl9, @function
.size func_80207F58_ovl9, . - func_80207F58_ovl9
