glabel func_80174C10_ovl3
/* D5650 80174C10 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5654 80174C14 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D5658 80174C18 ACE00030 */  sw         $zero, 0x30($a3)
.L80174C1C_ovl5:
/* D565C 80174C1C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* D5660 80174C20 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L80174C24_ovl5:
/* D5664 80174C24 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D5668 80174C28 AFBF0014 */  sw         $ra, 0x14($sp)
/* D566C 80174C2C AFA40030 */  sw         $a0, 0x30($sp)
/* D5670 80174C30 8DCF0000 */  lw         $t7, 0x0($t6)
/* D5674 80174C34 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* D5678 80174C38 3C014080 */  lui        $at, (0x40800000 >> 16)
/* D567C 80174C3C 000FC080 */  sll        $t8, $t7, 2
/* D5680 80174C40 0338C821 */  addu       $t9, $t9, $t8
/* D5684 80174C44 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* D5688 80174C48 33280006 */  andi       $t0, $t9, 0x6
/* D568C 80174C4C 51000006 */  beql       $t0, $zero, .L80174C68_ovl3
/* D5690 80174C50 44813000 */   mtc1      $at, $f6
/* D5694 80174C54 3C014000 */  lui        $at, (0x40000000 >> 16)
/* D5698 80174C58 44812000 */  mtc1       $at, $f4
/* D569C 80174C5C 10000004 */  b          .L80174C70_ovl3
/* D56A0 80174C60 E7A4001C */   swc1      $f4, 0x1C($sp)
/* D56A4 80174C64 44813000 */  mtc1       $at, $f6
.L80174C68_ovl3:
/* D56A8 80174C68 00000000 */  nop
/* D56AC 80174C6C E7A6001C */  swc1       $f6, 0x1C($sp)
.L80174C70_ovl3:
/* D56B0 80174C70 0C02BB30 */  jal        func_800AECC0
/* D56B4 80174C74 C7AC001C */   lwc1      $f12, 0x1C($sp)
/* D56B8 80174C78 0C02BB48 */  jal        func_800AED20
/* D56BC 80174C7C C7AC001C */   lwc1      $f12, 0x1C($sp)
/* D56C0 80174C80 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D56C4 80174C84 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D56C8 80174C88 3C018019 */  lui        $at, %hi(D_80197440_ovl3)
/* D56CC 80174C8C C4207440 */  lwc1       $f0, %lo(D_80197440_ovl3)($at)
/* D56D0 80174C90 8C6A0000 */  lw         $t2, 0x0($v1)
/* D56D4 80174C94 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* D56D8 80174C98 24090013 */  addiu      $t1, $zero, 0x13
/* D56DC 80174C9C 000A5880 */  sll        $t3, $t2, 2
/* D56E0 80174CA0 002B0821 */  addu       $at, $at, $t3
/* D56E4 80174CA4 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
/* D56E8 80174CA8 8C6C0000 */  lw         $t4, 0x0($v1)
/* D56EC 80174CAC 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* D56F0 80174CB0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D56F4 80174CB4 000C6880 */  sll        $t5, $t4, 2
/* D56F8 80174CB8 002D0821 */  addu       $at, $at, $t5
/* D56FC 80174CBC E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* D5700 80174CC0 8C6E0000 */  lw         $t6, 0x0($v1)
/* D5704 80174CC4 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* D5708 80174CC8 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D570C 80174CCC 000E7880 */  sll        $t7, $t6, 2
/* D5710 80174CD0 002F0821 */  addu       $at, $at, $t7
/* D5714 80174CD4 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
.L80174CD8_ovl5:
/* D5718 80174CD8 8C780000 */  lw         $t8, 0x0($v1)
/* D571C 80174CDC 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* D5720 80174CE0 24040001 */  addiu      $a0, $zero, 0x1
/* D5724 80174CE4 0018C880 */  sll        $t9, $t8, 2
/* D5728 80174CE8 00390821 */  addu       $at, $at, $t9
/* D572C 80174CEC E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* D5730 80174CF0 90E20004 */  lbu        $v0, 0x4($a3)
.L80174CF4_ovl5:
/* D5734 80174CF4 3C0B8019 */  lui        $t3, %hi(D_801926E8_ovl3)
/* D5738 80174CF8 3C088019 */  lui        $t0, %hi(D_80192704_ovl3)
/* D573C 80174CFC 14820008 */  bne        $a0, $v0, .L80174D20_ovl3
/* D5740 80174D00 3C0F8019 */   lui       $t7, %hi(D_80190358_ovl3)
/* D5744 80174D04 8C6A0000 */  lw         $t2, 0x0($v1)
/* D5748 80174D08 3C01800E */  lui        $at, %hi(D_800E0490)
/* D574C 80174D0C 25082704 */  addiu      $t0, $t0, %lo(D_80192704_ovl3)
/* D5750 80174D10 000A4880 */  sll        $t1, $t2, 2
/* D5754 80174D14 00290821 */  addu       $at, $at, $t1
/* D5758 80174D18 10000007 */  b          .L80174D38_ovl3
/* D575C 80174D1C AC280490 */   sw        $t0, %lo(D_800E0490)($at)
.L80174D20_ovl3:
/* D5760 80174D20 8C6C0000 */  lw         $t4, 0x0($v1)
/* D5764 80174D24 3C01800E */  lui        $at, %hi(D_800E0490)
/* D5768 80174D28 256B26E8 */  addiu      $t3, $t3, %lo(D_801926E8_ovl3)
/* D576C 80174D2C 000C6880 */  sll        $t5, $t4, 2
/* D5770 80174D30 002D0821 */  addu       $at, $at, $t5
.L80174D34_ovl5:
/* D5774 80174D34 AC2B0490 */  sw         $t3, %lo(D_800E0490)($at)
.L80174D38_ovl3:
/* D5778 80174D38 14820005 */  bne        $a0, $v0, .L80174D50_ovl3
/* D577C 80174D3C 25EF0358 */   addiu     $t7, $t7, %lo(D_80190358_ovl3)
/* D5780 80174D40 3C0E8019 */  lui        $t6, %hi(D_801903E0_ovl3)
/* D5784 80174D44 25CE03E0 */  addiu      $t6, $t6, %lo(D_801903E0_ovl3)
/* D5788 80174D48 10000002 */  b          .L80174D54_ovl3
/* D578C 80174D4C ACEE015C */   sw        $t6, 0x15C($a3)
.L80174D50_ovl3:
/* D5790 80174D50 ACEF015C */  sw         $t7, 0x15C($a3)
.L80174D54_ovl3:
/* D5794 80174D54 8C780000 */  lw         $t8, 0x0($v1)
/* D5798 80174D58 3C01800E */  lui        $at, %hi(D_800DF310)
/* D579C 80174D5C 44804000 */  mtc1       $zero, $f8
/* D57A0 80174D60 0018C880 */  sll        $t9, $t8, 2
/* D57A4 80174D64 00390821 */  addu       $at, $at, $t9
/* D57A8 80174D68 AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
/* D57AC 80174D6C 3C01800D */  lui        $at, %hi(D_800D6ED0 + 0x40)
.L80174D70_ovl5:
/* D57B0 80174D70 AC206F10 */  sw         $zero, %lo(D_800D6ED0 + 0x40)($at)
/* D57B4 80174D74 8C6A0000 */  lw         $t2, 0x0($v1)
/* D57B8 80174D78 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* D57BC 80174D7C 2409FFFF */  addiu      $t1, $zero, -0x1
/* D57C0 80174D80 000A4080 */  sll        $t0, $t2, 2
/* D57C4 80174D84 00280821 */  addu       $at, $at, $t0
/* D57C8 80174D88 E4284010 */  swc1       $f8, %lo(gEntitiesAngleXArray)($at)
/* D57CC 80174D8C ACE00034 */  sw         $zero, 0x34($a3)
/* D57D0 80174D90 A0E00007 */  sb         $zero, 0x7($a3)
/* D57D4 80174D94 A0E000B0 */  sb         $zero, 0xB0($a3)
/* D57D8 80174D98 8C6C0000 */  lw         $t4, 0x0($v1)
.L80174D9C_ovl5:
/* D57DC 80174D9C 3C01800F */  lui        $at, %hi(D_800E7CE0 + 0x380)
/* D57E0 80174DA0 000C5880 */  sll        $t3, $t4, 2
/* D57E4 80174DA4 002B0821 */  addu       $at, $at, $t3
/* D57E8 80174DA8 0C047717 */  jal        func_8011DC5C
/* D57EC 80174DAC AC298060 */   sw        $t1, %lo(D_800E7CE0 + 0x380)($at)
/* D57F0 80174DB0 0C04783A */  jal        func_8011E0E8
/* D57F4 80174DB4 00000000 */   nop
/* D57F8 80174DB8 0C04788D */  jal        func_8011E234
/* D57FC 80174DBC 00000000 */   nop
/* D5800 80174DC0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5804 80174DC4 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D5808 80174DC8 8CEE00A0 */  lw         $t6, 0xA0($a3)
/* D580C 80174DCC 240D00F0 */  addiu      $t5, $zero, 0xF0
/* D5810 80174DD0 24010012 */  addiu      $at, $zero, 0x12
/* D5814 80174DD4 11C10005 */  beq        $t6, $at, .L80174DEC_ovl5
/* D5818 80174DD8 ACED001C */   sw        $t5, 0x1C($a3)
/* D581C 80174DDC ACE000A0 */  sw         $zero, 0xA0($a3)
/* D5820 80174DE0 240F0003 */  addiu      $t7, $zero, 0x3
.L80174DE4_ovl5:
/* D5824 80174DE4 3C01801A */  lui        $at, %hi(D_80198838_ovl3)
/* D5828 80174DE8 A42F8838 */  sh         $t7, %lo(D_80198838_ovl3)($at)
.L80174DEC_ovl5:
/* D582C 80174DEC 80F8000D */  lb         $t8, 0xD($a3)
/* D5830 80174DF0 27190001 */  addiu      $t9, $t8, 0x1
/* D5834 80174DF4 2F210006 */  sltiu      $at, $t9, 0x6
/* D5838 80174DF8 10200019 */  beqz       $at, .L80174E60_ovl3
/* D583C 80174DFC 0019C880 */   sll       $t9, $t9, 2
/* D5840 80174E00 3C018019 */  lui        $at, %hi(jtbl_80197444_ovl3)
/* D5844 80174E04 00390821 */  addu       $at, $at, $t9
/* D5848 80174E08 8C397444 */  lw         $t9, %lo(jtbl_80197444_ovl3)($at)
/* D584C 80174E0C 03200008 */  jr         $t9
/* D5850 80174E10 00000000 */   nop
/* D5854 80174E14 240AFFFF */  addiu      $t2, $zero, -0x1
/* D5858 80174E18 A0EA000D */  sb         $t2, 0xD($a3)
/* D585C 80174E1C 10000011 */  b          .L80174E64_ovl3
/* D5860 80174E20 90E20004 */   lbu       $v0, 0x4($a3)
/* D5864 80174E24 24080002 */  addiu      $t0, $zero, 0x2
/* D5868 80174E28 A0E8000D */  sb         $t0, 0xD($a3)
/* D586C 80174E2C 1000000D */  b          .L80174E64_ovl3
/* D5870 80174E30 90E20004 */   lbu       $v0, 0x4($a3)
/* D5874 80174E34 90EC0006 */  lbu        $t4, 0x6($a3)
/* D5878 80174E38 24010018 */  addiu      $at, $zero, 0x18
.L80174E3C_ovl5:
/* D587C 80174E3C 15810006 */  bne        $t4, $at, .L80174E58_ovl3
/* D5880 80174E40 00000000 */   nop
/* D5884 80174E44 90E90004 */  lbu        $t1, 0x4($a3)
/* D5888 80174E48 240BFFFD */  addiu      $t3, $zero, -0x3
/* D588C 80174E4C 15200002 */  bnez       $t1, .L80174E58_ovl3
/* D5890 80174E50 00000000 */   nop
/* D5894 80174E54 A0EB000D */  sb         $t3, 0xD($a3)
.L80174E58_ovl3:
/* D5898 80174E58 10000002 */  b          .L80174E64_ovl3
/* D589C 80174E5C 90E20004 */   lbu       $v0, 0x4($a3)
.L80174E60_ovl3:
/* D58A0 80174E60 90E20004 */  lbu        $v0, 0x4($a3)
.L80174E64_ovl3:
/* D58A4 80174E64 24010001 */  addiu      $at, $zero, 0x1
/* D58A8 80174E68 1441000D */  bne        $v0, $at, .L80174EA0_ovl3
/* D58AC 80174E6C 3C040002 */   lui       $a0, (0x20007 >> 16)
/* D58B0 80174E70 3C040002 */  lui        $a0, (0x20009 >> 16)
/* D58B4 80174E74 0C02AA22 */  jal        func_800AA888
/* D58B8 80174E78 34840009 */   ori       $a0, $a0, (0x20009 & 0xFFFF)
/* D58BC 80174E7C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D58C0 80174E80 14400011 */  bnez       $v0, .L80174EC8_ovl3
/* D58C4 80174E84 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* D58C8 80174E88 3C040002 */  lui        $a0, (0x20009 >> 16)
/* D58CC 80174E8C 0C048BC2 */  jal        func_80122F08
/* D58D0 80174E90 34840009 */   ori       $a0, $a0, (0x20009 & 0xFFFF)
.L80174E94_ovl5:
/* D58D4 80174E94 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D58D8 80174E98 1000000B */  b          .L80174EC8_ovl3
/* D58DC 80174E9C 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L80174EA0_ovl3:
/* D58E0 80174EA0 0C02AA22 */  jal        func_800AA888
/* D58E4 80174EA4 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
/* D58E8 80174EA8 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D58EC 80174EAC 14400006 */  bnez       $v0, .L80174EC8_ovl3
/* D58F0 80174EB0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* D58F4 80174EB4 3C040002 */  lui        $a0, (0x20007 >> 16)
/* D58F8 80174EB8 0C048BC2 */  jal        func_80122F08
/* D58FC 80174EBC 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
/* D5900 80174EC0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5904 80174EC4 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L80174EC8_ovl3:
/* D5908 80174EC8 240D0002 */  addiu      $t5, $zero, 0x2
/* D590C 80174ECC ACED0154 */  sw         $t5, 0x154($a3)
/* D5910 80174ED0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5914 80174ED4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D5918 80174ED8 44805000 */  mtc1       $zero, $f10
.L80174EDC_ovl5:
/* D591C 80174EDC 3C06800E */  lui        $a2, %hi(D_800E3750)
/* D5920 80174EE0 8C6E0000 */  lw         $t6, 0x0($v1)
/* D5924 80174EE4 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* D5928 80174EE8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D592C 80174EEC 000E7880 */  sll        $t7, $t6, 2
/* D5930 80174EF0 00CFC021 */  addu       $t8, $a2, $t7
/* D5934 80174EF4 E70A0000 */  swc1       $f10, 0x0($t8)
/* D5938 80174EF8 8C620000 */  lw         $v0, 0x0($v1)
/* D593C 80174EFC 44816000 */  mtc1       $at, $f12
/* D5940 80174F00 3C01800E */  lui        $at, %hi(D_800E3210)
/* D5944 80174F04 00021080 */  sll        $v0, $v0, 2
/* D5948 80174F08 00C2C821 */  addu       $t9, $a2, $v0
/* D594C 80174F0C C7300000 */  lwc1       $f16, 0x0($t9)
/* D5950 80174F10 00220821 */  addu       $at, $at, $v0
/* D5954 80174F14 240C0001 */  addiu      $t4, $zero, 0x1
/* D5958 80174F18 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* D595C 80174F1C 8C6A0000 */  lw         $t2, 0x0($v1)
/* D5960 80174F20 3C018019 */  lui        $at, %hi(D_8019745C_ovl3)
/* D5964 80174F24 C432745C */  lwc1       $f18, %lo(D_8019745C_ovl3)($at)
/* D5968 80174F28 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D596C 80174F2C 000A4080 */  sll        $t0, $t2, 2
/* D5970 80174F30 00280821 */  addu       $at, $at, $t0
/* D5974 80174F34 E4323C90 */  swc1       $f18, %lo(D_800E3C90)($at)
/* D5978 80174F38 A4EC0068 */  sh         $t4, 0x68($a3)
/* D597C 80174F3C 8C620000 */  lw         $v0, 0x0($v1)
/* D5980 80174F40 3C09800F */  lui        $t1, %hi(D_800E83E0 + 0x1C0)
/* D5984 80174F44 3C01800E */  lui        $at, %hi(D_800E6A10)
/* D5988 80174F48 00021080 */  sll        $v0, $v0, 2
/* D598C 80174F4C 01224821 */  addu       $t1, $t1, $v0
/* D5990 80174F50 8D2985A0 */  lw         $t1, %lo(D_800E83E0 + 0x1C0)($t1)
/* D5994 80174F54 00220821 */  addu       $at, $at, $v0
.L80174F58_ovl5:
/* D5998 80174F58 00002825 */  or         $a1, $zero, $zero
.L80174F5C_ovl5:
/* D599C 80174F5C 44892000 */  mtc1       $t1, $f4
/* D59A0 80174F60 00000000 */  nop
/* D59A4 80174F64 46802020 */  cvt.s.w    $f0, $f4
/* D59A8 80174F68 46006032 */  c.eq.s     $f12, $f0
/* D59AC 80174F6C 00000000 */  nop
/* D59B0 80174F70 45020006 */  bc1fl      .L80174F8C_ovl3
/* D59B4 80174F74 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
/* D59B8 80174F78 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* D59BC 80174F7C 46066032 */  c.eq.s     $f12, $f6
/* D59C0 80174F80 00000000 */  nop
/* D59C4 80174F84 4501000C */  bc1t       .L80174FB8_ovl3
/* D59C8 80174F88 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
.L80174F8C_ovl3:
/* D59CC 80174F8C 44811000 */  mtc1       $at, $f2
/* D59D0 80174F90 3C01800E */  lui        $at, %hi(D_800E6A10)
/* D59D4 80174F94 00220821 */  addu       $at, $at, $v0
/* D59D8 80174F98 46001032 */  c.eq.s     $f2, $f0
/* D59DC 80174F9C 00000000 */  nop
/* D59E0 80174FA0 45020009 */  bc1fl      .L80174FC8_ovl3
/* D59E4 80174FA4 ACE00044 */   sw        $zero, 0x44($a3)
/* D59E8 80174FA8 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* D59EC 80174FAC 46081032 */  c.eq.s     $f2, $f8
/* D59F0 80174FB0 00000000 */  nop
/* D59F4 80174FB4 45000003 */  bc1f       .L80174FC4_ovl3
.L80174FB8_ovl3:
/* D59F8 80174FB8 240B0001 */   addiu     $t3, $zero, 0x1
/* D59FC 80174FBC 10000002 */  b          .L80174FC8_ovl3
/* D5A00 80174FC0 ACEB0044 */   sw        $t3, 0x44($a3)
.L80174FC4_ovl3:
/* D5A04 80174FC4 ACE00044 */  sw         $zero, 0x44($a3)
.L80174FC8_ovl3:
/* D5A08 80174FC8 8CE40140 */  lw         $a0, 0x140($a3)
.L80174FCC_ovl5:
/* D5A0C 80174FCC 5480000C */  bnel       $a0, $zero, .L80175000_ovl3
/* D5A10 80174FD0 A4E400D4 */   sh        $a0, 0xD4($a3)
.L80174FD4_ovl5:
/* D5A14 80174FD4 8C6D0000 */  lw         $t5, 0x0($v1)
/* D5A18 80174FD8 3C0F800F */  lui        $t7, %hi(D_800E83E0)
/* D5A1C 80174FDC 3C0100FF */  lui        $at, (0xFF0000 >> 16)
/* D5A20 80174FE0 000D7080 */  sll        $t6, $t5, 2
/* D5A24 80174FE4 01EE7821 */  addu       $t7, $t7, $t6
/* D5A28 80174FE8 8DEF83E0 */  lw         $t7, %lo(D_800E83E0)($t7)
/* D5A2C 80174FEC 01E1C024 */  and        $t8, $t7, $at
/* D5A30 80174FF0 0018CC03 */  sra        $t9, $t8, 16
/* D5A34 80174FF4 10000002 */  b          .L80175000_ovl3
/* D5A38 80174FF8 A4F900D4 */   sh        $t9, 0xD4($a3)
.L80174FFC_ovl5:
/* D5A3C 80174FFC A4E400D4 */  sh         $a0, 0xD4($a3)
.L80175000_ovl3:
/* D5A40 80175000 0C02ED1A */  jal        func_800BB468
/* D5A44 80175004 00002025 */   or        $a0, $zero, $zero
/* D5A48 80175008 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5A4C 8017500C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D5A50 80175010 8CE80140 */  lw         $t0, 0x140($a3)
/* D5A54 80175014 51000007 */  beql       $t0, $zero, .L80175034_ovl3
.L80175018_ovl5:
/* D5A58 80175018 90E20006 */   lbu       $v0, 0x6($a3)
/* D5A5C 8017501C 84EC00D4 */  lh         $t4, 0xD4($a3)
/* D5A60 80175020 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5A64 80175024 29810002 */  slti       $at, $t4, 0x2
/* D5A68 80175028 102000FD */  beqz       $at, .L80175420_ovl3
/* D5A6C 8017502C 00000000 */   nop
/* D5A70 80175030 90E20006 */  lbu        $v0, 0x6($a3)
.L80175034_ovl3:
/* D5A74 80175034 2401000B */  addiu      $at, $zero, 0xB
/* D5A78 80175038 10410003 */  beq        $v0, $at, .L80175048_ovl3
/* D5A7C 8017503C 2401000A */   addiu     $at, $zero, 0xA
/* D5A80 80175040 14410014 */  bne        $v0, $at, .L80175094_ovl3
/* D5A84 80175044 00000000 */   nop
.L80175048_ovl3:
/* D5A88 80175048 8CE90044 */  lw         $t1, 0x44($a3)
/* D5A8C 8017504C 3C040002 */  lui        $a0, (0x20071 >> 16)
/* D5A90 80175050 34840071 */  ori        $a0, $a0, (0x20071 & 0xFFFF)
/* D5A94 80175054 11200004 */  beqz       $t1, .L80175068_ovl3
/* D5A98 80175058 00000000 */   nop
/* D5A9C 8017505C 3C040002 */  lui        $a0, (0x2006B >> 16)
/* D5AA0 80175060 10000001 */  b          .L80175068_ovl3
.L80175064_ovl5:
/* D5AA4 80175064 3484006B */   ori       $a0, $a0, (0x2006B & 0xFFFF)
.L80175068_ovl3:
/* D5AA8 80175068 0C0473D6 */  jal        func_8011CF58
.L8017506C_ovl5:
/* D5AAC 8017506C AFA4002C */   sw        $a0, 0x2C($sp)
/* D5AB0 80175070 3C050002 */  lui        $a1, (0x20007 >> 16)
/* D5AB4 80175074 8FA4002C */  lw         $a0, 0x2C($sp)
/* D5AB8 80175078 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
/* D5ABC 8017507C 0C02A9E3 */  jal        func_800AA78C
/* D5AC0 80175080 3C064040 */   lui       $a2, (0x40400000 >> 16)
/* D5AC4 80175084 0C02BB30 */  jal        func_800AECC0
/* D5AC8 80175088 C7AC001C */   lwc1      $f12, 0x1C($sp)
/* D5ACC 8017508C 0C02BB48 */  jal        func_800AED20
/* D5AD0 80175090 C7AC001C */   lwc1      $f12, 0x1C($sp)
.L80175094_ovl3:
/* D5AD4 80175094 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* D5AD8 80175098 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* D5ADC 8017509C 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* D5AE0 801750A0 8D6D0000 */  lw         $t5, 0x0($t3)
/* D5AE4 801750A4 000D7080 */  sll        $t6, $t5, 2
/* D5AE8 801750A8 01EE7821 */  addu       $t7, $t7, $t6
/* D5AEC 801750AC 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* D5AF0 801750B0 0C048A84 */  jal        func_80122A10
/* D5AF4 801750B4 8DE40008 */   lw        $a0, 0x8($t7)
/* D5AF8 801750B8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5AFC 801750BC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D5B00 801750C0 3C18800F */  lui        $t8, %hi(D_800E83E0 + 0x1C0)
/* D5B04 801750C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D5B08 801750C8 8C620000 */  lw         $v0, 0x0($v1)
/* D5B0C 801750CC 44815000 */  mtc1       $at, $f10
/* D5B10 801750D0 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5B14 801750D4 00021080 */  sll        $v0, $v0, 2
/* D5B18 801750D8 0302C021 */  addu       $t8, $t8, $v0
/* D5B1C 801750DC 8F1885A0 */  lw         $t8, %lo(D_800E83E0 + 0x1C0)($t8)
/* D5B20 801750E0 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* D5B24 801750E4 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D5B28 801750E8 44988000 */  mtc1       $t8, $f16
/* D5B2C 801750EC 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* D5B30 801750F0 0322C821 */  addu       $t9, $t9, $v0
/* D5B34 801750F4 468084A0 */  cvt.s.w    $f18, $f16
/* D5B38 801750F8 46125032 */  c.eq.s     $f10, $f18
/* D5B3C 801750FC 00000000 */  nop
/* D5B40 80175100 45020007 */  bc1fl      .L80175120_ovl3
/* D5B44 80175104 44810000 */   mtc1      $at, $f0
/* D5B48 80175108 3C014100 */  lui        $at, (0x41000000 >> 16)
.L8017510C_ovl5:
/* D5B4C 8017510C 44810000 */  mtc1       $at, $f0
/* D5B50 80175110 3C018019 */  lui        $at, %hi(D_80197460_ovl3)
/* D5B54 80175114 10000004 */  b          .L80175128_ovl3
/* D5B58 80175118 C4227460 */   lwc1      $f2, %lo(D_80197460_ovl3)($at)
/* D5B5C 8017511C 44810000 */  mtc1       $at, $f0
.L80175120_ovl3:
/* D5B60 80175120 3C018019 */  lui        $at, %hi(D_80197464_ovl3)
/* D5B64 80175124 C4227464 */  lwc1       $f2, %lo(D_80197464_ovl3)($at)
.L80175128_ovl3:
/* D5B68 80175128 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* D5B6C 8017512C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* D5B70 80175130 13200007 */  beqz       $t9, .L80175150_ovl3
/* D5B74 80175134 00000000 */   nop
/* D5B78 80175138 44817000 */  mtc1       $at, $f14
/* D5B7C 8017513C 00000000 */  nop
/* D5B80 80175140 460E0002 */  mul.s      $f0, $f0, $f14
/* D5B84 80175144 00000000 */  nop
/* D5B88 80175148 460E1082 */  mul.s      $f2, $f2, $f14
/* D5B8C 8017514C 00000000 */  nop
.L80175150_ovl3:
/* D5B90 80175150 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D5B94 80175154 44807000 */  mtc1       $zero, $f14
/* D5B98 80175158 00220821 */  addu       $at, $at, $v0
/* D5B9C 8017515C E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* D5BA0 80175160 8C6A0000 */  lw         $t2, 0x0($v1)
/* D5BA4 80175164 460E003C */  c.lt.s     $f0, $f14
/* D5BA8 80175168 3C01800E */  lui        $at, %hi(D_800E6690)
/* D5BAC 8017516C 000A4080 */  sll        $t0, $t2, 2
.L80175170_ovl5:
/* D5BB0 80175170 00280821 */  addu       $at, $at, $t0
/* D5BB4 80175174 45000008 */  bc1f       .L80175198_ovl3
/* D5BB8 80175178 E4226690 */   swc1      $f2, %lo(D_800E6690)($at)
/* D5BBC 8017517C 8C6C0000 */  lw         $t4, 0x0($v1)
/* D5BC0 80175180 3C01800E */  lui        $at, %hi(D_800E6850)
/* D5BC4 80175184 46000107 */  neg.s      $f4, $f0
/* D5BC8 80175188 000C4880 */  sll        $t1, $t4, 2
/* D5BCC 8017518C 00290821 */  addu       $at, $at, $t1
/* D5BD0 80175190 10000006 */  b          .L801751AC_ovl3
/* D5BD4 80175194 E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
.L80175198_ovl3:
/* D5BD8 80175198 8C6B0000 */  lw         $t3, 0x0($v1)
/* D5BDC 8017519C 3C01800E */  lui        $at, %hi(D_800E6850)
/* D5BE0 801751A0 000B6880 */  sll        $t5, $t3, 2
/* D5BE4 801751A4 002D0821 */  addu       $at, $at, $t5
/* D5BE8 801751A8 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801751AC_ovl3:
/* D5BEC 801751AC 90E20004 */  lbu        $v0, 0x4($a3)
.L801751B0_ovl5:
/* D5BF0 801751B0 24010001 */  addiu      $at, $zero, 0x1
/* D5BF4 801751B4 50400008 */  beql       $v0, $zero, .L801751D8_ovl3
/* D5BF8 801751B8 84EE00D4 */   lh        $t6, 0xD4($a3)
/* D5BFC 801751BC 1041008B */  beq        $v0, $at, .L801753EC_ovl3
/* D5C00 801751C0 24010002 */   addiu     $at, $zero, 0x2
/* D5C04 801751C4 50410075 */  beql       $v0, $at, .L8017539C_ovl3
/* D5C08 801751C8 84EF00D4 */   lh        $t7, 0xD4($a3)
/* D5C0C 801751CC 10000144 */  b          .L801756E0_ovl3
/* D5C10 801751D0 8C690000 */   lw        $t1, 0x0($v1)
/* D5C14 801751D4 84EE00D4 */  lh         $t6, 0xD4($a3)
.L801751D8_ovl3:
/* D5C18 801751D8 29C10002 */  slti       $at, $t6, 0x2
/* D5C1C 801751DC 14200006 */  bnez       $at, .L801751F8_ovl3
.L801751E0_ovl5:
/* D5C20 801751E0 00000000 */   nop
/* D5C24 801751E4 0C029D9E */  jal        play_sound
/* D5C28 801751E8 240400D9 */   addiu     $a0, $zero, 0xD9
/* D5C2C 801751EC 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5C30 801751F0 10000005 */  b          .L80175208_ovl3
/* D5C34 801751F4 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L801751F8_ovl3:
/* D5C38 801751F8 0C029D9E */  jal        play_sound
/* D5C3C 801751FC 240400D8 */   addiu     $a0, $zero, 0xD8
/* D5C40 80175200 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5C44 80175204 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L80175208_ovl3:
/* D5C48 80175208 8CEF0044 */  lw         $t7, 0x44($a3)
/* D5C4C 8017520C 3C040002 */  lui        $a0, (0x20071 >> 16)
/* D5C50 80175210 34840071 */  ori        $a0, $a0, (0x20071 & 0xFFFF)
.L80175214_ovl5:
/* D5C54 80175214 11E0000A */  beqz       $t7, .L80175240_ovl3
/* D5C58 80175218 3C050002 */   lui       $a1, (0x20072 >> 16)
/* D5C5C 8017521C 3C040002 */  lui        $a0, (0x2006B >> 16)
/* D5C60 80175220 3C050002 */  lui        $a1, (0x2006C >> 16)
/* D5C64 80175224 34A5006C */  ori        $a1, $a1, (0x2006C & 0xFFFF)
/* D5C68 80175228 3484006B */  ori        $a0, $a0, (0x2006B & 0xFFFF)
/* D5C6C 8017522C 0C048C3A */  jal        func_801230E8
/* D5C70 80175230 24060001 */   addiu     $a2, $zero, 0x1
/* D5C74 80175234 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5C78 80175238 10000006 */  b          .L80175254_ovl3
/* D5C7C 8017523C 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L80175240_ovl3:
/* D5C80 80175240 34A50072 */  ori        $a1, $a1, (0x20072 & 0xFFFF)
/* D5C84 80175244 0C048C3A */  jal        func_801230E8
/* D5C88 80175248 24060001 */   addiu     $a2, $zero, 0x1
/* D5C8C 8017524C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5C90 80175250 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L80175254_ovl3:
/* D5C94 80175254 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5C98 80175258 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D5C9C 8017525C 3C18800F */  lui        $t8, %hi(D_800E8920)
/* D5CA0 80175260 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* D5CA4 80175264 8C620000 */  lw         $v0, 0x0($v1)
/* D5CA8 80175268 00021080 */  sll        $v0, $v0, 2
/* D5CAC 8017526C 0302C021 */  addu       $t8, $t8, $v0
/* D5CB0 80175270 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* D5CB4 80175274 0322C821 */  addu       $t9, $t9, $v0
/* D5CB8 80175278 57000032 */  bnel       $t8, $zero, .L80175344_ovl3
/* D5CBC 8017527C 8CEE0044 */   lw        $t6, 0x44($a3)
/* D5CC0 80175280 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* D5CC4 80175284 3C040002 */  lui        $a0, (0x20075 >> 16)
/* D5CC8 80175288 3C018019 */  lui        $at, %hi(D_8019746C_ovl3)
/* D5CCC 8017528C 332A0006 */  andi       $t2, $t9, 0x6
/* D5CD0 80175290 1140000E */  beqz       $t2, .L801752CC_ovl3
/* D5CD4 80175294 34840075 */   ori       $a0, $a0, (0x20075 & 0xFFFF)
/* D5CD8 80175298 3C018019 */  lui        $at, %hi(D_80197468_ovl3)
/* D5CDC 8017529C C4267468 */  lwc1       $f6, %lo(D_80197468_ovl3)($at)
/* D5CE0 801752A0 3C01800E */  lui        $at, %hi(D_800E3750)
/* D5CE4 801752A4 00220821 */  addu       $at, $at, $v0
/* D5CE8 801752A8 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* D5CEC 801752AC 8C680000 */  lw         $t0, 0x0($v1)
/* D5CF0 801752B0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D5CF4 801752B4 44814000 */  mtc1       $at, $f8
/* D5CF8 801752B8 3C01800E */  lui        $at, %hi(D_800E3C90)
.L801752BC_ovl5:
/* D5CFC 801752BC 00086080 */  sll        $t4, $t0, 2
/* D5D00 801752C0 002C0821 */  addu       $at, $at, $t4
/* D5D04 801752C4 1000000C */  b          .L801752F8_ovl3
/* D5D08 801752C8 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
.L801752CC_ovl3:
/* D5D0C 801752CC C430746C */  lwc1       $f16, %lo(D_8019746C_ovl3)($at)
/* D5D10 801752D0 3C01800E */  lui        $at, %hi(D_800E3750)
.L801752D4_ovl5:
/* D5D14 801752D4 00220821 */  addu       $at, $at, $v0
/* D5D18 801752D8 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* D5D1C 801752DC 8C690000 */  lw         $t1, 0x0($v1)
/* D5D20 801752E0 3C014180 */  lui        $at, (0x41800000 >> 16)
/* D5D24 801752E4 44815000 */  mtc1       $at, $f10
/* D5D28 801752E8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D5D2C 801752EC 00095880 */  sll        $t3, $t1, 2
/* D5D30 801752F0 002B0821 */  addu       $at, $at, $t3
/* D5D34 801752F4 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
.L801752F8_ovl3:
/* D5D38 801752F8 8CED0044 */  lw         $t5, 0x44($a3)
/* D5D3C 801752FC 3C050002 */  lui        $a1, (0x20076 >> 16)
/* D5D40 80175300 24060001 */  addiu      $a2, $zero, 0x1
/* D5D44 80175304 11A00009 */  beqz       $t5, .L8017532C_ovl3
/* D5D48 80175308 34A50076 */   ori       $a1, $a1, (0x20076 & 0xFFFF)
/* D5D4C 8017530C 3C040002 */  lui        $a0, (0x2006F >> 16)
/* D5D50 80175310 3C050002 */  lui        $a1, (0x20070 >> 16)
/* D5D54 80175314 34A50070 */  ori        $a1, $a1, (0x20070 & 0xFFFF)
/* D5D58 80175318 0C048C3A */  jal        func_801230E8
/* D5D5C 8017531C 3484006F */   ori       $a0, $a0, (0x2006F & 0xFFFF)
/* D5D60 80175320 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5D64 80175324 10000019 */  b          .L8017538C_ovl3
/* D5D68 80175328 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L8017532C_ovl3:
/* D5D6C 8017532C 0C048C3A */  jal        func_801230E8
/* D5D70 80175330 24060001 */   addiu     $a2, $zero, 0x1
/* D5D74 80175334 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5D78 80175338 10000014 */  b          .L8017538C_ovl3
/* D5D7C 8017533C 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* D5D80 80175340 8CEE0044 */  lw         $t6, %lo(D_80130044)($a3)
.L80175344_ovl3:
/* D5D84 80175344 3C040002 */  lui        $a0, (0x20073 >> 16)
/* D5D88 80175348 34840073 */  ori        $a0, $a0, (0x20073 & 0xFFFF)
/* D5D8C 8017534C 11C0000A */  beqz       $t6, .L80175378_ovl3
/* D5D90 80175350 3C050002 */   lui       $a1, (0x20074 >> 16)
/* D5D94 80175354 3C040002 */  lui        $a0, (0x2006D >> 16)
/* D5D98 80175358 3C050002 */  lui        $a1, (0x2006E >> 16)
/* D5D9C 8017535C 34A5006E */  ori        $a1, $a1, (0x2006E & 0xFFFF)
/* D5DA0 80175360 3484006D */  ori        $a0, $a0, (0x2006D & 0xFFFF)
/* D5DA4 80175364 0C048C3A */  jal        func_801230E8
/* D5DA8 80175368 24060001 */   addiu     $a2, $zero, 0x1
/* D5DAC 8017536C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5DB0 80175370 10000006 */  b          .L8017538C_ovl3
/* D5DB4 80175374 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L80175378_ovl3:
/* D5DB8 80175378 34A50074 */  ori        $a1, $a1, (0x20074 & 0xFFFF)
/* D5DBC 8017537C 0C048C3A */  jal        func_801230E8
/* D5DC0 80175380 24060001 */   addiu     $a2, $zero, 0x1
/* D5DC4 80175384 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5DC8 80175388 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L8017538C_ovl3:
/* D5DCC 8017538C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5DD0 80175390 100000D2 */  b          .L801756DC_ovl3
/* D5DD4 80175394 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L80175398_ovl5:
/* D5DD8 80175398 84EF00D4 */  lh         $t7, 0xD4($a3)
.L8017539C_ovl3:
/* D5DDC 8017539C 29E10002 */  slti       $at, $t7, 0x2
/* D5DE0 801753A0 14200005 */  bnez       $at, .L801753B8_ovl3
/* D5DE4 801753A4 00000000 */   nop
/* D5DE8 801753A8 0C029D9E */  jal        play_sound
/* D5DEC 801753AC 240400D9 */   addiu     $a0, $zero, 0xD9
/* D5DF0 801753B0 10000004 */  b          .L801753C4_ovl3
.L801753B4_ovl5:
/* D5DF4 801753B4 3C040002 */   lui       $a0, (0x200BF >> 16)
.L801753B8_ovl3:
/* D5DF8 801753B8 0C029D9E */  jal        play_sound
/* D5DFC 801753BC 240400D8 */   addiu     $a0, $zero, 0xD8
/* D5E00 801753C0 3C040002 */  lui        $a0, (0x200BF >> 16)
.L801753C4_ovl3:
/* D5E04 801753C4 3C050002 */  lui        $a1, (0x200C0 >> 16)
/* D5E08 801753C8 34A500C0 */  ori        $a1, $a1, (0x200C0 & 0xFFFF)
/* D5E0C 801753CC 348400BF */  ori        $a0, $a0, (0x200BF & 0xFFFF)
/* D5E10 801753D0 0C048C3A */  jal        func_801230E8
/* D5E14 801753D4 24060001 */   addiu     $a2, $zero, 0x1
/* D5E18 801753D8 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5E1C 801753DC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5E20 801753E0 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D5E24 801753E4 100000BD */  b          .L801756DC_ovl3
/* D5E28 801753E8 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L801753EC_ovl3:
/* D5E2C 801753EC 0C029D9E */  jal        play_sound
/* D5E30 801753F0 240400DB */   addiu     $a0, $zero, 0xDB
/* D5E34 801753F4 3C040002 */  lui        $a0, (0x20161 >> 16)
/* D5E38 801753F8 3C050002 */  lui        $a1, (0x20162 >> 16)
/* D5E3C 801753FC 34A50162 */  ori        $a1, $a1, (0x20162 & 0xFFFF)
/* D5E40 80175400 34840161 */  ori        $a0, $a0, (0x20161 & 0xFFFF)
/* D5E44 80175404 0C048C3A */  jal        func_801230E8
/* D5E48 80175408 24060001 */   addiu     $a2, $zero, 0x1
/* D5E4C 8017540C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5E50 80175410 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5E54 80175414 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D5E58 80175418 100000B0 */  b          .L801756DC_ovl3
/* D5E5C 8017541C 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L80175420_ovl3:
/* D5E60 80175420 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D5E64 80175424 3C01800F */  lui        $at, %hi(D_800E8920)
/* D5E68 80175428 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* D5E6C 8017542C 8C780000 */  lw         $t8, 0x0($v1)
/* D5E70 80175430 0018C880 */  sll        $t9, $t8, 2
/* D5E74 80175434 00390821 */  addu       $at, $at, $t9
/* D5E78 80175438 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* D5E7C 8017543C 8C6A0000 */  lw         $t2, 0x0($v1)
/* D5E80 80175440 000A4080 */  sll        $t0, $t2, 2
/* D5E84 80175444 01886021 */  addu       $t4, $t4, $t0
/* D5E88 80175448 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* D5E8C 8017544C 0C048A84 */  jal        func_80122A10
.L80175450_ovl5:
/* D5E90 80175450 8D840008 */   lw        $a0, 0x8($t4)
.L80175454_ovl5:
/* D5E94 80175454 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5E98 80175458 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D5E9C 8017545C 90E90004 */  lbu        $t1, 0x4($a3)
/* D5EA0 80175460 24010001 */  addiu      $at, $zero, 0x1
/* D5EA4 80175464 11210006 */  beq        $t1, $at, .L80175480_ovl3
/* D5EA8 80175468 00000000 */   nop
/* D5EAC 8017546C 0C029D9E */  jal        play_sound
/* D5EB0 80175470 240400D9 */   addiu     $a0, $zero, 0xD9
/* D5EB4 80175474 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5EB8 80175478 10000005 */  b          .L80175490_ovl3
/* D5EBC 8017547C 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L80175480_ovl3:
/* D5EC0 80175480 0C029D9E */  jal        play_sound
/* D5EC4 80175484 240400DB */   addiu     $a0, $zero, 0xDB
/* D5EC8 80175488 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D5ECC 8017548C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L80175490_ovl3:
/* D5ED0 80175490 8CE40140 */  lw         $a0, 0x140($a3)
/* D5ED4 80175494 3C014190 */  lui        $at, (0x41900000 >> 16)
/* D5ED8 80175498 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D5EDC 8017549C 00045BC0 */  sll        $t3, $a0, 15
/* D5EE0 801754A0 05630005 */  bgezl      $t3, .L801754B8_ovl3
/* D5EE4 801754A4 44810000 */   mtc1      $at, $f0
/* D5EE8 801754A8 44800000 */  mtc1       $zero, $f0
/* D5EEC 801754AC 10000003 */  b          .L801754BC_ovl3
/* D5EF0 801754B0 00000000 */   nop
/* D5EF4 801754B4 44810000 */  mtc1       $at, $f0
.L801754B8_ovl3:
/* D5EF8 801754B8 00000000 */  nop
.L801754BC_ovl3:
/* D5EFC 801754BC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D5F00 801754C0 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
.L801754C4_ovl5:
/* D5F04 801754C4 3C018019 */  lui        $at, %hi(D_80197474_ovl3)
/* D5F08 801754C8 8C620000 */  lw         $v0, 0x0($v1)
/* D5F0C 801754CC 00045B40 */  sll        $t3, $a0, 13
/* D5F10 801754D0 00021080 */  sll        $v0, $v0, 2
/* D5F14 801754D4 01A26821 */  addu       $t5, $t5, $v0
/* D5F18 801754D8 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* D5F1C 801754DC 31AE0006 */  andi       $t6, $t5, 0x6
/* D5F20 801754E0 11C0000A */  beqz       $t6, .L8017550C_ovl3
/* D5F24 801754E4 00000000 */   nop
/* D5F28 801754E8 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* D5F2C 801754EC 44817000 */  mtc1       $at, $f14
/* D5F30 801754F0 3C018019 */  lui        $at, %hi(D_80197470_ovl3)
/* D5F34 801754F4 C4227470 */  lwc1       $f2, %lo(D_80197470_ovl3)($at)
/* D5F38 801754F8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D5F3C 801754FC 44816000 */  mtc1       $at, $f12
/* D5F40 80175500 460E0002 */  mul.s      $f0, $f0, $f14
/* D5F44 80175504 10000005 */  b          .L8017551C_ovl3
/* D5F48 80175508 00000000 */   nop
.L8017550C_ovl3:
/* D5F4C 8017550C C4227474 */  lwc1       $f2, %lo(D_80197474_ovl3)($at)
/* D5F50 80175510 3C014190 */  lui        $at, (0x41900000 >> 16)
/* D5F54 80175514 44816000 */  mtc1       $at, $f12
glabel func_80175518_ovl5
/* D5F58 80175518 00000000 */  nop
.L8017551C_ovl3:
/* D5F5C 8017551C 3C01800E */  lui        $at, %hi(D_800E3210)
/* D5F60 80175520 44807000 */  mtc1       $zero, $f14
/* D5F64 80175524 00220821 */  addu       $at, $at, $v0
/* D5F68 80175528 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* D5F6C 8017552C 8C6F0000 */  lw         $t7, 0x0($v1)
/* D5F70 80175530 460E603C */  c.lt.s     $f12, $f14
/* D5F74 80175534 3C01800E */  lui        $at, %hi(D_800E3750)
/* D5F78 80175538 000FC080 */  sll        $t8, $t7, 2
/* D5F7C 8017553C 00380821 */  addu       $at, $at, $t8
/* D5F80 80175540 45000008 */  bc1f       .L80175564_ovl3
/* D5F84 80175544 E4223750 */   swc1      $f2, %lo(D_800E3750)($at)
/* D5F88 80175548 8C790000 */  lw         $t9, 0x0($v1)
/* D5F8C 8017554C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D5F90 80175550 46006487 */  neg.s      $f18, $f12
/* D5F94 80175554 00195080 */  sll        $t2, $t9, 2
/* D5F98 80175558 002A0821 */  addu       $at, $at, $t2
/* D5F9C 8017555C 10000006 */  b          .L80175578_ovl3
/* D5FA0 80175560 E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
.L80175564_ovl3:
/* D5FA4 80175564 8C680000 */  lw         $t0, 0x0($v1)
/* D5FA8 80175568 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D5FAC 8017556C 00086080 */  sll        $t4, $t0, 2
/* D5FB0 80175570 002C0821 */  addu       $at, $at, $t4
/* D5FB4 80175574 E42C3C90 */  swc1       $f12, %lo(D_800E3C90)($at)
.L80175578_ovl3:
/* D5FB8 80175578 3C01000C */  lui        $at, (0xC0000 >> 16)
/* D5FBC 8017557C 00814824 */  and        $t1, $a0, $at
/* D5FC0 80175580 11200023 */  beqz       $t1, .L80175610_ovl3
/* D5FC4 80175584 00000000 */   nop
/* D5FC8 80175588 05610005 */  bgez       $t3, .L801755A0_ovl3
/* D5FCC 8017558C 3C0140A0 */   lui       $at, (0x40A00000 >> 16)
/* D5FD0 80175590 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* D5FD4 80175594 44810000 */  mtc1       $at, $f0
/* D5FD8 80175598 10000004 */  b          .L801755AC_ovl3
glabel func_8017559C_ovl5
/* D5FDC 8017559C 8C6D0000 */   lw        $t5, 0x0($v1)
.L801755A0_ovl3:
/* D5FE0 801755A0 44810000 */  mtc1       $at, $f0
/* D5FE4 801755A4 00000000 */  nop
/* D5FE8 801755A8 8C6D0000 */  lw         $t5, 0x0($v1)
.L801755AC_ovl3:
/* D5FEC 801755AC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D5FF0 801755B0 460E003C */  c.lt.s     $f0, $f14
/* D5FF4 801755B4 000D7080 */  sll        $t6, $t5, 2
/* D5FF8 801755B8 002E0821 */  addu       $at, $at, $t6
/* D5FFC 801755BC E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* D6000 801755C0 8C6F0000 */  lw         $t7, 0x0($v1)
/* D6004 801755C4 44802000 */  mtc1       $zero, $f4
/* D6008 801755C8 3C01800E */  lui        $at, %hi(D_800E6690)
/* D600C 801755CC 000FC080 */  sll        $t8, $t7, 2
/* D6010 801755D0 00380821 */  addu       $at, $at, $t8
/* D6014 801755D4 45000008 */  bc1f       .L801755F8_ovl3
/* D6018 801755D8 E4246690 */   swc1      $f4, %lo(D_800E6690)($at)
/* D601C 801755DC 8C790000 */  lw         $t9, 0x0($v1)
/* D6020 801755E0 3C01800E */  lui        $at, %hi(D_800E6850)
/* D6024 801755E4 46000187 */  neg.s      $f6, $f0
/* D6028 801755E8 00195080 */  sll        $t2, $t9, 2
/* D602C 801755EC 002A0821 */  addu       $at, $at, $t2
/* D6030 801755F0 1000000B */  b          .L80175620_ovl3
/* D6034 801755F4 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
.L801755F8_ovl3:
/* D6038 801755F8 8C680000 */  lw         $t0, 0x0($v1)
/* D603C 801755FC 3C01800E */  lui        $at, %hi(D_800E6850)
/* D6040 80175600 00086080 */  sll        $t4, $t0, 2
/* D6044 80175604 002C0821 */  addu       $at, $at, $t4
/* D6048 80175608 10000005 */  b          .L80175620_ovl3
/* D604C 8017560C E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
.L80175610_ovl3:
/* D6050 80175610 0C04828A */  jal        func_80120A28
/* D6054 80175614 00000000 */   nop
/* D6058 80175618 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D605C 8017561C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L80175620_ovl3:
/* D6060 80175620 90E20004 */  lbu        $v0, 0x4($a3)
/* D6064 80175624 3C040002 */  lui        $a0, (0x20067 >> 16)
/* D6068 80175628 34840067 */  ori        $a0, $a0, (0x20067 & 0xFFFF)
/* D606C 8017562C 1040000A */  beqz       $v0, .L80175658_ovl3
/* D6070 80175630 3C050002 */   lui       $a1, (0x20068 >> 16)
/* D6074 80175634 24010001 */  addiu      $at, $zero, 0x1
/* D6078 80175638 10410015 */  beq        $v0, $at, .L80175690_ovl3
/* D607C 8017563C 3C040002 */   lui       $a0, (0x2016D >> 16)
/* D6080 80175640 24010002 */  addiu      $at, $zero, 0x2
/* D6084 80175644 1041001C */  beq        $v0, $at, .L801756B8_ovl3
/* D6088 80175648 3C040002 */   lui       $a0, (0x200C7 >> 16)
/* D608C 8017564C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6090 80175650 10000022 */  b          .L801756DC_ovl3
/* D6094 80175654 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L80175658_ovl3:
/* D6098 80175658 34A50068 */  ori        $a1, $a1, (0x20068 & 0xFFFF)
.L8017565C_ovl5:
/* D609C 8017565C 0C048C3A */  jal        func_801230E8
/* D60A0 80175660 24060001 */   addiu     $a2, $zero, 0x1
/* D60A4 80175664 3C040002 */  lui        $a0, (0x20069 >> 16)
/* D60A8 80175668 3C050002 */  lui        $a1, (0x2006A >> 16)
/* D60AC 8017566C 34A5006A */  ori        $a1, $a1, (0x2006A & 0xFFFF)
/* D60B0 80175670 34840069 */  ori        $a0, $a0, (0x20069 & 0xFFFF)
/* D60B4 80175674 0C048C3A */  jal        func_801230E8
/* D60B8 80175678 24060001 */   addiu     $a2, $zero, 0x1
/* D60BC 8017567C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D60C0 80175680 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D60C4 80175684 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D60C8 80175688 10000014 */  b          .L801756DC_ovl3
/* D60CC 8017568C 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L80175690_ovl3:
/* D60D0 80175690 3C050002 */  lui        $a1, (0x2016E >> 16)
/* D60D4 80175694 34A5016E */  ori        $a1, $a1, (0x2016E & 0xFFFF)
/* D60D8 80175698 3484016D */  ori        $a0, $a0, (0x2016D & 0xFFFF)
/* D60DC 8017569C 0C048C3A */  jal        func_801230E8
/* D60E0 801756A0 24060001 */   addiu     $a2, $zero, 0x1
/* D60E4 801756A4 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D60E8 801756A8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D60EC 801756AC 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D60F0 801756B0 1000000A */  b          .L801756DC_ovl3
/* D60F4 801756B4 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L801756B8_ovl3:
/* D60F8 801756B8 3C050002 */  lui        $a1, (0x200C8 >> 16)
/* D60FC 801756BC 34A500C8 */  ori        $a1, $a1, (0x200C8 & 0xFFFF)
/* D6100 801756C0 348400C7 */  ori        $a0, $a0, (0x200C7 & 0xFFFF)
/* D6104 801756C4 0C048C3A */  jal        func_801230E8
/* D6108 801756C8 24060001 */   addiu     $a2, $zero, 0x1
/* D610C 801756CC 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D6110 801756D0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6114 801756D4 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* D6118 801756D8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801756DC_ovl3:
/* D611C 801756DC 8C690000 */  lw         $t1, 0x0($v1)
.L801756E0_ovl3:
/* D6120 801756E0 44804000 */  mtc1       $zero, $f8
/* D6124 801756E4 3C01800E */  lui        $at, %hi(D_800E6690)
/* D6128 801756E8 00095880 */  sll        $t3, $t1, 2
/* D612C 801756EC 002B0821 */  addu       $at, $at, $t3
/* D6130 801756F0 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* D6134 801756F4 8C620000 */  lw         $v0, 0x0($v1)
/* D6138 801756F8 3C01800E */  lui        $at, %hi(D_800E6690)
/* D613C 801756FC 00021080 */  sll        $v0, $v0, 2
/* D6140 80175700 00220821 */  addu       $at, $at, $v0
/* D6144 80175704 C4306690 */  lwc1       $f16, %lo(D_800E6690)($at)
/* D6148 80175708 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D614C 8017570C 00220821 */  addu       $at, $at, $v0
/* D6150 80175710 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* D6154 80175714 8C6D0000 */  lw         $t5, 0x0($v1)
/* D6158 80175718 3C018019 */  lui        $at, %hi(D_80197478_ovl3)
/* D615C 8017571C C42A7478 */  lwc1       $f10, %lo(D_80197478_ovl3)($at)
/* D6160 80175720 3C01800E */  lui        $at, %hi(D_800E6850)
/* D6164 80175724 000D7080 */  sll        $t6, $t5, 2
/* D6168 80175728 002E0821 */  addu       $at, $at, $t6
/* D616C 8017572C E42A6850 */  swc1       $f10, %lo(D_800E6850)($at)
/* D6170 80175730 8CEF0030 */  lw         $t7, 0x30($a3)
/* D6174 80175734 A4E00068 */  sh         $zero, 0x68($a3)
/* D6178 80175738 25F80001 */  addiu      $t8, $t7, 0x1
/* D617C 8017573C 0C02BE85 */  jal        func_800AFA14
/* D6180 80175740 ACF80030 */   sw        $t8, 0x30($a3)
/* D6184 80175744 8FBF0014 */  lw         $ra, 0x14($sp)
/* D6188 80175748 27BD0030 */  addiu      $sp, $sp, 0x30
/* D618C 8017574C 03E00008 */  jr         $ra
.L80175750_ovl5:
/* D6190 80175750 00000000 */   nop
