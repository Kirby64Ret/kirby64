glabel func_8010EA68
/* 0974D8 8010EA68 27BDFF70 */  addiu $sp, $sp, -0x90
/* 0974DC 8010EA6C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0974E0 8010EA70 AFA40090 */  sw    $a0, 0x90($sp)
/* 0974E4 8010EA74 AFA50094 */  sw    $a1, 0x94($sp)
/* 0974E8 8010EA78 AFA60098 */  sw    $a2, 0x98($sp)
/* 0974EC 8010EA7C C4840018 */  lwc1  $f4, 0x18($a0)
/* 0974F0 8010EA80 E7A40050 */  swc1  $f4, 0x50($sp)
/* 0974F4 8010EA84 C4A60024 */  lwc1  $f6, 0x24($a1)
/* 0974F8 8010EA88 E7A6004C */  swc1  $f6, 0x4c($sp)
/* 0974FC 8010EA8C C4A8000C */  lwc1  $f8, 0xc($a1)
/* 097500 8010EA90 46062000 */  add.s $f0, $f4, $f6
/* 097504 8010EA94 E7A80048 */  swc1  $f8, 0x48($sp)
/* 097508 8010EA98 C4AA0018 */  lwc1  $f10, 0x18($a1)
/* 09750C 8010EA9C 460A403C */  c.lt.s $f8, $f10
/* 097510 8010EAA0 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 097514 8010EAA4 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 097518 8010EAA8 4502000F */  bc1fl .L8010EAE8_ovl2
/* 09751C 8010EAAC 8FB80090 */   lw    $t8, 0x90($sp)
/* 097520 8010EAB0 46004181 */  sub.s $f6, $f8, $f0
/* 097524 8010EAB4 C484000C */  lwc1  $f4, 0xc($a0)
/* 097528 8010EAB8 4606203C */  c.lt.s $f4, $f6
/* 09752C 8010EABC E7A40040 */  swc1  $f4, 0x40($sp)
/* 097530 8010EAC0 45010006 */  bc1t  .L8010EADC_ovl2
/* 097534 8010EAC4 00000000 */   nop   
/* 097538 8010EAC8 46005200 */  add.s $f8, $f10, $f0
/* 09753C 8010EACC 4604403C */  c.lt.s $f8, $f4
/* 097540 8010EAD0 00000000 */  nop   
/* 097544 8010EAD4 45020014 */  bc1fl .L8010EB28_ovl2
/* 097548 8010EAD8 8FB90094 */   lw    $t9, 0x94($sp)
.L8010EADC_ovl2:
/* 09754C 8010EADC 100000CD */  b     .L8010EE14_ovl2
/* 097550 8010EAE0 00001025 */   move  $v0, $zero
/* 097554 8010EAE4 8FB80090 */  lw    $t8, 0x90($sp)
.L8010EAE8_ovl2:
/* 097558 8010EAE8 46003281 */  sub.s $f10, $f6, $f0
/* 09755C 8010EAEC C702000C */  lwc1  $f2, 0xc($t8)
/* 097560 8010EAF0 460A103C */  c.lt.s $f2, $f10
/* 097564 8010EAF4 00000000 */  nop   
/* 097568 8010EAF8 45010008 */  bc1t  .L8010EB1C_ovl2
/* 09756C 8010EAFC 00000000 */   nop   
/* 097570 8010EB00 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 097574 8010EB04 E7A20040 */  swc1  $f2, 0x40($sp)
/* 097578 8010EB08 46004100 */  add.s $f4, $f8, $f0
/* 09757C 8010EB0C 4602203C */  c.lt.s $f4, $f2
/* 097580 8010EB10 00000000 */  nop   
/* 097584 8010EB14 45020004 */  bc1fl .L8010EB28_ovl2
/* 097588 8010EB18 8FB90094 */   lw    $t9, 0x94($sp)
.L8010EB1C_ovl2:
/* 09758C 8010EB1C 100000BD */  b     .L8010EE14_ovl2
/* 097590 8010EB20 00001025 */   move  $v0, $zero
/* 097594 8010EB24 8FB90094 */  lw    $t9, 0x94($sp)
.L8010EB28_ovl2:
/* 097598 8010EB28 8FA80090 */  lw    $t0, 0x90($sp)
/* 09759C 8010EB2C C7300010 */  lwc1  $f16, 0x10($t9)
/* 0975A0 8010EB30 C726001C */  lwc1  $f6, 0x1c($t9)
/* 0975A4 8010EB34 4606803C */  c.lt.s $f16, $f6
/* 0975A8 8010EB38 E7A60038 */  swc1  $f6, 0x38($sp)
/* 0975AC 8010EB3C C7A40038 */  lwc1  $f4, 0x38($sp)
/* 0975B0 8010EB40 4502000F */  bc1fl .L8010EB80_ovl2
/* 0975B4 8010EB44 8FA90090 */   lw    $t1, 0x90($sp)
/* 0975B8 8010EB48 46008281 */  sub.s $f10, $f16, $f0
/* 0975BC 8010EB4C C5120010 */  lwc1  $f18, 0x10($t0)
/* 0975C0 8010EB50 460A903C */  c.lt.s $f18, $f10
/* 0975C4 8010EB54 00000000 */  nop   
/* 0975C8 8010EB58 45010006 */  bc1t  .L8010EB74_ovl2
/* 0975CC 8010EB5C 00000000 */   nop   
/* 0975D0 8010EB60 46003200 */  add.s $f8, $f6, $f0
/* 0975D4 8010EB64 4612403C */  c.lt.s $f8, $f18
/* 0975D8 8010EB68 00000000 */  nop   
/* 0975DC 8010EB6C 45020012 */  bc1fl .L8010EBB8_ovl2
/* 0975E0 8010EB70 8FAA0094 */   lw    $t2, 0x94($sp)
.L8010EB74_ovl2:
/* 0975E4 8010EB74 100000A7 */  b     .L8010EE14_ovl2
/* 0975E8 8010EB78 00001025 */   move  $v0, $zero
/* 0975EC 8010EB7C 8FA90090 */  lw    $t1, 0x90($sp)
.L8010EB80_ovl2:
/* 0975F0 8010EB80 46002281 */  sub.s $f10, $f4, $f0
/* 0975F4 8010EB84 C5320010 */  lwc1  $f18, 0x10($t1)
/* 0975F8 8010EB88 460A903C */  c.lt.s $f18, $f10
/* 0975FC 8010EB8C 00000000 */  nop   
/* 097600 8010EB90 45010006 */  bc1t  .L8010EBAC_ovl2
/* 097604 8010EB94 00000000 */   nop   
/* 097608 8010EB98 46008180 */  add.s $f6, $f16, $f0
/* 09760C 8010EB9C 4612303C */  c.lt.s $f6, $f18
/* 097610 8010EBA0 00000000 */  nop   
/* 097614 8010EBA4 45020004 */  bc1fl .L8010EBB8_ovl2
/* 097618 8010EBA8 8FAA0094 */   lw    $t2, 0x94($sp)
.L8010EBAC_ovl2:
/* 09761C 8010EBAC 10000099 */  b     .L8010EE14_ovl2
/* 097620 8010EBB0 00001025 */   move  $v0, $zero
/* 097624 8010EBB4 8FAA0094 */  lw    $t2, 0x94($sp)
.L8010EBB8_ovl2:
/* 097628 8010EBB8 8FAB0090 */  lw    $t3, 0x90($sp)
/* 09762C 8010EBBC 8FAC0090 */  lw    $t4, 0x90($sp)
/* 097630 8010EBC0 C54C0014 */  lwc1  $f12, 0x14($t2)
/* 097634 8010EBC4 C54E0020 */  lwc1  $f14, 0x20($t2)
/* 097638 8010EBC8 460E603C */  c.lt.s $f12, $f14
/* 09763C 8010EBCC 00000000 */  nop   
/* 097640 8010EBD0 45020011 */  bc1fl .L8010EC18_ovl2
/* 097644 8010EBD4 46007281 */   sub.s $f10, $f14, $f0
/* 097648 8010EBD8 46006201 */  sub.s $f8, $f12, $f0
/* 09764C 8010EBDC C5620014 */  lwc1  $f2, 0x14($t3)
/* 097650 8010EBE0 4608103C */  c.lt.s $f2, $f8
/* 097654 8010EBE4 00000000 */  nop   
/* 097658 8010EBE8 45010006 */  bc1t  .L8010EC04_ovl2
/* 09765C 8010EBEC 00000000 */   nop   
/* 097660 8010EBF0 46007100 */  add.s $f4, $f14, $f0
/* 097664 8010EBF4 4602203C */  c.lt.s $f4, $f2
/* 097668 8010EBF8 00000000 */  nop   
/* 09766C 8010EBFC 45000003 */  bc1f  .L8010EC0C_ovl2
/* 097670 8010EC00 00000000 */   nop   
.L8010EC04_ovl2:
/* 097674 8010EC04 10000083 */  b     .L8010EE14_ovl2
/* 097678 8010EC08 00001025 */   move  $v0, $zero
.L8010EC0C_ovl2:
/* 09767C 8010EC0C 1000000F */  b     .L8010EC4C_ovl2
/* 097680 8010EC10 E7B0003C */   swc1  $f16, 0x3c($sp)
/* 097684 8010EC14 46007281 */  sub.s $f10, $f14, $f0
.L8010EC18_ovl2:
/* 097688 8010EC18 C5820014 */  lwc1  $f2, 0x14($t4)
/* 09768C 8010EC1C 460A103C */  c.lt.s $f2, $f10
/* 097690 8010EC20 00000000 */  nop   
/* 097694 8010EC24 45010007 */  bc1t  .L8010EC44_ovl2
/* 097698 8010EC28 00000000 */   nop   
/* 09769C 8010EC2C 46006180 */  add.s $f6, $f12, $f0
/* 0976A0 8010EC30 E7B0003C */  swc1  $f16, 0x3c($sp)
/* 0976A4 8010EC34 4602303C */  c.lt.s $f6, $f2
/* 0976A8 8010EC38 00000000 */  nop   
/* 0976AC 8010EC3C 45020004 */  bc1fl .L8010EC50_ovl2
/* 0976B0 8010EC40 C7A80044 */   lwc1  $f8, 0x44($sp)
.L8010EC44_ovl2:
/* 0976B4 8010EC44 10000073 */  b     .L8010EE14_ovl2
/* 0976B8 8010EC48 00001025 */   move  $v0, $zero
.L8010EC4C_ovl2:
/* 0976BC 8010EC4C C7A80044 */  lwc1  $f8, 0x44($sp)
.L8010EC50_ovl2:
/* 0976C0 8010EC50 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 0976C4 8010EC54 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 0976C8 8010EC58 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* 0976CC 8010EC5C 46044401 */  sub.s $f16, $f8, $f4
/* 0976D0 8010EC60 8FA40090 */  lw    $a0, 0x90($sp)
/* 0976D4 8010EC64 8FA60094 */  lw    $a2, 0x94($sp)
/* 0976D8 8010EC68 46065201 */  sub.s $f8, $f10, $f6
/* 0976DC 8010EC6C E7B0008C */  swc1  $f16, 0x8c($sp)
/* 0976E0 8010EC70 8FA50050 */  lw    $a1, 0x50($sp)
/* 0976E4 8010EC74 460C7101 */  sub.s $f4, $f14, $f12
/* 0976E8 8010EC78 46084282 */  mul.s $f10, $f8, $f8
/* 0976EC 8010EC7C E7A80088 */  swc1  $f8, 0x88($sp)
/* 0976F0 8010EC80 8FAD0098 */  lw    $t5, 0x98($sp)
/* 0976F4 8010EC84 46108182 */  mul.s $f6, $f16, $f16
/* 0976F8 8010EC88 E7A40084 */  swc1  $f4, 0x84($sp)
/* 0976FC 8010EC8C C7A80084 */  lwc1  $f8, 0x84($sp)
/* 097700 8010EC90 2484000C */  addiu $a0, $a0, 0xc
/* 097704 8010EC94 24C6000C */  addiu $a2, $a2, 0xc
/* 097708 8010EC98 460A3100 */  add.s $f4, $f6, $f10
/* 09770C 8010EC9C 46084182 */  mul.s $f6, $f8, $f8
/* 097710 8010ECA0 44804000 */  mtc1  $zero, $f8
/* 097714 8010ECA4 46062280 */  add.s $f10, $f4, $f6
/* 097718 8010ECA8 C7A60040 */  lwc1  $f6, 0x40($sp)
/* 09771C 8010ECAC C7A40048 */  lwc1  $f4, 0x48($sp)
/* 097720 8010ECB0 460A4032 */  c.eq.s $f8, $f10
/* 097724 8010ECB4 E7AA0024 */  swc1  $f10, 0x24($sp)
/* 097728 8010ECB8 45020007 */  bc1fl .L8010ECD8_ovl2
/* 09772C 8010ECBC C7AA003C */   lwc1  $f10, 0x3c($sp)
/* 097730 8010ECC0 8FA7004C */  lw    $a3, 0x4c($sp)
/* 097734 8010ECC4 0C043A3C */  jal   func_8010E8F0
/* 097738 8010ECC8 AFAD0010 */   sw    $t5, 0x10($sp)
/* 09773C 8010ECCC 10000052 */  b     .L8010EE18_ovl2
/* 097740 8010ECD0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 097744 8010ECD4 C7AA003C */  lwc1  $f10, 0x3c($sp)
.L8010ECD8_ovl2:
/* 097748 8010ECD8 46062201 */  sub.s $f8, $f4, $f6
/* 09774C 8010ECDC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 097750 8010ECE0 8FAF0098 */  lw    $t7, 0x98($sp)
/* 097754 8010ECE4 46026181 */  sub.s $f6, $f12, $f2
/* 097758 8010ECE8 E7A80078 */  swc1  $f8, 0x78($sp)
/* 09775C 8010ECEC 00001025 */  move  $v0, $zero
/* 097760 8010ECF0 46125101 */  sub.s $f4, $f10, $f18
/* 097764 8010ECF4 C7AA008C */  lwc1  $f10, 0x8c($sp)
/* 097768 8010ECF8 E7A60070 */  swc1  $f6, 0x70($sp)
/* 09776C 8010ECFC 46085182 */  mul.s $f6, $f10, $f8
/* 097770 8010ED00 C7AA0088 */  lwc1  $f10, 0x88($sp)
/* 097774 8010ED04 E7A40074 */  swc1  $f4, 0x74($sp)
/* 097778 8010ED08 46045202 */  mul.s $f8, $f10, $f4
/* 09777C 8010ED0C C7A40084 */  lwc1  $f4, 0x84($sp)
/* 097780 8010ED10 46083280 */  add.s $f10, $f6, $f8
/* 097784 8010ED14 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 097788 8010ED18 46062202 */  mul.s $f8, $f4, $f6
/* 09778C 8010ED1C 46085100 */  add.s $f4, $f10, $f8
/* 097790 8010ED20 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 097794 8010ED24 44804000 */  mtc1  $zero, $f8
/* 097798 8010ED28 46002187 */  neg.s $f6, $f4
/* 09779C 8010ED2C C7A4008C */  lwc1  $f4, 0x8c($sp)
/* 0977A0 8010ED30 460A3403 */  div.s $f16, $f6, $f10
/* 0977A4 8010ED34 4608803C */  c.lt.s $f16, $f8
/* 0977A8 8010ED38 46008386 */  mov.s $f14, $f16
/* 0977AC 8010ED3C 45020005 */  bc1fl .L8010ED54_ovl2
/* 0977B0 8010ED40 44811000 */   mtc1  $at, $f2
/* 0977B4 8010ED44 44807000 */  mtc1  $zero, $f14
/* 0977B8 8010ED48 10000008 */  b     .L8010ED6C_ovl2
/* 0977BC 8010ED4C 00000000 */   nop   
/* 0977C0 8010ED50 44811000 */  mtc1  $at, $f2
.L8010ED54_ovl2:
/* 0977C4 8010ED54 00000000 */  nop   
/* 0977C8 8010ED58 4610103C */  c.lt.s $f2, $f16
/* 0977CC 8010ED5C 00000000 */  nop   
/* 0977D0 8010ED60 45000002 */  bc1f  .L8010ED6C_ovl2
/* 0977D4 8010ED64 00000000 */   nop   
/* 0977D8 8010ED68 46001386 */  mov.s $f14, $f2
.L8010ED6C_ovl2:
/* 0977DC 8010ED6C 46000002 */  mul.s $f0, $f0, $f0
/* 0977E0 8010ED70 C7A80088 */  lwc1  $f8, 0x88($sp)
/* 0977E4 8010ED74 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* 0977E8 8010ED78 460E2182 */  mul.s $f6, $f4, $f14
/* 0977EC 8010ED7C 460A3080 */  add.s $f2, $f6, $f10
/* 0977F0 8010ED80 460E4102 */  mul.s $f4, $f8, $f14
/* 0977F4 8010ED84 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 0977F8 8010ED88 C7A60074 */  lwc1  $f6, 0x74($sp)
/* 0977FC 8010ED8C 460E5202 */  mul.s $f8, $f10, $f14
/* 097800 8010ED90 46062300 */  add.s $f12, $f4, $f6
/* 097804 8010ED94 46021182 */  mul.s $f6, $f2, $f2
/* 097808 8010ED98 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 09780C 8010ED9C 460C6282 */  mul.s $f10, $f12, $f12
/* 097810 8010EDA0 46044400 */  add.s $f16, $f8, $f4
/* 097814 8010EDA4 46108102 */  mul.s $f4, $f16, $f16
/* 097818 8010EDA8 460A3200 */  add.s $f8, $f6, $f10
/* 09781C 8010EDAC 46044180 */  add.s $f6, $f8, $f4
/* 097820 8010EDB0 4600303E */  c.le.s $f6, $f0
/* 097824 8010EDB4 00000000 */  nop   
/* 097828 8010EDB8 45000016 */  bc1f  .L8010EE14_ovl2
/* 09782C 8010EDBC 00000000 */   nop   
/* 097830 8010EDC0 11E00012 */  beqz  $t7, .L8010EE0C_ovl2
/* 097834 8010EDC4 3C013F00 */   li    $at, 0x3F000000 # 0.500000
/* 097838 8010EDC8 44810000 */  mtc1  $at, $f0
/* 09783C 8010EDCC C7A80040 */  lwc1  $f8, 0x40($sp)
/* 097840 8010EDD0 46001282 */  mul.s $f10, $f2, $f0
/* 097844 8010EDD4 46085100 */  add.s $f4, $f10, $f8
/* 097848 8010EDD8 46006182 */  mul.s $f6, $f12, $f0
/* 09784C 8010EDDC E5E40000 */  swc1  $f4, ($t7)
/* 097850 8010EDE0 8FAE0090 */  lw    $t6, 0x90($sp)
/* 097854 8010EDE4 8FB80098 */  lw    $t8, 0x98($sp)
/* 097858 8010EDE8 46008102 */  mul.s $f4, $f16, $f0
/* 09785C 8010EDEC C5CA0010 */  lwc1  $f10, 0x10($t6)
/* 097860 8010EDF0 460A3200 */  add.s $f8, $f6, $f10
/* 097864 8010EDF4 E7080004 */  swc1  $f8, 4($t8)
/* 097868 8010EDF8 8FB90090 */  lw    $t9, 0x90($sp)
/* 09786C 8010EDFC 8FA80098 */  lw    $t0, 0x98($sp)
/* 097870 8010EE00 C7260014 */  lwc1  $f6, 0x14($t9)
/* 097874 8010EE04 46062280 */  add.s $f10, $f4, $f6
/* 097878 8010EE08 E50A0008 */  swc1  $f10, 8($t0)
.L8010EE0C_ovl2:
/* 09787C 8010EE0C 10000001 */  b     .L8010EE14_ovl2
/* 097880 8010EE10 24020001 */   li    $v0, 1
.L8010EE14_ovl2:
/* 097884 8010EE14 8FBF001C */  lw    $ra, 0x1c($sp)
.L8010EE18_ovl2:
/* 097888 8010EE18 27BD0090 */  addiu $sp, $sp, 0x90
/* 09788C 8010EE1C 03E00008 */  jr    $ra
/* 097890 8010EE20 00000000 */   nop   
.type func_8010EA68, @function
.size func_8010EA68, . - func_8010EA68
