glabel func_801DE6C8_ovl14 # 43
/* 2012B8 801DE6C8 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 2012BC 801DE6CC AFB00018 */  sw          $s0, 0x18($sp)
/* 2012C0 801DE6D0 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 2012C4 801DE6D4 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 2012C8 801DE6D8 8E060000 */  lw          $a2, 0x0($s0)
/* 2012CC 801DE6DC AFBF001C */  sw          $ra, 0x1C($sp)
/* 2012D0 801DE6E0 3C0E800E */  lui         $t6, %hi(D_800E1B50)
/* 2012D4 801DE6E4 8CC20000 */  lw          $v0, 0x0($a2)
/* 2012D8 801DE6E8 3C03800E */  lui         $v1, %hi(D_800DFBD0)
/* 2012DC 801DE6EC 00021080 */  sll         $v0, $v0, 2
/* 2012E0 801DE6F0 01C27021 */  addu        $t6, $t6, $v0
/* 2012E4 801DE6F4 8DCE1B50 */  lw          $t6, %lo(D_800E1B50)($t6)
/* 2012E8 801DE6F8 00621821 */  addu        $v1, $v1, $v0
/* 2012EC 801DE6FC 8C63FBD0 */  lw          $v1, %lo(D_800DFBD0)($v1)
/* 2012F0 801DE700 AFAE005C */  sw          $t6, 0x5C($sp)
/* 2012F4 801DE704 8FA8005C */  lw          $t0, 0x5C($sp)
/* 2012F8 801DE708 8C6F0028 */  lw          $t7, 0x28($v1)
/* 2012FC 801DE70C AFAF0034 */  sw          $t7, 0x34($sp)
/* 201300 801DE710 8C78001C */  lw          $t8, 0x1C($v1)
/* 201304 801DE714 15C00003 */  bnez        $t6, .L801DE724
/* 201308 801DE718 AFB80030 */   sw         $t8, 0x30($sp)
/* 20130C 801DE71C 10000140 */  b           .L801DEC20
/* 201310 801DE720 00001025 */   move       $v0, $zero
.L801DE724:
/* 201314 801DE724 8D09008C */  lw          $t1, 0x8C($t0)
/* 201318 801DE728 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 20131C 801DE72C 00220821 */  addu        $at, $at, $v0
/* 201320 801DE730 15200003 */  bnez        $t1, .L801DE740
/* 201324 801DE734 00000000 */   nop
/* 201328 801DE738 10000139 */  b           .L801DEC20
/* 20132C 801DE73C 00001025 */   move       $v0, $zero
.L801DE740:
/* 201330 801DE740 AC2083E0 */  sw          $zero, %lo(D_800E83E0)($at)
/* 201334 801DE744 8CC20000 */  lw          $v0, 0x0($a2)
/* 201338 801DE748 3C0A800F */  lui         $t2, %hi(D_800E9AA0)
/* 20133C 801DE74C 3C04800E */  lui         $a0, %hi(D_800DE350)
/* 201340 801DE750 00021080 */  sll         $v0, $v0, 2
/* 201344 801DE754 01425021 */  addu        $t2, $t2, $v0
/* 201348 801DE758 8D4A9AA0 */  lw          $t2, %lo(D_800E9AA0)($t2)
/* 20134C 801DE75C 00822021 */  addu        $a0, $a0, $v0
/* 201350 801DE760 314B0002 */  andi        $t3, $t2, 0x2
/* 201354 801DE764 5160004C */  beql        $t3, $zero, .L801DE898
/* 201358 801DE768 8E0A0000 */   lw         $t2, 0x0($s0)
/* 20135C 801DE76C 0C077B2B */  jal         func_801DECAC_ovl14
/* 201360 801DE770 8C84E350 */   lw         $a0, %lo(D_800DE350)($a0)
/* 201364 801DE774 50400004 */  beql        $v0, $zero, .L801DE788
/* 201368 801DE778 8E0C0000 */   lw         $t4, 0x0($s0)
/* 20136C 801DE77C 10000128 */  b           .L801DEC20
/* 201370 801DE780 24020001 */   addiu      $v0, $zero, 0x1
/* 201374 801DE784 8E0C0000 */  lw          $t4, 0x0($s0)
.L801DE788:
/* 201378 801DE788 0C044554 */  jal         func_80111550
/* 20137C 801DE78C 8D840000 */   lw         $a0, 0x0($t4)
/* 201380 801DE790 8E0D0000 */  lw          $t5, 0x0($s0)
/* 201384 801DE794 3C04800F */  lui         $a0, %hi(D_800EA360)
/* 201388 801DE798 8DA30000 */  lw          $v1, 0x0($t5)
/* 20138C 801DE79C 00037080 */  sll         $t6, $v1, 2
/* 201390 801DE7A0 008E2021 */  addu        $a0, $a0, $t6
/* 201394 801DE7A4 8C84A360 */  lw          $a0, %lo(D_800EA360)($a0)
/* 201398 801DE7A8 0C044722 */  jal         func_80111C88
/* 20139C 801DE7AC 00602825 */   move       $a1, $v1
/* 2013A0 801DE7B0 27A40060 */  addiu       $a0, $sp, 0x60
/* 2013A4 801DE7B4 8FA50034 */  lw          $a1, 0x34($sp)
/* 2013A8 801DE7B8 3406FFFF */  ori         $a2, $zero, 0xFFFF
/* 2013AC 801DE7BC 0C02C8D0 */  jal         func_800B2340
/* 2013B0 801DE7C0 AFA20054 */   sw         $v0, 0x54($sp)
/* 2013B4 801DE7C4 8E0F0000 */  lw          $t7, 0x0($s0)
/* 2013B8 801DE7C8 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 2013BC 801DE7CC 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 2013C0 801DE7D0 8DF80000 */  lw          $t8, 0x0($t7)
/* 2013C4 801DE7D4 3C013F00 */  lui         $at, (0x3F000000 >> 16)
/* 2013C8 801DE7D8 44810000 */  mtc1        $at, $f0
/* 2013CC 801DE7DC 0018C880 */  sll         $t9, $t8, 2
/* 2013D0 801DE7E0 00594021 */  addu        $t0, $v0, $t9
/* 2013D4 801DE7E4 C5060000 */  lwc1        $f6, 0x0($t0)
/* 2013D8 801DE7E8 C7A40064 */  lwc1        $f4, 0x64($sp)
/* 2013DC 801DE7EC 3C014120 */  lui         $at, (0x41200000 >> 16)
/* 2013E0 801DE7F0 44811000 */  mtc1        $at, $f2
/* 2013E4 801DE7F4 46062201 */  sub.s       $f8, $f4, $f6
/* 2013E8 801DE7F8 3C014270 */  lui         $at, (0x42700000 >> 16)
/* 2013EC 801DE7FC 44815000 */  mtc1        $at, $f10
/* 2013F0 801DE800 8FA40054 */  lw          $a0, 0x54($sp)
/* 2013F4 801DE804 460A4401 */  sub.s       $f16, $f8, $f10
/* 2013F8 801DE808 8C890024 */  lw          $t1, 0x24($a0)
/* 2013FC 801DE80C E5300010 */  swc1        $f16, 0x10($t1)
/* 201400 801DE810 8E0A0000 */  lw          $t2, 0x0($s0)
/* 201404 801DE814 C7B20064 */  lwc1        $f18, 0x64($sp)
/* 201408 801DE818 8C8E0024 */  lw          $t6, 0x24($a0)
/* 20140C 801DE81C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 201410 801DE820 000B6080 */  sll         $t4, $t3, 2
/* 201414 801DE824 004C6821 */  addu        $t5, $v0, $t4
/* 201418 801DE828 C5A40000 */  lwc1        $f4, 0x0($t5)
/* 20141C 801DE82C 46049181 */  sub.s       $f6, $f18, $f4
/* 201420 801DE830 46003202 */  mul.s       $f8, $f6, $f0
/* 201424 801DE834 46024280 */  add.s       $f10, $f8, $f2
/* 201428 801DE838 E5CA0038 */  swc1        $f10, 0x38($t6)
/* 20142C 801DE83C 8E0F0000 */  lw          $t7, 0x0($s0)
/* 201430 801DE840 C7B00064 */  lwc1        $f16, 0x64($sp)
/* 201434 801DE844 8C890024 */  lw          $t1, 0x24($a0)
/* 201438 801DE848 8DF80000 */  lw          $t8, 0x0($t7)
/* 20143C 801DE84C 0018C880 */  sll         $t9, $t8, 2
/* 201440 801DE850 00594021 */  addu        $t0, $v0, $t9
/* 201444 801DE854 C5120000 */  lwc1        $f18, 0x0($t0)
/* 201448 801DE858 46128101 */  sub.s       $f4, $f16, $f18
/* 20144C 801DE85C 46002182 */  mul.s       $f6, $f4, $f0
/* 201450 801DE860 46023200 */  add.s       $f8, $f6, $f2
/* 201454 801DE864 0C0447B3 */  jal         func_80111ECC
/* 201458 801DE868 E5280060 */   swc1       $f8, 0x60($t1)
/* 20145C 801DE86C 0C0442C0 */  jal         func_80110B00
/* 201460 801DE870 27A40038 */   addiu      $a0, $sp, 0x38
/* 201464 801DE874 54400008 */  bnel        $v0, $zero, .L801DE898
/* 201468 801DE878 8E0A0000 */   lw         $t2, 0x0($s0)
/* 20146C 801DE87C 0C0443F5 */  jal         func_80110FD4
/* 201470 801DE880 27A40038 */   addiu      $a0, $sp, 0x38
/* 201474 801DE884 54400004 */  bnel        $v0, $zero, .L801DE898
/* 201478 801DE888 8E0A0000 */   lw         $t2, 0x0($s0)
/* 20147C 801DE88C 0C044054 */  jal         func_80110150
/* 201480 801DE890 27A40038 */   addiu      $a0, $sp, 0x38
/* 201484 801DE894 8E0A0000 */  lw          $t2, 0x0($s0)
.L801DE898:
/* 201488 801DE898 3C04800F */  lui         $a0, %hi(D_800E9AA0)
/* 20148C 801DE89C 8D430000 */  lw          $v1, 0x0($t2)
/* 201490 801DE8A0 00031080 */  sll         $v0, $v1, 2
/* 201494 801DE8A4 00822021 */  addu        $a0, $a0, $v0
/* 201498 801DE8A8 8C849AA0 */  lw          $a0, %lo(D_800E9AA0)($a0)
/* 20149C 801DE8AC 308B0004 */  andi        $t3, $a0, 0x4
/* 2014A0 801DE8B0 51600018 */  beql        $t3, $zero, .L801DE914
/* 2014A4 801DE8B4 30980008 */   andi       $t8, $a0, 0x8
/* 2014A8 801DE8B8 3C04800E */  lui         $a0, %hi(D_800DE350)
/* 2014AC 801DE8BC 00822021 */  addu        $a0, $a0, $v0
/* 2014B0 801DE8C0 0C077B0D */  jal         func_801DEC34_ovl14
/* 2014B4 801DE8C4 8C84E350 */   lw         $a0, %lo(D_800DE350)($a0)
/* 2014B8 801DE8C8 8E0C0000 */  lw          $t4, 0x0($s0)
/* 2014BC 801DE8CC 0C044554 */  jal         func_80111550
/* 2014C0 801DE8D0 8D840000 */   lw         $a0, 0x0($t4)
/* 2014C4 801DE8D4 8E0D0000 */  lw          $t5, 0x0($s0)
/* 2014C8 801DE8D8 3C04801E */  lui         $a0, %hi(D_801D9E58)
/* 2014CC 801DE8DC 24849E58 */  addiu       $a0, $a0, %lo(D_801D9E58)
/* 2014D0 801DE8E0 0C044722 */  jal         func_80111C88
/* 2014D4 801DE8E4 8DA50000 */   lw         $a1, 0x0($t5)
/* 2014D8 801DE8E8 0C0447B3 */  jal         func_80111ECC
/* 2014DC 801DE8EC 00402025 */   move       $a0, $v0
/* 2014E0 801DE8F0 0C0442C0 */  jal         func_80110B00
/* 2014E4 801DE8F4 27A40038 */   addiu      $a0, $sp, 0x38
/* 2014E8 801DE8F8 8E0E0000 */  lw          $t6, 0x0($s0)
/* 2014EC 801DE8FC 3C04800F */  lui         $a0, %hi(D_800E9AA0)
/* 2014F0 801DE900 8DC30000 */  lw          $v1, 0x0($t6)
/* 2014F4 801DE904 00037880 */  sll         $t7, $v1, 2
/* 2014F8 801DE908 008F2021 */  addu        $a0, $a0, $t7
/* 2014FC 801DE90C 8C849AA0 */  lw          $a0, %lo(D_800E9AA0)($a0)
/* 201500 801DE910 30980008 */  andi        $t8, $a0, 0x8
.L801DE914:
/* 201504 801DE914 5300001E */  beql        $t8, $zero, .L801DE990
/* 201508 801DE918 8E0C0000 */   lw         $t4, 0x0($s0)
/* 20150C 801DE91C 0C044554 */  jal         func_80111550
/* 201510 801DE920 00602025 */   move       $a0, $v1
/* 201514 801DE924 8E190000 */  lw          $t9, 0x0($s0)
/* 201518 801DE928 3C04801E */  lui         $a0, %hi(D_801D9F0C)
/* 20151C 801DE92C 24849F0C */  addiu       $a0, $a0, %lo(D_801D9F0C)
/* 201520 801DE930 0C044722 */  jal         func_80111C88
/* 201524 801DE934 8F250000 */   lw         $a1, 0x0($t9)
/* 201528 801DE938 8FA30030 */  lw          $v1, 0x30($sp)
/* 20152C 801DE93C 8C480024 */  lw          $t0, 0x24($v0)
/* 201530 801DE940 00402025 */  move        $a0, $v0
/* 201534 801DE944 AD030008 */  sw          $v1, 0x8($t0)
/* 201538 801DE948 8C490024 */  lw          $t1, 0x24($v0)
/* 20153C 801DE94C AD230030 */  sw          $v1, 0x30($t1)
/* 201540 801DE950 8C4A0024 */  lw          $t2, 0x24($v0)
/* 201544 801DE954 AD430058 */  sw          $v1, 0x58($t2)
/* 201548 801DE958 8C4B0024 */  lw          $t3, 0x24($v0)
/* 20154C 801DE95C 0C0447B3 */  jal         func_80111ECC
/* 201550 801DE960 AD630080 */   sw         $v1, 0x80($t3)
/* 201554 801DE964 0C0442C0 */  jal         func_80110B00
/* 201558 801DE968 27A40038 */   addiu      $a0, $sp, 0x38
/* 20155C 801DE96C 54400008 */  bnel        $v0, $zero, .L801DE990
/* 201560 801DE970 8E0C0000 */   lw         $t4, 0x0($s0)
/* 201564 801DE974 0C0443F5 */  jal         func_80110FD4
/* 201568 801DE978 27A40038 */   addiu      $a0, $sp, 0x38
/* 20156C 801DE97C 54400004 */  bnel        $v0, $zero, .L801DE990
/* 201570 801DE980 8E0C0000 */   lw         $t4, 0x0($s0)
/* 201574 801DE984 0C044054 */  jal         func_80110150
/* 201578 801DE988 27A40038 */   addiu      $a0, $sp, 0x38
/* 20157C 801DE98C 8E0C0000 */  lw          $t4, 0x0($s0)
.L801DE990:
/* 201580 801DE990 3C04800F */  lui         $a0, %hi(D_800E9AA0)
/* 201584 801DE994 8D830000 */  lw          $v1, 0x0($t4)
/* 201588 801DE998 00036880 */  sll         $t5, $v1, 2
/* 20158C 801DE99C 008D2021 */  addu        $a0, $a0, $t5
/* 201590 801DE9A0 8C849AA0 */  lw          $a0, %lo(D_800E9AA0)($a0)
/* 201594 801DE9A4 308E0001 */  andi        $t6, $a0, 0x1
/* 201598 801DE9A8 51C00083 */  beql        $t6, $zero, .L801DEBB8
/* 20159C 801DE9AC 30990010 */   andi       $t9, $a0, 0x10
/* 2015A0 801DE9B0 0C044554 */  jal         func_80111550
/* 2015A4 801DE9B4 00602025 */   move       $a0, $v1
/* 2015A8 801DE9B8 8FAF005C */  lw          $t7, 0x5C($sp)
/* 2015AC 801DE9BC 8E180000 */  lw          $t8, 0x0($s0)
/* 2015B0 801DE9C0 8DE4008C */  lw          $a0, 0x8C($t7)
/* 2015B4 801DE9C4 0C044722 */  jal         func_80111C88
/* 2015B8 801DE9C8 8F050000 */   lw         $a1, 0x0($t8)
/* 2015BC 801DE9CC 27A40060 */  addiu       $a0, $sp, 0x60
/* 2015C0 801DE9D0 8FA50030 */  lw          $a1, 0x30($sp)
/* 2015C4 801DE9D4 3406FFFF */  ori         $a2, $zero, 0xFFFF
/* 2015C8 801DE9D8 0C02C8D0 */  jal         func_800B2340
/* 2015CC 801DE9DC AFA20054 */   sw         $v0, 0x54($sp)
/* 2015D0 801DE9E0 8E190000 */  lw          $t9, 0x0($s0)
/* 2015D4 801DE9E4 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 2015D8 801DE9E8 C7AA0064 */  lwc1        $f10, 0x64($sp)
/* 2015DC 801DE9EC 8F280000 */  lw          $t0, 0x0($t9)
/* 2015E0 801DE9F0 8FA40054 */  lw          $a0, 0x54($sp)
/* 2015E4 801DE9F4 00084880 */  sll         $t1, $t0, 2
/* 2015E8 801DE9F8 00290821 */  addu        $at, $at, $t1
/* 2015EC 801DE9FC C4302790 */  lwc1        $f16, %lo(gEntitiesNextPosYArray)($at)
/* 2015F0 801DEA00 3C0141A0 */  lui         $at, (0x41A00000 >> 16)
/* 2015F4 801DEA04 44812000 */  mtc1        $at, $f4
/* 2015F8 801DEA08 46105481 */  sub.s       $f18, $f10, $f16
/* 2015FC 801DEA0C 8C8A0024 */  lw          $t2, 0x24($a0)
/* 201600 801DEA10 46049180 */  add.s       $f6, $f18, $f4
/* 201604 801DEA14 0C0447B3 */  jal         func_80111ECC
/* 201608 801DEA18 E5460010 */   swc1       $f6, 0x10($t2)
/* 20160C 801DEA1C 0C0442C0 */  jal         func_80110B00
/* 201610 801DEA20 27A40038 */   addiu      $a0, $sp, 0x38
/* 201614 801DEA24 1040000C */  beqz        $v0, .L801DEA58
/* 201618 801DEA28 00000000 */   nop
/* 20161C 801DEA2C 8E0C0000 */  lw          $t4, 0x0($s0)
/* 201620 801DEA30 93AB003A */  lbu         $t3, 0x3A($sp)
/* 201624 801DEA34 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 201628 801DEA38 8D8D0000 */  lw          $t5, 0x0($t4)
/* 20162C 801DEA3C 93AF003B */  lbu         $t7, 0x3B($sp)
/* 201630 801DEA40 8FB8005C */  lw          $t8, 0x5C($sp)
/* 201634 801DEA44 000D7080 */  sll         $t6, $t5, 2
/* 201638 801DEA48 002E0821 */  addu        $at, $at, $t6
/* 20163C 801DEA4C AC2B83E0 */  sw          $t3, %lo(D_800E83E0)($at)
/* 201640 801DEA50 10000027 */  b           .L801DEAF0
/* 201644 801DEA54 A30F0043 */   sb         $t7, 0x43($t8)
.L801DEA58:
/* 201648 801DEA58 0C0443F5 */  jal         func_80110FD4
/* 20164C 801DEA5C 27A40038 */   addiu      $a0, $sp, 0x38
/* 201650 801DEA60 1040000C */  beqz        $v0, .L801DEA94
/* 201654 801DEA64 00000000 */   nop
/* 201658 801DEA68 8E080000 */  lw          $t0, 0x0($s0)
/* 20165C 801DEA6C 93B9003A */  lbu         $t9, 0x3A($sp)
/* 201660 801DEA70 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 201664 801DEA74 8D090000 */  lw          $t1, 0x0($t0)
/* 201668 801DEA78 93AC003B */  lbu         $t4, 0x3B($sp)
/* 20166C 801DEA7C 8FAD005C */  lw          $t5, 0x5C($sp)
/* 201670 801DEA80 00095080 */  sll         $t2, $t1, 2
/* 201674 801DEA84 002A0821 */  addu        $at, $at, $t2
/* 201678 801DEA88 AC3983E0 */  sw          $t9, %lo(D_800E83E0)($at)
/* 20167C 801DEA8C 10000018 */  b           .L801DEAF0
/* 201680 801DEA90 A1AC0043 */   sb         $t4, 0x43($t5)
.L801DEA94:
/* 201684 801DEA94 0C044054 */  jal         func_80110150
/* 201688 801DEA98 27A40038 */   addiu      $a0, $sp, 0x38
/* 20168C 801DEA9C 5040000D */  beql        $v0, $zero, .L801DEAD4
/* 201690 801DEAA0 8E190000 */   lw         $t9, 0x0($s0)
/* 201694 801DEAA4 8E0E0000 */  lw          $t6, 0x0($s0)
/* 201698 801DEAA8 93AB003A */  lbu         $t3, 0x3A($sp)
/* 20169C 801DEAAC 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 2016A0 801DEAB0 8DCF0000 */  lw          $t7, 0x0($t6)
/* 2016A4 801DEAB4 93A8003B */  lbu         $t0, 0x3B($sp)
/* 2016A8 801DEAB8 8FA9005C */  lw          $t1, 0x5C($sp)
/* 2016AC 801DEABC 000FC080 */  sll         $t8, $t7, 2
/* 2016B0 801DEAC0 00380821 */  addu        $at, $at, $t8
/* 2016B4 801DEAC4 AC2B83E0 */  sw          $t3, %lo(D_800E83E0)($at)
/* 2016B8 801DEAC8 10000009 */  b           .L801DEAF0
/* 2016BC 801DEACC A1280043 */   sb         $t0, 0x43($t1)
/* 2016C0 801DEAD0 8E190000 */  lw          $t9, 0x0($s0)
.L801DEAD4:
/* 2016C4 801DEAD4 8FAD005C */  lw          $t5, 0x5C($sp)
/* 2016C8 801DEAD8 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 2016CC 801DEADC 8F2A0000 */  lw          $t2, 0x0($t9)
/* 2016D0 801DEAE0 000A6080 */  sll         $t4, $t2, 2
/* 2016D4 801DEAE4 002C0821 */  addu        $at, $at, $t4
/* 2016D8 801DEAE8 AC2083E0 */  sw          $zero, %lo(D_800E83E0)($at)
/* 2016DC 801DEAEC A1A00043 */  sb          $zero, 0x43($t5)
.L801DEAF0:
/* 2016E0 801DEAF0 3C01800D */  lui         $at, %hi(D_800D6E5C)
/* 2016E4 801DEAF4 C42A6E5C */  lwc1        $f10, %lo(D_800D6E5C)($at)
/* 2016E8 801DEAF8 44804000 */  mtc1        $zero, $f8
/* 2016EC 801DEAFC 00000000 */  nop
/* 2016F0 801DEB00 460A4032 */  c.eq.s      $f8, $f10
/* 2016F4 801DEB04 00000000 */  nop
/* 2016F8 801DEB08 45030009 */  bc1tl       .L801DEB30
/* 2016FC 801DEB0C 8E060000 */   lw         $a2, 0x0($s0)
/* 201700 801DEB10 8E0E0000 */  lw          $t6, 0x0($s0)
/* 201704 801DEB14 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 201708 801DEB18 8DCF0000 */  lw          $t7, 0x0($t6)
/* 20170C 801DEB1C 000F5880 */  sll         $t3, $t7, 2
/* 201710 801DEB20 002B0821 */  addu        $at, $at, $t3
/* 201714 801DEB24 0C02F047 */  jal         func_800BC11C
/* 201718 801DEB28 C42C7B20 */   lwc1       $f12, %lo(D_800E7B20)($at)
/* 20171C 801DEB2C 8E060000 */  lw          $a2, 0x0($s0)
.L801DEB30:
/* 201720 801DEB30 3C04800F */  lui         $a0, %hi(D_800E83E0)
/* 201724 801DEB34 24010001 */  addiu       $at, $zero, 0x1
/* 201728 801DEB38 8CC30000 */  lw          $v1, 0x0($a2)
/* 20172C 801DEB3C 00031080 */  sll         $v0, $v1, 2
/* 201730 801DEB40 00822021 */  addu        $a0, $a0, $v0
/* 201734 801DEB44 8C8483E0 */  lw          $a0, %lo(D_800E83E0)($a0)
/* 201738 801DEB48 10810005 */  beq         $a0, $at, .L801DEB60
/* 20173C 801DEB4C 24010002 */   addiu      $at, $zero, 0x2
/* 201740 801DEB50 10810011 */  beq         $a0, $at, .L801DEB98
/* 201744 801DEB54 00000000 */   nop
/* 201748 801DEB58 10000013 */  b           .L801DEBA8
/* 20174C 801DEB5C 3C04800F */   lui        $a0, %hi(D_800E9AA0)
.L801DEB60:
/* 201750 801DEB60 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 201754 801DEB64 00220821 */  addu        $at, $at, $v0
/* 201758 801DEB68 24180005 */  addiu       $t8, $zero, 0x5
/* 20175C 801DEB6C AC38DC50 */  sw          $t8, %lo(gEntityVtableIndexArray)($at)
/* 201760 801DEB70 8CC80000 */  lw          $t0, 0x0($a2)
/* 201764 801DEB74 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 201768 801DEB78 3C05801E */  lui         $a1, %hi(func_801DCE1C_ovl14)
/* 20176C 801DEB7C 00084880 */  sll         $t1, $t0, 2
/* 201770 801DEB80 00892021 */  addu        $a0, $a0, $t1
/* 201774 801DEB84 8C84E510 */  lw          $a0, %lo(gEntityGObjProcessArray)($a0)
/* 201778 801DEB88 0C02C7B2 */  jal         assign_new_process_entry
/* 20177C 801DEB8C 24A5CE1C */   addiu      $a1, $a1, %lo(func_801DCE1C_ovl14)
/* 201780 801DEB90 10000023 */  b           .L801DEC20
/* 201784 801DEB94 24020001 */   addiu      $v0, $zero, 0x1
.L801DEB98:
/* 201788 801DEB98 0C029D9E */  jal         play_sound
/* 20178C 801DEB9C 24040189 */   addiu      $a0, $zero, 0x189
/* 201790 801DEBA0 1000001F */  b           .L801DEC20
/* 201794 801DEBA4 24020001 */   addiu      $v0, $zero, 0x1
.L801DEBA8:
/* 201798 801DEBA8 00822021 */  addu        $a0, $a0, $v0
/* 20179C 801DEBAC 8C849AA0 */  lw          $a0, %lo(D_800E9AA0)($a0)
/* 2017A0 801DEBB0 AFA0006C */  sw          $zero, 0x6C($sp)
/* 2017A4 801DEBB4 30990010 */  andi        $t9, $a0, 0x10
.L801DEBB8:
/* 2017A8 801DEBB8 13200018 */  beqz        $t9, .L801DEC1C
/* 2017AC 801DEBBC 3C04801E */   lui        $a0, %hi(D_801D9FC0)
/* 2017B0 801DEBC0 24849FC0 */  addiu       $a0, $a0, %lo(D_801D9FC0)
/* 2017B4 801DEBC4 0C0445EF */  jal         func_801117BC
/* 2017B8 801DEBC8 00602825 */   move       $a1, $v1
/* 2017BC 801DEBCC 27A40060 */  addiu       $a0, $sp, 0x60
/* 2017C0 801DEBD0 8FA50034 */  lw          $a1, 0x34($sp)
/* 2017C4 801DEBD4 3406FFFF */  ori         $a2, $zero, 0xFFFF
/* 2017C8 801DEBD8 0C02C8D0 */  jal         func_800B2340
/* 2017CC 801DEBDC AFA20058 */   sw         $v0, 0x58($sp)
/* 2017D0 801DEBE0 8E0A0000 */  lw          $t2, 0x0($s0)
/* 2017D4 801DEBE4 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 2017D8 801DEBE8 C7B00064 */  lwc1        $f16, 0x64($sp)
/* 2017DC 801DEBEC 8D4C0000 */  lw          $t4, 0x0($t2)
/* 2017E0 801DEBF0 8FA40058 */  lw          $a0, 0x58($sp)
/* 2017E4 801DEBF4 000C6880 */  sll         $t5, $t4, 2
/* 2017E8 801DEBF8 002D0821 */  addu        $at, $at, $t5
/* 2017EC 801DEBFC C4322790 */  lwc1        $f18, %lo(gEntitiesNextPosYArray)($at)
/* 2017F0 801DEC00 3C014270 */  lui         $at, (0x42700000 >> 16)
/* 2017F4 801DEC04 44813000 */  mtc1        $at, $f6
/* 2017F8 801DEC08 46128101 */  sub.s       $f4, $f16, $f18
/* 2017FC 801DEC0C 8C8E0020 */  lw          $t6, 0x20($a0)
/* 201800 801DEC10 46062201 */  sub.s       $f8, $f4, $f6
/* 201804 801DEC14 0C044713 */  jal         func_80111C4C
/* 201808 801DEC18 E5C80010 */   swc1       $f8, 0x10($t6)
.L801DEC1C:
/* 20180C 801DEC1C 8FA2006C */  lw          $v0, 0x6C($sp)
.L801DEC20:
/* 201810 801DEC20 8FBF001C */  lw          $ra, 0x1C($sp)
/* 201814 801DEC24 8FB00018 */  lw          $s0, 0x18($sp)
/* 201818 801DEC28 27BD0070 */  addiu       $sp, $sp, 0x70
/* 20181C 801DEC2C 03E00008 */  jr          $ra
/* 201820 801DEC30 00000000 */   nop
.type func_801DE6C8_ovl14, @function
.size func_801DE6C8_ovl14, . - func_801DE6C8_ovl14
