glabel func_801E18A8_ovl10
/* 1D2618 801E18A8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1D261C 801E18AC AFBF0044 */  sw         $ra, 0x44($sp)
.L801E18B0_ovl16:
/* 1D2620 801E18B0 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1D2624 801E18B4 AFB30040 */  sw         $s3, 0x40($sp)
/* 1D2628 801E18B8 AFB2003C */  sw         $s2, 0x3C($sp)
glabel func_801E18BC_ovl16
/* 1D262C 801E18BC AFB10038 */  sw         $s1, 0x38($sp)
/* 1D2630 801E18C0 AFB00034 */  sw         $s0, 0x34($sp)
.L801E18C4_ovl17:
/* 1D2634 801E18C4 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 1D2638 801E18C8 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1D263C 801E18CC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 1D2640 801E18D0 AFA40048 */  sw         $a0, 0x48($sp)
/* 1D2644 801E18D4 0C02BB30 */  jal        func_800AECC0
.L801E18D8_ovl9:
/* 1D2648 801E18D8 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1D264C 801E18DC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1D2650 801E18E0 0C02BB48 */  jal        func_800AED20
/* 1D2654 801E18E4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1D2658 801E18E8 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 1D265C 801E18EC 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 1D2660 801E18F0 8E440000 */  lw         $a0, 0x0($s2)
/* 1D2664 801E18F4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D2668 801E18F8 240E000E */  addiu      $t6, $zero, 0xE
/* 1D266C 801E18FC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1D2670 801E1900 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1D2674 801E1904 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
/* 1D2678 801E1908 000FC080 */  sll        $t8, $t7, 2
.L801E190C_ovl17:
/* 1D267C 801E190C 00380821 */  addu       $at, $at, $t8
/* 1D2680 801E1910 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 1D2684 801E1914 8C880000 */  lw         $t0, 0x0($a0)
/* 1D2688 801E1918 3C19801F */  lui        $t9, %hi(D_801F3A84_ovl10)
/* 1D268C 801E191C 27393A84 */  addiu      $t9, $t9, %lo(D_801F3A84_ovl10)
/* 1D2690 801E1920 00084880 */  sll        $t1, $t0, 2
/* 1D2694 801E1924 00495021 */  addu       $t2, $v0, $t1
/* 1D2698 801E1928 8D4B0000 */  lw         $t3, 0x0($t2)
.L801E192C_ovl9:
/* 1D269C 801E192C 3C0C801F */  lui        $t4, %hi(D_801F4094_ovl10)
/* 1D26A0 801E1930 258C4094 */  addiu      $t4, $t4, %lo(D_801F4094_ovl10)
/* 1D26A4 801E1934 AD79008C */  sw         $t9, 0x8C($t3)
.L801E1938_ovl17:
/* 1D26A8 801E1938 8E4D0000 */  lw         $t5, 0x0($s2)
/* 1D26AC 801E193C 8DAF0000 */  lw         $t7, 0x0($t5)
/* 1D26B0 801E1940 000F7080 */  sll        $t6, $t7, 2
/* 1D26B4 801E1944 004EC021 */  addu       $t8, $v0, $t6
/* 1D26B8 801E1948 8F080000 */  lw         $t0, 0x0($t8)
.L801E194C_ovl15:
/* 1D26BC 801E194C 0C02CCFD */  jal        func_800B33F4
/* 1D26C0 801E1950 AD0C0098 */   sw        $t4, 0x98($t0)
.L801E1954_ovl17:
/* 1D26C4 801E1954 8E490000 */  lw         $t1, 0x0($s2)
.L801E1958_ovl9:
/* 1D26C8 801E1958 3C10800F */  lui        $s0, %hi(D_800EA360)
/* 1D26CC 801E195C 2610A360 */  addiu      $s0, $s0, %lo(D_800EA360)
glabel func_801E1960_ovl17
/* 1D26D0 801E1960 8D230000 */  lw         $v1, 0x0($t1)
/* 1D26D4 801E1964 00031880 */  sll        $v1, $v1, 2
/* 1D26D8 801E1968 02035021 */  addu       $t2, $s0, $v1
/* 1D26DC 801E196C 8D420000 */  lw         $v0, 0x0($t2)
/* 1D26E0 801E1970 1040000A */  beqz       $v0, .L801E199C_ovl15
/* 1D26E4 801E1974 00000000 */   nop
/* 1D26E8 801E1978 0C0287CC */  jal        func_800A1F30
/* 1D26EC 801E197C 00402025 */   or        $a0, $v0, $zero
/* 1D26F0 801E1980 8E440000 */  lw         $a0, 0x0($s2)
/* 1D26F4 801E1984 8C990000 */  lw         $t9, 0x0($a0)
.L801E1988_ovl12:
/* 1D26F8 801E1988 00195880 */  sll        $t3, $t9, 2
/* 1D26FC 801E198C 020B6821 */  addu       $t5, $s0, $t3
/* 1D2700 801E1990 ADA00000 */  sw         $zero, 0x0($t5)
glabel func_801E1994_ovl9
/* 1D2704 801E1994 8C830000 */  lw         $v1, 0x0($a0)
/* 1D2708 801E1998 00031880 */  sll        $v1, $v1, 2
.L801E199C_ovl15:
/* 1D270C 801E199C 3C0F800F */  lui        $t7, %hi(D_800EC120)
/* 1D2710 801E19A0 01E37821 */  addu       $t7, $t7, $v1
/* 1D2714 801E19A4 8DEFC120 */  lw         $t7, %lo(D_800EC120)($t7)
/* 1D2718 801E19A8 3C10800F */  lui        $s0, %hi(D_800E98E0)
glabel func_801E19AC_ovl13
/* 1D271C 801E19AC 261098E0 */  addiu      $s0, $s0, %lo(D_800E98E0)
/* 1D2720 801E19B0 000F7080 */  sll        $t6, $t7, 2
/* 1D2724 801E19B4 020EC021 */  addu       $t8, $s0, $t6
/* 1D2728 801E19B8 8F0C0000 */  lw         $t4, 0x0($t8)
/* 1D272C 801E19BC 5580000F */  bnel       $t4, $zero, .L801E19FC_ovl10
.L801E19C0_ovl15:
/* 1D2730 801E19C0 3C040001 */   lui       $a0, (0x102F1 >> 16)
.L801E19C4_ovl10:
/* 1D2734 801E19C4 0C002DAF */  jal        finish_current_thread
/* 1D2738 801E19C8 24040001 */   addiu     $a0, $zero, 0x1
/* 1D273C 801E19CC 8E480000 */  lw         $t0, 0x0($s2)
glabel func_801E19D0_ovl15
/* 1D2740 801E19D0 3C19800F */  lui        $t9, %hi(D_800EC120)
/* 1D2744 801E19D4 8D090000 */  lw         $t1, 0x0($t0)
.L801E19D8_ovl12:
/* 1D2748 801E19D8 00095080 */  sll        $t2, $t1, 2
/* 1D274C 801E19DC 032AC821 */  addu       $t9, $t9, $t2
/* 1D2750 801E19E0 8F39C120 */  lw         $t9, %lo(D_800EC120)($t9)
/* 1D2754 801E19E4 00195880 */  sll        $t3, $t9, 2
/* 1D2758 801E19E8 020B6821 */  addu       $t5, $s0, $t3
.L801E19EC_ovl9:
/* 1D275C 801E19EC 8DAF0000 */  lw         $t7, 0x0($t5)
.L801E19F0_ovl17:
/* 1D2760 801E19F0 11E0FFF4 */  beqz       $t7, .L801E19C4_ovl10
.L801E19F4_ovl12:
/* 1D2764 801E19F4 00000000 */   nop
/* 1D2768 801E19F8 3C040001 */  lui        $a0, (0x102F1 >> 16)
.L801E19FC_ovl10:
/* 1D276C 801E19FC 0C02A806 */  jal        func_800AA018
/* 1D2770 801E1A00 348402F1 */   ori       $a0, $a0, (0x102F1 & 0xFFFF)
/* 1D2774 801E1A04 3C040001 */  lui        $a0, (0x102F0 >> 16)
/* 1D2778 801E1A08 0C02A855 */  jal        func_800AA154
/* 1D277C 801E1A0C 348402F0 */   ori       $a0, $a0, (0x102F0 & 0xFFFF)
/* 1D2780 801E1A10 8E4E0000 */  lw         $t6, 0x0($s2)
/* 1D2784 801E1A14 3C10800E */  lui        $s0, %hi(D_800E0D50)
/* 1D2788 801E1A18 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
/* 1D278C 801E1A1C 8DC20000 */  lw         $v0, 0x0($t6)
/* 1D2790 801E1A20 0002C080 */  sll        $t8, $v0, 2
.L801E1A24_ovl13:
/* 1D2794 801E1A24 02186021 */  addu       $t4, $s0, $t8
.L801E1A28_ovl13:
/* 1D2798 801E1A28 8D850000 */  lw         $a1, 0x0($t4)
/* 1D279C 801E1A2C 0C03E60A */  jal        func_800F9828
.L801E1A30_ovl16:
/* 1D27A0 801E1A30 00402025 */   or        $a0, $v0, $zero
/* 1D27A4 801E1A34 3C01801F */  lui        $at, %hi(func_801F4A14_ovl9 + 0x14)
.L801E1A38_ovl17:
/* 1D27A8 801E1A38 C4244A28 */  lwc1       $f4, %lo(func_801F4A14_ovl9 + 0x14)($at)
/* 1D27AC 801E1A3C 46040032 */  c.eq.s     $f0, $f4
.L801E1A40_ovl15:
/* 1D27B0 801E1A40 00000000 */  nop
/* 1D27B4 801E1A44 4502000C */  bc1fl      .L801E1A78_ovl10
.L801E1A48_ovl17:
/* 1D27B8 801E1A48 44803000 */   mtc1      $zero, $f6
.L801E1A4C_ovl13:
/* 1D27BC 801E1A4C 8E480000 */  lw         $t0, 0x0($s2)
/* 1D27C0 801E1A50 8D090000 */  lw         $t1, 0x0($t0)
.L801E1A54_ovl15:
/* 1D27C4 801E1A54 00095080 */  sll        $t2, $t1, 2
.L801E1A58_ovl17:
/* 1D27C8 801E1A58 020AC821 */  addu       $t9, $s0, $t2
.L801E1A5C_ovl17:
/* 1D27CC 801E1A5C 0C066D82 */  jal        func_8019B608_ovl7
glabel func_801E1A60_ovl12
/* 1D27D0 801E1A60 8F240000 */   lw        $a0, 0x0($t9)
.L801E1A64_ovl15:
/* 1D27D4 801E1A64 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1D27D8 801E1A68 4481C000 */  mtc1       $at, $f24
.L801E1A6C_ovl16:
/* 1D27DC 801E1A6C 1000000F */  b          .L801E1AAC_ovl10
/* 1D27E0 801E1A70 46000086 */   mov.s     $f2, $f0
/* 1D27E4 801E1A74 44803000 */  mtc1       $zero, $f6
.L801E1A78_ovl10:
/* 1D27E8 801E1A78 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1D27EC 801E1A7C 4600303C */  c.lt.s     $f6, $f0
/* 1D27F0 801E1A80 00000000 */  nop
/* 1D27F4 801E1A84 45020006 */  bc1fl      .L801E1AA0_ovl10
/* 1D27F8 801E1A88 44811000 */   mtc1      $at, $f2
/* 1D27FC 801E1A8C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1D2800 801E1A90 4481C000 */  mtc1       $at, $f24
/* 1D2804 801E1A94 10000005 */  b          .L801E1AAC_ovl10
.L801E1A98_ovl9:
/* 1D2808 801E1A98 4600C086 */   mov.s     $f2, $f24
/* 1D280C 801E1A9C 44811000 */  mtc1       $at, $f2
.L801E1AA0_ovl10:
/* 1D2810 801E1AA0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801E1AA4_ovl12:
/* 1D2814 801E1AA4 4481C000 */  mtc1       $at, $f24
/* 1D2818 801E1AA8 00000000 */  nop
.L801E1AAC_ovl10:
/* 1D281C 801E1AAC 8E4B0000 */  lw         $t3, 0x0($s2)
glabel func_801E1AB0_ovl16
/* 1D2820 801E1AB0 3C13800E */  lui        $s3, %hi(D_800E6A10)
/* 1D2824 801E1AB4 26736A10 */  addiu      $s3, $s3, %lo(D_800E6A10)
.L801E1AB8_ovl15:
/* 1D2828 801E1AB8 8D6D0000 */  lw         $t5, 0x0($t3)
/* 1D282C 801E1ABC 000D7880 */  sll        $t7, $t5, 2
/* 1D2830 801E1AC0 026F7021 */  addu       $t6, $s3, $t7
/* 1D2834 801E1AC4 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 1D2838 801E1AC8 46081032 */  c.eq.s     $f2, $f8
.L801E1ACC_ovl13:
/* 1D283C 801E1ACC 00000000 */  nop
/* 1D2840 801E1AD0 45030059 */  bc1tl      .L801E1C38_ovl10
/* 1D2844 801E1AD4 3C040001 */   lui       $a0, (0x102F3 >> 16)
/* 1D2848 801E1AD8 44806000 */  mtc1       $zero, $f12
/* 1D284C 801E1ADC 0C02BB30 */  jal        func_800AECC0
.L801E1AE0_ovl16:
/* 1D2850 801E1AE0 00000000 */   nop
/* 1D2854 801E1AE4 44806000 */  mtc1       $zero, $f12
.L801E1AE8_ovl12:
/* 1D2858 801E1AE8 0C02BB48 */  jal        func_800AED20
/* 1D285C 801E1AEC 00000000 */   nop
.L801E1AF0_ovl17:
/* 1D2860 801E1AF0 8E580000 */  lw         $t8, 0x0($s2)
.L801E1AF4_ovl13:
/* 1D2864 801E1AF4 44805000 */  mtc1       $zero, $f10
/* 1D2868 801E1AF8 3C11800F */  lui        $s1, %hi(D_800E9020)
/* 1D286C 801E1AFC 8F0C0000 */  lw         $t4, 0x0($t8)
.L801E1B00_ovl17:
/* 1D2870 801E1B00 26319020 */  addiu      $s1, $s1, %lo(D_800E9020)
.L801E1B04_ovl15:
/* 1D2874 801E1B04 3C01801F */  lui        $at, %hi(func_801F4A14_ovl9 + 0x18)
.L801E1B08_ovl16:
/* 1D2878 801E1B08 000C4080 */  sll        $t0, $t4, 2
/* 1D287C 801E1B0C 02284821 */  addu       $t1, $s1, $t0
/* 1D2880 801E1B10 E52A0000 */  swc1       $f10, 0x0($t1)
/* 1D2884 801E1B14 C4364A2C */  lwc1       $f22, %lo(func_801F4A14_ovl9 + 0x18)($at)
/* 1D2888 801E1B18 3C01801F */  lui        $at, %hi(func_801F4A14_ovl9 + 0x1C)
/* 1D288C 801E1B1C C4344A30 */  lwc1       $f20, %lo(func_801F4A14_ovl9 + 0x1C)($at)
/* 1D2890 801E1B20 00008025 */  or         $s0, $zero, $zero
/* 1D2894 801E1B24 8E4A0000 */  lw         $t2, 0x0($s2)
.L801E1B28_ovl10:
/* 1D2898 801E1B28 8D430000 */  lw         $v1, 0x0($t2)
.L801E1B2C_ovl16:
/* 1D289C 801E1B2C 00031880 */  sll        $v1, $v1, 2
/* 1D28A0 801E1B30 0263C821 */  addu       $t9, $s3, $v1
/* 1D28A4 801E1B34 C7300000 */  lwc1       $f16, 0x0($t9)
/* 1D28A8 801E1B38 02231021 */  addu       $v0, $s1, $v1
/* 1D28AC 801E1B3C 4610C032 */  c.eq.s     $f24, $f16
/* 1D28B0 801E1B40 00000000 */  nop
/* 1D28B4 801E1B44 45020004 */  bc1fl      .L801E1B58_ovl10
/* 1D28B8 801E1B48 4600B006 */   mov.s     $f0, $f22
/* 1D28BC 801E1B4C 10000002 */  b          .L801E1B58_ovl10
/* 1D28C0 801E1B50 4600A006 */   mov.s     $f0, $f20
.L801E1B54_ovl15:
/* 1D28C4 801E1B54 4600B006 */  mov.s      $f0, $f22
.L801E1B58_ovl10:
/* 1D28C8 801E1B58 C4520000 */  lwc1       $f18, 0x0($v0)
.L801E1B5C_ovl16:
/* 1D28CC 801E1B5C 24040001 */  addiu      $a0, $zero, 0x1
/* 1D28D0 801E1B60 46009100 */  add.s      $f4, $f18, $f0
.L801E1B64_ovl13:
/* 1D28D4 801E1B64 0C002DAF */  jal        finish_current_thread
/* 1D28D8 801E1B68 E4440000 */   swc1      $f4, 0x0($v0)
.L801E1B6C_ovl17:
/* 1D28DC 801E1B6C 26100001 */  addiu      $s0, $s0, 0x1
.L801E1B70_ovl15:
/* 1D28E0 801E1B70 24010005 */  addiu      $at, $zero, 0x5
.L801E1B74_ovl13:
/* 1D28E4 801E1B74 5601FFEC */  bnel       $s0, $at, .L801E1B28_ovl10
/* 1D28E8 801E1B78 8E4A0000 */   lw        $t2, 0x0($s2)
.L801E1B7C_ovl17:
/* 1D28EC 801E1B7C 8E440000 */  lw         $a0, 0x0($s2)
/* 1D28F0 801E1B80 8C8B0000 */  lw         $t3, 0x0($a0)
.L801E1B84_ovl16:
/* 1D28F4 801E1B84 000B6880 */  sll        $t5, $t3, 2
/* 1D28F8 801E1B88 026D1821 */  addu       $v1, $s3, $t5
/* 1D28FC 801E1B8C C4660000 */  lwc1       $f6, 0x0($v1)
glabel func_801E1B90_ovl12
/* 1D2900 801E1B90 46003207 */  neg.s      $f8, $f6
/* 1D2904 801E1B94 E4680000 */  swc1       $f8, 0x0($v1)
glabel func_801E1B98_ovl15
/* 1D2908 801E1B98 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1D290C 801E1B9C 000F7080 */  sll        $t6, $t7, 2
/* 1D2910 801E1BA0 022E1021 */  addu       $v0, $s1, $t6
/* 1D2914 801E1BA4 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 1D2918 801E1BA8 46005407 */  neg.s      $f16, $f10
/* 1D291C 801E1BAC E4500000 */  swc1       $f16, 0x0($v0)
/* 1D2920 801E1BB0 8E580000 */  lw         $t8, 0x0($s2)
.L801E1BB4_ovl16:
/* 1D2924 801E1BB4 8F030000 */  lw         $v1, 0x0($t8)
/* 1D2928 801E1BB8 00031880 */  sll        $v1, $v1, 2
/* 1D292C 801E1BBC 02636021 */  addu       $t4, $s3, $v1
.L801E1BC0_ovl13:
/* 1D2930 801E1BC0 C5920000 */  lwc1       $f18, 0x0($t4)
/* 1D2934 801E1BC4 02231021 */  addu       $v0, $s1, $v1
/* 1D2938 801E1BC8 4612C032 */  c.eq.s     $f24, $f18
.L801E1BCC_ovl13:
/* 1D293C 801E1BCC 00000000 */  nop
.L801E1BD0_ovl13:
/* 1D2940 801E1BD0 45020004 */  bc1fl      .L801E1BE4_ovl10
/* 1D2944 801E1BD4 4600A006 */   mov.s     $f0, $f20
.L801E1BD8_ovl16:
/* 1D2948 801E1BD8 10000002 */  b          .L801E1BE4_ovl10
.L801E1BDC_ovl16:
/* 1D294C 801E1BDC 4600B006 */   mov.s     $f0, $f22
/* 1D2950 801E1BE0 4600A006 */  mov.s      $f0, $f20
.L801E1BE4_ovl10:
/* 1D2954 801E1BE4 C4440000 */  lwc1       $f4, 0x0($v0)
.L801E1BE8_ovl17:
/* 1D2958 801E1BE8 24040001 */  addiu      $a0, $zero, 0x1
/* 1D295C 801E1BEC 46002180 */  add.s      $f6, $f4, $f0
.L801E1BF0_ovl16:
/* 1D2960 801E1BF0 0C002DAF */  jal        finish_current_thread
.L801E1BF4_ovl13:
/* 1D2964 801E1BF4 E4460000 */   swc1      $f6, 0x0($v0)
.L801E1BF8_ovl17:
/* 1D2968 801E1BF8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1D296C 801E1BFC 5600FFED */  bnel       $s0, $zero, .L801E1BB4_ovl16
.L801E1C00_ovl15:
/* 1D2970 801E1C00 8E580000 */   lw        $t8, 0x0($s2)
/* 1D2974 801E1C04 8E480000 */  lw         $t0, 0x0($s2)
.L801E1C08_ovl15:
/* 1D2978 801E1C08 44804000 */  mtc1       $zero, $f8
/* 1D297C 801E1C0C 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1D2980 801E1C10 8D090000 */  lw         $t1, 0x0($t0)
/* 1D2984 801E1C14 00095080 */  sll        $t2, $t1, 2
/* 1D2988 801E1C18 022AC821 */  addu       $t9, $s1, $t2
glabel func_801E1C1C_ovl16
/* 1D298C 801E1C1C E7280000 */  swc1       $f8, 0x0($t9)
glabel func_801E1C20_ovl15
/* 1D2990 801E1C20 0C02BB30 */  jal        func_800AECC0
/* 1D2994 801E1C24 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1D2998 801E1C28 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1D299C 801E1C2C 0C02BB48 */  jal        func_800AED20
/* 1D29A0 801E1C30 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1D29A4 801E1C34 3C040001 */  lui        $a0, (0x102F3 >> 16)
.L801E1C38_ovl10:
/* 1D29A8 801E1C38 0C02A806 */  jal        func_800AA018
/* 1D29AC 801E1C3C 348402F3 */   ori       $a0, $a0, (0x102F3 & 0xFFFF)
/* 1D29B0 801E1C40 3C040001 */  lui        $a0, (0x102F2 >> 16)
/* 1D29B4 801E1C44 0C02A806 */  jal        func_800AA018
/* 1D29B8 801E1C48 348402F2 */   ori       $a0, $a0, (0x102F2 & 0xFFFF)
/* 1D29BC 801E1C4C 0C002DAF */  jal        finish_current_thread
/* 1D29C0 801E1C50 24040005 */   addiu     $a0, $zero, 0x5
/* 1D29C4 801E1C54 8E4B0000 */  lw         $t3, 0x0($s2)
/* 1D29C8 801E1C58 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 1D29CC 801E1C5C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L801E1C60_ovl12:
/* 1D29D0 801E1C60 8D630000 */  lw         $v1, 0x0($t3)
/* 1D29D4 801E1C64 24040006 */  addiu      $a0, $zero, 0x6
.L801E1C68_ovl13:
/* 1D29D8 801E1C68 24050002 */  addiu      $a1, $zero, 0x2
/* 1D29DC 801E1C6C 00031880 */  sll        $v1, $v1, 2
.L801E1C70_ovl12:
/* 1D29E0 801E1C70 02636821 */  addu       $t5, $s3, $v1
/* 1D29E4 801E1C74 C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 1D29E8 801E1C78 00E33821 */  addu       $a3, $a3, $v1
/* 1D29EC 801E1C7C 00230821 */  addu       $at, $at, $v1
.L801E1C80_ovl12:
/* 1D29F0 801E1C80 460AC032 */  c.eq.s     $f24, $f10
/* 1D29F4 801E1C84 2406000E */  addiu      $a2, $zero, 0xE
.L801E1C88_ovl9:
/* 1D29F8 801E1C88 45000003 */  bc1f       .L801E1C98_ovl10
.L801E1C8C_ovl12:
/* 1D29FC 801E1C8C 00000000 */   nop
/* 1D2A00 801E1C90 10000001 */  b          .L801E1C98_ovl10
/* 1D2A04 801E1C94 2406000C */   addiu     $a2, $zero, 0xC
.L801E1C98_ovl10:
/* 1D2A08 801E1C98 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 1D2A0C 801E1C9C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1D2A10 801E1CA0 00230821 */  addu       $at, $at, $v1
/* 1D2A14 801E1CA4 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 1D2A18 801E1CA8 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 1D2A1C 801E1CAC E7B00010 */  swc1       $f16, 0x10($sp)
/* 1D2A20 801E1CB0 0C029FDD */  jal        func_800A7F74
glabel func_801E1CB4_ovl17
/* 1D2A24 801E1CB4 E7B20014 */   swc1      $f18, 0x14($sp)
/* 1D2A28 801E1CB8 0C029D9E */  jal        play_sound
/* 1D2A2C 801E1CBC 240401D8 */   addiu     $a0, $zero, 0x1D8
/* 1D2A30 801E1CC0 8E4E0000 */  lw         $t6, 0x0($s2)
/* 1D2A34 801E1CC4 3C01800F */  lui        $at, %hi(D_800E9FE0)
.L801E1CC8_ovl15:
/* 1D2A38 801E1CC8 240F0001 */  addiu      $t7, $zero, 0x1
/* 1D2A3C 801E1CCC 8DD80000 */  lw         $t8, 0x0($t6)
/* 1D2A40 801E1CD0 00186080 */  sll        $t4, $t8, 2
glabel func_801E1CD4_ovl12
/* 1D2A44 801E1CD4 002C0821 */  addu       $at, $at, $t4
/* 1D2A48 801E1CD8 0C02BC9F */  jal        func_800AF27C
/* 1D2A4C 801E1CDC AC2F9FE0 */   sw        $t7, %lo(D_800E9FE0)($at)
glabel func_801E1CE0_ovl14
/* 1D2A50 801E1CE0 3C040001 */  lui        $a0, (0x102F5 >> 16)
/* 1D2A54 801E1CE4 0C02A806 */  jal        func_800AA018
glabel func_801E1CE8_ovl14
/* 1D2A58 801E1CE8 348402F5 */   ori       $a0, $a0, (0x102F5 & 0xFFFF)
.L801E1CEC_ovl13:
/* 1D2A5C 801E1CEC 3C040001 */  lui        $a0, (0x102F4 >> 16)
.L801E1CF0_ovl13:
/* 1D2A60 801E1CF0 0C02A855 */  jal        func_800AA154
/* 1D2A64 801E1CF4 348402F4 */   ori       $a0, $a0, (0x102F4 & 0xFFFF)
/* 1D2A68 801E1CF8 8E490000 */  lw         $t1, 0x0($s2)
/* 1D2A6C 801E1CFC 8FBF0044 */  lw         $ra, 0x44($sp)
.L801E1D00_ovl13:
/* 1D2A70 801E1D00 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1D2A74 801E1D04 8D2A0000 */  lw         $t2, 0x0($t1)
.L801E1D08_ovl9:
/* 1D2A78 801E1D08 2408000B */  addiu      $t0, $zero, 0xB
/* 1D2A7C 801E1D0C 8FB2003C */  lw         $s2, 0x3C($sp)
/* 1D2A80 801E1D10 000AC880 */  sll        $t9, $t2, 2
/* 1D2A84 801E1D14 00390821 */  addu       $at, $at, $t9
/* 1D2A88 801E1D18 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1D2A8C 801E1D1C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 1D2A90 801E1D20 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 1D2A94 801E1D24 8FB00034 */  lw         $s0, 0x34($sp)
.L801E1D28_ovl14:
/* 1D2A98 801E1D28 8FB10038 */  lw         $s1, 0x38($sp)
/* 1D2A9C 801E1D2C 8FB30040 */  lw         $s3, 0x40($sp)
/* 1D2AA0 801E1D30 AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
.L801E1D34_ovl16:
/* 1D2AA4 801E1D34 03E00008 */  jr         $ra
/* 1D2AA8 801E1D38 27BD0048 */   addiu     $sp, $sp, 0x48
