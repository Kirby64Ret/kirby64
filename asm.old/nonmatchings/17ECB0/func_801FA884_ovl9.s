glabel func_801FA884_ovl9
/* 1A88D4 801FA884 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A88D8 801FA888 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A88DC 801FA88C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A88E0 801FA890 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A88E4 801FA894 AFA40020 */  sw         $a0, 0x20($sp)
/* 1A88E8 801FA898 8C450000 */  lw         $a1, 0x0($v0)
/* 1A88EC 801FA89C 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1A88F0 801FA8A0 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1A88F4 801FA8A4 00052880 */  sll        $a1, $a1, 2
/* 1A88F8 801FA8A8 00651821 */  addu       $v1, $v1, $a1
/* 1A88FC 801FA8AC 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1A8900 801FA8B0 00250821 */  addu       $at, $at, $a1
/* 1A8904 801FA8B4 240E0001 */  addiu      $t6, $zero, 0x1
/* 1A8908 801FA8B8 8C660084 */  lw         $a2, 0x84($v1)
/* 1A890C 801FA8BC AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
/* 1A8910 801FA8C0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1A8914 801FA8C4 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1A8918 801FA8C8 3C04801D */  lui        $a0, %hi(D_801CABC4)
/* 1A891C 801FA8CC 000FC080 */  sll        $t8, $t7, 2
/* 1A8920 801FA8D0 00380821 */  addu       $at, $at, $t8
/* 1A8924 801FA8D4 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1A8928 801FA8D8 8C590000 */  lw         $t9, 0x0($v0)
/* 1A892C 801FA8DC 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1A8930 801FA8E0 2484ABC4 */  addiu      $a0, $a0, %lo(D_801CABC4)
/* 1A8934 801FA8E4 00194080 */  sll        $t0, $t9, 2
/* 1A8938 801FA8E8 00280821 */  addu       $at, $at, $t0
/* 1A893C 801FA8EC AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 1A8940 801FA8F0 AFA3001C */  sw         $v1, 0x1C($sp)
/* 1A8944 801FA8F4 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 1A8948 801FA8F8 AFA60018 */   sw        $a2, 0x18($sp)
/* 1A894C 801FA8FC 3C040001 */  lui        $a0, (0x10023 >> 16)
/* 1A8950 801FA900 0C02A5D8 */  jal        func_800A9760
/* 1A8954 801FA904 34840023 */   ori       $a0, $a0, (0x10023 & 0xFFFF)
/* 1A8958 801FA908 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 1A895C 801FA90C 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 1A8960 801FA910 8CE90000 */  lw         $t1, 0x0($a3)
/* 1A8964 801FA914 3C0C800F */  lui        $t4, %hi(D_800E9AA0)
/* 1A8968 801FA918 3C0D8011 */  lui        $t5, %hi(func_8010B480)
/* 1A896C 801FA91C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1A8970 801FA920 8FA3001C */  lw         $v1, 0x1C($sp)
/* 1A8974 801FA924 8FA60018 */  lw         $a2, 0x18($sp)
/* 1A8978 801FA928 000A5880 */  sll        $t3, $t2, 2
/* 1A897C 801FA92C 018B6021 */  addu       $t4, $t4, $t3
/* 1A8980 801FA930 8D8C9AA0 */  lw         $t4, %lo(D_800E9AA0)($t4)
/* 1A8984 801FA934 3C0B8011 */  lui        $t3, %hi(func_8010BA44)
/* 1A8988 801FA938 25ADB480 */  addiu      $t5, $t5, %lo(func_8010B480)
/* 1A898C 801FA93C 11800025 */  beqz       $t4, .L801FA9D4_ovl9
/* 1A8990 801FA940 256BBA44 */   addiu     $t3, $t3, %lo(func_8010BA44)
/* 1A8994 801FA944 3C0E801D */  lui        $t6, %hi(D_801CC01C)
/* 1A8998 801FA948 25CEC01C */  addiu      $t6, $t6, %lo(D_801CC01C)
/* 1A899C 801FA94C AC6D0048 */  sw         $t5, 0x48($v1)
/* 1A89A0 801FA950 AC6E0098 */  sw         $t6, 0x98($v1)
/* 1A89A4 801FA954 8CEF0000 */  lw         $t7, 0x0($a3)
/* 1A89A8 801FA958 3C08800E */  lui        $t0, %hi(D_800DE350)
/* 1A89AC 801FA95C 3C018022 */  lui        $at, %hi(D_8021D978_ovl9)
/* 1A89B0 801FA960 8DF80000 */  lw         $t8, 0x0($t7)
/* 1A89B4 801FA964 C424D978 */  lwc1       $f4, %lo(D_8021D978_ovl9)($at)
/* 1A89B8 801FA968 44801000 */  mtc1       $zero, $f2
/* 1A89BC 801FA96C 0018C880 */  sll        $t9, $t8, 2
/* 1A89C0 801FA970 01194021 */  addu       $t0, $t0, $t9
/* 1A89C4 801FA974 8D08E350 */  lw         $t0, %lo(D_800DE350)($t0)
/* 1A89C8 801FA978 8D09003C */  lw         $t1, 0x3C($t0)
/* 1A89CC 801FA97C 8D2A0010 */  lw         $t2, 0x10($t1)
/* 1A89D0 801FA980 E5440038 */  swc1       $f4, 0x38($t2)
/* 1A89D4 801FA984 C4C00014 */  lwc1       $f0, 0x14($a2)
/* 1A89D8 801FA988 4602003C */  c.lt.s     $f0, $f2
/* 1A89DC 801FA98C 00000000 */  nop
/* 1A89E0 801FA990 45020004 */  bc1fl      .L801FA9A4_ovl9
/* 1A89E4 801FA994 46000306 */   mov.s     $f12, $f0
/* 1A89E8 801FA998 10000002 */  b          .L801FA9A4_ovl9
/* 1A89EC 801FA99C 46000307 */   neg.s     $f12, $f0
/* 1A89F0 801FA9A0 46000306 */  mov.s      $f12, $f0
.L801FA9A4_ovl9:
/* 1A89F4 801FA9A4 C4C00018 */  lwc1       $f0, 0x18($a2)
/* 1A89F8 801FA9A8 46006187 */  neg.s      $f6, $f12
/* 1A89FC 801FA9AC 4602003C */  c.lt.s     $f0, $f2
/* 1A8A00 801FA9B0 00000000 */  nop
/* 1A8A04 801FA9B4 45020004 */  bc1fl      .L801FA9C8_ovl9
/* 1A8A08 801FA9B8 46000086 */   mov.s     $f2, $f0
/* 1A8A0C 801FA9BC 10000002 */  b          .L801FA9C8_ovl9
/* 1A8A10 801FA9C0 46000087 */   neg.s     $f2, $f0
/* 1A8A14 801FA9C4 46000086 */  mov.s      $f2, $f0
.L801FA9C8_ovl9:
/* 1A8A18 801FA9C8 E4C20014 */  swc1       $f2, 0x14($a2)
/* 1A8A1C 801FA9CC 10000005 */  b          .L801FA9E4_ovl9
/* 1A8A20 801FA9D0 E4C60018 */   swc1      $f6, 0x18($a2)
.L801FA9D4_ovl9:
/* 1A8A24 801FA9D4 3C0C801D */  lui        $t4, %hi(D_801CBFF8)
/* 1A8A28 801FA9D8 258CBFF8 */  addiu      $t4, $t4, %lo(D_801CBFF8)
/* 1A8A2C 801FA9DC AC6B0048 */  sw         $t3, 0x48($v1)
/* 1A8A30 801FA9E0 AC6C0098 */  sw         $t4, 0x98($v1)
.L801FA9E4_ovl9:
/* 1A8A34 801FA9E4 8CE20000 */  lw         $v0, 0x0($a3)
/* 1A8A38 801FA9E8 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1A8A3C 801FA9EC 240D0001 */  addiu      $t5, $zero, 0x1
/* 1A8A40 801FA9F0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1A8A44 801FA9F4 44804000 */  mtc1       $zero, $f8
/* 1A8A48 801FA9F8 3C03800E */  lui        $v1, %hi(D_800E3750)
/* 1A8A4C 801FA9FC 000E7880 */  sll        $t7, $t6, 2
/* 1A8A50 801FAA00 002F0821 */  addu       $at, $at, $t7
/* 1A8A54 801FAA04 AC2D8920 */  sw         $t5, %lo(D_800E8920)($at)
/* 1A8A58 801FAA08 8C580000 */  lw         $t8, 0x0($v0)
/* 1A8A5C 801FAA0C 24633750 */  addiu      $v1, $v1, %lo(D_800E3750)
/* 1A8A60 801FAA10 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1A8A64 801FAA14 0018C880 */  sll        $t9, $t8, 2
/* 1A8A68 801FAA18 00794021 */  addu       $t0, $v1, $t9
/* 1A8A6C 801FAA1C E5080000 */  swc1       $f8, 0x0($t0)
/* 1A8A70 801FAA20 8C450000 */  lw         $a1, 0x0($v0)
/* 1A8A74 801FAA24 3C040001 */  lui        $a0, (0x100B6 >> 16)
/* 1A8A78 801FAA28 348400B6 */  ori        $a0, $a0, (0x100B6 & 0xFFFF)
/* 1A8A7C 801FAA2C 00052880 */  sll        $a1, $a1, 2
/* 1A8A80 801FAA30 00654821 */  addu       $t1, $v1, $a1
/* 1A8A84 801FAA34 C52A0000 */  lwc1       $f10, 0x0($t1)
/* 1A8A88 801FAA38 00250821 */  addu       $at, $at, $a1
/* 1A8A8C 801FAA3C E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1A8A90 801FAA40 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1A8A94 801FAA44 3C018022 */  lui        $at, %hi(D_8021D97C_ovl9)
/* 1A8A98 801FAA48 C430D97C */  lwc1       $f16, %lo(D_8021D97C_ovl9)($at)
/* 1A8A9C 801FAA4C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1A8AA0 801FAA50 000A5880 */  sll        $t3, $t2, 2
/* 1A8AA4 801FAA54 002B0821 */  addu       $at, $at, $t3
/* 1A8AA8 801FAA58 0C02A806 */  jal        func_800AA018
/* 1A8AAC 801FAA5C E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
/* 1A8AB0 801FAA60 0C02BE85 */  jal        func_800AFA14
/* 1A8AB4 801FAA64 00000000 */   nop
/* 1A8AB8 801FAA68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A8ABC 801FAA6C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A8AC0 801FAA70 03E00008 */  jr         $ra
/* 1A8AC4 801FAA74 00000000 */   nop
