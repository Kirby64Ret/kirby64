glabel func_801848A4_ovl3
/* E52E4 801848A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E52E8 801848A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* E52EC 801848AC 0C054E61 */  jal        func_80153984_ovl3
/* E52F0 801848B0 AFA40018 */   sw        $a0, 0x18($sp)
/* E52F4 801848B4 3C048013 */  lui        $a0, %hi(gKirbyState)
/* E52F8 801848B8 2484E7C0 */  addiu      $a0, $a0, %lo(gKirbyState)
/* E52FC 801848BC 8C8E0030 */  lw         $t6, 0x30($a0)
/* E5300 801848C0 3C03800D */  lui        $v1, %hi(gKirbyController)
/* E5304 801848C4 11C00018 */  beqz       $t6, .L80184928_ovl3
/* E5308 801848C8 00000000 */   nop
/* E530C 801848CC 0C0485EE */  jal        func_801217B8
/* E5310 801848D0 00000000 */   nop
/* E5314 801848D4 3C048013 */  lui        $a0, %hi(gKirbyState)
/* E5318 801848D8 2484E7C0 */  addiu      $a0, $a0, %lo(gKirbyState)
/* E531C 801848DC 8C8F0030 */  lw         $t7, 0x30($a0)
/* E5320 801848E0 24010002 */  addiu      $at, $zero, 0x2
/* E5324 801848E4 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* E5328 801848E8 11E10009 */  beq        $t7, $at, .L80184910_ovl3
/* E532C 801848EC 00000000 */   nop
/* E5330 801848F0 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* E5334 801848F4 3C09800F */  lui        $t1, %hi(D_800E8920)
/* E5338 801848F8 8F190000 */  lw         $t9, 0x0($t8)
/* E533C 801848FC 00194080 */  sll        $t0, $t9, 2
/* E5340 80184900 01284821 */  addu       $t1, $t1, $t0
/* E5344 80184904 8D298920 */  lw         $t1, %lo(D_800E8920)($t1)
/* E5348 80184908 51200083 */  beql       $t1, $zero, .L80184B18_ovl3
/* E534C 8018490C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80184910_ovl3:
/* E5350 80184910 0C04783A */  jal        func_8011E0E8
/* E5354 80184914 00000000 */   nop
/* E5358 80184918 0C04759F */  jal        func_8011D67C
/* E535C 8018491C 00000000 */   nop
/* E5360 80184920 1000007D */  b          .L80184B18_ovl3
/* E5364 80184924 8FBF0014 */   lw        $ra, 0x14($sp)
.L80184928_ovl3:
/* E5368 80184928 94636FE8 */  lhu        $v1, %lo(gKirbyController)($v1)
/* E536C 8018492C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* E5370 80184930 306A0300 */  andi       $t2, $v1, 0x300
/* E5374 80184934 11400024 */  beqz       $t2, .L801849C8_ovl3
/* E5378 80184938 306B0100 */   andi      $t3, $v1, 0x100
/* E537C 8018493C 11600012 */  beqz       $t3, .L80184988_ovl3
/* E5380 80184940 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* E5384 80184944 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* E5388 80184948 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* E538C 8018494C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* E5390 80184950 44812000 */  mtc1       $at, $f4
/* E5394 80184954 8C4C0000 */  lw         $t4, 0x0($v0)
/* E5398 80184958 3C01800E */  lui        $at, %hi(D_800E6690)
/* E539C 8018495C 000C6880 */  sll        $t5, $t4, 2
/* E53A0 80184960 002D0821 */  addu       $at, $at, $t5
.L80184964_ovl5:
/* E53A4 80184964 E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
/* E53A8 80184968 8C4E0000 */  lw         $t6, 0x0($v0)
/* E53AC 8018496C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* E53B0 80184970 44813000 */  mtc1       $at, $f6
.L80184974_ovl5:
/* E53B4 80184974 3C01800E */  lui        $at, %hi(D_800E6850)
/* E53B8 80184978 000E7880 */  sll        $t7, $t6, 2
/* E53BC 8018497C 002F0821 */  addu       $at, $at, $t7
/* E53C0 80184980 10000018 */  b          .L801849E4_ovl3
/* E53C4 80184984 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
.L80184988_ovl3:
/* E53C8 80184988 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* E53CC 8018498C 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* E53D0 80184990 44814000 */  mtc1       $at, $f8
/* E53D4 80184994 8C580000 */  lw         $t8, 0x0($v0)
/* E53D8 80184998 3C01800E */  lui        $at, %hi(D_800E6690)
/* E53DC 8018499C 0018C880 */  sll        $t9, $t8, 2
/* E53E0 801849A0 00390821 */  addu       $at, $at, $t9
/* E53E4 801849A4 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* E53E8 801849A8 8C480000 */  lw         $t0, 0x0($v0)
/* E53EC 801849AC 3C014000 */  lui        $at, (0x40000000 >> 16)
/* E53F0 801849B0 44815000 */  mtc1       $at, $f10
/* E53F4 801849B4 3C01800E */  lui        $at, %hi(D_800E6850)
/* E53F8 801849B8 00084880 */  sll        $t1, $t0, 2
/* E53FC 801849BC 00290821 */  addu       $at, $at, $t1
/* E5400 801849C0 10000008 */  b          .L801849E4_ovl3
/* E5404 801849C4 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L801849C8_ovl3:
/* E5408 801849C8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* E540C 801849CC 44808000 */  mtc1       $zero, $f16
/* E5410 801849D0 3C01800E */  lui        $at, %hi(D_800E6850)
/* E5414 801849D4 8C4A0000 */  lw         $t2, 0x0($v0)
/* E5418 801849D8 000A5880 */  sll        $t3, $t2, 2
/* E541C 801849DC 002B0821 */  addu       $at, $at, $t3
/* E5420 801849E0 E4306850 */  swc1       $f16, %lo(D_800E6850)($at)
.L801849E4_ovl3:
/* E5424 801849E4 306C0C00 */  andi       $t4, $v1, 0xC00
/* E5428 801849E8 11800025 */  beqz       $t4, .L80184A80_ovl3
/* E542C 801849EC 306D0800 */   andi      $t5, $v1, 0x800
/* E5430 801849F0 11A00015 */  beqz       $t5, .L80184A48_ovl3
/* E5434 801849F4 3C01BF00 */   lui       $at, (0xBF000000 >> 16)
/* E5438 801849F8 8C4E0000 */  lw         $t6, 0x0($v0)
/* E543C 801849FC 3C01800F */  lui        $at, %hi(D_800E8920)
/* E5440 80184A00 000E7880 */  sll        $t7, $t6, 2
/* E5444 80184A04 002F0821 */  addu       $at, $at, $t7
/* E5448 80184A08 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* E544C 80184A0C 8C580000 */  lw         $t8, 0x0($v0)
/* E5450 80184A10 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* E5454 80184A14 44819000 */  mtc1       $at, $f18
/* E5458 80184A18 3C01800E */  lui        $at, %hi(D_800E3750)
/* E545C 80184A1C 0018C880 */  sll        $t9, $t8, 2
/* E5460 80184A20 00390821 */  addu       $at, $at, $t9
/* E5464 80184A24 E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
/* E5468 80184A28 8C480000 */  lw         $t0, 0x0($v0)
/* E546C 80184A2C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E5470 80184A30 44812000 */  mtc1       $at, $f4
/* E5474 80184A34 3C01800E */  lui        $at, %hi(D_800E3C90)
/* E5478 80184A38 00084880 */  sll        $t1, $t0, 2
/* E547C 80184A3C 00290821 */  addu       $at, $at, $t1
/* E5480 80184A40 10000015 */  b          .L80184A98_ovl3
/* E5484 80184A44 E4243C90 */   swc1      $f4, %lo(D_800E3C90)($at)
.L80184A48_ovl3:
/* E5488 80184A48 8C4A0000 */  lw         $t2, 0x0($v0)
/* E548C 80184A4C 44813000 */  mtc1       $at, $f6
/* E5490 80184A50 3C01800E */  lui        $at, %hi(D_800E3750)
/* E5494 80184A54 000A5880 */  sll        $t3, $t2, 2
/* E5498 80184A58 002B0821 */  addu       $at, $at, $t3
/* E549C 80184A5C E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* E54A0 80184A60 8C4C0000 */  lw         $t4, 0x0($v0)
/* E54A4 80184A64 3C014000 */  lui        $at, (0x40000000 >> 16)
/* E54A8 80184A68 44814000 */  mtc1       $at, $f8
.L80184A6C_ovl5:
/* E54AC 80184A6C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* E54B0 80184A70 000C6880 */  sll        $t5, $t4, 2
/* E54B4 80184A74 002D0821 */  addu       $at, $at, $t5
/* E54B8 80184A78 10000007 */  b          .L80184A98_ovl3
/* E54BC 80184A7C E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
.L80184A80_ovl3:
/* E54C0 80184A80 8C4E0000 */  lw         $t6, 0x0($v0)
/* E54C4 80184A84 44805000 */  mtc1       $zero, $f10
/* E54C8 80184A88 3C01800E */  lui        $at, %hi(D_800E3C90)
/* E54CC 80184A8C 000E7880 */  sll        $t7, $t6, 2
/* E54D0 80184A90 002F0821 */  addu       $at, $at, $t7
/* E54D4 80184A94 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
.L80184A98_ovl3:
/* E54D8 80184A98 8C9800A0 */  lw         $t8, 0xA0($a0)
/* E54DC 80184A9C 13000018 */  beqz       $t8, .L80184B00_ovl3
/* E54E0 80184AA0 00000000 */   nop
/* E54E4 80184AA4 8C430000 */  lw         $v1, 0x0($v0)
/* E54E8 80184AA8 3C04800F */  lui        $a0, %hi(D_800E9720)
/* E54EC 80184AAC 24010003 */  addiu      $at, $zero, 0x3
/* E54F0 80184AB0 00031880 */  sll        $v1, $v1, 2
/* E54F4 80184AB4 00832021 */  addu       $a0, $a0, $v1
/* E54F8 80184AB8 8C849720 */  lw         $a0, %lo(D_800E9720)($a0)
/* E54FC 80184ABC 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* E5500 80184AC0 0323C821 */  addu       $t9, $t9, $v1
/* E5504 80184AC4 10810003 */  beq        $a0, $at, .L80184AD4_ovl3
/* E5508 80184AC8 24010001 */   addiu     $at, $zero, 0x1
/* E550C 80184ACC 14810006 */  bne        $a0, $at, .L80184AE8_ovl3
/* E5510 80184AD0 3C0B800E */   lui       $t3, %hi(D_800DFBD0)
.L80184AD4_ovl3:
/* E5514 80184AD4 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* E5518 80184AD8 8F280008 */  lw         $t0, 0x8($t9)
/* E551C 80184ADC 8D090080 */  lw         $t1, 0x80($t0)
/* E5520 80184AE0 10000007 */  b          .L80184B00_ovl3
/* E5524 80184AE4 A120005B */   sb        $zero, 0x5B($t1)
.L80184AE8_ovl3:
/* E5528 80184AE8 01635821 */  addu       $t3, $t3, $v1
/* E552C 80184AEC 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* E5530 80184AF0 240A00FF */  addiu      $t2, $zero, 0xFF
/* E5534 80184AF4 8D6C0008 */  lw         $t4, 0x8($t3)
/* E5538 80184AF8 8D8D0080 */  lw         $t5, 0x80($t4)
/* E553C 80184AFC A1AA005B */  sb         $t2, 0x5B($t5)
.L80184B00_ovl3:
/* E5540 80184B00 3C018019 */  lui        $at, %hi(D_801977D4_ovl3)
/* E5544 80184B04 C42C77D4 */  lwc1       $f12, %lo(D_801977D4_ovl3)($at)
/* E5548 80184B08 3C018019 */  lui        $at, %hi(D_801977D8_ovl3)
/* E554C 80184B0C 0C048333 */  jal        func_80120CCC
/* E5550 80184B10 C42E77D8 */   lwc1      $f14, %lo(D_801977D8_ovl3)($at)
.L80184B14_ovl5:
/* E5554 80184B14 8FBF0014 */  lw         $ra, 0x14($sp)
.L80184B18_ovl3:
/* E5558 80184B18 27BD0018 */  addiu      $sp, $sp, 0x18
/* E555C 80184B1C 03E00008 */  jr         $ra
/* E5560 80184B20 00000000 */   nop
