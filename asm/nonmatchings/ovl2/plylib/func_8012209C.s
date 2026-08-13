nonmatching func_8012209C, 0x3C4

glabel func_8012209C
    /* AAB0C 8012209C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* AAB10 801220A0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* AAB14 801220A4 910E000B */  lbu        $t6, 0xB($t0)
    /* AAB18 801220A8 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* AAB1C 801220AC AFBF001C */  sw         $ra, 0x1C($sp)
    /* AAB20 801220B0 15C000E6 */  bnez       $t6, .L8012244C
    /* AAB24 801220B4 3C0F8005 */   lui       $t7, %hi(omCurrentObj)
    /* AAB28 801220B8 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* AAB2C 801220BC 3C04800E */  lui        $a0, %hi(D_800E5F90)
    /* AAB30 801220C0 8DF80000 */  lw         $t8, 0x0($t7)
    /* AAB34 801220C4 0018C880 */  sll        $t9, $t8, 2
    /* AAB38 801220C8 00992021 */  addu       $a0, $a0, $t9
    /* AAB3C 801220CC 0C03E50E */  jal        func_800F9438
    /* AAB40 801220D0 8C845F90 */   lw        $a0, %lo(D_800E5F90)($a0)
    /* AAB44 801220D4 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* AAB48 801220D8 14400003 */  bnez       $v0, .L801220E8
    /* AAB4C 801220DC 2529A7C4 */   addiu     $t1, $t1, %lo(omCurrentObj)
    /* AAB50 801220E0 100000DB */  b          .L80122450
    /* AAB54 801220E4 00001025 */   or        $v0, $zero, $zero
  .L801220E8:
    /* AAB58 801220E8 8D220000 */  lw         $v0, 0x0($t1)
    /* AAB5C 801220EC 3C05800E */  lui        $a1, %hi(D_800E0490)
    /* AAB60 801220F0 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* AAB64 801220F4 8C430000 */  lw         $v1, 0x0($v0)
    /* AAB68 801220F8 24060001 */  addiu      $a2, $zero, 0x1
    /* AAB6C 801220FC 24070008 */  addiu      $a3, $zero, 0x8
    /* AAB70 80122100 00031880 */  sll        $v1, $v1, 2
    /* AAB74 80122104 00A32821 */  addu       $a1, $a1, $v1
    /* AAB78 80122108 8CA50490 */  lw         $a1, %lo(D_800E0490)($a1)
    /* AAB7C 8012210C 00230821 */  addu       $at, $at, $v1
    /* AAB80 80122110 C4242B10 */  lwc1       $f4, %lo(gEntitiesPosXArray)($at)
    /* AAB84 80122114 8CA40004 */  lw         $a0, 0x4($a1)
    /* AAB88 80122118 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* AAB8C 8012211C E7A40048 */  swc1       $f4, 0x48($sp)
    /* AAB90 80122120 8C4A0000 */  lw         $t2, 0x0($v0)
    /* AAB94 80122124 C4880000 */  lwc1       $f8, 0x0($a0)
    /* AAB98 80122128 27A5003C */  addiu      $a1, $sp, 0x3C
    /* AAB9C 8012212C 000A5880 */  sll        $t3, $t2, 2
    /* AABA0 80122130 002B0821 */  addu       $at, $at, $t3
    /* AABA4 80122134 C4262CD0 */  lwc1       $f6, %lo(gEntitiesPosYArray)($at)
    /* AABA8 80122138 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* AABAC 8012213C 46083280 */  add.s      $f10, $f6, $f8
    /* AABB0 80122140 E7AA004C */  swc1       $f10, 0x4C($sp)
    /* AABB4 80122144 8C4C0000 */  lw         $t4, 0x0($v0)
    /* AABB8 80122148 000C6880 */  sll        $t5, $t4, 2
    /* AABBC 8012214C 002D0821 */  addu       $at, $at, $t5
    /* AABC0 80122150 C4302E90 */  lwc1       $f16, %lo(gEntitiesPosZArray)($at)
    /* AABC4 80122154 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* AABC8 80122158 27AC0038 */  addiu      $t4, $sp, 0x38
    /* AABCC 8012215C E7B00050 */  swc1       $f16, 0x50($sp)
    /* AABD0 80122160 8C4E0000 */  lw         $t6, 0x0($v0)
    /* AABD4 80122164 000E7880 */  sll        $t7, $t6, 2
    /* AABD8 80122168 002F0821 */  addu       $at, $at, $t7
    /* AABDC 8012216C C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* AABE0 80122170 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* AABE4 80122174 E7B2003C */  swc1       $f18, 0x3C($sp)
    /* AABE8 80122178 8C580000 */  lw         $t8, 0x0($v0)
    /* AABEC 8012217C C4860000 */  lwc1       $f6, 0x0($a0)
    /* AABF0 80122180 27A40048 */  addiu      $a0, $sp, 0x48
    /* AABF4 80122184 0018C880 */  sll        $t9, $t8, 2
    /* AABF8 80122188 00390821 */  addu       $at, $at, $t9
    /* AABFC 8012218C C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* AAC00 80122190 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* AAC04 80122194 46062200 */  add.s      $f8, $f4, $f6
    /* AAC08 80122198 44802000 */  mtc1       $zero, $f4
    /* AAC0C 8012219C E7A80040 */  swc1       $f8, 0x40($sp)
    /* AAC10 801221A0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* AAC14 801221A4 000A5880 */  sll        $t3, $t2, 2
    /* AAC18 801221A8 002B0821 */  addu       $at, $at, $t3
    /* AAC1C 801221AC C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* AAC20 801221B0 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* AAC24 801221B4 E7AA0044 */  swc1       $f10, 0x44($sp)
    /* AAC28 801221B8 8C430000 */  lw         $v1, 0x0($v0)
    /* AAC2C 801221BC 00031880 */  sll        $v1, $v1, 2
    /* AAC30 801221C0 00230821 */  addu       $at, $at, $v1
    /* AAC34 801221C4 C4306BD0 */  lwc1       $f16, %lo(D_800E6BD0)($at)
    /* AAC38 801221C8 3C01800E */  lui        $at, %hi(D_800E6D90)
    /* AAC3C 801221CC 00230821 */  addu       $at, $at, $v1
    /* AAC40 801221D0 C4326D90 */  lwc1       $f18, %lo(D_800E6D90)($at)
    /* AAC44 801221D4 46128001 */  sub.s      $f0, $f16, $f18
    /* AAC48 801221D8 46040032 */  c.eq.s     $f0, $f4
    /* AAC4C 801221DC 00000000 */  nop
    /* AAC50 801221E0 45030062 */  bc1tl      .L8012236C
    /* AAC54 801221E4 8D2D0000 */   lw        $t5, 0x0($t1)
    /* AAC58 801221E8 AFAC0010 */  sw         $t4, 0x10($sp)
    /* AAC5C 801221EC 0C0412AD */  jal        func_80104AB4
    /* AAC60 801221F0 E7A00060 */   swc1      $f0, 0x60($sp)
    /* AAC64 801221F4 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* AAC68 801221F8 2529A7C4 */  addiu      $t1, $t1, %lo(omCurrentObj)
    /* AAC6C 801221FC 1040005A */  beqz       $v0, .L80122368
    /* AAC70 80122200 C7A00060 */   lwc1      $f0, 0x60($sp)
    /* AAC74 80122204 8FA40038 */  lw         $a0, 0x38($sp)
    /* AAC78 80122208 27A50054 */  addiu      $a1, $sp, 0x54
    /* AAC7C 8012220C 0C043700 */  jal        func_8010DC00
    /* AAC80 80122210 E7A00060 */   swc1      $f0, 0x60($sp)
    /* AAC84 80122214 C7A60058 */  lwc1       $f6, 0x58($sp)
    /* AAC88 80122218 44804000 */  mtc1       $zero, $f8
    /* AAC8C 8012221C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* AAC90 80122220 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* AAC94 80122224 46083032 */  c.eq.s     $f6, $f8
    /* AAC98 80122228 2529A7C4 */  addiu      $t1, $t1, %lo(omCurrentObj)
    /* AAC9C 8012222C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* AACA0 80122230 C7A00060 */  lwc1       $f0, 0x60($sp)
    /* AACA4 80122234 4502004D */  bc1fl      .L8012236C
    /* AACA8 80122238 8D2D0000 */   lw        $t5, 0x0($t1)
    /* AACAC 8012223C 44805000 */  mtc1       $zero, $f10
    /* AACB0 80122240 240C0003 */  addiu      $t4, $zero, 0x3
    /* AACB4 80122244 4600503C */  c.lt.s     $f10, $f0
    /* AACB8 80122248 00000000 */  nop
    /* AACBC 8012224C 45020025 */  bc1fl      .L801222E4
    /* AACC0 80122250 8D0200A0 */   lw        $v0, 0xA0($t0)
    /* AACC4 80122254 8D0200A0 */  lw         $v0, 0xA0($t0)
    /* AACC8 80122258 24010006 */  addiu      $at, $zero, 0x6
    /* AACCC 8012225C 240C0004 */  addiu      $t4, $zero, 0x4
    /* AACD0 80122260 1041001D */  beq        $v0, $at, .L801222D8
    /* AACD4 80122264 2401001B */   addiu     $at, $zero, 0x1B
    /* AACD8 80122268 1041001B */  beq        $v0, $at, .L801222D8
    /* AACDC 8012226C 24010021 */   addiu     $at, $zero, 0x21
    /* AACE0 80122270 10410019 */  beq        $v0, $at, .L801222D8
    /* AACE4 80122274 00000000 */   nop
    /* AACE8 80122278 8D2D0000 */  lw         $t5, 0x0($t1)
    /* AACEC 8012227C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* AACF0 80122280 44818000 */  mtc1       $at, $f16
    /* AACF4 80122284 8DAE0000 */  lw         $t6, 0x0($t5)
    /* AACF8 80122288 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* AACFC 8012228C 000E7880 */  sll        $t7, $t6, 2
    /* AAD00 80122290 002F0821 */  addu       $at, $at, $t7
    /* AAD04 80122294 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* AAD08 80122298 46128032 */  c.eq.s     $f16, $f18
    /* AAD0C 8012229C 00000000 */  nop
    /* AAD10 801222A0 4502000A */  bc1fl      .L801222CC
    /* AAD14 801222A4 8D0A0034 */   lw        $t2, 0x34($t0)
    /* AAD18 801222A8 8D020034 */  lw         $v0, 0x34($t0)
    /* AAD1C 801222AC 30580001 */  andi       $t8, $v0, 0x1
    /* AAD20 801222B0 17000003 */  bnez       $t8, .L801222C0
    /* AAD24 801222B4 34590001 */   ori       $t9, $v0, 0x1
    /* AAD28 801222B8 10000007 */  b          .L801222D8
    /* AAD2C 801222BC AD190034 */   sw        $t9, 0x34($t0)
  .L801222C0:
    /* AAD30 801222C0 10000005 */  b          .L801222D8
    /* AAD34 801222C4 AD000020 */   sw        $zero, 0x20($t0)
    /* AAD38 801222C8 8D0A0034 */  lw         $t2, 0x34($t0)
  .L801222CC:
    /* AAD3C 801222CC 2401FFFE */  addiu      $at, $zero, -0x2
    /* AAD40 801222D0 01415824 */  and        $t3, $t2, $at
    /* AAD44 801222D4 AD0B0034 */  sw         $t3, 0x34($t0)
  .L801222D8:
    /* AAD48 801222D8 1000005C */  b          .L8012244C
    /* AAD4C 801222DC A10C000B */   sb        $t4, 0xB($t0)
    /* AAD50 801222E0 8D0200A0 */  lw         $v0, 0xA0($t0)
  .L801222E4:
    /* AAD54 801222E4 24010006 */  addiu      $at, $zero, 0x6
    /* AAD58 801222E8 1041001D */  beq        $v0, $at, .L80122360
    /* AAD5C 801222EC 2401001B */   addiu     $at, $zero, 0x1B
    /* AAD60 801222F0 1041001B */  beq        $v0, $at, .L80122360
    /* AAD64 801222F4 24010021 */   addiu     $at, $zero, 0x21
    /* AAD68 801222F8 10410019 */  beq        $v0, $at, .L80122360
    /* AAD6C 801222FC 00000000 */   nop
    /* AAD70 80122300 8D2D0000 */  lw         $t5, 0x0($t1)
    /* AAD74 80122304 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AAD78 80122308 44812000 */  mtc1       $at, $f4
    /* AAD7C 8012230C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* AAD80 80122310 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* AAD84 80122314 000E7880 */  sll        $t7, $t6, 2
    /* AAD88 80122318 002F0821 */  addu       $at, $at, $t7
    /* AAD8C 8012231C C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
    /* AAD90 80122320 46062032 */  c.eq.s     $f4, $f6
    /* AAD94 80122324 00000000 */  nop
    /* AAD98 80122328 4502000A */  bc1fl      .L80122354
    /* AAD9C 8012232C 8D0A0034 */   lw        $t2, 0x34($t0)
    /* AADA0 80122330 8D020034 */  lw         $v0, 0x34($t0)
    /* AADA4 80122334 30580001 */  andi       $t8, $v0, 0x1
    /* AADA8 80122338 17000003 */  bnez       $t8, .L80122348
    /* AADAC 8012233C 34590001 */   ori       $t9, $v0, 0x1
    /* AADB0 80122340 10000007 */  b          .L80122360
    /* AADB4 80122344 AD190034 */   sw        $t9, 0x34($t0)
  .L80122348:
    /* AADB8 80122348 10000005 */  b          .L80122360
    /* AADBC 8012234C AD000020 */   sw        $zero, 0x20($t0)
    /* AADC0 80122350 8D0A0034 */  lw         $t2, 0x34($t0)
  .L80122354:
    /* AADC4 80122354 2401FFFE */  addiu      $at, $zero, -0x2
    /* AADC8 80122358 01415824 */  and        $t3, $t2, $at
    /* AADCC 8012235C AD0B0034 */  sw         $t3, 0x34($t0)
  .L80122360:
    /* AADD0 80122360 1000003A */  b          .L8012244C
    /* AADD4 80122364 A10C000B */   sb        $t4, 0xB($t0)
  .L80122368:
    /* AADD8 80122368 8D2D0000 */  lw         $t5, 0x0($t1)
  .L8012236C:
    /* AADDC 8012236C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* AADE0 80122370 44808000 */  mtc1       $zero, $f16
    /* AADE4 80122374 8DA30000 */  lw         $v1, 0x0($t5)
    /* AADE8 80122378 27A40048 */  addiu      $a0, $sp, 0x48
    /* AADEC 8012237C 27A5003C */  addiu      $a1, $sp, 0x3C
    /* AADF0 80122380 00031880 */  sll        $v1, $v1, 2
    /* AADF4 80122384 00230821 */  addu       $at, $at, $v1
    /* AADF8 80122388 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* AADFC 8012238C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* AAE00 80122390 00230821 */  addu       $at, $at, $v1
    /* AAE04 80122394 C42A2CD0 */  lwc1       $f10, %lo(gEntitiesPosYArray)($at)
    /* AAE08 80122398 24060001 */  addiu      $a2, $zero, 0x1
    /* AAE0C 8012239C 24070008 */  addiu      $a3, $zero, 0x8
    /* AAE10 801223A0 460A4001 */  sub.s      $f0, $f8, $f10
    /* AAE14 801223A4 27AE0038 */  addiu      $t6, $sp, 0x38
    /* AAE18 801223A8 46100032 */  c.eq.s     $f0, $f16
    /* AAE1C 801223AC 00000000 */  nop
    /* AAE20 801223B0 45010024 */  bc1t       .L80122444
    /* AAE24 801223B4 00000000 */   nop
    /* AAE28 801223B8 AFAE0010 */  sw         $t6, 0x10($sp)
    /* AAE2C 801223BC 0C0412AD */  jal        func_80104AB4
    /* AAE30 801223C0 E7A00064 */   swc1      $f0, 0x64($sp)
    /* AAE34 801223C4 1040001F */  beqz       $v0, .L80122444
    /* AAE38 801223C8 C7A00064 */   lwc1      $f0, 0x64($sp)
    /* AAE3C 801223CC 8FA40038 */  lw         $a0, 0x38($sp)
    /* AAE40 801223D0 27A50054 */  addiu      $a1, $sp, 0x54
    /* AAE44 801223D4 0C043700 */  jal        func_8010DC00
    /* AAE48 801223D8 E7A00064 */   swc1      $f0, 0x64($sp)
    /* AAE4C 801223DC C7B20054 */  lwc1       $f18, 0x54($sp)
    /* AAE50 801223E0 44802000 */  mtc1       $zero, $f4
    /* AAE54 801223E4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* AAE58 801223E8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* AAE5C 801223EC 46049032 */  c.eq.s     $f18, $f4
    /* AAE60 801223F0 C7A00064 */  lwc1       $f0, 0x64($sp)
    /* AAE64 801223F4 C7A6005C */  lwc1       $f6, 0x5C($sp)
    /* AAE68 801223F8 45000012 */  bc1f       .L80122444
    /* AAE6C 801223FC 00000000 */   nop
    /* AAE70 80122400 44804000 */  mtc1       $zero, $f8
    /* AAE74 80122404 00000000 */  nop
    /* AAE78 80122408 46083032 */  c.eq.s     $f6, $f8
    /* AAE7C 8012240C 00000000 */  nop
    /* AAE80 80122410 4500000C */  bc1f       .L80122444
    /* AAE84 80122414 00000000 */   nop
    /* AAE88 80122418 44805000 */  mtc1       $zero, $f10
    /* AAE8C 8012241C 240F0001 */  addiu      $t7, $zero, 0x1
    /* AAE90 80122420 24180002 */  addiu      $t8, $zero, 0x2
    /* AAE94 80122424 4600503C */  c.lt.s     $f10, $f0
    /* AAE98 80122428 00000000 */  nop
    /* AAE9C 8012242C 45000003 */  bc1f       .L8012243C
    /* AAEA0 80122430 00000000 */   nop
    /* AAEA4 80122434 10000005 */  b          .L8012244C
    /* AAEA8 80122438 A10F000B */   sb        $t7, 0xB($t0)
  .L8012243C:
    /* AAEAC 8012243C 10000003 */  b          .L8012244C
    /* AAEB0 80122440 A118000B */   sb        $t8, 0xB($t0)
  .L80122444:
    /* AAEB4 80122444 10000002 */  b          .L80122450
    /* AAEB8 80122448 00001025 */   or        $v0, $zero, $zero
  .L8012244C:
    /* AAEBC 8012244C 24020001 */  addiu      $v0, $zero, 0x1
  .L80122450:
    /* AAEC0 80122450 8FBF001C */  lw         $ra, 0x1C($sp)
    /* AAEC4 80122454 27BD0068 */  addiu      $sp, $sp, 0x68
    /* AAEC8 80122458 03E00008 */  jr         $ra
    /* AAECC 8012245C 00000000 */   nop
endlabel func_8012209C
.size func_8012209C, . - func_8012209C
