glabel func_801F0ABC_ovl9
/* 19EB0C 801F0ABC 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 19EB10 801F0AC0 AFB0001C */  sw         $s0, 0x1C($sp)
/* 19EB14 801F0AC4 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 19EB18 801F0AC8 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 19EB1C 801F0ACC 8E0E0000 */  lw         $t6, 0x0($s0)
/* 19EB20 801F0AD0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19EB24 801F0AD4 AFB10020 */  sw         $s1, 0x20($sp)
/* 19EB28 801F0AD8 AFA40068 */  sw         $a0, 0x68($sp)
/* 19EB2C 801F0ADC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19EB30 801F0AE0 3C11800E */  lui        $s1, %hi(D_800E1B50)
.L801F0AE4_ovl10:
/* 19EB34 801F0AE4 000FC080 */  sll        $t8, $t7, 2
/* 19EB38 801F0AE8 02388821 */  addu       $s1, $s1, $t8
/* 19EB3C 801F0AEC 0C068CA0 */  jal        func_801A3280_ovl7
/* 19EB40 801F0AF0 8E311B50 */   lw        $s1, %lo(D_800E1B50)($s1)
/* 19EB44 801F0AF4 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 19EB48 801F0AF8 00000000 */   nop
/* 19EB4C 801F0AFC 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 19EB50 801F0B00 44812000 */  mtc1       $at, $f4
/* 19EB54 801F0B04 8E390080 */  lw         $t9, 0x80($s1)
/* 19EB58 801F0B08 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 19EB5C 801F0B0C 44813000 */  mtc1       $at, $f6
/* 19EB60 801F0B10 E7240010 */  swc1       $f4, 0x10($t9)
/* 19EB64 801F0B14 8E030000 */  lw         $v1, 0x0($s0)
/* 19EB68 801F0B18 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19EB6C 801F0B1C 3C09800E */  lui        $t1, %hi(D_800E0D50)
/* 19EB70 801F0B20 8C6A0000 */  lw         $t2, 0x0($v1)
/* 19EB74 801F0B24 25290D50 */  addiu      $t1, $t1, %lo(D_800E0D50)
.L801F0B28_ovl10:
/* 19EB78 801F0B28 3C06800E */  lui        $a2, %hi(gEntitiesAngleYArray)
/* 19EB7C 801F0B2C 000A5880 */  sll        $t3, $t2, 2
/* 19EB80 801F0B30 002B0821 */  addu       $at, $at, $t3
/* 19EB84 801F0B34 E4266A10 */  swc1       $f6, %lo(D_800E6A10)($at)
/* 19EB88 801F0B38 8C620000 */  lw         $v0, 0x0($v1)
/* 19EB8C 801F0B3C 24C641D0 */  addiu      $a2, $a2, %lo(gEntitiesAngleYArray)
/* 19EB90 801F0B40 3C07800E */  lui        $a3, %hi(D_800E17D0)
/* 19EB94 801F0B44 00021080 */  sll        $v0, $v0, 2
/* 19EB98 801F0B48 01226021 */  addu       $t4, $t1, $v0
/* 19EB9C 801F0B4C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 19EBA0 801F0B50 00C2C021 */  addu       $t8, $a2, $v0
/* 19EBA4 801F0B54 24E717D0 */  addiu      $a3, $a3, %lo(D_800E17D0)
/* 19EBA8 801F0B58 000D7080 */  sll        $t6, $t5, 2
/* 19EBAC 801F0B5C 00CE7821 */  addu       $t7, $a2, $t6
/* 19EBB0 801F0B60 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 19EBB4 801F0B64 3C08800F */  lui        $t0, %hi(D_800E9020)
/* 19EBB8 801F0B68 25089020 */  addiu      $t0, $t0, %lo(D_800E9020)
/* 19EBBC 801F0B6C E7080000 */  swc1       $f8, 0x0($t8)
/* 19EBC0 801F0B70 8C620000 */  lw         $v0, 0x0($v1)
/* 19EBC4 801F0B74 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19EBC8 801F0B78 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 19EBCC 801F0B7C 00021080 */  sll        $v0, $v0, 2
/* 19EBD0 801F0B80 0122C821 */  addu       $t9, $t1, $v0
/* 19EBD4 801F0B84 8F2A0000 */  lw         $t2, 0x0($t9)
/* 19EBD8 801F0B88 00E26821 */  addu       $t5, $a3, $v0
/* 19EBDC 801F0B8C 3C05800B */  lui        $a1, %hi(func_800B1434)
/* 19EBE0 801F0B90 000A5880 */  sll        $t3, $t2, 2
/* 19EBE4 801F0B94 00EB6021 */  addu       $t4, $a3, $t3
/* 19EBE8 801F0B98 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 19EBEC 801F0B9C 3C0B800B */  lui        $t3, %hi(func_800B4924)
/* 19EBF0 801F0BA0 256B4924 */  addiu      $t3, $t3, %lo(func_800B4924)
/* 19EBF4 801F0BA4 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 19EBF8 801F0BA8 8C620000 */  lw         $v0, 0x0($v1)
/* 19EBFC 801F0BAC 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
.L801F0BB0_ovl10:
/* 19EC00 801F0BB0 00021080 */  sll        $v0, $v0, 2
/* 19EC04 801F0BB4 01227021 */  addu       $t6, $t1, $v0
.L801F0BB8_ovl10:
/* 19EC08 801F0BB8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19EC0C 801F0BBC 01025021 */  addu       $t2, $t0, $v0
.L801F0BC0_ovl10:
/* 19EC10 801F0BC0 3C0E801F */  lui        $t6, %hi(func_801F0DFC_ovl9)
/* 19EC14 801F0BC4 000FC080 */  sll        $t8, $t7, 2
/* 19EC18 801F0BC8 0118C821 */  addu       $t9, $t0, $t8
/* 19EC1C 801F0BCC C7300000 */  lwc1       $f16, 0x0($t9)
/* 19EC20 801F0BD0 25CE0DFC */  addiu      $t6, $t6, %lo(func_801F0DFC_ovl9)
/* 19EC24 801F0BD4 E5500000 */  swc1       $f16, 0x0($t2)
/* 19EC28 801F0BD8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 19EC2C 801F0BDC 000C6880 */  sll        $t5, $t4, 2
/* 19EC30 801F0BE0 002D0821 */  addu       $at, $at, $t5
/* 19EC34 801F0BE4 AC2BEF90 */  sw         $t3, %lo(D_800DEF90)($at)
.L801F0BE8_ovl10:
/* 19EC38 801F0BE8 8C6F0000 */  lw         $t7, 0x0($v1)
/* 19EC3C 801F0BEC 3C01800E */  lui        $at, %hi(D_800DF150)
/* 19EC40 801F0BF0 000FC080 */  sll        $t8, $t7, 2
/* 19EC44 801F0BF4 00380821 */  addu       $at, $at, $t8
/* 19EC48 801F0BF8 AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* 19EC4C 801F0BFC 8C790000 */  lw         $t9, 0x0($v1)
/* 19EC50 801F0C00 00195080 */  sll        $t2, $t9, 2
/* 19EC54 801F0C04 008A2021 */  addu       $a0, $a0, $t2
/* 19EC58 801F0C08 0C02C7DA */  jal        func_800B1F68
/* 19EC5C 801F0C0C 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 19EC60 801F0C10 24040003 */  addiu      $a0, $zero, 0x3
/* 19EC64 801F0C14 24050002 */  addiu      $a1, $zero, 0x2
/* 19EC68 801F0C18 0C02A08D */  jal        func_800A8234
/* 19EC6C 801F0C1C 240600F1 */   addiu     $a2, $zero, 0xF1
/* 19EC70 801F0C20 AE220034 */  sw         $v0, 0x34($s1)
.L801F0C24_ovl10:
/* 19EC74 801F0C24 8E030000 */  lw         $v1, 0x0($s0)
/* 19EC78 801F0C28 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 19EC7C 801F0C2C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 19EC80 801F0C30 000C5880 */  sll        $t3, $t4, 2
/* 19EC84 801F0C34 002B0821 */  addu       $at, $at, $t3
/* 19EC88 801F0C38 AC2298E0 */  sw         $v0, %lo(D_800E98E0)($at)
/* 19EC8C 801F0C3C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 19EC90 801F0C40 3C01800F */  lui        $at, %hi(D_800E8920)
.L801F0C44_ovl10:
/* 19EC94 801F0C44 000D7880 */  sll        $t7, $t5, 2
/* 19EC98 801F0C48 002F0821 */  addu       $at, $at, $t7
/* 19EC9C 801F0C4C 0C02CCFD */  jal        func_800B33F4
/* 19ECA0 801F0C50 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 19ECA4 801F0C54 3C018022 */  lui        $at, %hi(D_8021D8B4_ovl9)
/* 19ECA8 801F0C58 C432D8B4 */  lwc1       $f18, %lo(D_8021D8B4_ovl9)($at)
/* 19ECAC 801F0C5C 240E0020 */  addiu      $t6, $zero, 0x20
.L801F0C60_ovl10:
/* 19ECB0 801F0C60 AFAE0060 */  sw         $t6, 0x60($sp)
/* 19ECB4 801F0C64 27A40034 */  addiu      $a0, $sp, 0x34
/* 19ECB8 801F0C68 0C067B56 */  jal        func_8019ED58_ovl7
/* 19ECBC 801F0C6C E7B20058 */   swc1      $f18, 0x58($sp)
/* 19ECC0 801F0C70 0C002DAF */  jal        finish_current_thread
/* 19ECC4 801F0C74 8FA40060 */   lw        $a0, 0x60($sp)
/* 19ECC8 801F0C78 0C02CCFD */  jal        func_800B33F4
.L801F0C7C_ovl10:
/* 19ECCC 801F0C7C 00000000 */   nop
/* 19ECD0 801F0C80 8E030000 */  lw         $v1, 0x0($s0)
/* 19ECD4 801F0C84 3C01C080 */  lui        $at, (0xC0800000 >> 16)
/* 19ECD8 801F0C88 44812000 */  mtc1       $at, $f4
/* 19ECDC 801F0C8C 8C780000 */  lw         $t8, 0x0($v1)
/* 19ECE0 801F0C90 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19ECE4 801F0C94 24040008 */  addiu      $a0, $zero, 0x8
.L801F0C98_ovl10:
/* 19ECE8 801F0C98 0018C880 */  sll        $t9, $t8, 2
/* 19ECEC 801F0C9C 00390821 */  addu       $at, $at, $t9
/* 19ECF0 801F0CA0 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 19ECF4 801F0CA4 8C6A0000 */  lw         $t2, 0x0($v1)
/* 19ECF8 801F0CA8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 19ECFC 801F0CAC 44813000 */  mtc1       $at, $f6
/* 19ED00 801F0CB0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 19ED04 801F0CB4 000A6080 */  sll        $t4, $t2, 2
/* 19ED08 801F0CB8 002C0821 */  addu       $at, $at, $t4
.L801F0CBC_ovl10:
/* 19ED0C 801F0CBC 0C002DAF */  jal        finish_current_thread
/* 19ED10 801F0CC0 E4263750 */   swc1      $f6, %lo(D_800E3750)($at)
/* 19ED14 801F0CC4 8E030000 */  lw         $v1, 0x0($s0)
/* 19ED18 801F0CC8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 19ED1C 801F0CCC 44814000 */  mtc1       $at, $f8
/* 19ED20 801F0CD0 8C6B0000 */  lw         $t3, 0x0($v1)
/* 19ED24 801F0CD4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19ED28 801F0CD8 24040008 */  addiu      $a0, $zero, 0x8
/* 19ED2C 801F0CDC 000B6880 */  sll        $t5, $t3, 2
/* 19ED30 801F0CE0 002D0821 */  addu       $at, $at, $t5
/* 19ED34 801F0CE4 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 19ED38 801F0CE8 8C6F0000 */  lw         $t7, 0x0($v1)
.L801F0CEC_ovl10:
/* 19ED3C 801F0CEC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 19ED40 801F0CF0 44815000 */  mtc1       $at, $f10
/* 19ED44 801F0CF4 3C01800E */  lui        $at, %hi(D_800E3750)
/* 19ED48 801F0CF8 000F7080 */  sll        $t6, $t7, 2
.L801F0CFC_ovl10:
/* 19ED4C 801F0CFC 002E0821 */  addu       $at, $at, $t6
/* 19ED50 801F0D00 0C002DAF */  jal        finish_current_thread
/* 19ED54 801F0D04 E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
/* 19ED58 801F0D08 8E180000 */  lw         $t8, 0x0($s0)
/* 19ED5C 801F0D0C 3C03800F */  lui        $v1, %hi(D_800E98E0)
/* 19ED60 801F0D10 8F020000 */  lw         $v0, 0x0($t8)
/* 19ED64 801F0D14 00021080 */  sll        $v0, $v0, 2
/* 19ED68 801F0D18 00621821 */  addu       $v1, $v1, $v0
/* 19ED6C 801F0D1C 8C6398E0 */  lw         $v1, %lo(D_800E98E0)($v1)
/* 19ED70 801F0D20 1060000C */  beqz       $v1, .L801F0D54_ovl9
.L801F0D24_ovl10:
/* 19ED74 801F0D24 00000000 */   nop
/* 19ED78 801F0D28 0C0288B5 */  jal        func_800A22D4
/* 19ED7C 801F0D2C 00602025 */   or        $a0, $v1, $zero
/* 19ED80 801F0D30 AE200034 */  sw         $zero, 0x34($s1)
/* 19ED84 801F0D34 8E030000 */  lw         $v1, 0x0($s0)
/* 19ED88 801F0D38 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 19ED8C 801F0D3C 8C790000 */  lw         $t9, 0x0($v1)
/* 19ED90 801F0D40 00195080 */  sll        $t2, $t9, 2
/* 19ED94 801F0D44 002A0821 */  addu       $at, $at, $t2
/* 19ED98 801F0D48 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 19ED9C 801F0D4C 8C620000 */  lw         $v0, 0x0($v1)
/* 19EDA0 801F0D50 00021080 */  sll        $v0, $v0, 2
.L801F0D54_ovl9:
/* 19EDA4 801F0D54 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 19EDA8 801F0D58 00220821 */  addu       $at, $at, $v0
/* 19EDAC 801F0D5C C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 19EDB0 801F0D60 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 19EDB4 801F0D64 00220821 */  addu       $at, $at, $v0
.L801F0D68_ovl10:
/* 19EDB8 801F0D68 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 19EDBC 801F0D6C 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 19EDC0 801F0D70 00E23821 */  addu       $a3, $a3, $v0
/* 19EDC4 801F0D74 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 19EDC8 801F0D78 24040003 */  addiu      $a0, $zero, 0x3
/* 19EDCC 801F0D7C 24050002 */  addiu      $a1, $zero, 0x2
/* 19EDD0 801F0D80 240600F2 */  addiu      $a2, $zero, 0xF2
.L801F0D84_ovl10:
/* 19EDD4 801F0D84 E7B00010 */  swc1       $f16, 0x10($sp)
/* 19EDD8 801F0D88 0C029FDD */  jal        func_800A7F74
/* 19EDDC 801F0D8C E7B20014 */   swc1      $f18, 0x14($sp)
/* 19EDE0 801F0D90 8E2C0094 */  lw         $t4, 0x94($s1)
.L801F0D94_ovl10:
/* 19EDE4 801F0D94 3C018000 */  lui        $at, (0x80000000 >> 16)
.L801F0D98_ovl10:
/* 19EDE8 801F0D98 8D84001C */  lw         $a0, 0x1C($t4)
/* 19EDEC 801F0D9C 50810004 */  beql       $a0, $at, .L801F0DB0_ovl9
/* 19EDF0 801F0DA0 8E0D0000 */   lw        $t5, 0x0($s0)
/* 19EDF4 801F0DA4 0C029D9E */  jal        play_sound
/* 19EDF8 801F0DA8 00000000 */   nop
/* 19EDFC 801F0DAC 8E0D0000 */  lw         $t5, 0x0($s0)
.L801F0DB0_ovl9:
/* 19EE00 801F0DB0 3C18800E */  lui        $t8, %hi(D_800E0D50)
/* 19EE04 801F0DB4 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 19EE08 801F0DB8 8DAF0000 */  lw         $t7, 0x0($t5)
/* 19EE0C 801F0DBC 240B000A */  addiu      $t3, $zero, 0xA
/* 19EE10 801F0DC0 240A0001 */  addiu      $t2, $zero, 0x1
/* 19EE14 801F0DC4 000F7080 */  sll        $t6, $t7, 2
/* 19EE18 801F0DC8 030EC021 */  addu       $t8, $t8, $t6
/* 19EE1C 801F0DCC 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
glabel func_801F0DD0_ovl10
/* 19EE20 801F0DD0 0018C880 */  sll        $t9, $t8, 2
/* 19EE24 801F0DD4 00390821 */  addu       $at, $at, $t9
/* 19EE28 801F0DD8 AC2B9E20 */  sw         $t3, %lo(D_800E9E20)($at)
/* 19EE2C 801F0DDC A22A0040 */  sb         $t2, 0x40($s1)
/* 19EE30 801F0DE0 0C068FA0 */  jal        func_801A3E80_ovl7
/* 19EE34 801F0DE4 8FA40068 */   lw        $a0, 0x68($sp)
/* 19EE38 801F0DE8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 19EE3C 801F0DEC 8FB0001C */  lw         $s0, 0x1C($sp)
/* 19EE40 801F0DF0 8FB10020 */  lw         $s1, 0x20($sp)
/* 19EE44 801F0DF4 03E00008 */  jr         $ra
/* 19EE48 801F0DF8 27BD0068 */   addiu     $sp, $sp, 0x68
