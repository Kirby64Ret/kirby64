glabel func_801EA568_ovl16
/* 220818 801EA568 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 22081C 801EA56C 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 220820 801EA570 8CCE0000 */  lw         $t6, 0x0($a2)
.L801EA574_ovl9:
/* 220824 801EA574 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 220828 801EA578 AFBF0014 */  sw         $ra, 0x14($sp)
/* 22082C 801EA57C AFA40020 */  sw         $a0, 0x20($sp)
/* 220830 801EA580 8DC30000 */  lw         $v1, 0x0($t6)
/* 220834 801EA584 3C05800E */  lui        $a1, %hi(D_800DFBD0)
/* 220838 801EA588 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 22083C 801EA58C 00031880 */  sll        $v1, $v1, 2
/* 220840 801EA590 24A5FBD0 */  addiu      $a1, $a1, %lo(D_800DFBD0)
/* 220844 801EA594 01E37821 */  addu       $t7, $t7, $v1
/* 220848 801EA598 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 22084C 801EA59C 00A3C021 */  addu       $t8, $a1, $v1
/* 220850 801EA5A0 8F190000 */  lw         $t9, 0x0($t8)
/* 220854 801EA5A4 AFAF001C */  sw         $t7, 0x1C($sp)
/* 220858 801EA5A8 3C01801F */  lui        $at, %hi(D_801F00C0_ovl16)
/* 22085C 801EA5AC 8F220018 */  lw         $v0, 0x18($t9)
/* 220860 801EA5B0 C42200C0 */  lwc1       $f2, %lo(D_801F00C0_ovl16)($at)
/* 220864 801EA5B4 3C01801F */  lui        $at, %hi(D_801F00C4_ovl16)
/* 220868 801EA5B8 C42E00C4 */  lwc1       $f14, %lo(D_801F00C4_ovl16)($at)
.L801EA5BC_ovl9:
/* 22086C 801EA5BC C4440030 */  lwc1       $f4, 0x30($v0)
.L801EA5C0_ovl9:
/* 220870 801EA5C0 3C01801F */  lui        $at, %hi(D_801F00C8_ovl16)
/* 220874 801EA5C4 460E2181 */  sub.s      $f6, $f4, $f14
/* 220878 801EA5C8 E4460030 */  swc1       $f6, 0x30($v0)
/* 22087C 801EA5CC 8CC80000 */  lw         $t0, 0x0($a2)
/* 220880 801EA5D0 8D090000 */  lw         $t1, 0x0($t0)
/* 220884 801EA5D4 00095080 */  sll        $t2, $t1, 2
/* 220888 801EA5D8 00AA5821 */  addu       $t3, $a1, $t2
/* 22088C 801EA5DC 8D6C0000 */  lw         $t4, 0x0($t3)
/* 220890 801EA5E0 8D820018 */  lw         $v0, 0x18($t4)
/* 220894 801EA5E4 C4400030 */  lwc1       $f0, 0x30($v0)
/* 220898 801EA5E8 4600103C */  c.lt.s     $f2, $f0
/* 22089C 801EA5EC 00000000 */  nop
/* 2208A0 801EA5F0 4500000E */  bc1f       .L801EA62C_ovl16
/* 2208A4 801EA5F4 00000000 */   nop
/* 2208A8 801EA5F8 46020201 */  sub.s      $f8, $f0, $f2
.L801EA5FC_ovl16:
/* 2208AC 801EA5FC E4480030 */  swc1       $f8, 0x30($v0)
/* 2208B0 801EA600 8CCD0000 */  lw         $t5, 0x0($a2)
/* 2208B4 801EA604 8DAE0000 */  lw         $t6, 0x0($t5)
/* 2208B8 801EA608 000E7880 */  sll        $t7, $t6, 2
/* 2208BC 801EA60C 00AFC021 */  addu       $t8, $a1, $t7
/* 2208C0 801EA610 8F190000 */  lw         $t9, 0x0($t8)
/* 2208C4 801EA614 8F220018 */  lw         $v0, 0x18($t9)
/* 2208C8 801EA618 C4400030 */  lwc1       $f0, 0x30($v0)
/* 2208CC 801EA61C 4600103C */  c.lt.s     $f2, $f0
/* 2208D0 801EA620 00000000 */  nop
/* 2208D4 801EA624 4503FFF5 */  bc1tl      .L801EA5FC_ovl16
glabel func_801EA628_ovl9
/* 2208D8 801EA628 46020201 */   sub.s     $f8, $f0, $f2
.L801EA62C_ovl16:
/* 2208DC 801EA62C C42C00C8 */  lwc1       $f12, %lo(D_801F00C8_ovl16)($at)
glabel func_801EA630_ovl10
/* 2208E0 801EA630 3C01801F */  lui        $at, %hi(D_801F00CC_ovl16)
/* 2208E4 801EA634 460C003C */  c.lt.s     $f0, $f12
/* 2208E8 801EA638 00000000 */  nop
/* 2208EC 801EA63C 4500000E */  bc1f       .L801EA678_ovl16
/* 2208F0 801EA640 00000000 */   nop
/* 2208F4 801EA644 46020280 */  add.s      $f10, $f0, $f2
.L801EA648_ovl16:
/* 2208F8 801EA648 E44A0030 */  swc1       $f10, 0x30($v0)
/* 2208FC 801EA64C 8CC80000 */  lw         $t0, 0x0($a2)
/* 220900 801EA650 8D090000 */  lw         $t1, 0x0($t0)
/* 220904 801EA654 00095080 */  sll        $t2, $t1, 2
/* 220908 801EA658 00AA5821 */  addu       $t3, $a1, $t2
/* 22090C 801EA65C 8D6C0000 */  lw         $t4, 0x0($t3)
/* 220910 801EA660 8D820018 */  lw         $v0, 0x18($t4)
/* 220914 801EA664 C4400030 */  lwc1       $f0, 0x30($v0)
/* 220918 801EA668 460C003C */  c.lt.s     $f0, $f12
/* 22091C 801EA66C 00000000 */  nop
/* 220920 801EA670 4503FFF5 */  bc1tl      .L801EA648_ovl16
/* 220924 801EA674 46020280 */   add.s     $f10, $f0, $f2
.L801EA678_ovl16:
/* 220928 801EA678 C43000CC */  lwc1       $f16, %lo(D_801F00CC_ovl16)($at)
/* 22092C 801EA67C C4520034 */  lwc1       $f18, 0x34($v0)
/* 220930 801EA680 46109101 */  sub.s      $f4, $f18, $f16
/* 220934 801EA684 E4440034 */  swc1       $f4, 0x34($v0)
/* 220938 801EA688 8CCD0000 */  lw         $t5, 0x0($a2)
/* 22093C 801EA68C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 220940 801EA690 000E7880 */  sll        $t7, $t6, 2
/* 220944 801EA694 00AFC021 */  addu       $t8, $a1, $t7
/* 220948 801EA698 8F190000 */  lw         $t9, 0x0($t8)
/* 22094C 801EA69C 8F220018 */  lw         $v0, 0x18($t9)
/* 220950 801EA6A0 C4400034 */  lwc1       $f0, 0x34($v0)
/* 220954 801EA6A4 4600103C */  c.lt.s     $f2, $f0
/* 220958 801EA6A8 00000000 */  nop
/* 22095C 801EA6AC 4502000F */  bc1fl      .L801EA6EC_ovl16
/* 220960 801EA6B0 460C003C */   c.lt.s    $f0, $f12
/* 220964 801EA6B4 46020181 */  sub.s      $f6, $f0, $f2
.L801EA6B8_ovl16:
/* 220968 801EA6B8 E4460034 */  swc1       $f6, 0x34($v0)
/* 22096C 801EA6BC 8CC80000 */  lw         $t0, 0x0($a2)
/* 220970 801EA6C0 8D090000 */  lw         $t1, 0x0($t0)
/* 220974 801EA6C4 00095080 */  sll        $t2, $t1, 2
/* 220978 801EA6C8 00AA5821 */  addu       $t3, $a1, $t2
/* 22097C 801EA6CC 8D6C0000 */  lw         $t4, 0x0($t3)
/* 220980 801EA6D0 8D820018 */  lw         $v0, 0x18($t4)
/* 220984 801EA6D4 C4400034 */  lwc1       $f0, 0x34($v0)
/* 220988 801EA6D8 4600103C */  c.lt.s     $f2, $f0
/* 22098C 801EA6DC 00000000 */  nop
/* 220990 801EA6E0 4503FFF5 */  bc1tl      .L801EA6B8_ovl16
/* 220994 801EA6E4 46020181 */   sub.s     $f6, $f0, $f2
.L801EA6E8_ovl9:
/* 220998 801EA6E8 460C003C */  c.lt.s     $f0, $f12
.L801EA6EC_ovl16:
/* 22099C 801EA6EC 3C01801F */  lui        $at, %hi(func_801EFC58_ovl10 + 0x68)
/* 2209A0 801EA6F0 4502000F */  bc1fl      .L801EA730_ovl16
/* 2209A4 801EA6F4 C44A0038 */   lwc1      $f10, 0x38($v0)
.L801EA6F8_ovl9:
/* 2209A8 801EA6F8 46020200 */  add.s      $f8, $f0, $f2
.L801EA6FC_ovl16:
/* 2209AC 801EA6FC E4480034 */  swc1       $f8, 0x34($v0)
/* 2209B0 801EA700 8CCD0000 */  lw         $t5, 0x0($a2)
/* 2209B4 801EA704 8DAE0000 */  lw         $t6, 0x0($t5)
/* 2209B8 801EA708 000E7880 */  sll        $t7, $t6, 2
/* 2209BC 801EA70C 00AFC021 */  addu       $t8, $a1, $t7
.L801EA710_ovl9:
/* 2209C0 801EA710 8F190000 */  lw         $t9, 0x0($t8)
/* 2209C4 801EA714 8F220018 */  lw         $v0, 0x18($t9)
glabel func_801EA718_ovl10
/* 2209C8 801EA718 C4400034 */  lwc1       $f0, 0x34($v0)
/* 2209CC 801EA71C 460C003C */  c.lt.s     $f0, $f12
/* 2209D0 801EA720 00000000 */  nop
.L801EA724_ovl9:
/* 2209D4 801EA724 4503FFF5 */  bc1tl      .L801EA6FC_ovl16
/* 2209D8 801EA728 46020200 */   add.s     $f8, $f0, $f2
/* 2209DC 801EA72C C44A0038 */  lwc1       $f10, 0x38($v0)
.L801EA730_ovl16:
/* 2209E0 801EA730 460E5480 */  add.s      $f18, $f10, $f14
/* 2209E4 801EA734 E4520038 */  swc1       $f18, 0x38($v0)
/* 2209E8 801EA738 8CC80000 */  lw         $t0, 0x0($a2)
/* 2209EC 801EA73C 8D090000 */  lw         $t1, 0x0($t0)
/* 2209F0 801EA740 00095080 */  sll        $t2, $t1, 2
/* 2209F4 801EA744 00AA5821 */  addu       $t3, $a1, $t2
/* 2209F8 801EA748 8D630000 */  lw         $v1, 0x0($t3)
/* 2209FC 801EA74C 8C620018 */  lw         $v0, 0x18($v1)
/* 220A00 801EA750 C4400038 */  lwc1       $f0, 0x38($v0)
/* 220A04 801EA754 4600103C */  c.lt.s     $f2, $f0
/* 220A08 801EA758 00000000 */  nop
/* 220A0C 801EA75C 4502000F */  bc1fl      .L801EA79C_ovl16
/* 220A10 801EA760 460C003C */   c.lt.s    $f0, $f12
/* 220A14 801EA764 46020101 */  sub.s      $f4, $f0, $f2
.L801EA768_ovl16:
/* 220A18 801EA768 E4440038 */  swc1       $f4, 0x38($v0)
/* 220A1C 801EA76C 8CCC0000 */  lw         $t4, 0x0($a2)
/* 220A20 801EA770 8D8D0000 */  lw         $t5, 0x0($t4)
.L801EA774_ovl10:
/* 220A24 801EA774 000D7080 */  sll        $t6, $t5, 2
/* 220A28 801EA778 00AE7821 */  addu       $t7, $a1, $t6
/* 220A2C 801EA77C 8DE30000 */  lw         $v1, 0x0($t7)
/* 220A30 801EA780 8C620018 */  lw         $v0, 0x18($v1)
glabel func_801EA784_ovl10
/* 220A34 801EA784 C4400038 */  lwc1       $f0, 0x38($v0)
/* 220A38 801EA788 4600103C */  c.lt.s     $f2, $f0
/* 220A3C 801EA78C 00000000 */  nop
/* 220A40 801EA790 4503FFF5 */  bc1tl      .L801EA768_ovl16
/* 220A44 801EA794 46020101 */   sub.s     $f4, $f0, $f2
/* 220A48 801EA798 460C003C */  c.lt.s     $f0, $f12
.L801EA79C_ovl16:
/* 220A4C 801EA79C 00000000 */  nop
/* 220A50 801EA7A0 4502000F */  bc1fl      .L801EA7E0_ovl16
/* 220A54 801EA7A4 8C62001C */   lw        $v0, 0x1C($v1)
/* 220A58 801EA7A8 46020180 */  add.s      $f6, $f0, $f2
.L801EA7AC_ovl16:
/* 220A5C 801EA7AC E4460038 */  swc1       $f6, 0x38($v0)
/* 220A60 801EA7B0 8CD80000 */  lw         $t8, 0x0($a2)
/* 220A64 801EA7B4 8F190000 */  lw         $t9, 0x0($t8)
/* 220A68 801EA7B8 00194080 */  sll        $t0, $t9, 2
/* 220A6C 801EA7BC 00A84821 */  addu       $t1, $a1, $t0
/* 220A70 801EA7C0 8D230000 */  lw         $v1, 0x0($t1)
/* 220A74 801EA7C4 8C620018 */  lw         $v0, 0x18($v1)
/* 220A78 801EA7C8 C4400038 */  lwc1       $f0, 0x38($v0)
glabel func_801EA7CC_ovl10
/* 220A7C 801EA7CC 460C003C */  c.lt.s     $f0, $f12
/* 220A80 801EA7D0 00000000 */  nop
/* 220A84 801EA7D4 4503FFF5 */  bc1tl      .L801EA7AC_ovl16
/* 220A88 801EA7D8 46020180 */   add.s     $f6, $f0, $f2
/* 220A8C 801EA7DC 8C62001C */  lw         $v0, 0x1C($v1)
.L801EA7E0_ovl16:
/* 220A90 801EA7E0 C4480030 */  lwc1       $f8, 0x30($v0)
/* 220A94 801EA7E4 460E4280 */  add.s      $f10, $f8, $f14
/* 220A98 801EA7E8 E44A0030 */  swc1       $f10, 0x30($v0)
/* 220A9C 801EA7EC 8CCA0000 */  lw         $t2, 0x0($a2)
/* 220AA0 801EA7F0 8D4B0000 */  lw         $t3, 0x0($t2)
/* 220AA4 801EA7F4 000B6080 */  sll        $t4, $t3, 2
.L801EA7F8_ovl9:
/* 220AA8 801EA7F8 00AC6821 */  addu       $t5, $a1, $t4
.L801EA7FC_ovl9:
/* 220AAC 801EA7FC 8DAE0000 */  lw         $t6, 0x0($t5)
/* 220AB0 801EA800 8DC2001C */  lw         $v0, 0x1C($t6)
/* 220AB4 801EA804 C4400030 */  lwc1       $f0, 0x30($v0)
/* 220AB8 801EA808 4600103C */  c.lt.s     $f2, $f0
/* 220ABC 801EA80C 00000000 */  nop
/* 220AC0 801EA810 4502000F */  bc1fl      .L801EA850_ovl16
/* 220AC4 801EA814 460C003C */   c.lt.s    $f0, $f12
/* 220AC8 801EA818 46020481 */  sub.s      $f18, $f0, $f2
.L801EA81C_ovl16:
/* 220ACC 801EA81C E4520030 */  swc1       $f18, 0x30($v0)
/* 220AD0 801EA820 8CCF0000 */  lw         $t7, 0x0($a2)
/* 220AD4 801EA824 8DF80000 */  lw         $t8, 0x0($t7)
/* 220AD8 801EA828 0018C880 */  sll        $t9, $t8, 2
.L801EA82C_ovl9:
/* 220ADC 801EA82C 00B94021 */  addu       $t0, $a1, $t9
/* 220AE0 801EA830 8D090000 */  lw         $t1, 0x0($t0)
/* 220AE4 801EA834 8D22001C */  lw         $v0, 0x1C($t1)
/* 220AE8 801EA838 C4400030 */  lwc1       $f0, 0x30($v0)
/* 220AEC 801EA83C 4600103C */  c.lt.s     $f2, $f0
/* 220AF0 801EA840 00000000 */  nop
/* 220AF4 801EA844 4503FFF5 */  bc1tl      .L801EA81C_ovl16
/* 220AF8 801EA848 46020481 */   sub.s     $f18, $f0, $f2
/* 220AFC 801EA84C 460C003C */  c.lt.s     $f0, $f12
.L801EA850_ovl16:
/* 220B00 801EA850 00000000 */  nop
/* 220B04 801EA854 4502000F */  bc1fl      .L801EA894_ovl16
/* 220B08 801EA858 C4460034 */   lwc1      $f6, 0x34($v0)
/* 220B0C 801EA85C 46020100 */  add.s      $f4, $f0, $f2
.L801EA860_ovl16:
/* 220B10 801EA860 E4440030 */  swc1       $f4, 0x30($v0)
/* 220B14 801EA864 8CCA0000 */  lw         $t2, 0x0($a2)
/* 220B18 801EA868 8D4B0000 */  lw         $t3, 0x0($t2)
.L801EA86C_ovl9:
/* 220B1C 801EA86C 000B6080 */  sll        $t4, $t3, 2
.L801EA870_ovl9:
/* 220B20 801EA870 00AC6821 */  addu       $t5, $a1, $t4
/* 220B24 801EA874 8DAE0000 */  lw         $t6, 0x0($t5)
/* 220B28 801EA878 8DC2001C */  lw         $v0, 0x1C($t6)
/* 220B2C 801EA87C C4400030 */  lwc1       $f0, 0x30($v0)
/* 220B30 801EA880 460C003C */  c.lt.s     $f0, $f12
/* 220B34 801EA884 00000000 */  nop
/* 220B38 801EA888 4503FFF5 */  bc1tl      .L801EA860_ovl16
/* 220B3C 801EA88C 46020100 */   add.s     $f4, $f0, $f2
.L801EA890_ovl9:
/* 220B40 801EA890 C4460034 */  lwc1       $f6, 0x34($v0)
.L801EA894_ovl16:
/* 220B44 801EA894 46103201 */  sub.s      $f8, $f6, $f16
/* 220B48 801EA898 E4480034 */  swc1       $f8, 0x34($v0)
/* 220B4C 801EA89C 8CCF0000 */  lw         $t7, 0x0($a2)
/* 220B50 801EA8A0 8DF80000 */  lw         $t8, 0x0($t7)
/* 220B54 801EA8A4 0018C880 */  sll        $t9, $t8, 2
/* 220B58 801EA8A8 00B94021 */  addu       $t0, $a1, $t9
/* 220B5C 801EA8AC 8D090000 */  lw         $t1, 0x0($t0)
/* 220B60 801EA8B0 8D22001C */  lw         $v0, 0x1C($t1)
/* 220B64 801EA8B4 C4400034 */  lwc1       $f0, 0x34($v0)
/* 220B68 801EA8B8 4600103C */  c.lt.s     $f2, $f0
/* 220B6C 801EA8BC 00000000 */  nop
.L801EA8C0_ovl9:
/* 220B70 801EA8C0 4502000F */  bc1fl      func_801EA900_ovl16
.L801EA8C4_ovl9:
/* 220B74 801EA8C4 460C003C */   c.lt.s    $f0, $f12
/* 220B78 801EA8C8 46020281 */  sub.s      $f10, $f0, $f2
.L801EA8CC_ovl16:
/* 220B7C 801EA8CC E44A0034 */  swc1       $f10, 0x34($v0)
/* 220B80 801EA8D0 8CCA0000 */  lw         $t2, 0x0($a2)
/* 220B84 801EA8D4 8D4B0000 */  lw         $t3, 0x0($t2)
/* 220B88 801EA8D8 000B6080 */  sll        $t4, $t3, 2
/* 220B8C 801EA8DC 00AC6821 */  addu       $t5, $a1, $t4
/* 220B90 801EA8E0 8DAE0000 */  lw         $t6, 0x0($t5)
/* 220B94 801EA8E4 8DC2001C */  lw         $v0, 0x1C($t6)
/* 220B98 801EA8E8 C4400034 */  lwc1       $f0, 0x34($v0)
/* 220B9C 801EA8EC 4600103C */  c.lt.s     $f2, $f0
.L801EA8F0_ovl9:
/* 220BA0 801EA8F0 00000000 */  nop
/* 220BA4 801EA8F4 4503FFF5 */  bc1tl      .L801EA8CC_ovl16
/* 220BA8 801EA8F8 46020281 */   sub.s     $f10, $f0, $f2
/* 220BAC 801EA8FC 460C003C */  c.lt.s     $f0, $f12
glabel func_801EA900_ovl16
/* 220BB0 801EA900 00000000 */  nop
/* 220BB4 801EA904 4502000F */  bc1fl      .L801EA944_ovl16
/* 220BB8 801EA908 C4440038 */   lwc1      $f4, 0x38($v0)
/* 220BBC 801EA90C 46020480 */  add.s      $f18, $f0, $f2
.L801EA910_ovl16:
/* 220BC0 801EA910 E4520034 */  swc1       $f18, 0x34($v0)
/* 220BC4 801EA914 8CCF0000 */  lw         $t7, 0x0($a2)
.L801EA918_ovl9:
/* 220BC8 801EA918 8DF80000 */  lw         $t8, 0x0($t7)
/* 220BCC 801EA91C 0018C880 */  sll        $t9, $t8, 2
/* 220BD0 801EA920 00B94021 */  addu       $t0, $a1, $t9
/* 220BD4 801EA924 8D090000 */  lw         $t1, 0x0($t0)
.L801EA928_ovl9:
/* 220BD8 801EA928 8D22001C */  lw         $v0, 0x1C($t1)
/* 220BDC 801EA92C C4400034 */  lwc1       $f0, 0x34($v0)
/* 220BE0 801EA930 460C003C */  c.lt.s     $f0, $f12
/* 220BE4 801EA934 00000000 */  nop
/* 220BE8 801EA938 4503FFF5 */  bc1tl      .L801EA910_ovl16
/* 220BEC 801EA93C 46020480 */   add.s     $f18, $f0, $f2
/* 220BF0 801EA940 C4440038 */  lwc1       $f4, 0x38($v0)
.L801EA944_ovl16:
/* 220BF4 801EA944 3C18800F */  lui        $t8, %hi(D_800E98E0)
/* 220BF8 801EA948 3C08800F */  lui        $t0, %hi(D_800EA8A0)
.L801EA94C_ovl10:
/* 220BFC 801EA94C 460E2181 */  sub.s      $f6, $f4, $f14
/* 220C00 801EA950 271898E0 */  addiu      $t8, $t8, %lo(D_800E98E0)
/* 220C04 801EA954 2508A8A0 */  addiu      $t0, $t0, %lo(D_800EA8A0)
/* 220C08 801EA958 3C09800F */  lui        $t1, %hi(D_800EA1A0)
/* 220C0C 801EA95C E4460038 */  swc1       $f6, 0x38($v0)
/* 220C10 801EA960 8CC40000 */  lw         $a0, 0x0($a2)
/* 220C14 801EA964 8C830000 */  lw         $v1, 0x0($a0)
/* 220C18 801EA968 00031880 */  sll        $v1, $v1, 2
/* 220C1C 801EA96C 00A35021 */  addu       $t2, $a1, $v1
/* 220C20 801EA970 8D4B0000 */  lw         $t3, 0x0($t2)
/* 220C24 801EA974 8D62001C */  lw         $v0, 0x1C($t3)
/* 220C28 801EA978 3C0B800F */  lui        $t3, %hi(D_800E9E20)
.L801EA97C_ovl10:
/* 220C2C 801EA97C C4400038 */  lwc1       $f0, 0x38($v0)
/* 220C30 801EA980 4600103C */  c.lt.s     $f2, $f0
/* 220C34 801EA984 00000000 */  nop
/* 220C38 801EA988 4502000F */  bc1fl      .L801EA9C8_ovl16
/* 220C3C 801EA98C 460C003C */   c.lt.s    $f0, $f12
/* 220C40 801EA990 46020201 */  sub.s      $f8, $f0, $f2
.L801EA994_ovl16:
/* 220C44 801EA994 E4480038 */  swc1       $f8, 0x38($v0)
/* 220C48 801EA998 8CC40000 */  lw         $a0, 0x0($a2)
/* 220C4C 801EA99C 8C830000 */  lw         $v1, 0x0($a0)
glabel func_801EA9A0_ovl9
/* 220C50 801EA9A0 00031880 */  sll        $v1, $v1, 2
/* 220C54 801EA9A4 00A36021 */  addu       $t4, $a1, $v1
/* 220C58 801EA9A8 8D8D0000 */  lw         $t5, 0x0($t4)
.L801EA9AC_ovl10:
/* 220C5C 801EA9AC 8DA2001C */  lw         $v0, 0x1C($t5)
/* 220C60 801EA9B0 C4400038 */  lwc1       $f0, 0x38($v0)
/* 220C64 801EA9B4 4600103C */  c.lt.s     $f2, $f0
/* 220C68 801EA9B8 00000000 */  nop
/* 220C6C 801EA9BC 4503FFF5 */  bc1tl      .L801EA994_ovl16
.L801EA9C0_ovl10:
/* 220C70 801EA9C0 46020201 */   sub.s     $f8, $f0, $f2
/* 220C74 801EA9C4 460C003C */  c.lt.s     $f0, $f12
.L801EA9C8_ovl16:
/* 220C78 801EA9C8 00000000 */  nop
glabel func_801EA9CC_ovl10
/* 220C7C 801EA9CC 4502000F */  bc1fl      .L801EAA0C_ovl16
/* 220C80 801EA9D0 00781021 */   addu      $v0, $v1, $t8
/* 220C84 801EA9D4 46020280 */  add.s      $f10, $f0, $f2
.L801EA9D8_ovl16:
/* 220C88 801EA9D8 E44A0038 */  swc1       $f10, 0x38($v0)
/* 220C8C 801EA9DC 8CC40000 */  lw         $a0, 0x0($a2)
/* 220C90 801EA9E0 8C830000 */  lw         $v1, 0x0($a0)
/* 220C94 801EA9E4 00031880 */  sll        $v1, $v1, 2
/* 220C98 801EA9E8 00A37021 */  addu       $t6, $a1, $v1
/* 220C9C 801EA9EC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 220CA0 801EA9F0 8DE2001C */  lw         $v0, 0x1C($t7)
/* 220CA4 801EA9F4 C4400038 */  lwc1       $f0, 0x38($v0)
/* 220CA8 801EA9F8 460C003C */  c.lt.s     $f0, $f12
/* 220CAC 801EA9FC 00000000 */  nop
/* 220CB0 801EAA00 4503FFF5 */  bc1tl      .L801EA9D8_ovl16
/* 220CB4 801EAA04 46020280 */   add.s     $f10, $f0, $f2
/* 220CB8 801EAA08 00781021 */  addu       $v0, $v1, $t8
.L801EAA0C_ovl16:
/* 220CBC 801EAA0C 8C470000 */  lw         $a3, 0x0($v0)
/* 220CC0 801EAA10 44806000 */  mtc1       $zero, $f12
/* 220CC4 801EAA14 3C0E800F */  lui        $t6, %hi(D_800EAA60)
/* 220CC8 801EAA18 18E00005 */  blez       $a3, .L801EAA30_ovl16
/* 220CCC 801EAA1C 25CEAA60 */   addiu     $t6, $t6, %lo(D_800EAA60)
/* 220CD0 801EAA20 24F9FFFF */  addiu      $t9, $a3, -0x1
/* 220CD4 801EAA24 AC590000 */  sw         $t9, 0x0($v0)
/* 220CD8 801EAA28 8C830000 */  lw         $v1, 0x0($a0)
/* 220CDC 801EAA2C 00031880 */  sll        $v1, $v1, 2
.L801EAA30_ovl16:
/* 220CE0 801EAA30 00681021 */  addu       $v0, $v1, $t0
/* 220CE4 801EAA34 C4520000 */  lwc1       $f18, 0x0($v0)
/* 220CE8 801EAA38 3C07800F */  lui        $a3, %hi(D_800EAC20)
/* 220CEC 801EAA3C 24E7AC20 */  addiu      $a3, $a3, %lo(D_800EAC20)
/* 220CF0 801EAA40 460C903C */  c.lt.s     $f18, $f12
/* 220CF4 801EAA44 00000000 */  nop
/* 220CF8 801EAA48 45020005 */  bc1fl      .L801EAA60_ovl16
/* 220CFC 801EAA4C 01234821 */   addu      $t1, $t1, $v1
/* 220D00 801EAA50 E44C0000 */  swc1       $f12, 0x0($v0)
/* 220D04 801EAA54 8C830000 */  lw         $v1, 0x0($a0)
/* 220D08 801EAA58 00031880 */  sll        $v1, $v1, 2
/* 220D0C 801EAA5C 01234821 */  addu       $t1, $t1, $v1
.L801EAA60_ovl16:
/* 220D10 801EAA60 8D29A1A0 */  lw         $t1, %lo(D_800EA1A0)($t1)
/* 220D14 801EAA64 01635821 */  addu       $t3, $t3, $v1
/* 220D18 801EAA68 8D6B9E20 */  lw         $t3, %lo(D_800E9E20)($t3)
/* 220D1C 801EAA6C 00095080 */  sll        $t2, $t1, 2
/* 220D20 801EAA70 01495021 */  addu       $t2, $t2, $t1
/* 220D24 801EAA74 000A5080 */  sll        $t2, $t2, 2
/* 220D28 801EAA78 000B6080 */  sll        $t4, $t3, 2
/* 220D2C 801EAA7C 014C6821 */  addu       $t5, $t2, $t4
/* 220D30 801EAA80 002D0821 */  addu       $at, $at, $t5
/* 220D34 801EAA84 00E31021 */  addu       $v0, $a3, $v1
.L801EAA88_ovl9:
/* 220D38 801EAA88 C4440000 */  lwc1       $f4, 0x0($v0)
/* 220D3C 801EAA8C C426FCC0 */  lwc1       $f6, %lo(func_801EFC58_ovl10 + 0x68)($at)
/* 220D40 801EAA90 46062201 */  sub.s      $f8, $f4, $f6
/* 220D44 801EAA94 E4480000 */  swc1       $f8, 0x0($v0)
glabel func_801EAA98_ovl10
/* 220D48 801EAA98 8C830000 */  lw         $v1, 0x0($a0)
/* 220D4C 801EAA9C 00031880 */  sll        $v1, $v1, 2
/* 220D50 801EAAA0 00E31021 */  addu       $v0, $a3, $v1
/* 220D54 801EAAA4 C4420000 */  lwc1       $f2, 0x0($v0)
/* 220D58 801EAAA8 460C103C */  c.lt.s     $f2, $f12
/* 220D5C 801EAAAC 00000000 */  nop
/* 220D60 801EAAB0 45020008 */  bc1fl      .L801EAAD4_ovl16
/* 220D64 801EAAB4 006E1021 */   addu      $v0, $v1, $t6
/* 220D68 801EAAB8 E44C0000 */  swc1       $f12, 0x0($v0)
/* 220D6C 801EAABC 8C830000 */  lw         $v1, 0x0($a0)
/* 220D70 801EAAC0 3C01800F */  lui        $at, %hi(D_800EAC20)
.L801EAAC4_ovl9:
/* 220D74 801EAAC4 00031880 */  sll        $v1, $v1, 2
/* 220D78 801EAAC8 00230821 */  addu       $at, $at, $v1
/* 220D7C 801EAACC C422AC20 */  lwc1       $f2, %lo(D_800EAC20)($at)
/* 220D80 801EAAD0 006E1021 */  addu       $v0, $v1, $t6
.L801EAAD4_ovl16:
/* 220D84 801EAAD4 C4400000 */  lwc1       $f0, 0x0($v0)
/* 220D88 801EAAD8 4600103C */  c.lt.s     $f2, $f0
/* 220D8C 801EAADC 00000000 */  nop
/* 220D90 801EAAE0 45020009 */  bc1fl      .L801EAB08_ovl16
/* 220D94 801EAAE4 460C003C */   c.lt.s    $f0, $f12
/* 220D98 801EAAE8 E4420000 */  swc1       $f2, 0x0($v0)
/* 220D9C 801EAAEC 8C830000 */  lw         $v1, 0x0($a0)
/* 220DA0 801EAAF0 3C0F800F */  lui        $t7, %hi(D_800EAA60)
/* 220DA4 801EAAF4 25EFAA60 */  addiu      $t7, $t7, %lo(D_800EAA60)
/* 220DA8 801EAAF8 00031880 */  sll        $v1, $v1, 2
/* 220DAC 801EAAFC 006F1021 */  addu       $v0, $v1, $t7
/* 220DB0 801EAB00 C4400000 */  lwc1       $f0, 0x0($v0)
/* 220DB4 801EAB04 460C003C */  c.lt.s     $f0, $f12
.L801EAB08_ovl16:
/* 220DB8 801EAB08 00000000 */  nop
/* 220DBC 801EAB0C 45020008 */  bc1fl      .L801EAB30_ovl16
/* 220DC0 801EAB10 00A3C021 */   addu      $t8, $a1, $v1
/* 220DC4 801EAB14 E44C0000 */  swc1       $f12, 0x0($v0)
/* 220DC8 801EAB18 8C830000 */  lw         $v1, 0x0($a0)
.L801EAB1C_ovl9:
/* 220DCC 801EAB1C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 220DD0 801EAB20 00031880 */  sll        $v1, $v1, 2
/* 220DD4 801EAB24 00230821 */  addu       $at, $at, $v1
/* 220DD8 801EAB28 C420AA60 */  lwc1       $f0, %lo(D_800EAA60)($at)
/* 220DDC 801EAB2C 00A3C021 */  addu       $t8, $a1, $v1
.L801EAB30_ovl16:
/* 220DE0 801EAB30 8F190000 */  lw         $t9, 0x0($t8)
/* 220DE4 801EAB34 46000287 */  neg.s      $f10, $f0
/* 220DE8 801EAB38 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 220DEC 801EAB3C 8F28000C */  lw         $t0, 0xC($t9)
/* 220DF0 801EAB40 3C18800F */  lui        $t8, %hi(D_800E9FE0)
/* 220DF4 801EAB44 E50A0020 */  swc1       $f10, 0x20($t0)
/* 220DF8 801EAB48 8CC90000 */  lw         $t1, 0x0($a2)
glabel func_801EAB4C_ovl9
/* 220DFC 801EAB4C 8D230000 */  lw         $v1, 0x0($t1)
/* 220E00 801EAB50 00031880 */  sll        $v1, $v1, 2
/* 220E04 801EAB54 00A35821 */  addu       $t3, $a1, $v1
/* 220E08 801EAB58 8D6A0000 */  lw         $t2, 0x0($t3)
/* 220E0C 801EAB5C 00230821 */  addu       $at, $at, $v1
/* 220E10 801EAB60 C432A6E0 */  lwc1       $f18, %lo(D_800EA6E0)($at)
/* 220E14 801EAB64 8D4C0004 */  lw         $t4, 0x4($t2)
/* 220E18 801EAB68 E5920038 */  swc1       $f18, 0x38($t4)
/* 220E1C 801EAB6C 8CCD0000 */  lw         $t5, 0x0($a2)
/* 220E20 801EAB70 8DAE0000 */  lw         $t6, 0x0($t5)
/* 220E24 801EAB74 000E7880 */  sll        $t7, $t6, 2
/* 220E28 801EAB78 030FC021 */  addu       $t8, $t8, $t7
/* 220E2C 801EAB7C 8F189FE0 */  lw         $t8, %lo(D_800E9FE0)($t8)
/* 220E30 801EAB80 53000059 */  beql       $t8, $zero, .L801EACE8_ovl16
/* 220E34 801EAB84 8FBF0014 */   lw        $ra, 0x14($sp)
/* 220E38 801EAB88 0C07AD47 */  jal        func_801EB51C_ovl16
.L801EAB8C_ovl10:
/* 220E3C 801EAB8C 00000000 */   nop
/* 220E40 801EAB90 0C07AEA6 */  jal        func_801EBA98_ovl16
/* 220E44 801EAB94 00000000 */   nop
glabel func_801EAB98_ovl10
/* 220E48 801EAB98 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 220E4C 801EAB9C 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 220E50 801EABA0 8CD90000 */  lw         $t9, 0x0($a2)
/* 220E54 801EABA4 3C08800F */  lui        $t0, %hi(D_800E9AA0)
/* 220E58 801EABA8 3C05800E */  lui        $a1, %hi(D_800DFBD0)
/* 220E5C 801EABAC 8F230000 */  lw         $v1, 0x0($t9)
/* 220E60 801EABB0 24010001 */  addiu      $at, $zero, 0x1
/* 220E64 801EABB4 3C0C800E */  lui        $t4, %hi(D_800E1B50)
/* 220E68 801EABB8 00031880 */  sll        $v1, $v1, 2
/* 220E6C 801EABBC 01034021 */  addu       $t0, $t0, $v1
glabel func_801EABC0_ovl9
/* 220E70 801EABC0 8D089AA0 */  lw         $t0, %lo(D_800E9AA0)($t0)
/* 220E74 801EABC4 24A5FBD0 */  addiu      $a1, $a1, %lo(D_800DFBD0)
/* 220E78 801EABC8 01836021 */  addu       $t4, $t4, $v1
/* 220E7C 801EABCC 15010007 */  bne        $t0, $at, .L801EABEC_ovl16
/* 220E80 801EABD0 3C09801E */   lui       $t1, %hi(func_801DA28C_ovl9 + 0x90)
/* 220E84 801EABD4 3C0B800E */  lui        $t3, %hi(D_800E1B50)
/* 220E88 801EABD8 01635821 */  addu       $t3, $t3, $v1
/* 220E8C 801EABDC 8D6B1B50 */  lw         $t3, %lo(D_800E1B50)($t3)
/* 220E90 801EABE0 2529A31C */  addiu      $t1, $t1, %lo(func_801DA28C_ovl9 + 0x90)
/* 220E94 801EABE4 10000005 */  b          .L801EABFC_ovl16
/* 220E98 801EABE8 AD69008C */   sw        $t1, 0x8C($t3)
.L801EABEC_ovl16:
/* 220E9C 801EABEC 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 220EA0 801EABF0 3C0A801E */  lui        $t2, %hi(func_801DA28C_ovl9 + 0x6C)
/* 220EA4 801EABF4 254AA2F8 */  addiu      $t2, $t2, %lo(func_801DA28C_ovl9 + 0x6C)
/* 220EA8 801EABF8 AD8A008C */  sw         $t2, 0x8C($t4)
.L801EABFC_ovl16:
/* 220EAC 801EABFC 8CCD0000 */  lw         $t5, 0x0($a2)
/* 220EB0 801EAC00 8DAE0000 */  lw         $t6, 0x0($t5)
/* 220EB4 801EAC04 000E7880 */  sll        $t7, $t6, 2
/* 220EB8 801EAC08 00AFC021 */  addu       $t8, $a1, $t7
/* 220EBC 801EAC0C 8F190000 */  lw         $t9, 0x0($t8)
/* 220EC0 801EAC10 0C07BCCB */  jal        func_801EF32C_ovl16
/* 220EC4 801EAC14 8F240008 */   lw        $a0, 0x8($t9)
/* 220EC8 801EAC18 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 220ECC 801EAC1C 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 220ED0 801EAC20 8CC80000 */  lw         $t0, 0x0($a2)
/* 220ED4 801EAC24 3C0A800F */  lui        $t2, %hi(D_800E83E0)
/* 220ED8 801EAC28 24010001 */  addiu      $at, $zero, 0x1
/* 220EDC 801EAC2C 8D090000 */  lw         $t1, 0x0($t0)
/* 220EE0 801EAC30 8FAC001C */  lw         $t4, 0x1C($sp)
/* 220EE4 801EAC34 00095880 */  sll        $t3, $t1, 2
/* 220EE8 801EAC38 014B5021 */  addu       $t2, $t2, $t3
/* 220EEC 801EAC3C 8D4A83E0 */  lw         $t2, %lo(D_800E83E0)($t2)
/* 220EF0 801EAC40 55410029 */  bnel       $t2, $at, .L801EACE8_ovl16
/* 220EF4 801EAC44 8FBF0014 */   lw        $ra, 0x14($sp)
/* 220EF8 801EAC48 8184003A */  lb         $a0, 0x3A($t4)
/* 220EFC 801EAC4C 2401FFFF */  addiu      $at, $zero, -0x1
/* 220F00 801EAC50 50810025 */  beql       $a0, $at, .L801EACE8_ovl16
/* 220F04 801EAC54 8FBF0014 */   lw        $ra, 0x14($sp)
/* 220F08 801EAC58 0C068091 */  jal        func_801A0244_ovl7
/* 220F0C 801EAC5C 00000000 */   nop
/* 220F10 801EAC60 2401FFFF */  addiu      $at, $zero, -0x1
/* 220F14 801EAC64 1041001F */  beq        $v0, $at, .L801EACE4_ovl16
/* 220F18 801EAC68 00402025 */   or        $a0, $v0, $zero
/* 220F1C 801EAC6C 8FAD001C */  lw         $t5, 0x1C($sp)
/* 220F20 801EAC70 0C07BCEC */  jal        func_801EF3B0_ovl16
/* 220F24 801EAC74 81A5003A */   lb        $a1, 0x3A($t5)
.L801EAC78_ovl9:
/* 220F28 801EAC78 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 220F2C 801EAC7C 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 220F30 801EAC80 8CCF0000 */  lw         $t7, 0x0($a2)
/* 220F34 801EAC84 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 220F38 801EAC88 240E0012 */  addiu      $t6, $zero, 0x12
/* 220F3C 801EAC8C 8DF80000 */  lw         $t8, 0x0($t7)
/* 220F40 801EAC90 240400F4 */  addiu      $a0, $zero, 0xF4
/* 220F44 801EAC94 0018C880 */  sll        $t9, $t8, 2
/* 220F48 801EAC98 00390821 */  addu       $at, $at, $t9
/* 220F4C 801EAC9C 0C029D9E */  jal        play_sound
/* 220F50 801EACA0 AC2E83E0 */   sw        $t6, %lo(D_800E83E0)($at)
/* 220F54 801EACA4 8FA8001C */  lw         $t0, 0x1C($sp)
/* 220F58 801EACA8 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 220F5C 801EACAC 24090001 */  addiu      $t1, $zero, 0x1
/* 220F60 801EACB0 AD000094 */  sw         $zero, 0x94($t0)
/* 220F64 801EACB4 8FAB001C */  lw         $t3, 0x1C($sp)
glabel func_801EACB8_ovl9
/* 220F68 801EACB8 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 220F6C 801EACBC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 220F70 801EACC0 A1690040 */  sb         $t1, 0x40($t3)
/* 220F74 801EACC4 8CCA0000 */  lw         $t2, 0x0($a2)
/* 220F78 801EACC8 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 220F7C 801EACCC 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 220F80 801EACD0 8D4C0000 */  lw         $t4, 0x0($t2)
/* 220F84 801EACD4 000C6880 */  sll        $t5, $t4, 2
/* 220F88 801EACD8 008D2021 */  addu       $a0, $a0, $t5
/* 220F8C 801EACDC 0C02C7B2 */  jal        assign_new_process_entry
/* 220F90 801EACE0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L801EACE4_ovl16:
/* 220F94 801EACE4 8FBF0014 */  lw         $ra, 0x14($sp)
.L801EACE8_ovl16:
/* 220F98 801EACE8 27BD0020 */  addiu      $sp, $sp, 0x20
.L801EACEC_ovl9:
/* 220F9C 801EACEC 03E00008 */  jr         $ra
/* 220FA0 801EACF0 00000000 */   nop
