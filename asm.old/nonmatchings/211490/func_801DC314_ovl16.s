glabel func_801DC314_ovl16
/* 2125C4 801DC314 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2125C8 801DC318 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 2125CC 801DC31C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
glabel func_801DC320_ovl9
/* 2125D0 801DC320 AFBF0014 */  sw         $ra, 0x14($sp)
.L801DC324_ovl11:
/* 2125D4 801DC324 AFA40058 */  sw         $a0, 0x58($sp)
/* 2125D8 801DC328 AFA5005C */  sw         $a1, 0x5C($sp)
.L801DC32C_ovl12:
/* 2125DC 801DC32C AFA60060 */  sw         $a2, 0x60($sp)
/* 2125E0 801DC330 8DC40000 */  lw         $a0, 0x0($t6)
/* 2125E4 801DC334 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 2125E8 801DC338 00047880 */  sll        $t7, $a0, 2
/* 2125EC 801DC33C 030FC021 */  addu       $t8, $t8, $t7
.L801DC340_ovl11:
/* 2125F0 801DC340 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 2125F4 801DC344 0C044554 */  jal        func_80111550
.L801DC348_ovl12:
/* 2125F8 801DC348 AFB8002C */   sw        $t8, 0x2C($sp)
.L801DC34C_ovl13:
/* 2125FC 801DC34C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 212600 801DC350 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
.L801DC354_ovl14:
/* 212604 801DC354 8FB9002C */  lw         $t9, 0x2C($sp)
.L801DC358_ovl12:
/* 212608 801DC358 8D050000 */  lw         $a1, 0x0($t0)
.L801DC35C_ovl14:
/* 21260C 801DC35C 0C044722 */  jal        func_80111C88
/* 212610 801DC360 8F24008C */   lw        $a0, 0x8C($t9)
/* 212614 801DC364 10400012 */  beqz       $v0, .L801DC3B0_ovl16
/* 212618 801DC368 00402025 */   or        $a0, $v0, $zero
.L801DC36C_ovl14:
/* 21261C 801DC36C 8FA30058 */  lw         $v1, 0x58($sp)
.L801DC370_ovl12:
/* 212620 801DC370 50600004 */  beql       $v1, $zero, .L801DC384_ovl16
/* 212624 801DC374 8FA3005C */   lw        $v1, 0x5C($sp)
glabel func_801DC378_ovl14
/* 212628 801DC378 8C490024 */  lw         $t1, 0x24($v0)
.L801DC37C_ovl14:
/* 21262C 801DC37C AD230008 */  sw         $v1, 0x8($t1)
/* 212630 801DC380 8FA3005C */  lw         $v1, 0x5C($sp)
.L801DC384_ovl16:
/* 212634 801DC384 50600004 */  beql       $v1, $zero, .L801DC398_ovl16
glabel func_801DC388_ovl11
/* 212638 801DC388 8FA30060 */   lw        $v1, 0x60($sp)
glabel func_801DC38C_ovl14
/* 21263C 801DC38C 8C4A0024 */  lw         $t2, 0x24($v0)
/* 212640 801DC390 AD430030 */  sw         $v1, 0x30($t2)
/* 212644 801DC394 8FA30060 */  lw         $v1, 0x60($sp)
.L801DC398_ovl16:
/* 212648 801DC398 10600003 */  beqz       $v1, .L801DC3A8_ovl16
/* 21264C 801DC39C 00000000 */   nop
/* 212650 801DC3A0 8C4B0024 */  lw         $t3, 0x24($v0)
.L801DC3A4_ovl13:
/* 212654 801DC3A4 AD630058 */  sw         $v1, 0x58($t3)
.L801DC3A8_ovl16:
/* 212658 801DC3A8 0C0447B3 */  jal        func_80111ECC
/* 21265C 801DC3AC 00000000 */   nop
.L801DC3B0_ovl16:
/* 212660 801DC3B0 0C044054 */  jal        func_80110150
/* 212664 801DC3B4 27A40038 */   addiu     $a0, $sp, 0x38
/* 212668 801DC3B8 3C06800D */  lui        $a2, %hi(D_800D7098)
/* 21266C 801DC3BC 24C67098 */  addiu      $a2, $a2, %lo(D_800D7098)
.L801DC3C0_ovl14:
/* 212670 801DC3C0 8CCC0018 */  lw         $t4, 0x18($a2)
.L801DC3C4_ovl10:
/* 212674 801DC3C4 1180002B */  beqz       $t4, .L801DC474_ovl16
/* 212678 801DC3C8 00000000 */   nop
/* 21267C 801DC3CC 0C0442C0 */  jal        func_80110B00
.L801DC3D0_ovl13:
/* 212680 801DC3D0 27A40038 */   addiu     $a0, $sp, 0x38
/* 212684 801DC3D4 10400007 */  beqz       $v0, func_801DC3F4_ovl17
.L801DC3D8_ovl10:
/* 212688 801DC3D8 8FA4002C */   lw        $a0, 0x2C($sp)
.L801DC3DC_ovl11:
/* 21268C 801DC3DC 0C076E95 */  jal        func_801DBA54_ovl16
.L801DC3E0_ovl14:
/* 212690 801DC3E0 27A50038 */   addiu     $a1, $sp, 0x38
/* 212694 801DC3E4 3C06800D */  lui        $a2, %hi(D_800D7098)
/* 212698 801DC3E8 24C67098 */  addiu      $a2, $a2, %lo(D_800D7098)
.L801DC3EC_ovl13:
/* 21269C 801DC3EC 10000019 */  b          .L801DC454_ovl16
/* 2126A0 801DC3F0 ACC00028 */   sw        $zero, 0x28($a2)
glabel func_801DC3F4_ovl17
/* 2126A4 801DC3F4 0C0443F5 */  jal        func_80110FD4
/* 2126A8 801DC3F8 27A40038 */   addiu     $a0, $sp, 0x38
.L801DC3FC_ovl11:
/* 2126AC 801DC3FC 3C06800D */  lui        $a2, %hi(D_800D7098)
/* 2126B0 801DC400 10400008 */  beqz       $v0, .L801DC424_ovl16
/* 2126B4 801DC404 24C67098 */   addiu     $a2, $a2, %lo(D_800D7098)
/* 2126B8 801DC408 8FA4002C */  lw         $a0, 0x2C($sp)
/* 2126BC 801DC40C 0C076E95 */  jal        func_801DBA54_ovl16
/* 2126C0 801DC410 27A50038 */   addiu     $a1, $sp, 0x38
/* 2126C4 801DC414 3C06800D */  lui        $a2, %hi(D_800D7098)
/* 2126C8 801DC418 24C67098 */  addiu      $a2, $a2, %lo(D_800D7098)
/* 2126CC 801DC41C 1000000D */  b          .L801DC454_ovl16
/* 2126D0 801DC420 ACC00028 */   sw        $zero, 0x28($a2)
.L801DC424_ovl16:
/* 2126D4 801DC424 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 2126D8 801DC428 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
.L801DC42C_ovl11:
/* 2126DC 801DC42C 8FA2002C */  lw         $v0, 0x2C($sp)
/* 2126E0 801DC430 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 2126E4 801DC434 8DAE0000 */  lw         $t6, 0x0($t5)
.L801DC438_ovl9:
/* 2126E8 801DC438 2418FFFF */  addiu      $t8, $zero, -0x1
.L801DC43C_ovl12:
/* 2126EC 801DC43C 000E7880 */  sll        $t7, $t6, 2
/* 2126F0 801DC440 002F0821 */  addu       $at, $at, $t7
glabel func_801DC444_ovl13
/* 2126F4 801DC444 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
/* 2126F8 801DC448 A0400043 */  sb         $zero, 0x43($v0)
/* 2126FC 801DC44C A058003A */  sb         $t8, 0x3A($v0)
.L801DC450_ovl13:
/* 212700 801DC450 ACC00028 */  sw         $zero, 0x28($a2)
.L801DC454_ovl16:
/* 212704 801DC454 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 212708 801DC458 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
glabel func_801DC45C_ovl12
/* 21270C 801DC45C 3C03800F */  lui        $v1, %hi(D_800E83E0)
glabel func_801DC460_ovl17
/* 212710 801DC460 8F280000 */  lw         $t0, 0x0($t9)
/* 212714 801DC464 00084880 */  sll        $t1, $t0, 2
/* 212718 801DC468 00691821 */  addu       $v1, $v1, $t1
/* 21271C 801DC46C 10000098 */  b          .L801DC6D0_ovl16
/* 212720 801DC470 8C6383E0 */   lw        $v1, %lo(D_800E83E0)($v1)
.L801DC474_ovl16:
/* 212724 801DC474 0C0442C0 */  jal        func_80110B00
.L801DC478_ovl12:
/* 212728 801DC478 27A40038 */   addiu     $a0, $sp, 0x38
/* 21272C 801DC47C 10400045 */  beqz       $v0, func_801DC594_ovl16
/* 212730 801DC480 8FA4002C */   lw        $a0, 0x2C($sp)
/* 212734 801DC484 0C076E95 */  jal        func_801DBA54_ovl16
.L801DC488_ovl12:
/* 212738 801DC488 27A50038 */   addiu     $a1, $sp, 0x38
/* 21273C 801DC48C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 212740 801DC490 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 212744 801DC494 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 212748 801DC498 3C06800D */  lui        $a2, %hi(D_800D7098)
/* 21274C 801DC49C 8C4A0000 */  lw         $t2, 0x0($v0)
.L801DC4A0_ovl12:
/* 212750 801DC4A0 24010008 */  addiu      $at, $zero, 0x8
/* 212754 801DC4A4 24C67098 */  addiu      $a2, $a2, %lo(D_800D7098)
glabel func_801DC4A8_ovl12
/* 212758 801DC4A8 000A5880 */  sll        $t3, $t2, 2
/* 21275C 801DC4AC 006B1821 */  addu       $v1, $v1, $t3
/* 212760 801DC4B0 8C6383E0 */  lw         $v1, %lo(D_800E83E0)($v1)
/* 212764 801DC4B4 8FAE002C */  lw         $t6, 0x2C($sp)
/* 212768 801DC4B8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
glabel func_801DC4BC_ovl11
/* 21276C 801DC4BC 1061000C */  beq        $v1, $at, .L801DC4F0_ovl16
/* 212770 801DC4C0 24010009 */   addiu     $at, $zero, 0x9
/* 212774 801DC4C4 10610013 */  beq        $v1, $at, .L801DC514_ovl16
/* 212778 801DC4C8 24010012 */   addiu     $at, $zero, 0x12
/* 21277C 801DC4CC 50610009 */  beql       $v1, $at, .L801DC4F4_ovl16
/* 212780 801DC4D0 81CF003A */   lb        $t7, 0x3A($t6)
/* 212784 801DC4D4 ACC00028 */  sw         $zero, 0x28($a2)
/* 212788 801DC4D8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 21278C 801DC4DC 3C03800F */  lui        $v1, %hi(D_800E83E0)
.L801DC4E0_ovl11:
/* 212790 801DC4E0 000C6880 */  sll        $t5, $t4, 2
/* 212794 801DC4E4 006D1821 */  addu       $v1, $v1, $t5
/* 212798 801DC4E8 10000079 */  b          .L801DC6D0_ovl16
/* 21279C 801DC4EC 8C6383E0 */   lw        $v1, %lo(D_800E83E0)($v1)
.L801DC4F0_ovl16:
/* 2127A0 801DC4F0 81CF003A */  lb         $t7, 0x3A($t6)
.L801DC4F4_ovl16:
/* 2127A4 801DC4F4 3C05801B */  lui        $a1, %hi(func_801AC11C_ovl7)
glabel func_801DC4F8_ovl9
/* 2127A8 801DC4F8 24A5C11C */  addiu      $a1, $a1, %lo(func_801AC11C_ovl7)
/* 2127AC 801DC4FC 000FC080 */  sll        $t8, $t7, 2
/* 2127B0 801DC500 00982021 */  addu       $a0, $a0, $t8
.L801DC504_ovl11:
/* 2127B4 801DC504 0C02C7B2 */  jal        assign_new_process_entry
/* 2127B8 801DC508 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 2127BC 801DC50C 3C06800D */  lui        $a2, %hi(D_800D7098)
/* 2127C0 801DC510 24C67098 */  addiu      $a2, $a2, %lo(D_800D7098)
.L801DC514_ovl16:
/* 2127C4 801DC514 8CD90028 */  lw         $t9, 0x28($a2)
.L801DC518_ovl14:
/* 2127C8 801DC518 24080001 */  addiu      $t0, $zero, 0x1
/* 2127CC 801DC51C 240401B6 */  addiu      $a0, $zero, 0x1B6
.L801DC520_ovl14:
/* 2127D0 801DC520 17200014 */  bnez       $t9, .L801DC574_ovl16
/* 2127D4 801DC524 00000000 */   nop
/* 2127D8 801DC528 0C029D9E */  jal        play_sound
/* 2127DC 801DC52C ACC80028 */   sw        $t0, 0x28($a2)
/* 2127E0 801DC530 24040005 */  addiu      $a0, $zero, 0x5
.L801DC534_ovl15:
/* 2127E4 801DC534 0C067829 */  jal        func_8019E0A4_ovl7
.L801DC538_ovl11:
/* 2127E8 801DC538 24050008 */   addiu     $a1, $zero, 0x8
/* 2127EC 801DC53C 2401FFFF */  addiu      $at, $zero, -0x1
/* 2127F0 801DC540 1041000C */  beq        $v0, $at, .L801DC574_ovl16
/* 2127F4 801DC544 8FA9002C */   lw        $t1, 0x2C($sp)
/* 2127F8 801DC548 8123003A */  lb         $v1, 0x3A($t1)
.L801DC54C_ovl13:
/* 2127FC 801DC54C 00025880 */  sll        $t3, $v0, 2
.L801DC550_ovl11:
/* 212800 801DC550 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 212804 801DC554 1C600006 */  bgtz       $v1, .L801DC570_ovl16
/* 212808 801DC558 002B0821 */   addu      $at, $at, $t3
/* 21280C 801DC55C 00025080 */  sll        $t2, $v0, 2
/* 212810 801DC560 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801DC564_ovl12:
/* 212814 801DC564 002A0821 */  addu       $at, $at, $t2
/* 212818 801DC568 10000002 */  b          .L801DC574_ovl16
.L801DC56C_ovl11:
/* 21281C 801DC56C AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L801DC570_ovl16:
/* 212820 801DC570 AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
.L801DC574_ovl16:
/* 212824 801DC574 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 212828 801DC578 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 21282C 801DC57C 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 212830 801DC580 8D8D0000 */  lw         $t5, 0x0($t4)
.L801DC584_ovl15:
/* 212834 801DC584 000D7080 */  sll        $t6, $t5, 2
.L801DC588_ovl12:
/* 212838 801DC588 006E1821 */  addu       $v1, $v1, $t6
/* 21283C 801DC58C 10000050 */  b          .L801DC6D0_ovl16
/* 212840 801DC590 8C6383E0 */   lw        $v1, %lo(D_800E83E0)($v1)
glabel func_801DC594_ovl16
/* 212844 801DC594 0C0443F5 */  jal        func_80110FD4
glabel func_801DC598_ovl10
/* 212848 801DC598 27A40038 */   addiu     $a0, $sp, 0x38
.L801DC59C_ovl12:
/* 21284C 801DC59C 3C06800D */  lui        $a2, %hi(D_800D7098)
.L801DC5A0_ovl11:
/* 212850 801DC5A0 10400037 */  beqz       $v0, func_801DC680_ovl16
/* 212854 801DC5A4 24C67098 */   addiu     $a2, $a2, %lo(D_800D7098)
.L801DC5A8_ovl9:
/* 212858 801DC5A8 8FA4002C */  lw         $a0, 0x2C($sp)
/* 21285C 801DC5AC 0C076E95 */  jal        func_801DBA54_ovl16
glabel func_801DC5B0_ovl11
/* 212860 801DC5B0 27A50038 */   addiu     $a1, $sp, 0x38
glabel func_801DC5B4_ovl12
/* 212864 801DC5B4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 212868 801DC5B8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 21286C 801DC5BC 3C19800F */  lui        $t9, %hi(D_800E83E0)
/* 212870 801DC5C0 3C06800D */  lui        $a2, %hi(D_800D7098)
/* 212874 801DC5C4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 212878 801DC5C8 24010006 */  addiu      $at, $zero, 0x6
/* 21287C 801DC5CC 24C67098 */  addiu      $a2, $a2, %lo(D_800D7098)
/* 212880 801DC5D0 000FC080 */  sll        $t8, $t7, 2
/* 212884 801DC5D4 0338C821 */  addu       $t9, $t9, $t8
/* 212888 801DC5D8 8F3983E0 */  lw         $t9, %lo(D_800E83E0)($t9)
/* 21288C 801DC5DC 57210022 */  bnel       $t9, $at, .L801DC668_ovl16
/* 212890 801DC5E0 ACC00028 */   sw        $zero, 0x28($a2)
/* 212894 801DC5E4 8CC80028 */  lw         $t0, 0x28($a2)
/* 212898 801DC5E8 24090001 */  addiu      $t1, $zero, 0x1
/* 21289C 801DC5EC 240401B6 */  addiu      $a0, $zero, 0x1B6
/* 2128A0 801DC5F0 15000014 */  bnez       $t0, .L801DC644_ovl16
glabel func_801DC5F4_ovl12
/* 2128A4 801DC5F4 00000000 */   nop
/* 2128A8 801DC5F8 0C029D9E */  jal        play_sound
/* 2128AC 801DC5FC ACC90028 */   sw        $t1, 0x28($a2)
/* 2128B0 801DC600 24040005 */  addiu      $a0, $zero, 0x5
/* 2128B4 801DC604 0C067829 */  jal        func_8019E0A4_ovl7
/* 2128B8 801DC608 24050008 */   addiu     $a1, $zero, 0x8
/* 2128BC 801DC60C 2401FFFF */  addiu      $at, $zero, -0x1
.L801DC610_ovl14:
/* 2128C0 801DC610 1041000C */  beq        $v0, $at, .L801DC644_ovl16
/* 2128C4 801DC614 8FAA002C */   lw        $t2, 0x2C($sp)
/* 2128C8 801DC618 8143003A */  lb         $v1, 0x3A($t2)
/* 2128CC 801DC61C 00026080 */  sll        $t4, $v0, 2
/* 2128D0 801DC620 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 2128D4 801DC624 1C600006 */  bgtz       $v1, .L801DC640_ovl16
/* 2128D8 801DC628 002C0821 */   addu      $at, $at, $t4
.L801DC62C_ovl13:
/* 2128DC 801DC62C 00025880 */  sll        $t3, $v0, 2
/* 2128E0 801DC630 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 2128E4 801DC634 002B0821 */  addu       $at, $at, $t3
/* 2128E8 801DC638 10000002 */  b          .L801DC644_ovl16
/* 2128EC 801DC63C AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L801DC640_ovl16:
/* 2128F0 801DC640 AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
.L801DC644_ovl16:
/* 2128F4 801DC644 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
.L801DC648_ovl14:
/* 2128F8 801DC648 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 2128FC 801DC64C 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 212900 801DC650 8DAE0000 */  lw         $t6, 0x0($t5)
.L801DC654_ovl12:
/* 212904 801DC654 000E7880 */  sll        $t7, $t6, 2
.L801DC658_ovl12:
/* 212908 801DC658 006F1821 */  addu       $v1, $v1, $t7
/* 21290C 801DC65C 1000001C */  b          .L801DC6D0_ovl16
.L801DC660_ovl13:
/* 212910 801DC660 8C6383E0 */   lw        $v1, %lo(D_800E83E0)($v1)
.L801DC664_ovl14:
/* 212914 801DC664 ACC00028 */  sw         $zero, 0x28($a2)
.L801DC668_ovl16:
/* 212918 801DC668 8C580000 */  lw         $t8, 0x0($v0)
/* 21291C 801DC66C 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 212920 801DC670 0018C880 */  sll        $t9, $t8, 2
glabel func_801DC674_ovl14
/* 212924 801DC674 00791821 */  addu       $v1, $v1, $t9
/* 212928 801DC678 10000015 */  b          .L801DC6D0_ovl16
/* 21292C 801DC67C 8C6383E0 */   lw        $v1, %lo(D_800E83E0)($v1)
glabel func_801DC680_ovl16
/* 212930 801DC680 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 212934 801DC684 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 212938 801DC688 8FAB002C */  lw         $t3, 0x2C($sp)
.L801DC68C_ovl17:
/* 21293C 801DC68C 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 212940 801DC690 8D090000 */  lw         $t1, 0x0($t0)
/* 212944 801DC694 240CFFFF */  addiu      $t4, $zero, -0x1
/* 212948 801DC698 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L801DC69C_ovl12:
/* 21294C 801DC69C 00095080 */  sll        $t2, $t1, 2
/* 212950 801DC6A0 002A0821 */  addu       $at, $at, $t2
/* 212954 801DC6A4 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
/* 212958 801DC6A8 A1600043 */  sb         $zero, 0x43($t3)
.L801DC6AC_ovl10:
/* 21295C 801DC6AC 8FAD002C */  lw         $t5, 0x2C($sp)
/* 212960 801DC6B0 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 212964 801DC6B4 A1AC003A */  sb         $t4, 0x3A($t5)
.L801DC6B8_ovl14:
/* 212968 801DC6B8 ACC00028 */  sw         $zero, 0x28($a2)
/* 21296C 801DC6BC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 212970 801DC6C0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 212974 801DC6C4 000FC080 */  sll        $t8, $t7, 2
/* 212978 801DC6C8 00781821 */  addu       $v1, $v1, $t8
/* 21297C 801DC6CC 8C6383E0 */  lw         $v1, %lo(D_800E83E0)($v1)
.L801DC6D0_ovl16:
/* 212980 801DC6D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 212984 801DC6D4 27BD0058 */  addiu      $sp, $sp, 0x58
.L801DC6D8_ovl14:
/* 212988 801DC6D8 00601025 */  or         $v0, $v1, $zero
.L801DC6DC_ovl17:
/* 21298C 801DC6DC 03E00008 */  jr         $ra
/* 212990 801DC6E0 00000000 */   nop
