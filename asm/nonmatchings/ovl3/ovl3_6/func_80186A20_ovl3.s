nonmatching func_80186A20_ovl3, 0x410

glabel func_80186A20_ovl3
    /* E7460 80186A20 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* E7464 80186A24 AFBF002C */  sw         $ra, 0x2C($sp)
    /* E7468 80186A28 AFB20028 */  sw         $s2, 0x28($sp)
    /* E746C 80186A2C AFB10024 */  sw         $s1, 0x24($sp)
    /* E7470 80186A30 AFB00020 */  sw         $s0, 0x20($sp)
    /* E7474 80186A34 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* E7478 80186A38 0C054E61 */  jal        func_80153984_ovl3
    /* E747C 80186A3C AFA40030 */   sw        $a0, 0x30($sp)
    /* E7480 80186A40 0C0473D6 */  jal        func_8011CF58
    /* E7484 80186A44 00000000 */   nop
    /* E7488 80186A48 0C0485EE */  jal        func_801217B8
    /* E748C 80186A4C 00000000 */   nop
    /* E7490 80186A50 3C128013 */  lui        $s2, %hi(gKirbyState)
    /* E7494 80186A54 2652E7C0 */  addiu      $s2, $s2, %lo(gKirbyState)
    /* E7498 80186A58 8E430044 */  lw         $v1, 0x44($s2)
    /* E749C 80186A5C 24040001 */  addiu      $a0, $zero, 0x1
    /* E74A0 80186A60 54830009 */  bnel       $a0, $v1, .L80186A88_ovl3
    /* E74A4 80186A64 924F0017 */   lbu       $t7, 0x17($s2)
    /* E74A8 80186A68 8E4E0030 */  lw         $t6, 0x30($s2)
    /* E74AC 80186A6C 11C000D4 */  beqz       $t6, .L80186DC0_ovl3
    /* E74B0 80186A70 00000000 */   nop
    /* E74B4 80186A74 0C04759F */  jal        func_8011D67C
    /* E74B8 80186A78 00000000 */   nop
    /* E74BC 80186A7C 100000D0 */  b          .L80186DC0_ovl3
    /* E74C0 80186A80 00000000 */   nop
    /* E74C4 80186A84 924F0017 */  lbu        $t7, 0x17($s2)
  .L80186A88_ovl3:
    /* E74C8 80186A88 24010002 */  addiu      $at, $zero, 0x2
    /* E74CC 80186A8C 11E00003 */  beqz       $t7, .L80186A9C_ovl3
    /* E74D0 80186A90 00000000 */   nop
    /* E74D4 80186A94 100000CA */  b          .L80186DC0_ovl3
    /* E74D8 80186A98 AE440044 */   sw        $a0, 0x44($s2)
  .L80186A9C_ovl3:
    /* E74DC 80186A9C 10610007 */  beq        $v1, $at, .L80186ABC_ovl3
    /* E74E0 80186AA0 24010003 */   addiu     $at, $zero, 0x3
    /* E74E4 80186AA4 10610011 */  beq        $v1, $at, .L80186AEC_ovl3
    /* E74E8 80186AA8 3C088005 */   lui       $t0, %hi(omCurrentObj)
    /* E74EC 80186AAC 3C02800D */  lui        $v0, %hi(gKirbyController)
    /* E74F0 80186AB0 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
    /* E74F4 80186AB4 10000026 */  b          .L80186B50_ovl3
    /* E74F8 80186AB8 30420300 */   andi      $v0, $v0, 0x300
  .L80186ABC_ovl3:
    /* E74FC 80186ABC 3C03800D */  lui        $v1, %hi(gKirbyController)
    /* E7500 80186AC0 94636FE8 */  lhu        $v1, %lo(gKirbyController)($v1)
    /* E7504 80186AC4 24180003 */  addiu      $t8, $zero, 0x3
    /* E7508 80186AC8 30620300 */  andi       $v0, $v1, 0x300
    /* E750C 80186ACC 10400003 */  beqz       $v0, .L80186ADC_ovl3
    /* E7510 80186AD0 30794000 */   andi      $t9, $v1, 0x4000
    /* E7514 80186AD4 1000001E */  b          .L80186B50_ovl3
    /* E7518 80186AD8 AE580044 */   sw        $t8, 0x44($s2)
  .L80186ADC_ovl3:
    /* E751C 80186ADC 1720001C */  bnez       $t9, .L80186B50_ovl3
    /* E7520 80186AE0 00000000 */   nop
    /* E7524 80186AE4 1000001A */  b          .L80186B50_ovl3
    /* E7528 80186AE8 AE440044 */   sw        $a0, 0x44($s2)
  .L80186AEC_ovl3:
    /* E752C 80186AEC 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* E7530 80186AF0 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E7534 80186AF4 44802000 */  mtc1       $zero, $f4
    /* E7538 80186AF8 8D090000 */  lw         $t1, 0x0($t0)
    /* E753C 80186AFC 240B0002 */  addiu      $t3, $zero, 0x2
    /* E7540 80186B00 3C0C800D */  lui        $t4, %hi(gKirbyController)
    /* E7544 80186B04 00095080 */  sll        $t2, $t1, 2
    /* E7548 80186B08 002A0821 */  addu       $at, $at, $t2
    /* E754C 80186B0C C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
    /* E7550 80186B10 46062032 */  c.eq.s     $f4, $f6
    /* E7554 80186B14 00000000 */  nop
    /* E7558 80186B18 45000003 */  bc1f       .L80186B28_ovl3
    /* E755C 80186B1C 00000000 */   nop
    /* E7560 80186B20 10000006 */  b          .L80186B3C_ovl3
    /* E7564 80186B24 AE4B0044 */   sw        $t3, 0x44($s2)
  .L80186B28_ovl3:
    /* E7568 80186B28 958C6FE8 */  lhu        $t4, %lo(gKirbyController)($t4)
    /* E756C 80186B2C 318D4000 */  andi       $t5, $t4, 0x4000
    /* E7570 80186B30 15A00002 */  bnez       $t5, .L80186B3C_ovl3
    /* E7574 80186B34 00000000 */   nop
    /* E7578 80186B38 AE440044 */  sw         $a0, 0x44($s2)
  .L80186B3C_ovl3:
    /* E757C 80186B3C 0C047B5A */  jal        func_8011ED68
    /* E7580 80186B40 00000000 */   nop
    /* E7584 80186B44 3C02800D */  lui        $v0, %hi(gKirbyController)
    /* E7588 80186B48 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
    /* E758C 80186B4C 30420300 */  andi       $v0, $v0, 0x300
  .L80186B50_ovl3:
    /* E7590 80186B50 1040000E */  beqz       $v0, .L80186B8C_ovl3
    /* E7594 80186B54 3C048005 */   lui       $a0, %hi(omCurrentObj)
    /* E7598 80186B58 3C018019 */  lui        $at, %hi(D_80197844_ovl3)
    /* E759C 80186B5C C4347844 */  lwc1       $f20, %lo(D_80197844_ovl3)($at)
    /* E75A0 80186B60 3C018019 */  lui        $at, %hi(D_80197848_ovl3)
    /* E75A4 80186B64 C42A7848 */  lwc1       $f10, %lo(D_80197848_ovl3)($at)
    /* E75A8 80186B68 C6480040 */  lwc1       $f8, 0x40($s2)
    /* E75AC 80186B6C 460A4401 */  sub.s      $f16, $f8, $f10
    /* E75B0 80186B70 E6500040 */  swc1       $f16, 0x40($s2)
    /* E75B4 80186B74 C6520040 */  lwc1       $f18, 0x40($s2)
    /* E75B8 80186B78 4614903C */  c.lt.s     $f18, $f20
    /* E75BC 80186B7C 00000000 */  nop
    /* E75C0 80186B80 45000002 */  bc1f       .L80186B8C_ovl3
    /* E75C4 80186B84 00000000 */   nop
    /* E75C8 80186B88 E6540040 */  swc1       $f20, 0x40($s2)
  .L80186B8C_ovl3:
    /* E75CC 80186B8C 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* E75D0 80186B90 3C18800F */  lui        $t8, %hi(D_800E9560)
    /* E75D4 80186B94 27189560 */  addiu      $t8, $t8, %lo(D_800E9560)
    /* E75D8 80186B98 8C8E0000 */  lw         $t6, 0x0($a0)
    /* E75DC 80186B9C 3C018019 */  lui        $at, %hi(D_8019784C_ovl3)
    /* E75E0 80186BA0 C434784C */  lwc1       $f20, %lo(D_8019784C_ovl3)($at)
    /* E75E4 80186BA4 000E7880 */  sll        $t7, $t6, 2
    /* E75E8 80186BA8 01F81821 */  addu       $v1, $t7, $t8
    /* E75EC 80186BAC 8C650000 */  lw         $a1, 0x0($v1)
    /* E75F0 80186BB0 14A00052 */  bnez       $a1, .L80186CFC_ovl3
    /* E75F4 80186BB4 24ABFFFF */   addiu     $t3, $a1, -0x1
    /* E75F8 80186BB8 8E590044 */  lw         $t9, 0x44($s2)
    /* E75FC 80186BBC 3C11800E */  lui        $s1, %hi(D_800DD710 + 0x38)
    /* E7600 80186BC0 2631D748 */  addiu      $s1, $s1, %lo(D_800DD710 + 0x38)
    /* E7604 80186BC4 2B210002 */  slti       $at, $t9, 0x2
    /* E7608 80186BC8 1420004C */  bnez       $at, .L80186CFC_ovl3
    /* E760C 80186BCC 2410000E */   addiu     $s0, $zero, 0xE
  .L80186BD0_ovl3:
    /* E7610 80186BD0 8E220000 */  lw         $v0, 0x0($s1)
    /* E7614 80186BD4 2401FFFF */  addiu      $at, $zero, -0x1
    /* E7618 80186BD8 1041003F */  beq        $v0, $at, .L80186CD8_ovl3
    /* E761C 80186BDC 24010017 */   addiu     $at, $zero, 0x17
    /* E7620 80186BE0 10410005 */  beq        $v0, $at, .L80186BF8_ovl3
    /* E7624 80186BE4 3C048019 */   lui       $a0, %hi(D_8019236C_ovl3)
    /* E7628 80186BE8 2401001A */  addiu      $at, $zero, 0x1A
    /* E762C 80186BEC 10410002 */  beq        $v0, $at, .L80186BF8_ovl3
    /* E7630 80186BF0 24010018 */   addiu     $at, $zero, 0x18
    /* E7634 80186BF4 14410038 */  bne        $v0, $at, .L80186CD8_ovl3
  .L80186BF8_ovl3:
    /* E7638 80186BF8 2484236C */   addiu     $a0, $a0, %lo(D_8019236C_ovl3)
    /* E763C 80186BFC 02002825 */  or         $a1, $s0, $zero
    /* E7640 80186C00 0C047616 */  jal        func_8011D858
    /* E7644 80186C04 8E460040 */   lw        $a2, 0x40($s2)
    /* E7648 80186C08 50400034 */  beql       $v0, $zero, .L80186CDC_ovl3
    /* E764C 80186C0C 26100001 */   addiu     $s0, $s0, 0x1
    /* E7650 80186C10 0C067C8D */  jal        func_8019F234_ovl7
    /* E7654 80186C14 02002025 */   or        $a0, $s0, $zero
    /* E7658 80186C18 54400030 */  bnel       $v0, $zero, .L80186CDC_ovl3
    /* E765C 80186C1C 26100001 */   addiu     $s0, $s0, 0x1
    /* E7660 80186C20 0C05A4F1 */  jal        func_801693C4_ovl3
    /* E7664 80186C24 24040011 */   addiu     $a0, $zero, 0x11
    /* E7668 80186C28 00021880 */  sll        $v1, $v0, 2
    /* E766C 80186C2C 3C01800E */  lui        $at, %hi(D_800E1B50 + 0x1C0)
    /* E7670 80186C30 00230821 */  addu       $at, $at, $v1
    /* E7674 80186C34 AC301D10 */  sw         $s0, %lo(D_800E1B50 + 0x1C0)($at)
    /* E7678 80186C38 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* E767C 80186C3C 00230821 */  addu       $at, $at, $v1
    /* E7680 80186C40 24080002 */  addiu      $t0, $zero, 0x2
    /* E7684 80186C44 AC28C2E0 */  sw         $t0, %lo(D_800EC2E0)($at)
    /* E7688 80186C48 C6400040 */  lwc1       $f0, 0x40($s2)
    /* E768C 80186C4C 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* E7690 80186C50 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* E7694 80186C54 3C01800F */  lui        $at, %hi(D_800EC660)
    /* E7698 80186C58 00230821 */  addu       $at, $at, $v1
    /* E769C 80186C5C E420C660 */  swc1       $f0, %lo(D_800EC660)($at)
    /* E76A0 80186C60 8C890000 */  lw         $t1, 0x0($a0)
    /* E76A4 80186C64 3C0B800F */  lui        $t3, %hi(D_800E98E0)
    /* E76A8 80186C68 256B98E0 */  addiu      $t3, $t3, %lo(D_800E98E0)
    /* E76AC 80186C6C 00095080 */  sll        $t2, $t1, 2
    /* E76B0 80186C70 014B2821 */  addu       $a1, $t2, $t3
    /* E76B4 80186C74 8CAC0000 */  lw         $t4, 0x0($a1)
    /* E76B8 80186C78 3C01800F */  lui        $at, %hi(D_800E9560)
    /* E76BC 80186C7C 240E000A */  addiu      $t6, $zero, 0xA
    /* E76C0 80186C80 258D0001 */  addiu      $t5, $t4, 0x1
    /* E76C4 80186C84 ACAD0000 */  sw         $t5, 0x0($a1)
    /* E76C8 80186C88 8C8F0000 */  lw         $t7, 0x0($a0)
    /* E76CC 80186C8C 2419001E */  addiu      $t9, $zero, 0x1E
    /* E76D0 80186C90 000FC080 */  sll        $t8, $t7, 2
    /* E76D4 80186C94 00380821 */  addu       $at, $at, $t8
    /* E76D8 80186C98 AC2E9560 */  sw         $t6, %lo(D_800E9560)($at)
    /* E76DC 80186C9C 8C880000 */  lw         $t0, 0x0($a0)
    /* E76E0 80186CA0 3C01800F */  lui        $at, %hi(D_800E9720)
    /* E76E4 80186CA4 00084880 */  sll        $t1, $t0, 2
    /* E76E8 80186CA8 00290821 */  addu       $at, $at, $t1
    /* E76EC 80186CAC AC399720 */  sw         $t9, %lo(D_800E9720)($at)
    /* E76F0 80186CB0 3C018019 */  lui        $at, %hi(D_80197850_ovl3)
    /* E76F4 80186CB4 C4247850 */  lwc1       $f4, %lo(D_80197850_ovl3)($at)
    /* E76F8 80186CB8 46040181 */  sub.s      $f6, $f0, $f4
    /* E76FC 80186CBC E6460040 */  swc1       $f6, 0x40($s2)
    /* E7700 80186CC0 C6480040 */  lwc1       $f8, 0x40($s2)
    /* E7704 80186CC4 4614403C */  c.lt.s     $f8, $f20
    /* E7708 80186CC8 00000000 */  nop
    /* E770C 80186CCC 45020003 */  bc1fl      .L80186CDC_ovl3
    /* E7710 80186CD0 26100001 */   addiu     $s0, $s0, 0x1
    /* E7714 80186CD4 E6540040 */  swc1       $f20, 0x40($s2)
  .L80186CD8_ovl3:
    /* E7718 80186CD8 26100001 */  addiu      $s0, $s0, 0x1
  .L80186CDC_ovl3:
    /* E771C 80186CDC 2401003C */  addiu      $at, $zero, 0x3C
    /* E7720 80186CE0 1601FFBB */  bne        $s0, $at, .L80186BD0_ovl3
    /* E7724 80186CE4 26310004 */   addiu     $s1, $s1, 0x4
    /* E7728 80186CE8 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* E772C 80186CEC 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* E7730 80186CF0 8D420000 */  lw         $v0, 0x0($t2)
    /* E7734 80186CF4 10000004 */  b          .L80186D08_ovl3
    /* E7738 80186CF8 00021080 */   sll       $v0, $v0, 2
  .L80186CFC_ovl3:
    /* E773C 80186CFC AC6B0000 */  sw         $t3, 0x0($v1)
    /* E7740 80186D00 8C820000 */  lw         $v0, 0x0($a0)
    /* E7744 80186D04 00021080 */  sll        $v0, $v0, 2
  .L80186D08_ovl3:
    /* E7748 80186D08 3C0C800F */  lui        $t4, %hi(D_800E98E0)
    /* E774C 80186D0C 258C98E0 */  addiu      $t4, $t4, %lo(D_800E98E0)
    /* E7750 80186D10 004C2821 */  addu       $a1, $v0, $t4
    /* E7754 80186D14 8CAD0000 */  lw         $t5, 0x0($a1)
    /* E7758 80186D18 3C0F800F */  lui        $t7, %hi(D_800E9720)
    /* E775C 80186D1C 25EF9720 */  addiu      $t7, $t7, %lo(D_800E9720)
    /* E7760 80186D20 11A00016 */  beqz       $t5, .L80186D7C_ovl3
    /* E7764 80186D24 3C18800D */   lui       $t8, %hi(gKirbyController)
    /* E7768 80186D28 004F1821 */  addu       $v1, $v0, $t7
    /* E776C 80186D2C 8C640000 */  lw         $a0, 0x0($v1)
    /* E7770 80186D30 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E7774 80186D34 1480000F */  bnez       $a0, .L80186D74_ovl3
    /* E7778 80186D38 248EFFFF */   addiu     $t6, $a0, -0x1
    /* E777C 80186D3C 44810000 */  mtc1       $at, $f0
    /* E7780 80186D40 ACA00000 */  sw         $zero, 0x0($a1)
    /* E7784 80186D44 3C018019 */  lui        $at, %hi(D_80197854_ovl3)
    /* E7788 80186D48 C4307854 */  lwc1       $f16, %lo(D_80197854_ovl3)($at)
    /* E778C 80186D4C C64A0040 */  lwc1       $f10, 0x40($s2)
    /* E7790 80186D50 46105480 */  add.s      $f18, $f10, $f16
    /* E7794 80186D54 E6520040 */  swc1       $f18, 0x40($s2)
    /* E7798 80186D58 C6440040 */  lwc1       $f4, 0x40($s2)
    /* E779C 80186D5C 4604003C */  c.lt.s     $f0, $f4
    /* E77A0 80186D60 00000000 */  nop
    /* E77A4 80186D64 45000016 */  bc1f       .L80186DC0_ovl3
    /* E77A8 80186D68 00000000 */   nop
    /* E77AC 80186D6C 10000014 */  b          .L80186DC0_ovl3
    /* E77B0 80186D70 E6400040 */   swc1      $f0, 0x40($s2)
  .L80186D74_ovl3:
    /* E77B4 80186D74 10000012 */  b          .L80186DC0_ovl3
    /* E77B8 80186D78 AC6E0000 */   sw        $t6, 0x0($v1)
  .L80186D7C_ovl3:
    /* E77BC 80186D7C 97186FE8 */  lhu        $t8, %lo(gKirbyController)($t8)
    /* E77C0 80186D80 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E77C4 80186D84 33080300 */  andi       $t0, $t8, 0x300
    /* E77C8 80186D88 1500000D */  bnez       $t0, .L80186DC0_ovl3
    /* E77CC 80186D8C 00000000 */   nop
    /* E77D0 80186D90 44810000 */  mtc1       $at, $f0
    /* E77D4 80186D94 3C018019 */  lui        $at, %hi(D_80197858_ovl3)
    /* E77D8 80186D98 C4287858 */  lwc1       $f8, %lo(D_80197858_ovl3)($at)
    /* E77DC 80186D9C C6460040 */  lwc1       $f6, 0x40($s2)
    /* E77E0 80186DA0 46083280 */  add.s      $f10, $f6, $f8
    /* E77E4 80186DA4 E64A0040 */  swc1       $f10, 0x40($s2)
    /* E77E8 80186DA8 C6500040 */  lwc1       $f16, 0x40($s2)
    /* E77EC 80186DAC 4610003C */  c.lt.s     $f0, $f16
    /* E77F0 80186DB0 00000000 */  nop
    /* E77F4 80186DB4 45000002 */  bc1f       .L80186DC0_ovl3
    /* E77F8 80186DB8 00000000 */   nop
    /* E77FC 80186DBC E6400040 */  swc1       $f0, 0x40($s2)
  .L80186DC0_ovl3:
    /* E7800 80186DC0 3C018019 */  lui        $at, %hi(D_8019785C_ovl3)
    /* E7804 80186DC4 C42C785C */  lwc1       $f12, %lo(D_8019785C_ovl3)($at)
    /* E7808 80186DC8 3C018019 */  lui        $at, %hi(D_80197860_ovl3)
    /* E780C 80186DCC 0C048333 */  jal        func_80120CCC
    /* E7810 80186DD0 C42E7860 */   lwc1      $f14, %lo(D_80197860_ovl3)($at)
    /* E7814 80186DD4 8E59003C */  lw         $t9, 0x3C($s2)
    /* E7818 80186DD8 8E490044 */  lw         $t1, 0x44($s2)
    /* E781C 80186DDC 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* E7820 80186DE0 5329000D */  beql       $t9, $t1, .L80186E18_ovl3
    /* E7824 80186DE4 8FBF002C */   lw        $ra, 0x2C($sp)
    /* E7828 80186DE8 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* E782C 80186DEC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* E7830 80186DF0 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* E7834 80186DF4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E7838 80186DF8 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* E783C 80186DFC 000B6080 */  sll        $t4, $t3, 2
    /* E7840 80186E00 008C2021 */  addu       $a0, $a0, $t4
    /* E7844 80186E04 0C02C7B2 */  jal        assign_new_process_entry
    /* E7848 80186E08 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* E784C 80186E0C 8E4D0044 */  lw         $t5, 0x44($s2)
    /* E7850 80186E10 AE4D003C */  sw         $t5, 0x3C($s2)
    /* E7854 80186E14 8FBF002C */  lw         $ra, 0x2C($sp)
  .L80186E18_ovl3:
    /* E7858 80186E18 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* E785C 80186E1C 8FB00020 */  lw         $s0, 0x20($sp)
    /* E7860 80186E20 8FB10024 */  lw         $s1, 0x24($sp)
    /* E7864 80186E24 8FB20028 */  lw         $s2, 0x28($sp)
    /* E7868 80186E28 03E00008 */  jr         $ra
    /* E786C 80186E2C 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_80186A20_ovl3
.size func_80186A20_ovl3, . - func_80186A20_ovl3
