glabel func_801E2D88_ovl16
/* 219038 801E2D88 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 21903C 801E2D8C 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 219040 801E2D90 8C620000 */  lw    $v0, ($v1)
/* 219044 801E2D94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 219048 801E2D98 AFBF0014 */  sw    $ra, 0x14($sp)
/* 21904C 801E2D9C AFA40018 */  sw    $a0, 0x18($sp)
/* 219050 801E2DA0 8C4F0000 */  lw    $t7, ($v0)
/* 219054 801E2DA4 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 219058 801E2DA8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 21905C 801E2DAC 000FC080 */  sll   $t8, $t7, 2
/* 219060 801E2DB0 00380821 */  addu  $at, $at, $t8
/* 219064 801E2DB4 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 219068 801E2DB8 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 21906C 801E2DBC 8C480000 */  lw    $t0, ($v0)
/* 219070 801E2DC0 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 219074 801E2DC4 3C19801E */  lui   $t9, %hi(D_801DAEF4) # $t9, 0x801e
/* 219078 801E2DC8 00084880 */  sll   $t1, $t0, 2
/* 21907C 801E2DCC 01495021 */  addu  $t2, $t2, $t1
/* 219080 801E2DD0 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 219084 801E2DD4 2739AEF4 */  addiu $t9, %lo(D_801DAEF4) # addiu $t9, $t9, -0x510c
/* 219088 801E2DD8 3C01800F */ lui $at, %hi(D_800E8920)
/* 21908C 801E2DDC AD590098 */  sw    $t9, 0x98($t2)
/* 219090 801E2DE0 8C6B0000 */  lw    $t3, ($v1)
/* 219094 801E2DE4 8D6C0000 */  lw    $t4, ($t3)
/* 219098 801E2DE8 000C6880 */  sll   $t5, $t4, 2
/* 21909C 801E2DEC 002D0821 */  addu  $at, $at, $t5
/* 2190A0 801E2DF0 0C02CCFD */  jal   func_800B33F4
/* 2190A4 801E2DF4 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 2190A8 801E2DF8 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 2190AC 801E2DFC 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 2190B0 801E2E00 240F0001 */  li    $t7, 1
/* 2190B4 801E2E04 AC4F0010 */  sw    $t7, 0x10($v0)
/* 2190B8 801E2E08 AC400008 */  sw    $zero, 8($v0)
/* 2190BC 801E2E0C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 2190C0 801E2E10 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 2190C4 801E2E14 0000C080 */  sll   $t8, $zero, 2
/* 2190C8 801E2E18 3C08801F */ lui $t0, %hi(D_801EF920_ovl16)
/* 2190CC 801E2E1C 8D390000 */  lw    $t9, ($t1)
/* 2190D0 801E2E20 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2190D4 801E2E24 01184021 */  addu  $t0, $t0, $t8
/* 2190D8 801E2E28 8D08F920 */ lw $t0, %lo(D_801EF920_ovl16)($t0)
/* 2190DC 801E2E2C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 2190E0 801E2E30 00195080 */  sll   $t2, $t9, 2
/* 2190E4 801E2E34 002A0821 */  addu  $at, $at, $t2
/* 2190E8 801E2E38 27BD0018 */  addiu $sp, $sp, 0x18
/* 2190EC 801E2E3C 03E00008 */  jr    $ra
/* 2190F0 801E2E40 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801E2D88_ovl16, @function
.size func_801E2D88_ovl16, . - func_801E2D88_ovl16
