glabel func_801F1A24_ovl10
/* 1E2794 801F1A24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1E2798 801F1A28 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1E279C 801F1A2C AFB00018 */  sw         $s0, 0x18($sp)
/* 1E27A0 801F1A30 AFA40038 */  sw         $a0, 0x38($sp)
/* 1E27A4 801F1A34 00C08025 */  or         $s0, $a2, $zero
/* 1E27A8 801F1A38 AFA5003C */  sw         $a1, 0x3C($sp)
/* 1E27AC 801F1A3C 0C07C64D */  jal        func_801F1934_ovl10
/* 1E27B0 801F1A40 00C02025 */   or        $a0, $a2, $zero
.L801F1A44_ovl9:
/* 1E27B4 801F1A44 14400004 */  bnez       $v0, .L801F1A58_ovl10
/* 1E27B8 801F1A48 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 1E27BC 801F1A4C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E27C0 801F1A50 0C02C640 */  jal        func_800B1900
/* 1E27C4 801F1A54 95C40002 */   lhu       $a0, 0x2($t6)
.L801F1A58_ovl10:
/* 1E27C8 801F1A58 24010001 */  addiu      $at, $zero, 0x1
.L801F1A5C_ovl9:
/* 1E27CC 801F1A5C 12010009 */  beq        $s0, $at, .L801F1A84_ovl10
/* 1E27D0 801F1A60 00107880 */   sll       $t7, $s0, 2
/* 1E27D4 801F1A64 24010002 */  addiu      $at, $zero, 0x2
/* 1E27D8 801F1A68 1201001F */  beq        $s0, $at, .L801F1AE8_ovl10
/* 1E27DC 801F1A6C 00106080 */   sll       $t4, $s0, 2
/* 1E27E0 801F1A70 24010003 */  addiu      $at, $zero, 0x3
/* 1E27E4 801F1A74 12010035 */  beq        $s0, $at, .L801F1B4C_ovl10
/* 1E27E8 801F1A78 00104880 */   sll       $t1, $s0, 2
/* 1E27EC 801F1A7C 1000004B */  b          .L801F1BAC_ovl10
/* 1E27F0 801F1A80 00000000 */   nop
.L801F1A84_ovl10:
/* 1E27F4 801F1A84 3C04801F */  lui        $a0, %hi(func_801F4860_ovl9 + 0x94)
/* 1E27F8 801F1A88 008F2021 */  addu       $a0, $a0, $t7
/* 1E27FC 801F1A8C 8C8448F4 */  lw         $a0, %lo(func_801F4860_ovl9 + 0x94)($a0)
/* 1E2800 801F1A90 2405002C */  addiu      $a1, $zero, 0x2C
/* 1E2804 801F1A94 0C02A619 */  jal        func_800A9864
/* 1E2808 801F1A98 24060010 */   addiu     $a2, $zero, 0x10
/* 1E280C 801F1A9C 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1E2810 801F1AA0 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1E2814 801F1AA4 3C18801F */  lui        $t8, %hi(func_801F4860_ovl9 + 0x24)
/* 1E2818 801F1AA8 3C01800E */  lui        $at, %hi(D_800E0490)
/* 1E281C 801F1AAC 8F280000 */  lw         $t0, 0x0($t9)
/* 1E2820 801F1AB0 27184884 */  addiu      $t8, $t8, %lo(func_801F4860_ovl9 + 0x24)
/* 1E2824 801F1AB4 24040029 */  addiu      $a0, $zero, 0x29
/* 1E2828 801F1AB8 00084880 */  sll        $t1, $t0, 2
/* 1E282C 801F1ABC 00290821 */  addu       $at, $at, $t1
/* 1E2830 801F1AC0 AC380490 */  sw         $t8, %lo(D_800E0490)($at)
/* 1E2834 801F1AC4 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E2838 801F1AC8 0C02BB02 */  jal        request_track_general
/* 1E283C 801F1ACC 24060050 */   addiu     $a2, $zero, 0x50
/* 1E2840 801F1AD0 00025880 */  sll        $t3, $v0, 2
/* 1E2844 801F1AD4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E2848 801F1AD8 002B0821 */  addu       $at, $at, $t3
/* 1E284C 801F1ADC 240A0003 */  addiu      $t2, $zero, 0x3
/* 1E2850 801F1AE0 10000032 */  b          .L801F1BAC_ovl10
/* 1E2854 801F1AE4 AC2A98E0 */   sw        $t2, %lo(D_800E98E0)($at)
.L801F1AE8_ovl10:
/* 1E2858 801F1AE8 3C04801F */  lui        $a0, %hi(func_801F4860_ovl9 + 0x94)
/* 1E285C 801F1AEC 008C2021 */  addu       $a0, $a0, $t4
/* 1E2860 801F1AF0 8C8448F4 */  lw         $a0, %lo(func_801F4860_ovl9 + 0x94)($a0)
/* 1E2864 801F1AF4 2405002C */  addiu      $a1, $zero, 0x2C
/* 1E2868 801F1AF8 0C02A619 */  jal        func_800A9864
/* 1E286C 801F1AFC 24060010 */   addiu     $a2, $zero, 0x10
/* 1E2870 801F1B00 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1E2874 801F1B04 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E2878 801F1B08 3C0D801F */  lui        $t5, %hi(func_801F4860_ovl9 + 0x78)
/* 1E287C 801F1B0C 3C01800E */  lui        $at, %hi(D_800E0490)
/* 1E2880 801F1B10 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1E2884 801F1B14 25AD48D8 */  addiu      $t5, $t5, %lo(func_801F4860_ovl9 + 0x78)
/* 1E2888 801F1B18 24040029 */  addiu      $a0, $zero, 0x29
/* 1E288C 801F1B1C 000FC880 */  sll        $t9, $t7, 2
/* 1E2890 801F1B20 00390821 */  addu       $at, $at, $t9
/* 1E2894 801F1B24 AC2D0490 */  sw         $t5, %lo(D_800E0490)($at)
/* 1E2898 801F1B28 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E289C 801F1B2C 0C02BB02 */  jal        request_track_general
/* 1E28A0 801F1B30 24060050 */   addiu     $a2, $zero, 0x50
/* 1E28A4 801F1B34 0002C080 */  sll        $t8, $v0, 2
/* 1E28A8 801F1B38 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E28AC 801F1B3C 00380821 */  addu       $at, $at, $t8
/* 1E28B0 801F1B40 24080004 */  addiu      $t0, $zero, 0x4
/* 1E28B4 801F1B44 10000019 */  b          .L801F1BAC_ovl10
/* 1E28B8 801F1B48 AC2898E0 */   sw        $t0, %lo(D_800E98E0)($at)
.L801F1B4C_ovl10:
/* 1E28BC 801F1B4C 3C04801F */  lui        $a0, %hi(func_801F4860_ovl9 + 0x94)
/* 1E28C0 801F1B50 00892021 */  addu       $a0, $a0, $t1
/* 1E28C4 801F1B54 8C8448F4 */  lw         $a0, %lo(func_801F4860_ovl9 + 0x94)($a0)
/* 1E28C8 801F1B58 2405002C */  addiu      $a1, $zero, 0x2C
/* 1E28CC 801F1B5C 0C02A619 */  jal        func_800A9864
/* 1E28D0 801F1B60 24060010 */   addiu     $a2, $zero, 0x10
/* 1E28D4 801F1B64 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 1E28D8 801F1B68 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 1E28DC 801F1B6C 3C0A801F */  lui        $t2, %hi(func_801F4860_ovl9 + 0x5C)
/* 1E28E0 801F1B70 3C01800E */  lui        $at, %hi(D_800E0490)
/* 1E28E4 801F1B74 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1E28E8 801F1B78 254A48BC */  addiu      $t2, $t2, %lo(func_801F4860_ovl9 + 0x5C)
/* 1E28EC 801F1B7C 24040029 */  addiu      $a0, $zero, 0x29
/* 1E28F0 801F1B80 000C7080 */  sll        $t6, $t4, 2
/* 1E28F4 801F1B84 002E0821 */  addu       $at, $at, $t6
/* 1E28F8 801F1B88 AC2A0490 */  sw         $t2, %lo(D_800E0490)($at)
/* 1E28FC 801F1B8C 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E2900 801F1B90 0C02BB02 */  jal        request_track_general
/* 1E2904 801F1B94 24060050 */   addiu     $a2, $zero, 0x50
/* 1E2908 801F1B98 00026880 */  sll        $t5, $v0, 2
/* 1E290C 801F1B9C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E2910 801F1BA0 002D0821 */  addu       $at, $at, $t5
/* 1E2914 801F1BA4 240F0005 */  addiu      $t7, $zero, 0x5
/* 1E2918 801F1BA8 AC2F98E0 */  sw         $t7, %lo(D_800E98E0)($at)
.L801F1BAC_ovl10:
/* 1E291C 801F1BAC 0C006291 */  jal        random_soft_s32_range
/* 1E2920 801F1BB0 24040002 */   addiu     $a0, $zero, 0x2
/* 1E2924 801F1BB4 3C08801F */  lui        $t0, %hi(D_801F4818_ovl10)
/* 1E2928 801F1BB8 25084818 */  addiu      $t0, $t0, %lo(D_801F4818_ovl10)
/* 1E292C 801F1BBC 0010C900 */  sll        $t9, $s0, 4
/* 1E2930 801F1BC0 03281821 */  addu       $v1, $t9, $t0
/* 1E2934 801F1BC4 0002C0C0 */  sll        $t8, $v0, 3
/* 1E2938 801F1BC8 00784821 */  addu       $t1, $v1, $t8
/* 1E293C 801F1BCC 8D240000 */  lw         $a0, 0x0($t1)
/* 1E2940 801F1BD0 AFA20030 */  sw         $v0, 0x30($sp)
/* 1E2944 801F1BD4 0C02A806 */  jal        func_800AA018
/* 1E2948 801F1BD8 AFA30024 */   sw        $v1, 0x24($sp)
/* 1E294C 801F1BDC 8FAB0030 */  lw         $t3, 0x30($sp)
/* 1E2950 801F1BE0 8FA30024 */  lw         $v1, 0x24($sp)
/* 1E2954 801F1BE4 000B60C0 */  sll        $t4, $t3, 3
/* 1E2958 801F1BE8 006C5021 */  addu       $t2, $v1, $t4
/* 1E295C 801F1BEC 8D440004 */  lw         $a0, 0x4($t2)
/* 1E2960 801F1BF0 10800003 */  beqz       $a0, .L801F1C00_ovl10
/* 1E2964 801F1BF4 00000000 */   nop
/* 1E2968 801F1BF8 0C02A806 */  jal        func_800AA018
/* 1E296C 801F1BFC 00000000 */   nop
.L801F1C00_ovl10:
/* 1E2970 801F1C00 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E2974 801F1C04 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E2978 801F1C08 3C01801F */  lui        $at, %hi(D_801F4CA4_ovl10)
/* 1E297C 801F1C0C C4204CA4 */  lwc1       $f0, %lo(D_801F4CA4_ovl10)($at)
/* 1E2980 801F1C10 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E2984 801F1C14 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 1E2988 801F1C18 8FA40038 */  lw         $a0, 0x38($sp)
/* 1E298C 801F1C1C 000E7880 */  sll        $t7, $t6, 2
/* 1E2990 801F1C20 002F0821 */  addu       $at, $at, $t7
/* 1E2994 801F1C24 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 1E2998 801F1C28 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1E299C 801F1C2C 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 1E29A0 801F1C30 8FA5003C */  lw         $a1, 0x3C($sp)
/* 1E29A4 801F1C34 000DC880 */  sll        $t9, $t5, 2
/* 1E29A8 801F1C38 00390821 */  addu       $at, $at, $t9
/* 1E29AC 801F1C3C E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 1E29B0 801F1C40 8C480000 */  lw         $t0, 0x0($v0)
.L801F1C44_ovl9:
/* 1E29B4 801F1C44 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 1E29B8 801F1C48 0008C080 */  sll        $t8, $t0, 2
/* 1E29BC 801F1C4C 00380821 */  addu       $at, $at, $t8
/* 1E29C0 801F1C50 0C07C555 */  jal        func_801F1554_ovl10
/* 1E29C4 801F1C54 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 1E29C8 801F1C58 0C03FC51 */  jal        func_800FF144
/* 1E29CC 801F1C5C 00000000 */   nop
/* 1E29D0 801F1C60 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1E29D4 801F1C64 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
glabel func_801F1C68_ovl9
/* 1E29D8 801F1C68 3C01800F */  lui        $at, %hi(D_800EA520)
/* 1E29DC 801F1C6C 00402025 */  or         $a0, $v0, $zero
/* 1E29E0 801F1C70 8D2B0000 */  lw         $t3, 0x0($t1)
/* 1E29E4 801F1C74 000B6080 */  sll        $t4, $t3, 2
/* 1E29E8 801F1C78 002C0821 */  addu       $at, $at, $t4
/* 1E29EC 801F1C7C 0C07C005 */  jal        func_801F0014_ovl16
/* 1E29F0 801F1C80 AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* 1E29F4 801F1C84 0C02BE85 */  jal        func_800AFA14
/* 1E29F8 801F1C88 00000000 */   nop
/* 1E29FC 801F1C8C 8FBF001C */  lw         $ra, 0x1C($sp)
glabel func_801F1C90_ovl9
/* 1E2A00 801F1C90 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E2A04 801F1C94 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1E2A08 801F1C98 03E00008 */  jr         $ra
/* 1E2A0C 801F1C9C 00000000 */   nop
