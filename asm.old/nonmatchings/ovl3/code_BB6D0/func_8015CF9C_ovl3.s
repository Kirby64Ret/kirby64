glabel func_8015CF9C_ovl3
/* BD9DC 8015CF9C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BD9E0 8015CFA0 AFB00018 */  sw         $s0, 0x18($sp)
/* BD9E4 8015CFA4 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* BD9E8 8015CFA8 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* BD9EC 8015CFAC 8E070000 */  lw         $a3, 0x0($s0)
/* BD9F0 8015CFB0 AFBF0024 */  sw         $ra, 0x24($sp)
/* BD9F4 8015CFB4 AFB20020 */  sw         $s2, 0x20($sp)
/* BD9F8 8015CFB8 AFB1001C */  sw         $s1, 0x1C($sp)
/* BD9FC 8015CFBC 8CEE0000 */  lw         $t6, 0x0($a3)
/* BDA00 8015CFC0 3C01800F */  lui        $at, %hi(D_800EA520)
/* BDA04 8015CFC4 3C11800F */  lui        $s1, %hi(D_800E98E0)
/* BDA08 8015CFC8 000E7880 */  sll        $t7, $t6, 2
/* BDA0C 8015CFCC 002F0821 */  addu       $at, $at, $t7
/* BDA10 8015CFD0 AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* BDA14 8015CFD4 8CF80000 */  lw         $t8, 0x0($a3)
/* BDA18 8015CFD8 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
/* BDA1C 8015CFDC 0018C880 */  sll        $t9, $t8, 2
/* BDA20 8015CFE0 02394821 */  addu       $t1, $s1, $t9
/* BDA24 8015CFE4 0C058738 */  jal        func_80161CE0_ovl3
/* BDA28 8015CFE8 AD200000 */   sw        $zero, 0x0($t1)
/* BDA2C 8015CFEC 8E0A0000 */  lw         $t2, 0x0($s0)
/* BDA30 8015CFF0 3C01800F */  lui        $at, %hi(D_800EC660)
/* BDA34 8015CFF4 8D4B0000 */  lw         $t3, 0x0($t2)
/* BDA38 8015CFF8 000B6080 */  sll        $t4, $t3, 2
/* BDA3C 8015CFFC 002C0821 */  addu       $at, $at, $t4
.L8015D000_ovl5:
/* BDA40 8015D000 0C00B5B8 */  jal        sinf
/* BDA44 8015D004 C42CC660 */   lwc1      $f12, %lo(D_800EC660)($at)
/* BDA48 8015D008 3C014220 */  lui        $at, (0x42200000 >> 16)
.L8015D00C_ovl5:
/* BDA4C 8015D00C 44812000 */  mtc1       $at, $f4
/* BDA50 8015D010 3C018019 */  lui        $at, %hi(D_80197074_ovl3)
/* BDA54 8015D014 C4267074 */  lwc1       $f6, %lo(D_80197074_ovl3)($at)
/* BDA58 8015D018 8E0D0000 */  lw         $t5, 0x0($s0)
/* BDA5C 8015D01C 3C12800D */  lui        $s2, %hi(D_800D71E8 + 0x50)
/* BDA60 8015D020 46060202 */  mul.s      $f8, $f0, $f6
/* BDA64 8015D024 26527238 */  addiu      $s2, $s2, %lo(D_800D71E8 + 0x50)
/* BDA68 8015D028 3C01800F */  lui        $at, %hi(D_800EC660)
/* BDA6C 8015D02C 46082281 */  sub.s      $f10, $f4, $f8
/* BDA70 8015D030 E64A0000 */  swc1       $f10, 0x0($s2)
/* BDA74 8015D034 8DAE0000 */  lw         $t6, 0x0($t5)
/* BDA78 8015D038 000E7880 */  sll        $t7, $t6, 2
/* BDA7C 8015D03C 002F0821 */  addu       $at, $at, $t7
/* BDA80 8015D040 0C00B5B8 */  jal        sinf
/* BDA84 8015D044 C42CC660 */   lwc1      $f12, %lo(D_800EC660)($at)
/* BDA88 8015D048 3C01C282 */  lui        $at, (0xC2820000 >> 16)
/* BDA8C 8015D04C 44818000 */  mtc1       $at, $f16
/* BDA90 8015D050 8E180000 */  lw         $t8, 0x0($s0)
/* BDA94 8015D054 3C04800E */  lui        $a0, %hi(D_800E1B50 + 0x1C0)
/* BDA98 8015D058 46100482 */  mul.s      $f18, $f0, $f16
/* BDA9C 8015D05C 8F190000 */  lw         $t9, 0x0($t8)
/* BDAA0 8015D060 8E450000 */  lw         $a1, 0x0($s2)
/* BDAA4 8015D064 00194880 */  sll        $t1, $t9, 2
/* BDAA8 8015D068 00892021 */  addu       $a0, $a0, $t1
/* BDAAC 8015D06C 8C841D10 */  lw         $a0, %lo(D_800E1B50 + 0x1C0)($a0)
/* BDAB0 8015D070 44069000 */  mfc1       $a2, $f18
/* BDAB4 8015D074 0C0587B0 */  jal        func_80161EC0_ovl3
/* BDAB8 8015D078 00000000 */   nop
/* BDABC 8015D07C 8E070000 */  lw         $a3, 0x0($s0)
/* BDAC0 8015D080 3C0A800B */  lui        $t2, %hi(func_800B4954)
/* BDAC4 8015D084 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BDAC8 8015D088 8CEB0000 */  lw         $t3, 0x0($a3)
/* BDACC 8015D08C 254A4954 */  addiu      $t2, $t2, %lo(func_800B4954)
/* BDAD0 8015D090 3C0D8016 */  lui        $t5, %hi(func_8015D3C8_ovl3)
/* BDAD4 8015D094 000B6080 */  sll        $t4, $t3, 2
/* BDAD8 8015D098 002C0821 */  addu       $at, $at, $t4
/* BDADC 8015D09C AC2AEF90 */  sw         $t2, %lo(D_800DEF90)($at)
/* BDAE0 8015D0A0 8CEE0000 */  lw         $t6, 0x0($a3)
/* BDAE4 8015D0A4 3C01800E */  lui        $at, %hi(D_800DF150)
/* BDAE8 8015D0A8 25ADD3C8 */  addiu      $t5, $t5, %lo(func_8015D3C8_ovl3)
/* BDAEC 8015D0AC 000E7880 */  sll        $t7, $t6, 2
/* BDAF0 8015D0B0 002F0821 */  addu       $at, $at, $t7
/* BDAF4 8015D0B4 AC2DF150 */  sw         $t5, %lo(D_800DF150)($at)
/* BDAF8 8015D0B8 8CF90000 */  lw         $t9, 0x0($a3)
/* BDAFC 8015D0BC 3C01800E */  lui        $at, %hi(D_800E0490)
/* BDB00 8015D0C0 3C188019 */  lui        $t8, %hi(D_80192CA4_ovl3)
/* BDB04 8015D0C4 00194880 */  sll        $t1, $t9, 2
/* BDB08 8015D0C8 00290821 */  addu       $at, $at, $t1
/* BDB0C 8015D0CC 27182CA4 */  addiu      $t8, $t8, %lo(D_80192CA4_ovl3)
/* BDB10 8015D0D0 AC380490 */  sw         $t8, %lo(D_800E0490)($at)
/* BDB14 8015D0D4 8CE30000 */  lw         $v1, 0x0($a3)
/* BDB18 8015D0D8 3C0D801A */  lui        $t5, %hi(D_801982F8_ovl3)
/* BDB1C 8015D0DC 3C0C8019 */  lui        $t4, %hi(D_80197F60_ovl3)
/* BDB20 8015D0E0 2468FFFC */  addiu      $t0, $v1, -0x4
/* BDB24 8015D0E4 00085080 */  sll        $t2, $t0, 2
/* BDB28 8015D0E8 01485023 */  subu       $t2, $t2, $t0
/* BDB2C 8015D0EC 000A50C0 */  sll        $t2, $t2, 3
/* BDB30 8015D0F0 01485023 */  subu       $t2, $t2, $t0
/* BDB34 8015D0F4 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* BDB38 8015D0F8 00035880 */  sll        $t3, $v1, 2
/* BDB3C 8015D0FC 008B2021 */  addu       $a0, $a0, $t3
/* BDB40 8015D100 000A5080 */  sll        $t2, $t2, 2
/* BDB44 8015D104 00087140 */  sll        $t6, $t0, 5
/* BDB48 8015D108 258C7F60 */  addiu      $t4, $t4, %lo(D_80197F60_ovl3)
/* BDB4C 8015D10C 25AD82F8 */  addiu      $t5, $t5, %lo(D_801982F8_ovl3)
/* BDB50 8015D110 01CD3021 */  addu       $a2, $t6, $t5
.L8015D114_ovl5:
/* BDB54 8015D114 014C2821 */  addu       $a1, $t2, $t4
/* BDB58 8015D118 0C055192 */  jal        func_80154648_ovl3
/* BDB5C 8015D11C 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
/* BDB60 8015D120 24040001 */  addiu      $a0, $zero, 0x1
/* BDB64 8015D124 24050001 */  addiu      $a1, $zero, 0x1
.L8015D128_ovl5:
/* BDB68 8015D128 0C02A08D */  jal        func_800A8234
/* BDB6C 8015D12C 2406002A */   addiu     $a2, $zero, 0x2A
/* BDB70 8015D130 8E070000 */  lw         $a3, 0x0($s0)
/* BDB74 8015D134 3C014100 */  lui        $at, (0x41000000 >> 16)
/* BDB78 8015D138 44811000 */  mtc1       $at, $f2
/* BDB7C 8015D13C 8CEF0000 */  lw         $t7, 0x0($a3)
/* BDB80 8015D140 3C01800F */  lui        $at, %hi(D_800EA520)
/* BDB84 8015D144 3C0B800E */  lui        $t3, %hi(D_800E0D50)
/* BDB88 8015D148 000FC880 */  sll        $t9, $t7, 2
/* BDB8C 8015D14C 00390821 */  addu       $at, $at, $t9
/* BDB90 8015D150 AC22A520 */  sw         $v0, %lo(D_800EA520)($at)
.L8015D154_ovl5:
/* BDB94 8015D154 8CF80000 */  lw         $t8, 0x0($a3)
/* BDB98 8015D158 3C0C800F */  lui        $t4, %hi(D_800E9720)
/* BDB9C 8015D15C 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* BDBA0 8015D160 00184880 */  sll        $t1, $t8, 2
/* BDBA4 8015D164 01695821 */  addu       $t3, $t3, $t1
/* BDBA8 8015D168 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
/* BDBAC 8015D16C 44814000 */  mtc1       $at, $f8
/* BDBB0 8015D170 000B5080 */  sll        $t2, $t3, 2
/* BDBB4 8015D174 018A6021 */  addu       $t4, $t4, $t2
/* BDBB8 8015D178 8D8C9720 */  lw         $t4, %lo(D_800E9720)($t4)
/* BDBBC 8015D17C 448C3000 */  mtc1       $t4, $f6
/* BDBC0 8015D180 00000000 */  nop
.L8015D184_ovl5:
/* BDBC4 8015D184 46803120 */  cvt.s.w    $f4, $f6
/* BDBC8 8015D188 46082282 */  mul.s      $f10, $f4, $f8
/* BDBCC 8015D18C E64A0000 */  swc1       $f10, 0x0($s2)
/* BDBD0 8015D190 C6400000 */  lwc1       $f0, 0x0($s2)
/* BDBD4 8015D194 4602003C */  c.lt.s     $f0, $f2
/* BDBD8 8015D198 00000000 */  nop
/* BDBDC 8015D19C 45020004 */  bc1fl      .L8015D1B0_ovl3
/* BDBE0 8015D1A0 3C014190 */   lui       $at, (0x41900000 >> 16)
/* BDBE4 8015D1A4 1000000B */  b          .L8015D1D4_ovl3
/* BDBE8 8015D1A8 E6420000 */   swc1      $f2, 0x0($s2)
/* BDBEC 8015D1AC 3C014190 */  lui        $at, (0x41900000 >> 16)
.L8015D1B0_ovl3:
/* BDBF0 8015D1B0 44818000 */  mtc1       $at, $f16
/* BDBF4 8015D1B4 3C014190 */  lui        $at, (0x41900000 >> 16)
.L8015D1B8_ovl5:
/* BDBF8 8015D1B8 4600803C */  c.lt.s     $f16, $f0
/* BDBFC 8015D1BC 00000000 */  nop
/* BDC00 8015D1C0 45020005 */  bc1fl      .L8015D1D8_ovl3
/* BDC04 8015D1C4 8CEE0000 */   lw        $t6, 0x0($a3)
/* BDC08 8015D1C8 44819000 */  mtc1       $at, $f18
/* BDC0C 8015D1CC 00000000 */  nop
/* BDC10 8015D1D0 E6520000 */  swc1       $f18, 0x0($s2)
.L8015D1D4_ovl3:
/* BDC14 8015D1D4 8CEE0000 */  lw         $t6, 0x0($a3)
.L8015D1D8_ovl3:
/* BDC18 8015D1D8 3C01800F */  lui        $at, %hi(D_800EC660)
/* BDC1C 8015D1DC 000E6880 */  sll        $t5, $t6, 2
/* BDC20 8015D1E0 002D0821 */  addu       $at, $at, $t5
/* BDC24 8015D1E4 0C00D604 */  jal        cosf
.L8015D1E8_ovl5:
/* BDC28 8015D1E8 C42CC660 */   lwc1      $f12, %lo(D_800EC660)($at)
.L8015D1EC_ovl5:
/* BDC2C 8015D1EC 8E070000 */  lw         $a3, 0x0($s0)
/* BDC30 8015D1F0 C6460000 */  lwc1       $f6, 0x0($s2)
/* BDC34 8015D1F4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BDC38 8015D1F8 8CE30000 */  lw         $v1, 0x0($a3)
/* BDC3C 8015D1FC 46060102 */  mul.s      $f4, $f0, $f6
/* BDC40 8015D200 44808000 */  mtc1       $zero, $f16
/* BDC44 8015D204 00031880 */  sll        $v1, $v1, 2
/* BDC48 8015D208 00230821 */  addu       $at, $at, $v1
/* BDC4C 8015D20C C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
.L8015D210_ovl5:
/* BDC50 8015D210 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BDC54 8015D214 00230821 */  addu       $at, $at, $v1
/* BDC58 8015D218 46082282 */  mul.s      $f10, $f4, $f8
/* BDC5C 8015D21C E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* BDC60 8015D220 8CEF0000 */  lw         $t7, 0x0($a3)
/* BDC64 8015D224 3C01800E */  lui        $at, %hi(D_800E6690)
/* BDC68 8015D228 000FC880 */  sll        $t9, $t7, 2
/* BDC6C 8015D22C 00390821 */  addu       $at, $at, $t9
/* BDC70 8015D230 E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
/* BDC74 8015D234 8CF80000 */  lw         $t8, 0x0($a3)
.L8015D238_ovl5:
/* BDC78 8015D238 3C014190 */  lui        $at, (0x41900000 >> 16)
/* BDC7C 8015D23C 44819000 */  mtc1       $at, $f18
/* BDC80 8015D240 3C01800E */  lui        $at, %hi(D_800E6850)
/* BDC84 8015D244 00184880 */  sll        $t1, $t8, 2
/* BDC88 8015D248 00290821 */  addu       $at, $at, $t1
/* BDC8C 8015D24C E4326850 */  swc1       $f18, %lo(D_800E6850)($at)
/* BDC90 8015D250 8CEB0000 */  lw         $t3, 0x0($a3)
/* BDC94 8015D254 3C01800F */  lui        $at, %hi(D_800EC660)
/* BDC98 8015D258 000B5080 */  sll        $t2, $t3, 2
.L8015D25C_ovl5:
/* BDC9C 8015D25C 002A0821 */  addu       $at, $at, $t2
/* BDCA0 8015D260 0C00B5B8 */  jal        sinf
/* BDCA4 8015D264 C42CC660 */   lwc1      $f12, %lo(D_800EC660)($at)
/* BDCA8 8015D268 C6460000 */  lwc1       $f6, 0x0($s2)
/* BDCAC 8015D26C 8E070000 */  lw         $a3, 0x0($s0)
/* BDCB0 8015D270 3C018019 */  lui        $at, %hi(D_80197078_ovl3)
/* BDCB4 8015D274 46060102 */  mul.s      $f4, $f0, $f6
/* BDCB8 8015D278 8CEC0000 */  lw         $t4, 0x0($a3)
/* BDCBC 8015D27C C4227078 */  lwc1       $f2, %lo(D_80197078_ovl3)($at)
/* BDCC0 8015D280 3C01800E */  lui        $at, %hi(D_800E3210)
/* BDCC4 8015D284 000C7080 */  sll        $t6, $t4, 2
/* BDCC8 8015D288 002E0821 */  addu       $at, $at, $t6
/* BDCCC 8015D28C 3C040002 */  lui        $a0, (0x20030 >> 16)
/* BDCD0 8015D290 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* BDCD4 8015D294 8CED0000 */  lw         $t5, 0x0($a3)
/* BDCD8 8015D298 3C018019 */  lui        $at, %hi(D_8019707C_ovl3)
/* BDCDC 8015D29C C428707C */  lwc1       $f8, %lo(D_8019707C_ovl3)($at)
/* BDCE0 8015D2A0 3C01800E */  lui        $at, %hi(D_800E3750)
/* BDCE4 8015D2A4 000D7880 */  sll        $t7, $t5, 2
glabel func_8015D2A8_ovl5
/* BDCE8 8015D2A8 002F0821 */  addu       $at, $at, $t7
/* BDCEC 8015D2AC E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
/* BDCF0 8015D2B0 8CF90000 */  lw         $t9, 0x0($a3)
/* BDCF4 8015D2B4 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* BDCF8 8015D2B8 44815000 */  mtc1       $at, $f10
/* BDCFC 8015D2BC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BDD00 8015D2C0 0019C080 */  sll        $t8, $t9, 2
/* BDD04 8015D2C4 00380821 */  addu       $at, $at, $t8
/* BDD08 8015D2C8 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
/* BDD0C 8015D2CC 8CE90000 */  lw         $t1, 0x0($a3)
/* BDD10 8015D2D0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* BDD14 8015D2D4 34840030 */  ori        $a0, $a0, (0x20030 & 0xFFFF)
/* BDD18 8015D2D8 00095880 */  sll        $t3, $t1, 2
/* BDD1C 8015D2DC 002B0821 */  addu       $at, $at, $t3
/* BDD20 8015D2E0 E4224550 */  swc1       $f2, %lo(gEntitiesScaleXArray)($at)
/* BDD24 8015D2E4 8CEA0000 */  lw         $t2, 0x0($a3)
/* BDD28 8015D2E8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BDD2C 8015D2EC 24050021 */  addiu      $a1, $zero, 0x21
/* BDD30 8015D2F0 000A6080 */  sll        $t4, $t2, 2
/* BDD34 8015D2F4 002C0821 */  addu       $at, $at, $t4
/* BDD38 8015D2F8 E4224710 */  swc1       $f2, %lo(gEntitiesScaleYArray)($at)
/* BDD3C 8015D2FC 8CEE0000 */  lw         $t6, 0x0($a3)
/* BDD40 8015D300 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* BDD44 8015D304 24060010 */  addiu      $a2, $zero, 0x10
/* BDD48 8015D308 000E6880 */  sll        $t5, $t6, 2
/* BDD4C 8015D30C 002D0821 */  addu       $at, $at, $t5
/* BDD50 8015D310 0C02A619 */  jal        func_800A9864
/* BDD54 8015D314 E42248D0 */   swc1      $f2, %lo(gEntitiesScaleZArray)($at)
/* BDD58 8015D318 8E0F0000 */  lw         $t7, 0x0($s0)
/* BDD5C 8015D31C 8DE30000 */  lw         $v1, 0x0($t7)
/* BDD60 8015D320 00031880 */  sll        $v1, $v1, 2
/* BDD64 8015D324 0223C821 */  addu       $t9, $s1, $v1
/* BDD68 8015D328 8F380000 */  lw         $t8, 0x0($t9)
/* BDD6C 8015D32C 1700000A */  bnez       $t8, .L8015D358_ovl3
/* BDD70 8015D330 00000000 */   nop
.L8015D334_ovl3:
/* BDD74 8015D334 0C002DAF */  jal        finish_current_thread
/* BDD78 8015D338 24040001 */   addiu     $a0, $zero, 0x1
/* BDD7C 8015D33C 8E090000 */  lw         $t1, 0x0($s0)
/* BDD80 8015D340 8D230000 */  lw         $v1, 0x0($t1)
/* BDD84 8015D344 00031880 */  sll        $v1, $v1, 2
/* BDD88 8015D348 02235821 */  addu       $t3, $s1, $v1
/* BDD8C 8015D34C 8D6A0000 */  lw         $t2, 0x0($t3)
/* BDD90 8015D350 1140FFF8 */  beqz       $t2, .L8015D334_ovl3
/* BDD94 8015D354 00000000 */   nop
.L8015D358_ovl3:
/* BDD98 8015D358 3C01800E */  lui        $at, %hi(D_800E0D50)
.L8015D35C_ovl5:
/* BDD9C 8015D35C 00230821 */  addu       $at, $at, $v1
/* BDDA0 8015D360 240CFFFF */  addiu      $t4, $zero, -0x1
/* BDDA4 8015D364 3C040002 */  lui        $a0, (0x20047 >> 16)
/* BDDA8 8015D368 AC2C0D50 */  sw         $t4, %lo(D_800E0D50)($at)
/* BDDAC 8015D36C 0C02A5D8 */  jal        func_800A9760
/* BDDB0 8015D370 34840047 */   ori       $a0, $a0, (0x20047 & 0xFFFF)
/* BDDB4 8015D374 27B10038 */  addiu      $s1, $sp, 0x38
/* BDDB8 8015D378 27B2003C */  addiu      $s2, $sp, 0x3C
/* BDDBC 8015D37C 02403025 */  or         $a2, $s2, $zero
/* BDDC0 8015D380 02202825 */  or         $a1, $s1, $zero
/* BDDC4 8015D384 0C029DFA */  jal        func_800A77E8
/* BDDC8 8015D388 240400B7 */   addiu     $a0, $zero, 0xB7
.L8015D38C_ovl5:
/* BDDCC 8015D38C 3C040002 */  lui        $a0, (0x202A0 >> 16)
/* BDDD0 8015D390 0C02A855 */  jal        func_800AA154
/* BDDD4 8015D394 348402A0 */   ori       $a0, $a0, (0x202A0 & 0xFFFF)
/* BDDD8 8015D398 02202025 */  or         $a0, $s1, $zero
/* BDDDC 8015D39C 0C029E1C */  jal        func_800A7870
/* BDDE0 8015D3A0 02402825 */   or        $a1, $s2, $zero
/* BDDE4 8015D3A4 8E0E0000 */  lw         $t6, 0x0($s0)
/* BDDE8 8015D3A8 0C02C640 */  jal        func_800B1900
/* BDDEC 8015D3AC 95C40002 */   lhu       $a0, 0x2($t6)
/* BDDF0 8015D3B0 8FBF0024 */  lw         $ra, 0x24($sp)
/* BDDF4 8015D3B4 8FB00018 */  lw         $s0, 0x18($sp)
/* BDDF8 8015D3B8 8FB1001C */  lw         $s1, 0x1C($sp)
/* BDDFC 8015D3BC 8FB20020 */  lw         $s2, 0x20($sp)
/* BDE00 8015D3C0 03E00008 */  jr         $ra
/* BDE04 8015D3C4 27BD0040 */   addiu     $sp, $sp, 0x40
