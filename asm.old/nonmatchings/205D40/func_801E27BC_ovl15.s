glabel func_801E27BC_ovl15
/* 20D31C 801E27BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20D320 801E27C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 20D324 801E27C4 3C108005 */  lui        $s0, %hi(D_8004A7C4)
.L801E27C8_ovl17:
/* 20D328 801E27C8 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 20D32C 801E27CC 8E050000 */  lw         $a1, 0x0($s0)
/* 20D330 801E27D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 20D334 801E27D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 20D338 801E27D8 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D33C 801E27DC 3C02800F */  lui        $v0, %hi(D_800EA360)
/* 20D340 801E27E0 3C0E800F */  lui        $t6, %hi(D_800EA1A0)
/* 20D344 801E27E4 00031880 */  sll        $v1, $v1, 2
glabel func_801E27E8_ovl10
/* 20D348 801E27E8 00431021 */  addu       $v0, $v0, $v1
.L801E27EC_ovl13:
/* 20D34C 801E27EC 8C42A360 */  lw         $v0, %lo(D_800EA360)($v0)
.L801E27F0_ovl13:
/* 20D350 801E27F0 01C37021 */  addu       $t6, $t6, $v1
.L801E27F4_ovl9:
/* 20D354 801E27F4 10400008 */  beqz       $v0, .L801E2818_ovl15
/* 20D358 801E27F8 00000000 */   nop
/* 20D35C 801E27FC 24040001 */  addiu      $a0, $zero, 0x1
/* 20D360 801E2800 10440078 */  beq        $v0, $a0, .L801E29E4_ovl15
.L801E2804_ovl17:
/* 20D364 801E2804 24060002 */   addiu     $a2, $zero, 0x2
/* 20D368 801E2808 1046016B */  beq        $v0, $a2, .L801E2DB8_ovl15
/* 20D36C 801E280C 00000000 */   nop
/* 20D370 801E2810 10000199 */  b          func_801E2E78_ovl15
/* 20D374 801E2814 00000000 */   nop
.L801E2818_ovl15:
/* 20D378 801E2818 8DCEA1A0 */  lw         $t6, %lo(D_800EA1A0)($t6)
/* 20D37C 801E281C 2DC10005 */  sltiu      $at, $t6, 0x5
glabel func_801E2820_ovl16
/* 20D380 801E2820 10200195 */  beqz       $at, func_801E2E78_ovl15
.L801E2824_ovl9:
/* 20D384 801E2824 000E7080 */   sll       $t6, $t6, 2
.L801E2828_ovl17:
/* 20D388 801E2828 3C01801E */  lui        $at, %hi(jtbl_801E68C4_ovl15)
/* 20D38C 801E282C 002E0821 */  addu       $at, $at, $t6
/* 20D390 801E2830 8C2E68C4 */  lw         $t6, %lo(jtbl_801E68C4_ovl15)($at)
glabel func_801E2834_ovl14
/* 20D394 801E2834 01C00008 */  jr         $t6
/* 20D398 801E2838 00000000 */   nop
/* 20D39C 801E283C 3C02800F */  lui        $v0, %hi(D_800E9E20)
/* 20D3A0 801E2840 00431021 */  addu       $v0, $v0, $v1
.L801E2844_ovl12:
/* 20D3A4 801E2844 8C429E20 */  lw         $v0, %lo(D_800E9E20)($v0)
/* 20D3A8 801E2848 28410034 */  slti       $at, $v0, 0x34
/* 20D3AC 801E284C 1420018A */  bnez       $at, func_801E2E78_ovl15
/* 20D3B0 801E2850 00000000 */   nop
/* 20D3B4 801E2854 28410041 */  slti       $at, $v0, 0x41
/* 20D3B8 801E2858 10200187 */  beqz       $at, func_801E2E78_ovl15
/* 20D3BC 801E285C 3C18800E */   lui       $t8, %hi(D_800E1B50)
/* 20D3C0 801E2860 0303C021 */  addu       $t8, $t8, $v1
/* 20D3C4 801E2864 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 20D3C8 801E2868 3C0F801E */  lui        $t7, %hi(D_801D8A84)
/* 20D3CC 801E286C 25EF8A84 */  addiu      $t7, $t7, %lo(D_801D8A84)
/* 20D3D0 801E2870 AF0F008C */  sw         $t7, 0x8C($t8)
/* 20D3D4 801E2874 8E190000 */  lw         $t9, 0x0($s0)
glabel func_801E2878_ovl9
/* 20D3D8 801E2878 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
/* 20D3DC 801E287C 00002825 */  or         $a1, $zero, $zero
.L801E2880_ovl14:
/* 20D3E0 801E2880 8F280000 */  lw         $t0, 0x0($t9)
/* 20D3E4 801E2884 00003025 */  or         $a2, $zero, $zero
/* 20D3E8 801E2888 00084880 */  sll        $t1, $t0, 2
/* 20D3EC 801E288C 01495021 */  addu       $t2, $t2, $t1
.L801E2890_ovl13:
/* 20D3F0 801E2890 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
/* 20D3F4 801E2894 0C078674 */  jal        func_801E19D0_ovl15
.L801E2898_ovl12:
/* 20D3F8 801E2898 8D44002C */   lw        $a0, 0x2C($t2)
/* 20D3FC 801E289C 3C058005 */  lui        $a1, %hi(D_8004A7C4)
glabel func_801E28A0_ovl10
/* 20D400 801E28A0 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 20D404 801E28A4 8CA30000 */  lw         $v1, 0x0($a1)
glabel func_801E28A8_ovl13
/* 20D408 801E28A8 10000173 */  b          func_801E2E78_ovl15
.L801E28AC_ovl9:
/* 20D40C 801E28AC 00031880 */   sll       $v1, $v1, 2
/* 20D410 801E28B0 3C02800F */  lui        $v0, %hi(D_800E9E20)
/* 20D414 801E28B4 00431021 */  addu       $v0, $v0, $v1
/* 20D418 801E28B8 8C429E20 */  lw         $v0, %lo(D_800E9E20)($v0)
.L801E28BC_ovl14:
/* 20D41C 801E28BC 28410034 */  slti       $at, $v0, 0x34
/* 20D420 801E28C0 1420016D */  bnez       $at, func_801E2E78_ovl15
/* 20D424 801E28C4 00000000 */   nop
glabel func_801E28C8_ovl12
/* 20D428 801E28C8 28410041 */  slti       $at, $v0, 0x41
/* 20D42C 801E28CC 1020016A */  beqz       $at, func_801E2E78_ovl15
/* 20D430 801E28D0 3C0C800E */   lui       $t4, %hi(D_800E1B50)
/* 20D434 801E28D4 01836021 */  addu       $t4, $t4, $v1
/* 20D438 801E28D8 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 20D43C 801E28DC 3C0B801E */  lui        $t3, %hi(D_801D8A3C)
/* 20D440 801E28E0 256B8A3C */  addiu      $t3, $t3, %lo(D_801D8A3C)
/* 20D444 801E28E4 AD8B008C */  sw         $t3, 0x8C($t4)
/* 20D448 801E28E8 8E0D0000 */  lw         $t5, 0x0($s0)
.L801E28EC_ovl14:
/* 20D44C 801E28EC 3C18800E */  lui        $t8, %hi(D_800DFBD0)
glabel func_801E28F0_ovl12
/* 20D450 801E28F0 00002825 */  or         $a1, $zero, $zero
/* 20D454 801E28F4 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801E28F8_ovl9
/* 20D458 801E28F8 00003025 */  or         $a2, $zero, $zero
.L801E28FC_ovl16:
/* 20D45C 801E28FC 000E7880 */  sll        $t7, $t6, 2
/* 20D460 801E2900 030FC021 */  addu       $t8, $t8, $t7
/* 20D464 801E2904 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
.L801E2908_ovl10:
/* 20D468 801E2908 0C078674 */  jal        func_801E19D0_ovl15
/* 20D46C 801E290C 8F040044 */   lw        $a0, 0x44($t8)
.L801E2910_ovl17:
/* 20D470 801E2910 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 20D474 801E2914 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 20D478 801E2918 8CA30000 */  lw         $v1, 0x0($a1)
.L801E291C_ovl16:
/* 20D47C 801E291C 10000156 */  b          func_801E2E78_ovl15
/* 20D480 801E2920 00031880 */   sll       $v1, $v1, 2
/* 20D484 801E2924 3C02800F */  lui        $v0, %hi(D_800E9E20)
/* 20D488 801E2928 00431021 */  addu       $v0, $v0, $v1
/* 20D48C 801E292C 8C429E20 */  lw         $v0, %lo(D_800E9E20)($v0)
.L801E2930_ovl12:
/* 20D490 801E2930 28410034 */  slti       $at, $v0, 0x34
.L801E2934_ovl17:
/* 20D494 801E2934 14200150 */  bnez       $at, func_801E2E78_ovl15
.L801E2938_ovl16:
/* 20D498 801E2938 00000000 */   nop
/* 20D49C 801E293C 2841009F */  slti       $at, $v0, 0x9F
.L801E2940_ovl17:
/* 20D4A0 801E2940 1020014D */  beqz       $at, func_801E2E78_ovl15
/* 20D4A4 801E2944 00000000 */   nop
glabel func_801E2948_ovl16
/* 20D4A8 801E2948 2841003F */  slti       $at, $v0, 0x3F
.L801E294C_ovl17:
/* 20D4AC 801E294C 10200007 */  beqz       $at, .L801E296C_ovl15
/* 20D4B0 801E2950 3C19801E */   lui       $t9, %hi(D_801D8B38)
.L801E2954_ovl16:
/* 20D4B4 801E2954 3C08800E */  lui        $t0, %hi(D_800E1B50)
/* 20D4B8 801E2958 01034021 */  addu       $t0, $t0, $v1
.L801E295C_ovl12:
/* 20D4BC 801E295C 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
glabel func_801E2960_ovl16
/* 20D4C0 801E2960 27398B38 */  addiu      $t9, $t9, %lo(D_801D8B38)
/* 20D4C4 801E2964 10000010 */  b          .L801E29A8_ovl15
.L801E2968_ovl17:
/* 20D4C8 801E2968 AD19008C */   sw        $t9, 0x8C($t0)
.L801E296C_ovl15:
/* 20D4CC 801E296C 28410097 */  slti       $at, $v0, 0x97
glabel func_801E2970_ovl14
/* 20D4D0 801E2970 10200008 */  beqz       $at, .L801E2994_ovl15
.L801E2974_ovl12:
/* 20D4D4 801E2974 3C0C800E */   lui       $t4, %hi(D_800E1B50)
/* 20D4D8 801E2978 3C0A800E */  lui        $t2, %hi(D_800E1B50)
glabel func_801E297C_ovl12
/* 20D4DC 801E297C 01435021 */  addu       $t2, $t2, $v1
/* 20D4E0 801E2980 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
.L801E2984_ovl14:
/* 20D4E4 801E2984 3C09801E */  lui        $t1, %hi(D_801D8B5C)
/* 20D4E8 801E2988 25298B5C */  addiu      $t1, $t1, %lo(D_801D8B5C)
/* 20D4EC 801E298C 10000006 */  b          .L801E29A8_ovl15
/* 20D4F0 801E2990 AD49008C */   sw        $t1, 0x8C($t2)
.L801E2994_ovl15:
/* 20D4F4 801E2994 01836021 */  addu       $t4, $t4, $v1
/* 20D4F8 801E2998 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 20D4FC 801E299C 3C0B801E */  lui        $t3, %hi(D_801D8B80)
/* 20D500 801E29A0 256B8B80 */  addiu      $t3, $t3, %lo(D_801D8B80)
/* 20D504 801E29A4 AD8B008C */  sw         $t3, 0x8C($t4)
.L801E29A8_ovl15:
/* 20D508 801E29A8 8E0D0000 */  lw         $t5, 0x0($s0)
/* 20D50C 801E29AC 3C02800E */  lui        $v0, %hi(D_800DFBD0)
.L801E29B0_ovl14:
/* 20D510 801E29B0 00003025 */  or         $a2, $zero, $zero
/* 20D514 801E29B4 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801E29B8_ovl9
/* 20D518 801E29B8 000E7880 */  sll        $t7, $t6, 2
.L801E29BC_ovl12:
/* 20D51C 801E29BC 004F1021 */  addu       $v0, $v0, $t7
/* 20D520 801E29C0 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
.L801E29C4_ovl14:
/* 20D524 801E29C4 8C440044 */  lw         $a0, 0x44($v0)
/* 20D528 801E29C8 0C078674 */  jal        func_801E19D0_ovl15
/* 20D52C 801E29CC 8C45002C */   lw        $a1, 0x2C($v0)
glabel func_801E29D0_ovl14
/* 20D530 801E29D0 3C058005 */  lui        $a1, %hi(D_8004A7C4)
.L801E29D4_ovl10:
/* 20D534 801E29D4 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
.L801E29D8_ovl12:
/* 20D538 801E29D8 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D53C 801E29DC 10000126 */  b          func_801E2E78_ovl15
glabel func_801E29E0_ovl13
/* 20D540 801E29E0 00031880 */   sll       $v1, $v1, 2
.L801E29E4_ovl15:
/* 20D544 801E29E4 3C02800F */  lui        $v0, %hi(D_800EA1A0)
.L801E29E8_ovl12:
/* 20D548 801E29E8 00431021 */  addu       $v0, $v0, $v1
/* 20D54C 801E29EC 8C42A1A0 */  lw         $v0, %lo(D_800EA1A0)($v0)
/* 20D550 801E29F0 10400090 */  beqz       $v0, .L801E2C34_ovl15
/* 20D554 801E29F4 00000000 */   nop
/* 20D558 801E29F8 10440007 */  beq        $v0, $a0, .L801E2A18_ovl15
/* 20D55C 801E29FC 24060002 */   addiu     $a2, $zero, 0x2
.L801E2A00_ovl12:
/* 20D560 801E2A00 10460079 */  beq        $v0, $a2, .L801E2BE8_ovl15
/* 20D564 801E2A04 24010003 */   addiu     $at, $zero, 0x3
glabel func_801E2A08_ovl12
/* 20D568 801E2A08 1041008A */  beq        $v0, $at, .L801E2C34_ovl15
/* 20D56C 801E2A0C 00000000 */   nop
/* 20D570 801E2A10 10000119 */  b          func_801E2E78_ovl15
/* 20D574 801E2A14 00000000 */   nop
.L801E2A18_ovl15:
/* 20D578 801E2A18 3C19800E */  lui        $t9, %hi(D_800E1B50)
.L801E2A1C_ovl10:
/* 20D57C 801E2A1C 0323C821 */  addu       $t9, $t9, $v1
/* 20D580 801E2A20 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 20D584 801E2A24 3C18801E */  lui        $t8, %hi(func_801D9060_ovl9 + 0xC)
glabel func_801E2A28_ovl16
/* 20D588 801E2A28 2718906C */  addiu      $t8, $t8, %lo(func_801D9060_ovl9 + 0xC)
glabel func_801E2A2C_ovl17
/* 20D58C 801E2A2C AF38008C */  sw         $t8, 0x8C($t9)
/* 20D590 801E2A30 8E080000 */  lw         $t0, 0x0($s0)
/* 20D594 801E2A34 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 20D598 801E2A38 00003025 */  or         $a2, $zero, $zero
/* 20D59C 801E2A3C 8D090000 */  lw         $t1, 0x0($t0)
.L801E2A40_ovl10:
/* 20D5A0 801E2A40 00095080 */  sll        $t2, $t1, 2
/* 20D5A4 801E2A44 004A1021 */  addu       $v0, $v0, $t2
.L801E2A48_ovl12:
/* 20D5A8 801E2A48 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
/* 20D5AC 801E2A4C 8C440030 */  lw         $a0, 0x30($v0)
/* 20D5B0 801E2A50 0C078674 */  jal        func_801E19D0_ovl15
glabel func_801E2A54_ovl14
/* 20D5B4 801E2A54 8C450034 */   lw        $a1, 0x34($v0)
.L801E2A58_ovl13:
/* 20D5B8 801E2A58 8E0C0000 */  lw         $t4, 0x0($s0)
.L801E2A5C_ovl13:
/* 20D5BC 801E2A5C 3C0F800E */  lui        $t7, %hi(D_800E1B50)
.L801E2A60_ovl10:
/* 20D5C0 801E2A60 3C0B801E */  lui        $t3, %hi(func_801D92AC_ovl9)
.L801E2A64_ovl12:
/* 20D5C4 801E2A64 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20D5C8 801E2A68 256B92AC */  addiu      $t3, $t3, %lo(func_801D92AC_ovl9)
/* 20D5CC 801E2A6C 3C02800E */  lui        $v0, %hi(D_800DFBD0)
.L801E2A70_ovl9:
/* 20D5D0 801E2A70 000D7080 */  sll        $t6, $t5, 2
.L801E2A74_ovl12:
/* 20D5D4 801E2A74 01EE7821 */  addu       $t7, $t7, $t6
/* 20D5D8 801E2A78 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 20D5DC 801E2A7C 00003025 */  or         $a2, $zero, $zero
.L801E2A80_ovl13:
/* 20D5E0 801E2A80 ADEB008C */  sw         $t3, 0x8C($t7)
/* 20D5E4 801E2A84 8E180000 */  lw         $t8, 0x0($s0)
.L801E2A88_ovl14:
/* 20D5E8 801E2A88 8F190000 */  lw         $t9, 0x0($t8)
.L801E2A8C_ovl12:
/* 20D5EC 801E2A8C 00194080 */  sll        $t0, $t9, 2
/* 20D5F0 801E2A90 00481021 */  addu       $v0, $v0, $t0
/* 20D5F4 801E2A94 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
/* 20D5F8 801E2A98 8C440010 */  lw         $a0, 0x10($v0)
.L801E2A9C_ovl16:
/* 20D5FC 801E2A9C 0C078674 */  jal        func_801E19D0_ovl15
glabel func_801E2AA0_ovl12
/* 20D600 801E2AA0 8C450058 */   lw        $a1, 0x58($v0)
/* 20D604 801E2AA4 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20D608 801E2AA8 3C0E800E */  lui        $t6, %hi(D_800E1B50)
/* 20D60C 801E2AAC 3C09801E */  lui        $t1, %hi(D_801D9120)
glabel D_801E2AB0_ovl12
/* 20D610 801E2AB0 8D4C0000 */  lw         $t4, 0x0($t2)
/* 20D614 801E2AB4 25299120 */  addiu      $t1, $t1, %lo(D_801D9120)
/* 20D618 801E2AB8 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* 20D61C 801E2ABC 000C6880 */  sll        $t5, $t4, 2
.L801E2AC0_ovl16:
/* 20D620 801E2AC0 01CD7021 */  addu       $t6, $t6, $t5
/* 20D624 801E2AC4 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
/* 20D628 801E2AC8 00002825 */  or         $a1, $zero, $zero
/* 20D62C 801E2ACC 00003025 */  or         $a2, $zero, $zero
/* 20D630 801E2AD0 ADC9008C */  sw         $t1, 0x8C($t6)
.L801E2AD4_ovl12:
/* 20D634 801E2AD4 8E0B0000 */  lw         $t3, 0x0($s0)
glabel func_801E2AD8_ovl14
/* 20D638 801E2AD8 8D6F0000 */  lw         $t7, 0x0($t3)
/* 20D63C 801E2ADC 000FC080 */  sll        $t8, $t7, 2
.L801E2AE0_ovl16:
/* 20D640 801E2AE0 0338C821 */  addu       $t9, $t9, $t8
.L801E2AE4_ovl10:
/* 20D644 801E2AE4 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
.L801E2AE8_ovl10:
/* 20D648 801E2AE8 0C078674 */  jal        func_801E19D0_ovl15
glabel D_801E2AEC_ovl12
/* 20D64C 801E2AEC 8F240018 */   lw        $a0, 0x18($t9)
glabel func_801E2AF0_ovl17
/* 20D650 801E2AF0 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20D654 801E2AF4 3C09800E */  lui        $t1, %hi(D_800E1B50)
/* 20D658 801E2AF8 3C08801E */  lui        $t0, %hi(D_801D8F70)
.L801E2AFC_ovl16:
/* 20D65C 801E2AFC 8D4C0000 */  lw         $t4, 0x0($t2)
.L801E2B00_ovl13:
/* 20D660 801E2B00 25088F70 */  addiu      $t0, $t0, %lo(D_801D8F70)
glabel func_801E2B04_ovl12
/* 20D664 801E2B04 3C18800E */  lui        $t8, %hi(D_800DFBD0)
glabel func_801E2B08_ovl16
/* 20D668 801E2B08 000C6880 */  sll        $t5, $t4, 2
/* 20D66C 801E2B0C 012D4821 */  addu       $t1, $t1, $t5
/* 20D670 801E2B10 8D291B50 */  lw         $t1, %lo(D_800E1B50)($t1)
/* 20D674 801E2B14 00002825 */  or         $a1, $zero, $zero
/* 20D678 801E2B18 00003025 */  or         $a2, $zero, $zero
/* 20D67C 801E2B1C AD28008C */  sw         $t0, 0x8C($t1)
/* 20D680 801E2B20 8E0E0000 */  lw         $t6, 0x0($s0)
.L801E2B24_ovl17:
/* 20D684 801E2B24 8DCB0000 */  lw         $t3, 0x0($t6)
.L801E2B28_ovl13:
/* 20D688 801E2B28 000B7880 */  sll        $t7, $t3, 2
glabel func_801E2B2C_ovl9
/* 20D68C 801E2B2C 030FC021 */  addu       $t8, $t8, $t7
/* 20D690 801E2B30 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* 20D694 801E2B34 0C078674 */  jal        func_801E19D0_ovl15
/* 20D698 801E2B38 8F040010 */   lw        $a0, 0x10($t8)
/* 20D69C 801E2B3C 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20D6A0 801E2B40 3C08800E */  lui        $t0, %hi(D_800E1B50)
/* 20D6A4 801E2B44 3C19801E */  lui        $t9, %hi(func_801D8F78_ovl9 + 0x1C)
/* 20D6A8 801E2B48 8D4C0000 */  lw         $t4, 0x0($t2)
/* 20D6AC 801E2B4C 27398F94 */  addiu      $t9, $t9, %lo(func_801D8F78_ovl9 + 0x1C)
/* 20D6B0 801E2B50 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* 20D6B4 801E2B54 000C6880 */  sll        $t5, $t4, 2
/* 20D6B8 801E2B58 010D4021 */  addu       $t0, $t0, $t5
.L801E2B5C_ovl14:
/* 20D6BC 801E2B5C 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
/* 20D6C0 801E2B60 00002825 */  or         $a1, $zero, $zero
/* 20D6C4 801E2B64 00003025 */  or         $a2, $zero, $zero
.L801E2B68_ovl10:
/* 20D6C8 801E2B68 AD19008C */  sw         $t9, 0x8C($t0)
glabel D_801E2B6C_ovl12
/* 20D6CC 801E2B6C 8E090000 */  lw         $t1, 0x0($s0)
/* 20D6D0 801E2B70 8D2E0000 */  lw         $t6, 0x0($t1)
/* 20D6D4 801E2B74 000E5880 */  sll        $t3, $t6, 2
glabel func_801E2B78_ovl17
/* 20D6D8 801E2B78 01EB7821 */  addu       $t7, $t7, $t3
.L801E2B7C_ovl10:
/* 20D6DC 801E2B7C 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
glabel D_801E2B80_ovl12
/* 20D6E0 801E2B80 0C078674 */  jal        func_801E19D0_ovl15
glabel func_801E2B84_ovl14
/* 20D6E4 801E2B84 8DE40010 */   lw        $a0, 0x10($t7)
/* 20D6E8 801E2B88 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20D6EC 801E2B8C 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 20D6F0 801E2B90 3C18801E */  lui        $t8, %hi(func_801D8F78_ovl9 + 0x40)
/* 20D6F4 801E2B94 8D4C0000 */  lw         $t4, 0x0($t2)
.L801E2B98_ovl13:
/* 20D6F8 801E2B98 27188FB8 */  addiu      $t8, $t8, %lo(func_801D8F78_ovl9 + 0x40)
/* 20D6FC 801E2B9C 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
/* 20D700 801E2BA0 000C6880 */  sll        $t5, $t4, 2
/* 20D704 801E2BA4 032DC821 */  addu       $t9, $t9, $t5
.L801E2BA8_ovl13:
/* 20D708 801E2BA8 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 20D70C 801E2BAC 00002825 */  or         $a1, $zero, $zero
/* 20D710 801E2BB0 00003025 */  or         $a2, $zero, $zero
.L801E2BB4_ovl10:
/* 20D714 801E2BB4 AF38008C */  sw         $t8, 0x8C($t9)
.L801E2BB8_ovl10:
/* 20D718 801E2BB8 8E080000 */  lw         $t0, 0x0($s0)
/* 20D71C 801E2BBC 8D090000 */  lw         $t1, 0x0($t0)
/* 20D720 801E2BC0 00097080 */  sll        $t6, $t1, 2
/* 20D724 801E2BC4 016E5821 */  addu       $t3, $t3, $t6
.L801E2BC8_ovl10:
/* 20D728 801E2BC8 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* 20D72C 801E2BCC 0C078674 */  jal        func_801E19D0_ovl15
/* 20D730 801E2BD0 8D640010 */   lw        $a0, 0x10($t3)
/* 20D734 801E2BD4 3C058005 */  lui        $a1, %hi(D_8004A7C4)
glabel func_801E2BD8_ovl10
/* 20D738 801E2BD8 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 20D73C 801E2BDC 8CA30000 */  lw         $v1, 0x0($a1)
/* 20D740 801E2BE0 100000A5 */  b          func_801E2E78_ovl15
/* 20D744 801E2BE4 00031880 */   sll       $v1, $v1, 2
.L801E2BE8_ovl15:
/* 20D748 801E2BE8 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 20D74C 801E2BEC 01435021 */  addu       $t2, $t2, $v1
/* 20D750 801E2BF0 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
.L801E2BF4_ovl13:
/* 20D754 801E2BF4 3C0F801E */  lui        $t7, %hi(func_801D9060_ovl9 + 0xC)
/* 20D758 801E2BF8 25EF906C */  addiu      $t7, $t7, %lo(func_801D9060_ovl9 + 0xC)
.L801E2BFC_ovl17:
/* 20D75C 801E2BFC AD4F008C */  sw         $t7, 0x8C($t2)
.L801E2C00_ovl13:
/* 20D760 801E2C00 8E0C0000 */  lw         $t4, 0x0($s0)
.L801E2C04_ovl13:
/* 20D764 801E2C04 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 20D768 801E2C08 00003025 */  or         $a2, $zero, $zero
/* 20D76C 801E2C0C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20D770 801E2C10 000DC080 */  sll        $t8, $t5, 2
/* 20D774 801E2C14 00581021 */  addu       $v0, $v0, $t8
/* 20D778 801E2C18 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
.L801E2C1C_ovl17:
/* 20D77C 801E2C1C 8C440048 */  lw         $a0, 0x48($v0)
/* 20D780 801E2C20 0C078674 */  jal        func_801E19D0_ovl15
.L801E2C24_ovl9:
/* 20D784 801E2C24 8C45004C */   lw        $a1, 0x4C($v0)
glabel func_801E2C28_ovl17
/* 20D788 801E2C28 8E190000 */  lw         $t9, 0x0($s0)
/* 20D78C 801E2C2C 8F230000 */  lw         $v1, 0x0($t9)
/* 20D790 801E2C30 00031880 */  sll        $v1, $v1, 2
.L801E2C34_ovl15:
/* 20D794 801E2C34 3C09800E */  lui        $t1, %hi(D_800E1B50)
/* 20D798 801E2C38 01234821 */  addu       $t1, $t1, $v1
/* 20D79C 801E2C3C 8D291B50 */  lw         $t1, %lo(D_800E1B50)($t1)
/* 20D7A0 801E2C40 3C08801E */  lui        $t0, %hi(func_801D92AC_ovl9)
/* 20D7A4 801E2C44 250892AC */  addiu      $t0, $t0, %lo(func_801D92AC_ovl9)
/* 20D7A8 801E2C48 AD28008C */  sw         $t0, 0x8C($t1)
.L801E2C4C_ovl9:
/* 20D7AC 801E2C4C 8E0E0000 */  lw         $t6, 0x0($s0)
/* 20D7B0 801E2C50 3C02800E */  lui        $v0, %hi(D_800DFBD0)
glabel D_801E2C54_ovl12
/* 20D7B4 801E2C54 00003025 */  or         $a2, $zero, $zero
.L801E2C58_ovl10:
/* 20D7B8 801E2C58 8DCB0000 */  lw         $t3, 0x0($t6)
/* 20D7BC 801E2C5C 000B7880 */  sll        $t7, $t3, 2
.L801E2C60_ovl10:
/* 20D7C0 801E2C60 004F1021 */  addu       $v0, $v0, $t7
/* 20D7C4 801E2C64 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
glabel func_801E2C68_ovl10
/* 20D7C8 801E2C68 8C440010 */  lw         $a0, 0x10($v0)
/* 20D7CC 801E2C6C 0C078674 */  jal        func_801E19D0_ovl15
.L801E2C70_ovl17:
/* 20D7D0 801E2C70 8C450058 */   lw        $a1, 0x58($v0)
/* 20D7D4 801E2C74 8E0C0000 */  lw         $t4, 0x0($s0)
glabel func_801E2C78_ovl12
/* 20D7D8 801E2C78 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 20D7DC 801E2C7C 3C0A801E */  lui        $t2, %hi(D_801D9120)
/* 20D7E0 801E2C80 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20D7E4 801E2C84 254A9120 */  addiu      $t2, $t2, %lo(D_801D9120)
/* 20D7E8 801E2C88 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
glabel func_801E2C8C_ovl16
/* 20D7EC 801E2C8C 000DC080 */  sll        $t8, $t5, 2
/* 20D7F0 801E2C90 0338C821 */  addu       $t9, $t9, $t8
/* 20D7F4 801E2C94 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 20D7F8 801E2C98 00002825 */  or         $a1, $zero, $zero
.L801E2C9C_ovl13:
/* 20D7FC 801E2C9C 00003025 */  or         $a2, $zero, $zero
/* 20D800 801E2CA0 AF2A008C */  sw         $t2, 0x8C($t9)
/* 20D804 801E2CA4 8E080000 */  lw         $t0, 0x0($s0)
/* 20D808 801E2CA8 8D090000 */  lw         $t1, 0x0($t0)
/* 20D80C 801E2CAC 00097080 */  sll        $t6, $t1, 2
/* 20D810 801E2CB0 016E5821 */  addu       $t3, $t3, $t6
/* 20D814 801E2CB4 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* 20D818 801E2CB8 0C078674 */  jal        func_801E19D0_ovl15
/* 20D81C 801E2CBC 8D640018 */   lw        $a0, 0x18($t3)
.L801E2CC0_ovl10:
/* 20D820 801E2CC0 8E0C0000 */  lw         $t4, 0x0($s0)
glabel D_801E2CC4_ovl12
/* 20D824 801E2CC4 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 20D828 801E2CC8 3C0F801E */  lui        $t7, %hi(D_801D8F70)
/* 20D82C 801E2CCC 8D8D0000 */  lw         $t5, 0x0($t4)
glabel func_801E2CD0_ovl17
/* 20D830 801E2CD0 25EF8F70 */  addiu      $t7, $t7, %lo(D_801D8F70)
/* 20D834 801E2CD4 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
/* 20D838 801E2CD8 000DC080 */  sll        $t8, $t5, 2
/* 20D83C 801E2CDC 01585021 */  addu       $t2, $t2, $t8
/* 20D840 801E2CE0 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 20D844 801E2CE4 00002825 */  or         $a1, $zero, $zero
/* 20D848 801E2CE8 00003025 */  or         $a2, $zero, $zero
/* 20D84C 801E2CEC AD4F008C */  sw         $t7, 0x8C($t2)
glabel func_801E2CF0_ovl17
/* 20D850 801E2CF0 8E190000 */  lw         $t9, 0x0($s0)
/* 20D854 801E2CF4 8F280000 */  lw         $t0, 0x0($t9)
glabel D_801E2CF8_ovl12
/* 20D858 801E2CF8 00084880 */  sll        $t1, $t0, 2
/* 20D85C 801E2CFC 01C97021 */  addu       $t6, $t6, $t1
glabel D_801E2D00_ovl12
/* 20D860 801E2D00 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
.L801E2D04_ovl10:
/* 20D864 801E2D04 0C078674 */  jal        func_801E19D0_ovl15
/* 20D868 801E2D08 8DC40010 */   lw        $a0, 0x10($t6)
.L801E2D0C_ovl12:
/* 20D86C 801E2D0C 8E0C0000 */  lw         $t4, 0x0($s0)
/* 20D870 801E2D10 3C0F800E */  lui        $t7, %hi(D_800E1B50)
.L801E2D14_ovl14:
/* 20D874 801E2D14 3C0B801E */  lui        $t3, %hi(func_801D8F78_ovl9 + 0x1C)
/* 20D878 801E2D18 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20D87C 801E2D1C 256B8F94 */  addiu      $t3, $t3, %lo(func_801D8F78_ovl9 + 0x1C)
.L801E2D20_ovl13:
/* 20D880 801E2D20 3C09800E */  lui        $t1, %hi(D_800DFBD0)
.L801E2D24_ovl13:
/* 20D884 801E2D24 000DC080 */  sll        $t8, $t5, 2
glabel D_801E2D28_ovl12
/* 20D888 801E2D28 01F87821 */  addu       $t7, $t7, $t8
glabel D_801E2D2C_ovl12
/* 20D88C 801E2D2C 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
glabel D_801E2D30_ovl12
/* 20D890 801E2D30 00002825 */  or         $a1, $zero, $zero
glabel func_801E2D34_ovl13
/* 20D894 801E2D34 00003025 */  or         $a2, $zero, $zero
/* 20D898 801E2D38 ADEB008C */  sw         $t3, 0x8C($t7)
.L801E2D3C_ovl14:
/* 20D89C 801E2D3C 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20D8A0 801E2D40 8D590000 */  lw         $t9, 0x0($t2)
/* 20D8A4 801E2D44 00194080 */  sll        $t0, $t9, 2
/* 20D8A8 801E2D48 01284821 */  addu       $t1, $t1, $t0
/* 20D8AC 801E2D4C 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
/* 20D8B0 801E2D50 0C078674 */  jal        func_801E19D0_ovl15
/* 20D8B4 801E2D54 8D240010 */   lw        $a0, 0x10($t1)
/* 20D8B8 801E2D58 8E0C0000 */  lw         $t4, 0x0($s0)
/* 20D8BC 801E2D5C 3C0B800E */  lui        $t3, %hi(D_800E1B50)
/* 20D8C0 801E2D60 3C0E801E */  lui        $t6, %hi(func_801D8F78_ovl9 + 0x40)
/* 20D8C4 801E2D64 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20D8C8 801E2D68 25CE8FB8 */  addiu      $t6, $t6, %lo(func_801D8F78_ovl9 + 0x40)
/* 20D8CC 801E2D6C 3C08800E */  lui        $t0, %hi(D_800DFBD0)
/* 20D8D0 801E2D70 000DC080 */  sll        $t8, $t5, 2
/* 20D8D4 801E2D74 01785821 */  addu       $t3, $t3, $t8
/* 20D8D8 801E2D78 8D6B1B50 */  lw         $t3, %lo(D_800E1B50)($t3)
/* 20D8DC 801E2D7C 00002825 */  or         $a1, $zero, $zero
/* 20D8E0 801E2D80 00003025 */  or         $a2, $zero, $zero
/* 20D8E4 801E2D84 AD6E008C */  sw         $t6, 0x8C($t3)
glabel func_801E2D88_ovl16
/* 20D8E8 801E2D88 8E0F0000 */  lw         $t7, 0x0($s0)
/* 20D8EC 801E2D8C 8DEA0000 */  lw         $t2, 0x0($t7)
.L801E2D90_ovl13:
/* 20D8F0 801E2D90 000AC880 */  sll        $t9, $t2, 2
.L801E2D94_ovl13:
/* 20D8F4 801E2D94 01194021 */  addu       $t0, $t0, $t9
/* 20D8F8 801E2D98 8D08FBD0 */  lw         $t0, %lo(D_800DFBD0)($t0)
.L801E2D9C_ovl12:
/* 20D8FC 801E2D9C 0C078674 */  jal        func_801E19D0_ovl15
glabel func_801E2DA0_ovl17
/* 20D900 801E2DA0 8D040010 */   lw        $a0, 0x10($t0)
glabel D_801E2DA4_ovl12
/* 20D904 801E2DA4 3C058005 */  lui        $a1, %hi(D_8004A7C4)
glabel D_801E2DA8_ovl12
/* 20D908 801E2DA8 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
glabel D_801E2DAC_ovl12
/* 20D90C 801E2DAC 8CA30000 */  lw         $v1, 0x0($a1)
glabel D_801E2DB0_ovl12
/* 20D910 801E2DB0 10000031 */  b          func_801E2E78_ovl15
glabel D_801E2DB4_ovl12
/* 20D914 801E2DB4 00031880 */   sll       $v1, $v1, 2
.L801E2DB8_ovl15:
/* 20D918 801E2DB8 3C02800F */  lui        $v0, %hi(D_800EA1A0)
glabel D_801E2DBC_ovl12
/* 20D91C 801E2DBC 00431021 */  addu       $v0, $v0, $v1
glabel D_801E2DC0_ovl12
/* 20D920 801E2DC0 8C42A1A0 */  lw         $v0, %lo(D_800EA1A0)($v0)
glabel D_801E2DC4_ovl12
/* 20D924 801E2DC4 3C0C800E */  lui        $t4, %hi(D_800E1B50)
.L801E2DC8_ovl13:
/* 20D928 801E2DC8 01836021 */  addu       $t4, $t4, $v1
glabel D_801E2DCC_ovl12
/* 20D92C 801E2DCC 10400005 */  beqz       $v0, .L801E2DE4_ovl15
glabel D_801E2DD0_ovl12
/* 20D930 801E2DD0 00000000 */   nop
/* 20D934 801E2DD4 10440003 */  beq        $v0, $a0, .L801E2DE4_ovl15
glabel func_801E2DD8_ovl10
/* 20D938 801E2DD8 00000000 */   nop
/* 20D93C 801E2DDC 14460026 */  bne        $v0, $a2, func_801E2E78_ovl15
/* 20D940 801E2DE0 00000000 */   nop
.L801E2DE4_ovl15:
/* 20D944 801E2DE4 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 20D948 801E2DE8 3C09801E */  lui        $t1, %hi(D_801D8E98)
/* 20D94C 801E2DEC 25298E98 */  addiu      $t1, $t1, %lo(D_801D8E98)
/* 20D950 801E2DF0 AD89008C */  sw         $t1, 0x8C($t4)
/* 20D954 801E2DF4 8E0D0000 */  lw         $t5, 0x0($s0)
/* 20D958 801E2DF8 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 20D95C 801E2DFC 00003025 */  or         $a2, $zero, $zero
/* 20D960 801E2E00 8DB80000 */  lw         $t8, 0x0($t5)
/* 20D964 801E2E04 00187080 */  sll        $t6, $t8, 2
/* 20D968 801E2E08 004E1021 */  addu       $v0, $v0, $t6
.L801E2E0C_ovl17:
/* 20D96C 801E2E0C 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
/* 20D970 801E2E10 8C440010 */  lw         $a0, 0x10($v0)
/* 20D974 801E2E14 0C078674 */  jal        func_801E19D0_ovl15
/* 20D978 801E2E18 8C450058 */   lw        $a1, 0x58($v0)
.L801E2E1C_ovl9:
/* 20D97C 801E2E1C 8E0F0000 */  lw         $t7, 0x0($s0)
glabel D_801E2E20_ovl12
/* 20D980 801E2E20 3C08800E */  lui        $t0, %hi(D_800E1B50)
glabel func_801E2E24_ovl17
/* 20D984 801E2E24 3C0B801E */  lui        $t3, %hi(func_801D91C8_ovl9 + 0x54)
.L801E2E28_ovl13:
/* 20D988 801E2E28 8DEA0000 */  lw         $t2, 0x0($t7)
/* 20D98C 801E2E2C 256B921C */  addiu      $t3, $t3, %lo(func_801D91C8_ovl9 + 0x54)
/* 20D990 801E2E30 3C18800E */  lui        $t8, %hi(D_800DFBD0)
.L801E2E34_ovl13:
/* 20D994 801E2E34 000AC880 */  sll        $t9, $t2, 2
/* 20D998 801E2E38 01194021 */  addu       $t0, $t0, $t9
/* 20D99C 801E2E3C 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
/* 20D9A0 801E2E40 00003025 */  or         $a2, $zero, $zero
glabel func_801E2E44_ovl16
/* 20D9A4 801E2E44 AD0B008C */  sw         $t3, 0x8C($t0)
/* 20D9A8 801E2E48 8E090000 */  lw         $t1, 0x0($s0)
glabel func_801E2E4C_ovl14
/* 20D9AC 801E2E4C 8D2C0000 */  lw         $t4, 0x0($t1)
/* 20D9B0 801E2E50 000C6880 */  sll        $t5, $t4, 2
/* 20D9B4 801E2E54 030DC021 */  addu       $t8, $t8, $t5
/* 20D9B8 801E2E58 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* 20D9BC 801E2E5C 8F0400B0 */  lw         $a0, 0xB0($t8)
/* 20D9C0 801E2E60 0C078674 */  jal        func_801E19D0_ovl15
.L801E2E64_ovl9:
/* 20D9C4 801E2E64 00802825 */   or        $a1, $a0, $zero
/* 20D9C8 801E2E68 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 20D9CC 801E2E6C 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
.L801E2E70_ovl13:
/* 20D9D0 801E2E70 8CA30000 */  lw         $v1, 0x0($a1)
.L801E2E74_ovl13:
/* 20D9D4 801E2E74 00031880 */  sll        $v1, $v1, 2
glabel func_801E2E78_ovl15
/* 20D9D8 801E2E78 3C048005 */  lui        $a0, %hi(gPlayerControllers + 0xC)
/* 20D9DC 801E2E7C 94848F2C */  lhu        $a0, %lo(gPlayerControllers + 0xC)($a0)
.L801E2E80_ovl14:
/* 20D9E0 801E2E80 3C0F800F */  lui        $t7, %hi(D_800EA360)
/* 20D9E4 801E2E84 25EFA360 */  addiu      $t7, $t7, %lo(D_800EA360)
/* 20D9E8 801E2E88 308E8000 */  andi       $t6, $a0, 0x8000
/* 20D9EC 801E2E8C 11C0000A */  beqz       $t6, .L801E2EB8_ovl15
/* 20D9F0 801E2E90 30884000 */   andi      $t0, $a0, 0x4000
/* 20D9F4 801E2E94 006F1021 */  addu       $v0, $v1, $t7
/* 20D9F8 801E2E98 8C4A0000 */  lw         $t2, 0x0($v0)
/* 20D9FC 801E2E9C 24010003 */  addiu      $at, $zero, 0x3
glabel D_801E2EA0_ovl14
/* 20DA00 801E2EA0 25590001 */  addiu      $t9, $t2, 0x1
/* 20DA04 801E2EA4 0321001A */  div        $zero, $t9, $at
/* 20DA08 801E2EA8 00005810 */  mfhi       $t3
/* 20DA0C 801E2EAC AC4B0000 */  sw         $t3, 0x0($v0)
/* 20DA10 801E2EB0 8CA30000 */  lw         $v1, 0x0($a1)
/* 20DA14 801E2EB4 00031880 */  sll        $v1, $v1, 2
.L801E2EB8_ovl15:
/* 20DA18 801E2EB8 1100001B */  beqz       $t0, .L801E2F28_ovl15
/* 20DA1C 801E2EBC 3C19800F */   lui       $t9, %hi(D_800E9E20)
/* 20DA20 801E2EC0 3C18800F */  lui        $t8, %hi(D_800EA360)
/* 20DA24 801E2EC4 0303C021 */  addu       $t8, $t8, $v1
.L801E2EC8_ovl14:
/* 20DA28 801E2EC8 8F18A360 */  lw         $t8, %lo(D_800EA360)($t8)
/* 20DA2C 801E2ECC 3C09800F */  lui        $t1, %hi(D_800EA1A0)
/* 20DA30 801E2ED0 2529A1A0 */  addiu      $t1, $t1, %lo(D_800EA1A0)
/* 20DA34 801E2ED4 00691021 */  addu       $v0, $v1, $t1
/* 20DA38 801E2ED8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 20DA3C 801E2EDC 3C0F801E */  lui        $t7, %hi(func_801E6648_ovl9 + 0x54)
/* 20DA40 801E2EE0 00187080 */  sll        $t6, $t8, 2
glabel D_801E2EE4_ovl14
/* 20DA44 801E2EE4 01EE7821 */  addu       $t7, $t7, $t6
glabel func_801E2EE8_ovl17
/* 20DA48 801E2EE8 8DEF669C */  lw         $t7, %lo(func_801E6648_ovl9 + 0x54)($t7)
/* 20DA4C 801E2EEC 258D0001 */  addiu      $t5, $t4, 0x1
glabel func_801E2EF0_ovl10
/* 20DA50 801E2EF0 01AF001A */  div        $zero, $t5, $t7
.L801E2EF4_ovl13:
/* 20DA54 801E2EF4 00005010 */  mfhi       $t2
/* 20DA58 801E2EF8 AC4A0000 */  sw         $t2, 0x0($v0)
glabel D_801E2EFC_ovl14
/* 20DA5C 801E2EFC 8CA30000 */  lw         $v1, 0x0($a1)
/* 20DA60 801E2F00 15E00002 */  bnez       $t7, func_801E2F0C_ovl15
.L801E2F04_ovl9:
/* 20DA64 801E2F04 00000000 */   nop
glabel func_801E2F08_ovl17
/* 20DA68 801E2F08 0007000D */  break      7
glabel func_801E2F0C_ovl15
/* 20DA6C 801E2F0C 2401FFFF */  addiu      $at, $zero, -0x1
/* 20DA70 801E2F10 15E10004 */  bne        $t7, $at, .L801E2F24_ovl15
/* 20DA74 801E2F14 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 20DA78 801E2F18 15A10002 */  bne        $t5, $at, .L801E2F24_ovl15
/* 20DA7C 801E2F1C 00000000 */   nop
/* 20DA80 801E2F20 0006000D */  break      6
.L801E2F24_ovl15:
/* 20DA84 801E2F24 00031880 */  sll        $v1, $v1, 2
.L801E2F28_ovl15:
/* 20DA88 801E2F28 27399E20 */  addiu      $t9, $t9, %lo(D_800E9E20)
/* 20DA8C 801E2F2C 00791021 */  addu       $v0, $v1, $t9
/* 20DA90 801E2F30 8C4B0000 */  lw         $t3, 0x0($v0)
/* 20DA94 801E2F34 8FBF001C */  lw         $ra, 0x1C($sp)
/* 20DA98 801E2F38 8FB00018 */  lw         $s0, 0x18($sp)
/* 20DA9C 801E2F3C 25680001 */  addiu      $t0, $t3, 0x1
/* 20DAA0 801E2F40 AC480000 */  sw         $t0, 0x0($v0)
/* 20DAA4 801E2F44 03E00008 */  jr         $ra
/* 20DAA8 801E2F48 27BD0020 */   addiu     $sp, $sp, 0x20
/* 20DAAC 801E2F4C 00000000 */  nop
/* 20DAB0 801E2F50 00000000 */  nop
/* 20DAB4 801E2F54 00000000 */  nop
/* 20DAB8 801E2F58 00000000 */  nop
