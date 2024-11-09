glabel func_801E4698_ovl16
/* 21A948 801E4698 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 21A94C 801E469C 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 21A950 801E46A0 8C620000 */  lw    $v0, ($v1)
/* 21A954 801E46A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 21A958 801E46A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 21A95C 801E46AC AFA40018 */  sw    $a0, 0x18($sp)
/* 21A960 801E46B0 8C4F0000 */  lw    $t7, ($v0)
/* 21A964 801E46B4 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 21A968 801E46B8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 21A96C 801E46BC 000FC080 */  sll   $t8, $t7, 2
/* 21A970 801E46C0 00380821 */  addu  $at, $at, $t8
/* 21A974 801E46C4 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 21A978 801E46C8 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 21A97C 801E46CC 8C480000 */  lw    $t0, ($v0)
/* 21A980 801E46D0 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 21A984 801E46D4 3C19801E */  lui   $t9, %hi(D_801DAEF4) # $t9, 0x801e
/* 21A988 801E46D8 00084880 */  sll   $t1, $t0, 2
/* 21A98C 801E46DC 01495021 */  addu  $t2, $t2, $t1
/* 21A990 801E46E0 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 21A994 801E46E4 2739AEF4 */  addiu $t9, %lo(D_801DAEF4) # addiu $t9, $t9, -0x510c
/* 21A998 801E46E8 3C01800F */ lui $at, %hi(D_800E8920)
/* 21A99C 801E46EC AD590098 */  sw    $t9, 0x98($t2)
/* 21A9A0 801E46F0 8C6B0000 */  lw    $t3, ($v1)
/* 21A9A4 801E46F4 8D6C0000 */  lw    $t4, ($t3)
/* 21A9A8 801E46F8 000C6880 */  sll   $t5, $t4, 2
/* 21A9AC 801E46FC 002D0821 */  addu  $at, $at, $t5
/* 21A9B0 801E4700 0C02CCFD */  jal   func_800B33F4
/* 21A9B4 801E4704 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 21A9B8 801E4708 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 21A9BC 801E470C 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 21A9C0 801E4710 240F0001 */  li    $t7, 1
/* 21A9C4 801E4714 AC4F0010 */  sw    $t7, 0x10($v0)
/* 21A9C8 801E4718 AC400008 */  sw    $zero, 8($v0)
/* 21A9CC 801E471C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 21A9D0 801E4720 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 21A9D4 801E4724 0000C080 */  sll   $t8, $zero, 2
/* 21A9D8 801E4728 3C08801F */ lui $t0, %hi(D_801EF9B4_ovl16)
/* 21A9DC 801E472C 8D390000 */  lw    $t9, ($t1)
/* 21A9E0 801E4730 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21A9E4 801E4734 01184021 */  addu  $t0, $t0, $t8
/* 21A9E8 801E4738 8D08F9B4 */ lw $t0, %lo(D_801EF9B4_ovl16)($t0)
/* 21A9EC 801E473C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21A9F0 801E4740 00195080 */  sll   $t2, $t9, 2
/* 21A9F4 801E4744 002A0821 */  addu  $at, $at, $t2
/* 21A9F8 801E4748 27BD0018 */  addiu $sp, $sp, 0x18
/* 21A9FC 801E474C 03E00008 */  jr    $ra
/* 21AA00 801E4750 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801E4698_ovl16, @function
.size func_801E4698_ovl16, . - func_801E4698_ovl16
