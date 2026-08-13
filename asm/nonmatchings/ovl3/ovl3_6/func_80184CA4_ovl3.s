nonmatching func_80184CA4_ovl3, 0x4DC

glabel func_80184CA4_ovl3
    /* E56E4 80184CA4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E56E8 80184CA8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* E56EC 80184CAC 3C118013 */  lui        $s1, %hi(gKirbyState)
    /* E56F0 80184CB0 2631E7C0 */  addiu      $s1, $s1, %lo(gKirbyState)
    /* E56F4 80184CB4 8E2E00A0 */  lw         $t6, 0xA0($s1)
    /* E56F8 80184CB8 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E56FC 80184CBC AFB20020 */  sw         $s2, 0x20($sp)
    /* E5700 80184CC0 AFB00018 */  sw         $s0, 0x18($sp)
    /* E5704 80184CC4 15C00093 */  bnez       $t6, .L80184F14_ovl3
    /* E5708 80184CC8 AFA40028 */   sw        $a0, 0x28($sp)
    /* E570C 80184CCC AE200030 */  sw         $zero, 0x30($s1)
    /* E5710 80184CD0 AE20004C */  sw         $zero, 0x4C($s1)
    /* E5714 80184CD4 0C0473D6 */  jal        func_8011CF58
    /* E5718 80184CD8 A2200007 */   sb        $zero, 0x7($s1)
    /* E571C 80184CDC 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* E5720 80184CE0 8E2F0090 */  lw         $t7, 0x90($s1)
    /* E5724 80184CE4 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* E5728 80184CE8 8E590000 */  lw         $t9, 0x0($s2)
    /* E572C 80184CEC AE2F00A0 */  sw         $t7, 0xA0($s1)
    /* E5730 80184CF0 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* E5734 80184CF4 8F280000 */  lw         $t0, 0x0($t9)
    /* E5738 80184CF8 24180038 */  addiu      $t8, $zero, 0x38
    /* E573C 80184CFC 00084880 */  sll        $t1, $t0, 2
    /* E5740 80184D00 00290821 */  addu       $at, $at, $t1
    /* E5744 80184D04 0C04828A */  jal        func_80120A28
    /* E5748 80184D08 AC38DFD0 */   sw        $t8, %lo(D_800DDFD0)($at)
    /* E574C 80184D0C 0C05A4F1 */  jal        func_801693C4_ovl3
    /* E5750 80184D10 2404000D */   addiu     $a0, $zero, 0xD
    /* E5754 80184D14 00025080 */  sll        $t2, $v0, 2
    /* E5758 80184D18 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* E575C 80184D1C 002A0821 */  addu       $at, $at, $t2
    /* E5760 80184D20 AC20C2E0 */  sw         $zero, %lo(D_800EC2E0)($at)
    /* E5764 80184D24 0C029D9E */  jal        play_sound
    /* E5768 80184D28 240400BA */   addiu     $a0, $zero, 0xBA
    /* E576C 80184D2C 3C040002 */  lui        $a0, (0x2008B >> 16)
    /* E5770 80184D30 3C050002 */  lui        $a1, (0x2008C >> 16)
    /* E5774 80184D34 AE20003C */  sw         $zero, 0x3C($s1)
    /* E5778 80184D38 AE200044 */  sw         $zero, 0x44($s1)
    /* E577C 80184D3C 34A5008C */  ori        $a1, $a1, (0x2008C & 0xFFFF)
    /* E5780 80184D40 3484008B */  ori        $a0, $a0, (0x2008B & 0xFFFF)
    /* E5784 80184D44 0C048C3A */  jal        func_801230E8
    /* E5788 80184D48 24060001 */   addiu     $a2, $zero, 0x1
    /* E578C 80184D4C 8E4C0000 */  lw         $t4, 0x0($s2)
    /* E5790 80184D50 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
    /* E5794 80184D54 24040001 */  addiu      $a0, $zero, 0x1
    /* E5798 80184D58 8D8D0000 */  lw         $t5, 0x0($t4)
    /* E579C 80184D5C 24050001 */  addiu      $a1, $zero, 0x1
    /* E57A0 80184D60 24060024 */  addiu      $a2, $zero, 0x24
    /* E57A4 80184D64 000D7080 */  sll        $t6, $t5, 2
    /* E57A8 80184D68 01EE7821 */  addu       $t7, $t7, $t6
    /* E57AC 80184D6C 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
    /* E57B0 80184D70 0C02A040 */  jal        func_800A8100
    /* E57B4 80184D74 8DE70008 */   lw        $a3, 0x8($t7)
    /* E57B8 80184D78 3C040002 */  lui        $a0, (0x2008D >> 16)
    /* E57BC 80184D7C 3C050002 */  lui        $a1, (0x2008E >> 16)
    /* E57C0 80184D80 AE22004C */  sw         $v0, 0x4C($s1)
    /* E57C4 80184D84 34A5008E */  ori        $a1, $a1, (0x2008E & 0xFFFF)
    /* E57C8 80184D88 3484008D */  ori        $a0, $a0, (0x2008D & 0xFFFF)
    /* E57CC 80184D8C 0C048C3A */  jal        func_801230E8
    /* E57D0 80184D90 00003025 */   or        $a2, $zero, $zero
    /* E57D4 80184D94 8E430000 */  lw         $v1, 0x0($s2)
    /* E57D8 80184D98 3C10800F */  lui        $s0, %hi(D_800E9720)
    /* E57DC 80184D9C 26109720 */  addiu      $s0, $s0, %lo(D_800E9720)
    /* E57E0 80184DA0 8C790000 */  lw         $t9, 0x0($v1)
    /* E57E4 80184DA4 00194080 */  sll        $t0, $t9, 2
    /* E57E8 80184DA8 0208C021 */  addu       $t8, $s0, $t0
    /* E57EC 80184DAC AF000000 */  sw         $zero, 0x0($t8)
    /* E57F0 80184DB0 8C690000 */  lw         $t1, 0x0($v1)
    /* E57F4 80184DB4 00095080 */  sll        $t2, $t1, 2
    /* E57F8 80184DB8 020A5821 */  addu       $t3, $s0, $t2
    /* E57FC 80184DBC 8D6C0000 */  lw         $t4, 0x0($t3)
    /* E5800 80184DC0 2981001E */  slti       $at, $t4, 0x1E
    /* E5804 80184DC4 1020001B */  beqz       $at, .L80184E34_ovl3
  .L80184DC8_ovl3:
    /* E5808 80184DC8 3C0D800D */   lui       $t5, %hi(gKirbyController)
    /* E580C 80184DCC 95AD6FE8 */  lhu        $t5, %lo(gKirbyController)($t5)
    /* E5810 80184DD0 31AE4000 */  andi       $t6, $t5, 0x4000
    /* E5814 80184DD4 51C00004 */  beql       $t6, $zero, .L80184DE8_ovl3
    /* E5818 80184DD8 24190005 */   addiu     $t9, $zero, 0x5
    /* E581C 80184DDC 922F0017 */  lbu        $t7, 0x17($s1)
    /* E5820 80184DE0 11E00004 */  beqz       $t7, .L80184DF4_ovl3
    /* E5824 80184DE4 24190005 */   addiu     $t9, $zero, 0x5
  .L80184DE8_ovl3:
    /* E5828 80184DE8 AE39003C */  sw         $t9, 0x3C($s1)
    /* E582C 80184DEC 1000004B */  b          .L80184F1C_ovl3
    /* E5830 80184DF0 AE390044 */   sw        $t9, 0x44($s1)
  .L80184DF4_ovl3:
    /* E5834 80184DF4 0C002DAF */  jal        ohSleep
    /* E5838 80184DF8 24040001 */   addiu     $a0, $zero, 0x1
    /* E583C 80184DFC 8E430000 */  lw         $v1, 0x0($s2)
    /* E5840 80184E00 8C780000 */  lw         $t8, 0x0($v1)
    /* E5844 80184E04 00184880 */  sll        $t1, $t8, 2
    /* E5848 80184E08 02091021 */  addu       $v0, $s0, $t1
    /* E584C 80184E0C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* E5850 80184E10 254B0001 */  addiu      $t3, $t2, 0x1
    /* E5854 80184E14 AC4B0000 */  sw         $t3, 0x0($v0)
    /* E5858 80184E18 8C6C0000 */  lw         $t4, 0x0($v1)
    /* E585C 80184E1C 000C6880 */  sll        $t5, $t4, 2
    /* E5860 80184E20 020D7021 */  addu       $t6, $s0, $t5
    /* E5864 80184E24 8DCF0000 */  lw         $t7, 0x0($t6)
    /* E5868 80184E28 29E1001E */  slti       $at, $t7, 0x1E
    /* E586C 80184E2C 1420FFE6 */  bnez       $at, .L80184DC8_ovl3
    /* E5870 80184E30 00000000 */   nop
  .L80184E34_ovl3:
    /* E5874 80184E34 0C04783A */  jal        func_8011E0E8
    /* E5878 80184E38 00000000 */   nop
    /* E587C 80184E3C 0C05A4F1 */  jal        func_801693C4_ovl3
    /* E5880 80184E40 2404000D */   addiu     $a0, $zero, 0xD
    /* E5884 80184E44 00024080 */  sll        $t0, $v0, 2
    /* E5888 80184E48 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* E588C 80184E4C 00280821 */  addu       $at, $at, $t0
    /* E5890 80184E50 24190001 */  addiu      $t9, $zero, 0x1
    /* E5894 80184E54 AC39C2E0 */  sw         $t9, %lo(D_800EC2E0)($at)
    /* E5898 80184E58 8E490000 */  lw         $t1, 0x0($s2)
    /* E589C 80184E5C 3C188019 */  lui        $t8, %hi(D_80190874_ovl3)
    /* E58A0 80184E60 27180874 */  addiu      $t8, $t8, %lo(D_80190874_ovl3)
    /* E58A4 80184E64 AE38015C */  sw         $t8, 0x15C($s1)
    /* E58A8 80184E68 8D2A0000 */  lw         $t2, 0x0($t1)
    /* E58AC 80184E6C 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
    /* E58B0 80184E70 24040001 */  addiu      $a0, $zero, 0x1
    /* E58B4 80184E74 000A5880 */  sll        $t3, $t2, 2
    /* E58B8 80184E78 018B6021 */  addu       $t4, $t4, $t3
    /* E58BC 80184E7C 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
    /* E58C0 80184E80 24050001 */  addiu      $a1, $zero, 0x1
    /* E58C4 80184E84 24060027 */  addiu      $a2, $zero, 0x27
    /* E58C8 80184E88 0C02A040 */  jal        func_800A8100
    /* E58CC 80184E8C 8D870008 */   lw        $a3, 0x8($t4)
    /* E58D0 80184E90 8E430000 */  lw         $v1, 0x0($s2)
    /* E58D4 80184E94 AE22004C */  sw         $v0, 0x4C($s1)
    /* E58D8 80184E98 3C0D8019 */  lui        $t5, %hi(D_80192A8C_ovl3)
    /* E58DC 80184E9C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* E58E0 80184EA0 3C01800E */  lui        $at, %hi(D_800E0490)
    /* E58E4 80184EA4 25AD2A8C */  addiu      $t5, $t5, %lo(D_80192A8C_ovl3)
    /* E58E8 80184EA8 000E7880 */  sll        $t7, $t6, 2
    /* E58EC 80184EAC 002F0821 */  addu       $at, $at, $t7
    /* E58F0 80184EB0 AC2D0490 */  sw         $t5, %lo(D_800E0490)($at)
    /* E58F4 80184EB4 24190001 */  addiu      $t9, $zero, 0x1
    /* E58F8 80184EB8 AE39003C */  sw         $t9, 0x3C($s1)
    /* E58FC 80184EBC AE390044 */  sw         $t9, 0x44($s1)
    /* E5900 80184EC0 8C690000 */  lw         $t1, 0x0($v1)
    /* E5904 80184EC4 24180078 */  addiu      $t8, $zero, 0x78
    /* E5908 80184EC8 24040052 */  addiu      $a0, $zero, 0x52
    /* E590C 80184ECC 00095080 */  sll        $t2, $t1, 2
    /* E5910 80184ED0 020A5821 */  addu       $t3, $s0, $t2
    /* E5914 80184ED4 0C047701 */  jal        func_8011DC04
    /* E5918 80184ED8 AD780000 */   sw        $t8, 0x0($t3)
    /* E591C 80184EDC 3C040002 */  lui        $a0, (0x20091 >> 16)
    /* E5920 80184EE0 3C050002 */  lui        $a1, (0x20092 >> 16)
    /* E5924 80184EE4 34A50092 */  ori        $a1, $a1, (0x20092 & 0xFFFF)
    /* E5928 80184EE8 34840091 */  ori        $a0, $a0, (0x20091 & 0xFFFF)
    /* E592C 80184EEC 0C048C3A */  jal        func_801230E8
    /* E5930 80184EF0 00003025 */   or        $a2, $zero, $zero
    /* E5934 80184EF4 8E4E0000 */  lw         $t6, 0x0($s2)
    /* E5938 80184EF8 3C0C8018 */  lui        $t4, %hi(func_80185180_ovl3)
    /* E593C 80184EFC 3C01800E */  lui        $at, %hi(D_800DF310)
    /* E5940 80184F00 8DCD0000 */  lw         $t5, 0x0($t6)
    /* E5944 80184F04 258C5180 */  addiu      $t4, $t4, %lo(func_80185180_ovl3)
    /* E5948 80184F08 000D7880 */  sll        $t7, $t5, 2
    /* E594C 80184F0C 002F0821 */  addu       $at, $at, $t7
    /* E5950 80184F10 AC2CF310 */  sw         $t4, %lo(D_800DF310)($at)
  .L80184F14_ovl3:
    /* E5954 80184F14 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* E5958 80184F18 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
  .L80184F1C_ovl3:
    /* E595C 80184F1C 8E390044 */  lw         $t9, 0x44($s1)
    /* E5960 80184F20 2728FFFF */  addiu      $t0, $t9, -0x1
    /* E5964 80184F24 2D010005 */  sltiu      $at, $t0, 0x5
    /* E5968 80184F28 1020008D */  beqz       $at, .L80185160_ovl3
    /* E596C 80184F2C 00084080 */   sll       $t0, $t0, 2
    /* E5970 80184F30 3C018019 */  lui        $at, %hi(jtbl_801977DC_ovl3)
    /* E5974 80184F34 00280821 */  addu       $at, $at, $t0
    /* E5978 80184F38 8C2877DC */  lw         $t0, %lo(jtbl_801977DC_ovl3)($at)
    /* E597C 80184F3C 01000008 */  jr         $t0
    /* E5980 80184F40 00000000 */   nop
  jlabel .L80184F44_ovl3
    /* E5984 80184F44 8E430000 */  lw         $v1, 0x0($s2)
    /* E5988 80184F48 3C01800F */  lui        $at, %hi(D_800E8920)
    /* E598C 80184F4C 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* E5990 80184F50 8C690000 */  lw         $t1, 0x0($v1)
    /* E5994 80184F54 00095080 */  sll        $t2, $t1, 2
    /* E5998 80184F58 002A0821 */  addu       $at, $at, $t2
    /* E599C 80184F5C AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* E59A0 80184F60 8C780000 */  lw         $t8, 0x0($v1)
    /* E59A4 80184F64 24010006 */  addiu      $at, $zero, 0x6
    /* E59A8 80184F68 00185880 */  sll        $t3, $t8, 2
    /* E59AC 80184F6C 01CB7021 */  addu       $t6, $t6, $t3
    /* E59B0 80184F70 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* E59B4 80184F74 31CD0006 */  andi       $t5, $t6, 0x6
    /* E59B8 80184F78 55A10004 */  bnel       $t5, $at, .L80184F8C_ovl3
    /* E59BC 80184F7C 00001025 */   or        $v0, $zero, $zero
    /* E59C0 80184F80 10000002 */  b          .L80184F8C_ovl3
    /* E59C4 80184F84 24020001 */   addiu     $v0, $zero, 0x1
    /* E59C8 80184F88 00001025 */  or         $v0, $zero, $zero
  .L80184F8C_ovl3:
    /* E59CC 80184F8C 1040001C */  beqz       $v0, .L80185000_ovl3
    /* E59D0 80184F90 00000000 */   nop
    /* E59D4 80184F94 0C029D9E */  jal        play_sound
    /* E59D8 80184F98 2404010B */   addiu     $a0, $zero, 0x10B
    /* E59DC 80184F9C 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* E59E0 80184FA0 44810000 */  mtc1       $at, $f0
    /* E59E4 80184FA4 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* E59E8 80184FA8 44812000 */  mtc1       $at, $f4
    /* E59EC 80184FAC 8E430000 */  lw         $v1, 0x0($s2)
    /* E59F0 80184FB0 3C10800E */  lui        $s0, %hi(D_800E3210)
    /* E59F4 80184FB4 E62400CC */  swc1       $f4, 0xCC($s1)
    /* E59F8 80184FB8 8C6C0000 */  lw         $t4, 0x0($v1)
    /* E59FC 80184FBC 26103210 */  addiu      $s0, $s0, %lo(D_800E3210)
    /* E5A00 80184FC0 3C018019 */  lui        $at, %hi(D_801977F0_ovl3)
    /* E5A04 80184FC4 000C7880 */  sll        $t7, $t4, 2
    /* E5A08 80184FC8 020FC821 */  addu       $t9, $s0, $t7
    /* E5A0C 80184FCC E7200000 */  swc1       $f0, 0x0($t9)
    /* E5A10 80184FD0 8C680000 */  lw         $t0, 0x0($v1)
    /* E5A14 80184FD4 C42677F0 */  lwc1       $f6, %lo(D_801977F0_ovl3)($at)
    /* E5A18 80184FD8 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E5A1C 80184FDC 00084880 */  sll        $t1, $t0, 2
    /* E5A20 80184FE0 00290821 */  addu       $at, $at, $t1
    /* E5A24 80184FE4 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
    /* E5A28 80184FE8 8C6A0000 */  lw         $t2, 0x0($v1)
    /* E5A2C 80184FEC 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E5A30 80184FF0 000AC080 */  sll        $t8, $t2, 2
    /* E5A34 80184FF4 00380821 */  addu       $at, $at, $t8
    /* E5A38 80184FF8 1000001E */  b          .L80185074_ovl3
    /* E5A3C 80184FFC E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
  .L80185000_ovl3:
    /* E5A40 80185000 0C029D9E */  jal        play_sound
    /* E5A44 80185004 240400F7 */   addiu     $a0, $zero, 0xF7
    /* E5A48 80185008 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* E5A4C 8018500C 44814000 */  mtc1       $at, $f8
    /* E5A50 80185010 3C014188 */  lui        $at, (0x41880000 >> 16)
    /* E5A54 80185014 44816000 */  mtc1       $at, $f12
    /* E5A58 80185018 0C048C51 */  jal        func_80123144
    /* E5A5C 8018501C E62800CC */   swc1      $f8, 0xCC($s1)
    /* E5A60 80185020 8E430000 */  lw         $v1, 0x0($s2)
    /* E5A64 80185024 3C10800E */  lui        $s0, %hi(D_800E3210)
    /* E5A68 80185028 26103210 */  addiu      $s0, $s0, %lo(D_800E3210)
    /* E5A6C 8018502C 8C6B0000 */  lw         $t3, 0x0($v1)
    /* E5A70 80185030 3C018019 */  lui        $at, %hi(D_801977F4_ovl3)
    /* E5A74 80185034 000B7080 */  sll        $t6, $t3, 2
    /* E5A78 80185038 020E6821 */  addu       $t5, $s0, $t6
    /* E5A7C 8018503C E5A00000 */  swc1       $f0, 0x0($t5)
    /* E5A80 80185040 8C6C0000 */  lw         $t4, 0x0($v1)
    /* E5A84 80185044 C42A77F4 */  lwc1       $f10, %lo(D_801977F4_ovl3)($at)
    /* E5A88 80185048 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E5A8C 8018504C 000C7880 */  sll        $t7, $t4, 2
    /* E5A90 80185050 002F0821 */  addu       $at, $at, $t7
    /* E5A94 80185054 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
    /* E5A98 80185058 8C790000 */  lw         $t9, 0x0($v1)
    /* E5A9C 8018505C 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* E5AA0 80185060 44818000 */  mtc1       $at, $f16
    /* E5AA4 80185064 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E5AA8 80185068 00194080 */  sll        $t0, $t9, 2
    /* E5AAC 8018506C 00280821 */  addu       $at, $at, $t0
    /* E5AB0 80185070 E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
  .L80185074_ovl3:
    /* E5AB4 80185074 8C690000 */  lw         $t1, 0x0($v1)
    /* E5AB8 80185078 C63200CC */  lwc1       $f18, 0xCC($s1)
    /* E5ABC 8018507C 00095080 */  sll        $t2, $t1, 2
    /* E5AC0 80185080 020AC021 */  addu       $t8, $s0, $t2
    /* E5AC4 80185084 C7040000 */  lwc1       $f4, 0x0($t8)
    /* E5AC8 80185088 4604903C */  c.lt.s     $f18, $f4
    /* E5ACC 8018508C 00000000 */  nop
    /* E5AD0 80185090 4502000E */  bc1fl      .L801850CC_ovl3
    /* E5AD4 80185094 962F00D2 */   lhu       $t7, 0xD2($s1)
  .L80185098_ovl3:
    /* E5AD8 80185098 0C002DAF */  jal        ohSleep
    /* E5ADC 8018509C 24040001 */   addiu     $a0, $zero, 0x1
    /* E5AE0 801850A0 8E4B0000 */  lw         $t3, 0x0($s2)
    /* E5AE4 801850A4 C62600CC */  lwc1       $f6, 0xCC($s1)
    /* E5AE8 801850A8 8D6E0000 */  lw         $t6, 0x0($t3)
    /* E5AEC 801850AC 000E6880 */  sll        $t5, $t6, 2
    /* E5AF0 801850B0 020D6021 */  addu       $t4, $s0, $t5
    /* E5AF4 801850B4 C5880000 */  lwc1       $f8, 0x0($t4)
    /* E5AF8 801850B8 4608303C */  c.lt.s     $f6, $f8
    /* E5AFC 801850BC 00000000 */  nop
    /* E5B00 801850C0 4501FFF5 */  bc1t       .L80185098_ovl3
    /* E5B04 801850C4 00000000 */   nop
    /* E5B08 801850C8 962F00D2 */  lhu        $t7, 0xD2($s1)
  .L801850CC_ovl3:
    /* E5B0C 801850CC 24080003 */  addiu      $t0, $zero, 0x3
    /* E5B10 801850D0 AE280044 */  sw         $t0, 0x44($s1)
    /* E5B14 801850D4 25F90001 */  addiu      $t9, $t7, 0x1
    /* E5B18 801850D8 10000021 */  b          .L80185160_ovl3
    /* E5B1C 801850DC A63900D2 */   sh        $t9, 0xD2($s1)
  jlabel .L801850E0_ovl3
    /* E5B20 801850E0 0C047717 */  jal        func_8011DC5C
    /* E5B24 801850E4 00000000 */   nop
    /* E5B28 801850E8 0C04783A */  jal        func_8011E0E8
    /* E5B2C 801850EC 00000000 */   nop
    /* E5B30 801850F0 8E4A0000 */  lw         $t2, 0x0($s2)
    /* E5B34 801850F4 AE2000A0 */  sw         $zero, 0xA0($s1)
    /* E5B38 801850F8 3C098019 */  lui        $t1, %hi(D_801926E8_ovl3)
    /* E5B3C 801850FC 8D580000 */  lw         $t8, 0x0($t2)
    /* E5B40 80185100 3C01800E */  lui        $at, %hi(D_800E0490)
    /* E5B44 80185104 252926E8 */  addiu      $t1, $t1, %lo(D_801926E8_ovl3)
    /* E5B48 80185108 00185880 */  sll        $t3, $t8, 2
    /* E5B4C 8018510C 002B0821 */  addu       $at, $at, $t3
    /* E5B50 80185110 AC290490 */  sw         $t1, %lo(D_800E0490)($at)
    /* E5B54 80185114 8E2D0030 */  lw         $t5, 0x30($s1)
    /* E5B58 80185118 3C0E8019 */  lui        $t6, %hi(D_80190358_ovl3)
    /* E5B5C 8018511C 25CE0358 */  addiu      $t6, $t6, %lo(D_80190358_ovl3)
    /* E5B60 80185120 25AC0001 */  addiu      $t4, $t5, 0x1
    /* E5B64 80185124 AE2E015C */  sw         $t6, 0x15C($s1)
    /* E5B68 80185128 1000000D */  b          .L80185160_ovl3
    /* E5B6C 8018512C AE2C0030 */   sw        $t4, 0x30($s1)
  jlabel .L80185130_ovl3
    /* E5B70 80185130 0C04783A */  jal        func_8011E0E8
    /* E5B74 80185134 00000000 */   nop
    /* E5B78 80185138 3C040002 */  lui        $a0, (0x2008F >> 16)
    /* E5B7C 8018513C 3C050002 */  lui        $a1, (0x20090 >> 16)
    /* E5B80 80185140 AE2000A0 */  sw         $zero, 0xA0($s1)
    /* E5B84 80185144 34A50090 */  ori        $a1, $a1, (0x20090 & 0xFFFF)
    /* E5B88 80185148 3484008F */  ori        $a0, $a0, (0x2008F & 0xFFFF)
    /* E5B8C 8018514C 0C048C3A */  jal        func_801230E8
    /* E5B90 80185150 24060001 */   addiu     $a2, $zero, 0x1
    /* E5B94 80185154 8E2F0030 */  lw         $t7, 0x30($s1)
    /* E5B98 80185158 25F90001 */  addiu      $t9, $t7, 0x1
    /* E5B9C 8018515C AE390030 */  sw         $t9, 0x30($s1)
  jlabel .L80185160_ovl3
    /* E5BA0 80185160 0C02BE85 */  jal        curObjSleepForever
    /* E5BA4 80185164 00000000 */   nop
    /* E5BA8 80185168 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E5BAC 8018516C 8FB00018 */  lw         $s0, 0x18($sp)
    /* E5BB0 80185170 8FB1001C */  lw         $s1, 0x1C($sp)
    /* E5BB4 80185174 8FB20020 */  lw         $s2, 0x20($sp)
    /* E5BB8 80185178 03E00008 */  jr         $ra
    /* E5BBC 8018517C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_80184CA4_ovl3
.size func_80184CA4_ovl3, . - func_80184CA4_ovl3
