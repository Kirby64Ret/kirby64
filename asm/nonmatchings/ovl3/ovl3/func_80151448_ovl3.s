nonmatching func_80151448_ovl3, 0x3B4

glabel func_80151448_ovl3
    /* B1E88 80151448 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* B1E8C 8015144C 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* B1E90 80151450 8C6E0034 */  lw         $t6, 0x34($v1)
    /* B1E94 80151454 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* B1E98 80151458 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B1E9C 8015145C 31CF0001 */  andi       $t7, $t6, 0x1
    /* B1EA0 80151460 15E00004 */  bnez       $t7, .L80151474_ovl3
    /* B1EA4 80151464 3C02800D */   lui       $v0, %hi(D_800D6F58 + 0x54)
    /* B1EA8 80151468 8C426FAC */  lw         $v0, %lo(D_800D6F58 + 0x54)($v0)
    /* B1EAC 8015146C 5040000C */  beql       $v0, $zero, .L801514A0_ovl3
    /* B1EB0 80151470 906A0017 */   lbu       $t2, 0x17($v1)
  .L80151474_ovl3:
    /* B1EB4 80151474 AC6000A4 */  sw         $zero, 0xA4($v1)
    /* B1EB8 80151478 3C18800D */  lui        $t8, %hi(gKirbyController + 0x2)
    /* B1EBC 8015147C 97186FEA */  lhu        $t8, %lo(gKirbyController + 0x2)($t8)
    /* B1EC0 80151480 24090001 */  addiu      $t1, $zero, 0x1
    /* B1EC4 80151484 33194000 */  andi       $t9, $t8, 0x4000
    /* B1EC8 80151488 13200002 */  beqz       $t9, .L80151494_ovl3
    /* B1ECC 8015148C 00000000 */   nop
    /* B1ED0 80151490 A069000A */  sb         $t1, 0xA($v1)
  .L80151494_ovl3:
    /* B1ED4 80151494 100000D5 */  b          .L801517EC_ovl3
    /* B1ED8 80151498 00001025 */   or        $v0, $zero, $zero
    /* B1EDC 8015149C 906A0017 */  lbu        $t2, 0x17($v1)
  .L801514A0_ovl3:
    /* B1EE0 801514A0 3C0B800D */  lui        $t3, %hi(D_800D6FB2)
    /* B1EE4 801514A4 11400003 */  beqz       $t2, .L801514B4_ovl3
    /* B1EE8 801514A8 00000000 */   nop
    /* B1EEC 801514AC 100000CF */  b          .L801517EC_ovl3
    /* B1EF0 801514B0 00001025 */   or        $v0, $zero, $zero
  .L801514B4_ovl3:
    /* B1EF4 801514B4 956B6FB2 */  lhu        $t3, %lo(D_800D6FB2)($t3)
    /* B1EF8 801514B8 24070002 */  addiu      $a3, $zero, 0x2
    /* B1EFC 801514BC 3C0C800D */  lui        $t4, %hi(gKirbyController + 0x2)
    /* B1F00 801514C0 14EB0013 */  bne        $a3, $t3, .L80151510_ovl3
    /* B1F04 801514C4 00000000 */   nop
    /* B1F08 801514C8 958C6FEA */  lhu        $t4, %lo(gKirbyController + 0x2)($t4)
    /* B1F0C 801514CC 24040017 */  addiu      $a0, $zero, 0x17
    /* B1F10 801514D0 2405001A */  addiu      $a1, $zero, 0x1A
    /* B1F14 801514D4 318D4000 */  andi       $t5, $t4, 0x4000
    /* B1F18 801514D8 55A00006 */  bnel       $t5, $zero, .L801514F4_ovl3
    /* B1F1C 801514DC A060000A */   sb        $zero, 0xA($v1)
    /* B1F20 801514E0 906E000A */  lbu        $t6, 0xA($v1)
    /* B1F24 801514E4 24080001 */  addiu      $t0, $zero, 0x1
    /* B1F28 801514E8 150E0007 */  bne        $t0, $t6, .L80151508_ovl3
    /* B1F2C 801514EC 00000000 */   nop
    /* B1F30 801514F0 A060000A */  sb         $zero, 0xA($v1)
  .L801514F4_ovl3:
    /* B1F34 801514F4 A0600007 */  sb         $zero, 0x7($v1)
    /* B1F38 801514F8 0C048BDB */  jal        set_kirby_action_1
    /* B1F3C 801514FC AC600030 */   sw        $zero, 0x30($v1)
    /* B1F40 80151500 100000BA */  b          .L801517EC_ovl3
    /* B1F44 80151504 24020009 */   addiu     $v0, $zero, 0x9
  .L80151508_ovl3:
    /* B1F48 80151508 100000B8 */  b          .L801517EC_ovl3
    /* B1F4C 8015150C 00001025 */   or        $v0, $zero, $zero
  .L80151510_ovl3:
    /* B1F50 80151510 1440001C */  bnez       $v0, .L80151584_ovl3
    /* B1F54 80151514 3C0F800D */   lui       $t7, %hi(D_800D6F58 + 0x50)
    /* B1F58 80151518 8DEF6FA8 */  lw         $t7, %lo(D_800D6F58 + 0x50)($t7)
    /* B1F5C 8015151C 55E0001A */  bnel       $t7, $zero, .L80151588_ovl3
    /* B1F60 80151520 8C6600A0 */   lw        $a2, 0xA0($v1)
    /* B1F64 80151524 90780004 */  lbu        $t8, 0x4($v1)
    /* B1F68 80151528 3C04800D */  lui        $a0, %hi(gKirbyController + 0x2)
    /* B1F6C 8015152C 54F80016 */  bnel       $a3, $t8, .L80151588_ovl3
    /* B1F70 80151530 8C6600A0 */   lw        $a2, 0xA0($v1)
    /* B1F74 80151534 94846FEA */  lhu        $a0, %lo(gKirbyController + 0x2)($a0)
    /* B1F78 80151538 24050019 */  addiu      $a1, $zero, 0x19
    /* B1F7C 8015153C 30994000 */  andi       $t9, $a0, 0x4000
    /* B1F80 80151540 13200005 */  beqz       $t9, .L80151558_ovl3
    /* B1F84 80151544 3089003F */   andi      $t1, $a0, 0x3F
    /* B1F88 80151548 0C048BDB */  jal        set_kirby_action_1
    /* B1F8C 8015154C 2404001B */   addiu     $a0, $zero, 0x1B
    /* B1F90 80151550 100000A6 */  b          .L801517EC_ovl3
    /* B1F94 80151554 24020009 */   addiu     $v0, $zero, 0x9
  .L80151558_ovl3:
    /* B1F98 80151558 15200005 */  bnez       $t1, .L80151570_ovl3
    /* B1F9C 8015155C 24040013 */   addiu     $a0, $zero, 0x13
    /* B1FA0 80151560 906A000A */  lbu        $t2, 0xA($v1)
    /* B1FA4 80151564 24010003 */  addiu      $at, $zero, 0x3
    /* B1FA8 80151568 55410007 */  bnel       $t2, $at, .L80151588_ovl3
    /* B1FAC 8015156C 8C6600A0 */   lw        $a2, 0xA0($v1)
  .L80151570_ovl3:
    /* B1FB0 80151570 A060000A */  sb         $zero, 0xA($v1)
    /* B1FB4 80151574 0C048BDB */  jal        set_kirby_action_1
    /* B1FB8 80151578 24050013 */   addiu     $a1, $zero, 0x13
    /* B1FBC 8015157C 1000009B */  b          .L801517EC_ovl3
    /* B1FC0 80151580 24020009 */   addiu     $v0, $zero, 0x9
  .L80151584_ovl3:
    /* B1FC4 80151584 8C6600A0 */  lw         $a2, 0xA0($v1)
  .L80151588_ovl3:
    /* B1FC8 80151588 AC6000A4 */  sw         $zero, 0xA4($v1)
    /* B1FCC 8015158C 3C04800D */  lui        $a0, %hi(gKirbyController + 0x2)
    /* B1FD0 80151590 94846FEA */  lhu        $a0, %lo(gKirbyController + 0x2)($a0)
    /* B1FD4 80151594 14C00043 */  bnez       $a2, .L801516A4_ovl3
    /* B1FD8 80151598 90650004 */   lbu       $a1, 0x4($v1)
    /* B1FDC 8015159C 906B0008 */  lbu        $t3, 0x8($v1)
    /* B1FE0 801515A0 3C0C800D */  lui        $t4, %hi(D_800D6F58 + 0x50)
    /* B1FE4 801515A4 3C0E800D */  lui        $t6, %hi(D_800D6F58 + 0x58)
    /* B1FE8 801515A8 5560003F */  bnel       $t3, $zero, .L801516A8_ovl3
    /* B1FEC 801515AC 30984000 */   andi      $t8, $a0, 0x4000
    /* B1FF0 801515B0 8D8C6FA8 */  lw         $t4, %lo(D_800D6F58 + 0x50)($t4)
    /* B1FF4 801515B4 95CE6FB0 */  lhu        $t6, %lo(D_800D6F58 + 0x58)($t6)
    /* B1FF8 801515B8 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* B1FFC 801515BC 01826825 */  or         $t5, $t4, $v0
    /* B2000 801515C0 01AE7825 */  or         $t7, $t5, $t6
    /* B2004 801515C4 55E00038 */  bnel       $t7, $zero, .L801516A8_ovl3
    /* B2008 801515C8 30984000 */   andi      $t8, $a0, 0x4000
    /* B200C 801515CC 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* B2010 801515D0 3C0A800F */  lui        $t2, %hi(D_800E8920)
    /* B2014 801515D4 308B0400 */  andi       $t3, $a0, 0x400
    /* B2018 801515D8 8F190000 */  lw         $t9, 0x0($t8)
    /* B201C 801515DC 308D003F */  andi       $t5, $a0, 0x3F
    /* B2020 801515E0 00A01025 */  or         $v0, $a1, $zero
    /* B2024 801515E4 00194880 */  sll        $t1, $t9, 2
    /* B2028 801515E8 01495021 */  addu       $t2, $t2, $t1
    /* B202C 801515EC 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
    /* B2030 801515F0 11400008 */  beqz       $t2, .L80151614_ovl3
    /* B2034 801515F4 00000000 */   nop
    /* B2038 801515F8 15600004 */  bnez       $t3, .L8015160C_ovl3
    /* B203C 801515FC 308C003F */   andi      $t4, $a0, 0x3F
    /* B2040 80151600 11800002 */  beqz       $t4, .L8015160C_ovl3
    /* B2044 80151604 24080001 */   addiu     $t0, $zero, 0x1
    /* B2048 80151608 AC6800A4 */  sw         $t0, 0xA4($v1)
  .L8015160C_ovl3:
    /* B204C 8015160C 10000005 */  b          .L80151624_ovl3
    /* B2050 80151610 8C6E00A4 */   lw        $t6, 0xA4($v1)
  .L80151614_ovl3:
    /* B2054 80151614 11A00002 */  beqz       $t5, .L80151620_ovl3
    /* B2058 80151618 24080001 */   addiu     $t0, $zero, 0x1
    /* B205C 8015161C AC6800A4 */  sw         $t0, 0xA4($v1)
  .L80151620_ovl3:
    /* B2060 80151620 8C6E00A4 */  lw         $t6, 0xA4($v1)
  .L80151624_ovl3:
    /* B2064 80151624 24080001 */  addiu      $t0, $zero, 0x1
    /* B2068 80151628 51C0001F */  beql       $t6, $zero, .L801516A8_ovl3
    /* B206C 8015162C 30984000 */   andi      $t8, $a0, 0x4000
    /* B2070 80151630 10A0000D */  beqz       $a1, .L80151668_ovl3
    /* B2074 80151634 AC6000A4 */   sw        $zero, 0xA4($v1)
    /* B2078 80151638 50480006 */  beql       $v0, $t0, .L80151654_ovl3
    /* B207C 8015163C A0600007 */   sb        $zero, 0x7($v1)
    /* B2080 80151640 50470019 */  beql       $v0, $a3, .L801516A8_ovl3
    /* B2084 80151644 30984000 */   andi      $t8, $a0, 0x4000
    /* B2088 80151648 10000017 */  b          .L801516A8_ovl3
    /* B208C 8015164C 30984000 */   andi      $t8, $a0, 0x4000
    /* B2090 80151650 A0600007 */  sb         $zero, 0x7($v1)
  .L80151654_ovl3:
    /* B2094 80151654 24040011 */  addiu      $a0, $zero, 0x11
    /* B2098 80151658 0C048BDB */  jal        set_kirby_action_1
    /* B209C 8015165C 24050011 */   addiu     $a1, $zero, 0x11
    /* B20A0 80151660 10000062 */  b          .L801517EC_ovl3
    /* B20A4 80151664 24020009 */   addiu     $v0, $zero, 0x9
  .L80151668_ovl3:
    /* B20A8 80151668 8C6F0090 */  lw         $t7, 0x90($v1)
    /* B20AC 8015166C 51E0000E */  beql       $t7, $zero, .L801516A8_ovl3
    /* B20B0 80151670 30984000 */   andi      $t8, $a0, 0x4000
    /* B20B4 80151674 90620005 */  lbu        $v0, 0x5($v1)
    /* B20B8 80151678 2401000A */  addiu      $at, $zero, 0xA
    /* B20BC 8015167C 10410009 */  beq        $v0, $at, .L801516A4_ovl3
    /* B20C0 80151680 2401000B */   addiu     $at, $zero, 0xB
    /* B20C4 80151684 50410008 */  beql       $v0, $at, .L801516A8_ovl3
    /* B20C8 80151688 30984000 */   andi      $t8, $a0, 0x4000
    /* B20CC 8015168C A0600007 */  sb         $zero, 0x7($v1)
    /* B20D0 80151690 24040011 */  addiu      $a0, $zero, 0x11
    /* B20D4 80151694 0C048BDB */  jal        set_kirby_action_1
    /* B20D8 80151698 24050011 */   addiu     $a1, $zero, 0x11
    /* B20DC 8015169C 10000053 */  b          .L801517EC_ovl3
    /* B20E0 801516A0 24020009 */   addiu     $v0, $zero, 0x9
  .L801516A4_ovl3:
    /* B20E4 801516A4 30984000 */  andi       $t8, $a0, 0x4000
  .L801516A8_ovl3:
    /* B20E8 801516A8 24080001 */  addiu      $t0, $zero, 0x1
    /* B20EC 801516AC 17000004 */  bnez       $t8, .L801516C0_ovl3
    /* B20F0 801516B0 00A01025 */   or        $v0, $a1, $zero
    /* B20F4 801516B4 9079000A */  lbu        $t9, 0xA($v1)
    /* B20F8 801516B8 1519002B */  bne        $t0, $t9, .L80151768_ovl3
    /* B20FC 801516BC 00000000 */   nop
  .L801516C0_ovl3:
    /* B2100 801516C0 10400005 */  beqz       $v0, .L801516D8_ovl3
    /* B2104 801516C4 A060000A */   sb        $zero, 0xA($v1)
    /* B2108 801516C8 10480021 */  beq        $v0, $t0, .L80151750_ovl3
    /* B210C 801516CC 2404001A */   addiu     $a0, $zero, 0x1A
    /* B2110 801516D0 10000046 */  b          .L801517EC_ovl3
    /* B2114 801516D4 00001025 */   or        $v0, $zero, $zero
  .L801516D8_ovl3:
    /* B2118 801516D8 8C640090 */  lw         $a0, 0x90($v1)
    /* B211C 801516DC 24050018 */  addiu      $a1, $zero, 0x18
    /* B2120 801516E0 50800016 */  beql       $a0, $zero, .L8015173C_ovl3
    /* B2124 801516E4 AC600030 */   sw        $zero, 0x30($v1)
    /* B2128 801516E8 14C0001D */  bnez       $a2, .L80151760_ovl3
    /* B212C 801516EC 2401000C */   addiu     $at, $zero, 0xC
    /* B2130 801516F0 14810004 */  bne        $a0, $at, .L80151704_ovl3
    /* B2134 801516F4 3C09801A */   lui       $t1, %hi(D_80198838_ovl3)
    /* B2138 801516F8 85298838 */  lh         $t1, %lo(D_80198838_ovl3)($t1)
    /* B213C 801516FC 11200018 */  beqz       $t1, .L80151760_ovl3
    /* B2140 80151700 00000000 */   nop
  .L80151704_ovl3:
    /* B2144 80151704 0C05DCB3 */  jal        func_801772CC_ovl3
    /* B2148 80151708 00000000 */   nop
    /* B214C 8015170C 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* B2150 80151710 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* B2154 80151714 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* B2158 80151718 10410011 */  beq        $v0, $at, .L80151760_ovl3
    /* B215C 8015171C 00402025 */   or        $a0, $v0, $zero
    /* B2160 80151720 AC600030 */  sw         $zero, 0x30($v1)
    /* B2164 80151724 A0600016 */  sb         $zero, 0x16($v1)
    /* B2168 80151728 0C048BDB */  jal        set_kirby_action_1
    /* B216C 8015172C 2405001A */   addiu     $a1, $zero, 0x1A
    /* B2170 80151730 1000002E */  b          .L801517EC_ovl3
    /* B2174 80151734 24020009 */   addiu     $v0, $zero, 0x9
    /* B2178 80151738 AC600030 */  sw         $zero, 0x30($v1)
  .L8015173C_ovl3:
    /* B217C 8015173C A0600007 */  sb         $zero, 0x7($v1)
    /* B2180 80151740 0C048BDB */  jal        set_kirby_action_1
    /* B2184 80151744 24040018 */   addiu     $a0, $zero, 0x18
    /* B2188 80151748 10000028 */  b          .L801517EC_ovl3
    /* B218C 8015174C 24020009 */   addiu     $v0, $zero, 0x9
  .L80151750_ovl3:
    /* B2190 80151750 0C048BDB */  jal        set_kirby_action_1
    /* B2194 80151754 24050019 */   addiu     $a1, $zero, 0x19
    /* B2198 80151758 10000024 */  b          .L801517EC_ovl3
    /* B219C 8015175C 24020009 */   addiu     $v0, $zero, 0x9
  .L80151760_ovl3:
    /* B21A0 80151760 10000022 */  b          .L801517EC_ovl3
    /* B21A4 80151764 00001025 */   or        $v0, $zero, $zero
  .L80151768_ovl3:
    /* B21A8 80151768 50400020 */  beql       $v0, $zero, .L801517EC_ovl3
    /* B21AC 8015176C 00001025 */   or        $v0, $zero, $zero
    /* B21B0 80151770 10480005 */  beq        $v0, $t0, .L80151788_ovl3
    /* B21B4 80151774 3C0A8005 */   lui       $t2, %hi(omCurrentObj)
    /* B21B8 80151778 10470014 */  beq        $v0, $a3, .L801517CC_ovl3
    /* B21BC 8015177C 308F0400 */   andi      $t7, $a0, 0x400
    /* B21C0 80151780 1000001A */  b          .L801517EC_ovl3
    /* B21C4 80151784 00001025 */   or        $v0, $zero, $zero
  .L80151788_ovl3:
    /* B21C8 80151788 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* B21CC 8015178C 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* B21D0 80151790 308E0400 */  andi       $t6, $a0, 0x400
    /* B21D4 80151794 8D4B0000 */  lw         $t3, 0x0($t2)
    /* B21D8 80151798 000B6080 */  sll        $t4, $t3, 2
    /* B21DC 8015179C 01AC6821 */  addu       $t5, $t5, $t4
    /* B21E0 801517A0 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* B21E4 801517A4 51A00011 */  beql       $t5, $zero, .L801517EC_ovl3
    /* B21E8 801517A8 00001025 */   or        $v0, $zero, $zero
    /* B21EC 801517AC 11C0000E */  beqz       $t6, .L801517E8_ovl3
    /* B21F0 801517B0 2404000B */   addiu     $a0, $zero, 0xB
    /* B21F4 801517B4 AC600030 */  sw         $zero, 0x30($v1)
    /* B21F8 801517B8 A0600007 */  sb         $zero, 0x7($v1)
    /* B21FC 801517BC 0C048BDB */  jal        set_kirby_action_1
    /* B2200 801517C0 24050010 */   addiu     $a1, $zero, 0x10
    /* B2204 801517C4 10000009 */  b          .L801517EC_ovl3
    /* B2208 801517C8 24020009 */   addiu     $v0, $zero, 0x9
  .L801517CC_ovl3:
    /* B220C 801517CC 11E00006 */  beqz       $t7, .L801517E8_ovl3
    /* B2210 801517D0 24040012 */   addiu     $a0, $zero, 0x12
    /* B2214 801517D4 A0600007 */  sb         $zero, 0x7($v1)
    /* B2218 801517D8 0C048BDB */  jal        set_kirby_action_1
    /* B221C 801517DC 24050012 */   addiu     $a1, $zero, 0x12
    /* B2220 801517E0 10000002 */  b          .L801517EC_ovl3
    /* B2224 801517E4 24020009 */   addiu     $v0, $zero, 0x9
  .L801517E8_ovl3:
    /* B2228 801517E8 00001025 */  or         $v0, $zero, $zero
  .L801517EC_ovl3:
    /* B222C 801517EC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* B2230 801517F0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* B2234 801517F4 03E00008 */  jr         $ra
    /* B2238 801517F8 00000000 */   nop
endlabel func_80151448_ovl3
.size func_80151448_ovl3, . - func_80151448_ovl3
