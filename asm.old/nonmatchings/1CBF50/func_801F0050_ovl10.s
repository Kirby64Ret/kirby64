glabel func_801F0050_ovl16
/* 1E0DC0 801F0050 3C01801F */  lui        $at, %hi(D_801F4D68_ovl10)
/* 1E0DC4 801F0054 AC204D68 */  sw         $zero, %lo(D_801F4D68_ovl10)($at)
/* 1E0DC8 801F0058 AC204D6C */  sw         $zero, %lo(.L801F4D6C_ovl10)($at)
/* 1E0DCC 801F005C 24030003 */  addiu      $v1, $zero, 0x3
glabel func_801F0060_ovl16
/* 1E0DD0 801F0060 3C0F801F */  lui        $t7, %hi(D_801F4D68_ovl10)
/* 1E0DD4 801F0064 3C01801F */  lui        $at, %hi(.L801F4D70_ovl10)
jtbl_801F0068_ovl16:
/* 1E0DD8 801F0068 25EF4D68 */  addiu      $t7, $t7, %lo(D_801F4D68_ovl10)
/* 1E0DDC 801F006C 00037080 */  sll        $t6, $v1, 2
/* 1E0DE0 801F0070 AC204D70 */  sw         $zero, %lo(.L801F4D70_ovl10)($at)
/* 1E0DE4 801F0074 01CF1021 */  addu       $v0, $t6, $t7
/* 1E0DE8 801F0078 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 1E0DEC 801F007C AFB00020 */  sw         $s0, 0x20($sp)
/* 1E0DF0 801F0080 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1E0DF4 801F0084 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 1E0DF8 801F0088 AC400004 */  sw         $zero, 0x4($v0)
glabel D_801F008C_ovl16
/* 1E0DFC 801F008C AC400008 */  sw         $zero, 0x8($v0)
glabel D_801F0090_ovl16
/* 1E0E00 801F0090 AC40000C */  sw         $zero, 0xC($v0)
/* 1E0E04 801F0094 AC400000 */  sw         $zero, 0x0($v0)
/* 1E0E08 801F0098 8E020000 */  lw         $v0, 0x0($s0)
/* 1E0E0C 801F009C 3C01800F */  lui        $at, %hi(D_800E98E0)
glabel D_801F00A0_ovl16
/* 1E0E10 801F00A0 AFBF0024 */  sw         $ra, 0x24($sp)
glabel D_801F00A4_ovl16
/* 1E0E14 801F00A4 8C580000 */  lw         $t8, 0x0($v0)
glabel D_801F00A8_ovl16
/* 1E0E18 801F00A8 AFA40088 */  sw         $a0, 0x88($sp)
glabel D_801F00AC_ovl16
/* 1E0E1C 801F00AC 0018C880 */  sll        $t9, $t8, 2
glabel D_801F00B0_ovl16
/* 1E0E20 801F00B0 00390821 */  addu       $at, $at, $t9
glabel D_801F00B4_ovl16
/* 1E0E24 801F00B4 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
glabel D_801F00B8_ovl16
/* 1E0E28 801F00B8 8C490000 */  lw         $t1, 0x0($v0)
glabel D_801F00BC_ovl16
/* 1E0E2C 801F00BC 3C01800F */  lui        $at, %hi(D_800E9AA0)
glabel D_801F00C0_ovl16
/* 1E0E30 801F00C0 00095080 */  sll        $t2, $t1, 2
glabel D_801F00C4_ovl16
/* 1E0E34 801F00C4 002A0821 */  addu       $at, $at, $t2
glabel D_801F00C8_ovl16
/* 1E0E38 801F00C8 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
glabel D_801F00CC_ovl16
/* 1E0E3C 801F00CC 8C4B0000 */  lw         $t3, 0x0($v0)
glabel D_801F00D0_ovl16
/* 1E0E40 801F00D0 3C01800F */  lui        $at, %hi(D_800E9C60)
glabel D_801F00D4_ovl16
/* 1E0E44 801F00D4 000B6080 */  sll        $t4, $t3, 2
glabel D_801F00D8_ovl16
/* 1E0E48 801F00D8 002C0821 */  addu       $at, $at, $t4
glabel D_801F00DC_ovl16
/* 1E0E4C 801F00DC AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
glabel D_801F00E0_ovl16
/* 1E0E50 801F00E0 8C4D0000 */  lw         $t5, 0x0($v0)
glabel D_801F00E4_ovl16
/* 1E0E54 801F00E4 3C01800F */  lui        $at, %hi(D_800E9E20)
glabel D_801F00E8_ovl16
/* 1E0E58 801F00E8 000D7080 */  sll        $t6, $t5, 2
glabel D_801F00EC_ovl16
/* 1E0E5C 801F00EC 002E0821 */  addu       $at, $at, $t6
glabel D_801F00F0_ovl16
/* 1E0E60 801F00F0 0C04723E */  jal        func_8011C8F8
glabel D_801F00F4_ovl16
/* 1E0E64 801F00F4 AC209E20 */   sw        $zero, %lo(D_800E9E20)($at)
glabel D_801F00F8_ovl16
/* 1E0E68 801F00F8 0C03E39B */  jal        func_800F8E6C
glabel D_801F00FC_ovl16
/* 1E0E6C 801F00FC 8FA40088 */   lw        $a0, 0x88($sp)
glabel D_801F0100_ovl16
/* 1E0E70 801F0100 8E020000 */  lw         $v0, 0x0($s0)
glabel D_801F0104_ovl16
/* 1E0E74 801F0104 3C0F800B */  lui        $t7, %hi(func_800B4924)
glabel D_801F0108_ovl16
/* 1E0E78 801F0108 3C01800E */  lui        $at, %hi(D_800DEF90)
glabel D_801F010C_ovl16
/* 1E0E7C 801F010C 8C580000 */  lw         $t8, 0x0($v0)
glabel D_801F0110_ovl16
/* 1E0E80 801F0110 25EF4924 */  addiu      $t7, $t7, %lo(func_800B4924)
glabel D_801F0114_ovl16
/* 1E0E84 801F0114 3C09801F */  lui        $t1, %hi(func_801F0DD0_ovl10)
/* 1E0E88 801F0118 0018C880 */  sll        $t9, $t8, 2
/* 1E0E8C 801F011C 00390821 */  addu       $at, $at, $t9
glabel D_801F0120_ovl16
/* 1E0E90 801F0120 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 1E0E94 801F0124 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1E0E98 801F0128 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1E0E9C 801F012C 25290DD0 */  addiu      $t1, $t1, %lo(func_801F0DD0_ovl10)
/* 1E0EA0 801F0130 000A5880 */  sll        $t3, $t2, 2
/* 1E0EA4 801F0134 002B0821 */  addu       $at, $at, $t3
/* 1E0EA8 801F0138 AC29F150 */  sw         $t1, %lo(D_800DF150)($at)
/* 1E0EAC 801F013C 3C05801F */  lui        $a1, %hi(func_801F4D7C_ovl10 + 0x1C)
/* 1E0EB0 801F0140 24A54D98 */  addiu      $a1, $a1, %lo(func_801F4D7C_ovl10 + 0x1C)
.L801F0144_ovl16:
/* 1E0EB4 801F0144 0C03E430 */  jal        func_800F90C0
glabel D_801F0148_ovl16
/* 1E0EB8 801F0148 8C440000 */   lw        $a0, 0x0($v0)
/* 1E0EBC 801F014C 3C040003 */  lui        $a0, (0x300B8 >> 16)
/* 1E0EC0 801F0150 348400B8 */  ori        $a0, $a0, (0x300B8 & 0xFFFF)
/* 1E0EC4 801F0154 2405002C */  addiu      $a1, $zero, 0x2C
/* 1E0EC8 801F0158 0C02A619 */  jal        func_800A9864
.L801F015C_ovl16:
/* 1E0ECC 801F015C 24060010 */   addiu     $a2, $zero, 0x10
glabel D_801F0160_ovl16
/* 1E0ED0 801F0160 8E0D0000 */  lw         $t5, 0x0($s0)
/* 1E0ED4 801F0164 3C0C801F */  lui        $t4, %hi(D_801F4858_ovl10)
/* 1E0ED8 801F0168 8D8C4858 */  lw         $t4, %lo(D_801F4858_ovl10)($t4)
/* 1E0EDC 801F016C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1E0EE0 801F0170 3C01800E */  lui        $at, %hi(D_800E0490)
/* 1E0EE4 801F0174 000EC080 */  sll        $t8, $t6, 2
/* 1E0EE8 801F0178 00380821 */  addu       $at, $at, $t8
/* 1E0EEC 801F017C 0C03FC51 */  jal        func_800FF144
.L801F0180_ovl16:
/* 1E0EF0 801F0180 AC2C0490 */   sw        $t4, %lo(D_800E0490)($at)
/* 1E0EF4 801F0184 8E0F0000 */  lw         $t7, 0x0($s0)
glabel D_801F0188_ovl16
/* 1E0EF8 801F0188 3C01800F */  lui        $at, %hi(D_800EA520)
/* 1E0EFC 801F018C 00402025 */  or         $a0, $v0, $zero
/* 1E0F00 801F0190 8DF90000 */  lw         $t9, 0x0($t7)
/* 1E0F04 801F0194 00195080 */  sll        $t2, $t9, 2
/* 1E0F08 801F0198 002A0821 */  addu       $at, $at, $t2
/* 1E0F0C 801F019C 0C07C005 */  jal        func_801F0014_ovl16
/* 1E0F10 801F01A0 AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* 1E0F14 801F01A4 3C04801F */  lui        $a0, %hi(D_801F47C0_ovl10)
/* 1E0F18 801F01A8 0C02A806 */  jal        func_800AA018
/* 1E0F1C 801F01AC 8C8447C0 */   lw        $a0, %lo(D_801F47C0_ovl10)($a0)
glabel D_801F01B0_ovl16
/* 1E0F20 801F01B0 3C04801F */  lui        $a0, %hi(D_801F47C4_ovl10)
/* 1E0F24 801F01B4 8C8447C4 */  lw         $a0, %lo(D_801F47C4_ovl10)($a0)
/* 1E0F28 801F01B8 50800004 */  beql       $a0, $zero, .L801F01CC_ovl16
/* 1E0F2C 801F01BC 8E020000 */   lw        $v0, 0x0($s0)
/* 1E0F30 801F01C0 0C02A806 */  jal        func_800AA018
/* 1E0F34 801F01C4 00000000 */   nop
/* 1E0F38 801F01C8 8E020000 */  lw         $v0, 0x0($s0)
.L801F01CC_ovl16:
/* 1E0F3C 801F01CC 3C01801F */  lui        $at, %hi(D_801F4C60_ovl10)
glabel D_801F01D0_ovl16
/* 1E0F40 801F01D0 C4244C60 */  lwc1       $f4, %lo(D_801F4C60_ovl10)($at)
/* 1E0F44 801F01D4 8C490000 */  lw         $t1, 0x0($v0)
glabel D_801F01D8_ovl16
/* 1E0F48 801F01D8 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 1E0F4C 801F01DC 24040002 */  addiu      $a0, $zero, 0x2
/* 1E0F50 801F01E0 00095880 */  sll        $t3, $t1, 2
/* 1E0F54 801F01E4 002B0821 */  addu       $at, $at, $t3
/* 1E0F58 801F01E8 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* 1E0F5C 801F01EC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1E0F60 801F01F0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1E0F64 801F01F4 44813000 */  mtc1       $at, $f6
glabel D_801F01F8_ovl16
/* 1E0F68 801F01F8 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1E0F6C 801F01FC 000D7080 */  sll        $t6, $t5, 2
glabel D_801F0200_ovl16
/* 1E0F70 801F0200 002E0821 */  addu       $at, $at, $t6
/* 1E0F74 801F0204 0C002DAF */  jal        finish_current_thread
/* 1E0F78 801F0208 E4263050 */   swc1      $f6, %lo(D_800E3050)($at)
.L801F020C_ovl16:
/* 1E0F7C 801F020C 3C06801F */  lui        $a2, %hi(D_801F4D60_ovl10)
/* 1E0F80 801F0210 8CC64D60 */  lw         $a2, %lo(D_801F4D60_ovl10)($a2)
/* 1E0F84 801F0214 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* 1E0F88 801F0218 27A40078 */  addiu      $a0, $sp, 0x78
/* 1E0F8C 801F021C 00066080 */  sll        $t4, $a2, 2
glabel D_801F0220_ovl16
/* 1E0F90 801F0220 030CC021 */  addu       $t8, $t8, $t4
/* 1E0F94 801F0224 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* 1E0F98 801F0228 0C02C8D0 */  jal        func_800B2340
/* 1E0F9C 801F022C 8F050014 */   lw        $a1, 0x14($t8)
/* 1E0FA0 801F0230 8FAF0088 */  lw         $t7, 0x88($sp)
/* 1E0FA4 801F0234 27A4006C */  addiu      $a0, $sp, 0x6C
/* 1E0FA8 801F0238 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* 1E0FAC 801F023C 0C02C8D0 */  jal        func_800B2340
/* 1E0FB0 801F0240 8DE5003C */   lw        $a1, 0x3C($t7)
/* 1E0FB4 801F0244 C7A80078 */  lwc1       $f8, 0x78($sp)
/* 1E0FB8 801F0248 C7AA006C */  lwc1       $f10, 0x6C($sp)
/* 1E0FBC 801F024C 3C03800E */  lui        $v1, %hi(D_800E3590)
/* 1E0FC0 801F0250 44800000 */  mtc1       $zero, $f0
/* 1E0FC4 801F0254 460A403C */  c.lt.s     $f8, $f10
/* 1E0FC8 801F0258 24633590 */  addiu      $v1, $v1, %lo(D_800E3590)
/* 1E0FCC 801F025C 45000033 */  bc1f       .L801F032C_ovl10
/* 1E0FD0 801F0260 00000000 */   nop
/* 1E0FD4 801F0264 8E020000 */  lw         $v0, 0x0($s0)
/* 1E0FD8 801F0268 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1E0FDC 801F026C 3C05801F */  lui        $a1, %hi(D_801F47C8_ovl10)
/* 1E0FE0 801F0270 8C590000 */  lw         $t9, 0x0($v0)
/* 1E0FE4 801F0274 44060000 */  mfc1       $a2, $f0
/* 1E0FE8 801F0278 3C070003 */  lui        $a3, (0x300B8 >> 16)
/* 1E0FEC 801F027C 00195080 */  sll        $t2, $t9, 2
/* 1E0FF0 801F0280 006A4821 */  addu       $t1, $v1, $t2
/* 1E0FF4 801F0284 E5200000 */  swc1       $f0, 0x0($t1)
/* 1E0FF8 801F0288 8C480000 */  lw         $t0, 0x0($v0)
/* 1E0FFC 801F028C 8FAC0088 */  lw         $t4, 0x88($sp)
/* 1E1000 801F0290 8CA547C8 */  lw         $a1, %lo(D_801F47C8_ovl10)($a1)
/* 1E1004 801F0294 00084080 */  sll        $t0, $t0, 2
/* 1E1008 801F0298 00685821 */  addu       $t3, $v1, $t0
/* 1E100C 801F029C C5700000 */  lwc1       $f16, 0x0($t3)
/* 1E1010 801F02A0 00280821 */  addu       $at, $at, $t0
/* 1E1014 801F02A4 34E700B8 */  ori        $a3, $a3, (0x300B8 & 0xFFFF)
/* 1E1018 801F02A8 E4303050 */  swc1       $f16, %lo(D_800E3050)($at)
/* 1E101C 801F02AC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1E1020 801F02B0 3C01801F */  lui        $at, %hi(D_801F4C64_ovl10)
/* 1E1024 801F02B4 C4324C64 */  lwc1       $f18, %lo(D_801F4C64_ovl10)($at)
/* 1E1028 801F02B8 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 1E102C 801F02BC 000D7080 */  sll        $t6, $t5, 2
/* 1E1030 801F02C0 002E0821 */  addu       $at, $at, $t6
/* 1E1034 801F02C4 E4323AD0 */  swc1       $f18, %lo(D_800E3AD0)($at)
/* 1E1038 801F02C8 8D98003C */  lw         $t8, 0x3C($t4)
/* 1E103C 801F02CC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1E1040 801F02D0 44812000 */  mtc1       $at, $f4
/* 1E1044 801F02D4 8F040010 */  lw         $a0, 0x10($t8)
/* 1E1048 801F02D8 0C02A982 */  jal        func_800AA608
/* 1E104C 801F02DC E7A40010 */   swc1      $f4, 0x10($sp)
/* 1E1050 801F02E0 3C04801F */  lui        $a0, %hi(D_801F47C8_ovl10)
/* 1E1054 801F02E4 0C02A806 */  jal        func_800AA018
/* 1E1058 801F02E8 8C8447C8 */   lw        $a0, %lo(D_801F47C8_ovl10)($a0)
/* 1E105C 801F02EC 3C04801F */  lui        $a0, %hi(D_801F47CC_ovl10)
/* 1E1060 801F02F0 8C8447CC */  lw         $a0, %lo(D_801F47CC_ovl10)($a0)
/* 1E1064 801F02F4 50800004 */  beql       $a0, $zero, .L801F0308_ovl10
/* 1E1068 801F02F8 8E020000 */   lw        $v0, 0x0($s0)
.L801F02FC_ovl9:
/* 1E106C 801F02FC 0C02A806 */  jal        func_800AA018
/* 1E1070 801F0300 00000000 */   nop
/* 1E1074 801F0304 8E020000 */  lw         $v0, 0x0($s0)
.L801F0308_ovl10:
/* 1E1078 801F0308 3C03800F */  lui        $v1, %hi(D_800E9C60)
/* 1E107C 801F030C 24639C60 */  addiu      $v1, $v1, %lo(D_800E9C60)
/* 1E1080 801F0310 8C590000 */  lw         $t9, 0x0($v0)
/* 1E1084 801F0314 44807000 */  mtc1       $zero, $f14
/* 1E1088 801F0318 240F0001 */  addiu      $t7, $zero, 0x1
/* 1E108C 801F031C 00195080 */  sll        $t2, $t9, 2
/* 1E1090 801F0320 006A4821 */  addu       $t1, $v1, $t2
/* 1E1094 801F0324 10000005 */  b          .L801F033C_ovl10
/* 1E1098 801F0328 AD2F0000 */   sw        $t7, 0x0($t1)
.L801F032C_ovl10:
/* 1E109C 801F032C 0C002DAF */  jal        finish_current_thread
/* 1E10A0 801F0330 24040001 */   addiu     $a0, $zero, 0x1
/* 1E10A4 801F0334 1000FFB5 */  b          .L801F020C_ovl16
/* 1E10A8 801F0338 00000000 */   nop
.L801F033C_ovl10:
/* 1E10AC 801F033C 46007086 */  mov.s      $f2, $f14
.L801F0340_ovl10:
/* 1E10B0 801F0340 8C480000 */  lw         $t0, 0x0($v0)
/* 1E10B4 801F0344 3C0B800F */  lui        $t3, %hi(D_800E98E0)
/* 1E10B8 801F0348 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 1E10BC 801F034C 00084080 */  sll        $t0, $t0, 2
/* 1E10C0 801F0350 01685821 */  addu       $t3, $t3, $t0
/* 1E10C4 801F0354 8D6B98E0 */  lw         $t3, %lo(D_800E98E0)($t3)
/* 1E10C8 801F0358 5560002D */  bnel       $t3, $zero, .L801F0410_ovl10
/* 1E10CC 801F035C 24180002 */   addiu     $t8, $zero, 0x2
/* 1E10D0 801F0360 44810000 */  mtc1       $at, $f0
/* 1E10D4 801F0364 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1E10D8 801F0368 44813000 */  mtc1       $at, $f6
/* 1E10DC 801F036C 3C01801F */  lui        $at, %hi(D_801F4C68_ovl10)
/* 1E10E0 801F0370 46061080 */  add.s      $f2, $f2, $f6
/* 1E10E4 801F0374 4602003C */  c.lt.s     $f0, $f2
/* 1E10E8 801F0378 00000000 */  nop
/* 1E10EC 801F037C 45000002 */  bc1f       .L801F0388_ovl10
/* 1E10F0 801F0380 00000000 */   nop
/* 1E10F4 801F0384 46001081 */  sub.s      $f2, $f2, $f0
.L801F0388_ovl10:
/* 1E10F8 801F0388 C4284C68 */  lwc1       $f8, %lo(D_801F4C68_ovl10)($at)
/* 1E10FC 801F038C 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1E1100 801F0390 44818000 */  mtc1       $at, $f16
/* 1E1104 801F0394 46081282 */  mul.s      $f10, $f2, $f8
/* 1E1108 801F0398 E7A20068 */  swc1       $f2, 0x68($sp)
/* 1E110C 801F039C 0C00B5B8 */  jal        sinf
/* 1E1110 801F03A0 46105303 */   div.s     $f12, $f10, $f16
/* 1E1114 801F03A4 3C014234 */  lui        $at, (0x42340000 >> 16)
/* 1E1118 801F03A8 44819000 */  mtc1       $at, $f18
/* 1E111C 801F03AC 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 1E1120 801F03B0 44813000 */  mtc1       $at, $f6
/* 1E1124 801F03B4 46120102 */  mul.s      $f4, $f0, $f18
/* 1E1128 801F03B8 3C01801F */  lui        $at, %hi(D_801F4C6C_ovl10)
/* 1E112C 801F03BC C42A4C6C */  lwc1       $f10, %lo(D_801F4C6C_ovl10)($at)
/* 1E1130 801F03C0 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1E1134 801F03C4 44819000 */  mtc1       $at, $f18
/* 1E1138 801F03C8 8E0D0000 */  lw         $t5, 0x0($s0)
.L801F03CC_ovl9:
/* 1E113C 801F03CC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L801F03D0_ovl9:
/* 1E1140 801F03D0 46062200 */  add.s      $f8, $f4, $f6
/* 1E1144 801F03D4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1E1148 801F03D8 24040001 */  addiu      $a0, $zero, 0x1
/* 1E114C 801F03DC 460A4402 */  mul.s      $f16, $f8, $f10
/* 1E1150 801F03E0 000E6080 */  sll        $t4, $t6, 2
/* 1E1154 801F03E4 002C0821 */  addu       $at, $at, $t4
/* 1E1158 801F03E8 46128103 */  div.s      $f4, $f16, $f18
/* 1E115C 801F03EC 0C002DAF */  jal        finish_current_thread
.L801F03F0_ovl9:
/* 1E1160 801F03F0 E42441D0 */   swc1      $f4, %lo(gEntitiesAngleYArray)($at)
/* 1E1164 801F03F4 44807000 */  mtc1       $zero, $f14
/* 1E1168 801F03F8 3C03800F */  lui        $v1, %hi(D_800E9C60)
/* 1E116C 801F03FC 24639C60 */  addiu      $v1, $v1, %lo(D_800E9C60)
/* 1E1170 801F0400 8E020000 */  lw         $v0, 0x0($s0)
/* 1E1174 801F0404 1000FFCE */  b          .L801F0340_ovl10
/* 1E1178 801F0408 C7A20068 */   lwc1      $f2, 0x68($sp)
/* 1E117C 801F040C 24180002 */  addiu      $t8, $zero, 0x2
.L801F0410_ovl10:
/* 1E1180 801F0410 0068C821 */  addu       $t9, $v1, $t0
/* 1E1184 801F0414 AF380000 */  sw         $t8, 0x0($t9)
.L801F0418_ovl9:
/* 1E1188 801F0418 8FAA0088 */  lw         $t2, 0x88($sp)
/* 1E118C 801F041C E7AE0058 */  swc1       $f14, 0x58($sp)
/* 1E1190 801F0420 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1E1194 801F0424 8D4F003C */  lw         $t7, 0x3C($t2)
/* 1E1198 801F0428 44813000 */  mtc1       $at, $f6
/* 1E119C 801F042C 3C05801F */  lui        $a1, %hi(D_801F47D0_ovl10)
/* 1E11A0 801F0430 44067000 */  mfc1       $a2, $f14
/* 1E11A4 801F0434 3C070003 */  lui        $a3, (0x300B8 >> 16)
/* 1E11A8 801F0438 8DE40010 */  lw         $a0, 0x10($t7)
.L801F043C_ovl9:
/* 1E11AC 801F043C E7AE0054 */  swc1       $f14, 0x54($sp)
/* 1E11B0 801F0440 34E700B8 */  ori        $a3, $a3, (0x300B8 & 0xFFFF)
/* 1E11B4 801F0444 8CA547D0 */  lw         $a1, %lo(D_801F47D0_ovl10)($a1)
/* 1E11B8 801F0448 0C02A982 */  jal        func_800AA608
/* 1E11BC 801F044C E7A60010 */   swc1      $f6, 0x10($sp)
/* 1E11C0 801F0450 3C04801F */  lui        $a0, %hi(D_801F47D0_ovl10)
/* 1E11C4 801F0454 0C02A806 */  jal        func_800AA018
/* 1E11C8 801F0458 8C8447D0 */   lw        $a0, %lo(D_801F47D0_ovl10)($a0)
/* 1E11CC 801F045C 3C04801F */  lui        $a0, %hi(D_801F47D4_ovl10)
/* 1E11D0 801F0460 8C8447D4 */  lw         $a0, %lo(D_801F47D4_ovl10)($a0)
/* 1E11D4 801F0464 C7A20054 */  lwc1       $f2, 0x54($sp)
/* 1E11D8 801F0468 50800005 */  beql       $a0, $zero, .L801F0480_ovl10
/* 1E11DC 801F046C 8E090000 */   lw        $t1, 0x0($s0)
/* 1E11E0 801F0470 0C02A806 */  jal        func_800AA018
/* 1E11E4 801F0474 E7A20054 */   swc1      $f2, 0x54($sp)
/* 1E11E8 801F0478 C7A20054 */  lwc1       $f2, 0x54($sp)
.L801F047C_ovl10:
/* 1E11EC 801F047C 8E090000 */  lw         $t1, 0x0($s0)
.L801F0480_ovl10:
/* 1E11F0 801F0480 3C0B800F */  lui        $t3, %hi(D_800E9AA0)
/* 1E11F4 801F0484 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 1E11F8 801F0488 8D280000 */  lw         $t0, 0x0($t1)
/* 1E11FC 801F048C 00084080 */  sll        $t0, $t0, 2
/* 1E1200 801F0490 01685821 */  addu       $t3, $t3, $t0
/* 1E1204 801F0494 8D6B9AA0 */  lw         $t3, %lo(D_800E9AA0)($t3)
/* 1E1208 801F0498 15600023 */  bnez       $t3, .L801F0528_ovl10
/* 1E120C 801F049C 00000000 */   nop
/* 1E1210 801F04A0 44810000 */  mtc1       $at, $f0
/* 1E1214 801F04A4 3C014110 */  lui        $at, (0x41100000 >> 16)
/* 1E1218 801F04A8 44814000 */  mtc1       $at, $f8
/* 1E121C 801F04AC 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 1E1220 801F04B0 44815000 */  mtc1       $at, $f10
/* 1E1224 801F04B4 46081080 */  add.s      $f2, $f2, $f8
/* 1E1228 801F04B8 3C01801F */  lui        $at, %hi(D_801F4C70_ovl10)
/* 1E122C 801F04BC 4602003C */  c.lt.s     $f0, $f2
/* 1E1230 801F04C0 00000000 */  nop
/* 1E1234 801F04C4 45020003 */  bc1fl      .L801F04D4_ovl10
/* 1E1238 801F04C8 460A1401 */   sub.s     $f16, $f2, $f10
/* 1E123C 801F04CC 46001081 */  sub.s      $f2, $f2, $f0
/* 1E1240 801F04D0 460A1401 */  sub.s      $f16, $f2, $f10
.L801F04D4_ovl10:
/* 1E1244 801F04D4 C4324C70 */  lwc1       $f18, %lo(D_801F4C70_ovl10)($at)
/* 1E1248 801F04D8 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1E124C 801F04DC 44813000 */  mtc1       $at, $f6
/* 1E1250 801F04E0 46128102 */  mul.s      $f4, $f16, $f18
/* 1E1254 801F04E4 E7A20054 */  swc1       $f2, 0x54($sp)
/* 1E1258 801F04E8 0C00B5B8 */  jal        sinf
/* 1E125C 801F04EC 46062303 */   div.s     $f12, $f4, $f6
/* 1E1260 801F04F0 3C01801F */  lui        $at, %hi(D_801F4C74_ovl10)
/* 1E1264 801F04F4 C4284C74 */  lwc1       $f8, %lo(D_801F4C74_ovl10)($at)
/* 1E1268 801F04F8 3C01801F */  lui        $at, %hi(D_801F4C78_ovl10)
/* 1E126C 801F04FC C4304C78 */  lwc1       $f16, %lo(D_801F4C78_ovl10)($at)
/* 1E1270 801F0500 46080280 */  add.s      $f10, $f0, $f8
/* 1E1274 801F0504 3C01801F */  lui        $at, %hi(D_801F4C7C_ovl10)
/* 1E1278 801F0508 C4244C7C */  lwc1       $f4, %lo(D_801F4C7C_ovl10)($at)
/* 1E127C 801F050C 24040001 */  addiu      $a0, $zero, 0x1
/* 1E1280 801F0510 46105483 */  div.s      $f18, $f10, $f16
/* 1E1284 801F0514 46049182 */  mul.s      $f6, $f18, $f4
/* 1E1288 801F0518 0C002DAF */  jal        finish_current_thread
/* 1E128C 801F051C E7A60058 */   swc1      $f6, 0x58($sp)
/* 1E1290 801F0520 1000FFD6 */  b          .L801F047C_ovl10
.L801F0524_ovl9:
/* 1E1294 801F0524 C7A20054 */   lwc1      $f2, 0x54($sp)
.L801F0528_ovl10:
/* 1E1298 801F0528 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1E129C 801F052C 00280821 */  addu       $at, $at, $t0
/* 1E12A0 801F0530 240D0003 */  addiu      $t5, $zero, 0x3
/* 1E12A4 801F0534 AC2D9C60 */  sw         $t5, %lo(D_800E9C60)($at)
/* 1E12A8 801F0538 0C029D9E */  jal        play_sound
/* 1E12AC 801F053C 240400F7 */   addiu     $a0, $zero, 0xF7
/* 1E12B0 801F0540 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1E12B4 801F0544 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
glabel func_801F0548_ovl9
/* 1E12B8 801F0548 8DCC0000 */  lw         $t4, 0x0($t6)
/* 1E12BC 801F054C 000CC080 */  sll        $t8, $t4, 2
/* 1E12C0 801F0550 00380821 */  addu       $at, $at, $t8
/* 1E12C4 801F0554 C42841D0 */  lwc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* 1E12C8 801F0558 3C01801F */  lui        $at, %hi(D_801F4C80_ovl10)
/* 1E12CC 801F055C C42A4C80 */  lwc1       $f10, %lo(D_801F4C80_ovl10)($at)
/* 1E12D0 801F0560 0C00D604 */  jal        cosf
/* 1E12D4 801F0564 460A4301 */   sub.s     $f12, $f8, $f10
/* 1E12D8 801F0568 C7B00058 */  lwc1       $f16, 0x58($sp)
/* 1E12DC 801F056C 8E020000 */  lw         $v0, 0x0($s0)
/* 1E12E0 801F0570 3C014188 */  lui        $at, (0x41880000 >> 16)
/* 1E12E4 801F0574 46100482 */  mul.s      $f18, $f0, $f16
/* 1E12E8 801F0578 8C590000 */  lw         $t9, 0x0($v0)
/* 1E12EC 801F057C 44811000 */  mtc1       $at, $f2
/* 1E12F0 801F0580 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1E12F4 801F0584 00195080 */  sll        $t2, $t9, 2
/* 1E12F8 801F0588 002A0821 */  addu       $at, $at, $t2
/* 1E12FC 801F058C E4323050 */  swc1       $f18, %lo(D_800E3050)($at)
/* 1E1300 801F0590 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1E1304 801F0594 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E1308 801F0598 000F4880 */  sll        $t1, $t7, 2
/* 1E130C 801F059C 00290821 */  addu       $at, $at, $t1
/* 1E1310 801F05A0 E4223210 */  swc1       $f2, %lo(D_800E3210)($at)
/* 1E1314 801F05A4 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E1318 801F05A8 3C01801F */  lui        $at, %hi(D_801F4C84_ovl10)
/* 1E131C 801F05AC C4244C84 */  lwc1       $f4, %lo(D_801F4C84_ovl10)($at)
/* 1E1320 801F05B0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1E1324 801F05B4 000B6880 */  sll        $t5, $t3, 2
/* 1E1328 801F05B8 002D0821 */  addu       $at, $at, $t5
/* 1E132C 801F05BC E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
/* 1E1330 801F05C0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E1334 801F05C4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1E1338 801F05C8 000E6080 */  sll        $t4, $t6, 2
/* 1E133C 801F05CC 002C0821 */  addu       $at, $at, $t4
/* 1E1340 801F05D0 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 1E1344 801F05D4 8C580000 */  lw         $t8, 0x0($v0)
/* 1E1348 801F05D8 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 1E134C 801F05DC 0018C880 */  sll        $t9, $t8, 2
/* 1E1350 801F05E0 00390821 */  addu       $at, $at, $t9
/* 1E1354 801F05E4 C42641D0 */  lwc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* 1E1358 801F05E8 3C01801F */  lui        $at, %hi(D_801F4C88_ovl10)
/* 1E135C 801F05EC C4284C88 */  lwc1       $f8, %lo(D_801F4C88_ovl10)($at)
/* 1E1360 801F05F0 0C00B5B8 */  jal        sinf
/* 1E1364 801F05F4 46083301 */   sub.s     $f12, $f6, $f8
/* 1E1368 801F05F8 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* 1E136C 801F05FC 8E0A0000 */  lw         $t2, 0x0($s0)
/* 1E1370 801F0600 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 1E1374 801F0604 460A0402 */  mul.s      $f16, $f0, $f10
/* 1E1378 801F0608 8D4F0000 */  lw         $t7, 0x0($t2)
/* 1E137C 801F060C 3C04801F */  lui        $a0, %hi(D_801F47D8_ovl10)
/* 1E1380 801F0610 8C8447D8 */  lw         $a0, %lo(D_801F47D8_ovl10)($a0)
/* 1E1384 801F0614 000F4880 */  sll        $t1, $t7, 2
/* 1E1388 801F0618 00290821 */  addu       $at, $at, $t1
/* 1E138C 801F061C 46008487 */  neg.s      $f18, $f16
/* 1E1390 801F0620 0C02A806 */  jal        func_800AA018
/* 1E1394 801F0624 E43233D0 */   swc1      $f18, %lo(D_800E33D0)($at)
/* 1E1398 801F0628 3C04801F */  lui        $a0, %hi(D_801F47DC_ovl10)
/* 1E139C 801F062C 8C8447DC */  lw         $a0, %lo(D_801F47DC_ovl10)($a0)
/* 1E13A0 801F0630 50800004 */  beql       $a0, $zero, .L801F0644_ovl10
/* 1E13A4 801F0634 8E0B0000 */   lw        $t3, 0x0($s0)
/* 1E13A8 801F0638 0C02A806 */  jal        func_800AA018
/* 1E13AC 801F063C 00000000 */   nop
/* 1E13B0 801F0640 8E0B0000 */  lw         $t3, 0x0($s0)
.L801F0644_ovl10:
/* 1E13B4 801F0644 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1E13B8 801F0648 44800000 */  mtc1       $zero, $f0
/* 1E13BC 801F064C 8D6D0000 */  lw         $t5, 0x0($t3)
/* 1E13C0 801F0650 000D7080 */  sll        $t6, $t5, 2
/* 1E13C4 801F0654 002E0821 */  addu       $at, $at, $t6
/* 1E13C8 801F0658 C4243750 */  lwc1       $f4, %lo(D_800E3750)($at)
/* 1E13CC 801F065C 4600203C */  c.lt.s     $f4, $f0
/* 1E13D0 801F0660 00000000 */  nop
/* 1E13D4 801F0664 4500001A */  bc1f       .L801F06D0_ovl10
/* 1E13D8 801F0668 00000000 */   nop
/* 1E13DC 801F066C 8FAC0088 */  lw         $t4, 0x88($sp)
/* 1E13E0 801F0670 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 1E13E4 801F0674 44813000 */  mtc1       $at, $f6
/* 1E13E8 801F0678 8D98003C */  lw         $t8, 0x3C($t4)
/* 1E13EC 801F067C 3C05801F */  lui        $a1, %hi(D_801F47D8_ovl10)
/* 1E13F0 801F0680 44060000 */  mfc1       $a2, $f0
/* 1E13F4 801F0684 3C070003 */  lui        $a3, (0x300B8 >> 16)
/* 1E13F8 801F0688 8F040010 */  lw         $a0, 0x10($t8)
/* 1E13FC 801F068C 34E700B8 */  ori        $a3, $a3, (0x300B8 & 0xFFFF)
.L801F0690_ovl9:
/* 1E1400 801F0690 8CA547D8 */  lw         $a1, %lo(D_801F47D8_ovl10)($a1)
/* 1E1404 801F0694 0C02A982 */  jal        func_800AA608
/* 1E1408 801F0698 E7A60010 */   swc1      $f6, 0x10($sp)
/* 1E140C 801F069C 3C04801F */  lui        $a0, %hi(D_801F47D8_ovl10)
/* 1E1410 801F06A0 0C02A806 */  jal        func_800AA018
/* 1E1414 801F06A4 8C8447D8 */   lw        $a0, %lo(D_801F47D8_ovl10)($a0)
/* 1E1418 801F06A8 3C04801F */  lui        $a0, %hi(D_801F47DC_ovl10)
/* 1E141C 801F06AC 8C8447DC */  lw         $a0, %lo(D_801F47DC_ovl10)($a0)
/* 1E1420 801F06B0 10800003 */  beqz       $a0, .L801F06C0_ovl10
/* 1E1424 801F06B4 00000000 */   nop
/* 1E1428 801F06B8 0C02A806 */  jal        func_800AA018
/* 1E142C 801F06BC 00000000 */   nop
.L801F06C0_ovl10:
/* 1E1430 801F06C0 0C02BC9F */  jal        func_800AF27C
/* 1E1434 801F06C4 00000000 */   nop
/* 1E1438 801F06C8 10000006 */  b          .L801F06E4_ovl10
.L801F06CC_ovl9:
/* 1E143C 801F06CC 8E0A0000 */   lw        $t2, 0x0($s0)
.L801F06D0_ovl10:
/* 1E1440 801F06D0 0C002DAF */  jal        finish_current_thread
/* 1E1444 801F06D4 24040001 */   addiu     $a0, $zero, 0x1
/* 1E1448 801F06D8 1000FFDA */  b          .L801F0644_ovl10
/* 1E144C 801F06DC 8E0B0000 */   lw        $t3, 0x0($s0)
/* 1E1450 801F06E0 8E0A0000 */  lw         $t2, 0x0($s0)
.L801F06E4_ovl10:
/* 1E1454 801F06E4 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801F06E8_ovl9:
/* 1E1458 801F06E8 24190004 */  addiu      $t9, $zero, 0x4
/* 1E145C 801F06EC 8D4F0000 */  lw         $t7, 0x0($t2)
/* 1E1460 801F06F0 3C04801F */  lui        $a0, %hi(D_801F47E8_ovl10)
/* 1E1464 801F06F4 8C8447E8 */  lw         $a0, %lo(D_801F47E8_ovl10)($a0)
/* 1E1468 801F06F8 000F4880 */  sll        $t1, $t7, 2
/* 1E146C 801F06FC 00290821 */  addu       $at, $at, $t1
/* 1E1470 801F0700 0C02A806 */  jal        func_800AA018
/* 1E1474 801F0704 AC399C60 */   sw        $t9, %lo(D_800E9C60)($at)
/* 1E1478 801F0708 3C04801F */  lui        $a0, %hi(.L801F47EC_ovl10)
/* 1E147C 801F070C 8C8447EC */  lw         $a0, %lo(.L801F47EC_ovl10)($a0)
/* 1E1480 801F0710 50800004 */  beql       $a0, $zero, .L801F0724_ovl10
/* 1E1484 801F0714 8E0B0000 */   lw        $t3, 0x0($s0)
/* 1E1488 801F0718 0C02A806 */  jal        func_800AA018
/* 1E148C 801F071C 00000000 */   nop
.L801F0720_ovl9:
/* 1E1490 801F0720 8E0B0000 */  lw         $t3, 0x0($s0)
.L801F0724_ovl10:
/* 1E1494 801F0724 3C0C800F */  lui        $t4, %hi(D_800E9E20)
/* 1E1498 801F0728 8D6D0000 */  lw         $t5, 0x0($t3)
/* 1E149C 801F072C 000D7080 */  sll        $t6, $t5, 2
/* 1E14A0 801F0730 018E6021 */  addu       $t4, $t4, $t6
/* 1E14A4 801F0734 8D8C9E20 */  lw         $t4, %lo(D_800E9E20)($t4)
/* 1E14A8 801F0738 55800023 */  bnel       $t4, $zero, .L801F07C8_ovl10
/* 1E14AC 801F073C 8E020000 */   lw        $v0, 0x0($s0)
/* 1E14B0 801F0740 0C07C3B2 */  jal        func_801F0EC8_ovl10
/* 1E14B4 801F0744 8FA40088 */   lw        $a0, 0x88($sp)
/* 1E14B8 801F0748 24010008 */  addiu      $at, $zero, 0x8
/* 1E14BC 801F074C 1041001D */  beq        $v0, $at, .L801F07C4_ovl10
/* 1E14C0 801F0750 AFA2004C */   sw        $v0, 0x4C($sp)
/* 1E14C4 801F0754 3C0F801F */  lui        $t7, %hi(D_801F4D68_ovl10)
/* 1E14C8 801F0758 25EF4D68 */  addiu      $t7, $t7, %lo(D_801F4D68_ovl10)
/* 1E14CC 801F075C 00025080 */  sll        $t2, $v0, 2
/* 1E14D0 801F0760 014F3821 */  addu       $a3, $t2, $t7
/* 1E14D4 801F0764 8CF90000 */  lw         $t9, 0x0($a3)
/* 1E14D8 801F0768 3C04800F */  lui        $a0, %hi(D_800EA520)
/* 1E14DC 801F076C AFA70030 */  sw         $a3, 0x30($sp)
/* 1E14E0 801F0770 00194880 */  sll        $t1, $t9, 2
/* 1E14E4 801F0774 00892021 */  addu       $a0, $a0, $t1
/* 1E14E8 801F0778 0C03FC73 */  jal        func_800FF1CC
/* 1E14EC 801F077C 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
/* 1E14F0 801F0780 8FA70030 */  lw         $a3, 0x30($sp)
/* 1E14F4 801F0784 3C05800E */  lui        $a1, %hi(D_800DE350)
/* 1E14F8 801F0788 00002025 */  or         $a0, $zero, $zero
/* 1E14FC 801F078C 8CEB0000 */  lw         $t3, 0x0($a3)
/* 1E1500 801F0790 000B6880 */  sll        $t5, $t3, 2
/* 1E1504 801F0794 00AD2821 */  addu       $a1, $a1, $t5
/* 1E1508 801F0798 0C02BEED */  jal        func_800AFBB4
/* 1E150C 801F079C 8CA5E350 */   lw        $a1, %lo(D_800DE350)($a1)
/* 1E1510 801F07A0 0C029D9E */  jal        play_sound
/* 1E1514 801F07A4 240400CA */   addiu     $a0, $zero, 0xCA
/* 1E1518 801F07A8 8E0C0000 */  lw         $t4, 0x0($s0)
/* 1E151C 801F07AC 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1E1520 801F07B0 240E0001 */  addiu      $t6, $zero, 0x1
/* 1E1524 801F07B4 8D980000 */  lw         $t8, 0x0($t4)
/* 1E1528 801F07B8 00185080 */  sll        $t2, $t8, 2
/* 1E152C 801F07BC 002A0821 */  addu       $at, $at, $t2
/* 1E1530 801F07C0 AC2E9E20 */  sw         $t6, %lo(D_800E9E20)($at)
.L801F07C4_ovl10:
/* 1E1534 801F07C4 8E020000 */  lw         $v0, 0x0($s0)
.L801F07C8_ovl10:
/* 1E1538 801F07C8 3C09800E */  lui        $t1, %hi(gEntitiesNextPosYArray)
/* 1E153C 801F07CC 25292790 */  addiu      $t1, $t1, %lo(gEntitiesNextPosYArray)
/* 1E1540 801F07D0 8C4F0000 */  lw         $t7, 0x0($v0)
.L801F07D4_ovl9:
/* 1E1544 801F07D4 44805000 */  mtc1       $zero, $f10
/* 1E1548 801F07D8 000FC880 */  sll        $t9, $t7, 2
/* 1E154C 801F07DC 03291821 */  addu       $v1, $t9, $t1
/* 1E1550 801F07E0 C4680000 */  lwc1       $f8, 0x0($v1)
/* 1E1554 801F07E4 460A403C */  c.lt.s     $f8, $f10
/* 1E1558 801F07E8 00000000 */  nop
/* 1E155C 801F07EC 4500004F */  bc1f       .L801F092C_ovl10
/* 1E1560 801F07F0 00000000 */   nop
/* 1E1564 801F07F4 44808000 */  mtc1       $zero, $f16
/* 1E1568 801F07F8 3C01801F */  lui        $at, %hi(D_801F4C8C_ovl10)
/* 1E156C 801F07FC C4204C8C */  lwc1       $f0, %lo(D_801F4C8C_ovl10)($at)
/* 1E1570 801F0800 E4700000 */  swc1       $f16, 0x0($v1)
/* 1E1574 801F0804 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E1578 801F0808 44809000 */  mtc1       $zero, $f18
/* 1E157C 801F080C 3C05800E */  lui        $a1, %hi(D_800E3590)
/* 1E1580 801F0810 24A53590 */  addiu      $a1, $a1, %lo(D_800E3590)
/* 1E1584 801F0814 000B6880 */  sll        $t5, $t3, 2
/* 1E1588 801F0818 00AD6021 */  addu       $t4, $a1, $t5
/* 1E158C 801F081C E5920000 */  swc1       $f18, 0x0($t4)
/* 1E1590 801F0820 8C480000 */  lw         $t0, 0x0($v0)
/* 1E1594 801F0824 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1E1598 801F0828 44803000 */  mtc1       $zero, $f6
/* 1E159C 801F082C 00084080 */  sll        $t0, $t0, 2
/* 1E15A0 801F0830 00A8C021 */  addu       $t8, $a1, $t0
/* 1E15A4 801F0834 C7040000 */  lwc1       $f4, 0x0($t8)
/* 1E15A8 801F0838 00280821 */  addu       $at, $at, $t0
/* 1E15AC 801F083C 44805000 */  mtc1       $zero, $f10
/* 1E15B0 801F0840 E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 1E15B4 801F0844 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E15B8 801F0848 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 1E15BC 801F084C 44808000 */  mtc1       $zero, $f16
/* 1E15C0 801F0850 000E5080 */  sll        $t2, $t6, 2
/* 1E15C4 801F0854 002A0821 */  addu       $at, $at, $t2
/* 1E15C8 801F0858 E4203AD0 */  swc1       $f0, %lo(D_800E3AD0)($at)
.L801F085C_ovl9:
/* 1E15CC 801F085C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1E15D0 801F0860 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1E15D4 801F0864 3C04801F */  lui        $a0, %hi(D_801F47F0_ovl10)
/* 1E15D8 801F0868 000FC880 */  sll        $t9, $t7, 2
/* 1E15DC 801F086C 00390821 */  addu       $at, $at, $t9
/* 1E15E0 801F0870 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 1E15E4 801F0874 8C480000 */  lw         $t0, 0x0($v0)
/* 1E15E8 801F0878 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1E15EC 801F087C 24190005 */  addiu      $t9, $zero, 0x5
/* 1E15F0 801F0880 00084080 */  sll        $t0, $t0, 2
/* 1E15F4 801F0884 00280821 */  addu       $at, $at, $t0
/* 1E15F8 801F0888 C4283750 */  lwc1       $f8, %lo(D_800E3750)($at)
/* 1E15FC 801F088C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E1600 801F0890 00280821 */  addu       $at, $at, $t0
/* 1E1604 801F0894 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 1E1608 801F0898 8C490000 */  lw         $t1, 0x0($v0)
/* 1E160C 801F089C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1E1610 801F08A0 8C8447F0 */  lw         $a0, %lo(D_801F47F0_ovl10)($a0)
/* 1E1614 801F08A4 00095880 */  sll        $t3, $t1, 2
/* 1E1618 801F08A8 002B0821 */  addu       $at, $at, $t3
/* 1E161C 801F08AC E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
/* 1E1620 801F08B0 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1E1624 801F08B4 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 1E1628 801F08B8 000D6080 */  sll        $t4, $t5, 2
/* 1E162C 801F08BC 002C0821 */  addu       $at, $at, $t4
/* 1E1630 801F08C0 E42A33D0 */  swc1       $f10, %lo(D_800E33D0)($at)
/* 1E1634 801F08C4 8C580000 */  lw         $t8, 0x0($v0)
/* 1E1638 801F08C8 3C01800E */  lui        $at, %hi(D_800E3910)
/* 1E163C 801F08CC 00187080 */  sll        $t6, $t8, 2
/* 1E1640 801F08D0 002E0821 */  addu       $at, $at, $t6
/* 1E1644 801F08D4 E4303910 */  swc1       $f16, %lo(D_800E3910)($at)
/* 1E1648 801F08D8 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1E164C 801F08DC 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 1E1650 801F08E0 000A7880 */  sll        $t7, $t2, 2
/* 1E1654 801F08E4 002F0821 */  addu       $at, $at, $t7
/* 1E1658 801F08E8 E4203E50 */  swc1       $f0, %lo(D_800E3E50)($at)
/* 1E165C 801F08EC 8C490000 */  lw         $t1, 0x0($v0)
/* 1E1660 801F08F0 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1E1664 801F08F4 00095880 */  sll        $t3, $t1, 2
.L801F08F8_ovl9:
/* 1E1668 801F08F8 002B0821 */  addu       $at, $at, $t3
/* 1E166C 801F08FC 0C02A806 */  jal        func_800AA018
/* 1E1670 801F0900 AC399C60 */   sw        $t9, %lo(D_800E9C60)($at)
/* 1E1674 801F0904 3C04801F */  lui        $a0, %hi(D_801F47F4_ovl10)
/* 1E1678 801F0908 8C8447F4 */  lw         $a0, %lo(D_801F47F4_ovl10)($a0)
/* 1E167C 801F090C 10800003 */  beqz       $a0, .L801F091C_ovl10
/* 1E1680 801F0910 00000000 */   nop
/* 1E1684 801F0914 0C02A806 */  jal        func_800AA018
/* 1E1688 801F0918 00000000 */   nop
.L801F091C_ovl10:
/* 1E168C 801F091C 0C02BC9F */  jal        func_800AF27C
/* 1E1690 801F0920 00000000 */   nop
/* 1E1694 801F0924 10000006 */  b          .L801F0940_ovl10
/* 1E1698 801F0928 8E020000 */   lw        $v0, 0x0($s0)
.L801F092C_ovl10:
/* 1E169C 801F092C 0C002DAF */  jal        finish_current_thread
/* 1E16A0 801F0930 24040001 */   addiu     $a0, $zero, 0x1
/* 1E16A4 801F0934 1000FF7B */  b          .L801F0724_ovl10
/* 1E16A8 801F0938 8E0B0000 */   lw        $t3, 0x0($s0)
/* 1E16AC 801F093C 8E020000 */  lw         $v0, 0x0($s0)
.L801F0940_ovl10:
/* 1E16B0 801F0940 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1E16B4 801F0944 240D0006 */  addiu      $t5, $zero, 0x6
/* 1E16B8 801F0948 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1E16BC 801F094C 3C03801F */  lui        $v1, %hi(func_801F4D7C_ovl10 + 0xC)
/* 1E16C0 801F0950 24634D88 */  addiu      $v1, $v1, %lo(func_801F4D7C_ovl10 + 0xC)
/* 1E16C4 801F0954 000CC080 */  sll        $t8, $t4, 2
/* 1E16C8 801F0958 00380821 */  addu       $at, $at, $t8
/* 1E16CC 801F095C AC2D9C60 */  sw         $t5, %lo(D_800E9C60)($at)
/* 1E16D0 801F0960 8C480000 */  lw         $t0, 0x0($v0)
/* 1E16D4 801F0964 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1E16D8 801F0968 C4660008 */  lwc1       $f6, 0x8($v1)
/* 1E16DC 801F096C 00084080 */  sll        $t0, $t0, 2
/* 1E16E0 801F0970 00280821 */  addu       $at, $at, $t0
/* 1E16E4 801F0974 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1E16E8 801F0978 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1E16EC 801F097C 00280821 */  addu       $at, $at, $t0
/* 1E16F0 801F0980 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1E16F4 801F0984 C4720000 */  lwc1       $f18, 0x0($v1)
/* 1E16F8 801F0988 46083381 */  sub.s      $f14, $f6, $f8
/* 1E16FC 801F098C 0C0061C3 */  jal        atan2f
/* 1E1700 801F0990 46049301 */   sub.s     $f12, $f18, $f4
/* 1E1704 801F0994 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1E1708 801F0998 3C0A800F */  lui        $t2, %hi(D_800E9E20)
/* 1E170C 801F099C 3C05800E */  lui        $a1, %hi(gEntitiesAngleYArray)
/* 1E1710 801F09A0 8DC80000 */  lw         $t0, 0x0($t6)
/* 1E1714 801F09A4 24A541D0 */  addiu      $a1, $a1, %lo(gEntitiesAngleYArray)
.L801F09A8_ovl9:
/* 1E1718 801F09A8 46000086 */  mov.s      $f2, $f0
/* 1E171C 801F09AC 00084080 */  sll        $t0, $t0, 2
/* 1E1720 801F09B0 01485021 */  addu       $t2, $t2, $t0
/* 1E1724 801F09B4 8D4A9E20 */  lw         $t2, %lo(D_800E9E20)($t2)
/* 1E1728 801F09B8 00A87821 */  addu       $t7, $a1, $t0
/* 1E172C 801F09BC 15400003 */  bnez       $t2, .L801F09CC_ovl10
/* 1E1730 801F09C0 3C01801F */   lui       $at, %hi(D_801F4C90_ovl10)
/* 1E1734 801F09C4 C42A4C90 */  lwc1       $f10, %lo(D_801F4C90_ovl10)($at)
/* 1E1738 801F09C8 460A0080 */  add.s      $f2, $f0, $f10
.L801F09CC_ovl10:
/* 1E173C 801F09CC C5F00000 */  lwc1       $f16, 0x0($t7)
/* 1E1740 801F09D0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1E1744 801F09D4 44812000 */  mtc1       $at, $f4
/* 1E1748 801F09D8 46101481 */  sub.s      $f18, $f2, $f16
/* 1E174C 801F09DC 00001825 */  or         $v1, $zero, $zero
/* 1E1750 801F09E0 46049003 */  div.s      $f0, $f18, $f4
glabel func_801F09E4_ovl9
/* 1E1754 801F09E4 E7A00064 */  swc1       $f0, 0x64($sp)
/* 1E1758 801F09E8 8E090000 */  lw         $t1, 0x0($s0)
.L801F09EC_ovl10:
/* 1E175C 801F09EC 3C05800E */  lui        $a1, %hi(gEntitiesAngleYArray)
/* 1E1760 801F09F0 24A541D0 */  addiu      $a1, $a1, %lo(gEntitiesAngleYArray)
/* 1E1764 801F09F4 8D390000 */  lw         $t9, 0x0($t1)
/* 1E1768 801F09F8 C7A00064 */  lwc1       $f0, 0x64($sp)
/* 1E176C 801F09FC AFA30050 */  sw         $v1, 0x50($sp)
/* 1E1770 801F0A00 00195880 */  sll        $t3, $t9, 2
/* 1E1774 801F0A04 00AB1021 */  addu       $v0, $a1, $t3
/* 1E1778 801F0A08 C4460000 */  lwc1       $f6, 0x0($v0)
/* 1E177C 801F0A0C 24040001 */  addiu      $a0, $zero, 0x1
/* 1E1780 801F0A10 46003200 */  add.s      $f8, $f6, $f0
/* 1E1784 801F0A14 0C002DAF */  jal        finish_current_thread
/* 1E1788 801F0A18 E4480000 */   swc1      $f8, 0x0($v0)
/* 1E178C 801F0A1C 8FA30050 */  lw         $v1, 0x50($sp)
/* 1E1790 801F0A20 24010005 */  addiu      $at, $zero, 0x5
/* 1E1794 801F0A24 24630001 */  addiu      $v1, $v1, 0x1
.L801F0A28_ovl9:
/* 1E1798 801F0A28 5461FFF0 */  bnel       $v1, $at, .L801F09EC_ovl10
/* 1E179C 801F0A2C 8E090000 */   lw        $t1, 0x0($s0)
/* 1E17A0 801F0A30 8E0C0000 */  lw         $t4, 0x0($s0)
/* 1E17A4 801F0A34 3C0E800F */  lui        $t6, %hi(D_800E9E20)
/* 1E17A8 801F0A38 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1E17AC 801F0A3C 000DC080 */  sll        $t8, $t5, 2
/* 1E17B0 801F0A40 01D87021 */  addu       $t6, $t6, $t8
/* 1E17B4 801F0A44 8DCE9E20 */  lw         $t6, %lo(D_800E9E20)($t6)
.L801F0A48_ovl9:
/* 1E17B8 801F0A48 11C000AC */  beqz       $t6, .L801F0CFC_ovl10
/* 1E17BC 801F0A4C 00000000 */   nop
/* 1E17C0 801F0A50 8FA4004C */  lw         $a0, 0x4C($sp)
/* 1E17C4 801F0A54 3C09801F */  lui        $t1, %hi(D_801F4D68_ovl10)
/* 1E17C8 801F0A58 25294D68 */  addiu      $t1, $t1, %lo(D_801F4D68_ovl10)
/* 1E17CC 801F0A5C 00047880 */  sll        $t7, $a0, 2
/* 1E17D0 801F0A60 01E93821 */  addu       $a3, $t7, $t1
.L801F0A64_ovl9:
/* 1E17D4 801F0A64 0C07C81D */  jal        func_801F2074_ovl10
/* 1E17D8 801F0A68 AFA70030 */   sw        $a3, 0x30($sp)
/* 1E17DC 801F0A6C 24010001 */  addiu      $at, $zero, 0x1
/* 1E17E0 801F0A70 14410003 */  bne        $v0, $at, .L801F0A80_ovl10
/* 1E17E4 801F0A74 8FA70030 */   lw        $a3, 0x30($sp)
.L801F0A78_ovl9:
/* 1E17E8 801F0A78 1000001A */  b          .L801F0AE4_ovl10
/* 1E17EC 801F0A7C 00008025 */   or        $s0, $zero, $zero
.L801F0A80_ovl10:
/* 1E17F0 801F0A80 8FB9004C */  lw         $t9, 0x4C($sp)
/* 1E17F4 801F0A84 24010006 */  addiu      $at, $zero, 0x6
/* 1E17F8 801F0A88 3C04800D */  lui        $a0, %hi(D_800D6B88)
/* 1E17FC 801F0A8C 17210015 */  bne        $t9, $at, .L801F0AE4_ovl10
/* 1E1800 801F0A90 24100001 */   addiu     $s0, $zero, 0x1
/* 1E1804 801F0A94 8C846B88 */  lw         $a0, %lo(D_800D6B88)($a0)
/* 1E1808 801F0A98 0C02E7F8 */  jal        func_800B9FE0
/* 1E180C 801F0A9C AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1810 801F0AA0 10400003 */  beqz       $v0, .L801F0AB0_ovl10
/* 1E1814 801F0AA4 8FA70030 */   lw        $a3, 0x30($sp)
/* 1E1818 801F0AA8 1000000E */  b          .L801F0AE4_ovl10
/* 1E181C 801F0AAC 24100001 */   addiu     $s0, $zero, 0x1
.L801F0AB0_ovl10:
/* 1E1820 801F0AB0 24100003 */  addiu      $s0, $zero, 0x3
/* 1E1824 801F0AB4 24040029 */  addiu      $a0, $zero, 0x29
/* 1E1828 801F0AB8 2405001E */  addiu      $a1, $zero, 0x1E
glabel func_801F0ABC_ovl9
/* 1E182C 801F0ABC 24060050 */  addiu      $a2, $zero, 0x50
/* 1E1830 801F0AC0 0C02BB02 */  jal        request_track_general
/* 1E1834 801F0AC4 AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1838 801F0AC8 00026080 */  sll        $t4, $v0, 2
/* 1E183C 801F0ACC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E1840 801F0AD0 002C0821 */  addu       $at, $at, $t4
/* 1E1844 801F0AD4 240B000E */  addiu      $t3, $zero, 0xE
/* 1E1848 801F0AD8 8FA70030 */  lw         $a3, 0x30($sp)
/* 1E184C 801F0ADC 10000001 */  b          .L801F0AE4_ovl10
/* 1E1850 801F0AE0 AC2B98E0 */   sw        $t3, %lo(D_800E98E0)($at)
.L801F0AE4_ovl10:
/* 1E1854 801F0AE4 3C18801F */  lui        $t8, %hi(D_801F47F8_ovl10)
/* 1E1858 801F0AE8 271847F8 */  addiu      $t8, $t8, %lo(D_801F47F8_ovl10)
/* 1E185C 801F0AEC 001068C0 */  sll        $t5, $s0, 3
/* 1E1860 801F0AF0 01B81021 */  addu       $v0, $t5, $t8
/* 1E1864 801F0AF4 8C440000 */  lw         $a0, 0x0($v0)
/* 1E1868 801F0AF8 AFA20028 */  sw         $v0, 0x28($sp)
/* 1E186C 801F0AFC 0C02A806 */  jal        func_800AA018
/* 1E1870 801F0B00 AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1874 801F0B04 8FAE0028 */  lw         $t6, 0x28($sp)
/* 1E1878 801F0B08 8FA70030 */  lw         $a3, 0x30($sp)
/* 1E187C 801F0B0C 8DC40004 */  lw         $a0, 0x4($t6)
/* 1E1880 801F0B10 50800005 */  beql       $a0, $zero, .L801F0B28_ovl10
/* 1E1884 801F0B14 24040029 */   addiu     $a0, $zero, 0x29
/* 1E1888 801F0B18 0C02A806 */  jal        func_800AA018
/* 1E188C 801F0B1C AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1890 801F0B20 8FA70030 */  lw         $a3, 0x30($sp)
/* 1E1894 801F0B24 24040029 */  addiu      $a0, $zero, 0x29
.L801F0B28_ovl10:
/* 1E1898 801F0B28 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E189C 801F0B2C 24060050 */  addiu      $a2, $zero, 0x50
/* 1E18A0 801F0B30 0C02BB02 */  jal        request_track_general
/* 1E18A4 801F0B34 AFA70030 */   sw        $a3, 0x30($sp)
/* 1E18A8 801F0B38 3C06800F */  lui        $a2, %hi(D_800E9AA0)
/* 1E18AC 801F0B3C 00022880 */  sll        $a1, $v0, 2
/* 1E18B0 801F0B40 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E18B4 801F0B44 8FA70030 */  lw         $a3, 0x30($sp)
/* 1E18B8 801F0B48 24C69AA0 */  addiu      $a2, $a2, %lo(D_800E9AA0)
/* 1E18BC 801F0B4C 00250821 */  addu       $at, $at, $a1
/* 1E18C0 801F0B50 240A000D */  addiu      $t2, $zero, 0xD
/* 1E18C4 801F0B54 AC2A98E0 */  sw         $t2, %lo(D_800E98E0)($at)
/* 1E18C8 801F0B58 00C57821 */  addu       $t7, $a2, $a1
/* 1E18CC 801F0B5C ADF00000 */  sw         $s0, 0x0($t7)
/* 1E18D0 801F0B60 8CE30000 */  lw         $v1, 0x0($a3)
/* 1E18D4 801F0B64 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E18D8 801F0B68 8FB9004C */  lw         $t9, 0x4C($sp)
/* 1E18DC 801F0B6C 00031880 */  sll        $v1, $v1, 2
/* 1E18E0 801F0B70 00230821 */  addu       $at, $at, $v1
/* 1E18E4 801F0B74 24090001 */  addiu      $t1, $zero, 0x1
/* 1E18E8 801F0B78 AC2998E0 */  sw         $t1, %lo(D_800E98E0)($at)
/* 1E18EC 801F0B7C 24010006 */  addiu      $at, $zero, 0x6
/* 1E18F0 801F0B80 1721000D */  bne        $t9, $at, .L801F0BB8_ovl10
/* 1E18F4 801F0B84 00002025 */   or        $a0, $zero, $zero
/* 1E18F8 801F0B88 8FAB0028 */  lw         $t3, 0x28($sp)
/* 1E18FC 801F0B8C 3C0C801F */  lui        $t4, %hi(.L801F4810_ovl10)
/* 1E1900 801F0B90 258C4810 */  addiu      $t4, $t4, %lo(.L801F4810_ovl10)
/* 1E1904 801F0B94 156C0006 */  bne        $t3, $t4, .L801F0BB0_ovl10
/* 1E1908 801F0B98 3C01800F */   lui       $at, %hi(D_800E9C60)
/* 1E190C 801F0B9C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1E1910 801F0BA0 00230821 */  addu       $at, $at, $v1
/* 1E1914 801F0BA4 240D0001 */  addiu      $t5, $zero, 0x1
/* 1E1918 801F0BA8 10000003 */  b          .L801F0BB8_ovl10
/* 1E191C 801F0BAC AC2D9C60 */   sw        $t5, %lo(D_800E9C60)($at)
.L801F0BB0_ovl10:
/* 1E1920 801F0BB0 00230821 */  addu       $at, $at, $v1
/* 1E1924 801F0BB4 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
.L801F0BB8_ovl10:
/* 1E1928 801F0BB8 24030007 */  addiu      $v1, $zero, 0x7
/* 1E192C 801F0BBC 8FB8004C */  lw         $t8, 0x4C($sp)
.L801F0BC0_ovl10:
/* 1E1930 801F0BC0 00047080 */  sll        $t6, $a0, 2
/* 1E1934 801F0BC4 3C02801F */  lui        $v0, %hi(D_801F4D68_ovl10)
/* 1E1938 801F0BC8 10980007 */  beq        $a0, $t8, .L801F0BE8_ovl10
/* 1E193C 801F0BCC 004E1021 */   addu      $v0, $v0, $t6
/* 1E1940 801F0BD0 8C424D68 */  lw         $v0, %lo(D_801F4D68_ovl10)($v0)
/* 1E1944 801F0BD4 240A0001 */  addiu      $t2, $zero, 0x1
/* 1E1948 801F0BD8 10400003 */  beqz       $v0, .L801F0BE8_ovl10
/* 1E194C 801F0BDC 00027880 */   sll       $t7, $v0, 2
/* 1E1950 801F0BE0 00CF4821 */  addu       $t1, $a2, $t7
/* 1E1954 801F0BE4 AD2A0000 */  sw         $t2, 0x0($t1)
.L801F0BE8_ovl10:
/* 1E1958 801F0BE8 24840001 */  addiu      $a0, $a0, 0x1
/* 1E195C 801F0BEC 5483FFF4 */  bnel       $a0, $v1, .L801F0BC0_ovl10
/* 1E1960 801F0BF0 8FB8004C */   lw        $t8, 0x4C($sp)
/* 1E1964 801F0BF4 24040014 */  addiu      $a0, $zero, 0x14
/* 1E1968 801F0BF8 0C002DAF */  jal        finish_current_thread
/* 1E196C 801F0BFC AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1970 801F0C00 8FA70030 */  lw         $a3, 0x30($sp)
/* 1E1974 801F0C04 3C19801F */  lui        $t9, %hi(D_801F4D78_ovl10)
/* 1E1978 801F0C08 27394D78 */  addiu      $t9, $t9, %lo(D_801F4D78_ovl10)
/* 1E197C 801F0C0C 14F90005 */  bne        $a3, $t9, .L801F0C24_ovl10
/* 1E1980 801F0C10 3C0140C0 */   lui       $at, (0x40C00000 >> 16)
/* 1E1984 801F0C14 44816000 */  mtc1       $at, $f12
/* 1E1988 801F0C18 0C02EFF8 */  jal        change_kirby_hp
/* 1E198C 801F0C1C AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1990 801F0C20 8FA70030 */  lw         $a3, 0x30($sp)
.L801F0C24_ovl10:
/* 1E1994 801F0C24 3C0B801F */  lui        $t3, %hi(func_801F4D7C_ovl10)
/* 1E1998 801F0C28 256B4D7C */  addiu      $t3, $t3, %lo(func_801F4D7C_ovl10)
/* 1E199C 801F0C2C 14EB0005 */  bne        $a3, $t3, .L801F0C44_ovl10
/* 1E19A0 801F0C30 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 1E19A4 801F0C34 44816000 */  mtc1       $at, $f12
/* 1E19A8 801F0C38 0C02EFF8 */  jal        change_kirby_hp
/* 1E19AC 801F0C3C AFA70030 */   sw        $a3, 0x30($sp)
/* 1E19B0 801F0C40 8FA70030 */  lw         $a3, 0x30($sp)
.L801F0C44_ovl10:
/* 1E19B4 801F0C44 3C0C801F */  lui        $t4, %hi(D_801F4D68_ovl10)
/* 1E19B8 801F0C48 258C4D68 */  addiu      $t4, $t4, %lo(D_801F4D68_ovl10)
/* 1E19BC 801F0C4C 14EC0004 */  bne        $a3, $t4, .L801F0C60_ovl10
/* 1E19C0 801F0C50 24040001 */   addiu     $a0, $zero, 0x1
/* 1E19C4 801F0C54 0C02F090 */  jal        change_kirby_stars
/* 1E19C8 801F0C58 AFA70030 */   sw        $a3, 0x30($sp)
/* 1E19CC 801F0C5C 8FA70030 */  lw         $a3, 0x30($sp)
.L801F0C60_ovl10:
/* 1E19D0 801F0C60 3C0D801F */  lui        $t5, %hi(.L801F4D6C_ovl10)
/* 1E19D4 801F0C64 25AD4D6C */  addiu      $t5, $t5, %lo(.L801F4D6C_ovl10)
/* 1E19D8 801F0C68 14ED0004 */  bne        $a3, $t5, .L801F0C7C_ovl10
/* 1E19DC 801F0C6C 24040003 */   addiu     $a0, $zero, 0x3
/* 1E19E0 801F0C70 0C02F090 */  jal        change_kirby_stars
/* 1E19E4 801F0C74 AFA70030 */   sw        $a3, 0x30($sp)
/* 1E19E8 801F0C78 8FA70030 */  lw         $a3, 0x30($sp)
.L801F0C7C_ovl10:
/* 1E19EC 801F0C7C 3C18801F */  lui        $t8, %hi(.L801F4D70_ovl10)
/* 1E19F0 801F0C80 27184D70 */  addiu      $t8, $t8, %lo(.L801F4D70_ovl10)
/* 1E19F4 801F0C84 14F80004 */  bne        $a3, $t8, .L801F0C98_ovl10
/* 1E19F8 801F0C88 24040005 */   addiu     $a0, $zero, 0x5
/* 1E19FC 801F0C8C 0C02F090 */  jal        change_kirby_stars
/* 1E1A00 801F0C90 AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1A04 801F0C94 8FA70030 */  lw         $a3, 0x30($sp)
.L801F0C98_ovl10:
/* 1E1A08 801F0C98 3C0E801F */  lui        $t6, %hi(D_801F4D74_ovl10)
/* 1E1A0C 801F0C9C 25CE4D74 */  addiu      $t6, $t6, %lo(D_801F4D74_ovl10)
/* 1E1A10 801F0CA0 14EE0006 */  bne        $a3, $t6, .L801F0CBC_ovl10
/* 1E1A14 801F0CA4 24040001 */   addiu     $a0, $zero, 0x1
/* 1E1A18 801F0CA8 0C02F096 */  jal        change_kirby_lives
/* 1E1A1C 801F0CAC AFA70030 */   sw        $a3, 0x30($sp)
/* 1E1A20 801F0CB0 0C029D9E */  jal        play_sound
/* 1E1A24 801F0CB4 24040001 */   addiu     $a0, $zero, 0x1
/* 1E1A28 801F0CB8 8FA70030 */  lw         $a3, 0x30($sp)
.L801F0CBC_ovl10:
/* 1E1A2C 801F0CBC 3C0F801F */  lui        $t7, %hi(func_801F4D7C_ovl10 + 0x4)
/* 1E1A30 801F0CC0 25EF4D80 */  addiu      $t7, $t7, %lo(func_801F4D7C_ovl10 + 0x4)
/* 1E1A34 801F0CC4 14EF0033 */  bne        $a3, $t7, .L801F0D94_ovl10
/* 1E1A38 801F0CC8 8FAA0028 */   lw        $t2, 0x28($sp)
/* 1E1A3C 801F0CCC 3C09801F */  lui        $t1, %hi(D_801F4800_ovl10)
/* 1E1A40 801F0CD0 25294800 */  addiu      $t1, $t1, %lo(D_801F4800_ovl10)
/* 1E1A44 801F0CD4 15490005 */  bne        $t2, $t1, .L801F0CEC_ovl10
/* 1E1A48 801F0CD8 00000000 */   nop
/* 1E1A4C 801F0CDC 0C029D9E */  jal        play_sound
/* 1E1A50 801F0CE0 24040271 */   addiu     $a0, $zero, 0x271
/* 1E1A54 801F0CE4 1000002C */  b          .L801F0D98_ovl10
/* 1E1A58 801F0CE8 24040028 */   addiu     $a0, $zero, 0x28
.L801F0CEC_ovl10:
/* 1E1A5C 801F0CEC 0C029D9E */  jal        play_sound
/* 1E1A60 801F0CF0 24040273 */   addiu     $a0, $zero, 0x273
/* 1E1A64 801F0CF4 10000028 */  b          .L801F0D98_ovl10
/* 1E1A68 801F0CF8 24040028 */   addiu     $a0, $zero, 0x28
.L801F0CFC_ovl10:
/* 1E1A6C 801F0CFC 3C04801F */  lui        $a0, %hi(D_801F4808_ovl10)
/* 1E1A70 801F0D00 0C02A806 */  jal        func_800AA018
/* 1E1A74 801F0D04 8C844808 */   lw        $a0, %lo(D_801F4808_ovl10)($a0)
/* 1E1A78 801F0D08 3C04801F */  lui        $a0, %hi(D_801F480C_ovl10)
/* 1E1A7C 801F0D0C 8C84480C */  lw         $a0, %lo(D_801F480C_ovl10)($a0)
/* 1E1A80 801F0D10 50800004 */  beql       $a0, $zero, .L801F0D24_ovl10
/* 1E1A84 801F0D14 24040029 */   addiu     $a0, $zero, 0x29
/* 1E1A88 801F0D18 0C02A806 */  jal        func_800AA018
/* 1E1A8C 801F0D1C 00000000 */   nop
/* 1E1A90 801F0D20 24040029 */  addiu      $a0, $zero, 0x29
.L801F0D24_ovl10:
/* 1E1A94 801F0D24 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E1A98 801F0D28 0C02BB02 */  jal        request_track_general
/* 1E1A9C 801F0D2C 24060050 */   addiu     $a2, $zero, 0x50
/* 1E1AA0 801F0D30 00022880 */  sll        $a1, $v0, 2
/* 1E1AA4 801F0D34 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E1AA8 801F0D38 00250821 */  addu       $at, $at, $a1
/* 1E1AAC 801F0D3C 2419000D */  addiu      $t9, $zero, 0xD
/* 1E1AB0 801F0D40 AC3998E0 */  sw         $t9, %lo(D_800E98E0)($at)
/* 1E1AB4 801F0D44 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1E1AB8 801F0D48 00250821 */  addu       $at, $at, $a1
/* 1E1ABC 801F0D4C 240B0002 */  addiu      $t3, $zero, 0x2
/* 1E1AC0 801F0D50 3C03801F */  lui        $v1, %hi(D_801F4D68_ovl10)
.L801F0D54_ovl9:
/* 1E1AC4 801F0D54 3C04801F */  lui        $a0, %hi(func_801F4D7C_ovl10 + 0x8)
/* 1E1AC8 801F0D58 AC2B9AA0 */  sw         $t3, %lo(D_800E9AA0)($at)
/* 1E1ACC 801F0D5C 24844D84 */  addiu      $a0, $a0, %lo(func_801F4D7C_ovl10 + 0x8)
/* 1E1AD0 801F0D60 24634D68 */  addiu      $v1, $v1, %lo(D_801F4D68_ovl10)
/* 1E1AD4 801F0D64 8C620000 */  lw         $v0, 0x0($v1)
.L801F0D68_ovl10:
/* 1E1AD8 801F0D68 24630004 */  addiu      $v1, $v1, 0x4
/* 1E1ADC 801F0D6C 240C0001 */  addiu      $t4, $zero, 0x1
/* 1E1AE0 801F0D70 10400004 */  beqz       $v0, .L801F0D84_ovl10
/* 1E1AE4 801F0D74 00026880 */   sll       $t5, $v0, 2
/* 1E1AE8 801F0D78 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1E1AEC 801F0D7C 002D0821 */  addu       $at, $at, $t5
/* 1E1AF0 801F0D80 AC2C9AA0 */  sw         $t4, %lo(D_800E9AA0)($at)
.L801F0D84_ovl10:
/* 1E1AF4 801F0D84 5464FFF8 */  bnel       $v1, $a0, .L801F0D68_ovl10
/* 1E1AF8 801F0D88 8C620000 */   lw        $v0, 0x0($v1)
/* 1E1AFC 801F0D8C 0C002DAF */  jal        finish_current_thread
/* 1E1B00 801F0D90 24040014 */   addiu     $a0, $zero, 0x14
.L801F0D94_ovl10:
/* 1E1B04 801F0D94 24040028 */  addiu      $a0, $zero, 0x28
.L801F0D98_ovl10:
/* 1E1B08 801F0D98 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E1B0C 801F0D9C 0C02BB02 */  jal        request_track_general
/* 1E1B10 801F0DA0 2406004F */   addiu     $a2, $zero, 0x4F
/* 1E1B14 801F0DA4 00027080 */  sll        $t6, $v0, 2
/* 1E1B18 801F0DA8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1E1B1C 801F0DAC 002E0821 */  addu       $at, $at, $t6
.L801F0DB0_ovl9:
/* 1E1B20 801F0DB0 24180003 */  addiu      $t8, $zero, 0x3
/* 1E1B24 801F0DB4 0C02BE85 */  jal        func_800AFA14
/* 1E1B28 801F0DB8 AC3898E0 */   sw        $t8, %lo(D_800E98E0)($at)
/* 1E1B2C 801F0DBC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1E1B30 801F0DC0 8FB00020 */  lw         $s0, 0x20($sp)
/* 1E1B34 801F0DC4 27BD0088 */  addiu      $sp, $sp, 0x88
/* 1E1B38 801F0DC8 03E00008 */  jr         $ra
/* 1E1B3C 801F0DCC 00000000 */   nop
