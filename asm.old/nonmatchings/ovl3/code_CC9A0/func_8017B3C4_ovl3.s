glabel func_8017B3C4_ovl3
/* DBE04 8017B3C4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DBE08 8017B3C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* DBE0C 8017B3CC AFB10018 */  sw         $s1, 0x18($sp)
/* DBE10 8017B3D0 AFB00014 */  sw         $s0, 0x14($sp)
/* DBE14 8017B3D4 0C054E61 */  jal        func_80153984_ovl3
/* DBE18 8017B3D8 AFA40038 */   sw        $a0, 0x38($sp)
/* DBE1C 8017B3DC 0C0485EE */  jal        func_801217B8
/* DBE20 8017B3E0 00000000 */   nop
/* DBE24 8017B3E4 3C0E8013 */  lui        $t6, %hi(D_8012E7E8 + 0x8)
/* DBE28 8017B3E8 8DCEE7F0 */  lw         $t6, %lo(D_8012E7E8 + 0x8)($t6)
/* DBE2C 8017B3EC 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* DBE30 8017B3F0 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* DBE34 8017B3F4 11C00023 */  beqz       $t6, .L8017B484_ovl3
/* DBE38 8017B3F8 3C048019 */   lui       $a0, %hi(D_801911E0_ovl3)
/* DBE3C 8017B3FC 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* DBE40 8017B400 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* DBE44 8017B404 8E300000 */  lw         $s0, 0x0($s1)
/* DBE48 8017B408 3C01800F */  lui        $at, %hi(D_800EAA60)
/* DBE4C 8017B40C 3C03800E */  lui        $v1, %hi(D_800E6A10)
/* DBE50 8017B410 8E020000 */  lw         $v0, 0x0($s0)
/* DBE54 8017B414 24636A10 */  addiu      $v1, $v1, %lo(D_800E6A10)
/* DBE58 8017B418 3C19800E */  lui        $t9, %hi(D_800E17D0)
/* DBE5C 8017B41C 00021080 */  sll        $v0, $v0, 2
/* DBE60 8017B420 00220821 */  addu       $at, $at, $v0
/* DBE64 8017B424 C424AA60 */  lwc1       $f4, %lo(D_800EAA60)($at)
/* DBE68 8017B428 00627821 */  addu       $t7, $v1, $v0
/* DBE6C 8017B42C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* DBE70 8017B430 E5E40000 */  swc1       $f4, 0x0($t7)
/* DBE74 8017B434 8E020000 */  lw         $v0, 0x0($s0)
/* DBE78 8017B438 44813000 */  mtc1       $at, $f6
/* DBE7C 8017B43C 273917D0 */  addiu      $t9, $t9, %lo(D_800E17D0)
/* DBE80 8017B440 00021080 */  sll        $v0, $v0, 2
/* DBE84 8017B444 0062C021 */  addu       $t8, $v1, $v0
/* DBE88 8017B448 C7080000 */  lwc1       $f8, 0x0($t8)
/* DBE8C 8017B44C 00591821 */  addu       $v1, $v0, $t9
/* DBE90 8017B450 3C018019 */  lui        $at, %hi(D_801975D8_ovl3)
/* DBE94 8017B454 46083032 */  c.eq.s     $f6, $f8
/* DBE98 8017B458 00000000 */  nop
/* DBE9C 8017B45C 45000005 */  bc1f       .L8017B474_ovl3
/* DBEA0 8017B460 00000000 */   nop
/* DBEA4 8017B464 C46A0000 */  lwc1       $f10, 0x0($v1)
/* DBEA8 8017B468 C43075D8 */  lwc1       $f16, %lo(D_801975D8_ovl3)($at)
/* DBEAC 8017B46C 46105480 */  add.s      $f18, $f10, $f16
/* DBEB0 8017B470 E4720000 */  swc1       $f18, 0x0($v1)
.L8017B474_ovl3:
/* DBEB4 8017B474 0C04759F */  jal        func_8011D67C
/* DBEB8 8017B478 00000000 */   nop
/* DBEBC 8017B47C 100000BF */  b          .L8017B77C_ovl3
/* DBEC0 8017B480 8FBF001C */   lw        $ra, 0x1C($sp)
.L8017B484_ovl3:
/* DBEC4 8017B484 8E300000 */  lw         $s0, 0x0($s1)
/* DBEC8 8017B488 3C08800F */  lui        $t0, %hi(D_800E8AE0)
/* DBECC 8017B48C 3C018019 */  lui        $at, %hi(D_801975E0_ovl3)
/* DBED0 8017B490 8E020000 */  lw         $v0, 0x0($s0)
/* DBED4 8017B494 00021080 */  sll        $v0, $v0, 2
/* DBED8 8017B498 01024021 */  addu       $t0, $t0, $v0
/* DBEDC 8017B49C 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
/* DBEE0 8017B4A0 31090006 */  andi       $t1, $t0, 0x6
/* DBEE4 8017B4A4 11200007 */  beqz       $t1, .L8017B4C4_ovl3
.L8017B4A8_ovl5:
/* DBEE8 8017B4A8 00000000 */   nop
/* DBEEC 8017B4AC 3C018019 */  lui        $at, %hi(D_801975DC_ovl3)
/* DBEF0 8017B4B0 C42475DC */  lwc1       $f4, %lo(D_801975DC_ovl3)($at)
.L8017B4B4_ovl5:
/* DBEF4 8017B4B4 3C01800F */  lui        $at, %hi(D_800EAC20)
/* DBEF8 8017B4B8 00220821 */  addu       $at, $at, $v0
/* DBEFC 8017B4BC 10000005 */  b          .L8017B4D4_ovl3
.L8017B4C0_ovl5:
/* DBF00 8017B4C0 E424AC20 */   swc1      $f4, %lo(D_800EAC20)($at)
.L8017B4C4_ovl3:
/* DBF04 8017B4C4 C42675E0 */  lwc1       $f6, %lo(D_801975E0_ovl3)($at)
.L8017B4C8_ovl5:
/* DBF08 8017B4C8 3C01800F */  lui        $at, %hi(D_800EAC20)
/* DBF0C 8017B4CC 00220821 */  addu       $at, $at, $v0
/* DBF10 8017B4D0 E426AC20 */  swc1       $f6, %lo(D_800EAC20)($at)
.L8017B4D4_ovl3:
/* DBF14 8017B4D4 8E0A0000 */  lw         $t2, 0x0($s0)
/* DBF18 8017B4D8 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* DBF1C 8017B4DC 248411E0 */  addiu      $a0, $a0, %lo(D_801911E0_ovl3)
/* DBF20 8017B4E0 000A5880 */  sll        $t3, $t2, 2
/* DBF24 8017B4E4 018B6021 */  addu       $t4, $t4, $t3
/* DBF28 8017B4E8 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* DBF2C 8017B4EC 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
.L8017B4F0_ovl5:
/* DBF30 8017B4F0 0C05A153 */  jal        func_8016854C_ovl3
/* DBF34 8017B4F4 8D850008 */   lw        $a1, 0x8($t4)
/* DBF38 8017B4F8 8E300000 */  lw         $s0, 0x0($s1)
/* DBF3C 8017B4FC 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* DBF40 8017B500 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
/* DBF44 8017B504 8E0D0000 */  lw         $t5, 0x0($s0)
/* DBF48 8017B508 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
/* DBF4C 8017B50C 3C03800E */  lui        $v1, %hi(D_800E6A10)
/* DBF50 8017B510 000D7080 */  sll        $t6, $t5, 2
/* DBF54 8017B514 01EE7821 */  addu       $t7, $t7, $t6
/* DBF58 8017B518 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* DBF5C 8017B51C 24636A10 */  addiu      $v1, $v1, %lo(D_800E6A10)
.L8017B520_ovl5:
/* DBF60 8017B520 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DBF64 8017B524 8DF80004 */  lw         $t8, 0x4($t7)
/* DBF68 8017B528 44815000 */  mtc1       $at, $f10
/* DBF6C 8017B52C 3C048019 */  lui        $a0, %hi(D_80193B34_ovl3)
/* DBF70 8017B530 C7080034 */  lwc1       $f8, 0x34($t8)
/* DBF74 8017B534 3C018019 */  lui        $at, %hi(D_801975E8_ovl3)
/* DBF78 8017B538 24843B34 */  addiu      $a0, $a0, %lo(D_80193B34_ovl3)
/* DBF7C 8017B53C E4480000 */  swc1       $f8, 0x0($v0)
/* DBF80 8017B540 8E190000 */  lw         $t9, 0x0($s0)
/* DBF84 8017B544 00002825 */  or         $a1, $zero, $zero
/* DBF88 8017B548 00194080 */  sll        $t0, $t9, 2
/* DBF8C 8017B54C 00684821 */  addu       $t1, $v1, $t0
/* DBF90 8017B550 C5300000 */  lwc1       $f16, 0x0($t1)
/* DBF94 8017B554 46105032 */  c.eq.s     $f10, $f16
/* DBF98 8017B558 00000000 */  nop
/* DBF9C 8017B55C 45020008 */  bc1fl      .L8017B580_ovl3
glabel func_8017B560_ovl5
/* DBFA0 8017B560 C4480000 */   lwc1      $f8, 0x0($v0)
/* DBFA4 8017B564 3C018019 */  lui        $at, %hi(D_801975E4_ovl3)
/* DBFA8 8017B568 C42475E4 */  lwc1       $f4, %lo(D_801975E4_ovl3)($at)
/* DBFAC 8017B56C C4520000 */  lwc1       $f18, 0x0($v0)
/* DBFB0 8017B570 46049180 */  add.s      $f6, $f18, $f4
/* DBFB4 8017B574 10000005 */  b          .L8017B58C_ovl3
/* DBFB8 8017B578 E4460000 */   swc1      $f6, 0x0($v0)
/* DBFBC 8017B57C C4480000 */  lwc1       $f8, 0x0($v0)
.L8017B580_ovl3:
/* DBFC0 8017B580 C42A75E8 */  lwc1       $f10, %lo(D_801975E8_ovl3)($at)
/* DBFC4 8017B584 460A4401 */  sub.s      $f16, $f8, $f10
/* DBFC8 8017B588 E4500000 */  swc1       $f16, 0x0($v0)
.L8017B58C_ovl3:
/* DBFCC 8017B58C 0C05515E */  jal        func_80154578_ovl3
/* DBFD0 8017B590 8C460000 */   lw        $a2, 0x0($v0)
/* DBFD4 8017B594 3C028013 */  lui        $v0, %hi(D_8012E80C)
/* DBFD8 8017B598 8C42E80C */  lw         $v0, %lo(D_8012E80C)($v0)
/* DBFDC 8017B59C 50400051 */  beql       $v0, $zero, .L8017B6E4_ovl3
/* DBFE0 8017B5A0 8E280000 */   lw        $t0, 0x0($s1)
/* DBFE4 8017B5A4 8E2A0000 */  lw         $t2, 0x0($s1)
/* DBFE8 8017B5A8 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
/* DBFEC 8017B5AC 00408025 */  or         $s0, $v0, $zero
/* DBFF0 8017B5B0 8D4B0000 */  lw         $t3, 0x0($t2)
/* DBFF4 8017B5B4 27A4002C */  addiu      $a0, $sp, 0x2C
/* DBFF8 8017B5B8 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* DBFFC 8017B5BC 000B6080 */  sll        $t4, $t3, 2
/* DC000 8017B5C0 01AC6821 */  addu       $t5, $t5, $t4
/* DC004 8017B5C4 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
/* DC008 8017B5C8 0C02C8D0 */  jal        func_800B2340
/* DC00C 8017B5CC 8DA50038 */   lw        $a1, 0x38($t5)
/* DC010 8017B5D0 C7B2002C */  lwc1       $f18, 0x2C($sp)
/* DC014 8017B5D4 8E0E004C */  lw         $t6, 0x4C($s0)
/* DC018 8017B5D8 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
/* DC01C 8017B5DC 27A4002C */  addiu      $a0, $sp, 0x2C
/* DC020 8017B5E0 E5D20004 */  swc1       $f18, 0x4($t6)
/* DC024 8017B5E4 8E0F004C */  lw         $t7, 0x4C($s0)
/* DC028 8017B5E8 C7A40030 */  lwc1       $f4, 0x30($sp)
/* DC02C 8017B5EC 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* DC030 8017B5F0 E5E40008 */  swc1       $f4, 0x8($t7)
/* DC034 8017B5F4 8E18004C */  lw         $t8, 0x4C($s0)
/* DC038 8017B5F8 C7A60034 */  lwc1       $f6, 0x34($sp)
/* DC03C 8017B5FC E706000C */  swc1       $f6, 0xC($t8)
/* DC040 8017B600 8E390000 */  lw         $t9, 0x0($s1)
/* DC044 8017B604 8F280000 */  lw         $t0, 0x0($t9)
/* DC048 8017B608 00084880 */  sll        $t1, $t0, 2
/* DC04C 8017B60C 01495021 */  addu       $t2, $t2, $t1
/* DC050 8017B610 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
/* DC054 8017B614 0C02C9B6 */  jal        func_800B26D8
/* DC058 8017B618 8D450038 */   lw        $a1, 0x38($t2)
/* DC05C 8017B61C C7A8002C */  lwc1       $f8, 0x2C($sp)
/* DC060 8017B620 8E0B004C */  lw         $t3, 0x4C($s0)
/* DC064 8017B624 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* DC068 8017B628 27A4002C */  addiu      $a0, $sp, 0x2C
/* DC06C 8017B62C E5680010 */  swc1       $f8, 0x10($t3)
/* DC070 8017B630 8E0C004C */  lw         $t4, 0x4C($s0)
/* DC074 8017B634 C7AA0030 */  lwc1       $f10, 0x30($sp)
.L8017B638_ovl5:
/* DC078 8017B638 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* DC07C 8017B63C E58A0014 */  swc1       $f10, 0x14($t4)
/* DC080 8017B640 8E0D004C */  lw         $t5, 0x4C($s0)
/* DC084 8017B644 C7B00034 */  lwc1       $f16, 0x34($sp)
/* DC088 8017B648 3C108013 */  lui        $s0, %hi(D_8012E80C + 0x4)
/* DC08C 8017B64C E5B00018 */  swc1       $f16, 0x18($t5)
/* DC090 8017B650 8E2E0000 */  lw         $t6, 0x0($s1)
/* DC094 8017B654 8E10E810 */  lw         $s0, %lo(D_8012E80C + 0x4)($s0)
.L8017B658_ovl5:
/* DC098 8017B658 8DCF0000 */  lw         $t7, 0x0($t6)
/* DC09C 8017B65C 000FC080 */  sll        $t8, $t7, 2
/* DC0A0 8017B660 0338C821 */  addu       $t9, $t9, $t8
/* DC0A4 8017B664 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* DC0A8 8017B668 0C02C8D0 */  jal        func_800B2340
.L8017B66C_ovl5:
/* DC0AC 8017B66C 8F250024 */   lw        $a1, 0x24($t9)
/* DC0B0 8017B670 C7B2002C */  lwc1       $f18, 0x2C($sp)
/* DC0B4 8017B674 8E08004C */  lw         $t0, 0x4C($s0)
/* DC0B8 8017B678 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
/* DC0BC 8017B67C 27A4002C */  addiu      $a0, $sp, 0x2C
.L8017B680_ovl5:
/* DC0C0 8017B680 E5120004 */  swc1       $f18, 0x4($t0)
/* DC0C4 8017B684 8E09004C */  lw         $t1, 0x4C($s0)
/* DC0C8 8017B688 C7A40030 */  lwc1       $f4, 0x30($sp)
/* DC0CC 8017B68C 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* DC0D0 8017B690 E5240008 */  swc1       $f4, 0x8($t1)
/* DC0D4 8017B694 8E0A004C */  lw         $t2, 0x4C($s0)
/* DC0D8 8017B698 C7A60034 */  lwc1       $f6, 0x34($sp)
/* DC0DC 8017B69C E546000C */  swc1       $f6, 0xC($t2)
/* DC0E0 8017B6A0 8E2B0000 */  lw         $t3, 0x0($s1)
/* DC0E4 8017B6A4 8D6C0000 */  lw         $t4, 0x0($t3)
/* DC0E8 8017B6A8 000C6880 */  sll        $t5, $t4, 2
/* DC0EC 8017B6AC 01CD7021 */  addu       $t6, $t6, $t5
/* DC0F0 8017B6B0 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
glabel func_8017B6B4_ovl5
/* DC0F4 8017B6B4 0C02C9B6 */  jal        func_800B26D8
/* DC0F8 8017B6B8 8DC50024 */   lw        $a1, 0x24($t6)
/* DC0FC 8017B6BC C7A8002C */  lwc1       $f8, 0x2C($sp)
/* DC100 8017B6C0 8E0F004C */  lw         $t7, 0x4C($s0)
/* DC104 8017B6C4 E5E80010 */  swc1       $f8, 0x10($t7)
/* DC108 8017B6C8 8E18004C */  lw         $t8, 0x4C($s0)
/* DC10C 8017B6CC C7AA0030 */  lwc1       $f10, 0x30($sp)
/* DC110 8017B6D0 E70A0014 */  swc1       $f10, 0x14($t8)
/* DC114 8017B6D4 8E19004C */  lw         $t9, 0x4C($s0)
/* DC118 8017B6D8 C7B00034 */  lwc1       $f16, 0x34($sp)
/* DC11C 8017B6DC E7300018 */  swc1       $f16, 0x18($t9)
/* DC120 8017B6E0 8E280000 */  lw         $t0, 0x0($s1)
.L8017B6E4_ovl3:
/* DC124 8017B6E4 3C0B800F */  lui        $t3, %hi(D_800E8920)
/* DC128 8017B6E8 3C0C8013 */  lui        $t4, %hi(D_8012E7E8 + 0x1C)
/* DC12C 8017B6EC 8D090000 */  lw         $t1, 0x0($t0)
/* DC130 8017B6F0 00095080 */  sll        $t2, $t1, 2
/* DC134 8017B6F4 016A5821 */  addu       $t3, $t3, $t2
/* DC138 8017B6F8 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
/* DC13C 8017B6FC 5160001F */  beql       $t3, $zero, .L8017B77C_ovl3
/* DC140 8017B700 8FBF001C */   lw        $ra, 0x1C($sp)
/* DC144 8017B704 8D8CE804 */  lw         $t4, %lo(D_8012E7E8 + 0x1C)($t4)
/* DC148 8017B708 5580001C */  bnel       $t4, $zero, .L8017B77C_ovl3
/* DC14C 8017B70C 8FBF001C */   lw        $ra, 0x1C($sp)
/* DC150 8017B710 0C047B5A */  jal        func_8011ED68
/* DC154 8017B714 00000000 */   nop
/* DC158 8017B718 3C02800D */  lui        $v0, %hi(gKirbyController)
/* DC15C 8017B71C 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
/* DC160 8017B720 304D0100 */  andi       $t5, $v0, 0x100
/* DC164 8017B724 11A0000A */  beqz       $t5, .L8017B750_ovl3
/* DC168 8017B728 30590200 */   andi      $t9, $v0, 0x200
/* DC16C 8017B72C 8E2E0000 */  lw         $t6, 0x0($s1)
/* DC170 8017B730 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* DC174 8017B734 44819000 */  mtc1       $at, $f18
/* DC178 8017B738 8DCF0000 */  lw         $t7, 0x0($t6)
/* DC17C 8017B73C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* DC180 8017B740 000FC080 */  sll        $t8, $t7, 2
/* DC184 8017B744 00380821 */  addu       $at, $at, $t8
/* DC188 8017B748 1000000B */  b          .L8017B778_ovl3
/* DC18C 8017B74C E432AA60 */   swc1      $f18, %lo(D_800EAA60)($at)
.L8017B750_ovl3:
/* DC190 8017B750 5320000A */  beql       $t9, $zero, .L8017B77C_ovl3
/* DC194 8017B754 8FBF001C */   lw        $ra, 0x1C($sp)
/* DC198 8017B758 8E280000 */  lw         $t0, 0x0($s1)
/* DC19C 8017B75C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* DC1A0 8017B760 44812000 */  mtc1       $at, $f4
/* DC1A4 8017B764 8D090000 */  lw         $t1, 0x0($t0)
/* DC1A8 8017B768 3C01800F */  lui        $at, %hi(D_800EAA60)
/* DC1AC 8017B76C 00095080 */  sll        $t2, $t1, 2
/* DC1B0 8017B770 002A0821 */  addu       $at, $at, $t2
/* DC1B4 8017B774 E424AA60 */  swc1       $f4, %lo(D_800EAA60)($at)
.L8017B778_ovl3:
/* DC1B8 8017B778 8FBF001C */  lw         $ra, 0x1C($sp)
.L8017B77C_ovl3:
/* DC1BC 8017B77C 8FB00014 */  lw         $s0, 0x14($sp)
/* DC1C0 8017B780 8FB10018 */  lw         $s1, 0x18($sp)
/* DC1C4 8017B784 03E00008 */  jr         $ra
/* DC1C8 8017B788 27BD0038 */   addiu     $sp, $sp, 0x38
