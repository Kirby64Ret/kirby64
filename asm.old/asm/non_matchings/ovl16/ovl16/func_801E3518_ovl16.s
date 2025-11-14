glabel func_801E3518_ovl16
/* 2197C8 801E3518 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2197CC 801E351C 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 2197D0 801E3520 8C620000 */  lw    $v0, ($v1)
/* 2197D4 801E3524 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2197D8 801E3528 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2197DC 801E352C AFA40018 */  sw    $a0, 0x18($sp)
/* 2197E0 801E3530 8C4F0000 */  lw    $t7, ($v0)
/* 2197E4 801E3534 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 2197E8 801E3538 3C01800E */ lui $at, %hi(D_800DEF90)
/* 2197EC 801E353C 000FC080 */  sll   $t8, $t7, 2
/* 2197F0 801E3540 00380821 */  addu  $at, $at, $t8
/* 2197F4 801E3544 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 2197F8 801E3548 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 2197FC 801E354C 8C480000 */  lw    $t0, ($v0)
/* 219800 801E3550 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 219804 801E3554 3C19801E */  lui   $t9, %hi(D_801DAEF4) # $t9, 0x801e
/* 219808 801E3558 00084880 */  sll   $t1, $t0, 2
/* 21980C 801E355C 01495021 */  addu  $t2, $t2, $t1
/* 219810 801E3560 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 219814 801E3564 2739AEF4 */  addiu $t9, %lo(D_801DAEF4) # addiu $t9, $t9, -0x510c
/* 219818 801E3568 3C01800F */ lui $at, %hi(D_800E8920)
/* 21981C 801E356C AD590098 */  sw    $t9, 0x98($t2)
/* 219820 801E3570 8C6B0000 */  lw    $t3, ($v1)
/* 219824 801E3574 8D6C0000 */  lw    $t4, ($t3)
/* 219828 801E3578 000C6880 */  sll   $t5, $t4, 2
/* 21982C 801E357C 002D0821 */  addu  $at, $at, $t5
/* 219830 801E3580 0C02CCFD */  jal   func_800B33F4
/* 219834 801E3584 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 219838 801E3588 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 21983C 801E358C 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 219840 801E3590 240F0001 */  li    $t7, 1
/* 219844 801E3594 AC4F0010 */  sw    $t7, 0x10($v0)
/* 219848 801E3598 AC400008 */  sw    $zero, 8($v0)
/* 21984C 801E359C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 219850 801E35A0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 219854 801E35A4 0000C080 */  sll   $t8, $zero, 2
/* 219858 801E35A8 3C08801F */ lui $t0, %hi(D_801EF92C_ovl16)
/* 21985C 801E35AC 8D390000 */  lw    $t9, ($t1)
/* 219860 801E35B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 219864 801E35B4 01184021 */  addu  $t0, $t0, $t8
/* 219868 801E35B8 8D08F92C */ lw $t0, %lo(D_801EF92C_ovl16)($t0)
/* 21986C 801E35BC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 219870 801E35C0 00195080 */  sll   $t2, $t9, 2
/* 219874 801E35C4 002A0821 */  addu  $at, $at, $t2
/* 219878 801E35C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 21987C 801E35CC 03E00008 */  jr    $ra
/* 219880 801E35D0 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801E3518_ovl16, @function
.size func_801E3518_ovl16, . - func_801E3518_ovl16
