glabel func_801848A4_ovl3
/* 0E52E4 801848A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E52E8 801848A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E52EC 801848AC 0C054E61 */  jal   func_80153984_ovl3
/* 0E52F0 801848B0 AFA40018 */   sw    $a0, 0x18($sp)
/* 0E52F4 801848B4 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0E52F8 801848B8 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0E52FC 801848BC 8C8E0030 */  lw    $t6, 0x30($a0)
/* 0E5300 801848C0 3C03800D */  lui   $v1, %hi(D_800D6FE8) # $v1, 0x800d
/* 0E5304 801848C4 11C00018 */  beqz  $t6, .L80184928_ovl3
/* 0E5308 801848C8 00000000 */   nop   
/* 0E530C 801848CC 0C0485EE */  jal   func_801217B8
/* 0E5310 801848D0 00000000 */   nop   
/* 0E5314 801848D4 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0E5318 801848D8 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0E531C 801848DC 8C8F0030 */  lw    $t7, 0x30($a0)
/* 0E5320 801848E0 24010002 */  li    $at, 2
/* 0E5324 801848E4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0E5328 801848E8 11E10009 */  beq   $t7, $at, .L80184910_ovl3
/* 0E532C 801848EC 00000000 */   nop   
/* 0E5330 801848F0 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0E5334 801848F4 3C09800F */  lui   $t1, 0x800f
/* 0E5338 801848F8 8F190000 */  lw    $t9, ($t8)
/* 0E533C 801848FC 00194080 */  sll   $t0, $t9, 2
/* 0E5340 80184900 01284821 */  addu  $t1, $t1, $t0
/* 0E5344 80184904 8D298920 */  lw    $t1, -0x76e0($t1)
/* 0E5348 80184908 51200083 */  beql  $t1, $zero, .L80184B18_ovl3
/* 0E534C 8018490C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80184910_ovl3:
/* 0E5350 80184910 0C04783A */  jal   func_8011E0E8
/* 0E5354 80184914 00000000 */   nop   
/* 0E5358 80184918 0C04759F */  jal   func_8011D67C
/* 0E535C 8018491C 00000000 */   nop   
/* 0E5360 80184920 1000007D */  b     .L80184B18_ovl3
/* 0E5364 80184924 8FBF0014 */   lw    $ra, 0x14($sp)
.L80184928_ovl3:
/* 0E5368 80184928 94636FE8 */  lhu   $v1, %lo(D_800D6FE8)($v1)
/* 0E536C 8018492C 3C028005 */  lui   $v0, 0x8005
/* 0E5370 80184930 306A0300 */  andi  $t2, $v1, 0x300
/* 0E5374 80184934 11400024 */  beqz  $t2, .L801849C8_ovl3
/* 0E5378 80184938 306B0100 */   andi  $t3, $v1, 0x100
/* 0E537C 8018493C 11600012 */  beqz  $t3, .L80184988_ovl3
/* 0E5380 80184940 3C028005 */   lui   $v0, 0x8005
/* 0E5384 80184944 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0E5388 80184948 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0E538C 8018494C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0E5390 80184950 44812000 */  mtc1  $at, $f4
/* 0E5394 80184954 8C4C0000 */  lw    $t4, ($v0)
/* 0E5398 80184958 3C01800E */  lui   $at, 0x800e
/* 0E539C 8018495C 000C6880 */  sll   $t5, $t4, 2
/* 0E53A0 80184960 002D0821 */  addu  $at, $at, $t5
/* 0E53A4 80184964 E4246690 */  swc1  $f4, 0x6690($at)
/* 0E53A8 80184968 8C4E0000 */  lw    $t6, ($v0)
/* 0E53AC 8018496C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0E53B0 80184970 44813000 */  mtc1  $at, $f6
/* 0E53B4 80184974 3C01800E */  lui   $at, 0x800e
/* 0E53B8 80184978 000E7880 */  sll   $t7, $t6, 2
/* 0E53BC 8018497C 002F0821 */  addu  $at, $at, $t7
/* 0E53C0 80184980 10000018 */  b     .L801849E4_ovl3
/* 0E53C4 80184984 E4266850 */   swc1  $f6, 0x6850($at)
.L80184988_ovl3:
/* 0E53C8 80184988 8C42A7C4 */  lw    $v0, -0x583c($v0)
/* 0E53CC 8018498C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 0E53D0 80184990 44814000 */  mtc1  $at, $f8
/* 0E53D4 80184994 8C580000 */  lw    $t8, ($v0)
/* 0E53D8 80184998 3C01800E */  lui   $at, 0x800e
/* 0E53DC 8018499C 0018C880 */  sll   $t9, $t8, 2
/* 0E53E0 801849A0 00390821 */  addu  $at, $at, $t9
/* 0E53E4 801849A4 E4286690 */  swc1  $f8, 0x6690($at)
/* 0E53E8 801849A8 8C480000 */  lw    $t0, ($v0)
/* 0E53EC 801849AC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0E53F0 801849B0 44815000 */  mtc1  $at, $f10
/* 0E53F4 801849B4 3C01800E */  lui   $at, 0x800e
/* 0E53F8 801849B8 00084880 */  sll   $t1, $t0, 2
/* 0E53FC 801849BC 00290821 */  addu  $at, $at, $t1
/* 0E5400 801849C0 10000008 */  b     .L801849E4_ovl3
/* 0E5404 801849C4 E42A6850 */   swc1  $f10, 0x6850($at)
.L801849C8_ovl3:
/* 0E5408 801849C8 8C42A7C4 */  lw    $v0, -0x583c($v0)
/* 0E540C 801849CC 44808000 */  mtc1  $zero, $f16
/* 0E5410 801849D0 3C01800E */  lui   $at, 0x800e
/* 0E5414 801849D4 8C4A0000 */  lw    $t2, ($v0)
/* 0E5418 801849D8 000A5880 */  sll   $t3, $t2, 2
/* 0E541C 801849DC 002B0821 */  addu  $at, $at, $t3
/* 0E5420 801849E0 E4306850 */  swc1  $f16, 0x6850($at)
.L801849E4_ovl3:
/* 0E5424 801849E4 306C0C00 */  andi  $t4, $v1, 0xc00
/* 0E5428 801849E8 11800025 */  beqz  $t4, .L80184A80_ovl3
/* 0E542C 801849EC 306D0800 */   andi  $t5, $v1, 0x800
/* 0E5430 801849F0 11A00015 */  beqz  $t5, .L80184A48_ovl3
/* 0E5434 801849F4 3C01BF00 */   lui   $at, 0xbf00
/* 0E5438 801849F8 8C4E0000 */  lw    $t6, ($v0)
/* 0E543C 801849FC 3C01800F */  lui   $at, 0x800f
/* 0E5440 80184A00 000E7880 */  sll   $t7, $t6, 2
/* 0E5444 80184A04 002F0821 */  addu  $at, $at, $t7
/* 0E5448 80184A08 AC208920 */  sw    $zero, -0x76e0($at)
/* 0E544C 80184A0C 8C580000 */  lw    $t8, ($v0)
/* 0E5450 80184A10 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0E5454 80184A14 44819000 */  mtc1  $at, $f18
/* 0E5458 80184A18 3C01800E */  lui   $at, 0x800e
/* 0E545C 80184A1C 0018C880 */  sll   $t9, $t8, 2
/* 0E5460 80184A20 00390821 */  addu  $at, $at, $t9
/* 0E5464 80184A24 E4323750 */  swc1  $f18, 0x3750($at)
/* 0E5468 80184A28 8C480000 */  lw    $t0, ($v0)
/* 0E546C 80184A2C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0E5470 80184A30 44812000 */  mtc1  $at, $f4
/* 0E5474 80184A34 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0E5478 80184A38 00084880 */  sll   $t1, $t0, 2
/* 0E547C 80184A3C 00290821 */  addu  $at, $at, $t1
/* 0E5480 80184A40 10000015 */  b     .L80184A98_ovl3
/* 0E5484 80184A44 E4243C90 */   swc1  $f4, 0x3c90($at)
.L80184A48_ovl3:
/* 0E5488 80184A48 8C4A0000 */  lw    $t2, ($v0)
/* 0E548C 80184A4C 44813000 */  mtc1  $at, $f6
/* 0E5490 80184A50 3C01800E */  lui   $at, 0x800e
/* 0E5494 80184A54 000A5880 */  sll   $t3, $t2, 2
/* 0E5498 80184A58 002B0821 */  addu  $at, $at, $t3
/* 0E549C 80184A5C E4263750 */  swc1  $f6, 0x3750($at)
/* 0E54A0 80184A60 8C4C0000 */  lw    $t4, ($v0)
/* 0E54A4 80184A64 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0E54A8 80184A68 44814000 */  mtc1  $at, $f8
/* 0E54AC 80184A6C 3C01800E */  lui   $at, 0x800e
/* 0E54B0 80184A70 000C6880 */  sll   $t5, $t4, 2
/* 0E54B4 80184A74 002D0821 */  addu  $at, $at, $t5
/* 0E54B8 80184A78 10000007 */  b     .L80184A98_ovl3
/* 0E54BC 80184A7C E4283C90 */   swc1  $f8, 0x3c90($at)
.L80184A80_ovl3:
/* 0E54C0 80184A80 8C4E0000 */  lw    $t6, ($v0)
/* 0E54C4 80184A84 44805000 */  mtc1  $zero, $f10
/* 0E54C8 80184A88 3C01800E */  lui   $at, 0x800e
/* 0E54CC 80184A8C 000E7880 */  sll   $t7, $t6, 2
/* 0E54D0 80184A90 002F0821 */  addu  $at, $at, $t7
/* 0E54D4 80184A94 E42A3C90 */  swc1  $f10, 0x3c90($at)
.L80184A98_ovl3:
/* 0E54D8 80184A98 8C9800A0 */  lw    $t8, 0xa0($a0)
/* 0E54DC 80184A9C 13000018 */  beqz  $t8, .L80184B00_ovl3
/* 0E54E0 80184AA0 00000000 */   nop   
/* 0E54E4 80184AA4 8C430000 */  lw    $v1, ($v0)
/* 0E54E8 80184AA8 3C04800F */  lui   $a0, 0x800f
/* 0E54EC 80184AAC 24010003 */  li    $at, 3
/* 0E54F0 80184AB0 00031880 */  sll   $v1, $v1, 2
/* 0E54F4 80184AB4 00832021 */  addu  $a0, $a0, $v1
/* 0E54F8 80184AB8 8C849720 */  lw    $a0, -0x68e0($a0)
/* 0E54FC 80184ABC 3C19800E */  lui   $t9, 0x800e
/* 0E5500 80184AC0 0323C821 */  addu  $t9, $t9, $v1
/* 0E5504 80184AC4 10810003 */  beq   $a0, $at, .L80184AD4_ovl3
/* 0E5508 80184AC8 24010001 */   li    $at, 1
/* 0E550C 80184ACC 14810006 */  bne   $a0, $at, .L80184AE8_ovl3
/* 0E5510 80184AD0 3C0B800E */   lui   $t3, 0x800e
.L80184AD4_ovl3:
/* 0E5514 80184AD4 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 0E5518 80184AD8 8F280008 */  lw    $t0, 8($t9)
/* 0E551C 80184ADC 8D090080 */  lw    $t1, 0x80($t0)
/* 0E5520 80184AE0 10000007 */  b     .L80184B00_ovl3
/* 0E5524 80184AE4 A120005B */   sb    $zero, 0x5b($t1)
.L80184AE8_ovl3:
/* 0E5528 80184AE8 01635821 */  addu  $t3, $t3, $v1
/* 0E552C 80184AEC 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 0E5530 80184AF0 240A00FF */  li    $t2, 255
/* 0E5534 80184AF4 8D6C0008 */  lw    $t4, 8($t3)
/* 0E5538 80184AF8 8D8D0080 */  lw    $t5, 0x80($t4)
/* 0E553C 80184AFC A1AA005B */  sb    $t2, 0x5b($t5)
.L80184B00_ovl3:
/* 0E5540 80184B00 3C018019 */  lui   $at, %hi(D_801977D4) # $at, 0x8019
/* 0E5544 80184B04 C42C77D4 */  lwc1  $f12, %lo(D_801977D4)($at)
/* 0E5548 80184B08 3C018019 */  lui   $at, %hi(D_801977D8) # $at, 0x8019
/* 0E554C 80184B0C 0C048333 */  jal   func_80120CCC
/* 0E5550 80184B10 C42E77D8 */   lwc1  $f14, %lo(D_801977D8)($at)
/* 0E5554 80184B14 8FBF0014 */  lw    $ra, 0x14($sp)
.L80184B18_ovl3:
/* 0E5558 80184B18 27BD0018 */  addiu $sp, $sp, 0x18
/* 0E555C 80184B1C 03E00008 */  jr    $ra
/* 0E5560 80184B20 00000000 */   nop   
