glabel func_801AF398_ovl7
/* 155408 801AF398 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 15540C 801AF39C AFB00018 */  sw         $s0, 0x18($sp)
/* 155410 801AF3A0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 155414 801AF3A4 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 155418 801AF3A8 8E0E0000 */  lw         $t6, 0x0($s0)
/* 15541C 801AF3AC AFBF001C */  sw         $ra, 0x1C($sp)
/* 155420 801AF3B0 AFA40050 */  sw         $a0, 0x50($sp)
/* 155424 801AF3B4 8DC20000 */  lw         $v0, 0x0($t6)
/* 155428 801AF3B8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 15542C 801AF3BC 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 155430 801AF3C0 00021080 */  sll        $v0, $v0, 2
/* 155434 801AF3C4 3C18800F */  lui        $t8, %hi(D_800E98E0)
/* 155438 801AF3C8 00220821 */  addu       $at, $at, $v0
/* 15543C 801AF3CC 01E27821 */  addu       $t7, $t7, $v0
/* 155440 801AF3D0 0302C021 */  addu       $t8, $t8, $v0
/* 155444 801AF3D4 C42C25D0 */  lwc1       $f12, %lo(gEntitiesNextPosXArray)($at)
/* 155448 801AF3D8 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 15544C 801AF3DC 8F1898E0 */  lw         $t8, %lo(D_800E98E0)($t8)
/* 155450 801AF3E0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 155454 801AF3E4 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
/* 155458 801AF3E8 00C23021 */  addu       $a2, $a2, $v0
/* 15545C 801AF3EC 00220821 */  addu       $at, $at, $v0
/* 155460 801AF3F0 C42E2790 */  lwc1       $f14, %lo(gEntitiesNextPosYArray)($at)
/* 155464 801AF3F4 8CC62950 */  lw         $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 155468 801AF3F8 AFAF0034 */  sw         $t7, 0x34($sp)
/* 15546C 801AF3FC 0C02CC8D */  jal        func_800B3234
/* 155470 801AF400 AFB80030 */   sw        $t8, 0x30($sp)
/* 155474 801AF404 10400023 */  beqz       $v0, .L801AF494_ovl7
/* 155478 801AF408 00000000 */   nop
/* 15547C 801AF40C 8E030000 */  lw         $v1, 0x0($s0)
/* 155480 801AF410 3C09800F */  lui        $t1, %hi(D_800E9AA0)
/* 155484 801AF414 3C0C800F */  lui        $t4, %hi(D_800E9C60)
/* 155488 801AF418 8C790000 */  lw         $t9, 0x0($v1)
/* 15548C 801AF41C 27A4004C */  addiu      $a0, $sp, 0x4C
/* 155490 801AF420 27A5004A */  addiu      $a1, $sp, 0x4A
/* 155494 801AF424 00194080 */  sll        $t0, $t9, 2
/* 155498 801AF428 01284821 */  addu       $t1, $t1, $t0
/* 15549C 801AF42C 8D299AA0 */  lw         $t1, %lo(D_800E9AA0)($t1)
/* 1554A0 801AF430 AFA9004C */  sw         $t1, 0x4C($sp)
/* 1554A4 801AF434 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1554A8 801AF438 000A5880 */  sll        $t3, $t2, 2
/* 1554AC 801AF43C 018B6021 */  addu       $t4, $t4, $t3
/* 1554B0 801AF440 8D8C9C60 */  lw         $t4, %lo(D_800E9C60)($t4)
/* 1554B4 801AF444 0C029E1C */  jal        func_800A7870
/* 1554B8 801AF448 A7AC004A */   sh        $t4, 0x4A($sp)
/* 1554BC 801AF44C 8FAD0050 */  lw         $t5, 0x50($sp)
/* 1554C0 801AF450 3C018013 */  lui        $at, %hi(D_8012E860)
/* 1554C4 801AF454 AC20E860 */  sw         $zero, %lo(D_8012E860)($at)
/* 1554C8 801AF458 ADA00048 */  sw         $zero, 0x48($t5)
/* 1554CC 801AF45C 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1554D0 801AF460 3C04800F */  lui        $a0, %hi(D_800E98E0)
/* 1554D4 801AF464 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1554D8 801AF468 000FC080 */  sll        $t8, $t7, 2
/* 1554DC 801AF46C 00982021 */  addu       $a0, $a0, $t8
/* 1554E0 801AF470 0C0288B5 */  jal        func_800A22D4
/* 1554E4 801AF474 8C8498E0 */   lw        $a0, %lo(D_800E98E0)($a0)
/* 1554E8 801AF478 0C066DF6 */  jal        func_8019B7D8_ovl7
/* 1554EC 801AF47C 8FA40050 */   lw        $a0, 0x50($sp)
/* 1554F0 801AF480 8E190000 */  lw         $t9, 0x0($s0)
/* 1554F4 801AF484 0C067628 */  jal        func_8019D8A0
/* 1554F8 801AF488 97240002 */   lhu       $a0, 0x2($t9)
/* 1554FC 801AF48C 100000DD */  b          .L801AF804_ovl7
/* 155500 801AF490 8FBF001C */   lw        $ra, 0x1C($sp)
.L801AF494_ovl7:
/* 155504 801AF494 0C06835D */  jal        func_801A0D74_ovl7
/* 155508 801AF498 8FA40050 */   lw        $a0, 0x50($sp)
/* 15550C 801AF49C AFA20044 */  sw         $v0, 0x44($sp)
/* 155510 801AF4A0 0C066FA7 */  jal        func_8019BE9C_ovl7
/* 155514 801AF4A4 24040001 */   addiu     $a0, $zero, 0x1
/* 155518 801AF4A8 8E080000 */  lw         $t0, 0x0($s0)
/* 15551C 801AF4AC 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
/* 155520 801AF4B0 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 155524 801AF4B4 8D090000 */  lw         $t1, 0x0($t0)
/* 155528 801AF4B8 00095080 */  sll        $t2, $t1, 2
/* 15552C 801AF4BC 016A5821 */  addu       $t3, $t3, $t2
/* 155530 801AF4C0 8D6B8AE0 */  lw         $t3, %lo(D_800E8AE0)($t3)
/* 155534 801AF4C4 316C0001 */  andi       $t4, $t3, 0x1
/* 155538 801AF4C8 1180000B */  beqz       $t4, .L801AF4F8_ovl7
/* 15553C 801AF4CC 00000000 */   nop
/* 155540 801AF4D0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 155544 801AF4D4 44816000 */  mtc1       $at, $f12
/* 155548 801AF4D8 0C02BB30 */  jal        func_800AECC0
/* 15554C 801AF4DC 00000000 */   nop
/* 155550 801AF4E0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 155554 801AF4E4 44816000 */  mtc1       $at, $f12
/* 155558 801AF4E8 0C02BB48 */  jal        func_800AED20
/* 15555C 801AF4EC 00000000 */   nop
/* 155560 801AF4F0 10000007 */  b          .L801AF510_ovl7
/* 155564 801AF4F4 8FAD0044 */   lw        $t5, 0x44($sp)
.L801AF4F8_ovl7:
/* 155568 801AF4F8 0C02BB30 */  jal        func_800AECC0
/* 15556C 801AF4FC C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 155570 801AF500 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 155574 801AF504 0C02BB48 */  jal        func_800AED20
/* 155578 801AF508 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 15557C 801AF50C 8FAD0044 */  lw         $t5, 0x44($sp)
.L801AF510_ovl7:
/* 155580 801AF510 55A0000C */  bnel       $t5, $zero, .L801AF544_ovl7
/* 155584 801AF514 8E190000 */   lw        $t9, 0x0($s0)
/* 155588 801AF518 8E0E0000 */  lw         $t6, 0x0($s0)
/* 15558C 801AF51C 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 155590 801AF520 3C06801D */  lui        $a2, %hi(D_801CD5A4_ovl7)
/* 155594 801AF524 8DCF0000 */  lw         $t7, 0x0($t6)
/* 155598 801AF528 24C6D5A4 */  addiu      $a2, $a2, %lo(D_801CD5A4_ovl7)
/* 15559C 801AF52C 24050004 */  addiu      $a1, $zero, 0x4
/* 1555A0 801AF530 000FC080 */  sll        $t8, $t7, 2
/* 1555A4 801AF534 00982021 */  addu       $a0, $a0, $t8
/* 1555A8 801AF538 0C02911F */  jal        call_virtual_function
/* 1555AC 801AF53C 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
/* 1555B0 801AF540 8E190000 */  lw         $t9, 0x0($s0)
.L801AF544_ovl7:
/* 1555B4 801AF544 3C07800E */  lui        $a3, %hi(D_800DFBD0)
/* 1555B8 801AF548 24E7FBD0 */  addiu      $a3, $a3, %lo(D_800DFBD0)
/* 1555BC 801AF54C 8F220000 */  lw         $v0, 0x0($t9)
/* 1555C0 801AF550 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* 1555C4 801AF554 24A5A6E0 */  addiu      $a1, $a1, %lo(D_800EA6E0)
/* 1555C8 801AF558 00021080 */  sll        $v0, $v0, 2
/* 1555CC 801AF55C 00E24821 */  addu       $t1, $a3, $v0
/* 1555D0 801AF560 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1555D4 801AF564 00A24021 */  addu       $t0, $a1, $v0
/* 1555D8 801AF568 C5040000 */  lwc1       $f4, 0x0($t0)
/* 1555DC 801AF56C 8D4B0008 */  lw         $t3, 0x8($t2)
/* 1555E0 801AF570 3C0C800F */  lui        $t4, %hi(D_800E83E0)
/* 1555E4 801AF574 3C01801D */  lui        $at, %hi(D_801CE240_ovl7)
/* 1555E8 801AF578 E5640044 */  swc1       $f4, 0x44($t3)
/* 1555EC 801AF57C 8E030000 */  lw         $v1, 0x0($s0)
/* 1555F0 801AF580 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* 1555F4 801AF584 8C620000 */  lw         $v0, 0x0($v1)
/* 1555F8 801AF588 00021080 */  sll        $v0, $v0, 2
/* 1555FC 801AF58C 01826021 */  addu       $t4, $t4, $v0
/* 155600 801AF590 8D8C83E0 */  lw         $t4, %lo(D_800E83E0)($t4)
/* 155604 801AF594 51800007 */  beql       $t4, $zero, .L801AF5B4_ovl7
/* 155608 801AF598 00A22021 */   addu      $a0, $a1, $v0
/* 15560C 801AF59C 44803000 */  mtc1       $zero, $f6
/* 155610 801AF5A0 00A26821 */  addu       $t5, $a1, $v0
/* 155614 801AF5A4 E5A60000 */  swc1       $f6, 0x0($t5)
/* 155618 801AF5A8 8C620000 */  lw         $v0, 0x0($v1)
/* 15561C 801AF5AC 00021080 */  sll        $v0, $v0, 2
/* 155620 801AF5B0 00A22021 */  addu       $a0, $a1, $v0
.L801AF5B4_ovl7:
/* 155624 801AF5B4 C4880000 */  lwc1       $f8, 0x0($a0)
/* 155628 801AF5B8 C42AE240 */  lwc1       $f10, %lo(D_801CE240_ovl7)($at)
/* 15562C 801AF5BC 44809000 */  mtc1       $zero, $f18
/* 155630 801AF5C0 460A4401 */  sub.s      $f16, $f8, $f10
/* 155634 801AF5C4 E4900000 */  swc1       $f16, 0x0($a0)
/* 155638 801AF5C8 8C620000 */  lw         $v0, 0x0($v1)
/* 15563C 801AF5CC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 155640 801AF5D0 00021080 */  sll        $v0, $v0, 2
/* 155644 801AF5D4 00A27021 */  addu       $t6, $a1, $v0
/* 155648 801AF5D8 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 15564C 801AF5DC 3C05801B */  lui        $a1, %hi(func_801B00BC_ovl7)
/* 155650 801AF5E0 24A500BC */  addiu      $a1, $a1, %lo(func_801B00BC_ovl7)
/* 155654 801AF5E4 4612203E */  c.le.s     $f4, $f18
/* 155658 801AF5E8 00822021 */  addu       $a0, $a0, $v0
/* 15565C 801AF5EC 00E27821 */  addu       $t7, $a3, $v0
/* 155660 801AF5F0 45020006 */  bc1fl      .L801AF60C_ovl7
/* 155664 801AF5F4 8DF80000 */   lw        $t8, 0x0($t7)
/* 155668 801AF5F8 0C02C7B2 */  jal        assign_new_process_entry
/* 15566C 801AF5FC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 155670 801AF600 10000080 */  b          .L801AF804_ovl7
/* 155674 801AF604 8FBF001C */   lw        $ra, 0x1C($sp)
/* 155678 801AF608 8DF80000 */  lw         $t8, 0x0($t7)
.L801AF60C_ovl7:
/* 15567C 801AF60C 27A40038 */  addiu      $a0, $sp, 0x38
/* 155680 801AF610 0C02C8D0 */  jal        func_800B2340
/* 155684 801AF614 8F05000C */   lw        $a1, 0xC($t8)
/* 155688 801AF618 8FA20030 */  lw         $v0, 0x30($sp)
/* 15568C 801AF61C C7A60038 */  lwc1       $f6, 0x38($sp)
/* 155690 801AF620 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
/* 155694 801AF624 8C59004C */  lw         $t9, 0x4C($v0)
/* 155698 801AF628 27A40038 */  addiu      $a0, $sp, 0x38
/* 15569C 801AF62C 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* 1556A0 801AF630 E7260004 */  swc1       $f6, 0x4($t9)
/* 1556A4 801AF634 C7A8003C */  lwc1       $f8, 0x3C($sp)
/* 1556A8 801AF638 8C48004C */  lw         $t0, 0x4C($v0)
/* 1556AC 801AF63C E5080008 */  swc1       $f8, 0x8($t0)
/* 1556B0 801AF640 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 1556B4 801AF644 8C49004C */  lw         $t1, 0x4C($v0)
/* 1556B8 801AF648 E52A000C */  swc1       $f10, 0xC($t1)
/* 1556BC 801AF64C 8E0A0000 */  lw         $t2, 0x0($s0)
/* 1556C0 801AF650 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1556C4 801AF654 000B6080 */  sll        $t4, $t3, 2
/* 1556C8 801AF658 01AC6821 */  addu       $t5, $t5, $t4
/* 1556CC 801AF65C 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
/* 1556D0 801AF660 0C02C9B6 */  jal        func_800B26D8
/* 1556D4 801AF664 8DA5000C */   lw        $a1, 0xC($t5)
/* 1556D8 801AF668 8FA40030 */  lw         $a0, 0x30($sp)
/* 1556DC 801AF66C C7B00038 */  lwc1       $f16, 0x38($sp)
/* 1556E0 801AF670 3C0A800F */  lui        $t2, %hi(D_800E9720)
/* 1556E4 801AF674 8C8E004C */  lw         $t6, 0x4C($a0)
/* 1556E8 801AF678 254A9720 */  addiu      $t2, $t2, %lo(D_800E9720)
/* 1556EC 801AF67C E5D00010 */  swc1       $f16, 0x10($t6)
/* 1556F0 801AF680 C7B2003C */  lwc1       $f18, 0x3C($sp)
/* 1556F4 801AF684 8C8F004C */  lw         $t7, 0x4C($a0)
/* 1556F8 801AF688 E5F20014 */  swc1       $f18, 0x14($t7)
/* 1556FC 801AF68C C7A40040 */  lwc1       $f4, 0x40($sp)
/* 155700 801AF690 8C98004C */  lw         $t8, 0x4C($a0)
/* 155704 801AF694 E7040018 */  swc1       $f4, 0x18($t8)
/* 155708 801AF698 8E190000 */  lw         $t9, 0x0($s0)
/* 15570C 801AF69C 8F280000 */  lw         $t0, 0x0($t9)
/* 155710 801AF6A0 00084880 */  sll        $t1, $t0, 2
/* 155714 801AF6A4 012A1021 */  addu       $v0, $t1, $t2
/* 155718 801AF6A8 8C430000 */  lw         $v1, 0x0($v0)
/* 15571C 801AF6AC 1460002C */  bnez       $v1, .L801AF760_ovl7
/* 155720 801AF6B0 246BFFFF */   addiu     $t3, $v1, -0x1
/* 155724 801AF6B4 0C06BFFF */  jal        func_801AFFFC_ovl7
/* 155728 801AF6B8 00000000 */   nop
/* 15572C 801AF6BC 8E030000 */  lw         $v1, 0x0($s0)
/* 155730 801AF6C0 3C0C800F */  lui        $t4, %hi(D_800E83E0)
/* 155734 801AF6C4 258C83E0 */  addiu      $t4, $t4, %lo(D_800E83E0)
/* 155738 801AF6C8 8C620000 */  lw         $v0, 0x0($v1)
/* 15573C 801AF6CC 24070001 */  addiu      $a3, $zero, 0x1
/* 155740 801AF6D0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 155744 801AF6D4 00025880 */  sll        $t3, $v0, 2
/* 155748 801AF6D8 016C3021 */  addu       $a2, $t3, $t4
/* 15574C 801AF6DC 8CCD0000 */  lw         $t5, 0x0($a2)
/* 155750 801AF6E0 8FAA0034 */  lw         $t2, 0x34($sp)
/* 155754 801AF6E4 00402825 */  or         $a1, $v0, $zero
/* 155758 801AF6E8 14ED0017 */  bne        $a3, $t5, .L801AF748_ovl7
/* 15575C 801AF6EC 00000000 */   nop
/* 155760 801AF6F0 ACC00000 */  sw         $zero, 0x0($a2)
/* 155764 801AF6F4 8C6E0000 */  lw         $t6, 0x0($v1)
/* 155768 801AF6F8 44813000 */  mtc1       $at, $f6
/* 15576C 801AF6FC 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 155770 801AF700 000E7880 */  sll        $t7, $t6, 2
/* 155774 801AF704 002F0821 */  addu       $at, $at, $t7
/* 155778 801AF708 E4267B20 */  swc1       $f6, %lo(D_800E7B20)($at)
/* 15577C 801AF70C 8C780000 */  lw         $t8, 0x0($v1)
/* 155780 801AF710 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 155784 801AF714 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 155788 801AF718 0018C880 */  sll        $t9, $t8, 2
/* 15578C 801AF71C 00390821 */  addu       $at, $at, $t9
/* 155790 801AF720 AC27DC50 */  sw         $a3, %lo(gEntityVtableIndexArray)($at)
/* 155794 801AF724 8C680000 */  lw         $t0, 0x0($v1)
/* 155798 801AF728 3C05801B */  lui        $a1, %hi(func_801AF314_ovl7)
/* 15579C 801AF72C 24A5F314 */  addiu      $a1, $a1, %lo(func_801AF314_ovl7)
/* 1557A0 801AF730 00084880 */  sll        $t1, $t0, 2
/* 1557A4 801AF734 00892021 */  addu       $a0, $a0, $t1
/* 1557A8 801AF738 0C02C7B2 */  jal        assign_new_process_entry
/* 1557AC 801AF73C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1557B0 801AF740 10000030 */  b          .L801AF804_ovl7
/* 1557B4 801AF744 8FBF001C */   lw        $ra, 0x1C($sp)
.L801AF748_ovl7:
/* 1557B8 801AF748 0C0445EF */  jal        func_801117BC
/* 1557BC 801AF74C 8D440090 */   lw        $a0, 0x90($t2)
/* 1557C0 801AF750 0C044713 */  jal        func_80111C4C
/* 1557C4 801AF754 00402025 */   or        $a0, $v0, $zero
/* 1557C8 801AF758 10000002 */  b          .L801AF764_ovl7
/* 1557CC 801AF75C 00000000 */   nop
.L801AF760_ovl7:
/* 1557D0 801AF760 AC4B0000 */  sw         $t3, 0x0($v0)
.L801AF764_ovl7:
/* 1557D4 801AF764 3C0C800F */  lui        $t4, %hi(D_800E8760)
/* 1557D8 801AF768 8D8C8760 */  lw         $t4, %lo(D_800E8760)($t4)
/* 1557DC 801AF76C 24010001 */  addiu      $at, $zero, 0x1
/* 1557E0 801AF770 55810024 */  bnel       $t4, $at, .L801AF804_ovl7
/* 1557E4 801AF774 8FBF001C */   lw        $ra, 0x1C($sp)
/* 1557E8 801AF778 8E030000 */  lw         $v1, 0x0($s0)
/* 1557EC 801AF77C 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
/* 1557F0 801AF780 3C08800F */  lui        $t0, %hi(D_800E9C60)
/* 1557F4 801AF784 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1557F8 801AF788 27A4004C */  addiu      $a0, $sp, 0x4C
/* 1557FC 801AF78C 27A5004A */  addiu      $a1, $sp, 0x4A
/* 155800 801AF790 000D7080 */  sll        $t6, $t5, 2
/* 155804 801AF794 01EE7821 */  addu       $t7, $t7, $t6
/* 155808 801AF798 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
/* 15580C 801AF79C AFAF004C */  sw         $t7, 0x4C($sp)
/* 155810 801AF7A0 8C780000 */  lw         $t8, 0x0($v1)
/* 155814 801AF7A4 0018C880 */  sll        $t9, $t8, 2
/* 155818 801AF7A8 01194021 */  addu       $t0, $t0, $t9
/* 15581C 801AF7AC 8D089C60 */  lw         $t0, %lo(D_800E9C60)($t0)
/* 155820 801AF7B0 0C029E1C */  jal        func_800A7870
/* 155824 801AF7B4 A7A8004A */   sh        $t0, 0x4A($sp)
/* 155828 801AF7B8 3C018013 */  lui        $at, %hi(D_8012E860)
/* 15582C 801AF7BC AC20E860 */  sw         $zero, %lo(D_8012E860)($at)
/* 155830 801AF7C0 8E090000 */  lw         $t1, 0x0($s0)
/* 155834 801AF7C4 3C04800F */  lui        $a0, %hi(D_800E98E0)
/* 155838 801AF7C8 8D2A0000 */  lw         $t2, 0x0($t1)
/* 15583C 801AF7CC 000A5880 */  sll        $t3, $t2, 2
/* 155840 801AF7D0 008B2021 */  addu       $a0, $a0, $t3
/* 155844 801AF7D4 0C0288B5 */  jal        func_800A22D4
/* 155848 801AF7D8 8C8498E0 */   lw        $a0, %lo(D_800E98E0)($a0)
/* 15584C 801AF7DC 8E0C0000 */  lw         $t4, 0x0($s0)
/* 155850 801AF7E0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 155854 801AF7E4 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
/* 155858 801AF7E8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 15585C 801AF7EC 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
/* 155860 801AF7F0 000D7080 */  sll        $t6, $t5, 2
/* 155864 801AF7F4 008E2021 */  addu       $a0, $a0, $t6
/* 155868 801AF7F8 0C02C7B2 */  jal        assign_new_process_entry
/* 15586C 801AF7FC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 155870 801AF800 8FBF001C */  lw         $ra, 0x1C($sp)
.L801AF804_ovl7:
/* 155874 801AF804 8FB00018 */  lw         $s0, 0x18($sp)
/* 155878 801AF808 27BD0050 */  addiu      $sp, $sp, 0x50
/* 15587C 801AF80C 03E00008 */  jr         $ra
/* 155880 801AF810 00000000 */   nop
