glabel func_801E56CC_ovl17
/* 21022C 801E56CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
glabel D_801E56D0_ovl17
/* 210230 801E56D0 AFB30028 */  sw         $s3, 0x28($sp)
/* 210234 801E56D4 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 210238 801E56D8 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
.L801E56DC_ovl17:
/* 21023C 801E56DC 8E6E0000 */  lw         $t6, 0x0($s3)
glabel D_801E56E0_ovl17
/* 210240 801E56E0 AFBF002C */  sw         $ra, 0x2C($sp)
glabel D_801E56E4_ovl17
/* 210244 801E56E4 AFB20024 */  sw         $s2, 0x24($sp)
glabel D_801E56E8_ovl17
/* 210248 801E56E8 AFB10020 */  sw         $s1, 0x20($sp)
.L801E56EC_ovl17:
/* 21024C 801E56EC AFB0001C */  sw         $s0, 0x1C($sp)
glabel D_801E56F0_ovl17
/* 210250 801E56F0 F7B40010 */  sdc1       $f20, 0x10($sp)
glabel D_801E56F4_ovl17
/* 210254 801E56F4 AFA40030 */  sw         $a0, 0x30($sp)
glabel D_801E56F8_ovl17
/* 210258 801E56F8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21025C 801E56FC 3C12800E */  lui        $s2, %hi(D_800E0D50)
.L801E5700_ovl17:
/* 210260 801E5700 26520D50 */  addiu      $s2, $s2, %lo(D_800E0D50)
.L801E5704_ovl17:
/* 210264 801E5704 000FC080 */  sll        $t8, $t7, 2
/* 210268 801E5708 0258C821 */  addu       $t9, $s2, $t8
.L801E570C_ovl17:
/* 21026C 801E570C 0C066E8F */  jal        func_8019BA3C_ovl7
glabel D_801E5710_ovl17
/* 210270 801E5710 8F310000 */   lw        $s1, 0x0($t9)
/* 210274 801E5714 8E630000 */  lw         $v1, 0x0($s3)
/* 210278 801E5718 3C08800B */  lui        $t0, %hi(func_800B7790)
.L801E571C_ovl17:
/* 21027C 801E571C 3C01800E */  lui        $at, %hi(D_800DEF90)
glabel func_801E5720_ovl17
/* 210280 801E5720 8C690000 */  lw         $t1, 0x0($v1)
/* 210284 801E5724 25087790 */  addiu      $t0, $t0, %lo(func_800B7790)
.L801E5728_ovl17:
/* 210288 801E5728 3C0B801E */  lui        $t3, %hi(func_801E5C34_ovl15)
/* 21028C 801E572C 00095080 */  sll        $t2, $t1, 2
/* 210290 801E5730 002A0821 */  addu       $at, $at, $t2
glabel func_801E5734_ovl17
/* 210294 801E5734 AC28EF90 */  sw         $t0, %lo(D_800DEF90)($at)
/* 210298 801E5738 8C6C0000 */  lw         $t4, 0x0($v1)
/* 21029C 801E573C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 2102A0 801E5740 256B5C34 */  addiu      $t3, $t3, %lo(func_801E5C34_ovl15)
/* 2102A4 801E5744 000C6880 */  sll        $t5, $t4, 2
.L801E5748_ovl10:
/* 2102A8 801E5748 002D0821 */  addu       $at, $at, $t5
/* 2102AC 801E574C 3C04801D */  lui        $a0, %hi(func_801D7BEC_ovl9 + 0x18)
/* 2102B0 801E5750 AC2BF150 */  sw         $t3, %lo(D_800DF150)($at)
glabel func_801E5754_ovl10
/* 2102B4 801E5754 0C066220 */  jal        func_80198880_ovl7
/* 2102B8 801E5758 24847C04 */   addiu     $a0, $a0, %lo(func_801D7BEC_ovl9 + 0x18)
/* 2102BC 801E575C 8E630000 */  lw         $v1, 0x0($s3)
/* 2102C0 801E5760 3C01800F */  lui        $at, %hi(D_800E8920)
/* 2102C4 801E5764 3C02800E */  lui        $v0, %hi(D_800E17D0)
/* 2102C8 801E5768 8C6E0000 */  lw         $t6, 0x0($v1)
/* 2102CC 801E576C 244217D0 */  addiu      $v0, $v0, %lo(D_800E17D0)
/* 2102D0 801E5770 44804000 */  mtc1       $zero, $f8
/* 2102D4 801E5774 000E7880 */  sll        $t7, $t6, 2
/* 2102D8 801E5778 002F0821 */  addu       $at, $at, $t7
.L801E577C_ovl13:
/* 2102DC 801E577C AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 2102E0 801E5780 8C780000 */  lw         $t8, 0x0($v1)
/* 2102E4 801E5784 3C01801E */  lui        $at, %hi(D_801E6908_ovl15)
/* 2102E8 801E5788 C4246908 */  lwc1       $f4, %lo(D_801E6908_ovl15)($at)
/* 2102EC 801E578C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 2102F0 801E5790 0018C880 */  sll        $t9, $t8, 2
/* 2102F4 801E5794 00390821 */  addu       $at, $at, $t9
/* 2102F8 801E5798 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* 2102FC 801E579C 8C650000 */  lw         $a1, 0x0($v1)
/* 210300 801E57A0 3C01800F */  lui        $at, %hi(D_800E9020)
/* 210304 801E57A4 00052880 */  sll        $a1, $a1, 2
/* 210308 801E57A8 02454821 */  addu       $t1, $s2, $a1
/* 21030C 801E57AC 8D280000 */  lw         $t0, 0x0($t1)
/* 210310 801E57B0 00455821 */  addu       $t3, $v0, $a1
.L801E57B4_ovl10:
/* 210314 801E57B4 00085080 */  sll        $t2, $t0, 2
/* 210318 801E57B8 004A6021 */  addu       $t4, $v0, $t2
/* 21031C 801E57BC C5860000 */  lwc1       $f6, 0x0($t4)
/* 210320 801E57C0 E5660000 */  swc1       $f6, 0x0($t3)
/* 210324 801E57C4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 210328 801E57C8 000D7080 */  sll        $t6, $t5, 2
/* 21032C 801E57CC 002E0821 */  addu       $at, $at, $t6
/* 210330 801E57D0 0C02CCFD */  jal        func_800B33F4
.L801E57D4_ovl13:
/* 210334 801E57D4 E4289020 */   swc1      $f8, %lo(D_800E9020)($at)
/* 210338 801E57D8 8E630000 */  lw         $v1, 0x0($s3)
/* 21033C 801E57DC 00111080 */  sll        $v0, $s1, 2
/* 210340 801E57E0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 210344 801E57E4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 210348 801E57E8 00220821 */  addu       $at, $at, $v0
.L801E57EC_ovl9:
/* 21034C 801E57EC C42AA6E0 */  lwc1       $f10, %lo(D_800EA6E0)($at)
/* 210350 801E57F0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 210354 801E57F4 000FC080 */  sll        $t8, $t7, 2
/* 210358 801E57F8 00380821 */  addu       $at, $at, $t8
glabel func_801E57FC_ovl16
/* 21035C 801E57FC E42A25D0 */  swc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* 210360 801E5800 8C790000 */  lw         $t9, 0x0($v1)
/* 210364 801E5804 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 210368 801E5808 00220821 */  addu       $at, $at, $v0
/* 21036C 801E580C C430A8A0 */  lwc1       $f16, %lo(D_800EA8A0)($at)
/* 210370 801E5810 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
/* 210374 801E5814 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 210378 801E5818 00194880 */  sll        $t1, $t9, 2
.L801E581C_ovl9:
/* 21037C 801E581C 02094021 */  addu       $t0, $s0, $t1
/* 210380 801E5820 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 210384 801E5824 E5100000 */  swc1       $f16, 0x0($t0)
/* 210388 801E5828 8C6A0000 */  lw         $t2, 0x0($v1)
/* 21038C 801E582C 00220821 */  addu       $at, $at, $v0
/* 210390 801E5830 C432AA60 */  lwc1       $f18, %lo(D_800EAA60)($at)
/* 210394 801E5834 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 210398 801E5838 000A6080 */  sll        $t4, $t2, 2
/* 21039C 801E583C 002C0821 */  addu       $at, $at, $t4
/* 2103A0 801E5840 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 2103A4 801E5844 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 2103A8 801E5848 8C6B0000 */  lw         $t3, 0x0($v1)
/* 2103AC 801E584C 00220821 */  addu       $at, $at, $v0
/* 2103B0 801E5850 C424AC20 */  lwc1       $f4, %lo(D_800EAC20)($at)
/* 2103B4 801E5854 3C01800E */  lui        $at, %hi(D_800E3050)
glabel func_801E5858_ovl9
/* 2103B8 801E5858 000B6880 */  sll        $t5, $t3, 2
/* 2103BC 801E585C 002D0821 */  addu       $at, $at, $t5
/* 2103C0 801E5860 E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 2103C4 801E5864 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 2103C8 801E5868 8C6E0000 */  lw         $t6, 0x0($v1)
.L801E586C_ovl16:
/* 2103CC 801E586C 00220821 */  addu       $at, $at, $v0
/* 2103D0 801E5870 C426ADE0 */  lwc1       $f6, %lo(D_800EADE0)($at)
/* 2103D4 801E5874 3C01800E */  lui        $at, %hi(D_800E3590)
/* 2103D8 801E5878 000E7880 */  sll        $t7, $t6, 2
/* 2103DC 801E587C 002F0821 */  addu       $at, $at, $t7
/* 2103E0 801E5880 E4263590 */  swc1       $f6, %lo(D_800E3590)($at)
/* 2103E4 801E5884 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 2103E8 801E5888 8C780000 */  lw         $t8, 0x0($v1)
.L801E588C_ovl9:
/* 2103EC 801E588C 00220821 */  addu       $at, $at, $v0
.L801E5890_ovl16:
/* 2103F0 801E5890 C428AFA0 */  lwc1       $f8, %lo(D_800EAFA0)($at)
/* 2103F4 801E5894 3C01800E */  lui        $at, %hi(D_800E3210)
/* 2103F8 801E5898 0018C880 */  sll        $t9, $t8, 2
glabel func_801E589C_ovl10
/* 2103FC 801E589C 00390821 */  addu       $at, $at, $t9
/* 210400 801E58A0 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 210404 801E58A4 8C680000 */  lw         $t0, 0x0($v1)
/* 210408 801E58A8 3C09800D */  lui        $t1, %hi(D_800D7098 + 0x30)
/* 21040C 801E58AC 8D2970C8 */  lw         $t1, %lo(D_800D7098 + 0x30)($t1)
.L801E58B0_ovl16:
/* 210410 801E58B0 00085080 */  sll        $t2, $t0, 2
/* 210414 801E58B4 024A6021 */  addu       $t4, $s2, $t2
/* 210418 801E58B8 3C040001 */  lui        $a0, (0x10092 >> 16)
/* 21041C 801E58BC 34840092 */  ori        $a0, $a0, (0x10092 & 0xFFFF)
.L801E58C0_ovl16:
/* 210420 801E58C0 2405002A */  addiu      $a1, $zero, 0x2A
glabel func_801E58C4_ovl13
/* 210424 801E58C4 24060010 */  addiu      $a2, $zero, 0x10
/* 210428 801E58C8 0C02A619 */  jal        func_800A9864
.L801E58CC_ovl16:
/* 21042C 801E58CC AD890000 */   sw        $t1, 0x0($t4)
/* 210430 801E58D0 3C11800E */  lui        $s1, %hi(D_800E3210)
/* 210434 801E58D4 3C040001 */  lui        $a0, (0x10537 >> 16)
glabel func_801E58D8_ovl16
/* 210438 801E58D8 26313210 */  addiu      $s1, $s1, %lo(D_800E3210)
/* 21043C 801E58DC 0C02A806 */  jal        func_800AA018
/* 210440 801E58E0 34840537 */   ori       $a0, $a0, (0x10537 & 0xFFFF)
/* 210444 801E58E4 8E630000 */  lw         $v1, 0x0($s3)
/* 210448 801E58E8 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 21044C 801E58EC 4481A000 */  mtc1       $at, $f20
/* 210450 801E58F0 8C650000 */  lw         $a1, 0x0($v1)
/* 210454 801E58F4 3C07800E */  lui        $a3, %hi(D_800E3590)
/* 210458 801E58F8 00052880 */  sll        $a1, $a1, 2
/* 21045C 801E58FC 02051021 */  addu       $v0, $s0, $a1
/* 210460 801E5900 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 210464 801E5904 460AA03C */  c.lt.s     $f20, $f10
/* 210468 801E5908 00000000 */  nop
/* 21046C 801E590C 4502002D */  bc1fl      .L801E59C4_ovl15
/* 210470 801E5910 E4540000 */   swc1      $f20, 0x0($v0)
/* 210474 801E5914 44808000 */  mtc1       $zero, $f16
/* 210478 801E5918 24E73590 */  addiu      $a3, $a3, %lo(D_800E3590)
/* 21047C 801E591C 00E55821 */  addu       $t3, $a3, $a1
/* 210480 801E5920 E5700000 */  swc1       $f16, 0x0($t3)
/* 210484 801E5924 8C650000 */  lw         $a1, 0x0($v1)
/* 210488 801E5928 3C01800E */  lui        $at, %hi(D_800E3050)
/* 21048C 801E592C 00052880 */  sll        $a1, $a1, 2
/* 210490 801E5930 00E56821 */  addu       $t5, $a3, $a1
/* 210494 801E5934 C5B20000 */  lwc1       $f18, 0x0($t5)
/* 210498 801E5938 00250821 */  addu       $at, $at, $a1
/* 21049C 801E593C E4323050 */  swc1       $f18, %lo(D_800E3050)($at)
/* 2104A0 801E5940 8C6E0000 */  lw         $t6, 0x0($v1)
/* 2104A4 801E5944 3C01801E */  lui        $at, %hi(D_801E690C_ovl15)
/* 2104A8 801E5948 C424690C */  lwc1       $f4, %lo(D_801E690C_ovl15)($at)
/* 2104AC 801E594C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 2104B0 801E5950 000E7880 */  sll        $t7, $t6, 2
/* 2104B4 801E5954 002F0821 */  addu       $at, $at, $t7
.L801E5958_ovl9:
/* 2104B8 801E5958 E4243AD0 */  swc1       $f4, %lo(D_800E3AD0)($at)
/* 2104BC 801E595C 8C780000 */  lw         $t8, 0x0($v1)
.L801E5960_ovl13:
/* 2104C0 801E5960 3C01C120 */  lui        $at, (0xC1200000 >> 16)
.L801E5964_ovl9:
/* 2104C4 801E5964 44813000 */  mtc1       $at, $f6
/* 2104C8 801E5968 0018C880 */  sll        $t9, $t8, 2
/* 2104CC 801E596C 02394021 */  addu       $t0, $s1, $t9
/* 2104D0 801E5970 E5060000 */  swc1       $f6, 0x0($t0)
glabel func_801E5974_ovl9
/* 2104D4 801E5974 8C6A0000 */  lw         $t2, 0x0($v1)
/* 2104D8 801E5978 000A4880 */  sll        $t1, $t2, 2
.L801E597C_ovl10:
/* 2104DC 801E597C 02091021 */  addu       $v0, $s0, $t1
/* 2104E0 801E5980 C4480000 */  lwc1       $f8, 0x0($v0)
/* 2104E4 801E5984 4608A03C */  c.lt.s     $f20, $f8
/* 2104E8 801E5988 00000000 */  nop
/* 2104EC 801E598C 4502000D */  bc1fl      .L801E59C4_ovl15
/* 2104F0 801E5990 E4540000 */   swc1      $f20, 0x0($v0)
.L801E5994_ovl15:
/* 2104F4 801E5994 0C002DAF */  jal        finish_current_thread
/* 2104F8 801E5998 24040001 */   addiu     $a0, $zero, 0x1
/* 2104FC 801E599C 8E630000 */  lw         $v1, 0x0($s3)
/* 210500 801E59A0 8C6C0000 */  lw         $t4, 0x0($v1)
/* 210504 801E59A4 000C5880 */  sll        $t3, $t4, 2
/* 210508 801E59A8 020B1021 */  addu       $v0, $s0, $t3
/* 21050C 801E59AC C44A0000 */  lwc1       $f10, 0x0($v0)
/* 210510 801E59B0 460AA03C */  c.lt.s     $f20, $f10
glabel func_801E59B4_ovl16
/* 210514 801E59B4 00000000 */  nop
/* 210518 801E59B8 4501FFF6 */  bc1t       .L801E5994_ovl15
/* 21051C 801E59BC 00000000 */   nop
/* 210520 801E59C0 E4540000 */  swc1       $f20, 0x0($v0)
.L801E59C4_ovl15:
/* 210524 801E59C4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 210528 801E59C8 44808000 */  mtc1       $zero, $f16
/* 21052C 801E59CC 3C06800E */  lui        $a2, %hi(D_800E3750)
/* 210530 801E59D0 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* 210534 801E59D4 000D7080 */  sll        $t6, $t5, 2
/* 210538 801E59D8 00CE7821 */  addu       $t7, $a2, $t6
.L801E59DC_ovl13:
/* 21053C 801E59DC E5F00000 */  swc1       $f16, 0x0($t7)
/* 210540 801E59E0 8C650000 */  lw         $a1, 0x0($v1)
/* 210544 801E59E4 3C01801E */  lui        $at, %hi(.L801E6910_ovl15)
/* 210548 801E59E8 3C07800E */  lui        $a3, %hi(D_800E3590)
/* 21054C 801E59EC 00052880 */  sll        $a1, $a1, 2
.L801E59F0_ovl9:
/* 210550 801E59F0 00C5C021 */  addu       $t8, $a2, $a1
/* 210554 801E59F4 C7120000 */  lwc1       $f18, 0x0($t8)
.L801E59F8_ovl13:
/* 210558 801E59F8 0225C821 */  addu       $t9, $s1, $a1
.L801E59FC_ovl9:
/* 21055C 801E59FC 24E73590 */  addiu      $a3, $a3, %lo(D_800E3590)
/* 210560 801E5A00 E7320000 */  swc1       $f18, 0x0($t9)
glabel func_801E5A04_ovl13
/* 210564 801E5A04 8C680000 */  lw         $t0, 0x0($v1)
/* 210568 801E5A08 C4246910 */  lwc1       $f4, %lo(.L801E6910_ovl15)($at)
glabel func_801E5A0C_ovl9
/* 21056C 801E5A0C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 210570 801E5A10 00085080 */  sll        $t2, $t0, 2
/* 210574 801E5A14 002A0821 */  addu       $at, $at, $t2
/* 210578 801E5A18 E4243C90 */  swc1       $f4, %lo(D_800E3C90)($at)
/* 21057C 801E5A1C 8C690000 */  lw         $t1, 0x0($v1)
/* 210580 801E5A20 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 210584 801E5A24 44813000 */  mtc1       $at, $f6
glabel func_801E5A28_ovl16
/* 210588 801E5A28 00096080 */  sll        $t4, $t1, 2
/* 21058C 801E5A2C 00EC5821 */  addu       $t3, $a3, $t4
/* 210590 801E5A30 E5660000 */  swc1       $f6, 0x0($t3)
/* 210594 801E5A34 8C6D0000 */  lw         $t5, 0x0($v1)
/* 210598 801E5A38 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 21059C 801E5A3C 44814000 */  mtc1       $at, $f8
/* 2105A0 801E5A40 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 2105A4 801E5A44 000D7080 */  sll        $t6, $t5, 2
/* 2105A8 801E5A48 002E0821 */  addu       $at, $at, $t6
/* 2105AC 801E5A4C 3C040001 */  lui        $a0, (0x10537 >> 16)
/* 2105B0 801E5A50 34840537 */  ori        $a0, $a0, (0x10537 & 0xFFFF)
/* 2105B4 801E5A54 0C02A7A9 */  jal        func_800A9EA4
/* 2105B8 801E5A58 E4283AD0 */   swc1      $f8, %lo(D_800E3AD0)($at)
/* 2105BC 801E5A5C 8E630000 */  lw         $v1, 0x0($s3)
/* 2105C0 801E5A60 3C10800F */  lui        $s0, %hi(D_800E98E0)
/* 2105C4 801E5A64 261098E0 */  addiu      $s0, $s0, %lo(D_800E98E0)
/* 2105C8 801E5A68 8C780000 */  lw         $t8, 0x0($v1)
/* 2105CC 801E5A6C 240F01E0 */  addiu      $t7, $zero, 0x1E0
/* 2105D0 801E5A70 3C12800F */  lui        $s2, %hi(D_800E83E0)
glabel func_801E5A74_ovl13
/* 2105D4 801E5A74 0018C880 */  sll        $t9, $t8, 2
/* 2105D8 801E5A78 02194021 */  addu       $t0, $s0, $t9
/* 2105DC 801E5A7C AD0F0000 */  sw         $t7, 0x0($t0)
/* 2105E0 801E5A80 8C650000 */  lw         $a1, 0x0($v1)
/* 2105E4 801E5A84 265283E0 */  addiu      $s2, $s2, %lo(D_800E83E0)
/* 2105E8 801E5A88 2411000A */  addiu      $s1, $zero, 0xA
/* 2105EC 801E5A8C 00052880 */  sll        $a1, $a1, 2
/* 2105F0 801E5A90 02055021 */  addu       $t2, $s0, $a1
/* 2105F4 801E5A94 8D490000 */  lw         $t1, 0x0($t2)
/* 2105F8 801E5A98 19200013 */  blez       $t1, .L801E5AE8_ovl15
/* 2105FC 801E5A9C 02456021 */   addu      $t4, $s2, $a1
.L801E5AA0_ovl15:
/* 210600 801E5AA0 8D8B0000 */  lw         $t3, 0x0($t4)
/* 210604 801E5AA4 522B0011 */  beql       $s1, $t3, .L801E5AEC_ovl15
/* 210608 801E5AA8 44805000 */   mtc1      $zero, $f10
/* 21060C 801E5AAC 0C002DAF */  jal        finish_current_thread
/* 210610 801E5AB0 24040001 */   addiu     $a0, $zero, 0x1
/* 210614 801E5AB4 8E630000 */  lw         $v1, 0x0($s3)
/* 210618 801E5AB8 8C6D0000 */  lw         $t5, 0x0($v1)
glabel func_801E5ABC_ovl9
/* 21061C 801E5ABC 000D7080 */  sll        $t6, $t5, 2
/* 210620 801E5AC0 020E1021 */  addu       $v0, $s0, $t6
/* 210624 801E5AC4 8C580000 */  lw         $t8, 0x0($v0)
/* 210628 801E5AC8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 21062C 801E5ACC AC590000 */  sw         $t9, 0x0($v0)
/* 210630 801E5AD0 8C650000 */  lw         $a1, 0x0($v1)
/* 210634 801E5AD4 00052880 */  sll        $a1, $a1, 2
/* 210638 801E5AD8 02057821 */  addu       $t7, $s0, $a1
/* 21063C 801E5ADC 8DE80000 */  lw         $t0, 0x0($t7)
/* 210640 801E5AE0 5D00FFEF */  bgtzl      $t0, .L801E5AA0_ovl15
glabel func_801E5AE4_ovl16
/* 210644 801E5AE4 02456021 */   addu      $t4, $s2, $a1
.L801E5AE8_ovl15:
/* 210648 801E5AE8 44805000 */  mtc1       $zero, $f10
.L801E5AEC_ovl15:
/* 21064C 801E5AEC 3C01800E */  lui        $at, %hi(D_800E3590)
/* 210650 801E5AF0 00250821 */  addu       $at, $at, $a1
/* 210654 801E5AF4 E42A3590 */  swc1       $f10, %lo(D_800E3590)($at)
.L801E5AF8_ovl10:
/* 210658 801E5AF8 8C650000 */  lw         $a1, 0x0($v1)
.L801E5AFC_ovl10:
/* 21065C 801E5AFC 3C01800E */  lui        $at, %hi(D_800E3590)
/* 210660 801E5B00 3C12800F */  lui        $s2, %hi(D_800E83E0)
/* 210664 801E5B04 00052880 */  sll        $a1, $a1, 2
glabel func_801E5B08_ovl10
/* 210668 801E5B08 00250821 */  addu       $at, $at, $a1
/* 21066C 801E5B0C C4303590 */  lwc1       $f16, %lo(D_800E3590)($at)
/* 210670 801E5B10 3C01800E */  lui        $at, %hi(D_800E3050)
/* 210674 801E5B14 00250821 */  addu       $at, $at, $a1
/* 210678 801E5B18 3C040001 */  lui        $a0, (0x10536 >> 16)
/* 21067C 801E5B1C 265283E0 */  addiu      $s2, $s2, %lo(D_800E83E0)
/* 210680 801E5B20 2411000A */  addiu      $s1, $zero, 0xA
/* 210684 801E5B24 34840536 */  ori        $a0, $a0, (0x10536 & 0xFFFF)
/* 210688 801E5B28 0C02A7A9 */  jal        func_800A9EA4
/* 21068C 801E5B2C E4303050 */   swc1      $f16, %lo(D_800E3050)($at)
/* 210690 801E5B30 8E6A0000 */  lw         $t2, 0x0($s3)
/* 210694 801E5B34 8D450000 */  lw         $a1, 0x0($t2)
/* 210698 801E5B38 00052880 */  sll        $a1, $a1, 2
/* 21069C 801E5B3C 02054821 */  addu       $t1, $s0, $a1
/* 2106A0 801E5B40 8D2C0000 */  lw         $t4, 0x0($t1)
/* 2106A4 801E5B44 19800013 */  blez       $t4, .L801E5B94_ovl15
/* 2106A8 801E5B48 02455821 */   addu      $t3, $s2, $a1
.L801E5B4C_ovl15:
/* 2106AC 801E5B4C 8D6D0000 */  lw         $t5, 0x0($t3)
/* 2106B0 801E5B50 162D0010 */  bne        $s1, $t5, .L801E5B94_ovl15
/* 2106B4 801E5B54 00000000 */   nop
/* 2106B8 801E5B58 0C002DAF */  jal        finish_current_thread
/* 2106BC 801E5B5C 24040001 */   addiu     $a0, $zero, 0x1
/* 2106C0 801E5B60 8E630000 */  lw         $v1, 0x0($s3)
/* 2106C4 801E5B64 8C6E0000 */  lw         $t6, 0x0($v1)
/* 2106C8 801E5B68 000EC080 */  sll        $t8, $t6, 2
/* 2106CC 801E5B6C 02181021 */  addu       $v0, $s0, $t8
/* 2106D0 801E5B70 8C590000 */  lw         $t9, 0x0($v0)
/* 2106D4 801E5B74 272FFFFF */  addiu      $t7, $t9, -0x1
/* 2106D8 801E5B78 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2106DC 801E5B7C 8C650000 */  lw         $a1, 0x0($v1)
/* 2106E0 801E5B80 00052880 */  sll        $a1, $a1, 2
/* 2106E4 801E5B84 02054021 */  addu       $t0, $s0, $a1
/* 2106E8 801E5B88 8D0A0000 */  lw         $t2, 0x0($t0)
/* 2106EC 801E5B8C 5D40FFEF */  bgtzl      $t2, .L801E5B4C_ovl15
/* 2106F0 801E5B90 02455821 */   addu      $t3, $s2, $a1
.L801E5B94_ovl15:
/* 2106F4 801E5B94 3C04801D */  lui        $a0, %hi(func_801D7BEC_ovl9 + 0x5C)
/* 2106F8 801E5B98 0C066220 */  jal        func_80198880_ovl7
/* 2106FC 801E5B9C 24847C48 */   addiu     $a0, $a0, %lo(func_801D7BEC_ovl9 + 0x5C)
/* 210700 801E5BA0 8E630000 */  lw         $v1, 0x0($s3)
/* 210704 801E5BA4 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
.L801E5BA8_ovl9:
/* 210708 801E5BA8 44819000 */  mtc1       $at, $f18
glabel D_801E5BAC_ovl13
/* 21070C 801E5BAC 8C690000 */  lw         $t1, 0x0($v1)
/* 210710 801E5BB0 3C01800E */  lui        $at, %hi(D_800E3590)
/* 210714 801E5BB4 3C040001 */  lui        $a0, (0x10537 >> 16)
glabel D_801E5BB8_ovl13
/* 210718 801E5BB8 00096080 */  sll        $t4, $t1, 2
/* 21071C 801E5BBC 002C0821 */  addu       $at, $at, $t4
/* 210720 801E5BC0 E4323590 */  swc1       $f18, %lo(D_800E3590)($at)
glabel D_801E5BC4_ovl13
/* 210724 801E5BC4 8C6B0000 */  lw         $t3, 0x0($v1)
/* 210728 801E5BC8 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 21072C 801E5BCC 44812000 */  mtc1       $at, $f4
/* 210730 801E5BD0 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 210734 801E5BD4 000B6880 */  sll        $t5, $t3, 2
/* 210738 801E5BD8 002D0821 */  addu       $at, $at, $t5
/* 21073C 801E5BDC 34840537 */  ori        $a0, $a0, (0x10537 & 0xFFFF)
.L801E5BE0_ovl9:
/* 210740 801E5BE0 0C02A7A9 */  jal        func_800A9EA4
/* 210744 801E5BE4 E4243AD0 */   swc1      $f4, %lo(D_800E3AD0)($at)
/* 210748 801E5BE8 8E6E0000 */  lw         $t6, 0x0($s3)
/* 21074C 801E5BEC 8DD80000 */  lw         $t8, 0x0($t6)
glabel D_801E5BF0_ovl13
/* 210750 801E5BF0 0018C880 */  sll        $t9, $t8, 2
.L801E5BF4_ovl16:
/* 210754 801E5BF4 02197821 */  addu       $t7, $s0, $t9
/* 210758 801E5BF8 8DE40000 */  lw         $a0, 0x0($t7)
/* 21075C 801E5BFC 18800003 */  blez       $a0, .L801E5C0C_ovl15
glabel D_801E5C00_ovl13
/* 210760 801E5C00 00000000 */   nop
glabel D_801E5C04_ovl13
/* 210764 801E5C04 0C002DAF */  jal        finish_current_thread
glabel D_801E5C08_ovl13
/* 210768 801E5C08 00000000 */   nop
.L801E5C0C_ovl15:
/* 21076C 801E5C0C 0C06B3E1 */  jal        func_801ACF84_ovl7
glabel D_801E5C10_ovl13
/* 210770 801E5C10 8FA40030 */   lw        $a0, 0x30($sp)
glabel D_801E5C14_ovl13
/* 210774 801E5C14 8FBF002C */  lw         $ra, 0x2C($sp)
.L801E5C18_ovl13:
/* 210778 801E5C18 D7B40010 */  ldc1       $f20, 0x10($sp)
glabel D_801E5C1C_ovl13
/* 21077C 801E5C1C 8FB0001C */  lw         $s0, 0x1C($sp)
.L801E5C20_ovl16:
/* 210780 801E5C20 8FB10020 */  lw         $s1, 0x20($sp)
.L801E5C24_ovl9:
/* 210784 801E5C24 8FB20024 */  lw         $s2, 0x24($sp)
/* 210788 801E5C28 8FB30028 */  lw         $s3, 0x28($sp)
/* 21078C 801E5C2C 03E00008 */  jr         $ra
jtbl_801E5C30_ovl13:
/* 210790 801E5C30 27BD0030 */   addiu     $sp, $sp, 0x30
