glabel func_8016DDE8_ovl3
/* CE828 8016DDE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CE82C 8016DDEC AFB00014 */  sw         $s0, 0x14($sp)
/* CE830 8016DDF0 3C108013 */  lui        $s0, %hi(gKirbyState)
/* CE834 8016DDF4 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* CE838 8016DDF8 AFBF001C */  sw         $ra, 0x1C($sp)
/* CE83C 8016DDFC AFB10018 */  sw         $s1, 0x18($sp)
/* CE840 8016DE00 AFA40020 */  sw         $a0, 0x20($sp)
/* CE844 8016DE04 AE000030 */  sw         $zero, 0x30($s0)
/* CE848 8016DE08 A60000D2 */  sh         $zero, 0xD2($s0)
/* CE84C 8016DE0C 0C0473D6 */  jal        func_8011CF58
/* CE850 8016DE10 A60000D0 */   sh        $zero, 0xD0($s0)
/* CE854 8016DE14 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* CE858 8016DE18 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* CE85C 8016DE1C 8E220000 */  lw         $v0, 0x0($s1)
/* CE860 8016DE20 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L8016DE24_ovl5:
/* CE864 8016DE24 240F0003 */  addiu      $t7, $zero, 0x3
/* CE868 8016DE28 8C580000 */  lw         $t8, 0x0($v0)
/* CE86C 8016DE2C 3C0A8019 */  lui        $t2, %hi(D_80190358_ovl3)
.L8016DE30_ovl5:
/* CE870 8016DE30 3C098019 */  lui        $t1, %hi(D_801903E0_ovl3)
/* CE874 8016DE34 0018C880 */  sll        $t9, $t8, 2
/* CE878 8016DE38 00390821 */  addu       $at, $at, $t9
.L8016DE3C_ovl5:
/* CE87C 8016DE3C AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* CE880 8016DE40 92080004 */  lbu        $t0, 0x4($s0)
/* CE884 8016DE44 24010001 */  addiu      $at, $zero, 0x1
/* CE888 8016DE48 252903E0 */  addiu      $t1, $t1, %lo(D_801903E0_ovl3)
/* CE88C 8016DE4C 15010003 */  bne        $t0, $at, .L8016DE5C_ovl3
/* CE890 8016DE50 254A0358 */   addiu     $t2, $t2, %lo(D_80190358_ovl3)
/* CE894 8016DE54 10000002 */  b          .L8016DE60_ovl3
/* CE898 8016DE58 AE09015C */   sw        $t1, 0x15C($s0)
.L8016DE5C_ovl3:
/* CE89C 8016DE5C AE0A015C */  sw         $t2, 0x15C($s0)
.L8016DE60_ovl3:
/* CE8A0 8016DE60 8C4B0000 */  lw         $t3, 0x0($v0)
/* CE8A4 8016DE64 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* CE8A8 8016DE68 24010006 */  addiu      $at, $zero, 0x6
/* CE8AC 8016DE6C 000B6080 */  sll        $t4, $t3, 2
/* CE8B0 8016DE70 01AC6821 */  addu       $t5, $t5, $t4
/* CE8B4 8016DE74 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* CE8B8 8016DE78 00001025 */  or         $v0, $zero, $zero
/* CE8BC 8016DE7C 31AE0006 */  andi       $t6, $t5, 0x6
/* CE8C0 8016DE80 15C10003 */  bne        $t6, $at, .L8016DE90_ovl3
/* CE8C4 8016DE84 00000000 */   nop
/* CE8C8 8016DE88 10000001 */  b          .L8016DE90_ovl3
/* CE8CC 8016DE8C 24020001 */   addiu     $v0, $zero, 0x1
.L8016DE90_ovl3:
/* CE8D0 8016DE90 1040001B */  beqz       $v0, .L8016DF00_ovl3
/* CE8D4 8016DE94 00000000 */   nop
/* CE8D8 8016DE98 0C029D9E */  jal        play_sound
/* CE8DC 8016DE9C 2404010B */   addiu     $a0, $zero, 0x10B
/* CE8E0 8016DEA0 3C014108 */  lui        $at, (0x41080000 >> 16)
/* CE8E4 8016DEA4 44810000 */  mtc1       $at, $f0
/* CE8E8 8016DEA8 3C014080 */  lui        $at, (0x40800000 >> 16)
.L8016DEAC_ovl5:
/* CE8EC 8016DEAC 44812000 */  mtc1       $at, $f4
/* CE8F0 8016DEB0 8E220000 */  lw         $v0, 0x0($s1)
/* CE8F4 8016DEB4 3C01800E */  lui        $at, %hi(D_800E3210)
.L8016DEB8_ovl5:
/* CE8F8 8016DEB8 E60400CC */  swc1       $f4, 0xCC($s0)
/* CE8FC 8016DEBC 8C580000 */  lw         $t8, 0x0($v0)
/* CE900 8016DEC0 00187880 */  sll        $t7, $t8, 2
.L8016DEC4_ovl5:
/* CE904 8016DEC4 002F0821 */  addu       $at, $at, $t7
/* CE908 8016DEC8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* CE90C 8016DECC 8C590000 */  lw         $t9, 0x0($v0)
.L8016DED0_ovl5:
/* CE910 8016DED0 3C018019 */  lui        $at, %hi(D_8019735C_ovl3)
/* CE914 8016DED4 C426735C */  lwc1       $f6, %lo(D_8019735C_ovl3)($at)
/* CE918 8016DED8 3C01800E */  lui        $at, %hi(D_800E3750)
/* CE91C 8016DEDC 00194080 */  sll        $t0, $t9, 2
/* CE920 8016DEE0 00280821 */  addu       $at, $at, $t0
/* CE924 8016DEE4 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* CE928 8016DEE8 8C490000 */  lw         $t1, 0x0($v0)
/* CE92C 8016DEEC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CE930 8016DEF0 00095080 */  sll        $t2, $t1, 2
/* CE934 8016DEF4 002A0821 */  addu       $at, $at, $t2
/* CE938 8016DEF8 1000001D */  b          .L8016DF70_ovl3
/* CE93C 8016DEFC E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
.L8016DF00_ovl3:
/* CE940 8016DF00 0C029D9E */  jal        play_sound
.L8016DF04_ovl5:
/* CE944 8016DF04 240400F7 */   addiu     $a0, $zero, 0xF7
.L8016DF08_ovl5:
/* CE948 8016DF08 3C014100 */  lui        $at, (0x41000000 >> 16)
/* CE94C 8016DF0C 44814000 */  mtc1       $at, $f8
/* CE950 8016DF10 3C014188 */  lui        $at, (0x41880000 >> 16)
/* CE954 8016DF14 44816000 */  mtc1       $at, $f12
/* CE958 8016DF18 0C048C51 */  jal        func_80123144
.L8016DF1C_ovl5:
/* CE95C 8016DF1C E60800CC */   swc1      $f8, 0xCC($s0)
/* CE960 8016DF20 8E220000 */  lw         $v0, 0x0($s1)
/* CE964 8016DF24 3C01800E */  lui        $at, %hi(D_800E3210)
/* CE968 8016DF28 8C4B0000 */  lw         $t3, 0x0($v0)
/* CE96C 8016DF2C 000B6080 */  sll        $t4, $t3, 2
/* CE970 8016DF30 002C0821 */  addu       $at, $at, $t4
/* CE974 8016DF34 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* CE978 8016DF38 8C4D0000 */  lw         $t5, 0x0($v0)
/* CE97C 8016DF3C 3C018019 */  lui        $at, %hi(D_80197360_ovl3)
/* CE980 8016DF40 C42A7360 */  lwc1       $f10, %lo(D_80197360_ovl3)($at)
/* CE984 8016DF44 3C01800E */  lui        $at, %hi(D_800E3750)
/* CE988 8016DF48 000D7080 */  sll        $t6, $t5, 2
/* CE98C 8016DF4C 002E0821 */  addu       $at, $at, $t6
/* CE990 8016DF50 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
/* CE994 8016DF54 8C580000 */  lw         $t8, 0x0($v0)
/* CE998 8016DF58 3C014180 */  lui        $at, (0x41800000 >> 16)
/* CE99C 8016DF5C 44818000 */  mtc1       $at, $f16
/* CE9A0 8016DF60 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CE9A4 8016DF64 00187880 */  sll        $t7, $t8, 2
/* CE9A8 8016DF68 002F0821 */  addu       $at, $at, $t7
/* CE9AC 8016DF6C E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
.L8016DF70_ovl3:
/* CE9B0 8016DF70 8C590000 */  lw         $t9, 0x0($v0)
/* CE9B4 8016DF74 3C01800F */  lui        $at, %hi(D_800E83E0)
/* CE9B8 8016DF78 3C040002 */  lui        $a0, (0x2009F >> 16)
/* CE9BC 8016DF7C 00194080 */  sll        $t0, $t9, 2
/* CE9C0 8016DF80 00280821 */  addu       $at, $at, $t0
/* CE9C4 8016DF84 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
/* CE9C8 8016DF88 8C490000 */  lw         $t1, 0x0($v0)
/* CE9CC 8016DF8C 3C01800F */  lui        $at, %hi(D_800E8920)
/* CE9D0 8016DF90 3C050002 */  lui        $a1, (0x20007 >> 16)
/* CE9D4 8016DF94 00095080 */  sll        $t2, $t1, 2
/* CE9D8 8016DF98 002A0821 */  addu       $at, $at, $t2
/* CE9DC 8016DF9C AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* CE9E0 8016DFA0 920B0006 */  lbu        $t3, 0x6($s0)
.L8016DFA4_ovl5:
/* CE9E4 8016DFA4 2401000B */  addiu      $at, $zero, 0xB
/* CE9E8 8016DFA8 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
/* CE9EC 8016DFAC 15610005 */  bne        $t3, $at, .L8016DFC4_ovl3
.L8016DFB0_ovl5:
/* CE9F0 8016DFB0 3484009F */   ori       $a0, $a0, (0x2009F & 0xFFFF)
/* CE9F4 8016DFB4 0C02A9E3 */  jal        func_800AA78C
/* CE9F8 8016DFB8 3C064040 */   lui       $a2, (0x40400000 >> 16)
.L8016DFBC_ovl5:
/* CE9FC 8016DFBC 10000008 */  b          .L8016DFE0_ovl3
/* CEA00 8016DFC0 92020004 */   lbu       $v0, 0x4($s0)
.L8016DFC4_ovl3:
/* CEA04 8016DFC4 8C4C0000 */  lw         $t4, 0x0($v0)
/* CEA08 8016DFC8 3C04800E */  lui        $a0, %hi(D_800DFA10)
/* CEA0C 8016DFCC 000C6880 */  sll        $t5, $t4, 2
/* CEA10 8016DFD0 008D2021 */  addu       $a0, $a0, $t5
/* CEA14 8016DFD4 0C02BE95 */  jal        func_800AFA54
/* CEA18 8016DFD8 8C84FA10 */   lw        $a0, %lo(D_800DFA10)($a0)
/* CEA1C 8016DFDC 92020004 */  lbu        $v0, 0x4($s0)
.L8016DFE0_ovl3:
/* CEA20 8016DFE0 3C040002 */  lui        $a0, (0x2009F >> 16)
/* CEA24 8016DFE4 3484009F */  ori        $a0, $a0, (0x2009F & 0xFFFF)
/* CEA28 8016DFE8 10400009 */  beqz       $v0, .L8016E010_ovl3
/* CEA2C 8016DFEC 3C050002 */   lui       $a1, (0x200A0 >> 16)
/* CEA30 8016DFF0 24010001 */  addiu      $at, $zero, 0x1
/* CEA34 8016DFF4 1041000B */  beq        $v0, $at, .L8016E024_ovl3
/* CEA38 8016DFF8 3C040002 */   lui       $a0, (0x2016D >> 16)
/* CEA3C 8016DFFC 24010002 */  addiu      $at, $zero, 0x2
/* CEA40 8016E000 1041000F */  beq        $v0, $at, .L8016E040_ovl3
/* CEA44 8016E004 3C040002 */   lui       $a0, (0x200C7 >> 16)
/* CEA48 8016E008 10000013 */  b          .L8016E058_ovl3
/* CEA4C 8016E00C 8E2E0000 */   lw        $t6, 0x0($s1)
.L8016E010_ovl3:
/* CEA50 8016E010 34A500A0 */  ori        $a1, $a1, (0x200A0 & 0xFFFF)
/* CEA54 8016E014 0C048C3A */  jal        func_801230E8
/* CEA58 8016E018 00003025 */   or        $a2, $zero, $zero
/* CEA5C 8016E01C 1000000E */  b          .L8016E058_ovl3
/* CEA60 8016E020 8E2E0000 */   lw        $t6, 0x0($s1)
.L8016E024_ovl3:
/* CEA64 8016E024 3C050002 */  lui        $a1, (0x2016E >> 16)
/* CEA68 8016E028 34A5016E */  ori        $a1, $a1, (0x2016E & 0xFFFF)
.L8016E02C_ovl5:
/* CEA6C 8016E02C 3484016D */  ori        $a0, $a0, (0x2016D & 0xFFFF)
/* CEA70 8016E030 0C048C3A */  jal        func_801230E8
/* CEA74 8016E034 00003025 */   or        $a2, $zero, $zero
.L8016E038_ovl5:
/* CEA78 8016E038 10000007 */  b          .L8016E058_ovl3
/* CEA7C 8016E03C 8E2E0000 */   lw        $t6, 0x0($s1)
.L8016E040_ovl3:
/* CEA80 8016E040 3C050002 */  lui        $a1, (0x200C8 >> 16)
.L8016E044_ovl5:
/* CEA84 8016E044 34A500C8 */  ori        $a1, $a1, (0x200C8 & 0xFFFF)
/* CEA88 8016E048 348400C7 */  ori        $a0, $a0, (0x200C7 & 0xFFFF)
/* CEA8C 8016E04C 0C048C3A */  jal        func_801230E8
/* CEA90 8016E050 00003025 */   or        $a2, $zero, $zero
/* CEA94 8016E054 8E2E0000 */  lw         $t6, 0x0($s1)
.L8016E058_ovl3:
/* CEA98 8016E058 3C01800E */  lui        $at, %hi(D_800E3210)
/* CEA9C 8016E05C C61200CC */  lwc1       $f18, 0xCC($s0)
/* CEAA0 8016E060 8DD80000 */  lw         $t8, 0x0($t6)
/* CEAA4 8016E064 00187880 */  sll        $t7, $t8, 2
/* CEAA8 8016E068 002F0821 */  addu       $at, $at, $t7
/* CEAAC 8016E06C C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
/* CEAB0 8016E070 4604903C */  c.lt.s     $f18, $f4
/* CEAB4 8016E074 00000000 */  nop
/* CEAB8 8016E078 4502000F */  bc1fl      .L8016E0B8_ovl3
/* CEABC 8016E07C 960A00D2 */   lhu       $t2, 0xD2($s0)
.L8016E080_ovl3:
/* CEAC0 8016E080 0C002DAF */  jal        finish_current_thread
/* CEAC4 8016E084 24040001 */   addiu     $a0, $zero, 0x1
/* CEAC8 8016E088 8E390000 */  lw         $t9, 0x0($s1)
/* CEACC 8016E08C 3C01800E */  lui        $at, %hi(D_800E3210)
/* CEAD0 8016E090 C60600CC */  lwc1       $f6, 0xCC($s0)
/* CEAD4 8016E094 8F280000 */  lw         $t0, 0x0($t9)
/* CEAD8 8016E098 00084880 */  sll        $t1, $t0, 2
/* CEADC 8016E09C 00290821 */  addu       $at, $at, $t1
/* CEAE0 8016E0A0 C4283210 */  lwc1       $f8, %lo(D_800E3210)($at)
/* CEAE4 8016E0A4 4608303C */  c.lt.s     $f6, $f8
/* CEAE8 8016E0A8 00000000 */  nop
/* CEAEC 8016E0AC 4501FFF4 */  bc1t       .L8016E080_ovl3
/* CEAF0 8016E0B0 00000000 */   nop
.L8016E0B4_ovl5:
/* CEAF4 8016E0B4 960A00D2 */  lhu        $t2, 0xD2($s0)
.L8016E0B8_ovl3:
/* CEAF8 8016E0B8 92020004 */  lbu        $v0, 0x4($s0)
/* CEAFC 8016E0BC 3C040002 */  lui        $a0, (0x200A1 >> 16)
.L8016E0C0_ovl5:
/* CEB00 8016E0C0 254B0001 */  addiu      $t3, $t2, 0x1
/* CEB04 8016E0C4 10400009 */  beqz       $v0, .L8016E0EC_ovl3
/* CEB08 8016E0C8 A60B00D2 */   sh        $t3, 0xD2($s0)
.L8016E0CC_ovl5:
/* CEB0C 8016E0CC 24010001 */  addiu      $at, $zero, 0x1
/* CEB10 8016E0D0 1041000D */  beq        $v0, $at, .L8016E108_ovl3
/* CEB14 8016E0D4 3C040002 */   lui       $a0, (0x2016F >> 16)
.L8016E0D8_ovl5:
/* CEB18 8016E0D8 24010002 */  addiu      $at, $zero, 0x2
/* CEB1C 8016E0DC 10410011 */  beq        $v0, $at, .L8016E124_ovl3
/* CEB20 8016E0E0 3C040002 */   lui       $a0, (0x200A1 >> 16)
/* CEB24 8016E0E4 10000015 */  b          .L8016E13C_ovl3
/* CEB28 8016E0E8 8E0C0030 */   lw        $t4, 0x30($s0)
.L8016E0EC_ovl3:
/* CEB2C 8016E0EC 3C050002 */  lui        $a1, (0x200A2 >> 16)
/* CEB30 8016E0F0 34A500A2 */  ori        $a1, $a1, (0x200A2 & 0xFFFF)
/* CEB34 8016E0F4 348400A1 */  ori        $a0, $a0, (0x200A1 & 0xFFFF)
/* CEB38 8016E0F8 0C048C3A */  jal        func_801230E8
/* CEB3C 8016E0FC 24060001 */   addiu     $a2, $zero, 0x1
/* CEB40 8016E100 1000000E */  b          .L8016E13C_ovl3
/* CEB44 8016E104 8E0C0030 */   lw        $t4, 0x30($s0)
.L8016E108_ovl3:
/* CEB48 8016E108 3C050002 */  lui        $a1, (0x20170 >> 16)
/* CEB4C 8016E10C 34A50170 */  ori        $a1, $a1, (0x20170 & 0xFFFF)
/* CEB50 8016E110 3484016F */  ori        $a0, $a0, (0x2016F & 0xFFFF)
/* CEB54 8016E114 0C048C3A */  jal        func_801230E8
/* CEB58 8016E118 24060001 */   addiu     $a2, $zero, 0x1
/* CEB5C 8016E11C 10000007 */  b          .L8016E13C_ovl3
/* CEB60 8016E120 8E0C0030 */   lw        $t4, 0x30($s0)
.L8016E124_ovl3:
/* CEB64 8016E124 3C050002 */  lui        $a1, (0x200CA >> 16)
/* CEB68 8016E128 34A500CA */  ori        $a1, $a1, (0x200CA & 0xFFFF)
/* CEB6C 8016E12C 348400C9 */  ori        $a0, $a0, (0x200C9 & 0xFFFF)
/* CEB70 8016E130 0C048C3A */  jal        func_801230E8
/* CEB74 8016E134 24060001 */   addiu     $a2, $zero, 0x1
/* CEB78 8016E138 8E0C0030 */  lw         $t4, 0x30($s0)
.L8016E13C_ovl3:
/* CEB7C 8016E13C 258D0001 */  addiu      $t5, $t4, 0x1
/* CEB80 8016E140 0C02BE85 */  jal        func_800AFA14
/* CEB84 8016E144 AE0D0030 */   sw        $t5, 0x30($s0)
/* CEB88 8016E148 8FBF001C */  lw         $ra, 0x1C($sp)
/* CEB8C 8016E14C 8FB00014 */  lw         $s0, 0x14($sp)
/* CEB90 8016E150 8FB10018 */  lw         $s1, 0x18($sp)
.L8016E154_ovl5:
/* CEB94 8016E154 03E00008 */  jr         $ra
/* CEB98 8016E158 27BD0020 */   addiu     $sp, $sp, 0x20
