glabel func_80181CFC_ovl3
/* E273C 80181CFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
glabel func_80181D00_ovl5
/* E2740 80181D00 AFBF001C */  sw         $ra, 0x1C($sp)
/* E2744 80181D04 0C054E61 */  jal        func_80153984_ovl3
/* E2748 80181D08 AFA40030 */   sw        $a0, 0x30($sp)
/* E274C 80181D0C 0C0473D6 */  jal        func_8011CF58
/* E2750 80181D10 00000000 */   nop
/* E2754 80181D14 0C0485EE */  jal        func_801217B8
/* E2758 80181D18 00000000 */   nop
/* E275C 80181D1C 3C038013 */  lui        $v1, %hi(gKirbyState)
/* E2760 80181D20 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
/* E2764 80181D24 8C6E0030 */  lw         $t6, 0x30($v1)
/* E2768 80181D28 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* E276C 80181D2C 11C00005 */  beqz       $t6, .L80181D44_ovl3
/* E2770 80181D30 00000000 */   nop
/* E2774 80181D34 0C04759F */  jal        func_8011D67C
/* E2778 80181D38 00000000 */   nop
/* E277C 80181D3C 10000080 */  b          .L80181F40_ovl3
/* E2780 80181D40 00000000 */   nop
.L80181D44_ovl3:
/* E2784 80181D44 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* E2788 80181D48 3C0F800F */  lui        $t7, %hi(D_800E98E0)
/* E278C 80181D4C 3C048019 */  lui        $a0, %hi(D_80194B28_ovl3)
/* E2790 80181D50 8C490000 */  lw         $t1, 0x0($v0)
/* E2794 80181D54 3C058013 */  lui        $a1, %hi(D_8012E9B8 + 0x10)
/* E2798 80181D58 00004025 */  or         $t0, $zero, $zero
/* E279C 80181D5C 00094880 */  sll        $t1, $t1, 2
/* E27A0 80181D60 01E97821 */  addu       $t7, $t7, $t1
/* E27A4 80181D64 8DEF98E0 */  lw         $t7, %lo(D_800E98E0)($t7)
/* E27A8 80181D68 24A5E9C8 */  addiu      $a1, $a1, %lo(D_8012E9B8 + 0x10)
/* E27AC 80181D6C 24844B28 */  addiu      $a0, $a0, %lo(D_80194B28_ovl3)
/* E27B0 80181D70 15E00050 */  bnez       $t7, .L80181EB4_ovl3
/* E27B4 80181D74 3C068019 */   lui       $a2, %hi(D_80194C28_ovl3)
/* E27B8 80181D78 90780017 */  lbu        $t8, 0x17($v1)
/* E27BC 80181D7C 3C048019 */  lui        $a0, %hi(D_80194B28_ovl3)
/* E27C0 80181D80 24844B28 */  addiu      $a0, $a0, %lo(D_80194B28_ovl3)
/* E27C4 80181D84 13000003 */  beqz       $t8, .L80181D94_ovl3
/* E27C8 80181D88 3C058013 */   lui       $a1, %hi(D_8012E9B8 + 0x10)
/* E27CC 80181D8C 1000001A */  b          func_80181DF8_ovl5
/* E27D0 80181D90 24080001 */   addiu     $t0, $zero, 0x1
.L80181D94_ovl3:
/* E27D4 80181D94 90790016 */  lbu        $t9, 0x16($v1)
/* E27D8 80181D98 3C0A800D */  lui        $t2, %hi(gKirbyController)
.L80181D9C_ovl5:
/* E27DC 80181D9C 3C0D800D */  lui        $t5, %hi(gKirbyController)
/* E27E0 80181DA0 1720000D */  bnez       $t9, .L80181DD8_ovl3
/* E27E4 80181DA4 00000000 */   nop
/* E27E8 80181DA8 954A6FE8 */  lhu        $t2, %lo(gKirbyController)($t2)
/* E27EC 80181DAC 314B4000 */  andi       $t3, $t2, 0x4000
/* E27F0 80181DB0 55600004 */  bnel       $t3, $zero, .L80181DC4_ovl3
/* E27F4 80181DB4 906C000A */   lbu       $t4, 0xA($v1)
/* E27F8 80181DB8 1000000F */  b          func_80181DF8_ovl5
.L80181DBC_ovl5:
/* E27FC 80181DBC 24080001 */   addiu     $t0, $zero, 0x1
/* E2800 80181DC0 906C000A */  lbu        $t4, 0xA($v1)
.L80181DC4_ovl3:
/* E2804 80181DC4 24010004 */  addiu      $at, $zero, 0x4
/* E2808 80181DC8 1581000B */  bne        $t4, $at, func_80181DF8_ovl5
/* E280C 80181DCC 00000000 */   nop
/* E2810 80181DD0 10000009 */  b          func_80181DF8_ovl5
/* E2814 80181DD4 24080001 */   addiu     $t0, $zero, 0x1
.L80181DD8_ovl3:
/* E2818 80181DD8 95AD6FE8 */  lhu        $t5, %lo(gKirbyController)($t5)
/* E281C 80181DDC 240F0004 */  addiu      $t7, $zero, 0x4
/* E2820 80181DE0 31AE4000 */  andi       $t6, $t5, 0x4000
/* E2824 80181DE4 15C00004 */  bnez       $t6, func_80181DF8_ovl5
/* E2828 80181DE8 00000000 */   nop
/* E282C 80181DEC A06F000A */  sb         $t7, 0xA($v1)
/* E2830 80181DF0 8C490000 */  lw         $t1, 0x0($v0)
/* E2834 80181DF4 00094880 */  sll        $t1, $t1, 2
glabel func_80181DF8_ovl5
/* E2838 80181DF8 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* E283C 80181DFC 0309C021 */  addu       $t8, $t8, $t1
/* E2840 80181E00 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* E2844 80181E04 3C01420C */  lui        $at, (0x420C0000 >> 16)
/* E2848 80181E08 44812000 */  mtc1       $at, $f4
/* E284C 80181E0C 8F190010 */  lw         $t9, 0x10($t8)
/* E2850 80181E10 44803000 */  mtc1       $zero, $f6
/* E2854 80181E14 3C068019 */  lui        $a2, %hi(D_80194C28_ovl3)
/* E2858 80181E18 C7200040 */  lwc1       $f0, 0x40($t9)
/* E285C 80181E1C AFA8002C */  sw         $t0, 0x2C($sp)
/* E2860 80181E20 90C64C28 */  lbu        $a2, %lo(D_80194C28_ovl3)($a2)
/* E2864 80181E24 44070000 */  mfc1       $a3, $f0
/* E2868 80181E28 24A5E9C8 */  addiu      $a1, $a1, %lo(D_8012E9B8 + 0x10)
/* E286C 80181E2C E7A40010 */  swc1       $f4, 0x10($sp)
/* E2870 80181E30 E7A60014 */  swc1       $f6, 0x14($sp)
/* E2874 80181E34 0C054849 */  jal        func_80152124_ovl4
/* E2878 80181E38 E7A00028 */   swc1      $f0, 0x28($sp)
/* E287C 80181E3C C7A00028 */  lwc1       $f0, 0x28($sp)
/* E2880 80181E40 3C048019 */  lui        $a0, %hi(D_80191860_ovl3)
/* E2884 80181E44 24841860 */  addiu      $a0, $a0, %lo(D_80191860_ovl3)
/* E2888 80181E48 44060000 */  mfc1       $a2, $f0
/* E288C 80181E4C 0C05A102 */  jal        func_80168408_ovl3
/* E2890 80181E50 00002825 */   or        $a1, $zero, $zero
/* E2894 80181E54 8FA8002C */  lw         $t0, 0x2C($sp)
glabel func_80181E58_ovl5
/* E2898 80181E58 3C038013 */  lui        $v1, %hi(gKirbyState)
/* E289C 80181E5C 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
/* E28A0 80181E60 C7A00028 */  lwc1       $f0, 0x28($sp)
/* E28A4 80181E64 1100002F */  beqz       $t0, .L80181F24_ovl3
/* E28A8 80181E68 00403025 */   or        $a2, $v0, $zero
/* E28AC 80181E6C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* E28B0 80181E70 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* E28B4 80181E74 3C01800F */  lui        $at, %hi(D_800E98E0)
/* E28B8 80181E78 240A0001 */  addiu      $t2, $zero, 0x1
/* E28BC 80181E7C 8C4B0000 */  lw         $t3, 0x0($v0)
/* E28C0 80181E80 000B6080 */  sll        $t4, $t3, 2
/* E28C4 80181E84 002C0821 */  addu       $at, $at, $t4
/* E28C8 80181E88 AC2A98E0 */  sw         $t2, %lo(D_800E98E0)($at)
/* E28CC 80181E8C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* E28D0 80181E90 44814000 */  mtc1       $at, $f8
/* E28D4 80181E94 E4600040 */  swc1       $f0, 0x40($v1)
/* E28D8 80181E98 8C4D0000 */  lw         $t5, 0x0($v0)
/* E28DC 80181E9C 46080283 */  div.s      $f10, $f0, $f8
/* E28E0 80181EA0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* E28E4 80181EA4 000D7080 */  sll        $t6, $t5, 2
/* E28E8 80181EA8 002E0821 */  addu       $at, $at, $t6
/* E28EC 80181EAC 1000001D */  b          .L80181F24_ovl3
/* E28F0 80181EB0 E42AA6E0 */   swc1      $f10, %lo(D_800EA6E0)($at)
.L80181EB4_ovl3:
/* E28F4 80181EB4 3C01420C */  lui        $at, (0x420C0000 >> 16)
/* E28F8 80181EB8 44818000 */  mtc1       $at, $f16
/* E28FC 80181EBC 44809000 */  mtc1       $zero, $f18
/* E2900 80181EC0 90C64C28 */  lbu        $a2, %lo(D_80194C28_ovl3)($a2)
/* E2904 80181EC4 8C670040 */  lw         $a3, 0x40($v1)
/* E2908 80181EC8 E7B00010 */  swc1       $f16, 0x10($sp)
/* E290C 80181ECC 0C054849 */  jal        func_80152124_ovl4
/* E2910 80181ED0 E7B20014 */   swc1      $f18, 0x14($sp)
/* E2914 80181ED4 3C038013 */  lui        $v1, %hi(gKirbyState)
/* E2918 80181ED8 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
/* E291C 80181EDC 3C048019 */  lui        $a0, %hi(D_80191860_ovl3)
/* E2920 80181EE0 24841860 */  addiu      $a0, $a0, %lo(D_80191860_ovl3)
/* E2924 80181EE4 8C660040 */  lw         $a2, 0x40($v1)
/* E2928 80181EE8 0C05A102 */  jal        func_80168408_ovl3
/* E292C 80181EEC 00002825 */   or        $a1, $zero, $zero
/* E2930 80181EF0 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* E2934 80181EF4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* E2938 80181EF8 3C038013 */  lui        $v1, %hi(gKirbyState)
/* E293C 80181EFC 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* E2940 80181F00 8DF80000 */  lw         $t8, 0x0($t7)
/* E2944 80181F04 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
/* E2948 80181F08 C4640040 */  lwc1       $f4, 0x40($v1)
/* E294C 80181F0C 0018C880 */  sll        $t9, $t8, 2
/* E2950 80181F10 00390821 */  addu       $at, $at, $t9
/* E2954 80181F14 C426A6E0 */  lwc1       $f6, %lo(D_800EA6E0)($at)
/* E2958 80181F18 00403025 */  or         $a2, $v0, $zero
/* E295C 80181F1C 46062201 */  sub.s      $f8, $f4, $f6
/* E2960 80181F20 E4680040 */  swc1       $f8, 0x40($v1)
.L80181F24_ovl3:
/* E2964 80181F24 3C048019 */  lui        $a0, %hi(D_80194C28_ovl3)
/* E2968 80181F28 24844C28 */  addiu      $a0, $a0, %lo(D_80194C28_ovl3)
/* E296C 80181F2C 00002825 */  or         $a1, $zero, $zero
/* E2970 80181F30 0C055127 */  jal        func_8015449C_ovl3
/* E2974 80181F34 AFA60024 */   sw        $a2, 0x24($sp)
/* E2978 80181F38 0C044713 */  jal        func_80111C4C
/* E297C 80181F3C 8FA40024 */   lw        $a0, 0x24($sp)
.L80181F40_ovl3:
/* E2980 80181F40 3C018019 */  lui        $at, %hi(D_80197744_ovl3)
/* E2984 80181F44 C42C7744 */  lwc1       $f12, %lo(D_80197744_ovl3)($at)
/* E2988 80181F48 3C018019 */  lui        $at, %hi(D_80197748_ovl3)
/* E298C 80181F4C 0C048333 */  jal        func_80120CCC
/* E2990 80181F50 C42E7748 */   lwc1      $f14, %lo(D_80197748_ovl3)($at)
/* E2994 80181F54 8FBF001C */  lw         $ra, 0x1C($sp)
/* E2998 80181F58 27BD0030 */  addiu      $sp, $sp, 0x30
/* E299C 80181F5C 03E00008 */  jr         $ra
/* E29A0 80181F60 00000000 */   nop
