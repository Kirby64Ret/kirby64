glabel func_801E1E84_ovl16
/* 218134 801E1E84 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 218138 801E1E88 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 21813C 801E1E8C 8C620000 */  lw    $v0, ($v1)
/* 218140 801E1E90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 218144 801E1E94 AFBF0014 */  sw    $ra, 0x14($sp)
/* 218148 801E1E98 AFA40018 */  sw    $a0, 0x18($sp)
/* 21814C 801E1E9C 8C4F0000 */  lw    $t7, ($v0)
/* 218150 801E1EA0 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 218154 801E1EA4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 218158 801E1EA8 000FC080 */  sll   $t8, $t7, 2
/* 21815C 801E1EAC 00380821 */  addu  $at, $at, $t8
/* 218160 801E1EB0 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 218164 801E1EB4 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 218168 801E1EB8 8C480000 */  lw    $t0, ($v0)
/* 21816C 801E1EBC 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 218170 801E1EC0 3C19801E */  lui   $t9, %hi(D_801DAEF4) # $t9, 0x801e
/* 218174 801E1EC4 00084880 */  sll   $t1, $t0, 2
/* 218178 801E1EC8 01495021 */  addu  $t2, $t2, $t1
/* 21817C 801E1ECC 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 218180 801E1ED0 2739AEF4 */  addiu $t9, %lo(D_801DAEF4) # addiu $t9, $t9, -0x510c
/* 218184 801E1ED4 3C01800F */ lui $at, %hi(D_800E8920)
/* 218188 801E1ED8 AD590098 */  sw    $t9, 0x98($t2)
/* 21818C 801E1EDC 8C6B0000 */  lw    $t3, ($v1)
/* 218190 801E1EE0 8D6C0000 */  lw    $t4, ($t3)
/* 218194 801E1EE4 000C6880 */  sll   $t5, $t4, 2
/* 218198 801E1EE8 002D0821 */  addu  $at, $at, $t5
/* 21819C 801E1EEC 0C02CCFD */  jal   func_800B33F4
/* 2181A0 801E1EF0 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 2181A4 801E1EF4 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 2181A8 801E1EF8 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 2181AC 801E1EFC 240F0001 */  li    $t7, 1
/* 2181B0 801E1F00 AC4F0010 */  sw    $t7, 0x10($v0)
/* 2181B4 801E1F04 AC400008 */  sw    $zero, 8($v0)
/* 2181B8 801E1F08 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 2181BC 801E1F0C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 2181C0 801E1F10 0000C080 */  sll   $t8, $zero, 2
/* 2181C4 801E1F14 3C08801F */ lui $t0, %hi(D_801EF914_ovl16)
/* 2181C8 801E1F18 8D390000 */  lw    $t9, ($t1)
/* 2181CC 801E1F1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2181D0 801E1F20 01184021 */  addu  $t0, $t0, $t8
/* 2181D4 801E1F24 8D08F914 */ lw $t0, %lo(D_801EF914_ovl16)($t0)
/* 2181D8 801E1F28 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 2181DC 801E1F2C 00195080 */  sll   $t2, $t9, 2
/* 2181E0 801E1F30 002A0821 */  addu  $at, $at, $t2
/* 2181E4 801E1F34 27BD0018 */  addiu $sp, $sp, 0x18
/* 2181E8 801E1F38 03E00008 */  jr    $ra
/* 2181EC 801E1F3C AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801E1E84_ovl16, @function
.size func_801E1E84_ovl16, . - func_801E1E84_ovl16
