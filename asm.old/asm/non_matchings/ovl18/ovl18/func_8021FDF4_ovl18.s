glabel func_8021FDF4_ovl18
/* 232794 8021FDF4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 232798 8021FDF8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 23279C 8021FDFC 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 2327A0 8021FE00 24010017 */  li    $at, 23
/* 2327A4 8021FE04 8C6E0000 */  lw    $t6, ($v1)
/* 2327A8 8021FE08 3C06800D */  lui   $a2, %hi(D_800D7098) # $a2, 0x800d
/* 2327AC 8021FE0C 24C67098 */  addiu $a2, %lo(D_800D7098) # addiu $a2, $a2, 0x7098
/* 2327B0 8021FE10 000E7880 */  sll   $t7, $t6, 2
/* 2327B4 8021FE14 004F1021 */  addu  $v0, $v0, $t7
/* 2327B8 8021FE18 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 2327BC 8021FE1C 24190001 */  li    $t9, 1
/* 2327C0 8021FE20 9058003D */  lbu   $t8, 0x3d($v0)
/* 2327C4 8021FE24 17010002 */  bne   $t8, $at, .L8021FE30_ovl18
/* 2327C8 8021FE28 00000000 */   nop   
/* 2327CC 8021FE2C ACD90008 */  sw    $t9, 8($a2)
.L8021FE30_ovl18:
/* 2327D0 8021FE30 3C06800D */  lui   $a2, %hi(D_800D7098) # $a2, 0x800d
/* 2327D4 8021FE34 24C67098 */  addiu $a2, %lo(D_800D7098) # addiu $a2, $a2, 0x7098
/* 2327D8 8021FE38 8CC20004 */  lw    $v0, 4($a2)
/* 2327DC 8021FE3C 04410003 */  bgez  $v0, .L8021FE4C_ovl18
/* 2327E0 8021FE40 00402025 */   move  $a0, $v0
/* 2327E4 8021FE44 10000001 */  b     .L8021FE4C_ovl18
/* 2327E8 8021FE48 00022023 */   negu  $a0, $v0
.L8021FE4C_ovl18:
/* 2327EC 8021FE4C 28810003 */  slti  $at, $a0, 3
/* 2327F0 8021FE50 50200007 */  beql  $at, $zero, .L8021FE70_ovl18
/* 2327F4 8021FE54 8CC80008 */   lw    $t0, 8($a2)
/* 2327F8 8021FE58 8CC40008 */  lw    $a0, 8($a2)
/* 2327FC 8021FE5C 04830008 */  bgezl $a0, .L8021FE80_ovl18
/* 232800 8021FE60 00822821 */   addu  $a1, $a0, $v0
/* 232804 8021FE64 5C400006 */  bgtzl $v0, .L8021FE80_ovl18
/* 232808 8021FE68 00822821 */   addu  $a1, $a0, $v0
/* 23280C 8021FE6C 8CC80008 */  lw    $t0, 8($a2)
.L8021FE70_ovl18:
/* 232810 8021FE70 8CC20004 */  lw    $v0, 4($a2)
/* 232814 8021FE74 00082023 */  negu  $a0, $t0
/* 232818 8021FE78 ACC40008 */  sw    $a0, 8($a2)
/* 23281C 8021FE7C 00822821 */  addu  $a1, $a0, $v0
.L8021FE80_ovl18:
/* 232820 8021FE80 44853000 */  mtc1  $a1, $f6
/* 232824 8021FE84 3C018023 */  lui   $at, %hi(D_8022BB8C) # $at, 0x8023
/* 232828 8021FE88 C424BB8C */  lwc1  $f4, %lo(D_8022BB8C)($at)
/* 23282C 8021FE8C 46803220 */  cvt.s.w $f8, $f6
/* 232830 8021FE90 3C01800D */  lui   $at, %hi(D_800D70E4) # $at, 0x800d
/* 232834 8021FE94 C43070E4 */  lwc1  $f16, %lo(D_800D70E4)($at)
/* 232838 8021FE98 8C6A0000 */  lw    $t2, ($v1)
/* 23283C 8021FE9C 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 232840 8021FEA0 46082282 */  mul.s $f10, $f4, $f8
/* 232844 8021FEA4 000A5880 */  sll   $t3, $t2, 2
/* 232848 8021FEA8 002B0821 */  addu  $at, $at, $t3
/* 23284C 8021FEAC 460A8480 */  add.s $f18, $f16, $f10
/* 232850 8021FEB0 E4324010 */ swc1 $f18, %lo(gEntitiesAngleXArray)($at)
/* 232854 8021FEB4 03E00008 */  jr    $ra
/* 232858 8021FEB8 ACC50004 */   sw    $a1, 4($a2)
.type func_8021FDF4_ovl18, @function
.size func_8021FDF4_ovl18, . - func_8021FDF4_ovl18
