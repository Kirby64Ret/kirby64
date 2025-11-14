glabel func_80227F38_ovl19
/* 248648 80227F38 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 24864C 80227F3C AFBF0014 */  sw    $ra, 0x14($sp)
/* 248650 80227F40 24040013 */  li    $a0, 19
/* 248654 80227F44 24050003 */  li    $a1, 3
/* 248658 80227F48 0C02BB02 */  jal   request_track_general
/* 24865C 80227F4C 24060004 */   li    $a2, 4
/* 248660 80227F50 3C03800D */  lui   $v1, %hi(D_800D6FB0) # $v1, 0x800d
/* 248664 80227F54 94636FB0 */  lhu   $v1, %lo(D_800D6FB0)($v1)
/* 248668 80227F58 3C0F8023 */  lui   $t7, %hi(D_8022F548) # $t7, 0x8023
/* 24866C 80227F5C 25EFF548 */  addiu $t7, %lo(D_8022F548) # addiu $t7, $t7, -0xab8
/* 248670 80227F60 3063000F */  andi  $v1, $v1, 0xf
/* 248674 80227F64 000370C0 */  sll   $t6, $v1, 3
/* 248678 80227F68 01CF1021 */  addu  $v0, $t6, $t7
/* 24867C 80227F6C 8C580000 */  lw    $t8, ($v0)
/* 248680 80227F70 3C01800E */  lui   $at, %hi(D_800DDC5C) # $at, 0x800e
/* 248684 80227F74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 248688 80227F78 AC38DC5C */  sw    $t8, %lo(D_800DDC5C)($at)
/* 24868C 80227F7C 8C590004 */  lw    $t9, 4($v0)
/* 248690 80227F80 3C01800F */ lui $at, %hi(D_800E822C)
/* 248694 80227F84 27BD0018 */  addiu $sp, $sp, 0x18
/* 248698 80227F88 03E00008 */  jr    $ra
/* 24869C 80227F8C AC39822C */ sw $t9, %lo(D_800E822C)($at)
.type func_80227F38_ovl19, @function
.size func_80227F38_ovl19, . - func_80227F38_ovl19
