glabel func_8015632C_ovl4
/* FD85C 8015632C 3C028016 */  lui        $v0, %hi(D_8015C6DC_ovl4)
/* FD860 80156330 8C42C6DC */  lw         $v0, %lo(D_8015C6DC_ovl4)($v0)
/* FD864 80156334 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FD868 80156338 AFBF0014 */  sw         $ra, 0x14($sp)
/* FD86C 8015633C 10400009 */  beqz       $v0, .L80156364_ovl4
/* FD870 80156340 00802825 */   or        $a1, $a0, $zero
/* FD874 80156344 24010001 */  addiu      $at, $zero, 0x1
/* FD878 80156348 10410041 */  beq        $v0, $at, .L80156450_ovl4
/* FD87C 8015634C 3C03800D */   lui       $v1, %hi(D_800D6B88)
/* FD880 80156350 24010002 */  addiu      $at, $zero, 0x2
/* FD884 80156354 1041005E */  beq        $v0, $at, .L801564D0_ovl4
/* FD888 80156358 00000000 */   nop
/* FD88C 8015635C 1000007D */  b          .L80156554_ovl4
/* FD890 80156360 8FBF0014 */   lw        $ra, 0x14($sp)
.L80156364_ovl4:
/* FD894 80156364 3C03800D */  lui        $v1, %hi(D_800D6B88)
/* FD898 80156368 24636B88 */  addiu      $v1, $v1, %lo(D_800D6B88)
/* FD89C 8015636C 8C640000 */  lw         $a0, 0x0($v1)
/* FD8A0 80156370 0C05556B */  jal        func_801555AC_ovl4
/* FD8A4 80156374 AFA50018 */   sw        $a1, 0x18($sp)
/* FD8A8 80156378 3C03800D */  lui        $v1, %hi(D_800D6B88)
/* FD8AC 8015637C 24636B88 */  addiu      $v1, $v1, %lo(D_800D6B88)
/* FD8B0 80156380 10400073 */  beqz       $v0, .L80156550_ovl4
/* FD8B4 80156384 8FA50018 */   lw        $a1, 0x18($sp)
/* FD8B8 80156388 3C028016 */  lui        $v0, %hi(D_8015C6D4_ovl4)
/* FD8BC 8015638C 8C42C6D4 */  lw         $v0, %lo(D_8015C6D4_ovl4)($v0)
/* FD8C0 80156390 24010001 */  addiu      $at, $zero, 0x1
/* FD8C4 80156394 50400008 */  beql       $v0, $zero, .L801563B8_ovl4
/* FD8C8 80156398 8C6E0000 */   lw        $t6, 0x0($v1)
/* FD8CC 8015639C 10410012 */  beq        $v0, $at, .L801563E8_ovl4
/* FD8D0 801563A0 24010002 */   addiu     $at, $zero, 0x2
/* FD8D4 801563A4 5041001E */  beql       $v0, $at, .L80156420_ovl4
/* FD8D8 801563A8 8C780000 */   lw        $t8, 0x0($v1)
/* FD8DC 801563AC 10000069 */  b          .L80156554_ovl4
/* FD8E0 801563B0 8FBF0014 */   lw        $ra, 0x14($sp)
/* FD8E4 801563B4 8C6E0000 */  lw         $t6, 0x0($v1)
.L801563B8_ovl4:
/* FD8E8 801563B8 3C028016 */  lui        $v0, %hi(func_8015ADF8_ovl3 + 0x174)
/* FD8EC 801563BC 2442AF6C */  addiu      $v0, $v0, %lo(func_8015ADF8_ovl3 + 0x174)
/* FD8F0 801563C0 000E78C0 */  sll        $t7, $t6, 3
/* FD8F4 801563C4 004FC021 */  addu       $t8, $v0, $t7
/* FD8F8 801563C8 C7040000 */  lwc1       $f4, 0x0($t8)
.L801563CC_ovl3:
/* FD8FC 801563CC E4A40020 */  swc1       $f4, 0x20($a1)
/* FD900 801563D0 8C790000 */  lw         $t9, 0x0($v1)
/* FD904 801563D4 001940C0 */  sll        $t0, $t9, 3
/* FD908 801563D8 00484821 */  addu       $t1, $v0, $t0
/* FD90C 801563DC C5260004 */  lwc1       $f6, 0x4($t1)
/* FD910 801563E0 1000005B */  b          .L80156550_ovl4
/* FD914 801563E4 E4A60024 */   swc1      $f6, 0x24($a1)
.L801563E8_ovl4:
/* FD918 801563E8 8C6A0000 */  lw         $t2, 0x0($v1)
/* FD91C 801563EC 3C028016 */  lui        $v0, %hi(func_8015ADF8_ovl3 + 0x20C)
/* FD920 801563F0 2442B004 */  addiu      $v0, $v0, %lo(func_8015ADF8_ovl3 + 0x20C)
/* FD924 801563F4 000A58C0 */  sll        $t3, $t2, 3
/* FD928 801563F8 004B6021 */  addu       $t4, $v0, $t3
.L801563FC_ovl3:
/* FD92C 801563FC C5880000 */  lwc1       $f8, 0x0($t4)
/* FD930 80156400 E4A80020 */  swc1       $f8, 0x20($a1)
/* FD934 80156404 8C6D0000 */  lw         $t5, 0x0($v1)
/* FD938 80156408 000D70C0 */  sll        $t6, $t5, 3
/* FD93C 8015640C 004E7821 */  addu       $t7, $v0, $t6
/* FD940 80156410 C5EA0004 */  lwc1       $f10, 0x4($t7)
/* FD944 80156414 1000004E */  b          .L80156550_ovl4
/* FD948 80156418 E4AA0024 */   swc1      $f10, 0x24($a1)
/* FD94C 8015641C 8C780000 */  lw         $t8, 0x0($v1)
.L80156420_ovl4:
/* FD950 80156420 3C028016 */  lui        $v0, %hi(func_8015ADF8_ovl3 + 0x244)
/* FD954 80156424 2442B03C */  addiu      $v0, $v0, %lo(func_8015ADF8_ovl3 + 0x244)
/* FD958 80156428 0018C8C0 */  sll        $t9, $t8, 3
/* FD95C 8015642C 00594021 */  addu       $t0, $v0, $t9
/* FD960 80156430 C5100000 */  lwc1       $f16, 0x0($t0)
.L80156434_ovl3:
/* FD964 80156434 E4B00020 */  swc1       $f16, 0x20($a1)
/* FD968 80156438 8C690000 */  lw         $t1, 0x0($v1)
/* FD96C 8015643C 000950C0 */  sll        $t2, $t1, 3
/* FD970 80156440 004A5821 */  addu       $t3, $v0, $t2
/* FD974 80156444 C5720004 */  lwc1       $f18, 0x4($t3)
/* FD978 80156448 10000041 */  b          .L80156550_ovl4
/* FD97C 8015644C E4B20024 */   swc1      $f18, 0x24($a1)
.L80156450_ovl4:
/* FD980 80156450 3C048016 */  lui        $a0, %hi(D_8015C6E0_ovl4)
/* FD984 80156454 2484C6E0 */  addiu      $a0, $a0, %lo(D_8015C6E0_ovl4)
/* FD988 80156458 8C8C0000 */  lw         $t4, 0x0($a0)
/* FD98C 8015645C 24636B88 */  addiu      $v1, $v1, %lo(D_800D6B88)
/* FD990 80156460 8C6F0000 */  lw         $t7, 0x0($v1)
/* FD994 80156464 000C6880 */  sll        $t5, $t4, 2
.L80156468_ovl3:
/* FD998 80156468 3C028016 */  lui        $v0, %hi(D_8015B34C_ovl4)
.L8015646C_ovl3:
/* FD99C 8015646C 01AC6823 */  subu       $t5, $t5, $t4
/* FD9A0 80156470 2442B34C */  addiu      $v0, $v0, %lo(D_8015B34C_ovl4)
/* FD9A4 80156474 000D68C0 */  sll        $t5, $t5, 3
/* FD9A8 80156478 004D7021 */  addu       $t6, $v0, $t5
/* FD9AC 8015647C 000FC0C0 */  sll        $t8, $t7, 3
/* FD9B0 80156480 01D8C821 */  addu       $t9, $t6, $t8
/* FD9B4 80156484 8F280000 */  lw         $t0, 0x0($t9)
/* FD9B8 80156488 44882000 */  mtc1       $t0, $f4
.L8015648C_ovl3:
/* FD9BC 8015648C 00000000 */  nop
/* FD9C0 80156490 468021A0 */  cvt.s.w    $f6, $f4
/* FD9C4 80156494 E4A60020 */  swc1       $f6, 0x20($a1)
/* FD9C8 80156498 8C890000 */  lw         $t1, 0x0($a0)
/* FD9CC 8015649C 8C6C0000 */  lw         $t4, 0x0($v1)
/* FD9D0 801564A0 00095080 */  sll        $t2, $t1, 2
/* FD9D4 801564A4 01495023 */  subu       $t2, $t2, $t1
/* FD9D8 801564A8 000A50C0 */  sll        $t2, $t2, 3
/* FD9DC 801564AC 004A5821 */  addu       $t3, $v0, $t2
/* FD9E0 801564B0 000C68C0 */  sll        $t5, $t4, 3
/* FD9E4 801564B4 016D7821 */  addu       $t7, $t3, $t5
.L801564B8_ovl3:
/* FD9E8 801564B8 8DEE0004 */  lw         $t6, 0x4($t7)
/* FD9EC 801564BC 448E4000 */  mtc1       $t6, $f8
/* FD9F0 801564C0 00000000 */  nop
/* FD9F4 801564C4 468042A0 */  cvt.s.w    $f10, $f8
/* FD9F8 801564C8 10000021 */  b          .L80156550_ovl4
/* FD9FC 801564CC E4AA0024 */   swc1      $f10, 0x24($a1)
.L801564D0_ovl4:
/* FDA00 801564D0 3C048016 */  lui        $a0, %hi(D_8015C6E4_ovl4)
/* FDA04 801564D4 2484C6E4 */  addiu      $a0, $a0, %lo(D_8015C6E4_ovl4)
/* FDA08 801564D8 8C980000 */  lw         $t8, 0x0($a0)
/* FDA0C 801564DC 3C03800D */  lui        $v1, %hi(D_800D6B88)
/* FDA10 801564E0 24636B88 */  addiu      $v1, $v1, %lo(D_800D6B88)
/* FDA14 801564E4 8C690000 */  lw         $t1, 0x0($v1)
/* FDA18 801564E8 0018C880 */  sll        $t9, $t8, 2
/* FDA1C 801564EC 3C028016 */  lui        $v0, %hi(D_8015B5C4_ovl4)
/* FDA20 801564F0 0338C823 */  subu       $t9, $t9, $t8
/* FDA24 801564F4 2442B5C4 */  addiu      $v0, $v0, %lo(D_8015B5C4_ovl4)
/* FDA28 801564F8 0019C8C0 */  sll        $t9, $t9, 3
.L801564FC_ovl3:
/* FDA2C 801564FC 00594021 */  addu       $t0, $v0, $t9
/* FDA30 80156500 000950C0 */  sll        $t2, $t1, 3
/* FDA34 80156504 010A6021 */  addu       $t4, $t0, $t2
/* FDA38 80156508 8D8B0000 */  lw         $t3, 0x0($t4)
/* FDA3C 8015650C 448B8000 */  mtc1       $t3, $f16
/* FDA40 80156510 00000000 */  nop
/* FDA44 80156514 468084A0 */  cvt.s.w    $f18, $f16
/* FDA48 80156518 E4B20020 */  swc1       $f18, 0x20($a1)
/* FDA4C 8015651C 8C8D0000 */  lw         $t5, 0x0($a0)
/* FDA50 80156520 8C780000 */  lw         $t8, 0x0($v1)
/* FDA54 80156524 000D7880 */  sll        $t7, $t5, 2
/* FDA58 80156528 01ED7823 */  subu       $t7, $t7, $t5
/* FDA5C 8015652C 000F78C0 */  sll        $t7, $t7, 3
/* FDA60 80156530 004F7021 */  addu       $t6, $v0, $t7
/* FDA64 80156534 0018C8C0 */  sll        $t9, $t8, 3
/* FDA68 80156538 01D94821 */  addu       $t1, $t6, $t9
/* FDA6C 8015653C 8D280004 */  lw         $t0, 0x4($t1)
.L80156540_ovl3:
/* FDA70 80156540 44882000 */  mtc1       $t0, $f4
/* FDA74 80156544 00000000 */  nop
/* FDA78 80156548 468021A0 */  cvt.s.w    $f6, $f4
/* FDA7C 8015654C E4A60024 */  swc1       $f6, 0x24($a1)
.L80156550_ovl4:
/* FDA80 80156550 8FBF0014 */  lw         $ra, 0x14($sp)
.L80156554_ovl4:
/* FDA84 80156554 27BD0018 */  addiu      $sp, $sp, 0x18
/* FDA88 80156558 03E00008 */  jr         $ra
/* FDA8C 8015655C 00000000 */   nop
