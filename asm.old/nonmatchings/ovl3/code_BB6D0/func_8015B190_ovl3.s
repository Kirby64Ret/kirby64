glabel func_8015B190_ovl3
/* BBBD0 8015B190 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BBBD4 8015B194 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BBBD8 8015B198 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BBBDC 8015B19C AFBF0014 */  sw         $ra, 0x14($sp)
/* BBBE0 8015B1A0 AFA40030 */  sw         $a0, 0x30($sp)
/* BBBE4 8015B1A4 8C6F0000 */  lw         $t7, 0x0($v1)
/* BBBE8 8015B1A8 3C018019 */  lui        $at, %hi(D_80197054_ovl3)
/* BBBEC 8015B1AC C4207054 */  lwc1       $f0, %lo(D_80197054_ovl3)($at)
/* BBBF0 8015B1B0 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BBBF4 8015B1B4 3C0E800B */  lui        $t6, %hi(func_800B5064)
/* BBBF8 8015B1B8 000FC080 */  sll        $t8, $t7, 2
/* BBBFC 8015B1BC 00380821 */  addu       $at, $at, $t8
/* BBC00 8015B1C0 25CE5064 */  addiu      $t6, $t6, %lo(func_800B5064)
/* BBC04 8015B1C4 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* BBC08 8015B1C8 8C6A0000 */  lw         $t2, 0x0($v1)
/* BBC0C 8015B1CC 3C01800E */  lui        $at, %hi(D_800DF150)
/* BBC10 8015B1D0 3C198016 */  lui        $t9, %hi(func_8015B75C_ovl3)
/* BBC14 8015B1D4 000A5880 */  sll        $t3, $t2, 2
/* BBC18 8015B1D8 002B0821 */  addu       $at, $at, $t3
/* BBC1C 8015B1DC 2739B75C */  addiu      $t9, $t9, %lo(func_8015B75C_ovl3)
/* BBC20 8015B1E0 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* BBC24 8015B1E4 8C6D0000 */  lw         $t5, 0x0($v1)
/* BBC28 8015B1E8 3C01800E */  lui        $at, %hi(D_800E0F10)
/* BBC2C 8015B1EC 240C000E */  addiu      $t4, $zero, 0xE
/* BBC30 8015B1F0 000D7880 */  sll        $t7, $t5, 2
/* BBC34 8015B1F4 002F0821 */  addu       $at, $at, $t7
/* BBC38 8015B1F8 AC2C0F10 */  sw         $t4, %lo(D_800E0F10)($at)
/* BBC3C 8015B1FC 8C6E0000 */  lw         $t6, 0x0($v1)
/* BBC40 8015B200 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* BBC44 8015B204 3C040002 */  lui        $a0, (0x2002D >> 16)
/* BBC48 8015B208 000EC080 */  sll        $t8, $t6, 2
/* BBC4C 8015B20C 00380821 */  addu       $at, $at, $t8
/* BBC50 8015B210 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* BBC54 8015B214 8C6A0000 */  lw         $t2, 0x0($v1)
/* BBC58 8015B218 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BBC5C 8015B21C 3484002D */  ori        $a0, $a0, (0x2002D & 0xFFFF)
/* BBC60 8015B220 000AC880 */  sll        $t9, $t2, 2
/* BBC64 8015B224 00390821 */  addu       $at, $at, $t9
/* BBC68 8015B228 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* BBC6C 8015B22C 8C6B0000 */  lw         $t3, 0x0($v1)
/* BBC70 8015B230 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* BBC74 8015B234 24050021 */  addiu      $a1, $zero, 0x21
/* BBC78 8015B238 000B6880 */  sll        $t5, $t3, 2
/* BBC7C 8015B23C 002D0821 */  addu       $at, $at, $t5
/* BBC80 8015B240 24060010 */  addiu      $a2, $zero, 0x10
/* BBC84 8015B244 0C02A619 */  jal        func_800A9864
/* BBC88 8015B248 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* BBC8C 8015B24C 3C040002 */  lui        $a0, (0x2027D >> 16)
/* BBC90 8015B250 0C02A806 */  jal        func_800AA018
/* BBC94 8015B254 3484027D */   ori       $a0, $a0, (0x2027D & 0xFFFF)
/* BBC98 8015B258 24040001 */  addiu      $a0, $zero, 0x1
/* BBC9C 8015B25C 24050001 */  addiu      $a1, $zero, 0x1
/* BBCA0 8015B260 0C02A08D */  jal        func_800A8234
/* BBCA4 8015B264 2406000C */   addiu     $a2, $zero, 0xC
/* BBCA8 8015B268 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BBCAC 8015B26C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BBCB0 8015B270 3C01800F */  lui        $at, %hi(D_800EA520)
/* BBCB4 8015B274 3C0A8013 */  lui        $t2, %hi(D_8012E7E8 + 0x14)
/* BBCB8 8015B278 8C6C0000 */  lw         $t4, 0x0($v1)
/* BBCBC 8015B27C 8D4AE7FC */  lw         $t2, %lo(D_8012E7E8 + 0x14)($t2)
/* BBCC0 8015B280 000C7880 */  sll        $t7, $t4, 2
/* BBCC4 8015B284 002F0821 */  addu       $at, $at, $t7
/* BBCC8 8015B288 AC22A520 */  sw         $v0, %lo(D_800EA520)($at)
/* BBCCC 8015B28C 8C6E0000 */  lw         $t6, 0x0($v1)
/* BBCD0 8015B290 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* BBCD4 8015B294 000EC080 */  sll        $t8, $t6, 2
/* BBCD8 8015B298 00380821 */  addu       $at, $at, $t8
/* BBCDC 8015B29C 15400009 */  bnez       $t2, .L8015B2C4_ovl3
/* BBCE0 8015B2A0 AC209AA0 */   sw        $zero, %lo(D_800E9AA0)($at)
.L8015B2A4_ovl3:
/* BBCE4 8015B2A4 0C002DAF */  jal        finish_current_thread
/* BBCE8 8015B2A8 24040001 */   addiu     $a0, $zero, 0x1
/* BBCEC 8015B2AC 3C198013 */  lui        $t9, %hi(D_8012E7E8 + 0x14)
/* BBCF0 8015B2B0 8F39E7FC */  lw         $t9, %lo(D_8012E7E8 + 0x14)($t9)
/* BBCF4 8015B2B4 1320FFFB */  beqz       $t9, .L8015B2A4_ovl3
/* BBCF8 8015B2B8 00000000 */   nop
/* BBCFC 8015B2BC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BBD00 8015B2C0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L8015B2C4_ovl3:
/* BBD04 8015B2C4 8C6D0000 */  lw         $t5, 0x0($v1)
/* BBD08 8015B2C8 3C0B800B */  lui        $t3, %hi(func_800B4954)
/* BBD0C 8015B2CC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BBD10 8015B2D0 000D6080 */  sll        $t4, $t5, 2
/* BBD14 8015B2D4 002C0821 */  addu       $at, $at, $t4
/* BBD18 8015B2D8 256B4954 */  addiu      $t3, $t3, %lo(func_800B4954)
/* BBD1C 8015B2DC AC2BEF90 */  sw         $t3, %lo(D_800DEF90)($at)
/* BBD20 8015B2E0 8C6F0000 */  lw         $t7, 0x0($v1)
/* BBD24 8015B2E4 3C01800F */  lui        $at, %hi(D_800E83E0)
/* BBD28 8015B2E8 24050001 */  addiu      $a1, $zero, 0x1
/* BBD2C 8015B2EC 000F7080 */  sll        $t6, $t7, 2
/* BBD30 8015B2F0 002E0821 */  addu       $at, $at, $t6
/* BBD34 8015B2F4 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
/* BBD38 8015B2F8 8C780000 */  lw         $t8, 0x0($v1)
/* BBD3C 8015B2FC 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* BBD40 8015B300 3C19800E */  lui        $t9, %hi(D_800E0D50)
/* BBD44 8015B304 00185080 */  sll        $t2, $t8, 2
/* BBD48 8015B308 002A0821 */  addu       $at, $at, $t2
/* BBD4C 8015B30C AC259AA0 */  sw         $a1, %lo(D_800E9AA0)($at)
/* BBD50 8015B310 8C620000 */  lw         $v0, 0x0($v1)
/* BBD54 8015B314 3C04800F */  lui        $a0, %hi(D_800E9720)
/* BBD58 8015B318 00021080 */  sll        $v0, $v0, 2
/* BBD5C 8015B31C 0322C821 */  addu       $t9, $t9, $v0
/* BBD60 8015B320 8F390D50 */  lw         $t9, %lo(D_800E0D50)($t9)
/* BBD64 8015B324 00196880 */  sll        $t5, $t9, 2
/* BBD68 8015B328 008D2021 */  addu       $a0, $a0, $t5
/* BBD6C 8015B32C 8C849720 */  lw         $a0, %lo(D_800E9720)($a0)
/* BBD70 8015B330 28810005 */  slti       $at, $a0, 0x5
/* BBD74 8015B334 10200004 */  beqz       $at, .L8015B348_ovl3
/* BBD78 8015B338 3C01800F */   lui       $at, %hi(D_800E98E0)
/* BBD7C 8015B33C 00220821 */  addu       $at, $at, $v0
/* BBD80 8015B340 1000000B */  b          .L8015B370_ovl3
/* BBD84 8015B344 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L8015B348_ovl3:
/* BBD88 8015B348 2881000A */  slti       $at, $a0, 0xA
glabel D_8015B34C_ovl4
/* BBD8C 8015B34C 10200005 */  beqz       $at, .L8015B364_ovl3
/* BBD90 8015B350 240B0002 */   addiu     $t3, $zero, 0x2
/* BBD94 8015B354 3C01800F */  lui        $at, %hi(D_800E98E0)
/* BBD98 8015B358 00220821 */  addu       $at, $at, $v0
/* BBD9C 8015B35C 10000004 */  b          .L8015B370_ovl3
/* BBDA0 8015B360 AC2598E0 */   sw        $a1, %lo(D_800E98E0)($at)
.L8015B364_ovl3:
/* BBDA4 8015B364 3C01800F */  lui        $at, %hi(D_800E98E0)
/* BBDA8 8015B368 00220821 */  addu       $at, $at, $v0
/* BBDAC 8015B36C AC2B98E0 */  sw         $t3, %lo(D_800E98E0)($at)
.L8015B370_ovl3:
/* BBDB0 8015B370 0C058738 */  jal        func_80161CE0_ovl3
/* BBDB4 8015B374 8FA40030 */   lw        $a0, 0x30($sp)
/* BBDB8 8015B378 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* BBDBC 8015B37C 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* BBDC0 8015B380 3C18800F */  lui        $t8, %hi(D_800E98E0)
/* BBDC4 8015B384 3C198019 */  lui        $t9, %hi(D_80196720_ovl3)
/* BBDC8 8015B388 8D8F0000 */  lw         $t7, 0x0($t4)
/* BBDCC 8015B38C 27396720 */  addiu      $t9, $t9, %lo(D_80196720_ovl3)
/* BBDD0 8015B390 00002025 */  or         $a0, $zero, $zero
/* BBDD4 8015B394 000F7080 */  sll        $t6, $t7, 2
/* BBDD8 8015B398 030EC021 */  addu       $t8, $t8, $t6
/* BBDDC 8015B39C 8F1898E0 */  lw         $t8, %lo(D_800E98E0)($t8)
/* BBDE0 8015B3A0 00185100 */  sll        $t2, $t8, 4
/* BBDE4 8015B3A4 01591021 */  addu       $v0, $t2, $t9
/* BBDE8 8015B3A8 8C450000 */  lw         $a1, 0x0($v0)
/* BBDEC 8015B3AC 0C0587B0 */  jal        func_80161EC0_ovl3
/* BBDF0 8015B3B0 8C460004 */   lw        $a2, 0x4($v0)
/* BBDF4 8015B3B4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BBDF8 8015B3B8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BBDFC 8015B3BC 3C0D8019 */  lui        $t5, %hi(D_80192B78_ovl3)
/* BBE00 8015B3C0 3C01800E */  lui        $at, %hi(D_800E0490)
/* BBE04 8015B3C4 8C6B0000 */  lw         $t3, 0x0($v1)
/* BBE08 8015B3C8 25AD2B78 */  addiu      $t5, $t5, %lo(D_80192B78_ovl3)
/* BBE0C 8015B3CC 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* BBE10 8015B3D0 000B6080 */  sll        $t4, $t3, 2
/* BBE14 8015B3D4 002C0821 */  addu       $at, $at, $t4
/* BBE18 8015B3D8 AC2D0490 */  sw         $t5, %lo(D_800E0490)($at)
glabel D_8015B3DC_ovl4
/* BBE1C 8015B3DC 8C670000 */  lw         $a3, 0x0($v1)
/* BBE20 8015B3E0 3C188019 */  lui        $t8, %hi(D_80197F60_ovl3)
/* BBE24 8015B3E4 3C19801A */  lui        $t9, %hi(D_801982F8_ovl3)
/* BBE28 8015B3E8 24E8FFFC */  addiu      $t0, $a3, -0x4
/* BBE2C 8015B3EC 00087080 */  sll        $t6, $t0, 2
/* BBE30 8015B3F0 01C87023 */  subu       $t6, $t6, $t0
/* BBE34 8015B3F4 000E70C0 */  sll        $t6, $t6, 3
/* BBE38 8015B3F8 01C87023 */  subu       $t6, $t6, $t0
/* BBE3C 8015B3FC 00077880 */  sll        $t7, $a3, 2
/* BBE40 8015B400 008F2021 */  addu       $a0, $a0, $t7
/* BBE44 8015B404 000E7080 */  sll        $t6, $t6, 2
/* BBE48 8015B408 00085140 */  sll        $t2, $t0, 5
/* BBE4C 8015B40C 273982F8 */  addiu      $t9, $t9, %lo(D_801982F8_ovl3)
/* BBE50 8015B410 27187F60 */  addiu      $t8, $t8, %lo(D_80197F60_ovl3)
/* BBE54 8015B414 01D82821 */  addu       $a1, $t6, $t8
/* BBE58 8015B418 01593021 */  addu       $a2, $t2, $t9
/* BBE5C 8015B41C 0C055192 */  jal        func_80154648_ovl3
/* BBE60 8015B420 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
/* BBE64 8015B424 0C02BCC5 */  jal        func_800AF314
/* BBE68 8015B428 00000000 */   nop
/* BBE6C 8015B42C 3C040002 */  lui        $a0, (0x2002D >> 16)
/* BBE70 8015B430 0C02A5D8 */  jal        func_800A9760
/* BBE74 8015B434 3484002D */   ori       $a0, $a0, (0x2002D & 0xFFFF)
/* BBE78 8015B438 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* BBE7C 8015B43C 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* BBE80 8015B440 3C0E8019 */  lui        $t6, %hi(D_80197F60_ovl3)
/* BBE84 8015B444 25CE7F60 */  addiu      $t6, $t6, %lo(D_80197F60_ovl3)
/* BBE88 8015B448 8D6D0000 */  lw         $t5, 0x0($t3)
/* BBE8C 8015B44C 000D6080 */  sll        $t4, $t5, 2
/* BBE90 8015B450 018D6023 */  subu       $t4, $t4, $t5
/* BBE94 8015B454 000C60C0 */  sll        $t4, $t4, 3
/* BBE98 8015B458 018D6023 */  subu       $t4, $t4, $t5
/* BBE9C 8015B45C 000C6080 */  sll        $t4, $t4, 2
/* BBEA0 8015B460 258FFE90 */  addiu      $t7, $t4, -0x170
/* BBEA4 8015B464 0C055509 */  jal        func_80155424_ovl3
/* BBEA8 8015B468 01EE2021 */   addu      $a0, $t7, $t6
glabel D_8015B46C_ovl4
/* BBEAC 8015B46C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* BBEB0 8015B470 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* BBEB4 8015B474 3C01800F */  lui        $at, %hi(D_800EA360)
/* BBEB8 8015B478 27A50028 */  addiu      $a1, $sp, 0x28
/* BBEBC 8015B47C 8F0A0000 */  lw         $t2, 0x0($t8)
/* BBEC0 8015B480 2404001E */  addiu      $a0, $zero, 0x1E
/* BBEC4 8015B484 27A6002C */  addiu      $a2, $sp, 0x2C
/* BBEC8 8015B488 000AC880 */  sll        $t9, $t2, 2
/* BBECC 8015B48C 00390821 */  addu       $at, $at, $t9
/* BBED0 8015B490 0C029DFA */  jal        func_800A77E8
/* BBED4 8015B494 AC25A360 */   sw        $a1, %lo(D_800EA360)($at)
/* BBED8 8015B498 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BBEDC 8015B49C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BBEE0 8015B4A0 3C04800F */  lui        $a0, %hi(D_800E8AE0)
/* BBEE4 8015B4A4 24848AE0 */  addiu      $a0, $a0, %lo(D_800E8AE0)
/* BBEE8 8015B4A8 8C620000 */  lw         $v0, 0x0($v1)
/* BBEEC 8015B4AC 3C01800F */  lui        $at, %hi(D_800E9720)
/* BBEF0 8015B4B0 3C09800D */  lui        $t1, %hi(D_800D71E8 + 0x5C)
/* BBEF4 8015B4B4 00021080 */  sll        $v0, $v0, 2
/* BBEF8 8015B4B8 00825821 */  addu       $t3, $a0, $v0
/* BBEFC 8015B4BC 8D6D0000 */  lw         $t5, 0x0($t3)
/* BBF00 8015B4C0 240F003C */  addiu      $t7, $zero, 0x3C
/* BBF04 8015B4C4 00220821 */  addu       $at, $at, $v0
/* BBF08 8015B4C8 31AC0004 */  andi       $t4, $t5, 0x4
/* BBF0C 8015B4CC 11800009 */  beqz       $t4, .L8015B4F4_ovl3
/* BBF10 8015B4D0 240E001E */   addiu     $t6, $zero, 0x1E
/* BBF14 8015B4D4 3C01800F */  lui        $at, %hi(D_800E9720)
/* BBF18 8015B4D8 00220821 */  addu       $at, $at, $v0
/* BBF1C 8015B4DC AC2F9720 */  sw         $t7, %lo(D_800E9720)($at)
/* BBF20 8015B4E0 3C018019 */  lui        $at, %hi(D_80197058_ovl3)
/* BBF24 8015B4E4 C4247058 */  lwc1       $f4, %lo(D_80197058_ovl3)($at)
/* BBF28 8015B4E8 25297244 */  addiu      $t1, $t1, %lo(D_800D71E8 + 0x5C)
/* BBF2C 8015B4EC 10000007 */  b          .L8015B50C_ovl3
/* BBF30 8015B4F0 E5240000 */   swc1      $f4, 0x0($t1)
.L8015B4F4_ovl3:
/* BBF34 8015B4F4 AC2E9720 */  sw         $t6, %lo(D_800E9720)($at)
/* BBF38 8015B4F8 3C018019 */  lui        $at, %hi(D_8019705C_ovl3)
glabel D_8015B4FC_ovl4
/* BBF3C 8015B4FC C426705C */  lwc1       $f6, %lo(D_8019705C_ovl3)($at)
/* BBF40 8015B500 3C09800D */  lui        $t1, %hi(D_800D71E8 + 0x5C)
/* BBF44 8015B504 25297244 */  addiu      $t1, $t1, %lo(D_800D71E8 + 0x5C)
/* BBF48 8015B508 E5260000 */  swc1       $f6, 0x0($t1)
.L8015B50C_ovl3:
/* BBF4C 8015B50C 8C620000 */  lw         $v0, 0x0($v1)
/* BBF50 8015B510 3C06800F */  lui        $a2, %hi(D_800E98E0)
/* BBF54 8015B514 24C698E0 */  addiu      $a2, $a2, %lo(D_800E98E0)
/* BBF58 8015B518 00021080 */  sll        $v0, $v0, 2
glabel D_8015B51C_ovl4
/* BBF5C 8015B51C 0082C021 */  addu       $t8, $a0, $v0
/* BBF60 8015B520 8F0A0000 */  lw         $t2, 0x0($t8)
/* BBF64 8015B524 00C25821 */  addu       $t3, $a2, $v0
/* BBF68 8015B528 3C058019 */  lui        $a1, %hi(D_80196720_ovl3)
/* BBF6C 8015B52C 31590004 */  andi       $t9, $t2, 0x4
/* BBF70 8015B530 1720000A */  bnez       $t9, .L8015B55C_ovl3
/* BBF74 8015B534 00000000 */   nop
/* BBF78 8015B538 8D6D0000 */  lw         $t5, 0x0($t3)
/* BBF7C 8015B53C 24A56720 */  addiu      $a1, $a1, %lo(D_80196720_ovl3)
/* BBF80 8015B540 3C07800D */  lui        $a3, %hi(D_800D71E8 + 0x50)
/* BBF84 8015B544 000D6100 */  sll        $t4, $t5, 4
/* BBF88 8015B548 00AC7821 */  addu       $t7, $a1, $t4
glabel D_8015B54C_ovl4
/* BBF8C 8015B54C C5E80008 */  lwc1       $f8, 0x8($t7)
/* BBF90 8015B550 24E77238 */  addiu      $a3, $a3, %lo(D_800D71E8 + 0x50)
/* BBF94 8015B554 10000012 */  b          .L8015B5A0_ovl3
/* BBF98 8015B558 E4E80000 */   swc1      $f8, 0x0($a3)
.L8015B55C_ovl3:
/* BBF9C 8015B55C 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* BBFA0 8015B560 01C27021 */  addu       $t6, $t6, $v0
/* BBFA4 8015B564 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* BBFA8 8015B568 3C018019 */  lui        $at, %hi(D_80196728_ovl3)
glabel D_8015B56C_ovl4
/* BBFAC 8015B56C 3C07800D */  lui        $a3, %hi(D_800D71E8 + 0x50)
/* BBFB0 8015B570 000EC100 */  sll        $t8, $t6, 4
/* BBFB4 8015B574 00380821 */  addu       $at, $at, $t8
/* BBFB8 8015B578 C42A6728 */  lwc1       $f10, %lo(D_80196728_ovl3)($at)
/* BBFBC 8015B57C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* BBFC0 8015B580 44818000 */  mtc1       $at, $f16
/* BBFC4 8015B584 24E77238 */  addiu      $a3, $a3, %lo(D_800D71E8 + 0x50)
/* BBFC8 8015B588 3C06800F */  lui        $a2, %hi(D_800E98E0)
/* BBFCC 8015B58C 46105482 */  mul.s      $f18, $f10, $f16
/* BBFD0 8015B590 3C058019 */  lui        $a1, %hi(D_80196720_ovl3)
/* BBFD4 8015B594 24A56720 */  addiu      $a1, $a1, %lo(D_80196720_ovl3)
/* BBFD8 8015B598 24C698E0 */  addiu      $a2, $a2, %lo(D_800E98E0)
/* BBFDC 8015B59C E4F20000 */  swc1       $f18, 0x0($a3)
.L8015B5A0_ovl3:
/* BBFE0 8015B5A0 8C620000 */  lw         $v0, 0x0($v1)
/* BBFE4 8015B5A4 00021080 */  sll        $v0, $v0, 2
/* BBFE8 8015B5A8 00825021 */  addu       $t2, $a0, $v0
/* BBFEC 8015B5AC 8D590000 */  lw         $t9, 0x0($t2)
/* BBFF0 8015B5B0 00C2C021 */  addu       $t8, $a2, $v0
/* BBFF4 8015B5B4 00C26821 */  addu       $t5, $a2, $v0
/* BBFF8 8015B5B8 332B0004 */  andi       $t3, $t9, 0x4
/* BBFFC 8015B5BC 5560000A */  bnel       $t3, $zero, .L8015B5E8_ovl3
/* BC000 8015B5C0 8F0A0000 */   lw        $t2, 0x0($t8)
glabel D_8015B5C4_ovl4
/* BC004 8015B5C4 8DAC0000 */  lw         $t4, 0x0($t5)
/* BC008 8015B5C8 3C08800D */  lui        $t0, %hi(D_800D71E8 + 0x54)
/* BC00C 8015B5CC 2508723C */  addiu      $t0, $t0, %lo(D_800D71E8 + 0x54)
/* BC010 8015B5D0 000C7900 */  sll        $t7, $t4, 4
/* BC014 8015B5D4 00AF7021 */  addu       $t6, $a1, $t7
/* BC018 8015B5D8 C5C4000C */  lwc1       $f4, 0xC($t6)
/* BC01C 8015B5DC 1000000B */  b          .L8015B60C_ovl3
/* BC020 8015B5E0 E5040000 */   swc1      $f4, 0x0($t0)
/* BC024 8015B5E4 8F0A0000 */  lw         $t2, 0x0($t8)
.L8015B5E8_ovl3:
/* BC028 8015B5E8 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* BC02C 8015B5EC 44814000 */  mtc1       $at, $f8
/* BC030 8015B5F0 000AC900 */  sll        $t9, $t2, 4
glabel D_8015B5F4_ovl4
/* BC034 8015B5F4 00B95821 */  addu       $t3, $a1, $t9
/* BC038 8015B5F8 C566000C */  lwc1       $f6, 0xC($t3)
/* BC03C 8015B5FC 3C08800D */  lui        $t0, %hi(D_800D71E8 + 0x54)
/* BC040 8015B600 2508723C */  addiu      $t0, $t0, %lo(D_800D71E8 + 0x54)
/* BC044 8015B604 46083282 */  mul.s      $f10, $f6, $f8
/* BC048 8015B608 E50A0000 */  swc1       $f10, 0x0($t0)
.L8015B60C_ovl3:
/* BC04C 8015B60C 8C6D0000 */  lw         $t5, 0x0($v1)
/* BC050 8015B610 3C014100 */  lui        $at, (0x41000000 >> 16)
glabel D_8015B614_ovl4
/* BC054 8015B614 000D6080 */  sll        $t4, $t5, 2
/* BC058 8015B618 008C7821 */  addu       $t7, $a0, $t4
/* BC05C 8015B61C 8DEE0000 */  lw         $t6, 0x0($t7)
/* BC060 8015B620 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x58)
/* BC064 8015B624 31D80004 */  andi       $t8, $t6, 0x4
/* BC068 8015B628 57000007 */  bnel       $t8, $zero, .L8015B648_ovl3
glabel D_8015B62C_ovl4
/* BC06C 8015B62C 44819000 */   mtc1      $at, $f18
/* BC070 8015B630 3C014180 */  lui        $at, (0x41800000 >> 16)
/* BC074 8015B634 44818000 */  mtc1       $at, $f16
/* BC078 8015B638 24847240 */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x58)
/* BC07C 8015B63C 10000005 */  b          .L8015B654_ovl3
/* BC080 8015B640 E4900000 */   swc1      $f16, 0x0($a0)
/* BC084 8015B644 44819000 */  mtc1       $at, $f18
.L8015B648_ovl3:
/* BC088 8015B648 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x58)
glabel D_8015B64C_ovl4
/* BC08C 8015B64C 24847240 */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x58)
/* BC090 8015B650 E4920000 */  swc1       $f18, 0x0($a0)
.L8015B654_ovl3:
/* BC094 8015B654 8C620000 */  lw         $v0, 0x0($v1)
/* BC098 8015B658 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BC09C 8015B65C C4E00000 */  lwc1       $f0, 0x0($a3)
/* BC0A0 8015B660 00021080 */  sll        $v0, $v0, 2
/* BC0A4 8015B664 00220821 */  addu       $at, $at, $v0
/* BC0A8 8015B668 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* BC0AC 8015B66C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BC0B0 8015B670 44801000 */  mtc1       $zero, $f2
/* BC0B4 8015B674 46002182 */  mul.s      $f6, $f4, $f0
/* BC0B8 8015B678 00220821 */  addu       $at, $at, $v0
/* BC0BC 8015B67C 4602003C */  c.lt.s     $f0, $f2
/* BC0C0 8015B680 44804000 */  mtc1       $zero, $f8
/* BC0C4 8015B684 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* BC0C8 8015B688 8C6A0000 */  lw         $t2, 0x0($v1)
/* BC0CC 8015B68C 3C01800E */  lui        $at, %hi(D_800E6690)
/* BC0D0 8015B690 000AC880 */  sll        $t9, $t2, 2
/* BC0D4 8015B694 00390821 */  addu       $at, $at, $t9
/* BC0D8 8015B698 45000008 */  bc1f       .L8015B6BC_ovl3
/* BC0DC 8015B69C E4286690 */   swc1      $f8, %lo(D_800E6690)($at)
/* BC0E0 8015B6A0 8C6B0000 */  lw         $t3, 0x0($v1)
/* BC0E4 8015B6A4 3C01800E */  lui        $at, %hi(D_800E6850)
/* BC0E8 8015B6A8 46000287 */  neg.s      $f10, $f0
/* BC0EC 8015B6AC 000B6880 */  sll        $t5, $t3, 2
/* BC0F0 8015B6B0 002D0821 */  addu       $at, $at, $t5
/* BC0F4 8015B6B4 10000006 */  b          .L8015B6D0_ovl3
/* BC0F8 8015B6B8 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L8015B6BC_ovl3:
/* BC0FC 8015B6BC 8C6C0000 */  lw         $t4, 0x0($v1)
/* BC100 8015B6C0 3C01800E */  lui        $at, %hi(D_800E6850)
glabel D_8015B6C4_ovl4
/* BC104 8015B6C4 000C7880 */  sll        $t7, $t4, 2
/* BC108 8015B6C8 002F0821 */  addu       $at, $at, $t7
/* BC10C 8015B6CC E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8015B6D0_ovl3:
/* BC110 8015B6D0 8C6E0000 */  lw         $t6, 0x0($v1)
/* BC114 8015B6D4 C5100000 */  lwc1       $f16, 0x0($t0)
/* BC118 8015B6D8 3C01800E */  lui        $at, %hi(D_800E3210)
glabel D_8015B6DC_ovl4
/* BC11C 8015B6DC 000EC080 */  sll        $t8, $t6, 2
/* BC120 8015B6E0 00380821 */  addu       $at, $at, $t8
/* BC124 8015B6E4 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* BC128 8015B6E8 8C6A0000 */  lw         $t2, 0x0($v1)
/* BC12C 8015B6EC C5320000 */  lwc1       $f18, 0x0($t1)
/* BC130 8015B6F0 3C01800E */  lui        $at, %hi(D_800E3750)
/* BC134 8015B6F4 000AC880 */  sll        $t9, $t2, 2
/* BC138 8015B6F8 00390821 */  addu       $at, $at, $t9
glabel D_8015B6FC_ovl4
/* BC13C 8015B6FC E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
/* BC140 8015B700 C4800000 */  lwc1       $f0, 0x0($a0)
/* BC144 8015B704 4602003C */  c.lt.s     $f0, $f2
/* BC148 8015B708 00000000 */  nop
/* BC14C 8015B70C 45020009 */  bc1fl      .L8015B734_ovl3
/* BC150 8015B710 8C6C0000 */   lw        $t4, 0x0($v1)
/* BC154 8015B714 8C6B0000 */  lw         $t3, 0x0($v1)
/* BC158 8015B718 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BC15C 8015B71C 46000107 */  neg.s      $f4, $f0
/* BC160 8015B720 000B6880 */  sll        $t5, $t3, 2
/* BC164 8015B724 002D0821 */  addu       $at, $at, $t5
/* BC168 8015B728 10000006 */  b          .L8015B744_ovl3
/* BC16C 8015B72C E4243C90 */   swc1      $f4, %lo(D_800E3C90)($at)
/* BC170 8015B730 8C6C0000 */  lw         $t4, 0x0($v1)
.L8015B734_ovl3:
/* BC174 8015B734 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BC178 8015B738 000C7880 */  sll        $t7, $t4, 2
/* BC17C 8015B73C 002F0821 */  addu       $at, $at, $t7
/* BC180 8015B740 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L8015B744_ovl3:
/* BC184 8015B744 0C02BE85 */  jal        func_800AFA14
/* BC188 8015B748 00000000 */   nop
/* BC18C 8015B74C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC190 8015B750 27BD0030 */  addiu      $sp, $sp, 0x30
/* BC194 8015B754 03E00008 */  jr         $ra
/* BC198 8015B758 00000000 */   nop
