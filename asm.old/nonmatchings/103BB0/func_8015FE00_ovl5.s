glabel func_8015FE00_ovl5
/* 107270 8015FE00 00047080 */  sll        $t6, $a0, 2
/* 107274 8015FE04 01C47023 */  subu       $t6, $t6, $a0
/* 107278 8015FE08 000E7080 */  sll        $t6, $t6, 2
/* 10727C 8015FE0C 3C0F8019 */  lui        $t7, %hi(func_8018E164_ovl5 + 0xCA)
/* 107280 8015FE10 01EE7821 */  addu       $t7, $t7, $t6
/* 107284 8015FE14 91EFE22E */  lbu        $t7, %lo(func_8018E164_ovl5 + 0xCA)($t7)
/* 107288 8015FE18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10728C 8015FE1C 3C198019 */  lui        $t9, %hi(D_8018E050_ovl5)
/* 107290 8015FE20 000FC080 */  sll        $t8, $t7, 2
/* 107294 8015FE24 0338C821 */  addu       $t9, $t9, $t8
/* 107298 8015FE28 8F39E050 */  lw         $t9, %lo(D_8018E050_ovl5)($t9)
/* 10729C 8015FE2C AFB10018 */  sw         $s1, 0x18($sp)
/* 1072A0 8015FE30 AFB00014 */  sw         $s0, 0x14($sp)
/* 1072A4 8015FE34 00808825 */  or         $s1, $a0, $zero
/* 1072A8 8015FE38 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1072AC 8015FE3C 00008025 */  or         $s0, $zero, $zero
/* 1072B0 8015FE40 27A30024 */  addiu      $v1, $sp, 0x24
/* 1072B4 8015FE44 AFB9002C */  sw         $t9, 0x2C($sp)
.L8015FE48_ovl5:
/* 1072B8 8015FE48 12300009 */  beq        $s1, $s0, .L8015FE70_ovl5
/* 1072BC 8015FE4C 02202025 */   or        $a0, $s1, $zero
/* 1072C0 8015FE50 02002825 */  or         $a1, $s0, $zero
/* 1072C4 8015FE54 0C0584B4 */  jal        func_801612D0_ovl5
/* 1072C8 8015FE58 AFA30020 */   sw        $v1, 0x20($sp)
/* 1072CC 8015FE5C 10400004 */  beqz       $v0, .L8015FE70_ovl5
/* 1072D0 8015FE60 8FA30020 */   lw        $v1, 0x20($sp)
/* 1072D4 8015FE64 24080001 */  addiu      $t0, $zero, 0x1
/* 1072D8 8015FE68 10000002 */  b          .L8015FE74_ovl5
/* 1072DC 8015FE6C A0680000 */   sb        $t0, 0x0($v1)
.L8015FE70_ovl5:
/* 1072E0 8015FE70 A0600000 */  sb         $zero, 0x0($v1)
.L8015FE74_ovl5:
/* 1072E4 8015FE74 26100001 */  addiu      $s0, $s0, 0x1
/* 1072E8 8015FE78 2A010004 */  slti       $at, $s0, 0x4
/* 1072EC 8015FE7C 1420FFF2 */  bnez       $at, .L8015FE48_ovl5
/* 1072F0 8015FE80 24630001 */   addiu     $v1, $v1, 0x1
/* 1072F4 8015FE84 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1072F8 8015FE88 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1072FC 8015FE8C 8FAD002C */  lw         $t5, 0x2C($sp)
/* 107300 8015FE90 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
/* 107304 8015FE94 8D2A0000 */  lw         $t2, 0x0($t1)
/* 107308 8015FE98 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
/* 10730C 8015FE9C 000D7080 */  sll        $t6, $t5, 2
/* 107310 8015FEA0 000A5880 */  sll        $t3, $t2, 2
/* 107314 8015FEA4 004B6021 */  addu       $t4, $v0, $t3
/* 107318 8015FEA8 004E7821 */  addu       $t7, $v0, $t6
/* 10731C 8015FEAC C5E40000 */  lwc1       $f4, 0x0($t7)
/* 107320 8015FEB0 C5800000 */  lwc1       $f0, 0x0($t4)
/* 107324 8015FEB4 93B80024 */  lbu        $t8, 0x24($sp)
/* 107328 8015FEB8 93AC0024 */  lbu        $t4, 0x24($sp)
/* 10732C 8015FEBC 4600203C */  c.lt.s     $f4, $f0
/* 107330 8015FEC0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 107334 8015FEC4 45000036 */  bc1f       .L8015FFA0_ovl5
/* 107338 8015FEC8 00000000 */   nop
/* 10733C 8015FECC 1300000B */  beqz       $t8, .L8015FEFC_ovl5
/* 107340 8015FED0 3C198019 */   lui       $t9, %hi(D_8018E030_ovl5)
/* 107344 8015FED4 8F39E030 */  lw         $t9, %lo(D_8018E030_ovl5)($t9)
/* 107348 8015FED8 00194080 */  sll        $t0, $t9, 2
/* 10734C 8015FEDC 00484821 */  addu       $t1, $v0, $t0
/* 107350 8015FEE0 C5260000 */  lwc1       $f6, 0x0($t1)
/* 107354 8015FEE4 4600303C */  c.lt.s     $f6, $f0
/* 107358 8015FEE8 00000000 */  nop
/* 10735C 8015FEEC 45020004 */  bc1fl      .L8015FF00_ovl5
/* 107360 8015FEF0 93AA0025 */   lbu       $t2, 0x25($sp)
/* 107364 8015FEF4 10000060 */  b          .L80160078_ovl5
/* 107368 8015FEF8 24020001 */   addiu     $v0, $zero, 0x1
.L8015FEFC_ovl5:
/* 10736C 8015FEFC 93AA0025 */  lbu        $t2, 0x25($sp)
.L8015FF00_ovl5:
/* 107370 8015FF00 3C0B8019 */  lui        $t3, %hi(D_8018E034_ovl5)
/* 107374 8015FF04 93AE0026 */  lbu        $t6, 0x26($sp)
/* 107378 8015FF08 1140000B */  beqz       $t2, .L8015FF38_ovl5
/* 10737C 8015FF0C 00000000 */   nop
/* 107380 8015FF10 8D6BE034 */  lw         $t3, %lo(D_8018E034_ovl5)($t3)
/* 107384 8015FF14 000B6080 */  sll        $t4, $t3, 2
/* 107388 8015FF18 004C6821 */  addu       $t5, $v0, $t4
/* 10738C 8015FF1C C5A80000 */  lwc1       $f8, 0x0($t5)
/* 107390 8015FF20 4600403C */  c.lt.s     $f8, $f0
/* 107394 8015FF24 00000000 */  nop
/* 107398 8015FF28 45000003 */  bc1f       .L8015FF38_ovl5
/* 10739C 8015FF2C 00000000 */   nop
/* 1073A0 8015FF30 10000051 */  b          .L80160078_ovl5
/* 1073A4 8015FF34 24020001 */   addiu     $v0, $zero, 0x1
.L8015FF38_ovl5:
/* 1073A8 8015FF38 11C0000B */  beqz       $t6, .L8015FF68_ovl5
/* 1073AC 8015FF3C 3C0F8019 */   lui       $t7, %hi(D_8018E038_ovl5)
/* 1073B0 8015FF40 8DEFE038 */  lw         $t7, %lo(D_8018E038_ovl5)($t7)
/* 1073B4 8015FF44 000FC080 */  sll        $t8, $t7, 2
/* 1073B8 8015FF48 0058C821 */  addu       $t9, $v0, $t8
/* 1073BC 8015FF4C C72A0000 */  lwc1       $f10, 0x0($t9)
/* 1073C0 8015FF50 4600503C */  c.lt.s     $f10, $f0
/* 1073C4 8015FF54 00000000 */  nop
/* 1073C8 8015FF58 45020004 */  bc1fl      .L8015FF6C_ovl5
/* 1073CC 8015FF5C 93A80027 */   lbu       $t0, 0x27($sp)
/* 1073D0 8015FF60 10000045 */  b          .L80160078_ovl5
/* 1073D4 8015FF64 24020001 */   addiu     $v0, $zero, 0x1
.L8015FF68_ovl5:
/* 1073D8 8015FF68 93A80027 */  lbu        $t0, 0x27($sp)
.L8015FF6C_ovl5:
/* 1073DC 8015FF6C 3C098019 */  lui        $t1, %hi(D_8018E03C_ovl5)
/* 1073E0 8015FF70 51000041 */  beql       $t0, $zero, .L80160078_ovl5
/* 1073E4 8015FF74 00001025 */   or        $v0, $zero, $zero
/* 1073E8 8015FF78 8D29E03C */  lw         $t1, %lo(D_8018E03C_ovl5)($t1)
/* 1073EC 8015FF7C 00095080 */  sll        $t2, $t1, 2
/* 1073F0 8015FF80 004A5821 */  addu       $t3, $v0, $t2
/* 1073F4 8015FF84 C5700000 */  lwc1       $f16, 0x0($t3)
/* 1073F8 8015FF88 4600803C */  c.lt.s     $f16, $f0
/* 1073FC 8015FF8C 00000000 */  nop
/* 107400 8015FF90 45020039 */  bc1fl      .L80160078_ovl5
/* 107404 8015FF94 00001025 */   or        $v0, $zero, $zero
/* 107408 8015FF98 10000037 */  b          .L80160078_ovl5
/* 10740C 8015FF9C 24020001 */   addiu     $v0, $zero, 0x1
.L8015FFA0_ovl5:
/* 107410 8015FFA0 1180000B */  beqz       $t4, .L8015FFD0_ovl5
/* 107414 8015FFA4 3C0D8019 */   lui       $t5, %hi(D_8018E030_ovl5)
/* 107418 8015FFA8 8DADE030 */  lw         $t5, %lo(D_8018E030_ovl5)($t5)
/* 10741C 8015FFAC 000D7080 */  sll        $t6, $t5, 2
/* 107420 8015FFB0 004E7821 */  addu       $t7, $v0, $t6
/* 107424 8015FFB4 C5F20000 */  lwc1       $f18, 0x0($t7)
/* 107428 8015FFB8 4612003C */  c.lt.s     $f0, $f18
/* 10742C 8015FFBC 00000000 */  nop
/* 107430 8015FFC0 45020004 */  bc1fl      .L8015FFD4_ovl5
/* 107434 8015FFC4 93B80025 */   lbu       $t8, 0x25($sp)
/* 107438 8015FFC8 1000002B */  b          .L80160078_ovl5
/* 10743C 8015FFCC 24020001 */   addiu     $v0, $zero, 0x1
.L8015FFD0_ovl5:
/* 107440 8015FFD0 93B80025 */  lbu        $t8, 0x25($sp)
.L8015FFD4_ovl5:
/* 107444 8015FFD4 3C198019 */  lui        $t9, %hi(D_8018E034_ovl5)
/* 107448 8015FFD8 93AA0026 */  lbu        $t2, 0x26($sp)
/* 10744C 8015FFDC 1300000B */  beqz       $t8, .L8016000C_ovl5
/* 107450 8015FFE0 00000000 */   nop
/* 107454 8015FFE4 8F39E034 */  lw         $t9, %lo(D_8018E034_ovl5)($t9)
/* 107458 8015FFE8 00194080 */  sll        $t0, $t9, 2
/* 10745C 8015FFEC 00484821 */  addu       $t1, $v0, $t0
/* 107460 8015FFF0 C5240000 */  lwc1       $f4, 0x0($t1)
/* 107464 8015FFF4 4604003C */  c.lt.s     $f0, $f4
/* 107468 8015FFF8 00000000 */  nop
/* 10746C 8015FFFC 45000003 */  bc1f       .L8016000C_ovl5
/* 107470 80160000 00000000 */   nop
/* 107474 80160004 1000001C */  b          .L80160078_ovl5
/* 107478 80160008 24020001 */   addiu     $v0, $zero, 0x1
.L8016000C_ovl5:
/* 10747C 8016000C 1140000B */  beqz       $t2, .L8016003C_ovl5
/* 107480 80160010 3C0B8019 */   lui       $t3, %hi(D_8018E038_ovl5)
/* 107484 80160014 8D6BE038 */  lw         $t3, %lo(D_8018E038_ovl5)($t3)
/* 107488 80160018 000B6080 */  sll        $t4, $t3, 2
/* 10748C 8016001C 004C6821 */  addu       $t5, $v0, $t4
/* 107490 80160020 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 107494 80160024 4606003C */  c.lt.s     $f0, $f6
/* 107498 80160028 00000000 */  nop
/* 10749C 8016002C 45020004 */  bc1fl      .L80160040_ovl5
/* 1074A0 80160030 93AE0027 */   lbu       $t6, 0x27($sp)
/* 1074A4 80160034 10000010 */  b          .L80160078_ovl5
/* 1074A8 80160038 24020001 */   addiu     $v0, $zero, 0x1
.L8016003C_ovl5:
/* 1074AC 8016003C 93AE0027 */  lbu        $t6, 0x27($sp)
.L80160040_ovl5:
/* 1074B0 80160040 3C0F8019 */  lui        $t7, %hi(D_8018E03C_ovl5)
/* 1074B4 80160044 51C0000C */  beql       $t6, $zero, .L80160078_ovl5
/* 1074B8 80160048 00001025 */   or        $v0, $zero, $zero
/* 1074BC 8016004C 8DEFE03C */  lw         $t7, %lo(D_8018E03C_ovl5)($t7)
/* 1074C0 80160050 000FC080 */  sll        $t8, $t7, 2
/* 1074C4 80160054 0058C821 */  addu       $t9, $v0, $t8
/* 1074C8 80160058 C7280000 */  lwc1       $f8, 0x0($t9)
/* 1074CC 8016005C 4608003C */  c.lt.s     $f0, $f8
/* 1074D0 80160060 00000000 */  nop
/* 1074D4 80160064 45020004 */  bc1fl      .L80160078_ovl5
/* 1074D8 80160068 00001025 */   or        $v0, $zero, $zero
/* 1074DC 8016006C 10000002 */  b          .L80160078_ovl5
/* 1074E0 80160070 24020001 */   addiu     $v0, $zero, 0x1
/* 1074E4 80160074 00001025 */  or         $v0, $zero, $zero
.L80160078_ovl5:
/* 1074E8 80160078 8FB00014 */  lw         $s0, 0x14($sp)
/* 1074EC 8016007C 8FB10018 */  lw         $s1, 0x18($sp)
/* 1074F0 80160080 03E00008 */  jr         $ra
/* 1074F4 80160084 27BD0030 */   addiu     $sp, $sp, 0x30
