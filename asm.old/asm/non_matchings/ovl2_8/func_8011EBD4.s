glabel func_8011EBD4
/* 0A7644 8011EBD4 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0A7648 8011EBD8 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0A764C 8011EBDC 948200D2 */  lhu   $v0, 0xd2($a0)
/* 0A7650 8011EBE0 3C0E800D */  lui   $t6, %hi(gKirbyController) # $t6, 0x800d
/* 0A7654 8011EBE4 1440003B */  bnez  $v0, .L8011ECD4_ovl2
/* 0A7658 8011EBE8 00000000 */   nop   
/* 0A765C 8011EBEC 95CE6FE8 */  lhu   $t6, %lo(gKirbyController)($t6)
/* 0A7660 8011EBF0 31CF8000 */  andi  $t7, $t6, 0x8000
/* 0A7664 8011EBF4 51E00009 */  beql  $t7, $zero, .L8011EC1C_ovl2
/* 0A7668 8011EBF8 848300D0 */   lh    $v1, 0xd0($a0)
/* 0A766C 8011EBFC 90980017 */  lbu   $t8, 0x17($a0)
/* 0A7670 8011EC00 57000006 */  bnezl $t8, .L8011EC1C_ovl2
/* 0A7674 8011EC04 848300D0 */   lh    $v1, 0xd0($a0)
/* 0A7678 8011EC08 849900D0 */  lh    $t9, 0xd0($a0)
/* 0A767C 8011EC0C 27280001 */  addiu $t0, $t9, 1
/* 0A7680 8011EC10 03E00008 */  jr    $ra
/* 0A7684 8011EC14 A48800D0 */   sh    $t0, 0xd0($a0)
.type func_8011EBD4, @function

/* 0A7688 8011EC18 848300D0 */  lh    $v1, 0xd0($a0)
.L8011EC1C_ovl2:
/* 0A768C 8011EC1C 28610011 */  slti  $at, $v1, 0x11
/* 0A7690 8011EC20 1020004F */  beqz  $at, .L8011ED60_ovl2
/* 0A7694 8011EC24 3C014100 */   li    $at, 0x41000000 # 8.000000
/* 0A7698 8011EC28 44813000 */  mtc1  $at, $f6
/* 0A769C 8011EC2C C48200CC */  lwc1  $f2, 0xcc($a0)
/* 0A76A0 8011EC30 240A0012 */  li    $t2, 18
/* 0A76A4 8011EC34 01435823 */  subu  $t3, $t2, $v1
/* 0A76A8 8011EC38 46023032 */  c.eq.s $f6, $f2
/* 0A76AC 8011EC3C 448B2000 */  mtc1  $t3, $f4
/* 0A76B0 8011EC40 24490001 */  addiu $t1, $v0, 1
/* 0A76B4 8011EC44 A48900D2 */  sh    $t1, 0xd2($a0)
/* 0A76B8 8011EC48 45000013 */  bc1f  .L8011EC98_ovl2
/* 0A76BC 8011EC4C 46802020 */   cvt.s.w $f0, $f4
/* 0A76C0 8011EC50 3C018013 */  lui   $at, %hi(D_80128F50) # $at, 0x8013
/* 0A76C4 8011EC54 C4288F50 */  lwc1  $f8, %lo(D_80128F50)($at)
/* 0A76C8 8011EC58 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0A76CC 8011EC5C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0A76D0 8011EC60 46004282 */  mul.s $f10, $f8, $f0
/* 0A76D4 8011EC64 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A76D8 8011EC68 8D8D0000 */  lw    $t5, ($t4)
/* 0A76DC 8011EC6C 44819000 */  mtc1  $at, $f18
/* 0A76E0 8011EC70 3C0F800E */  lui   $t7, %hi(D_800E3210) # $t7, 0x800e
/* 0A76E4 8011EC74 25EF3210 */  addiu $t7, %lo(D_800E3210) # addiu $t7, $t7, 0x3210
/* 0A76E8 8011EC78 000D7080 */  sll   $t6, $t5, 2
/* 0A76EC 8011EC7C 46025400 */  add.s $f16, $f10, $f2
/* 0A76F0 8011EC80 01CF1021 */  addu  $v0, $t6, $t7
/* 0A76F4 8011EC84 C4460000 */  lwc1  $f6, ($v0)
/* 0A76F8 8011EC88 46128101 */  sub.s $f4, $f16, $f18
/* 0A76FC 8011EC8C 46043200 */  add.s $f8, $f6, $f4
/* 0A7700 8011EC90 03E00008 */  jr    $ra
/* 0A7704 8011EC94 E4480000 */   swc1  $f8, ($v0)
.type func_8011EBD4, @function

.L8011EC98_ovl2:
/* 0A7708 8011EC98 3C018013 */  lui   $at, %hi(D_80128F54) # $at, 0x8013
/* 0A770C 8011EC9C C4308F54 */  lwc1  $f16, %lo(D_80128F54)($at)
/* 0A7710 8011ECA0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0A7714 8011ECA4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0A7718 8011ECA8 46008482 */  mul.s $f18, $f16, $f0
/* 0A771C 8011ECAC 3C09800E */  lui   $t1, %hi(D_800E3210) # $t1, 0x800e
/* 0A7720 8011ECB0 8F190000 */  lw    $t9, ($t8)
/* 0A7724 8011ECB4 25293210 */  addiu $t1, %lo(D_800E3210) # addiu $t1, $t1, 0x3210
/* 0A7728 8011ECB8 00194080 */  sll   $t0, $t9, 2
/* 0A772C 8011ECBC 01091021 */  addu  $v0, $t0, $t1
/* 0A7730 8011ECC0 46029180 */  add.s $f6, $f18, $f2
/* 0A7734 8011ECC4 C44A0000 */  lwc1  $f10, ($v0)
/* 0A7738 8011ECC8 46065100 */  add.s $f4, $f10, $f6
/* 0A773C 8011ECCC 03E00008 */  jr    $ra
/* 0A7740 8011ECD0 E4440000 */   swc1  $f4, ($v0)
.type func_8011EBD4, @function

.L8011ECD4_ovl2:
/* 0A7744 8011ECD4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A7748 8011ECD8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A774C 8011ECDC 3C0A800F */ lui $t2, %hi(D_800E8AE0)
/* 0A7750 8011ECE0 3C018013 */ lui $at, %hi(D_80128F5C)
/* 0A7754 8011ECE4 8C430000 */  lw    $v1, ($v0)
/* 0A7758 8011ECE8 00031880 */  sll   $v1, $v1, 2
/* 0A775C 8011ECEC 01435021 */  addu  $t2, $t2, $v1
/* 0A7760 8011ECF0 8D4A8AE0 */ lw $t2, %lo(D_800E8AE0)($t2)
/* 0A7764 8011ECF4 314B0006 */  andi  $t3, $t2, 6
/* 0A7768 8011ECF8 1160000E */  beqz  $t3, .L8011ED34_ovl2
/* 0A776C 8011ECFC 00000000 */   nop   
/* 0A7770 8011ED00 3C018013 */  lui   $at, %hi(D_80128F58) # $at, 0x8013
/* 0A7774 8011ED04 C4288F58 */  lwc1  $f8, %lo(D_80128F58)($at)
/* 0A7778 8011ED08 3C01800E */ lui $at, %hi(D_800E3750)
/* 0A777C 8011ED0C 00230821 */  addu  $at, $at, $v1
/* 0A7780 8011ED10 E4283750 */ swc1 $f8, %lo(D_800E3750)($at)
/* 0A7784 8011ED14 8C4C0000 */  lw    $t4, ($v0)
/* 0A7788 8011ED18 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A778C 8011ED1C 44818000 */  mtc1  $at, $f16
/* 0A7790 8011ED20 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0A7794 8011ED24 000C6880 */  sll   $t5, $t4, 2
/* 0A7798 8011ED28 002D0821 */  addu  $at, $at, $t5
/* 0A779C 8011ED2C 03E00008 */  jr    $ra
/* 0A77A0 8011ED30 E4303C90 */ swc1 $f16, %lo(D_800E3C90)($at)
.type func_8011EBD4, @function

.L8011ED34_ovl2:
/* 0A77A4 8011ED34 C4328F5C */  lwc1  $f18, %lo(D_80128F5C)($at)
/* 0A77A8 8011ED38 3C01800E */ lui $at, %hi(D_800E3750)
/* 0A77AC 8011ED3C 00230821 */  addu  $at, $at, $v1
/* 0A77B0 8011ED40 E4323750 */ swc1 $f18, %lo(D_800E3750)($at)
/* 0A77B4 8011ED44 8C4E0000 */  lw    $t6, ($v0)
/* 0A77B8 8011ED48 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0A77BC 8011ED4C 44815000 */  mtc1  $at, $f10
/* 0A77C0 8011ED50 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0A77C4 8011ED54 000E7880 */  sll   $t7, $t6, 2
/* 0A77C8 8011ED58 002F0821 */  addu  $at, $at, $t7
/* 0A77CC 8011ED5C E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
.L8011ED60_ovl2:
/* 0A77D0 8011ED60 03E00008 */  jr    $ra
/* 0A77D4 8011ED64 00000000 */   nop   
.type func_8011EBD4, @function
.size func_8011EBD4, . - func_8011EBD4
