glabel func_8015B75C_ovl3
/* BC19C 8015B75C 3C028013 */  lui        $v0, %hi(gKirbyState)
/* BC1A0 8015B760 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* BC1A4 8015B764 8C4E003C */  lw         $t6, 0x3C($v0)
/* BC1A8 8015B768 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* BC1AC 8015B76C AFBF0014 */  sw         $ra, 0x14($sp)
/* BC1B0 8015B770 15C0001A */  bnez       $t6, .L8015B7DC_ovl3
/* BC1B4 8015B774 AFA40050 */   sw        $a0, 0x50($sp)
/* BC1B8 8015B778 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* BC1BC 8015B77C 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* BC1C0 8015B780 3C18800F */  lui        $t8, %hi(D_800E9AA0)
/* BC1C4 8015B784 8DE70000 */  lw         $a3, 0x0($t7)
/* BC1C8 8015B788 00073880 */  sll        $a3, $a3, 2
/* BC1CC 8015B78C 0307C021 */  addu       $t8, $t8, $a3
/* BC1D0 8015B790 8F189AA0 */  lw         $t8, %lo(D_800E9AA0)($t8)
/* BC1D4 8015B794 17000011 */  bnez       $t8, .L8015B7DC_ovl3
/* BC1D8 8015B798 00000000 */   nop
/* BC1DC 8015B79C 90590005 */  lbu        $t9, 0x5($v0)
/* BC1E0 8015B7A0 24010015 */  addiu      $at, $zero, 0x15
/* BC1E4 8015B7A4 3C04800F */  lui        $a0, %hi(D_800EA520)
/* BC1E8 8015B7A8 13210004 */  beq        $t9, $at, .L8015B7BC_ovl3
/* BC1EC 8015B7AC 00872021 */   addu      $a0, $a0, $a3
/* BC1F0 8015B7B0 8C4800A0 */  lw         $t0, 0xA0($v0)
/* BC1F4 8015B7B4 150000DD */  bnez       $t0, .L8015BB2C_ovl3
/* BC1F8 8015B7B8 00000000 */   nop
.L8015B7BC_ovl3:
/* BC1FC 8015B7BC 0C0288B5 */  jal        func_800A22D4
/* BC200 8015B7C0 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
/* BC204 8015B7C4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* BC208 8015B7C8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* BC20C 8015B7CC 0C02C640 */  jal        func_800B1900
/* BC210 8015B7D0 95240002 */   lhu       $a0, 0x2($t1)
/* BC214 8015B7D4 10000100 */  b          .L8015BBD8_ovl3
/* BC218 8015B7D8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8015B7DC_ovl3:
/* BC21C 8015B7DC 0C02CC56 */  jal        func_800B3158
/* BC220 8015B7E0 00000000 */   nop
/* BC224 8015B7E4 14400004 */  bnez       $v0, .L8015B7F8_ovl3
/* BC228 8015B7E8 3C068005 */   lui       $a2, %hi(D_8004A7C4)
/* BC22C 8015B7EC 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* BC230 8015B7F0 100000B9 */  b          .L8015BAD8_ovl3
/* BC234 8015B7F4 8CC6A7C4 */   lw        $a2, %lo(D_8004A7C4)($a2)
.L8015B7F8_ovl3:
/* BC238 8015B7F8 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* BC23C 8015B7FC 3C01800E */  lui        $at, %hi(D_800E17D0)
/* BC240 8015B800 3C0A800E */  lui        $t2, %hi(D_800E6310)
/* BC244 8015B804 8CC70000 */  lw         $a3, 0x0($a2)
/* BC248 8015B808 3C0B800F */  lui        $t3, %hi(D_800E9720)
/* BC24C 8015B80C 256B9720 */  addiu      $t3, $t3, %lo(D_800E9720)
/* BC250 8015B810 00073880 */  sll        $a3, $a3, 2
/* BC254 8015B814 00270821 */  addu       $at, $at, $a3
/* BC258 8015B818 C42417D0 */  lwc1       $f4, %lo(D_800E17D0)($at)
/* BC25C 8015B81C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* BC260 8015B820 00270821 */  addu       $at, $at, $a3
/* BC264 8015B824 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* BC268 8015B828 8CC70000 */  lw         $a3, 0x0($a2)
/* BC26C 8015B82C 00073880 */  sll        $a3, $a3, 2
/* BC270 8015B830 01475021 */  addu       $t2, $t2, $a3
/* BC274 8015B834 8D4A6310 */  lw         $t2, %lo(D_800E6310)($t2)
/* BC278 8015B838 00EB1021 */  addu       $v0, $a3, $t3
/* BC27C 8015B83C 15400077 */  bnez       $t2, .L8015BA1C_ovl3
/* BC280 8015B840 00000000 */   nop
/* BC284 8015B844 8C430000 */  lw         $v1, 0x0($v0)
/* BC288 8015B848 246CFFFF */  addiu      $t4, $v1, -0x1
/* BC28C 8015B84C 10600073 */  beqz       $v1, .L8015BA1C_ovl3
/* BC290 8015B850 AC4C0000 */   sw        $t4, 0x0($v0)
/* BC294 8015B854 8CC20000 */  lw         $v0, 0x0($a2)
/* BC298 8015B858 3C0E800F */  lui        $t6, %hi(D_800E83E0)
/* BC29C 8015B85C 3C198019 */  lui        $t9, %hi(D_80197F60_ovl3)
/* BC2A0 8015B860 00026880 */  sll        $t5, $v0, 2
/* BC2A4 8015B864 01CD7021 */  addu       $t6, $t6, $t5
/* BC2A8 8015B868 8DCE83E0 */  lw         $t6, %lo(D_800E83E0)($t6)
/* BC2AC 8015B86C 00027880 */  sll        $t7, $v0, 2
/* BC2B0 8015B870 01E27823 */  subu       $t7, $t7, $v0
/* BC2B4 8015B874 15C00069 */  bnez       $t6, .L8015BA1C_ovl3
/* BC2B8 8015B878 000F78C0 */   sll       $t7, $t7, 3
/* BC2BC 8015B87C 01E27823 */  subu       $t7, $t7, $v0
/* BC2C0 8015B880 000F7880 */  sll        $t7, $t7, 2
/* BC2C4 8015B884 25F8FE90 */  addiu      $t8, $t7, -0x170
/* BC2C8 8015B888 27397F60 */  addiu      $t9, $t9, %lo(D_80197F60_ovl3)
/* BC2CC 8015B88C 0C055509 */  jal        func_80155424_ovl3
/* BC2D0 8015B890 03192021 */   addu      $a0, $t8, $t9
/* BC2D4 8015B894 14400061 */  bnez       $v0, .L8015BA1C_ovl3
/* BC2D8 8015B898 3C068005 */   lui       $a2, %hi(D_8004A7C4)
/* BC2DC 8015B89C 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* BC2E0 8015B8A0 3C08800F */  lui        $t0, %hi(D_800E8920)
/* BC2E4 8015B8A4 3C02800F */  lui        $v0, %hi(D_800E8AE0)
/* BC2E8 8015B8A8 8CC70000 */  lw         $a3, 0x0($a2)
/* BC2EC 8015B8AC 00073880 */  sll        $a3, $a3, 2
/* BC2F0 8015B8B0 01074021 */  addu       $t0, $t0, $a3
/* BC2F4 8015B8B4 8D088920 */  lw         $t0, %lo(D_800E8920)($t0)
/* BC2F8 8015B8B8 00471021 */  addu       $v0, $v0, $a3
/* BC2FC 8015B8BC 15000057 */  bnez       $t0, .L8015BA1C_ovl3
/* BC300 8015B8C0 00000000 */   nop
/* BC304 8015B8C4 8C428AE0 */  lw         $v0, %lo(D_800E8AE0)($v0)
/* BC308 8015B8C8 44807000 */  mtc1       $zero, $f14
/* BC30C 8015B8CC 3C018019 */  lui        $at, %hi(D_80197064_ovl3)
/* BC310 8015B8D0 30430004 */  andi       $v1, $v0, 0x4
/* BC314 8015B8D4 10600006 */  beqz       $v1, .L8015B8F0_ovl3
/* BC318 8015B8D8 30490002 */   andi      $t1, $v0, 0x2
/* BC31C 8015B8DC 15200004 */  bnez       $t1, .L8015B8F0_ovl3
/* BC320 8015B8E0 00000000 */   nop
/* BC324 8015B8E4 3C018019 */  lui        $at, %hi(D_80197060_ovl3)
/* BC328 8015B8E8 10000002 */  b          .L8015B8F4_ovl3
/* BC32C 8015B8EC C42C7060 */   lwc1      $f12, %lo(D_80197060_ovl3)($at)
.L8015B8F0_ovl3:
/* BC330 8015B8F0 C42C7064 */  lwc1       $f12, %lo(D_80197064_ovl3)($at)
.L8015B8F4_ovl3:
/* BC334 8015B8F4 14600009 */  bnez       $v1, .L8015B91C_ovl3
/* BC338 8015B8F8 3C0C800F */   lui       $t4, %hi(D_800E98E0)
/* BC33C 8015B8FC 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* BC340 8015B900 01475021 */  addu       $t2, $t2, $a3
/* BC344 8015B904 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
/* BC348 8015B908 3C018019 */  lui        $at, %hi(D_80196728_ovl3)
/* BC34C 8015B90C 000A5900 */  sll        $t3, $t2, 4
/* BC350 8015B910 002B0821 */  addu       $at, $at, $t3
/* BC354 8015B914 1000000C */  b          .L8015B948_ovl3
/* BC358 8015B918 C4206728 */   lwc1      $f0, %lo(D_80196728_ovl3)($at)
.L8015B91C_ovl3:
/* BC35C 8015B91C 01876021 */  addu       $t4, $t4, $a3
/* BC360 8015B920 8D8C98E0 */  lw         $t4, %lo(D_800E98E0)($t4)
/* BC364 8015B924 3C018019 */  lui        $at, %hi(D_80196728_ovl3)
/* BC368 8015B928 000C6900 */  sll        $t5, $t4, 4
/* BC36C 8015B92C 002D0821 */  addu       $at, $at, $t5
/* BC370 8015B930 C4266728 */  lwc1       $f6, %lo(D_80196728_ovl3)($at)
/* BC374 8015B934 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* BC378 8015B938 44814000 */  mtc1       $at, $f8
/* BC37C 8015B93C 00000000 */  nop
/* BC380 8015B940 46083002 */  mul.s      $f0, $f6, $f8
/* BC384 8015B944 00000000 */  nop
.L8015B948_ovl3:
/* BC388 8015B948 14600005 */  bnez       $v1, .L8015B960_ovl3
/* BC38C 8015B94C 3C014100 */   lui       $at, (0x41000000 >> 16)
/* BC390 8015B950 3C014180 */  lui        $at, (0x41800000 >> 16)
/* BC394 8015B954 44811000 */  mtc1       $at, $f2
/* BC398 8015B958 10000004 */  b          .L8015B96C_ovl3
/* BC39C 8015B95C 460E003C */   c.lt.s    $f0, $f14
.L8015B960_ovl3:
/* BC3A0 8015B960 44811000 */  mtc1       $at, $f2
/* BC3A4 8015B964 00000000 */  nop
/* BC3A8 8015B968 460E003C */  c.lt.s     $f0, $f14
.L8015B96C_ovl3:
/* BC3AC 8015B96C 3C01800E */  lui        $at, %hi(D_800E6850)
/* BC3B0 8015B970 00270821 */  addu       $at, $at, $a3
/* BC3B4 8015B974 45000006 */  bc1f       .L8015B990_ovl3
/* BC3B8 8015B978 00000000 */   nop
/* BC3BC 8015B97C 3C01800E */  lui        $at, %hi(D_800E6850)
/* BC3C0 8015B980 46000287 */  neg.s      $f10, $f0
/* BC3C4 8015B984 00270821 */  addu       $at, $at, $a3
/* BC3C8 8015B988 10000002 */  b          .L8015B994_ovl3
/* BC3CC 8015B98C E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L8015B990_ovl3:
/* BC3D0 8015B990 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8015B994_ovl3:
/* BC3D4 8015B994 8CCE0000 */  lw         $t6, 0x0($a2)
/* BC3D8 8015B998 460E103C */  c.lt.s     $f2, $f14
/* BC3DC 8015B99C 3C01800E */  lui        $at, %hi(D_800E3750)
/* BC3E0 8015B9A0 000E7880 */  sll        $t7, $t6, 2
/* BC3E4 8015B9A4 002F0821 */  addu       $at, $at, $t7
/* BC3E8 8015B9A8 45000008 */  bc1f       .L8015B9CC_ovl3
/* BC3EC 8015B9AC E42C3750 */   swc1      $f12, %lo(D_800E3750)($at)
/* BC3F0 8015B9B0 8CD80000 */  lw         $t8, 0x0($a2)
/* BC3F4 8015B9B4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BC3F8 8015B9B8 46001407 */  neg.s      $f16, $f2
/* BC3FC 8015B9BC 0018C880 */  sll        $t9, $t8, 2
/* BC400 8015B9C0 00390821 */  addu       $at, $at, $t9
/* BC404 8015B9C4 10000006 */  b          .L8015B9E0_ovl3
/* BC408 8015B9C8 E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
.L8015B9CC_ovl3:
/* BC40C 8015B9CC 8CC80000 */  lw         $t0, 0x0($a2)
/* BC410 8015B9D0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BC414 8015B9D4 00084880 */  sll        $t1, $t0, 2
/* BC418 8015B9D8 00290821 */  addu       $at, $at, $t1
/* BC41C 8015B9DC E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
.L8015B9E0_ovl3:
/* BC420 8015B9E0 0C058854 */  jal        func_80162150_ovl3
/* BC424 8015B9E4 00000000 */   nop
/* BC428 8015B9E8 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* BC42C 8015B9EC 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* BC430 8015B9F0 3C048019 */  lui        $a0, %hi(D_80190B6C_ovl3)
/* BC434 8015B9F4 24840B6C */  addiu      $a0, $a0, %lo(D_80190B6C_ovl3)
/* BC438 8015B9F8 0C0445EF */  jal        func_801117BC
/* BC43C 8015B9FC 8D450000 */   lw        $a1, 0x0($t2)
/* BC440 8015BA00 0C044713 */  jal        func_80111C4C
/* BC444 8015BA04 00402025 */   or        $a0, $v0, $zero
/* BC448 8015BA08 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* BC44C 8015BA0C 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* BC450 8015BA10 8D670000 */  lw         $a3, 0x0($t3)
/* BC454 8015BA14 10000045 */  b          .L8015BB2C_ovl3
/* BC458 8015BA18 00073880 */   sll       $a3, $a3, 2
.L8015BA1C_ovl3:
/* BC45C 8015BA1C 0C029D9E */  jal        play_sound
/* BC460 8015BA20 2404000E */   addiu     $a0, $zero, 0xE
/* BC464 8015BA24 0C05A4F1 */  jal        func_801693C4
/* BC468 8015BA28 24040005 */   addiu     $a0, $zero, 0x5
/* BC46C 8015BA2C 2401FFFF */  addiu      $at, $zero, -0x1
/* BC470 8015BA30 10410027 */  beq        $v0, $at, .L8015BAD0_ovl3
/* BC474 8015BA34 3C068005 */   lui       $a2, %hi(D_8004A7C4)
/* BC478 8015BA38 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* BC47C 8015BA3C 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
/* BC480 8015BA40 248425D0 */  addiu      $a0, $a0, %lo(gEntitiesNextPosXArray)
/* BC484 8015BA44 8CCC0000 */  lw         $t4, 0x0($a2)
/* BC488 8015BA48 00021880 */  sll        $v1, $v0, 2
/* BC48C 8015BA4C 00837821 */  addu       $t7, $a0, $v1
/* BC490 8015BA50 000C6880 */  sll        $t5, $t4, 2
/* BC494 8015BA54 008D7021 */  addu       $t6, $a0, $t5
/* BC498 8015BA58 C5D20000 */  lwc1       $f18, 0x0($t6)
/* BC49C 8015BA5C 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
/* BC4A0 8015BA60 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
/* BC4A4 8015BA64 E5F20000 */  swc1       $f18, 0x0($t7)
/* BC4A8 8015BA68 8CD80000 */  lw         $t8, 0x0($a2)
/* BC4AC 8015BA6C 00A34821 */  addu       $t1, $a1, $v1
/* BC4B0 8015BA70 3C07800E */  lui        $a3, %hi(gEntitiesNextPosZArray)
/* BC4B4 8015BA74 0018C880 */  sll        $t9, $t8, 2
/* BC4B8 8015BA78 00B94021 */  addu       $t0, $a1, $t9
/* BC4BC 8015BA7C C5040000 */  lwc1       $f4, 0x0($t0)
/* BC4C0 8015BA80 24E72950 */  addiu      $a3, $a3, %lo(gEntitiesNextPosZArray)
/* BC4C4 8015BA84 00E36821 */  addu       $t5, $a3, $v1
/* BC4C8 8015BA88 E5240000 */  swc1       $f4, 0x0($t1)
/* BC4CC 8015BA8C 8CCA0000 */  lw         $t2, 0x0($a2)
/* BC4D0 8015BA90 3C01800E */  lui        $at, %hi(D_800E17D0)
/* BC4D4 8015BA94 24180005 */  addiu      $t8, $zero, 0x5
/* BC4D8 8015BA98 000A5880 */  sll        $t3, $t2, 2
/* BC4DC 8015BA9C 00EB6021 */  addu       $t4, $a3, $t3
/* BC4E0 8015BAA0 C5860000 */  lwc1       $f6, 0x0($t4)
/* BC4E4 8015BAA4 E5A60000 */  swc1       $f6, 0x0($t5)
/* BC4E8 8015BAA8 8CCE0000 */  lw         $t6, 0x0($a2)
/* BC4EC 8015BAAC 000E7880 */  sll        $t7, $t6, 2
/* BC4F0 8015BAB0 002F0821 */  addu       $at, $at, $t7
/* BC4F4 8015BAB4 C42817D0 */  lwc1       $f8, %lo(D_800E17D0)($at)
/* BC4F8 8015BAB8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* BC4FC 8015BABC 00230821 */  addu       $at, $at, $v1
/* BC500 8015BAC0 E428A6E0 */  swc1       $f8, %lo(D_800EA6E0)($at)
/* BC504 8015BAC4 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* BC508 8015BAC8 00230821 */  addu       $at, $at, $v1
/* BC50C 8015BACC AC38C2E0 */  sw         $t8, %lo(D_800EC2E0)($at)
.L8015BAD0_ovl3:
/* BC510 8015BAD0 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* BC514 8015BAD4 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
.L8015BAD8_ovl3:
/* BC518 8015BAD8 8CD90000 */  lw         $t9, 0x0($a2)
/* BC51C 8015BADC 3C04800F */  lui        $a0, %hi(D_800EA360)
/* BC520 8015BAE0 00194080 */  sll        $t0, $t9, 2
/* BC524 8015BAE4 00882021 */  addu       $a0, $a0, $t0
/* BC528 8015BAE8 8C84A360 */  lw         $a0, %lo(D_800EA360)($a0)
/* BC52C 8015BAEC 0C029E1C */  jal        func_800A7870
/* BC530 8015BAF0 24850004 */   addiu     $a1, $a0, 0x4
/* BC534 8015BAF4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* BC538 8015BAF8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* BC53C 8015BAFC 3C04800F */  lui        $a0, %hi(D_800EA520)
/* BC540 8015BB00 8D2A0000 */  lw         $t2, 0x0($t1)
/* BC544 8015BB04 000A5880 */  sll        $t3, $t2, 2
/* BC548 8015BB08 008B2021 */  addu       $a0, $a0, $t3
/* BC54C 8015BB0C 0C0288B5 */  jal        func_800A22D4
/* BC550 8015BB10 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
/* BC554 8015BB14 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* BC558 8015BB18 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* BC55C 8015BB1C 0C02C640 */  jal        func_800B1900
/* BC560 8015BB20 95840002 */   lhu       $a0, 0x2($t4)
/* BC564 8015BB24 1000002C */  b          .L8015BBD8_ovl3
/* BC568 8015BB28 8FBF0014 */   lw        $ra, 0x14($sp)
.L8015BB2C_ovl3:
/* BC56C 8015BB2C 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
/* BC570 8015BB30 01A76821 */  addu       $t5, $t5, $a3
/* BC574 8015BB34 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
/* BC578 8015BB38 3C02800F */  lui        $v0, %hi(D_800EA520)
/* BC57C 8015BB3C 00471021 */  addu       $v0, $v0, $a3
/* BC580 8015BB40 8C42A520 */  lw         $v0, %lo(D_800EA520)($v0)
/* BC584 8015BB44 8DA5000C */  lw         $a1, 0xC($t5)
/* BC588 8015BB48 27A40044 */  addiu      $a0, $sp, 0x44
/* BC58C 8015BB4C 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* BC590 8015BB50 0C02C8D0 */  jal        func_800B2340
/* BC594 8015BB54 AFA20038 */   sw        $v0, 0x38($sp)
/* BC598 8015BB58 8FA20038 */  lw         $v0, 0x38($sp)
/* BC59C 8015BB5C C7AA0044 */  lwc1       $f10, 0x44($sp)
/* BC5A0 8015BB60 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* BC5A4 8015BB64 8C4E004C */  lw         $t6, 0x4C($v0)
/* BC5A8 8015BB68 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
/* BC5AC 8015BB6C 27A40044 */  addiu      $a0, $sp, 0x44
/* BC5B0 8015BB70 E5CA0004 */  swc1       $f10, 0x4($t6)
/* BC5B4 8015BB74 C7B00048 */  lwc1       $f16, 0x48($sp)
/* BC5B8 8015BB78 8C4F004C */  lw         $t7, 0x4C($v0)
/* BC5BC 8015BB7C 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* BC5C0 8015BB80 E5F00008 */  swc1       $f16, 0x8($t7)
/* BC5C4 8015BB84 C7B2004C */  lwc1       $f18, 0x4C($sp)
/* BC5C8 8015BB88 8C58004C */  lw         $t8, 0x4C($v0)
/* BC5CC 8015BB8C E712000C */  swc1       $f18, 0xC($t8)
/* BC5D0 8015BB90 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* BC5D4 8015BB94 8F280000 */  lw         $t0, 0x0($t9)
/* BC5D8 8015BB98 00084880 */  sll        $t1, $t0, 2
/* BC5DC 8015BB9C 01495021 */  addu       $t2, $t2, $t1
/* BC5E0 8015BBA0 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
/* BC5E4 8015BBA4 0C02C9B6 */  jal        func_800B26D8
/* BC5E8 8015BBA8 8D45000C */   lw        $a1, 0xC($t2)
/* BC5EC 8015BBAC 8FA20038 */  lw         $v0, 0x38($sp)
/* BC5F0 8015BBB0 C7A40044 */  lwc1       $f4, 0x44($sp)
/* BC5F4 8015BBB4 8C4B004C */  lw         $t3, 0x4C($v0)
/* BC5F8 8015BBB8 E5640010 */  swc1       $f4, 0x10($t3)
/* BC5FC 8015BBBC C7A60048 */  lwc1       $f6, 0x48($sp)
/* BC600 8015BBC0 8C4C004C */  lw         $t4, 0x4C($v0)
/* BC604 8015BBC4 E5860014 */  swc1       $f6, 0x14($t4)
/* BC608 8015BBC8 C7A8004C */  lwc1       $f8, 0x4C($sp)
/* BC60C 8015BBCC 8C4D004C */  lw         $t5, 0x4C($v0)
/* BC610 8015BBD0 E5A80018 */  swc1       $f8, 0x18($t5)
/* BC614 8015BBD4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8015BBD8_ovl3:
/* BC618 8015BBD8 27BD0050 */  addiu      $sp, $sp, 0x50
/* BC61C 8015BBDC 03E00008 */  jr         $ra
/* BC620 8015BBE0 00000000 */   nop
