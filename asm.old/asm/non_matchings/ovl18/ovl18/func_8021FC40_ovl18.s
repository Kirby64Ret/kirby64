glabel func_8021FC40_ovl18
/* 2325E0 8021FC40 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2325E4 8021FC44 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2325E8 8021FC48 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 2325EC 8021FC4C 24010017 */  li    $at, 23
/* 2325F0 8021FC50 8C6E0000 */  lw    $t6, ($v1)
/* 2325F4 8021FC54 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 2325F8 8021FC58 3C06800D */  lui   $a2, %hi(D_800D70D8) # $a2, 0x800d
/* 2325FC 8021FC5C 000E7880 */  sll   $t7, $t6, 2
/* 232600 8021FC60 004F1021 */  addu  $v0, $v0, $t7
/* 232604 8021FC64 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 232608 8021FC68 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 23260C 8021FC6C 24190001 */  li    $t9, 1
/* 232610 8021FC70 9058003D */  lbu   $t8, 0x3d($v0)
/* 232614 8021FC74 24C670D8 */  addiu $a2, %lo(D_800D70D8) # addiu $a2, $a2, 0x70d8
/* 232618 8021FC78 17010002 */  bne   $t8, $at, .L8021FC84_ovl18
/* 23261C 8021FC7C 00000000 */   nop   
/* 232620 8021FC80 ACB90008 */  sw    $t9, 8($a1)
.L8021FC84_ovl18:
/* 232624 8021FC84 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 232628 8021FC88 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 23262C 8021FC8C 8CA20004 */  lw    $v0, 4($a1)
/* 232630 8021FC90 04410003 */  bgez  $v0, .L8021FCA0_ovl18
/* 232634 8021FC94 00402025 */   move  $a0, $v0
/* 232638 8021FC98 10000001 */  b     .L8021FCA0_ovl18
/* 23263C 8021FC9C 00022023 */   negu  $a0, $v0
.L8021FCA0_ovl18:
/* 232640 8021FCA0 28810003 */  slti  $at, $a0, 3
/* 232644 8021FCA4 54200006 */  bnezl $at, .L8021FCC0_ovl18
/* 232648 8021FCA8 8CAA0008 */   lw    $t2, 8($a1)
/* 23264C 8021FCAC 8CA80008 */  lw    $t0, 8($a1)
/* 232650 8021FCB0 8CA20004 */  lw    $v0, 4($a1)
/* 232654 8021FCB4 00084823 */  negu  $t1, $t0
/* 232658 8021FCB8 ACA90008 */  sw    $t1, 8($a1)
/* 23265C 8021FCBC 8CAA0008 */  lw    $t2, 8($a1)
.L8021FCC0_ovl18:
/* 232660 8021FCC0 3C018023 */  lui   $at, %hi(D_8022BB80) # $at, 0x8023
/* 232664 8021FCC4 C430BB80 */  lwc1  $f16, %lo(D_8022BB80)($at)
/* 232668 8021FCC8 C4C00018 */  lwc1  $f0, 0x18($a2)
/* 23266C 8021FCCC 01422021 */  addu  $a0, $t2, $v0
/* 232670 8021FCD0 44842000 */  mtc1  $a0, $f4
/* 232674 8021FCD4 46100182 */  mul.s $f6, $f0, $f16
/* 232678 8021FCD8 8C6B0000 */  lw    $t3, ($v1)
/* 23267C 8021FCDC 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 232680 8021FCE0 000B6080 */  sll   $t4, $t3, 2
/* 232684 8021FCE4 002C0821 */  addu  $at, $at, $t4
/* 232688 8021FCE8 468020A0 */  cvt.s.w $f2, $f4
/* 23268C 8021FCEC 46023202 */  mul.s $f8, $f6, $f2
/* 232690 8021FCF0 46004280 */  add.s $f10, $f8, $f0
/* 232694 8021FCF4 E42A4550 */ swc1 $f10, %lo(gEntitiesScaleXArray)($at)
/* 232698 8021FCF8 C4CC001C */  lwc1  $f12, 0x1c($a2)
/* 23269C 8021FCFC 8C6D0000 */  lw    $t5, ($v1)
/* 2326A0 8021FD00 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 2326A4 8021FD04 46106482 */  mul.s $f18, $f12, $f16
/* 2326A8 8021FD08 000D7080 */  sll   $t6, $t5, 2
/* 2326AC 8021FD0C 002E0821 */  addu  $at, $at, $t6
/* 2326B0 8021FD10 46029102 */  mul.s $f4, $f18, $f2
/* 2326B4 8021FD14 46046181 */  sub.s $f6, $f12, $f4
/* 2326B8 8021FD18 E4264710 */ swc1 $f6, %lo(gEntitiesScaleYArray)($at)
/* 2326BC 8021FD1C C4CE0020 */  lwc1  $f14, 0x20($a2)
/* 2326C0 8021FD20 8C6F0000 */  lw    $t7, ($v1)
/* 2326C4 8021FD24 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 2326C8 8021FD28 46107202 */  mul.s $f8, $f14, $f16
/* 2326CC 8021FD2C 000FC080 */  sll   $t8, $t7, 2
/* 2326D0 8021FD30 00380821 */  addu  $at, $at, $t8
/* 2326D4 8021FD34 46024282 */  mul.s $f10, $f8, $f2
/* 2326D8 8021FD38 460E5480 */  add.s $f18, $f10, $f14
/* 2326DC 8021FD3C E43248D0 */ swc1 $f18, %lo(gEntitiesScaleZArray)($at)
/* 2326E0 8021FD40 03E00008 */  jr    $ra
/* 2326E4 8021FD44 ACA40004 */   sw    $a0, 4($a1)
.type func_8021FC40_ovl18, @function
.size func_8021FC40_ovl18, . - func_8021FC40_ovl18
