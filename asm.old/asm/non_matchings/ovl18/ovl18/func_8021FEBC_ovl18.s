glabel func_8021FEBC_ovl18
/* 23285C 8021FEBC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 232860 8021FEC0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 232864 8021FEC4 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 232868 8021FEC8 24010007 */  li    $at, 7
/* 23286C 8021FECC 8C6E0000 */  lw    $t6, ($v1)
/* 232870 8021FED0 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 232874 8021FED4 3C06800D */  lui   $a2, %hi(D_800D70D8) # $a2, 0x800d
/* 232878 8021FED8 000E7880 */  sll   $t7, $t6, 2
/* 23287C 8021FEDC 004F1021 */  addu  $v0, $v0, $t7
/* 232880 8021FEE0 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 232884 8021FEE4 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 232888 8021FEE8 24190001 */  li    $t9, 1
/* 23288C 8021FEEC 9058003D */  lbu   $t8, 0x3d($v0)
/* 232890 8021FEF0 24C670D8 */  addiu $a2, %lo(D_800D70D8) # addiu $a2, $a2, 0x70d8
/* 232894 8021FEF4 17010002 */  bne   $t8, $at, .L8021FF00_ovl18
/* 232898 8021FEF8 00000000 */   nop   
/* 23289C 8021FEFC ACB90008 */  sw    $t9, 8($a1)
.L8021FF00_ovl18:
/* 2328A0 8021FF00 3C05800D */  lui   $a1, %hi(D_800D7098) # $a1, 0x800d
/* 2328A4 8021FF04 24A57098 */  addiu $a1, %lo(D_800D7098) # addiu $a1, $a1, 0x7098
/* 2328A8 8021FF08 8CA20004 */  lw    $v0, 4($a1)
/* 2328AC 8021FF0C 04410003 */  bgez  $v0, .L8021FF1C_ovl18
/* 2328B0 8021FF10 00402025 */   move  $a0, $v0
/* 2328B4 8021FF14 10000001 */  b     .L8021FF1C_ovl18
/* 2328B8 8021FF18 00022023 */   negu  $a0, $v0
.L8021FF1C_ovl18:
/* 2328BC 8021FF1C 28810002 */  slti  $at, $a0, 2
/* 2328C0 8021FF20 54200006 */  bnezl $at, .L8021FF3C_ovl18
/* 2328C4 8021FF24 8CAA0008 */   lw    $t2, 8($a1)
/* 2328C8 8021FF28 8CA80008 */  lw    $t0, 8($a1)
/* 2328CC 8021FF2C 8CA20004 */  lw    $v0, 4($a1)
/* 2328D0 8021FF30 00084823 */  negu  $t1, $t0
/* 2328D4 8021FF34 ACA90008 */  sw    $t1, 8($a1)
/* 2328D8 8021FF38 8CAA0008 */  lw    $t2, 8($a1)
.L8021FF3C_ovl18:
/* 2328DC 8021FF3C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 2328E0 8021FF40 44813000 */  mtc1  $at, $f6
/* 2328E4 8021FF44 C4C4001C */  lwc1  $f4, 0x1c($a2)
/* 2328E8 8021FF48 01422021 */  addu  $a0, $t2, $v0
/* 2328EC 8021FF4C 44845000 */  mtc1  $a0, $f10
/* 2328F0 8021FF50 46062202 */  mul.s $f8, $f4, $f6
/* 2328F4 8021FF54 C4C40004 */  lwc1  $f4, 4($a2)
/* 2328F8 8021FF58 8C6B0000 */  lw    $t3, ($v1)
/* 2328FC 8021FF5C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 232900 8021FF60 000B6080 */  sll   $t4, $t3, 2
/* 232904 8021FF64 46805420 */  cvt.s.w $f16, $f10
/* 232908 8021FF68 002C0821 */  addu  $at, $at, $t4
/* 23290C 8021FF6C 46104482 */  mul.s $f18, $f8, $f16
/* 232910 8021FF70 46049180 */  add.s $f6, $f18, $f4
/* 232914 8021FF74 E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 232918 8021FF78 03E00008 */  jr    $ra
/* 23291C 8021FF7C ACA40004 */   sw    $a0, 4($a1)
.type func_8021FEBC_ovl18, @function
.size func_8021FEBC_ovl18, . - func_8021FEBC_ovl18
