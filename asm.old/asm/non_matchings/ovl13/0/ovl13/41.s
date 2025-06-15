glabel func_801E28A8_ovl13 # 41
/* 1FA828 801E28A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 1FA82C 801E28AC AFB00018 */  sw          $s0, 0x18($sp)
/* 1FA830 801E28B0 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 1FA834 801E28B4 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 1FA838 801E28B8 8E020000 */  lw          $v0, 0x0($s0)
/* 1FA83C 801E28BC AFBF001C */  sw          $ra, 0x1C($sp)
/* 1FA840 801E28C0 AFA40020 */  sw          $a0, 0x20($sp)
/* 1FA844 801E28C4 8C4F0000 */  lw          $t7, 0x0($v0)
/* 1FA848 801E28C8 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FA84C 801E28CC 240E000B */  addiu       $t6, $zero, 0xB
/* 1FA850 801E28D0 000FC080 */  sll         $t8, $t7, 2
/* 1FA854 801E28D4 00380821 */  addu        $at, $at, $t8
/* 1FA858 801E28D8 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1FA85C 801E28DC 8C480000 */  lw          $t0, 0x0($v0)
/* 1FA860 801E28E0 3C0A800E */  lui         $t2, %hi(D_800E1B50)
/* 1FA864 801E28E4 3C19801E */  lui         $t9, %hi(D_801D93A8)
/* 1FA868 801E28E8 00084880 */  sll         $t1, $t0, 2
/* 1FA86C 801E28EC 01495021 */  addu        $t2, $t2, $t1
/* 1FA870 801E28F0 8D4A1B50 */  lw          $t2, %lo(D_800E1B50)($t2)
/* 1FA874 801E28F4 273993A8 */  addiu       $t9, $t9, %lo(D_801D93A8)
/* 1FA878 801E28F8 3C04801E */  lui         $a0, %hi(D_801DAB04)
/* 1FA87C 801E28FC AD59008C */  sw          $t9, 0x8C($t2)
/* 1FA880 801E2900 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1FA884 801E2904 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1FA888 801E2908 2484AB04 */  addiu       $a0, $a0, %lo(D_801DAB04)
/* 1FA88C 801E290C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FA890 801E2910 000C6880 */  sll         $t5, $t4, 2
/* 1FA894 801E2914 002D0821 */  addu        $at, $at, $t5
/* 1FA898 801E2918 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1FA89C 801E291C AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1FA8A0 801E2920 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1FA8A4 801E2924 3C09800E */  lui         $t1, %hi(D_800E1B50)
/* 1FA8A8 801E2928 3C0F801E */  lui         $t7, %hi(D_801DAE40)
/* 1FA8AC 801E292C 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FA8B0 801E2930 25EFAE40 */  addiu       $t7, $t7, %lo(D_801DAE40)
/* 1FA8B4 801E2934 3C014080 */  lui         $at, (0x40800000 >> 16)
/* 1FA8B8 801E2938 00184080 */  sll         $t0, $t8, 2
/* 1FA8BC 801E293C 01284821 */  addu        $t1, $t1, $t0
/* 1FA8C0 801E2940 8D291B50 */  lw          $t1, %lo(D_800E1B50)($t1)
/* 1FA8C4 801E2944 44812000 */  mtc1        $at, $f4
/* 1FA8C8 801E2948 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1FA8CC 801E294C AD2F0098 */  sw          $t7, 0x98($t1)
/* 1FA8D0 801E2950 8E020000 */  lw          $v0, 0x0($s0)
/* 1FA8D4 801E2954 3C040001 */  lui         $a0, (0x1041E >> 16)
/* 1FA8D8 801E2958 3484041E */  ori         $a0, $a0, (0x1041E & 0xFFFF)
/* 1FA8DC 801E295C 8C590000 */  lw          $t9, 0x0($v0)
/* 1FA8E0 801E2960 00195080 */  sll         $t2, $t9, 2
/* 1FA8E4 801E2964 002A0821 */  addu        $at, $at, $t2
/* 1FA8E8 801E2968 E4246850 */  swc1        $f4, %lo(D_800E6850)($at)
/* 1FA8EC 801E296C 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1FA8F0 801E2970 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1FA8F4 801E2974 44813000 */  mtc1        $at, $f6
/* 1FA8F8 801E2978 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1FA8FC 801E297C 000B6080 */  sll         $t4, $t3, 2
/* 1FA900 801E2980 002C0821 */  addu        $at, $at, $t4
/* 1FA904 801E2984 0C02A806 */  jal         func_800AA018
/* 1FA908 801E2988 E4263C90 */   swc1       $f6, %lo(D_800E3C90)($at)
/* 1FA90C 801E298C 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1FA910 801E2990 3C0D801E */  lui         $t5, %hi(func_801E2F0C_ovl13)
/* 1FA914 801E2994 3C01800E */  lui         $at, %hi(D_800DF310)
/* 1FA918 801E2998 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FA91C 801E299C 25AD2F0C */  addiu       $t5, $t5, %lo(func_801E2F0C_ovl13)
/* 1FA920 801E29A0 24040003 */  addiu       $a0, $zero, 0x3
/* 1FA924 801E29A4 00184080 */  sll         $t0, $t8, 2
/* 1FA928 801E29A8 00280821 */  addu        $at, $at, $t0
/* 1FA92C 801E29AC 0C02BBFF */  jal         func_800AEFFC
/* 1FA930 801E29B0 AC2DF310 */   sw         $t5, %lo(D_800DF310)($at)
/* 1FA934 801E29B4 8E090000 */  lw          $t1, 0x0($s0)
/* 1FA938 801E29B8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 1FA93C 801E29BC 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FA940 801E29C0 8D390000 */  lw          $t9, 0x0($t1)
/* 1FA944 801E29C4 240F000A */  addiu       $t7, $zero, 0xA
/* 1FA948 801E29C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 1FA94C 801E29CC 00195080 */  sll         $t2, $t9, 2
/* 1FA950 801E29D0 002A0821 */  addu        $at, $at, $t2
/* 1FA954 801E29D4 AC2FDC50 */  sw          $t7, %lo(gEntityVtableIndexArray)($at)
/* 1FA958 801E29D8 03E00008 */  jr          $ra
/* 1FA95C 801E29DC 27BD0020 */   addiu      $sp, $sp, 0x20
.type func_801E28A8_ovl13, @function

.size func_801E28A8_ovl13, . - func_801E28A8_ovl13
