glabel func_8020F8A8_ovl9
/* 1BD8F8 8020F8A8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1BD8FC 8020F8AC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1BD900 8020F8B0 3C06800F */  lui        $a2, %hi(D_800EA6E0)
/* 1BD904 8020F8B4 24C6A6E0 */  addiu      $a2, $a2, %lo(D_800EA6E0)
/* 1BD908 8020F8B8 8C430000 */  lw         $v1, 0x0($v0)
/* 1BD90C 8020F8BC 3C01800F */  lui        $at, %hi(D_800EB320)
/* 1BD910 8020F8C0 00031880 */  sll        $v1, $v1, 2
/* 1BD914 8020F8C4 00C32821 */  addu       $a1, $a2, $v1
/* 1BD918 8020F8C8 00230821 */  addu       $at, $at, $v1
/* 1BD91C 8020F8CC C422B320 */  lwc1       $f2, %lo(D_800EB320)($at)
/* 1BD920 8020F8D0 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 1BD924 8020F8D4 3C018022 */  lui        $at, %hi(D_8021DC6C_ovl9)
/* 1BD928 8020F8D8 4602003C */  c.lt.s     $f0, $f2
/* 1BD92C 8020F8DC 00000000 */  nop
/* 1BD930 8020F8E0 45020005 */  bc1fl      .L8020F8F8_ovl9
/* 1BD934 8020F8E4 46020381 */   sub.s     $f14, $f0, $f2
/* 1BD938 8020F8E8 46020381 */  sub.s      $f14, $f0, $f2
/* 1BD93C 8020F8EC 10000003 */  b          .L8020F8FC_ovl9
/* 1BD940 8020F8F0 46007307 */   neg.s     $f12, $f14
/* 1BD944 8020F8F4 46020381 */  sub.s      $f14, $f0, $f2
.L8020F8F8_ovl9:
/* 1BD948 8020F8F8 46007306 */  mov.s      $f12, $f14
.L8020F8FC_ovl9:
/* 1BD94C 8020F8FC C424DC6C */  lwc1       $f4, %lo(D_8021DC6C_ovl9)($at)
/* 1BD950 8020F900 3C018022 */  lui        $at, %hi(D_8021DC88_ovl9)
/* 1BD954 8020F904 4604603C */  c.lt.s     $f12, $f4
/* 1BD958 8020F908 00000000 */  nop
/* 1BD95C 8020F90C 4500004F */  bc1f       .L8020FA4C_ovl9
/* 1BD960 8020F910 00000000 */   nop
/* 1BD964 8020F914 3C018022 */  lui        $at, %hi(D_8021DC70_ovl9)
/* 1BD968 8020F918 C422DC70 */  lwc1       $f2, %lo(D_8021DC70_ovl9)($at)
/* 1BD96C 8020F91C 3C018022 */  lui        $at, %hi(D_8021DC74_ovl9)
/* 1BD970 8020F920 460E103C */  c.lt.s     $f2, $f14
/* 1BD974 8020F924 00000000 */  nop
/* 1BD978 8020F928 45000008 */  bc1f       .L8020F94C_ovl9
/* 1BD97C 8020F92C 00000000 */   nop
/* 1BD980 8020F930 46020181 */  sub.s      $f6, $f0, $f2
/* 1BD984 8020F934 E4A60000 */  swc1       $f6, 0x0($a1)
/* 1BD988 8020F938 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1BD98C 8020F93C 000E7880 */  sll        $t7, $t6, 2
/* 1BD990 8020F940 00CF2821 */  addu       $a1, $a2, $t7
/* 1BD994 8020F944 1000008D */  b          .L8020FB7C_ovl9
/* 1BD998 8020F948 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020F94C_ovl9:
/* 1BD99C 8020F94C C42CDC74 */  lwc1       $f12, %lo(D_8021DC74_ovl9)($at)
/* 1BD9A0 8020F950 3C018022 */  lui        $at, %hi(D_8021DC78_ovl9)
/* 1BD9A4 8020F954 460E603C */  c.lt.s     $f12, $f14
/* 1BD9A8 8020F958 00000000 */  nop
/* 1BD9AC 8020F95C 45000008 */  bc1f       .L8020F980_ovl9
/* 1BD9B0 8020F960 00000000 */   nop
/* 1BD9B4 8020F964 460C0201 */  sub.s      $f8, $f0, $f12
/* 1BD9B8 8020F968 E4A80000 */  swc1       $f8, 0x0($a1)
/* 1BD9BC 8020F96C 8C580000 */  lw         $t8, 0x0($v0)
/* 1BD9C0 8020F970 0018C880 */  sll        $t9, $t8, 2
/* 1BD9C4 8020F974 00D92821 */  addu       $a1, $a2, $t9
/* 1BD9C8 8020F978 10000080 */  b          .L8020FB7C_ovl9
/* 1BD9CC 8020F97C C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020F980_ovl9:
/* 1BD9D0 8020F980 C430DC78 */  lwc1       $f16, %lo(D_8021DC78_ovl9)($at)
/* 1BD9D4 8020F984 3C018022 */  lui        $at, %hi(D_8021DC7C_ovl9)
/* 1BD9D8 8020F988 460E803E */  c.le.s     $f16, $f14
/* 1BD9DC 8020F98C 00000000 */  nop
/* 1BD9E0 8020F990 45000008 */  bc1f       .L8020F9B4_ovl9
/* 1BD9E4 8020F994 00000000 */   nop
/* 1BD9E8 8020F998 46100281 */  sub.s      $f10, $f0, $f16
/* 1BD9EC 8020F99C E4AA0000 */  swc1       $f10, 0x0($a1)
/* 1BD9F0 8020F9A0 8C480000 */  lw         $t0, 0x0($v0)
/* 1BD9F4 8020F9A4 00084880 */  sll        $t1, $t0, 2
/* 1BD9F8 8020F9A8 00C92821 */  addu       $a1, $a2, $t1
/* 1BD9FC 8020F9AC 10000073 */  b          .L8020FB7C_ovl9
/* 1BDA00 8020F9B0 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020F9B4_ovl9:
/* 1BDA04 8020F9B4 C432DC7C */  lwc1       $f18, %lo(D_8021DC7C_ovl9)($at)
/* 1BDA08 8020F9B8 3C018022 */  lui        $at, %hi(D_8021DC80_ovl9)
/* 1BDA0C 8020F9BC 4612703C */  c.lt.s     $f14, $f18
/* 1BDA10 8020F9C0 00000000 */  nop
/* 1BDA14 8020F9C4 45000008 */  bc1f       .L8020F9E8_ovl9
/* 1BDA18 8020F9C8 00000000 */   nop
/* 1BDA1C 8020F9CC 46020100 */  add.s      $f4, $f0, $f2
/* 1BDA20 8020F9D0 E4A40000 */  swc1       $f4, 0x0($a1)
/* 1BDA24 8020F9D4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1BDA28 8020F9D8 000A5880 */  sll        $t3, $t2, 2
/* 1BDA2C 8020F9DC 00CB2821 */  addu       $a1, $a2, $t3
/* 1BDA30 8020F9E0 10000066 */  b          .L8020FB7C_ovl9
/* 1BDA34 8020F9E4 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020F9E8_ovl9:
/* 1BDA38 8020F9E8 C426DC80 */  lwc1       $f6, %lo(D_8021DC80_ovl9)($at)
/* 1BDA3C 8020F9EC 3C018022 */  lui        $at, %hi(D_8021DC84_ovl9)
/* 1BDA40 8020F9F0 4606703C */  c.lt.s     $f14, $f6
/* 1BDA44 8020F9F4 00000000 */  nop
/* 1BDA48 8020F9F8 45000008 */  bc1f       .L8020FA1C_ovl9
/* 1BDA4C 8020F9FC 00000000 */   nop
/* 1BDA50 8020FA00 460C0200 */  add.s      $f8, $f0, $f12
/* 1BDA54 8020FA04 E4A80000 */  swc1       $f8, 0x0($a1)
/* 1BDA58 8020FA08 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1BDA5C 8020FA0C 000C6880 */  sll        $t5, $t4, 2
/* 1BDA60 8020FA10 00CD2821 */  addu       $a1, $a2, $t5
/* 1BDA64 8020FA14 10000059 */  b          .L8020FB7C_ovl9
/* 1BDA68 8020FA18 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020FA1C_ovl9:
/* 1BDA6C 8020FA1C C42ADC84 */  lwc1       $f10, %lo(D_8021DC84_ovl9)($at)
/* 1BDA70 8020FA20 460A703E */  c.le.s     $f14, $f10
/* 1BDA74 8020FA24 00000000 */  nop
/* 1BDA78 8020FA28 45000054 */  bc1f       .L8020FB7C_ovl9
/* 1BDA7C 8020FA2C 00000000 */   nop
/* 1BDA80 8020FA30 46100480 */  add.s      $f18, $f0, $f16
/* 1BDA84 8020FA34 E4B20000 */  swc1       $f18, 0x0($a1)
/* 1BDA88 8020FA38 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1BDA8C 8020FA3C 000E7880 */  sll        $t7, $t6, 2
/* 1BDA90 8020FA40 00CF2821 */  addu       $a1, $a2, $t7
/* 1BDA94 8020FA44 1000004D */  b          .L8020FB7C_ovl9
/* 1BDA98 8020FA48 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020FA4C_ovl9:
/* 1BDA9C 8020FA4C C422DC88 */  lwc1       $f2, %lo(D_8021DC88_ovl9)($at)
/* 1BDAA0 8020FA50 3C018022 */  lui        $at, %hi(D_8021DC8C_ovl9)
/* 1BDAA4 8020FA54 460E103C */  c.lt.s     $f2, $f14
/* 1BDAA8 8020FA58 00000000 */  nop
/* 1BDAAC 8020FA5C 45000008 */  bc1f       .L8020FA80_ovl9
/* 1BDAB0 8020FA60 00000000 */   nop
/* 1BDAB4 8020FA64 46020100 */  add.s      $f4, $f0, $f2
/* 1BDAB8 8020FA68 E4A40000 */  swc1       $f4, 0x0($a1)
/* 1BDABC 8020FA6C 8C580000 */  lw         $t8, 0x0($v0)
/* 1BDAC0 8020FA70 0018C880 */  sll        $t9, $t8, 2
/* 1BDAC4 8020FA74 00D92821 */  addu       $a1, $a2, $t9
/* 1BDAC8 8020FA78 10000040 */  b          .L8020FB7C_ovl9
/* 1BDACC 8020FA7C C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020FA80_ovl9:
/* 1BDAD0 8020FA80 C42CDC8C */  lwc1       $f12, %lo(D_8021DC8C_ovl9)($at)
/* 1BDAD4 8020FA84 3C018022 */  lui        $at, %hi(D_8021DC90_ovl9)
/* 1BDAD8 8020FA88 460E603C */  c.lt.s     $f12, $f14
/* 1BDADC 8020FA8C 00000000 */  nop
/* 1BDAE0 8020FA90 45000008 */  bc1f       .L8020FAB4_ovl9
/* 1BDAE4 8020FA94 00000000 */   nop
/* 1BDAE8 8020FA98 460C0180 */  add.s      $f6, $f0, $f12
/* 1BDAEC 8020FA9C E4A60000 */  swc1       $f6, 0x0($a1)
/* 1BDAF0 8020FAA0 8C480000 */  lw         $t0, 0x0($v0)
/* 1BDAF4 8020FAA4 00084880 */  sll        $t1, $t0, 2
/* 1BDAF8 8020FAA8 00C92821 */  addu       $a1, $a2, $t1
/* 1BDAFC 8020FAAC 10000033 */  b          .L8020FB7C_ovl9
/* 1BDB00 8020FAB0 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020FAB4_ovl9:
/* 1BDB04 8020FAB4 C430DC90 */  lwc1       $f16, %lo(D_8021DC90_ovl9)($at)
/* 1BDB08 8020FAB8 3C018022 */  lui        $at, %hi(D_8021DC94_ovl9)
/* 1BDB0C 8020FABC 460E803E */  c.le.s     $f16, $f14
/* 1BDB10 8020FAC0 00000000 */  nop
/* 1BDB14 8020FAC4 45000008 */  bc1f       .L8020FAE8_ovl9
/* 1BDB18 8020FAC8 00000000 */   nop
/* 1BDB1C 8020FACC 46100200 */  add.s      $f8, $f0, $f16
/* 1BDB20 8020FAD0 E4A80000 */  swc1       $f8, 0x0($a1)
/* 1BDB24 8020FAD4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1BDB28 8020FAD8 000A5880 */  sll        $t3, $t2, 2
/* 1BDB2C 8020FADC 00CB2821 */  addu       $a1, $a2, $t3
/* 1BDB30 8020FAE0 10000026 */  b          .L8020FB7C_ovl9
/* 1BDB34 8020FAE4 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020FAE8_ovl9:
/* 1BDB38 8020FAE8 C42ADC94 */  lwc1       $f10, %lo(D_8021DC94_ovl9)($at)
/* 1BDB3C 8020FAEC 3C018022 */  lui        $at, %hi(D_8021DC98_ovl9)
/* 1BDB40 8020FAF0 460A703C */  c.lt.s     $f14, $f10
/* 1BDB44 8020FAF4 00000000 */  nop
/* 1BDB48 8020FAF8 45000008 */  bc1f       .L8020FB1C_ovl9
/* 1BDB4C 8020FAFC 00000000 */   nop
/* 1BDB50 8020FB00 46020481 */  sub.s      $f18, $f0, $f2
/* 1BDB54 8020FB04 E4B20000 */  swc1       $f18, 0x0($a1)
/* 1BDB58 8020FB08 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1BDB5C 8020FB0C 000C6880 */  sll        $t5, $t4, 2
/* 1BDB60 8020FB10 00CD2821 */  addu       $a1, $a2, $t5
/* 1BDB64 8020FB14 10000019 */  b          .L8020FB7C_ovl9
/* 1BDB68 8020FB18 C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020FB1C_ovl9:
/* 1BDB6C 8020FB1C C424DC98 */  lwc1       $f4, %lo(D_8021DC98_ovl9)($at)
/* 1BDB70 8020FB20 3C018022 */  lui        $at, %hi(D_8021DC9C_ovl9)
/* 1BDB74 8020FB24 4604703C */  c.lt.s     $f14, $f4
/* 1BDB78 8020FB28 00000000 */  nop
/* 1BDB7C 8020FB2C 45000008 */  bc1f       .L8020FB50_ovl9
/* 1BDB80 8020FB30 00000000 */   nop
/* 1BDB84 8020FB34 460C0181 */  sub.s      $f6, $f0, $f12
/* 1BDB88 8020FB38 E4A60000 */  swc1       $f6, 0x0($a1)
/* 1BDB8C 8020FB3C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1BDB90 8020FB40 000E7880 */  sll        $t7, $t6, 2
/* 1BDB94 8020FB44 00CF2821 */  addu       $a1, $a2, $t7
/* 1BDB98 8020FB48 1000000C */  b          .L8020FB7C_ovl9
/* 1BDB9C 8020FB4C C4A00000 */   lwc1      $f0, 0x0($a1)
.L8020FB50_ovl9:
/* 1BDBA0 8020FB50 C428DC9C */  lwc1       $f8, %lo(D_8021DC9C_ovl9)($at)
/* 1BDBA4 8020FB54 4608703E */  c.le.s     $f14, $f8
/* 1BDBA8 8020FB58 00000000 */  nop
/* 1BDBAC 8020FB5C 45000007 */  bc1f       .L8020FB7C_ovl9
/* 1BDBB0 8020FB60 00000000 */   nop
/* 1BDBB4 8020FB64 46100281 */  sub.s      $f10, $f0, $f16
/* 1BDBB8 8020FB68 E4AA0000 */  swc1       $f10, 0x0($a1)
/* 1BDBBC 8020FB6C 8C580000 */  lw         $t8, 0x0($v0)
/* 1BDBC0 8020FB70 0018C880 */  sll        $t9, $t8, 2
/* 1BDBC4 8020FB74 00D92821 */  addu       $a1, $a2, $t9
/* 1BDBC8 8020FB78 C4A00000 */  lwc1       $f0, 0x0($a1)
.L8020FB7C_ovl9:
/* 1BDBCC 8020FB7C 3C018022 */  lui        $at, %hi(D_8021DCA0_ovl9)
/* 1BDBD0 8020FB80 C422DCA0 */  lwc1       $f2, %lo(D_8021DCA0_ovl9)($at)
/* 1BDBD4 8020FB84 44806000 */  mtc1       $zero, $f12
/* 1BDBD8 8020FB88 3C018022 */  lui        $at, %hi(D_8021DCA4_ovl9)
/* 1BDBDC 8020FB8C 4600103C */  c.lt.s     $f2, $f0
/* 1BDBE0 8020FB90 00000000 */  nop
/* 1BDBE4 8020FB94 4502000C */  bc1fl      .L8020FBC8_ovl9
/* 1BDBE8 8020FB98 460C003C */   c.lt.s    $f0, $f12
/* 1BDBEC 8020FB9C 46020481 */  sub.s      $f18, $f0, $f2
.L8020FBA0_ovl9:
/* 1BDBF0 8020FBA0 E4B20000 */  swc1       $f18, 0x0($a1)
/* 1BDBF4 8020FBA4 8C480000 */  lw         $t0, 0x0($v0)
/* 1BDBF8 8020FBA8 00084880 */  sll        $t1, $t0, 2
/* 1BDBFC 8020FBAC 00C92821 */  addu       $a1, $a2, $t1
/* 1BDC00 8020FBB0 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 1BDC04 8020FBB4 4600103C */  c.lt.s     $f2, $f0
/* 1BDC08 8020FBB8 00000000 */  nop
/* 1BDC0C 8020FBBC 4503FFF8 */  bc1tl      .L8020FBA0_ovl9
/* 1BDC10 8020FBC0 46020481 */   sub.s     $f18, $f0, $f2
/* 1BDC14 8020FBC4 460C003C */  c.lt.s     $f0, $f12
.L8020FBC8_ovl9:
/* 1BDC18 8020FBC8 00000000 */  nop
/* 1BDC1C 8020FBCC 4500000B */  bc1f       .L8020FBFC_ovl9
/* 1BDC20 8020FBD0 00000000 */   nop
/* 1BDC24 8020FBD4 46020100 */  add.s      $f4, $f0, $f2
.L8020FBD8_ovl9:
/* 1BDC28 8020FBD8 E4A40000 */  swc1       $f4, 0x0($a1)
/* 1BDC2C 8020FBDC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1BDC30 8020FBE0 000A5880 */  sll        $t3, $t2, 2
/* 1BDC34 8020FBE4 00CB2821 */  addu       $a1, $a2, $t3
/* 1BDC38 8020FBE8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 1BDC3C 8020FBEC 460C003C */  c.lt.s     $f0, $f12
/* 1BDC40 8020FBF0 00000000 */  nop
/* 1BDC44 8020FBF4 4503FFF8 */  bc1tl      .L8020FBD8_ovl9
/* 1BDC48 8020FBF8 46020100 */   add.s     $f4, $f0, $f2
.L8020FBFC_ovl9:
/* 1BDC4C 8020FBFC C426DCA4 */  lwc1       $f6, %lo(D_8021DCA4_ovl9)($at)
/* 1BDC50 8020FC00 8C8C003C */  lw         $t4, 0x3C($a0)
/* 1BDC54 8020FC04 46060201 */  sub.s      $f8, $f0, $f6
/* 1BDC58 8020FC08 8D8D0010 */  lw         $t5, 0x10($t4)
/* 1BDC5C 8020FC0C 03E00008 */  jr         $ra
/* 1BDC60 8020FC10 E5A80030 */   swc1      $f8, 0x30($t5)
