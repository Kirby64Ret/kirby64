glabel func_800068E4
/* 0074E4 800068E4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0074E8 800068E8 AFB60030 */  sw    $s6, 0x30($sp)
/* 0074EC 800068EC 0080B025 */  move  $s6, $a0
/* 0074F0 800068F0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0074F4 800068F4 3C018005 */  lui   $at, %hi(D_800492DC) # $at, 0x8005
/* 0074F8 800068F8 3C048005 */  lui   $a0, %hi(D_80049320) # $a0, 0x8005
/* 0074FC 800068FC AFBE0038 */  sw    $fp, 0x38($sp)
/* 007500 80006900 AFB70034 */  sw    $s7, 0x34($sp)
/* 007504 80006904 AFB5002C */  sw    $s5, 0x2c($sp)
/* 007508 80006908 AFB40028 */  sw    $s4, 0x28($sp)
/* 00750C 8000690C AFB30024 */  sw    $s3, 0x24($sp)
/* 007510 80006910 AFB20020 */  sw    $s2, 0x20($sp)
/* 007514 80006914 AFB1001C */  sw    $s1, 0x1c($sp)
/* 007518 80006918 AFB00018 */  sw    $s0, 0x18($sp)
/* 00751C 8000691C AC2092DC */  sw    $zero, %lo(D_800492DC)($at)
/* 007520 80006920 24849320 */  addiu $a0, %lo(D_80049320) # addiu $a0, $a0, -0x6ce0
/* 007524 80006924 00002825 */  move  $a1, $zero
/* 007528 80006928 0C00B540 */  jal   osRecvMesg
/* 00752C 8000692C 00003025 */   move  $a2, $zero
/* 007530 80006930 2413FFFF */  li    $s3, -1
/* 007534 80006934 10530007 */  beq   $v0, $s3, .L80006954_ovl0
.L80006938_ovl0:
/* 007538 80006938 3C048005 */   lui   $a0, %hi(D_80049320) # $a0, 0x8005
/* 00753C 8000693C 24849320 */  addiu $a0, %lo(D_80049320) # addiu $a0, $a0, -0x6ce0
/* 007540 80006940 00002825 */  move  $a1, $zero
/* 007544 80006944 0C00B540 */  jal   osRecvMesg
/* 007548 80006948 00003025 */   move  $a2, $zero
/* 00754C 8000694C 1453FFFA */  bne   $v0, $s3, .L80006938_ovl0
/* 007550 80006950 00000000 */   nop   
.L80006954_ovl0:
/* 007554 80006954 3C048005 */  lui   $a0, %hi(D_80049340) # $a0, 0x8005
/* 007558 80006958 24849340 */  addiu $a0, %lo(D_80049340) # addiu $a0, $a0, -0x6cc0
/* 00755C 8000695C 00002825 */  move  $a1, $zero
/* 007560 80006960 0C00B540 */  jal   osRecvMesg
/* 007564 80006964 00003025 */   move  $a2, $zero
/* 007568 80006968 10530007 */  beq   $v0, $s3, .L80006988_ovl0
.L8000696C_ovl0:
/* 00756C 8000696C 3C048005 */   lui   $a0, %hi(D_80049340) # $a0, 0x8005
/* 007570 80006970 24849340 */  addiu $a0, %lo(D_80049340) # addiu $a0, $a0, -0x6cc0
/* 007574 80006974 00002825 */  move  $a1, $zero
/* 007578 80006978 0C00B540 */  jal   osRecvMesg
/* 00757C 8000697C 00003025 */   move  $a2, $zero
/* 007580 80006980 1453FFFA */  bne   $v0, $s3, .L8000696C_ovl0
/* 007584 80006984 00000000 */   nop   
.L80006988_ovl0:
/* 007588 80006988 3C118005 */  lui   $s1, %hi(D_800492C0) # $s1, 0x8005
/* 00758C 8000698C 263192C0 */  addiu $s1, %lo(D_800492C0) # addiu $s1, $s1, -0x6d40
/* 007590 80006990 02202025 */  move  $a0, $s1
/* 007594 80006994 00002825 */  move  $a1, $zero
/* 007598 80006998 0C00B540 */  jal   osRecvMesg
/* 00759C 8000699C 00003025 */   move  $a2, $zero
/* 0075A0 800069A0 10530006 */  beq   $v0, $s3, .L800069BC_ovl0
/* 0075A4 800069A4 02202025 */   move  $a0, $s1
.L800069A8_ovl0:
/* 0075A8 800069A8 00002825 */  move  $a1, $zero
/* 0075AC 800069AC 0C00B540 */  jal   osRecvMesg
/* 0075B0 800069B0 00003025 */   move  $a2, $zero
/* 0075B4 800069B4 5453FFFC */  bnel  $v0, $s3, .L800069A8_ovl0
/* 0075B8 800069B8 02202025 */   move  $a0, $s1
.L800069BC_ovl0:
/* 0075BC 800069BC 3C018005 */  lui   $at, %hi(D_8004A3F0) # $at, 0x8005
/* 0075C0 800069C0 AC20A3F0 */  sw    $zero, %lo(D_8004A3F0)($at)
/* 0075C4 800069C4 3C018005 */  lui   $at, %hi(D_8004A3F4) # $at, 0x8005
/* 0075C8 800069C8 AC33A3F4 */  sw    $s3, %lo(D_8004A3F4)($at)
/* 0075CC 800069CC 3C018005 */  lui   $at, %hi(D_8004A450) # $at, 0x8005
/* 0075D0 800069D0 240E0001 */  li    $t6, 1
/* 0075D4 800069D4 AC2EA450 */  sw    $t6, %lo(D_8004A450)($at)
/* 0075D8 800069D8 3C018005 */  lui   $at, %hi(D_80048C64) # $at, 0x8005
/* 0075DC 800069DC 3C028005 */  lui   $v0, %hi(D_8004A458) # $v0, 0x8005
/* 0075E0 800069E0 3C038005 */  lui   $v1, %hi(D_8004A460) # $v1, 0x8005
/* 0075E4 800069E4 AC208C64 */  sw    $zero, %lo(D_80048C64)($at)
/* 0075E8 800069E8 2463A460 */  addiu $v1, %lo(D_8004A460) # addiu $v1, $v1, -0x5ba0
/* 0075EC 800069EC 2442A458 */  addiu $v0, %lo(D_8004A458) # addiu $v0, $v0, -0x5ba8
.L800069F0_ovl0:
/* 0075F0 800069F0 24420004 */  addiu $v0, $v0, 4
/* 0075F4 800069F4 1443FFFE */  bne   $v0, $v1, .L800069F0_ovl0
/* 0075F8 800069F8 AC40FFFC */   sw    $zero, -4($v0)
/* 0075FC 800069FC 96CF0000 */  lhu   $t7, ($s6)
/* 007600 80006A00 3C1E8004 */  lui   $fp, %hi(D_8003DCA8) # $fp, 0x8004
/* 007604 80006A04 27DEDCA8 */  addiu $fp, %lo(D_8003DCA8) # addiu $fp, $fp, -0x2358
/* 007608 80006A08 31F80001 */  andi  $t8, $t7, 1
/* 00760C 80006A0C 13000062 */  beqz  $t8, .L80006B98_ovl0
/* 007610 80006A10 00008025 */   move  $s0, $zero
/* 007614 80006A14 3C1E8004 */  lui   $fp, %hi(D_8003DCA8) # $fp, 0x8004
/* 007618 80006A18 3C158004 */  lui   $s5, %hi(D_8003DCA4) # $s5, 0x8004
/* 00761C 80006A1C 3C148005 */  lui   $s4, %hi(D_8004A42C) # $s4, 0x8005
/* 007620 80006A20 3C128005 */  lui   $s2, %hi(D_800492D8) # $s2, 0x8005
/* 007624 80006A24 265292D8 */  addiu $s2, %lo(D_800492D8) # addiu $s2, $s2, -0x6d28
/* 007628 80006A28 2694A42C */  addiu $s4, %lo(D_8004A42C) # addiu $s4, $s4, -0x5bd4
/* 00762C 80006A2C 26B5DCA4 */  addiu $s5, %lo(D_8003DCA4) # addiu $s5, $s5, -0x235c
/* 007630 80006A30 27DEDCA8 */  addiu $fp, %lo(D_8003DCA8) # addiu $fp, $fp, -0x2358
/* 007634 80006A34 00008025 */  move  $s0, $zero
/* 007638 80006A38 24170B9B */  li    $s7, 2971
.L80006A3C_ovl0:
/* 00763C 80006A3C 0C001A15 */  jal   func_80006854_ovl0
/* 007640 80006A40 00000000 */   nop   
/* 007644 80006A44 0C000144 */  jal   func_80000510_ovl0
/* 007648 80006A48 00000000 */   nop   
/* 00764C 80006A4C 96590000 */  lhu   $t9, ($s2)
/* 007650 80006A50 1B200009 */  blez  $t9, .L80006A78_ovl0
/* 007654 80006A54 02202025 */   move  $a0, $s1
.L80006A58_ovl0:
/* 007658 80006A58 00002825 */  move  $a1, $zero
/* 00765C 80006A5C 0C00B540 */  jal   osRecvMesg
/* 007660 80006A60 24060001 */   li    $a2, 1
/* 007664 80006A64 96480000 */  lhu   $t0, ($s2)
/* 007668 80006A68 26100001 */  addiu $s0, $s0, 1
/* 00766C 80006A6C 0208082A */  slt   $at, $s0, $t0
/* 007670 80006A70 5420FFF9 */  bnezl $at, .L80006A58_ovl0
/* 007674 80006A74 02202025 */   move  $a0, $s1
.L80006A78_ovl0:
/* 007678 80006A78 02202025 */  move  $a0, $s1
/* 00767C 80006A7C 00002825 */  move  $a1, $zero
/* 007680 80006A80 0C00B540 */  jal   osRecvMesg
/* 007684 80006A84 00003025 */   move  $a2, $zero
/* 007688 80006A88 10530006 */  beq   $v0, $s3, .L80006AA4_ovl0
/* 00768C 80006A8C 02202025 */   move  $a0, $s1
.L80006A90_ovl0:
/* 007690 80006A90 00002825 */  move  $a1, $zero
/* 007694 80006A94 0C00B540 */  jal   osRecvMesg
/* 007698 80006A98 00003025 */   move  $a2, $zero
/* 00769C 80006A9C 5453FFFC */  bnel  $v0, $s3, .L80006A90_ovl0
/* 0076A0 80006AA0 02202025 */   move  $a0, $s1
.L80006AA4_ovl0:
/* 0076A4 80006AA4 0C00C534 */  jal   func_800314D0_ovl0
/* 0076A8 80006AA8 00000000 */   nop   
/* 0076AC 80006AAC AE820000 */  sw    $v0, ($s4)
/* 0076B0 80006AB0 8ED90008 */  lw    $t9, 8($s6)
/* 0076B4 80006AB4 02C02025 */  move  $a0, $s6
/* 0076B8 80006AB8 0320F809 */  jalr  $t9
/* 0076BC 80006ABC 00000000 */  nop   
/* 0076C0 80006AC0 8EA90000 */  lw    $t1, ($s5)
/* 0076C4 80006AC4 252A0001 */  addiu $t2, $t1, 1
/* 0076C8 80006AC8 0C00C534 */  jal   func_800314D0_ovl0
/* 0076CC 80006ACC AEAA0000 */   sw    $t2, ($s5)
/* 0076D0 80006AD0 8E8B0000 */  lw    $t3, ($s4)
/* 0076D4 80006AD4 3C018005 */  lui   $at, %hi(D_8004A430) # $at, 0x8005
/* 0076D8 80006AD8 004B6023 */  subu  $t4, $v0, $t3
/* 0076DC 80006ADC 0197001B */  divu  $zero, $t4, $s7
/* 0076E0 80006AE0 00006812 */  mflo  $t5
/* 0076E4 80006AE4 AC2DA430 */  sw    $t5, %lo(D_8004A430)($at)
/* 0076E8 80006AE8 16E00002 */  bnez  $s7, .L80006AF4_ovl0
/* 0076EC 80006AEC 00000000 */   nop   
/* 0076F0 80006AF0 0007000D */  break 7
.L80006AF4_ovl0:
/* 0076F4 80006AF4 0C0019F8 */  jal   func_800067E0_ovl0
/* 0076F8 80006AF8 00000000 */   nop   
/* 0076FC 80006AFC 14400086 */  bnez  $v0, .L80006D18_ovl0
/* 007700 80006B00 3C0F8005 */   lui   $t7, %hi(D_800492DA) # $t7, 0x8005
/* 007704 80006B04 8EAE0000 */  lw    $t6, ($s5)
/* 007708 80006B08 95EF92DA */  lhu   $t7, %lo(D_800492DA)($t7)
/* 00770C 80006B0C 01CF001B */  divu  $zero, $t6, $t7
/* 007710 80006B10 0000C010 */  mfhi  $t8
/* 007714 80006B14 15E00002 */  bnez  $t7, .L80006B20_ovl0
/* 007718 80006B18 00000000 */   nop   
/* 00771C 80006B1C 0007000D */  break 7
.L80006B20_ovl0:
/* 007720 80006B20 1700001B */  bnez  $t8, .L80006B90_ovl0
/* 007724 80006B24 00000000 */   nop   
/* 007728 80006B28 0C00198A */  jal   func_80006628_ovl0
/* 00772C 80006B2C 00002025 */   move  $a0, $zero
/* 007730 80006B30 0C00C534 */  jal   func_800314D0_ovl0
/* 007734 80006B34 00000000 */   nop   
/* 007738 80006B38 AE820000 */  sw    $v0, ($s4)
/* 00773C 80006B3C 8ED90010 */  lw    $t9, 0x10($s6)
/* 007740 80006B40 02C02025 */  move  $a0, $s6
/* 007744 80006B44 0320F809 */  jalr  $t9
/* 007748 80006B48 00000000 */  nop   
/* 00774C 80006B4C 8FC80000 */  lw    $t0, ($fp)
/* 007750 80006B50 25090001 */  addiu $t1, $t0, 1
/* 007754 80006B54 0C00C534 */  jal   func_800314D0_ovl0
/* 007758 80006B58 AFC90000 */   sw    $t1, ($fp)
/* 00775C 80006B5C 8E8A0000 */  lw    $t2, ($s4)
/* 007760 80006B60 3C018005 */  lui   $at, %hi(D_8004A434) # $at, 0x8005
/* 007764 80006B64 004A5823 */  subu  $t3, $v0, $t2
/* 007768 80006B68 0177001B */  divu  $zero, $t3, $s7
/* 00776C 80006B6C 00006012 */  mflo  $t4
/* 007770 80006B70 AC2CA434 */  sw    $t4, %lo(D_8004A434)($at)
/* 007774 80006B74 16E00002 */  bnez  $s7, .L80006B80_ovl0
/* 007778 80006B78 00000000 */   nop   
/* 00777C 80006B7C 0007000D */  break 7
.L80006B80_ovl0:
/* 007780 80006B80 0C0019F8 */  jal   func_800067E0_ovl0
/* 007784 80006B84 00000000 */   nop   
/* 007788 80006B88 14400063 */  bnez  $v0, .L80006D18_ovl0
/* 00778C 80006B8C 00000000 */   nop   
.L80006B90_ovl0:
/* 007790 80006B90 1000FFAA */  b     .L80006A3C_ovl0
/* 007794 80006B94 00008025 */   move  $s0, $zero
.L80006B98_ovl0:
/* 007798 80006B98 3C158004 */  lui   $s5, %hi(D_8003DCA4) # $s5, 0x8004
/* 00779C 80006B9C 3C148005 */  lui   $s4, %hi(D_8004A42C) # $s4, 0x8005
/* 0077A0 80006BA0 3C128005 */  lui   $s2, %hi(D_800492D8) # $s2, 0x8005
/* 0077A4 80006BA4 265292D8 */  addiu $s2, %lo(D_800492D8) # addiu $s2, $s2, -0x6d28
/* 0077A8 80006BA8 2694A42C */  addiu $s4, %lo(D_8004A42C) # addiu $s4, $s4, -0x5bd4
/* 0077AC 80006BAC 26B5DCA4 */  addiu $s5, %lo(D_8003DCA4) # addiu $s5, $s5, -0x235c
/* 0077B0 80006BB0 24170B9B */  li    $s7, 2971
.L80006BB4_ovl0:
/* 0077B4 80006BB4 0C001A15 */  jal   func_80006854_ovl0
/* 0077B8 80006BB8 00000000 */   nop   
/* 0077BC 80006BBC 0C000144 */  jal   func_80000510_ovl0
/* 0077C0 80006BC0 00000000 */   nop   
/* 0077C4 80006BC4 964D0000 */  lhu   $t5, ($s2)
/* 0077C8 80006BC8 19A00009 */  blez  $t5, .L80006BF0_ovl0
/* 0077CC 80006BCC 02202025 */   move  $a0, $s1
.L80006BD0_ovl0:
/* 0077D0 80006BD0 00002825 */  move  $a1, $zero
/* 0077D4 80006BD4 0C00B540 */  jal   osRecvMesg
/* 0077D8 80006BD8 24060001 */   li    $a2, 1
/* 0077DC 80006BDC 964E0000 */  lhu   $t6, ($s2)
/* 0077E0 80006BE0 26100001 */  addiu $s0, $s0, 1
/* 0077E4 80006BE4 020E082A */  slt   $at, $s0, $t6
/* 0077E8 80006BE8 5420FFF9 */  bnezl $at, .L80006BD0_ovl0
/* 0077EC 80006BEC 02202025 */   move  $a0, $s1
.L80006BF0_ovl0:
/* 0077F0 80006BF0 02202025 */  move  $a0, $s1
/* 0077F4 80006BF4 00002825 */  move  $a1, $zero
/* 0077F8 80006BF8 0C00B540 */  jal   osRecvMesg
/* 0077FC 80006BFC 00003025 */   move  $a2, $zero
/* 007800 80006C00 10530006 */  beq   $v0, $s3, .L80006C1C_ovl0
/* 007804 80006C04 02202025 */   move  $a0, $s1
.L80006C08_ovl0:
/* 007808 80006C08 00002825 */  move  $a1, $zero
/* 00780C 80006C0C 0C00B540 */  jal   osRecvMesg
/* 007810 80006C10 00003025 */   move  $a2, $zero
/* 007814 80006C14 5453FFFC */  bnel  $v0, $s3, .L80006C08_ovl0
/* 007818 80006C18 02202025 */   move  $a0, $s1
.L80006C1C_ovl0:
/* 00781C 80006C1C 0C00C534 */  jal   func_800314D0_ovl0
/* 007820 80006C20 00000000 */   nop   
/* 007824 80006C24 AE820000 */  sw    $v0, ($s4)
/* 007828 80006C28 8ED90008 */  lw    $t9, 8($s6)
/* 00782C 80006C2C 02C02025 */  move  $a0, $s6
/* 007830 80006C30 0320F809 */  jalr  $t9
/* 007834 80006C34 00000000 */  nop   
/* 007838 80006C38 8EAF0000 */  lw    $t7, ($s5)
/* 00783C 80006C3C 25F80001 */  addiu $t8, $t7, 1
/* 007840 80006C40 0C00C534 */  jal   func_800314D0_ovl0
/* 007844 80006C44 AEB80000 */   sw    $t8, ($s5)
/* 007848 80006C48 8E880000 */  lw    $t0, ($s4)
/* 00784C 80006C4C 3C018005 */  lui   $at, %hi(D_8004A430) # $at, 0x8005
/* 007850 80006C50 00484823 */  subu  $t1, $v0, $t0
/* 007854 80006C54 0137001B */  divu  $zero, $t1, $s7
/* 007858 80006C58 00005012 */  mflo  $t2
/* 00785C 80006C5C AC2AA430 */  sw    $t2, %lo(D_8004A430)($at)
/* 007860 80006C60 16E00002 */  bnez  $s7, .L80006C6C_ovl0
/* 007864 80006C64 00000000 */   nop   
/* 007868 80006C68 0007000D */  break 7
.L80006C6C_ovl0:
/* 00786C 80006C6C 0C0019F8 */  jal   func_800067E0_ovl0
/* 007870 80006C70 00000000 */   nop   
/* 007874 80006C74 14400028 */  bnez  $v0, .L80006D18_ovl0
/* 007878 80006C78 3C0C8005 */   lui   $t4, %hi(D_800492DA) # $t4, 0x8005
/* 00787C 80006C7C 8EAB0000 */  lw    $t3, ($s5)
/* 007880 80006C80 958C92DA */  lhu   $t4, %lo(D_800492DA)($t4)
/* 007884 80006C84 016C001B */  divu  $zero, $t3, $t4
/* 007888 80006C88 00006810 */  mfhi  $t5
/* 00788C 80006C8C 15800002 */  bnez  $t4, .L80006C98_ovl0
/* 007890 80006C90 00000000 */   nop   
/* 007894 80006C94 0007000D */  break 7
.L80006C98_ovl0:
/* 007898 80006C98 15A0001D */  bnez  $t5, .L80006D10_ovl0
/* 00789C 80006C9C 00000000 */   nop   
/* 0078A0 80006CA0 0C00198A */  jal   func_80006628_ovl0
/* 0078A4 80006CA4 24040001 */   li    $a0, 1
/* 0078A8 80006CA8 10400019 */  beqz  $v0, .L80006D10_ovl0
/* 0078AC 80006CAC 00000000 */   nop   
/* 0078B0 80006CB0 0C00C534 */  jal   func_800314D0_ovl0
/* 0078B4 80006CB4 00000000 */   nop   
/* 0078B8 80006CB8 AE820000 */  sw    $v0, ($s4)
/* 0078BC 80006CBC 8ED90010 */  lw    $t9, 0x10($s6)
/* 0078C0 80006CC0 02C02025 */  move  $a0, $s6
/* 0078C4 80006CC4 0320F809 */  jalr  $t9
/* 0078C8 80006CC8 00000000 */  nop   
/* 0078CC 80006CCC 8FCE0000 */  lw    $t6, ($fp)
/* 0078D0 80006CD0 25CF0001 */  addiu $t7, $t6, 1
/* 0078D4 80006CD4 0C00C534 */  jal   func_800314D0_ovl0
/* 0078D8 80006CD8 AFCF0000 */   sw    $t7, ($fp)
/* 0078DC 80006CDC 8E980000 */  lw    $t8, ($s4)
/* 0078E0 80006CE0 3C018005 */  lui   $at, %hi(D_8004A434) # $at, 0x8005
/* 0078E4 80006CE4 00584023 */  subu  $t0, $v0, $t8
/* 0078E8 80006CE8 0117001B */  divu  $zero, $t0, $s7
/* 0078EC 80006CEC 00004812 */  mflo  $t1
/* 0078F0 80006CF0 AC29A434 */  sw    $t1, %lo(D_8004A434)($at)
/* 0078F4 80006CF4 16E00002 */  bnez  $s7, .L80006D00_ovl0
/* 0078F8 80006CF8 00000000 */   nop   
/* 0078FC 80006CFC 0007000D */  break 7
.L80006D00_ovl0:
/* 007900 80006D00 0C0019F8 */  jal   func_800067E0_ovl0
/* 007904 80006D04 00000000 */   nop   
/* 007908 80006D08 14400003 */  bnez  $v0, .L80006D18_ovl0
/* 00790C 80006D0C 00000000 */   nop   
.L80006D10_ovl0:
/* 007910 80006D10 1000FFA8 */  b     .L80006BB4_ovl0
/* 007914 80006D14 00008025 */   move  $s0, $zero
.L80006D18_ovl0:
/* 007918 80006D18 0C0019D0 */  jal   func_80006740_ovl0
/* 00791C 80006D1C 00000000 */   nop   
/* 007920 80006D20 3C048005 */  lui   $a0, %hi(D_80049320) # $a0, 0x8005
/* 007924 80006D24 24849320 */  addiu $a0, %lo(D_80049320) # addiu $a0, $a0, -0x6ce0
/* 007928 80006D28 00002825 */  move  $a1, $zero
/* 00792C 80006D2C 0C00B540 */  jal   osRecvMesg
/* 007930 80006D30 00003025 */   move  $a2, $zero
/* 007934 80006D34 10530007 */  beq   $v0, $s3, .L80006D54_ovl0
.L80006D38_ovl0:
/* 007938 80006D38 3C048005 */   lui   $a0, %hi(D_80049320) # $a0, 0x8005
/* 00793C 80006D3C 24849320 */  addiu $a0, %lo(D_80049320) # addiu $a0, $a0, -0x6ce0
/* 007940 80006D40 00002825 */  move  $a1, $zero
/* 007944 80006D44 0C00B540 */  jal   osRecvMesg
/* 007948 80006D48 00003025 */   move  $a2, $zero
/* 00794C 80006D4C 1453FFFA */  bne   $v0, $s3, .L80006D38_ovl0
/* 007950 80006D50 00000000 */   nop   
.L80006D54_ovl0:
/* 007954 80006D54 3C048005 */  lui   $a0, %hi(D_80049340) # $a0, 0x8005
/* 007958 80006D58 24849340 */  addiu $a0, %lo(D_80049340) # addiu $a0, $a0, -0x6cc0
/* 00795C 80006D5C 00002825 */  move  $a1, $zero
/* 007960 80006D60 0C00B540 */  jal   osRecvMesg
/* 007964 80006D64 00003025 */   move  $a2, $zero
/* 007968 80006D68 10530007 */  beq   $v0, $s3, .L80006D88_ovl0
.L80006D6C_ovl0:
/* 00796C 80006D6C 3C048005 */   lui   $a0, %hi(D_80049340) # $a0, 0x8005
/* 007970 80006D70 24849340 */  addiu $a0, %lo(D_80049340) # addiu $a0, $a0, -0x6cc0
/* 007974 80006D74 00002825 */  move  $a1, $zero
/* 007978 80006D78 0C00B540 */  jal   osRecvMesg
/* 00797C 80006D7C 00003025 */   move  $a2, $zero
/* 007980 80006D80 1453FFFA */  bne   $v0, $s3, .L80006D6C_ovl0
/* 007984 80006D84 00000000 */   nop   
.L80006D88_ovl0:
/* 007988 80006D88 02202025 */  move  $a0, $s1
/* 00798C 80006D8C 00002825 */  move  $a1, $zero
/* 007990 80006D90 0C00B540 */  jal   osRecvMesg
/* 007994 80006D94 00003025 */   move  $a2, $zero
/* 007998 80006D98 10530006 */  beq   $v0, $s3, .L80006DB4_ovl0
/* 00799C 80006D9C 02202025 */   move  $a0, $s1
.L80006DA0_ovl0:
/* 0079A0 80006DA0 00002825 */  move  $a1, $zero
/* 0079A4 80006DA4 0C00B540 */  jal   osRecvMesg
/* 0079A8 80006DA8 00003025 */   move  $a2, $zero
/* 0079AC 80006DAC 5453FFFC */  bnel  $v0, $s3, .L80006DA0_ovl0
/* 0079B0 80006DB0 02202025 */   move  $a0, $s1
.L80006DB4_ovl0:
/* 0079B4 80006DB4 0C001F3A */  jal   func_80007CE8_ovl0
/* 0079B8 80006DB8 00002025 */   move  $a0, $zero
/* 0079BC 80006DBC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0079C0 80006DC0 240A0002 */  li    $t2, 2
/* 0079C4 80006DC4 3C018005 */  lui   $at, %hi(D_800492DC) # $at, 0x8005
/* 0079C8 80006DC8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0079CC 80006DCC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0079D0 80006DD0 8FB20020 */  lw    $s2, 0x20($sp)
/* 0079D4 80006DD4 8FB30024 */  lw    $s3, 0x24($sp)
/* 0079D8 80006DD8 8FB40028 */  lw    $s4, 0x28($sp)
/* 0079DC 80006DDC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0079E0 80006DE0 8FB60030 */  lw    $s6, 0x30($sp)
/* 0079E4 80006DE4 8FB70034 */  lw    $s7, 0x34($sp)
/* 0079E8 80006DE8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0079EC 80006DEC AC2A92DC */  sw    $t2, %lo(D_800492DC)($at)
/* 0079F0 80006DF0 03E00008 */  jr    $ra
/* 0079F4 80006DF4 27BD0040 */   addiu $sp, $sp, 0x40
