glabel func_80151448_ovl3
/* 0B1E88 80151448 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0B1E8C 8015144C 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0B1E90 80151450 8C6E0034 */  lw    $t6, 0x34($v1)
/* 0B1E94 80151454 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B1E98 80151458 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B1E9C 8015145C 31CF0001 */  andi  $t7, $t6, 1
/* 0B1EA0 80151460 15E00004 */  bnez  $t7, .L80151474_ovl3
/* 0B1EA4 80151464 3C02800D */   lui   $v0, %hi(D_800D6FAC) # $v0, 0x800d
/* 0B1EA8 80151468 8C426FAC */  lw    $v0, %lo(D_800D6FAC)($v0)
/* 0B1EAC 8015146C 5040000C */  beql  $v0, $zero, .L801514A0_ovl3
/* 0B1EB0 80151470 906A0017 */   lbu   $t2, 0x17($v1)
.L80151474_ovl3:
/* 0B1EB4 80151474 AC6000A4 */  sw    $zero, 0xa4($v1)
/* 0B1EB8 80151478 3C18800D */  lui   $t8, %hi(D_800D6FEA) # $t8, 0x800d
/* 0B1EBC 8015147C 97186FEA */  lhu   $t8, %lo(D_800D6FEA)($t8)
/* 0B1EC0 80151480 24090001 */  li    $t1, 1
/* 0B1EC4 80151484 33194000 */  andi  $t9, $t8, 0x4000
/* 0B1EC8 80151488 13200002 */  beqz  $t9, .L80151494_ovl3
/* 0B1ECC 8015148C 00000000 */   nop   
/* 0B1ED0 80151490 A069000A */  sb    $t1, 0xa($v1)
.L80151494_ovl3:
/* 0B1ED4 80151494 100000D5 */  b     .L801517EC_ovl3
/* 0B1ED8 80151498 00001025 */   move  $v0, $zero
/* 0B1EDC 8015149C 906A0017 */  lbu   $t2, 0x17($v1)
.L801514A0_ovl3:
/* 0B1EE0 801514A0 3C0B800D */  lui   $t3, %hi(D_800D6FB2) # $t3, 0x800d
/* 0B1EE4 801514A4 11400003 */  beqz  $t2, .L801514B4_ovl3
/* 0B1EE8 801514A8 00000000 */   nop   
/* 0B1EEC 801514AC 100000CF */  b     .L801517EC_ovl3
/* 0B1EF0 801514B0 00001025 */   move  $v0, $zero
.L801514B4_ovl3:
/* 0B1EF4 801514B4 956B6FB2 */  lhu   $t3, %lo(D_800D6FB2)($t3)
/* 0B1EF8 801514B8 24070002 */  li    $a3, 2
/* 0B1EFC 801514BC 3C0C800D */  lui   $t4, %hi(D_800D6FEA) # $t4, 0x800d
/* 0B1F00 801514C0 14EB0013 */  bne   $a3, $t3, .L80151510_ovl3
/* 0B1F04 801514C4 00000000 */   nop   
/* 0B1F08 801514C8 958C6FEA */  lhu   $t4, %lo(D_800D6FEA)($t4)
/* 0B1F0C 801514CC 24040017 */  li    $a0, 23
/* 0B1F10 801514D0 2405001A */  li    $a1, 26
/* 0B1F14 801514D4 318D4000 */  andi  $t5, $t4, 0x4000
/* 0B1F18 801514D8 55A00006 */  bnezl $t5, .L801514F4_ovl3
/* 0B1F1C 801514DC A060000A */   sb    $zero, 0xa($v1)
/* 0B1F20 801514E0 906E000A */  lbu   $t6, 0xa($v1)
/* 0B1F24 801514E4 24080001 */  li    $t0, 1
/* 0B1F28 801514E8 150E0007 */  bne   $t0, $t6, .L80151508_ovl3
/* 0B1F2C 801514EC 00000000 */   nop   
/* 0B1F30 801514F0 A060000A */  sb    $zero, 0xa($v1)
.L801514F4_ovl3:
/* 0B1F34 801514F4 A0600007 */  sb    $zero, 7($v1)
/* 0B1F38 801514F8 0C048BDB */  jal   set_kirby_action_1
/* 0B1F3C 801514FC AC600030 */   sw    $zero, 0x30($v1)
/* 0B1F40 80151500 100000BA */  b     .L801517EC_ovl3
/* 0B1F44 80151504 24020009 */   li    $v0, 9
.L80151508_ovl3:
/* 0B1F48 80151508 100000B8 */  b     .L801517EC_ovl3
/* 0B1F4C 8015150C 00001025 */   move  $v0, $zero
.L80151510_ovl3:
/* 0B1F50 80151510 1440001C */  bnez  $v0, .L80151584_ovl3
/* 0B1F54 80151514 3C0F800D */   lui   $t7, %hi(D_800D6FA8) # $t7, 0x800d
/* 0B1F58 80151518 8DEF6FA8 */  lw    $t7, %lo(D_800D6FA8)($t7)
/* 0B1F5C 8015151C 55E0001A */  bnezl $t7, .L80151588_ovl3
/* 0B1F60 80151520 8C6600A0 */   lw    $a2, 0xa0($v1)
/* 0B1F64 80151524 90780004 */  lbu   $t8, 4($v1)
/* 0B1F68 80151528 3C04800D */  lui   $a0, %hi(D_800D6FEA) # $a0, 0x800d
/* 0B1F6C 8015152C 54F80016 */  bnel  $a3, $t8, .L80151588_ovl3
/* 0B1F70 80151530 8C6600A0 */   lw    $a2, 0xa0($v1)
/* 0B1F74 80151534 94846FEA */  lhu   $a0, %lo(D_800D6FEA)($a0)
/* 0B1F78 80151538 24050019 */  li    $a1, 25
/* 0B1F7C 8015153C 30994000 */  andi  $t9, $a0, 0x4000
/* 0B1F80 80151540 13200005 */  beqz  $t9, .L80151558_ovl3
/* 0B1F84 80151544 3089003F */   andi  $t1, $a0, 0x3f
/* 0B1F88 80151548 0C048BDB */  jal   set_kirby_action_1
/* 0B1F8C 8015154C 2404001B */   li    $a0, 27
/* 0B1F90 80151550 100000A6 */  b     .L801517EC_ovl3
/* 0B1F94 80151554 24020009 */   li    $v0, 9
.L80151558_ovl3:
/* 0B1F98 80151558 15200005 */  bnez  $t1, .L80151570_ovl3
/* 0B1F9C 8015155C 24040013 */   li    $a0, 19
/* 0B1FA0 80151560 906A000A */  lbu   $t2, 0xa($v1)
/* 0B1FA4 80151564 24010003 */  li    $at, 3
/* 0B1FA8 80151568 55410007 */  bnel  $t2, $at, .L80151588_ovl3
/* 0B1FAC 8015156C 8C6600A0 */   lw    $a2, 0xa0($v1)
.L80151570_ovl3:
/* 0B1FB0 80151570 A060000A */  sb    $zero, 0xa($v1)
/* 0B1FB4 80151574 0C048BDB */  jal   set_kirby_action_1
/* 0B1FB8 80151578 24050013 */   li    $a1, 19
/* 0B1FBC 8015157C 1000009B */  b     .L801517EC_ovl3
/* 0B1FC0 80151580 24020009 */   li    $v0, 9
.L80151584_ovl3:
/* 0B1FC4 80151584 8C6600A0 */  lw    $a2, 0xa0($v1)
.L80151588_ovl3:
/* 0B1FC8 80151588 AC6000A4 */  sw    $zero, 0xa4($v1)
/* 0B1FCC 8015158C 3C04800D */  lui   $a0, %hi(D_800D6FEA) # $a0, 0x800d
/* 0B1FD0 80151590 94846FEA */  lhu   $a0, %lo(D_800D6FEA)($a0)
/* 0B1FD4 80151594 14C00043 */  bnez  $a2, .L801516A4_ovl3
/* 0B1FD8 80151598 90650004 */   lbu   $a1, 4($v1)
/* 0B1FDC 8015159C 906B0008 */  lbu   $t3, 8($v1)
/* 0B1FE0 801515A0 3C0C800D */  lui   $t4, %hi(D_800D6FA8) # $t4, 0x800d
/* 0B1FE4 801515A4 3C0E800D */  lui   $t6, %hi(D_800D6FB0) # $t6, 0x800d
/* 0B1FE8 801515A8 5560003F */  bnezl $t3, .L801516A8_ovl3
/* 0B1FEC 801515AC 30984000 */   andi  $t8, $a0, 0x4000
/* 0B1FF0 801515B0 8D8C6FA8 */  lw    $t4, %lo(D_800D6FA8)($t4)
/* 0B1FF4 801515B4 95CE6FB0 */  lhu   $t6, %lo(D_800D6FB0)($t6)
/* 0B1FF8 801515B8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0B1FFC 801515BC 01826825 */  or    $t5, $t4, $v0
/* 0B2000 801515C0 01AE7825 */  or    $t7, $t5, $t6
/* 0B2004 801515C4 55E00038 */  bnezl $t7, .L801516A8_ovl3
/* 0B2008 801515C8 30984000 */   andi  $t8, $a0, 0x4000
/* 0B200C 801515CC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0B2010 801515D0 3C0A800F */  lui   $t2, 0x800f
/* 0B2014 801515D4 308B0400 */  andi  $t3, $a0, 0x400
/* 0B2018 801515D8 8F190000 */  lw    $t9, ($t8)
/* 0B201C 801515DC 308D003F */  andi  $t5, $a0, 0x3f
/* 0B2020 801515E0 00A01025 */  move  $v0, $a1
/* 0B2024 801515E4 00194880 */  sll   $t1, $t9, 2
/* 0B2028 801515E8 01495021 */  addu  $t2, $t2, $t1
/* 0B202C 801515EC 8D4A8920 */  lw    $t2, -0x76e0($t2)
/* 0B2030 801515F0 11400008 */  beqz  $t2, .L80151614_ovl3
/* 0B2034 801515F4 00000000 */   nop   
/* 0B2038 801515F8 15600004 */  bnez  $t3, .L8015160C_ovl3
/* 0B203C 801515FC 308C003F */   andi  $t4, $a0, 0x3f
/* 0B2040 80151600 11800002 */  beqz  $t4, .L8015160C_ovl3
/* 0B2044 80151604 24080001 */   li    $t0, 1
/* 0B2048 80151608 AC6800A4 */  sw    $t0, 0xa4($v1)
.L8015160C_ovl3:
/* 0B204C 8015160C 10000005 */  b     .L80151624_ovl3
/* 0B2050 80151610 8C6E00A4 */   lw    $t6, 0xa4($v1)
.L80151614_ovl3:
/* 0B2054 80151614 11A00002 */  beqz  $t5, .L80151620_ovl3
/* 0B2058 80151618 24080001 */   li    $t0, 1
/* 0B205C 8015161C AC6800A4 */  sw    $t0, 0xa4($v1)
.L80151620_ovl3:
/* 0B2060 80151620 8C6E00A4 */  lw    $t6, 0xa4($v1)
.L80151624_ovl3:
/* 0B2064 80151624 24080001 */  li    $t0, 1
/* 0B2068 80151628 51C0001F */  beql  $t6, $zero, .L801516A8_ovl3
/* 0B206C 8015162C 30984000 */   andi  $t8, $a0, 0x4000
/* 0B2070 80151630 10A0000D */  beqz  $a1, .L80151668_ovl3
/* 0B2074 80151634 AC6000A4 */   sw    $zero, 0xa4($v1)
/* 0B2078 80151638 50480006 */  beql  $v0, $t0, .L80151654_ovl3
/* 0B207C 8015163C A0600007 */   sb    $zero, 7($v1)
/* 0B2080 80151640 50470019 */  beql  $v0, $a3, .L801516A8_ovl3
/* 0B2084 80151644 30984000 */   andi  $t8, $a0, 0x4000
/* 0B2088 80151648 10000017 */  b     .L801516A8_ovl3
/* 0B208C 8015164C 30984000 */   andi  $t8, $a0, 0x4000
/* 0B2090 80151650 A0600007 */  sb    $zero, 7($v1)
.L80151654_ovl3:
/* 0B2094 80151654 24040011 */  li    $a0, 17
/* 0B2098 80151658 0C048BDB */  jal   set_kirby_action_1
/* 0B209C 8015165C 24050011 */   li    $a1, 17
/* 0B20A0 80151660 10000062 */  b     .L801517EC_ovl3
/* 0B20A4 80151664 24020009 */   li    $v0, 9
.L80151668_ovl3:
/* 0B20A8 80151668 8C6F0090 */  lw    $t7, 0x90($v1)
/* 0B20AC 8015166C 51E0000E */  beql  $t7, $zero, .L801516A8_ovl3
/* 0B20B0 80151670 30984000 */   andi  $t8, $a0, 0x4000
/* 0B20B4 80151674 90620005 */  lbu   $v0, 5($v1)
/* 0B20B8 80151678 2401000A */  li    $at, 10
/* 0B20BC 8015167C 10410009 */  beq   $v0, $at, .L801516A4_ovl3
/* 0B20C0 80151680 2401000B */   li    $at, 11
/* 0B20C4 80151684 50410008 */  beql  $v0, $at, .L801516A8_ovl3
/* 0B20C8 80151688 30984000 */   andi  $t8, $a0, 0x4000
/* 0B20CC 8015168C A0600007 */  sb    $zero, 7($v1)
/* 0B20D0 80151690 24040011 */  li    $a0, 17
/* 0B20D4 80151694 0C048BDB */  jal   set_kirby_action_1
/* 0B20D8 80151698 24050011 */   li    $a1, 17
/* 0B20DC 8015169C 10000053 */  b     .L801517EC_ovl3
/* 0B20E0 801516A0 24020009 */   li    $v0, 9
.L801516A4_ovl3:
/* 0B20E4 801516A4 30984000 */  andi  $t8, $a0, 0x4000
.L801516A8_ovl3:
/* 0B20E8 801516A8 24080001 */  li    $t0, 1
/* 0B20EC 801516AC 17000004 */  bnez  $t8, .L801516C0_ovl3
/* 0B20F0 801516B0 00A01025 */   move  $v0, $a1
/* 0B20F4 801516B4 9079000A */  lbu   $t9, 0xa($v1)
/* 0B20F8 801516B8 1519002B */  bne   $t0, $t9, .L80151768_ovl3
/* 0B20FC 801516BC 00000000 */   nop   
.L801516C0_ovl3:
/* 0B2100 801516C0 10400005 */  beqz  $v0, .L801516D8_ovl3
/* 0B2104 801516C4 A060000A */   sb    $zero, 0xa($v1)
/* 0B2108 801516C8 10480021 */  beq   $v0, $t0, .L80151750_ovl3
/* 0B210C 801516CC 2404001A */   li    $a0, 26
/* 0B2110 801516D0 10000046 */  b     .L801517EC_ovl3
/* 0B2114 801516D4 00001025 */   move  $v0, $zero
.L801516D8_ovl3:
/* 0B2118 801516D8 8C640090 */  lw    $a0, 0x90($v1)
/* 0B211C 801516DC 24050018 */  li    $a1, 24
/* 0B2120 801516E0 50800016 */  beql  $a0, $zero, .L8015173C_ovl3
/* 0B2124 801516E4 AC600030 */   sw    $zero, 0x30($v1)
/* 0B2128 801516E8 14C0001D */  bnez  $a2, .L80151760_ovl3
/* 0B212C 801516EC 2401000C */   li    $at, 12
/* 0B2130 801516F0 14810004 */  bne   $a0, $at, .L80151704_ovl3
/* 0B2134 801516F4 3C09801A */   lui   $t1, %hi(D_80198838) # $t1, 0x801a
/* 0B2138 801516F8 85298838 */  lh    $t1, %lo(D_80198838)($t1)
/* 0B213C 801516FC 11200018 */  beqz  $t1, .L80151760_ovl3
/* 0B2140 80151700 00000000 */   nop   
.L80151704_ovl3:
/* 0B2144 80151704 0C05DCB3 */  jal   func_801772CC_ovl3
/* 0B2148 80151708 00000000 */   nop   
/* 0B214C 8015170C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0B2150 80151710 3401FFFF */  li    $at, 65535
/* 0B2154 80151714 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0B2158 80151718 10410011 */  beq   $v0, $at, .L80151760_ovl3
/* 0B215C 8015171C 00402025 */   move  $a0, $v0
/* 0B2160 80151720 AC600030 */  sw    $zero, 0x30($v1)
/* 0B2164 80151724 A0600016 */  sb    $zero, 0x16($v1)
/* 0B2168 80151728 0C048BDB */  jal   set_kirby_action_1
/* 0B216C 8015172C 2405001A */   li    $a1, 26
/* 0B2170 80151730 1000002E */  b     .L801517EC_ovl3
/* 0B2174 80151734 24020009 */   li    $v0, 9
/* 0B2178 80151738 AC600030 */  sw    $zero, 0x30($v1)
.L8015173C_ovl3:
/* 0B217C 8015173C A0600007 */  sb    $zero, 7($v1)
/* 0B2180 80151740 0C048BDB */  jal   set_kirby_action_1
/* 0B2184 80151744 24040018 */   li    $a0, 24
/* 0B2188 80151748 10000028 */  b     .L801517EC_ovl3
/* 0B218C 8015174C 24020009 */   li    $v0, 9
.L80151750_ovl3:
/* 0B2190 80151750 0C048BDB */  jal   set_kirby_action_1
/* 0B2194 80151754 24050019 */   li    $a1, 25
/* 0B2198 80151758 10000024 */  b     .L801517EC_ovl3
/* 0B219C 8015175C 24020009 */   li    $v0, 9
.L80151760_ovl3:
/* 0B21A0 80151760 10000022 */  b     .L801517EC_ovl3
/* 0B21A4 80151764 00001025 */   move  $v0, $zero
.L80151768_ovl3:
/* 0B21A8 80151768 50400020 */  beql  $v0, $zero, .L801517EC_ovl3
/* 0B21AC 8015176C 00001025 */   move  $v0, $zero
/* 0B21B0 80151770 10480005 */  beq   $v0, $t0, .L80151788_ovl3
/* 0B21B4 80151774 3C0A8005 */   lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0B21B8 80151778 10470014 */  beq   $v0, $a3, .L801517CC_ovl3
/* 0B21BC 8015177C 308F0400 */   andi  $t7, $a0, 0x400
/* 0B21C0 80151780 1000001A */  b     .L801517EC_ovl3
/* 0B21C4 80151784 00001025 */   move  $v0, $zero
.L80151788_ovl3:
/* 0B21C8 80151788 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0B21CC 8015178C 3C0D800F */  lui   $t5, 0x800f
/* 0B21D0 80151790 308E0400 */  andi  $t6, $a0, 0x400
/* 0B21D4 80151794 8D4B0000 */  lw    $t3, ($t2)
/* 0B21D8 80151798 000B6080 */  sll   $t4, $t3, 2
/* 0B21DC 8015179C 01AC6821 */  addu  $t5, $t5, $t4
/* 0B21E0 801517A0 8DAD8920 */  lw    $t5, -0x76e0($t5)
/* 0B21E4 801517A4 51A00011 */  beql  $t5, $zero, .L801517EC_ovl3
/* 0B21E8 801517A8 00001025 */   move  $v0, $zero
/* 0B21EC 801517AC 11C0000E */  beqz  $t6, .L801517E8_ovl3
/* 0B21F0 801517B0 2404000B */   li    $a0, 11
/* 0B21F4 801517B4 AC600030 */  sw    $zero, 0x30($v1)
/* 0B21F8 801517B8 A0600007 */  sb    $zero, 7($v1)
/* 0B21FC 801517BC 0C048BDB */  jal   set_kirby_action_1
/* 0B2200 801517C0 24050010 */   li    $a1, 16
/* 0B2204 801517C4 10000009 */  b     .L801517EC_ovl3
/* 0B2208 801517C8 24020009 */   li    $v0, 9
.L801517CC_ovl3:
/* 0B220C 801517CC 11E00006 */  beqz  $t7, .L801517E8_ovl3
/* 0B2210 801517D0 24040012 */   li    $a0, 18
/* 0B2214 801517D4 A0600007 */  sb    $zero, 7($v1)
/* 0B2218 801517D8 0C048BDB */  jal   set_kirby_action_1
/* 0B221C 801517DC 24050012 */   li    $a1, 18
/* 0B2220 801517E0 10000002 */  b     .L801517EC_ovl3
/* 0B2224 801517E4 24020009 */   li    $v0, 9
.L801517E8_ovl3:
/* 0B2228 801517E8 00001025 */  move  $v0, $zero
.L801517EC_ovl3:
/* 0B222C 801517EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B2230 801517F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B2234 801517F4 03E00008 */  jr    $ra
/* 0B2238 801517F8 00000000 */   nop   
.type func_80151448_ovl3, @function
.size func_80151448_ovl3, . - func_80151448_ovl3
