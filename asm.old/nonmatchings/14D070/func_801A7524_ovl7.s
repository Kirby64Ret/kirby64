glabel func_801A7524_ovl7
/* 14D594 801A7524 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 14D598 801A7528 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 14D59C 801A752C 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 14D5A0 801A7530 AFBF0024 */  sw         $ra, 0x24($sp)
/* 14D5A4 801A7534 AFA400B8 */  sw         $a0, 0xB8($sp)
/* 14D5A8 801A7538 8DC30000 */  lw         $v1, 0x0($t6)
/* 14D5AC 801A753C 3C05800E */  lui        $a1, %hi(D_800E0D50)
/* 14D5B0 801A7540 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 14D5B4 801A7544 00031080 */  sll        $v0, $v1, 2
/* 14D5B8 801A7548 24A50D50 */  addiu      $a1, $a1, %lo(D_800E0D50)
/* 14D5BC 801A754C 0302C021 */  addu       $t8, $t8, $v0
/* 14D5C0 801A7550 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 14D5C4 801A7554 00A27821 */  addu       $t7, $a1, $v0
/* 14D5C8 801A7558 8DE70000 */  lw         $a3, 0x0($t7)
/* 14D5CC 801A755C 3C0E800E */  lui        $t6, %hi(D_800E7730)
/* 14D5D0 801A7560 01C37021 */  addu       $t6, $t6, $v1
/* 14D5D4 801A7564 91CE7730 */  lbu        $t6, %lo(D_800E7730)($t6)
/* 14D5D8 801A7568 AFA000B0 */  sw         $zero, 0xB0($sp)
/* 14D5DC 801A756C AFB80088 */  sw         $t8, 0x88($sp)
/* 14D5E0 801A7570 8F0D0084 */  lw         $t5, 0x84($t8)
/* 14D5E4 801A7574 24010006 */  addiu      $at, $zero, 0x6
/* 14D5E8 801A7578 15C10016 */  bne        $t6, $at, .L801A75D4_ovl7
/* 14D5EC 801A757C AFAD0084 */   sw        $t5, 0x84($sp)
/* 14D5F0 801A7580 00037840 */  sll        $t7, $v1, 1
/* 14D5F4 801A7584 3C02800E */  lui        $v0, %hi(D_800E77A0)
/* 14D5F8 801A7588 004F1021 */  addu       $v0, $v0, $t7
/* 14D5FC 801A758C 944277A0 */  lhu        $v0, %lo(D_800E77A0)($v0)
/* 14D600 801A7590 18400010 */  blez       $v0, .L801A75D4_ovl7
/* 14D604 801A7594 2841002C */   slti      $at, $v0, 0x2C
/* 14D608 801A7598 1020000E */  beqz       $at, .L801A75D4_ovl7
/* 14D60C 801A759C 00000000 */   nop
/* 14D610 801A75A0 0C070178 */  jal        func_801C05E0_ovl7
/* 14D614 801A75A4 AFA700B4 */   sw        $a3, 0xB4($sp)
/* 14D618 801A75A8 3C05800E */  lui        $a1, %hi(D_800E0D50)
/* 14D61C 801A75AC 24A50D50 */  addiu      $a1, $a1, %lo(D_800E0D50)
/* 14D620 801A75B0 10400008 */  beqz       $v0, .L801A75D4_ovl7
/* 14D624 801A75B4 8FA700B4 */   lw        $a3, 0xB4($sp)
/* 14D628 801A75B8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* 14D62C 801A75BC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* 14D630 801A75C0 851800B2 */  lh         $t8, 0xB2($t0)
/* 14D634 801A75C4 240D0001 */  addiu      $t5, $zero, 0x1
/* 14D638 801A75C8 AFAD00B0 */  sw         $t5, 0xB0($sp)
/* 14D63C 801A75CC 2719FFFF */  addiu      $t9, $t8, -0x1
/* 14D640 801A75D0 A51900B2 */  sh         $t9, 0xB2($t0)
.L801A75D4_ovl7:
/* 14D644 801A75D4 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14D648 801A75D8 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14D64C 801A75DC 3C09800F */  lui        $t1, %hi(D_800EB6A0)
/* 14D650 801A75E0 2529B6A0 */  addiu      $t1, $t1, %lo(D_800EB6A0)
/* 14D654 801A75E4 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14D658 801A75E8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* 14D65C 801A75EC 00072080 */  sll        $a0, $a3, 2
/* 14D660 801A75F0 000E7880 */  sll        $t7, $t6, 2
/* 14D664 801A75F4 012F1821 */  addu       $v1, $t1, $t7
/* 14D668 801A75F8 8C780000 */  lw         $t8, 0x0($v1)
/* 14D66C 801A75FC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* 14D670 801A7600 2719FFFF */  addiu      $t9, $t8, -0x1
/* 14D674 801A7604 AC790000 */  sw         $t9, 0x0($v1)
/* 14D678 801A7608 8CC20000 */  lw         $v0, 0x0($a2)
/* 14D67C 801A760C 00021080 */  sll        $v0, $v0, 2
/* 14D680 801A7610 01226821 */  addu       $t5, $t1, $v0
/* 14D684 801A7614 8DAE0000 */  lw         $t6, 0x0($t5)
/* 14D688 801A7618 3C0D800F */  lui        $t5, %hi(D_800E7CE0 + 0x380)
/* 14D68C 801A761C 01A46821 */  addu       $t5, $t5, $a0
/* 14D690 801A7620 05C10008 */  bgez       $t6, .L801A7644_ovl7
/* 14D694 801A7624 00000000 */   nop
/* 14D698 801A7628 850F00B2 */  lh         $t7, 0xB2($t0)
/* 14D69C 801A762C 24190001 */  addiu      $t9, $zero, 0x1
/* 14D6A0 801A7630 AFB900B0 */  sw         $t9, 0xB0($sp)
/* 14D6A4 801A7634 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 14D6A8 801A7638 A51800B2 */  sh         $t8, 0xB2($t0)
/* 14D6AC 801A763C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14D6B0 801A7640 00021080 */  sll        $v0, $v0, 2
.L801A7644_ovl7:
/* 14D6B4 801A7644 8DAD8060 */  lw         $t5, %lo(D_800E7CE0 + 0x380)($t5)
/* 14D6B8 801A7648 2401FFFF */  addiu      $at, $zero, -0x1
/* 14D6BC 801A764C 240E0001 */  addiu      $t6, $zero, 0x1
/* 14D6C0 801A7650 15A10002 */  bne        $t5, $at, .L801A765C_ovl7
/* 14D6C4 801A7654 00A27821 */   addu      $t7, $a1, $v0
/* 14D6C8 801A7658 AFAE00B0 */  sw         $t6, 0xB0($sp)
.L801A765C_ovl7:
/* 14D6CC 801A765C 8DF80000 */  lw         $t8, 0x0($t7)
/* 14D6D0 801A7660 3C07800E */  lui        $a3, %hi(D_800E6A10)
/* 14D6D4 801A7664 24E76A10 */  addiu      $a3, $a3, %lo(D_800E6A10)
/* 14D6D8 801A7668 0018C880 */  sll        $t9, $t8, 2
/* 14D6DC 801A766C 00F96821 */  addu       $t5, $a3, $t9
/* 14D6E0 801A7670 C5A40000 */  lwc1       $f4, 0x0($t5)
/* 14D6E4 801A7674 00E27021 */  addu       $t6, $a3, $v0
/* 14D6E8 801A7678 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 14D6EC 801A767C E5C40000 */  swc1       $f4, 0x0($t6)
/* 14D6F0 801A7680 8CC20000 */  lw         $v0, 0x0($a2)
/* 14D6F4 801A7684 44813000 */  mtc1       $at, $f6
/* 14D6F8 801A7688 00021080 */  sll        $v0, $v0, 2
/* 14D6FC 801A768C 00E27821 */  addu       $t7, $a3, $v0
/* 14D700 801A7690 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 14D704 801A7694 00A2C021 */  addu       $t8, $a1, $v0
/* 14D708 801A7698 46083032 */  c.eq.s     $f6, $f8
/* 14D70C 801A769C 00000000 */  nop
/* 14D710 801A76A0 4502000B */  bc1fl      .L801A76D0_ovl7
/* 14D714 801A76A4 00A2C021 */   addu      $t8, $a1, $v0
/* 14D718 801A76A8 8F190000 */  lw         $t9, 0x0($t8)
/* 14D71C 801A76AC 3C03800E */  lui        $v1, %hi(D_800E17D0)
/* 14D720 801A76B0 246317D0 */  addiu      $v1, $v1, %lo(D_800E17D0)
/* 14D724 801A76B4 00196880 */  sll        $t5, $t9, 2
/* 14D728 801A76B8 006D7021 */  addu       $t6, $v1, $t5
/* 14D72C 801A76BC C5CA0000 */  lwc1       $f10, 0x0($t6)
/* 14D730 801A76C0 00627821 */  addu       $t7, $v1, $v0
/* 14D734 801A76C4 1000000F */  b          .L801A7704_ovl7
/* 14D738 801A76C8 E5EA0000 */   swc1      $f10, 0x0($t7)
/* 14D73C 801A76CC 00A2C021 */  addu       $t8, $a1, $v0
.L801A76D0_ovl7:
/* 14D740 801A76D0 8F190000 */  lw         $t9, 0x0($t8)
/* 14D744 801A76D4 3C0E800E */  lui        $t6, %hi(D_800E17D0)
/* 14D748 801A76D8 25CE17D0 */  addiu      $t6, $t6, %lo(D_800E17D0)
/* 14D74C 801A76DC 00196880 */  sll        $t5, $t9, 2
/* 14D750 801A76E0 01AE7821 */  addu       $t7, $t5, $t6
/* 14D754 801A76E4 3C01801D */  lui        $at, %hi(D_801CE050_ovl7)
/* 14D758 801A76E8 C426E050 */  lwc1       $f6, %lo(D_801CE050_ovl7)($at)
/* 14D75C 801A76EC C5E40000 */  lwc1       $f4, 0x0($t7)
/* 14D760 801A76F0 004EC021 */  addu       $t8, $v0, $t6
/* 14D764 801A76F4 3C03800E */  lui        $v1, %hi(D_800E17D0)
/* 14D768 801A76F8 46062200 */  add.s      $f8, $f4, $f6
/* 14D76C 801A76FC 246317D0 */  addiu      $v1, $v1, %lo(D_800E17D0)
/* 14D770 801A7700 E7080000 */  swc1       $f8, 0x0($t8)
.L801A7704_ovl7:
/* 14D774 801A7704 8CD90000 */  lw         $t9, 0x0($a2)
/* 14D778 801A7708 00196880 */  sll        $t5, $t9, 2
/* 14D77C 801A770C 006D7821 */  addu       $t7, $v1, $t5
/* 14D780 801A7710 C5EC0000 */  lwc1       $f12, 0x0($t7)
/* 14D784 801A7714 0C00B5B8 */  jal        sinf
/* 14D788 801A7718 AFA4003C */   sw        $a0, 0x3C($sp)
/* 14D78C 801A771C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 14D790 801A7720 44815000 */  mtc1       $at, $f10
/* 14D794 801A7724 44809000 */  mtc1       $zero, $f18
/* 14D798 801A7728 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 14D79C 801A772C 460A0102 */  mul.s      $f4, $f0, $f10
/* 14D7A0 801A7730 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 14D7A4 801A7734 4612203C */  c.lt.s     $f4, $f18
/* 14D7A8 801A7738 00000000 */  nop
/* 14D7AC 801A773C 4500000F */  bc1f       .L801A777C_ovl7
/* 14D7B0 801A7740 00000000 */   nop
/* 14D7B4 801A7744 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 14D7B8 801A7748 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14D7BC 801A774C 8DD80000 */  lw         $t8, 0x0($t6)
/* 14D7C0 801A7750 0018C880 */  sll        $t9, $t8, 2
/* 14D7C4 801A7754 00390821 */  addu       $at, $at, $t9
/* 14D7C8 801A7758 0C00B5B8 */  jal        sinf
/* 14D7CC 801A775C C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
/* 14D7D0 801A7760 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 14D7D4 801A7764 44813000 */  mtc1       $at, $f6
/* 14D7D8 801A7768 00000000 */  nop
/* 14D7DC 801A776C 46060202 */  mul.s      $f8, $f0, $f6
/* 14D7E0 801A7770 46004287 */  neg.s      $f10, $f8
/* 14D7E4 801A7774 1000000D */  b          .L801A77AC_ovl7
/* 14D7E8 801A7778 E7AA00A8 */   swc1      $f10, 0xA8($sp)
.L801A777C_ovl7:
/* 14D7EC 801A777C 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 14D7F0 801A7780 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14D7F4 801A7784 8DAF0000 */  lw         $t7, 0x0($t5)
/* 14D7F8 801A7788 000F7080 */  sll        $t6, $t7, 2
/* 14D7FC 801A778C 002E0821 */  addu       $at, $at, $t6
/* 14D800 801A7790 0C00B5B8 */  jal        sinf
/* 14D804 801A7794 C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
/* 14D808 801A7798 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 14D80C 801A779C 44812000 */  mtc1       $at, $f4
/* 14D810 801A77A0 00000000 */  nop
/* 14D814 801A77A4 46040182 */  mul.s      $f6, $f0, $f4
/* 14D818 801A77A8 E7A600A8 */  swc1       $f6, 0xA8($sp)
.L801A77AC_ovl7:
/* 14D81C 801A77AC 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 14D820 801A77B0 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 14D824 801A77B4 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14D828 801A77B8 8F190000 */  lw         $t9, 0x0($t8)
/* 14D82C 801A77BC 00196880 */  sll        $t5, $t9, 2
/* 14D830 801A77C0 002D0821 */  addu       $at, $at, $t5
/* 14D834 801A77C4 0C00D604 */  jal        cosf
/* 14D838 801A77C8 C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
/* 14D83C 801A77CC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 14D840 801A77D0 44814000 */  mtc1       $at, $f8
/* 14D844 801A77D4 44809000 */  mtc1       $zero, $f18
/* 14D848 801A77D8 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 14D84C 801A77DC 46080282 */  mul.s      $f10, $f0, $f8
/* 14D850 801A77E0 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 14D854 801A77E4 4612503C */  c.lt.s     $f10, $f18
/* 14D858 801A77E8 00000000 */  nop
/* 14D85C 801A77EC 4500000E */  bc1f       .L801A7828_ovl7
/* 14D860 801A77F0 00000000 */   nop
/* 14D864 801A77F4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 14D868 801A77F8 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14D86C 801A77FC 8DEE0000 */  lw         $t6, 0x0($t7)
/* 14D870 801A7800 000EC080 */  sll        $t8, $t6, 2
/* 14D874 801A7804 00380821 */  addu       $at, $at, $t8
/* 14D878 801A7808 0C00D604 */  jal        cosf
/* 14D87C 801A780C C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
/* 14D880 801A7810 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 14D884 801A7814 44812000 */  mtc1       $at, $f4
/* 14D888 801A7818 44809000 */  mtc1       $zero, $f18
/* 14D88C 801A781C 46040402 */  mul.s      $f16, $f0, $f4
/* 14D890 801A7820 1000000D */  b          .L801A7858_ovl7
/* 14D894 801A7824 46008407 */   neg.s     $f16, $f16
.L801A7828_ovl7:
/* 14D898 801A7828 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 14D89C 801A782C 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14D8A0 801A7830 8F2D0000 */  lw         $t5, 0x0($t9)
/* 14D8A4 801A7834 000D7880 */  sll        $t7, $t5, 2
/* 14D8A8 801A7838 002F0821 */  addu       $at, $at, $t7
/* 14D8AC 801A783C 0C00D604 */  jal        cosf
/* 14D8B0 801A7840 C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
/* 14D8B4 801A7844 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 14D8B8 801A7848 44813000 */  mtc1       $at, $f6
/* 14D8BC 801A784C 44809000 */  mtc1       $zero, $f18
/* 14D8C0 801A7850 46060402 */  mul.s      $f16, $f0, $f6
/* 14D8C4 801A7854 00000000 */  nop
.L801A7858_ovl7:
/* 14D8C8 801A7858 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14D8CC 801A785C 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14D8D0 801A7860 3C08800E */  lui        $t0, %hi(D_800E4FD0)
/* 14D8D4 801A7864 25084FD0 */  addiu      $t0, $t0, %lo(D_800E4FD0)
/* 14D8D8 801A7868 8CC30000 */  lw         $v1, 0x0($a2)
/* 14D8DC 801A786C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 14D8E0 801A7870 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14D8E4 801A7874 00031080 */  sll        $v0, $v1, 2
/* 14D8E8 801A7878 00220821 */  addu       $at, $at, $v0
/* 14D8EC 801A787C 01022021 */  addu       $a0, $t0, $v0
/* 14D8F0 801A7880 C4880000 */  lwc1       $f8, 0x0($a0)
/* 14D8F4 801A7884 C42CA6E0 */  lwc1       $f12, %lo(D_800EA6E0)($at)
/* 14D8F8 801A7888 3C0141D0 */  lui        $at, (0x41D00000 >> 16)
/* 14D8FC 801A788C 8FB80088 */  lw         $t8, 0x88($sp)
/* 14D900 801A7890 4608603C */  c.lt.s     $f12, $f8
/* 14D904 801A7894 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 14D908 801A7898 00037100 */  sll        $t6, $v1, 4
/* 14D90C 801A789C 45020019 */  bc1fl      .L801A7904_ovl7
/* 14D910 801A78A0 E48C0000 */   swc1      $f12, 0x0($a0)
/* 14D914 801A78A4 44811000 */  mtc1       $at, $f2
/* 14D918 801A78A8 3C01800E */  lui        $at, %hi(D_800E6F50 + 0xC)
/* 14D91C 801A78AC 002E0821 */  addu       $at, $at, $t6
/* 14D920 801A78B0 C42A6F5C */  lwc1       $f10, %lo(D_800E6F50 + 0xC)($at)
/* 14D924 801A78B4 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 14D928 801A78B8 00220821 */  addu       $at, $at, $v0
/* 14D92C 801A78BC C426AA60 */  lwc1       $f6, %lo(D_800EAA60)($at)
/* 14D930 801A78C0 46025101 */  sub.s      $f4, $f10, $f2
/* 14D934 801A78C4 46023201 */  sub.s      $f8, $f6, $f2
/* 14D938 801A78C8 46082003 */  div.s      $f0, $f4, $f8
/* 14D93C 801A78CC 4612003C */  c.lt.s     $f0, $f18
/* 14D940 801A78D0 00000000 */  nop
/* 14D944 801A78D4 45020004 */  bc1fl      .L801A78E8_ovl7
/* 14D948 801A78D8 46000086 */   mov.s     $f2, $f0
/* 14D94C 801A78DC 10000002 */  b          .L801A78E8_ovl7
/* 14D950 801A78E0 46000087 */   neg.s     $f2, $f0
/* 14D954 801A78E4 46000086 */  mov.s      $f2, $f0
.L801A78E8_ovl7:
/* 14D958 801A78E8 C70A0018 */  lwc1       $f10, 0x18($t8)
/* 14D95C 801A78EC 460C5181 */  sub.s      $f6, $f10, $f12
/* 14D960 801A78F0 46061102 */  mul.s      $f4, $f2, $f6
/* 14D964 801A78F4 46046200 */  add.s      $f8, $f12, $f4
/* 14D968 801A78F8 10000002 */  b          .L801A7904_ovl7
/* 14D96C 801A78FC E4880000 */   swc1      $f8, 0x0($a0)
/* 14D970 801A7900 E48C0000 */  swc1       $f12, 0x0($a0)
.L801A7904_ovl7:
/* 14D974 801A7904 8CC20000 */  lw         $v0, 0x0($a2)
/* 14D978 801A7908 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 14D97C 801A790C 44815000 */  mtc1       $at, $f10
/* 14D980 801A7910 00021080 */  sll        $v0, $v0, 2
/* 14D984 801A7914 01022021 */  addu       $a0, $t0, $v0
/* 14D988 801A7918 C4820000 */  lwc1       $f2, 0x0($a0)
/* 14D98C 801A791C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 14D990 801A7920 4602503C */  c.lt.s     $f10, $f2
/* 14D994 801A7924 00000000 */  nop
/* 14D998 801A7928 45000008 */  bc1f       .L801A794C_ovl7
/* 14D99C 801A792C 00000000 */   nop
/* 14D9A0 801A7930 44813000 */  mtc1       $at, $f6
/* 14D9A4 801A7934 00000000 */  nop
/* 14D9A8 801A7938 E4860000 */  swc1       $f6, 0x0($a0)
/* 14D9AC 801A793C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14D9B0 801A7940 00021080 */  sll        $v0, $v0, 2
/* 14D9B4 801A7944 0102C821 */  addu       $t9, $t0, $v0
/* 14D9B8 801A7948 C7220000 */  lwc1       $f2, 0x0($t9)
.L801A794C_ovl7:
/* 14D9BC 801A794C 3C01800E */  lui        $at, %hi(D_800E5350)
/* 14D9C0 801A7950 00220821 */  addu       $at, $at, $v0
/* 14D9C4 801A7954 E4225350 */  swc1       $f2, %lo(D_800E5350)($at)
/* 14D9C8 801A7958 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14D9CC 801A795C 3C01800E */  lui        $at, %hi(D_800E5190)
/* 14D9D0 801A7960 000D7880 */  sll        $t7, $t5, 2
/* 14D9D4 801A7964 002F0821 */  addu       $at, $at, $t7
/* 14D9D8 801A7968 E4225190 */  swc1       $f2, %lo(D_800E5190)($at)
/* 14D9DC 801A796C 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14D9E0 801A7970 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 14D9E4 801A7974 000EC080 */  sll        $t8, $t6, 2
/* 14D9E8 801A7978 00380821 */  addu       $at, $at, $t8
/* 14D9EC 801A797C E42248D0 */  swc1       $f2, %lo(gEntitiesScaleZArray)($at)
/* 14D9F0 801A7980 8CD90000 */  lw         $t9, 0x0($a2)
/* 14D9F4 801A7984 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 14D9F8 801A7988 00196880 */  sll        $t5, $t9, 2
/* 14D9FC 801A798C 002D0821 */  addu       $at, $at, $t5
/* 14DA00 801A7990 E4224710 */  swc1       $f2, %lo(gEntitiesScaleYArray)($at)
/* 14DA04 801A7994 8CCF0000 */  lw         $t7, 0x0($a2)
/* 14DA08 801A7998 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 14DA0C 801A799C 000F7080 */  sll        $t6, $t7, 2
/* 14DA10 801A79A0 002E0821 */  addu       $at, $at, $t6
/* 14DA14 801A79A4 E4224550 */  swc1       $f2, %lo(gEntitiesScaleXArray)($at)
/* 14DA18 801A79A8 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DA1C 801A79AC 3C01800E */  lui        $at, %hi(D_800E2250)
/* 14DA20 801A79B0 00021080 */  sll        $v0, $v0, 2
/* 14DA24 801A79B4 00220821 */  addu       $at, $at, $v0
/* 14DA28 801A79B8 C42C2250 */  lwc1       $f12, %lo(D_800E2250)($at)
/* 14DA2C 801A79BC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 14DA30 801A79C0 44812000 */  mtc1       $at, $f4
/* 14DA34 801A79C4 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 14DA38 801A79C8 460C203C */  c.lt.s     $f4, $f12
/* 14DA3C 801A79CC 00000000 */  nop
/* 14DA40 801A79D0 45030007 */  bc1tl      .L801A79F0_ovl7
/* 14DA44 801A79D4 3C014140 */   lui       $at, (0x41400000 >> 16)
/* 14DA48 801A79D8 44814000 */  mtc1       $at, $f8
/* 14DA4C 801A79DC 00000000 */  nop
/* 14DA50 801A79E0 4608603C */  c.lt.s     $f12, $f8
/* 14DA54 801A79E4 00000000 */  nop
/* 14DA58 801A79E8 45000032 */  bc1f       .L801A7AB4_ovl7
/* 14DA5C 801A79EC 3C014140 */   lui       $at, (0x41400000 >> 16)
.L801A79F0_ovl7:
/* 14DA60 801A79F0 44816000 */  mtc1       $at, $f12
/* 14DA64 801A79F4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 14DA68 801A79F8 44813000 */  mtc1       $at, $f6
/* 14DA6C 801A79FC C54A0000 */  lwc1       $f10, 0x0($t2)
/* 14DA70 801A7A00 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 14DA74 801A7A04 44814000 */  mtc1       $at, $f8
/* 14DA78 801A7A08 46065100 */  add.s      $f4, $f10, $f6
/* 14DA7C 801A7A0C 0142C021 */  addu       $t8, $t2, $v0
/* 14DA80 801A7A10 C7060000 */  lwc1       $f6, 0x0($t8)
/* 14DA84 801A7A14 3C01801D */  lui        $at, %hi(D_801CE054_ovl7)
/* 14DA88 801A7A18 46082280 */  add.s      $f10, $f4, $f8
/* 14DA8C 801A7A1C C424E054 */  lwc1       $f4, %lo(D_801CE054_ovl7)($at)
/* 14DA90 801A7A20 3C03800D */  lui        $v1, %hi(D_800D71E8 + 0x50)
/* 14DA94 801A7A24 24637238 */  addiu      $v1, $v1, %lo(D_800D71E8 + 0x50)
/* 14DA98 801A7A28 46065001 */  sub.s      $f0, $f10, $f6
/* 14DA9C 801A7A2C 44807000 */  mtc1       $zero, $f14
/* 14DAA0 801A7A30 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x54)
/* 14DAA4 801A7A34 3C01C140 */  lui        $at, (0xC1400000 >> 16)
/* 14DAA8 801A7A38 46040202 */  mul.s      $f8, $f0, $f4
/* 14DAAC 801A7A3C 2484723C */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x54)
/* 14DAB0 801A7A40 E4680000 */  swc1       $f8, 0x0($v1)
/* 14DAB4 801A7A44 C4620000 */  lwc1       $f2, 0x0($v1)
/* 14DAB8 801A7A48 4602603C */  c.lt.s     $f12, $f2
/* 14DABC 801A7A4C 00000000 */  nop
/* 14DAC0 801A7A50 45020005 */  bc1fl      .L801A7A68_ovl7
/* 14DAC4 801A7A54 44810000 */   mtc1      $at, $f0
/* 14DAC8 801A7A58 E46C0000 */  swc1       $f12, 0x0($v1)
/* 14DACC 801A7A5C 10000009 */  b          .L801A7A84_ovl7
/* 14DAD0 801A7A60 C4620000 */   lwc1      $f2, 0x0($v1)
/* 14DAD4 801A7A64 44810000 */  mtc1       $at, $f0
.L801A7A68_ovl7:
/* 14DAD8 801A7A68 00000000 */  nop
/* 14DADC 801A7A6C 4600103C */  c.lt.s     $f2, $f0
/* 14DAE0 801A7A70 00000000 */  nop
/* 14DAE4 801A7A74 45020004 */  bc1fl      .L801A7A88_ovl7
/* 14DAE8 801A7A78 4612103C */   c.lt.s    $f2, $f18
/* 14DAEC 801A7A7C E4600000 */  swc1       $f0, 0x0($v1)
/* 14DAF0 801A7A80 C4620000 */  lwc1       $f2, 0x0($v1)
.L801A7A84_ovl7:
/* 14DAF4 801A7A84 4612103C */  c.lt.s     $f2, $f18
.L801A7A88_ovl7:
/* 14DAF8 801A7A88 00000000 */  nop
/* 14DAFC 801A7A8C 45020007 */  bc1fl      .L801A7AAC_ovl7
/* 14DB00 801A7A90 E4820000 */   swc1      $f2, 0x0($a0)
/* 14DB04 801A7A94 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x54)
/* 14DB08 801A7A98 46001287 */  neg.s      $f10, $f2
/* 14DB0C 801A7A9C 2484723C */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x54)
/* 14DB10 801A7AA0 10000002 */  b          .L801A7AAC_ovl7
/* 14DB14 801A7AA4 E48A0000 */   swc1      $f10, 0x0($a0)
/* 14DB18 801A7AA8 E4820000 */  swc1       $f2, 0x0($a0)
.L801A7AAC_ovl7:
/* 14DB1C 801A7AAC 1000000C */  b          .L801A7AE0_ovl7
/* 14DB20 801A7AB0 C4800000 */   lwc1      $f0, 0x0($a0)
.L801A7AB4_ovl7:
/* 14DB24 801A7AB4 44807000 */  mtc1       $zero, $f14
/* 14DB28 801A7AB8 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x54)
/* 14DB2C 801A7ABC 2484723C */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x54)
/* 14DB30 801A7AC0 E48E0000 */  swc1       $f14, 0x0($a0)
/* 14DB34 801A7AC4 C4800000 */  lwc1       $f0, 0x0($a0)
/* 14DB38 801A7AC8 3C03800D */  lui        $v1, %hi(D_800D71E8 + 0x50)
/* 14DB3C 801A7ACC 24637238 */  addiu      $v1, $v1, %lo(D_800D71E8 + 0x50)
/* 14DB40 801A7AD0 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14DB44 801A7AD4 E4600000 */  swc1       $f0, 0x0($v1)
/* 14DB48 801A7AD8 C4620000 */  lwc1       $f2, 0x0($v1)
/* 14DB4C 801A7ADC 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
.L801A7AE0_ovl7:
/* 14DB50 801A7AE0 3C01801D */  lui        $at, %hi(D_801CE058_ovl7)
/* 14DB54 801A7AE4 C426E058 */  lwc1       $f6, %lo(D_801CE058_ovl7)($at)
/* 14DB58 801A7AE8 8CD90000 */  lw         $t9, 0x0($a2)
/* 14DB5C 801A7AEC 4612003C */  c.lt.s     $f0, $f18
/* 14DB60 801A7AF0 46061102 */  mul.s      $f4, $f2, $f6
/* 14DB64 801A7AF4 3C01800E */  lui        $at, %hi(D_800E3750)
/* 14DB68 801A7AF8 00196880 */  sll        $t5, $t9, 2
/* 14DB6C 801A7AFC 002D0821 */  addu       $at, $at, $t5
/* 14DB70 801A7B00 45000008 */  bc1f       .L801A7B24_ovl7
/* 14DB74 801A7B04 E4243750 */   swc1      $f4, %lo(D_800E3750)($at)
/* 14DB78 801A7B08 8CCF0000 */  lw         $t7, 0x0($a2)
/* 14DB7C 801A7B0C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 14DB80 801A7B10 46000207 */  neg.s      $f8, $f0
/* 14DB84 801A7B14 000F7080 */  sll        $t6, $t7, 2
/* 14DB88 801A7B18 002E0821 */  addu       $at, $at, $t6
/* 14DB8C 801A7B1C 10000006 */  b          .L801A7B38_ovl7
/* 14DB90 801A7B20 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
.L801A7B24_ovl7:
/* 14DB94 801A7B24 8CD80000 */  lw         $t8, 0x0($a2)
/* 14DB98 801A7B28 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 14DB9C 801A7B2C 0018C880 */  sll        $t9, $t8, 2
/* 14DBA0 801A7B30 00390821 */  addu       $at, $at, $t9
/* 14DBA4 801A7B34 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L801A7B38_ovl7:
/* 14DBA8 801A7B38 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DBAC 801A7B3C 3C01800E */  lui        $at, %hi(D_800E2090)
/* 14DBB0 801A7B40 8FAD003C */  lw         $t5, 0x3C($sp)
/* 14DBB4 801A7B44 00021080 */  sll        $v0, $v0, 2
/* 14DBB8 801A7B48 00220821 */  addu       $at, $at, $v0
/* 14DBBC 801A7B4C C4202090 */  lwc1       $f0, %lo(D_800E2090)($at)
/* 14DBC0 801A7B50 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosXArray)
/* 14DBC4 801A7B54 25EF25D0 */  addiu      $t7, $t7, %lo(gEntitiesNextPosXArray)
/* 14DBC8 801A7B58 4612003C */  c.lt.s     $f0, $f18
/* 14DBCC 801A7B5C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 14DBD0 801A7B60 C7AA00A8 */  lwc1       $f10, 0xA8($sp)
/* 14DBD4 801A7B64 004FC021 */  addu       $t8, $v0, $t7
/* 14DBD8 801A7B68 45000003 */  bc1f       .L801A7B78_ovl7
/* 14DBDC 801A7B6C 01AF7021 */   addu      $t6, $t5, $t7
/* 14DBE0 801A7B70 10000002 */  b          .L801A7B7C_ovl7
/* 14DBE4 801A7B74 46000087 */   neg.s     $f2, $f0
.L801A7B78_ovl7:
/* 14DBE8 801A7B78 46000086 */  mov.s      $f2, $f0
.L801A7B7C_ovl7:
/* 14DBEC 801A7B7C 4602503C */  c.lt.s     $f10, $f2
/* 14DBF0 801A7B80 00000000 */  nop
/* 14DBF4 801A7B84 45020027 */  bc1fl      .L801A7C24_ovl7
/* 14DBF8 801A7B88 E48E0000 */   swc1      $f14, 0x0($a0)
/* 14DBFC 801A7B8C C5C60000 */  lwc1       $f6, 0x0($t6)
/* 14DC00 801A7B90 C7040000 */  lwc1       $f4, 0x0($t8)
/* 14DC04 801A7B94 44816000 */  mtc1       $at, $f12
/* 14DC08 801A7B98 3C01801D */  lui        $at, %hi(D_801CE05C_ovl7)
/* 14DC0C 801A7B9C 46043001 */  sub.s      $f0, $f6, $f4
/* 14DC10 801A7BA0 C428E05C */  lwc1       $f8, %lo(D_801CE05C_ovl7)($at)
/* 14DC14 801A7BA4 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* 14DC18 801A7BA8 46080282 */  mul.s      $f10, $f0, $f8
/* 14DC1C 801A7BAC E46A0000 */  swc1       $f10, 0x0($v1)
/* 14DC20 801A7BB0 C4620000 */  lwc1       $f2, 0x0($v1)
/* 14DC24 801A7BB4 4602603C */  c.lt.s     $f12, $f2
/* 14DC28 801A7BB8 00000000 */  nop
/* 14DC2C 801A7BBC 45020005 */  bc1fl      .L801A7BD4_ovl7
/* 14DC30 801A7BC0 44813000 */   mtc1      $at, $f6
/* 14DC34 801A7BC4 E46C0000 */  swc1       $f12, 0x0($v1)
/* 14DC38 801A7BC8 1000000B */  b          .L801A7BF8_ovl7
/* 14DC3C 801A7BCC C4620000 */   lwc1      $f2, 0x0($v1)
/* 14DC40 801A7BD0 44813000 */  mtc1       $at, $f6
.L801A7BD4_ovl7:
/* 14DC44 801A7BD4 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* 14DC48 801A7BD8 4606103C */  c.lt.s     $f2, $f6
/* 14DC4C 801A7BDC 00000000 */  nop
/* 14DC50 801A7BE0 45020006 */  bc1fl      .L801A7BFC_ovl7
/* 14DC54 801A7BE4 4612103C */   c.lt.s    $f2, $f18
/* 14DC58 801A7BE8 44812000 */  mtc1       $at, $f4
/* 14DC5C 801A7BEC 00000000 */  nop
/* 14DC60 801A7BF0 E4640000 */  swc1       $f4, 0x0($v1)
/* 14DC64 801A7BF4 C4620000 */  lwc1       $f2, 0x0($v1)
.L801A7BF8_ovl7:
/* 14DC68 801A7BF8 4612103C */  c.lt.s     $f2, $f18
.L801A7BFC_ovl7:
/* 14DC6C 801A7BFC 00000000 */  nop
/* 14DC70 801A7C00 45020005 */  bc1fl      .L801A7C18_ovl7
/* 14DC74 801A7C04 E4820000 */   swc1      $f2, 0x0($a0)
/* 14DC78 801A7C08 46001207 */  neg.s      $f8, $f2
/* 14DC7C 801A7C0C 10000002 */  b          .L801A7C18_ovl7
/* 14DC80 801A7C10 E4880000 */   swc1      $f8, 0x0($a0)
/* 14DC84 801A7C14 E4820000 */  swc1       $f2, 0x0($a0)
.L801A7C18_ovl7:
/* 14DC88 801A7C18 10000007 */  b          .L801A7C38_ovl7
/* 14DC8C 801A7C1C C4800000 */   lwc1      $f0, 0x0($a0)
/* 14DC90 801A7C20 E48E0000 */  swc1       $f14, 0x0($a0)
.L801A7C24_ovl7:
/* 14DC94 801A7C24 C4800000 */  lwc1       $f0, 0x0($a0)
/* 14DC98 801A7C28 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 14DC9C 801A7C2C 44816000 */  mtc1       $at, $f12
/* 14DCA0 801A7C30 E4600000 */  swc1       $f0, 0x0($v1)
/* 14DCA4 801A7C34 C4620000 */  lwc1       $f2, 0x0($v1)
.L801A7C38_ovl7:
/* 14DCA8 801A7C38 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 14DCAC 801A7C3C 44815000 */  mtc1       $at, $f10
/* 14DCB0 801A7C40 8CD90000 */  lw         $t9, 0x0($a2)
/* 14DCB4 801A7C44 4612003C */  c.lt.s     $f0, $f18
/* 14DCB8 801A7C48 460A1182 */  mul.s      $f6, $f2, $f10
/* 14DCBC 801A7C4C 3C01800E */  lui        $at, %hi(D_800E3590)
/* 14DCC0 801A7C50 00196880 */  sll        $t5, $t9, 2
/* 14DCC4 801A7C54 002D0821 */  addu       $at, $at, $t5
/* 14DCC8 801A7C58 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosZArray)
/* 14DCCC 801A7C5C 256B2950 */  addiu      $t3, $t3, %lo(gEntitiesNextPosZArray)
/* 14DCD0 801A7C60 45000008 */  bc1f       .L801A7C84_ovl7
/* 14DCD4 801A7C64 E4263590 */   swc1      $f6, %lo(D_800E3590)($at)
/* 14DCD8 801A7C68 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14DCDC 801A7C6C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14DCE0 801A7C70 46000107 */  neg.s      $f4, $f0
/* 14DCE4 801A7C74 000E7880 */  sll        $t7, $t6, 2
/* 14DCE8 801A7C78 002F0821 */  addu       $at, $at, $t7
/* 14DCEC 801A7C7C 10000006 */  b          .L801A7C98_ovl7
/* 14DCF0 801A7C80 E4243AD0 */   swc1      $f4, %lo(D_800E3AD0)($at)
.L801A7C84_ovl7:
/* 14DCF4 801A7C84 8CD80000 */  lw         $t8, 0x0($a2)
/* 14DCF8 801A7C88 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14DCFC 801A7C8C 0018C880 */  sll        $t9, $t8, 2
/* 14DD00 801A7C90 00390821 */  addu       $at, $at, $t9
/* 14DD04 801A7C94 E4203AD0 */  swc1       $f0, %lo(D_800E3AD0)($at)
.L801A7C98_ovl7:
/* 14DD08 801A7C98 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DD0C 801A7C9C 3C01800E */  lui        $at, %hi(D_800E2410)
/* 14DD10 801A7CA0 8FAD003C */  lw         $t5, 0x3C($sp)
/* 14DD14 801A7CA4 00021080 */  sll        $v0, $v0, 2
/* 14DD18 801A7CA8 00220821 */  addu       $at, $at, $v0
/* 14DD1C 801A7CAC C4202410 */  lwc1       $f0, %lo(D_800E2410)($at)
/* 14DD20 801A7CB0 01627821 */  addu       $t7, $t3, $v0
/* 14DD24 801A7CB4 016D7021 */  addu       $t6, $t3, $t5
/* 14DD28 801A7CB8 4612003C */  c.lt.s     $f0, $f18
/* 14DD2C 801A7CBC 00000000 */  nop
/* 14DD30 801A7CC0 45020004 */  bc1fl      .L801A7CD4_ovl7
/* 14DD34 801A7CC4 46000086 */   mov.s     $f2, $f0
/* 14DD38 801A7CC8 10000002 */  b          .L801A7CD4_ovl7
/* 14DD3C 801A7CCC 46000087 */   neg.s     $f2, $f0
/* 14DD40 801A7CD0 46000086 */  mov.s      $f2, $f0
.L801A7CD4_ovl7:
/* 14DD44 801A7CD4 4602803C */  c.lt.s     $f16, $f2
/* 14DD48 801A7CD8 00000000 */  nop
/* 14DD4C 801A7CDC 45020024 */  bc1fl      .L801A7D70_ovl7
/* 14DD50 801A7CE0 E48E0000 */   swc1      $f14, 0x0($a0)
/* 14DD54 801A7CE4 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 14DD58 801A7CE8 C5EA0000 */  lwc1       $f10, 0x0($t7)
/* 14DD5C 801A7CEC 3C01801D */  lui        $at, %hi(D_801CE060_ovl7)
/* 14DD60 801A7CF0 C426E060 */  lwc1       $f6, %lo(D_801CE060_ovl7)($at)
/* 14DD64 801A7CF4 460A4001 */  sub.s      $f0, $f8, $f10
/* 14DD68 801A7CF8 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* 14DD6C 801A7CFC 46060102 */  mul.s      $f4, $f0, $f6
/* 14DD70 801A7D00 E4640000 */  swc1       $f4, 0x0($v1)
/* 14DD74 801A7D04 C4620000 */  lwc1       $f2, 0x0($v1)
/* 14DD78 801A7D08 4602603C */  c.lt.s     $f12, $f2
/* 14DD7C 801A7D0C 00000000 */  nop
/* 14DD80 801A7D10 45020005 */  bc1fl      .L801A7D28_ovl7
/* 14DD84 801A7D14 44810000 */   mtc1      $at, $f0
/* 14DD88 801A7D18 E46C0000 */  swc1       $f12, 0x0($v1)
/* 14DD8C 801A7D1C 10000009 */  b          .L801A7D44_ovl7
/* 14DD90 801A7D20 C4620000 */   lwc1      $f2, 0x0($v1)
/* 14DD94 801A7D24 44810000 */  mtc1       $at, $f0
.L801A7D28_ovl7:
/* 14DD98 801A7D28 00000000 */  nop
/* 14DD9C 801A7D2C 4600103C */  c.lt.s     $f2, $f0
/* 14DDA0 801A7D30 00000000 */  nop
/* 14DDA4 801A7D34 45020004 */  bc1fl      .L801A7D48_ovl7
/* 14DDA8 801A7D38 4612103C */   c.lt.s    $f2, $f18
/* 14DDAC 801A7D3C E4600000 */  swc1       $f0, 0x0($v1)
/* 14DDB0 801A7D40 C4620000 */  lwc1       $f2, 0x0($v1)
.L801A7D44_ovl7:
/* 14DDB4 801A7D44 4612103C */  c.lt.s     $f2, $f18
.L801A7D48_ovl7:
/* 14DDB8 801A7D48 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x54)
/* 14DDBC 801A7D4C 45020005 */  bc1fl      .L801A7D64_ovl7
/* 14DDC0 801A7D50 E4820000 */   swc1      $f2, 0x0($a0)
/* 14DDC4 801A7D54 46001207 */  neg.s      $f8, $f2
/* 14DDC8 801A7D58 10000002 */  b          .L801A7D64_ovl7
/* 14DDCC 801A7D5C E4880000 */   swc1      $f8, 0x0($a0)
/* 14DDD0 801A7D60 E4820000 */  swc1       $f2, 0x0($a0)
.L801A7D64_ovl7:
/* 14DDD4 801A7D64 10000007 */  b          .L801A7D84_ovl7
/* 14DDD8 801A7D68 C420723C */   lwc1      $f0, %lo(D_800D71E8 + 0x54)($at)
/* 14DDDC 801A7D6C E48E0000 */  swc1       $f14, 0x0($a0)
.L801A7D70_ovl7:
/* 14DDE0 801A7D70 C4800000 */  lwc1       $f0, 0x0($a0)
/* 14DDE4 801A7D74 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosZArray)
/* 14DDE8 801A7D78 256B2950 */  addiu      $t3, $t3, %lo(gEntitiesNextPosZArray)
/* 14DDEC 801A7D7C E4600000 */  swc1       $f0, 0x0($v1)
/* 14DDF0 801A7D80 C4620000 */  lwc1       $f2, 0x0($v1)
.L801A7D84_ovl7:
/* 14DDF4 801A7D84 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 14DDF8 801A7D88 44815000 */  mtc1       $at, $f10
/* 14DDFC 801A7D8C 8CD80000 */  lw         $t8, 0x0($a2)
/* 14DE00 801A7D90 4612003C */  c.lt.s     $f0, $f18
/* 14DE04 801A7D94 460A1182 */  mul.s      $f6, $f2, $f10
/* 14DE08 801A7D98 3C01800E */  lui        $at, %hi(D_800E3910)
/* 14DE0C 801A7D9C 0018C880 */  sll        $t9, $t8, 2
/* 14DE10 801A7DA0 00390821 */  addu       $at, $at, $t9
/* 14DE14 801A7DA4 3C05800E */  lui        $a1, %hi(D_800E4C50)
/* 14DE18 801A7DA8 24A54C50 */  addiu      $a1, $a1, %lo(D_800E4C50)
/* 14DE1C 801A7DAC 45000008 */  bc1f       .L801A7DD0_ovl7
/* 14DE20 801A7DB0 E4263910 */   swc1      $f6, %lo(D_800E3910)($at)
/* 14DE24 801A7DB4 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14DE28 801A7DB8 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 14DE2C 801A7DBC 46000107 */  neg.s      $f4, $f0
/* 14DE30 801A7DC0 000D7080 */  sll        $t6, $t5, 2
/* 14DE34 801A7DC4 002E0821 */  addu       $at, $at, $t6
/* 14DE38 801A7DC8 10000006 */  b          .L801A7DE4_ovl7
/* 14DE3C 801A7DCC E4243E50 */   swc1      $f4, %lo(D_800E3E50)($at)
.L801A7DD0_ovl7:
/* 14DE40 801A7DD0 8CCF0000 */  lw         $t7, 0x0($a2)
/* 14DE44 801A7DD4 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 14DE48 801A7DD8 000FC080 */  sll        $t8, $t7, 2
/* 14DE4C 801A7DDC 00380821 */  addu       $at, $at, $t8
/* 14DE50 801A7DE0 E4203E50 */  swc1       $f0, %lo(D_800E3E50)($at)
.L801A7DE4_ovl7:
/* 14DE54 801A7DE4 8CD90000 */  lw         $t9, 0x0($a2)
/* 14DE58 801A7DE8 3C01801D */  lui        $at, %hi(D_801CE064_ovl7)
/* 14DE5C 801A7DEC C42AE064 */  lwc1       $f10, %lo(D_801CE064_ovl7)($at)
/* 14DE60 801A7DF0 00196880 */  sll        $t5, $t9, 2
/* 14DE64 801A7DF4 00AD1821 */  addu       $v1, $a1, $t5
/* 14DE68 801A7DF8 C4680000 */  lwc1       $f8, 0x0($v1)
/* 14DE6C 801A7DFC 3C07800E */  lui        $a3, %hi(D_800E4E10)
/* 14DE70 801A7E00 24E74E10 */  addiu      $a3, $a3, %lo(D_800E4E10)
/* 14DE74 801A7E04 460A4181 */  sub.s      $f6, $f8, $f10
/* 14DE78 801A7E08 3C01801D */  lui        $at, %hi(D_801CE068_ovl7)
/* 14DE7C 801A7E0C E4660000 */  swc1       $f6, 0x0($v1)
/* 14DE80 801A7E10 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DE84 801A7E14 00021080 */  sll        $v0, $v0, 2
/* 14DE88 801A7E18 00A21821 */  addu       $v1, $a1, $v0
/* 14DE8C 801A7E1C C4600000 */  lwc1       $f0, 0x0($v1)
/* 14DE90 801A7E20 460E003C */  c.lt.s     $f0, $f14
/* 14DE94 801A7E24 00000000 */  nop
/* 14DE98 801A7E28 45020007 */  bc1fl      .L801A7E48_ovl7
/* 14DE9C 801A7E2C 00E21821 */   addu      $v1, $a3, $v0
/* 14DEA0 801A7E30 C424E068 */  lwc1       $f4, %lo(D_801CE068_ovl7)($at)
/* 14DEA4 801A7E34 46040200 */  add.s      $f8, $f0, $f4
/* 14DEA8 801A7E38 E4680000 */  swc1       $f8, 0x0($v1)
/* 14DEAC 801A7E3C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DEB0 801A7E40 00021080 */  sll        $v0, $v0, 2
/* 14DEB4 801A7E44 00E21821 */  addu       $v1, $a3, $v0
.L801A7E48_ovl7:
/* 14DEB8 801A7E48 3C01801D */  lui        $at, %hi(D_801CE06C_ovl7)
/* 14DEBC 801A7E4C C42AE06C */  lwc1       $f10, %lo(D_801CE06C_ovl7)($at)
/* 14DEC0 801A7E50 C4600000 */  lwc1       $f0, 0x0($v1)
/* 14DEC4 801A7E54 3C01801D */  lui        $at, %hi(D_801CE070_ovl7)
/* 14DEC8 801A7E58 4600503C */  c.lt.s     $f10, $f0
/* 14DECC 801A7E5C 00000000 */  nop
/* 14DED0 801A7E60 45000010 */  bc1f       .L801A7EA4_ovl7
/* 14DED4 801A7E64 00000000 */   nop
/* 14DED8 801A7E68 C426E070 */  lwc1       $f6, %lo(D_801CE070_ovl7)($at)
/* 14DEDC 801A7E6C 3C01801D */  lui        $at, %hi(D_801CE074_ovl7)
/* 14DEE0 801A7E70 4606003C */  c.lt.s     $f0, $f6
/* 14DEE4 801A7E74 00000000 */  nop
/* 14DEE8 801A7E78 4500000A */  bc1f       .L801A7EA4_ovl7
/* 14DEEC 801A7E7C 00000000 */   nop
/* 14DEF0 801A7E80 C424E074 */  lwc1       $f4, %lo(D_801CE074_ovl7)($at)
/* 14DEF4 801A7E84 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 14DEF8 801A7E88 00220821 */  addu       $at, $at, $v0
/* 14DEFC 801A7E8C E424A8A0 */  swc1       $f4, %lo(D_800EA8A0)($at)
/* 14DF00 801A7E90 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DF04 801A7E94 00021080 */  sll        $v0, $v0, 2
/* 14DF08 801A7E98 00E21821 */  addu       $v1, $a3, $v0
/* 14DF0C 801A7E9C 10000016 */  b          .L801A7EF8_ovl7
/* 14DF10 801A7EA0 C4600000 */   lwc1      $f0, 0x0($v1)
.L801A7EA4_ovl7:
/* 14DF14 801A7EA4 3C01801D */  lui        $at, %hi(D_801CE078_ovl7)
/* 14DF18 801A7EA8 C428E078 */  lwc1       $f8, %lo(D_801CE078_ovl7)($at)
/* 14DF1C 801A7EAC 3C01801D */  lui        $at, %hi(D_801CE07C_ovl7)
/* 14DF20 801A7EB0 4608003C */  c.lt.s     $f0, $f8
/* 14DF24 801A7EB4 00000000 */  nop
/* 14DF28 801A7EB8 4500000F */  bc1f       .L801A7EF8_ovl7
/* 14DF2C 801A7EBC 00000000 */   nop
/* 14DF30 801A7EC0 C42AE07C */  lwc1       $f10, %lo(D_801CE07C_ovl7)($at)
/* 14DF34 801A7EC4 3C01801D */  lui        $at, %hi(D_801CE080_ovl7)
/* 14DF38 801A7EC8 4600503C */  c.lt.s     $f10, $f0
/* 14DF3C 801A7ECC 00000000 */  nop
/* 14DF40 801A7ED0 45000009 */  bc1f       .L801A7EF8_ovl7
/* 14DF44 801A7ED4 00000000 */   nop
/* 14DF48 801A7ED8 C426E080 */  lwc1       $f6, %lo(D_801CE080_ovl7)($at)
/* 14DF4C 801A7EDC 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 14DF50 801A7EE0 00220821 */  addu       $at, $at, $v0
/* 14DF54 801A7EE4 E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
/* 14DF58 801A7EE8 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DF5C 801A7EEC 00021080 */  sll        $v0, $v0, 2
/* 14DF60 801A7EF0 00E21821 */  addu       $v1, $a3, $v0
/* 14DF64 801A7EF4 C4600000 */  lwc1       $f0, 0x0($v1)
.L801A7EF8_ovl7:
/* 14DF68 801A7EF8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 14DF6C 801A7EFC 00220821 */  addu       $at, $at, $v0
/* 14DF70 801A7F00 C424A8A0 */  lwc1       $f4, %lo(D_800EA8A0)($at)
/* 14DF74 801A7F04 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 14DF78 801A7F08 8FB80088 */  lw         $t8, 0x88($sp)
/* 14DF7C 801A7F0C 46040200 */  add.s      $f8, $f0, $f4
/* 14DF80 801A7F10 E4680000 */  swc1       $f8, 0x0($v1)
/* 14DF84 801A7F14 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DF88 801A7F18 8FA90084 */  lw         $t1, 0x84($sp)
/* 14DF8C 801A7F1C 00021080 */  sll        $v0, $v0, 2
/* 14DF90 801A7F20 00A27021 */  addu       $t6, $a1, $v0
/* 14DF94 801A7F24 C5CA0000 */  lwc1       $f10, 0x0($t6)
/* 14DF98 801A7F28 00220821 */  addu       $at, $at, $v0
/* 14DF9C 801A7F2C E42A41D0 */  swc1       $f10, %lo(gEntitiesAngleYArray)($at)
/* 14DFA0 801A7F30 8CC20000 */  lw         $v0, 0x0($a2)
/* 14DFA4 801A7F34 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
/* 14DFA8 801A7F38 00021080 */  sll        $v0, $v0, 2
/* 14DFAC 801A7F3C 00E27821 */  addu       $t7, $a3, $v0
/* 14DFB0 801A7F40 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 14DFB4 801A7F44 00220821 */  addu       $at, $at, $v0
/* 14DFB8 801A7F48 E4264390 */  swc1       $f6, %lo(gEntitiesAngleZArray)($at)
/* 14DFBC 801A7F4C 8F190088 */  lw         $t9, 0x88($t8)
/* 14DFC0 801A7F50 8F240010 */  lw         $a0, 0x10($t9)
/* 14DFC4 801A7F54 50800039 */  beql       $a0, $zero, .L801A803C_ovl7
/* 14DFC8 801A7F58 8CC20000 */   lw        $v0, 0x0($a2)
/* 14DFCC 801A7F5C 51200037 */  beql       $t1, $zero, .L801A803C_ovl7
/* 14DFD0 801A7F60 8CC20000 */   lw        $v0, 0x0($a2)
/* 14DFD4 801A7F64 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14DFD8 801A7F68 3C01801D */  lui        $at, %hi(D_801CE084_ovl7)
/* 14DFDC 801A7F6C C420E084 */  lwc1       $f0, %lo(D_801CE084_ovl7)($at)
/* 14DFE0 801A7F70 000D7080 */  sll        $t6, $t5, 2
/* 14DFE4 801A7F74 010E7821 */  addu       $t7, $t0, $t6
/* 14DFE8 801A7F78 C5E40000 */  lwc1       $f4, 0x0($t7)
/* 14DFEC 801A7F7C C48A0004 */  lwc1       $f10, 0x4($a0)
/* 14DFF0 801A7F80 3C01801D */  lui        $at, %hi(D_801CE088_ovl7)
/* 14DFF4 801A7F84 46002202 */  mul.s      $f8, $f4, $f0
/* 14DFF8 801A7F88 C422E088 */  lwc1       $f2, %lo(D_801CE088_ovl7)($at)
/* 14DFFC 801A7F8C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 14E000 801A7F90 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14E004 801A7F94 460A4182 */  mul.s      $f6, $f8, $f10
/* 14E008 801A7F98 E5260014 */  swc1       $f6, 0x14($t1)
/* 14E00C 801A7F9C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 14E010 801A7FA0 8FAF0088 */  lw         $t7, 0x88($sp)
/* 14E014 801A7FA4 8F190000 */  lw         $t9, 0x0($t8)
/* 14E018 801A7FA8 8DF80088 */  lw         $t8, 0x88($t7)
/* 14E01C 801A7FAC 00196880 */  sll        $t5, $t9, 2
/* 14E020 801A7FB0 010D7021 */  addu       $t6, $t0, $t5
/* 14E024 801A7FB4 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 14E028 801A7FB8 8F190010 */  lw         $t9, 0x10($t8)
/* 14E02C 801A7FBC 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 14E030 801A7FC0 46002202 */  mul.s      $f8, $f4, $f0
/* 14E034 801A7FC4 C72A0008 */  lwc1       $f10, 0x8($t9)
/* 14E038 801A7FC8 460A4182 */  mul.s      $f6, $f8, $f10
/* 14E03C 801A7FCC E5260018 */  swc1       $f6, 0x18($t1)
/* 14E040 801A7FD0 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 14E044 801A7FD4 8FB90088 */  lw         $t9, 0x88($sp)
/* 14E048 801A7FD8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 14E04C 801A7FDC 8F2D0088 */  lw         $t5, 0x88($t9)
/* 14E050 801A7FE0 000E7880 */  sll        $t7, $t6, 2
/* 14E054 801A7FE4 010FC021 */  addu       $t8, $t0, $t7
/* 14E058 801A7FE8 C7040000 */  lwc1       $f4, 0x0($t8)
/* 14E05C 801A7FEC 8DAE0010 */  lw         $t6, 0x10($t5)
/* 14E060 801A7FF0 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 14E064 801A7FF4 46022202 */  mul.s      $f8, $f4, $f2
/* 14E068 801A7FF8 C5CA000C */  lwc1       $f10, 0xC($t6)
/* 14E06C 801A7FFC 460A4182 */  mul.s      $f6, $f8, $f10
/* 14E070 801A8000 E526001C */  swc1       $f6, 0x1C($t1)
/* 14E074 801A8004 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 14E078 801A8008 8FAE0088 */  lw         $t6, 0x88($sp)
/* 14E07C 801A800C 8DF80000 */  lw         $t8, 0x0($t7)
/* 14E080 801A8010 8DCF0088 */  lw         $t7, 0x88($t6)
/* 14E084 801A8014 0018C880 */  sll        $t9, $t8, 2
/* 14E088 801A8018 01196821 */  addu       $t5, $t0, $t9
/* 14E08C 801A801C C5A40000 */  lwc1       $f4, 0x0($t5)
/* 14E090 801A8020 8DF80010 */  lw         $t8, 0x10($t7)
/* 14E094 801A8024 46022202 */  mul.s      $f8, $f4, $f2
/* 14E098 801A8028 C70A0010 */  lwc1       $f10, 0x10($t8)
/* 14E09C 801A802C 460A4182 */  mul.s      $f6, $f8, $f10
/* 14E0A0 801A8030 E5260020 */  swc1       $f6, 0x20($t1)
/* 14E0A4 801A8034 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14E0A8 801A8038 8CC20000 */  lw         $v0, 0x0($a2)
.L801A803C_ovl7:
/* 14E0AC 801A803C 8FA90084 */  lw         $t1, 0x84($sp)
/* 14E0B0 801A8040 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 14E0B4 801A8044 00021080 */  sll        $v0, $v0, 2
/* 14E0B8 801A8048 00220821 */  addu       $at, $at, $v0
/* 14E0BC 801A804C 0142C821 */  addu       $t9, $t2, $v0
/* 14E0C0 801A8050 01626821 */  addu       $t5, $t3, $v0
/* 14E0C4 801A8054 C42025D0 */  lwc1       $f0, %lo(gEntitiesNextPosXArray)($at)
/* 14E0C8 801A8058 C7220000 */  lwc1       $f2, 0x0($t9)
/* 14E0CC 801A805C 1120000D */  beqz       $t1, .L801A8094_ovl7
/* 14E0D0 801A8060 C5AC0000 */   lwc1      $f12, 0x0($t5)
/* 14E0D4 801A8064 8FA400B8 */  lw         $a0, 0xB8($sp)
/* 14E0D8 801A8068 E7A0008C */  swc1       $f0, 0x8C($sp)
/* 14E0DC 801A806C E7A20090 */  swc1       $f2, 0x90($sp)
/* 14E0E0 801A8070 0C06835D */  jal        func_801A0D74_ovl7
/* 14E0E4 801A8074 E7AC0094 */   swc1      $f12, 0x94($sp)
/* 14E0E8 801A8078 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14E0EC 801A807C 44807000 */  mtc1       $zero, $f14
/* 14E0F0 801A8080 44809000 */  mtc1       $zero, $f18
/* 14E0F4 801A8084 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 14E0F8 801A8088 C7A0008C */  lwc1       $f0, 0x8C($sp)
/* 14E0FC 801A808C C7A20090 */  lwc1       $f2, 0x90($sp)
/* 14E100 801A8090 C7AC0094 */  lwc1       $f12, 0x94($sp)
.L801A8094_ovl7:
/* 14E104 801A8094 3C088013 */  lui        $t0, %hi(D_8012BCA0)
/* 14E108 801A8098 2508BCA0 */  addiu      $t0, $t0, %lo(D_8012BCA0)
/* 14E10C 801A809C 8D070000 */  lw         $a3, 0x0($t0)
/* 14E110 801A80A0 00002025 */  or         $a0, $zero, $zero
/* 14E114 801A80A4 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14E118 801A80A8 00073CC2 */  srl        $a3, $a3, 19
/* 14E11C 801A80AC 30EE0007 */  andi       $t6, $a3, 0x7
/* 14E120 801A80B0 11C00002 */  beqz       $t6, .L801A80BC_ovl7
/* 14E124 801A80B4 30EF0038 */   andi      $t7, $a3, 0x38
/* 14E128 801A80B8 15E00004 */  bnez       $t7, .L801A80CC_ovl7
.L801A80BC_ovl7:
/* 14E12C 801A80BC 30F801C0 */   andi      $t8, $a3, 0x1C0
/* 14E130 801A80C0 13000009 */  beqz       $t8, .L801A80E8_ovl7
/* 14E134 801A80C4 30F90E00 */   andi      $t9, $a3, 0xE00
/* 14E138 801A80C8 13200007 */  beqz       $t9, .L801A80E8_ovl7
.L801A80CC_ovl7:
/* 14E13C 801A80CC 3C028013 */   lui       $v0, %hi(gKirbyState)
/* 14E140 801A80D0 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 14E144 801A80D4 844D00B2 */  lh         $t5, 0xB2($v0)
/* 14E148 801A80D8 240F0001 */  addiu      $t7, $zero, 0x1
/* 14E14C 801A80DC AFAF00B0 */  sw         $t7, 0xB0($sp)
/* 14E150 801A80E0 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 14E154 801A80E4 A44E00B2 */  sh         $t6, 0xB2($v0)
.L801A80E8_ovl7:
/* 14E158 801A80E8 8FB800B0 */  lw         $t8, 0xB0($sp)
/* 14E15C 801A80EC 24010001 */  addiu      $at, $zero, 0x1
/* 14E160 801A80F0 00002825 */  or         $a1, $zero, $zero
/* 14E164 801A80F4 1701000E */  bne        $t8, $at, .L801A8130_ovl7
/* 14E168 801A80F8 3C01801A */   lui       $at, %hi(D_80198820_ovl3)
/* 14E16C 801A80FC 44067000 */  mfc1       $a2, $f14
/* 14E170 801A8100 44077000 */  mfc1       $a3, $f14
/* 14E174 801A8104 E4328820 */  swc1       $f18, %lo(D_80198820_ovl3)($at)
/* 14E178 801A8108 0C03F55C */  jal        func_800FD570
/* 14E17C 801A810C E7AE0010 */   swc1      $f14, 0x10($sp)
/* 14E180 801A8110 0C029D9E */  jal        play_sound
/* 14E184 801A8114 24040158 */   addiu     $a0, $zero, 0x158
/* 14E188 801A8118 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 14E18C 801A811C 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 14E190 801A8120 0C067656 */  jal        func_8019D958_ovl7
/* 14E194 801A8124 97240002 */   lhu       $a0, 0x2($t9)
/* 14E198 801A8128 1000029D */  b          .L801A8BA0_ovl7
/* 14E19C 801A812C 8FBF0024 */   lw        $ra, 0x24($sp)
.L801A8130_ovl7:
/* 14E1A0 801A8130 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14E1A4 801A8134 30ED0FFF */  andi       $t5, $a3, 0xFFF
/* 14E1A8 801A8138 3C0E800E */  lui        $t6, %hi(D_800E2090)
/* 14E1AC 801A813C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E1B0 801A8140 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 14E1B4 801A8144 11A00022 */  beqz       $t5, .L801A81D0_ovl7
/* 14E1B8 801A8148 00021080 */   sll       $v0, $v0, 2
/* 14E1BC 801A814C 00220821 */  addu       $at, $at, $v0
/* 14E1C0 801A8150 C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 14E1C4 801A8154 25CE2090 */  addiu      $t6, $t6, %lo(D_800E2090)
/* 14E1C8 801A8158 004E2021 */  addu       $a0, $v0, $t6
/* 14E1CC 801A815C 46080281 */  sub.s      $f10, $f0, $f8
/* 14E1D0 801A8160 C4840000 */  lwc1       $f4, 0x0($a0)
/* 14E1D4 801A8164 3C0F800E */  lui        $t7, %hi(D_800E2250)
/* 14E1D8 801A8168 25EF2250 */  addiu      $t7, $t7, %lo(D_800E2250)
/* 14E1DC 801A816C 460A2181 */  sub.s      $f6, $f4, $f10
/* 14E1E0 801A8170 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 14E1E4 801A8174 3C19800E */  lui        $t9, %hi(D_800E2410)
/* 14E1E8 801A8178 27392410 */  addiu      $t9, $t9, %lo(D_800E2410)
/* 14E1EC 801A817C E4860000 */  swc1       $f6, 0x0($a0)
/* 14E1F0 801A8180 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E1F4 801A8184 00021080 */  sll        $v0, $v0, 2
/* 14E1F8 801A8188 0142C021 */  addu       $t8, $t2, $v0
/* 14E1FC 801A818C C7040000 */  lwc1       $f4, 0x0($t8)
/* 14E200 801A8190 004F1821 */  addu       $v1, $v0, $t7
/* 14E204 801A8194 C4680000 */  lwc1       $f8, 0x0($v1)
/* 14E208 801A8198 46041281 */  sub.s      $f10, $f2, $f4
/* 14E20C 801A819C 460A4181 */  sub.s      $f6, $f8, $f10
/* 14E210 801A81A0 E4660000 */  swc1       $f6, 0x0($v1)
/* 14E214 801A81A4 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E218 801A81A8 00021080 */  sll        $v0, $v0, 2
/* 14E21C 801A81AC 00220821 */  addu       $at, $at, $v0
/* 14E220 801A81B0 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 14E224 801A81B4 00592821 */  addu       $a1, $v0, $t9
/* 14E228 801A81B8 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 14E22C 801A81BC 46086281 */  sub.s      $f10, $f12, $f8
/* 14E230 801A81C0 460A2181 */  sub.s      $f6, $f4, $f10
/* 14E234 801A81C4 E4A60000 */  swc1       $f6, 0x0($a1)
/* 14E238 801A81C8 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E23C 801A81CC 00021080 */  sll        $v0, $v0, 2
.L801A81D0_ovl7:
/* 14E240 801A81D0 3C0D800F */  lui        $t5, %hi(D_800EB6A0)
/* 14E244 801A81D4 01A26821 */  addu       $t5, $t5, $v0
/* 14E248 801A81D8 8DADB6A0 */  lw         $t5, %lo(D_800EB6A0)($t5)
/* 14E24C 801A81DC 3C09800F */  lui        $t1, %hi(D_800E9C60)
/* 14E250 801A81E0 25299C60 */  addiu      $t1, $t1, %lo(D_800E9C60)
/* 14E254 801A81E4 29A1002A */  slti       $at, $t5, 0x2A
/* 14E258 801A81E8 1020026C */  beqz       $at, .L801A8B9C_ovl7
/* 14E25C 801A81EC 01221821 */   addu      $v1, $t1, $v0
/* 14E260 801A81F0 8C640000 */  lw         $a0, 0x0($v1)
/* 14E264 801A81F4 3C0C800E */  lui        $t4, %hi(gEntitiesNextPosXArray)
/* 14E268 801A81F8 258C25D0 */  addiu      $t4, $t4, %lo(gEntitiesNextPosXArray)
/* 14E26C 801A81FC 14800117 */  bnez       $a0, .L801A865C_ovl7
/* 14E270 801A8200 01827021 */   addu      $t6, $t4, $v0
/* 14E274 801A8204 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 14E278 801A8208 00220821 */  addu       $at, $at, $v0
/* 14E27C 801A820C C4202B10 */  lwc1       $f0, %lo(gEntitiesPosXArray)($at)
/* 14E280 801A8210 C5CC0000 */  lwc1       $f12, 0x0($t6)
/* 14E284 801A8214 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 14E288 801A8218 44818000 */  mtc1       $at, $f16
/* 14E28C 801A821C 4600603C */  c.lt.s     $f12, $f0
/* 14E290 801A8220 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 14E294 801A8224 00220821 */  addu       $at, $at, $v0
/* 14E298 801A8228 01427821 */  addu       $t7, $t2, $v0
/* 14E29C 801A822C 45020005 */  bc1fl      .L801A8244_ovl7
/* 14E2A0 801A8230 46006081 */   sub.s     $f2, $f12, $f0
/* 14E2A4 801A8234 46006081 */  sub.s      $f2, $f12, $f0
/* 14E2A8 801A8238 10000002 */  b          .L801A8244_ovl7
/* 14E2AC 801A823C 46001087 */   neg.s     $f2, $f2
/* 14E2B0 801A8240 46006081 */  sub.s      $f2, $f12, $f0
.L801A8244_ovl7:
/* 14E2B4 801A8244 4610103C */  c.lt.s     $f2, $f16
/* 14E2B8 801A8248 00000000 */  nop
/* 14E2BC 801A824C 45020104 */  bc1fl      .L801A8660_ovl7
/* 14E2C0 801A8250 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 14E2C4 801A8254 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 14E2C8 801A8258 C4222CD0 */  lwc1       $f2, %lo(gEntitiesPosYArray)($at)
/* 14E2CC 801A825C 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosZArray)
/* 14E2D0 801A8260 256B2950 */  addiu      $t3, $t3, %lo(gEntitiesNextPosZArray)
/* 14E2D4 801A8264 4602003C */  c.lt.s     $f0, $f2
/* 14E2D8 801A8268 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* 14E2DC 801A826C 00220821 */  addu       $at, $at, $v0
/* 14E2E0 801A8270 0162C021 */  addu       $t8, $t3, $v0
/* 14E2E4 801A8274 45020005 */  bc1fl      .L801A828C_ovl7
/* 14E2E8 801A8278 46020381 */   sub.s     $f14, $f0, $f2
/* 14E2EC 801A827C 46020381 */  sub.s      $f14, $f0, $f2
/* 14E2F0 801A8280 10000002 */  b          .L801A828C_ovl7
/* 14E2F4 801A8284 46007387 */   neg.s     $f14, $f14
/* 14E2F8 801A8288 46020381 */  sub.s      $f14, $f0, $f2
.L801A828C_ovl7:
/* 14E2FC 801A828C 4610703C */  c.lt.s     $f14, $f16
/* 14E300 801A8290 00000000 */  nop
/* 14E304 801A8294 450200F2 */  bc1fl      .L801A8660_ovl7
/* 14E308 801A8298 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 14E30C 801A829C C7000000 */  lwc1       $f0, 0x0($t8)
/* 14E310 801A82A0 C4222E90 */  lwc1       $f2, %lo(gEntitiesPosZArray)($at)
/* 14E314 801A82A4 30F9003F */  andi       $t9, $a3, 0x3F
/* 14E318 801A82A8 4602003C */  c.lt.s     $f0, $f2
/* 14E31C 801A82AC 00000000 */  nop
/* 14E320 801A82B0 45020005 */  bc1fl      .L801A82C8_ovl7
/* 14E324 801A82B4 46020381 */   sub.s     $f14, $f0, $f2
/* 14E328 801A82B8 46020381 */  sub.s      $f14, $f0, $f2
/* 14E32C 801A82BC 10000002 */  b          .L801A82C8_ovl7
/* 14E330 801A82C0 46007387 */   neg.s     $f14, $f14
/* 14E334 801A82C4 46020381 */  sub.s      $f14, $f0, $f2
.L801A82C8_ovl7:
/* 14E338 801A82C8 4610703C */  c.lt.s     $f14, $f16
/* 14E33C 801A82CC 00000000 */  nop
/* 14E340 801A82D0 450200E3 */  bc1fl      .L801A8660_ovl7
/* 14E344 801A82D4 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 14E348 801A82D8 532000E1 */  beql       $t9, $zero, .L801A8660_ovl7
/* 14E34C 801A82DC 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 14E350 801A82E0 E7AC0078 */  swc1       $f12, 0x78($sp)
/* 14E354 801A82E4 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14E358 801A82E8 27A40060 */  addiu      $a0, $sp, 0x60
/* 14E35C 801A82EC 000D7080 */  sll        $t6, $t5, 2
/* 14E360 801A82F0 014E7821 */  addu       $t7, $t2, $t6
/* 14E364 801A82F4 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 14E368 801A82F8 E7A8007C */  swc1       $f8, 0x7C($sp)
/* 14E36C 801A82FC 8CD80000 */  lw         $t8, 0x0($a2)
/* 14E370 801A8300 0018C880 */  sll        $t9, $t8, 2
/* 14E374 801A8304 01796821 */  addu       $t5, $t3, $t9
/* 14E378 801A8308 C5A40000 */  lwc1       $f4, 0x0($t5)
/* 14E37C 801A830C 8FB9003C */  lw         $t9, 0x3C($sp)
/* 14E380 801A8310 E7A40080 */  swc1       $f4, 0x80($sp)
/* 14E384 801A8314 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14E388 801A8318 01996821 */  addu       $t5, $t4, $t9
/* 14E38C 801A831C C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 14E390 801A8320 000E7880 */  sll        $t7, $t6, 2
/* 14E394 801A8324 018FC021 */  addu       $t8, $t4, $t7
/* 14E398 801A8328 C70C0000 */  lwc1       $f12, 0x0($t8)
/* 14E39C 801A832C 460C5181 */  sub.s      $f6, $f10, $f12
/* 14E3A0 801A8330 46103202 */  mul.s      $f8, $f6, $f16
/* 14E3A4 801A8334 460C4100 */  add.s      $f4, $f8, $f12
/* 14E3A8 801A8338 E7A4006C */  swc1       $f4, 0x6C($sp)
/* 14E3AC 801A833C 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14E3B0 801A8340 000E7880 */  sll        $t7, $t6, 2
/* 14E3B4 801A8344 014FC021 */  addu       $t8, $t2, $t7
/* 14E3B8 801A8348 C70A0000 */  lwc1       $f10, 0x0($t8)
/* 14E3BC 801A834C 0179C021 */  addu       $t8, $t3, $t9
/* 14E3C0 801A8350 C7060000 */  lwc1       $f6, 0x0($t8)
/* 14E3C4 801A8354 E7AA0070 */  swc1       $f10, 0x70($sp)
/* 14E3C8 801A8358 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14E3CC 801A835C 000D7080 */  sll        $t6, $t5, 2
/* 14E3D0 801A8360 016E7821 */  addu       $t7, $t3, $t6
/* 14E3D4 801A8364 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 14E3D8 801A8368 46003201 */  sub.s      $f8, $f6, $f0
/* 14E3DC 801A836C 46104282 */  mul.s      $f10, $f8, $f16
/* 14E3E0 801A8370 C7A80078 */  lwc1       $f8, 0x78($sp)
/* 14E3E4 801A8374 46005180 */  add.s      $f6, $f10, $f0
/* 14E3E8 801A8378 46082281 */  sub.s      $f10, $f4, $f8
/* 14E3EC 801A837C C7A8007C */  lwc1       $f8, 0x7C($sp)
/* 14E3F0 801A8380 C7A40070 */  lwc1       $f4, 0x70($sp)
/* 14E3F4 801A8384 E7A60074 */  swc1       $f6, 0x74($sp)
/* 14E3F8 801A8388 E7AA0060 */  swc1       $f10, 0x60($sp)
/* 14E3FC 801A838C 46082281 */  sub.s      $f10, $f4, $f8
/* 14E400 801A8390 C7A40080 */  lwc1       $f4, 0x80($sp)
/* 14E404 801A8394 46043201 */  sub.s      $f8, $f6, $f4
/* 14E408 801A8398 E7AA0064 */  swc1       $f10, 0x64($sp)
/* 14E40C 801A839C 0C006328 */  jal        lbvector_Normalize
/* 14E410 801A83A0 E7A80068 */   swc1      $f8, 0x68($sp)
/* 14E414 801A83A4 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 14E418 801A83A8 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 14E41C 801A83AC 8FB80084 */  lw         $t8, 0x84($sp)
/* 14E420 801A83B0 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14E424 801A83B4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 14E428 801A83B8 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 14E42C 801A83BC C7060014 */  lwc1       $f6, 0x14($t8)
/* 14E430 801A83C0 000E7880 */  sll        $t7, $t6, 2
/* 14E434 801A83C4 014FC821 */  addu       $t9, $t2, $t7
/* 14E438 801A83C8 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 14E43C 801A83CC AFA0001C */  sw         $zero, 0x1C($sp)
/* 14E440 801A83D0 AFA00018 */  sw         $zero, 0x18($sp)
/* 14E444 801A83D4 46065100 */  add.s      $f4, $f10, $f6
/* 14E448 801A83D8 AFA00014 */  sw         $zero, 0x14($sp)
/* 14E44C 801A83DC AFA00010 */  sw         $zero, 0x10($sp)
/* 14E450 801A83E0 27A40078 */  addiu      $a0, $sp, 0x78
/* 14E454 801A83E4 E7A40070 */  swc1       $f4, 0x70($sp)
/* 14E458 801A83E8 E7A4007C */  swc1       $f4, 0x7C($sp)
/* 14E45C 801A83EC 27A5006C */  addiu      $a1, $sp, 0x6C
/* 14E460 801A83F0 27A60060 */  addiu      $a2, $sp, 0x60
/* 14E464 801A83F4 0C04108F */  jal        func_8010423C
/* 14E468 801A83F8 00003825 */   or        $a3, $zero, $zero
/* 14E46C 801A83FC 3C088013 */  lui        $t0, %hi(D_8012BCA0)
/* 14E470 801A8400 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14E474 801A8404 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 14E478 801A8408 10400009 */  beqz       $v0, .L801A8430_ovl7
/* 14E47C 801A840C 2508BCA0 */   addiu     $t0, $t0, %lo(D_8012BCA0)
/* 14E480 801A8410 8D0D0000 */  lw         $t5, 0x0($t0)
/* 14E484 801A8414 000D74C2 */  srl        $t6, $t5, 19
/* 14E488 801A8418 950D0000 */  lhu        $t5, 0x0($t0)
/* 14E48C 801A841C 35CF0012 */  ori        $t7, $t6, 0x12
/* 14E490 801A8420 000FC0C0 */  sll        $t8, $t7, 3
/* 14E494 801A8424 31AE0007 */  andi       $t6, $t5, 0x7
/* 14E498 801A8428 030E7825 */  or         $t7, $t8, $t6
/* 14E49C 801A842C A50F0000 */  sh         $t7, 0x0($t0)
.L801A8430_ovl7:
/* 14E4A0 801A8430 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 14E4A4 801A8434 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 14E4A8 801A8438 8FAF0084 */  lw         $t7, 0x84($sp)
/* 14E4AC 801A843C 27A40078 */  addiu      $a0, $sp, 0x78
/* 14E4B0 801A8440 8F2D0000 */  lw         $t5, 0x0($t9)
/* 14E4B4 801A8444 C5EA0018 */  lwc1       $f10, 0x18($t7)
/* 14E4B8 801A8448 27A5006C */  addiu      $a1, $sp, 0x6C
/* 14E4BC 801A844C 000DC080 */  sll        $t8, $t5, 2
/* 14E4C0 801A8450 01587021 */  addu       $t6, $t2, $t8
/* 14E4C4 801A8454 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 14E4C8 801A8458 AFA0001C */  sw         $zero, 0x1C($sp)
/* 14E4CC 801A845C AFA00018 */  sw         $zero, 0x18($sp)
/* 14E4D0 801A8460 460A4180 */  add.s      $f6, $f8, $f10
/* 14E4D4 801A8464 AFA00014 */  sw         $zero, 0x14($sp)
/* 14E4D8 801A8468 AFA00010 */  sw         $zero, 0x10($sp)
/* 14E4DC 801A846C 27A60060 */  addiu      $a2, $sp, 0x60
/* 14E4E0 801A8470 E7A60070 */  swc1       $f6, 0x70($sp)
/* 14E4E4 801A8474 E7A6007C */  swc1       $f6, 0x7C($sp)
/* 14E4E8 801A8478 0C04108F */  jal        func_8010423C
/* 14E4EC 801A847C 00003825 */   or        $a3, $zero, $zero
/* 14E4F0 801A8480 3C088013 */  lui        $t0, %hi(D_8012BCA0)
/* 14E4F4 801A8484 3C09800F */  lui        $t1, %hi(D_800E9C60)
/* 14E4F8 801A8488 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14E4FC 801A848C 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 14E500 801A8490 25299C60 */  addiu      $t1, $t1, %lo(D_800E9C60)
/* 14E504 801A8494 10400009 */  beqz       $v0, .L801A84BC_ovl7
/* 14E508 801A8498 2508BCA0 */   addiu     $t0, $t0, %lo(D_8012BCA0)
/* 14E50C 801A849C 8D190000 */  lw         $t9, 0x0($t0)
/* 14E510 801A84A0 00196CC2 */  srl        $t5, $t9, 19
/* 14E514 801A84A4 95190000 */  lhu        $t9, 0x0($t0)
/* 14E518 801A84A8 35B80024 */  ori        $t8, $t5, 0x24
/* 14E51C 801A84AC 001878C0 */  sll        $t7, $t8, 3
/* 14E520 801A84B0 332D0007 */  andi       $t5, $t9, 0x7
/* 14E524 801A84B4 01EDC025 */  or         $t8, $t7, $t5
/* 14E528 801A84B8 A5180000 */  sh         $t8, 0x0($t0)
.L801A84BC_ovl7:
/* 14E52C 801A84BC 8D070000 */  lw         $a3, 0x0($t0)
/* 14E530 801A84C0 00073CC2 */  srl        $a3, $a3, 19
/* 14E534 801A84C4 30E20002 */  andi       $v0, $a3, 0x2
/* 14E538 801A84C8 10400002 */  beqz       $v0, .L801A84D4_ovl7
/* 14E53C 801A84CC 30EE0004 */   andi      $t6, $a3, 0x4
/* 14E540 801A84D0 11C00004 */  beqz       $t6, .L801A84E4_ovl7
.L801A84D4_ovl7:
/* 14E544 801A84D4 30E30010 */   andi      $v1, $a3, 0x10
/* 14E548 801A84D8 10600016 */  beqz       $v1, .L801A8534_ovl7
/* 14E54C 801A84DC 30F90020 */   andi      $t9, $a3, 0x20
/* 14E550 801A84E0 17200014 */  bnez       $t9, .L801A8534_ovl7
.L801A84E4_ovl7:
/* 14E554 801A84E4 3C068005 */   lui       $a2, %hi(D_8004A7C4)
/* 14E558 801A84E8 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14E55C 801A84EC 240F000E */  addiu      $t7, $zero, 0xE
/* 14E560 801A84F0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 14E564 801A84F4 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14E568 801A84F8 44812000 */  mtc1       $at, $f4
/* 14E56C 801A84FC 3C05800F */  lui        $a1, %hi(D_800EAC20)
/* 14E570 801A8500 000DC080 */  sll        $t8, $t5, 2
/* 14E574 801A8504 01387021 */  addu       $t6, $t1, $t8
/* 14E578 801A8508 ADCF0000 */  sw         $t7, 0x0($t6)
/* 14E57C 801A850C 8CD90000 */  lw         $t9, 0x0($a2)
/* 14E580 801A8510 24A5AC20 */  addiu      $a1, $a1, %lo(D_800EAC20)
/* 14E584 801A8514 00196880 */  sll        $t5, $t9, 2
/* 14E588 801A8518 00ADC021 */  addu       $t8, $a1, $t5
/* 14E58C 801A851C E7040000 */  swc1       $f4, 0x0($t8)
/* 14E590 801A8520 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E594 801A8524 00021080 */  sll        $v0, $v0, 2
/* 14E598 801A8528 01221821 */  addu       $v1, $t1, $v0
/* 14E59C 801A852C 1000004B */  b          .L801A865C_ovl7
/* 14E5A0 801A8530 8C640000 */   lw        $a0, 0x0($v1)
.L801A8534_ovl7:
/* 14E5A4 801A8534 14400003 */  bnez       $v0, .L801A8544_ovl7
/* 14E5A8 801A8538 30EF0004 */   andi      $t7, $a3, 0x4
/* 14E5AC 801A853C 15E00004 */  bnez       $t7, .L801A8550_ovl7
/* 14E5B0 801A8540 00000000 */   nop
.L801A8544_ovl7:
/* 14E5B4 801A8544 14600016 */  bnez       $v1, .L801A85A0_ovl7
/* 14E5B8 801A8548 30EE0020 */   andi      $t6, $a3, 0x20
/* 14E5BC 801A854C 11C00014 */  beqz       $t6, .L801A85A0_ovl7
.L801A8550_ovl7:
/* 14E5C0 801A8550 3C068005 */   lui       $a2, %hi(D_8004A7C4)
/* 14E5C4 801A8554 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14E5C8 801A8558 2419000E */  addiu      $t9, $zero, 0xE
/* 14E5CC 801A855C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 14E5D0 801A8560 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14E5D4 801A8564 44814000 */  mtc1       $at, $f8
/* 14E5D8 801A8568 3C05800F */  lui        $a1, %hi(D_800EAC20)
/* 14E5DC 801A856C 000DC080 */  sll        $t8, $t5, 2
/* 14E5E0 801A8570 01387821 */  addu       $t7, $t1, $t8
/* 14E5E4 801A8574 ADF90000 */  sw         $t9, 0x0($t7)
/* 14E5E8 801A8578 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14E5EC 801A857C 24A5AC20 */  addiu      $a1, $a1, %lo(D_800EAC20)
/* 14E5F0 801A8580 000E6880 */  sll        $t5, $t6, 2
/* 14E5F4 801A8584 00ADC021 */  addu       $t8, $a1, $t5
/* 14E5F8 801A8588 E7080000 */  swc1       $f8, 0x0($t8)
/* 14E5FC 801A858C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E600 801A8590 00021080 */  sll        $v0, $v0, 2
/* 14E604 801A8594 01221821 */  addu       $v1, $t1, $v0
/* 14E608 801A8598 10000030 */  b          .L801A865C_ovl7
/* 14E60C 801A859C 8C640000 */   lw        $a0, 0x0($v1)
.L801A85A0_ovl7:
/* 14E610 801A85A0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 14E614 801A85A4 44812000 */  mtc1       $at, $f4
/* 14E618 801A85A8 C5460000 */  lwc1       $f6, 0x0($t2)
/* 14E61C 801A85AC 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14E620 801A85B0 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14E624 801A85B4 46043200 */  add.s      $f8, $f6, $f4
/* 14E628 801A85B8 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 14E62C 801A85BC 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E630 801A85C0 44813000 */  mtc1       $at, $f6
/* 14E634 801A85C4 00021080 */  sll        $v0, $v0, 2
/* 14E638 801A85C8 46064100 */  add.s      $f4, $f8, $f6
/* 14E63C 801A85CC 0142C821 */  addu       $t9, $t2, $v0
/* 14E640 801A85D0 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 14E644 801A85D4 4604503C */  c.lt.s     $f10, $f4
/* 14E648 801A85D8 00000000 */  nop
/* 14E64C 801A85DC 45000010 */  bc1f       .L801A8620_ovl7
/* 14E650 801A85E0 240F000E */   addiu     $t7, $zero, 0xE
/* 14E654 801A85E4 01227021 */  addu       $t6, $t1, $v0
/* 14E658 801A85E8 ADCF0000 */  sw         $t7, 0x0($t6)
/* 14E65C 801A85EC 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14E660 801A85F0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 14E664 801A85F4 44814000 */  mtc1       $at, $f8
/* 14E668 801A85F8 3C05800F */  lui        $a1, %hi(D_800EAC20)
/* 14E66C 801A85FC 24A5AC20 */  addiu      $a1, $a1, %lo(D_800EAC20)
/* 14E670 801A8600 000DC080 */  sll        $t8, $t5, 2
/* 14E674 801A8604 00B8C821 */  addu       $t9, $a1, $t8
/* 14E678 801A8608 E7280000 */  swc1       $f8, 0x0($t9)
/* 14E67C 801A860C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E680 801A8610 00021080 */  sll        $v0, $v0, 2
/* 14E684 801A8614 01221821 */  addu       $v1, $t1, $v0
/* 14E688 801A8618 10000010 */  b          .L801A865C_ovl7
/* 14E68C 801A861C 8C640000 */   lw        $a0, 0x0($v1)
.L801A8620_ovl7:
/* 14E690 801A8620 240F000E */  addiu      $t7, $zero, 0xE
/* 14E694 801A8624 01227021 */  addu       $t6, $t1, $v0
/* 14E698 801A8628 ADCF0000 */  sw         $t7, 0x0($t6)
/* 14E69C 801A862C 8CCD0000 */  lw         $t5, 0x0($a2)
/* 14E6A0 801A8630 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 14E6A4 801A8634 44813000 */  mtc1       $at, $f6
/* 14E6A8 801A8638 3C05800F */  lui        $a1, %hi(D_800EAC20)
/* 14E6AC 801A863C 24A5AC20 */  addiu      $a1, $a1, %lo(D_800EAC20)
/* 14E6B0 801A8640 000DC080 */  sll        $t8, $t5, 2
/* 14E6B4 801A8644 00B8C821 */  addu       $t9, $a1, $t8
/* 14E6B8 801A8648 E7260000 */  swc1       $f6, 0x0($t9)
/* 14E6BC 801A864C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E6C0 801A8650 00021080 */  sll        $v0, $v0, 2
/* 14E6C4 801A8654 01221821 */  addu       $v1, $t1, $v0
/* 14E6C8 801A8658 8C640000 */  lw         $a0, 0x0($v1)
.L801A865C_ovl7:
/* 14E6CC 801A865C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
.L801A8660_ovl7:
/* 14E6D0 801A8660 44818000 */  mtc1       $at, $f16
/* 14E6D4 801A8664 3C05800F */  lui        $a1, %hi(D_800EAC20)
/* 14E6D8 801A8668 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosZArray)
/* 14E6DC 801A866C 3C0C800E */  lui        $t4, %hi(gEntitiesNextPosXArray)
/* 14E6E0 801A8670 258C25D0 */  addiu      $t4, $t4, %lo(gEntitiesNextPosXArray)
/* 14E6E4 801A8674 256B2950 */  addiu      $t3, $t3, %lo(gEntitiesNextPosZArray)
/* 14E6E8 801A8678 18800042 */  blez       $a0, .L801A8784_ovl7
/* 14E6EC 801A867C 24A5AC20 */   addiu     $a1, $a1, %lo(D_800EAC20)
/* 14E6F0 801A8680 30EF003F */  andi       $t7, $a3, 0x3F
/* 14E6F4 801A8684 51E0003D */  beql       $t7, $zero, .L801A877C_ovl7
/* 14E6F8 801A8688 AC600000 */   sw        $zero, 0x0($v1)
/* 14E6FC 801A868C 44842000 */  mtc1       $a0, $f4
/* 14E700 801A8690 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 14E704 801A8694 44815000 */  mtc1       $at, $f10
/* 14E708 801A8698 46802220 */  cvt.s.w    $f8, $f4
/* 14E70C 801A869C 24030010 */  addiu      $v1, $zero, 0x10
/* 14E710 801A86A0 248D0002 */  addiu      $t5, $a0, 0x2
/* 14E714 801A86A4 4608503C */  c.lt.s     $f10, $f8
/* 14E718 801A86A8 00000000 */  nop
/* 14E71C 801A86AC 45020017 */  bc1fl      .L801A870C_ovl7
/* 14E720 801A86B0 448D4000 */   mtc1      $t5, $f8
/* 14E724 801A86B4 00646823 */  subu       $t5, $v1, $a0
/* 14E728 801A86B8 448D2000 */  mtc1       $t5, $f4
/* 14E72C 801A86BC 00A27021 */  addu       $t6, $a1, $v0
/* 14E730 801A86C0 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 14E734 801A86C4 468022A0 */  cvt.s.w    $f10, $f4
/* 14E738 801A86C8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14E73C 801A86CC 00220821 */  addu       $at, $at, $v0
/* 14E740 801A86D0 460A3202 */  mul.s      $f8, $f6, $f10
/* 14E744 801A86D4 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 14E748 801A86D8 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E74C 801A86DC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 14E750 801A86E0 00021080 */  sll        $v0, $v0, 2
/* 14E754 801A86E4 0122C021 */  addu       $t8, $t1, $v0
/* 14E758 801A86E8 8F190000 */  lw         $t9, 0x0($t8)
/* 14E75C 801A86EC 00220821 */  addu       $at, $at, $v0
/* 14E760 801A86F0 00797823 */  subu       $t7, $v1, $t9
/* 14E764 801A86F4 448F2000 */  mtc1       $t7, $f4
/* 14E768 801A86F8 00000000 */  nop
/* 14E76C 801A86FC 468021A0 */  cvt.s.w    $f6, $f4
/* 14E770 801A8700 10000014 */  b          .L801A8754_ovl7
/* 14E774 801A8704 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
/* 14E778 801A8708 448D4000 */  mtc1       $t5, $f8
.L801A870C_ovl7:
/* 14E77C 801A870C 00A27021 */  addu       $t6, $a1, $v0
/* 14E780 801A8710 C5CA0000 */  lwc1       $f10, 0x0($t6)
/* 14E784 801A8714 46804120 */  cvt.s.w    $f4, $f8
/* 14E788 801A8718 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14E78C 801A871C 00220821 */  addu       $at, $at, $v0
/* 14E790 801A8720 46045182 */  mul.s      $f6, $f10, $f4
/* 14E794 801A8724 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 14E798 801A8728 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E79C 801A872C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 14E7A0 801A8730 00021080 */  sll        $v0, $v0, 2
/* 14E7A4 801A8734 0122C021 */  addu       $t8, $t1, $v0
/* 14E7A8 801A8738 8F190000 */  lw         $t9, 0x0($t8)
/* 14E7AC 801A873C 00220821 */  addu       $at, $at, $v0
/* 14E7B0 801A8740 272F0002 */  addiu      $t7, $t9, 0x2
/* 14E7B4 801A8744 448F4000 */  mtc1       $t7, $f8
/* 14E7B8 801A8748 00000000 */  nop
/* 14E7BC 801A874C 468042A0 */  cvt.s.w    $f10, $f8
/* 14E7C0 801A8750 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
.L801A8754_ovl7:
/* 14E7C4 801A8754 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14E7C8 801A8758 000E6880 */  sll        $t5, $t6, 2
/* 14E7CC 801A875C 012D1821 */  addu       $v1, $t1, $t5
/* 14E7D0 801A8760 8C780000 */  lw         $t8, 0x0($v1)
/* 14E7D4 801A8764 2719FFFF */  addiu      $t9, $t8, -0x1
/* 14E7D8 801A8768 AC790000 */  sw         $t9, 0x0($v1)
/* 14E7DC 801A876C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E7E0 801A8770 10000004 */  b          .L801A8784_ovl7
/* 14E7E4 801A8774 00021080 */   sll       $v0, $v0, 2
/* 14E7E8 801A8778 AC600000 */  sw         $zero, 0x0($v1)
.L801A877C_ovl7:
/* 14E7EC 801A877C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E7F0 801A8780 00021080 */  sll        $v0, $v0, 2
.L801A8784_ovl7:
/* 14E7F4 801A8784 3C0F800F */  lui        $t7, %hi(D_800E9E20)
/* 14E7F8 801A8788 25EF9E20 */  addiu      $t7, $t7, %lo(D_800E9E20)
/* 14E7FC 801A878C 004F1821 */  addu       $v1, $v0, $t7
/* 14E800 801A8790 8C640000 */  lw         $a0, 0x0($v1)
/* 14E804 801A8794 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 14E808 801A8798 00220821 */  addu       $at, $at, $v0
/* 14E80C 801A879C 14800037 */  bnez       $a0, .L801A887C_ovl7
/* 14E810 801A87A0 01827021 */   addu      $t6, $t4, $v0
/* 14E814 801A87A4 C5CC0000 */  lwc1       $f12, 0x0($t6)
/* 14E818 801A87A8 C4202B10 */  lwc1       $f0, %lo(gEntitiesPosXArray)($at)
/* 14E81C 801A87AC 4600603C */  c.lt.s     $f12, $f0
/* 14E820 801A87B0 46006381 */  sub.s      $f14, $f12, $f0
/* 14E824 801A87B4 45020004 */  bc1fl      .L801A87C8_ovl7
/* 14E828 801A87B8 46007086 */   mov.s     $f2, $f14
/* 14E82C 801A87BC 10000002 */  b          .L801A87C8_ovl7
/* 14E830 801A87C0 46007087 */   neg.s     $f2, $f14
/* 14E834 801A87C4 46007086 */  mov.s      $f2, $f14
.L801A87C8_ovl7:
/* 14E838 801A87C8 4610103C */  c.lt.s     $f2, $f16
/* 14E83C 801A87CC 00000000 */  nop
/* 14E840 801A87D0 4500002A */  bc1f       .L801A887C_ovl7
/* 14E844 801A87D4 3C01800E */   lui       $at, %hi(gEntitiesPosYArray)
/* 14E848 801A87D8 00220821 */  addu       $at, $at, $v0
/* 14E84C 801A87DC 01426821 */  addu       $t5, $t2, $v0
/* 14E850 801A87E0 C5A00000 */  lwc1       $f0, 0x0($t5)
/* 14E854 801A87E4 C4222CD0 */  lwc1       $f2, %lo(gEntitiesPosYArray)($at)
/* 14E858 801A87E8 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* 14E85C 801A87EC 00220821 */  addu       $at, $at, $v0
/* 14E860 801A87F0 4602003C */  c.lt.s     $f0, $f2
/* 14E864 801A87F4 0162C021 */  addu       $t8, $t3, $v0
/* 14E868 801A87F8 46020301 */  sub.s      $f12, $f0, $f2
/* 14E86C 801A87FC 45020004 */  bc1fl      .L801A8810_ovl7
/* 14E870 801A8800 46006386 */   mov.s     $f14, $f12
/* 14E874 801A8804 10000002 */  b          .L801A8810_ovl7
/* 14E878 801A8808 46006387 */   neg.s     $f14, $f12
/* 14E87C 801A880C 46006386 */  mov.s      $f14, $f12
.L801A8810_ovl7:
/* 14E880 801A8810 4610703C */  c.lt.s     $f14, $f16
/* 14E884 801A8814 00000000 */  nop
/* 14E888 801A8818 45000018 */  bc1f       .L801A887C_ovl7
/* 14E88C 801A881C 00000000 */   nop
/* 14E890 801A8820 C7000000 */  lwc1       $f0, 0x0($t8)
/* 14E894 801A8824 C4222E90 */  lwc1       $f2, %lo(gEntitiesPosZArray)($at)
/* 14E898 801A8828 30F90FC0 */  andi       $t9, $a3, 0xFC0
/* 14E89C 801A882C 4602003C */  c.lt.s     $f0, $f2
/* 14E8A0 801A8830 46020301 */  sub.s      $f12, $f0, $f2
/* 14E8A4 801A8834 45020004 */  bc1fl      .L801A8848_ovl7
/* 14E8A8 801A8838 46006386 */   mov.s     $f14, $f12
/* 14E8AC 801A883C 10000002 */  b          .L801A8848_ovl7
/* 14E8B0 801A8840 46006387 */   neg.s     $f14, $f12
/* 14E8B4 801A8844 46006386 */  mov.s      $f14, $f12
.L801A8848_ovl7:
/* 14E8B8 801A8848 4610703C */  c.lt.s     $f14, $f16
/* 14E8BC 801A884C 00000000 */  nop
/* 14E8C0 801A8850 4500000A */  bc1f       .L801A887C_ovl7
/* 14E8C4 801A8854 00000000 */   nop
/* 14E8C8 801A8858 13200008 */  beqz       $t9, .L801A887C_ovl7
/* 14E8CC 801A885C 240F0004 */   addiu     $t7, $zero, 0x4
/* 14E8D0 801A8860 AC6F0000 */  sw         $t7, 0x0($v1)
/* 14E8D4 801A8864 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E8D8 801A8868 3C0E800F */  lui        $t6, %hi(D_800E9E20)
/* 14E8DC 801A886C 25CE9E20 */  addiu      $t6, $t6, %lo(D_800E9E20)
/* 14E8E0 801A8870 00021080 */  sll        $v0, $v0, 2
/* 14E8E4 801A8874 004E1821 */  addu       $v1, $v0, $t6
/* 14E8E8 801A8878 8C640000 */  lw         $a0, 0x0($v1)
.L801A887C_ovl7:
/* 14E8EC 801A887C 188000C7 */  blez       $a0, .L801A8B9C_ovl7
/* 14E8F0 801A8880 30ED0FC0 */   andi      $t5, $a3, 0xFC0
/* 14E8F4 801A8884 51A000C5 */  beql       $t5, $zero, .L801A8B9C_ovl7
/* 14E8F8 801A8888 AC600000 */   sw        $zero, 0x0($v1)
/* 14E8FC 801A888C 44842000 */  mtc1       $a0, $f4
/* 14E900 801A8890 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 14E904 801A8894 44813000 */  mtc1       $at, $f6
/* 14E908 801A8898 46802020 */  cvt.s.w    $f0, $f4
/* 14E90C 801A889C 24180005 */  addiu      $t8, $zero, 0x5
/* 14E910 801A88A0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 14E914 801A88A4 0304C823 */  subu       $t9, $t8, $a0
/* 14E918 801A88A8 00220821 */  addu       $at, $at, $v0
/* 14E91C 801A88AC 4600303C */  c.lt.s     $f6, $f0
/* 14E920 801A88B0 00000000 */  nop
/* 14E924 801A88B4 4502004E */  bc1fl      .L801A89F0_ovl7
/* 14E928 801A88B8 46000200 */   add.s     $f8, $f0, $f0
/* 14E92C 801A88BC 44994000 */  mtc1       $t9, $f8
/* 14E930 801A88C0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 14E934 801A88C4 00220821 */  addu       $at, $at, $v0
/* 14E938 801A88C8 46804020 */  cvt.s.w    $f0, $f8
/* 14E93C 801A88CC C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 14E940 801A88D0 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14E944 801A88D4 00220821 */  addu       $at, $at, $v0
/* 14E948 801A88D8 C42C17D0 */  lwc1       $f12, %lo(D_800E17D0)($at)
/* 14E94C 801A88DC 46005107 */  neg.s      $f4, $f10
/* 14E950 801A88E0 46000180 */  add.s      $f6, $f0, $f0
/* 14E954 801A88E4 46062202 */  mul.s      $f8, $f4, $f6
/* 14E958 801A88E8 0C00B5B8 */  jal        sinf
/* 14E95C 801A88EC E7A8005C */   swc1      $f8, 0x5C($sp)
/* 14E960 801A88F0 C7AA005C */  lwc1       $f10, 0x5C($sp)
/* 14E964 801A88F4 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14E968 801A88F8 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14E96C 801A88FC 460A0102 */  mul.s      $f4, $f0, $f10
/* 14E970 801A8900 3C03800E */  lui        $v1, %hi(D_800E3050)
/* 14E974 801A8904 8CCF0000 */  lw         $t7, 0x0($a2)
/* 14E978 801A8908 24633050 */  addiu      $v1, $v1, %lo(D_800E3050)
/* 14E97C 801A890C 44809000 */  mtc1       $zero, $f18
/* 14E980 801A8910 000F7080 */  sll        $t6, $t7, 2
/* 14E984 801A8914 006E6821 */  addu       $t5, $v1, $t6
/* 14E988 801A8918 E5A40000 */  swc1       $f4, 0x0($t5)
/* 14E98C 801A891C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14E990 801A8920 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14E994 801A8924 00021080 */  sll        $v0, $v0, 2
/* 14E998 801A8928 0062C021 */  addu       $t8, $v1, $v0
/* 14E99C 801A892C C7020000 */  lwc1       $f2, 0x0($t8)
/* 14E9A0 801A8930 00220821 */  addu       $at, $at, $v0
/* 14E9A4 801A8934 4612103C */  c.lt.s     $f2, $f18
/* 14E9A8 801A8938 00000000 */  nop
/* 14E9AC 801A893C 45000006 */  bc1f       .L801A8958_ovl7
/* 14E9B0 801A8940 00000000 */   nop
/* 14E9B4 801A8944 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14E9B8 801A8948 46001187 */  neg.s      $f6, $f2
/* 14E9BC 801A894C 00220821 */  addu       $at, $at, $v0
/* 14E9C0 801A8950 10000002 */  b          .L801A895C_ovl7
/* 14E9C4 801A8954 E4263AD0 */   swc1      $f6, %lo(D_800E3AD0)($at)
.L801A8958_ovl7:
/* 14E9C8 801A8958 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
.L801A895C_ovl7:
/* 14E9CC 801A895C 8CD90000 */  lw         $t9, 0x0($a2)
/* 14E9D0 801A8960 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14E9D4 801A8964 00197880 */  sll        $t7, $t9, 2
/* 14E9D8 801A8968 002F0821 */  addu       $at, $at, $t7
/* 14E9DC 801A896C 0C00D604 */  jal        cosf
/* 14E9E0 801A8970 C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
/* 14E9E4 801A8974 C7A8005C */  lwc1       $f8, 0x5C($sp)
/* 14E9E8 801A8978 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14E9EC 801A897C 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14E9F0 801A8980 46080282 */  mul.s      $f10, $f0, $f8
/* 14E9F4 801A8984 3C03800E */  lui        $v1, %hi(D_800E33D0)
/* 14E9F8 801A8988 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14E9FC 801A898C 246333D0 */  addiu      $v1, $v1, %lo(D_800E33D0)
/* 14EA00 801A8990 44809000 */  mtc1       $zero, $f18
/* 14EA04 801A8994 000E6880 */  sll        $t5, $t6, 2
/* 14EA08 801A8998 006DC021 */  addu       $t8, $v1, $t5
/* 14EA0C 801A899C E70A0000 */  swc1       $f10, 0x0($t8)
/* 14EA10 801A89A0 8CC20000 */  lw         $v0, 0x0($a2)
/* 14EA14 801A89A4 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14EA18 801A89A8 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 14EA1C 801A89AC 00021080 */  sll        $v0, $v0, 2
/* 14EA20 801A89B0 0062C821 */  addu       $t9, $v1, $v0
/* 14EA24 801A89B4 C7220000 */  lwc1       $f2, 0x0($t9)
/* 14EA28 801A89B8 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 14EA2C 801A89BC 00220821 */  addu       $at, $at, $v0
/* 14EA30 801A89C0 4612103C */  c.lt.s     $f2, $f18
/* 14EA34 801A89C4 00000000 */  nop
/* 14EA38 801A89C8 45000006 */  bc1f       .L801A89E4_ovl7
/* 14EA3C 801A89CC 00000000 */   nop
/* 14EA40 801A89D0 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 14EA44 801A89D4 46001107 */  neg.s      $f4, $f2
/* 14EA48 801A89D8 00220821 */  addu       $at, $at, $v0
/* 14EA4C 801A89DC 10000049 */  b          .L801A8B04_ovl7
/* 14EA50 801A89E0 E4243E50 */   swc1      $f4, %lo(D_800E3E50)($at)
.L801A89E4_ovl7:
/* 14EA54 801A89E4 10000047 */  b          .L801A8B04_ovl7
/* 14EA58 801A89E8 E4223E50 */   swc1      $f2, %lo(D_800E3E50)($at)
/* 14EA5C 801A89EC 46000200 */  add.s      $f8, $f0, $f0
.L801A89F0_ovl7:
/* 14EA60 801A89F0 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 14EA64 801A89F4 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14EA68 801A89F8 00220821 */  addu       $at, $at, $v0
/* 14EA6C 801A89FC 46083282 */  mul.s      $f10, $f6, $f8
/* 14EA70 801A8A00 C42C17D0 */  lwc1       $f12, %lo(D_800E17D0)($at)
/* 14EA74 801A8A04 0C00B5B8 */  jal        sinf
/* 14EA78 801A8A08 E7AA005C */   swc1      $f10, 0x5C($sp)
/* 14EA7C 801A8A0C C7A4005C */  lwc1       $f4, 0x5C($sp)
/* 14EA80 801A8A10 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14EA84 801A8A14 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14EA88 801A8A18 46040182 */  mul.s      $f6, $f0, $f4
/* 14EA8C 801A8A1C 3C03800E */  lui        $v1, %hi(D_800E3050)
/* 14EA90 801A8A20 8CCF0000 */  lw         $t7, 0x0($a2)
/* 14EA94 801A8A24 24633050 */  addiu      $v1, $v1, %lo(D_800E3050)
/* 14EA98 801A8A28 44809000 */  mtc1       $zero, $f18
/* 14EA9C 801A8A2C 000F7080 */  sll        $t6, $t7, 2
/* 14EAA0 801A8A30 006E6821 */  addu       $t5, $v1, $t6
/* 14EAA4 801A8A34 E5A60000 */  swc1       $f6, 0x0($t5)
/* 14EAA8 801A8A38 8CC20000 */  lw         $v0, 0x0($a2)
/* 14EAAC 801A8A3C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14EAB0 801A8A40 00021080 */  sll        $v0, $v0, 2
/* 14EAB4 801A8A44 0062C021 */  addu       $t8, $v1, $v0
/* 14EAB8 801A8A48 C7020000 */  lwc1       $f2, 0x0($t8)
/* 14EABC 801A8A4C 00220821 */  addu       $at, $at, $v0
/* 14EAC0 801A8A50 4612103C */  c.lt.s     $f2, $f18
/* 14EAC4 801A8A54 00000000 */  nop
/* 14EAC8 801A8A58 45000006 */  bc1f       .L801A8A74_ovl7
/* 14EACC 801A8A5C 00000000 */   nop
/* 14EAD0 801A8A60 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14EAD4 801A8A64 46001207 */  neg.s      $f8, $f2
/* 14EAD8 801A8A68 00220821 */  addu       $at, $at, $v0
/* 14EADC 801A8A6C 10000002 */  b          .L801A8A78_ovl7
/* 14EAE0 801A8A70 E4283AD0 */   swc1      $f8, %lo(D_800E3AD0)($at)
.L801A8A74_ovl7:
/* 14EAE4 801A8A74 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
.L801A8A78_ovl7:
/* 14EAE8 801A8A78 8CD90000 */  lw         $t9, 0x0($a2)
/* 14EAEC 801A8A7C 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 14EAF0 801A8A80 00197880 */  sll        $t7, $t9, 2
/* 14EAF4 801A8A84 002F0821 */  addu       $at, $at, $t7
/* 14EAF8 801A8A88 0C00D604 */  jal        cosf
/* 14EAFC 801A8A8C C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
/* 14EB00 801A8A90 C7AA005C */  lwc1       $f10, 0x5C($sp)
/* 14EB04 801A8A94 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 14EB08 801A8A98 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 14EB0C 801A8A9C 460A0102 */  mul.s      $f4, $f0, $f10
/* 14EB10 801A8AA0 3C03800E */  lui        $v1, %hi(D_800E33D0)
/* 14EB14 801A8AA4 8CCE0000 */  lw         $t6, 0x0($a2)
/* 14EB18 801A8AA8 246333D0 */  addiu      $v1, $v1, %lo(D_800E33D0)
/* 14EB1C 801A8AAC 44809000 */  mtc1       $zero, $f18
/* 14EB20 801A8AB0 000E6880 */  sll        $t5, $t6, 2
/* 14EB24 801A8AB4 006DC021 */  addu       $t8, $v1, $t5
/* 14EB28 801A8AB8 E7040000 */  swc1       $f4, 0x0($t8)
/* 14EB2C 801A8ABC 8CC20000 */  lw         $v0, 0x0($a2)
/* 14EB30 801A8AC0 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 14EB34 801A8AC4 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 14EB38 801A8AC8 00021080 */  sll        $v0, $v0, 2
/* 14EB3C 801A8ACC 0062C821 */  addu       $t9, $v1, $v0
/* 14EB40 801A8AD0 C7220000 */  lwc1       $f2, 0x0($t9)
/* 14EB44 801A8AD4 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 14EB48 801A8AD8 00220821 */  addu       $at, $at, $v0
/* 14EB4C 801A8ADC 4612103C */  c.lt.s     $f2, $f18
/* 14EB50 801A8AE0 00000000 */  nop
/* 14EB54 801A8AE4 45000006 */  bc1f       .L801A8B00_ovl7
/* 14EB58 801A8AE8 00000000 */   nop
/* 14EB5C 801A8AEC 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 14EB60 801A8AF0 46001187 */  neg.s      $f6, $f2
/* 14EB64 801A8AF4 00220821 */  addu       $at, $at, $v0
/* 14EB68 801A8AF8 10000002 */  b          .L801A8B04_ovl7
/* 14EB6C 801A8AFC E4263E50 */   swc1      $f6, %lo(D_800E3E50)($at)
.L801A8B00_ovl7:
/* 14EB70 801A8B00 E4223E50 */  swc1       $f2, %lo(D_800E3E50)($at)
.L801A8B04_ovl7:
/* 14EB74 801A8B04 8CCF0000 */  lw         $t7, 0x0($a2)
/* 14EB78 801A8B08 3C0D800F */  lui        $t5, %hi(D_800E9E20)
/* 14EB7C 801A8B0C 25AD9E20 */  addiu      $t5, $t5, %lo(D_800E9E20)
/* 14EB80 801A8B10 000F7080 */  sll        $t6, $t7, 2
/* 14EB84 801A8B14 01CD1821 */  addu       $v1, $t6, $t5
/* 14EB88 801A8B18 8C780000 */  lw         $t8, 0x0($v1)
/* 14EB8C 801A8B1C 3C0F800F */  lui        $t7, %hi(D_800E9E20)
/* 14EB90 801A8B20 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 14EB94 801A8B24 2719FFFF */  addiu      $t9, $t8, -0x1
/* 14EB98 801A8B28 AC790000 */  sw         $t9, 0x0($v1)
/* 14EB9C 801A8B2C 8CC20000 */  lw         $v0, 0x0($a2)
/* 14EBA0 801A8B30 00021080 */  sll        $v0, $v0, 2
/* 14EBA4 801A8B34 01E27821 */  addu       $t7, $t7, $v0
/* 14EBA8 801A8B38 8DEF9E20 */  lw         $t7, %lo(D_800E9E20)($t7)
/* 14EBAC 801A8B3C 00220821 */  addu       $at, $at, $v0
/* 14EBB0 801A8B40 55E00017 */  bnel       $t7, $zero, .L801A8BA0_ovl7
/* 14EBB4 801A8B44 8FBF0024 */   lw        $ra, 0x24($sp)
/* 14EBB8 801A8B48 C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 14EBBC 801A8B4C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 14EBC0 801A8B50 00220821 */  addu       $at, $at, $v0
/* 14EBC4 801A8B54 E4282B10 */  swc1       $f8, %lo(gEntitiesPosXArray)($at)
/* 14EBC8 801A8B58 8CC20000 */  lw         $v0, 0x0($a2)
/* 14EBCC 801A8B5C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 14EBD0 801A8B60 00021080 */  sll        $v0, $v0, 2
/* 14EBD4 801A8B64 01427021 */  addu       $t6, $t2, $v0
/* 14EBD8 801A8B68 C5CA0000 */  lwc1       $f10, 0x0($t6)
/* 14EBDC 801A8B6C 00220821 */  addu       $at, $at, $v0
/* 14EBE0 801A8B70 E42A2CD0 */  swc1       $f10, %lo(gEntitiesPosYArray)($at)
/* 14EBE4 801A8B74 8CC20000 */  lw         $v0, 0x0($a2)
/* 14EBE8 801A8B78 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 14EBEC 801A8B7C 00021080 */  sll        $v0, $v0, 2
/* 14EBF0 801A8B80 00220821 */  addu       $at, $at, $v0
/* 14EBF4 801A8B84 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
/* 14EBF8 801A8B88 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* 14EBFC 801A8B8C 00220821 */  addu       $at, $at, $v0
/* 14EC00 801A8B90 10000002 */  b          .L801A8B9C_ovl7
/* 14EC04 801A8B94 E4242E90 */   swc1      $f4, %lo(gEntitiesPosZArray)($at)
/* 14EC08 801A8B98 AC600000 */  sw         $zero, 0x0($v1)
.L801A8B9C_ovl7:
/* 14EC0C 801A8B9C 8FBF0024 */  lw         $ra, 0x24($sp)
.L801A8BA0_ovl7:
/* 14EC10 801A8BA0 27BD00B8 */  addiu      $sp, $sp, 0xB8
/* 14EC14 801A8BA4 03E00008 */  jr         $ra
/* 14EC18 801A8BA8 00000000 */   nop
