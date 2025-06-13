.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801DB1E0_ovl17
# nop
/* 2263D0 801DB1E0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 2263D4 801DB1E4 AFB10024 */  sw    $s1, 0x24($sp)
/* 2263D8 801DB1E8 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 2263DC 801DB1EC 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 2263E0 801DB1F0 8E270000 */  lw    $a3, ($s1)
/* 2263E4 801DB1F4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 2263E8 801DB1F8 AFB60038 */  sw    $s6, 0x38($sp)
/* 2263EC 801DB1FC AFB50034 */  sw    $s5, 0x34($sp)
/* 2263F0 801DB200 AFB40030 */  sw    $s4, 0x30($sp)
/* 2263F4 801DB204 AFB3002C */  sw    $s3, 0x2c($sp)
/* 2263F8 801DB208 AFB20028 */  sw    $s2, 0x28($sp)
/* 2263FC 801DB20C AFB00020 */  sw    $s0, 0x20($sp)
/* 226400 801DB210 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 226404 801DB214 8CEF0000 */  lw    $t7, ($a3)
/* 226408 801DB218 3C0E801E */  lui   $t6, %hi(D_801DC91C) # $t6, 0x801e
/* 22640C 801DB21C 3C01800E */ lui $at, %hi(D_800DEDD0)
/* 226410 801DB220 000FC080 */  sll   $t8, $t7, 2
/* 226414 801DB224 00380821 */  addu  $at, $at, $t8
/* 226418 801DB228 25CEC91C */  addiu $t6, %lo(D_801DC91C) # addiu $t6, $t6, -0x36e4
/* 22641C 801DB22C 0080A025 */  move  $s4, $a0
/* 226420 801DB230 AC2EEDD0 */ sw $t6, %lo(D_800DEDD0)($at)
/* 226424 801DB234 0C04454D */  jal   func_80111534
/* 226428 801DB238 8CE40000 */   lw    $a0, ($a3)
/* 22642C 801DB23C 3C014496 */  li    $at, 0x44960000 # 1200.000000
/* 226430 801DB240 4481A000 */  mtc1  $at, $f20
/* 226434 801DB244 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 226438 801DB248 44812000 */  mtc1  $at, $f4
/* 22643C 801DB24C 3C01800D */  lui   $at, %hi(D_800D7158) # $at, 0x800d
/* 226440 801DB250 3C16800D */  lui   $s6, %hi(D_800D716C) # $s6, 0x800d
/* 226444 801DB254 E4247158 */  swc1  $f4, %lo(D_800D7158)($at)
/* 226448 801DB258 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 22644C 801DB25C 44813000 */  mtc1  $at, $f6
/* 226450 801DB260 3C01800D */  lui   $at, %hi(D_800D715C) # $at, 0x800d
/* 226454 801DB264 26D6716C */  addiu $s6, %lo(D_800D716C) # addiu $s6, $s6, 0x716c
/* 226458 801DB268 E426715C */  swc1  $f6, %lo(D_800D715C)($at)
/* 22645C 801DB26C 3C014648 */  li    $at, 0x46480000 # 12800.000000
/* 226460 801DB270 44814000 */  mtc1  $at, $f8
/* 226464 801DB274 3C01800D */  lui   $at, %hi(D_800D7160) # $at, 0x800d
/* 226468 801DB278 44800000 */  mtc1  $zero, $f0
/* 22646C 801DB27C E4287160 */  swc1  $f8, %lo(D_800D7160)($at)
/* 226470 801DB280 3C0142B4 */  li    $at, 0x42B40000 # 90.000000
/* 226474 801DB284 44815000 */  mtc1  $at, $f10
/* 226478 801DB288 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 22647C 801DB28C 3C02800E */  lui   $v0, %hi(gEntitiesNextPosYArray) # $v0, 0x800e
/* 226480 801DB290 E42A7164 */  swc1  $f10, %lo(D_800D7164)($at)
/* 226484 801DB294 3C01800D */  lui   $at, %hi(D_800D7168) # $at, 0x800d
/* 226488 801DB298 E4347168 */  swc1  $f20, %lo(D_800D7168)($at)
/* 22648C 801DB29C 3C014448 */  li    $at, 0x44480000 # 800.000000
/* 226490 801DB2A0 44812000 */  mtc1  $at, $f4
/* 226494 801DB2A4 3C01801E */  lui   $at, %hi(D_801E5520) # $at, 0x801e
/* 226498 801DB2A8 24422790 */  addiu $v0, %lo(gEntitiesNextPosYArray) # addiu $v0, $v0, 0x2790
/* 22649C 801DB2AC E6C40000 */  swc1  $f4, ($s6)
/* 2264A0 801DB2B0 C4265520 */  lwc1  $f6, %lo(D_801E5520)($at)
/* 2264A4 801DB2B4 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 2264A8 801DB2B8 E4267170 */  swc1  $f6, %lo(D_800D7170)($at)
/* 2264AC 801DB2BC E4400000 */  swc1  $f0, ($v0)
/* 2264B0 801DB2C0 C4480000 */  lwc1  $f8, ($v0)
/* 2264B4 801DB2C4 3C01800E */  lui   $at, %hi(gEntitiesNextPosXArray) # $at, 0x800e
/* 2264B8 801DB2C8 E42825D0 */  swc1  $f8, %lo(gEntitiesNextPosXArray)($at)
/* 2264BC 801DB2CC C6CA0000 */  lwc1  $f10, ($s6)
/* 2264C0 801DB2D0 3C01800E */  lui   $at, %hi(gEntitiesNextPosZArray) # $at, 0x800e
/* 2264C4 801DB2D4 0C07829D */  jal   func_801E0A74_ovl17
/* 2264C8 801DB2D8 E42A2950 */   swc1  $f10, %lo(gEntitiesNextPosZArray)($at)
/* 2264CC 801DB2DC 3C19800D */  lui   $t9, %hi(D_800D6E48) # $t9, 0x800d
/* 2264D0 801DB2E0 8F396E48 */  lw    $t9, %lo(D_800D6E48)($t9)
/* 2264D4 801DB2E4 240F0002 */  li    $t7, 2
/* 2264D8 801DB2E8 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 2264DC 801DB2EC 17200035 */  bnez  $t9, .L801DB3C4_ovl17
/* 2264E0 801DB2F0 00000000 */   nop   
/* 2264E4 801DB2F4 AC2F7098 */  sw    $t7, %lo(D_800D7098)($at)
/* 2264E8 801DB2F8 8E250000 */  lw    $a1, ($s1)
/* 2264EC 801DB2FC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 2264F0 801DB300 00002025 */  move  $a0, $zero
/* 2264F4 801DB304 8CAE0000 */  lw    $t6, ($a1)
/* 2264F8 801DB308 000EC080 */  sll   $t8, $t6, 2
/* 2264FC 801DB30C 00380821 */  addu  $at, $at, $t8
/* 226500 801DB310 0C02BEED */  jal   func_800AFBB4
/* 226504 801DB314 AC20EF90 */ sw $zero, %lo(D_800DEF90)($at)
/* 226508 801DB318 8E390000 */  lw    $t9, ($s1)
/* 22650C 801DB31C 3C13800D */  lui   $s3, %hi(D_800D7B20) # $s3, 0x800d
/* 226510 801DB320 3C01800E */ lui $at, %hi(D_800DF150)
/* 226514 801DB324 8F2F0000 */  lw    $t7, ($t9)
/* 226518 801DB328 44800000 */  mtc1  $zero, $f0
/* 22651C 801DB32C 26737B20 */  addiu $s3, %lo(D_800D7B20) # addiu $s3, $s3, 0x7b20
/* 226520 801DB330 000F7080 */  sll   $t6, $t7, 2
/* 226524 801DB334 002E0821 */  addu  $at, $at, $t6
/* 226528 801DB338 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 22652C 801DB33C E6600000 */  swc1  $f0, ($s3)
/* 226530 801DB340 8E6F0000 */  lw    $t7, ($s3)
/* 226534 801DB344 3C18800D */  lui   $t8, %hi(D_800D7B38) # $t8, 0x800d
/* 226538 801DB348 E6740010 */  swc1  $f20, 0x10($s3)
/* 22653C 801DB34C 27187B38 */  addiu $t8, %lo(D_800D7B38) # addiu $t8, $t8, 0x7b38
/* 226540 801DB350 E660000C */  swc1  $f0, 0xc($s3)
/* 226544 801DB354 E6600014 */  swc1  $f0, 0x14($s3)
/* 226548 801DB358 E6600004 */  swc1  $f0, 4($s3)
/* 22654C 801DB35C E6600008 */  swc1  $f0, 8($s3)
/* 226550 801DB360 AF0F0000 */  sw    $t7, ($t8)
/* 226554 801DB364 8E790004 */  lw    $t9, 4($s3)
/* 226558 801DB368 3C050001 */  lui   $a1, (0x00010691 >> 16) # lui $a1, 1
/* 22655C 801DB36C 44060000 */  mfc1  $a2, $f0
/* 226560 801DB370 AF190004 */  sw    $t9, 4($t8)
/* 226564 801DB374 8E6F0008 */  lw    $t7, 8($s3)
/* 226568 801DB378 34A50691 */  ori   $a1, (0x00010691 & 0xFFFF) # ori $a1, $a1, 0x691
/* 22656C 801DB37C 24040010 */  li    $a0, 16
/* 226570 801DB380 AF0F0008 */  sw    $t7, 8($t8)
/* 226574 801DB384 8E79000C */  lw    $t9, 0xc($s3)
/* 226578 801DB388 AF19000C */  sw    $t9, 0xc($t8)
/* 22657C 801DB38C 8E6F0010 */  lw    $t7, 0x10($s3)
/* 226580 801DB390 AF0F0010 */  sw    $t7, 0x10($t8)
/* 226584 801DB394 8E790014 */  lw    $t9, 0x14($s3)
/* 226588 801DB398 0C02ABCD */  jal   func_800AAF34
/* 22658C 801DB39C AF190014 */   sw    $t9, 0x14($t8)
/* 226590 801DB3A0 24040010 */  li    $a0, 16
/* 226594 801DB3A4 0C02CC1C */  jal   func_800B3070
/* 226598 801DB3A8 3C054000 */   lui   $a1, 0x4000
/* 22659C 801DB3AC 0C06B9F8 */  jal   func_801AE7E0_ovl17
/* 2265A0 801DB3B0 24040013 */   li    $a0, 19
/* 2265A4 801DB3B4 0C002DAF */  jal   finish_current_thread
/* 2265A8 801DB3B8 240400D1 */   li    $a0, 209
/* 2265AC 801DB3BC 10000005 */  b     .L801DB3D4_ovl17
/* 2265B0 801DB3C0 00000000 */   nop   
.L801DB3C4_ovl17:
/* 2265B4 801DB3C4 0C02F03C */  jal   func_800BC0F0
/* 2265B8 801DB3C8 24040002 */   li    $a0, 2
/* 2265BC 801DB3CC 3C13800D */  lui   $s3, %hi(D_800D7B20) # $s3, 0x800d
/* 2265C0 801DB3D0 26737B20 */  addiu $s3, %lo(D_800D7B20) # addiu $s3, $s3, 0x7b20
.L801DB3D4_ovl17:
/* 2265C4 801DB3D4 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 2265C8 801DB3D8 AC207098 */  sw    $zero, %lo(D_800D7098)($at)
/* 2265CC 801DB3DC 8E250000 */  lw    $a1, ($s1)
/* 2265D0 801DB3E0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 2265D4 801DB3E4 3C0E800B */  lui   $t6, %hi(D_800B4924) # $t6, 0x800b
/* 2265D8 801DB3E8 8CB80000 */  lw    $t8, ($a1)
/* 2265DC 801DB3EC 25CE4924 */  addiu $t6, %lo(D_800B4924) # addiu $t6, $t6, 0x4924
/* 2265E0 801DB3F0 3C0F801E */  lui   $t7, %hi(D_801DBA8C) # $t7, 0x801e
/* 2265E4 801DB3F4 0018C880 */  sll   $t9, $t8, 2
/* 2265E8 801DB3F8 00390821 */  addu  $at, $at, $t9
/* 2265EC 801DB3FC AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 2265F0 801DB400 8CB80000 */  lw    $t8, ($a1)
/* 2265F4 801DB404 3C01800E */ lui $at, %hi(D_800DF150)
/* 2265F8 801DB408 25EFBA8C */  addiu $t7, %lo(D_801DBA8C) # addiu $t7, $t7, -0x4574
/* 2265FC 801DB40C 00187080 */  sll   $t6, $t8, 2
/* 226600 801DB410 002E0821 */  addu  $at, $at, $t6
/* 226604 801DB414 AC2FF150 */ sw $t7, %lo(D_800DF150)($at)
/* 226608 801DB418 0C02BEED */  jal   func_800AFBB4
/* 22660C 801DB41C 24040001 */   li    $a0, 1
/* 226610 801DB420 3C01801E */  lui   $at, %hi(D_801E5524) # $at, 0x801e
/* 226614 801DB424 C4305524 */  lwc1  $f16, %lo(D_801E5524)($at)
/* 226618 801DB428 3C01801E */  lui   $at, %hi(D_801E5528) # $at, 0x801e
/* 22661C 801DB42C 3C128013 */  lui   $s2, %hi(gKirbyState) # $s2, 0x8013
/* 226620 801DB430 C4325528 */  lwc1  $f18, %lo(D_801E5528)($at)
/* 226624 801DB434 8E270000 */  lw    $a3, ($s1)
/* 226628 801DB438 2652E7C0 */  addiu $s2, %lo(gKirbyState) # addiu $s2, $s2, -0x1840
/* 22662C 801DB43C AE400024 */  sw    $zero, 0x24($s2)
/* 226630 801DB440 A6400068 */  sh    $zero, 0x68($s2)
/* 226634 801DB444 8CF90000 */  lw    $t9, ($a3)
/* 226638 801DB448 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22663C 801DB44C 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 226640 801DB450 0019C080 */  sll   $t8, $t9, 2
/* 226644 801DB454 00380821 */  addu  $at, $at, $t8
/* 226648 801DB458 AC207CE0 */ sw $zero, %lo(D_800E7CE0)($at)
/* 22664C 801DB45C 8CEF0000 */  lw    $t7, ($a3)
/* 226650 801DB460 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 226654 801DB464 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 226658 801DB468 000F7080 */  sll   $t6, $t7, 2
/* 22665C 801DB46C 020EC821 */  addu  $t9, $s0, $t6
/* 226660 801DB470 AF200000 */  sw    $zero, ($t9)
/* 226664 801DB474 8CF80000 */  lw    $t8, ($a3)
/* 226668 801DB478 3C0A800F */  lui   $t2, %hi(D_800EC120) # $t2, 0x800f
/* 22666C 801DB47C 254AC120 */  addiu $t2, %lo(D_800EC120) # addiu $t2, $t2, -0x3ee0
/* 226670 801DB480 00187880 */  sll   $t7, $t8, 2
/* 226674 801DB484 002F0821 */  addu  $at, $at, $t7
/* 226678 801DB488 AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 22667C 801DB48C 8CEE0000 */  lw    $t6, ($a3)
/* 226680 801DB490 2415FFFF */  li    $s5, -1
/* 226684 801DB494 3C01800F */ lui $at, %hi(D_800EBF60)
/* 226688 801DB498 000EC880 */  sll   $t9, $t6, 2
/* 22668C 801DB49C 0159C021 */  addu  $t8, $t2, $t9
/* 226690 801DB4A0 AF150000 */  sw    $s5, ($t8)
/* 226694 801DB4A4 8CE30000 */  lw    $v1, ($a3)
/* 226698 801DB4A8 3C0B800F */  lui   $t3, %hi(D_800EA6E0) # $t3, 0x800f
/* 22669C 801DB4AC 256BA6E0 */  addiu $t3, %lo(D_800EA6E0) # addiu $t3, $t3, -0x5920
/* 2266A0 801DB4B0 00031880 */  sll   $v1, $v1, 2
/* 2266A4 801DB4B4 01437821 */  addu  $t7, $t2, $v1
/* 2266A8 801DB4B8 8DE20000 */  lw    $v0, ($t7)
/* 2266AC 801DB4BC 00230821 */  addu  $at, $at, $v1
/* 2266B0 801DB4C0 44807000 */  mtc1  $zero, $f14
/* 2266B4 801DB4C4 AC22BF60 */ sw $v0, %lo(D_800EBF60)($at)
/* 2266B8 801DB4C8 8CEE0000 */  lw    $t6, ($a3)
/* 2266BC 801DB4CC 3C01800F */ lui $at, %hi(D_800EBDA0)
/* 2266C0 801DB4D0 3C0C800F */  lui   $t4, %hi(D_800EA8A0) # $t4, 0x800f
/* 2266C4 801DB4D4 000EC880 */  sll   $t9, $t6, 2
/* 2266C8 801DB4D8 00390821 */  addu  $at, $at, $t9
/* 2266CC 801DB4DC AC22BDA0 */ sw $v0, %lo(D_800EBDA0)($at)
/* 2266D0 801DB4E0 8CF80000 */  lw    $t8, ($a3)
/* 2266D4 801DB4E4 3C01800F */ lui $at, %hi(D_800EBBE0)
/* 2266D8 801DB4E8 258CA8A0 */  addiu $t4, %lo(D_800EA8A0) # addiu $t4, $t4, -0x5760
/* 2266DC 801DB4EC 00187880 */  sll   $t7, $t8, 2
/* 2266E0 801DB4F0 002F0821 */  addu  $at, $at, $t7
/* 2266E4 801DB4F4 AC22BBE0 */ sw $v0, %lo(D_800EBBE0)($at)
/* 2266E8 801DB4F8 8CEE0000 */  lw    $t6, ($a3)
/* 2266EC 801DB4FC 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 2266F0 801DB500 3C08800E */  lui   $t0, %hi(gEntitiesAngleYArray) # $t0, 0x800e
/* 2266F4 801DB504 000EC880 */  sll   $t9, $t6, 2
/* 2266F8 801DB508 00390821 */  addu  $at, $at, $t9
/* 2266FC 801DB50C E4304550 */ swc1 $f16, %lo(gEntitiesScaleXArray)($at)
/* 226700 801DB510 8CF80000 */  lw    $t8, ($a3)
/* 226704 801DB514 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 226708 801DB518 250841D0 */  addiu $t0, %lo(gEntitiesAngleYArray) # addiu $t0, $t0, 0x41d0
/* 22670C 801DB51C 00187880 */  sll   $t7, $t8, 2
/* 226710 801DB520 002F0821 */  addu  $at, $at, $t7
/* 226714 801DB524 E4304710 */ swc1 $f16, %lo(gEntitiesScaleYArray)($at)
/* 226718 801DB528 8CEE0000 */  lw    $t6, ($a3)
/* 22671C 801DB52C 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 226720 801DB530 3C0D800F */  lui   $t5, %hi(D_800EAA60) # $t5, 0x800f
/* 226724 801DB534 000EC880 */  sll   $t9, $t6, 2
/* 226728 801DB538 00390821 */  addu  $at, $at, $t9
/* 22672C 801DB53C E43048D0 */ swc1 $f16, %lo(gEntitiesScaleZArray)($at)
/* 226730 801DB540 8CF80000 */  lw    $t8, ($a3)
/* 226734 801DB544 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 226738 801DB548 25ADAA60 */  addiu $t5, %lo(D_800EAA60) # addiu $t5, $t5, -0x55a0
/* 22673C 801DB54C 00187880 */  sll   $t7, $t8, 2
/* 226740 801DB550 016F7021 */  addu  $t6, $t3, $t7
/* 226744 801DB554 E5D20000 */  swc1  $f18, ($t6)
/* 226748 801DB558 8CE30000 */  lw    $v1, ($a3)
/* 22674C 801DB55C 3C09800F */  lui   $t1, %hi(D_800EAFA0) # $t1, 0x800f
/* 226750 801DB560 2529AFA0 */  addiu $t1, %lo(D_800EAFA0) # addiu $t1, $t1, -0x5060
/* 226754 801DB564 00031880 */  sll   $v1, $v1, 2
/* 226758 801DB568 0163C821 */  addu  $t9, $t3, $v1
/* 22675C 801DB56C C7240000 */  lwc1  $f4, ($t9)
/* 226760 801DB570 00230821 */  addu  $at, $at, $v1
/* 226764 801DB574 44800000 */  mtc1  $zero, $f0
/* 226768 801DB578 E4244010 */ swc1 $f4, %lo(gEntitiesAngleXArray)($at)
/* 22676C 801DB57C 8CF80000 */  lw    $t8, ($a3)
/* 226770 801DB580 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 226774 801DB584 3C040001 */  lui   $a0, (0x000100F0 >> 16) # lui $a0, 1
/* 226778 801DB588 00187880 */  sll   $t7, $t8, 2
/* 22677C 801DB58C 018F7021 */  addu  $t6, $t4, $t7
/* 226780 801DB590 E5CE0000 */  swc1  $f14, ($t6)
/* 226784 801DB594 8CE30000 */  lw    $v1, ($a3)
/* 226788 801DB598 348400F0 */  ori   $a0, (0x000100F0 & 0xFFFF) # ori $a0, $a0, 0xf0
/* 22678C 801DB59C 24050020 */  li    $a1, 32
/* 226790 801DB5A0 00031880 */  sll   $v1, $v1, 2
/* 226794 801DB5A4 0183C821 */  addu  $t9, $t4, $v1
/* 226798 801DB5A8 C7260000 */  lwc1  $f6, ($t9)
/* 22679C 801DB5AC 0103C021 */  addu  $t8, $t0, $v1
/* 2267A0 801DB5B0 24060010 */  li    $a2, 16
/* 2267A4 801DB5B4 E7060000 */  swc1  $f6, ($t8)
/* 2267A8 801DB5B8 8CEF0000 */  lw    $t7, ($a3)
/* 2267AC 801DB5BC 000F7080 */  sll   $t6, $t7, 2
/* 2267B0 801DB5C0 01AEC821 */  addu  $t9, $t5, $t6
/* 2267B4 801DB5C4 E7320000 */  swc1  $f18, ($t9)
/* 2267B8 801DB5C8 8CE30000 */  lw    $v1, ($a3)
/* 2267BC 801DB5CC 00031880 */  sll   $v1, $v1, 2
/* 2267C0 801DB5D0 01A3C021 */  addu  $t8, $t5, $v1
/* 2267C4 801DB5D4 C7080000 */  lwc1  $f8, ($t8)
/* 2267C8 801DB5D8 00230821 */  addu  $at, $at, $v1
/* 2267CC 801DB5DC E4284390 */ swc1 $f8, %lo(gEntitiesAngleZArray)($at)
/* 2267D0 801DB5E0 8CEF0000 */  lw    $t7, ($a3)
/* 2267D4 801DB5E4 3C01800F */ lui $at, %hi(D_800EADE0)
/* 2267D8 801DB5E8 000F7080 */  sll   $t6, $t7, 2
/* 2267DC 801DB5EC 012EC821 */  addu  $t9, $t1, $t6
/* 2267E0 801DB5F0 E72E0000 */  swc1  $f14, ($t9)
/* 2267E4 801DB5F4 8CE30000 */  lw    $v1, ($a3)
/* 2267E8 801DB5F8 3C19800D */  lui   $t9, %hi(D_800D7B38) # $t9, 0x800d
/* 2267EC 801DB5FC 27397B38 */  addiu $t9, %lo(D_800D7B38) # addiu $t9, $t9, 0x7b38
/* 2267F0 801DB600 00031880 */  sll   $v1, $v1, 2
/* 2267F4 801DB604 0123C021 */  addu  $t8, $t1, $v1
/* 2267F8 801DB608 C7020000 */  lwc1  $f2, ($t8)
/* 2267FC 801DB60C 00230821 */  addu  $at, $at, $v1
/* 226800 801DB610 E422ADE0 */ swc1 $f2, %lo(D_800EADE0)($at)
/* 226804 801DB614 8CEF0000 */  lw    $t7, ($a3)
/* 226808 801DB618 3C01800F */ lui $at, %hi(D_800EAC20)
/* 22680C 801DB61C 000F7080 */  sll   $t6, $t7, 2
/* 226810 801DB620 002E0821 */  addu  $at, $at, $t6
/* 226814 801DB624 E422AC20 */ swc1 $f2, %lo(D_800EAC20)($at)
/* 226818 801DB628 3C01801E */  lui   $at, %hi(D_801E56D0) # $at, 0x801e
/* 22681C 801DB62C E42056D0 */  swc1  $f0, %lo(D_801E56D0)($at)
/* 226820 801DB630 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 226824 801DB634 C42C7164 */  lwc1  $f12, %lo(D_800D7164)($at)
/* 226828 801DB638 3C01801E */  lui   $at, %hi(D_801E56D4) # $at, 0x801e
/* 22682C 801DB63C E42C56D4 */  swc1  $f12, %lo(D_801E56D4)($at)
/* 226830 801DB640 3C01801E */  lui   $at, %hi(D_801E56D8) # $at, 0x801e
/* 226834 801DB644 E42056D8 */  swc1  $f0, %lo(D_801E56D8)($at)
/* 226838 801DB648 3C01801E */  lui   $at, %hi(D_801E56DC) # $at, 0x801e
/* 22683C 801DB64C E42C56DC */  swc1  $f12, %lo(D_801E56DC)($at)
/* 226840 801DB650 3C01801E */  lui   $at, %hi(D_801E56E0) # $at, 0x801e
/* 226844 801DB654 E42056E0 */  swc1  $f0, %lo(D_801E56E0)($at)
/* 226848 801DB658 3C01801E */  lui   $at, %hi(D_801E56E4) # $at, 0x801e
/* 22684C 801DB65C E42056E4 */  swc1  $f0, %lo(D_801E56E4)($at)
/* 226850 801DB660 3C01801E */  lui   $at, %hi(D_801E56E8) # $at, 0x801e
/* 226854 801DB664 E42E56E8 */  swc1  $f14, %lo(D_801E56E8)($at)
/* 226858 801DB668 3C01801E */  lui   $at, %hi(D_801E56EC) # $at, 0x801e
/* 22685C 801DB66C E42E56EC */  swc1  $f14, %lo(D_801E56EC)($at)
/* 226860 801DB670 3C01800D */  lui   $at, %hi(D_800D7168) # $at, 0x800d
/* 226864 801DB674 E6600000 */  swc1  $f0, ($s3)
/* 226868 801DB678 E6600004 */  swc1  $f0, 4($s3)
/* 22686C 801DB67C E6600008 */  swc1  $f0, 8($s3)
/* 226870 801DB680 E660000C */  swc1  $f0, 0xc($s3)
/* 226874 801DB684 E6600010 */  swc1  $f0, 0x10($s3)
/* 226878 801DB688 C42A7168 */  lwc1  $f10, %lo(D_800D7168)($at)
/* 22687C 801DB68C 8E6F0000 */  lw    $t7, ($s3)
/* 226880 801DB690 3C01801E */  lui   $at, %hi(D_801E552C) # $at, 0x801e
/* 226884 801DB694 E66A0014 */  swc1  $f10, 0x14($s3)
/* 226888 801DB698 AF2F0000 */  sw    $t7, ($t9)
/* 22688C 801DB69C 8E780004 */  lw    $t8, 4($s3)
/* 226890 801DB6A0 AF380004 */  sw    $t8, 4($t9)
/* 226894 801DB6A4 8E6F0008 */  lw    $t7, 8($s3)
/* 226898 801DB6A8 AF2F0008 */  sw    $t7, 8($t9)
/* 22689C 801DB6AC 8E78000C */  lw    $t8, 0xc($s3)
/* 2268A0 801DB6B0 AF38000C */  sw    $t8, 0xc($t9)
/* 2268A4 801DB6B4 8E6F0010 */  lw    $t7, 0x10($s3)
/* 2268A8 801DB6B8 AF2F0010 */  sw    $t7, 0x10($t9)
/* 2268AC 801DB6BC 8E780014 */  lw    $t8, 0x14($s3)
/* 2268B0 801DB6C0 AF380014 */  sw    $t8, 0x14($t9)
/* 2268B4 801DB6C4 C424552C */  lwc1  $f4, %lo(D_801E552C)($at)
/* 2268B8 801DB6C8 0C02A619 */  jal   func_800A9864
/* 2268BC 801DB6CC E5040000 */   swc1  $f4, ($t0)
/* 2268C0 801DB6D0 44800000 */  mtc1  $zero, $f0
/* 2268C4 801DB6D4 8E8E003C */  lw    $t6, 0x3c($s4)
/* 2268C8 801DB6D8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 2268CC 801DB6DC 3C13800F */  lui   $s3, %hi(D_800E9560) # $s3, 0x800f
/* 2268D0 801DB6E0 E5C0001C */  swc1  $f0, 0x1c($t6)
/* 2268D4 801DB6E4 8E99003C */  lw    $t9, 0x3c($s4)
/* 2268D8 801DB6E8 4481A000 */  mtc1  $at, $f20
/* 2268DC 801DB6EC 26739560 */  addiu $s3, %lo(D_800E9560) # addiu $s3, $s3, -0x6aa0
/* 2268E0 801DB6F0 E7200020 */  swc1  $f0, 0x20($t9)
/* 2268E4 801DB6F4 8E98003C */  lw    $t8, 0x3c($s4)
/* 2268E8 801DB6F8 C6C60000 */  lwc1  $f6, ($s6)
/* 2268EC 801DB6FC 3C160001 */  lui   $s6, (0x0001068A >> 16) # lui $s6, 1
/* 2268F0 801DB700 36D6068A */  ori   $s6, (0x0001068A & 0xFFFF) # ori $s6, $s6, 0x68a
/* 2268F4 801DB704 E7060024 */  swc1  $f6, 0x24($t8)
/* 2268F8 801DB708 8E430024 */  lw    $v1, 0x24($s2)
/* 2268FC 801DB70C 24140001 */  li    $s4, 1
.L801DB710_ovl17:
/* 226900 801DB710 10600015 */  beqz  $v1, .L801DB768_ovl17
/* 226904 801DB714 3C040001 */   lui   $a0, (0x00010688 >> 16) # lui $a0, 1
/* 226908 801DB718 0C02A806 */  jal   func_800AA018
/* 22690C 801DB71C 34840688 */   ori   $a0, (0x00010688 & 0xFFFF) # ori $a0, $a0, 0x688
/* 226910 801DB720 3C040001 */  lui   $a0, (0x00010689 >> 16) # lui $a0, 1
/* 226914 801DB724 0C02A806 */  jal   func_800AA018
/* 226918 801DB728 34840689 */   ori   $a0, (0x00010689 & 0xFFFF) # ori $a0, $a0, 0x689
/* 22691C 801DB72C 0C02BC8C */  jal   func_800AF230
/* 226920 801DB730 00000000 */   nop   
/* 226924 801DB734 5440000D */  bnezl $v0, .L801DB76C_ovl17
/* 226928 801DB738 8E2F0000 */   lw    $t7, ($s1)
/* 22692C 801DB73C 8E2F0000 */  lw    $t7, ($s1)
.L801DB740_ovl17:
/* 226930 801DB740 02802025 */  move  $a0, $s4
/* 226934 801DB744 8DEE0000 */  lw    $t6, ($t7)
/* 226938 801DB748 000EC880 */  sll   $t9, $t6, 2
/* 22693C 801DB74C 0219C021 */  addu  $t8, $s0, $t9
/* 226940 801DB750 0C002DAF */  jal   finish_current_thread
/* 226944 801DB754 AF140000 */   sw    $s4, ($t8)
/* 226948 801DB758 0C02BC8C */  jal   func_800AF230
/* 22694C 801DB75C 00000000 */   nop   
/* 226950 801DB760 5040FFF7 */  beql  $v0, $zero, .L801DB740_ovl17
/* 226954 801DB764 8E2F0000 */   lw    $t7, ($s1)
.L801DB768_ovl17:
/* 226958 801DB768 8E2F0000 */  lw    $t7, ($s1)
.L801DB76C_ovl17:
/* 22695C 801DB76C 3C040001 */  lui   $a0, 1
/* 226960 801DB770 8DEE0000 */  lw    $t6, ($t7)
/* 226964 801DB774 000EC880 */  sll   $t9, $t6, 2
/* 226968 801DB778 0219C021 */  addu  $t8, $s0, $t9
/* 22696C 801DB77C 8F0F0000 */  lw    $t7, ($t8)
/* 226970 801DB780 11E00062 */  beqz  $t7, .L801DB90C_ovl17
/* 226974 801DB784 00000000 */   nop   
/* 226978 801DB788 3C040001 */  lui   $a0, (0x00010682 >> 16) # lui $a0, 1
/* 22697C 801DB78C 0C02A806 */  jal   func_800AA018
/* 226980 801DB790 34840682 */   ori   $a0, (0x00010682 & 0xFFFF) # ori $a0, $a0, 0x682
/* 226984 801DB794 3C040001 */  lui   $a0, (0x00010683 >> 16) # lui $a0, 1
/* 226988 801DB798 0C02A806 */  jal   func_800AA018
/* 22698C 801DB79C 34840683 */   ori   $a0, (0x00010683 & 0xFFFF) # ori $a0, $a0, 0x683
/* 226990 801DB7A0 2404003B */  li    $a0, 59
/* 226994 801DB7A4 0C0782CE */  jal   D_801E0B38_ovl17
/* 226998 801DB7A8 00002825 */   move  $a1, $zero
/* 22699C 801DB7AC 1040003F */  beqz  $v0, .L801DB8AC_ovl17
/* 2269A0 801DB7B0 00000000 */   nop   
/* 2269A4 801DB7B4 8E270000 */  lw    $a3, ($s1)
/* 2269A8 801DB7B8 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 2269AC 801DB7BC 00022080 */  sll   $a0, $v0, 2
/* 2269B0 801DB7C0 8CEE0000 */  lw    $t6, ($a3)
/* 2269B4 801DB7C4 000EC880 */  sll   $t9, $t6, 2
/* 2269B8 801DB7C8 00390821 */  addu  $at, $at, $t9
/* 2269BC 801DB7CC C42825D0 */ lwc1 $f8, %lo(gEntitiesNextPosXArray)($at)
/* 2269C0 801DB7D0 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 2269C4 801DB7D4 00240821 */  addu  $at, $at, $a0
/* 2269C8 801DB7D8 46004287 */  neg.s $f10, $f8
/* 2269CC 801DB7DC E42AA6E0 */ swc1 $f10, %lo(D_800EA6E0)($at)
/* 2269D0 801DB7E0 8CF80000 */  lw    $t8, ($a3)
/* 2269D4 801DB7E4 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2269D8 801DB7E8 00187880 */  sll   $t7, $t8, 2
/* 2269DC 801DB7EC 002F0821 */  addu  $at, $at, $t7
/* 2269E0 801DB7F0 C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 2269E4 801DB7F4 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 2269E8 801DB7F8 00240821 */  addu  $at, $at, $a0
/* 2269EC 801DB7FC 46002187 */  neg.s $f6, $f4
/* 2269F0 801DB800 3C18800F */  lui   $t8, %hi(D_800EBBE0) # $t8, 0x800f
/* 2269F4 801DB804 E426A8A0 */ swc1 $f6, %lo(D_800EA8A0)($at)
/* 2269F8 801DB808 8CEE0000 */  lw    $t6, ($a3)
/* 2269FC 801DB80C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 226A00 801DB810 2718BBE0 */  addiu $t8, %lo(D_800EBBE0) # addiu $t8, $t8, -0x4420
/* 226A04 801DB814 000EC880 */  sll   $t9, $t6, 2
/* 226A08 801DB818 00390821 */  addu  $at, $at, $t9
/* 226A0C 801DB81C C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 226A10 801DB820 3C01800F */ lui $at, %hi(D_800EAA60)
/* 226A14 801DB824 00240821 */  addu  $at, $at, $a0
/* 226A18 801DB828 46004287 */  neg.s $f10, $f8
/* 226A1C 801DB82C E42AAA60 */ swc1 $f10, %lo(D_800EAA60)($at)
/* 226A20 801DB830 8CE30000 */  lw    $v1, ($a3)
/* 226A24 801DB834 00031880 */  sll   $v1, $v1, 2
/* 226A28 801DB838 00782821 */  addu  $a1, $v1, $t8
/* 226A2C 801DB83C 8CAF0000 */  lw    $t7, ($a1)
/* 226A30 801DB840 16AF0003 */  bne   $s5, $t7, .L801DB850_ovl17
/* 226A34 801DB844 00000000 */   nop   
/* 226A38 801DB848 10000018 */  b     .L801DB8AC_ovl17
/* 226A3C 801DB84C ACA20000 */   sw    $v0, ($a1)
.L801DB850_ovl17:
/* 226A40 801DB850 3C0E800F */  lui   $t6, %hi(D_800EBDA0) # $t6, 0x800f
/* 226A44 801DB854 25CEBDA0 */  addiu $t6, %lo(D_800EBDA0) # addiu $t6, $t6, -0x4260
/* 226A48 801DB858 006E2021 */  addu  $a0, $v1, $t6
/* 226A4C 801DB85C 8C990000 */  lw    $t9, ($a0)
/* 226A50 801DB860 16B90003 */  bne   $s5, $t9, .L801DB870_ovl17
/* 226A54 801DB864 00000000 */   nop   
/* 226A58 801DB868 10000010 */  b     .L801DB8AC_ovl17
/* 226A5C 801DB86C AC820000 */   sw    $v0, ($a0)
.L801DB870_ovl17:
/* 226A60 801DB870 3C18800F */  lui   $t8, %hi(D_800EBF60) # $t8, 0x800f
/* 226A64 801DB874 2718BF60 */  addiu $t8, %lo(D_800EBF60) # addiu $t8, $t8, -0x40a0
/* 226A68 801DB878 00782021 */  addu  $a0, $v1, $t8
/* 226A6C 801DB87C 8C8F0000 */  lw    $t7, ($a0)
/* 226A70 801DB880 16AF0003 */  bne   $s5, $t7, .L801DB890_ovl17
/* 226A74 801DB884 00000000 */   nop   
/* 226A78 801DB888 10000008 */  b     .L801DB8AC_ovl17
/* 226A7C 801DB88C AC820000 */   sw    $v0, ($a0)
.L801DB890_ovl17:
/* 226A80 801DB890 3C0E800F */  lui   $t6, %hi(D_800EC120) # $t6, 0x800f
/* 226A84 801DB894 25CEC120 */  addiu $t6, %lo(D_800EC120) # addiu $t6, $t6, -0x3ee0
/* 226A88 801DB898 006E2021 */  addu  $a0, $v1, $t6
/* 226A8C 801DB89C 8C990000 */  lw    $t9, ($a0)
/* 226A90 801DB8A0 16B90002 */  bne   $s5, $t9, .L801DB8AC_ovl17
/* 226A94 801DB8A4 00000000 */   nop   
/* 226A98 801DB8A8 AC820000 */  sw    $v0, ($a0)
.L801DB8AC_ovl17:
/* 226A9C 801DB8AC 0C06B9F8 */  jal   func_801AE7E0_ovl17
/* 226AA0 801DB8B0 24040012 */   li    $a0, 18
/* 226AA4 801DB8B4 0C02BC8C */  jal   func_800AF230
/* 226AA8 801DB8B8 00000000 */   nop   
/* 226AAC 801DB8BC 14400062 */  bnez  $v0, .L801DBA48_ovl17
/* 226AB0 801DB8C0 00000000 */   nop   
/* 226AB4 801DB8C4 8E580024 */  lw    $t8, 0x24($s2)
.L801DB8C8_ovl17:
/* 226AB8 801DB8C8 1700005F */  bnez  $t8, .L801DBA48_ovl17
/* 226ABC 801DB8CC 00000000 */   nop   
/* 226AC0 801DB8D0 0C002DAF */  jal   finish_current_thread
/* 226AC4 801DB8D4 02802025 */   move  $a0, $s4
/* 226AC8 801DB8D8 8E2F0000 */  lw    $t7, ($s1)
/* 226ACC 801DB8DC 8DEE0000 */  lw    $t6, ($t7)
/* 226AD0 801DB8E0 000EC880 */  sll   $t9, $t6, 2
/* 226AD4 801DB8E4 0219C021 */  addu  $t8, $s0, $t9
/* 226AD8 801DB8E8 8F0F0000 */  lw    $t7, ($t8)
/* 226ADC 801DB8EC 15E00056 */  bnez  $t7, .L801DBA48_ovl17
/* 226AE0 801DB8F0 00000000 */   nop   
/* 226AE4 801DB8F4 0C02BC8C */  jal   func_800AF230
/* 226AE8 801DB8F8 00000000 */   nop   
/* 226AEC 801DB8FC 5040FFF2 */  beql  $v0, $zero, .L801DB8C8_ovl17
/* 226AF0 801DB900 8E580024 */   lw    $t8, 0x24($s2)
/* 226AF4 801DB904 10000050 */  b     .L801DBA48_ovl17
/* 226AF8 801DB908 00000000 */   nop   
.L801DB90C_ovl17:
/* 226AFC 801DB90C 0C02A806 */  jal   func_800AA018
/* 226B00 801DB910 3484068B */   ori   $a0, $a0, 0x68b
/* 226B04 801DB914 8E2E0000 */  lw    $t6, ($s1)
/* 226B08 801DB918 3C0F800E */ lui $t7, %hi(D_800DFF50)
/* 226B0C 801DB91C 3C010001 */  lui   $at, (0x00010682 >> 16) # lui $at, 1
/* 226B10 801DB920 8DD90000 */  lw    $t9, ($t6)
/* 226B14 801DB924 34210682 */  ori   $at, (0x00010682 & 0xFFFF) # ori $at, $at, 0x682
/* 226B18 801DB928 4406A000 */  mfc1  $a2, $f20
/* 226B1C 801DB92C 0019C080 */  sll   $t8, $t9, 2
/* 226B20 801DB930 01F87821 */  addu  $t7, $t7, $t8
/* 226B24 801DB934 8DEFFF50 */  lw    $t7, %lo(D_800DFF50)($t7)
/* 226B28 801DB938 02C02025 */  move  $a0, $s6
/* 226B2C 801DB93C 3C050001 */  lui   $a1, (0x000100F0 >> 16) # lui $a1, 1
/* 226B30 801DB940 15E1002B */  bne   $t7, $at, .L801DB9F0_ovl17
/* 226B34 801DB944 00000000 */   nop   
/* 226B38 801DB948 0C02A971 */  jal   func_800AA5C4
/* 226B3C 801DB94C 34A500F0 */   ori   $a1, (0x000100F0 & 0xFFFF) # ori $a1, $a1, 0xf0
/* 226B40 801DB950 8E270000 */  lw    $a3, ($s1)
/* 226B44 801DB954 8CEE0000 */  lw    $t6, ($a3)
/* 226B48 801DB958 000EC880 */  sll   $t9, $t6, 2
/* 226B4C 801DB95C 0279C021 */  addu  $t8, $s3, $t9
/* 226B50 801DB960 AF000000 */  sw    $zero, ($t8)
/* 226B54 801DB964 8CE30000 */  lw    $v1, ($a3)
/* 226B58 801DB968 00031880 */  sll   $v1, $v1, 2
/* 226B5C 801DB96C 02637821 */  addu  $t7, $s3, $v1
/* 226B60 801DB970 8DEE0000 */  lw    $t6, ($t7)
/* 226B64 801DB974 29C10004 */  slti  $at, $t6, 4
/* 226B68 801DB978 50200019 */  beql  $at, $zero, .L801DB9E0_ovl17
/* 226B6C 801DB97C 4405A000 */   mfc1  $a1, $f20
/* 226B70 801DB980 8E590024 */  lw    $t9, 0x24($s2)
.L801DB984_ovl17:
/* 226B74 801DB984 0203C021 */  addu  $t8, $s0, $v1
/* 226B78 801DB988 57200015 */  bnezl $t9, .L801DB9E0_ovl17
/* 226B7C 801DB98C 4405A000 */   mfc1  $a1, $f20
/* 226B80 801DB990 8F0F0000 */  lw    $t7, ($t8)
/* 226B84 801DB994 55E00012 */  bnezl $t7, .L801DB9E0_ovl17
/* 226B88 801DB998 4405A000 */   mfc1  $a1, $f20
/* 226B8C 801DB99C 0C002DAF */  jal   finish_current_thread
/* 226B90 801DB9A0 02802025 */   move  $a0, $s4
/* 226B94 801DB9A4 8E270000 */  lw    $a3, ($s1)
/* 226B98 801DB9A8 8CEE0000 */  lw    $t6, ($a3)
/* 226B9C 801DB9AC 000EC880 */  sll   $t9, $t6, 2
/* 226BA0 801DB9B0 02791021 */  addu  $v0, $s3, $t9
/* 226BA4 801DB9B4 8C580000 */  lw    $t8, ($v0)
/* 226BA8 801DB9B8 270F0001 */  addiu $t7, $t8, 1
/* 226BAC 801DB9BC AC4F0000 */  sw    $t7, ($v0)
/* 226BB0 801DB9C0 8CE30000 */  lw    $v1, ($a3)
/* 226BB4 801DB9C4 00031880 */  sll   $v1, $v1, 2
/* 226BB8 801DB9C8 02637021 */  addu  $t6, $s3, $v1
/* 226BBC 801DB9CC 8DD90000 */  lw    $t9, ($t6)
/* 226BC0 801DB9D0 2B210004 */  slti  $at, $t9, 4
/* 226BC4 801DB9D4 5420FFEB */  bnezl $at, .L801DB984_ovl17
/* 226BC8 801DB9D8 8E590024 */   lw    $t9, 0x24($s2)
/* 226BCC 801DB9DC 4405A000 */  mfc1  $a1, $f20
.L801DB9E0_ovl17:
/* 226BD0 801DB9E0 0C02A7E6 */  jal   func_800A9F98
/* 226BD4 801DB9E4 02C02025 */   move  $a0, $s6
/* 226BD8 801DB9E8 10000003 */  b     .L801DB9F8_ovl17
/* 226BDC 801DB9EC 00000000 */   nop   
.L801DB9F0_ovl17:
/* 226BE0 801DB9F0 0C02A806 */  jal   func_800AA018
/* 226BE4 801DB9F4 02C02025 */   move  $a0, $s6
.L801DB9F8_ovl17:
/* 226BE8 801DB9F8 0C02BC8C */  jal   func_800AF230
/* 226BEC 801DB9FC 00000000 */   nop   
/* 226BF0 801DBA00 14400011 */  bnez  $v0, .L801DBA48_ovl17
/* 226BF4 801DBA04 00000000 */   nop   
/* 226BF8 801DBA08 8E580024 */  lw    $t8, 0x24($s2)
.L801DBA0C_ovl17:
/* 226BFC 801DBA0C 1700000E */  bnez  $t8, .L801DBA48_ovl17
/* 226C00 801DBA10 00000000 */   nop   
/* 226C04 801DBA14 8E2F0000 */  lw    $t7, ($s1)
/* 226C08 801DBA18 8DEE0000 */  lw    $t6, ($t7)
/* 226C0C 801DBA1C 000EC880 */  sll   $t9, $t6, 2
/* 226C10 801DBA20 0219C021 */  addu  $t8, $s0, $t9
/* 226C14 801DBA24 8F0F0000 */  lw    $t7, ($t8)
/* 226C18 801DBA28 15E00007 */  bnez  $t7, .L801DBA48_ovl17
/* 226C1C 801DBA2C 00000000 */   nop   
/* 226C20 801DBA30 0C002DAF */  jal   finish_current_thread
/* 226C24 801DBA34 02802025 */   move  $a0, $s4
/* 226C28 801DBA38 0C02BC8C */  jal   func_800AF230
/* 226C2C 801DBA3C 00000000 */   nop   
/* 226C30 801DBA40 5040FFF2 */  beql  $v0, $zero, .L801DBA0C_ovl17
/* 226C34 801DBA44 8E580024 */   lw    $t8, 0x24($s2)
.L801DBA48_ovl17:
/* 226C38 801DBA48 1000FF31 */  b     .L801DB710_ovl17
/* 226C3C 801DBA4C 8E430024 */   lw    $v1, 0x24($s2)
/* 226C40 801DBA50 00000000 */  nop   
/* 226C44 801DBA54 00000000 */  nop   
/* 226C48 801DBA58 00000000 */  nop   
/* 226C4C 801DBA5C 00000000 */  nop   
/* 226C50 801DBA60 8FBF003C */  lw    $ra, 0x3c($sp)
/* 226C54 801DBA64 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 226C58 801DBA68 8FB00020 */  lw    $s0, 0x20($sp)
/* 226C5C 801DBA6C 8FB10024 */  lw    $s1, 0x24($sp)
/* 226C60 801DBA70 8FB20028 */  lw    $s2, 0x28($sp)
/* 226C64 801DBA74 8FB3002C */  lw    $s3, 0x2c($sp)
/* 226C68 801DBA78 8FB40030 */  lw    $s4, 0x30($sp)
/* 226C6C 801DBA7C 8FB50034 */  lw    $s5, 0x34($sp)
/* 226C70 801DBA80 8FB60038 */  lw    $s6, 0x38($sp)
/* 226C74 801DBA84 03E00008 */  jr    $ra
/* 226C78 801DBA88 27BD0040 */   addiu $sp, $sp, 0x40

.type func_801DB1E0_ovl17, @function
.size func_801DB1E0_ovl17, . - func_801DB1E0_ovl17

glabel func_801DBA8C_ovl17
/* 226C7C 801DBA8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 226C80 801DBA90 AFA40018 */  sw    $a0, 0x18($sp)
/* 226C84 801DBA94 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 226C88 801DBA98 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 226C8C 801DBA9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 226C90 801DBAA0 3C0E800F */  lui   $t6, %hi(D_800E83E0) # $t6, 0x800f
/* 226C94 801DBAA4 8C830000 */  lw    $v1, ($a0)
/* 226C98 801DBAA8 25CE83E0 */  addiu $t6, %lo(D_800E83E0) # addiu $t6, $t6, -0x7c20
/* 226C9C 801DBAAC 24010001 */  li    $at, 1
/* 226CA0 801DBAB0 00031880 */  sll   $v1, $v1, 2
/* 226CA4 801DBAB4 006E2821 */  addu  $a1, $v1, $t6
/* 226CA8 801DBAB8 8CA20000 */  lw    $v0, ($a1)
/* 226CAC 801DBABC 3042FFFF */  andi  $v0, $v0, 0xffff
/* 226CB0 801DBAC0 1041000C */  beq   $v0, $at, .L801DBAF4_ovl17
/* 226CB4 801DBAC4 24010002 */   li    $at, 2
/* 226CB8 801DBAC8 14410015 */  bne   $v0, $at, .L801DBB20_ovl17
/* 226CBC 801DBACC 00000000 */   nop   
/* 226CC0 801DBAD0 ACA00000 */  sw    $zero, ($a1)
/* 226CC4 801DBAD4 0C029D9E */  jal   play_sound
/* 226CC8 801DBAD8 240400D8 */   li    $a0, 216
/* 226CCC 801DBADC 00002025 */  move  $a0, $zero
/* 226CD0 801DBAE0 0C02ED1A */  jal   func_800BB468
/* 226CD4 801DBAE4 00002825 */   move  $a1, $zero
/* 226CD8 801DBAE8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 226CDC 801DBAEC 1000000C */  b     .L801DBB20_ovl17
/* 226CE0 801DBAF0 8C84A7C4 */   lw    $a0, %lo(D_8004A7C4)($a0)
.L801DBAF4_ovl17:
/* 226CE4 801DBAF4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 226CE8 801DBAF8 00832021 */  addu  $a0, $a0, $v1
/* 226CEC 801DBAFC 3C05801E */  lui   $a1, %hi(D_801DC460) # $a1, 0x801e
/* 226CF0 801DBB00 24A5C460 */  addiu $a1, %lo(D_801DC460) # addiu $a1, $a1, -0x3ba0
/* 226CF4 801DBB04 0C02C7B2 */  jal   assign_new_process_entry
/* 226CF8 801DBB08 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 226CFC 801DBB0C 24040003 */  li    $a0, 3
/* 226D00 801DBB10 0C02ED1A */  jal   func_800BB468
/* 226D04 801DBB14 00002825 */   move  $a1, $zero
/* 226D08 801DBB18 100000A0 */  b     .L801DBD9C_ovl17
/* 226D0C 801DBB1C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DBB20_ovl17:
/* 226D10 801DBB20 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 226D14 801DBB24 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 226D18 801DBB28 8C4F0024 */  lw    $t7, 0x24($v0)
/* 226D1C 801DBB2C 3C0B800D */  lui   $t3, %hi(D_800D7098) # $t3, 0x800d
/* 226D20 801DBB30 11E00009 */  beqz  $t7, .L801DBB58_ovl17
/* 226D24 801DBB34 00000000 */   nop   
/* 226D28 801DBB38 AC400024 */  sw    $zero, 0x24($v0)
/* 226D2C 801DBB3C A4400068 */  sh    $zero, 0x68($v0)
/* 226D30 801DBB40 8C990000 */  lw    $t9, ($a0)
/* 226D34 801DBB44 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 226D38 801DBB48 2418002D */  li    $t8, 45
/* 226D3C 801DBB4C 00195080 */  sll   $t2, $t9, 2
/* 226D40 801DBB50 002A0821 */  addu  $at, $at, $t2
/* 226D44 801DBB54 AC387CE0 */ sw $t8, %lo(D_800E7CE0)($at)
.L801DBB58_ovl17:
/* 226D48 801DBB58 8D6B7098 */  lw    $t3, %lo(D_800D7098)($t3)
/* 226D4C 801DBB5C 15600003 */  bnez  $t3, .L801DBB6C_ovl17
/* 226D50 801DBB60 00000000 */   nop   
/* 226D54 801DBB64 0C076F6A */  jal   func_801DBDA8_ovl17
/* 226D58 801DBB68 00000000 */   nop   
.L801DBB6C_ovl17:
/* 226D5C 801DBB6C 0C0770B4 */  jal   func_801DC2D0_ovl17
/* 226D60 801DBB70 00000000 */   nop   
/* 226D64 801DBB74 0C0770FD */  jal   func_801DC3F4_ovl17
/* 226D68 801DBB78 00000000 */   nop   
/* 226D6C 801DBB7C 3C0C800D */  lui   $t4, %hi(D_800D7098) # $t4, 0x800d
/* 226D70 801DBB80 8D8C7098 */  lw    $t4, %lo(D_800D7098)($t4)
/* 226D74 801DBB84 3C04801E */  lui   $a0, %hi(D_801E53D4) # $a0, 0x801e
/* 226D78 801DBB88 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 226D7C 801DBB8C 15800007 */  bnez  $t4, .L801DBBAC_ovl17
/* 226D80 801DBB90 00000000 */   nop   
/* 226D84 801DBB94 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 226D88 801DBB98 248453D4 */  addiu $a0, %lo(D_801E53D4) # addiu $a0, $a0, 0x53d4
/* 226D8C 801DBB9C 0C04455D */  jal   func_80111574
/* 226D90 801DBBA0 8DA50000 */   lw    $a1, ($t5)
/* 226D94 801DBBA4 0C044713 */  jal   func_80111C4C
/* 226D98 801DBBA8 00402025 */   move  $a0, $v0
.L801DBBAC_ovl17:
/* 226D9C 801DBBAC 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 226DA0 801DBBB0 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 226DA4 801DBBB4 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 226DA8 801DBBB8 24E79AA0 */  addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 226DAC 801DBBBC 8C8E0000 */  lw    $t6, ($a0)
/* 226DB0 801DBBC0 3C18800F */  lui   $t8, %hi(D_800EBBE0) # $t8, 0x800f
/* 226DB4 801DBBC4 2718BBE0 */  addiu $t8, %lo(D_800EBBE0) # addiu $t8, $t8, -0x4420
/* 226DB8 801DBBC8 000E7880 */  sll   $t7, $t6, 2
/* 226DBC 801DBBCC 00EFC821 */  addu  $t9, $a3, $t7
/* 226DC0 801DBBD0 AF200000 */  sw    $zero, ($t9)
/* 226DC4 801DBBD4 8C830000 */  lw    $v1, ($a0)
/* 226DC8 801DBBD8 2406FFFF */  li    $a2, -1
/* 226DCC 801DBBDC 3C09800E */  lui   $t1, %hi(D_800E77A0) # $t1, 0x800e
/* 226DD0 801DBBE0 00031880 */  sll   $v1, $v1, 2
/* 226DD4 801DBBE4 00781021 */  addu  $v0, $v1, $t8
/* 226DD8 801DBBE8 8C450000 */  lw    $a1, ($v0)
/* 226DDC 801DBBEC 252977A0 */  addiu $t1, %lo(D_800E77A0) # addiu $t1, $t1, 0x77a0
/* 226DE0 801DBBF0 10C50010 */  beq   $a2, $a1, .L801DBC34_ovl17
/* 226DE4 801DBBF4 00055040 */   sll   $t2, $a1, 1
/* 226DE8 801DBBF8 012A5821 */  addu  $t3, $t1, $t2
/* 226DEC 801DBBFC 956C0000 */  lhu   $t4, ($t3)
/* 226DF0 801DBC00 2408003B */  li    $t0, 59
/* 226DF4 801DBC04 550C0009 */  bnel  $t0, $t4, .L801DBC2C_ovl17
/* 226DF8 801DBC08 AC460000 */   sw    $a2, ($v0)
/* 226DFC 801DBC0C 00E31021 */  addu  $v0, $a3, $v1
/* 226E00 801DBC10 8C4D0000 */  lw    $t5, ($v0)
/* 226E04 801DBC14 25AE0001 */  addiu $t6, $t5, 1
/* 226E08 801DBC18 AC4E0000 */  sw    $t6, ($v0)
/* 226E0C 801DBC1C 8C830000 */  lw    $v1, ($a0)
/* 226E10 801DBC20 10000004 */  b     .L801DBC34_ovl17
/* 226E14 801DBC24 00031880 */   sll   $v1, $v1, 2
/* 226E18 801DBC28 AC460000 */  sw    $a2, ($v0)
.L801DBC2C_ovl17:
/* 226E1C 801DBC2C 8C830000 */  lw    $v1, ($a0)
/* 226E20 801DBC30 00031880 */  sll   $v1, $v1, 2
.L801DBC34_ovl17:
/* 226E24 801DBC34 3C0F800F */  lui   $t7, %hi(D_800EBDA0) # $t7, 0x800f
/* 226E28 801DBC38 25EFBDA0 */  addiu $t7, %lo(D_800EBDA0) # addiu $t7, $t7, -0x4260
/* 226E2C 801DBC3C 006F1021 */  addu  $v0, $v1, $t7
/* 226E30 801DBC40 8C450000 */  lw    $a1, ($v0)
/* 226E34 801DBC44 3C09800E */  lui   $t1, %hi(D_800E77A0) # $t1, 0x800e
/* 226E38 801DBC48 252977A0 */  addiu $t1, %lo(D_800E77A0) # addiu $t1, $t1, 0x77a0
/* 226E3C 801DBC4C 10C50010 */  beq   $a2, $a1, .L801DBC90_ovl17
/* 226E40 801DBC50 2408003B */   li    $t0, 59
/* 226E44 801DBC54 0005C840 */  sll   $t9, $a1, 1
/* 226E48 801DBC58 0139C021 */  addu  $t8, $t1, $t9
/* 226E4C 801DBC5C 970A0000 */  lhu   $t2, ($t8)
/* 226E50 801DBC60 550A0009 */  bnel  $t0, $t2, .L801DBC88_ovl17
/* 226E54 801DBC64 AC460000 */   sw    $a2, ($v0)
/* 226E58 801DBC68 00E31021 */  addu  $v0, $a3, $v1
/* 226E5C 801DBC6C 8C4B0000 */  lw    $t3, ($v0)
/* 226E60 801DBC70 256C0001 */  addiu $t4, $t3, 1
/* 226E64 801DBC74 AC4C0000 */  sw    $t4, ($v0)
/* 226E68 801DBC78 8C830000 */  lw    $v1, ($a0)
/* 226E6C 801DBC7C 10000004 */  b     .L801DBC90_ovl17
/* 226E70 801DBC80 00031880 */   sll   $v1, $v1, 2
/* 226E74 801DBC84 AC460000 */  sw    $a2, ($v0)
.L801DBC88_ovl17:
/* 226E78 801DBC88 8C830000 */  lw    $v1, ($a0)
/* 226E7C 801DBC8C 00031880 */  sll   $v1, $v1, 2
.L801DBC90_ovl17:
/* 226E80 801DBC90 3C0D800F */  lui   $t5, %hi(D_800EBF60) # $t5, 0x800f
/* 226E84 801DBC94 25ADBF60 */  addiu $t5, %lo(D_800EBF60) # addiu $t5, $t5, -0x40a0
/* 226E88 801DBC98 006D1021 */  addu  $v0, $v1, $t5
/* 226E8C 801DBC9C 8C450000 */  lw    $a1, ($v0)
/* 226E90 801DBCA0 10C5000F */  beq   $a2, $a1, .L801DBCE0_ovl17
/* 226E94 801DBCA4 00057040 */   sll   $t6, $a1, 1
/* 226E98 801DBCA8 012E7821 */  addu  $t7, $t1, $t6
/* 226E9C 801DBCAC 95F90000 */  lhu   $t9, ($t7)
/* 226EA0 801DBCB0 55190009 */  bnel  $t0, $t9, .L801DBCD8_ovl17
/* 226EA4 801DBCB4 AC460000 */   sw    $a2, ($v0)
/* 226EA8 801DBCB8 00E31021 */  addu  $v0, $a3, $v1
/* 226EAC 801DBCBC 8C580000 */  lw    $t8, ($v0)
/* 226EB0 801DBCC0 270A0001 */  addiu $t2, $t8, 1
/* 226EB4 801DBCC4 AC4A0000 */  sw    $t2, ($v0)
/* 226EB8 801DBCC8 8C830000 */  lw    $v1, ($a0)
/* 226EBC 801DBCCC 10000004 */  b     .L801DBCE0_ovl17
/* 226EC0 801DBCD0 00031880 */   sll   $v1, $v1, 2
/* 226EC4 801DBCD4 AC460000 */  sw    $a2, ($v0)
.L801DBCD8_ovl17:
/* 226EC8 801DBCD8 8C830000 */  lw    $v1, ($a0)
/* 226ECC 801DBCDC 00031880 */  sll   $v1, $v1, 2
.L801DBCE0_ovl17:
/* 226ED0 801DBCE0 3C0B800F */  lui   $t3, %hi(D_800EC120) # $t3, 0x800f
/* 226ED4 801DBCE4 256BC120 */  addiu $t3, %lo(D_800EC120) # addiu $t3, $t3, -0x3ee0
/* 226ED8 801DBCE8 006B1021 */  addu  $v0, $v1, $t3
/* 226EDC 801DBCEC 8C450000 */  lw    $a1, ($v0)
/* 226EE0 801DBCF0 10C5000F */  beq   $a2, $a1, .L801DBD30_ovl17
/* 226EE4 801DBCF4 00056040 */   sll   $t4, $a1, 1
/* 226EE8 801DBCF8 012C6821 */  addu  $t5, $t1, $t4
/* 226EEC 801DBCFC 95AE0000 */  lhu   $t6, ($t5)
/* 226EF0 801DBD00 550E0009 */  bnel  $t0, $t6, .L801DBD28_ovl17
/* 226EF4 801DBD04 AC460000 */   sw    $a2, ($v0)
/* 226EF8 801DBD08 00E31021 */  addu  $v0, $a3, $v1
/* 226EFC 801DBD0C 8C4F0000 */  lw    $t7, ($v0)
/* 226F00 801DBD10 25F90001 */  addiu $t9, $t7, 1
/* 226F04 801DBD14 AC590000 */  sw    $t9, ($v0)
/* 226F08 801DBD18 8C830000 */  lw    $v1, ($a0)
/* 226F0C 801DBD1C 10000004 */  b     .L801DBD30_ovl17
/* 226F10 801DBD20 00031880 */   sll   $v1, $v1, 2
/* 226F14 801DBD24 AC460000 */  sw    $a2, ($v0)
.L801DBD28_ovl17:
/* 226F18 801DBD28 8C830000 */  lw    $v1, ($a0)
/* 226F1C 801DBD2C 00031880 */  sll   $v1, $v1, 2
.L801DBD30_ovl17:
/* 226F20 801DBD30 3C18800F */  lui   $t8, %hi(D_800E98E0) # $t8, 0x800f
/* 226F24 801DBD34 271898E0 */  addiu $t8, %lo(D_800E98E0) # addiu $t8, $t8, -0x6720
/* 226F28 801DBD38 00781021 */  addu  $v0, $v1, $t8
/* 226F2C 801DBD3C 8C440000 */  lw    $a0, ($v0)
/* 226F30 801DBD40 18800003 */  blez  $a0, .L801DBD50_ovl17
/* 226F34 801DBD44 248AFFFF */   addiu $t2, $a0, -1
/* 226F38 801DBD48 10000013 */  b     .L801DBD98_ovl17
/* 226F3C 801DBD4C AC4A0000 */   sw    $t2, ($v0)
.L801DBD50_ovl17:
/* 226F40 801DBD50 00E35821 */  addu  $t3, $a3, $v1
/* 226F44 801DBD54 8D6C0000 */  lw    $t4, ($t3)
/* 226F48 801DBD58 3C0D8005 */  lui   $t5, %hi(D_80048F22) # $t5, 0x8005
/* 226F4C 801DBD5C 29810004 */  slti  $at, $t4, 4
/* 226F50 801DBD60 5020000E */  beql  $at, $zero, .L801DBD9C_ovl17
/* 226F54 801DBD64 8FBF0014 */   lw    $ra, 0x14($sp)
/* 226F58 801DBD68 95AD8F22 */  lhu   $t5, %lo(D_80048F22)($t5)
/* 226F5C 801DBD6C 240F0001 */  li    $t7, 1
/* 226F60 801DBD70 3C19800D */  lui   $t9, %hi(D_800D7098) # $t9, 0x800d
/* 226F64 801DBD74 31AE4000 */  andi  $t6, $t5, 0x4000
/* 226F68 801DBD78 51C00008 */  beql  $t6, $zero, .L801DBD9C_ovl17
/* 226F6C 801DBD7C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 226F70 801DBD80 AC4F0000 */  sw    $t7, ($v0)
/* 226F74 801DBD84 8F397098 */  lw    $t9, %lo(D_800D7098)($t9)
/* 226F78 801DBD88 57200004 */  bnezl $t9, .L801DBD9C_ovl17
/* 226F7C 801DBD8C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 226F80 801DBD90 0C029D9E */  jal   play_sound
/* 226F84 801DBD94 240401C1 */   li    $a0, 449
.L801DBD98_ovl17:
/* 226F88 801DBD98 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DBD9C_ovl17:
/* 226F8C 801DBD9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 226F90 801DBDA0 03E00008 */  jr    $ra
/* 226F94 801DBDA4 00000000 */   nop   

.type func_801DBA8C_ovl17, @function
.size func_801DBA8C_ovl17, . - func_801DBA8C_ovl17

glabel func_801DBDA8_ovl17
/* 226F98 801DBDA8 3C058005 */  lui   $a1, %hi(gPlayerControllers) # $a1, 0x8005
/* 226F9C 801DBDAC 94A58F20 */  lhu   $a1, %lo(gPlayerControllers)($a1)
/* 226FA0 801DBDB0 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 226FA4 801DBDB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 226FA8 801DBDB8 30A20C00 */  andi  $v0, $a1, 0xc00
/* 226FAC 801DBDBC 10400009 */  beqz  $v0, .L801DBDE4_ovl17
/* 226FB0 801DBDC0 30AD0300 */   andi  $t5, $a1, 0x300
/* 226FB4 801DBDC4 30AE0003 */  andi  $t6, $a1, 3
/* 226FB8 801DBDC8 11C00006 */  beqz  $t6, .L801DBDE4_ovl17
/* 226FBC 801DBDCC 3C01800D */   lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 226FC0 801DBDD0 C42E7170 */  lwc1  $f14, %lo(D_800D7170)($at)
/* 226FC4 801DBDD4 3C01801E */  lui   $at, %hi(D_801E5530) # $at, 0x801e
/* 226FC8 801DBDD8 C4245530 */  lwc1  $f4, %lo(D_801E5530)($at)
/* 226FCC 801DBDDC 10000004 */  b     .L801DBDF0_ovl17
/* 226FD0 801DBDE0 46047403 */   div.s $f16, $f14, $f4
.L801DBDE4_ovl17:
/* 226FD4 801DBDE4 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 226FD8 801DBDE8 C42E7170 */  lwc1  $f14, %lo(D_800D7170)($at)
/* 226FDC 801DBDEC 46007406 */  mov.s $f16, $f14
.L801DBDF0_ovl17:
/* 226FE0 801DBDF0 10400039 */  beqz  $v0, .L801DBED8_ovl17
/* 226FE4 801DBDF4 3C08800F */   lui   $t0, %hi(D_800EAFA0) # $t0, 0x800f
/* 226FE8 801DBDF8 30AF0800 */  andi  $t7, $a1, 0x800
/* 226FEC 801DBDFC 11E0001B */  beqz  $t7, .L801DBE6C_ovl17
/* 226FF0 801DBE00 3C048005 */ lui $a0, %hi(D_8004A7C4)
/* 226FF4 801DBE04 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 226FF8 801DBE08 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 226FFC 801DBE0C 3C01801E */  lui   $at, %hi(D_801E5534) # $at, 0x801e
/* 227000 801DBE10 C4265534 */  lwc1  $f6, %lo(D_801E5534)($at)
/* 227004 801DBE14 8C980000 */  lw    $t8, ($a0)
/* 227008 801DBE18 3C0A800F */  lui   $t2, %hi(D_800EAC20) # $t2, 0x800f
/* 22700C 801DBE1C 46067082 */  mul.s $f2, $f14, $f6
/* 227010 801DBE20 254AAC20 */  addiu $t2, %lo(D_800EAC20) # addiu $t2, $t2, -0x53e0
/* 227014 801DBE24 0018C880 */  sll   $t9, $t8, 2
/* 227018 801DBE28 01591021 */  addu  $v0, $t2, $t9
/* 22701C 801DBE2C C4480000 */  lwc1  $f8, ($v0)
/* 227020 801DBE30 46024280 */  add.s $f10, $f8, $f2
/* 227024 801DBE34 E44A0000 */  swc1  $f10, ($v0)
/* 227028 801DBE38 8C830000 */  lw    $v1, ($a0)
/* 22702C 801DBE3C 00031880 */  sll   $v1, $v1, 2
/* 227030 801DBE40 01431021 */  addu  $v0, $t2, $v1
/* 227034 801DBE44 C4440000 */  lwc1  $f4, ($v0)
/* 227038 801DBE48 4604803C */  c.lt.s $f16, $f4
/* 22703C 801DBE4C 00000000 */  nop   
/* 227040 801DBE50 4502001F */  bc1fl .L801DBED0_ovl17
/* 227044 801DBE54 44809000 */   mtc1  $zero, $f18
/* 227048 801DBE58 E4500000 */  swc1  $f16, ($v0)
/* 22704C 801DBE5C 8C830000 */  lw    $v1, ($a0)
/* 227050 801DBE60 44809000 */  mtc1  $zero, $f18
/* 227054 801DBE64 10000048 */  b     .L801DBF88_ovl17
/* 227058 801DBE68 00031880 */   sll   $v1, $v1, 2
.L801DBE6C_ovl17:
/* 22705C 801DBE6C 8C84A7C4 */ lw $a0, %lo(D_8004A7C4)($a0)
/* 227060 801DBE70 3C01801E */  lui   $at, %hi(D_801E5538) # $at, 0x801e
/* 227064 801DBE74 C4265538 */  lwc1  $f6, %lo(D_801E5538)($at)
/* 227068 801DBE78 8C8B0000 */  lw    $t3, ($a0)
/* 22706C 801DBE7C 3C0A800F */  lui   $t2, %hi(D_800EAC20) # $t2, 0x800f
/* 227070 801DBE80 46067082 */  mul.s $f2, $f14, $f6
/* 227074 801DBE84 254AAC20 */  addiu $t2, %lo(D_800EAC20) # addiu $t2, $t2, -0x53e0
/* 227078 801DBE88 000B6080 */  sll   $t4, $t3, 2
/* 22707C 801DBE8C 014C1021 */  addu  $v0, $t2, $t4
/* 227080 801DBE90 C4480000 */  lwc1  $f8, ($v0)
/* 227084 801DBE94 46008007 */  neg.s $f0, $f16
/* 227088 801DBE98 46024281 */  sub.s $f10, $f8, $f2
/* 22708C 801DBE9C E44A0000 */  swc1  $f10, ($v0)
/* 227090 801DBEA0 8C830000 */  lw    $v1, ($a0)
/* 227094 801DBEA4 00031880 */  sll   $v1, $v1, 2
/* 227098 801DBEA8 01431021 */  addu  $v0, $t2, $v1
/* 22709C 801DBEAC C4440000 */  lwc1  $f4, ($v0)
/* 2270A0 801DBEB0 4600203C */  c.lt.s $f4, $f0
/* 2270A4 801DBEB4 00000000 */  nop   
/* 2270A8 801DBEB8 45020005 */  bc1fl .L801DBED0_ovl17
/* 2270AC 801DBEBC 44809000 */   mtc1  $zero, $f18
/* 2270B0 801DBEC0 E4400000 */  swc1  $f0, ($v0)
/* 2270B4 801DBEC4 8C830000 */  lw    $v1, ($a0)
/* 2270B8 801DBEC8 00031880 */  sll   $v1, $v1, 2
/* 2270BC 801DBECC 44809000 */  mtc1  $zero, $f18
.L801DBED0_ovl17:
/* 2270C0 801DBED0 1000002D */  b     .L801DBF88_ovl17
/* 2270C4 801DBED4 00000000 */   nop   
.L801DBED8_ovl17:
/* 2270C8 801DBED8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 2270CC 801DBEDC 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 2270D0 801DBEE0 3C0A800F */  lui   $t2, %hi(D_800EAC20) # $t2, 0x800f
/* 2270D4 801DBEE4 254AAC20 */  addiu $t2, %lo(D_800EAC20) # addiu $t2, $t2, -0x53e0
/* 2270D8 801DBEE8 8C830000 */  lw    $v1, ($a0)
/* 2270DC 801DBEEC 44809000 */  mtc1  $zero, $f18
/* 2270E0 801DBEF0 3C01801E */  lui   $at, %hi(D_801E553C) # $at, 0x801e
/* 2270E4 801DBEF4 00031880 */  sll   $v1, $v1, 2
/* 2270E8 801DBEF8 01431021 */  addu  $v0, $t2, $v1
/* 2270EC 801DBEFC C4400000 */  lwc1  $f0, ($v0)
/* 2270F0 801DBF00 4612003C */  c.lt.s $f0, $f18
/* 2270F4 801DBF04 00000000 */  nop   
/* 2270F8 801DBF08 45020004 */  bc1fl .L801DBF1C_ovl17
/* 2270FC 801DBF0C 46000306 */   mov.s $f12, $f0
/* 227100 801DBF10 10000002 */  b     .L801DBF1C_ovl17
/* 227104 801DBF14 46000307 */   neg.s $f12, $f0
/* 227108 801DBF18 46000306 */  mov.s $f12, $f0
.L801DBF1C_ovl17:
/* 22710C 801DBF1C C426553C */  lwc1  $f6, %lo(D_801E553C)($at)
/* 227110 801DBF20 46067082 */  mul.s $f2, $f14, $f6
/* 227114 801DBF24 4602603C */  c.lt.s $f12, $f2
/* 227118 801DBF28 00000000 */  nop   
/* 22711C 801DBF2C 45020006 */  bc1fl .L801DBF48_ovl17
/* 227120 801DBF30 4600103E */   c.le.s $f2, $f0
/* 227124 801DBF34 E4520000 */  swc1  $f18, ($v0)
/* 227128 801DBF38 8C830000 */  lw    $v1, ($a0)
/* 22712C 801DBF3C 10000012 */  b     .L801DBF88_ovl17
/* 227130 801DBF40 00031880 */   sll   $v1, $v1, 2
/* 227134 801DBF44 4600103E */  c.le.s $f2, $f0
.L801DBF48_ovl17:
/* 227138 801DBF48 00000000 */  nop   
/* 22713C 801DBF4C 45020007 */  bc1fl .L801DBF6C_ovl17
/* 227140 801DBF50 4602003E */   c.le.s $f0, $f2
/* 227144 801DBF54 46020201 */  sub.s $f8, $f0, $f2
/* 227148 801DBF58 E4480000 */  swc1  $f8, ($v0)
/* 22714C 801DBF5C 8C830000 */  lw    $v1, ($a0)
/* 227150 801DBF60 10000009 */  b     .L801DBF88_ovl17
/* 227154 801DBF64 00031880 */   sll   $v1, $v1, 2
/* 227158 801DBF68 4602003E */  c.le.s $f0, $f2
.L801DBF6C_ovl17:
/* 22715C 801DBF6C 00000000 */  nop   
/* 227160 801DBF70 45000005 */  bc1f  .L801DBF88_ovl17
/* 227164 801DBF74 00000000 */   nop   
/* 227168 801DBF78 46020280 */  add.s $f10, $f0, $f2
/* 22716C 801DBF7C E44A0000 */  swc1  $f10, ($v0)
/* 227170 801DBF80 8C830000 */  lw    $v1, ($a0)
/* 227174 801DBF84 00031880 */  sll   $v1, $v1, 2
.L801DBF88_ovl17:
/* 227178 801DBF88 11A00028 */  beqz  $t5, .L801DC02C_ovl17
/* 22717C 801DBF8C 2508AFA0 */   addiu $t0, %lo(D_800EAFA0) # addiu $t0, $t0, -0x5060
/* 227180 801DBF90 30AE0100 */  andi  $t6, $a1, 0x100
/* 227184 801DBF94 11C00013 */  beqz  $t6, .L801DBFE4_ovl17
/* 227188 801DBF98 3C09800F */ lui $t1, %hi(D_800E9AA0)
/* 22718C 801DBF9C 3C09800F */  lui   $t1, %hi(D_800EADE0) # $t1, 0x800f
/* 227190 801DBFA0 2529ADE0 */  addiu $t1, %lo(D_800EADE0) # addiu $t1, $t1, -0x5220
/* 227194 801DBFA4 01231021 */  addu  $v0, $t1, $v1
/* 227198 801DBFA8 C4440000 */  lwc1  $f4, ($v0)
/* 22719C 801DBFAC 46022180 */  add.s $f6, $f4, $f2
/* 2271A0 801DBFB0 E4460000 */  swc1  $f6, ($v0)
/* 2271A4 801DBFB4 8C830000 */  lw    $v1, ($a0)
/* 2271A8 801DBFB8 00031880 */  sll   $v1, $v1, 2
/* 2271AC 801DBFBC 01231021 */  addu  $v0, $t1, $v1
/* 2271B0 801DBFC0 C4480000 */  lwc1  $f8, ($v0)
/* 2271B4 801DBFC4 4608803C */  c.lt.s $f16, $f8
/* 2271B8 801DBFC8 00000000 */  nop   
/* 2271BC 801DBFCC 4502003C */  bc1fl .L801DC0C0_ovl17
/* 2271C0 801DBFD0 01037821 */   addu  $t7, $t0, $v1
/* 2271C4 801DBFD4 E4500000 */  swc1  $f16, ($v0)
/* 2271C8 801DBFD8 8C830000 */  lw    $v1, ($a0)
/* 2271CC 801DBFDC 10000037 */  b     .L801DC0BC_ovl17
/* 2271D0 801DBFE0 00031880 */   sll   $v1, $v1, 2
.L801DBFE4_ovl17:
/* 2271D4 801DBFE4 2529ADE0 */  addiu $t1, $t1, -0x5220
/* 2271D8 801DBFE8 01231021 */  addu  $v0, $t1, $v1
/* 2271DC 801DBFEC C44A0000 */  lwc1  $f10, ($v0)
/* 2271E0 801DBFF0 46008007 */  neg.s $f0, $f16
/* 2271E4 801DBFF4 46025101 */  sub.s $f4, $f10, $f2
/* 2271E8 801DBFF8 E4440000 */  swc1  $f4, ($v0)
/* 2271EC 801DBFFC 8C830000 */  lw    $v1, ($a0)
/* 2271F0 801DC000 00031880 */  sll   $v1, $v1, 2
/* 2271F4 801DC004 01231021 */  addu  $v0, $t1, $v1
/* 2271F8 801DC008 C4460000 */  lwc1  $f6, ($v0)
/* 2271FC 801DC00C 4600303C */  c.lt.s $f6, $f0
/* 227200 801DC010 00000000 */  nop   
/* 227204 801DC014 4502002A */  bc1fl .L801DC0C0_ovl17
/* 227208 801DC018 01037821 */   addu  $t7, $t0, $v1
/* 22720C 801DC01C E4400000 */  swc1  $f0, ($v0)
/* 227210 801DC020 8C830000 */  lw    $v1, ($a0)
/* 227214 801DC024 10000025 */  b     .L801DC0BC_ovl17
/* 227218 801DC028 00031880 */   sll   $v1, $v1, 2
.L801DC02C_ovl17:
/* 22721C 801DC02C 3C09800F */  lui   $t1, %hi(D_800EADE0) # $t1, 0x800f
/* 227220 801DC030 2529ADE0 */  addiu $t1, %lo(D_800EADE0) # addiu $t1, $t1, -0x5220
/* 227224 801DC034 01231021 */  addu  $v0, $t1, $v1
/* 227228 801DC038 C4400000 */  lwc1  $f0, ($v0)
/* 22722C 801DC03C 4612003C */  c.lt.s $f0, $f18
/* 227230 801DC040 00000000 */  nop   
/* 227234 801DC044 45020004 */  bc1fl .L801DC058_ovl17
/* 227238 801DC048 46000306 */   mov.s $f12, $f0
/* 22723C 801DC04C 10000002 */  b     .L801DC058_ovl17
/* 227240 801DC050 46000307 */   neg.s $f12, $f0
/* 227244 801DC054 46000306 */  mov.s $f12, $f0
.L801DC058_ovl17:
/* 227248 801DC058 4602603C */  c.lt.s $f12, $f2
/* 22724C 801DC05C 00000000 */  nop   
/* 227250 801DC060 45020006 */  bc1fl .L801DC07C_ovl17
/* 227254 801DC064 4600103E */   c.le.s $f2, $f0
/* 227258 801DC068 E4520000 */  swc1  $f18, ($v0)
/* 22725C 801DC06C 8C830000 */  lw    $v1, ($a0)
/* 227260 801DC070 10000012 */  b     .L801DC0BC_ovl17
/* 227264 801DC074 00031880 */   sll   $v1, $v1, 2
/* 227268 801DC078 4600103E */  c.le.s $f2, $f0
.L801DC07C_ovl17:
/* 22726C 801DC07C 00000000 */  nop   
/* 227270 801DC080 45020007 */  bc1fl .L801DC0A0_ovl17
/* 227274 801DC084 4602003E */   c.le.s $f0, $f2
/* 227278 801DC088 46020201 */  sub.s $f8, $f0, $f2
/* 22727C 801DC08C E4480000 */  swc1  $f8, ($v0)
/* 227280 801DC090 8C830000 */  lw    $v1, ($a0)
/* 227284 801DC094 10000009 */  b     .L801DC0BC_ovl17
/* 227288 801DC098 00031880 */   sll   $v1, $v1, 2
/* 22728C 801DC09C 4602003E */  c.le.s $f0, $f2
.L801DC0A0_ovl17:
/* 227290 801DC0A0 00000000 */  nop   
/* 227294 801DC0A4 45020006 */  bc1fl .L801DC0C0_ovl17
/* 227298 801DC0A8 01037821 */   addu  $t7, $t0, $v1
/* 22729C 801DC0AC 46020280 */  add.s $f10, $f0, $f2
/* 2272A0 801DC0B0 E44A0000 */  swc1  $f10, ($v0)
/* 2272A4 801DC0B4 8C830000 */  lw    $v1, ($a0)
/* 2272A8 801DC0B8 00031880 */  sll   $v1, $v1, 2
.L801DC0BC_ovl17:
/* 2272AC 801DC0BC 01037821 */  addu  $t7, $t0, $v1
.L801DC0C0_ovl17:
/* 2272B0 801DC0C0 30B80030 */  andi  $t8, $a1, 0x30
/* 2272B4 801DC0C4 13000016 */  beqz  $t8, .L801DC120_ovl17
/* 2272B8 801DC0C8 E5F20000 */   swc1  $f18, ($t7)
/* 2272BC 801DC0CC 30B90010 */  andi  $t9, $a1, 0x10
/* 2272C0 801DC0D0 13200009 */  beqz  $t9, .L801DC0F8_ovl17
/* 2272C4 801DC0D4 30AD0020 */   andi  $t5, $a1, 0x20
/* 2272C8 801DC0D8 8C8B0000 */  lw    $t3, ($a0)
/* 2272CC 801DC0DC 3C01801E */  lui   $at, %hi(D_801E5540) # $at, 0x801e
/* 2272D0 801DC0E0 C4265540 */  lwc1  $f6, %lo(D_801E5540)($at)
/* 2272D4 801DC0E4 000B6080 */  sll   $t4, $t3, 2
/* 2272D8 801DC0E8 010C1021 */  addu  $v0, $t0, $t4
/* 2272DC 801DC0EC C4440000 */  lwc1  $f4, ($v0)
/* 2272E0 801DC0F0 46062200 */  add.s $f8, $f4, $f6
/* 2272E4 801DC0F4 E4480000 */  swc1  $f8, ($v0)
.L801DC0F8_ovl17:
/* 2272E8 801DC0F8 11A00009 */  beqz  $t5, .L801DC120_ovl17
/* 2272EC 801DC0FC 00000000 */   nop   
/* 2272F0 801DC100 8C8E0000 */  lw    $t6, ($a0)
/* 2272F4 801DC104 3C01801E */  lui   $at, %hi(D_801E5544) # $at, 0x801e
/* 2272F8 801DC108 C4245544 */  lwc1  $f4, %lo(D_801E5544)($at)
/* 2272FC 801DC10C 000E7880 */  sll   $t7, $t6, 2
/* 227300 801DC110 010F1021 */  addu  $v0, $t0, $t7
/* 227304 801DC114 C44A0000 */  lwc1  $f10, ($v0)
/* 227308 801DC118 46045181 */  sub.s $f6, $f10, $f4
/* 22730C 801DC11C E4460000 */  swc1  $f6, ($v0)
.L801DC120_ovl17:
/* 227310 801DC120 0C00C304 */  jal   guMtxIdentF
/* 227314 801DC124 27A4007C */   addiu $a0, $sp, 0x7c
/* 227318 801DC128 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 22731C 801DC12C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 227320 801DC130 3C08800F */  lui   $t0, %hi(D_800EAFA0) # $t0, 0x800f
/* 227324 801DC134 3C09800F */  lui   $t1, %hi(D_800EADE0) # $t1, 0x800f
/* 227328 801DC138 8F030000 */  lw    $v1, ($t8)
/* 22732C 801DC13C 3C0A800F */  lui   $t2, %hi(D_800EAC20) # $t2, 0x800f
/* 227330 801DC140 254AAC20 */  addiu $t2, %lo(D_800EAC20) # addiu $t2, $t2, -0x53e0
/* 227334 801DC144 00031880 */  sll   $v1, $v1, 2
/* 227338 801DC148 2529ADE0 */  addiu $t1, %lo(D_800EADE0) # addiu $t1, $t1, -0x5220
/* 22733C 801DC14C 2508AFA0 */  addiu $t0, %lo(D_800EAFA0) # addiu $t0, $t0, -0x5060
/* 227340 801DC150 01036021 */  addu  $t4, $t0, $v1
/* 227344 801DC154 01235821 */  addu  $t3, $t1, $v1
/* 227348 801DC158 0143C821 */  addu  $t9, $t2, $v1
/* 22734C 801DC15C 8F250000 */  lw    $a1, ($t9)
/* 227350 801DC160 8D660000 */  lw    $a2, ($t3)
/* 227354 801DC164 8D870000 */  lw    $a3, ($t4)
/* 227358 801DC168 0C006EEB */  jal   HS64_MkRotationMtxF
/* 22735C 801DC16C 27A4003C */   addiu $a0, $sp, 0x3c
/* 227360 801DC170 27A4007C */  addiu $a0, $sp, 0x7c
/* 227364 801DC174 00803025 */  move  $a2, $a0
/* 227368 801DC178 0C00D034 */  jal   guMtxCatF
/* 22736C 801DC17C 27A5003C */   addiu $a1, $sp, 0x3c
/* 227370 801DC180 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 227374 801DC184 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 227378 801DC188 3C05800F */ lui $a1, %hi(D_800EA6E0)
/* 22737C 801DC18C 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 227380 801DC190 8DA30000 */  lw    $v1, ($t5)
/* 227384 801DC194 3C07800F */ lui $a3, %hi(D_800EAA60)
/* 227388 801DC198 27A4003C */  addiu $a0, $sp, 0x3c
/* 22738C 801DC19C 00031880 */  sll   $v1, $v1, 2
/* 227390 801DC1A0 00A32821 */  addu  $a1, $a1, $v1
/* 227394 801DC1A4 00C33021 */  addu  $a2, $a2, $v1
/* 227398 801DC1A8 00E33821 */  addu  $a3, $a3, $v1
/* 22739C 801DC1AC 8CE7AA60 */ lw $a3, %lo(D_800EAA60)($a3)
/* 2273A0 801DC1B0 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 2273A4 801DC1B4 0C006EEB */  jal   HS64_MkRotationMtxF
/* 2273A8 801DC1B8 8CA5A6E0 */ lw $a1, %lo(D_800EA6E0)($a1)
/* 2273AC 801DC1BC 27A6007C */  addiu $a2, $sp, 0x7c
/* 2273B0 801DC1C0 00C02025 */  move  $a0, $a2
/* 2273B4 801DC1C4 0C00D034 */  jal   guMtxCatF
/* 2273B8 801DC1C8 27A5003C */   addiu $a1, $sp, 0x3c
/* 2273BC 801DC1CC C7AC0084 */  lwc1  $f12, 0x84($sp)
/* 2273C0 801DC1D0 0C006203 */  jal   asinf
/* 2273C4 801DC1D4 46006307 */   neg.s $f12, $f12
/* 2273C8 801DC1D8 3C01801E */  lui   $at, %hi(D_801E5548) # $at, 0x801e
/* 2273CC 801DC1DC C4225548 */  lwc1  $f2, %lo(D_801E5548)($at)
/* 2273D0 801DC1E0 E7A000CC */  swc1  $f0, 0xcc($sp)
/* 2273D4 801DC1E4 3C01801E */  lui   $at, %hi(D_801E554C) # $at, 0x801e
/* 2273D8 801DC1E8 46020032 */  c.eq.s $f0, $f2
/* 2273DC 801DC1EC 00000000 */  nop   
/* 2273E0 801DC1F0 45030008 */  bc1tl .L801DC214_ovl17
/* 2273E4 801DC1F4 46020032 */   c.eq.s $f0, $f2
/* 2273E8 801DC1F8 C428554C */  lwc1  $f8, %lo(D_801E554C)($at)
/* 2273EC 801DC1FC C7AC0094 */  lwc1  $f12, 0x94($sp)
/* 2273F0 801DC200 46080032 */  c.eq.s $f0, $f8
/* 2273F4 801DC204 00000000 */  nop   
/* 2273F8 801DC208 45000011 */  bc1f  .L801DC250_ovl17
/* 2273FC 801DC20C 00000000 */   nop   
/* 227400 801DC210 46020032 */  c.eq.s $f0, $f2
.L801DC214_ovl17:
/* 227404 801DC214 C7AC008C */  lwc1  $f12, 0x8c($sp)
/* 227408 801DC218 C7AE0090 */  lwc1  $f14, 0x90($sp)
/* 22740C 801DC21C 45000006 */  bc1f  .L801DC238_ovl17
/* 227410 801DC220 00000000 */   nop   
/* 227414 801DC224 C7AC008C */  lwc1  $f12, 0x8c($sp)
/* 227418 801DC228 0C0061C3 */  jal   atan2f
/* 22741C 801DC22C C7AE0090 */   lwc1  $f14, 0x90($sp)
/* 227420 801DC230 10000004 */  b     .L801DC244_ovl17
/* 227424 801DC234 E7A000C8 */   swc1  $f0, 0xc8($sp)
.L801DC238_ovl17:
/* 227428 801DC238 0C0061C3 */  jal   atan2f
/* 22742C 801DC23C 46006307 */   neg.s $f12, $f12
/* 227430 801DC240 E7A000C8 */  swc1  $f0, 0xc8($sp)
.L801DC244_ovl17:
/* 227434 801DC244 44805000 */  mtc1  $zero, $f10
/* 227438 801DC248 10000008 */  b     .L801DC26C_ovl17
/* 22743C 801DC24C E7AA00D0 */   swc1  $f10, 0xd0($sp)
.L801DC250_ovl17:
/* 227440 801DC250 0C0061C3 */  jal   atan2f
/* 227444 801DC254 C7AE00A4 */   lwc1  $f14, 0xa4($sp)
/* 227448 801DC258 E7A000C8 */  swc1  $f0, 0xc8($sp)
/* 22744C 801DC25C C7AC0080 */  lwc1  $f12, 0x80($sp)
/* 227450 801DC260 0C0061C3 */  jal   atan2f
/* 227454 801DC264 C7AE007C */   lwc1  $f14, 0x7c($sp)
/* 227458 801DC268 E7A000D0 */  swc1  $f0, 0xd0($sp)
.L801DC26C_ovl17:
/* 22745C 801DC26C 0C029166 */  jal   func_800A4598
/* 227460 801DC270 27A400C8 */   addiu $a0, $sp, 0xc8
/* 227464 801DC274 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 227468 801DC278 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 22746C 801DC27C C7A400C8 */  lwc1  $f4, 0xc8($sp)
/* 227470 801DC280 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 227474 801DC284 8C8F0000 */  lw    $t7, ($a0)
/* 227478 801DC288 C7A600CC */  lwc1  $f6, 0xcc($sp)
/* 22747C 801DC28C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 227480 801DC290 000FC080 */  sll   $t8, $t7, 2
/* 227484 801DC294 00380821 */  addu  $at, $at, $t8
/* 227488 801DC298 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 22748C 801DC29C 8C990000 */  lw    $t9, ($a0)
/* 227490 801DC2A0 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 227494 801DC2A4 C7A800D0 */  lwc1  $f8, 0xd0($sp)
/* 227498 801DC2A8 00195880 */  sll   $t3, $t9, 2
/* 22749C 801DC2AC 002B0821 */  addu  $at, $at, $t3
/* 2274A0 801DC2B0 E426A8A0 */ swc1 $f6, %lo(D_800EA8A0)($at)
/* 2274A4 801DC2B4 8C8C0000 */  lw    $t4, ($a0)
/* 2274A8 801DC2B8 3C01800F */ lui $at, %hi(D_800EAA60)
/* 2274AC 801DC2BC 27BD00D8 */  addiu $sp, $sp, 0xd8
/* 2274B0 801DC2C0 000C6880 */  sll   $t5, $t4, 2
/* 2274B4 801DC2C4 002D0821 */  addu  $at, $at, $t5
/* 2274B8 801DC2C8 03E00008 */  jr    $ra
/* 2274BC 801DC2CC E428AA60 */ swc1 $f8, %lo(D_800EAA60)($at)

.type func_801DBDA8_ovl17, @function
.size func_801DBDA8_ovl17, . - func_801DBDA8_ovl17

glabel func_801DC2D0_ovl17
/* 2274C0 801DC2D0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 2274C4 801DC2D4 3C0E801E */  lui   $t6, %hi(D_801E4E60) # $t6, 0x801e
/* 2274C8 801DC2D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2274CC 801DC2DC 25CE4E60 */  addiu $t6, %lo(D_801E4E60) # addiu $t6, $t6, 0x4e60
/* 2274D0 801DC2E0 8DD80000 */  lw    $t8, ($t6)
/* 2274D4 801DC2E4 27A4001C */  addiu $a0, $sp, 0x1c
/* 2274D8 801DC2E8 AC980000 */  sw    $t8, ($a0)
/* 2274DC 801DC2EC 8DCF0004 */  lw    $t7, 4($t6)
/* 2274E0 801DC2F0 AC8F0004 */  sw    $t7, 4($a0)
/* 2274E4 801DC2F4 8DD80008 */  lw    $t8, 8($t6)
/* 2274E8 801DC2F8 0C006328 */  jal   lbvector_Normalize
/* 2274EC 801DC2FC AC980008 */   sw    $t8, 8($a0)
/* 2274F0 801DC300 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 2274F4 801DC304 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 2274F8 801DC308 3C06800F */ lui $a2, %hi(D_800EA6E0)
/* 2274FC 801DC30C 27A4001C */  addiu $a0, $sp, 0x1c
/* 227500 801DC310 8F280000 */  lw    $t0, ($t9)
/* 227504 801DC314 24050001 */  li    $a1, 1
/* 227508 801DC318 00084880 */  sll   $t1, $t0, 2
/* 22750C 801DC31C 00C93021 */  addu  $a2, $a2, $t1
/* 227510 801DC320 0C006424 */  jal   lbvector_Rotate
/* 227514 801DC324 8CC6A6E0 */ lw $a2, %lo(D_800EA6E0)($a2)
/* 227518 801DC328 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 22751C 801DC32C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 227520 801DC330 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 227524 801DC334 27A4001C */  addiu $a0, $sp, 0x1c
/* 227528 801DC338 8D4B0000 */  lw    $t3, ($t2)
/* 22752C 801DC33C 24050002 */  li    $a1, 2
/* 227530 801DC340 000B6080 */  sll   $t4, $t3, 2
/* 227534 801DC344 00CC3021 */  addu  $a2, $a2, $t4
/* 227538 801DC348 0C006424 */  jal   lbvector_Rotate
/* 22753C 801DC34C 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 227540 801DC350 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 227544 801DC354 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 227548 801DC358 3C06800F */ lui $a2, %hi(D_800EAA60)
/* 22754C 801DC35C 27A4001C */  addiu $a0, $sp, 0x1c
/* 227550 801DC360 8DAE0000 */  lw    $t6, ($t5)
/* 227554 801DC364 24050004 */  li    $a1, 4
/* 227558 801DC368 000E7880 */  sll   $t7, $t6, 2
/* 22755C 801DC36C 00CF3021 */  addu  $a2, $a2, $t7
/* 227560 801DC370 0C006424 */  jal   lbvector_Rotate
/* 227564 801DC374 8CC6AA60 */ lw $a2, %lo(D_800EAA60)($a2)
/* 227568 801DC378 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 22756C 801DC37C 3C01800D */  lui   $at, %hi(D_800D716C) # $at, 0x800d
/* 227570 801DC380 C420716C */  lwc1  $f0, %lo(D_800D716C)($at)
/* 227574 801DC384 46002187 */  neg.s $f6, $f4
/* 227578 801DC388 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22757C 801DC38C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 227580 801DC390 46003202 */  mul.s $f8, $f6, $f0
/* 227584 801DC394 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 227588 801DC398 8C580000 */  lw    $t8, ($v0)
/* 22758C 801DC39C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 227590 801DC3A0 46005407 */  neg.s $f16, $f10
/* 227594 801DC3A4 0018C880 */  sll   $t9, $t8, 2
/* 227598 801DC3A8 46008482 */  mul.s $f18, $f16, $f0
/* 22759C 801DC3AC 00390821 */  addu  $at, $at, $t9
/* 2275A0 801DC3B0 E42825D0 */ swc1 $f8, %lo(gEntitiesNextPosXArray)($at)
/* 2275A4 801DC3B4 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 2275A8 801DC3B8 8C480000 */  lw    $t0, ($v0)
/* 2275AC 801DC3BC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2275B0 801DC3C0 46002187 */  neg.s $f6, $f4
/* 2275B4 801DC3C4 00084880 */  sll   $t1, $t0, 2
/* 2275B8 801DC3C8 00290821 */  addu  $at, $at, $t1
/* 2275BC 801DC3CC 46003202 */  mul.s $f8, $f6, $f0
/* 2275C0 801DC3D0 E4322790 */ swc1 $f18, %lo(gEntitiesNextPosYArray)($at)
/* 2275C4 801DC3D4 8C4A0000 */  lw    $t2, ($v0)
/* 2275C8 801DC3D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2275CC 801DC3DC 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 2275D0 801DC3E0 000A5880 */  sll   $t3, $t2, 2
/* 2275D4 801DC3E4 002B0821 */  addu  $at, $at, $t3
/* 2275D8 801DC3E8 E4282950 */ swc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 2275DC 801DC3EC 03E00008 */  jr    $ra
/* 2275E0 801DC3F0 27BD0028 */   addiu $sp, $sp, 0x28

.type func_801DC2D0_ovl17, @function
.size func_801DC2D0_ovl17, . - func_801DC2D0_ovl17

glabel func_801DC3F4_ovl17
/* 2275E4 801DC3F4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 2275E8 801DC3F8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 2275EC 801DC3FC 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 2275F0 801DC400 8C430000 */  lw    $v1, ($v0)
/* 2275F4 801DC404 00031880 */  sll   $v1, $v1, 2
/* 2275F8 801DC408 00230821 */  addu  $at, $at, $v1
/* 2275FC 801DC40C C424A6E0 */ lwc1 $f4, %lo(D_800EA6E0)($at)
/* 227600 801DC410 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 227604 801DC414 00230821 */  addu  $at, $at, $v1
/* 227608 801DC418 E4244010 */ swc1 $f4, %lo(gEntitiesAngleXArray)($at)
/* 22760C 801DC41C 8C430000 */  lw    $v1, ($v0)
/* 227610 801DC420 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 227614 801DC424 00031880 */  sll   $v1, $v1, 2
/* 227618 801DC428 00230821 */  addu  $at, $at, $v1
/* 22761C 801DC42C C426A8A0 */ lwc1 $f6, %lo(D_800EA8A0)($at)
/* 227620 801DC430 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 227624 801DC434 00230821 */  addu  $at, $at, $v1
/* 227628 801DC438 E42641D0 */ swc1 $f6, %lo(gEntitiesAngleYArray)($at)
/* 22762C 801DC43C 8C430000 */  lw    $v1, ($v0)
/* 227630 801DC440 3C01800F */ lui $at, %hi(D_800EAA60)
/* 227634 801DC444 00031880 */  sll   $v1, $v1, 2
/* 227638 801DC448 00230821 */  addu  $at, $at, $v1
/* 22763C 801DC44C C428AA60 */ lwc1 $f8, %lo(D_800EAA60)($at)
/* 227640 801DC450 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 227644 801DC454 00230821 */  addu  $at, $at, $v1
/* 227648 801DC458 03E00008 */  jr    $ra
/* 22764C 801DC45C E4284390 */ swc1 $f8, %lo(gEntitiesAngleZArray)($at)

.type func_801DC3F4_ovl17, @function
.size func_801DC3F4_ovl17, . - func_801DC3F4_ovl17

glabel func_801DC460_ovl17
/* 227650 801DC460 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 227654 801DC464 AFB30020 */  sw    $s3, 0x20($sp)
/* 227658 801DC468 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 22765C 801DC46C 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 227660 801DC470 8E630000 */  lw    $v1, ($s3)
/* 227664 801DC474 AFBF0024 */  sw    $ra, 0x24($sp)
/* 227668 801DC478 AFB2001C */  sw    $s2, 0x1c($sp)
/* 22766C 801DC47C AFB10018 */  sw    $s1, 0x18($sp)
/* 227670 801DC480 AFB00014 */  sw    $s0, 0x14($sp)
/* 227674 801DC484 AFA40028 */  sw    $a0, 0x28($sp)
/* 227678 801DC488 8C6F0000 */  lw    $t7, ($v1)
/* 22767C 801DC48C 3C01801E */  lui   $at, %hi(D_801E5550) # $at, 0x801e
/* 227680 801DC490 C4205550 */  lwc1  $f0, %lo(D_801E5550)($at)
/* 227684 801DC494 3C01800E */ lui $at, %hi(D_800DF150)
/* 227688 801DC498 3C0E801E */  lui   $t6, %hi(D_801DC71C) # $t6, 0x801e
/* 22768C 801DC49C 000FC080 */  sll   $t8, $t7, 2
/* 227690 801DC4A0 00380821 */  addu  $at, $at, $t8
/* 227694 801DC4A4 25CEC71C */  addiu $t6, %lo(D_801DC71C) # addiu $t6, $t6, -0x38e4
/* 227698 801DC4A8 AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 22769C 801DC4AC 8C790000 */  lw    $t9, ($v1)
/* 2276A0 801DC4B0 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 2276A4 801DC4B4 00194080 */  sll   $t0, $t9, 2
/* 2276A8 801DC4B8 00280821 */  addu  $at, $at, $t0
/* 2276AC 801DC4BC E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 2276B0 801DC4C0 8C690000 */  lw    $t1, ($v1)
/* 2276B4 801DC4C4 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 2276B8 801DC4C8 00095080 */  sll   $t2, $t1, 2
/* 2276BC 801DC4CC 002A0821 */  addu  $at, $at, $t2
/* 2276C0 801DC4D0 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 2276C4 801DC4D4 8C6B0000 */  lw    $t3, ($v1)
/* 2276C8 801DC4D8 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 2276CC 801DC4DC 000B6080 */  sll   $t4, $t3, 2
/* 2276D0 801DC4E0 002C0821 */  addu  $at, $at, $t4
/* 2276D4 801DC4E4 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 2276D8 801DC4E8 8C6D0000 */  lw    $t5, ($v1)
/* 2276DC 801DC4EC 3C01800E */ lui $at, %hi(D_800DF310)
/* 2276E0 801DC4F0 000D7880 */  sll   $t7, $t5, 2
/* 2276E4 801DC4F4 002F0821 */  addu  $at, $at, $t7
/* 2276E8 801DC4F8 0C008322 */  jal   func_80020C88_ovl17
/* 2276EC 801DC4FC AC20F310 */ sw $zero, %lo(D_800DF310)($at)
/* 2276F0 801DC500 0C029FAD */  jal   func_800A7EB4
/* 2276F4 801DC504 00000000 */   nop   
/* 2276F8 801DC508 8E630000 */  lw    $v1, ($s3)
/* 2276FC 801DC50C 44802000 */  mtc1  $zero, $f4
/* 227700 801DC510 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 227704 801DC514 8C6E0000 */  lw    $t6, ($v1)
/* 227708 801DC518 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 22770C 801DC51C 3C01800E */ lui $at, %hi(D_800E3750)
/* 227710 801DC520 000EC080 */  sll   $t8, $t6, 2
/* 227714 801DC524 0098C821 */  addu  $t9, $a0, $t8
/* 227718 801DC528 E7240000 */  swc1  $f4, ($t9)
/* 22771C 801DC52C 8C620000 */  lw    $v0, ($v1)
/* 227720 801DC530 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 227724 801DC534 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 227728 801DC538 00021080 */  sll   $v0, $v0, 2
/* 22772C 801DC53C 00824021 */  addu  $t0, $a0, $v0
/* 227730 801DC540 C5000000 */  lwc1  $f0, ($t0)
/* 227734 801DC544 00220821 */  addu  $at, $at, $v0
/* 227738 801DC548 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 22773C 801DC54C 8C690000 */  lw    $t1, ($v1)
/* 227740 801DC550 3C01800E */ lui $at, %hi(D_800E3590)
/* 227744 801DC554 00095080 */  sll   $t2, $t1, 2
/* 227748 801DC558 002A0821 */  addu  $at, $at, $t2
/* 22774C 801DC55C E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 227750 801DC560 8C6B0000 */  lw    $t3, ($v1)
/* 227754 801DC564 3C01800E */ lui $at, %hi(D_800E33D0)
/* 227758 801DC568 000B6080 */  sll   $t4, $t3, 2
/* 22775C 801DC56C 002C0821 */  addu  $at, $at, $t4
/* 227760 801DC570 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 227764 801DC574 8C6D0000 */  lw    $t5, ($v1)
/* 227768 801DC578 3C01800E */ lui $at, %hi(D_800E3210)
/* 22776C 801DC57C 000D7880 */  sll   $t7, $t5, 2
/* 227770 801DC580 002F0821 */  addu  $at, $at, $t7
/* 227774 801DC584 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 227778 801DC588 8C6E0000 */  lw    $t6, ($v1)
/* 22777C 801DC58C 3C01800E */ lui $at, %hi(D_800E3050)
/* 227780 801DC590 000EC080 */  sll   $t8, $t6, 2
/* 227784 801DC594 00380821 */  addu  $at, $at, $t8
/* 227788 801DC598 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 22778C 801DC59C 8C790000 */  lw    $t9, ($v1)
/* 227790 801DC5A0 3C01801E */  lui   $at, %hi(D_801E5554) # $at, 0x801e
/* 227794 801DC5A4 C4265554 */  lwc1  $f6, %lo(D_801E5554)($at)
/* 227798 801DC5A8 00194080 */  sll   $t0, $t9, 2
/* 22779C 801DC5AC 00A84821 */  addu  $t1, $a1, $t0
/* 2277A0 801DC5B0 E5260000 */  swc1  $f6, ($t1)
/* 2277A4 801DC5B4 8C620000 */  lw    $v0, ($v1)
/* 2277A8 801DC5B8 3C01800E */ lui $at, %hi(D_800E3C90)
/* 2277AC 801DC5BC 00021080 */  sll   $v0, $v0, 2
/* 2277B0 801DC5C0 00A25021 */  addu  $t2, $a1, $v0
/* 2277B4 801DC5C4 C5420000 */  lwc1  $f2, ($t2)
/* 2277B8 801DC5C8 00220821 */  addu  $at, $at, $v0
/* 2277BC 801DC5CC E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 2277C0 801DC5D0 8C6B0000 */  lw    $t3, ($v1)
/* 2277C4 801DC5D4 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 2277C8 801DC5D8 000B6080 */  sll   $t4, $t3, 2
/* 2277CC 801DC5DC 002C0821 */  addu  $at, $at, $t4
/* 2277D0 801DC5E0 0C04768D */  jal   func_8011DA34
/* 2277D4 801DC5E4 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 2277D8 801DC5E8 0C029D9E */  jal   play_sound
/* 2277DC 801DC5EC 240400D8 */   li    $a0, 216
/* 2277E0 801DC5F0 00002025 */  move  $a0, $zero
/* 2277E4 801DC5F4 0C029D6C */  jal   play_music
/* 2277E8 801DC5F8 24050005 */   li    $a1, 5
/* 2277EC 801DC5FC 0C0771C9 */  jal   func_801DC724_ovl17
/* 2277F0 801DC600 00000000 */   nop   
/* 2277F4 801DC604 240D0400 */  li    $t5, 1024
/* 2277F8 801DC608 3C01800D */  lui   $at, %hi(D_800D6B58) # $at, 0x800d
/* 2277FC 801DC60C AC2D6B58 */  sw    $t5, %lo(D_800D6B58)($at)
/* 227800 801DC610 3C01800D */  lui   $at, %hi(D_800D6B54) # $at, 0x800d
/* 227804 801DC614 240F0001 */  li    $t7, 1
/* 227808 801DC618 AC2F6B54 */  sw    $t7, %lo(D_800D6B54)($at)
/* 22780C 801DC61C 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 227810 801DC620 240E0006 */  li    $t6, 6
/* 227814 801DC624 3C040001 */  lui   $a0, (0x00010684 >> 16) # lui $a0, 1
/* 227818 801DC628 AC2EE4F8 */  sw    $t6, %lo(D_800BE4F8)($at)
/* 22781C 801DC62C 0C02A806 */  jal   func_800AA018
/* 227820 801DC630 34840684 */   ori   $a0, (0x00010684 & 0xFFFF) # ori $a0, $a0, 0x684
/* 227824 801DC634 3C040001 */  lui   $a0, (0x00010685 >> 16) # lui $a0, 1
/* 227828 801DC638 0C02A806 */  jal   func_800AA018
/* 22782C 801DC63C 34840685 */   ori   $a0, (0x00010685 & 0xFFFF) # ori $a0, $a0, 0x685
/* 227830 801DC640 0C02BC9F */  jal   func_800AF27C
/* 227834 801DC644 00000000 */   nop   
/* 227838 801DC648 8E630000 */  lw    $v1, ($s3)
/* 22783C 801DC64C 3C10800F */  lui   $s0, %hi(D_800E9560) # $s0, 0x800f
/* 227840 801DC650 26109560 */  addiu $s0, %lo(D_800E9560) # addiu $s0, $s0, -0x6aa0
/* 227844 801DC654 8C780000 */  lw    $t8, ($v1)
/* 227848 801DC658 3C120001 */  lui   $s2, (0x00010687 >> 16) # lui $s2, 1
/* 22784C 801DC65C 3C110001 */  lui   $s1, (0x00010686 >> 16) # lui $s1, 1
/* 227850 801DC660 0018C880 */  sll   $t9, $t8, 2
/* 227854 801DC664 02194021 */  addu  $t0, $s0, $t9
/* 227858 801DC668 AD000000 */  sw    $zero, ($t0)
/* 22785C 801DC66C 8C690000 */  lw    $t1, ($v1)
/* 227860 801DC670 36310686 */  ori   $s1, (0x00010686 & 0xFFFF) # ori $s1, $s1, 0x686
/* 227864 801DC674 36520687 */  ori   $s2, (0x00010687 & 0xFFFF) # ori $s2, $s2, 0x687
/* 227868 801DC678 00095080 */  sll   $t2, $t1, 2
/* 22786C 801DC67C 020A5821 */  addu  $t3, $s0, $t2
/* 227870 801DC680 8D6C0000 */  lw    $t4, ($t3)
/* 227874 801DC684 5D800015 */  bgtzl $t4, .L801DC6DC_ovl17
/* 227878 801DC688 240B001E */   li    $t3, 30
.L801DC68C_ovl17:
/* 22787C 801DC68C 0C02A806 */  jal   func_800AA018
/* 227880 801DC690 02202025 */   move  $a0, $s1
/* 227884 801DC694 0C02A806 */  jal   func_800AA018
/* 227888 801DC698 02402025 */   move  $a0, $s2
/* 22788C 801DC69C 0C02BC9F */  jal   func_800AF27C
/* 227890 801DC6A0 00000000 */   nop   
/* 227894 801DC6A4 8E630000 */  lw    $v1, ($s3)
/* 227898 801DC6A8 8C6D0000 */  lw    $t5, ($v1)
/* 22789C 801DC6AC 000D7880 */  sll   $t7, $t5, 2
/* 2278A0 801DC6B0 020F1021 */  addu  $v0, $s0, $t7
/* 2278A4 801DC6B4 8C4E0000 */  lw    $t6, ($v0)
/* 2278A8 801DC6B8 25D80001 */  addiu $t8, $t6, 1
/* 2278AC 801DC6BC AC580000 */  sw    $t8, ($v0)
/* 2278B0 801DC6C0 8C790000 */  lw    $t9, ($v1)
/* 2278B4 801DC6C4 00194080 */  sll   $t0, $t9, 2
/* 2278B8 801DC6C8 02084821 */  addu  $t1, $s0, $t0
/* 2278BC 801DC6CC 8D2A0000 */  lw    $t2, ($t1)
/* 2278C0 801DC6D0 1940FFEE */  blez  $t2, .L801DC68C_ovl17
/* 2278C4 801DC6D4 00000000 */   nop   
/* 2278C8 801DC6D8 240B001E */  li    $t3, 30
.L801DC6DC_ovl17:
/* 2278CC 801DC6DC 3C01800D */  lui   $at, %hi(D_800D6B58) # $at, 0x800d
/* 2278D0 801DC6E0 AC2B6B58 */  sw    $t3, %lo(D_800D6B58)($at)
/* 2278D4 801DC6E4 3C01800D */  lui   $at, %hi(D_800D6B54) # $at, 0x800d
/* 2278D8 801DC6E8 240C0001 */  li    $t4, 1
/* 2278DC 801DC6EC AC2C6B54 */  sw    $t4, %lo(D_800D6B54)($at)
/* 2278E0 801DC6F0 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 2278E4 801DC6F4 240D0006 */  li    $t5, 6
/* 2278E8 801DC6F8 0C02BE85 */  jal   func_800AFA14
/* 2278EC 801DC6FC AC2DE4F8 */   sw    $t5, %lo(D_800BE4F8)($at)
/* 2278F0 801DC700 8FBF0024 */  lw    $ra, 0x24($sp)
/* 2278F4 801DC704 8FB00014 */  lw    $s0, 0x14($sp)
/* 2278F8 801DC708 8FB10018 */  lw    $s1, 0x18($sp)
/* 2278FC 801DC70C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 227900 801DC710 8FB30020 */  lw    $s3, 0x20($sp)
/* 227904 801DC714 03E00008 */  jr    $ra
/* 227908 801DC718 27BD0028 */   addiu $sp, $sp, 0x28

.type func_801DC460_ovl17, @function
.size func_801DC460_ovl17, . - func_801DC460_ovl17

glabel func_801DC71C_ovl17
/* 22790C 801DC71C 03E00008 */  jr    $ra
/* 227910 801DC720 AFA40000 */   sw    $a0, ($sp)

.type func_801DC71C_ovl17, @function
.size func_801DC71C_ovl17, . - func_801DC71C_ovl17

glabel func_801DC724_ovl17
/* 227914 801DC724 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 227918 801DC728 3C0E801E */  lui   $t6, %hi(D_801E4E6C) # $t6, 0x801e
/* 22791C 801DC72C AFBF0014 */  sw    $ra, 0x14($sp)
/* 227920 801DC730 25CE4E6C */  addiu $t6, %lo(D_801E4E6C) # addiu $t6, $t6, 0x4e6c
/* 227924 801DC734 8DD80000 */  lw    $t8, ($t6)
/* 227928 801DC738 27A40024 */  addiu $a0, $sp, 0x24
/* 22792C 801DC73C AC980000 */  sw    $t8, ($a0)
/* 227930 801DC740 8DCF0004 */  lw    $t7, 4($t6)
/* 227934 801DC744 AC8F0004 */  sw    $t7, 4($a0)
/* 227938 801DC748 8DD80008 */  lw    $t8, 8($t6)
/* 22793C 801DC74C 0C006328 */  jal   lbvector_Normalize
/* 227940 801DC750 AC980008 */   sw    $t8, 8($a0)
/* 227944 801DC754 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 227948 801DC758 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22794C 801DC75C 3C06800F */ lui $a2, %hi(D_800EA6E0)
/* 227950 801DC760 27A40024 */  addiu $a0, $sp, 0x24
/* 227954 801DC764 8F280000 */  lw    $t0, ($t9)
/* 227958 801DC768 24050001 */  li    $a1, 1
/* 22795C 801DC76C 00084880 */  sll   $t1, $t0, 2
/* 227960 801DC770 00C93021 */  addu  $a2, $a2, $t1
/* 227964 801DC774 0C006424 */  jal   lbvector_Rotate
/* 227968 801DC778 8CC6A6E0 */ lw $a2, %lo(D_800EA6E0)($a2)
/* 22796C 801DC77C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 227970 801DC780 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 227974 801DC784 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 227978 801DC788 27A40024 */  addiu $a0, $sp, 0x24
/* 22797C 801DC78C 8D4B0000 */  lw    $t3, ($t2)
/* 227980 801DC790 24050002 */  li    $a1, 2
/* 227984 801DC794 000B6080 */  sll   $t4, $t3, 2
/* 227988 801DC798 00CC3021 */  addu  $a2, $a2, $t4
/* 22798C 801DC79C 0C006424 */  jal   lbvector_Rotate
/* 227990 801DC7A0 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 227994 801DC7A4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 227998 801DC7A8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 22799C 801DC7AC 3C06800F */ lui $a2, %hi(D_800EAA60)
/* 2279A0 801DC7B0 27A40024 */  addiu $a0, $sp, 0x24
/* 2279A4 801DC7B4 8DAE0000 */  lw    $t6, ($t5)
/* 2279A8 801DC7B8 24050004 */  li    $a1, 4
/* 2279AC 801DC7BC 000E7880 */  sll   $t7, $t6, 2
/* 2279B0 801DC7C0 00CF3021 */  addu  $a2, $a2, $t7
/* 2279B4 801DC7C4 0C006424 */  jal   lbvector_Rotate
/* 2279B8 801DC7C8 8CC6AA60 */ lw $a2, %lo(D_800EAA60)($a2)
/* 2279BC 801DC7CC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 2279C0 801DC7D0 44811000 */  mtc1  $at, $f2
/* 2279C4 801DC7D4 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 2279C8 801DC7D8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 2279CC 801DC7DC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 2279D0 801DC7E0 46022182 */  mul.s $f6, $f4, $f2
/* 2279D4 801DC7E4 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 2279D8 801DC7E8 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 2279DC 801DC7EC 8C580000 */  lw    $t8, ($v0)
/* 2279E0 801DC7F0 46024282 */  mul.s $f10, $f8, $f2
/* 2279E4 801DC7F4 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 2279E8 801DC7F8 44816000 */  mtc1  $at, $f12
/* 2279EC 801DC7FC 46028482 */  mul.s $f18, $f16, $f2
/* 2279F0 801DC800 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 2279F4 801DC804 3C01800E */ lui $at, %hi(D_800E3590)
/* 2279F8 801DC808 0018C880 */  sll   $t9, $t8, 2
/* 2279FC 801DC80C 00390821 */  addu  $at, $at, $t9
/* 227A00 801DC810 E4263590 */ swc1 $f6, %lo(D_800E3590)($at)
/* 227A04 801DC814 460C2002 */  mul.s $f0, $f4, $f12
/* 227A08 801DC818 8C480000 */  lw    $t0, ($v0)
/* 227A0C 801DC81C 3C01800E */ lui $at, %hi(D_800E3750)
/* 227A10 801DC820 44807000 */  mtc1  $zero, $f14
/* 227A14 801DC824 00084880 */  sll   $t1, $t0, 2
/* 227A18 801DC828 00290821 */  addu  $at, $at, $t1
/* 227A1C 801DC82C E42A3750 */ swc1 $f10, %lo(D_800E3750)($at)
/* 227A20 801DC830 8C4A0000 */  lw    $t2, ($v0)
/* 227A24 801DC834 460E003C */  c.lt.s $f0, $f14
/* 227A28 801DC838 3C01800E */ lui $at, %hi(D_800E3910)
/* 227A2C 801DC83C 000A5880 */  sll   $t3, $t2, 2
/* 227A30 801DC840 002B0821 */  addu  $at, $at, $t3
/* 227A34 801DC844 45000008 */  bc1f  .L801DC868_ovl17
/* 227A38 801DC848 E4323910 */ swc1 $f18, %lo(D_800E3910)($at)
/* 227A3C 801DC84C 8C4C0000 */  lw    $t4, ($v0)
/* 227A40 801DC850 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 227A44 801DC854 46000187 */  neg.s $f6, $f0
/* 227A48 801DC858 000C6880 */  sll   $t5, $t4, 2
/* 227A4C 801DC85C 002D0821 */  addu  $at, $at, $t5
/* 227A50 801DC860 10000006 */  b     .L801DC87C_ovl17
/* 227A54 801DC864 E4263AD0 */ swc1 $f6, %lo(D_800E3AD0)($at)
.L801DC868_ovl17:
/* 227A58 801DC868 8C4E0000 */  lw    $t6, ($v0)
/* 227A5C 801DC86C 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 227A60 801DC870 000E7880 */  sll   $t7, $t6, 2
/* 227A64 801DC874 002F0821 */  addu  $at, $at, $t7
/* 227A68 801DC878 E4203AD0 */ swc1 $f0, %lo(D_800E3AD0)($at)
.L801DC87C_ovl17:
/* 227A6C 801DC87C C7A80028 */  lwc1  $f8, 0x28($sp)
/* 227A70 801DC880 460C4002 */  mul.s $f0, $f8, $f12
/* 227A74 801DC884 460E003C */  c.lt.s $f0, $f14
/* 227A78 801DC888 00000000 */  nop   
/* 227A7C 801DC88C 45020009 */  bc1fl .L801DC8B4_ovl17
/* 227A80 801DC890 8C480000 */   lw    $t0, ($v0)
/* 227A84 801DC894 8C580000 */  lw    $t8, ($v0)
/* 227A88 801DC898 3C01800E */ lui $at, %hi(D_800E3C90)
/* 227A8C 801DC89C 46000287 */  neg.s $f10, $f0
/* 227A90 801DC8A0 0018C880 */  sll   $t9, $t8, 2
/* 227A94 801DC8A4 00390821 */  addu  $at, $at, $t9
/* 227A98 801DC8A8 10000006 */  b     .L801DC8C4_ovl17
/* 227A9C 801DC8AC E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
/* 227AA0 801DC8B0 8C480000 */  lw    $t0, ($v0)
.L801DC8B4_ovl17:
/* 227AA4 801DC8B4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 227AA8 801DC8B8 00084880 */  sll   $t1, $t0, 2
/* 227AAC 801DC8BC 00290821 */  addu  $at, $at, $t1
/* 227AB0 801DC8C0 E4203C90 */ swc1 $f0, %lo(D_800E3C90)($at)
.L801DC8C4_ovl17:
/* 227AB4 801DC8C4 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 227AB8 801DC8C8 460C8002 */  mul.s $f0, $f16, $f12
/* 227ABC 801DC8CC 460E003C */  c.lt.s $f0, $f14
/* 227AC0 801DC8D0 00000000 */  nop   
/* 227AC4 801DC8D4 45020009 */  bc1fl .L801DC8FC_ovl17
/* 227AC8 801DC8D8 8C4C0000 */   lw    $t4, ($v0)
/* 227ACC 801DC8DC 8C4A0000 */  lw    $t2, ($v0)
/* 227AD0 801DC8E0 3C01800E */ lui $at, %hi(D_800E3E50)
/* 227AD4 801DC8E4 46000487 */  neg.s $f18, $f0
/* 227AD8 801DC8E8 000A5880 */  sll   $t3, $t2, 2
/* 227ADC 801DC8EC 002B0821 */  addu  $at, $at, $t3
/* 227AE0 801DC8F0 10000006 */  b     .L801DC90C_ovl17
/* 227AE4 801DC8F4 E4323E50 */ swc1 $f18, %lo(D_800E3E50)($at)
/* 227AE8 801DC8F8 8C4C0000 */  lw    $t4, ($v0)
.L801DC8FC_ovl17:
/* 227AEC 801DC8FC 3C01800E */ lui $at, %hi(D_800E3E50)
/* 227AF0 801DC900 000C6880 */  sll   $t5, $t4, 2
/* 227AF4 801DC904 002D0821 */  addu  $at, $at, $t5
/* 227AF8 801DC908 E4203E50 */ swc1 $f0, %lo(D_800E3E50)($at)
.L801DC90C_ovl17:
/* 227AFC 801DC90C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 227B00 801DC910 27BD0030 */  addiu $sp, $sp, 0x30
/* 227B04 801DC914 03E00008 */  jr    $ra
/* 227B08 801DC918 00000000 */   nop   

.type func_801DC724_ovl17, @function
.size func_801DC724_ovl17, . - func_801DC724_ovl17

glabel func_801DC91C_ovl17
/* 227B0C 801DC91C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 227B10 801DC920 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 227B14 801DC924 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 227B18 801DC928 AFBF0014 */  sw    $ra, 0x14($sp)
/* 227B1C 801DC92C AFA40018 */  sw    $a0, 0x18($sp)
/* 227B20 801DC930 8C4E0000 */  lw    $t6, ($v0)
/* 227B24 801DC934 3C06800E */  lui   $a2, %hi(D_800E7CE0) # $a2, 0x800e
/* 227B28 801DC938 24C67CE0 */  addiu $a2, %lo(D_800E7CE0) # addiu $a2, $a2, 0x7ce0
/* 227B2C 801DC93C 000E7880 */  sll   $t7, $t6, 2
/* 227B30 801DC940 00CF2821 */  addu  $a1, $a2, $t7
/* 227B34 801DC944 8CA30000 */  lw    $v1, ($a1)
/* 227B38 801DC948 10600007 */  beqz  $v1, .L801DC968_ovl17
/* 227B3C 801DC94C 2478FFFF */   addiu $t8, $v1, -1
/* 227B40 801DC950 1C600005 */  bgtz  $v1, .L801DC968_ovl17
/* 227B44 801DC954 ACB80000 */   sw    $t8, ($a1)
/* 227B48 801DC958 8C590000 */  lw    $t9, ($v0)
/* 227B4C 801DC95C 00194080 */  sll   $t0, $t9, 2
/* 227B50 801DC960 00C84821 */  addu  $t1, $a2, $t0
/* 227B54 801DC964 AD200000 */  sw    $zero, ($t1)
.L801DC968_ovl17:
/* 227B58 801DC968 8C430000 */  lw    $v1, ($v0)
/* 227B5C 801DC96C 54600004 */  bnezl $v1, .L801DC980_ovl17
/* 227B60 801DC970 8FBF0014 */   lw    $ra, 0x14($sp)
/* 227B64 801DC974 0C04454D */  jal   func_80111534
/* 227B68 801DC978 00602025 */   move  $a0, $v1
/* 227B6C 801DC97C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DC980_ovl17:
/* 227B70 801DC980 27BD0018 */  addiu $sp, $sp, 0x18
/* 227B74 801DC984 03E00008 */  jr    $ra
/* 227B78 801DC988 00000000 */   nop   

.type func_801DC91C_ovl17, @function
.size func_801DC91C_ovl17, . - func_801DC91C_ovl17

glabel func_801DC98C_ovl17
/* 227B7C 801DC98C 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 227B80 801DC990 8C427098 */  lw    $v0, %lo(D_800D7098)($v0)
/* 227B84 801DC994 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 227B88 801DC998 3C0E800D */  lui   $t6, %hi(D_800D799C) # $t6, 0x800d
/* 227B8C 801DC99C 8DCE799C */  lw    $t6, %lo(D_800D799C)($t6)
/* 227B90 801DC9A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 227B94 801DC9A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 227B98 801DC9A8 24010002 */  li    $at, 2
/* 227B9C 801DC9AC 14410005 */  bne   $v0, $at, .L801DC9C4_ovl17
/* 227BA0 801DC9B0 8DD0003C */   lw    $s0, 0x3c($t6)
/* 227BA4 801DC9B4 0C07745F */  jal   func_801DD17C_ovl17
/* 227BA8 801DC9B8 00000000 */   nop   
/* 227BAC 801DC9BC 1000005D */  b     .L801DCB34_ovl17
/* 227BB0 801DC9C0 8FBF001C */   lw    $ra, 0x1c($sp)
.L801DC9C4_ovl17:
/* 227BB4 801DC9C4 3C0F800D */  lui   $t7, %hi(D_800D6B54) # $t7, 0x800d
/* 227BB8 801DC9C8 8DEF6B54 */  lw    $t7, %lo(D_800D6B54)($t7)
/* 227BBC 801DC9CC 24010001 */  li    $at, 1
/* 227BC0 801DC9D0 3C18800D */  lui   $t8, %hi(D_800D7B38) # $t8, 0x800d
/* 227BC4 801DC9D4 15E10005 */  bne   $t7, $at, .L801DC9EC_ovl17
/* 227BC8 801DC9D8 3C19800D */   lui   $t9, %hi(D_800D7B20) # $t9, 0x800d
/* 227BCC 801DC9DC 0C0774AC */  jal   func_801DD2B0_ovl17
/* 227BD0 801DC9E0 00000000 */   nop   
/* 227BD4 801DC9E4 10000053 */  b     .L801DCB34_ovl17
/* 227BD8 801DC9E8 8FBF001C */   lw    $ra, 0x1c($sp)
.L801DC9EC_ovl17:
/* 227BDC 801DC9EC 24010001 */  li    $at, 1
/* 227BE0 801DC9F0 14410008 */  bne   $v0, $at, .L801DCA14_ovl17
/* 227BE4 801DC9F4 27397B20 */   addiu $t9, %lo(D_800D7B20) # addiu $t9, $t9, 0x7b20
/* 227BE8 801DC9F8 3C02800D */  lui   $v0, %hi(D_800D7168) # $v0, 0x800d
/* 227BEC 801DC9FC 24427168 */  addiu $v0, %lo(D_800D7168) # addiu $v0, $v0, 0x7168
/* 227BF0 801DCA00 3C01801E */  lui   $at, %hi(D_801E5558) # $at, 0x801e
/* 227BF4 801DCA04 C4265558 */  lwc1  $f6, %lo(D_801E5558)($at)
/* 227BF8 801DCA08 C4440000 */  lwc1  $f4, ($v0)
/* 227BFC 801DCA0C 46062200 */  add.s $f8, $f4, $f6
/* 227C00 801DCA10 E4480000 */  swc1  $f8, ($v0)
.L801DCA14_ovl17:
/* 227C04 801DCA14 8F290000 */  lw    $t1, ($t9)
/* 227C08 801DCA18 8F280004 */  lw    $t0, 4($t9)
/* 227C0C 801DCA1C 27187B38 */  addiu $t8, %lo(D_800D7B38) # addiu $t8, $t8, 0x7b38
/* 227C10 801DCA20 AF090000 */  sw    $t1, ($t8)
/* 227C14 801DCA24 AF080004 */  sw    $t0, 4($t8)
/* 227C18 801DCA28 8F28000C */  lw    $t0, 0xc($t9)
/* 227C1C 801DCA2C 8F290008 */  lw    $t1, 8($t9)
/* 227C20 801DCA30 27A4002C */  addiu $a0, $sp, 0x2c
/* 227C24 801DCA34 AF08000C */  sw    $t0, 0xc($t8)
/* 227C28 801DCA38 AF090008 */  sw    $t1, 8($t8)
/* 227C2C 801DCA3C 8F290010 */  lw    $t1, 0x10($t9)
/* 227C30 801DCA40 8F280014 */  lw    $t0, 0x14($t9)
/* 227C34 801DCA44 AF090010 */  sw    $t1, 0x10($t8)
/* 227C38 801DCA48 0C0772D1 */  jal   func_801DCB44_ovl17
/* 227C3C 801DCA4C AF080014 */   sw    $t0, 0x14($t8)
/* 227C40 801DCA50 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 227C44 801DCA54 27A4002C */  addiu $a0, $sp, 0x2c
/* 227C48 801DCA58 E60A003C */  swc1  $f10, 0x3c($s0)
/* 227C4C 801DCA5C C7B00030 */  lwc1  $f16, 0x30($sp)
/* 227C50 801DCA60 E6100040 */  swc1  $f16, 0x40($s0)
/* 227C54 801DCA64 C7B20034 */  lwc1  $f18, 0x34($sp)
/* 227C58 801DCA68 0C0773F5 */  jal   func_801DCFD4_ovl17
/* 227C5C 801DCA6C E6120044 */   swc1  $f18, 0x44($s0)
/* 227C60 801DCA70 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 227C64 801DCA74 27A4002C */  addiu $a0, $sp, 0x2c
/* 227C68 801DCA78 E6040048 */  swc1  $f4, 0x48($s0)
/* 227C6C 801DCA7C C7A60030 */  lwc1  $f6, 0x30($sp)
/* 227C70 801DCA80 E606004C */  swc1  $f6, 0x4c($s0)
/* 227C74 801DCA84 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 227C78 801DCA88 0C077410 */  jal   func_801DD040_ovl17
/* 227C7C 801DCA8C E6080050 */   swc1  $f8, 0x50($s0)
/* 227C80 801DCA90 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 227C84 801DCA94 3C01800D */  lui   $at, %hi(D_800D7158) # $at, 0x800d
/* 227C88 801DCA98 8E0C0048 */  lw    $t4, 0x48($s0)
/* 227C8C 801DCA9C E60A0054 */  swc1  $f10, 0x54($s0)
/* 227C90 801DCAA0 C7B00030 */  lwc1  $f16, 0x30($sp)
/* 227C94 801DCAA4 3C0A800D */  lui   $t2, %hi(D_800D7B20) # $t2, 0x800d
/* 227C98 801DCAA8 254A7B20 */  addiu $t2, %lo(D_800D7B20) # addiu $t2, $t2, 0x7b20
/* 227C9C 801DCAAC E6100058 */  swc1  $f16, 0x58($s0)
/* 227CA0 801DCAB0 C7B20034 */  lwc1  $f18, 0x34($sp)
/* 227CA4 801DCAB4 3C0D800D */  lui   $t5, %hi(D_800D7B2C) # $t5, 0x800d
/* 227CA8 801DCAB8 25AD7B2C */  addiu $t5, %lo(D_800D7B2C) # addiu $t5, $t5, 0x7b2c
/* 227CAC 801DCABC E612005C */  swc1  $f18, 0x5c($s0)
/* 227CB0 801DCAC0 C4247158 */  lwc1  $f4, %lo(D_800D7158)($at)
/* 227CB4 801DCAC4 3C01800D */  lui   $at, %hi(D_800D715C) # $at, 0x800d
/* 227CB8 801DCAC8 E6040020 */  swc1  $f4, 0x20($s0)
/* 227CBC 801DCACC C426715C */  lwc1  $f6, %lo(D_800D715C)($at)
/* 227CC0 801DCAD0 3C01800D */  lui   $at, %hi(D_800D7160) # $at, 0x800d
/* 227CC4 801DCAD4 E6060028 */  swc1  $f6, 0x28($s0)
/* 227CC8 801DCAD8 C4287160 */  lwc1  $f8, %lo(D_800D7160)($at)
/* 227CCC 801DCADC 3C01801E */  lui   $at, %hi(D_801E56F0) # $at, 0x801e
/* 227CD0 801DCAE0 E608002C */  swc1  $f8, 0x2c($s0)
/* 227CD4 801DCAE4 AD4C0000 */  sw    $t4, ($t2)
/* 227CD8 801DCAE8 8E0B004C */  lw    $t3, 0x4c($s0)
/* 227CDC 801DCAEC AD4B0004 */  sw    $t3, 4($t2)
/* 227CE0 801DCAF0 8E0C0050 */  lw    $t4, 0x50($s0)
/* 227CE4 801DCAF4 AD4C0008 */  sw    $t4, 8($t2)
/* 227CE8 801DCAF8 8E0F003C */  lw    $t7, 0x3c($s0)
/* 227CEC 801DCAFC ADAF0000 */  sw    $t7, ($t5)
/* 227CF0 801DCB00 8E0E0040 */  lw    $t6, 0x40($s0)
/* 227CF4 801DCB04 ADAE0004 */  sw    $t6, 4($t5)
/* 227CF8 801DCB08 8E0F0044 */  lw    $t7, 0x44($s0)
/* 227CFC 801DCB0C ADAF0008 */  sw    $t7, 8($t5)
/* 227D00 801DCB10 C60A003C */  lwc1  $f10, 0x3c($s0)
/* 227D04 801DCB14 E42A56F0 */  swc1  $f10, %lo(D_801E56F0)($at)
/* 227D08 801DCB18 C6100040 */  lwc1  $f16, 0x40($s0)
/* 227D0C 801DCB1C 3C01801E */  lui   $at, %hi(D_801E56F4) # $at, 0x801e
/* 227D10 801DCB20 E43056F4 */  swc1  $f16, %lo(D_801E56F4)($at)
/* 227D14 801DCB24 C6120044 */  lwc1  $f18, 0x44($s0)
/* 227D18 801DCB28 3C01801E */  lui   $at, %hi(D_801E56F8) # $at, 0x801e
/* 227D1C 801DCB2C E43256F8 */  swc1  $f18, %lo(D_801E56F8)($at)
/* 227D20 801DCB30 8FBF001C */  lw    $ra, 0x1c($sp)
.L801DCB34_ovl17:
/* 227D24 801DCB34 8FB00018 */  lw    $s0, 0x18($sp)
/* 227D28 801DCB38 27BD0038 */  addiu $sp, $sp, 0x38
/* 227D2C 801DCB3C 03E00008 */  jr    $ra
/* 227D30 801DCB40 00000000 */   nop   

.type func_801DC98C_ovl17, @function
.size func_801DC98C_ovl17, . - func_801DC98C_ovl17

glabel func_801DCB44_ovl17
/* 227D34 801DCB44 3C028005 */  lui   $v0, %hi(gPlayerControllers) # $v0, 0x8005
/* 227D38 801DCB48 94428F20 */  lhu   $v0, %lo(gPlayerControllers)($v0)
/* 227D3C 801DCB4C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 227D40 801DCB50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 227D44 801DCB54 30450300 */  andi  $a1, $v0, 0x300
/* 227D48 801DCB58 10A0001B */  beqz  $a1, .L801DCBC8_ovl17
/* 227D4C 801DCB5C AFA40048 */   sw    $a0, 0x48($sp)
/* 227D50 801DCB60 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 227D54 801DCB64 44812000 */  mtc1  $at, $f4
/* 227D58 801DCB68 3C04801E */  lui   $a0, %hi(D_801E56E8) # $a0, 0x801e
/* 227D5C 801DCB6C 248456E8 */  addiu $a0, %lo(D_801E56E8) # addiu $a0, $a0, 0x56e8
/* 227D60 801DCB70 304E0100 */  andi  $t6, $v0, 0x100
/* 227D64 801DCB74 11C00007 */  beqz  $t6, .L801DCB94_ovl17
/* 227D68 801DCB78 E4840000 */   swc1  $f4, ($a0)
/* 227D6C 801DCB7C 3C014352 */  li    $at, 0x43520000 # 210.000000
/* 227D70 801DCB80 44813000 */  mtc1  $at, $f6
/* 227D74 801DCB84 3C04801E */  lui   $a0, %hi(D_801E56D8) # $a0, 0x801e
/* 227D78 801DCB88 248456D8 */  addiu $a0, %lo(D_801E56D8) # addiu $a0, $a0, 0x56d8
/* 227D7C 801DCB8C 10000006 */  b     .L801DCBA8_ovl17
/* 227D80 801DCB90 E4860000 */   swc1  $f6, ($a0)
.L801DCB94_ovl17:
/* 227D84 801DCB94 3C01C352 */  li    $at, 0xC3520000 # -210.000000
/* 227D88 801DCB98 44814000 */  mtc1  $at, $f8
/* 227D8C 801DCB9C 3C04801E */  lui   $a0, %hi(D_801E56D8) # $a0, 0x801e
/* 227D90 801DCBA0 248456D8 */  addiu $a0, %lo(D_801E56D8) # addiu $a0, $a0, 0x56d8
/* 227D94 801DCBA4 E4880000 */  swc1  $f8, ($a0)
.L801DCBA8_ovl17:
/* 227D98 801DCBA8 30430C00 */  andi  $v1, $v0, 0xc00
/* 227D9C 801DCBAC 1060001B */  beqz  $v1, .L801DCC1C_ovl17
/* 227DA0 801DCBB0 3C01801E */   lui   $at, %hi(D_801E555C) # $at, 0x801e
/* 227DA4 801DCBB4 C48A0000 */  lwc1  $f10, ($a0)
/* 227DA8 801DCBB8 C424555C */  lwc1  $f4, %lo(D_801E555C)($at)
/* 227DAC 801DCBBC 46045183 */  div.s $f6, $f10, $f4
/* 227DB0 801DCBC0 10000016 */  b     .L801DCC1C_ovl17
/* 227DB4 801DCBC4 E4860000 */   swc1  $f6, ($a0)
.L801DCBC8_ovl17:
/* 227DB8 801DCBC8 3C04801E */  lui   $a0, %hi(D_801E56E8) # $a0, 0x801e
/* 227DBC 801DCBCC 248456E8 */  addiu $a0, %lo(D_801E56E8) # addiu $a0, $a0, 0x56e8
/* 227DC0 801DCBD0 C4800000 */  lwc1  $f0, ($a0)
/* 227DC4 801DCBD4 44804000 */  mtc1  $zero, $f8
/* 227DC8 801DCBD8 00000000 */  nop   
/* 227DCC 801DCBDC 4600403C */  c.lt.s $f8, $f0
/* 227DD0 801DCBE0 00000000 */  nop   
/* 227DD4 801DCBE4 45000008 */  bc1f  .L801DCC08_ovl17
/* 227DD8 801DCBE8 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 227DDC 801DCBEC 44815000 */  mtc1  $at, $f10
/* 227DE0 801DCBF0 30430C00 */  andi  $v1, $v0, 0xc00
/* 227DE4 801DCBF4 460A0101 */  sub.s $f4, $f0, $f10
/* 227DE8 801DCBF8 E4840000 */  swc1  $f4, ($a0)
/* 227DEC 801DCBFC 3C04801E */  lui   $a0, %hi(D_801E56D8) # $a0, 0x801e
/* 227DF0 801DCC00 10000006 */  b     .L801DCC1C_ovl17
/* 227DF4 801DCC04 248456D8 */   addiu $a0, %lo(D_801E56D8) # addiu $a0, $a0, 0x56d8
.L801DCC08_ovl17:
/* 227DF8 801DCC08 44803000 */  mtc1  $zero, $f6
/* 227DFC 801DCC0C 3C04801E */  lui   $a0, %hi(D_801E56D8) # $a0, 0x801e
/* 227E00 801DCC10 248456D8 */  addiu $a0, %lo(D_801E56D8) # addiu $a0, $a0, 0x56d8
/* 227E04 801DCC14 30430C00 */  andi  $v1, $v0, 0xc00
/* 227E08 801DCC18 E4860000 */  swc1  $f6, ($a0)
.L801DCC1C_ovl17:
/* 227E0C 801DCC1C 10600020 */  beqz  $v1, .L801DCCA0_ovl17
/* 227E10 801DCC20 3C014100 */   li    $at, 0x41000000 # 8.000000
/* 227E14 801DCC24 44814000 */  mtc1  $at, $f8
/* 227E18 801DCC28 3C03801E */  lui   $v1, %hi(D_801E56EC) # $v1, 0x801e
/* 227E1C 801DCC2C 246356EC */  addiu $v1, %lo(D_801E56EC) # addiu $v1, $v1, 0x56ec
/* 227E20 801DCC30 304F0800 */  andi  $t7, $v0, 0x800
/* 227E24 801DCC34 11E0000A */  beqz  $t7, .L801DCC60_ovl17
/* 227E28 801DCC38 E4680000 */   swc1  $f8, ($v1)
/* 227E2C 801DCC3C 3C01C348 */  li    $at, 0xC3480000 # -200.000000
/* 227E30 801DCC40 44815000 */  mtc1  $at, $f10
/* 227E34 801DCC44 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 227E38 801DCC48 C4247164 */  lwc1  $f4, %lo(D_800D7164)($at)
/* 227E3C 801DCC4C 3C02801E */  lui   $v0, %hi(D_801E56DC) # $v0, 0x801e
/* 227E40 801DCC50 244256DC */  addiu $v0, %lo(D_801E56DC) # addiu $v0, $v0, 0x56dc
/* 227E44 801DCC54 46045180 */  add.s $f6, $f10, $f4
/* 227E48 801DCC58 1000000A */  b     .L801DCC84_ovl17
/* 227E4C 801DCC5C E4460000 */   swc1  $f6, ($v0)
.L801DCC60_ovl17:
/* 227E50 801DCC60 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 227E54 801DCC64 44814000 */  mtc1  $at, $f8
/* 227E58 801DCC68 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 227E5C 801DCC6C C42A7164 */  lwc1  $f10, %lo(D_800D7164)($at)
/* 227E60 801DCC70 3C01801E */  lui   $at, %hi(D_801E56DC) # $at, 0x801e
/* 227E64 801DCC74 3C02801E */  lui   $v0, %hi(D_801E56DC) # $v0, 0x801e
/* 227E68 801DCC78 460A4100 */  add.s $f4, $f8, $f10
/* 227E6C 801DCC7C 244256DC */  addiu $v0, %lo(D_801E56DC) # addiu $v0, $v0, 0x56dc
/* 227E70 801DCC80 E42456DC */  swc1  $f4, %lo(D_801E56DC)($at)
.L801DCC84_ovl17:
/* 227E74 801DCC84 10A0001B */  beqz  $a1, .L801DCCF4_ovl17
/* 227E78 801DCC88 3C01801E */   lui   $at, %hi(D_801E5560) # $at, 0x801e
/* 227E7C 801DCC8C C4460000 */  lwc1  $f6, ($v0)
/* 227E80 801DCC90 C4285560 */  lwc1  $f8, %lo(D_801E5560)($at)
/* 227E84 801DCC94 46083283 */  div.s $f10, $f6, $f8
/* 227E88 801DCC98 10000016 */  b     .L801DCCF4_ovl17
/* 227E8C 801DCC9C E44A0000 */   swc1  $f10, ($v0)
.L801DCCA0_ovl17:
/* 227E90 801DCCA0 3C03801E */  lui   $v1, %hi(D_801E56EC) # $v1, 0x801e
/* 227E94 801DCCA4 246356EC */  addiu $v1, %lo(D_801E56EC) # addiu $v1, $v1, 0x56ec
/* 227E98 801DCCA8 C4600000 */  lwc1  $f0, ($v1)
/* 227E9C 801DCCAC 44802000 */  mtc1  $zero, $f4
/* 227EA0 801DCCB0 00000000 */  nop   
/* 227EA4 801DCCB4 4600203C */  c.lt.s $f4, $f0
/* 227EA8 801DCCB8 00000000 */  nop   
/* 227EAC 801DCCBC 45000007 */  bc1f  .L801DCCDC_ovl17
/* 227EB0 801DCCC0 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 227EB4 801DCCC4 44813000 */  mtc1  $at, $f6
/* 227EB8 801DCCC8 3C02801E */  lui   $v0, %hi(D_801E56DC) # $v0, 0x801e
/* 227EBC 801DCCCC 244256DC */  addiu $v0, %lo(D_801E56DC) # addiu $v0, $v0, 0x56dc
/* 227EC0 801DCCD0 46060201 */  sub.s $f8, $f0, $f6
/* 227EC4 801DCCD4 10000007 */  b     .L801DCCF4_ovl17
/* 227EC8 801DCCD8 E4680000 */   swc1  $f8, ($v1)
.L801DCCDC_ovl17:
/* 227ECC 801DCCDC 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 227ED0 801DCCE0 C42A7164 */  lwc1  $f10, %lo(D_800D7164)($at)
/* 227ED4 801DCCE4 3C01801E */  lui   $at, %hi(D_801E56DC) # $at, 0x801e
/* 227ED8 801DCCE8 3C02801E */  lui   $v0, %hi(D_801E56DC) # $v0, 0x801e
/* 227EDC 801DCCEC 244256DC */  addiu $v0, %lo(D_801E56DC) # addiu $v0, $v0, 0x56dc
/* 227EE0 801DCCF0 E42A56DC */  swc1  $f10, %lo(D_801E56DC)($at)
.L801DCCF4_ovl17:
/* 227EE4 801DCCF4 3C18800D */  lui   $t8, %hi(D_800D6B54) # $t8, 0x800d
/* 227EE8 801DCCF8 8F186B54 */  lw    $t8, %lo(D_800D6B54)($t8)
/* 227EEC 801DCCFC 24010001 */  li    $at, 1
/* 227EF0 801DCD00 17010006 */  bne   $t8, $at, .L801DCD1C_ovl17
/* 227EF4 801DCD04 00000000 */   nop   
/* 227EF8 801DCD08 44802000 */  mtc1  $zero, $f4
/* 227EFC 801DCD0C 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 227F00 801DCD10 E4840000 */  swc1  $f4, ($a0)
/* 227F04 801DCD14 C4267164 */  lwc1  $f6, %lo(D_800D7164)($at)
/* 227F08 801DCD18 E4460000 */  swc1  $f6, ($v0)
.L801DCD1C_ovl17:
/* 227F0C 801DCD1C 3C01801E */  lui   $at, %hi(D_801E5564) # $at, 0x801e
/* 227F10 801DCD20 C4205564 */  lwc1  $f0, %lo(D_801E5564)($at)
/* 227F14 801DCD24 3C01801E */  lui   $at, %hi(D_801E56D0) # $at, 0x801e
/* 227F18 801DCD28 C42A56D0 */  lwc1  $f10, %lo(D_801E56D0)($at)
/* 227F1C 801DCD2C C4880000 */  lwc1  $f8, ($a0)
/* 227F20 801DCD30 3C01801E */  li    $at, 0x801E0000 # -0.000000
/* 227F24 801DCD34 C42656D4 */  lwc1  $f6, %lo(D_801E56D4)($at)
/* 227F28 801DCD38 460A4081 */  sub.s $f2, $f8, $f10
/* 227F2C 801DCD3C C4440000 */  lwc1  $f4, ($v0)
/* 227F30 801DCD40 46001082 */  mul.s $f2, $f2, $f0
/* 227F34 801DCD44 46062481 */  sub.s $f18, $f4, $f6
/* 227F38 801DCD48 46009482 */  mul.s $f18, $f18, $f0
/* 227F3C 801DCD4C E7A20044 */  swc1  $f2, 0x44($sp)
/* 227F40 801DCD50 46021202 */  mul.s $f8, $f2, $f2
/* 227F44 801DCD54 00000000 */  nop   
/* 227F48 801DCD58 46129282 */  mul.s $f10, $f18, $f18
/* 227F4C 801DCD5C E7B20040 */  swc1  $f18, 0x40($sp)
/* 227F50 801DCD60 460A4300 */  add.s $f12, $f8, $f10
/* 227F54 801DCD64 0C00CAC8 */  jal   sqrtf
/* 227F58 801DCD68 E7AC0028 */   swc1  $f12, 0x28($sp)
/* 227F5C 801DCD6C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 227F60 801DCD70 C7A20044 */  lwc1  $f2, 0x44($sp)
/* 227F64 801DCD74 44812000 */  mtc1  $at, $f4
/* 227F68 801DCD78 44813000 */  mtc1  $at, $f6
/* 227F6C 801DCD7C 46041382 */  mul.s $f14, $f2, $f4
/* 227F70 801DCD80 00000000 */  nop   
/* 227F74 801DCD84 46060402 */  mul.s $f16, $f0, $f6
/* 227F78 801DCD88 00000000 */  nop   
/* 227F7C 801DCD8C 460E7202 */  mul.s $f8, $f14, $f14
/* 227F80 801DCD90 00000000 */  nop   
/* 227F84 801DCD94 46108282 */  mul.s $f10, $f16, $f16
/* 227F88 801DCD98 0C00CAC8 */  jal   sqrtf
/* 227F8C 801DCD9C 460A4300 */   add.s $f12, $f8, $f10
/* 227F90 801DCDA0 C7A20044 */  lwc1  $f2, 0x44($sp)
/* 227F94 801DCDA4 44802000 */  mtc1  $zero, $f4
/* 227F98 801DCDA8 3C04801E */  lui   $a0, %hi(D_801E56D8) # $a0, 0x801e
/* 227F9C 801DCDAC 248456D8 */  addiu $a0, %lo(D_801E56D8) # addiu $a0, $a0, 0x56d8
/* 227FA0 801DCDB0 4604103C */  c.lt.s $f2, $f4
/* 227FA4 801DCDB4 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 227FA8 801DCDB8 3C01801E */  lui   $at, %hi(D_801E5568) # $at, 0x801e
/* 227FAC 801DCDBC 45020004 */  bc1fl .L801DCDD0_ovl17
/* 227FB0 801DCDC0 46001306 */   mov.s $f12, $f2
/* 227FB4 801DCDC4 10000002 */  b     .L801DCDD0_ovl17
/* 227FB8 801DCDC8 46001307 */   neg.s $f12, $f2
/* 227FBC 801DCDCC 46001306 */  mov.s $f12, $f2
.L801DCDD0_ovl17:
/* 227FC0 801DCDD0 C4265568 */  lwc1  $f6, %lo(D_801E5568)($at)
/* 227FC4 801DCDD4 460C303C */  c.lt.s $f6, $f12
/* 227FC8 801DCDD8 00000000 */  nop   
/* 227FCC 801DCDDC 4500001E */  bc1f  .L801DCE58_ovl17
/* 227FD0 801DCDE0 3C01801E */   lui   $at, %hi(D_801E556C) # $at, 0x801e
/* 227FD4 801DCDE4 C42A556C */  lwc1  $f10, %lo(D_801E556C)($at)
/* 227FD8 801DCDE8 3C02801E */  lui   $v0, %hi(D_801E56E0) # $v0, 0x801e
/* 227FDC 801DCDEC 244256E0 */  addiu $v0, %lo(D_801E56E0) # addiu $v0, $v0, 0x56e0
/* 227FE0 801DCDF0 460A1102 */  mul.s $f4, $f2, $f10
/* 227FE4 801DCDF4 C4480000 */  lwc1  $f8, ($v0)
/* 227FE8 801DCDF8 3C01801E */  lui   $at, %hi(D_801E56E0) # $at, 0x801e
/* 227FEC 801DCDFC 46044180 */  add.s $f6, $f8, $f4
/* 227FF0 801DCE00 E4460000 */  swc1  $f6, ($v0)
/* 227FF4 801DCE04 C44C0000 */  lwc1  $f12, ($v0)
/* 227FF8 801DCE08 460C003C */  c.lt.s $f0, $f12
/* 227FFC 801DCE0C 00000000 */  nop   
/* 228000 801DCE10 45020005 */  bc1fl .L801DCE28_ovl17
/* 228004 801DCE14 46000387 */   neg.s $f14, $f0
/* 228008 801DCE18 E42056E0 */  swc1  $f0, %lo(D_801E56E0)($at)
/* 22800C 801DCE1C 10000009 */  b     .L801DCE44_ovl17
/* 228010 801DCE20 C42C56E0 */   lwc1  $f12, %lo(D_801E56E0)($at)
/* 228014 801DCE24 46000387 */  neg.s $f14, $f0
.L801DCE28_ovl17:
/* 228018 801DCE28 3C01801E */  lui   $at, %hi(D_801E56E0) # $at, 0x801e
/* 22801C 801DCE2C 460E603C */  c.lt.s $f12, $f14
/* 228020 801DCE30 00000000 */  nop   
/* 228024 801DCE34 45000003 */  bc1f  .L801DCE44_ovl17
/* 228028 801DCE38 00000000 */   nop   
/* 22802C 801DCE3C E42E56E0 */  swc1  $f14, %lo(D_801E56E0)($at)
/* 228030 801DCE40 C42C56E0 */  lwc1  $f12, %lo(D_801E56E0)($at)
.L801DCE44_ovl17:
/* 228034 801DCE44 3C01801E */  lui   $at, %hi(D_801E56D0) # $at, 0x801e
/* 228038 801DCE48 C42A56D0 */  lwc1  $f10, %lo(D_801E56D0)($at)
/* 22803C 801DCE4C 460C5200 */  add.s $f8, $f10, $f12
/* 228040 801DCE50 10000008 */  b     .L801DCE74_ovl17
/* 228044 801DCE54 E42856D0 */   swc1  $f8, %lo(D_801E56D0)($at)
.L801DCE58_ovl17:
/* 228048 801DCE58 44802000 */  mtc1  $zero, $f4
/* 22804C 801DCE5C C4860000 */  lwc1  $f6, ($a0)
/* 228050 801DCE60 3C02801E */  lui   $v0, %hi(D_801E56E0) # $v0, 0x801e
/* 228054 801DCE64 244256E0 */  addiu $v0, %lo(D_801E56E0) # addiu $v0, $v0, 0x56e0
/* 228058 801DCE68 3C01801E */  lui   $at, %hi(D_801E56D0) # $at, 0x801e
/* 22805C 801DCE6C E4440000 */  swc1  $f4, ($v0)
/* 228060 801DCE70 E42656D0 */  swc1  $f6, %lo(D_801E56D0)($at)
.L801DCE74_ovl17:
/* 228064 801DCE74 C7AC0028 */  lwc1  $f12, 0x28($sp)
/* 228068 801DCE78 0C00CAC8 */  jal   sqrtf
/* 22806C 801DCE7C E7B20040 */   swc1  $f18, 0x40($sp)
/* 228070 801DCE80 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 228074 801DCE84 44817000 */  mtc1  $at, $f14
/* 228078 801DCE88 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 22807C 801DCE8C 460E9082 */  mul.s $f2, $f18, $f14
/* 228080 801DCE90 00000000 */  nop   
/* 228084 801DCE94 460E0402 */  mul.s $f16, $f0, $f14
/* 228088 801DCE98 00000000 */  nop   
/* 22808C 801DCE9C 46021282 */  mul.s $f10, $f2, $f2
/* 228090 801DCEA0 00000000 */  nop   
/* 228094 801DCEA4 46108202 */  mul.s $f8, $f16, $f16
/* 228098 801DCEA8 0C00CAC8 */  jal   sqrtf
/* 22809C 801DCEAC 46085300 */   add.s $f12, $f10, $f8
/* 2280A0 801DCEB0 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 2280A4 801DCEB4 44802000 */  mtc1  $zero, $f4
/* 2280A8 801DCEB8 3C01801E */  lui   $at, %hi(D_801E5570) # $at, 0x801e
/* 2280AC 801DCEBC 4604903C */  c.lt.s $f18, $f4
/* 2280B0 801DCEC0 00000000 */  nop   
/* 2280B4 801DCEC4 45020004 */  bc1fl .L801DCED8_ovl17
/* 2280B8 801DCEC8 46009306 */   mov.s $f12, $f18
/* 2280BC 801DCECC 10000002 */  b     .L801DCED8_ovl17
/* 2280C0 801DCED0 46009307 */   neg.s $f12, $f18
/* 2280C4 801DCED4 46009306 */  mov.s $f12, $f18
.L801DCED8_ovl17:
/* 2280C8 801DCED8 C4265570 */  lwc1  $f6, %lo(D_801E5570)($at)
/* 2280CC 801DCEDC 460C303C */  c.lt.s $f6, $f12
/* 2280D0 801DCEE0 00000000 */  nop   
/* 2280D4 801DCEE4 4500001F */  bc1f  .L801DCF64_ovl17
/* 2280D8 801DCEE8 3C01801E */   lui   $at, %hi(D_801E5574) # $at, 0x801e
/* 2280DC 801DCEEC C4285574 */  lwc1  $f8, %lo(D_801E5574)($at)
/* 2280E0 801DCEF0 3C02801E */  lui   $v0, %hi(D_801E56E4) # $v0, 0x801e
/* 2280E4 801DCEF4 244256E4 */  addiu $v0, %lo(D_801E56E4) # addiu $v0, $v0, 0x56e4
/* 2280E8 801DCEF8 46089102 */  mul.s $f4, $f18, $f8
/* 2280EC 801DCEFC C44A0000 */  lwc1  $f10, ($v0)
/* 2280F0 801DCF00 3C01801E */  lui   $at, %hi(D_801E56E4) # $at, 0x801e
/* 2280F4 801DCF04 46045180 */  add.s $f6, $f10, $f4
/* 2280F8 801DCF08 E4460000 */  swc1  $f6, ($v0)
/* 2280FC 801DCF0C C4420000 */  lwc1  $f2, ($v0)
/* 228100 801DCF10 3C02801E */  lui   $v0, %hi(D_801E56D4) # $v0, 0x801e
/* 228104 801DCF14 244256D4 */  addiu $v0, %lo(D_801E56D4) # addiu $v0, $v0, 0x56d4
/* 228108 801DCF18 4602003C */  c.lt.s $f0, $f2
/* 22810C 801DCF1C 00000000 */  nop   
/* 228110 801DCF20 45020005 */  bc1fl .L801DCF38_ovl17
/* 228114 801DCF24 46000387 */   neg.s $f14, $f0
/* 228118 801DCF28 E42056E4 */  swc1  $f0, %lo(D_801E56E4)($at)
/* 22811C 801DCF2C 10000009 */  b     .L801DCF54_ovl17
/* 228120 801DCF30 C42256E4 */   lwc1  $f2, %lo(D_801E56E4)($at)
/* 228124 801DCF34 46000387 */  neg.s $f14, $f0
.L801DCF38_ovl17:
/* 228128 801DCF38 3C01801E */  lui   $at, %hi(D_801E56E4) # $at, 0x801e
/* 22812C 801DCF3C 460E103C */  c.lt.s $f2, $f14
/* 228130 801DCF40 00000000 */  nop   
/* 228134 801DCF44 45020004 */  bc1fl .L801DCF58_ovl17
/* 228138 801DCF48 C4480000 */   lwc1  $f8, ($v0)
/* 22813C 801DCF4C E42E56E4 */  swc1  $f14, %lo(D_801E56E4)($at)
/* 228140 801DCF50 C42256E4 */  lwc1  $f2, %lo(D_801E56E4)($at)
.L801DCF54_ovl17:
/* 228144 801DCF54 C4480000 */  lwc1  $f8, ($v0)
.L801DCF58_ovl17:
/* 228148 801DCF58 46024280 */  add.s $f10, $f8, $f2
/* 22814C 801DCF5C 1000000B */  b     .L801DCF8C_ovl17
/* 228150 801DCF60 E44A0000 */   swc1  $f10, ($v0)
.L801DCF64_ovl17:
/* 228154 801DCF64 44802000 */  mtc1  $zero, $f4
/* 228158 801DCF68 3C02801E */  lui   $v0, %hi(D_801E56E4) # $v0, 0x801e
/* 22815C 801DCF6C 244256E4 */  addiu $v0, %lo(D_801E56E4) # addiu $v0, $v0, 0x56e4
/* 228160 801DCF70 3C01801E */  lui   $at, %hi(D_801E56DC) # $at, 0x801e
/* 228164 801DCF74 E4440000 */  swc1  $f4, ($v0)
/* 228168 801DCF78 C42656DC */  lwc1  $f6, %lo(D_801E56DC)($at)
/* 22816C 801DCF7C 3C01801E */  lui   $at, %hi(D_801E56D4) # $at, 0x801e
/* 228170 801DCF80 3C02801E */  lui   $v0, %hi(D_801E56D4) # $v0, 0x801e
/* 228174 801DCF84 244256D4 */  addiu $v0, %lo(D_801E56D4) # addiu $v0, $v0, 0x56d4
/* 228178 801DCF88 E42656D4 */  swc1  $f6, %lo(D_801E56D4)($at)
.L801DCF8C_ovl17:
/* 22817C 801DCF8C 3C01801E */  lui   $at, %hi(D_801E56D0) # $at, 0x801e
/* 228180 801DCF90 C42856D0 */  lwc1  $f8, %lo(D_801E56D0)($at)
/* 228184 801DCF94 3C01800D */  lui   $at, %hi(D_800D716C) # $at, 0x800d
/* 228188 801DCF98 C424716C */  lwc1  $f4, %lo(D_800D716C)($at)
/* 22818C 801DCF9C 3C01800D */  lui   $at, %hi(D_800D7168) # $at, 0x800d
/* 228190 801DCFA0 C4267168 */  lwc1  $f6, %lo(D_800D7168)($at)
/* 228194 801DCFA4 E7A80030 */  swc1  $f8, 0x30($sp)
/* 228198 801DCFA8 C44A0000 */  lwc1  $f10, ($v0)
/* 22819C 801DCFAC 46062201 */  sub.s $f8, $f4, $f6
/* 2281A0 801DCFB0 27A40030 */  addiu $a0, $sp, 0x30
/* 2281A4 801DCFB4 8FA50048 */  lw    $a1, 0x48($sp)
/* 2281A8 801DCFB8 E7AA0034 */  swc1  $f10, 0x34($sp)
/* 2281AC 801DCFBC 0C077427 */  jal   func_801DD09C_ovl17
/* 2281B0 801DCFC0 E7A80038 */   swc1  $f8, 0x38($sp)
/* 2281B4 801DCFC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2281B8 801DCFC8 27BD0048 */  addiu $sp, $sp, 0x48
/* 2281BC 801DCFCC 03E00008 */  jr    $ra
/* 2281C0 801DCFD0 00000000 */   nop   

.type func_801DCB44_ovl17, @function
.size func_801DCB44_ovl17, . - func_801DCB44_ovl17

glabel func_801DCFD4_ovl17
/* 2281C4 801DCFD4 3C01801E */  lui   $at, %hi(D_801E5578) # $at, 0x801e
/* 2281C8 801DCFD8 C4205578 */  lwc1  $f0, %lo(D_801E5578)($at)
/* 2281CC 801DCFDC 3C01801E */  lui   $at, %hi(D_801E56D0) # $at, 0x801e
/* 2281D0 801DCFE0 C42456D0 */  lwc1  $f4, %lo(D_801E56D0)($at)
/* 2281D4 801DCFE4 3C01801E */  lui   $at, %hi(D_801E56D4) # $at, 0x801e
/* 2281D8 801DCFE8 C42A56D4 */  lwc1  $f10, %lo(D_801E56D4)($at)
/* 2281DC 801DCFEC 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 2281E0 801DCFF0 C4307164 */  lwc1  $f16, %lo(D_800D7164)($at)
/* 2281E4 801DCFF4 46002187 */  neg.s $f6, $f4
/* 2281E8 801DCFF8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 2281EC 801DCFFC 46105481 */  sub.s $f18, $f10, $f16
/* 2281F0 801DD000 46003202 */  mul.s $f8, $f6, $f0
/* 2281F4 801DD004 3C01800D */  lui   $at, %hi(D_800D716C) # $at, 0x800d
/* 2281F8 801DD008 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2281FC 801DD00C 46009107 */  neg.s $f4, $f18
/* 228200 801DD010 00802825 */  move  $a1, $a0
/* 228204 801DD014 46002182 */  mul.s $f6, $f4, $f0
/* 228208 801DD018 27A4001C */  addiu $a0, $sp, 0x1c
/* 22820C 801DD01C E7A8001C */  swc1  $f8, 0x1c($sp)
/* 228210 801DD020 C428716C */  lwc1  $f8, %lo(D_800D716C)($at)
/* 228214 801DD024 E7A80024 */  swc1  $f8, 0x24($sp)
/* 228218 801DD028 0C077427 */  jal   func_801DD09C_ovl17
/* 22821C 801DD02C E7A60020 */   swc1  $f6, 0x20($sp)
/* 228220 801DD030 8FBF0014 */  lw    $ra, 0x14($sp)
/* 228224 801DD034 27BD0028 */  addiu $sp, $sp, 0x28
/* 228228 801DD038 03E00008 */  jr    $ra
/* 22822C 801DD03C 00000000 */   nop   

.type func_801DCFD4_ovl17, @function
.size func_801DCFD4_ovl17, . - func_801DCFD4_ovl17

glabel func_801DD040_ovl17
/* 228230 801DD040 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 228234 801DD044 C4267164 */  lwc1  $f6, %lo(D_800D7164)($at)
/* 228238 801DD048 3C01801E */  lui   $at, %hi(D_801E557C) # $at, 0x801e
/* 22823C 801DD04C C428557C */  lwc1  $f8, %lo(D_801E557C)($at)
/* 228240 801DD050 3C01800D */  lui   $at, %hi(D_800D716C) # $at, 0x800d
/* 228244 801DD054 C430716C */  lwc1  $f16, %lo(D_800D716C)($at)
/* 228248 801DD058 44802000 */  mtc1  $zero, $f4
/* 22824C 801DD05C 3C01800D */  lui   $at, %hi(D_800D7168) # $at, 0x800d
/* 228250 801DD060 C4327168 */  lwc1  $f18, %lo(D_800D7168)($at)
/* 228254 801DD064 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 228258 801DD068 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 22825C 801DD06C 46083280 */  add.s $f10, $f6, $f8
/* 228260 801DD070 AFBF0014 */  sw    $ra, 0x14($sp)
/* 228264 801DD074 00802825 */  move  $a1, $a0
/* 228268 801DD078 46128101 */  sub.s $f4, $f16, $f18
/* 22826C 801DD07C E7AA0020 */  swc1  $f10, 0x20($sp)
/* 228270 801DD080 27A4001C */  addiu $a0, $sp, 0x1c
/* 228274 801DD084 0C077427 */  jal   func_801DD09C_ovl17
/* 228278 801DD088 E7A40024 */   swc1  $f4, 0x24($sp)
/* 22827C 801DD08C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 228280 801DD090 27BD0028 */  addiu $sp, $sp, 0x28
/* 228284 801DD094 03E00008 */  jr    $ra
/* 228288 801DD098 00000000 */   nop   

.type func_801DD040_ovl17, @function
.size func_801DD040_ovl17, . - func_801DD040_ovl17

glabel func_801DD09C_ovl17
/* 22828C 801DD09C 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 228290 801DD0A0 AFB00014 */  sw    $s0, 0x14($sp)
/* 228294 801DD0A4 27B00060 */  addiu $s0, $sp, 0x60
/* 228298 801DD0A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 22829C 801DD0AC AFA400A0 */  sw    $a0, 0xa0($sp)
/* 2282A0 801DD0B0 AFB10018 */  sw    $s1, 0x18($sp)
/* 2282A4 801DD0B4 AFA500A4 */  sw    $a1, 0xa4($sp)
/* 2282A8 801DD0B8 0C00C304 */  jal   guMtxIdentF
/* 2282AC 801DD0BC 02002025 */   move  $a0, $s0
/* 2282B0 801DD0C0 8FA200A0 */  lw    $v0, 0xa0($sp)
/* 2282B4 801DD0C4 27B10020 */  addiu $s1, $sp, 0x20
/* 2282B8 801DD0C8 02202025 */  move  $a0, $s1
/* 2282BC 801DD0CC 8C450000 */  lw    $a1, ($v0)
/* 2282C0 801DD0D0 8C460004 */  lw    $a2, 4($v0)
/* 2282C4 801DD0D4 0C006DB9 */  jal   HS64_MkTranslateMtxF
/* 2282C8 801DD0D8 8C470008 */   lw    $a3, 8($v0)
/* 2282CC 801DD0DC 02002025 */  move  $a0, $s0
/* 2282D0 801DD0E0 02202825 */  move  $a1, $s1
/* 2282D4 801DD0E4 0C00D034 */  jal   guMtxCatF
/* 2282D8 801DD0E8 02003025 */   move  $a2, $s0
/* 2282DC 801DD0EC 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 2282E0 801DD0F0 3C06800F */  lui   $a2, %hi(D_800EA8A0) # $a2, 0x800f
/* 2282E4 801DD0F4 3C07800F */  lui   $a3, %hi(D_800EAA60) # $a3, 0x800f
/* 2282E8 801DD0F8 8CE7AA60 */  lw    $a3, %lo(D_800EAA60)($a3)
/* 2282EC 801DD0FC 8CC6A8A0 */  lw    $a2, %lo(D_800EA8A0)($a2)
/* 2282F0 801DD100 8CA5A6E0 */  lw    $a1, %lo(D_800EA6E0)($a1)
/* 2282F4 801DD104 0C006EEB */  jal   HS64_MkRotationMtxF
/* 2282F8 801DD108 02202025 */   move  $a0, $s1
/* 2282FC 801DD10C 02002025 */  move  $a0, $s0
/* 228300 801DD110 02202825 */  move  $a1, $s1
/* 228304 801DD114 0C00D034 */  jal   guMtxCatF
/* 228308 801DD118 02003025 */   move  $a2, $s0
/* 22830C 801DD11C 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 228310 801DD120 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 228314 801DD124 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 228318 801DD128 8CE72950 */  lw    $a3, %lo(gEntitiesNextPosZArray)($a3)
/* 22831C 801DD12C 8CC62790 */  lw    $a2, %lo(gEntitiesNextPosYArray)($a2)
/* 228320 801DD130 8CA525D0 */  lw    $a1, %lo(gEntitiesNextPosXArray)($a1)
/* 228324 801DD134 0C006DB9 */  jal   HS64_MkTranslateMtxF
/* 228328 801DD138 02202025 */   move  $a0, $s1
/* 22832C 801DD13C 02002025 */  move  $a0, $s0
/* 228330 801DD140 02202825 */  move  $a1, $s1
/* 228334 801DD144 0C00D034 */  jal   guMtxCatF
/* 228338 801DD148 02003025 */   move  $a2, $s0
/* 22833C 801DD14C 8FA200A4 */  lw    $v0, 0xa4($sp)
/* 228340 801DD150 C7A40090 */  lwc1  $f4, 0x90($sp)
/* 228344 801DD154 E4440000 */  swc1  $f4, ($v0)
/* 228348 801DD158 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 22834C 801DD15C E4460004 */  swc1  $f6, 4($v0)
/* 228350 801DD160 C7A80098 */  lwc1  $f8, 0x98($sp)
/* 228354 801DD164 E4480008 */  swc1  $f8, 8($v0)
/* 228358 801DD168 8FBF001C */  lw    $ra, 0x1c($sp)
/* 22835C 801DD16C 8FB10018 */  lw    $s1, 0x18($sp)
/* 228360 801DD170 8FB00014 */  lw    $s0, 0x14($sp)
/* 228364 801DD174 03E00008 */  jr    $ra
/* 228368 801DD178 27BD00A0 */   addiu $sp, $sp, 0xa0

.type func_801DD09C_ovl17, @function
.size func_801DD09C_ovl17, . - func_801DD09C_ovl17

glabel func_801DD17C_ovl17
/* 22836C 801DD17C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 228370 801DD180 AFBF0014 */  sw    $ra, 0x14($sp)
/* 228374 801DD184 3C0E800D */  lui   $t6, %hi(D_800D799C) # $t6, 0x800d
/* 228378 801DD188 3C18800D */  lui   $t8, %hi(D_800D7B20) # $t8, 0x800d
/* 22837C 801DD18C 8DCE799C */  lw    $t6, %lo(D_800D799C)($t6)
/* 228380 801DD190 27187B20 */  addiu $t8, %lo(D_800D7B20) # addiu $t8, $t8, 0x7b20
/* 228384 801DD194 8F080000 */  lw    $t0, ($t8)
/* 228388 801DD198 8F190004 */  lw    $t9, 4($t8)
/* 22838C 801DD19C 3C0F800D */  lui   $t7, %hi(D_800D7B38) # $t7, 0x800d
/* 228390 801DD1A0 8DC2003C */  lw    $v0, 0x3c($t6)
/* 228394 801DD1A4 25EF7B38 */  addiu $t7, %lo(D_800D7B38) # addiu $t7, $t7, 0x7b38
/* 228398 801DD1A8 ADE80000 */  sw    $t0, ($t7)
/* 22839C 801DD1AC ADF90004 */  sw    $t9, 4($t7)
/* 2283A0 801DD1B0 8F19000C */  lw    $t9, 0xc($t8)
/* 2283A4 801DD1B4 8F080008 */  lw    $t0, 8($t8)
/* 2283A8 801DD1B8 24040010 */  li    $a0, 16
/* 2283AC 801DD1BC ADF9000C */  sw    $t9, 0xc($t7)
/* 2283B0 801DD1C0 ADE80008 */  sw    $t0, 8($t7)
/* 2283B4 801DD1C4 8F080010 */  lw    $t0, 0x10($t8)
/* 2283B8 801DD1C8 8F190014 */  lw    $t9, 0x14($t8)
/* 2283BC 801DD1CC ADE80010 */  sw    $t0, 0x10($t7)
/* 2283C0 801DD1D0 ADF90014 */  sw    $t9, 0x14($t7)
/* 2283C4 801DD1D4 0C029C68 */  jal   func_800A71A0
/* 2283C8 801DD1D8 AFA2001C */   sw    $v0, 0x1c($sp)
/* 2283CC 801DD1DC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 2283D0 801DD1E0 3C01801E */  lui   $at, %hi(D_801E5580) # $at, 0x801e
/* 2283D4 801DD1E4 C4205580 */  lwc1  $f0, %lo(D_801E5580)($at)
/* 2283D8 801DD1E8 C444003C */  lwc1  $f4, 0x3c($v0)
/* 2283DC 801DD1EC C4480040 */  lwc1  $f8, 0x40($v0)
/* 2283E0 801DD1F0 3C01800D */  lui   $at, %hi(D_800D7164) # $at, 0x800d
/* 2283E4 801DD1F4 46002182 */  mul.s $f6, $f4, $f0
/* 2283E8 801DD1F8 C4440044 */  lwc1  $f4, 0x44($v0)
/* 2283EC 801DD1FC 3C09800D */  lui   $t1, %hi(D_800D7B20) # $t1, 0x800d
/* 2283F0 801DD200 46004282 */  mul.s $f10, $f8, $f0
/* 2283F4 801DD204 C4480048 */  lwc1  $f8, 0x48($v0)
/* 2283F8 801DD208 25297B20 */  addiu $t1, %lo(D_800D7B20) # addiu $t1, $t1, 0x7b20
/* 2283FC 801DD20C 3C0C800D */  lui   $t4, %hi(D_800D7B2C) # $t4, 0x800d
/* 228400 801DD210 E446003C */  swc1  $f6, 0x3c($v0)
/* 228404 801DD214 C4307164 */  lwc1  $f16, %lo(D_800D7164)($at)
/* 228408 801DD218 46002182 */  mul.s $f6, $f4, $f0
/* 22840C 801DD21C C4440050 */  lwc1  $f4, 0x50($v0)
/* 228410 801DD220 46105480 */  add.s $f18, $f10, $f16
/* 228414 801DD224 46004282 */  mul.s $f10, $f8, $f0
/* 228418 801DD228 C450004C */  lwc1  $f16, 0x4c($v0)
/* 22841C 801DD22C 3C01800D */  lui   $at, %hi(D_800D7158) # $at, 0x800d
/* 228420 801DD230 E4520040 */  swc1  $f18, 0x40($v0)
/* 228424 801DD234 46008482 */  mul.s $f18, $f16, $f0
/* 228428 801DD238 E4460044 */  swc1  $f6, 0x44($v0)
/* 22842C 801DD23C 258C7B2C */  addiu $t4, %lo(D_800D7B2C) # addiu $t4, $t4, 0x7b2c
/* 228430 801DD240 46002182 */  mul.s $f6, $f4, $f0
/* 228434 801DD244 E44A0048 */  swc1  $f10, 0x48($v0)
/* 228438 801DD248 8C4B0048 */  lw    $t3, 0x48($v0)
/* 22843C 801DD24C E452004C */  swc1  $f18, 0x4c($v0)
/* 228440 801DD250 E4460050 */  swc1  $f6, 0x50($v0)
/* 228444 801DD254 C4287158 */  lwc1  $f8, %lo(D_800D7158)($at)
/* 228448 801DD258 3C01800D */  lui   $at, %hi(D_800D715C) # $at, 0x800d
/* 22844C 801DD25C E4480020 */  swc1  $f8, 0x20($v0)
/* 228450 801DD260 C42A715C */  lwc1  $f10, %lo(D_800D715C)($at)
/* 228454 801DD264 3C01800D */  lui   $at, %hi(D_800D7160) # $at, 0x800d
/* 228458 801DD268 E44A0028 */  swc1  $f10, 0x28($v0)
/* 22845C 801DD26C C4307160 */  lwc1  $f16, %lo(D_800D7160)($at)
/* 228460 801DD270 E450002C */  swc1  $f16, 0x2c($v0)
/* 228464 801DD274 AD2B0000 */  sw    $t3, ($t1)
/* 228468 801DD278 8C4A004C */  lw    $t2, 0x4c($v0)
/* 22846C 801DD27C AD2A0004 */  sw    $t2, 4($t1)
/* 228470 801DD280 8C4B0050 */  lw    $t3, 0x50($v0)
/* 228474 801DD284 AD2B0008 */  sw    $t3, 8($t1)
/* 228478 801DD288 8C4E003C */  lw    $t6, 0x3c($v0)
/* 22847C 801DD28C AD8E0000 */  sw    $t6, ($t4)
/* 228480 801DD290 8C4D0040 */  lw    $t5, 0x40($v0)
/* 228484 801DD294 AD8D0004 */  sw    $t5, 4($t4)
/* 228488 801DD298 8C4E0044 */  lw    $t6, 0x44($v0)
/* 22848C 801DD29C AD8E0008 */  sw    $t6, 8($t4)
/* 228490 801DD2A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 228494 801DD2A4 27BD0020 */  addiu $sp, $sp, 0x20
/* 228498 801DD2A8 03E00008 */  jr    $ra
/* 22849C 801DD2AC 00000000 */   nop   

.type func_801DD17C_ovl17, @function
.size func_801DD17C_ovl17, . - func_801DD17C_ovl17

glabel func_801DD2B0_ovl17
/* 2284A0 801DD2B0 3C01801E */  lui   $at, %hi(D_801E5584) # $at, 0x801e
/* 2284A4 801DD2B4 C4205584 */  lwc1  $f0, %lo(D_801E5584)($at)
/* 2284A8 801DD2B8 3C03800D */  lui   $v1, %hi(D_800D7B20) # $v1, 0x800d
/* 2284AC 801DD2BC 3C0E800D */  lui   $t6, %hi(D_800D799C) # $t6, 0x800d
/* 2284B0 801DD2C0 8DCE799C */  lw    $t6, %lo(D_800D799C)($t6)
/* 2284B4 801DD2C4 24637B20 */  addiu $v1, %lo(D_800D7B20) # addiu $v1, $v1, 0x7b20
/* 2284B8 801DD2C8 3C01801E */  lui   $at, %hi(D_801E5588) # $at, 0x801e
/* 2284BC 801DD2CC C4225588 */  lwc1  $f2, %lo(D_801E5588)($at)
/* 2284C0 801DD2D0 8C790000 */  lw    $t9, ($v1)
/* 2284C4 801DD2D4 3C01801E */ lui $at, %hi(D_801E5590_ovl17)
/* 2284C8 801DD2D8 3C0F800D */  lui   $t7, %hi(D_800D7B38) # $t7, 0x800d
/* 2284CC 801DD2DC D42C5590 */  ldc1  $f12, %lo(D_801E5590_ovl17)($at)
/* 2284D0 801DD2E0 8DC2003C */  lw    $v0, 0x3c($t6)
/* 2284D4 801DD2E4 25EF7B38 */  addiu $t7, %lo(D_800D7B38) # addiu $t7, $t7, 0x7b38
/* 2284D8 801DD2E8 ADF90000 */  sw    $t9, ($t7)
/* 2284DC 801DD2EC 8C780004 */  lw    $t8, 4($v1)
/* 2284E0 801DD2F0 3C01801E */  lui   $at, %hi(D_801E56F0) # $at, 0x801e
/* 2284E4 801DD2F4 3C0A800D */  lui   $t2, %hi(D_800D7B2C) # $t2, 0x800d
/* 2284E8 801DD2F8 ADF80004 */  sw    $t8, 4($t7)
/* 2284EC 801DD2FC 8C790008 */  lw    $t9, 8($v1)
/* 2284F0 801DD300 254A7B2C */  addiu $t2, %lo(D_800D7B2C) # addiu $t2, $t2, 0x7b2c
/* 2284F4 801DD304 ADF90008 */  sw    $t9, 8($t7)
/* 2284F8 801DD308 8C78000C */  lw    $t8, 0xc($v1)
/* 2284FC 801DD30C ADF8000C */  sw    $t8, 0xc($t7)
/* 228500 801DD310 8C790010 */  lw    $t9, 0x10($v1)
/* 228504 801DD314 ADF90010 */  sw    $t9, 0x10($t7)
/* 228508 801DD318 8C780014 */  lw    $t8, 0x14($v1)
/* 22850C 801DD31C ADF80014 */  sw    $t8, 0x14($t7)
/* 228510 801DD320 C42456F0 */  lwc1  $f4, %lo(D_801E56F0)($at)
/* 228514 801DD324 3C01801E */  lui   $at, %hi(D_801E56F4) # $at, 0x801e
/* 228518 801DD328 C4520048 */  lwc1  $f18, 0x48($v0)
/* 22851C 801DD32C E444003C */  swc1  $f4, 0x3c($v0)
/* 228520 801DD330 C42656F4 */  lwc1  $f6, %lo(D_801E56F4)($at)
/* 228524 801DD334 3C01801E */  lui   $at, %hi(D_801E56F8) # $at, 0x801e
/* 228528 801DD338 E4460040 */  swc1  $f6, 0x40($v0)
/* 22852C 801DD33C C42856F8 */  lwc1  $f8, %lo(D_801E56F8)($at)
/* 228530 801DD340 3C01800E */  lui   $at, %hi(gEntitiesNextPosXArray) # $at, 0x800e
/* 228534 801DD344 E4480044 */  swc1  $f8, 0x44($v0)
/* 228538 801DD348 C42A25D0 */  lwc1  $f10, %lo(gEntitiesNextPosXArray)($at)
/* 22853C 801DD34C 3C01800E */  lui   $at, %hi(gEntitiesNextPosYArray) # $at, 0x800e
/* 228540 801DD350 46005402 */  mul.s $f16, $f10, $f0
/* 228544 801DD354 00000000 */  nop   
/* 228548 801DD358 46029102 */  mul.s $f4, $f18, $f2
/* 22854C 801DD35C C452004C */  lwc1  $f18, 0x4c($v0)
/* 228550 801DD360 46048180 */  add.s $f6, $f16, $f4
/* 228554 801DD364 E4460048 */  swc1  $f6, 0x48($v0)
/* 228558 801DD368 C4282790 */  lwc1  $f8, %lo(gEntitiesNextPosYArray)($at)
/* 22855C 801DD36C 3C01800E */  lui   $at, %hi(gEntitiesNextPosZArray) # $at, 0x800e
/* 228560 801DD370 8C490048 */  lw    $t1, 0x48($v0)
/* 228564 801DD374 46004282 */  mul.s $f10, $f8, $f0
/* 228568 801DD378 00000000 */  nop   
/* 22856C 801DD37C 46029402 */  mul.s $f16, $f18, $f2
/* 228570 801DD380 C4520050 */  lwc1  $f18, 0x50($v0)
/* 228574 801DD384 46105100 */  add.s $f4, $f10, $f16
/* 228578 801DD388 E444004C */  swc1  $f4, 0x4c($v0)
/* 22857C 801DD38C C4262950 */  lwc1  $f6, %lo(gEntitiesNextPosZArray)($at)
/* 228580 801DD390 C4440054 */  lwc1  $f4, 0x54($v0)
/* 228584 801DD394 3C01800D */  lui   $at, %hi(D_800D7158) # $at, 0x800d
/* 228588 801DD398 46003202 */  mul.s $f8, $f6, $f0
/* 22858C 801DD39C 460021A1 */  cvt.d.s $f6, $f4
/* 228590 801DD3A0 46029282 */  mul.s $f10, $f18, $f2
/* 228594 801DD3A4 00000000 */  nop   
/* 228598 801DD3A8 462C3482 */  mul.d $f18, $f6, $f12
/* 22859C 801DD3AC 460A4400 */  add.s $f16, $f8, $f10
/* 2285A0 801DD3B0 C44A0058 */  lwc1  $f10, 0x58($v0)
/* 2285A4 801DD3B4 46209220 */  cvt.s.d $f8, $f18
/* 2285A8 801DD3B8 E4500050 */  swc1  $f16, 0x50($v0)
/* 2285AC 801DD3BC C452005C */  lwc1  $f18, 0x5c($v0)
/* 2285B0 801DD3C0 46005421 */  cvt.d.s $f16, $f10
/* 2285B4 801DD3C4 E4480054 */  swc1  $f8, 0x54($v0)
/* 2285B8 801DD3C8 462C8102 */  mul.d $f4, $f16, $f12
/* 2285BC 801DD3CC 46009221 */  cvt.d.s $f8, $f18
/* 2285C0 801DD3D0 462C4282 */  mul.d $f10, $f8, $f12
/* 2285C4 801DD3D4 462021A0 */  cvt.s.d $f6, $f4
/* 2285C8 801DD3D8 46205420 */  cvt.s.d $f16, $f10
/* 2285CC 801DD3DC E4460058 */  swc1  $f6, 0x58($v0)
/* 2285D0 801DD3E0 E450005C */  swc1  $f16, 0x5c($v0)
/* 2285D4 801DD3E4 C4247158 */  lwc1  $f4, %lo(D_800D7158)($at)
/* 2285D8 801DD3E8 3C01800D */  lui   $at, %hi(D_800D715C) # $at, 0x800d
/* 2285DC 801DD3EC E4440020 */  swc1  $f4, 0x20($v0)
/* 2285E0 801DD3F0 C426715C */  lwc1  $f6, %lo(D_800D715C)($at)
/* 2285E4 801DD3F4 3C01800D */  lui   $at, %hi(D_800D7160) # $at, 0x800d
/* 2285E8 801DD3F8 E4460028 */  swc1  $f6, 0x28($v0)
/* 2285EC 801DD3FC C4327160 */  lwc1  $f18, %lo(D_800D7160)($at)
/* 2285F0 801DD400 E452002C */  swc1  $f18, 0x2c($v0)
/* 2285F4 801DD404 AC690000 */  sw    $t1, ($v1)
/* 2285F8 801DD408 8C48004C */  lw    $t0, 0x4c($v0)
/* 2285FC 801DD40C AC680004 */  sw    $t0, 4($v1)
/* 228600 801DD410 8C490050 */  lw    $t1, 0x50($v0)
/* 228604 801DD414 AC690008 */  sw    $t1, 8($v1)
/* 228608 801DD418 8C4C003C */  lw    $t4, 0x3c($v0)
/* 22860C 801DD41C AD4C0000 */  sw    $t4, ($t2)
/* 228610 801DD420 8C4B0040 */  lw    $t3, 0x40($v0)
/* 228614 801DD424 AD4B0004 */  sw    $t3, 4($t2)
/* 228618 801DD428 8C4C0044 */  lw    $t4, 0x44($v0)
/* 22861C 801DD42C 03E00008 */  jr    $ra
/* 228620 801DD430 AD4C0008 */   sw    $t4, 8($t2)

.type func_801DD2B0_ovl17, @function
.size func_801DD2B0_ovl17, . - func_801DD2B0_ovl17

/* 228624 801DD434 00000000 */  nop   
/* 228628 801DD438 00000000 */  nop   
/* 22862C 801DD43C 00000000 */  nop   


