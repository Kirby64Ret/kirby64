glabel func_801E1FD8_ovl10
/* 1D2D48 801E1FD8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D2D4C 801E1FDC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D2D50 801E1FE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D2D54 801E1FE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D2D58 801E1FE8 8DCF0000 */  lw    $t7, ($t6)
/* 1D2D5C 801E1FEC 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D2D60 801E1FF0 000FC080 */  sll   $t8, $t7, 2
/* 1D2D64 801E1FF4 00380821 */  addu  $at, $at, $t8
/* 1D2D68 801E1FF8 0C06835D */  jal   func_801A0D74_ovl10
/* 1D2D6C 801E1FFC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D2D70 801E2000 0C078A32 */  jal   func_801E28C8_ovl10
/* 1D2D74 801E2004 00002025 */   move  $a0, $zero
/* 1D2D78 801E2008 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D2D7C 801E200C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D2D80 801E2010 3C19800F */ lui $t9, %hi(D_800E83E0)
/* 1D2D84 801E2014 24010001 */  li    $at, 1
/* 1D2D88 801E2018 8C430000 */  lw    $v1, ($v0)
/* 1D2D8C 801E201C 24080012 */  li    $t0, 18
/* 1D2D90 801E2020 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D2D94 801E2024 00031880 */  sll   $v1, $v1, 2
/* 1D2D98 801E2028 0323C821 */  addu  $t9, $t9, $v1
/* 1D2D9C 801E202C 8F3983E0 */ lw $t9, %lo(D_800E83E0)($t9)
/* 1D2DA0 801E2030 1721000A */  bne   $t9, $at, .L801E205C_ovl10
/* 1D2DA4 801E2034 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D2DA8 801E2038 00230821 */  addu  $at, $at, $v1
/* 1D2DAC 801E203C AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 1D2DB0 801E2040 8C490000 */  lw    $t1, ($v0)
/* 1D2DB4 801E2044 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1D2DB8 801E2048 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1D2DBC 801E204C 00095080 */  sll   $t2, $t1, 2
/* 1D2DC0 801E2050 008A2021 */  addu  $a0, $a0, $t2
/* 1D2DC4 801E2054 0C02C7B2 */  jal   assign_new_process_entry
/* 1D2DC8 801E2058 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E205C_ovl10:
/* 1D2DCC 801E205C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D2DD0 801E2060 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D2DD4 801E2064 03E00008 */  jr    $ra
/* 1D2DD8 801E2068 00000000 */   nop   
.type func_801E1FD8_ovl10, @function
.size func_801E1FD8_ovl10, . - func_801E1FD8_ovl10
