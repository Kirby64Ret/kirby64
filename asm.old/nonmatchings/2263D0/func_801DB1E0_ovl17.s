glabel func_801DB1E0_ovl17
/* 2263D0 801DB1E0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2263D4 801DB1E4 AFB10024 */  sw         $s1, 0x24($sp)
/* 2263D8 801DB1E8 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 2263DC 801DB1EC 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 2263E0 801DB1F0 8E270000 */  lw         $a3, 0x0($s1)
/* 2263E4 801DB1F4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 2263E8 801DB1F8 AFB60038 */  sw         $s6, 0x38($sp)
/* 2263EC 801DB1FC AFB50034 */  sw         $s5, 0x34($sp)
/* 2263F0 801DB200 AFB40030 */  sw         $s4, 0x30($sp)
/* 2263F4 801DB204 AFB3002C */  sw         $s3, 0x2C($sp)
/* 2263F8 801DB208 AFB20028 */  sw         $s2, 0x28($sp)
/* 2263FC 801DB20C AFB00020 */  sw         $s0, 0x20($sp)
/* 226400 801DB210 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 226404 801DB214 8CEF0000 */  lw         $t7, 0x0($a3)
/* 226408 801DB218 3C0E801E */  lui        $t6, %hi(func_801DC91C_ovl17)
/* 22640C 801DB21C 3C01800E */  lui        $at, %hi(D_800DEDD0)
/* 226410 801DB220 000FC080 */  sll        $t8, $t7, 2
/* 226414 801DB224 00380821 */  addu       $at, $at, $t8
glabel func_801DB228_ovl14
/* 226418 801DB228 25CEC91C */  addiu      $t6, $t6, %lo(func_801DC91C_ovl17)
/* 22641C 801DB22C 0080A025 */  or         $s4, $a0, $zero
/* 226420 801DB230 AC2EEDD0 */  sw         $t6, %lo(D_800DEDD0)($at)
.L801DB234_ovl9:
/* 226424 801DB234 0C04454D */  jal        func_80111534
/* 226428 801DB238 8CE40000 */   lw        $a0, 0x0($a3)
/* 22642C 801DB23C 3C014496 */  lui        $at, (0x44960000 >> 16)
/* 226430 801DB240 4481A000 */  mtc1       $at, $f20
/* 226434 801DB244 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 226438 801DB248 44812000 */  mtc1       $at, $f4
/* 22643C 801DB24C 3C01800D */  lui        $at, %hi(D_800D7158)
/* 226440 801DB250 3C16800D */  lui        $s6, %hi(D_800D7158 + 0x14)
/* 226444 801DB254 E4247158 */  swc1       $f4, %lo(D_800D7158)($at)
.L801DB258_ovl9:
/* 226448 801DB258 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 22644C 801DB25C 44813000 */  mtc1       $at, $f6
/* 226450 801DB260 3C01800D */  lui        $at, %hi(D_800D7158 + 0x4)
/* 226454 801DB264 26D6716C */  addiu      $s6, $s6, %lo(D_800D7158 + 0x14)
/* 226458 801DB268 E426715C */  swc1       $f6, %lo(D_800D7158 + 0x4)($at)
/* 22645C 801DB26C 3C014648 */  lui        $at, (0x46480000 >> 16)
.L801DB270_ovl10:
/* 226460 801DB270 44814000 */  mtc1       $at, $f8
/* 226464 801DB274 3C01800D */  lui        $at, %hi(D_800D7158 + 0x8)
/* 226468 801DB278 44800000 */  mtc1       $zero, $f0
.L801DB27C_ovl9:
/* 22646C 801DB27C E4287160 */  swc1       $f8, %lo(D_800D7158 + 0x8)($at)
/* 226470 801DB280 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 226474 801DB284 44815000 */  mtc1       $at, $f10
/* 226478 801DB288 3C01800D */  lui        $at, %hi(D_800D7158 + 0xC)
/* 22647C 801DB28C 3C02800E */  lui        $v0, %hi(gEntitiesNextPosYArray)
/* 226480 801DB290 E42A7164 */  swc1       $f10, %lo(D_800D7158 + 0xC)($at)
glabel func_801DB294_ovl12
/* 226484 801DB294 3C01800D */  lui        $at, %hi(D_800D7158 + 0x10)
.L801DB298_ovl13:
/* 226488 801DB298 E4347168 */  swc1       $f20, %lo(D_800D7158 + 0x10)($at)
/* 22648C 801DB29C 3C014448 */  lui        $at, (0x44480000 >> 16)
/* 226490 801DB2A0 44812000 */  mtc1       $at, $f4
/* 226494 801DB2A4 3C01801E */  lui        $at, %hi(.L801E5520_ovl17)
.L801DB2A8_ovl10:
/* 226498 801DB2A8 24422790 */  addiu      $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 22649C 801DB2AC E6C40000 */  swc1       $f4, 0x0($s6)
/* 2264A0 801DB2B0 C4265520 */  lwc1       $f6, %lo(.L801E5520_ovl17)($at)
/* 2264A4 801DB2B4 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
.L801DB2B8_ovl15:
/* 2264A8 801DB2B8 E4267170 */  swc1       $f6, %lo(D_800D7158 + 0x18)($at)
glabel func_801DB2BC_ovl11
/* 2264AC 801DB2BC E4400000 */  swc1       $f0, 0x0($v0)
/* 2264B0 801DB2C0 C4480000 */  lwc1       $f8, 0x0($v0)
/* 2264B4 801DB2C4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 2264B8 801DB2C8 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 2264BC 801DB2CC C6CA0000 */  lwc1       $f10, 0x0($s6)
.L801DB2D0_ovl10:
/* 2264C0 801DB2D0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 2264C4 801DB2D4 0C07829D */  jal        func_801E0A74_ovl17
glabel func_801DB2D8_ovl13
/* 2264C8 801DB2D8 E42A2950 */   swc1      $f10, %lo(gEntitiesNextPosZArray)($at)
glabel func_801DB2DC_ovl12
/* 2264CC 801DB2DC 3C19800D */  lui        $t9, %hi(D_800D6E48)
/* 2264D0 801DB2E0 8F396E48 */  lw         $t9, %lo(D_800D6E48)($t9)
/* 2264D4 801DB2E4 240F0002 */  addiu      $t7, $zero, 0x2
/* 2264D8 801DB2E8 3C01800D */  lui        $at, %hi(D_800D7098)
.L801DB2EC_ovl11:
/* 2264DC 801DB2EC 17200035 */  bnez       $t9, .L801DB3C4_ovl17
.L801DB2F0_ovl16:
/* 2264E0 801DB2F0 00000000 */   nop
/* 2264E4 801DB2F4 AC2F7098 */  sw         $t7, %lo(D_800D7098)($at)
glabel func_801DB2F8_ovl15
/* 2264E8 801DB2F8 8E250000 */  lw         $a1, 0x0($s1)
glabel func_801DB2FC_ovl10
/* 2264EC 801DB2FC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 2264F0 801DB300 00002025 */  or         $a0, $zero, $zero
/* 2264F4 801DB304 8CAE0000 */  lw         $t6, 0x0($a1)
/* 2264F8 801DB308 000EC080 */  sll        $t8, $t6, 2
.L801DB30C_ovl13:
/* 2264FC 801DB30C 00380821 */  addu       $at, $at, $t8
/* 226500 801DB310 0C02BEED */  jal        func_800AFBB4
.L801DB314_ovl9:
/* 226504 801DB314 AC20EF90 */   sw        $zero, %lo(D_800DEF90)($at)
/* 226508 801DB318 8E390000 */  lw         $t9, 0x0($s1)
glabel func_801DB31C_ovl11
/* 22650C 801DB31C 3C13800D */  lui        $s3, %hi(D_800D7B20)
/* 226510 801DB320 3C01800E */  lui        $at, %hi(D_800DF150)
/* 226514 801DB324 8F2F0000 */  lw         $t7, 0x0($t9)
/* 226518 801DB328 44800000 */  mtc1       $zero, $f0
.L801DB32C_ovl15:
/* 22651C 801DB32C 26737B20 */  addiu      $s3, $s3, %lo(D_800D7B20)
/* 226520 801DB330 000F7080 */  sll        $t6, $t7, 2
/* 226524 801DB334 002E0821 */  addu       $at, $at, $t6
glabel func_801DB338_ovl16
/* 226528 801DB338 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
.L801DB33C_ovl9:
/* 22652C 801DB33C E6600000 */  swc1       $f0, 0x0($s3)
.L801DB340_ovl9:
/* 226530 801DB340 8E6F0000 */  lw         $t7, 0x0($s3)
.L801DB344_ovl11:
/* 226534 801DB344 3C18800D */  lui        $t8, %hi(D_800D7B38)
/* 226538 801DB348 E6740010 */  swc1       $f20, 0x10($s3)
glabel func_801DB34C_ovl11
/* 22653C 801DB34C 27187B38 */  addiu      $t8, $t8, %lo(D_800D7B38)
glabel func_801DB350_ovl9
/* 226540 801DB350 E660000C */  swc1       $f0, 0xC($s3)
/* 226544 801DB354 E6600014 */  swc1       $f0, 0x14($s3)
glabel func_801DB358_ovl13
/* 226548 801DB358 E6600004 */  swc1       $f0, 0x4($s3)
/* 22654C 801DB35C E6600008 */  swc1       $f0, 0x8($s3)
/* 226550 801DB360 AF0F0000 */  sw         $t7, 0x0($t8)
/* 226554 801DB364 8E790004 */  lw         $t9, 0x4($s3)
/* 226558 801DB368 3C050001 */  lui        $a1, (0x10691 >> 16)
.L801DB36C_ovl16:
/* 22655C 801DB36C 44060000 */  mfc1       $a2, $f0
/* 226560 801DB370 AF190004 */  sw         $t9, 0x4($t8)
/* 226564 801DB374 8E6F0008 */  lw         $t7, 0x8($s3)
glabel func_801DB378_ovl15
/* 226568 801DB378 34A50691 */  ori        $a1, $a1, (0x10691 & 0xFFFF)
/* 22656C 801DB37C 24040010 */  addiu      $a0, $zero, 0x10
/* 226570 801DB380 AF0F0008 */  sw         $t7, 0x8($t8)
/* 226574 801DB384 8E79000C */  lw         $t9, 0xC($s3)
/* 226578 801DB388 AF19000C */  sw         $t9, 0xC($t8)
/* 22657C 801DB38C 8E6F0010 */  lw         $t7, 0x10($s3)
/* 226580 801DB390 AF0F0010 */  sw         $t7, 0x10($t8)
.L801DB394_ovl9:
/* 226584 801DB394 8E790014 */  lw         $t9, 0x14($s3)
/* 226588 801DB398 0C02ABCD */  jal        func_800AAF34
/* 22658C 801DB39C AF190014 */   sw        $t9, 0x14($t8)
glabel func_801DB3A0_ovl13
/* 226590 801DB3A0 24040010 */  addiu      $a0, $zero, 0x10
glabel func_801DB3A4_ovl9
/* 226594 801DB3A4 0C02CC1C */  jal        func_800B3070
/* 226598 801DB3A8 3C054000 */   lui       $a1, (0x40000000 >> 16)
/* 22659C 801DB3AC 0C06B9F8 */  jal        func_801AE7E0_ovl7
glabel func_801DB3B0_ovl14
/* 2265A0 801DB3B0 24040013 */   addiu     $a0, $zero, 0x13
/* 2265A4 801DB3B4 0C002DAF */  jal        finish_current_thread
glabel func_801DB3B8_ovl16
/* 2265A8 801DB3B8 240400D1 */   addiu     $a0, $zero, 0xD1
.L801DB3BC_ovl11:
/* 2265AC 801DB3BC 10000005 */  b          .L801DB3D4_ovl17
.L801DB3C0_ovl15:
/* 2265B0 801DB3C0 00000000 */   nop
.L801DB3C4_ovl17:
/* 2265B4 801DB3C4 0C02F03C */  jal        func_800BC0F0
/* 2265B8 801DB3C8 24040002 */   addiu     $a0, $zero, 0x2
/* 2265BC 801DB3CC 3C13800D */  lui        $s3, %hi(D_800D7B20)
/* 2265C0 801DB3D0 26737B20 */  addiu      $s3, $s3, %lo(D_800D7B20)
.L801DB3D4_ovl17:
/* 2265C4 801DB3D4 3C01800D */  lui        $at, %hi(D_800D7098)
/* 2265C8 801DB3D8 AC207098 */  sw         $zero, %lo(D_800D7098)($at)
/* 2265CC 801DB3DC 8E250000 */  lw         $a1, 0x0($s1)
.L801DB3E0_ovl11:
/* 2265D0 801DB3E0 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 2265D4 801DB3E4 3C0E800B */  lui        $t6, %hi(func_800B4924)
/* 2265D8 801DB3E8 8CB80000 */  lw         $t8, 0x0($a1)
/* 2265DC 801DB3EC 25CE4924 */  addiu      $t6, $t6, %lo(func_800B4924)
/* 2265E0 801DB3F0 3C0F801E */  lui        $t7, %hi(func_801DBA8C_ovl17)
/* 2265E4 801DB3F4 0018C880 */  sll        $t9, $t8, 2
glabel func_801DB3F8_ovl12
/* 2265E8 801DB3F8 00390821 */  addu       $at, $at, $t9
.L801DB3FC_ovl14:
/* 2265EC 801DB3FC AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
glabel func_801DB400_ovl16
/* 2265F0 801DB400 8CB80000 */  lw         $t8, 0x0($a1)
.L801DB404_ovl11:
/* 2265F4 801DB404 3C01800E */  lui        $at, %hi(D_800DF150)
/* 2265F8 801DB408 25EFBA8C */  addiu      $t7, $t7, %lo(func_801DBA8C_ovl17)
/* 2265FC 801DB40C 00187080 */  sll        $t6, $t8, 2
/* 226600 801DB410 002E0821 */  addu       $at, $at, $t6
/* 226604 801DB414 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 226608 801DB418 0C02BEED */  jal        func_800AFBB4
/* 22660C 801DB41C 24040001 */   addiu     $a0, $zero, 0x1
/* 226610 801DB420 3C01801E */  lui        $at, %hi(D_801E5524_ovl17)
/* 226614 801DB424 C4305524 */  lwc1       $f16, %lo(D_801E5524_ovl17)($at)
/* 226618 801DB428 3C01801E */  lui        $at, %hi(D_801E5528_ovl17)
/* 22661C 801DB42C 3C128013 */  lui        $s2, %hi(gKirbyState)
/* 226620 801DB430 C4325528 */  lwc1       $f18, %lo(D_801E5528_ovl17)($at)
/* 226624 801DB434 8E270000 */  lw         $a3, 0x0($s1)
/* 226628 801DB438 2652E7C0 */  addiu      $s2, $s2, %lo(gKirbyState)
/* 22662C 801DB43C AE400024 */  sw         $zero, 0x24($s2)
/* 226630 801DB440 A6400068 */  sh         $zero, 0x68($s2)
/* 226634 801DB444 8CF90000 */  lw         $t9, 0x0($a3)
/* 226638 801DB448 3C01800E */  lui        $at, %hi(D_800E7CE0)
/* 22663C 801DB44C 3C10800F */  lui        $s0, %hi(D_800E98E0)
/* 226640 801DB450 0019C080 */  sll        $t8, $t9, 2
/* 226644 801DB454 00380821 */  addu       $at, $at, $t8
/* 226648 801DB458 AC207CE0 */  sw         $zero, %lo(D_800E7CE0)($at)
/* 22664C 801DB45C 8CEF0000 */  lw         $t7, 0x0($a3)
glabel func_801DB460_ovl14
/* 226650 801DB460 261098E0 */  addiu      $s0, $s0, %lo(D_800E98E0)
/* 226654 801DB464 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 226658 801DB468 000F7080 */  sll        $t6, $t7, 2
/* 22665C 801DB46C 020EC821 */  addu       $t9, $s0, $t6
/* 226660 801DB470 AF200000 */  sw         $zero, 0x0($t9)
/* 226664 801DB474 8CF80000 */  lw         $t8, 0x0($a3)
glabel func_801DB478_ovl10
/* 226668 801DB478 3C0A800F */  lui        $t2, %hi(D_800EC120)
/* 22666C 801DB47C 254AC120 */  addiu      $t2, $t2, %lo(D_800EC120)
.L801DB480_ovl16:
/* 226670 801DB480 00187880 */  sll        $t7, $t8, 2
/* 226674 801DB484 002F0821 */  addu       $at, $at, $t7
.L801DB488_ovl16:
/* 226678 801DB488 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 22667C 801DB48C 8CEE0000 */  lw         $t6, 0x0($a3)
.L801DB490_ovl9:
/* 226680 801DB490 2415FFFF */  addiu      $s5, $zero, -0x1
glabel func_801DB494_ovl12
/* 226684 801DB494 3C01800F */  lui        $at, %hi(D_800EBF60)
/* 226688 801DB498 000EC880 */  sll        $t9, $t6, 2
/* 22668C 801DB49C 0159C021 */  addu       $t8, $t2, $t9
/* 226690 801DB4A0 AF150000 */  sw         $s5, 0x0($t8)
/* 226694 801DB4A4 8CE30000 */  lw         $v1, 0x0($a3)
/* 226698 801DB4A8 3C0B800F */  lui        $t3, %hi(D_800EA6E0)
/* 22669C 801DB4AC 256BA6E0 */  addiu      $t3, $t3, %lo(D_800EA6E0)
.L801DB4B0_ovl16:
/* 2266A0 801DB4B0 00031880 */  sll        $v1, $v1, 2
/* 2266A4 801DB4B4 01437821 */  addu       $t7, $t2, $v1
/* 2266A8 801DB4B8 8DE20000 */  lw         $v0, 0x0($t7)
/* 2266AC 801DB4BC 00230821 */  addu       $at, $at, $v1
/* 2266B0 801DB4C0 44807000 */  mtc1       $zero, $f14
/* 2266B4 801DB4C4 AC22BF60 */  sw         $v0, %lo(D_800EBF60)($at)
/* 2266B8 801DB4C8 8CEE0000 */  lw         $t6, 0x0($a3)
.L801DB4CC_ovl14:
/* 2266BC 801DB4CC 3C01800F */  lui        $at, %hi(D_800EBDA0)
glabel func_801DB4D0_ovl13
/* 2266C0 801DB4D0 3C0C800F */  lui        $t4, %hi(D_800EA8A0)
.L801DB4D4_ovl13:
/* 2266C4 801DB4D4 000EC880 */  sll        $t9, $t6, 2
glabel func_801DB4D8_ovl9
/* 2266C8 801DB4D8 00390821 */  addu       $at, $at, $t9
.L801DB4DC_ovl13:
/* 2266CC 801DB4DC AC22BDA0 */  sw         $v0, %lo(D_800EBDA0)($at)
/* 2266D0 801DB4E0 8CF80000 */  lw         $t8, 0x0($a3)
/* 2266D4 801DB4E4 3C01800F */  lui        $at, %hi(D_800EBBE0)
/* 2266D8 801DB4E8 258CA8A0 */  addiu      $t4, $t4, %lo(D_800EA8A0)
/* 2266DC 801DB4EC 00187880 */  sll        $t7, $t8, 2
/* 2266E0 801DB4F0 002F0821 */  addu       $at, $at, $t7
/* 2266E4 801DB4F4 AC22BBE0 */  sw         $v0, %lo(D_800EBBE0)($at)
/* 2266E8 801DB4F8 8CEE0000 */  lw         $t6, 0x0($a3)
/* 2266EC 801DB4FC 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 2266F0 801DB500 3C08800E */  lui        $t0, %hi(gEntitiesAngleYArray)
/* 2266F4 801DB504 000EC880 */  sll        $t9, $t6, 2
.L801DB508_ovl16:
/* 2266F8 801DB508 00390821 */  addu       $at, $at, $t9
.L801DB50C_ovl15:
/* 2266FC 801DB50C E4304550 */  swc1       $f16, %lo(gEntitiesScaleXArray)($at)
/* 226700 801DB510 8CF80000 */  lw         $t8, 0x0($a3)
.L801DB514_ovl15:
/* 226704 801DB514 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 226708 801DB518 250841D0 */  addiu      $t0, $t0, %lo(gEntitiesAngleYArray)
/* 22670C 801DB51C 00187880 */  sll        $t7, $t8, 2
.L801DB520_ovl16:
/* 226710 801DB520 002F0821 */  addu       $at, $at, $t7
/* 226714 801DB524 E4304710 */  swc1       $f16, %lo(gEntitiesScaleYArray)($at)
glabel func_801DB528_ovl16
/* 226718 801DB528 8CEE0000 */  lw         $t6, 0x0($a3)
/* 22671C 801DB52C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
.L801DB530_ovl10:
/* 226720 801DB530 3C0D800F */  lui        $t5, %hi(D_800EAA60)
.L801DB534_ovl12:
/* 226724 801DB534 000EC880 */  sll        $t9, $t6, 2
/* 226728 801DB538 00390821 */  addu       $at, $at, $t9
/* 22672C 801DB53C E43048D0 */  swc1       $f16, %lo(gEntitiesScaleZArray)($at)
.L801DB540_ovl10:
/* 226730 801DB540 8CF80000 */  lw         $t8, 0x0($a3)
glabel func_801DB544_ovl12
/* 226734 801DB544 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 226738 801DB548 25ADAA60 */  addiu      $t5, $t5, %lo(D_800EAA60)
/* 22673C 801DB54C 00187880 */  sll        $t7, $t8, 2
/* 226740 801DB550 016F7021 */  addu       $t6, $t3, $t7
/* 226744 801DB554 E5D20000 */  swc1       $f18, 0x0($t6)
glabel func_801DB558_ovl9
/* 226748 801DB558 8CE30000 */  lw         $v1, 0x0($a3)
/* 22674C 801DB55C 3C09800F */  lui        $t1, %hi(D_800EAFA0)
/* 226750 801DB560 2529AFA0 */  addiu      $t1, $t1, %lo(D_800EAFA0)
.L801DB564_ovl14:
/* 226754 801DB564 00031880 */  sll        $v1, $v1, 2
.L801DB568_ovl10:
/* 226758 801DB568 0163C821 */  addu       $t9, $t3, $v1
/* 22675C 801DB56C C7240000 */  lwc1       $f4, 0x0($t9)
/* 226760 801DB570 00230821 */  addu       $at, $at, $v1
.L801DB574_ovl13:
/* 226764 801DB574 44800000 */  mtc1       $zero, $f0
/* 226768 801DB578 E4244010 */  swc1       $f4, %lo(gEntitiesAngleXArray)($at)
.L801DB57C_ovl14:
/* 22676C 801DB57C 8CF80000 */  lw         $t8, 0x0($a3)
/* 226770 801DB580 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
/* 226774 801DB584 3C040001 */  lui        $a0, (0x100F0 >> 16)
/* 226778 801DB588 00187880 */  sll        $t7, $t8, 2
/* 22677C 801DB58C 018F7021 */  addu       $t6, $t4, $t7
/* 226780 801DB590 E5CE0000 */  swc1       $f14, 0x0($t6)
glabel func_801DB594_ovl11
/* 226784 801DB594 8CE30000 */  lw         $v1, 0x0($a3)
/* 226788 801DB598 348400F0 */  ori        $a0, $a0, (0x100F0 & 0xFFFF)
/* 22678C 801DB59C 24050020 */  addiu      $a1, $zero, 0x20
.L801DB5A0_ovl16:
/* 226790 801DB5A0 00031880 */  sll        $v1, $v1, 2
.L801DB5A4_ovl14:
/* 226794 801DB5A4 0183C821 */  addu       $t9, $t4, $v1
.L801DB5A8_ovl13:
/* 226798 801DB5A8 C7260000 */  lwc1       $f6, 0x0($t9)
/* 22679C 801DB5AC 0103C021 */  addu       $t8, $t0, $v1
/* 2267A0 801DB5B0 24060010 */  addiu      $a2, $zero, 0x10
/* 2267A4 801DB5B4 E7060000 */  swc1       $f6, 0x0($t8)
/* 2267A8 801DB5B8 8CEF0000 */  lw         $t7, 0x0($a3)
glabel func_801DB5BC_ovl15
/* 2267AC 801DB5BC 000F7080 */  sll        $t6, $t7, 2
/* 2267B0 801DB5C0 01AEC821 */  addu       $t9, $t5, $t6
/* 2267B4 801DB5C4 E7320000 */  swc1       $f18, 0x0($t9)
glabel func_801DB5C8_ovl11
/* 2267B8 801DB5C8 8CE30000 */  lw         $v1, 0x0($a3)
/* 2267BC 801DB5CC 00031880 */  sll        $v1, $v1, 2
.L801DB5D0_ovl16:
/* 2267C0 801DB5D0 01A3C021 */  addu       $t8, $t5, $v1
.L801DB5D4_ovl14:
/* 2267C4 801DB5D4 C7080000 */  lwc1       $f8, 0x0($t8)
/* 2267C8 801DB5D8 00230821 */  addu       $at, $at, $v1
.L801DB5DC_ovl13:
/* 2267CC 801DB5DC E4284390 */  swc1       $f8, %lo(gEntitiesAngleZArray)($at)
/* 2267D0 801DB5E0 8CEF0000 */  lw         $t7, 0x0($a3)
.L801DB5E4_ovl15:
/* 2267D4 801DB5E4 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 2267D8 801DB5E8 000F7080 */  sll        $t6, $t7, 2
/* 2267DC 801DB5EC 012EC821 */  addu       $t9, $t1, $t6
.L801DB5F0_ovl14:
/* 2267E0 801DB5F0 E72E0000 */  swc1       $f14, 0x0($t9)
/* 2267E4 801DB5F4 8CE30000 */  lw         $v1, 0x0($a3)
/* 2267E8 801DB5F8 3C19800D */  lui        $t9, %hi(D_800D7B38)
/* 2267EC 801DB5FC 27397B38 */  addiu      $t9, $t9, %lo(D_800D7B38)
/* 2267F0 801DB600 00031880 */  sll        $v1, $v1, 2
.L801DB604_ovl12:
/* 2267F4 801DB604 0123C021 */  addu       $t8, $t1, $v1
.L801DB608_ovl14:
/* 2267F8 801DB608 C7020000 */  lwc1       $f2, 0x0($t8)
.L801DB60C_ovl15:
/* 2267FC 801DB60C 00230821 */  addu       $at, $at, $v1
/* 226800 801DB610 E422ADE0 */  swc1       $f2, %lo(D_800EADE0)($at)
/* 226804 801DB614 8CEF0000 */  lw         $t7, 0x0($a3)
/* 226808 801DB618 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 22680C 801DB61C 000F7080 */  sll        $t6, $t7, 2
/* 226810 801DB620 002E0821 */  addu       $at, $at, $t6
/* 226814 801DB624 E422AC20 */  swc1       $f2, %lo(D_800EAC20)($at)
/* 226818 801DB628 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17)
glabel func_801DB62C_ovl9
/* 22681C 801DB62C E42056D0 */  swc1       $f0, %lo(D_801E56D0_ovl17)($at)
.L801DB630_ovl15:
/* 226820 801DB630 3C01800D */  lui        $at, %hi(D_800D7158 + 0xC)
/* 226824 801DB634 C42C7164 */  lwc1       $f12, %lo(D_800D7158 + 0xC)($at)
/* 226828 801DB638 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17 + 0x4)
/* 22682C 801DB63C E42C56D4 */  swc1       $f12, %lo(D_801E56D0_ovl17 + 0x4)($at)
/* 226830 801DB640 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17 + 0x8)
/* 226834 801DB644 E42056D8 */  swc1       $f0, %lo(D_801E56D0_ovl17 + 0x8)($at)
/* 226838 801DB648 3C01801E */  lui        $at, %hi(.L801E56DC_ovl17)
.L801DB64C_ovl16:
/* 22683C 801DB64C E42C56DC */  swc1       $f12, %lo(.L801E56DC_ovl17)($at)
.L801DB650_ovl16:
/* 226840 801DB650 3C01801E */  lui        $at, %hi(D_801E56E0_ovl17)
.L801DB654_ovl15:
/* 226844 801DB654 E42056E0 */  swc1       $f0, %lo(D_801E56E0_ovl17)($at)
/* 226848 801DB658 3C01801E */  lui        $at, %hi(D_801E56E4_ovl17)
/* 22684C 801DB65C E42056E4 */  swc1       $f0, %lo(D_801E56E4_ovl17)($at)
/* 226850 801DB660 3C01801E */  lui        $at, %hi(D_801E56E8_ovl17)
/* 226854 801DB664 E42E56E8 */  swc1       $f14, %lo(D_801E56E8_ovl17)($at)
/* 226858 801DB668 3C01801E */  lui        $at, %hi(.L801E56EC_ovl17)
glabel func_801DB66C_ovl14
/* 22685C 801DB66C E42E56EC */  swc1       $f14, %lo(.L801E56EC_ovl17)($at)
/* 226860 801DB670 3C01800D */  lui        $at, %hi(D_800D7158 + 0x10)
glabel func_801DB674_ovl9
/* 226864 801DB674 E6600000 */  swc1       $f0, 0x0($s3)
glabel func_801DB678_ovl15
/* 226868 801DB678 E6600004 */  swc1       $f0, 0x4($s3)
/* 22686C 801DB67C E6600008 */  swc1       $f0, 0x8($s3)
/* 226870 801DB680 E660000C */  swc1       $f0, 0xC($s3)
glabel func_801DB684_ovl14
/* 226874 801DB684 E6600010 */  swc1       $f0, 0x10($s3)
/* 226878 801DB688 C42A7168 */  lwc1       $f10, %lo(D_800D7158 + 0x10)($at)
/* 22687C 801DB68C 8E6F0000 */  lw         $t7, 0x0($s3)
/* 226880 801DB690 3C01801E */  lui        $at, %hi(func_801E552C_ovl17)
/* 226884 801DB694 E66A0014 */  swc1       $f10, 0x14($s3)
glabel func_801DB698_ovl16
/* 226888 801DB698 AF2F0000 */  sw         $t7, 0x0($t9)
.L801DB69C_ovl15:
/* 22688C 801DB69C 8E780004 */  lw         $t8, 0x4($s3)
/* 226890 801DB6A0 AF380004 */  sw         $t8, 0x4($t9)
/* 226894 801DB6A4 8E6F0008 */  lw         $t7, 0x8($s3)
/* 226898 801DB6A8 AF2F0008 */  sw         $t7, 0x8($t9)
/* 22689C 801DB6AC 8E78000C */  lw         $t8, 0xC($s3)
/* 2268A0 801DB6B0 AF38000C */  sw         $t8, 0xC($t9)
/* 2268A4 801DB6B4 8E6F0010 */  lw         $t7, 0x10($s3)
/* 2268A8 801DB6B8 AF2F0010 */  sw         $t7, 0x10($t9)
/* 2268AC 801DB6BC 8E780014 */  lw         $t8, 0x14($s3)
.L801DB6C0_ovl15:
/* 2268B0 801DB6C0 AF380014 */  sw         $t8, 0x14($t9)
/* 2268B4 801DB6C4 C424552C */  lwc1       $f4, %lo(func_801E552C_ovl17)($at)
.L801DB6C8_ovl12:
/* 2268B8 801DB6C8 0C02A619 */  jal        func_800A9864
.L801DB6CC_ovl10:
/* 2268BC 801DB6CC E5040000 */   swc1      $f4, 0x0($t0)
.L801DB6D0_ovl11:
/* 2268C0 801DB6D0 44800000 */  mtc1       $zero, $f0
/* 2268C4 801DB6D4 8E8E003C */  lw         $t6, 0x3C($s4)
glabel func_801DB6D8_ovl12
/* 2268C8 801DB6D8 3C014100 */  lui        $at, (0x41000000 >> 16)
glabel func_801DB6DC_ovl9
/* 2268CC 801DB6DC 3C13800F */  lui        $s3, %hi(D_800E9560)
/* 2268D0 801DB6E0 E5C0001C */  swc1       $f0, 0x1C($t6)
.L801DB6E4_ovl15:
/* 2268D4 801DB6E4 8E99003C */  lw         $t9, 0x3C($s4)
/* 2268D8 801DB6E8 4481A000 */  mtc1       $at, $f20
/* 2268DC 801DB6EC 26739560 */  addiu      $s3, $s3, %lo(D_800E9560)
/* 2268E0 801DB6F0 E7200020 */  swc1       $f0, 0x20($t9)
.L801DB6F4_ovl10:
/* 2268E4 801DB6F4 8E98003C */  lw         $t8, 0x3C($s4)
/* 2268E8 801DB6F8 C6C60000 */  lwc1       $f6, 0x0($s6)
/* 2268EC 801DB6FC 3C160001 */  lui        $s6, (0x1068A >> 16)
/* 2268F0 801DB700 36D6068A */  ori        $s6, $s6, (0x1068A & 0xFFFF)
.L801DB704_ovl10:
/* 2268F4 801DB704 E7060024 */  swc1       $f6, 0x24($t8)
.L801DB708_ovl15:
/* 2268F8 801DB708 8E430024 */  lw         $v1, 0x24($s2)
/* 2268FC 801DB70C 24140001 */  addiu      $s4, $zero, 0x1
.L801DB710_ovl17:
/* 226900 801DB710 10600015 */  beqz       $v1, .L801DB768_ovl17
/* 226904 801DB714 3C040001 */   lui       $a0, (0x10688 >> 16)
/* 226908 801DB718 0C02A806 */  jal        func_800AA018
/* 22690C 801DB71C 34840688 */   ori       $a0, $a0, (0x10688 & 0xFFFF)
/* 226910 801DB720 3C040001 */  lui        $a0, (0x10689 >> 16)
.L801DB724_ovl16:
/* 226914 801DB724 0C02A806 */  jal        func_800AA018
.L801DB728_ovl15:
/* 226918 801DB728 34840689 */   ori       $a0, $a0, (0x10689 & 0xFFFF)
glabel func_801DB72C_ovl12
/* 22691C 801DB72C 0C02BC8C */  jal        func_800AF230
/* 226920 801DB730 00000000 */   nop
/* 226924 801DB734 5440000D */  bnel       $v0, $zero, .L801DB76C_ovl17
/* 226928 801DB738 8E2F0000 */   lw        $t7, 0x0($s1)
.L801DB73C_ovl13:
/* 22692C 801DB73C 8E2F0000 */  lw         $t7, 0x0($s1)
.L801DB740_ovl17:
/* 226930 801DB740 02802025 */  or         $a0, $s4, $zero
.L801DB744_ovl16:
/* 226934 801DB744 8DEE0000 */  lw         $t6, 0x0($t7)
/* 226938 801DB748 000EC880 */  sll        $t9, $t6, 2
.L801DB74C_ovl11:
/* 22693C 801DB74C 0219C021 */  addu       $t8, $s0, $t9
.L801DB750_ovl11:
/* 226940 801DB750 0C002DAF */  jal        finish_current_thread
/* 226944 801DB754 AF140000 */   sw        $s4, 0x0($t8)
/* 226948 801DB758 0C02BC8C */  jal        func_800AF230
/* 22694C 801DB75C 00000000 */   nop
/* 226950 801DB760 5040FFF7 */  beql       $v0, $zero, .L801DB740_ovl17
/* 226954 801DB764 8E2F0000 */   lw        $t7, 0x0($s1)
.L801DB768_ovl17:
/* 226958 801DB768 8E2F0000 */  lw         $t7, 0x0($s1)
.L801DB76C_ovl17:
/* 22695C 801DB76C 3C040001 */  lui        $a0, (0x1068B >> 16)
glabel func_801DB770_ovl15
/* 226960 801DB770 8DEE0000 */  lw         $t6, 0x0($t7)
.L801DB774_ovl11:
/* 226964 801DB774 000EC880 */  sll        $t9, $t6, 2
/* 226968 801DB778 0219C021 */  addu       $t8, $s0, $t9
/* 22696C 801DB77C 8F0F0000 */  lw         $t7, 0x0($t8)
glabel func_801DB780_ovl14
/* 226970 801DB780 11E00062 */  beqz       $t7, .L801DB90C_ovl17
/* 226974 801DB784 00000000 */   nop
glabel func_801DB788_ovl14
/* 226978 801DB788 3C040001 */  lui        $a0, (0x10682 >> 16)
.L801DB78C_ovl11:
/* 22697C 801DB78C 0C02A806 */  jal        func_800AA018
/* 226980 801DB790 34840682 */   ori       $a0, $a0, (0x10682 & 0xFFFF)
/* 226984 801DB794 3C040001 */  lui        $a0, (0x10683 >> 16)
/* 226988 801DB798 0C02A806 */  jal        func_800AA018
/* 22698C 801DB79C 34840683 */   ori       $a0, $a0, (0x10683 & 0xFFFF)
.L801DB7A0_ovl9:
/* 226990 801DB7A0 2404003B */  addiu      $a0, $zero, 0x3B
/* 226994 801DB7A4 0C0782CE */  jal        func_801E0B38_ovl17
glabel func_801DB7A8_ovl13
/* 226998 801DB7A8 00002825 */   or        $a1, $zero, $zero
/* 22699C 801DB7AC 1040003F */  beqz       $v0, .L801DB8AC_ovl17
/* 2269A0 801DB7B0 00000000 */   nop
/* 2269A4 801DB7B4 8E270000 */  lw         $a3, 0x0($s1)
.L801DB7B8_ovl11:
/* 2269A8 801DB7B8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
.L801DB7BC_ovl11:
/* 2269AC 801DB7BC 00022080 */  sll        $a0, $v0, 2
/* 2269B0 801DB7C0 8CEE0000 */  lw         $t6, 0x0($a3)
/* 2269B4 801DB7C4 000EC880 */  sll        $t9, $t6, 2
/* 2269B8 801DB7C8 00390821 */  addu       $at, $at, $t9
/* 2269BC 801DB7CC C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
glabel func_801DB7D0_ovl11
/* 2269C0 801DB7D0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 2269C4 801DB7D4 00240821 */  addu       $at, $at, $a0
/* 2269C8 801DB7D8 46004287 */  neg.s      $f10, $f8
.L801DB7DC_ovl13:
/* 2269CC 801DB7DC E42AA6E0 */  swc1       $f10, %lo(D_800EA6E0)($at)
/* 2269D0 801DB7E0 8CF80000 */  lw         $t8, 0x0($a3)
/* 2269D4 801DB7E4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 2269D8 801DB7E8 00187880 */  sll        $t7, $t8, 2
/* 2269DC 801DB7EC 002F0821 */  addu       $at, $at, $t7
.L801DB7F0_ovl12:
/* 2269E0 801DB7F0 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 2269E4 801DB7F4 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 2269E8 801DB7F8 00240821 */  addu       $at, $at, $a0
glabel func_801DB7FC_ovl14
/* 2269EC 801DB7FC 46002187 */  neg.s      $f6, $f4
/* 2269F0 801DB800 3C18800F */  lui        $t8, %hi(D_800EBBE0)
glabel func_801DB804_ovl16
/* 2269F4 801DB804 E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
/* 2269F8 801DB808 8CEE0000 */  lw         $t6, 0x0($a3)
.L801DB80C_ovl13:
/* 2269FC 801DB80C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 226A00 801DB810 2718BBE0 */  addiu      $t8, $t8, %lo(D_800EBBE0)
/* 226A04 801DB814 000EC880 */  sll        $t9, $t6, 2
/* 226A08 801DB818 00390821 */  addu       $at, $at, $t9
/* 226A0C 801DB81C C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 226A10 801DB820 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 226A14 801DB824 00240821 */  addu       $at, $at, $a0
/* 226A18 801DB828 46004287 */  neg.s      $f10, $f8
/* 226A1C 801DB82C E42AAA60 */  swc1       $f10, %lo(D_800EAA60)($at)
/* 226A20 801DB830 8CE30000 */  lw         $v1, 0x0($a3)
/* 226A24 801DB834 00031880 */  sll        $v1, $v1, 2
/* 226A28 801DB838 00782821 */  addu       $a1, $v1, $t8
/* 226A2C 801DB83C 8CAF0000 */  lw         $t7, 0x0($a1)
/* 226A30 801DB840 16AF0003 */  bne        $s5, $t7, .L801DB850_ovl17
/* 226A34 801DB844 00000000 */   nop
/* 226A38 801DB848 10000018 */  b          .L801DB8AC_ovl17
/* 226A3C 801DB84C ACA20000 */   sw        $v0, 0x0($a1)
.L801DB850_ovl17:
/* 226A40 801DB850 3C0E800F */  lui        $t6, %hi(D_800EBDA0)
/* 226A44 801DB854 25CEBDA0 */  addiu      $t6, $t6, %lo(D_800EBDA0)
/* 226A48 801DB858 006E2021 */  addu       $a0, $v1, $t6
/* 226A4C 801DB85C 8C990000 */  lw         $t9, 0x0($a0)
/* 226A50 801DB860 16B90003 */  bne        $s5, $t9, func_801DB870_ovl17
.L801DB864_ovl16:
/* 226A54 801DB864 00000000 */   nop
.L801DB868_ovl11:
/* 226A58 801DB868 10000010 */  b          .L801DB8AC_ovl17
/* 226A5C 801DB86C AC820000 */   sw        $v0, 0x0($a0)
glabel func_801DB870_ovl17
/* 226A60 801DB870 3C18800F */  lui        $t8, %hi(D_800EBF60)
/* 226A64 801DB874 2718BF60 */  addiu      $t8, $t8, %lo(D_800EBF60)
/* 226A68 801DB878 00782021 */  addu       $a0, $v1, $t8
.L801DB87C_ovl12:
/* 226A6C 801DB87C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 226A70 801DB880 16AF0003 */  bne        $s5, $t7, .L801DB890_ovl17
/* 226A74 801DB884 00000000 */   nop
/* 226A78 801DB888 10000008 */  b          .L801DB8AC_ovl17
.L801DB88C_ovl11:
/* 226A7C 801DB88C AC820000 */   sw        $v0, 0x0($a0)
.L801DB890_ovl17:
/* 226A80 801DB890 3C0E800F */  lui        $t6, %hi(D_800EC120)
.L801DB894_ovl11:
/* 226A84 801DB894 25CEC120 */  addiu      $t6, $t6, %lo(D_800EC120)
/* 226A88 801DB898 006E2021 */  addu       $a0, $v1, $t6
/* 226A8C 801DB89C 8C990000 */  lw         $t9, 0x0($a0)
glabel func_801DB8A0_ovl11
/* 226A90 801DB8A0 16B90002 */  bne        $s5, $t9, .L801DB8AC_ovl17
/* 226A94 801DB8A4 00000000 */   nop
/* 226A98 801DB8A8 AC820000 */  sw         $v0, 0x0($a0)
.L801DB8AC_ovl17:
/* 226A9C 801DB8AC 0C06B9F8 */  jal        func_801AE7E0_ovl7
/* 226AA0 801DB8B0 24040012 */   addiu     $a0, $zero, 0x12
/* 226AA4 801DB8B4 0C02BC8C */  jal        func_800AF230
.L801DB8B8_ovl12:
/* 226AA8 801DB8B8 00000000 */   nop
/* 226AAC 801DB8BC 14400062 */  bnez       $v0, .L801DBA48_ovl17
/* 226AB0 801DB8C0 00000000 */   nop
/* 226AB4 801DB8C4 8E580024 */  lw         $t8, 0x24($s2)
.L801DB8C8_ovl17:
/* 226AB8 801DB8C8 1700005F */  bnez       $t8, .L801DBA48_ovl17
/* 226ABC 801DB8CC 00000000 */   nop
/* 226AC0 801DB8D0 0C002DAF */  jal        finish_current_thread
/* 226AC4 801DB8D4 02802025 */   or        $a0, $s4, $zero
/* 226AC8 801DB8D8 8E2F0000 */  lw         $t7, 0x0($s1)
/* 226ACC 801DB8DC 8DEE0000 */  lw         $t6, 0x0($t7)
.L801DB8E0_ovl16:
/* 226AD0 801DB8E0 000EC880 */  sll        $t9, $t6, 2
/* 226AD4 801DB8E4 0219C021 */  addu       $t8, $s0, $t9
glabel func_801DB8E8_ovl11
/* 226AD8 801DB8E8 8F0F0000 */  lw         $t7, 0x0($t8)
glabel func_801DB8EC_ovl9
/* 226ADC 801DB8EC 15E00056 */  bnez       $t7, .L801DBA48_ovl17
.L801DB8F0_ovl14:
/* 226AE0 801DB8F0 00000000 */   nop
.L801DB8F4_ovl15:
/* 226AE4 801DB8F4 0C02BC8C */  jal        func_800AF230
.L801DB8F8_ovl15:
/* 226AE8 801DB8F8 00000000 */   nop
/* 226AEC 801DB8FC 5040FFF2 */  beql       $v0, $zero, .L801DB8C8_ovl17
.L801DB900_ovl15:
/* 226AF0 801DB900 8E580024 */   lw        $t8, 0x24($s2)
/* 226AF4 801DB904 10000050 */  b          .L801DBA48_ovl17
/* 226AF8 801DB908 00000000 */   nop
.L801DB90C_ovl17:
/* 226AFC 801DB90C 0C02A806 */  jal        func_800AA018
glabel func_801DB910_ovl12
/* 226B00 801DB910 3484068B */   ori       $a0, $a0, (0x1068B & 0xFFFF)
.L801DB914_ovl16:
/* 226B04 801DB914 8E2E0000 */  lw         $t6, 0x0($s1)
/* 226B08 801DB918 3C0F800E */  lui        $t7, %hi(D_800DFF50)
.L801DB91C_ovl15:
/* 226B0C 801DB91C 3C010001 */  lui        $at, (0x10682 >> 16)
/* 226B10 801DB920 8DD90000 */  lw         $t9, 0x0($t6)
/* 226B14 801DB924 34210682 */  ori        $at, $at, (0x10682 & 0xFFFF)
/* 226B18 801DB928 4406A000 */  mfc1       $a2, $f20
.L801DB92C_ovl10:
/* 226B1C 801DB92C 0019C080 */  sll        $t8, $t9, 2
glabel func_801DB930_ovl9
/* 226B20 801DB930 01F87821 */  addu       $t7, $t7, $t8
.L801DB934_ovl12:
/* 226B24 801DB934 8DEFFF50 */  lw         $t7, %lo(D_800DFF50)($t7)
/* 226B28 801DB938 02C02025 */  or         $a0, $s6, $zero
/* 226B2C 801DB93C 3C050001 */  lui        $a1, (0x100F0 >> 16)
/* 226B30 801DB940 15E1002B */  bne        $t7, $at, .L801DB9F0_ovl17
glabel func_801DB944_ovl12
/* 226B34 801DB944 00000000 */   nop
/* 226B38 801DB948 0C02A971 */  jal        func_800AA5C4
.L801DB94C_ovl10:
/* 226B3C 801DB94C 34A500F0 */   ori       $a1, $a1, (0x100F0 & 0xFFFF)
/* 226B40 801DB950 8E270000 */  lw         $a3, 0x0($s1)
/* 226B44 801DB954 8CEE0000 */  lw         $t6, 0x0($a3)
/* 226B48 801DB958 000EC880 */  sll        $t9, $t6, 2
/* 226B4C 801DB95C 0279C021 */  addu       $t8, $s3, $t9
.L801DB960_ovl16:
/* 226B50 801DB960 AF000000 */  sw         $zero, 0x0($t8)
.L801DB964_ovl14:
/* 226B54 801DB964 8CE30000 */  lw         $v1, 0x0($a3)
.L801DB968_ovl12:
/* 226B58 801DB968 00031880 */  sll        $v1, $v1, 2
/* 226B5C 801DB96C 02637821 */  addu       $t7, $s3, $v1
.L801DB970_ovl10:
/* 226B60 801DB970 8DEE0000 */  lw         $t6, 0x0($t7)
.L801DB974_ovl15:
/* 226B64 801DB974 29C10004 */  slti       $at, $t6, 0x4
/* 226B68 801DB978 50200019 */  beql       $at, $zero, func_801DB9E0_ovl17
/* 226B6C 801DB97C 4405A000 */   mfc1      $a1, $f20
/* 226B70 801DB980 8E590024 */  lw         $t9, 0x24($s2)
.L801DB984_ovl17:
/* 226B74 801DB984 0203C021 */  addu       $t8, $s0, $v1
.L801DB988_ovl12:
/* 226B78 801DB988 57200015 */  bnel       $t9, $zero, func_801DB9E0_ovl17
/* 226B7C 801DB98C 4405A000 */   mfc1      $a1, $f20
/* 226B80 801DB990 8F0F0000 */  lw         $t7, 0x0($t8)
.L801DB994_ovl11:
/* 226B84 801DB994 55E00012 */  bnel       $t7, $zero, func_801DB9E0_ovl17
/* 226B88 801DB998 4405A000 */   mfc1      $a1, $f20
/* 226B8C 801DB99C 0C002DAF */  jal        finish_current_thread
/* 226B90 801DB9A0 02802025 */   or        $a0, $s4, $zero
.L801DB9A4_ovl15:
/* 226B94 801DB9A4 8E270000 */  lw         $a3, 0x0($s1)
/* 226B98 801DB9A8 8CEE0000 */  lw         $t6, 0x0($a3)
/* 226B9C 801DB9AC 000EC880 */  sll        $t9, $t6, 2
/* 226BA0 801DB9B0 02791021 */  addu       $v0, $s3, $t9
.L801DB9B4_ovl11:
/* 226BA4 801DB9B4 8C580000 */  lw         $t8, 0x0($v0)
.L801DB9B8_ovl10:
/* 226BA8 801DB9B8 270F0001 */  addiu      $t7, $t8, 0x1
/* 226BAC 801DB9BC AC4F0000 */  sw         $t7, 0x0($v0)
/* 226BB0 801DB9C0 8CE30000 */  lw         $v1, 0x0($a3)
/* 226BB4 801DB9C4 00031880 */  sll        $v1, $v1, 2
/* 226BB8 801DB9C8 02637021 */  addu       $t6, $s3, $v1
/* 226BBC 801DB9CC 8DD90000 */  lw         $t9, 0x0($t6)
.L801DB9D0_ovl15:
/* 226BC0 801DB9D0 2B210004 */  slti       $at, $t9, 0x4
.L801DB9D4_ovl14:
/* 226BC4 801DB9D4 5420FFEB */  bnel       $at, $zero, .L801DB984_ovl17
.L801DB9D8_ovl12:
/* 226BC8 801DB9D8 8E590024 */   lw        $t9, 0x24($s2)
glabel func_801DB9DC_ovl10
/* 226BCC 801DB9DC 4405A000 */  mfc1       $a1, $f20
glabel func_801DB9E0_ovl17
/* 226BD0 801DB9E0 0C02A7E6 */  jal        func_800A9F98
/* 226BD4 801DB9E4 02C02025 */   or        $a0, $s6, $zero
/* 226BD8 801DB9E8 10000003 */  b          func_801DB9F8_ovl17
.L801DB9EC_ovl16:
/* 226BDC 801DB9EC 00000000 */   nop
.L801DB9F0_ovl17:
/* 226BE0 801DB9F0 0C02A806 */  jal        func_800AA018
/* 226BE4 801DB9F4 02C02025 */   or        $a0, $s6, $zero
glabel func_801DB9F8_ovl17
/* 226BE8 801DB9F8 0C02BC8C */  jal        func_800AF230
/* 226BEC 801DB9FC 00000000 */   nop
glabel func_801DBA00_ovl15
/* 226BF0 801DBA00 14400011 */  bnez       $v0, .L801DBA48_ovl17
/* 226BF4 801DBA04 00000000 */   nop
/* 226BF8 801DBA08 8E580024 */  lw         $t8, 0x24($s2)
.L801DBA0C_ovl17:
/* 226BFC 801DBA0C 1700000E */  bnez       $t8, .L801DBA48_ovl17
/* 226C00 801DBA10 00000000 */   nop
/* 226C04 801DBA14 8E2F0000 */  lw         $t7, 0x0($s1)
/* 226C08 801DBA18 8DEE0000 */  lw         $t6, 0x0($t7)
.L801DBA1C_ovl12:
/* 226C0C 801DBA1C 000EC880 */  sll        $t9, $t6, 2
.L801DBA20_ovl12:
/* 226C10 801DBA20 0219C021 */  addu       $t8, $s0, $t9
/* 226C14 801DBA24 8F0F0000 */  lw         $t7, 0x0($t8)
/* 226C18 801DBA28 15E00007 */  bnez       $t7, .L801DBA48_ovl17
.L801DBA2C_ovl15:
/* 226C1C 801DBA2C 00000000 */   nop
/* 226C20 801DBA30 0C002DAF */  jal        finish_current_thread
/* 226C24 801DBA34 02802025 */   or        $a0, $s4, $zero
.L801DBA38_ovl13:
/* 226C28 801DBA38 0C02BC8C */  jal        func_800AF230
.L801DBA3C_ovl13:
/* 226C2C 801DBA3C 00000000 */   nop
.L801DBA40_ovl16:
/* 226C30 801DBA40 5040FFF2 */  beql       $v0, $zero, .L801DBA0C_ovl17
.L801DBA44_ovl13:
/* 226C34 801DBA44 8E580024 */   lw        $t8, 0x24($s2)
.L801DBA48_ovl17:
/* 226C38 801DBA48 1000FF31 */  b          .L801DB710_ovl17
/* 226C3C 801DBA4C 8E430024 */   lw        $v1, 0x24($s2)
/* 226C40 801DBA50 00000000 */  nop
glabel func_801DBA54_ovl16
/* 226C44 801DBA54 00000000 */  nop
.L801DBA58_ovl15:
/* 226C48 801DBA58 00000000 */  nop
/* 226C4C 801DBA5C 00000000 */  nop
/* 226C50 801DBA60 8FBF003C */  lw         $ra, 0x3C($sp)
/* 226C54 801DBA64 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 226C58 801DBA68 8FB00020 */  lw         $s0, 0x20($sp)
/* 226C5C 801DBA6C 8FB10024 */  lw         $s1, 0x24($sp)
/* 226C60 801DBA70 8FB20028 */  lw         $s2, 0x28($sp)
/* 226C64 801DBA74 8FB3002C */  lw         $s3, 0x2C($sp)
.L801DBA78_ovl12:
/* 226C68 801DBA78 8FB40030 */  lw         $s4, 0x30($sp)
/* 226C6C 801DBA7C 8FB50034 */  lw         $s5, 0x34($sp)
/* 226C70 801DBA80 8FB60038 */  lw         $s6, 0x38($sp)
/* 226C74 801DBA84 03E00008 */  jr         $ra
glabel func_801DBA88_ovl15
/* 226C78 801DBA88 27BD0040 */   addiu     $sp, $sp, 0x40
