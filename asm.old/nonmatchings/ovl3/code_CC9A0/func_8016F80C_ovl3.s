glabel func_8016F80C_ovl3
/* D024C 8016F80C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D0250 8016F810 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* D0254 8016F814 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* D0258 8016F818 AFBF001C */  sw         $ra, 0x1C($sp)
/* D025C 8016F81C AFB10018 */  sw         $s1, 0x18($sp)
/* D0260 8016F820 AFB00014 */  sw         $s0, 0x14($sp)
/* D0264 8016F824 AFA40020 */  sw         $a0, 0x20($sp)
/* D0268 8016F828 8DCF0000 */  lw         $t7, 0x0($t6)
/* D026C 8016F82C 3C01800F */  lui        $at, %hi(D_800E83E0)
/* D0270 8016F830 000FC080 */  sll        $t8, $t7, 2
/* D0274 8016F834 00380821 */  addu       $at, $at, $t8
/* D0278 8016F838 0C0473D6 */  jal        func_8011CF58
/* D027C 8016F83C AC2083E0 */   sw        $zero, %lo(D_800E83E0)($at)
/* D0280 8016F840 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* D0284 8016F844 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* D0288 8016F848 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* D028C 8016F84C 24190007 */  addiu      $t9, $zero, 0x7
/* D0290 8016F850 8C480000 */  lw         $t0, 0x0($v0)
/* D0294 8016F854 3C0A8019 */  lui        $t2, %hi(D_801926E8_ovl3)
/* D0298 8016F858 3C118013 */  lui        $s1, %hi(gKirbyState)
/* D029C 8016F85C 00084880 */  sll        $t1, $t0, 2
/* D02A0 8016F860 00290821 */  addu       $at, $at, $t1
/* D02A4 8016F864 AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
/* D02A8 8016F868 8C4B0000 */  lw         $t3, 0x0($v0)
/* D02AC 8016F86C 3C01800E */  lui        $at, %hi(D_800E0490)
/* D02B0 8016F870 254A26E8 */  addiu      $t2, $t2, %lo(D_801926E8_ovl3)
/* D02B4 8016F874 000B6080 */  sll        $t4, $t3, 2
/* D02B8 8016F878 002C0821 */  addu       $at, $at, $t4
/* D02BC 8016F87C 2631E7C0 */  addiu      $s1, $s1, %lo(gKirbyState)
/* D02C0 8016F880 AC2A0490 */  sw         $t2, %lo(D_800E0490)($at)
/* D02C4 8016F884 3C040002 */  lui        $a0, (0x20021 >> 16)
/* D02C8 8016F888 3C050002 */  lui        $a1, (0x20022 >> 16)
/* D02CC 8016F88C AE200044 */  sw         $zero, 0x44($s1)
/* D02D0 8016F890 34A50022 */  ori        $a1, $a1, (0x20022 & 0xFFFF)
/* D02D4 8016F894 34840021 */  ori        $a0, $a0, (0x20021 & 0xFFFF)
/* D02D8 8016F898 0C048C3A */  jal        func_801230E8
/* D02DC 8016F89C 00003025 */   or        $a2, $zero, $zero
.L8016F8A0_ovl5:
/* D02E0 8016F8A0 0C02BC8C */  jal        func_800AF230
/* D02E4 8016F8A4 00000000 */   nop
/* D02E8 8016F8A8 1440000A */  bnez       $v0, .L8016F8D4_ovl3
/* D02EC 8016F8AC 24100002 */   addiu     $s0, $zero, 0x2
/* D02F0 8016F8B0 8E2D0044 */  lw         $t5, 0x44($s1)
.L8016F8B4_ovl3:
/* D02F4 8016F8B4 120D0018 */  beq        $s0, $t5, .L8016F918_ovl3
/* D02F8 8016F8B8 00000000 */   nop
/* D02FC 8016F8BC 0C002DAF */  jal        finish_current_thread
/* D0300 8016F8C0 24040001 */   addiu     $a0, $zero, 0x1
/* D0304 8016F8C4 0C02BC8C */  jal        func_800AF230
/* D0308 8016F8C8 00000000 */   nop
/* D030C 8016F8CC 5040FFF9 */  beql       $v0, $zero, .L8016F8B4_ovl3
/* D0310 8016F8D0 8E2D0044 */   lw        $t5, 0x44($s1)
.L8016F8D4_ovl3:
/* D0314 8016F8D4 240E0001 */  addiu      $t6, $zero, 0x1
/* D0318 8016F8D8 3C040002 */  lui        $a0, (0x20023 >> 16)
/* D031C 8016F8DC 3C050002 */  lui        $a1, (0x20024 >> 16)
/* D0320 8016F8E0 24100002 */  addiu      $s0, $zero, 0x2
/* D0324 8016F8E4 AE2E0044 */  sw         $t6, 0x44($s1)
/* D0328 8016F8E8 34A50024 */  ori        $a1, $a1, (0x20024 & 0xFFFF)
/* D032C 8016F8EC 34840023 */  ori        $a0, $a0, (0x20023 & 0xFFFF)
/* D0330 8016F8F0 0C048C3A */  jal        func_801230E8
/* D0334 8016F8F4 00003025 */   or        $a2, $zero, $zero
/* D0338 8016F8F8 8E2F0044 */  lw         $t7, 0x44($s1)
/* D033C 8016F8FC 120F0006 */  beq        $s0, $t7, .L8016F918_ovl3
/* D0340 8016F900 00000000 */   nop
.L8016F904_ovl3:
/* D0344 8016F904 0C002DAF */  jal        finish_current_thread
/* D0348 8016F908 24040001 */   addiu     $a0, $zero, 0x1
/* D034C 8016F90C 8E380044 */  lw         $t8, 0x44($s1)
/* D0350 8016F910 1618FFFC */  bne        $s0, $t8, .L8016F904_ovl3
/* D0354 8016F914 00000000 */   nop
.L8016F918_ovl3:
/* D0358 8016F918 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* D035C 8016F91C 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
.L8016F920_ovl5:
/* D0360 8016F920 3C0B800F */  lui        $t3, %hi(D_800E8920)
/* D0364 8016F924 8D190000 */  lw         $t9, 0x0($t0)
/* D0368 8016F928 00194880 */  sll        $t1, $t9, 2
/* D036C 8016F92C 01695821 */  addu       $t3, $t3, $t1
/* D0370 8016F930 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
/* D0374 8016F934 1160000E */  beqz       $t3, .L8016F970_ovl3
/* D0378 8016F938 00000000 */   nop
/* D037C 8016F93C 0C05A4F1 */  jal        func_801693C4
/* D0380 8016F940 24040001 */   addiu     $a0, $zero, 0x1
/* D0384 8016F944 2401FFFF */  addiu      $at, $zero, -0x1
/* D0388 8016F948 10410009 */  beq        $v0, $at, .L8016F970_ovl3
/* D038C 8016F94C 00021880 */   sll       $v1, $v0, 2
/* D0390 8016F950 44802000 */  mtc1       $zero, $f4
/* D0394 8016F954 3C01800F */  lui        $at, %hi(D_800EC660)
/* D0398 8016F958 00230821 */  addu       $at, $at, $v1
/* D039C 8016F95C E424C660 */  swc1       $f4, %lo(D_800EC660)($at)
/* D03A0 8016F960 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* D03A4 8016F964 00230821 */  addu       $at, $at, $v1
/* D03A8 8016F968 240A0001 */  addiu      $t2, $zero, 0x1
/* D03AC 8016F96C AC2AC2E0 */  sw         $t2, %lo(D_800EC2E0)($at)
.L8016F970_ovl3:
/* D03B0 8016F970 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* D03B4 8016F974 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* D03B8 8016F978 44800000 */  mtc1       $zero, $f0
/* D03BC 8016F97C 3C06800E */  lui        $a2, %hi(D_800E6690)
/* D03C0 8016F980 8C4C0000 */  lw         $t4, 0x0($v0)
/* D03C4 8016F984 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* D03C8 8016F988 3C018019 */  lui        $at, %hi(D_80197390_ovl3)
/* D03CC 8016F98C 000C6880 */  sll        $t5, $t4, 2
/* D03D0 8016F990 C4227390 */  lwc1       $f2, %lo(D_80197390_ovl3)($at)
/* D03D4 8016F994 00CD7021 */  addu       $t6, $a2, $t5
/* D03D8 8016F998 E5C00000 */  swc1       $f0, 0x0($t6)
.L8016F99C_ovl5:
/* D03DC 8016F99C 8C430000 */  lw         $v1, 0x0($v0)
/* D03E0 8016F9A0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D03E4 8016F9A4 3C10800E */  lui        $s0, %hi(D_800E3750)
/* D03E8 8016F9A8 00031880 */  sll        $v1, $v1, 2
/* D03EC 8016F9AC 00C37821 */  addu       $t7, $a2, $v1
/* D03F0 8016F9B0 C5E60000 */  lwc1       $f6, 0x0($t7)
/* D03F4 8016F9B4 00230821 */  addu       $at, $at, $v1
/* D03F8 8016F9B8 26103750 */  addiu      $s0, $s0, %lo(D_800E3750)
/* D03FC 8016F9BC E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* D0400 8016F9C0 8C580000 */  lw         $t8, 0x0($v0)
/* D0404 8016F9C4 3C01800E */  lui        $at, %hi(D_800E6850)
/* D0408 8016F9C8 2404000B */  addiu      $a0, $zero, 0xB
/* D040C 8016F9CC 00184080 */  sll        $t0, $t8, 2
/* D0410 8016F9D0 00280821 */  addu       $at, $at, $t0
/* D0414 8016F9D4 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
/* D0418 8016F9D8 8C590000 */  lw         $t9, 0x0($v0)
/* D041C 8016F9DC 3C01800E */  lui        $at, %hi(D_800E3210)
/* D0420 8016F9E0 2405000A */  addiu      $a1, $zero, 0xA
/* D0424 8016F9E4 00194880 */  sll        $t1, $t9, 2
/* D0428 8016F9E8 02095821 */  addu       $t3, $s0, $t1
/* D042C 8016F9EC E5600000 */  swc1       $f0, 0x0($t3)
/* D0430 8016F9F0 8C430000 */  lw         $v1, 0x0($v0)
/* D0434 8016F9F4 00031880 */  sll        $v1, $v1, 2
/* D0438 8016F9F8 02035021 */  addu       $t2, $s0, $v1
/* D043C 8016F9FC C5480000 */  lwc1       $f8, 0x0($t2)
/* D0440 8016FA00 00230821 */  addu       $at, $at, $v1
/* D0444 8016FA04 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* D0448 8016FA08 8C4C0000 */  lw         $t4, 0x0($v0)
/* D044C 8016FA0C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D0450 8016FA10 000C6880 */  sll        $t5, $t4, 2
/* D0454 8016FA14 002D0821 */  addu       $at, $at, $t5
/* D0458 8016FA18 0C02ED1A */  jal        func_800BB468
/* D045C 8016FA1C E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* D0460 8016FA20 0C029D9E */  jal        play_sound
/* D0464 8016FA24 24040110 */   addiu     $a0, $zero, 0x110
/* D0468 8016FA28 3C040002 */  lui        $a0, (0x20025 >> 16)
/* D046C 8016FA2C 3C050002 */  lui        $a1, (0x20026 >> 16)
/* D0470 8016FA30 34A50026 */  ori        $a1, $a1, (0x20026 & 0xFFFF)
/* D0474 8016FA34 34840025 */  ori        $a0, $a0, (0x20025 & 0xFFFF)
/* D0478 8016FA38 0C048C3A */  jal        func_801230E8
/* D047C 8016FA3C 00003025 */   or        $a2, $zero, $zero
/* D0480 8016FA40 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* D0484 8016FA44 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* D0488 8016FA48 3C08800F */  lui        $t0, %hi(D_800E8AE0)
/* D048C 8016FA4C 8DCF0000 */  lw         $t7, 0x0($t6)
/* D0490 8016FA50 000FC080 */  sll        $t8, $t7, 2
/* D0494 8016FA54 01184021 */  addu       $t0, $t0, $t8
/* D0498 8016FA58 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
/* D049C 8016FA5C 31190006 */  andi       $t9, $t0, 0x6
/* D04A0 8016FA60 1720001A */  bnez       $t9, .L8016FACC_ovl3
/* D04A4 8016FA64 00000000 */   nop
/* D04A8 8016FA68 0C002DAF */  jal        finish_current_thread
/* D04AC 8016FA6C 24040004 */   addiu     $a0, $zero, 0x4
/* D04B0 8016FA70 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* D04B4 8016FA74 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* D04B8 8016FA78 3C014100 */  lui        $at, (0x41000000 >> 16)
/* D04BC 8016FA7C 44815000 */  mtc1       $at, $f10
/* D04C0 8016FA80 8C490000 */  lw         $t1, 0x0($v0)
/* D04C4 8016FA84 3C01800E */  lui        $at, %hi(D_800E3210)
/* D04C8 8016FA88 00095880 */  sll        $t3, $t1, 2
glabel func_8016FA8C_ovl5
/* D04CC 8016FA8C 002B0821 */  addu       $at, $at, $t3
/* D04D0 8016FA90 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* D04D4 8016FA94 8C4A0000 */  lw         $t2, 0x0($v0)
/* D04D8 8016FA98 3C018019 */  lui        $at, %hi(D_80197394_ovl3)
/* D04DC 8016FA9C C4307394 */  lwc1       $f16, %lo(D_80197394_ovl3)($at)
/* D04E0 8016FAA0 000A6080 */  sll        $t4, $t2, 2
/* D04E4 8016FAA4 020C6821 */  addu       $t5, $s0, $t4
/* D04E8 8016FAA8 E5B00000 */  swc1       $f16, 0x0($t5)
/* D04EC 8016FAAC 8C4E0000 */  lw         $t6, 0x0($v0)
