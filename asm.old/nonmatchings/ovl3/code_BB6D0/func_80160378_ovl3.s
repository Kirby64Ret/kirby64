glabel func_80160378_ovl3
/* C0DB8 80160378 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C0DBC 8016037C AFBF001C */  sw         $ra, 0x1C($sp)
/* C0DC0 80160380 0C058738 */  jal        func_80161CE0_ovl3
/* C0DC4 80160384 AFB00018 */   sw        $s0, 0x18($sp)
/* C0DC8 80160388 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C0DCC 8016038C 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* C0DD0 80160390 8E0E0000 */  lw         $t6, 0x0($s0)
/* C0DD4 80160394 3C04800E */  lui        $a0, %hi(D_800E1B50 + 0x1C0)
/* C0DD8 80160398 3C0541A0 */  lui        $a1, (0x41A00000 >> 16)
/* C0DDC 8016039C 8DCF0000 */  lw         $t7, 0x0($t6)
/* C0DE0 801603A0 24060000 */  addiu      $a2, $zero, 0x0
/* C0DE4 801603A4 000FC080 */  sll        $t8, $t7, 2
/* C0DE8 801603A8 00982021 */  addu       $a0, $a0, $t8
/* C0DEC 801603AC 0C0587B0 */  jal        func_80161EC0_ovl3
/* C0DF0 801603B0 8C841D10 */   lw        $a0, %lo(D_800E1B50 + 0x1C0)($a0)
/* C0DF4 801603B4 8E030000 */  lw         $v1, 0x0($s0)
/* C0DF8 801603B8 3C19800B */  lui        $t9, %hi(func_800B4954)
/* C0DFC 801603BC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* C0E00 801603C0 8C690000 */  lw         $t1, 0x0($v1)
/* C0E04 801603C4 27394954 */  addiu      $t9, $t9, %lo(func_800B4954)
/* C0E08 801603C8 3C0B8016 */  lui        $t3, %hi(func_801606A0_ovl3)
/* C0E0C 801603CC 00095080 */  sll        $t2, $t1, 2
/* C0E10 801603D0 002A0821 */  addu       $at, $at, $t2
/* C0E14 801603D4 AC39EF90 */  sw         $t9, %lo(D_800DEF90)($at)
/* C0E18 801603D8 8C6C0000 */  lw         $t4, 0x0($v1)
/* C0E1C 801603DC 3C01800E */  lui        $at, %hi(D_800DF150)
/* C0E20 801603E0 256B06A0 */  addiu      $t3, $t3, %lo(func_801606A0_ovl3)
.L801603E4_ovl5:
/* C0E24 801603E4 000C6880 */  sll        $t5, $t4, 2
/* C0E28 801603E8 002D0821 */  addu       $at, $at, $t5
.L801603EC_ovl5:
/* C0E2C 801603EC AC2BF150 */  sw         $t3, %lo(D_800DF150)($at)
/* C0E30 801603F0 8C6F0000 */  lw         $t7, 0x0($v1)
/* C0E34 801603F4 3C01800E */  lui        $at, %hi(D_800E0490)
/* C0E38 801603F8 3C0E8019 */  lui        $t6, %hi(D_80192F10_ovl3)
/* C0E3C 801603FC 000FC080 */  sll        $t8, $t7, 2
/* C0E40 80160400 00380821 */  addu       $at, $at, $t8
/* C0E44 80160404 25CE2F10 */  addiu      $t6, $t6, %lo(D_80192F10_ovl3)
/* C0E48 80160408 AC2E0490 */  sw         $t6, %lo(D_800E0490)($at)
/* C0E4C 8016040C 8C670000 */  lw         $a3, 0x0($v1)
/* C0E50 80160410 3C0B801A */  lui        $t3, %hi(D_801982F8_ovl3)
/* C0E54 80160414 3C0A8019 */  lui        $t2, %hi(D_80197F60_ovl3)
/* C0E58 80160418 24E8FFFC */  addiu      $t0, $a3, -0x4
/* C0E5C 8016041C 0008C880 */  sll        $t9, $t0, 2
/* C0E60 80160420 0328C823 */  subu       $t9, $t9, $t0
/* C0E64 80160424 0019C8C0 */  sll        $t9, $t9, 3
/* C0E68 80160428 0328C823 */  subu       $t9, $t9, $t0
/* C0E6C 8016042C 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* C0E70 80160430 00074880 */  sll        $t1, $a3, 2
/* C0E74 80160434 00892021 */  addu       $a0, $a0, $t1
/* C0E78 80160438 0019C880 */  sll        $t9, $t9, 2
/* C0E7C 8016043C 00086140 */  sll        $t4, $t0, 5
.L80160440_ovl5:
/* C0E80 80160440 254A7F60 */  addiu      $t2, $t2, %lo(D_80197F60_ovl3)
/* C0E84 80160444 256B82F8 */  addiu      $t3, $t3, %lo(D_801982F8_ovl3)
/* C0E88 80160448 018B3021 */  addu       $a2, $t4, $t3
.L8016044C_ovl5:
/* C0E8C 8016044C 032A2821 */  addu       $a1, $t9, $t2
/* C0E90 80160450 0C055192 */  jal        func_80154648_ovl3
/* C0E94 80160454 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
/* C0E98 80160458 8E030000 */  lw         $v1, 0x0($s0)
/* C0E9C 8016045C 3C018019 */  lui        $at, %hi(D_801970C8_ovl3)
/* C0EA0 80160460 C42070C8 */  lwc1       $f0, %lo(D_801970C8_ovl3)($at)
/* C0EA4 80160464 8C6D0000 */  lw         $t5, 0x0($v1)
/* C0EA8 80160468 3C018019 */  lui        $at, %hi(D_801970CC_ovl3)
/* C0EAC 8016046C C42470CC */  lwc1       $f4, %lo(D_801970CC_ovl3)($at)
/* C0EB0 80160470 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* C0EB4 80160474 000D7880 */  sll        $t7, $t5, 2
/* C0EB8 80160478 002F0821 */  addu       $at, $at, $t7
/* C0EBC 8016047C E4244010 */  swc1       $f4, %lo(gEntitiesAngleXArray)($at)
/* C0EC0 80160480 8C6E0000 */  lw         $t6, 0x0($v1)
/* C0EC4 80160484 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* C0EC8 80160488 3C040002 */  lui        $a0, (0x2003E >> 16)
/* C0ECC 8016048C 000EC080 */  sll        $t8, $t6, 2
/* C0ED0 80160490 00380821 */  addu       $at, $at, $t8
/* C0ED4 80160494 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* C0ED8 80160498 8C690000 */  lw         $t1, 0x0($v1)
/* C0EDC 8016049C 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* C0EE0 801604A0 3484003E */  ori        $a0, $a0, (0x2003E & 0xFFFF)
/* C0EE4 801604A4 0009C880 */  sll        $t9, $t1, 2
/* C0EE8 801604A8 00390821 */  addu       $at, $at, $t9
/* C0EEC 801604AC E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* C0EF0 801604B0 8C6A0000 */  lw         $t2, 0x0($v1)
/* C0EF4 801604B4 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* C0EF8 801604B8 24050021 */  addiu      $a1, $zero, 0x21
/* C0EFC 801604BC 000A6080 */  sll        $t4, $t2, 2
/* C0F00 801604C0 002C0821 */  addu       $at, $at, $t4
/* C0F04 801604C4 24060010 */  addiu      $a2, $zero, 0x10
/* C0F08 801604C8 0C02A619 */  jal        func_800A9864
/* C0F0C 801604CC E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* C0F10 801604D0 8E0B0000 */  lw         $t3, 0x0($s0)
.L801604D4_ovl5:
/* C0F14 801604D4 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
/* C0F18 801604D8 24040001 */  addiu      $a0, $zero, 0x1
.L801604DC_ovl5:
/* C0F1C 801604DC 8D6D0000 */  lw         $t5, 0x0($t3)
/* C0F20 801604E0 24050001 */  addiu      $a1, $zero, 0x1
/* C0F24 801604E4 24060014 */  addiu      $a2, $zero, 0x14
/* C0F28 801604E8 000D7880 */  sll        $t7, $t5, 2
/* C0F2C 801604EC 01CF7021 */  addu       $t6, $t6, $t7
/* C0F30 801604F0 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
.L801604F4_ovl5:
/* C0F34 801604F4 0C02A040 */  jal        func_800A8100
/* C0F38 801604F8 8DC70004 */   lw        $a3, 0x4($t6)
/* C0F3C 801604FC 8E030000 */  lw         $v1, 0x0($s0)
/* C0F40 80160500 3C01800F */  lui        $at, %hi(D_800EA520)
/* C0F44 80160504 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* C0F48 80160508 8C780000 */  lw         $t8, 0x0($v1)
glabel func_8016050C_ovl5
/* C0F4C 8016050C 24040001 */  addiu      $a0, $zero, 0x1
/* C0F50 80160510 24050001 */  addiu      $a1, $zero, 0x1
/* C0F54 80160514 00184880 */  sll        $t1, $t8, 2
/* C0F58 80160518 00290821 */  addu       $at, $at, $t1
/* C0F5C 8016051C AC22A520 */  sw         $v0, %lo(D_800EA520)($at)
/* C0F60 80160520 8C790000 */  lw         $t9, 0x0($v1)
/* C0F64 80160524 24060014 */  addiu      $a2, $zero, 0x14
/* C0F68 80160528 00195080 */  sll        $t2, $t9, 2
/* C0F6C 8016052C 018A6021 */  addu       $t4, $t4, $t2
/* C0F70 80160530 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* C0F74 80160534 0C02A040 */  jal        func_800A8100
/* C0F78 80160538 8D870008 */   lw        $a3, 0x8($t4)
/* C0F7C 8016053C 8E030000 */  lw         $v1, 0x0($s0)
/* C0F80 80160540 3C01800F */  lui        $at, %hi(D_800EB4E0)
/* C0F84 80160544 3C05800F */  lui        $a1, %hi(D_800EA8A0)
/* C0F88 80160548 8C6B0000 */  lw         $t3, 0x0($v1)
/* C0F8C 8016054C 24A5A8A0 */  addiu      $a1, $a1, %lo(D_800EA8A0)
/* C0F90 80160550 3C06800F */  lui        $a2, %hi(D_800E8AE0)
/* C0F94 80160554 000B6880 */  sll        $t5, $t3, 2
/* C0F98 80160558 002D0821 */  addu       $at, $at, $t5
/* C0F9C 8016055C AC22B4E0 */  sw         $v0, %lo(D_800EB4E0)($at)
/* C0FA0 80160560 8C6F0000 */  lw         $t7, 0x0($v1)
/* C0FA4 80160564 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C0FA8 80160568 44813000 */  mtc1       $at, $f6
/* C0FAC 8016056C 000F7080 */  sll        $t6, $t7, 2
/* C0FB0 80160570 00AEC021 */  addu       $t8, $a1, $t6
/* C0FB4 80160574 E7060000 */  swc1       $f6, 0x0($t8)
/* C0FB8 80160578 8C640000 */  lw         $a0, 0x0($v1)
/* C0FBC 8016057C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* C0FC0 80160580 24C68AE0 */  addiu      $a2, $a2, %lo(D_800E8AE0)
/* C0FC4 80160584 00042080 */  sll        $a0, $a0, 2
/* C0FC8 80160588 00A44821 */  addu       $t1, $a1, $a0
/* C0FCC 8016058C C5280000 */  lwc1       $f8, 0x0($t1)
/* C0FD0 80160590 00240821 */  addu       $at, $at, $a0
/* C0FD4 80160594 240B0014 */  addiu      $t3, $zero, 0x14
/* C0FD8 80160598 E428A6E0 */  swc1       $f8, %lo(D_800EA6E0)($at)
/* C0FDC 8016059C 8C640000 */  lw         $a0, 0x0($v1)
/* C0FE0 801605A0 3C01800F */  lui        $at, %hi(D_800E9720)
/* C0FE4 801605A4 240D001E */  addiu      $t5, $zero, 0x1E
/* C0FE8 801605A8 00042080 */  sll        $a0, $a0, 2
/* C0FEC 801605AC 00C4C821 */  addu       $t9, $a2, $a0
/* C0FF0 801605B0 8F2A0000 */  lw         $t2, 0x0($t9)
/* C0FF4 801605B4 00240821 */  addu       $at, $at, $a0
/* C0FF8 801605B8 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
/* C0FFC 801605BC 314C0004 */  andi       $t4, $t2, 0x4
/* C1000 801605C0 11800005 */  beqz       $t4, .L801605D8_ovl3
/* C1004 801605C4 00000000 */   nop
/* C1008 801605C8 3C01800F */  lui        $at, %hi(D_800E9720)
/* C100C 801605CC 00240821 */  addu       $at, $at, $a0
/* C1010 801605D0 10000002 */  b          .L801605DC_ovl3
/* C1014 801605D4 AC2B9720 */   sw        $t3, %lo(D_800E9720)($at)
.L801605D8_ovl3:
/* C1018 801605D8 AC2D9720 */  sw         $t5, %lo(D_800E9720)($at)
.L801605DC_ovl3:
/* C101C 801605DC 8C6F0000 */  lw         $t7, 0x0($v1)
/* C1020 801605E0 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* C1024 801605E4 000F7080 */  sll        $t6, $t7, 2
/* C1028 801605E8 00CEC021 */  addu       $t8, $a2, $t6
/* C102C 801605EC 8F090000 */  lw         $t1, 0x0($t8)
/* C1030 801605F0 31390004 */  andi       $t9, $t1, 0x4
/* C1034 801605F4 57200007 */  bnel       $t9, $zero, .L80160614_ovl3
.L801605F8_ovl5:
/* C1038 801605F8 44818000 */   mtc1      $at, $f16
/* C103C 801605FC 3C014140 */  lui        $at, (0x41400000 >> 16)
.L80160600_ovl5:
/* C1040 80160600 44815000 */  mtc1       $at, $f10
/* C1044 80160604 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
/* C1048 80160608 10000005 */  b          .L80160620_ovl3
/* C104C 8016060C E44A0000 */   swc1      $f10, 0x0($v0)
/* C1050 80160610 44818000 */  mtc1       $at, $f16
.L80160614_ovl3:
/* C1054 80160614 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
/* C1058 80160618 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
/* C105C 8016061C E4500000 */  swc1       $f16, 0x0($v0)
.L80160620_ovl3:
/* C1060 80160620 8C640000 */  lw         $a0, 0x0($v1)
/* C1064 80160624 3C01800E */  lui        $at, %hi(D_800E6A10)
/* C1068 80160628 C4400000 */  lwc1       $f0, 0x0($v0)
/* C106C 8016062C 00042080 */  sll        $a0, $a0, 2
/* C1070 80160630 00240821 */  addu       $at, $at, $a0
/* C1074 80160634 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* C1078 80160638 44803000 */  mtc1       $zero, $f6
/* C107C 8016063C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C1080 80160640 46009102 */  mul.s      $f4, $f18, $f0
/* C1084 80160644 4606003C */  c.lt.s     $f0, $f6
/* C1088 80160648 00240821 */  addu       $at, $at, $a0
/* C108C 8016064C 45000008 */  bc1f       .L80160670_ovl3
/* C1090 80160650 E42464D0 */   swc1      $f4, %lo(D_800E64D0)($at)
/* C1094 80160654 8C6A0000 */  lw         $t2, 0x0($v1)
/* C1098 80160658 3C01800E */  lui        $at, %hi(D_800E6850)
/* C109C 8016065C 46000207 */  neg.s      $f8, $f0
/* C10A0 80160660 000A6080 */  sll        $t4, $t2, 2
/* C10A4 80160664 002C0821 */  addu       $at, $at, $t4
/* C10A8 80160668 10000006 */  b          .L80160684_ovl3
/* C10AC 8016066C E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
.L80160670_ovl3:
/* C10B0 80160670 8C6B0000 */  lw         $t3, 0x0($v1)
/* C10B4 80160674 3C01800E */  lui        $at, %hi(D_800E6850)
/* C10B8 80160678 000B6880 */  sll        $t5, $t3, 2
/* C10BC 8016067C 002D0821 */  addu       $at, $at, $t5
/* C10C0 80160680 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L80160684_ovl3:
/* C10C4 80160684 0C02BE85 */  jal        func_800AFA14
/* C10C8 80160688 00000000 */   nop
/* C10CC 8016068C 8FBF001C */  lw         $ra, 0x1C($sp)
/* C10D0 80160690 8FB00018 */  lw         $s0, 0x18($sp)
/* C10D4 80160694 27BD0020 */  addiu      $sp, $sp, 0x20
/* C10D8 80160698 03E00008 */  jr         $ra
/* C10DC 8016069C 00000000 */   nop
