glabel func_801E2834_ovl14
/* 205424 801E2834 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 205428 801E2838 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 20542C 801E283C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 205430 801E2840 AFBF0014 */  sw         $ra, 0x14($sp)
.L801E2844_ovl12:
/* 205434 801E2844 8DC20000 */  lw         $v0, 0x0($t6)
/* 205438 801E2848 3C0F800F */  lui        $t7, %hi(D_800E83E0)
/* 20543C 801E284C 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 205440 801E2850 00021080 */  sll        $v0, $v0, 2
/* 205444 801E2854 01E27821 */  addu       $t7, $t7, $v0
/* 205448 801E2858 8DEF83E0 */  lw         $t7, %lo(D_800E83E0)($t7)
/* 20544C 801E285C 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 205450 801E2860 11E00007 */  beqz       $t7, .L801E2880_ovl14
/* 205454 801E2864 00000000 */   nop
/* 205458 801E2868 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 20545C 801E286C 00822021 */  addu       $a0, $a0, $v0
/* 205460 801E2870 0C02C7B2 */  jal        assign_new_process_entry
/* 205464 801E2874 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
glabel func_801E2878_ovl9
/* 205468 801E2878 10000052 */  b          .L801E29C4_ovl14
/* 20546C 801E287C 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E2880_ovl14:
/* 205470 801E2880 0C06835D */  jal        func_801A0D74_ovl7
/* 205474 801E2884 00000000 */   nop
/* 205478 801E2888 3C038013 */  lui        $v1, %hi(D_8012BCA0)
/* 20547C 801E288C 8C63BCA0 */  lw         $v1, %lo(D_8012BCA0)($v1)
.L801E2890_ovl13:
/* 205480 801E2890 3C04801D */  lui        $a0, %hi(D_801CA738_ovl7)
/* 205484 801E2894 2484A738 */  addiu      $a0, $a0, %lo(D_801CA738_ovl7)
.L801E2898_ovl12:
/* 205488 801E2898 00031CC2 */  srl        $v1, $v1, 19
/* 20548C 801E289C 10600013 */  beqz       $v1, .L801E28EC_ovl14
glabel func_801E28A0_ovl10
/* 205490 801E28A0 30780E00 */   andi      $t8, $v1, 0xE00
/* 205494 801E28A4 13000005 */  beqz       $t8, .L801E28BC_ovl14
glabel func_801E28A8_ovl13
/* 205498 801E28A8 00000000 */   nop
.L801E28AC_ovl9:
/* 20549C 801E28AC 0C03EE45 */  jal        func_800FB914
/* 2054A0 801E28B0 24040001 */   addiu     $a0, $zero, 0x1
/* 2054A4 801E28B4 0C029D9E */  jal        play_sound
/* 2054A8 801E28B8 24040098 */   addiu     $a0, $zero, 0x98
.L801E28BC_ovl14:
/* 2054AC 801E28BC 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 2054B0 801E28C0 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 2054B4 801E28C4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
glabel func_801E28C8_ovl12
/* 2054B8 801E28C8 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 2054BC 801E28CC 8F280000 */  lw         $t0, 0x0($t9)
/* 2054C0 801E28D0 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 2054C4 801E28D4 00084880 */  sll        $t1, $t0, 2
/* 2054C8 801E28D8 00892021 */  addu       $a0, $a0, $t1
/* 2054CC 801E28DC 0C02C7B2 */  jal        assign_new_process_entry
/* 2054D0 801E28E0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 2054D4 801E28E4 10000037 */  b          .L801E29C4_ovl14
/* 2054D8 801E28E8 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E28EC_ovl14:
/* 2054DC 801E28EC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
glabel func_801E28F0_ovl12
/* 2054E0 801E28F0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 2054E4 801E28F4 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
glabel func_801E28F8_ovl9
/* 2054E8 801E28F8 3C01801E */  lui        $at, %hi(func_801E3134_ovl14 + 0x4)
.L801E28FC_ovl16:
/* 2054EC 801E28FC 8C620000 */  lw         $v0, 0x0($v1)
/* 2054F0 801E2900 00021080 */  sll        $v0, $v0, 2
/* 2054F4 801E2904 01425021 */  addu       $t2, $t2, $v0
.L801E2908_ovl10:
/* 2054F8 801E2908 8D4A8AE0 */  lw         $t2, %lo(D_800E8AE0)($t2)
/* 2054FC 801E290C 314B0001 */  andi       $t3, $t2, 0x1
.L801E2910_ovl17:
/* 205500 801E2910 1160001C */  beqz       $t3, .L801E2984_ovl14
/* 205504 801E2914 00000000 */   nop
/* 205508 801E2918 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
.L801E291C_ovl16:
/* 20550C 801E291C 44812000 */  mtc1       $at, $f4
/* 205510 801E2920 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 205514 801E2924 00220821 */  addu       $at, $at, $v0
/* 205518 801E2928 E4243C90 */  swc1       $f4, %lo(D_800E3C90)($at)
/* 20551C 801E292C 8C620000 */  lw         $v0, 0x0($v1)
.L801E2930_ovl12:
/* 205520 801E2930 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E2934_ovl17:
/* 205524 801E2934 44803000 */  mtc1       $zero, $f6
.L801E2938_ovl16:
/* 205528 801E2938 00021080 */  sll        $v0, $v0, 2
/* 20552C 801E293C 00220821 */  addu       $at, $at, $v0
.L801E2940_ovl17:
/* 205530 801E2940 C4283210 */  lwc1       $f8, %lo(D_800E3210)($at)
/* 205534 801E2944 3C01801E */  lui        $at, %hi(func_801E3134_ovl14)
glabel func_801E2948_ovl16
/* 205538 801E2948 4608303C */  c.lt.s     $f6, $f8
.L801E294C_ovl17:
/* 20553C 801E294C 00000000 */  nop
/* 205540 801E2950 45000007 */  bc1f       func_801E2970_ovl14
.L801E2954_ovl16:
/* 205544 801E2954 00000000 */   nop
/* 205548 801E2958 3C01801E */  lui        $at, %hi(D_801E3130_ovl14)
.L801E295C_ovl12:
/* 20554C 801E295C C42A3130 */  lwc1       $f10, %lo(D_801E3130_ovl14)($at)
glabel func_801E2960_ovl16
/* 205550 801E2960 3C01800E */  lui        $at, %hi(D_800E3750)
/* 205554 801E2964 00220821 */  addu       $at, $at, $v0
.L801E2968_ovl17:
/* 205558 801E2968 10000011 */  b          .L801E29B0_ovl14
.L801E296C_ovl15:
/* 20555C 801E296C E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
glabel func_801E2970_ovl14
/* 205560 801E2970 C4303134 */  lwc1       $f16, %lo(func_801E3134_ovl14)($at)
.L801E2974_ovl12:
/* 205564 801E2974 3C01800E */  lui        $at, %hi(D_800E3750)
/* 205568 801E2978 00220821 */  addu       $at, $at, $v0
glabel func_801E297C_ovl12
/* 20556C 801E297C 1000000C */  b          .L801E29B0_ovl14
/* 205570 801E2980 E4303750 */   swc1      $f16, %lo(D_800E3750)($at)
.L801E2984_ovl14:
/* 205574 801E2984 C4323138 */  lwc1       $f18, %lo(func_801E3134_ovl14 + 0x4)($at)
/* 205578 801E2988 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20557C 801E298C 00220821 */  addu       $at, $at, $v0
/* 205580 801E2990 E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
.L801E2994_ovl15:
/* 205584 801E2994 8C6C0000 */  lw         $t4, 0x0($v1)
/* 205588 801E2998 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 20558C 801E299C 44812000 */  mtc1       $at, $f4
/* 205590 801E29A0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 205594 801E29A4 000C6880 */  sll        $t5, $t4, 2
.L801E29A8_ovl15:
/* 205598 801E29A8 002D0821 */  addu       $at, $at, $t5
/* 20559C 801E29AC E4243C90 */  swc1       $f4, %lo(D_800E3C90)($at)
.L801E29B0_ovl14:
/* 2055A0 801E29B0 0C0445EF */  jal        func_801117BC
/* 2055A4 801E29B4 8C650000 */   lw        $a1, 0x0($v1)
glabel func_801E29B8_ovl9
/* 2055A8 801E29B8 0C044713 */  jal        func_80111C4C
.L801E29BC_ovl12:
/* 2055AC 801E29BC 00402025 */   or        $a0, $v0, $zero
/* 2055B0 801E29C0 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E29C4_ovl14:
/* 2055B4 801E29C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2055B8 801E29C8 03E00008 */  jr         $ra
/* 2055BC 801E29CC 00000000 */   nop
