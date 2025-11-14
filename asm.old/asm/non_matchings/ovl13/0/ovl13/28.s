glabel func_801DF5D0_ovl13 # 28
/* 1F7550 801DF5D0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 1F7554 801DF5D4 AFB00014 */  sw          $s0, 0x14($sp)
/* 1F7558 801DF5D8 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 1F755C 801DF5DC 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 1F7560 801DF5E0 8E050000 */  lw          $a1, 0x0($s0)
/* 1F7564 801DF5E4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 1F7568 801DF5E8 AFB10018 */  sw          $s1, 0x18($sp)
/* 1F756C 801DF5EC AFA40070 */  sw          $a0, 0x70($sp)
/* 1F7570 801DF5F0 8CAF0000 */  lw          $t7, 0x0($a1)
/* 1F7574 801DF5F4 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F7578 801DF5F8 240E0006 */  addiu       $t6, $zero, 0x6
/* 1F757C 801DF5FC 000FC080 */  sll         $t8, $t7, 2
/* 1F7580 801DF600 00380821 */  addu        $at, $at, $t8
/* 1F7584 801DF604 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1F7588 801DF608 8CA80000 */  lw          $t0, 0x0($a1)
/* 1F758C 801DF60C 3C11800E */  lui         $s1, %hi(D_800E1B50)
/* 1F7590 801DF610 26311B50 */  addiu       $s1, $s1, %lo(D_800E1B50)
/* 1F7594 801DF614 00084880 */  sll         $t1, $t0, 2
/* 1F7598 801DF618 02295021 */  addu        $t2, $s1, $t1
/* 1F759C 801DF61C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F75A0 801DF620 3C19801E */  lui         $t9, %hi(D_801D93CC)
/* 1F75A4 801DF624 273993CC */  addiu       $t9, $t9, %lo(D_801D93CC)
/* 1F75A8 801DF628 AD79008C */  sw          $t9, 0x8C($t3)
/* 1F75AC 801DF62C 8E0C0000 */  lw          $t4, 0x0($s0)
/* 1F75B0 801DF630 3C04801E */  lui         $a0, %hi(D_801DAAF0)
/* 1F75B4 801DF634 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F75B8 801DF638 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F75BC 801DF63C 2484AAF0 */  addiu       $a0, $a0, %lo(D_801DAAF0)
/* 1F75C0 801DF640 000D7880 */  sll         $t7, $t5, 2
/* 1F75C4 801DF644 002F0821 */  addu        $at, $at, $t7
/* 1F75C8 801DF648 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F75CC 801DF64C AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F75D0 801DF650 8E180000 */  lw          $t8, 0x0($s0)
/* 1F75D4 801DF654 3C0E801E */  lui         $t6, %hi(D_801DAD8C)
/* 1F75D8 801DF658 25CEAD8C */  addiu       $t6, $t6, %lo(D_801DAD8C)
/* 1F75DC 801DF65C 8F080000 */  lw          $t0, 0x0($t8)
/* 1F75E0 801DF660 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F75E4 801DF664 00084880 */  sll         $t1, $t0, 2
/* 1F75E8 801DF668 02295021 */  addu        $t2, $s1, $t1
/* 1F75EC 801DF66C 8D590000 */  lw          $t9, 0x0($t2)
/* 1F75F0 801DF670 AF2E0098 */  sw          $t6, 0x98($t9)
/* 1F75F4 801DF674 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F75F8 801DF678 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F75FC 801DF67C 000C6880 */  sll         $t5, $t4, 2
/* 1F7600 801DF680 002D0821 */  addu        $at, $at, $t5
/* 1F7604 801DF684 0C02CCFD */  jal         func_800B33F4
/* 1F7608 801DF688 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F760C 801DF68C 3C040001 */  lui         $a0, (0x1042A >> 16)
/* 1F7610 801DF690 0C02A806 */  jal         func_800AA018
/* 1F7614 801DF694 3484042A */   ori        $a0, $a0, (0x1042A & 0xFFFF)
/* 1F7618 801DF698 8E050000 */  lw          $a1, 0x0($s0)
/* 1F761C 801DF69C 3C014080 */  lui         $at, (0x40800000 >> 16)
/* 1F7620 801DF6A0 44818000 */  mtc1        $at, $f16
/* 1F7624 801DF6A4 8CAF0000 */  lw          $t7, 0x0($a1)
/* 1F7628 801DF6A8 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F762C 801DF6AC 3C11800F */  lui         $s1, %hi(D_800EBBE0)
/* 1F7630 801DF6B0 000FC080 */  sll         $t8, $t7, 2
/* 1F7634 801DF6B4 00380821 */  addu        $at, $at, $t8
/* 1F7638 801DF6B8 E4303C90 */  swc1        $f16, %lo(D_800E3C90)($at)
/* 1F763C 801DF6BC 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7640 801DF6C0 2631BBE0 */  addiu       $s1, $s1, %lo(D_800EBBE0)
/* 1F7644 801DF6C4 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1F7648 801DF6C8 00031880 */  sll         $v1, $v1, 2
/* 1F764C 801DF6CC 02234821 */  addu        $t1, $s1, $v1
/* 1F7650 801DF6D0 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F7654 801DF6D4 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1F7658 801DF6D8 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 1F765C 801DF6DC 000A7080 */  sll         $t6, $t2, 2
/* 1F7660 801DF6E0 004EC821 */  addu        $t9, $v0, $t6
/* 1F7664 801DF6E4 C7240000 */  lwc1        $f4, 0x0($t9)
/* 1F7668 801DF6E8 44813000 */  mtc1        $at, $f6
/* 1F766C 801DF6EC 00434021 */  addu        $t0, $v0, $v1
/* 1F7670 801DF6F0 C5000000 */  lwc1        $f0, 0x0($t0)
/* 1F7674 801DF6F4 46062300 */  add.s       $f12, $f4, $f6
/* 1F7678 801DF6F8 44809000 */  mtc1        $zero, $f18
/* 1F767C 801DF6FC 3C014210 */  lui         $at, (0x42100000 >> 16)
/* 1F7680 801DF700 44814000 */  mtc1        $at, $f8
/* 1F7684 801DF704 460C0381 */  sub.s       $f14, $f0, $f12
/* 1F7688 801DF708 4612703C */  c.lt.s      $f14, $f18
/* 1F768C 801DF70C 00000000 */  nop
/* 1F7690 801DF710 45020004 */  bc1fl       L801DF724_ovl13
/* 1F7694 801DF714 46007086 */   mov.s      $f2, $f14
/* 1F7698 801DF718 10000002 */  b           L801DF724_ovl13
/* 1F769C 801DF71C 46007087 */   neg.s      $f2, $f14
/* 1F76A0 801DF720 46007086 */  mov.s       $f2, $f14
glabel L801DF724_ovl13
/* 1F76A4 801DF724 4602403C */  c.lt.s      $f8, $f2
/* 1F76A8 801DF728 00000000 */  nop
/* 1F76AC 801DF72C 45020067 */  bc1fl       L801DF8CC_ovl13
/* 1F76B0 801DF730 4600603C */   c.lt.s     $f12, $f0
/* 1F76B4 801DF734 44805000 */  mtc1        $zero, $f10
/* 1F76B8 801DF738 00005825 */  move        $t3, $zero
/* 1F76BC 801DF73C 3C01801E */  lui         $at, %hi(D_801E5D28_ovl13)
/* 1F76C0 801DF740 460E503C */  c.lt.s      $f10, $f14
/* 1F76C4 801DF744 00000000 */  nop
/* 1F76C8 801DF748 45020003 */  bc1fl       L801DF758_ovl13
/* 1F76CC 801DF74C 448B2000 */   mtc1       $t3, $f4
/* 1F76D0 801DF750 240B0001 */  addiu       $t3, $zero, 0x1
/* 1F76D4 801DF754 448B2000 */  mtc1        $t3, $f4
glabel L801DF758_ovl13
/* 1F76D8 801DF758 00000000 */  nop
/* 1F76DC 801DF75C 468021A0 */  cvt.s.w     $f6, $f4
/* 1F76E0 801DF760 46103202 */  mul.s       $f8, $f6, $f16
/* 1F76E4 801DF764 46089032 */  c.eq.s      $f18, $f8
/* 1F76E8 801DF768 00000000 */  nop
/* 1F76EC 801DF76C 45010007 */  bc1t        L801DF78C_ovl13
/* 1F76F0 801DF770 00000000 */   nop
/* 1F76F4 801DF774 3C01801E */  lui         $at, %hi(D_801E5D24_ovl13)
/* 1F76F8 801DF778 C42A5D24 */  lwc1        $f10, %lo(D_801E5D24_ovl13)($at)
/* 1F76FC 801DF77C 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F7700 801DF780 00230821 */  addu        $at, $at, $v1
/* 1F7704 801DF784 10000005 */  b           L801DF79C_ovl13
/* 1F7708 801DF788 E42A3750 */   swc1       $f10, %lo(D_800E3750)($at)
glabel L801DF78C_ovl13
/* 1F770C 801DF78C C4245D28 */  lwc1        $f4, %lo(D_801E5D28_ovl13)($at)
/* 1F7710 801DF790 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F7714 801DF794 00230821 */  addu        $at, $at, $v1
/* 1F7718 801DF798 E4243750 */  swc1        $f4, %lo(D_800E3750)($at)
glabel L801DF79C_ovl13
/* 1F771C 801DF79C 0C002DAF */  jal         finish_current_thread
/* 1F7720 801DF7A0 2404000A */   addiu      $a0, $zero, 0xA
/* 1F7724 801DF7A4 8E0C0000 */  lw          $t4, 0x0($s0)
/* 1F7728 801DF7A8 3C0D800E */  lui         $t5, %hi(gEntitiesNextPosYArray)
/* 1F772C 801DF7AC 25AD2790 */  addiu       $t5, $t5, %lo(gEntitiesNextPosYArray)
/* 1F7730 801DF7B0 8D830000 */  lw          $v1, 0x0($t4)
/* 1F7734 801DF7B4 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 1F7738 801DF7B8 44814000 */  mtc1        $at, $f8
/* 1F773C 801DF7BC 00031880 */  sll         $v1, $v1, 2
/* 1F7740 801DF7C0 0223C021 */  addu        $t8, $s1, $v1
/* 1F7744 801DF7C4 8F080000 */  lw          $t0, 0x0($t8)
/* 1F7748 801DF7C8 006D7821 */  addu        $t7, $v1, $t5
/* 1F774C 801DF7CC C5E00000 */  lwc1        $f0, 0x0($t7)
/* 1F7750 801DF7D0 00084880 */  sll         $t1, $t0, 2
/* 1F7754 801DF7D4 012D5021 */  addu        $t2, $t1, $t5
/* 1F7758 801DF7D8 C5460000 */  lwc1        $f6, 0x0($t2)
/* 1F775C 801DF7DC 3C014190 */  lui         $at, (0x41900000 >> 16)
/* 1F7760 801DF7E0 44815000 */  mtc1        $at, $f10
/* 1F7764 801DF7E4 46083300 */  add.s       $f12, $f6, $f8
/* 1F7768 801DF7E8 460C003C */  c.lt.s      $f0, $f12
/* 1F776C 801DF7EC 00000000 */  nop
/* 1F7770 801DF7F0 45020005 */  bc1fl       L801DF808_ovl13
/* 1F7774 801DF7F4 460C0081 */   sub.s      $f2, $f0, $f12
/* 1F7778 801DF7F8 460C0081 */  sub.s       $f2, $f0, $f12
/* 1F777C 801DF7FC 10000002 */  b           L801DF808_ovl13
/* 1F7780 801DF800 46001087 */   neg.s      $f2, $f2
/* 1F7784 801DF804 460C0081 */  sub.s       $f2, $f0, $f12
glabel L801DF808_ovl13
/* 1F7788 801DF808 4602503C */  c.lt.s      $f10, $f2
/* 1F778C 801DF80C 00000000 */  nop
/* 1F7790 801DF810 45000020 */  bc1f        L801DF894_ovl13
/* 1F7794 801DF814 00000000 */   nop
glabel L801DF818_ovl13
/* 1F7798 801DF818 0C002DAF */  jal         finish_current_thread
/* 1F779C 801DF81C 24040001 */   addiu      $a0, $zero, 0x1
/* 1F77A0 801DF820 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F77A4 801DF824 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1F77A8 801DF828 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1F77AC 801DF82C 8DC30000 */  lw          $v1, 0x0($t6)
/* 1F77B0 801DF830 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 1F77B4 801DF834 44813000 */  mtc1        $at, $f6
/* 1F77B8 801DF838 00031880 */  sll         $v1, $v1, 2
/* 1F77BC 801DF83C 02235821 */  addu        $t3, $s1, $v1
/* 1F77C0 801DF840 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F77C4 801DF844 0043C821 */  addu        $t9, $v0, $v1
/* 1F77C8 801DF848 C7200000 */  lwc1        $f0, 0x0($t9)
/* 1F77CC 801DF84C 000C7880 */  sll         $t7, $t4, 2
/* 1F77D0 801DF850 004FC021 */  addu        $t8, $v0, $t7
/* 1F77D4 801DF854 C7040000 */  lwc1        $f4, 0x0($t8)
/* 1F77D8 801DF858 3C014190 */  lui         $at, (0x41900000 >> 16)
/* 1F77DC 801DF85C 44814000 */  mtc1        $at, $f8
/* 1F77E0 801DF860 46062300 */  add.s       $f12, $f4, $f6
/* 1F77E4 801DF864 460C003C */  c.lt.s      $f0, $f12
/* 1F77E8 801DF868 00000000 */  nop
/* 1F77EC 801DF86C 45020005 */  bc1fl       L801DF884_ovl13
/* 1F77F0 801DF870 460C0081 */   sub.s      $f2, $f0, $f12
/* 1F77F4 801DF874 460C0081 */  sub.s       $f2, $f0, $f12
/* 1F77F8 801DF878 10000002 */  b           L801DF884_ovl13
/* 1F77FC 801DF87C 46001087 */   neg.s      $f2, $f2
/* 1F7800 801DF880 460C0081 */  sub.s       $f2, $f0, $f12
glabel L801DF884_ovl13
/* 1F7804 801DF884 4602403C */  c.lt.s      $f8, $f2
/* 1F7808 801DF888 00000000 */  nop
/* 1F780C 801DF88C 4501FFE2 */  bc1t        L801DF818_ovl13
/* 1F7810 801DF890 00000000 */   nop
glabel L801DF894_ovl13
/* 1F7814 801DF894 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F7818 801DF898 00230821 */  addu        $at, $at, $v1
/* 1F781C 801DF89C C42A3210 */  lwc1        $f10, %lo(D_800E3210)($at)
/* 1F7820 801DF8A0 3C01801E */  lui         $at, %hi(D_801E5D2C_ovl13)
/* 1F7824 801DF8A4 C4245D2C */  lwc1        $f4, %lo(D_801E5D2C_ovl13)($at)
/* 1F7828 801DF8A8 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F782C 801DF8AC 00230821 */  addu        $at, $at, $v1
/* 1F7830 801DF8B0 46045182 */  mul.s       $f6, $f10, $f4
/* 1F7834 801DF8B4 2404000A */  addiu       $a0, $zero, 0xA
/* 1F7838 801DF8B8 0C002DAF */  jal         finish_current_thread
/* 1F783C 801DF8BC E4263750 */   swc1       $f6, %lo(D_800E3750)($at)
/* 1F7840 801DF8C0 1000001B */  b           L801DF930_ovl13
/* 1F7844 801DF8C4 8E050000 */   lw         $a1, 0x0($s0)
/* 1F7848 801DF8C8 4600603C */  c.lt.s      $f12, $f0
glabel L801DF8CC_ovl13
/* 1F784C 801DF8CC 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F7850 801DF8D0 45020008 */  bc1fl       L801DF8F4_ovl13
/* 1F7854 801DF8D4 44815000 */   mtc1       $at, $f10
/* 1F7858 801DF8D8 3C01BF80 */  lui         $at, (0xBF800000 >> 16)
/* 1F785C 801DF8DC 44814000 */  mtc1        $at, $f8
/* 1F7860 801DF8E0 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F7864 801DF8E4 00230821 */  addu        $at, $at, $v1
/* 1F7868 801DF8E8 10000005 */  b           L801DF900_ovl13
/* 1F786C 801DF8EC E4283210 */   swc1       $f8, %lo(D_800E3210)($at)
/* 1F7870 801DF8F0 44815000 */  mtc1        $at, $f10
glabel L801DF8F4_ovl13
/* 1F7874 801DF8F4 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F7878 801DF8F8 00230821 */  addu        $at, $at, $v1
/* 1F787C 801DF8FC E42A3210 */  swc1        $f10, %lo(D_800E3210)($at)
glabel L801DF900_ovl13
/* 1F7880 801DF900 4612703C */  c.lt.s      $f14, $f18
/* 1F7884 801DF904 00000000 */  nop
/* 1F7888 801DF908 45020004 */  bc1fl       L801DF91C_ovl13
/* 1F788C 801DF90C 46007086 */   mov.s      $f2, $f14
/* 1F7890 801DF910 10000002 */  b           L801DF91C_ovl13
/* 1F7894 801DF914 46007087 */   neg.s      $f2, $f14
/* 1F7898 801DF918 46007086 */  mov.s       $f2, $f14
glabel L801DF91C_ovl13
/* 1F789C 801DF91C 4600110D */  trunc.w.s   $f4, $f2
/* 1F78A0 801DF920 44042000 */  mfc1        $a0, $f4
/* 1F78A4 801DF924 0C002DAF */  jal         finish_current_thread
/* 1F78A8 801DF928 00000000 */   nop
/* 1F78AC 801DF92C 8E050000 */  lw          $a1, 0x0($s0)
glabel L801DF930_ovl13
/* 1F78B0 801DF930 44803000 */  mtc1        $zero, $f6
/* 1F78B4 801DF934 3C02800E */  lui         $v0, %hi(D_800E3750)
/* 1F78B8 801DF938 8CA90000 */  lw          $t1, 0x0($a1)
/* 1F78BC 801DF93C 24423750 */  addiu       $v0, $v0, %lo(D_800E3750)
/* 1F78C0 801DF940 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F78C4 801DF944 00096880 */  sll         $t5, $t1, 2
/* 1F78C8 801DF948 004D5021 */  addu        $t2, $v0, $t5
/* 1F78CC 801DF94C E5460000 */  swc1        $f6, 0x0($t2)
/* 1F78D0 801DF950 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F78D4 801DF954 00031880 */  sll         $v1, $v1, 2
/* 1F78D8 801DF958 00437021 */  addu        $t6, $v0, $v1
/* 1F78DC 801DF95C C5C80000 */  lwc1        $f8, 0x0($t6)
/* 1F78E0 801DF960 00230821 */  addu        $at, $at, $v1
/* 1F78E4 801DF964 E4283210 */  swc1        $f8, %lo(D_800E3210)($at)
/* 1F78E8 801DF968 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F78EC 801DF96C 3C01801E */  lui         $at, %hi(D_801E5D30_ovl13)
/* 1F78F0 801DF970 C42A5D30 */  lwc1        $f10, %lo(D_801E5D30_ovl13)($at)
/* 1F78F4 801DF974 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F78F8 801DF978 00195880 */  sll         $t3, $t9, 2
/* 1F78FC 801DF97C 002B0821 */  addu        $at, $at, $t3
/* 1F7900 801DF980 0C02BC9F */  jal         func_800AF27C
/* 1F7904 801DF984 E42A3C90 */   swc1       $f10, %lo(D_800E3C90)($at)
/* 1F7908 801DF988 8E050000 */  lw          $a1, 0x0($s0)
/* 1F790C 801DF98C 44802000 */  mtc1        $zero, $f4
/* 1F7910 801DF990 3C02800F */  lui         $v0, %hi(D_800EA6E0)
/* 1F7914 801DF994 8CAC0000 */  lw          $t4, 0x0($a1)
/* 1F7918 801DF998 2442A6E0 */  addiu       $v0, $v0, %lo(D_800EA6E0)
/* 1F791C 801DF99C 3C01800F */  lui         $at, %hi(D_800EB320)
/* 1F7920 801DF9A0 000C7880 */  sll         $t7, $t4, 2
/* 1F7924 801DF9A4 004FC021 */  addu        $t8, $v0, $t7
/* 1F7928 801DF9A8 E7040000 */  swc1        $f4, 0x0($t8)
/* 1F792C 801DF9AC 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7930 801DF9B0 3C0A800E */  lui         $t2, %hi(D_800E5F90)
/* 1F7934 801DF9B4 3C040001 */  lui         $a0, (0x1042B >> 16)
/* 1F7938 801DF9B8 00031880 */  sll         $v1, $v1, 2
/* 1F793C 801DF9BC 00434021 */  addu        $t0, $v0, $v1
/* 1F7940 801DF9C0 C5020000 */  lwc1        $f2, 0x0($t0)
/* 1F7944 801DF9C4 00230821 */  addu        $at, $at, $v1
/* 1F7948 801DF9C8 3484042B */  ori         $a0, $a0, (0x1042B & 0xFFFF)
/* 1F794C 801DF9CC E422B320 */  swc1        $f2, %lo(D_800EB320)($at)
/* 1F7950 801DF9D0 8CA90000 */  lw          $t1, 0x0($a1)
/* 1F7954 801DF9D4 3C01800F */  lui         $at, %hi(D_800EB160)
/* 1F7958 801DF9D8 00096880 */  sll         $t5, $t1, 2
/* 1F795C 801DF9DC 002D0821 */  addu        $at, $at, $t5
/* 1F7960 801DF9E0 E422B160 */  swc1        $f2, %lo(D_800EB160)($at)
/* 1F7964 801DF9E4 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7968 801DF9E8 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 1F796C 801DF9EC 00031880 */  sll         $v1, $v1, 2
/* 1F7970 801DF9F0 00230821 */  addu        $at, $at, $v1
/* 1F7974 801DF9F4 C4266BD0 */  lwc1        $f6, %lo(D_800E6BD0)($at)
/* 1F7978 801DF9F8 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 1F797C 801DF9FC 01435021 */  addu        $t2, $t2, $v1
/* 1F7980 801DFA00 00230821 */  addu        $at, $at, $v1
/* 1F7984 801DFA04 8D4A5F90 */  lw          $t2, %lo(D_800E5F90)($t2)
/* 1F7988 801DFA08 C4282790 */  lwc1        $f8, %lo(gEntitiesNextPosYArray)($at)
/* 1F798C 801DFA0C E7A60068 */  swc1        $f6, 0x68($sp)
/* 1F7990 801DFA10 AFAA0060 */  sw          $t2, 0x60($sp)
/* 1F7994 801DFA14 0C02A855 */  jal         func_800AA154
/* 1F7998 801DFA18 E7A80064 */   swc1       $f8, 0x64($sp)
/* 1F799C 801DFA1C 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F79A0 801DFA20 3C0C800E */  lui         $t4, %hi(D_800DFBD0)
/* 1F79A4 801DFA24 27A40054 */  addiu       $a0, $sp, 0x54
/* 1F79A8 801DFA28 8DD90000 */  lw          $t9, 0x0($t6)
/* 1F79AC 801DFA2C 00195880 */  sll         $t3, $t9, 2
/* 1F79B0 801DFA30 018B6021 */  addu        $t4, $t4, $t3
/* 1F79B4 801DFA34 8D8CFBD0 */  lw          $t4, %lo(D_800DFBD0)($t4)
/* 1F79B8 801DFA38 0C0291E5 */  jal         func_800A4794
/* 1F79BC 801DFA3C 8D850004 */   lw         $a1, 0x4($t4)
/* 1F79C0 801DFA40 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F79C4 801DFA44 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1F79C8 801DFA48 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F79CC 801DFA4C 8DE30000 */  lw          $v1, 0x0($t7)
/* 1F79D0 801DFA50 3C18800E */  lui         $t8, %hi(D_800E5F90)
/* 1F79D4 801DFA54 3C08800E */  lui         $t0, %hi(D_800E6BD0)
/* 1F79D8 801DFA58 00031880 */  sll         $v1, $v1, 2
/* 1F79DC 801DFA5C 01234821 */  addu        $t1, $t1, $v1
/* 1F79E0 801DFA60 8D29FBD0 */  lw          $t1, %lo(D_800DFBD0)($t1)
/* 1F79E4 801DFA64 00230821 */  addu        $at, $at, $v1
/* 1F79E8 801DFA68 C42A6A10 */  lwc1        $f10, %lo(D_800E6A10)($at)
/* 1F79EC 801DFA6C 8D2D0004 */  lw          $t5, 0x4($t1)
/* 1F79F0 801DFA70 25086BD0 */  addiu       $t0, $t0, %lo(D_800E6BD0)
/* 1F79F4 801DFA74 27185F90 */  addiu       $t8, $t8, %lo(D_800E5F90)
/* 1F79F8 801DFA78 C5A40024 */  lwc1        $f4, 0x24($t5)
/* 1F79FC 801DFA7C 00782021 */  addu        $a0, $v1, $t8
/* 1F7A00 801DFA80 00682821 */  addu        $a1, $v1, $t0
/* 1F7A04 801DFA84 46045182 */  mul.s       $f6, $f10, $f4
/* 1F7A08 801DFA88 44063000 */  mfc1        $a2, $f6
/* 1F7A0C 801DFA8C 0C03E65D */  jal         func_800F9974
/* 1F7A10 801DFA90 00000000 */   nop
/* 1F7A14 801DFA94 8E050000 */  lw          $a1, 0x0($s0)
/* 1F7A18 801DFA98 C7A80058 */  lwc1        $f8, 0x58($sp)
/* 1F7A1C 801DFA9C 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 1F7A20 801DFAA0 8CAA0000 */  lw          $t2, 0x0($a1)
/* 1F7A24 801DFAA4 000A7080 */  sll         $t6, $t2, 2
/* 1F7A28 801DFAA8 002E0821 */  addu        $at, $at, $t6
/* 1F7A2C 801DFAAC E4282790 */  swc1        $f8, %lo(gEntitiesNextPosYArray)($at)
/* 1F7A30 801DFAB0 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7A34 801DFAB4 3C01800F */  lui         $at, %hi(D_800EB320)
/* 1F7A38 801DFAB8 00031880 */  sll         $v1, $v1, 2
/* 1F7A3C 801DFABC 00230821 */  addu        $at, $at, $v1
/* 1F7A40 801DFAC0 C420B320 */  lwc1        $f0, %lo(D_800EB320)($at)
/* 1F7A44 801DFAC4 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F7A48 801DFAC8 00230821 */  addu        $at, $at, $v1
/* 1F7A4C 801DFACC C42CA6E0 */  lwc1        $f12, %lo(D_800EA6E0)($at)
/* 1F7A50 801DFAD0 460C003C */  c.lt.s      $f0, $f12
/* 1F7A54 801DFAD4 00000000 */  nop
/* 1F7A58 801DFAD8 45020009 */  bc1fl       L801DFB00_ovl13
/* 1F7A5C 801DFADC 460C0201 */   sub.s      $f8, $f0, $f12
/* 1F7A60 801DFAE0 460C0281 */  sub.s       $f10, $f0, $f12
/* 1F7A64 801DFAE4 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F7A68 801DFAE8 00230821 */  addu        $at, $at, $v1
/* 1F7A6C 801DFAEC 46005107 */  neg.s       $f4, $f10
/* 1F7A70 801DFAF0 46002187 */  neg.s       $f6, $f4
/* 1F7A74 801DFAF4 10000006 */  b           L801DFB10_ovl13
/* 1F7A78 801DFAF8 E4263210 */   swc1       $f6, %lo(D_800E3210)($at)
/* 1F7A7C 801DFAFC 460C0201 */  sub.s       $f8, $f0, $f12
glabel L801DFB00_ovl13
/* 1F7A80 801DFB00 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F7A84 801DFB04 00230821 */  addu        $at, $at, $v1
/* 1F7A88 801DFB08 46004287 */  neg.s       $f10, $f8
/* 1F7A8C 801DFB0C E42A3210 */  swc1        $f10, %lo(D_800E3210)($at)
glabel L801DFB10_ovl13
/* 1F7A90 801DFB10 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7A94 801DFB14 3C01800F */  lui         $at, %hi(D_800EB320)
/* 1F7A98 801DFB18 00031880 */  sll         $v1, $v1, 2
/* 1F7A9C 801DFB1C 00230821 */  addu        $at, $at, $v1
/* 1F7AA0 801DFB20 C420B320 */  lwc1        $f0, %lo(D_800EB320)($at)
/* 1F7AA4 801DFB24 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F7AA8 801DFB28 00230821 */  addu        $at, $at, $v1
/* 1F7AAC 801DFB2C C42CA6E0 */  lwc1        $f12, %lo(D_800EA6E0)($at)
/* 1F7AB0 801DFB30 3C01800F */  lui         $at, %hi(D_800EB160)
/* 1F7AB4 801DFB34 00230821 */  addu        $at, $at, $v1
/* 1F7AB8 801DFB38 460C003C */  c.lt.s      $f0, $f12
/* 1F7ABC 801DFB3C 00000000 */  nop
/* 1F7AC0 801DFB40 45020006 */  bc1fl       L801DFB5C_ovl13
/* 1F7AC4 801DFB44 460C0381 */   sub.s      $f14, $f0, $f12
/* 1F7AC8 801DFB48 460C0381 */  sub.s       $f14, $f0, $f12
/* 1F7ACC 801DFB4C 46007107 */  neg.s       $f4, $f14
/* 1F7AD0 801DFB50 10000003 */  b           L801DFB60_ovl13
/* 1F7AD4 801DFB54 E7A4004C */   swc1       $f4, 0x4C($sp)
/* 1F7AD8 801DFB58 460C0381 */  sub.s       $f14, $f0, $f12
glabel L801DFB5C_ovl13
/* 1F7ADC 801DFB5C E7AE004C */  swc1        $f14, 0x4C($sp)
glabel L801DFB60_ovl13
/* 1F7AE0 801DFB60 C430B160 */  lwc1        $f16, %lo(D_800EB160)($at)
/* 1F7AE4 801DFB64 C7A6004C */  lwc1        $f6, 0x4C($sp)
/* 1F7AE8 801DFB68 4600803C */  c.lt.s      $f16, $f0
/* 1F7AEC 801DFB6C 00000000 */  nop
/* 1F7AF0 801DFB70 45020005 */  bc1fl       L801DFB88_ovl13
/* 1F7AF4 801DFB74 46008481 */   sub.s      $f18, $f16, $f0
/* 1F7AF8 801DFB78 46008481 */  sub.s       $f18, $f16, $f0
/* 1F7AFC 801DFB7C 10000003 */  b           L801DFB8C_ovl13
/* 1F7B00 801DFB80 46009087 */   neg.s      $f2, $f18
/* 1F7B04 801DFB84 46008481 */  sub.s       $f18, $f16, $f0
glabel L801DFB88_ovl13
/* 1F7B08 801DFB88 46009086 */  mov.s       $f2, $f18
glabel L801DFB8C_ovl13
/* 1F7B0C 801DFB8C 4602303C */  c.lt.s      $f6, $f2
/* 1F7B10 801DFB90 00000000 */  nop
/* 1F7B14 801DFB94 45020017 */  bc1fl       L801DFBF4_ovl13
/* 1F7B18 801DFB98 460C003C */   c.lt.s     $f0, $f12
/* 1F7B1C 801DFB9C 460C003C */  c.lt.s      $f0, $f12
/* 1F7B20 801DFBA0 00000000 */  nop
/* 1F7B24 801DFBA4 45020004 */  bc1fl       L801DFBB8_ovl13
/* 1F7B28 801DFBA8 46007086 */   mov.s      $f2, $f14
/* 1F7B2C 801DFBAC 10000002 */  b           L801DFBB8_ovl13
/* 1F7B30 801DFBB0 46007087 */   neg.s      $f2, $f14
/* 1F7B34 801DFBB4 46007086 */  mov.s       $f2, $f14
glabel L801DFBB8_ovl13
/* 1F7B38 801DFBB8 4600803C */  c.lt.s      $f16, $f0
/* 1F7B3C 801DFBBC 00000000 */  nop
/* 1F7B40 801DFBC0 45020004 */  bc1fl       L801DFBD4_ovl13
/* 1F7B44 801DFBC4 46009006 */   mov.s      $f0, $f18
/* 1F7B48 801DFBC8 10000002 */  b           L801DFBD4_ovl13
/* 1F7B4C 801DFBCC 46009007 */   neg.s      $f0, $f18
/* 1F7B50 801DFBD0 46009006 */  mov.s       $f0, $f18
glabel L801DFBD4_ovl13
/* 1F7B54 801DFBD4 46001201 */  sub.s       $f8, $f2, $f0
/* 1F7B58 801DFBD8 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F7B5C 801DFBDC 00230821 */  addu        $at, $at, $v1
/* 1F7B60 801DFBE0 46004287 */  neg.s       $f10, $f8
/* 1F7B64 801DFBE4 46005107 */  neg.s       $f4, $f10
/* 1F7B68 801DFBE8 10000014 */  b           L801DFC3C_ovl13
/* 1F7B6C 801DFBEC E4243750 */   swc1       $f4, %lo(D_800E3750)($at)
/* 1F7B70 801DFBF0 460C003C */  c.lt.s      $f0, $f12
glabel L801DFBF4_ovl13
/* 1F7B74 801DFBF4 00000000 */  nop
/* 1F7B78 801DFBF8 45020004 */  bc1fl       L801DFC0C_ovl13
/* 1F7B7C 801DFBFC 46007086 */   mov.s      $f2, $f14
/* 1F7B80 801DFC00 10000002 */  b           L801DFC0C_ovl13
/* 1F7B84 801DFC04 46007087 */   neg.s      $f2, $f14
/* 1F7B88 801DFC08 46007086 */  mov.s       $f2, $f14
glabel L801DFC0C_ovl13
/* 1F7B8C 801DFC0C 4600803C */  c.lt.s      $f16, $f0
/* 1F7B90 801DFC10 00000000 */  nop
/* 1F7B94 801DFC14 45020004 */  bc1fl       L801DFC28_ovl13
/* 1F7B98 801DFC18 46009006 */   mov.s      $f0, $f18
/* 1F7B9C 801DFC1C 10000002 */  b           L801DFC28_ovl13
/* 1F7BA0 801DFC20 46009007 */   neg.s      $f0, $f18
/* 1F7BA4 801DFC24 46009006 */  mov.s       $f0, $f18
glabel L801DFC28_ovl13
/* 1F7BA8 801DFC28 46001181 */  sub.s       $f6, $f2, $f0
/* 1F7BAC 801DFC2C 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F7BB0 801DFC30 00230821 */  addu        $at, $at, $v1
/* 1F7BB4 801DFC34 46003207 */  neg.s       $f8, $f6
/* 1F7BB8 801DFC38 E4283750 */  swc1        $f8, %lo(D_800E3750)($at)
glabel L801DFC3C_ovl13
/* 1F7BBC 801DFC3C 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F7BC0 801DFC40 3C03800E */  lui         $v1, %hi(D_800DFBD0)
/* 1F7BC4 801DFC44 2463FBD0 */  addiu       $v1, $v1, %lo(D_800DFBD0)
/* 1F7BC8 801DFC48 00195880 */  sll         $t3, $t9, 2
/* 1F7BCC 801DFC4C 006B6021 */  addu        $t4, $v1, $t3
/* 1F7BD0 801DFC50 8D8F0000 */  lw          $t7, 0x0($t4)
/* 1F7BD4 801DFC54 44805000 */  mtc1        $zero, $f10
/* 1F7BD8 801DFC58 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F7BDC 801DFC5C 8DF80004 */  lw          $t8, 0x4($t7)
/* 1F7BE0 801DFC60 E70A0024 */  swc1        $f10, 0x24($t8)
/* 1F7BE4 801DFC64 8E080000 */  lw          $t0, 0x0($s0)
/* 1F7BE8 801DFC68 8D090000 */  lw          $t1, 0x0($t0)
/* 1F7BEC 801DFC6C 00096880 */  sll         $t5, $t1, 2
/* 1F7BF0 801DFC70 006D5021 */  addu        $t2, $v1, $t5
/* 1F7BF4 801DFC74 8D4E0000 */  lw          $t6, 0x0($t2)
/* 1F7BF8 801DFC78 8DC20004 */  lw          $v0, 0x4($t6)
/* 1F7BFC 801DFC7C C4420024 */  lwc1        $f2, 0x24($v0)
/* 1F7C00 801DFC80 E4420020 */  swc1        $f2, 0x20($v0)
/* 1F7C04 801DFC84 8E190000 */  lw          $t9, 0x0($s0)
/* 1F7C08 801DFC88 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F7C0C 801DFC8C 3C19800F */  lui         $t9, %hi(D_800E8920)
/* 1F7C10 801DFC90 000B6080 */  sll         $t4, $t3, 2
/* 1F7C14 801DFC94 006C7821 */  addu        $t7, $v1, $t4
/* 1F7C18 801DFC98 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F7C1C 801DFC9C 8F080004 */  lw          $t0, 0x4($t8)
/* 1F7C20 801DFCA0 E502001C */  swc1        $f2, 0x1C($t0)
/* 1F7C24 801DFCA4 8E050000 */  lw          $a1, 0x0($s0)
/* 1F7C28 801DFCA8 8CA90000 */  lw          $t1, 0x0($a1)
/* 1F7C2C 801DFCAC 00096880 */  sll         $t5, $t1, 2
/* 1F7C30 801DFCB0 002D0821 */  addu        $at, $at, $t5
/* 1F7C34 801DFCB4 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F7C38 801DFCB8 8CAA0000 */  lw          $t2, 0x0($a1)
/* 1F7C3C 801DFCBC 000A7080 */  sll         $t6, $t2, 2
/* 1F7C40 801DFCC0 032EC821 */  addu        $t9, $t9, $t6
/* 1F7C44 801DFCC4 8F398920 */  lw          $t9, %lo(D_800E8920)($t9)
/* 1F7C48 801DFCC8 1720000B */  bnez        $t9, L801DFCF8_ovl13
/* 1F7C4C 801DFCCC 00000000 */   nop
glabel L801DFCD0_ovl13
/* 1F7C50 801DFCD0 0C002DAF */  jal         finish_current_thread
/* 1F7C54 801DFCD4 24040001 */   addiu      $a0, $zero, 0x1
/* 1F7C58 801DFCD8 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F7C5C 801DFCDC 3C18800F */  lui         $t8, %hi(D_800E8920)
/* 1F7C60 801DFCE0 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F7C64 801DFCE4 000C7880 */  sll         $t7, $t4, 2
/* 1F7C68 801DFCE8 030FC021 */  addu        $t8, $t8, $t7
/* 1F7C6C 801DFCEC 8F188920 */  lw          $t8, %lo(D_800E8920)($t8)
/* 1F7C70 801DFCF0 1300FFF7 */  beqz        $t8, L801DFCD0_ovl13
/* 1F7C74 801DFCF4 00000000 */   nop
glabel L801DFCF8_ovl13
/* 1F7C78 801DFCF8 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F7C7C 801DFCFC 0C02BB30 */  jal         func_800AECC0
/* 1F7C80 801DFD00 C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1F7C84 801DFD04 3C040001 */  lui         $a0, (0x1041C >> 16)
/* 1F7C88 801DFD08 3484041C */  ori         $a0, $a0, (0x1041C & 0xFFFF)
/* 1F7C8C 801DFD0C 0C02A7E6 */  jal         func_800A9F98
/* 1F7C90 801DFD10 3C054040 */   lui        $a1, (0x40400000 >> 16)
/* 1F7C94 801DFD14 0C02CCFD */  jal         func_800B33F4
/* 1F7C98 801DFD18 00000000 */   nop
/* 1F7C9C 801DFD1C 0C03EE45 */  jal         func_800FB914
/* 1F7CA0 801DFD20 24040001 */   addiu      $a0, $zero, 0x1
/* 1F7CA4 801DFD24 0C029D9E */  jal         play_sound
/* 1F7CA8 801DFD28 24040185 */   addiu      $a0, $zero, 0x185
/* 1F7CAC 801DFD2C 00002025 */  move        $a0, $zero
/* 1F7CB0 801DFD30 0C02ED1A */  jal         func_800BB468
/* 1F7CB4 801DFD34 00002825 */   move       $a1, $zero
/* 1F7CB8 801DFD38 2404001C */  addiu       $a0, $zero, 0x1C
/* 1F7CBC 801DFD3C 0C06B30D */  jal         func_801ACC34_ovl7
/* 1F7CC0 801DFD40 00002825 */   move       $a1, $zero
/* 1F7CC4 801DFD44 2404001C */  addiu       $a0, $zero, 0x1C
/* 1F7CC8 801DFD48 0C06B30D */  jal         func_801ACC34_ovl7
/* 1F7CCC 801DFD4C 24050001 */   addiu      $a1, $zero, 0x1
/* 1F7CD0 801DFD50 0C02BC9F */  jal         func_800AF27C
/* 1F7CD4 801DFD54 00000000 */   nop
/* 1F7CD8 801DFD58 8E080000 */  lw          $t0, 0x0($s0)
/* 1F7CDC 801DFD5C 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F7CE0 801DFD60 3C040001 */  lui         $a0, (0x10429 >> 16)
/* 1F7CE4 801DFD64 8D090000 */  lw          $t1, 0x0($t0)
/* 1F7CE8 801DFD68 34840429 */  ori         $a0, $a0, (0x10429 & 0xFFFF)
/* 1F7CEC 801DFD6C 00096880 */  sll         $t5, $t1, 2
/* 1F7CF0 801DFD70 002D0821 */  addu        $at, $at, $t5
/* 1F7CF4 801DFD74 0C02A855 */  jal         func_800AA154
/* 1F7CF8 801DFD78 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F7CFC 801DFD7C 3C040001 */  lui         $a0, (0x1042A >> 16)
/* 1F7D00 801DFD80 0C02A806 */  jal         func_800AA018
/* 1F7D04 801DFD84 3484042A */   ori        $a0, $a0, (0x1042A & 0xFFFF)
/* 1F7D08 801DFD88 0C002DAF */  jal         finish_current_thread
/* 1F7D0C 801DFD8C 24040012 */   addiu      $a0, $zero, 0x12
/* 1F7D10 801DFD90 8E050000 */  lw          $a1, 0x0($s0)
/* 1F7D14 801DFD94 3C01801E */  lui         $at, %hi(D_801E5D34_ovl13)
/* 1F7D18 801DFD98 C4245D34 */  lwc1        $f4, %lo(D_801E5D34_ovl13)($at)
/* 1F7D1C 801DFD9C 8CAA0000 */  lw          $t2, 0x0($a1)
/* 1F7D20 801DFDA0 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F7D24 801DFDA4 24040003 */  addiu       $a0, $zero, 0x3
/* 1F7D28 801DFDA8 000A7080 */  sll         $t6, $t2, 2
/* 1F7D2C 801DFDAC 002E0821 */  addu        $at, $at, $t6
/* 1F7D30 801DFDB0 E424ADE0 */  swc1        $f4, %lo(D_800EADE0)($at)
/* 1F7D34 801DFDB4 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F7D38 801DFDB8 3C014100 */  lui         $at, (0x41000000 >> 16)
/* 1F7D3C 801DFDBC 44813000 */  mtc1        $at, $f6
/* 1F7D40 801DFDC0 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F7D44 801DFDC4 00195880 */  sll         $t3, $t9, 2
/* 1F7D48 801DFDC8 002B0821 */  addu        $at, $at, $t3
/* 1F7D4C 801DFDCC E4263210 */  swc1        $f6, %lo(D_800E3210)($at)
/* 1F7D50 801DFDD0 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7D54 801DFDD4 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F7D58 801DFDD8 00031880 */  sll         $v1, $v1, 2
/* 1F7D5C 801DFDDC 00230821 */  addu        $at, $at, $v1
/* 1F7D60 801DFDE0 C4286A10 */  lwc1        $f8, %lo(D_800E6A10)($at)
/* 1F7D64 801DFDE4 3C01801E */  lui         $at, %hi(D_801E5D38_ovl13)
/* 1F7D68 801DFDE8 C42A5D38 */  lwc1        $f10, %lo(D_801E5D38_ovl13)($at)
/* 1F7D6C 801DFDEC 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F7D70 801DFDF0 00230821 */  addu        $at, $at, $v1
/* 1F7D74 801DFDF4 460A4102 */  mul.s       $f4, $f8, $f10
/* 1F7D78 801DFDF8 E4246690 */  swc1        $f4, %lo(D_800E6690)($at)
/* 1F7D7C 801DFDFC 8CAC0000 */  lw          $t4, 0x0($a1)
/* 1F7D80 801DFE00 3C01801E */  lui         $at, %hi(D_801E5D3C_ovl13)
/* 1F7D84 801DFE04 C4265D3C */  lwc1        $f6, %lo(D_801E5D3C_ovl13)($at)
/* 1F7D88 801DFE08 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F7D8C 801DFE0C 000C7880 */  sll         $t7, $t4, 2
/* 1F7D90 801DFE10 002F0821 */  addu        $at, $at, $t7
/* 1F7D94 801DFE14 0C002DAF */  jal         finish_current_thread
/* 1F7D98 801DFE18 E4263750 */   swc1       $f6, %lo(D_800E3750)($at)
/* 1F7D9C 801DFE1C 8E180000 */  lw          $t8, 0x0($s0)
/* 1F7DA0 801DFE20 44804000 */  mtc1        $zero, $f8
/* 1F7DA4 801DFE24 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F7DA8 801DFE28 8F080000 */  lw          $t0, 0x0($t8)
/* 1F7DAC 801DFE2C 24040007 */  addiu       $a0, $zero, 0x7
/* 1F7DB0 801DFE30 00084880 */  sll         $t1, $t0, 2
/* 1F7DB4 801DFE34 00290821 */  addu        $at, $at, $t1
/* 1F7DB8 801DFE38 0C002DAF */  jal         finish_current_thread
/* 1F7DBC 801DFE3C E428ADE0 */   swc1       $f8, %lo(D_800EADE0)($at)
/* 1F7DC0 801DFE40 8E0D0000 */  lw          $t5, 0x0($s0)
/* 1F7DC4 801DFE44 3C01801E */  lui         $at, %hi(D_801E5D40_ovl13)
/* 1F7DC8 801DFE48 C42A5D40 */  lwc1        $f10, %lo(D_801E5D40_ovl13)($at)
/* 1F7DCC 801DFE4C 8DAA0000 */  lw          $t2, 0x0($t5)
/* 1F7DD0 801DFE50 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F7DD4 801DFE54 2404000A */  addiu       $a0, $zero, 0xA
/* 1F7DD8 801DFE58 000A7080 */  sll         $t6, $t2, 2
/* 1F7DDC 801DFE5C 002E0821 */  addu        $at, $at, $t6
/* 1F7DE0 801DFE60 0C002DAF */  jal         finish_current_thread
/* 1F7DE4 801DFE64 E42AADE0 */   swc1       $f10, %lo(D_800EADE0)($at)
/* 1F7DE8 801DFE68 8E050000 */  lw          $a1, 0x0($s0)
/* 1F7DEC 801DFE6C 44800000 */  mtc1        $zero, $f0
/* 1F7DF0 801DFE70 3C02800F */  lui         $v0, %hi(D_800EADE0)
/* 1F7DF4 801DFE74 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F7DF8 801DFE78 2442ADE0 */  addiu       $v0, $v0, %lo(D_800EADE0)
/* 1F7DFC 801DFE7C 3C18800E */  lui         $t8, %hi(D_800DFBD0)
/* 1F7E00 801DFE80 00195880 */  sll         $t3, $t9, 2
/* 1F7E04 801DFE84 004B6021 */  addu        $t4, $v0, $t3
/* 1F7E08 801DFE88 E5800000 */  swc1        $f0, 0x0($t4)
/* 1F7E0C 801DFE8C 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7E10 801DFE90 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F7E14 801DFE94 24040002 */  addiu       $a0, $zero, 0x2
/* 1F7E18 801DFE98 00031880 */  sll         $v1, $v1, 2
/* 1F7E1C 801DFE9C 0303C021 */  addu        $t8, $t8, $v1
/* 1F7E20 801DFEA0 8F18FBD0 */  lw          $t8, %lo(D_800DFBD0)($t8)
/* 1F7E24 801DFEA4 00437821 */  addu        $t7, $v0, $v1
/* 1F7E28 801DFEA8 C5E40000 */  lwc1        $f4, 0x0($t7)
/* 1F7E2C 801DFEAC 8F080008 */  lw          $t0, 0x8($t8)
/* 1F7E30 801DFEB0 E5040030 */  swc1        $f4, 0x30($t0)
/* 1F7E34 801DFEB4 8E050000 */  lw          $a1, 0x0($s0)
/* 1F7E38 801DFEB8 8CA90000 */  lw          $t1, 0x0($a1)
/* 1F7E3C 801DFEBC 00096880 */  sll         $t5, $t1, 2
/* 1F7E40 801DFEC0 002D0821 */  addu        $at, $at, $t5
/* 1F7E44 801DFEC4 E4203750 */  swc1        $f0, %lo(D_800E3750)($at)
/* 1F7E48 801DFEC8 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7E4C 801DFECC 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F7E50 801DFED0 00031880 */  sll         $v1, $v1, 2
/* 1F7E54 801DFED4 00230821 */  addu        $at, $at, $v1
/* 1F7E58 801DFED8 C4263750 */  lwc1        $f6, %lo(D_800E3750)($at)
/* 1F7E5C 801DFEDC 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F7E60 801DFEE0 00230821 */  addu        $at, $at, $v1
/* 1F7E64 801DFEE4 E4263210 */  swc1        $f6, %lo(D_800E3210)($at)
/* 1F7E68 801DFEE8 8CAA0000 */  lw          $t2, 0x0($a1)
/* 1F7E6C 801DFEEC 3C01801E */  lui         $at, %hi(D_801E5D44_ovl13)
/* 1F7E70 801DFEF0 C4285D44 */  lwc1        $f8, %lo(D_801E5D44_ovl13)($at)
/* 1F7E74 801DFEF4 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F7E78 801DFEF8 000A7080 */  sll         $t6, $t2, 2
/* 1F7E7C 801DFEFC 002E0821 */  addu        $at, $at, $t6
/* 1F7E80 801DFF00 E4283C90 */  swc1        $f8, %lo(D_800E3C90)($at)
/* 1F7E84 801DFF04 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7E88 801DFF08 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F7E8C 801DFF0C 00031880 */  sll         $v1, $v1, 2
/* 1F7E90 801DFF10 00230821 */  addu        $at, $at, $v1
/* 1F7E94 801DFF14 C42A6A10 */  lwc1        $f10, %lo(D_800E6A10)($at)
/* 1F7E98 801DFF18 3C014100 */  lui         $at, (0x41000000 >> 16)
/* 1F7E9C 801DFF1C 44812000 */  mtc1        $at, $f4
/* 1F7EA0 801DFF20 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F7EA4 801DFF24 00230821 */  addu        $at, $at, $v1
/* 1F7EA8 801DFF28 46045182 */  mul.s       $f6, $f10, $f4
/* 1F7EAC 801DFF2C E42664D0 */  swc1        $f6, %lo(D_800E64D0)($at)
/* 1F7EB0 801DFF30 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F7EB4 801DFF34 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F7EB8 801DFF38 00195880 */  sll         $t3, $t9, 2
/* 1F7EBC 801DFF3C 002B0821 */  addu        $at, $at, $t3
/* 1F7EC0 801DFF40 0C02BBFF */  jal         func_800AEFFC
/* 1F7EC4 801DFF44 E4206690 */   swc1       $f0, %lo(D_800E6690)($at)
/* 1F7EC8 801DFF48 8E050000 */  lw          $a1, 0x0($s0)
/* 1F7ECC 801DFF4C 44804000 */  mtc1        $zero, $f8
/* 1F7ED0 801DFF50 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F7ED4 801DFF54 8CAC0000 */  lw          $t4, 0x0($a1)
/* 1F7ED8 801DFF58 44805000 */  mtc1        $zero, $f10
/* 1F7EDC 801DFF5C 3C02800E */  lui         $v0, %hi(D_800E6690)
/* 1F7EE0 801DFF60 000C7880 */  sll         $t7, $t4, 2
/* 1F7EE4 801DFF64 002F0821 */  addu        $at, $at, $t7
/* 1F7EE8 801DFF68 E428A6E0 */  swc1        $f8, %lo(D_800EA6E0)($at)
/* 1F7EEC 801DFF6C 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7EF0 801DFF70 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F7EF4 801DFF74 24426690 */  addiu       $v0, $v0, %lo(D_800E6690)
/* 1F7EF8 801DFF78 00031880 */  sll         $v1, $v1, 2
/* 1F7EFC 801DFF7C 00230821 */  addu        $at, $at, $v1
/* 1F7F00 801DFF80 C422A6E0 */  lwc1        $f2, %lo(D_800EA6E0)($at)
/* 1F7F04 801DFF84 3C01800F */  lui         $at, %hi(D_800EB320)
/* 1F7F08 801DFF88 00230821 */  addu        $at, $at, $v1
/* 1F7F0C 801DFF8C E422B320 */  swc1        $f2, %lo(D_800EB320)($at)
/* 1F7F10 801DFF90 8CB80000 */  lw          $t8, 0x0($a1)
/* 1F7F14 801DFF94 3C01800F */  lui         $at, %hi(D_800EB160)
/* 1F7F18 801DFF98 3C040001 */  lui         $a0, (0x1042D >> 16)
/* 1F7F1C 801DFF9C 00184080 */  sll         $t0, $t8, 2
/* 1F7F20 801DFFA0 00280821 */  addu        $at, $at, $t0
/* 1F7F24 801DFFA4 E422B160 */  swc1        $f2, %lo(D_800EB160)($at)
/* 1F7F28 801DFFA8 8CA90000 */  lw          $t1, 0x0($a1)
/* 1F7F2C 801DFFAC 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F7F30 801DFFB0 3484042D */  ori         $a0, $a0, (0x1042D & 0xFFFF)
/* 1F7F34 801DFFB4 00096880 */  sll         $t5, $t1, 2
/* 1F7F38 801DFFB8 004D5021 */  addu        $t2, $v0, $t5
/* 1F7F3C 801DFFBC E54A0000 */  swc1        $f10, 0x0($t2)
/* 1F7F40 801DFFC0 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F7F44 801DFFC4 8FAC0060 */  lw          $t4, 0x60($sp)
/* 1F7F48 801DFFC8 C7A80068 */  lwc1        $f8, 0x68($sp)
/* 1F7F4C 801DFFCC 00031880 */  sll         $v1, $v1, 2
/* 1F7F50 801DFFD0 00437021 */  addu        $t6, $v0, $v1
/* 1F7F54 801DFFD4 C5C40000 */  lwc1        $f4, 0x0($t6)
/* 1F7F58 801DFFD8 00230821 */  addu        $at, $at, $v1
/* 1F7F5C 801DFFDC C7AA0064 */  lwc1        $f10, 0x64($sp)
/* 1F7F60 801DFFE0 E42464D0 */  swc1        $f4, %lo(D_800E64D0)($at)
/* 1F7F64 801DFFE4 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F7F68 801DFFE8 3C01801E */  lui         $at, %hi(D_801E5D48_ovl13)
/* 1F7F6C 801DFFEC C4265D48 */  lwc1        $f6, %lo(D_801E5D48_ovl13)($at)
/* 1F7F70 801DFFF0 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F7F74 801DFFF4 00195880 */  sll         $t3, $t9, 2
/* 1F7F78 801DFFF8 002B0821 */  addu        $at, $at, $t3
/* 1F7F7C 801DFFFC E4266850 */  swc1        $f6, %lo(D_800E6850)($at)
/* 1F7F80 801E0000 8CAF0000 */  lw          $t7, 0x0($a1)
/* 1F7F84 801E0004 3C01800E */  lui         $at, %hi(D_800E5F90)
/* 1F7F88 801E0008 000FC080 */  sll         $t8, $t7, 2
/* 1F7F8C 801E000C 00380821 */  addu        $at, $at, $t8
/* 1F7F90 801E0010 AC2C5F90 */  sw          $t4, %lo(D_800E5F90)($at)
/* 1F7F94 801E0014 8CA80000 */  lw          $t0, 0x0($a1)
/* 1F7F98 801E0018 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 1F7F9C 801E001C 00084880 */  sll         $t1, $t0, 2
/* 1F7FA0 801E0020 00290821 */  addu        $at, $at, $t1
/* 1F7FA4 801E0024 E4286BD0 */  swc1        $f8, %lo(D_800E6BD0)($at)
/* 1F7FA8 801E0028 8CAD0000 */  lw          $t5, 0x0($a1)
/* 1F7FAC 801E002C 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 1F7FB0 801E0030 000D5080 */  sll         $t2, $t5, 2
/* 1F7FB4 801E0034 002A0821 */  addu        $at, $at, $t2
/* 1F7FB8 801E0038 0C02A855 */  jal         func_800AA154
/* 1F7FBC 801E003C E42A2790 */   swc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 1F7FC0 801E0040 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F7FC4 801E0044 3C0F800E */  lui         $t7, %hi(D_800DFBD0)
/* 1F7FC8 801E0048 27A40054 */  addiu       $a0, $sp, 0x54
/* 1F7FCC 801E004C 8DD90000 */  lw          $t9, 0x0($t6)
/* 1F7FD0 801E0050 00195880 */  sll         $t3, $t9, 2
/* 1F7FD4 801E0054 01EB7821 */  addu        $t7, $t7, $t3
/* 1F7FD8 801E0058 8DEFFBD0 */  lw          $t7, %lo(D_800DFBD0)($t7)
/* 1F7FDC 801E005C 0C0291E5 */  jal         func_800A4794
/* 1F7FE0 801E0060 8DE50004 */   lw         $a1, 0x4($t7)
/* 1F7FE4 801E0064 8E0C0000 */  lw          $t4, 0x0($s0)
/* 1F7FE8 801E0068 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1F7FEC 801E006C 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F7FF0 801E0070 8D830000 */  lw          $v1, 0x0($t4)
/* 1F7FF4 801E0074 3C18800E */  lui         $t8, %hi(D_800E5F90)
/* 1F7FF8 801E0078 3C08800E */  lui         $t0, %hi(D_800E6BD0)
/* 1F7FFC 801E007C 00031880 */  sll         $v1, $v1, 2
/* 1F8000 801E0080 01234821 */  addu        $t1, $t1, $v1
/* 1F8004 801E0084 8D29FBD0 */  lw          $t1, %lo(D_800DFBD0)($t1)
/* 1F8008 801E0088 00230821 */  addu        $at, $at, $v1
/* 1F800C 801E008C C4246A10 */  lwc1        $f4, %lo(D_800E6A10)($at)
/* 1F8010 801E0090 8D2D0004 */  lw          $t5, 0x4($t1)
/* 1F8014 801E0094 25086BD0 */  addiu       $t0, $t0, %lo(D_800E6BD0)
/* 1F8018 801E0098 27185F90 */  addiu       $t8, $t8, %lo(D_800E5F90)
/* 1F801C 801E009C C5A60024 */  lwc1        $f6, 0x24($t5)
/* 1F8020 801E00A0 00782021 */  addu        $a0, $v1, $t8
/* 1F8024 801E00A4 00682821 */  addu        $a1, $v1, $t0
/* 1F8028 801E00A8 46062202 */  mul.s       $f8, $f4, $f6
/* 1F802C 801E00AC 44064000 */  mfc1        $a2, $f8
/* 1F8030 801E00B0 0C03E65D */  jal         func_800F9974
/* 1F8034 801E00B4 00000000 */   nop
/* 1F8038 801E00B8 8E050000 */  lw          $a1, 0x0($s0)
/* 1F803C 801E00BC C7AA0058 */  lwc1        $f10, 0x58($sp)
/* 1F8040 801E00C0 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 1F8044 801E00C4 8CAA0000 */  lw          $t2, 0x0($a1)
/* 1F8048 801E00C8 000A7080 */  sll         $t6, $t2, 2
/* 1F804C 801E00CC 002E0821 */  addu        $at, $at, $t6
/* 1F8050 801E00D0 E42A2790 */  swc1        $f10, %lo(gEntitiesNextPosYArray)($at)
/* 1F8054 801E00D4 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F8058 801E00D8 3C01800F */  lui         $at, %hi(D_800EB160)
/* 1F805C 801E00DC 00031880 */  sll         $v1, $v1, 2
/* 1F8060 801E00E0 00230821 */  addu        $at, $at, $v1
/* 1F8064 801E00E4 C430B160 */  lwc1        $f16, %lo(D_800EB160)($at)
/* 1F8068 801E00E8 3C01800F */  lui         $at, %hi(D_800EB320)
/* 1F806C 801E00EC 00230821 */  addu        $at, $at, $v1
/* 1F8070 801E00F0 C420B320 */  lwc1        $f0, %lo(D_800EB320)($at)
/* 1F8074 801E00F4 4600803C */  c.lt.s      $f16, $f0
/* 1F8078 801E00F8 00000000 */  nop
/* 1F807C 801E00FC 45020009 */  bc1fl       L801E0124_ovl13
/* 1F8080 801E0100 46008281 */   sub.s      $f10, $f16, $f0
/* 1F8084 801E0104 46008101 */  sub.s       $f4, $f16, $f0
/* 1F8088 801E0108 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F808C 801E010C 00230821 */  addu        $at, $at, $v1
/* 1F8090 801E0110 46002187 */  neg.s       $f6, $f4
/* 1F8094 801E0114 46003207 */  neg.s       $f8, $f6
/* 1F8098 801E0118 10000006 */  b           L801E0134_ovl13
/* 1F809C 801E011C E4283210 */   swc1       $f8, %lo(D_800E3210)($at)
/* 1F80A0 801E0120 46008281 */  sub.s       $f10, $f16, $f0
glabel L801E0124_ovl13
/* 1F80A4 801E0124 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F80A8 801E0128 00230821 */  addu        $at, $at, $v1
/* 1F80AC 801E012C 46005107 */  neg.s       $f4, $f10
/* 1F80B0 801E0130 E4243210 */  swc1        $f4, %lo(D_800E3210)($at)
glabel L801E0134_ovl13
/* 1F80B4 801E0134 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F80B8 801E0138 3C01800F */  lui         $at, %hi(D_800EB320)
/* 1F80BC 801E013C 00031880 */  sll         $v1, $v1, 2
/* 1F80C0 801E0140 00230821 */  addu        $at, $at, $v1
/* 1F80C4 801E0144 C420B320 */  lwc1        $f0, %lo(D_800EB320)($at)
/* 1F80C8 801E0148 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F80CC 801E014C 00230821 */  addu        $at, $at, $v1
/* 1F80D0 801E0150 C42CA6E0 */  lwc1        $f12, %lo(D_800EA6E0)($at)
/* 1F80D4 801E0154 3C01800F */  lui         $at, %hi(D_800EB160)
/* 1F80D8 801E0158 00230821 */  addu        $at, $at, $v1
/* 1F80DC 801E015C 460C003C */  c.lt.s      $f0, $f12
/* 1F80E0 801E0160 00000000 */  nop
/* 1F80E4 801E0164 45020006 */  bc1fl       L801E0180_ovl13
/* 1F80E8 801E0168 460C0381 */   sub.s      $f14, $f0, $f12
/* 1F80EC 801E016C 460C0381 */  sub.s       $f14, $f0, $f12
/* 1F80F0 801E0170 46007187 */  neg.s       $f6, $f14
/* 1F80F4 801E0174 10000003 */  b           L801E0184_ovl13
/* 1F80F8 801E0178 E7A6004C */   swc1       $f6, 0x4C($sp)
/* 1F80FC 801E017C 460C0381 */  sub.s       $f14, $f0, $f12
glabel L801E0180_ovl13
/* 1F8100 801E0180 E7AE004C */  swc1        $f14, 0x4C($sp)
glabel L801E0184_ovl13
/* 1F8104 801E0184 C430B160 */  lwc1        $f16, %lo(D_800EB160)($at)
/* 1F8108 801E0188 C7A8004C */  lwc1        $f8, 0x4C($sp)
/* 1F810C 801E018C 4600803C */  c.lt.s      $f16, $f0
/* 1F8110 801E0190 00000000 */  nop
/* 1F8114 801E0194 45020005 */  bc1fl       L801E01AC_ovl13
/* 1F8118 801E0198 46008481 */   sub.s      $f18, $f16, $f0
/* 1F811C 801E019C 46008481 */  sub.s       $f18, $f16, $f0
/* 1F8120 801E01A0 10000003 */  b           L801E01B0_ovl13
/* 1F8124 801E01A4 46009087 */   neg.s      $f2, $f18
/* 1F8128 801E01A8 46008481 */  sub.s       $f18, $f16, $f0
glabel L801E01AC_ovl13
/* 1F812C 801E01AC 46009086 */  mov.s       $f2, $f18
glabel L801E01B0_ovl13
/* 1F8130 801E01B0 4602403C */  c.lt.s      $f8, $f2
/* 1F8134 801E01B4 00000000 */  nop
/* 1F8138 801E01B8 45020017 */  bc1fl       L801E0218_ovl13
/* 1F813C 801E01BC 460C003C */   c.lt.s     $f0, $f12
/* 1F8140 801E01C0 460C003C */  c.lt.s      $f0, $f12
/* 1F8144 801E01C4 00000000 */  nop
/* 1F8148 801E01C8 45020004 */  bc1fl       L801E01DC_ovl13
/* 1F814C 801E01CC 46007086 */   mov.s      $f2, $f14
/* 1F8150 801E01D0 10000002 */  b           L801E01DC_ovl13
/* 1F8154 801E01D4 46007087 */   neg.s      $f2, $f14
/* 1F8158 801E01D8 46007086 */  mov.s       $f2, $f14
glabel L801E01DC_ovl13
/* 1F815C 801E01DC 4600803C */  c.lt.s      $f16, $f0
/* 1F8160 801E01E0 00000000 */  nop
/* 1F8164 801E01E4 45020004 */  bc1fl       L801E01F8_ovl13
/* 1F8168 801E01E8 46009006 */   mov.s      $f0, $f18
/* 1F816C 801E01EC 10000002 */  b           L801E01F8_ovl13
/* 1F8170 801E01F0 46009007 */   neg.s      $f0, $f18
/* 1F8174 801E01F4 46009006 */  mov.s       $f0, $f18
glabel L801E01F8_ovl13
/* 1F8178 801E01F8 46001281 */  sub.s       $f10, $f2, $f0
/* 1F817C 801E01FC 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F8180 801E0200 00230821 */  addu        $at, $at, $v1
/* 1F8184 801E0204 46005107 */  neg.s       $f4, $f10
/* 1F8188 801E0208 46002187 */  neg.s       $f6, $f4
/* 1F818C 801E020C 10000014 */  b           L801E0260_ovl13
/* 1F8190 801E0210 E4263750 */   swc1       $f6, %lo(D_800E3750)($at)
/* 1F8194 801E0214 460C003C */  c.lt.s      $f0, $f12
glabel L801E0218_ovl13
/* 1F8198 801E0218 00000000 */  nop
/* 1F819C 801E021C 45020004 */  bc1fl       L801E0230_ovl13
/* 1F81A0 801E0220 46007086 */   mov.s      $f2, $f14
/* 1F81A4 801E0224 10000002 */  b           L801E0230_ovl13
/* 1F81A8 801E0228 46007087 */   neg.s      $f2, $f14
/* 1F81AC 801E022C 46007086 */  mov.s       $f2, $f14
glabel L801E0230_ovl13
/* 1F81B0 801E0230 4600803C */  c.lt.s      $f16, $f0
/* 1F81B4 801E0234 00000000 */  nop
/* 1F81B8 801E0238 45020004 */  bc1fl       L801E024C_ovl13
/* 1F81BC 801E023C 46009006 */   mov.s      $f0, $f18
/* 1F81C0 801E0240 10000002 */  b           L801E024C_ovl13
/* 1F81C4 801E0244 46009007 */   neg.s      $f0, $f18
/* 1F81C8 801E0248 46009006 */  mov.s       $f0, $f18
glabel L801E024C_ovl13
/* 1F81CC 801E024C 46001201 */  sub.s       $f8, $f2, $f0
/* 1F81D0 801E0250 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F81D4 801E0254 00230821 */  addu        $at, $at, $v1
/* 1F81D8 801E0258 46004287 */  neg.s       $f10, $f8
/* 1F81DC 801E025C E42A3750 */  swc1        $f10, %lo(D_800E3750)($at)
glabel L801E0260_ovl13
/* 1F81E0 801E0260 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F81E4 801E0264 3C06800E */  lui         $a2, %hi(D_800DFBD0)
/* 1F81E8 801E0268 24C6FBD0 */  addiu       $a2, $a2, %lo(D_800DFBD0)
/* 1F81EC 801E026C 00195880 */  sll         $t3, $t9, 2
/* 1F81F0 801E0270 00CB7821 */  addu        $t7, $a2, $t3
/* 1F81F4 801E0274 8DEC0000 */  lw          $t4, 0x0($t7)
/* 1F81F8 801E0278 44802000 */  mtc1        $zero, $f4
/* 1F81FC 801E027C 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F8200 801E0280 8D980004 */  lw          $t8, 0x4($t4)
/* 1F8204 801E0284 E7040024 */  swc1        $f4, 0x24($t8)
/* 1F8208 801E0288 8E080000 */  lw          $t0, 0x0($s0)
/* 1F820C 801E028C 8D090000 */  lw          $t1, 0x0($t0)
/* 1F8210 801E0290 00096880 */  sll         $t5, $t1, 2
/* 1F8214 801E0294 00CD5021 */  addu        $t2, $a2, $t5
/* 1F8218 801E0298 8D4E0000 */  lw          $t6, 0x0($t2)
/* 1F821C 801E029C 3C0A800F */  lui         $t2, %hi(D_800E8920)
/* 1F8220 801E02A0 8DC20004 */  lw          $v0, 0x4($t6)
/* 1F8224 801E02A4 C4420024 */  lwc1        $f2, 0x24($v0)
/* 1F8228 801E02A8 E4420020 */  swc1        $f2, 0x20($v0)
/* 1F822C 801E02AC 8E190000 */  lw          $t9, 0x0($s0)
/* 1F8230 801E02B0 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F8234 801E02B4 000B7880 */  sll         $t7, $t3, 2
/* 1F8238 801E02B8 00CF6021 */  addu        $t4, $a2, $t7
/* 1F823C 801E02BC 8D980000 */  lw          $t8, 0x0($t4)
/* 1F8240 801E02C0 8F080004 */  lw          $t0, 0x4($t8)
/* 1F8244 801E02C4 E502001C */  swc1        $f2, 0x1C($t0)
/* 1F8248 801E02C8 8E050000 */  lw          $a1, 0x0($s0)
/* 1F824C 801E02CC 8CA90000 */  lw          $t1, 0x0($a1)
/* 1F8250 801E02D0 00096880 */  sll         $t5, $t1, 2
/* 1F8254 801E02D4 002D0821 */  addu        $at, $at, $t5
/* 1F8258 801E02D8 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F825C 801E02DC 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F8260 801E02E0 00031880 */  sll         $v1, $v1, 2
/* 1F8264 801E02E4 01435021 */  addu        $t2, $t2, $v1
/* 1F8268 801E02E8 8D4A8920 */  lw          $t2, %lo(D_800E8920)($t2)
/* 1F826C 801E02EC 5540000E */  bnel        $t2, $zero, L801E0328_ovl13
/* 1F8270 801E02F0 00C35821 */   addu       $t3, $a2, $v1
glabel L801E02F4_ovl13
/* 1F8274 801E02F4 0C002DAF */  jal         finish_current_thread
/* 1F8278 801E02F8 24040001 */   addiu      $a0, $zero, 0x1
/* 1F827C 801E02FC 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F8280 801E0300 3C19800F */  lui         $t9, %hi(D_800E8920)
/* 1F8284 801E0304 8DC30000 */  lw          $v1, 0x0($t6)
/* 1F8288 801E0308 00031880 */  sll         $v1, $v1, 2
/* 1F828C 801E030C 0323C821 */  addu        $t9, $t9, $v1
/* 1F8290 801E0310 8F398920 */  lw          $t9, %lo(D_800E8920)($t9)
/* 1F8294 801E0314 1320FFF7 */  beqz        $t9, L801E02F4_ovl13
/* 1F8298 801E0318 00000000 */   nop
/* 1F829C 801E031C 3C06800E */  lui         $a2, %hi(D_800DFBD0)
/* 1F82A0 801E0320 24C6FBD0 */  addiu       $a2, $a2, %lo(D_800DFBD0)
/* 1F82A4 801E0324 00C35821 */  addu        $t3, $a2, $v1
glabel L801E0328_ovl13
/* 1F82A8 801E0328 8D6F0000 */  lw          $t7, 0x0($t3)
/* 1F82AC 801E032C 44803000 */  mtc1        $zero, $f6
/* 1F82B0 801E0330 44804000 */  mtc1        $zero, $f8
/* 1F82B4 801E0334 8DEC0004 */  lw          $t4, 0x4($t7)
/* 1F82B8 801E0338 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F82BC 801E033C E5860038 */  swc1        $f6, 0x38($t4)
/* 1F82C0 801E0340 8E180000 */  lw          $t8, 0x0($s0)
/* 1F82C4 801E0344 8F080000 */  lw          $t0, 0x0($t8)
/* 1F82C8 801E0348 00084880 */  sll         $t1, $t0, 2
/* 1F82CC 801E034C 00C96821 */  addu        $t5, $a2, $t1
/* 1F82D0 801E0350 8DAA0000 */  lw          $t2, 0x0($t5)
/* 1F82D4 801E0354 8D420004 */  lw          $v0, 0x4($t2)
/* 1F82D8 801E0358 C4420038 */  lwc1        $f2, 0x38($v0)
/* 1F82DC 801E035C E4420034 */  swc1        $f2, 0x34($v0)
/* 1F82E0 801E0360 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F82E4 801E0364 8DD90000 */  lw          $t9, 0x0($t6)
/* 1F82E8 801E0368 00195880 */  sll         $t3, $t9, 2
/* 1F82EC 801E036C 00CB7821 */  addu        $t7, $a2, $t3
/* 1F82F0 801E0370 8DEC0000 */  lw          $t4, 0x0($t7)
/* 1F82F4 801E0374 8D980004 */  lw          $t8, 0x4($t4)
/* 1F82F8 801E0378 E7020030 */  swc1        $f2, 0x30($t8)
/* 1F82FC 801E037C 8E080000 */  lw          $t0, 0x0($s0)
/* 1F8300 801E0380 8D090000 */  lw          $t1, 0x0($t0)
/* 1F8304 801E0384 00096880 */  sll         $t5, $t1, 2
/* 1F8308 801E0388 00CD5021 */  addu        $t2, $a2, $t5
/* 1F830C 801E038C 8D4E0000 */  lw          $t6, 0x0($t2)
/* 1F8310 801E0390 8DD90008 */  lw          $t9, 0x8($t6)
/* 1F8314 801E0394 E7280038 */  swc1        $f8, 0x38($t9)
/* 1F8318 801E0398 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F831C 801E039C 8D6F0000 */  lw          $t7, 0x0($t3)
/* 1F8320 801E03A0 000F6080 */  sll         $t4, $t7, 2
/* 1F8324 801E03A4 00CCC021 */  addu        $t8, $a2, $t4
/* 1F8328 801E03A8 8F080000 */  lw          $t0, 0x0($t8)
/* 1F832C 801E03AC 8D040008 */  lw          $a0, 0x8($t0)
/* 1F8330 801E03B0 3C08800E */  lui         $t0, %hi(D_800E6A10)
/* 1F8334 801E03B4 25086A10 */  addiu       $t0, $t0, %lo(D_800E6A10)
/* 1F8338 801E03B8 C4820038 */  lwc1        $f2, 0x38($a0)
/* 1F833C 801E03BC E4820034 */  swc1        $f2, 0x34($a0)
/* 1F8340 801E03C0 8E090000 */  lw          $t1, 0x0($s0)
/* 1F8344 801E03C4 8D2D0000 */  lw          $t5, 0x0($t1)
/* 1F8348 801E03C8 000D5080 */  sll         $t2, $t5, 2
/* 1F834C 801E03CC 00CA7021 */  addu        $t6, $a2, $t2
/* 1F8350 801E03D0 8DD90000 */  lw          $t9, 0x0($t6)
/* 1F8354 801E03D4 8F2B0008 */  lw          $t3, 0x8($t9)
/* 1F8358 801E03D8 E5620030 */  swc1        $f2, 0x30($t3)
/* 1F835C 801E03DC 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F8360 801E03E0 8DEC0000 */  lw          $t4, 0x0($t7)
/* 1F8364 801E03E4 000CC080 */  sll         $t8, $t4, 2
/* 1F8368 801E03E8 03082821 */  addu        $a1, $t8, $t0
/* 1F836C 801E03EC C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 1F8370 801E03F0 46005107 */  neg.s       $f4, $f10
/* 1F8374 801E03F4 E4A40000 */  swc1        $f4, 0x0($a1)
/* 1F8378 801E03F8 0C02BB30 */  jal         func_800AECC0
/* 1F837C 801E03FC C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1F8380 801E0400 3C040001 */  lui         $a0, (0x1041C >> 16)
/* 1F8384 801E0404 3484041C */  ori         $a0, $a0, (0x1041C & 0xFFFF)
/* 1F8388 801E0408 0C02A7E6 */  jal         func_800A9F98
/* 1F838C 801E040C 3C054040 */   lui        $a1, (0x40400000 >> 16)
/* 1F8390 801E0410 0C02CCFD */  jal         func_800B33F4
/* 1F8394 801E0414 00000000 */   nop
/* 1F8398 801E0418 0C03EE45 */  jal         func_800FB914
/* 1F839C 801E041C 24040001 */   addiu      $a0, $zero, 0x1
/* 1F83A0 801E0420 0C029D9E */  jal         play_sound
/* 1F83A4 801E0424 24040185 */   addiu      $a0, $zero, 0x185
/* 1F83A8 801E0428 00002025 */  move        $a0, $zero
/* 1F83AC 801E042C 0C02ED1A */  jal         func_800BB468
/* 1F83B0 801E0430 00002825 */   move       $a1, $zero
/* 1F83B4 801E0434 2404001C */  addiu       $a0, $zero, 0x1C
/* 1F83B8 801E0438 0C06B30D */  jal         func_801ACC34_ovl7
/* 1F83BC 801E043C 00002825 */   move       $a1, $zero
/* 1F83C0 801E0440 2404001C */  addiu       $a0, $zero, 0x1C
/* 1F83C4 801E0444 0C06B30D */  jal         func_801ACC34_ovl7
/* 1F83C8 801E0448 24050001 */   addiu      $a1, $zero, 0x1
/* 1F83CC 801E044C 0C02BC9F */  jal         func_800AF27C
/* 1F83D0 801E0450 00000000 */   nop
/* 1F83D4 801E0454 8E090000 */  lw          $t1, 0x0($s0)
/* 1F83D8 801E0458 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F83DC 801E045C 3C040001 */  lui         $a0, (0x10429 >> 16)
/* 1F83E0 801E0460 8D2D0000 */  lw          $t5, 0x0($t1)
/* 1F83E4 801E0464 34840429 */  ori         $a0, $a0, (0x10429 & 0xFFFF)
/* 1F83E8 801E0468 000D5080 */  sll         $t2, $t5, 2
/* 1F83EC 801E046C 002A0821 */  addu        $at, $at, $t2
/* 1F83F0 801E0470 0C02A855 */  jal         func_800AA154
/* 1F83F4 801E0474 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F83F8 801E0478 3C040001 */  lui         $a0, (0x1042A >> 16)
/* 1F83FC 801E047C 0C02A806 */  jal         func_800AA018
/* 1F8400 801E0480 3484042A */   ori        $a0, $a0, (0x1042A & 0xFFFF)
/* 1F8404 801E0484 0C002DAF */  jal         finish_current_thread
/* 1F8408 801E0488 24040012 */   addiu      $a0, $zero, 0x12
/* 1F840C 801E048C 8E050000 */  lw          $a1, 0x0($s0)
/* 1F8410 801E0490 3C014100 */  lui         $at, (0x41000000 >> 16)
/* 1F8414 801E0494 44813000 */  mtc1        $at, $f6
/* 1F8418 801E0498 8CAE0000 */  lw          $t6, 0x0($a1)
/* 1F841C 801E049C 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F8420 801E04A0 24040014 */  addiu       $a0, $zero, 0x14
/* 1F8424 801E04A4 000EC880 */  sll         $t9, $t6, 2
/* 1F8428 801E04A8 00390821 */  addu        $at, $at, $t9
/* 1F842C 801E04AC E4263210 */  swc1        $f6, %lo(D_800E3210)($at)
/* 1F8430 801E04B0 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F8434 801E04B4 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F8438 801E04B8 00031880 */  sll         $v1, $v1, 2
/* 1F843C 801E04BC 00230821 */  addu        $at, $at, $v1
/* 1F8440 801E04C0 C4286A10 */  lwc1        $f8, %lo(D_800E6A10)($at)
/* 1F8444 801E04C4 3C01801E */  lui         $at, %hi(D_801E5D50_ovl13)
/* 1F8448 801E04C8 D4245D50 */  ldc1        $f4, %lo(D_801E5D50_ovl13)($at)
/* 1F844C 801E04CC 460042A1 */  cvt.d.s     $f10, $f8
/* 1F8450 801E04D0 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F8454 801E04D4 46245182 */  mul.d       $f6, $f10, $f4
/* 1F8458 801E04D8 00230821 */  addu        $at, $at, $v1
/* 1F845C 801E04DC 46203220 */  cvt.s.d     $f8, $f6
/* 1F8460 801E04E0 E4286690 */  swc1        $f8, %lo(D_800E6690)($at)
/* 1F8464 801E04E4 8CAB0000 */  lw          $t3, 0x0($a1)
/* 1F8468 801E04E8 3C01801E */  lui         $at, %hi(D_801E5D58_ovl13)
/* 1F846C 801E04EC C42A5D58 */  lwc1        $f10, %lo(D_801E5D58_ovl13)($at)
/* 1F8470 801E04F0 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F8474 801E04F4 000B7880 */  sll         $t7, $t3, 2
/* 1F8478 801E04F8 002F0821 */  addu        $at, $at, $t7
/* 1F847C 801E04FC 0C002DAF */  jal         finish_current_thread
/* 1F8480 801E0500 E42A3750 */   swc1       $f10, %lo(D_800E3750)($at)
/* 1F8484 801E0504 8E050000 */  lw          $a1, 0x0($s0)
/* 1F8488 801E0508 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F848C 801E050C 44805000 */  mtc1        $zero, $f10
/* 1F8490 801E0510 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F8494 801E0514 00031880 */  sll         $v1, $v1, 2
/* 1F8498 801E0518 00230821 */  addu        $at, $at, $v1
/* 1F849C 801E051C C4246A10 */  lwc1        $f4, %lo(D_800E6A10)($at)
/* 1F84A0 801E0520 3C01C080 */  lui         $at, (0xC0800000 >> 16)
/* 1F84A4 801E0524 44813000 */  mtc1        $at, $f6
/* 1F84A8 801E0528 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F84AC 801E052C 00230821 */  addu        $at, $at, $v1
/* 1F84B0 801E0530 46062202 */  mul.s       $f8, $f4, $f6
/* 1F84B4 801E0534 44802000 */  mtc1        $zero, $f4
/* 1F84B8 801E0538 44803000 */  mtc1        $zero, $f6
/* 1F84BC 801E053C E42864D0 */  swc1        $f8, %lo(D_800E64D0)($at)
/* 1F84C0 801E0540 8CAC0000 */  lw          $t4, 0x0($a1)
/* 1F84C4 801E0544 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F84C8 801E0548 000CC080 */  sll         $t8, $t4, 2
/* 1F84CC 801E054C 00380821 */  addu        $at, $at, $t8
/* 1F84D0 801E0550 E42A3210 */  swc1        $f10, %lo(D_800E3210)($at)
/* 1F84D4 801E0554 8CA80000 */  lw          $t0, 0x0($a1)
/* 1F84D8 801E0558 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F84DC 801E055C 00084880 */  sll         $t1, $t0, 2
/* 1F84E0 801E0560 00290821 */  addu        $at, $at, $t1
/* 1F84E4 801E0564 E4246690 */  swc1        $f4, %lo(D_800E6690)($at)
/* 1F84E8 801E0568 8CAD0000 */  lw          $t5, 0x0($a1)
/* 1F84EC 801E056C 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F84F0 801E0570 000D5080 */  sll         $t2, $t5, 2
/* 1F84F4 801E0574 002A0821 */  addu        $at, $at, $t2
/* 1F84F8 801E0578 E4263750 */  swc1        $f6, %lo(D_800E3750)($at)
/* 1F84FC 801E057C 8CAE0000 */  lw          $t6, 0x0($a1)
/* 1F8500 801E0580 000EC880 */  sll         $t9, $t6, 2
/* 1F8504 801E0584 02395821 */  addu        $t3, $s1, $t9
/* 1F8508 801E0588 0C06769C */  jal         func_8019DA70_ovl7
/* 1F850C 801E058C 8D640000 */   lw         $a0, 0x0($t3)
/* 1F8510 801E0590 44804000 */  mtc1        $zero, $f8
/* 1F8514 801E0594 00000000 */  nop
/* 1F8518 801E0598 4608003C */  c.lt.s      $f0, $f8
/* 1F851C 801E059C 00000000 */  nop
/* 1F8520 801E05A0 4502000A */  bc1fl       L801E05CC_ovl13
/* 1F8524 801E05A4 8E090000 */   lw         $t1, 0x0($s0)
/* 1F8528 801E05A8 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F852C 801E05AC 8DEC0000 */  lw          $t4, 0x0($t7)
/* 1F8530 801E05B0 000CC080 */  sll         $t8, $t4, 2
/* 1F8534 801E05B4 02384021 */  addu        $t0, $s1, $t8
/* 1F8538 801E05B8 0C06769C */  jal         func_8019DA70_ovl7
/* 1F853C 801E05BC 8D040000 */   lw         $a0, 0x0($t0)
/* 1F8540 801E05C0 10000008 */  b           L801E05E4_ovl13
/* 1F8544 801E05C4 46000087 */   neg.s      $f2, $f0
/* 1F8548 801E05C8 8E090000 */  lw          $t1, 0x0($s0)
glabel L801E05CC_ovl13
/* 1F854C 801E05CC 8D2D0000 */  lw          $t5, 0x0($t1)
/* 1F8550 801E05D0 000D5080 */  sll         $t2, $t5, 2
/* 1F8554 801E05D4 022A7021 */  addu        $t6, $s1, $t2
/* 1F8558 801E05D8 0C06769C */  jal         func_8019DA70_ovl7
/* 1F855C 801E05DC 8DC40000 */   lw         $a0, 0x0($t6)
/* 1F8560 801E05E0 46000086 */  mov.s       $f2, $f0
glabel L801E05E4_ovl13
/* 1F8564 801E05E4 3C014348 */  lui         $at, (0x43480000 >> 16)
/* 1F8568 801E05E8 44815000 */  mtc1        $at, $f10
/* 1F856C 801E05EC 00000000 */  nop
/* 1F8570 801E05F0 460A103C */  c.lt.s      $f2, $f10
/* 1F8574 801E05F4 00000000 */  nop
/* 1F8578 801E05F8 45020026 */  bc1fl       L801E0694_ovl13
/* 1F857C 801E05FC 8E0F0000 */   lw         $t7, 0x0($s0)
glabel L801E0600_ovl13
/* 1F8580 801E0600 0C002DAF */  jal         finish_current_thread
/* 1F8584 801E0604 24040001 */   addiu      $a0, $zero, 0x1
/* 1F8588 801E0608 8E190000 */  lw          $t9, 0x0($s0)
/* 1F858C 801E060C 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F8590 801E0610 000B7880 */  sll         $t7, $t3, 2
/* 1F8594 801E0614 022F6021 */  addu        $t4, $s1, $t7
/* 1F8598 801E0618 0C06769C */  jal         func_8019DA70_ovl7
/* 1F859C 801E061C 8D840000 */   lw         $a0, 0x0($t4)
/* 1F85A0 801E0620 44802000 */  mtc1        $zero, $f4
/* 1F85A4 801E0624 00000000 */  nop
/* 1F85A8 801E0628 4604003C */  c.lt.s      $f0, $f4
/* 1F85AC 801E062C 00000000 */  nop
/* 1F85B0 801E0630 4502000A */  bc1fl       L801E065C_ovl13
/* 1F85B4 801E0634 8E0A0000 */   lw         $t2, 0x0($s0)
/* 1F85B8 801E0638 8E180000 */  lw          $t8, 0x0($s0)
/* 1F85BC 801E063C 8F080000 */  lw          $t0, 0x0($t8)
/* 1F85C0 801E0640 00084880 */  sll         $t1, $t0, 2
/* 1F85C4 801E0644 02296821 */  addu        $t5, $s1, $t1
/* 1F85C8 801E0648 0C06769C */  jal         func_8019DA70_ovl7
/* 1F85CC 801E064C 8DA40000 */   lw         $a0, 0x0($t5)
/* 1F85D0 801E0650 10000008 */  b           L801E0674_ovl13
/* 1F85D4 801E0654 46000087 */   neg.s      $f2, $f0
/* 1F85D8 801E0658 8E0A0000 */  lw          $t2, 0x0($s0)
glabel L801E065C_ovl13
/* 1F85DC 801E065C 8D4E0000 */  lw          $t6, 0x0($t2)
/* 1F85E0 801E0660 000EC880 */  sll         $t9, $t6, 2
/* 1F85E4 801E0664 02395821 */  addu        $t3, $s1, $t9
/* 1F85E8 801E0668 0C06769C */  jal         func_8019DA70_ovl7
/* 1F85EC 801E066C 8D640000 */   lw         $a0, 0x0($t3)
/* 1F85F0 801E0670 46000086 */  mov.s       $f2, $f0
glabel L801E0674_ovl13
/* 1F85F4 801E0674 3C014348 */  lui         $at, (0x43480000 >> 16)
/* 1F85F8 801E0678 44813000 */  mtc1        $at, $f6
/* 1F85FC 801E067C 00000000 */  nop
/* 1F8600 801E0680 4606103C */  c.lt.s      $f2, $f6
/* 1F8604 801E0684 00000000 */  nop
/* 1F8608 801E0688 4501FFDD */  bc1t        L801E0600_ovl13
/* 1F860C 801E068C 00000000 */   nop
/* 1F8610 801E0690 8E0F0000 */  lw          $t7, 0x0($s0)
glabel L801E0694_ovl13
/* 1F8614 801E0694 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F8618 801E0698 2404000A */  addiu       $a0, $zero, 0xA
/* 1F861C 801E069C 8DE30000 */  lw          $v1, 0x0($t7)
/* 1F8620 801E06A0 00031880 */  sll         $v1, $v1, 2
/* 1F8624 801E06A4 00230821 */  addu        $at, $at, $v1
/* 1F8628 801E06A8 C42864D0 */  lwc1        $f8, %lo(D_800E64D0)($at)
/* 1F862C 801E06AC 3C01801E */  lui         $at, %hi(D_801E5D5C_ovl13)
/* 1F8630 801E06B0 C42A5D5C */  lwc1        $f10, %lo(D_801E5D5C_ovl13)($at)
/* 1F8634 801E06B4 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F8638 801E06B8 00230821 */  addu        $at, $at, $v1
/* 1F863C 801E06BC 460A4102 */  mul.s       $f4, $f8, $f10
/* 1F8640 801E06C0 0C002DAF */  jal         finish_current_thread
/* 1F8644 801E06C4 E4246690 */   swc1       $f4, %lo(D_800E6690)($at)
/* 1F8648 801E06C8 0C02CD48 */  jal         func_800B3520
/* 1F864C 801E06CC 00000000 */   nop
/* 1F8650 801E06D0 0C02BC9F */  jal         func_800AF27C
/* 1F8654 801E06D4 00000000 */   nop
/* 1F8658 801E06D8 3C040001 */  lui         $a0, (0x10423 >> 16)
/* 1F865C 801E06DC 0C02A855 */  jal         func_800AA154
/* 1F8660 801E06E0 34840423 */   ori        $a0, $a0, (0x10423 & 0xFFFF)
/* 1F8664 801E06E4 8E0C0000 */  lw          $t4, 0x0($s0)
/* 1F8668 801E06E8 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1F866C 801E06EC 44803000 */  mtc1        $zero, $f6
/* 1F8670 801E06F0 8D980000 */  lw          $t8, 0x0($t4)
/* 1F8674 801E06F4 3C0B800E */  lui         $t3, %hi(D_800DFBD0)
/* 1F8678 801E06F8 44804000 */  mtc1        $zero, $f8
/* 1F867C 801E06FC 00184080 */  sll         $t0, $t8, 2
/* 1F8680 801E0700 01284821 */  addu        $t1, $t1, $t0
/* 1F8684 801E0704 8D29FBD0 */  lw          $t1, %lo(D_800DFBD0)($t1)
/* 1F8688 801E0708 3C08800E */  lui         $t0, %hi(D_800DFBD0)
/* 1F868C 801E070C 44805000 */  mtc1        $zero, $f10
/* 1F8690 801E0710 8D2D0004 */  lw          $t5, 0x4($t1)
/* 1F8694 801E0714 44802000 */  mtc1        $zero, $f4
/* 1F8698 801E0718 3C06800F */  lui         $a2, %hi(D_800EAFA0)
/* 1F869C 801E071C E5A60024 */  swc1        $f6, 0x24($t5)
/* 1F86A0 801E0720 8E0A0000 */  lw          $t2, 0x0($s0)
/* 1F86A4 801E0724 44803000 */  mtc1        $zero, $f6
/* 1F86A8 801E0728 24C6AFA0 */  addiu       $a2, $a2, %lo(D_800EAFA0)
/* 1F86AC 801E072C 8D4E0000 */  lw          $t6, 0x0($t2)
/* 1F86B0 801E0730 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F86B4 801E0734 000EC880 */  sll         $t9, $t6, 2
/* 1F86B8 801E0738 01795821 */  addu        $t3, $t3, $t9
/* 1F86BC 801E073C 8D6BFBD0 */  lw          $t3, %lo(D_800DFBD0)($t3)
/* 1F86C0 801E0740 3C19800E */  lui         $t9, %hi(D_800DFBD0)
/* 1F86C4 801E0744 8D620004 */  lw          $v0, 0x4($t3)
/* 1F86C8 801E0748 C4420024 */  lwc1        $f2, 0x24($v0)
/* 1F86CC 801E074C E4420020 */  swc1        $f2, 0x20($v0)
/* 1F86D0 801E0750 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F86D4 801E0754 8DEC0000 */  lw          $t4, 0x0($t7)
/* 1F86D8 801E0758 000CC080 */  sll         $t8, $t4, 2
/* 1F86DC 801E075C 01184021 */  addu        $t0, $t0, $t8
/* 1F86E0 801E0760 8D08FBD0 */  lw          $t0, %lo(D_800DFBD0)($t0)
/* 1F86E4 801E0764 8D090004 */  lw          $t1, 0x4($t0)
/* 1F86E8 801E0768 3C08800E */  lui         $t0, %hi(D_800DFBD0)
/* 1F86EC 801E076C E522001C */  swc1        $f2, 0x1C($t1)
/* 1F86F0 801E0770 8E0D0000 */  lw          $t5, 0x0($s0)
/* 1F86F4 801E0774 8DAA0000 */  lw          $t2, 0x0($t5)
/* 1F86F8 801E0778 000A7080 */  sll         $t6, $t2, 2
/* 1F86FC 801E077C 032EC821 */  addu        $t9, $t9, $t6
/* 1F8700 801E0780 8F39FBD0 */  lw          $t9, %lo(D_800DFBD0)($t9)
/* 1F8704 801E0784 3C0E800E */  lui         $t6, %hi(D_800DFBD0)
/* 1F8708 801E0788 8F2B0008 */  lw          $t3, 0x8($t9)
/* 1F870C 801E078C E5680024 */  swc1        $f8, 0x24($t3)
/* 1F8710 801E0790 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F8714 801E0794 8DEC0000 */  lw          $t4, 0x0($t7)
/* 1F8718 801E0798 000CC080 */  sll         $t8, $t4, 2
/* 1F871C 801E079C 01184021 */  addu        $t0, $t0, $t8
/* 1F8720 801E07A0 8D08FBD0 */  lw          $t0, %lo(D_800DFBD0)($t0)
/* 1F8724 801E07A4 3C18800E */  lui         $t8, %hi(D_800DFBD0)
/* 1F8728 801E07A8 8D040008 */  lw          $a0, 0x8($t0)
/* 1F872C 801E07AC C4820024 */  lwc1        $f2, 0x24($a0)
/* 1F8730 801E07B0 E4820020 */  swc1        $f2, 0x20($a0)
/* 1F8734 801E07B4 8E090000 */  lw          $t1, 0x0($s0)
/* 1F8738 801E07B8 8D2D0000 */  lw          $t5, 0x0($t1)
/* 1F873C 801E07BC 000D5080 */  sll         $t2, $t5, 2
/* 1F8740 801E07C0 01CA7021 */  addu        $t6, $t6, $t2
/* 1F8744 801E07C4 8DCEFBD0 */  lw          $t6, %lo(D_800DFBD0)($t6)
/* 1F8748 801E07C8 8DD90008 */  lw          $t9, 0x8($t6)
/* 1F874C 801E07CC 3C0E800E */  lui         $t6, %hi(D_800DFBD0)
/* 1F8750 801E07D0 E722001C */  swc1        $f2, 0x1C($t9)
/* 1F8754 801E07D4 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F8758 801E07D8 8D6F0000 */  lw          $t7, 0x0($t3)
/* 1F875C 801E07DC 000F6080 */  sll         $t4, $t7, 2
/* 1F8760 801E07E0 030CC021 */  addu        $t8, $t8, $t4
/* 1F8764 801E07E4 8F18FBD0 */  lw          $t8, %lo(D_800DFBD0)($t8)
/* 1F8768 801E07E8 3C0C800E */  lui         $t4, %hi(D_800DFBD0)
/* 1F876C 801E07EC 8F080004 */  lw          $t0, 0x4($t8)
/* 1F8770 801E07F0 E50A0038 */  swc1        $f10, 0x38($t0)
/* 1F8774 801E07F4 8E090000 */  lw          $t1, 0x0($s0)
/* 1F8778 801E07F8 8D2D0000 */  lw          $t5, 0x0($t1)
/* 1F877C 801E07FC 000D5080 */  sll         $t2, $t5, 2
/* 1F8780 801E0800 01CA7021 */  addu        $t6, $t6, $t2
/* 1F8784 801E0804 8DCEFBD0 */  lw          $t6, %lo(D_800DFBD0)($t6)
/* 1F8788 801E0808 3C0A800E */  lui         $t2, %hi(D_800DFBD0)
/* 1F878C 801E080C 8DC20004 */  lw          $v0, 0x4($t6)
/* 1F8790 801E0810 C4420038 */  lwc1        $f2, 0x38($v0)
/* 1F8794 801E0814 E4420034 */  swc1        $f2, 0x34($v0)
/* 1F8798 801E0818 8E190000 */  lw          $t9, 0x0($s0)
/* 1F879C 801E081C 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F87A0 801E0820 000B7880 */  sll         $t7, $t3, 2
/* 1F87A4 801E0824 018F6021 */  addu        $t4, $t4, $t7
/* 1F87A8 801E0828 8D8CFBD0 */  lw          $t4, %lo(D_800DFBD0)($t4)
/* 1F87AC 801E082C 8D980004 */  lw          $t8, 0x4($t4)
/* 1F87B0 801E0830 3C0C800E */  lui         $t4, %hi(D_800DFBD0)
/* 1F87B4 801E0834 E7020030 */  swc1        $f2, 0x30($t8)
/* 1F87B8 801E0838 8E080000 */  lw          $t0, 0x0($s0)
/* 1F87BC 801E083C 8D090000 */  lw          $t1, 0x0($t0)
/* 1F87C0 801E0840 00096880 */  sll         $t5, $t1, 2
/* 1F87C4 801E0844 014D5021 */  addu        $t2, $t2, $t5
/* 1F87C8 801E0848 8D4AFBD0 */  lw          $t2, %lo(D_800DFBD0)($t2)
/* 1F87CC 801E084C 3C0D800E */  lui         $t5, %hi(D_800DFBD0)
/* 1F87D0 801E0850 8D4E0008 */  lw          $t6, 0x8($t2)
/* 1F87D4 801E0854 E5C40038 */  swc1        $f4, 0x38($t6)
/* 1F87D8 801E0858 8E190000 */  lw          $t9, 0x0($s0)
/* 1F87DC 801E085C 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F87E0 801E0860 000B7880 */  sll         $t7, $t3, 2
/* 1F87E4 801E0864 018F6021 */  addu        $t4, $t4, $t7
/* 1F87E8 801E0868 8D8CFBD0 */  lw          $t4, %lo(D_800DFBD0)($t4)
/* 1F87EC 801E086C 8D840008 */  lw          $a0, 0x8($t4)
/* 1F87F0 801E0870 C4820038 */  lwc1        $f2, 0x38($a0)
/* 1F87F4 801E0874 E4820034 */  swc1        $f2, 0x34($a0)
/* 1F87F8 801E0878 8E180000 */  lw          $t8, 0x0($s0)
/* 1F87FC 801E087C 8F080000 */  lw          $t0, 0x0($t8)
/* 1F8800 801E0880 00084880 */  sll         $t1, $t0, 2
/* 1F8804 801E0884 01A96821 */  addu        $t5, $t5, $t1
/* 1F8808 801E0888 8DADFBD0 */  lw          $t5, %lo(D_800DFBD0)($t5)
/* 1F880C 801E088C 8DAA0008 */  lw          $t2, 0x8($t5)
/* 1F8810 801E0890 E5420030 */  swc1        $f2, 0x30($t2)
/* 1F8814 801E0894 8E050000 */  lw          $a1, 0x0($s0)
/* 1F8818 801E0898 8CAE0000 */  lw          $t6, 0x0($a1)
/* 1F881C 801E089C 000EC880 */  sll         $t9, $t6, 2
/* 1F8820 801E08A0 00D95821 */  addu        $t3, $a2, $t9
/* 1F8824 801E08A4 E5660000 */  swc1        $f6, 0x0($t3)
/* 1F8828 801E08A8 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F882C 801E08AC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 1F8830 801E08B0 240E0001 */  addiu       $t6, $zero, 0x1
/* 1F8834 801E08B4 00031880 */  sll         $v1, $v1, 2
/* 1F8838 801E08B8 00C37821 */  addu        $t7, $a2, $v1
/* 1F883C 801E08BC C5E00000 */  lwc1        $f0, 0x0($t7)
/* 1F8840 801E08C0 00230821 */  addu        $at, $at, $v1
/* 1F8844 801E08C4 8FB10018 */  lw          $s1, 0x18($sp)
/* 1F8848 801E08C8 E420ADE0 */  swc1        $f0, %lo(D_800EADE0)($at)
/* 1F884C 801E08CC 8CAC0000 */  lw          $t4, 0x0($a1)
/* 1F8850 801E08D0 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F8854 801E08D4 8FB00014 */  lw          $s0, 0x14($sp)
/* 1F8858 801E08D8 000CC080 */  sll         $t8, $t4, 2
/* 1F885C 801E08DC 00380821 */  addu        $at, $at, $t8
/* 1F8860 801E08E0 E420AC20 */  swc1        $f0, %lo(D_800EAC20)($at)
/* 1F8864 801E08E4 8CA80000 */  lw          $t0, 0x0($a1)
/* 1F8868 801E08E8 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F886C 801E08EC 00084880 */  sll         $t1, $t0, 2
/* 1F8870 801E08F0 00290821 */  addu        $at, $at, $t1
/* 1F8874 801E08F4 E420AA60 */  swc1        $f0, %lo(D_800EAA60)($at)
/* 1F8878 801E08F8 8CAD0000 */  lw          $t5, 0x0($a1)
/* 1F887C 801E08FC 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F8880 801E0900 000D5080 */  sll         $t2, $t5, 2
/* 1F8884 801E0904 002A0821 */  addu        $at, $at, $t2
/* 1F8888 801E0908 E420A8A0 */  swc1        $f0, %lo(D_800EA8A0)($at)
/* 1F888C 801E090C 8CB90000 */  lw          $t9, 0x0($a1)
/* 1F8890 801E0910 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F8894 801E0914 27BD0070 */  addiu       $sp, $sp, 0x70
/* 1F8898 801E0918 00195880 */  sll         $t3, $t9, 2
/* 1F889C 801E091C 002B0821 */  addu        $at, $at, $t3
/* 1F88A0 801E0920 03E00008 */  jr          $ra
/* 1F88A4 801E0924 AC2EDC50 */   sw         $t6, %lo(gEntityVtableIndexArray)($at)
.type func_801DF5D0_ovl13, @function

.size func_801DF5D0_ovl13, . - func_801DF5D0_ovl13
.section .late_rodata
glabel D_801E5D24_ovl13
/* 1FDCA4 801E5D24 */ .word 0xBDCCCCCD

glabel D_801E5D28_ovl13
/* 1FDCA8 801E5D28 */ .word 0x3DCCCCCD

glabel D_801E5D2C_ovl13
/* 1FDCAC 801E5D2C */ .word 0xBDCCCCCD

glabel D_801E5D30_ovl13
/* 1FDCB0 801E5D30 */ .word 0x477FFF00

glabel D_801E5D34_ovl13
/* 1FDCB4 801E5D34 */ .word 0xBE32B8C3

glabel D_801E5D38_ovl13
/* 1FDCB8 801E5D38 */ .word 0x3ECCCCCD

glabel D_801E5D3C_ovl13
/* 1FDCBC 801E5D3C */ .word 0xBECCCCCD

glabel D_801E5D40_ovl13
/* 1FDCC0 801E5D40 */ .word 0x3D567750

glabel D_801E5D44_ovl13
/* 1FDCC4 801E5D44 */ .word 0x477FFF00

glabel D_801E5D48_ovl13
/* 1FDCC8 801E5D48 */ .word 0x477FFF00
/* 1FDCCC 801E5D4C */ .word 0x00000000

glabel D_801E5D50_ovl13
/* 1FDCD0 801E5D50 */ .word 0xBFC99999
/* 1FDCD4 801E5D54 */ .word 0xA0000000

glabel D_801E5D58_ovl13
/* 1FDCD8 801E5D58 */ .word 0xBECCCCCD

glabel D_801E5D5C_ovl13
/* 1FDCDC 801E5D5C */ .word 0xBDCCCCCD

