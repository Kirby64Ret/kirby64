glabel func_801E7650_ovl16
/* 21D900 801E7650 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 21D904 801E7654 AFA40038 */  sw    $a0, 0x38($sp)
/* 21D908 801E7658 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 21D90C 801E765C 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 21D910 801E7660 AFB00020 */  sw    $s0, 0x20($sp)
/* 21D914 801E7664 8C900000 */  lw    $s0, ($a0)
/* 21D918 801E7668 AFBF0034 */  sw    $ra, 0x34($sp)
/* 21D91C 801E766C AFB40030 */  sw    $s4, 0x30($sp)
/* 21D920 801E7670 AFB3002C */  sw    $s3, 0x2c($sp)
/* 21D924 801E7674 AFB20028 */  sw    $s2, 0x28($sp)
/* 21D928 801E7678 AFB10024 */  sw    $s1, 0x24($sp)
/* 21D92C 801E767C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 21D930 801E7680 8E020000 */  lw    $v0, ($s0)
/* 21D934 801E7684 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 21D938 801E7688 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 21D93C 801E768C 00021080 */  sll   $v0, $v0, 2
/* 21D940 801E7690 00627021 */  addu  $t6, $v1, $v0
/* 21D944 801E7694 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21D948 801E7698 8DD40000 */  lw    $s4, ($t6)
/* 21D94C 801E769C 00220821 */  addu  $at, $at, $v0
/* 21D950 801E76A0 240F001A */  li    $t7, 26
/* 21D954 801E76A4 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 21D958 801E76A8 8E190000 */  lw    $t9, ($s0)
/* 21D95C 801E76AC 3C18801E */  lui   $t8, %hi(D_801D9438) # $t8, 0x801e
/* 21D960 801E76B0 27189438 */  addiu $t8, %lo(D_801D9438) # addiu $t8, $t8, -0x6bc8
/* 21D964 801E76B4 00194080 */  sll   $t0, $t9, 2
/* 21D968 801E76B8 00684821 */  addu  $t1, $v1, $t0
/* 21D96C 801E76BC 8D2A0000 */  lw    $t2, ($t1)
/* 21D970 801E76C0 3C01800F */ lui $at, %hi(D_800E8920)
/* 21D974 801E76C4 AD58008C */  sw    $t8, 0x8c($t2)
/* 21D978 801E76C8 8C8B0000 */  lw    $t3, ($a0)
/* 21D97C 801E76CC 8D6C0000 */  lw    $t4, ($t3)
/* 21D980 801E76D0 000C6880 */  sll   $t5, $t4, 2
/* 21D984 801E76D4 002D0821 */  addu  $at, $at, $t5
/* 21D988 801E76D8 0C02CCFD */  jal   func_800B33F4
/* 21D98C 801E76DC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 21D990 801E76E0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 21D994 801E76E4 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 21D998 801E76E8 44802000 */  mtc1  $zero, $f4
/* 21D99C 801E76EC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 21D9A0 801E76F0 8E0E0000 */  lw    $t6, ($s0)
/* 21D9A4 801E76F4 24040001 */  li    $a0, 1
/* 21D9A8 801E76F8 000E7880 */  sll   $t7, $t6, 2
/* 21D9AC 801E76FC 002F0821 */  addu  $at, $at, $t7
/* 21D9B0 801E7700 E42425D0 */ swc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 21D9B4 801E7704 8E190000 */  lw    $t9, ($s0)
/* 21D9B8 801E7708 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 21D9BC 801E770C 44813000 */  mtc1  $at, $f6
/* 21D9C0 801E7710 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 21D9C4 801E7714 00194080 */  sll   $t0, $t9, 2
/* 21D9C8 801E7718 00280821 */  addu  $at, $at, $t0
/* 21D9CC 801E771C 0C002DAF */  jal   finish_current_thread
/* 21D9D0 801E7720 E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 21D9D4 801E7724 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 21D9D8 801E7728 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 21D9DC 801E772C 3C0C800F */ lui $t4, %hi(D_800EBBE0)
/* 21D9E0 801E7730 3C01800F */ lui $at, %hi(D_800E98E0)
/* 21D9E4 801E7734 8F0A0000 */  lw    $t2, ($t8)
/* 21D9E8 801E7738 24090003 */  li    $t1, 3
/* 21D9EC 801E773C 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 21D9F0 801E7740 000A5880 */  sll   $t3, $t2, 2
/* 21D9F4 801E7744 018B6021 */  addu  $t4, $t4, $t3
/* 21D9F8 801E7748 8D8CBBE0 */ lw $t4, %lo(D_800EBBE0)($t4)
/* 21D9FC 801E774C 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 21DA00 801E7750 000C6880 */  sll   $t5, $t4, 2
/* 21DA04 801E7754 002D0821 */  addu  $at, $at, $t5
/* 21DA08 801E7758 AC2998E0 */ sw $t1, %lo(D_800E98E0)($at)
/* 21DA0C 801E775C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 21DA10 801E7760 44815000 */  mtc1  $at, $f10
/* 21DA14 801E7764 C6080000 */  lwc1  $f8, ($s0)
/* 21DA18 801E7768 460A4302 */  mul.s $f12, $f8, $f10
/* 21DA1C 801E776C 0C02BB30 */  jal   func_800AECC0
/* 21DA20 801E7770 00000000 */   nop   
/* 21DA24 801E7774 3C13800D */  lui   $s3, %hi(D_800D7098) # $s3, 0x800d
/* 21DA28 801E7778 26737098 */  addiu $s3, %lo(D_800D7098) # addiu $s3, $s3, 0x7098
/* 21DA2C 801E777C 8E6E0004 */  lw    $t6, 4($s3)
/* 21DA30 801E7780 3C04801F */ lui $a0, %hi(D_801EFA04_ovl16)
/* 21DA34 801E7784 000E7880 */  sll   $t7, $t6, 2
/* 21DA38 801E7788 008F2021 */  addu  $a0, $a0, $t7
/* 21DA3C 801E778C 0C02A806 */  jal   func_800AA018
/* 21DA40 801E7790 8C84FA04 */ lw $a0, %lo(D_801EFA04_ovl16)($a0)
/* 21DA44 801E7794 8E620004 */  lw    $v0, 4($s3)
/* 21DA48 801E7798 3C11801F */  lui   $s1, %hi(D_801EFA20_ovl16) # $s1, 0x801f
/* 21DA4C 801E779C 2631FA20 */  addiu $s1, %lo(D_801EFA20_ovl16) # addiu $s1, $s1, -0x5e0
/* 21DA50 801E77A0 00021080 */  sll   $v0, $v0, 2
/* 21DA54 801E77A4 0222C821 */  addu  $t9, $s1, $v0
/* 21DA58 801E77A8 8F280000 */  lw    $t0, ($t9)
/* 21DA5C 801E77AC 3C01801F */ lui $at, %hi(D_801EF848_ovl16)
/* 21DA60 801E77B0 00220821 */  addu  $at, $at, $v0
/* 21DA64 801E77B4 5100000C */  beql  $t0, $zero, .L801E77E8_ovl16
/* 21DA68 801E77B8 3C014080 */   lui   $at, 0x4080 # $at, 0x4080
/* 21DA6C 801E77BC C430F848 */  lwc1  $f16, %lo(D_801EF848_ovl16)($at)
/* 21DA70 801E77C0 C6120000 */  lwc1  $f18, ($s0)
/* 21DA74 801E77C4 46128302 */  mul.s $f12, $f16, $f18
/* 21DA78 801E77C8 0C02BB48 */  jal   func_800AED20
/* 21DA7C 801E77CC 00000000 */   nop   
/* 21DA80 801E77D0 8E780004 */  lw    $t8, 4($s3)
/* 21DA84 801E77D4 00185080 */  sll   $t2, $t8, 2
/* 21DA88 801E77D8 022A5821 */  addu  $t3, $s1, $t2
/* 21DA8C 801E77DC 0C02A806 */  jal   func_800AA018
/* 21DA90 801E77E0 8D640000 */   lw    $a0, ($t3)
/* 21DA94 801E77E4 3C014080 */  li    $at, 0x40800000 # 4.000000
.L801E77E8_ovl16:
/* 21DA98 801E77E8 3C11801F */  lui   $s1, %hi(D_801EF810_ovl16) # $s1, 0x801f
/* 21DA9C 801E77EC 4481A000 */  mtc1  $at, $f20
/* 21DAA0 801E77F0 2631F810 */  addiu $s1, %lo(D_801EF810_ovl16) # addiu $s1, $s1, -0x7f0
/* 21DAA4 801E77F4 00008025 */  move  $s0, $zero
/* 21DAA8 801E77F8 24120008 */  li    $s2, 8
/* 21DAAC 801E77FC 8E6C0004 */  lw    $t4, 4($s3)
.L801E7800_ovl16:
/* 21DAB0 801E7800 8E820080 */  lw    $v0, 0x80($s4)
/* 21DAB4 801E7804 24040001 */  li    $a0, 1
/* 21DAB8 801E7808 000C4880 */  sll   $t1, $t4, 2
/* 21DABC 801E780C 02296821 */  addu  $t5, $s1, $t1
/* 21DAC0 801E7810 C5A60000 */  lwc1  $f6, ($t5)
/* 21DAC4 801E7814 C4440010 */  lwc1  $f4, 0x10($v0)
/* 21DAC8 801E7818 46143202 */  mul.s $f8, $f6, $f20
/* 21DACC 801E781C 46082280 */  add.s $f10, $f4, $f8
/* 21DAD0 801E7820 0C002DAF */  jal   finish_current_thread
/* 21DAD4 801E7824 E44A0010 */   swc1  $f10, 0x10($v0)
/* 21DAD8 801E7828 26100001 */  addiu $s0, $s0, 1
/* 21DADC 801E782C 5612FFF4 */  bnel  $s0, $s2, .L801E7800_ovl16
/* 21DAE0 801E7830 8E6C0004 */   lw    $t4, 4($s3)
/* 21DAE4 801E7834 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 21DAE8 801E7838 44818000 */  mtc1  $at, $f16
/* 21DAEC 801E783C 8E8E0080 */  lw    $t6, 0x80($s4)
/* 21DAF0 801E7840 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 21DAF4 801E7844 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21DAF8 801E7848 E5D00010 */  swc1  $f16, 0x10($t6)
/* 21DAFC 801E784C AE60002C */  sw    $zero, 0x2c($s3)
/* 21DB00 801E7850 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 21DB04 801E7854 8FBF0034 */  lw    $ra, 0x34($sp)
/* 21DB08 801E7858 240F0001 */  li    $t7, 1
/* 21DB0C 801E785C 8F280000 */  lw    $t0, ($t9)
/* 21DB10 801E7860 8FB3002C */  lw    $s3, 0x2c($sp)
/* 21DB14 801E7864 8FB40030 */  lw    $s4, 0x30($sp)
/* 21DB18 801E7868 0008C080 */  sll   $t8, $t0, 2
/* 21DB1C 801E786C 00380821 */  addu  $at, $at, $t8
/* 21DB20 801E7870 8FB20028 */  lw    $s2, 0x28($sp)
/* 21DB24 801E7874 8FB10024 */  lw    $s1, 0x24($sp)
/* 21DB28 801E7878 8FB00020 */  lw    $s0, 0x20($sp)
/* 21DB2C 801E787C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 21DB30 801E7880 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 21DB34 801E7884 03E00008 */  jr    $ra
/* 21DB38 801E7888 27BD0038 */   addiu $sp, $sp, 0x38
.type func_801E7650_ovl16, @function
.size func_801E7650_ovl16, . - func_801E7650_ovl16
