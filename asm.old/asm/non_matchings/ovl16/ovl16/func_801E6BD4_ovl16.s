glabel func_801E6BD4_ovl16
/* 21CE84 801E6BD4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 21CE88 801E6BD8 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 21CE8C 801E6BDC 8C620000 */  lw    $v0, ($v1)
/* 21CE90 801E6BE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 21CE94 801E6BE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 21CE98 801E6BE8 AFA40018 */  sw    $a0, 0x18($sp)
/* 21CE9C 801E6BEC 8C4F0000 */  lw    $t7, ($v0)
/* 21CEA0 801E6BF0 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 21CEA4 801E6BF4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 21CEA8 801E6BF8 000FC080 */  sll   $t8, $t7, 2
/* 21CEAC 801E6BFC 00380821 */  addu  $at, $at, $t8
/* 21CEB0 801E6C00 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 21CEB4 801E6C04 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 21CEB8 801E6C08 8C480000 */  lw    $t0, ($v0)
/* 21CEBC 801E6C0C 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 21CEC0 801E6C10 3C19801E */  lui   $t9, %hi(D_801DAEF4) # $t9, 0x801e
/* 21CEC4 801E6C14 00084880 */  sll   $t1, $t0, 2
/* 21CEC8 801E6C18 01495021 */  addu  $t2, $t2, $t1
/* 21CECC 801E6C1C 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 21CED0 801E6C20 2739AEF4 */  addiu $t9, %lo(D_801DAEF4) # addiu $t9, $t9, -0x510c
/* 21CED4 801E6C24 3C01800F */ lui $at, %hi(D_800E8920)
/* 21CED8 801E6C28 AD590098 */  sw    $t9, 0x98($t2)
/* 21CEDC 801E6C2C 8C6B0000 */  lw    $t3, ($v1)
/* 21CEE0 801E6C30 8D6C0000 */  lw    $t4, ($t3)
/* 21CEE4 801E6C34 000C6880 */  sll   $t5, $t4, 2
/* 21CEE8 801E6C38 002D0821 */  addu  $at, $at, $t5
/* 21CEEC 801E6C3C 0C02CCFD */  jal   func_800B33F4
/* 21CEF0 801E6C40 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 21CEF4 801E6C44 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 21CEF8 801E6C48 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 21CEFC 801E6C4C 240F0001 */  li    $t7, 1
/* 21CF00 801E6C50 AC4F0010 */  sw    $t7, 0x10($v0)
/* 21CF04 801E6C54 AC400008 */  sw    $zero, 8($v0)
/* 21CF08 801E6C58 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 21CF0C 801E6C5C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 21CF10 801E6C60 0000C080 */  sll   $t8, $zero, 2
/* 21CF14 801E6C64 3C08801F */ lui $t0, %hi(D_801EF9F8_ovl16)
/* 21CF18 801E6C68 8D390000 */  lw    $t9, ($t1)
/* 21CF1C 801E6C6C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21CF20 801E6C70 01184021 */  addu  $t0, $t0, $t8
/* 21CF24 801E6C74 8D08F9F8 */ lw $t0, %lo(D_801EF9F8_ovl16)($t0)
/* 21CF28 801E6C78 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21CF2C 801E6C7C 00195080 */  sll   $t2, $t9, 2
/* 21CF30 801E6C80 002A0821 */  addu  $at, $at, $t2
/* 21CF34 801E6C84 27BD0018 */  addiu $sp, $sp, 0x18
/* 21CF38 801E6C88 03E00008 */  jr    $ra
/* 21CF3C 801E6C8C AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801E6BD4_ovl16, @function
.size func_801E6BD4_ovl16, . - func_801E6BD4_ovl16
