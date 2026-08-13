nonmatching func_8017982C_ovl3, 0x3FC

glabel func_8017982C_ovl3
    /* DA26C 8017982C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DA270 80179830 AFA40018 */  sw         $a0, 0x18($sp)
    /* DA274 80179834 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DA278 80179838 3C040002 */  lui        $a0, (0x20007 >> 16)
    /* DA27C 8017983C 0C02AA22 */  jal        func_800AA888
    /* DA280 80179840 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* DA284 80179844 14400015 */  bnez       $v0, .L8017989C_ovl3
    /* DA288 80179848 00000000 */   nop
    /* DA28C 8017984C 0C054EB5 */  jal        func_80153AD4_ovl3
    /* DA290 80179850 00000000 */   nop
    /* DA294 80179854 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* DA298 80179858 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* DA29C 8017985C 3C18800E */  lui        $t8, %hi(gEntitiesNextPosYArray)
    /* DA2A0 80179860 27182790 */  addiu      $t8, $t8, %lo(gEntitiesNextPosYArray)
    /* DA2A4 80179864 8CCE0000 */  lw         $t6, 0x0($a2)
    /* DA2A8 80179868 3C01800F */  lui        $at, %hi(D_800EC9E4)
    /* DA2AC 8017986C C426C9E4 */  lwc1       $f6, %lo(D_800EC9E4)($at)
    /* DA2B0 80179870 000E7880 */  sll        $t7, $t6, 2
    /* DA2B4 80179874 01F81821 */  addu       $v1, $t7, $t8
    /* DA2B8 80179878 C4640000 */  lwc1       $f4, 0x0($v1)
    /* DA2BC 8017987C 3C01800F */  lui        $at, %hi(D_800E8920)
    /* DA2C0 80179880 46062201 */  sub.s      $f8, $f4, $f6
    /* DA2C4 80179884 E4680000 */  swc1       $f8, 0x0($v1)
    /* DA2C8 80179888 8CD90000 */  lw         $t9, 0x0($a2)
    /* DA2CC 8017988C 00194080 */  sll        $t0, $t9, 2
    /* DA2D0 80179890 00280821 */  addu       $at, $at, $t0
    /* DA2D4 80179894 10000005 */  b          .L801798AC_ovl3
    /* DA2D8 80179898 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
  .L8017989C_ovl3:
    /* DA2DC 8017989C 0C054E61 */  jal        func_80153984_ovl3
    /* DA2E0 801798A0 00000000 */   nop
    /* DA2E4 801798A4 0C0485EE */  jal        func_801217B8
    /* DA2E8 801798A8 00000000 */   nop
  .L801798AC_ovl3:
    /* DA2EC 801798AC 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* DA2F0 801798B0 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* DA2F4 801798B4 8C490030 */  lw         $t1, 0x30($v0)
    /* DA2F8 801798B8 51200006 */  beql       $t1, $zero, .L801798D4_ovl3
    /* DA2FC 801798BC 8C4A00FC */   lw        $t2, 0xFC($v0)
    /* DA300 801798C0 0C04759F */  jal        func_8011D67C
    /* DA304 801798C4 00000000 */   nop
    /* DA308 801798C8 100000D4 */  b          .L80179C1C_ovl3
    /* DA30C 801798CC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DA310 801798D0 8C4A00FC */  lw         $t2, 0xFC($v0)
  .L801798D4_ovl3:
    /* DA314 801798D4 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* DA318 801798D8 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* DA31C 801798DC 11400007 */  beqz       $t2, .L801798FC_ovl3
    /* DA320 801798E0 3C048019 */   lui       $a0, %hi(D_801910F0_ovl3)
    /* DA324 801798E4 8CCB0000 */  lw         $t3, 0x0($a2)
    /* DA328 801798E8 44805000 */  mtc1       $zero, $f10
    /* DA32C 801798EC 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* DA330 801798F0 000B6080 */  sll        $t4, $t3, 2
    /* DA334 801798F4 002C0821 */  addu       $at, $at, $t4
    /* DA338 801798F8 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
  .L801798FC_ovl3:
    /* DA33C 801798FC 8C4D00A0 */  lw         $t5, 0xA0($v0)
    /* DA340 80179900 248410F0 */  addiu      $a0, $a0, %lo(D_801910F0_ovl3)
    /* DA344 80179904 51A00099 */  beql       $t5, $zero, .L80179B6C_ovl3
    /* DA348 80179908 8CC30000 */   lw        $v1, 0x0($a2)
    /* DA34C 8017990C 3C02800D */  lui        $v0, %hi(gKirbyController)
    /* DA350 80179910 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
    /* DA354 80179914 304E0300 */  andi       $t6, $v0, 0x300
    /* DA358 80179918 51C00066 */  beql       $t6, $zero, .L80179AB4_ovl3
    /* DA35C 8017991C 8CC30000 */   lw        $v1, 0x0($a2)
    /* DA360 80179920 8CC30000 */  lw         $v1, 0x0($a2)
    /* DA364 80179924 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DA368 80179928 304F0100 */  andi       $t7, $v0, 0x100
    /* DA36C 8017992C 00031880 */  sll        $v1, $v1, 2
    /* DA370 80179930 00230821 */  addu       $at, $at, $v1
    /* DA374 80179934 C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
    /* DA378 80179938 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* DA37C 8017993C 44818000 */  mtc1       $at, $f16
    /* DA380 80179940 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* DA384 80179944 46008032 */  c.eq.s     $f16, $f0
    /* DA388 80179948 00000000 */  nop
    /* DA38C 8017994C 45020004 */  bc1fl      .L80179960_ovl3
    /* DA390 80179950 44819000 */   mtc1      $at, $f18
    /* DA394 80179954 15E0000A */  bnez       $t7, .L80179980_ovl3
    /* DA398 80179958 00000000 */   nop
    /* DA39C 8017995C 44819000 */  mtc1       $at, $f18
  .L80179960_ovl3:
    /* DA3A0 80179960 30580200 */  andi       $t8, $v0, 0x200
    /* DA3A4 80179964 3C02800F */  lui        $v0, %hi(D_800E8AE0)
    /* DA3A8 80179968 46009032 */  c.eq.s     $f18, $f0
    /* DA3AC 8017996C 00431021 */  addu       $v0, $v0, $v1
    /* DA3B0 80179970 4500002A */  bc1f       .L80179A1C_ovl3
    /* DA3B4 80179974 00000000 */   nop
    /* DA3B8 80179978 13000028 */  beqz       $t8, .L80179A1C_ovl3
    /* DA3BC 8017997C 00000000 */   nop
  .L80179980_ovl3:
    /* DA3C0 80179980 3C02800F */  lui        $v0, %hi(D_800E8AE0)
    /* DA3C4 80179984 00431021 */  addu       $v0, $v0, $v1
    /* DA3C8 80179988 8C428AE0 */  lw         $v0, %lo(D_800E8AE0)($v0)
    /* DA3CC 8017998C 44802000 */  mtc1       $zero, $f4
    /* DA3D0 80179990 3C0140A8 */  lui        $at, (0x40A80000 >> 16)
    /* DA3D4 80179994 30420006 */  andi       $v0, $v0, 0x6
    /* DA3D8 80179998 54400008 */  bnel       $v0, $zero, .L801799BC_ovl3
    /* DA3DC 8017999C 44816000 */   mtc1      $at, $f12
    /* DA3E0 801799A0 3C014128 */  lui        $at, (0x41280000 >> 16)
    /* DA3E4 801799A4 44811000 */  mtc1       $at, $f2
    /* DA3E8 801799A8 3C0140A8 */  lui        $at, (0x40A80000 >> 16)
    /* DA3EC 801799AC 44816000 */  mtc1       $at, $f12
    /* DA3F0 801799B0 10000005 */  b          .L801799C8_ovl3
    /* DA3F4 801799B4 46001006 */   mov.s     $f0, $f2
    /* DA3F8 801799B8 44816000 */  mtc1       $at, $f12
  .L801799BC_ovl3:
    /* DA3FC 801799BC 3C014128 */  lui        $at, (0x41280000 >> 16)
    /* DA400 801799C0 44811000 */  mtc1       $at, $f2
    /* DA404 801799C4 46006006 */  mov.s      $f0, $f12
  .L801799C8_ovl3:
    /* DA408 801799C8 4604003C */  c.lt.s     $f0, $f4
    /* DA40C 801799CC 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DA410 801799D0 00230821 */  addu       $at, $at, $v1
    /* DA414 801799D4 4500000A */  bc1f       .L80179A00_ovl3
    /* DA418 801799D8 00000000 */   nop
    /* DA41C 801799DC 14400003 */  bnez       $v0, .L801799EC_ovl3
    /* DA420 801799E0 3C01800E */   lui       $at, %hi(D_800E6850)
    /* DA424 801799E4 10000002 */  b          .L801799F0_ovl3
    /* DA428 801799E8 46001006 */   mov.s     $f0, $f2
  .L801799EC_ovl3:
    /* DA42C 801799EC 46006006 */  mov.s      $f0, $f12
  .L801799F0_ovl3:
    /* DA430 801799F0 46000187 */  neg.s      $f6, $f0
    /* DA434 801799F4 00230821 */  addu       $at, $at, $v1
    /* DA438 801799F8 10000055 */  b          .L80179B50_ovl3
    /* DA43C 801799FC E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
  .L80179A00_ovl3:
    /* DA440 80179A00 54400004 */  bnel       $v0, $zero, .L80179A14_ovl3
    /* DA444 80179A04 46006006 */   mov.s     $f0, $f12
    /* DA448 80179A08 10000002 */  b          .L80179A14_ovl3
    /* DA44C 80179A0C 46001006 */   mov.s     $f0, $f2
    /* DA450 80179A10 46006006 */  mov.s      $f0, $f12
  .L80179A14_ovl3:
    /* DA454 80179A14 1000004E */  b          .L80179B50_ovl3
    /* DA458 80179A18 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
  .L80179A1C_ovl3:
    /* DA45C 80179A1C 8C428AE0 */  lw         $v0, %lo(D_800E8AE0)($v0)
    /* DA460 80179A20 44804000 */  mtc1       $zero, $f8
    /* DA464 80179A24 3C014050 */  lui        $at, (0x40500000 >> 16)
    /* DA468 80179A28 30420006 */  andi       $v0, $v0, 0x6
    /* DA46C 80179A2C 54400008 */  bnel       $v0, $zero, .L80179A50_ovl3
    /* DA470 80179A30 44816000 */   mtc1      $at, $f12
    /* DA474 80179A34 3C0140D0 */  lui        $at, (0x40D00000 >> 16)
    /* DA478 80179A38 44811000 */  mtc1       $at, $f2
    /* DA47C 80179A3C 3C014050 */  lui        $at, (0x40500000 >> 16)
    /* DA480 80179A40 44816000 */  mtc1       $at, $f12
    /* DA484 80179A44 10000005 */  b          .L80179A5C_ovl3
    /* DA488 80179A48 46001006 */   mov.s     $f0, $f2
    /* DA48C 80179A4C 44816000 */  mtc1       $at, $f12
  .L80179A50_ovl3:
    /* DA490 80179A50 3C0140D0 */  lui        $at, (0x40D00000 >> 16)
    /* DA494 80179A54 44811000 */  mtc1       $at, $f2
    /* DA498 80179A58 46006006 */  mov.s      $f0, $f12
  .L80179A5C_ovl3:
    /* DA49C 80179A5C 4608003C */  c.lt.s     $f0, $f8
    /* DA4A0 80179A60 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DA4A4 80179A64 00230821 */  addu       $at, $at, $v1
    /* DA4A8 80179A68 4500000A */  bc1f       .L80179A94_ovl3
    /* DA4AC 80179A6C 00000000 */   nop
    /* DA4B0 80179A70 14400003 */  bnez       $v0, .L80179A80_ovl3
    /* DA4B4 80179A74 3C01800E */   lui       $at, %hi(D_800E6850)
    /* DA4B8 80179A78 10000002 */  b          .L80179A84_ovl3
    /* DA4BC 80179A7C 46001006 */   mov.s     $f0, $f2
  .L80179A80_ovl3:
    /* DA4C0 80179A80 46006006 */  mov.s      $f0, $f12
  .L80179A84_ovl3:
    /* DA4C4 80179A84 46000287 */  neg.s      $f10, $f0
    /* DA4C8 80179A88 00230821 */  addu       $at, $at, $v1
    /* DA4CC 80179A8C 10000030 */  b          .L80179B50_ovl3
    /* DA4D0 80179A90 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
  .L80179A94_ovl3:
    /* DA4D4 80179A94 54400004 */  bnel       $v0, $zero, .L80179AA8_ovl3
    /* DA4D8 80179A98 46006006 */   mov.s     $f0, $f12
    /* DA4DC 80179A9C 10000002 */  b          .L80179AA8_ovl3
    /* DA4E0 80179AA0 46001006 */   mov.s     $f0, $f2
    /* DA4E4 80179AA4 46006006 */  mov.s      $f0, $f12
  .L80179AA8_ovl3:
    /* DA4E8 80179AA8 10000029 */  b          .L80179B50_ovl3
    /* DA4EC 80179AAC E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
    /* DA4F0 80179AB0 8CC30000 */  lw         $v1, 0x0($a2)
  .L80179AB4_ovl3:
    /* DA4F4 80179AB4 3C02800F */  lui        $v0, %hi(D_800E8AE0)
    /* DA4F8 80179AB8 44808000 */  mtc1       $zero, $f16
    /* DA4FC 80179ABC 00031880 */  sll        $v1, $v1, 2
    /* DA500 80179AC0 00431021 */  addu       $v0, $v0, $v1
    /* DA504 80179AC4 8C428AE0 */  lw         $v0, %lo(D_800E8AE0)($v0)
    /* DA508 80179AC8 3C014088 */  lui        $at, (0x40880000 >> 16)
    /* DA50C 80179ACC 30420006 */  andi       $v0, $v0, 0x6
    /* DA510 80179AD0 54400008 */  bnel       $v0, $zero, .L80179AF4_ovl3
    /* DA514 80179AD4 44816000 */   mtc1      $at, $f12
    /* DA518 80179AD8 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* DA51C 80179ADC 44811000 */  mtc1       $at, $f2
    /* DA520 80179AE0 3C014088 */  lui        $at, (0x40880000 >> 16)
    /* DA524 80179AE4 44816000 */  mtc1       $at, $f12
    /* DA528 80179AE8 10000005 */  b          .L80179B00_ovl3
    /* DA52C 80179AEC 46001006 */   mov.s     $f0, $f2
    /* DA530 80179AF0 44816000 */  mtc1       $at, $f12
  .L80179AF4_ovl3:
    /* DA534 80179AF4 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* DA538 80179AF8 44811000 */  mtc1       $at, $f2
    /* DA53C 80179AFC 46006006 */  mov.s      $f0, $f12
  .L80179B00_ovl3:
    /* DA540 80179B00 4610003C */  c.lt.s     $f0, $f16
    /* DA544 80179B04 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DA548 80179B08 00230821 */  addu       $at, $at, $v1
    /* DA54C 80179B0C 4500000A */  bc1f       .L80179B38_ovl3
    /* DA550 80179B10 00000000 */   nop
    /* DA554 80179B14 14400003 */  bnez       $v0, .L80179B24_ovl3
    /* DA558 80179B18 3C01800E */   lui       $at, %hi(D_800E6850)
    /* DA55C 80179B1C 10000002 */  b          .L80179B28_ovl3
    /* DA560 80179B20 46001006 */   mov.s     $f0, $f2
  .L80179B24_ovl3:
    /* DA564 80179B24 46006006 */  mov.s      $f0, $f12
  .L80179B28_ovl3:
    /* DA568 80179B28 46000487 */  neg.s      $f18, $f0
    /* DA56C 80179B2C 00230821 */  addu       $at, $at, $v1
    /* DA570 80179B30 10000007 */  b          .L80179B50_ovl3
    /* DA574 80179B34 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
  .L80179B38_ovl3:
    /* DA578 80179B38 54400004 */  bnel       $v0, $zero, .L80179B4C_ovl3
    /* DA57C 80179B3C 46006006 */   mov.s     $f0, $f12
    /* DA580 80179B40 10000002 */  b          .L80179B4C_ovl3
    /* DA584 80179B44 46001006 */   mov.s     $f0, $f2
    /* DA588 80179B48 46006006 */  mov.s      $f0, $f12
  .L80179B4C_ovl3:
    /* DA58C 80179B4C E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L80179B50_ovl3:
    /* DA590 80179B50 0C044681 */  jal        func_80111A04
    /* DA594 80179B54 8CC50000 */   lw        $a1, 0x0($a2)
    /* DA598 80179B58 0C044713 */  jal        func_80111C4C
    /* DA59C 80179B5C 00402025 */   or        $a0, $v0, $zero
    /* DA5A0 80179B60 1000002E */  b          .L80179C1C_ovl3
    /* DA5A4 80179B64 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DA5A8 80179B68 8CC30000 */  lw         $v1, 0x0($a2)
  .L80179B6C_ovl3:
    /* DA5AC 80179B6C 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* DA5B0 80179B70 3C08800D */  lui        $t0, %hi(gKirbyController)
    /* DA5B4 80179B74 00031880 */  sll        $v1, $v1, 2
    /* DA5B8 80179B78 0323C821 */  addu       $t9, $t9, $v1
    /* DA5BC 80179B7C 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* DA5C0 80179B80 3C0A800D */  lui        $t2, %hi(D_800D6F58 + 0x54)
    /* DA5C4 80179B84 1320000A */  beqz       $t9, .L80179BB0_ovl3
    /* DA5C8 80179B88 00000000 */   nop
    /* DA5CC 80179B8C 95086FE8 */  lhu        $t0, %lo(gKirbyController)($t0)
    /* DA5D0 80179B90 24040001 */  addiu      $a0, $zero, 0x1
    /* DA5D4 80179B94 31090300 */  andi       $t1, $t0, 0x300
    /* DA5D8 80179B98 51200020 */  beql       $t1, $zero, .L80179C1C_ovl3
    /* DA5DC 80179B9C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DA5E0 80179BA0 0C048BDB */  jal        set_kirby_action_1
    /* DA5E4 80179BA4 24050003 */   addiu     $a1, $zero, 0x3
    /* DA5E8 80179BA8 1000001C */  b          .L80179C1C_ovl3
    /* DA5EC 80179BAC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80179BB0_ovl3:
    /* DA5F0 80179BB0 8D4A6FAC */  lw         $t2, %lo(D_800D6F58 + 0x54)($t2)
    /* DA5F4 80179BB4 3C0B800D */  lui        $t3, %hi(gKirbyController + 0x2)
    /* DA5F8 80179BB8 55400018 */  bnel       $t2, $zero, .L80179C1C_ovl3
    /* DA5FC 80179BBC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DA600 80179BC0 956B6FEA */  lhu        $t3, %lo(gKirbyController + 0x2)($t3)
    /* DA604 80179BC4 316C8000 */  andi       $t4, $t3, 0x8000
    /* DA608 80179BC8 51800014 */  beql       $t4, $zero, .L80179C1C_ovl3
    /* DA60C 80179BCC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DA610 80179BD0 8C4D001C */  lw         $t5, 0x1C($v0)
    /* DA614 80179BD4 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* DA618 80179BD8 01C37021 */  addu       $t6, $t6, $v1
    /* DA61C 80179BDC 51A0000F */  beql       $t5, $zero, .L80179C1C_ovl3
    /* DA620 80179BE0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DA624 80179BE4 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* DA628 80179BE8 2404000C */  addiu      $a0, $zero, 0xC
    /* DA62C 80179BEC 24050009 */  addiu      $a1, $zero, 0x9
    /* DA630 80179BF0 31CF0006 */  andi       $t7, $t6, 0x6
    /* DA634 80179BF4 11E00006 */  beqz       $t7, .L80179C10_ovl3
    /* DA638 80179BF8 00000000 */   nop
    /* DA63C 80179BFC 24040017 */  addiu      $a0, $zero, 0x17
    /* DA640 80179C00 0C048BDB */  jal        set_kirby_action_1
    /* DA644 80179C04 2405001B */   addiu     $a1, $zero, 0x1B
    /* DA648 80179C08 10000004 */  b          .L80179C1C_ovl3
    /* DA64C 80179C0C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80179C10_ovl3:
    /* DA650 80179C10 0C048BDB */  jal        set_kirby_action_1
    /* DA654 80179C14 AC400044 */   sw        $zero, 0x44($v0)
    /* DA658 80179C18 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80179C1C_ovl3:
    /* DA65C 80179C1C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DA660 80179C20 03E00008 */  jr         $ra
    /* DA664 80179C24 00000000 */   nop
endlabel func_8017982C_ovl3
.size func_8017982C_ovl3, . - func_8017982C_ovl3
