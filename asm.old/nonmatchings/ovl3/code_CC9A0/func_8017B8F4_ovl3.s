glabel func_8017B8F4_ovl3
/* DC334 8017B8F4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* DC338 8017B8F8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* DC33C 8017B8FC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* DC340 8017B900 AFBF0014 */  sw         $ra, 0x14($sp)
/* DC344 8017B904 AFA40048 */  sw         $a0, 0x48($sp)
/* DC348 8017B908 8DC20000 */  lw         $v0, 0x0($t6)
/* DC34C 8017B90C 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
/* DC350 8017B910 3C01800F */  lui        $at, %hi(D_800E98E0)
/* DC354 8017B914 00021080 */  sll        $v0, $v0, 2
/* DC358 8017B918 01E27821 */  addu       $t7, $t7, $v0
/* DC35C 8017B91C 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* DC360 8017B920 00220821 */  addu       $at, $at, $v0
/* DC364 8017B924 AFA00044 */  sw         $zero, 0x44($sp)
/* DC368 8017B928 0C054EB5 */  jal        func_80153AD4_ovl3
/* DC36C 8017B92C AC2F98E0 */   sw        $t7, %lo(D_800E98E0)($at)
/* DC370 8017B930 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DC374 8017B934 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L8017B938_ovl5:
/* DC378 8017B938 3C09800E */  lui        $t1, %hi(gEntitiesNextPosYArray)
/* DC37C 8017B93C 25292790 */  addiu      $t1, $t1, %lo(gEntitiesNextPosYArray)
/* DC380 8017B940 8C780000 */  lw         $t8, 0x0($v1)
/* DC384 8017B944 3C01800F */  lui        $at, %hi(D_800EC9E4)
/* DC388 8017B948 C426C9E4 */  lwc1       $f6, %lo(D_800EC9E4)($at)
/* DC38C 8017B94C 0018C880 */  sll        $t9, $t8, 2
/* DC390 8017B950 01392021 */  addu       $a0, $t1, $t9
/* DC394 8017B954 C4840000 */  lwc1       $f4, 0x0($a0)
/* DC398 8017B958 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DC39C 8017B95C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DC3A0 8017B960 46062201 */  sub.s      $f8, $f4, $f6
/* DC3A4 8017B964 8D0A00FC */  lw         $t2, 0xFC($t0)
/* DC3A8 8017B968 8FA70044 */  lw         $a3, 0x44($sp)
/* DC3AC 8017B96C 11400003 */  beqz       $t2, .L8017B97C_ovl3
/* DC3B0 8017B970 E4880000 */   swc1      $f8, 0x0($a0)
/* DC3B4 8017B974 1000002C */  b          .L8017BA28_ovl3
.L8017B978_ovl5:
/* DC3B8 8017B978 24070001 */   addiu     $a3, $zero, 0x1
.L8017B97C_ovl3:
/* DC3BC 8017B97C 8C6B0000 */  lw         $t3, 0x0($v1)
/* DC3C0 8017B980 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* DC3C4 8017B984 27A40038 */  addiu      $a0, $sp, 0x38
/* DC3C8 8017B988 000B6080 */  sll        $t4, $t3, 2
/* DC3CC 8017B98C 002C0821 */  addu       $at, $at, $t4
/* DC3D0 8017B990 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* DC3D4 8017B994 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
.L8017B998_ovl5:
/* DC3D8 8017B998 3C0541A0 */  lui        $a1, (0x41A00000 >> 16)
/* DC3DC 8017B99C E7AA0038 */  swc1       $f10, 0x38($sp)
/* DC3E0 8017B9A0 8C6D0000 */  lw         $t5, 0x0($v1)
/* DC3E4 8017B9A4 24060004 */  addiu      $a2, $zero, 0x4
/* DC3E8 8017B9A8 000D7080 */  sll        $t6, $t5, 2
.L8017B9AC_ovl5:
/* DC3EC 8017B9AC 002E0821 */  addu       $at, $at, $t6
/* DC3F0 8017B9B0 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* DC3F4 8017B9B4 E7B00040 */  swc1       $f16, 0x40($sp)
/* DC3F8 8017B9B8 8C6F0000 */  lw         $t7, 0x0($v1)
/* DC3FC 8017B9BC 000FC080 */  sll        $t8, $t7, 2
/* DC400 8017B9C0 0138C821 */  addu       $t9, $t1, $t8
/* DC404 8017B9C4 C7320000 */  lwc1       $f18, 0x0($t9)
/* DC408 8017B9C8 AFA70044 */  sw         $a3, 0x44($sp)
/* DC40C 8017B9CC 0C05560E */  jal        func_80155838_ovl3
/* DC410 8017B9D0 E7B2003C */   swc1      $f18, 0x3C($sp)
/* DC414 8017B9D4 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DC418 8017B9D8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DC41C 8017B9DC 10400003 */  beqz       $v0, .L8017B9EC_ovl3
/* DC420 8017B9E0 8FA70044 */   lw        $a3, 0x44($sp)
/* DC424 8017B9E4 10000010 */  b          .L8017BA28_ovl3
/* DC428 8017B9E8 24070001 */   addiu     $a3, $zero, 0x1
.L8017B9EC_ovl3:
/* DC42C 8017B9EC 3C014220 */  lui        $at, (0x42200000 >> 16)
/* DC430 8017B9F0 44813000 */  mtc1       $at, $f6
glabel func_8017B9F4_ovl5
/* DC434 8017B9F4 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* DC438 8017B9F8 27A40038 */  addiu      $a0, $sp, 0x38
/* DC43C 8017B9FC 3C0541A0 */  lui        $a1, (0x41A00000 >> 16)
/* DC440 8017BA00 46062200 */  add.s      $f8, $f4, $f6
/* DC444 8017BA04 24060004 */  addiu      $a2, $zero, 0x4
/* DC448 8017BA08 AFA70044 */  sw         $a3, 0x44($sp)
/* DC44C 8017BA0C 0C05560E */  jal        func_80155838_ovl3
/* DC450 8017BA10 E7A8003C */   swc1      $f8, 0x3C($sp)
/* DC454 8017BA14 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DC458 8017BA18 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DC45C 8017BA1C 10400002 */  beqz       $v0, .L8017BA28_ovl3
/* DC460 8017BA20 8FA70044 */   lw        $a3, 0x44($sp)
/* DC464 8017BA24 24070001 */  addiu      $a3, $zero, 0x1
.L8017BA28_ovl3:
/* DC468 8017BA28 14E00004 */  bnez       $a3, .L8017BA3C_ovl3
/* DC46C 8017BA2C 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* DC470 8017BA30 8D0200E4 */  lw         $v0, 0xE4($t0)
glabel func_8017BA34_ovl5
/* DC474 8017BA34 10400032 */  beqz       $v0, .L8017BB00_ovl3
/* DC478 8017BA38 00000000 */   nop
.L8017BA3C_ovl3:
/* DC47C 8017BA3C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DC480 8017BA40 44805000 */  mtc1       $zero, $f10
/* DC484 8017BA44 3C01800E */  lui        $at, %hi(D_800E6690)
/* DC488 8017BA48 8C6A0000 */  lw         $t2, 0x0($v1)
/* DC48C 8017BA4C 44802000 */  mtc1       $zero, $f4
/* DC490 8017BA50 3C04800E */  lui        $a0, %hi(D_800E3750)
/* DC494 8017BA54 000A5880 */  sll        $t3, $t2, 2
/* DC498 8017BA58 002B0821 */  addu       $at, $at, $t3
/* DC49C 8017BA5C E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
/* DC4A0 8017BA60 8C620000 */  lw         $v0, 0x0($v1)
/* DC4A4 8017BA64 3C01800E */  lui        $at, %hi(D_800E6690)
/* DC4A8 8017BA68 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* DC4AC 8017BA6C 00021080 */  sll        $v0, $v0, 2
/* DC4B0 8017BA70 00220821 */  addu       $at, $at, $v0
/* DC4B4 8017BA74 C4306690 */  lwc1       $f16, %lo(D_800E6690)($at)
/* DC4B8 8017BA78 3C01800E */  lui        $at, %hi(D_800E64D0)
/* DC4BC 8017BA7C 00220821 */  addu       $at, $at, $v0
/* DC4C0 8017BA80 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* DC4C4 8017BA84 8C6C0000 */  lw         $t4, 0x0($v1)
/* DC4C8 8017BA88 3C018019 */  lui        $at, %hi(D_801975F0_ovl3)
/* DC4CC 8017BA8C C43275F0 */  lwc1       $f18, %lo(D_801975F0_ovl3)($at)
/* DC4D0 8017BA90 3C01800E */  lui        $at, %hi(D_800E6850)
/* DC4D4 8017BA94 000C6880 */  sll        $t5, $t4, 2
/* DC4D8 8017BA98 002D0821 */  addu       $at, $at, $t5
/* DC4DC 8017BA9C E4326850 */  swc1       $f18, %lo(D_800E6850)($at)
/* DC4E0 8017BAA0 8C6E0000 */  lw         $t6, 0x0($v1)
/* DC4E4 8017BAA4 3C01800E */  lui        $at, %hi(D_800E3210)
/* DC4E8 8017BAA8 000E7880 */  sll        $t7, $t6, 2
/* DC4EC 8017BAAC 008FC021 */  addu       $t8, $a0, $t7
/* DC4F0 8017BAB0 E7040000 */  swc1       $f4, 0x0($t8)
/* DC4F4 8017BAB4 8C620000 */  lw         $v0, 0x0($v1)
/* DC4F8 8017BAB8 240E0001 */  addiu      $t6, $zero, 0x1
/* DC4FC 8017BABC 00021080 */  sll        $v0, $v0, 2
/* DC500 8017BAC0 0082C821 */  addu       $t9, $a0, $v0
/* DC504 8017BAC4 C7260000 */  lwc1       $f6, 0x0($t9)
/* DC508 8017BAC8 00220821 */  addu       $at, $at, $v0
/* DC50C 8017BACC E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* DC510 8017BAD0 8C6A0000 */  lw         $t2, 0x0($v1)
/* DC514 8017BAD4 3C018019 */  lui        $at, %hi(D_801975F4_ovl3)
/* DC518 8017BAD8 C42875F4 */  lwc1       $f8, %lo(D_801975F4_ovl3)($at)
/* DC51C 8017BADC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* DC520 8017BAE0 000A5880 */  sll        $t3, $t2, 2
/* DC524 8017BAE4 002B0821 */  addu       $at, $at, $t3
/* DC528 8017BAE8 E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
/* DC52C 8017BAEC 8D0C0034 */  lw         $t4, 0x34($t0)
/* DC530 8017BAF0 AD0E003C */  sw         $t6, 0x3C($t0)
/* DC534 8017BAF4 358D4000 */  ori        $t5, $t4, 0x4000
/* DC538 8017BAF8 10000006 */  b          .L8017BB14_ovl3
/* DC53C 8017BAFC AD0D0034 */   sw        $t5, 0x34($t0)
.L8017BB00_ovl3:
/* DC540 8017BB00 54400005 */  bnel       $v0, $zero, .L8017BB18_ovl3
/* DC544 8017BB04 8D0F003C */   lw        $t7, 0x3C($t0)
/* DC548 8017BB08 54E00003 */  bnel       $a3, $zero, .L8017BB18_ovl3
/* DC54C 8017BB0C 8D0F003C */   lw        $t7, 0x3C($t0)
/* DC550 8017BB10 AD00003C */  sw         $zero, 0x3C($t0)
.L8017BB14_ovl3:
/* DC554 8017BB14 8D0F003C */  lw         $t7, 0x3C($t0)
.L8017BB18_ovl3:
/* DC558 8017BB18 55E00025 */  bnel       $t7, $zero, .L8017BBB0_ovl3
/* DC55C 8017BB1C 8D180030 */   lw        $t8, 0x30($t0)
/* DC560 8017BB20 0C048596 */  jal        func_80121658
/* DC564 8017BB24 00000000 */   nop
/* DC568 8017BB28 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DC56C 8017BB2C 1040001F */  beqz       $v0, .L8017BBAC_ovl3
/* DC570 8017BB30 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* DC574 8017BB34 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DC578 8017BB38 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DC57C 8017BB3C 44805000 */  mtc1       $zero, $f10
/* DC580 8017BB40 3C05800E */  lui        $a1, %hi(D_800E6690)
/* DC584 8017BB44 8C780000 */  lw         $t8, 0x0($v1)
/* DC588 8017BB48 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
/* DC58C 8017BB4C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* DC590 8017BB50 0018C880 */  sll        $t9, $t8, 2
/* DC594 8017BB54 00B95021 */  addu       $t2, $a1, $t9
/* DC598 8017BB58 E54A0000 */  swc1       $f10, 0x0($t2)
/* DC59C 8017BB5C 8C620000 */  lw         $v0, 0x0($v1)
/* DC5A0 8017BB60 2404013E */  addiu      $a0, $zero, 0x13E
/* DC5A4 8017BB64 00021080 */  sll        $v0, $v0, 2
/* DC5A8 8017BB68 00A25821 */  addu       $t3, $a1, $v0
/* DC5AC 8017BB6C C5700000 */  lwc1       $f16, 0x0($t3)
/* DC5B0 8017BB70 00220821 */  addu       $at, $at, $v0
/* DC5B4 8017BB74 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* DC5B8 8017BB78 8C6C0000 */  lw         $t4, 0x0($v1)
/* DC5BC 8017BB7C 3C018019 */  lui        $at, %hi(D_801975F8_ovl3)
/* DC5C0 8017BB80 C43275F8 */  lwc1       $f18, %lo(D_801975F8_ovl3)($at)
/* DC5C4 8017BB84 3C01800E */  lui        $at, %hi(D_800E6850)
/* DC5C8 8017BB88 000C6880 */  sll        $t5, $t4, 2
/* DC5CC 8017BB8C 002D0821 */  addu       $at, $at, $t5
/* DC5D0 8017BB90 0C029D9E */  jal        play_sound
/* DC5D4 8017BB94 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
/* DC5D8 8017BB98 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DC5DC 8017BB9C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DC5E0 8017BBA0 8D0E0034 */  lw         $t6, 0x34($t0)
/* DC5E4 8017BBA4 35CF4000 */  ori        $t7, $t6, 0x4000
/* DC5E8 8017BBA8 AD0F0034 */  sw         $t7, 0x34($t0)
.L8017BBAC_ovl3:
/* DC5EC 8017BBAC 8D180030 */  lw         $t8, 0x30($t0)
.L8017BBB0_ovl3:
/* DC5F0 8017BBB0 1300000C */  beqz       $t8, .L8017BBE4_ovl3
/* DC5F4 8017BBB4 00000000 */   nop
/* DC5F8 8017BBB8 0C047717 */  jal        func_8011DC5C
/* DC5FC 8017BBBC 00000000 */   nop
/* DC600 8017BBC0 0C04759F */  jal        func_8011D67C
/* DC604 8017BBC4 00000000 */   nop
/* DC608 8017BBC8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DC60C 8017BBCC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DC610 8017BBD0 8D190034 */  lw         $t9, 0x34($t0)
/* DC614 8017BBD4 2401BFFF */  addiu      $at, $zero, -0x4001
/* DC618 8017BBD8 03215024 */  and        $t2, $t9, $at
/* DC61C 8017BBDC 1000005E */  b          .L8017BD58_ovl3
/* DC620 8017BBE0 AD0A0034 */   sw        $t2, 0x34($t0)
.L8017BBE4_ovl3:
/* DC624 8017BBE4 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* DC628 8017BBE8 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* DC62C 8017BBEC 3C048019 */  lui        $a0, %hi(D_80191224_ovl3)
/* DC630 8017BBF0 24841224 */  addiu      $a0, $a0, %lo(D_80191224_ovl3)
/* DC634 8017BBF4 0C044681 */  jal        func_80111A04
/* DC638 8017BBF8 8D650000 */   lw        $a1, 0x0($t3)
/* DC63C 8017BBFC 0C044713 */  jal        func_80111C4C
/* DC640 8017BC00 00402025 */   or        $a0, $v0, $zero
/* DC644 8017BC04 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* DC648 8017BC08 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* DC64C 8017BC0C 3C0C800F */  lui        $t4, %hi(D_800E8920)
/* DC650 8017BC10 3C088013 */  lui        $t0, %hi(gKirbyState)
/* DC654 8017BC14 8C620000 */  lw         $v0, 0x0($v1)
/* DC658 8017BC18 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* DC65C 8017BC1C 00021080 */  sll        $v0, $v0, 2
/* DC660 8017BC20 01826021 */  addu       $t4, $t4, $v0
/* DC664 8017BC24 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
/* DC668 8017BC28 5580004C */  bnel       $t4, $zero, .L8017BD5C_ovl3
/* DC66C 8017BC2C 8FBF0014 */   lw        $ra, 0x14($sp)
/* DC670 8017BC30 8D0D003C */  lw         $t5, 0x3C($t0)
/* DC674 8017BC34 3C01800E */  lui        $at, %hi(D_800E64D0)
/* DC678 8017BC38 00220821 */  addu       $at, $at, $v0
.L8017BC3C_ovl5:
/* DC67C 8017BC3C 15A00046 */  bnez       $t5, .L8017BD58_ovl3
/* DC680 8017BC40 3C0F800F */   lui       $t7, %hi(D_800E8AE0)
/* DC684 8017BC44 C42464D0 */  lwc1       $f4, %lo(D_800E64D0)($at)
/* DC688 8017BC48 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* DC68C 8017BC4C 44813000 */  mtc1       $at, $f6
/* DC690 8017BC50 44804000 */  mtc1       $zero, $f8
/* DC694 8017BC54 3C19800F */  lui        $t9, %hi(D_800E98E0)
/* DC698 8017BC58 46062002 */  mul.s      $f0, $f4, $f6
/* DC69C 8017BC5C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* DC6A0 8017BC60 01E27821 */  addu       $t7, $t7, $v0
/* DC6A4 8017BC64 0322C821 */  addu       $t9, $t9, $v0
/* DC6A8 8017BC68 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
/* DC6AC 8017BC6C 4608003C */  c.lt.s     $f0, $f8
/* DC6B0 8017BC70 00000000 */  nop
/* DC6B4 8017BC74 45020004 */  bc1fl      .L8017BC88_ovl3
/* DC6B8 8017BC78 46000086 */   mov.s     $f2, $f0
/* DC6BC 8017BC7C 10000002 */  b          .L8017BC88_ovl3
/* DC6C0 8017BC80 46000087 */   neg.s     $f2, $f0
/* DC6C4 8017BC84 46000086 */  mov.s      $f2, $f0
.L8017BC88_ovl3:
/* DC6C8 8017BC88 910E0007 */  lbu        $t6, 0x7($t0)
/* DC6CC 8017BC8C 51C00005 */  beql       $t6, $zero, .L8017BCA4_ovl3
/* DC6D0 8017BC90 44815000 */   mtc1      $at, $f10
.L8017BC94_ovl5:
/* DC6D4 8017BC94 3C018019 */  lui        $at, %hi(D_801975FC_ovl3)
/* DC6D8 8017BC98 10000011 */  b          .L8017BCE0_ovl3
/* DC6DC 8017BC9C C42075FC */   lwc1      $f0, %lo(D_801975FC_ovl3)($at)
/* DC6E0 8017BCA0 44815000 */  mtc1       $at, $f10
.L8017BCA4_ovl3:
/* DC6E4 8017BCA4 3C014040 */  lui        $at, (0x40400000 >> 16)
/* DC6E8 8017BCA8 460A103C */  c.lt.s     $f2, $f10
/* DC6EC 8017BCAC 00000000 */  nop
/* DC6F0 8017BCB0 45020005 */  bc1fl      .L8017BCC8_ovl3
.L8017BCB4_ovl5:
/* DC6F4 8017BCB4 46001306 */   mov.s     $f12, $f2
/* DC6F8 8017BCB8 44816000 */  mtc1       $at, $f12
/* DC6FC 8017BCBC 10000002 */  b          .L8017BCC8_ovl3
/* DC700 8017BCC0 00000000 */   nop
/* DC704 8017BCC4 46001306 */  mov.s      $f12, $f2
.L8017BCC8_ovl3:
/* DC708 8017BCC8 3C018019 */  lui        $at, %hi(D_80197600_ovl3)
/* DC70C 8017BCCC C4307600 */  lwc1       $f16, %lo(D_80197600_ovl3)($at)
/* DC710 8017BCD0 3C014334 */  lui        $at, (0x43340000 >> 16)
/* DC714 8017BCD4 44812000 */  mtc1       $at, $f4
/* DC718 8017BCD8 46106482 */  mul.s      $f18, $f12, $f16
/* DC71C 8017BCDC 46049003 */  div.s      $f0, $f18, $f4
.L8017BCE0_ovl3:
/* DC720 8017BCE0 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* DC724 8017BCE4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* DC728 8017BCE8 31F80006 */  andi       $t8, $t7, 0x6
/* DC72C 8017BCEC 53000015 */  beql       $t8, $zero, .L8017BD44_ovl3
/* DC730 8017BCF0 01A26821 */   addu      $t5, $t5, $v0
/* DC734 8017BCF4 44813000 */  mtc1       $at, $f6
/* DC738 8017BCF8 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
/* DC73C 8017BCFC 3C018019 */  lui        $at, %hi(D_80197604_ovl3)
/* DC740 8017BD00 46060002 */  mul.s      $f0, $f0, $f6
/* DC744 8017BD04 332A0006 */  andi       $t2, $t9, 0x6
/* DC748 8017BD08 5140000E */  beql       $t2, $zero, .L8017BD44_ovl3
/* DC74C 8017BD0C 01A26821 */   addu      $t5, $t5, $v0
.L8017BD10_ovl5:
/* DC750 8017BD10 C4287604 */  lwc1       $f8, %lo(D_80197604_ovl3)($at)
.L8017BD14_ovl5:
/* DC754 8017BD14 3C01800E */  lui        $at, %hi(D_800E6690)
/* DC758 8017BD18 00220821 */  addu       $at, $at, $v0
/* DC75C 8017BD1C E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* DC760 8017BD20 8C6B0000 */  lw         $t3, 0x0($v1)
/* DC764 8017BD24 44805000 */  mtc1       $zero, $f10
/* DC768 8017BD28 3C01800E */  lui        $at, %hi(D_800E6850)
.L8017BD2C_ovl5:
/* DC76C 8017BD2C 000B6080 */  sll        $t4, $t3, 2
/* DC770 8017BD30 002C0821 */  addu       $at, $at, $t4
/* DC774 8017BD34 E42A6850 */  swc1       $f10, %lo(D_800E6850)($at)
.L8017BD38_ovl5:
/* DC778 8017BD38 8C620000 */  lw         $v0, 0x0($v1)
/* DC77C 8017BD3C 00021080 */  sll        $v0, $v0, 2
/* DC780 8017BD40 01A26821 */  addu       $t5, $t5, $v0
.L8017BD44_ovl3:
/* DC784 8017BD44 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
/* DC788 8017BD48 8DA30004 */  lw         $v1, 0x4($t5)
/* DC78C 8017BD4C C4700030 */  lwc1       $f16, 0x30($v1)
/* DC790 8017BD50 46008480 */  add.s      $f18, $f16, $f0
/* DC794 8017BD54 E4720030 */  swc1       $f18, 0x30($v1)
.L8017BD58_ovl3:
/* DC798 8017BD58 8FBF0014 */  lw         $ra, 0x14($sp)
.L8017BD5C_ovl3:
/* DC79C 8017BD5C 27BD0048 */  addiu      $sp, $sp, 0x48
/* DC7A0 8017BD60 03E00008 */  jr         $ra
/* DC7A4 8017BD64 00000000 */   nop
