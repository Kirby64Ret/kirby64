nonmatching func_8017F1C0_ovl3, 0x6F8

glabel func_8017F1C0_ovl3
    /* DFC00 8017F1C0 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* DFC04 8017F1C4 AFB70040 */  sw         $s7, 0x40($sp)
    /* DFC08 8017F1C8 3C178013 */  lui        $s7, %hi(gKirbyState)
    /* DFC0C 8017F1CC 26F7E7C0 */  addiu      $s7, $s7, %lo(gKirbyState)
    /* DFC10 8017F1D0 8EEE00A0 */  lw         $t6, 0xA0($s7)
    /* DFC14 8017F1D4 AFB50038 */  sw         $s5, 0x38($sp)
    /* DFC18 8017F1D8 0080A825 */  or         $s5, $a0, $zero
    /* DFC1C 8017F1DC AFBF0044 */  sw         $ra, 0x44($sp)
    /* DFC20 8017F1E0 AFB6003C */  sw         $s6, 0x3C($sp)
    /* DFC24 8017F1E4 AFB40034 */  sw         $s4, 0x34($sp)
    /* DFC28 8017F1E8 AFB30030 */  sw         $s3, 0x30($sp)
    /* DFC2C 8017F1EC AFB2002C */  sw         $s2, 0x2C($sp)
    /* DFC30 8017F1F0 AFB10028 */  sw         $s1, 0x28($sp)
    /* DFC34 8017F1F4 AFB00024 */  sw         $s0, 0x24($sp)
    /* DFC38 8017F1F8 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* DFC3C 8017F1FC 15C000AC */  bnez       $t6, .L8017F4B0_ovl3
    /* DFC40 8017F200 F7B40010 */   sdc1      $f20, 0x10($sp)
    /* DFC44 8017F204 4480A000 */  mtc1       $zero, $f20
    /* DFC48 8017F208 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* DFC4C 8017F20C AEE00030 */  sw         $zero, 0x30($s7)
    /* DFC50 8017F210 3C018019 */  lui        $at, %hi(D_801976C0_ovl3)
    /* DFC54 8017F214 E6F40040 */  swc1       $f20, 0x40($s7)
    /* DFC58 8017F218 C42476C0 */  lwc1       $f4, %lo(D_801976C0_ovl3)($at)
    /* DFC5C 8017F21C 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* DFC60 8017F220 8E4F0000 */  lw         $t7, 0x0($s2)
    /* DFC64 8017F224 A2E00007 */  sb         $zero, 0x7($s7)
    /* DFC68 8017F228 A2E0000A */  sb         $zero, 0xA($s7)
    /* DFC6C 8017F22C E6E40038 */  swc1       $f4, 0x38($s7)
    /* DFC70 8017F230 8DF80000 */  lw         $t8, 0x0($t7)
    /* DFC74 8017F234 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* DFC78 8017F238 240A0020 */  addiu      $t2, $zero, 0x20
    /* DFC7C 8017F23C 0018C880 */  sll        $t9, $t8, 2
    /* DFC80 8017F240 01194021 */  addu       $t0, $t0, $t9
    /* DFC84 8017F244 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
    /* DFC88 8017F248 240B0010 */  addiu      $t3, $zero, 0x10
    /* DFC8C 8017F24C 31090006 */  andi       $t1, $t0, 0x6
    /* DFC90 8017F250 51200004 */  beql       $t1, $zero, .L8017F264_ovl3
    /* DFC94 8017F254 A2EB0016 */   sb        $t3, 0x16($s7)
    /* DFC98 8017F258 10000002 */  b          .L8017F264_ovl3
    /* DFC9C 8017F25C A2EA0016 */   sb        $t2, 0x16($s7)
    /* DFCA0 8017F260 A2EB0016 */  sb         $t3, 0x16($s7)
  .L8017F264_ovl3:
    /* DFCA4 8017F264 0C0473D6 */  jal        func_8011CF58
    /* DFCA8 8017F268 00000000 */   nop
    /* DFCAC 8017F26C 8EEC0090 */  lw         $t4, 0x90($s7)
    /* DFCB0 8017F270 8E430000 */  lw         $v1, 0x0($s2)
    /* DFCB4 8017F274 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* DFCB8 8017F278 AEEC00A0 */  sw         $t4, 0xA0($s7)
    /* DFCBC 8017F27C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* DFCC0 8017F280 240D002D */  addiu      $t5, $zero, 0x2D
    /* DFCC4 8017F284 3C088019 */  lui        $t0, %hi(D_801928F4_ovl3)
    /* DFCC8 8017F288 000E7880 */  sll        $t7, $t6, 2
    /* DFCCC 8017F28C 002F0821 */  addu       $at, $at, $t7
    /* DFCD0 8017F290 AC2DDFD0 */  sw         $t5, %lo(D_800DDFD0)($at)
    /* DFCD4 8017F294 8C780000 */  lw         $t8, 0x0($v1)
    /* DFCD8 8017F298 3C01800F */  lui        $at, %hi(D_800E9560)
    /* DFCDC 8017F29C 250828F4 */  addiu      $t0, $t0, %lo(D_801928F4_ovl3)
    /* DFCE0 8017F2A0 0018C880 */  sll        $t9, $t8, 2
    /* DFCE4 8017F2A4 00390821 */  addu       $at, $at, $t9
    /* DFCE8 8017F2A8 AC209560 */  sw         $zero, %lo(D_800E9560)($at)
    /* DFCEC 8017F2AC 8C690000 */  lw         $t1, 0x0($v1)
    /* DFCF0 8017F2B0 3C01800E */  lui        $at, %hi(D_800E0490)
    /* DFCF4 8017F2B4 240BFFFF */  addiu      $t3, $zero, -0x1
    /* DFCF8 8017F2B8 00095080 */  sll        $t2, $t1, 2
    /* DFCFC 8017F2BC 002A0821 */  addu       $at, $at, $t2
    /* DFD00 8017F2C0 AC280490 */  sw         $t0, %lo(D_800E0490)($at)
    /* DFD04 8017F2C4 AEEB003C */  sw         $t3, 0x3C($s7)
    /* DFD08 8017F2C8 AEEB0044 */  sw         $t3, 0x44($s7)
    /* DFD0C 8017F2CC 8C620000 */  lw         $v0, 0x0($v1)
    /* DFD10 8017F2D0 3C11800F */  lui        $s1, %hi(D_800E8920)
    /* DFD14 8017F2D4 26318920 */  addiu      $s1, $s1, %lo(D_800E8920)
    /* DFD18 8017F2D8 00021080 */  sll        $v0, $v0, 2
    /* DFD1C 8017F2DC 02227021 */  addu       $t6, $s1, $v0
    /* DFD20 8017F2E0 8DCD0000 */  lw         $t5, 0x0($t6)
    /* DFD24 8017F2E4 3C0F800D */  lui        $t7, %hi(gKirbyController)
    /* DFD28 8017F2E8 15A00053 */  bnez       $t5, .L8017F438_ovl3
    /* DFD2C 8017F2EC 00000000 */   nop
    /* DFD30 8017F2F0 95EF6FE8 */  lhu        $t7, %lo(gKirbyController)($t7)
    /* DFD34 8017F2F4 24014400 */  addiu      $at, $zero, 0x4400
    /* DFD38 8017F2F8 3C04800E */  lui        $a0, %hi(D_800E6690)
    /* DFD3C 8017F2FC 31F84400 */  andi       $t8, $t7, 0x4400
    /* DFD40 8017F300 1701003A */  bne        $t8, $at, .L8017F3EC_ovl3
    /* DFD44 8017F304 24846690 */   addiu     $a0, $a0, %lo(D_800E6690)
    /* DFD48 8017F308 44801000 */  mtc1       $zero, $f2
    /* DFD4C 8017F30C 3C018019 */  lui        $at, %hi(D_801976C4_ovl3)
    /* DFD50 8017F310 C42C76C4 */  lwc1       $f12, %lo(D_801976C4_ovl3)($at)
    /* DFD54 8017F314 0082C821 */  addu       $t9, $a0, $v0
    /* DFD58 8017F318 E7220000 */  swc1       $f2, 0x0($t9)
    /* DFD5C 8017F31C 8C620000 */  lw         $v0, 0x0($v1)
    /* DFD60 8017F320 3C16800E */  lui        $s6, %hi(D_800E64D0)
    /* DFD64 8017F324 26D664D0 */  addiu      $s6, $s6, %lo(D_800E64D0)
    /* DFD68 8017F328 00021080 */  sll        $v0, $v0, 2
    /* DFD6C 8017F32C 00824821 */  addu       $t1, $a0, $v0
    /* DFD70 8017F330 C5260000 */  lwc1       $f6, 0x0($t1)
    /* DFD74 8017F334 02C24021 */  addu       $t0, $s6, $v0
    /* DFD78 8017F338 3C10800E */  lui        $s0, %hi(D_800E6850)
    /* DFD7C 8017F33C E5060000 */  swc1       $f6, 0x0($t0)
    /* DFD80 8017F340 8C6A0000 */  lw         $t2, 0x0($v1)
    /* DFD84 8017F344 26106850 */  addiu      $s0, $s0, %lo(D_800E6850)
    /* DFD88 8017F348 3C05800E */  lui        $a1, %hi(D_800E3910)
    /* DFD8C 8017F34C 000A5880 */  sll        $t3, $t2, 2
    /* DFD90 8017F350 020B6021 */  addu       $t4, $s0, $t3
    /* DFD94 8017F354 E58C0000 */  swc1       $f12, 0x0($t4)
    /* DFD98 8017F358 8C6E0000 */  lw         $t6, 0x0($v1)
    /* DFD9C 8017F35C 24A53910 */  addiu      $a1, $a1, %lo(D_800E3910)
    /* DFDA0 8017F360 3C01800E */  lui        $at, %hi(D_800E3590)
    /* DFDA4 8017F364 000E6880 */  sll        $t5, $t6, 2
    /* DFDA8 8017F368 00AD7821 */  addu       $t7, $a1, $t5
    /* DFDAC 8017F36C E5E20000 */  swc1       $f2, 0x0($t7)
    /* DFDB0 8017F370 8C620000 */  lw         $v0, 0x0($v1)
    /* DFDB4 8017F374 3C06800E */  lui        $a2, %hi(D_800E3E50)
    /* DFDB8 8017F378 24C63E50 */  addiu      $a2, $a2, %lo(D_800E3E50)
    /* DFDBC 8017F37C 00021080 */  sll        $v0, $v0, 2
    /* DFDC0 8017F380 00A2C021 */  addu       $t8, $a1, $v0
    /* DFDC4 8017F384 C7000000 */  lwc1       $f0, 0x0($t8)
    /* DFDC8 8017F388 00220821 */  addu       $at, $at, $v0
    /* DFDCC 8017F38C E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
    /* DFDD0 8017F390 8C790000 */  lw         $t9, 0x0($v1)
    /* DFDD4 8017F394 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* DFDD8 8017F398 00194880 */  sll        $t1, $t9, 2
    /* DFDDC 8017F39C 00290821 */  addu       $at, $at, $t1
    /* DFDE0 8017F3A0 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* DFDE4 8017F3A4 8C680000 */  lw         $t0, 0x0($v1)
    /* DFDE8 8017F3A8 3C01800E */  lui        $at, %hi(D_800E3050)
    /* DFDEC 8017F3AC 00085080 */  sll        $t2, $t0, 2
    /* DFDF0 8017F3B0 002A0821 */  addu       $at, $at, $t2
    /* DFDF4 8017F3B4 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* DFDF8 8017F3B8 8C6B0000 */  lw         $t3, 0x0($v1)
    /* DFDFC 8017F3BC 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* DFE00 8017F3C0 000B6080 */  sll        $t4, $t3, 2
    /* DFE04 8017F3C4 00CC7021 */  addu       $t6, $a2, $t4
    /* DFE08 8017F3C8 E5CC0000 */  swc1       $f12, 0x0($t6)
    /* DFE0C 8017F3CC 8C620000 */  lw         $v0, 0x0($v1)
    /* DFE10 8017F3D0 00021080 */  sll        $v0, $v0, 2
    /* DFE14 8017F3D4 00C26821 */  addu       $t5, $a2, $v0
    /* DFE18 8017F3D8 C5A80000 */  lwc1       $f8, 0x0($t5)
    /* DFE1C 8017F3DC 00220821 */  addu       $at, $at, $v0
    /* DFE20 8017F3E0 E4283AD0 */  swc1       $f8, %lo(D_800E3AD0)($at)
    /* DFE24 8017F3E4 8C620000 */  lw         $v0, 0x0($v1)
    /* DFE28 8017F3E8 00021080 */  sll        $v0, $v0, 2
  .L8017F3EC_ovl3:
    /* DFE2C 8017F3EC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* DFE30 8017F3F0 00220821 */  addu       $at, $at, $v0
    /* DFE34 8017F3F4 E4343210 */  swc1       $f20, %lo(D_800E3210)($at)
    /* DFE38 8017F3F8 8C6F0000 */  lw         $t7, 0x0($v1)
    /* DFE3C 8017F3FC 3C018019 */  lui        $at, %hi(D_801976C8_ovl3)
    /* DFE40 8017F400 C42A76C8 */  lwc1       $f10, %lo(D_801976C8_ovl3)($at)
    /* DFE44 8017F404 3C01800E */  lui        $at, %hi(D_800E3750)
    /* DFE48 8017F408 000FC080 */  sll        $t8, $t7, 2
    /* DFE4C 8017F40C 00380821 */  addu       $at, $at, $t8
    /* DFE50 8017F410 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
    /* DFE54 8017F414 8C790000 */  lw         $t9, 0x0($v1)
    /* DFE58 8017F418 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* DFE5C 8017F41C 44818000 */  mtc1       $at, $f16
    /* DFE60 8017F420 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* DFE64 8017F424 00194880 */  sll        $t1, $t9, 2
    /* DFE68 8017F428 00290821 */  addu       $at, $at, $t1
    /* DFE6C 8017F42C E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
    /* DFE70 8017F430 8C620000 */  lw         $v0, 0x0($v1)
    /* DFE74 8017F434 00021080 */  sll        $v0, $v0, 2
  .L8017F438_ovl3:
    /* DFE78 8017F438 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* DFE7C 8017F43C 00220821 */  addu       $at, $at, $v0
    /* DFE80 8017F440 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
    /* DFE84 8017F444 8C620000 */  lw         $v0, 0x0($v1)
    /* DFE88 8017F448 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DFE8C 8017F44C 24040124 */  addiu      $a0, $zero, 0x124
    /* DFE90 8017F450 00021080 */  sll        $v0, $v0, 2
    /* DFE94 8017F454 00220821 */  addu       $at, $at, $v0
    /* DFE98 8017F458 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* DFE9C 8017F45C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* DFEA0 8017F460 00220821 */  addu       $at, $at, $v0
    /* DFEA4 8017F464 4600910D */  trunc.w.s  $f4, $f18
    /* DFEA8 8017F468 440A2000 */  mfc1       $t2, $f4
    /* DFEAC 8017F46C 0C029D9E */  jal        play_sound
    /* DFEB0 8017F470 AC2A98E0 */   sw        $t2, %lo(D_800E98E0)($at)
    /* DFEB4 8017F474 3C040002 */  lui        $a0, (0x20007 >> 16)
    /* DFEB8 8017F478 0C048BC2 */  jal        func_80122F08
    /* DFEBC 8017F47C 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* DFEC0 8017F480 3C040002 */  lui        $a0, (0x2018C >> 16)
    /* DFEC4 8017F484 3C050002 */  lui        $a1, (0x2018D >> 16)
    /* DFEC8 8017F488 34A5018D */  ori        $a1, $a1, (0x2018D & 0xFFFF)
    /* DFECC 8017F48C 3484018C */  ori        $a0, $a0, (0x2018C & 0xFFFF)
    /* DFED0 8017F490 0C048C3A */  jal        func_801230E8
    /* DFED4 8017F494 24060001 */   addiu     $a2, $zero, 0x1
    /* DFED8 8017F498 24130001 */  addiu      $s3, $zero, 0x1
    /* DFEDC 8017F49C 3C0B8019 */  lui        $t3, %hi(D_8019062C_ovl3)
    /* DFEE0 8017F4A0 256B062C */  addiu      $t3, $t3, %lo(D_8019062C_ovl3)
    /* DFEE4 8017F4A4 AEEB015C */  sw         $t3, 0x15C($s7)
    /* DFEE8 8017F4A8 AEF30044 */  sw         $s3, 0x44($s7)
    /* DFEEC 8017F4AC AEF3003C */  sw         $s3, 0x3C($s7)
  .L8017F4B0_ovl3:
    /* DFEF0 8017F4B0 8EE20044 */  lw         $v0, 0x44($s7)
    /* DFEF4 8017F4B4 3C10800E */  lui        $s0, %hi(D_800E6850)
    /* DFEF8 8017F4B8 3C11800F */  lui        $s1, %hi(D_800E8920)
    /* DFEFC 8017F4BC 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* DFF00 8017F4C0 3C16800E */  lui        $s6, %hi(D_800E64D0)
    /* DFF04 8017F4C4 4480A000 */  mtc1       $zero, $f20
    /* DFF08 8017F4C8 26D664D0 */  addiu      $s6, $s6, %lo(D_800E64D0)
    /* DFF0C 8017F4CC 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* DFF10 8017F4D0 26318920 */  addiu      $s1, $s1, %lo(D_800E8920)
    /* DFF14 8017F4D4 26106850 */  addiu      $s0, $s0, %lo(D_800E6850)
    /* DFF18 8017F4D8 1040002F */  beqz       $v0, .L8017F598_ovl3
    /* DFF1C 8017F4DC 24130001 */   addiu     $s3, $zero, 0x1
    /* DFF20 8017F4E0 10530007 */  beq        $v0, $s3, .L8017F500_ovl3
    /* DFF24 8017F4E4 24010002 */   addiu     $at, $zero, 0x2
    /* DFF28 8017F4E8 1041002B */  beq        $v0, $at, .L8017F598_ovl3
    /* DFF2C 8017F4EC 24010003 */   addiu     $at, $zero, 0x3
    /* DFF30 8017F4F0 504100B6 */  beql       $v0, $at, .L8017F7CC_ovl3
    /* DFF34 8017F4F4 8E590000 */   lw        $t9, 0x0($s2)
    /* DFF38 8017F4F8 100000E0 */  b          .L8017F87C_ovl3
    /* DFF3C 8017F4FC 00000000 */   nop
  .L8017F500_ovl3:
    /* DFF40 8017F500 8E4E0000 */  lw         $t6, 0x0($s2)
    /* DFF44 8017F504 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* DFF48 8017F508 3C040002 */  lui        $a0, (0x2000C >> 16)
    /* DFF4C 8017F50C 8DCD0000 */  lw         $t5, 0x0($t6)
    /* DFF50 8017F510 3484000C */  ori        $a0, $a0, (0x2000C & 0xFFFF)
    /* DFF54 8017F514 000D7880 */  sll        $t7, $t5, 2
    /* DFF58 8017F518 002F0821 */  addu       $at, $at, $t7
    /* DFF5C 8017F51C 0C048BC2 */  jal        func_80122F08
    /* DFF60 8017F520 E434A6E0 */   swc1      $f20, %lo(D_800EA6E0)($at)
    /* DFF64 8017F524 8E580000 */  lw         $t8, 0x0($s2)
    /* DFF68 8017F528 AEF30154 */  sw         $s3, 0x154($s7)
    /* DFF6C 8017F52C E6F40040 */  swc1       $f20, 0x40($s7)
    /* DFF70 8017F530 8F020000 */  lw         $v0, 0x0($t8)
    /* DFF74 8017F534 00021080 */  sll        $v0, $v0, 2
    /* DFF78 8017F538 0222C821 */  addu       $t9, $s1, $v0
    /* DFF7C 8017F53C 8F290000 */  lw         $t1, 0x0($t9)
    /* DFF80 8017F540 02C24021 */  addu       $t0, $s6, $v0
    /* DFF84 8017F544 112000CD */  beqz       $t1, .L8017F87C_ovl3
    /* DFF88 8017F548 00000000 */   nop
    /* DFF8C 8017F54C 4480A000 */  mtc1       $zero, $f20
    /* DFF90 8017F550 C5060000 */  lwc1       $f6, 0x0($t0)
    /* DFF94 8017F554 3C05800E */  lui        $a1, %hi(D_800E17D0)
    /* DFF98 8017F558 00A22821 */  addu       $a1, $a1, $v0
    /* DFF9C 8017F55C 4606A032 */  c.eq.s     $f20, $f6
    /* DFFA0 8017F560 00000000 */  nop
    /* DFFA4 8017F564 45000008 */  bc1f       .L8017F588_ovl3
    /* DFFA8 8017F568 00000000 */   nop
    /* DFFAC 8017F56C 8EE40124 */  lw         $a0, 0x124($s7)
    /* DFFB0 8017F570 0C03E209 */  jal        func_800F8824
    /* DFFB4 8017F574 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
    /* DFFB8 8017F578 46140032 */  c.eq.s     $f0, $f20
    /* DFFBC 8017F57C 00000000 */  nop
    /* DFFC0 8017F580 450100BE */  bc1t       .L8017F87C_ovl3
    /* DFFC4 8017F584 00000000 */   nop
  .L8017F588_ovl3:
    /* DFFC8 8017F588 0C029D9E */  jal        play_sound
    /* DFFCC 8017F58C 24040121 */   addiu     $a0, $zero, 0x121
    /* DFFD0 8017F590 100000BA */  b          .L8017F87C_ovl3
    /* DFFD4 8017F594 00000000 */   nop
  .L8017F598_ovl3:
    /* DFFD8 8017F598 8E430000 */  lw         $v1, 0x0($s2)
    /* DFFDC 8017F59C 3C13800F */  lui        $s3, %hi(D_800EA8A0)
    /* DFFE0 8017F5A0 2673A8A0 */  addiu      $s3, $s3, %lo(D_800EA8A0)
    /* DFFE4 8017F5A4 8C6A0000 */  lw         $t2, 0x0($v1)
    /* DFFE8 8017F5A8 3C14800F */  lui        $s4, %hi(D_800E9720)
    /* DFFEC 8017F5AC 26949720 */  addiu      $s4, $s4, %lo(D_800E9720)
    /* DFFF0 8017F5B0 000A5880 */  sll        $t3, $t2, 2
    /* DFFF4 8017F5B4 026B6021 */  addu       $t4, $s3, $t3
    /* DFFF8 8017F5B8 E5940000 */  swc1       $f20, 0x0($t4)
    /* DFFFC 8017F5BC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* E0000 8017F5C0 3C040002 */  lui        $a0, (0x2000B >> 16)
    /* E0004 8017F5C4 3484000B */  ori        $a0, $a0, (0x2000B & 0xFFFF)
    /* E0008 8017F5C8 000E6880 */  sll        $t5, $t6, 2
    /* E000C 8017F5CC 028D7821 */  addu       $t7, $s4, $t5
    /* E0010 8017F5D0 0C048BC2 */  jal        func_80122F08
    /* E0014 8017F5D4 ADE00000 */   sw        $zero, 0x0($t7)
    /* E0018 8017F5D8 24180002 */  addiu      $t8, $zero, 0x2
    /* E001C 8017F5DC 3C040002 */  lui        $a0, (0x2018F >> 16)
    /* E0020 8017F5E0 AEF80154 */  sw         $t8, 0x154($s7)
    /* E0024 8017F5E4 0C02A855 */  jal        func_800AA154
    /* E0028 8017F5E8 3484018F */   ori       $a0, $a0, (0x2018F & 0xFFFF)
    /* E002C 8017F5EC 3C198018 */  lui        $t9, %hi(func_8017F8B8_ovl3)
    /* E0030 8017F5F0 2739F8B8 */  addiu      $t9, $t9, %lo(func_8017F8B8_ovl3)
    /* E0034 8017F5F4 3C018019 */  lui        $at, %hi(D_801976CC_ovl3)
    /* E0038 8017F5F8 4480A000 */  mtc1       $zero, $f20
    /* E003C 8017F5FC C43676CC */  lwc1       $f22, %lo(D_801976CC_ovl3)($at)
    /* E0040 8017F600 AFB9004C */  sw         $t9, 0x4C($sp)
    /* E0044 8017F604 3C040002 */  lui        $a0, (0x20191 >> 16)
  .L8017F608_ovl3:
    /* E0048 8017F608 0C02A806 */  jal        func_800AA018
    /* E004C 8017F60C 34840191 */   ori       $a0, $a0, (0x20191 & 0xFFFF)
    /* E0050 8017F610 8E430000 */  lw         $v1, 0x0($s2)
    /* E0054 8017F614 8FA9004C */  lw         $t1, 0x4C($sp)
    /* E0058 8017F618 3C01800E */  lui        $at, %hi(D_800DF310)
    /* E005C 8017F61C 8C680000 */  lw         $t0, 0x0($v1)
    /* E0060 8017F620 00085080 */  sll        $t2, $t0, 2
    /* E0064 8017F624 002A0821 */  addu       $at, $at, $t2
    /* E0068 8017F628 AC29F310 */  sw         $t1, %lo(D_800DF310)($at)
  .L8017F62C_ovl3:
    /* E006C 8017F62C 8C620000 */  lw         $v0, 0x0($v1)
    /* E0070 8017F630 00021080 */  sll        $v0, $v0, 2
    /* E0074 8017F634 02C25821 */  addu       $t3, $s6, $v0
    /* E0078 8017F638 C5600000 */  lwc1       $f0, 0x0($t3)
    /* E007C 8017F63C 02026021 */  addu       $t4, $s0, $v0
    /* E0080 8017F640 02227021 */  addu       $t6, $s1, $v0
    /* E0084 8017F644 4600A032 */  c.eq.s     $f20, $f0
    /* E0088 8017F648 02627821 */  addu       $t7, $s3, $v0
    /* E008C 8017F64C 45020007 */  bc1fl      .L8017F66C_ovl3
    /* E0090 8017F650 8DCD0000 */   lw        $t5, 0x0($t6)
    /* E0094 8017F654 C5880000 */  lwc1       $f8, 0x0($t4)
    /* E0098 8017F658 4608A032 */  c.eq.s     $f20, $f8
    /* E009C 8017F65C 00000000 */  nop
    /* E00A0 8017F660 45030012 */  bc1tl      .L8017F6AC_ovl3
    /* E00A4 8017F664 2418001E */   addiu     $t8, $zero, 0x1E
    /* E00A8 8017F668 8DCD0000 */  lw         $t5, 0x0($t6)
  .L8017F66C_ovl3:
    /* E00AC 8017F66C 51A0004D */  beql       $t5, $zero, .L8017F7A4_ovl3
    /* E00B0 8017F670 3C040002 */   lui       $a0, (0x20190 >> 16)
    /* E00B4 8017F674 C5EA0000 */  lwc1       $f10, 0x0($t7)
    /* E00B8 8017F678 460AB03C */  c.lt.s     $f22, $f10
    /* E00BC 8017F67C 00000000 */  nop
    /* E00C0 8017F680 45000005 */  bc1f       .L8017F698_ovl3
    /* E00C4 8017F684 00000000 */   nop
    /* E00C8 8017F688 4600A032 */  c.eq.s     $f20, $f0
    /* E00CC 8017F68C 00000000 */  nop
    /* E00D0 8017F690 45030044 */  bc1tl      .L8017F7A4_ovl3
    /* E00D4 8017F694 3C040002 */   lui       $a0, (0x20190 >> 16)
  .L8017F698_ovl3:
    /* E00D8 8017F698 0C002DAF */  jal        ohSleep
    /* E00DC 8017F69C 24040001 */   addiu     $a0, $zero, 0x1
    /* E00E0 8017F6A0 1000FFE2 */  b          .L8017F62C_ovl3
    /* E00E4 8017F6A4 8E430000 */   lw        $v1, 0x0($s2)
    /* E00E8 8017F6A8 2418001E */  addiu      $t8, $zero, 0x1E
  .L8017F6AC_ovl3:
    /* E00EC 8017F6AC 0282C821 */  addu       $t9, $s4, $v0
    /* E00F0 8017F6B0 3C040002 */  lui        $a0, (0x2018E >> 16)
    /* E00F4 8017F6B4 3C050002 */  lui        $a1, (0x2000B >> 16)
    /* E00F8 8017F6B8 AF380000 */  sw         $t8, 0x0($t9)
    /* E00FC 8017F6BC 34A5000B */  ori        $a1, $a1, (0x2000B & 0xFFFF)
    /* E0100 8017F6C0 3484018E */  ori        $a0, $a0, (0x2018E & 0xFFFF)
    /* E0104 8017F6C4 0C02A971 */  jal        func_800AA5C4
    /* E0108 8017F6C8 3C0640C0 */   lui       $a2, (0x40C00000 >> 16)
    /* E010C 8017F6CC 8EA8003C */  lw         $t0, 0x3C($s5)
    /* E0110 8017F6D0 0C02A8DA */  jal        func_800AA368
    /* E0114 8017F6D4 8D040010 */   lw        $a0, 0x10($t0)
    /* E0118 8017F6D8 54400016 */  bnel       $v0, $zero, .L8017F734_ovl3
    /* E011C 8017F6DC 3C040002 */   lui       $a0, (0x2018E >> 16)
    /* E0120 8017F6E0 8E490000 */  lw         $t1, 0x0($s2)
  .L8017F6E4_ovl3:
    /* E0124 8017F6E4 8D220000 */  lw         $v0, 0x0($t1)
    /* E0128 8017F6E8 00021080 */  sll        $v0, $v0, 2
    /* E012C 8017F6EC 02025021 */  addu       $t2, $s0, $v0
    /* E0130 8017F6F0 C5500000 */  lwc1       $f16, 0x0($t2)
    /* E0134 8017F6F4 02225821 */  addu       $t3, $s1, $v0
    /* E0138 8017F6F8 4610A032 */  c.eq.s     $f20, $f16
    /* E013C 8017F6FC 00000000 */  nop
    /* E0140 8017F700 4502FFC1 */  bc1fl      .L8017F608_ovl3
    /* E0144 8017F704 3C040002 */   lui       $a0, (0x20191 >> 16)
    /* E0148 8017F708 8D6C0000 */  lw         $t4, 0x0($t3)
    /* E014C 8017F70C 51800025 */  beql       $t4, $zero, .L8017F7A4_ovl3
    /* E0150 8017F710 3C040002 */   lui       $a0, (0x20190 >> 16)
    /* E0154 8017F714 0C002DAF */  jal        ohSleep
    /* E0158 8017F718 24040001 */   addiu     $a0, $zero, 0x1
    /* E015C 8017F71C 8EAE003C */  lw         $t6, 0x3C($s5)
    /* E0160 8017F720 0C02A8DA */  jal        func_800AA368
    /* E0164 8017F724 8DC40010 */   lw        $a0, 0x10($t6)
    /* E0168 8017F728 5040FFEE */  beql       $v0, $zero, .L8017F6E4_ovl3
    /* E016C 8017F72C 8E490000 */   lw        $t1, 0x0($s2)
    /* E0170 8017F730 3C040002 */  lui        $a0, (0x2018E >> 16)
  .L8017F734_ovl3:
    /* E0174 8017F734 0C02A806 */  jal        func_800AA018
    /* E0178 8017F738 3484018E */   ori       $a0, $a0, (0x2018E & 0xFFFF)
    /* E017C 8017F73C 8E4D0000 */  lw         $t5, 0x0($s2)
  .L8017F740_ovl3:
    /* E0180 8017F740 8DA20000 */  lw         $v0, 0x0($t5)
    /* E0184 8017F744 00021080 */  sll        $v0, $v0, 2
    /* E0188 8017F748 02027821 */  addu       $t7, $s0, $v0
    /* E018C 8017F74C C5F20000 */  lwc1       $f18, 0x0($t7)
    /* E0190 8017F750 0222C021 */  addu       $t8, $s1, $v0
    /* E0194 8017F754 02825021 */  addu       $t2, $s4, $v0
    /* E0198 8017F758 4612A032 */  c.eq.s     $f20, $f18
    /* E019C 8017F75C 00000000 */  nop
    /* E01A0 8017F760 4502FFA9 */  bc1fl      .L8017F608_ovl3
    /* E01A4 8017F764 3C040002 */   lui       $a0, (0x20191 >> 16)
    /* E01A8 8017F768 8F190000 */  lw         $t9, 0x0($t8)
    /* E01AC 8017F76C 5320000D */  beql       $t9, $zero, .L8017F7A4_ovl3
    /* E01B0 8017F770 3C040002 */   lui       $a0, (0x20190 >> 16)
    /* E01B4 8017F774 8EE80034 */  lw         $t0, 0x34($s7)
    /* E01B8 8017F778 31090001 */  andi       $t1, $t0, 0x1
    /* E01BC 8017F77C 15200004 */  bnez       $t1, .L8017F790_ovl3
    /* E01C0 8017F780 00000000 */   nop
    /* E01C4 8017F784 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E01C8 8017F788 51600006 */  beql       $t3, $zero, .L8017F7A4_ovl3
    /* E01CC 8017F78C 3C040002 */   lui       $a0, (0x20190 >> 16)
  .L8017F790_ovl3:
    /* E01D0 8017F790 0C002DAF */  jal        ohSleep
    /* E01D4 8017F794 24040001 */   addiu     $a0, $zero, 0x1
    /* E01D8 8017F798 1000FFE9 */  b          .L8017F740_ovl3
    /* E01DC 8017F79C 8E4D0000 */   lw        $t5, 0x0($s2)
    /* E01E0 8017F7A0 3C040002 */  lui        $a0, (0x20190 >> 16)
  .L8017F7A4_ovl3:
    /* E01E4 8017F7A4 0C02A855 */  jal        func_800AA154
    /* E01E8 8017F7A8 34840190 */   ori       $a0, $a0, (0x20190 & 0xFFFF)
    /* E01EC 8017F7AC 8E4E0000 */  lw         $t6, 0x0($s2)
    /* E01F0 8017F7B0 240CFFFF */  addiu      $t4, $zero, -0x1
    /* E01F4 8017F7B4 8DCD0000 */  lw         $t5, 0x0($t6)
    /* E01F8 8017F7B8 000D7880 */  sll        $t7, $t5, 2
    /* E01FC 8017F7BC 028FC021 */  addu       $t8, $s4, $t7
    /* E0200 8017F7C0 1000002E */  b          .L8017F87C_ovl3
    /* E0204 8017F7C4 AF0C0000 */   sw        $t4, 0x0($t8)
    /* E0208 8017F7C8 8E590000 */  lw         $t9, 0x0($s2)
  .L8017F7CC_ovl3:
    /* E020C 8017F7CC 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* E0210 8017F7D0 8F280000 */  lw         $t0, 0x0($t9)
    /* E0214 8017F7D4 00084880 */  sll        $t1, $t0, 2
    /* E0218 8017F7D8 00290821 */  addu       $at, $at, $t1
    /* E021C 8017F7DC E4344010 */  swc1       $f20, %lo(gEntitiesAngleXArray)($at)
    /* E0220 8017F7E0 0C04828A */  jal        func_80120A28
    /* E0224 8017F7E4 AEE000A0 */   sw        $zero, 0xA0($s7)
    /* E0228 8017F7E8 0C029D9E */  jal        play_sound
    /* E022C 8017F7EC 2404011D */   addiu     $a0, $zero, 0x11D
    /* E0230 8017F7F0 0C047585 */  jal        func_8011D614
    /* E0234 8017F7F4 00000000 */   nop
    /* E0238 8017F7F8 3C040002 */  lui        $a0, (0x2018A >> 16)
    /* E023C 8017F7FC 3C050002 */  lui        $a1, (0x2018B >> 16)
    /* E0240 8017F800 34A5018B */  ori        $a1, $a1, (0x2018B & 0xFFFF)
    /* E0244 8017F804 3484018A */  ori        $a0, $a0, (0x2018A & 0xFFFF)
    /* E0248 8017F808 0C048C3A */  jal        func_801230E8
    /* E024C 8017F80C 00003025 */   or        $a2, $zero, $zero
    /* E0250 8017F810 0C002DAF */  jal        ohSleep
    /* E0254 8017F814 24040001 */   addiu     $a0, $zero, 0x1
    /* E0258 8017F818 3C018019 */  lui        $at, %hi(D_801976D0_ovl3)
    /* E025C 8017F81C C42076D0 */  lwc1       $f0, %lo(D_801976D0_ovl3)($at)
    /* E0260 8017F820 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E0264 8017F824 44812000 */  mtc1       $at, $f4
    /* E0268 8017F828 8E430000 */  lw         $v1, 0x0($s2)
    /* E026C 8017F82C 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* E0270 8017F830 E6E40038 */  swc1       $f4, 0x38($s7)
    /* E0274 8017F834 8C6A0000 */  lw         $t2, 0x0($v1)
    /* E0278 8017F838 000A5880 */  sll        $t3, $t2, 2
    /* E027C 8017F83C 002B0821 */  addu       $at, $at, $t3
    /* E0280 8017F840 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* E0284 8017F844 8C6E0000 */  lw         $t6, 0x0($v1)
    /* E0288 8017F848 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* E028C 8017F84C 000E6880 */  sll        $t5, $t6, 2
    /* E0290 8017F850 002D0821 */  addu       $at, $at, $t5
    /* E0294 8017F854 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* E0298 8017F858 8C6F0000 */  lw         $t7, 0x0($v1)
    /* E029C 8017F85C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* E02A0 8017F860 000F6080 */  sll        $t4, $t7, 2
    /* E02A4 8017F864 002C0821 */  addu       $at, $at, $t4
    /* E02A8 8017F868 0C02BC9F */  jal        func_800AF27C
    /* E02AC 8017F86C E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
    /* E02B0 8017F870 8EF80030 */  lw         $t8, 0x30($s7)
    /* E02B4 8017F874 27190001 */  addiu      $t9, $t8, 0x1
    /* E02B8 8017F878 AEF90030 */  sw         $t9, 0x30($s7)
  .L8017F87C_ovl3:
    /* E02BC 8017F87C 0C02BE85 */  jal        curObjSleepForever
    /* E02C0 8017F880 00000000 */   nop
    /* E02C4 8017F884 8FBF0044 */  lw         $ra, 0x44($sp)
    /* E02C8 8017F888 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* E02CC 8017F88C D7B60018 */  ldc1       $f22, 0x18($sp)
    /* E02D0 8017F890 8FB00024 */  lw         $s0, 0x24($sp)
    /* E02D4 8017F894 8FB10028 */  lw         $s1, 0x28($sp)
    /* E02D8 8017F898 8FB2002C */  lw         $s2, 0x2C($sp)
    /* E02DC 8017F89C 8FB30030 */  lw         $s3, 0x30($sp)
    /* E02E0 8017F8A0 8FB40034 */  lw         $s4, 0x34($sp)
    /* E02E4 8017F8A4 8FB50038 */  lw         $s5, 0x38($sp)
    /* E02E8 8017F8A8 8FB6003C */  lw         $s6, 0x3C($sp)
    /* E02EC 8017F8AC 8FB70040 */  lw         $s7, 0x40($sp)
    /* E02F0 8017F8B0 03E00008 */  jr         $ra
    /* E02F4 8017F8B4 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_8017F1C0_ovl3
.size func_8017F1C0_ovl3, . - func_8017F1C0_ovl3
