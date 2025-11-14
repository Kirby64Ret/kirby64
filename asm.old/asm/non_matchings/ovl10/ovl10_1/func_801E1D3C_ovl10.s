glabel func_801E1D3C_ovl10
/* 1D2AAC 801E1D3C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D2AB0 801E1D40 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D2AB4 801E1D44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D2AB8 801E1D48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D2ABC 801E1D4C 8DCF0000 */  lw    $t7, ($t6)
/* 1D2AC0 801E1D50 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D2AC4 801E1D54 000FC080 */  sll   $t8, $t7, 2
/* 1D2AC8 801E1D58 00380821 */  addu  $at, $at, $t8
/* 1D2ACC 801E1D5C 0C06835D */  jal   func_801A0D74_ovl10
/* 1D2AD0 801E1D60 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D2AD4 801E1D64 0C078A32 */  jal   func_801E28C8_ovl10
/* 1D2AD8 801E1D68 00002025 */   move  $a0, $zero
/* 1D2ADC 801E1D6C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D2AE0 801E1D70 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D2AE4 801E1D74 3C19800F */ lui $t9, %hi(D_800E83E0)
/* 1D2AE8 801E1D78 24010001 */  li    $at, 1
/* 1D2AEC 801E1D7C 8C430000 */  lw    $v1, ($v0)
/* 1D2AF0 801E1D80 24080012 */  li    $t0, 18
/* 1D2AF4 801E1D84 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D2AF8 801E1D88 00031880 */  sll   $v1, $v1, 2
/* 1D2AFC 801E1D8C 0323C821 */  addu  $t9, $t9, $v1
/* 1D2B00 801E1D90 8F3983E0 */ lw $t9, %lo(D_800E83E0)($t9)
/* 1D2B04 801E1D94 1721000A */  bne   $t9, $at, .L801E1DC0_ovl10
/* 1D2B08 801E1D98 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D2B0C 801E1D9C 00230821 */  addu  $at, $at, $v1
/* 1D2B10 801E1DA0 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 1D2B14 801E1DA4 8C490000 */  lw    $t1, ($v0)
/* 1D2B18 801E1DA8 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1D2B1C 801E1DAC 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1D2B20 801E1DB0 00095080 */  sll   $t2, $t1, 2
/* 1D2B24 801E1DB4 008A2021 */  addu  $a0, $a0, $t2
/* 1D2B28 801E1DB8 0C02C7B2 */  jal   assign_new_process_entry
/* 1D2B2C 801E1DBC 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E1DC0_ovl10:
/* 1D2B30 801E1DC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D2B34 801E1DC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D2B38 801E1DC8 03E00008 */  jr    $ra
/* 1D2B3C 801E1DCC 00000000 */   nop   
.type func_801E1D3C_ovl10, @function
.size func_801E1D3C_ovl10, . - func_801E1D3C_ovl10
