glabel func_801E3ED4_ovl15
/* 20EA34 801E3ED4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 20EA38 801E3ED8 AFB20028 */  sw         $s2, 0x28($sp)
/* 20EA3C 801E3EDC 3C128005 */  lui        $s2, %hi(D_8004A7C4)
.L801E3EE0_ovl9:
/* 20EA40 801E3EE0 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 20EA44 801E3EE4 8E4E0000 */  lw         $t6, 0x0($s2)
.L801E3EE8_ovl13:
/* 20EA48 801E3EE8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 20EA4C 801E3EEC AFB10024 */  sw         $s1, 0x24($sp)
/* 20EA50 801E3EF0 AFB00020 */  sw         $s0, 0x20($sp)
.L801E3EF4_ovl17:
/* 20EA54 801E3EF4 F7B40018 */  sdc1       $f20, 0x18($sp)
.L801E3EF8_ovl13:
/* 20EA58 801E3EF8 AFA40078 */  sw         $a0, 0x78($sp)
/* 20EA5C 801E3EFC 8DC20000 */  lw         $v0, 0x0($t6)
/* 20EA60 801E3F00 3C11800E */  lui        $s1, %hi(D_800E1B50)
.L801E3F04_ovl13:
/* 20EA64 801E3F04 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 20EA68 801E3F08 00021080 */  sll        $v0, $v0, 2
/* 20EA6C 801E3F0C 02228821 */  addu       $s1, $s1, $v0
.L801E3F10_ovl16:
/* 20EA70 801E3F10 00822021 */  addu       $a0, $a0, $v0
/* 20EA74 801E3F14 3C05800B */  lui        $a1, %hi(func_800B1814)
/* 20EA78 801E3F18 8E311B50 */  lw         $s1, %lo(D_800E1B50)($s1)
/* 20EA7C 801E3F1C 24A51814 */  addiu      $a1, $a1, %lo(func_800B1814)
.L801E3F20_ovl13:
/* 20EA80 801E3F20 0C02C7DA */  jal        func_800B1F68
/* 20EA84 801E3F24 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
.L801E3F28_ovl16:
/* 20EA88 801E3F28 8E500000 */  lw         $s0, 0x0($s2)
.L801E3F2C_ovl13:
/* 20EA8C 801E3F2C 3C0F800B */  lui        $t7, %hi(func_800B7790)
/* 20EA90 801E3F30 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 20EA94 801E3F34 8E180000 */  lw         $t8, 0x0($s0)
.L801E3F38_ovl17:
/* 20EA98 801E3F38 25EF7790 */  addiu      $t7, $t7, %lo(func_800B7790)
/* 20EA9C 801E3F3C 24080001 */  addiu      $t0, $zero, 0x1
/* 20EAA0 801E3F40 0018C880 */  sll        $t9, $t8, 2
/* 20EAA4 801E3F44 00390821 */  addu       $at, $at, $t9
.L801E3F48_ovl10:
/* 20EAA8 801E3F48 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 20EAAC 801E3F4C 8E090000 */  lw         $t1, 0x0($s0)
/* 20EAB0 801E3F50 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 20EAB4 801E3F54 3C0B801E */  lui        $t3, %hi(func_801E48E4_ovl15)
/* 20EAB8 801E3F58 00095080 */  sll        $t2, $t1, 2
/* 20EABC 801E3F5C 002A0821 */  addu       $at, $at, $t2
/* 20EAC0 801E3F60 AC288E60 */  sw         $t0, %lo(D_800E8E60)($at)
/* 20EAC4 801E3F64 8E0C0000 */  lw         $t4, 0x0($s0)
/* 20EAC8 801E3F68 3C01800E */  lui        $at, %hi(D_800DF150)
/* 20EACC 801E3F6C 256B48E4 */  addiu      $t3, $t3, %lo(func_801E48E4_ovl15)
.L801E3F70_ovl10:
/* 20EAD0 801E3F70 000C6880 */  sll        $t5, $t4, 2
/* 20EAD4 801E3F74 002D0821 */  addu       $at, $at, $t5
.L801E3F78_ovl17:
/* 20EAD8 801E3F78 AC2BF150 */  sw         $t3, %lo(D_800DF150)($at)
glabel func_801E3F7C_ovl10
/* 20EADC 801E3F7C 8E180000 */  lw         $t8, 0x0($s0)
/* 20EAE0 801E3F80 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 20EAE4 801E3F84 3C0E801E */  lui        $t6, %hi(D_801DA04C)
.L801E3F88_ovl9:
/* 20EAE8 801E3F88 00187880 */  sll        $t7, $t8, 2
.L801E3F8C_ovl17:
/* 20EAEC 801E3F8C 032FC821 */  addu       $t9, $t9, $t7
/* 20EAF0 801E3F90 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 20EAF4 801E3F94 25CEA04C */  addiu      $t6, $t6, %lo(D_801DA04C)
/* 20EAF8 801E3F98 3C01801E */  lui        $at, %hi(D_801E68F4_ovl15)
/* 20EAFC 801E3F9C AF2E008C */  sw         $t6, 0x8C($t9)
/* 20EB00 801E3FA0 8E500000 */  lw         $s0, 0x0($s2)
/* 20EB04 801E3FA4 C42468F4 */  lwc1       $f4, %lo(D_801E68F4_ovl15)($at)
/* 20EB08 801E3FA8 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L801E3FAC_ovl16:
/* 20EB0C 801E3FAC 8E090000 */  lw         $t1, 0x0($s0)
/* 20EB10 801E3FB0 3C0A800E */  lui        $t2, %hi(D_800E0D50)
glabel func_801E3FB4_ovl9
/* 20EB14 801E3FB4 3C03800E */  lui        $v1, %hi(D_800E17D0)
/* 20EB18 801E3FB8 00094080 */  sll        $t0, $t1, 2
/* 20EB1C 801E3FBC 00280821 */  addu       $at, $at, $t0
/* 20EB20 801E3FC0 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
.L801E3FC4_ovl17:
/* 20EB24 801E3FC4 8E020000 */  lw         $v0, 0x0($s0)
.L801E3FC8_ovl16:
/* 20EB28 801E3FC8 246317D0 */  addiu      $v1, $v1, %lo(D_800E17D0)
.L801E3FCC_ovl17:
/* 20EB2C 801E3FCC 4480A000 */  mtc1       $zero, $f20
/* 20EB30 801E3FD0 00021080 */  sll        $v0, $v0, 2
/* 20EB34 801E3FD4 01425021 */  addu       $t2, $t2, $v0
/* 20EB38 801E3FD8 8D4A0D50 */  lw         $t2, %lo(D_800E0D50)($t2)
/* 20EB3C 801E3FDC 00626821 */  addu       $t5, $v1, $v0
/* 20EB40 801E3FE0 3C01800F */  lui        $at, %hi(D_800E9020)
glabel func_801E3FE4_ovl16
/* 20EB44 801E3FE4 000A6080 */  sll        $t4, $t2, 2
/* 20EB48 801E3FE8 006C5821 */  addu       $t3, $v1, $t4
/* 20EB4C 801E3FEC C5660000 */  lwc1       $f6, 0x0($t3)
/* 20EB50 801E3FF0 E5A60000 */  swc1       $f6, 0x0($t5)
.L801E3FF4_ovl16:
/* 20EB54 801E3FF4 8E180000 */  lw         $t8, 0x0($s0)
/* 20EB58 801E3FF8 00187880 */  sll        $t7, $t8, 2
/* 20EB5C 801E3FFC 002F0821 */  addu       $at, $at, $t7
.L801E4000_ovl16:
/* 20EB60 801E4000 0C02CCFD */  jal        func_800B33F4
/* 20EB64 801E4004 E4349020 */   swc1      $f20, %lo(D_800E9020)($at)
/* 20EB68 801E4008 8E500000 */  lw         $s0, 0x0($s2)
.L801E400C_ovl17:
/* 20EB6C 801E400C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 20EB70 801E4010 44814000 */  mtc1       $at, $f8
/* 20EB74 801E4014 8E0E0000 */  lw         $t6, 0x0($s0)
/* 20EB78 801E4018 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 20EB7C 801E401C 24180002 */  addiu      $t8, $zero, 0x2
.L801E4020_ovl17:
/* 20EB80 801E4020 000EC880 */  sll        $t9, $t6, 2
glabel func_801E4024_ovl16
/* 20EB84 801E4024 00390821 */  addu       $at, $at, $t9
/* 20EB88 801E4028 E4286A10 */  swc1       $f8, %lo(D_800E6A10)($at)
/* 20EB8C 801E402C 8E090000 */  lw         $t1, 0x0($s0)
glabel func_801E4030_ovl17
/* 20EB90 801E4030 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 20EB94 801E4034 00094080 */  sll        $t0, $t1, 2
/* 20EB98 801E4038 00280821 */  addu       $at, $at, $t0
/* 20EB9C 801E403C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 20EBA0 801E4040 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20EBA4 801E4044 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 20EBA8 801E4048 000A6080 */  sll        $t4, $t2, 2
/* 20EBAC 801E404C 002C0821 */  addu       $at, $at, $t4
/* 20EBB0 801E4050 AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
/* 20EBB4 801E4054 8E0B0000 */  lw         $t3, 0x0($s0)
/* 20EBB8 801E4058 3C01800F */  lui        $at, %hi(D_800EA360)
/* 20EBBC 801E405C 000B6880 */  sll        $t5, $t3, 2
/* 20EBC0 801E4060 002D0821 */  addu       $at, $at, $t5
/* 20EBC4 801E4064 AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
/* 20EBC8 801E4068 8E0F0000 */  lw         $t7, 0x0($s0)
glabel func_801E406C_ovl16
/* 20EBCC 801E406C 3C01800F */  lui        $at, %hi(D_800EA520)
/* 20EBD0 801E4070 000F7080 */  sll        $t6, $t7, 2
/* 20EBD4 801E4074 002E0821 */  addu       $at, $at, $t6
/* 20EBD8 801E4078 0C066E6C */  jal        func_8019B9B0_ovl7
/* 20EBDC 801E407C AC38A520 */   sw        $t8, %lo(D_800EA520)($at)
/* 20EBE0 801E4080 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* 20EBE4 801E4084 44815000 */  mtc1       $at, $f10
/* 20EBE8 801E4088 8E390080 */  lw         $t9, 0x80($s1)
.L801E408C_ovl10:
/* 20EBEC 801E408C 3C040001 */  lui        $a0, (0x10091 >> 16)
/* 20EBF0 801E4090 34840091 */  ori        $a0, $a0, (0x10091 & 0xFFFF)
/* 20EBF4 801E4094 24050023 */  addiu      $a1, $zero, 0x23
/* 20EBF8 801E4098 24060010 */  addiu      $a2, $zero, 0x10
glabel func_801E409C_ovl10
/* 20EBFC 801E409C 0C02A619 */  jal        func_800A9864
/* 20EC00 801E40A0 E72A0010 */   swc1      $f10, 0x10($t9)
/* 20EC04 801E40A4 8E490000 */  lw         $t1, 0x0($s2)
/* 20EC08 801E40A8 3C0C800F */  lui        $t4, %hi(D_800E9AA0)
/* 20EC0C 801E40AC 3C04801E */  lui        $a0, %hi(func_801E66E0_ovl10 + 0x34)
/* 20EC10 801E40B0 8D280000 */  lw         $t0, 0x0($t1)
/* 20EC14 801E40B4 00085080 */  sll        $t2, $t0, 2
/* 20EC18 801E40B8 018A6021 */  addu       $t4, $t4, $t2
/* 20EC1C 801E40BC 8D8C9AA0 */  lw         $t4, %lo(D_800E9AA0)($t4)
/* 20EC20 801E40C0 000C5880 */  sll        $t3, $t4, 2
/* 20EC24 801E40C4 008B2021 */  addu       $a0, $a0, $t3
/* 20EC28 801E40C8 0C02A806 */  jal        func_800AA018
.L801E40CC_ovl10:
/* 20EC2C 801E40CC 8C846714 */   lw        $a0, %lo(func_801E66E0_ovl10 + 0x34)($a0)
/* 20EC30 801E40D0 3C10800D */  lui        $s0, %hi(D_800D7098)
/* 20EC34 801E40D4 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 20EC38 801E40D8 8E0D0024 */  lw         $t5, 0x24($s0)
.L801E40DC_ovl16:
/* 20EC3C 801E40DC 5DA00007 */  bgtzl      $t5, .L801E40FC_ovl15
/* 20EC40 801E40E0 8E500000 */   lw        $s0, 0x0($s2)
.L801E40E4_ovl15:
/* 20EC44 801E40E4 0C002DAF */  jal        finish_current_thread
/* 20EC48 801E40E8 24040001 */   addiu     $a0, $zero, 0x1
/* 20EC4C 801E40EC 8E0F0024 */  lw         $t7, 0x24($s0)
.L801E40F0_ovl10:
/* 20EC50 801E40F0 19E0FFFC */  blez       $t7, .L801E40E4_ovl15
glabel func_801E40F4_ovl17
/* 20EC54 801E40F4 00000000 */   nop
/* 20EC58 801E40F8 8E500000 */  lw         $s0, 0x0($s2)
.L801E40FC_ovl15:
/* 20EC5C 801E40FC 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801E4100_ovl16:
/* 20EC60 801E4100 24180001 */  addiu      $t8, $zero, 0x1
/* 20EC64 801E4104 8E0E0000 */  lw         $t6, 0x0($s0)
/* 20EC68 801E4108 3C09800F */  lui        $t1, %hi(D_800E9C60)
/* 20EC6C 801E410C 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
/* 20EC70 801E4110 000EC880 */  sll        $t9, $t6, 2
/* 20EC74 801E4114 00390821 */  addu       $at, $at, $t9
/* 20EC78 801E4118 AC3898E0 */  sw         $t8, %lo(D_800E98E0)($at)
/* 20EC7C 801E411C 8E020000 */  lw         $v0, 0x0($s0)
.L801E4120_ovl16:
/* 20EC80 801E4120 3C01801E */  lui        $at, %hi(.L801E6754_ovl16)
/* 20EC84 801E4124 24180010 */  addiu      $t8, $zero, 0x10
.L801E4128_ovl17:
/* 20EC88 801E4128 00021080 */  sll        $v0, $v0, 2
/* 20EC8C 801E412C 01224821 */  addu       $t1, $t1, $v0
.L801E4130_ovl16:
/* 20EC90 801E4130 8D299C60 */  lw         $t1, %lo(D_800E9C60)($t1)
/* 20EC94 801E4134 27A40044 */  addiu      $a0, $sp, 0x44
/* 20EC98 801E4138 00094080 */  sll        $t0, $t1, 2
.L801E413C_ovl16:
/* 20EC9C 801E413C 00280821 */  addu       $at, $at, $t0
/* 20ECA0 801E4140 C4306754 */  lwc1       $f16, %lo(.L801E6754_ovl16)($at)
/* 20ECA4 801E4144 3C01800F */  lui        $at, %hi(D_800EA360)
glabel func_801E4148_ovl16
/* 20ECA8 801E4148 00220821 */  addu       $at, $at, $v0
/* 20ECAC 801E414C 4600848D */  trunc.w.s  $f18, $f16
/* 20ECB0 801E4150 440C9000 */  mfc1       $t4, $f18
/* 20ECB4 801E4154 00000000 */  nop
/* 20ECB8 801E4158 AC2CA360 */  sw         $t4, %lo(D_800EA360)($at)
/* 20ECBC 801E415C 8E0B0000 */  lw         $t3, 0x0($s0)
/* 20ECC0 801E4160 3C01801E */  lui        $at, %hi(func_801E66E0_ovl10 + 0x44)
/* 20ECC4 801E4164 AFB80070 */  sw         $t8, 0x70($sp)
/* 20ECC8 801E4168 000B6880 */  sll        $t5, $t3, 2
/* 20ECCC 801E416C 01ED7821 */  addu       $t7, $t7, $t5
.L801E4170_ovl13:
/* 20ECD0 801E4170 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
/* 20ECD4 801E4174 000F7080 */  sll        $t6, $t7, 2
glabel func_801E4178_ovl17
/* 20ECD8 801E4178 002E0821 */  addu       $at, $at, $t6
/* 20ECDC 801E417C C4246724 */  lwc1       $f4, %lo(func_801E66E0_ovl10 + 0x44)($at)
/* 20ECE0 801E4180 0C067BB9 */  jal        func_8019EEE4_ovl7
/* 20ECE4 801E4184 E7A4006C */   swc1      $f4, 0x6C($sp)
/* 20ECE8 801E4188 8E500000 */  lw         $s0, 0x0($s2)
/* 20ECEC 801E418C 3C11800E */  lui        $s1, %hi(D_800DFBD0)
.L801E4190_ovl9:
/* 20ECF0 801E4190 2631FBD0 */  addiu      $s1, $s1, %lo(D_800DFBD0)
/* 20ECF4 801E4194 8E020000 */  lw         $v0, 0x0($s0)
.L801E4198_ovl13:
/* 20ECF8 801E4198 00021080 */  sll        $v0, $v0, 2
.L801E419C_ovl9:
/* 20ECFC 801E419C 0222C821 */  addu       $t9, $s1, $v0
/* 20ED00 801E41A0 8F290000 */  lw         $t1, 0x0($t9)
/* 20ED04 801E41A4 8D280004 */  lw         $t0, 0x4($t1)
/* 20ED08 801E41A8 C506001C */  lwc1       $f6, 0x1C($t0)
/* 20ED0C 801E41AC 4614303C */  c.lt.s     $f6, $f20
/* 20ED10 801E41B0 00000000 */  nop
/* 20ED14 801E41B4 45020008 */  bc1fl      .L801E41D8_ovl15
/* 20ED18 801E41B8 C7B00064 */   lwc1      $f16, 0x64($sp)
/* 20ED1C 801E41BC C7A80064 */  lwc1       $f8, 0x64($sp)
.L801E41C0_ovl9:
/* 20ED20 801E41C0 3C01800F */  lui        $at, %hi(D_800EA6E0)
glabel func_801E41C4_ovl17
/* 20ED24 801E41C4 00220821 */  addu       $at, $at, $v0
/* 20ED28 801E41C8 46004287 */  neg.s      $f10, $f8
/* 20ED2C 801E41CC 10000005 */  b          .L801E41E4_ovl15
/* 20ED30 801E41D0 E42AA6E0 */   swc1      $f10, %lo(D_800EA6E0)($at)
.L801E41D4_ovl9:
/* 20ED34 801E41D4 C7B00064 */  lwc1       $f16, 0x64($sp)
.L801E41D8_ovl15:
/* 20ED38 801E41D8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 20ED3C 801E41DC 00220821 */  addu       $at, $at, $v0
/* 20ED40 801E41E0 E430A6E0 */  swc1       $f16, %lo(D_800EA6E0)($at)
.L801E41E4_ovl15:
/* 20ED44 801E41E4 8E020000 */  lw         $v0, 0x0($s0)
.L801E41E8_ovl9:
/* 20ED48 801E41E8 00021080 */  sll        $v0, $v0, 2
.L801E41EC_ovl9:
/* 20ED4C 801E41EC 02225021 */  addu       $t2, $s1, $v0
/* 20ED50 801E41F0 8D4C0000 */  lw         $t4, 0x0($t2)
/* 20ED54 801E41F4 8D8B0004 */  lw         $t3, 0x4($t4)
/* 20ED58 801E41F8 C572001C */  lwc1       $f18, 0x1C($t3)
/* 20ED5C 801E41FC 4614903C */  c.lt.s     $f18, $f20
/* 20ED60 801E4200 00000000 */  nop
.L801E4204_ovl13:
/* 20ED64 801E4204 45020007 */  bc1fl      .L801E4224_ovl15
/* 20ED68 801E4208 C7A60068 */   lwc1      $f6, 0x68($sp)
/* 20ED6C 801E420C C7A40068 */  lwc1       $f4, 0x68($sp)
/* 20ED70 801E4210 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 20ED74 801E4214 00220821 */  addu       $at, $at, $v0
/* 20ED78 801E4218 10000006 */  b          .L801E4234_ovl15
/* 20ED7C 801E421C E424AC20 */   swc1      $f4, %lo(D_800EAC20)($at)
/* 20ED80 801E4220 C7A60068 */  lwc1       $f6, 0x68($sp)
.L801E4224_ovl15:
/* 20ED84 801E4224 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 20ED88 801E4228 00220821 */  addu       $at, $at, $v0
.L801E422C_ovl13:
/* 20ED8C 801E422C 46003207 */  neg.s      $f8, $f6
.L801E4230_ovl9:
/* 20ED90 801E4230 E428AC20 */  swc1       $f8, %lo(D_800EAC20)($at)
.L801E4234_ovl15:
/* 20ED94 801E4234 8E0D0000 */  lw         $t5, 0x0($s0)
/* 20ED98 801E4238 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
.L801E423C_ovl9:
/* 20ED9C 801E423C 3C01801E */  lui        $at, %hi(func_801E66E0_ovl10 + 0x54)
/* 20EDA0 801E4240 000D7880 */  sll        $t7, $t5, 2
/* 20EDA4 801E4244 01CF7021 */  addu       $t6, $t6, $t7
/* 20EDA8 801E4248 8DCE9AA0 */  lw         $t6, %lo(D_800E9AA0)($t6)
/* 20EDAC 801E424C 24190010 */  addiu      $t9, $zero, 0x10
/* 20EDB0 801E4250 AFB90070 */  sw         $t9, 0x70($sp)
/* 20EDB4 801E4254 000EC080 */  sll        $t8, $t6, 2
/* 20EDB8 801E4258 00380821 */  addu       $at, $at, $t8
.L801E425C_ovl17:
/* 20EDBC 801E425C C42A6734 */  lwc1       $f10, %lo(func_801E66E0_ovl10 + 0x54)($at)
.L801E4260_ovl9:
/* 20EDC0 801E4260 27A40044 */  addiu      $a0, $sp, 0x44
/* 20EDC4 801E4264 0C067BB9 */  jal        func_8019EEE4_ovl7
/* 20EDC8 801E4268 E7AA006C */   swc1      $f10, 0x6C($sp)
glabel func_801E426C_ovl13
/* 20EDCC 801E426C 8E500000 */  lw         $s0, 0x0($s2)
.L801E4270_ovl16:
/* 20EDD0 801E4270 C7B00064 */  lwc1       $f16, 0x64($sp)
glabel func_801E4274_ovl17
/* 20EDD4 801E4274 3C01800F */  lui        $at, %hi(D_800EA8A0)
.L801E4278_ovl10:
/* 20EDD8 801E4278 8E090000 */  lw         $t1, 0x0($s0)
glabel func_801E427C_ovl17
/* 20EDDC 801E427C C7B20068 */  lwc1       $f18, 0x68($sp)
.L801E4280_ovl9:
/* 20EDE0 801E4280 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
glabel func_801E4284_ovl10
/* 20EDE4 801E4284 00094080 */  sll        $t0, $t1, 2
/* 20EDE8 801E4288 00280821 */  addu       $at, $at, $t0
/* 20EDEC 801E428C E430A8A0 */  swc1       $f16, %lo(D_800EA8A0)($at)
/* 20EDF0 801E4290 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20EDF4 801E4294 46009107 */  neg.s      $f4, $f18
/* 20EDF8 801E4298 3C01800F */  lui        $at, %hi(D_800EADE0)
glabel func_801E429C_ovl9
/* 20EDFC 801E429C 000A6080 */  sll        $t4, $t2, 2
/* 20EE00 801E42A0 002C0821 */  addu       $at, $at, $t4
/* 20EE04 801E42A4 E424ADE0 */  swc1       $f4, %lo(D_800EADE0)($at)
/* 20EE08 801E42A8 8E0B0000 */  lw         $t3, 0x0($s0)
/* 20EE0C 801E42AC 3C01801E */  lui        $at, %hi(.L801E6744_ovl15)
/* 20EE10 801E42B0 24180010 */  addiu      $t8, $zero, 0x10
/* 20EE14 801E42B4 000B6880 */  sll        $t5, $t3, 2
/* 20EE18 801E42B8 01ED7821 */  addu       $t7, $t7, $t5
/* 20EE1C 801E42BC 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
/* 20EE20 801E42C0 AFB80070 */  sw         $t8, 0x70($sp)
/* 20EE24 801E42C4 27A40044 */  addiu      $a0, $sp, 0x44
/* 20EE28 801E42C8 000F7080 */  sll        $t6, $t7, 2
glabel func_801E42CC_ovl17
/* 20EE2C 801E42CC 002E0821 */  addu       $at, $at, $t6
.L801E42D0_ovl16:
/* 20EE30 801E42D0 C4266744 */  lwc1       $f6, %lo(.L801E6744_ovl15)($at)
.L801E42D4_ovl10:
/* 20EE34 801E42D4 0C067BB9 */  jal        func_8019EEE4_ovl7
.L801E42D8_ovl10:
/* 20EE38 801E42D8 E7A6006C */   swc1      $f6, 0x6C($sp)
/* 20EE3C 801E42DC 8E500000 */  lw         $s0, 0x0($s2)
/* 20EE40 801E42E0 8E020000 */  lw         $v0, 0x0($s0)
glabel func_801E42E4_ovl10
/* 20EE44 801E42E4 00021080 */  sll        $v0, $v0, 2
/* 20EE48 801E42E8 0222C821 */  addu       $t9, $s1, $v0
glabel func_801E42EC_ovl17
/* 20EE4C 801E42EC 8F290000 */  lw         $t1, 0x0($t9)
/* 20EE50 801E42F0 8D280004 */  lw         $t0, 0x4($t1)
.L801E42F4_ovl13:
/* 20EE54 801E42F4 C5080024 */  lwc1       $f8, 0x24($t0)
/* 20EE58 801E42F8 4614403C */  c.lt.s     $f8, $f20
/* 20EE5C 801E42FC 00000000 */  nop
.L801E4300_ovl16:
/* 20EE60 801E4300 45020007 */  bc1fl      .L801E4320_ovl15
/* 20EE64 801E4304 C7B00064 */   lwc1      $f16, 0x64($sp)
/* 20EE68 801E4308 C7AA0064 */  lwc1       $f10, 0x64($sp)
/* 20EE6C 801E430C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 20EE70 801E4310 00220821 */  addu       $at, $at, $v0
/* 20EE74 801E4314 10000006 */  b          .L801E4330_ovl15
/* 20EE78 801E4318 E42AAA60 */   swc1      $f10, %lo(D_800EAA60)($at)
/* 20EE7C 801E431C C7B00064 */  lwc1       $f16, 0x64($sp)
.L801E4320_ovl15:
/* 20EE80 801E4320 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 20EE84 801E4324 00220821 */  addu       $at, $at, $v0
/* 20EE88 801E4328 46008487 */  neg.s      $f18, $f16
/* 20EE8C 801E432C E432AA60 */  swc1       $f18, %lo(D_800EAA60)($at)
.L801E4330_ovl15:
/* 20EE90 801E4330 8E020000 */  lw         $v0, 0x0($s0)
/* 20EE94 801E4334 00021080 */  sll        $v0, $v0, 2
/* 20EE98 801E4338 02225021 */  addu       $t2, $s1, $v0
/* 20EE9C 801E433C 8D4C0000 */  lw         $t4, 0x0($t2)
/* 20EEA0 801E4340 8D8B0004 */  lw         $t3, 0x4($t4)
/* 20EEA4 801E4344 C5640024 */  lwc1       $f4, 0x24($t3)
.L801E4348_ovl9:
/* 20EEA8 801E4348 4614203C */  c.lt.s     $f4, $f20
/* 20EEAC 801E434C 00000000 */  nop
glabel func_801E4350_ovl16
/* 20EEB0 801E4350 45020008 */  bc1fl      .L801E4374_ovl15
/* 20EEB4 801E4354 C7AA0068 */   lwc1      $f10, 0x68($sp)
glabel func_801E4358_ovl17
/* 20EEB8 801E4358 C7A60068 */  lwc1       $f6, 0x68($sp)
/* 20EEBC 801E435C 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 20EEC0 801E4360 00220821 */  addu       $at, $at, $v0
/* 20EEC4 801E4364 46003207 */  neg.s      $f8, $f6
/* 20EEC8 801E4368 10000005 */  b          .L801E4380_ovl15
/* 20EECC 801E436C E428AFA0 */   swc1      $f8, %lo(D_800EAFA0)($at)
/* 20EED0 801E4370 C7AA0068 */  lwc1       $f10, 0x68($sp)
.L801E4374_ovl15:
/* 20EED4 801E4374 3C01800F */  lui        $at, %hi(D_800EAFA0)
glabel func_801E4378_ovl17
/* 20EED8 801E4378 00220821 */  addu       $at, $at, $v0
/* 20EEDC 801E437C E42AAFA0 */  swc1       $f10, %lo(D_800EAFA0)($at)
.L801E4380_ovl15:
/* 20EEE0 801E4380 8E020000 */  lw         $v0, 0x0($s0)
/* 20EEE4 801E4384 3C013D80 */  lui        $at, (0x3D800000 >> 16)
.L801E4388_ovl9:
/* 20EEE8 801E4388 44810000 */  mtc1       $at, $f0
/* 20EEEC 801E438C 00021080 */  sll        $v0, $v0, 2
/* 20EEF0 801E4390 02226821 */  addu       $t5, $s1, $v0
/* 20EEF4 801E4394 8DAF0000 */  lw         $t7, 0x0($t5)
/* 20EEF8 801E4398 3C01801E */  lui        $at, %hi(D_801E68F8_ovl15)
/* 20EEFC 801E439C C43268F8 */  lwc1       $f18, %lo(D_801E68F8_ovl15)($at)
/* 20EF00 801E43A0 8DEE0004 */  lw         $t6, 0x4($t7)
/* 20EF04 801E43A4 3C01800F */  lui        $at, %hi(D_800EB160)
.L801E43A8_ovl13:
/* 20EF08 801E43A8 00220821 */  addu       $at, $at, $v0
/* 20EF0C 801E43AC C5D00030 */  lwc1       $f16, 0x30($t6)
/* 20EF10 801E43B0 3C08800F */  lui        $t0, %hi(D_800E9C60)
/* 20EF14 801E43B4 24040010 */  addiu      $a0, $zero, 0x10
/* 20EF18 801E43B8 46128101 */  sub.s      $f4, $f16, $f18
/* 20EF1C 801E43BC 46002182 */  mul.s      $f6, $f4, $f0
/* 20EF20 801E43C0 46003207 */  neg.s      $f8, $f6
/* 20EF24 801E43C4 E428B160 */  swc1       $f8, %lo(D_800EB160)($at)
/* 20EF28 801E43C8 8E020000 */  lw         $v0, 0x0($s0)
/* 20EF2C 801E43CC 3C01800F */  lui        $at, %hi(D_800EB320)
/* 20EF30 801E43D0 00021080 */  sll        $v0, $v0, 2
/* 20EF34 801E43D4 0222C021 */  addu       $t8, $s1, $v0
/* 20EF38 801E43D8 8F190000 */  lw         $t9, 0x0($t8)
/* 20EF3C 801E43DC 00220821 */  addu       $at, $at, $v0
/* 20EF40 801E43E0 8F290004 */  lw         $t1, 0x4($t9)
/* 20EF44 801E43E4 C52A0038 */  lwc1       $f10, 0x38($t1)
/* 20EF48 801E43E8 46005402 */  mul.s      $f16, $f10, $f0
/* 20EF4C 801E43EC 46008487 */  neg.s      $f18, $f16
/* 20EF50 801E43F0 E432B320 */  swc1       $f18, %lo(D_800EB320)($at)
/* 20EF54 801E43F4 8E020000 */  lw         $v0, 0x0($s0)
/* 20EF58 801E43F8 3C01801E */  lui        $at, %hi(D_801E6774_ovl15)
/* 20EF5C 801E43FC 00021080 */  sll        $v0, $v0, 2
/* 20EF60 801E4400 01024021 */  addu       $t0, $t0, $v0
/* 20EF64 801E4404 8D089C60 */  lw         $t0, %lo(D_800E9C60)($t0)
/* 20EF68 801E4408 00085080 */  sll        $t2, $t0, 2
.L801E440C_ovl13:
/* 20EF6C 801E440C 002A0821 */  addu       $at, $at, $t2
/* 20EF70 801E4410 C4246774 */  lwc1       $f4, %lo(D_801E6774_ovl15)($at)
.L801E4414_ovl16:
/* 20EF74 801E4414 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20EF78 801E4418 00220821 */  addu       $at, $at, $v0
/* 20EF7C 801E441C 0C002DAF */  jal        finish_current_thread
/* 20EF80 801E4420 E4243050 */   swc1      $f4, %lo(D_800E3050)($at)
glabel func_801E4424_ovl13
/* 20EF84 801E4424 0C02BB30 */  jal        func_800AECC0
.L801E4428_ovl17:
/* 20EF88 801E4428 4600A306 */   mov.s     $f12, $f20
.L801E442C_ovl9:
/* 20EF8C 801E442C 0C02BB48 */  jal        func_800AED20
/* 20EF90 801E4430 4600A306 */   mov.s     $f12, $f20
/* 20EF94 801E4434 8E500000 */  lw         $s0, 0x0($s2)
.L801E4438_ovl9:
/* 20EF98 801E4438 3C01800F */  lui        $at, %hi(D_800EB160)
/* 20EF9C 801E443C 27A40044 */  addiu      $a0, $sp, 0x44
/* 20EFA0 801E4440 8E0C0000 */  lw         $t4, 0x0($s0)
/* 20EFA4 801E4444 000C5880 */  sll        $t3, $t4, 2
/* 20EFA8 801E4448 002B0821 */  addu       $at, $at, $t3
/* 20EFAC 801E444C E434B160 */  swc1       $f20, %lo(D_800EB160)($at)
/* 20EFB0 801E4450 8E0D0000 */  lw         $t5, 0x0($s0)
/* 20EFB4 801E4454 3C01800F */  lui        $at, %hi(D_800EB320)
/* 20EFB8 801E4458 3C0B800F */  lui        $t3, %hi(D_800EA360)
.L801E445C_ovl9:
/* 20EFBC 801E445C 000D7880 */  sll        $t7, $t5, 2
.L801E4460_ovl13:
/* 20EFC0 801E4460 002F0821 */  addu       $at, $at, $t7
/* 20EFC4 801E4464 E434B320 */  swc1       $f20, %lo(D_800EB320)($at)
/* 20EFC8 801E4468 8E0E0000 */  lw         $t6, 0x0($s0)
/* 20EFCC 801E446C 000EC080 */  sll        $t8, $t6, 2
.L801E4470_ovl9:
/* 20EFD0 801E4470 0238C821 */  addu       $t9, $s1, $t8
/* 20EFD4 801E4474 8F290000 */  lw         $t1, 0x0($t9)
/* 20EFD8 801E4478 8D280004 */  lw         $t0, 0x4($t1)
/* 20EFDC 801E447C C506001C */  lwc1       $f6, 0x1C($t0)
glabel func_801E4480_ovl17
/* 20EFE0 801E4480 E7A6006C */  swc1       $f6, 0x6C($sp)
.L801E4484_ovl9:
/* 20EFE4 801E4484 8E0A0000 */  lw         $t2, 0x0($s0)
glabel func_801E4488_ovl17
/* 20EFE8 801E4488 000A6080 */  sll        $t4, $t2, 2
.L801E448C_ovl13:
/* 20EFEC 801E448C 016C5821 */  addu       $t3, $t3, $t4
/* 20EFF0 801E4490 8D6BA360 */  lw         $t3, %lo(D_800EA360)($t3)
/* 20EFF4 801E4494 0C067BB9 */  jal        func_8019EEE4_ovl7
.L801E4498_ovl16:
/* 20EFF8 801E4498 AFAB0070 */   sw        $t3, 0x70($sp)
/* 20EFFC 801E449C 8E500000 */  lw         $s0, 0x0($s2)
glabel func_801E44A0_ovl13
/* 20F000 801E44A0 3C01800F */  lui        $at, %hi(D_800EA6E0)
.L801E44A4_ovl10:
/* 20F004 801E44A4 C7B20068 */  lwc1       $f18, 0x68($sp)
/* 20F008 801E44A8 8E0D0000 */  lw         $t5, 0x0($s0)
/* 20F00C 801E44AC C7AA0068 */  lwc1       $f10, 0x68($sp)
/* 20F010 801E44B0 000D7880 */  sll        $t7, $t5, 2
.L801E44B4_ovl16:
/* 20F014 801E44B4 002F0821 */  addu       $at, $at, $t7
/* 20F018 801E44B8 E434A6E0 */  swc1       $f20, %lo(D_800EA6E0)($at)
/* 20F01C 801E44BC 8E020000 */  lw         $v0, 0x0($s0)
/* 20F020 801E44C0 3C01800F */  lui        $at, %hi(D_800EAC20)
.L801E44C4_ovl9:
/* 20F024 801E44C4 00021080 */  sll        $v0, $v0, 2
.L801E44C8_ovl10:
/* 20F028 801E44C8 02227021 */  addu       $t6, $s1, $v0
/* 20F02C 801E44CC 8DD80000 */  lw         $t8, 0x0($t6)
.L801E44D0_ovl16:
/* 20F030 801E44D0 00220821 */  addu       $at, $at, $v0
.L801E44D4_ovl17:
/* 20F034 801E44D4 8F190004 */  lw         $t9, 0x4($t8)
/* 20F038 801E44D8 C728001C */  lwc1       $f8, 0x1C($t9)
/* 20F03C 801E44DC 4608A03C */  c.lt.s     $f20, $f8
.L801E44E0_ovl16:
/* 20F040 801E44E0 00000000 */  nop
.L801E44E4_ovl16:
/* 20F044 801E44E4 45000006 */  bc1f       .L801E4500_ovl15
/* 20F048 801E44E8 00000000 */   nop
/* 20F04C 801E44EC 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 20F050 801E44F0 46005407 */  neg.s      $f16, $f10
.L801E44F4_ovl9:
/* 20F054 801E44F4 00220821 */  addu       $at, $at, $v0
.L801E44F8_ovl9:
/* 20F058 801E44F8 10000002 */  b          .L801E4504_ovl15
/* 20F05C 801E44FC E430AC20 */   swc1      $f16, %lo(D_800EAC20)($at)
.L801E4500_ovl15:
/* 20F060 801E4500 E432AC20 */  swc1       $f18, %lo(D_800EAC20)($at)
.L801E4504_ovl15:
/* 20F064 801E4504 8E090000 */  lw         $t1, 0x0($s0)
.L801E4508_ovl9:
/* 20F068 801E4508 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 20F06C 801E450C 44813000 */  mtc1       $at, $f6
/* 20F070 801E4510 00094080 */  sll        $t0, $t1, 2
/* 20F074 801E4514 02285021 */  addu       $t2, $s1, $t0
glabel func_801E4518_ovl17
/* 20F078 801E4518 8D4C0000 */  lw         $t4, 0x0($t2)
.L801E451C_ovl9:
/* 20F07C 801E451C 3C0E800F */  lui        $t6, %hi(D_800EA360)
.L801E4520_ovl16:
/* 20F080 801E4520 27A40044 */  addiu      $a0, $sp, 0x44
/* 20F084 801E4524 8D8B0004 */  lw         $t3, 0x4($t4)
/* 20F088 801E4528 C5640020 */  lwc1       $f4, 0x20($t3)
/* 20F08C 801E452C 46062201 */  sub.s      $f8, $f4, $f6
/* 20F090 801E4530 E7A8006C */  swc1       $f8, 0x6C($sp)
/* 20F094 801E4534 8E0D0000 */  lw         $t5, 0x0($s0)
/* 20F098 801E4538 000D7880 */  sll        $t7, $t5, 2
.L801E453C_ovl17:
/* 20F09C 801E453C 01CF7021 */  addu       $t6, $t6, $t7
/* 20F0A0 801E4540 8DCEA360 */  lw         $t6, %lo(D_800EA360)($t6)
/* 20F0A4 801E4544 0C067BB9 */  jal        func_8019EEE4_ovl7
/* 20F0A8 801E4548 AFAE0070 */   sw        $t6, 0x70($sp)
/* 20F0AC 801E454C 8E500000 */  lw         $s0, 0x0($s2)
.L801E4550_ovl16:
/* 20F0B0 801E4550 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 20F0B4 801E4554 C7A40068 */  lwc1       $f4, 0x68($sp)
/* 20F0B8 801E4558 8E180000 */  lw         $t8, 0x0($s0)
/* 20F0BC 801E455C C7B00068 */  lwc1       $f16, 0x68($sp)
/* 20F0C0 801E4560 0018C880 */  sll        $t9, $t8, 2
.L801E4564_ovl16:
/* 20F0C4 801E4564 00390821 */  addu       $at, $at, $t9
/* 20F0C8 801E4568 E434A8A0 */  swc1       $f20, %lo(D_800EA8A0)($at)
/* 20F0CC 801E456C 8E020000 */  lw         $v0, 0x0($s0)
/* 20F0D0 801E4570 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 20F0D4 801E4574 00021080 */  sll        $v0, $v0, 2
.L801E4578_ovl16:
/* 20F0D8 801E4578 02224821 */  addu       $t1, $s1, $v0
.L801E457C_ovl13:
/* 20F0DC 801E457C 8D280000 */  lw         $t0, 0x0($t1)
/* 20F0E0 801E4580 00220821 */  addu       $at, $at, $v0
/* 20F0E4 801E4584 8D0A0004 */  lw         $t2, 0x4($t0)
/* 20F0E8 801E4588 C54A0020 */  lwc1       $f10, 0x20($t2)
/* 20F0EC 801E458C 460AA03C */  c.lt.s     $f20, $f10
/* 20F0F0 801E4590 00000000 */  nop
/* 20F0F4 801E4594 45000006 */  bc1f       .L801E45B0_ovl15
/* 20F0F8 801E4598 00000000 */   nop
/* 20F0FC 801E459C 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 20F100 801E45A0 46008487 */  neg.s      $f18, $f16
/* 20F104 801E45A4 00220821 */  addu       $at, $at, $v0
/* 20F108 801E45A8 10000002 */  b          .L801E45B4_ovl15
/* 20F10C 801E45AC E432ADE0 */   swc1      $f18, %lo(D_800EADE0)($at)
.L801E45B0_ovl15:
/* 20F110 801E45B0 E424ADE0 */  swc1       $f4, %lo(D_800EADE0)($at)
.L801E45B4_ovl15:
/* 20F114 801E45B4 8E0C0000 */  lw         $t4, 0x0($s0)
glabel func_801E45B8_ovl13
/* 20F118 801E45B8 3C09800F */  lui        $t1, %hi(D_800EA360)
/* 20F11C 801E45BC 27A40044 */  addiu      $a0, $sp, 0x44
/* 20F120 801E45C0 000C5880 */  sll        $t3, $t4, 2
.L801E45C4_ovl16:
/* 20F124 801E45C4 022B6821 */  addu       $t5, $s1, $t3
/* 20F128 801E45C8 8DAF0000 */  lw         $t7, 0x0($t5)
/* 20F12C 801E45CC 8DEE0004 */  lw         $t6, 0x4($t7)
/* 20F130 801E45D0 C5C60024 */  lwc1       $f6, 0x24($t6)
.L801E45D4_ovl9:
/* 20F134 801E45D4 E7A6006C */  swc1       $f6, 0x6C($sp)
/* 20F138 801E45D8 8E180000 */  lw         $t8, 0x0($s0)
.L801E45DC_ovl16:
/* 20F13C 801E45DC 0018C880 */  sll        $t9, $t8, 2
.L801E45E0_ovl17:
/* 20F140 801E45E0 01394821 */  addu       $t1, $t1, $t9
.L801E45E4_ovl10:
/* 20F144 801E45E4 8D29A360 */  lw         $t1, %lo(D_800EA360)($t1)
.L801E45E8_ovl17:
/* 20F148 801E45E8 0C067BB9 */  jal        func_8019EEE4_ovl7
.L801E45EC_ovl16:
/* 20F14C 801E45EC AFA90070 */   sw        $t1, 0x70($sp)
/* 20F150 801E45F0 8E500000 */  lw         $s0, 0x0($s2)
/* 20F154 801E45F4 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 20F158 801E45F8 C7B20068 */  lwc1       $f18, 0x68($sp)
.L801E45FC_ovl9:
/* 20F15C 801E45FC 8E080000 */  lw         $t0, 0x0($s0)
/* 20F160 801E4600 C7AA0068 */  lwc1       $f10, 0x68($sp)
/* 20F164 801E4604 00085080 */  sll        $t2, $t0, 2
/* 20F168 801E4608 002A0821 */  addu       $at, $at, $t2
/* 20F16C 801E460C E434AA60 */  swc1       $f20, %lo(D_800EAA60)($at)
/* 20F170 801E4610 8E020000 */  lw         $v0, 0x0($s0)
/* 20F174 801E4614 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 20F178 801E4618 00021080 */  sll        $v0, $v0, 2
/* 20F17C 801E461C 02226021 */  addu       $t4, $s1, $v0
/* 20F180 801E4620 8D8B0000 */  lw         $t3, 0x0($t4)
.L801E4624_ovl9:
/* 20F184 801E4624 00220821 */  addu       $at, $at, $v0
/* 20F188 801E4628 8D6D0004 */  lw         $t5, 0x4($t3)
/* 20F18C 801E462C C5A80024 */  lwc1       $f8, 0x24($t5)
/* 20F190 801E4630 4608A03C */  c.lt.s     $f20, $f8
/* 20F194 801E4634 00000000 */  nop
glabel func_801E4638_ovl13
/* 20F198 801E4638 45000006 */  bc1f       .L801E4654_ovl17
/* 20F19C 801E463C 00000000 */   nop
/* 20F1A0 801E4640 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 20F1A4 801E4644 46005407 */  neg.s      $f16, $f10
/* 20F1A8 801E4648 00220821 */  addu       $at, $at, $v0
.L801E464C_ovl17:
/* 20F1AC 801E464C 10000002 */  b          .L801E4658_ovl17
.L801E4650_ovl10:
/* 20F1B0 801E4650 E430AFA0 */   swc1      $f16, %lo(D_800EAFA0)($at)
.L801E4654_ovl17:
/* 20F1B4 801E4654 E432AFA0 */  swc1       $f18, %lo(D_800EAFA0)($at)
.L801E4658_ovl17:
/* 20F1B8 801E4658 8E020000 */  lw         $v0, 0x0($s0)
/* 20F1BC 801E465C 3C0F800F */  lui        $t7, %hi(D_800E9C60)
/* 20F1C0 801E4660 3C01801E */  lui        $at, %hi(D_801E6764_ovl15)
/* 20F1C4 801E4664 00021080 */  sll        $v0, $v0, 2
glabel func_801E4668_ovl17
/* 20F1C8 801E4668 01E27821 */  addu       $t7, $t7, $v0
/* 20F1CC 801E466C 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
/* 20F1D0 801E4670 3C18800F */  lui        $t8, %hi(D_800E9C60)
/* 20F1D4 801E4674 3C04800F */  lui        $a0, %hi(D_800EA360)
/* 20F1D8 801E4678 000F7080 */  sll        $t6, $t7, 2
/* 20F1DC 801E467C 002E0821 */  addu       $at, $at, $t6
/* 20F1E0 801E4680 C4246764 */  lwc1       $f4, %lo(D_801E6764_ovl15)($at)
/* 20F1E4 801E4684 3C01800F */  lui        $at, %hi(D_800EB160)
/* 20F1E8 801E4688 00220821 */  addu       $at, $at, $v0
/* 20F1EC 801E468C E424B160 */  swc1       $f4, %lo(D_800EB160)($at)
/* 20F1F0 801E4690 8E020000 */  lw         $v0, 0x0($s0)
.L801E4694_ovl9:
/* 20F1F4 801E4694 3C01801E */  lui        $at, %hi(D_801E6774_ovl15)
glabel func_801E4698_ovl16
/* 20F1F8 801E4698 00021080 */  sll        $v0, $v0, 2
/* 20F1FC 801E469C 0302C021 */  addu       $t8, $t8, $v0
/* 20F200 801E46A0 8F189C60 */  lw         $t8, %lo(D_800E9C60)($t8)
/* 20F204 801E46A4 0018C880 */  sll        $t9, $t8, 2
/* 20F208 801E46A8 00390821 */  addu       $at, $at, $t9
/* 20F20C 801E46AC C4266774 */  lwc1       $f6, %lo(D_801E6774_ovl15)($at)
/* 20F210 801E46B0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20F214 801E46B4 00220821 */  addu       $at, $at, $v0
/* 20F218 801E46B8 E4263050 */  swc1       $f6, %lo(D_800E3050)($at)
/* 20F21C 801E46BC 8E090000 */  lw         $t1, 0x0($s0)
/* 20F220 801E46C0 00094080 */  sll        $t0, $t1, 2
/* 20F224 801E46C4 00882021 */  addu       $a0, $a0, $t0
/* 20F228 801E46C8 0C002DAF */  jal        finish_current_thread
.L801E46CC_ovl10:
/* 20F22C 801E46CC 8C84A360 */   lw        $a0, %lo(D_800EA360)($a0)
.L801E46D0_ovl10:
/* 20F230 801E46D0 8E500000 */  lw         $s0, 0x0($s2)
/* 20F234 801E46D4 3C03800E */  lui        $v1, %hi(D_800E3590)
/* 20F238 801E46D8 24633590 */  addiu      $v1, $v1, %lo(D_800E3590)
/* 20F23C 801E46DC 8E0A0000 */  lw         $t2, 0x0($s0)
.L801E46E0_ovl9:
/* 20F240 801E46E0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20F244 801E46E4 2418FF9C */  addiu      $t8, $zero, -0x64
/* 20F248 801E46E8 000A6080 */  sll        $t4, $t2, 2
.L801E46EC_ovl10:
/* 20F24C 801E46EC 006C5821 */  addu       $t3, $v1, $t4
.L801E46F0_ovl10:
/* 20F250 801E46F0 E5740000 */  swc1       $f20, 0x0($t3)
/* 20F254 801E46F4 8E020000 */  lw         $v0, 0x0($s0)
/* 20F258 801E46F8 00021080 */  sll        $v0, $v0, 2
glabel func_801E46FC_ovl10
/* 20F25C 801E46FC 00626821 */  addu       $t5, $v1, $v0
/* 20F260 801E4700 C5A80000 */  lwc1       $f8, 0x0($t5)
/* 20F264 801E4704 00220821 */  addu       $at, $at, $v0
/* 20F268 801E4708 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
/* 20F26C 801E470C 8E0F0000 */  lw         $t7, 0x0($s0)
/* 20F270 801E4710 3C01801E */  lui        $at, %hi(D_801E68FC_ovl15)
/* 20F274 801E4714 C42A68FC */  lwc1       $f10, %lo(D_801E68FC_ovl15)($at)
/* 20F278 801E4718 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 20F27C 801E471C 000F7080 */  sll        $t6, $t7, 2
/* 20F280 801E4720 002E0821 */  addu       $at, $at, $t6
.L801E4724_ovl9:
/* 20F284 801E4724 E42A3AD0 */  swc1       $f10, %lo(D_800E3AD0)($at)
.L801E4728_ovl9:
/* 20F288 801E4728 8E190000 */  lw         $t9, 0x0($s0)
/* 20F28C 801E472C 3C01800F */  lui        $at, %hi(D_800EA360)
/* 20F290 801E4730 3C0F800F */  lui        $t7, %hi(D_800E9E20)
/* 20F294 801E4734 00194880 */  sll        $t1, $t9, 2
/* 20F298 801E4738 00290821 */  addu       $at, $at, $t1
/* 20F29C 801E473C AC38A360 */  sw         $t8, %lo(D_800EA360)($at)
/* 20F2A0 801E4740 8E020000 */  lw         $v0, 0x0($s0)
/* 20F2A4 801E4744 3C01800F */  lui        $at, %hi(D_800EB160)
/* 20F2A8 801E4748 00021080 */  sll        $v0, $v0, 2
/* 20F2AC 801E474C 02224021 */  addu       $t0, $s1, $v0
/* 20F2B0 801E4750 8D0A0000 */  lw         $t2, 0x0($t0)
glabel func_801E4754_ovl16
/* 20F2B4 801E4754 00220821 */  addu       $at, $at, $v0
.L801E4758_ovl10:
/* 20F2B8 801E4758 8D4C0004 */  lw         $t4, 0x4($t2)
/* 20F2BC 801E475C C5900030 */  lwc1       $f16, 0x30($t4)
/* 20F2C0 801E4760 E430B160 */  swc1       $f16, %lo(D_800EB160)($at)
glabel func_801E4764_ovl10
/* 20F2C4 801E4764 8E0B0000 */  lw         $t3, 0x0($s0)
/* 20F2C8 801E4768 3C01800F */  lui        $at, %hi(D_800EB320)
/* 20F2CC 801E476C 000B6880 */  sll        $t5, $t3, 2
/* 20F2D0 801E4770 002D0821 */  addu       $at, $at, $t5
/* 20F2D4 801E4774 E434B320 */  swc1       $f20, %lo(D_800EB320)($at)
.L801E4778_ovl9:
/* 20F2D8 801E4778 8E020000 */  lw         $v0, 0x0($s0)
/* 20F2DC 801E477C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 20F2E0 801E4780 00021080 */  sll        $v0, $v0, 2
/* 20F2E4 801E4784 01E27821 */  addu       $t7, $t7, $v0
/* 20F2E8 801E4788 8DEF9E20 */  lw         $t7, %lo(D_800E9E20)($t7)
/* 20F2EC 801E478C 51E00041 */  beql       $t7, $zero, .L801E4894_ovl15
/* 20F2F0 801E4790 44815000 */   mtc1      $at, $f10
/* 20F2F4 801E4794 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 20F2F8 801E4798 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 20F2FC 801E479C 0C02BB30 */  jal        func_800AECC0
/* 20F300 801E47A0 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 20F304 801E47A4 0C02BB48 */  jal        func_800AED20
.L801E47A8_ovl17:
/* 20F308 801E47A8 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 20F30C 801E47AC 8E590000 */  lw         $t9, 0x0($s2)
glabel func_801E47B0_ovl13
/* 20F310 801E47B0 3C01800F */  lui        $at, %hi(D_800EA1A0)
.L801E47B4_ovl17:
/* 20F314 801E47B4 240E0001 */  addiu      $t6, $zero, 0x1
/* 20F318 801E47B8 8F380000 */  lw         $t8, 0x0($t9)
/* 20F31C 801E47BC 24040197 */  addiu      $a0, $zero, 0x197
.L801E47C0_ovl17:
/* 20F320 801E47C0 00184880 */  sll        $t1, $t8, 2
/* 20F324 801E47C4 00290821 */  addu       $at, $at, $t1
/* 20F328 801E47C8 0C029D9E */  jal        play_sound
/* 20F32C 801E47CC AC2EA1A0 */   sw        $t6, %lo(D_800EA1A0)($at)
/* 20F330 801E47D0 3C040001 */  lui        $a0, (0x1052F >> 16)
/* 20F334 801E47D4 3484052F */  ori        $a0, $a0, (0x1052F & 0xFFFF)
.L801E47D8_ovl9:
/* 20F338 801E47D8 0C02A831 */  jal        func_800AA0C4
/* 20F33C 801E47DC 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 20F340 801E47E0 8E500000 */  lw         $s0, 0x0($s2)
/* 20F344 801E47E4 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 20F348 801E47E8 8E080000 */  lw         $t0, 0x0($s0)
/* 20F34C 801E47EC 00085080 */  sll        $t2, $t0, 2
/* 20F350 801E47F0 002A0821 */  addu       $at, $at, $t2
.L801E47F4_ovl9:
/* 20F354 801E47F4 AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
glabel func_801E47F8_ovl13
/* 20F358 801E47F8 8E0C0000 */  lw         $t4, 0x0($s0)
/* 20F35C 801E47FC 000C5880 */  sll        $t3, $t4, 2
/* 20F360 801E4800 022B6821 */  addu       $t5, $s1, $t3
/* 20F364 801E4804 8DAF0000 */  lw         $t7, 0x0($t5)
/* 20F368 801E4808 8DF90004 */  lw         $t9, 0x4($t7)
/* 20F36C 801E480C 0C00D604 */  jal        cosf
/* 20F370 801E4810 C72C0030 */   lwc1      $f12, 0x30($t9)
/* 20F374 801E4814 8E500000 */  lw         $s0, 0x0($s2)
/* 20F378 801E4818 3C01C220 */  lui        $at, (0xC2200000 >> 16)
/* 20F37C 801E481C 44812000 */  mtc1       $at, $f4
.L801E4820_ovl9:
/* 20F380 801E4820 8E020000 */  lw         $v0, 0x0($s0)
/* 20F384 801E4824 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 20F388 801E4828 3C0B800E */  lui        $t3, %hi(D_800E1B50)
.L801E482C_ovl16:
/* 20F38C 801E482C 00021080 */  sll        $v0, $v0, 2
/* 20F390 801E4830 0222C021 */  addu       $t8, $s1, $v0
/* 20F394 801E4834 8F0E0000 */  lw         $t6, 0x0($t8)
/* 20F398 801E4838 00220821 */  addu       $at, $at, $v0
/* 20F39C 801E483C 3C08801E */  lui        $t0, %hi(func_801DA054_ovl9 + 0x1C)
.L801E4840_ovl9:
/* 20F3A0 801E4840 8DC90008 */  lw         $t1, 0x8($t6)
/* 20F3A4 801E4844 2508A070 */  addiu      $t0, $t0, %lo(func_801DA054_ovl9 + 0x1C)
/* 20F3A8 801E4848 3C040001 */  lui        $a0, (0x10530 >> 16)
.L801E484C_ovl10:
/* 20F3AC 801E484C C5320044 */  lwc1       $f18, 0x44($t1)
/* 20F3B0 801E4850 34840530 */  ori        $a0, $a0, (0x10530 & 0xFFFF)
/* 20F3B4 801E4854 46049182 */  mul.s      $f6, $f18, $f4
/* 20F3B8 801E4858 00000000 */  nop
/* 20F3BC 801E485C 46003202 */  mul.s      $f8, $f6, $f0
/* 20F3C0 801E4860 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 20F3C4 801E4864 8E0A0000 */  lw         $t2, 0x0($s0)
/* 20F3C8 801E4868 000A6080 */  sll        $t4, $t2, 2
.L801E486C_ovl16:
/* 20F3CC 801E486C 016C5821 */  addu       $t3, $t3, $t4
.L801E4870_ovl17:
/* 20F3D0 801E4870 8D6B1B50 */  lw         $t3, %lo(D_800E1B50)($t3)
.L801E4874_ovl16:
/* 20F3D4 801E4874 0C02A806 */  jal        func_800AA018
/* 20F3D8 801E4878 AD68008C */   sw        $t0, 0x8C($t3)
.L801E487C_ovl17:
/* 20F3DC 801E487C 0C002DAF */  jal        finish_current_thread
/* 20F3E0 801E4880 2404003C */   addiu     $a0, $zero, 0x3C
/* 20F3E4 801E4884 3C108005 */  lui        $s0, %hi(D_8004A7C4)
.L801E4888_ovl17:
/* 20F3E8 801E4888 10000005 */  b          .L801E48A0_ovl15
/* 20F3EC 801E488C 8E10A7C4 */   lw        $s0, %lo(D_8004A7C4)($s0)
/* 20F3F0 801E4890 44815000 */  mtc1       $at, $f10
.L801E4894_ovl15:
/* 20F3F4 801E4894 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 20F3F8 801E4898 00220821 */  addu       $at, $at, $v0
/* 20F3FC 801E489C E42A2790 */  swc1       $f10, %lo(gEntitiesNextPosYArray)($at)
.L801E48A0_ovl15:
/* 20F400 801E48A0 8E0F0000 */  lw         $t7, 0x0($s0)
.L801E48A4_ovl9:
/* 20F404 801E48A4 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 20F408 801E48A8 3C0D801D */  lui        $t5, %hi(D_801D7B60)
/* 20F40C 801E48AC 000FC880 */  sll        $t9, $t7, 2
.L801E48B0_ovl9:
/* 20F410 801E48B0 0319C021 */  addu       $t8, $t8, $t9
/* 20F414 801E48B4 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 20F418 801E48B8 25AD7B60 */  addiu      $t5, $t5, %lo(D_801D7B60)
/* 20F41C 801E48BC AF0D0094 */  sw         $t5, 0x94($t8)
/* 20F420 801E48C0 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 20F424 801E48C4 8FA40078 */   lw        $a0, 0x78($sp)
glabel func_801E48C8_ovl10
/* 20F428 801E48C8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 20F42C 801E48CC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 20F430 801E48D0 8FB00020 */  lw         $s0, 0x20($sp)
/* 20F434 801E48D4 8FB10024 */  lw         $s1, 0x24($sp)
.L801E48D8_ovl9:
/* 20F438 801E48D8 8FB20028 */  lw         $s2, 0x28($sp)
.L801E48DC_ovl16:
/* 20F43C 801E48DC 03E00008 */  jr         $ra
.L801E48E0_ovl9:
/* 20F440 801E48E0 27BD0078 */   addiu     $sp, $sp, 0x78
