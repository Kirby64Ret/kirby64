glabel func_801E5A28_ovl16
/* 21BCD8 801E5A28 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 21BCDC 801E5A2C 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 21BCE0 801E5A30 8C620000 */  lw    $v0, ($v1)
/* 21BCE4 801E5A34 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 21BCE8 801E5A38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 21BCEC 801E5A3C AFA40018 */  sw    $a0, 0x18($sp)
/* 21BCF0 801E5A40 8C4F0000 */  lw    $t7, ($v0)
/* 21BCF4 801E5A44 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 21BCF8 801E5A48 3C01800E */ lui $at, %hi(D_800DEF90)
/* 21BCFC 801E5A4C 000FC080 */  sll   $t8, $t7, 2
/* 21BD00 801E5A50 00380821 */  addu  $at, $at, $t8
/* 21BD04 801E5A54 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 21BD08 801E5A58 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 21BD0C 801E5A5C 8C480000 */  lw    $t0, ($v0)
/* 21BD10 801E5A60 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 21BD14 801E5A64 3C19801E */  lui   $t9, %hi(D_801DAEF4) # $t9, 0x801e
/* 21BD18 801E5A68 00084880 */  sll   $t1, $t0, 2
/* 21BD1C 801E5A6C 01495021 */  addu  $t2, $t2, $t1
/* 21BD20 801E5A70 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 21BD24 801E5A74 2739AEF4 */  addiu $t9, %lo(D_801DAEF4) # addiu $t9, $t9, -0x510c
/* 21BD28 801E5A78 3C01800F */ lui $at, %hi(D_800E8920)
/* 21BD2C 801E5A7C AD590098 */  sw    $t9, 0x98($t2)
/* 21BD30 801E5A80 8C6B0000 */  lw    $t3, ($v1)
/* 21BD34 801E5A84 8D6C0000 */  lw    $t4, ($t3)
/* 21BD38 801E5A88 000C6880 */  sll   $t5, $t4, 2
/* 21BD3C 801E5A8C 002D0821 */  addu  $at, $at, $t5
/* 21BD40 801E5A90 0C02CCFD */  jal   func_800B33F4
/* 21BD44 801E5A94 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 21BD48 801E5A98 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 21BD4C 801E5A9C 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 21BD50 801E5AA0 240F0001 */  li    $t7, 1
/* 21BD54 801E5AA4 AC4F0010 */  sw    $t7, 0x10($v0)
/* 21BD58 801E5AA8 AC400008 */  sw    $zero, 8($v0)
/* 21BD5C 801E5AAC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 21BD60 801E5AB0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 21BD64 801E5AB4 0000C080 */  sll   $t8, $zero, 2
/* 21BD68 801E5AB8 3C08801F */ lui $t0, %hi(D_801EF9D8_ovl16)
/* 21BD6C 801E5ABC 8D390000 */  lw    $t9, ($t1)
/* 21BD70 801E5AC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21BD74 801E5AC4 01184021 */  addu  $t0, $t0, $t8
/* 21BD78 801E5AC8 8D08F9D8 */ lw $t0, %lo(D_801EF9D8_ovl16)($t0)
/* 21BD7C 801E5ACC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21BD80 801E5AD0 00195080 */  sll   $t2, $t9, 2
/* 21BD84 801E5AD4 002A0821 */  addu  $at, $at, $t2
/* 21BD88 801E5AD8 27BD0018 */  addiu $sp, $sp, 0x18
/* 21BD8C 801E5ADC 03E00008 */  jr    $ra
/* 21BD90 801E5AE0 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801E5A28_ovl16, @function
.size func_801E5A28_ovl16, . - func_801E5A28_ovl16
