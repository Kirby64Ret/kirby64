glabel func_801DDA98_ovl16
/* 213D48 801DDA98 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 213D4C 801DDA9C AFB6003C */  sw         $s6, 0x3C($sp)
glabel func_801DDAA0_ovl10
/* 213D50 801DDAA0 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 213D54 801DDAA4 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* 213D58 801DDAA8 8ECE0000 */  lw         $t6, 0x0($s6)
/* 213D5C 801DDAAC AFBF0044 */  sw         $ra, 0x44($sp)
.L801DDAB0_ovl14:
/* 213D60 801DDAB0 AFB70040 */  sw         $s7, 0x40($sp)
/* 213D64 801DDAB4 AFB50038 */  sw         $s5, 0x38($sp)
.L801DDAB8_ovl15:
/* 213D68 801DDAB8 AFB40034 */  sw         $s4, 0x34($sp)
/* 213D6C 801DDABC AFB30030 */  sw         $s3, 0x30($sp)
/* 213D70 801DDAC0 AFB2002C */  sw         $s2, 0x2C($sp)
.L801DDAC4_ovl13:
/* 213D74 801DDAC4 AFB10028 */  sw         $s1, 0x28($sp)
glabel func_801DDAC8_ovl10
/* 213D78 801DDAC8 AFB00024 */  sw         $s0, 0x24($sp)
/* 213D7C 801DDACC F7B60018 */  sdc1       $f22, 0x18($sp)
.L801DDAD0_ovl14:
/* 213D80 801DDAD0 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 213D84 801DDAD4 AFA40048 */  sw         $a0, 0x48($sp)
/* 213D88 801DDAD8 8DCF0000 */  lw         $t7, 0x0($t6)
glabel func_801DDADC_ovl13
/* 213D8C 801DDADC 3C10800E */  lui        $s0, %hi(D_800E0D50)
/* 213D90 801DDAE0 000FC080 */  sll        $t8, $t7, 2
/* 213D94 801DDAE4 02188021 */  addu       $s0, $s0, $t8
glabel func_801DDAE8_ovl12
/* 213D98 801DDAE8 0C066ED6 */  jal        func_8019BB58_ovl7
/* 213D9C 801DDAEC 8E100D50 */   lw        $s0, %lo(D_800E0D50)($s0)
.L801DDAF0_ovl15:
/* 213DA0 801DDAF0 8EC20000 */  lw         $v0, 0x0($s6)
/* 213DA4 801DDAF4 3C19800B */  lui        $t9, %hi(func_800B7560)
/* 213DA8 801DDAF8 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 213DAC 801DDAFC 8C480000 */  lw         $t0, 0x0($v0)
/* 213DB0 801DDB00 27397560 */  addiu      $t9, $t9, %lo(func_800B7560)
/* 213DB4 801DDB04 3C0A801E */  lui        $t2, %hi(func_801DDE54_ovl16)
/* 213DB8 801DDB08 00084880 */  sll        $t1, $t0, 2
/* 213DBC 801DDB0C 00290821 */  addu       $at, $at, $t1
/* 213DC0 801DDB10 AC39EF90 */  sw         $t9, %lo(D_800DEF90)($at)
/* 213DC4 801DDB14 8C4B0000 */  lw         $t3, 0x0($v0)
/* 213DC8 801DDB18 3C01800E */  lui        $at, %hi(D_800DF150)
/* 213DCC 801DDB1C 254ADE54 */  addiu      $t2, $t2, %lo(func_801DDE54_ovl16)
/* 213DD0 801DDB20 000B6080 */  sll        $t4, $t3, 2
/* 213DD4 801DDB24 002C0821 */  addu       $at, $at, $t4
.L801DDB28_ovl10:
/* 213DD8 801DDB28 AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 213DDC 801DDB2C 8C430000 */  lw         $v1, 0x0($v0)
.L801DDB30_ovl12:
/* 213DE0 801DDB30 3C0D800F */  lui        $t5, %hi(D_800E98E0)
/* 213DE4 801DDB34 3C01801F */  lui        $at, %hi(D_801EFE48_ovl16)
/* 213DE8 801DDB38 00031880 */  sll        $v1, $v1, 2
/* 213DEC 801DDB3C 01A36821 */  addu       $t5, $t5, $v1
/* 213DF0 801DDB40 8DAD98E0 */  lw         $t5, %lo(D_800E98E0)($t5)
/* 213DF4 801DDB44 00109880 */  sll        $s3, $s0, 2
/* 213DF8 801DDB48 11A00006 */  beqz       $t5, .L801DDB64_ovl16
/* 213DFC 801DDB4C 00000000 */   nop
.L801DDB50_ovl9:
/* 213E00 801DDB50 44802000 */  mtc1       $zero, $f4
.L801DDB54_ovl13:
/* 213E04 801DDB54 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 213E08 801DDB58 00230821 */  addu       $at, $at, $v1
.L801DDB5C_ovl10:
/* 213E0C 801DDB5C 10000005 */  b          .L801DDB74_ovl16
/* 213E10 801DDB60 E42417D0 */   swc1      $f4, %lo(D_800E17D0)($at)
.L801DDB64_ovl16:
/* 213E14 801DDB64 C426FE48 */  lwc1       $f6, %lo(D_801EFE48_ovl16)($at)
/* 213E18 801DDB68 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 213E1C 801DDB6C 00230821 */  addu       $at, $at, $v1
/* 213E20 801DDB70 E42617D0 */  swc1       $f6, %lo(D_800E17D0)($at)
.L801DDB74_ovl16:
/* 213E24 801DDB74 3C03800F */  lui        $v1, %hi(D_800E9020)
/* 213E28 801DDB78 8C4F0000 */  lw         $t7, 0x0($v0)
/* 213E2C 801DDB7C 24639020 */  addiu      $v1, $v1, %lo(D_800E9020)
/* 213E30 801DDB80 00737021 */  addu       $t6, $v1, $s3
.L801DDB84_ovl9:
/* 213E34 801DDB84 C5C80000 */  lwc1       $f8, 0x0($t6)
glabel func_801DDB88_ovl10
/* 213E38 801DDB88 000FC080 */  sll        $t8, $t7, 2
glabel func_801DDB8C_ovl17
/* 213E3C 801DDB8C 00784021 */  addu       $t0, $v1, $t8
.L801DDB90_ovl9:
/* 213E40 801DDB90 E5080000 */  swc1       $f8, 0x0($t0)
.L801DDB94_ovl12:
/* 213E44 801DDB94 8C590000 */  lw         $t9, 0x0($v0)
/* 213E48 801DDB98 3C01800F */  lui        $at, %hi(D_800E8920)
glabel func_801DDB9C_ovl11
/* 213E4C 801DDB9C 00194880 */  sll        $t1, $t9, 2
/* 213E50 801DDBA0 00290821 */  addu       $at, $at, $t1
glabel func_801DDBA4_ovl11
/* 213E54 801DDBA4 0C02CCFD */  jal        func_800B33F4
glabel func_801DDBA8_ovl15
/* 213E58 801DDBA8 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
.L801DDBAC_ovl9:
/* 213E5C 801DDBAC 8ECB0000 */  lw         $t3, 0x0($s6)
/* 213E60 801DDBB0 3C0D800F */  lui        $t5, %hi(D_800E98E0)
/* 213E64 801DDBB4 3C04801F */  lui        $a0, %hi(D_801EF728_ovl16)
.L801DDBB8_ovl12:
/* 213E68 801DDBB8 8D6A0000 */  lw         $t2, 0x0($t3)
/* 213E6C 801DDBBC 24050023 */  addiu      $a1, $zero, 0x23
/* 213E70 801DDBC0 24060010 */  addiu      $a2, $zero, 0x10
glabel func_801DDBC4_ovl12
/* 213E74 801DDBC4 000A6080 */  sll        $t4, $t2, 2
.L801DDBC8_ovl13:
/* 213E78 801DDBC8 01AC6821 */  addu       $t5, $t5, $t4
/* 213E7C 801DDBCC 8DAD98E0 */  lw         $t5, %lo(D_800E98E0)($t5)
glabel func_801DDBD0_ovl14
/* 213E80 801DDBD0 000D7080 */  sll        $t6, $t5, 2
/* 213E84 801DDBD4 008E2021 */  addu       $a0, $a0, $t6
glabel func_801DDBD8_ovl17
/* 213E88 801DDBD8 0C02A619 */  jal        func_800A9864
/* 213E8C 801DDBDC 8C84F728 */   lw        $a0, %lo(D_801EF728_ovl16)($a0)
/* 213E90 801DDBE0 3C17800E */  lui        $s7, %hi(gEntitiesNextPosYArray)
/* 213E94 801DDBE4 26F72790 */  addiu      $s7, $s7, %lo(gEntitiesNextPosYArray)
/* 213E98 801DDBE8 3C014234 */  lui        $at, (0x42340000 >> 16)
/* 213E9C 801DDBEC 02F39021 */  addu       $s2, $s7, $s3
/* 213EA0 801DDBF0 4481B000 */  mtc1       $at, $f22
/* 213EA4 801DDBF4 C64A0000 */  lwc1       $f10, 0x0($s2)
.L801DDBF8_ovl11:
/* 213EA8 801DDBF8 3C15800E */  lui        $s5, %hi(gEntityVtableIndexArray)
/* 213EAC 801DDBFC 26B5DC50 */  addiu      $s5, $s5, %lo(gEntityVtableIndexArray)
/* 213EB0 801DDC00 460AB03C */  c.lt.s     $f22, $f10
/* 213EB4 801DDC04 3C01C47A */  lui        $at, (0xC47A0000 >> 16)
.L801DDC08_ovl13:
/* 213EB8 801DDC08 24140001 */  addiu      $s4, $zero, 0x1
.L801DDC0C_ovl13:
/* 213EBC 801DDC0C 24110005 */  addiu      $s1, $zero, 0x5
.L801DDC10_ovl9:
/* 213EC0 801DDC10 45000019 */  bc1f       .L801DDC78_ovl16
/* 213EC4 801DDC14 3C10800D */   lui       $s0, %hi(D_800D7098)
glabel func_801DDC18_ovl13
/* 213EC8 801DDC18 4481A000 */  mtc1       $at, $f20
.L801DDC1C_ovl12:
/* 213ECC 801DDC1C 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 213ED0 801DDC20 8E0F0004 */  lw         $t7, 0x4($s0)
.L801DDC24_ovl16:
/* 213ED4 801DDC24 02B34021 */  addu       $t0, $s5, $s3
/* 213ED8 801DDC28 162F0013 */  bne        $s1, $t7, .L801DDC78_ovl16
/* 213EDC 801DDC2C 00000000 */   nop
.L801DDC30_ovl12:
/* 213EE0 801DDC30 8E180018 */  lw         $t8, 0x18($s0)
/* 213EE4 801DDC34 17000010 */  bnez       $t8, .L801DDC78_ovl16
/* 213EE8 801DDC38 00000000 */   nop
/* 213EEC 801DDC3C 8D190000 */  lw         $t9, 0x0($t0)
glabel func_801DDC40_ovl17
/* 213EF0 801DDC40 1299000D */  beq        $s4, $t9, .L801DDC78_ovl16
.L801DDC44_ovl13:
/* 213EF4 801DDC44 00000000 */   nop
.L801DDC48_ovl15:
/* 213EF8 801DDC48 8EC90000 */  lw         $t1, 0x0($s6)
/* 213EFC 801DDC4C 02802025 */  or         $a0, $s4, $zero
/* 213F00 801DDC50 8D2B0000 */  lw         $t3, 0x0($t1)
/* 213F04 801DDC54 000B5080 */  sll        $t2, $t3, 2
glabel func_801DDC58_ovl13
/* 213F08 801DDC58 02EA6021 */  addu       $t4, $s7, $t2
.L801DDC5C_ovl15:
/* 213F0C 801DDC5C 0C002DAF */  jal        finish_current_thread
/* 213F10 801DDC60 E5940000 */   swc1      $f20, 0x0($t4)
/* 213F14 801DDC64 C6500000 */  lwc1       $f16, 0x0($s2)
/* 213F18 801DDC68 4610B03C */  c.lt.s     $f22, $f16
/* 213F1C 801DDC6C 00000000 */  nop
glabel func_801DDC70_ovl12
/* 213F20 801DDC70 4503FFEC */  bc1tl      .L801DDC24_ovl16
/* 213F24 801DDC74 8E0F0004 */   lw        $t7, 0x4($s0)
.L801DDC78_ovl16:
/* 213F28 801DDC78 3C10800D */  lui        $s0, %hi(D_800D7098)
.L801DDC7C_ovl9:
/* 213F2C 801DDC7C 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 213F30 801DDC80 8E0D0004 */  lw         $t5, 0x4($s0)
/* 213F34 801DDC84 24110005 */  addiu      $s1, $zero, 0x5
/* 213F38 801DDC88 3C15800E */  lui        $s5, %hi(gEntityVtableIndexArray)
.L801DDC8C_ovl15:
/* 213F3C 801DDC8C 26B5DC50 */  addiu      $s5, $s5, %lo(gEntityVtableIndexArray)
/* 213F40 801DDC90 162D0060 */  bne        $s1, $t5, .L801DDE14_ovl16
.L801DDC94_ovl11:
/* 213F44 801DDC94 24140001 */   addiu     $s4, $zero, 0x1
/* 213F48 801DDC98 8E0E0018 */  lw         $t6, 0x18($s0)
/* 213F4C 801DDC9C 02B37821 */  addu       $t7, $s5, $s3
.L801DDCA0_ovl9:
/* 213F50 801DDCA0 55C0005D */  bnel       $t6, $zero, .L801DDE18_ovl16
/* 213F54 801DDCA4 8ECA0000 */   lw        $t2, 0x0($s6)
/* 213F58 801DDCA8 8DF80000 */  lw         $t8, 0x0($t7)
/* 213F5C 801DDCAC 5298005A */  beql       $s4, $t8, .L801DDE18_ovl16
.L801DDCB0_ovl15:
/* 213F60 801DDCB0 8ECA0000 */   lw        $t2, 0x0($s6)
/* 213F64 801DDCB4 8EC80000 */  lw         $t0, 0x0($s6)
/* 213F68 801DDCB8 44809000 */  mtc1       $zero, $f18
/* 213F6C 801DDCBC 240401C5 */  addiu      $a0, $zero, 0x1C5
/* 213F70 801DDCC0 8D190000 */  lw         $t9, 0x0($t0)
.L801DDCC4_ovl15:
/* 213F74 801DDCC4 00194880 */  sll        $t1, $t9, 2
/* 213F78 801DDCC8 02E95821 */  addu       $t3, $s7, $t1
.L801DDCCC_ovl12:
/* 213F7C 801DDCCC 0C029D9E */  jal        play_sound
.L801DDCD0_ovl11:
/* 213F80 801DDCD0 E5720000 */   swc1      $f18, 0x0($t3)
.L801DDCD4_ovl9:
/* 213F84 801DDCD4 8ECA0000 */  lw         $t2, 0x0($s6)
/* 213F88 801DDCD8 3C0E800F */  lui        $t6, %hi(D_800E98E0)
glabel func_801DDCDC_ovl12
/* 213F8C 801DDCDC 3C04801F */  lui        $a0, %hi(D_801EF738_ovl16)
/* 213F90 801DDCE0 8D4C0000 */  lw         $t4, 0x0($t2)
/* 213F94 801DDCE4 000C6880 */  sll        $t5, $t4, 2
/* 213F98 801DDCE8 01CD7021 */  addu       $t6, $t6, $t5
.L801DDCEC_ovl15:
/* 213F9C 801DDCEC 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* 213FA0 801DDCF0 000E7880 */  sll        $t7, $t6, 2
.L801DDCF4_ovl11:
/* 213FA4 801DDCF4 008F2021 */  addu       $a0, $a0, $t7
/* 213FA8 801DDCF8 0C02A806 */  jal        func_800AA018
/* 213FAC 801DDCFC 8C84F738 */   lw        $a0, %lo(D_801EF738_ovl16)($a0)
/* 213FB0 801DDD00 8ED80000 */  lw         $t8, 0x0($s6)
.L801DDD04_ovl9:
/* 213FB4 801DDD04 3C09800F */  lui        $t1, %hi(D_800E98E0)
/* 213FB8 801DDD08 3C04801F */  lui        $a0, %hi(D_801EF730_ovl16)
/* 213FBC 801DDD0C 8F080000 */  lw         $t0, 0x0($t8)
/* 213FC0 801DDD10 0008C880 */  sll        $t9, $t0, 2
glabel func_801DDD14_ovl9
/* 213FC4 801DDD14 01394821 */  addu       $t1, $t1, $t9
/* 213FC8 801DDD18 8D2998E0 */  lw         $t1, %lo(D_800E98E0)($t1)
/* 213FCC 801DDD1C 00095880 */  sll        $t3, $t1, 2
.L801DDD20_ovl17:
/* 213FD0 801DDD20 008B2021 */  addu       $a0, $a0, $t3
/* 213FD4 801DDD24 0C02A855 */  jal        func_800AA154
.L801DDD28_ovl11:
/* 213FD8 801DDD28 8C84F730 */   lw        $a0, %lo(D_801EF730_ovl16)($a0)
/* 213FDC 801DDD2C 8ECA0000 */  lw         $t2, 0x0($s6)
/* 213FE0 801DDD30 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* 213FE4 801DDD34 3C04801F */  lui        $a0, %hi(D_801EF758_ovl16)
glabel func_801DDD38_ovl17
/* 213FE8 801DDD38 8D4C0000 */  lw         $t4, 0x0($t2)
/* 213FEC 801DDD3C 000C6880 */  sll        $t5, $t4, 2
/* 213FF0 801DDD40 01CD7021 */  addu       $t6, $t6, $t5
glabel func_801DDD44_ovl15
/* 213FF4 801DDD44 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
.L801DDD48_ovl11:
/* 213FF8 801DDD48 000E7880 */  sll        $t7, $t6, 2
/* 213FFC 801DDD4C 008F2021 */  addu       $a0, $a0, $t7
.L801DDD50_ovl10:
/* 214000 801DDD50 0C02A806 */  jal        func_800AA018
/* 214004 801DDD54 8C84F758 */   lw        $a0, %lo(D_801EF758_ovl16)($a0)
/* 214008 801DDD58 8ED80000 */  lw         $t8, 0x0($s6)
/* 21400C 801DDD5C 3C09800F */  lui        $t1, %hi(D_800E98E0)
/* 214010 801DDD60 3C04801F */  lui        $a0, %hi(D_801EF750_ovl16)
/* 214014 801DDD64 8F080000 */  lw         $t0, 0x0($t8)
/* 214018 801DDD68 0008C880 */  sll        $t9, $t0, 2
.L801DDD6C_ovl11:
/* 21401C 801DDD6C 01394821 */  addu       $t1, $t1, $t9
/* 214020 801DDD70 8D2998E0 */  lw         $t1, %lo(D_800E98E0)($t1)
glabel func_801DDD74_ovl15
/* 214024 801DDD74 00095880 */  sll        $t3, $t1, 2
/* 214028 801DDD78 008B2021 */  addu       $a0, $a0, $t3
.L801DDD7C_ovl12:
/* 21402C 801DDD7C 0C02A806 */  jal        func_800AA018
glabel func_801DDD80_ovl11
/* 214030 801DDD80 8C84F750 */   lw        $a0, %lo(D_801EF750_ovl16)($a0)
/* 214034 801DDD84 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* 214038 801DDD88 4481A000 */  mtc1       $at, $f20
/* 21403C 801DDD8C C6440000 */  lwc1       $f4, 0x0($s2)
glabel func_801DDD90_ovl13
/* 214040 801DDD90 4614203E */  c.le.s     $f4, $f20
/* 214044 801DDD94 00000000 */  nop
/* 214048 801DDD98 45020009 */  bc1fl      .L801DDDC0_ovl16
/* 21404C 801DDD9C 8ECA0000 */   lw        $t2, 0x0($s6)
.L801DDDA0_ovl16:
/* 214050 801DDDA0 0C002DAF */  jal        finish_current_thread
/* 214054 801DDDA4 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801DDDA8_ovl12
/* 214058 801DDDA8 C6460000 */  lwc1       $f6, 0x0($s2)
/* 21405C 801DDDAC 4614303E */  c.le.s     $f6, $f20
/* 214060 801DDDB0 00000000 */  nop
/* 214064 801DDDB4 4501FFFA */  bc1t       .L801DDDA0_ovl16
/* 214068 801DDDB8 00000000 */   nop
/* 21406C 801DDDBC 8ECA0000 */  lw         $t2, 0x0($s6)
.L801DDDC0_ovl16:
/* 214070 801DDDC0 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* 214074 801DDDC4 3C04801F */  lui        $a0, %hi(D_801EF748_ovl16)
/* 214078 801DDDC8 8D4C0000 */  lw         $t4, 0x0($t2)
/* 21407C 801DDDCC 000C6880 */  sll        $t5, $t4, 2
glabel func_801DDDD0_ovl9
/* 214080 801DDDD0 01CD7021 */  addu       $t6, $t6, $t5
/* 214084 801DDDD4 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* 214088 801DDDD8 000E7880 */  sll        $t7, $t6, 2
.L801DDDDC_ovl15:
/* 21408C 801DDDDC 008F2021 */  addu       $a0, $a0, $t7
/* 214090 801DDDE0 0C02A806 */  jal        func_800AA018
/* 214094 801DDDE4 8C84F748 */   lw        $a0, %lo(D_801EF748_ovl16)($a0)
/* 214098 801DDDE8 8ED80000 */  lw         $t8, 0x0($s6)
/* 21409C 801DDDEC 3C09800F */  lui        $t1, %hi(D_800E98E0)
/* 2140A0 801DDDF0 3C04801F */  lui        $a0, %hi(D_801EF740_ovl16)
/* 2140A4 801DDDF4 8F080000 */  lw         $t0, 0x0($t8)
/* 2140A8 801DDDF8 0008C880 */  sll        $t9, $t0, 2
/* 2140AC 801DDDFC 01394821 */  addu       $t1, $t1, $t9
.L801DDE00_ovl17:
/* 2140B0 801DDE00 8D2998E0 */  lw         $t1, %lo(D_800E98E0)($t1)
/* 2140B4 801DDE04 00095880 */  sll        $t3, $t1, 2
glabel func_801DDE08_ovl11
/* 2140B8 801DDE08 008B2021 */  addu       $a0, $a0, $t3
/* 2140BC 801DDE0C 0C02A855 */  jal        func_800AA154
.L801DDE10_ovl12:
/* 2140C0 801DDE10 8C84F740 */   lw        $a0, %lo(D_801EF740_ovl16)($a0)
.L801DDE14_ovl16:
/* 2140C4 801DDE14 8ECA0000 */  lw         $t2, 0x0($s6)
.L801DDE18_ovl16:
/* 2140C8 801DDE18 0C067656 */  jal        func_8019D958_ovl7
/* 2140CC 801DDE1C 95440002 */   lhu       $a0, 0x2($t2)
.L801DDE20_ovl17:
/* 2140D0 801DDE20 8FBF0044 */  lw         $ra, 0x44($sp)
/* 2140D4 801DDE24 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 2140D8 801DDE28 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 2140DC 801DDE2C 8FB00024 */  lw         $s0, 0x24($sp)
/* 2140E0 801DDE30 8FB10028 */  lw         $s1, 0x28($sp)
/* 2140E4 801DDE34 8FB2002C */  lw         $s2, 0x2C($sp)
/* 2140E8 801DDE38 8FB30030 */  lw         $s3, 0x30($sp)
.L801DDE3C_ovl13:
/* 2140EC 801DDE3C 8FB40034 */  lw         $s4, 0x34($sp)
/* 2140F0 801DDE40 8FB50038 */  lw         $s5, 0x38($sp)
/* 2140F4 801DDE44 8FB6003C */  lw         $s6, 0x3C($sp)
/* 2140F8 801DDE48 8FB70040 */  lw         $s7, 0x40($sp)
/* 2140FC 801DDE4C 03E00008 */  jr         $ra
/* 214100 801DDE50 27BD0048 */   addiu     $sp, $sp, 0x48
