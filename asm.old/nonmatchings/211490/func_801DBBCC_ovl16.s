glabel func_801DBBCC_ovl16
/* 211E7C 801DBBCC 27BDFFA0 */  addiu      $sp, $sp, -0x60
.L801DBBD0_ovl15:
/* 211E80 801DBBD0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L801DBBD4_ovl10:
/* 211E84 801DBBD4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801DBBD8_ovl9:
/* 211E88 801DBBD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 211E8C 801DBBDC AFA40060 */  sw         $a0, 0x60($sp)
.L801DBBE0_ovl13:
/* 211E90 801DBBE0 AFA50064 */  sw         $a1, 0x64($sp)
.L801DBBE4_ovl14:
/* 211E94 801DBBE4 AFA60068 */  sw         $a2, 0x68($sp)
/* 211E98 801DBBE8 8DC40000 */  lw         $a0, 0x0($t6)
.L801DBBEC_ovl12:
/* 211E9C 801DBBEC 3C18800E */  lui        $t8, %hi(D_800E1B50)
.L801DBBF0_ovl15:
/* 211EA0 801DBBF0 00047880 */  sll        $t7, $a0, 2
/* 211EA4 801DBBF4 030FC021 */  addu       $t8, $t8, $t7
/* 211EA8 801DBBF8 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 211EAC 801DBBFC 0C044554 */  jal        func_80111550
glabel func_801DBC00_ovl10
/* 211EB0 801DBC00 AFB80034 */   sw        $t8, 0x34($sp)
.L801DBC04_ovl15:
/* 211EB4 801DBC04 3C098005 */  lui        $t1, %hi(D_8004A7C4)
.L801DBC08_ovl13:
/* 211EB8 801DBC08 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 211EBC 801DBC0C 8FB90034 */  lw         $t9, 0x34($sp)
.L801DBC10_ovl9:
/* 211EC0 801DBC10 8D250000 */  lw         $a1, 0x0($t1)
/* 211EC4 801DBC14 0C044722 */  jal        func_80111C88
/* 211EC8 801DBC18 8F24008C */   lw        $a0, 0x8C($t9)
.L801DBC1C_ovl9:
/* 211ECC 801DBC1C 10400012 */  beqz       $v0, .L801DBC68_ovl16
.L801DBC20_ovl9:
/* 211ED0 801DBC20 00402025 */   or        $a0, $v0, $zero
/* 211ED4 801DBC24 8FA30060 */  lw         $v1, 0x60($sp)
/* 211ED8 801DBC28 50600004 */  beql       $v1, $zero, .L801DBC3C_ovl16
glabel func_801DBC2C_ovl17
/* 211EDC 801DBC2C 8FA30064 */   lw        $v1, 0x64($sp)
/* 211EE0 801DBC30 8C4A0024 */  lw         $t2, 0x24($v0)
glabel func_801DBC34_ovl17
/* 211EE4 801DBC34 AD430008 */  sw         $v1, 0x8($t2)
glabel func_801DBC38_ovl9
/* 211EE8 801DBC38 8FA30064 */  lw         $v1, 0x64($sp)
.L801DBC3C_ovl16:
/* 211EEC 801DBC3C 50600004 */  beql       $v1, $zero, .L801DBC50_ovl16
.L801DBC40_ovl11:
/* 211EF0 801DBC40 8FA30068 */   lw        $v1, 0x68($sp)
/* 211EF4 801DBC44 8C4B0024 */  lw         $t3, 0x24($v0)
/* 211EF8 801DBC48 AD630030 */  sw         $v1, 0x30($t3)
/* 211EFC 801DBC4C 8FA30068 */  lw         $v1, 0x68($sp)
.L801DBC50_ovl16:
/* 211F00 801DBC50 10600003 */  beqz       $v1, .L801DBC60_ovl16
.L801DBC54_ovl15:
/* 211F04 801DBC54 00000000 */   nop
/* 211F08 801DBC58 8C4C0024 */  lw         $t4, 0x24($v0)
/* 211F0C 801DBC5C AD830058 */  sw         $v1, 0x58($t4)
.L801DBC60_ovl16:
/* 211F10 801DBC60 0C0447B3 */  jal        func_80111ECC
/* 211F14 801DBC64 00000000 */   nop
.L801DBC68_ovl16:
/* 211F18 801DBC68 0C044054 */  jal        func_80110150
/* 211F1C 801DBC6C 27A40040 */   addiu     $a0, $sp, 0x40
/* 211F20 801DBC70 0C0442C0 */  jal        func_80110B00
/* 211F24 801DBC74 27A40040 */   addiu     $a0, $sp, 0x40
.L801DBC78_ovl10:
/* 211F28 801DBC78 1040011A */  beqz       $v0, .L801DC0E4_ovl16
/* 211F2C 801DBC7C 8FA40034 */   lw        $a0, 0x34($sp)
/* 211F30 801DBC80 0C076E95 */  jal        func_801DBA54_ovl16
/* 211F34 801DBC84 27A50040 */   addiu     $a1, $sp, 0x40
.L801DBC88_ovl17:
/* 211F38 801DBC88 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 211F3C 801DBC8C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L801DBC90_ovl17:
/* 211F40 801DBC90 3C07800F */  lui        $a3, %hi(D_800E83E0)
/* 211F44 801DBC94 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
/* 211F48 801DBC98 8C850000 */  lw         $a1, 0x0($a0)
/* 211F4C 801DBC9C 24010008 */  addiu      $at, $zero, 0x8
/* 211F50 801DBCA0 8FAF0034 */  lw         $t7, 0x34($sp)
/* 211F54 801DBCA4 00052880 */  sll        $a1, $a1, 2
.L801DBCA8_ovl15:
/* 211F58 801DBCA8 00E56821 */  addu       $t5, $a3, $a1
/* 211F5C 801DBCAC 8DA20000 */  lw         $v0, 0x0($t5)
/* 211F60 801DBCB0 104100A7 */  beq        $v0, $at, .L801DBF50_ovl16
.L801DBCB4_ovl9:
/* 211F64 801DBCB4 24010009 */   addiu     $at, $zero, 0x9
.L801DBCB8_ovl12:
/* 211F68 801DBCB8 10410006 */  beq        $v0, $at, .L801DBCD4_ovl16
/* 211F6C 801DBCBC 24010012 */   addiu     $at, $zero, 0x12
.L801DBCC0_ovl11:
/* 211F70 801DBCC0 104100A3 */  beq        $v0, $at, .L801DBF50_ovl16
/* 211F74 801DBCC4 3C08800D */   lui       $t0, %hi(D_800D7098)
/* 211F78 801DBCC8 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
glabel func_801DBCCC_ovl11
/* 211F7C 801DBCCC 10000189 */  b          func_801DC2F4_ovl16
/* 211F80 801DBCD0 AD000028 */   sw        $zero, 0x28($t0)
.L801DBCD4_ovl16:
/* 211F84 801DBCD4 8FAE0034 */  lw         $t6, 0x34($sp)
.L801DBCD8_ovl17:
/* 211F88 801DBCD8 3C0F800E */  lui        $t7, %hi(D_800E7730)
/* 211F8C 801DBCDC 24010004 */  addiu      $at, $zero, 0x4
.L801DBCE0_ovl17:
/* 211F90 801DBCE0 81C3003A */  lb         $v1, 0x3A($t6)
/* 211F94 801DBCE4 01E37821 */  addu       $t7, $t7, $v1
.L801DBCE8_ovl15:
/* 211F98 801DBCE8 91EF7730 */  lbu        $t7, %lo(D_800E7730)($t7)
.L801DBCEC_ovl10:
/* 211F9C 801DBCEC 15E1003B */  bne        $t7, $at, .L801DBDDC_ovl16
glabel func_801DBCF0_ovl9
/* 211FA0 801DBCF0 3C08800D */   lui       $t0, %hi(D_800D7098)
.L801DBCF4_ovl12:
/* 211FA4 801DBCF4 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
/* 211FA8 801DBCF8 8D090004 */  lw         $t1, 0x4($t0)
/* 211FAC 801DBCFC 0003C040 */  sll        $t8, $v1, 1
glabel func_801DBD00_ovl12
/* 211FB0 801DBD00 3C19800E */  lui        $t9, %hi(D_800E77A0)
/* 211FB4 801DBD04 3C0B801F */  lui        $t3, %hi(D_801EF618_ovl16)
/* 211FB8 801DBD08 00095080 */  sll        $t2, $t1, 2
/* 211FBC 801DBD0C 016A5821 */  addu       $t3, $t3, $t2
/* 211FC0 801DBD10 0338C821 */  addu       $t9, $t9, $t8
glabel func_801DBD14_ovl9
/* 211FC4 801DBD14 973977A0 */  lhu        $t9, %lo(D_800E77A0)($t9)
/* 211FC8 801DBD18 8D6BF618 */  lw         $t3, %lo(D_801EF618_ovl16)($t3)
/* 211FCC 801DBD1C 2861000E */  slti       $at, $v1, 0xE
/* 211FD0 801DBD20 572B002F */  bnel       $t9, $t3, .L801DBDE0_ovl16
/* 211FD4 801DBD24 8FA40048 */   lw        $a0, 0x48($sp)
.L801DBD28_ovl17:
/* 211FD8 801DBD28 1420002C */  bnez       $at, .L801DBDDC_ovl16
/* 211FDC 801DBD2C 2861001E */   slti      $at, $v1, 0x1E
.L801DBD30_ovl17:
/* 211FE0 801DBD30 1020002A */  beqz       $at, .L801DBDDC_ovl16
/* 211FE4 801DBD34 3C02800E */   lui       $v0, %hi(D_800E7B20)
glabel func_801DBD38_ovl10
/* 211FE8 801DBD38 24427B20 */  addiu      $v0, $v0, %lo(D_800E7B20)
/* 211FEC 801DBD3C 00451821 */  addu       $v1, $v0, $a1
/* 211FF0 801DBD40 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 211FF4 801DBD44 44813000 */  mtc1       $at, $f6
.L801DBD48_ovl15:
/* 211FF8 801DBD48 C4640000 */  lwc1       $f4, 0x0($v1)
/* 211FFC 801DBD4C 44800000 */  mtc1       $zero, $f0
.L801DBD50_ovl17:
/* 212000 801DBD50 46062201 */  sub.s      $f8, $f4, $f6
/* 212004 801DBD54 E4680000 */  swc1       $f8, 0x0($v1)
glabel func_801DBD58_ovl11
/* 212008 801DBD58 8C850000 */  lw         $a1, 0x0($a0)
/* 21200C 801DBD5C 00052880 */  sll        $a1, $a1, 2
/* 212010 801DBD60 00451821 */  addu       $v1, $v0, $a1
/* 212014 801DBD64 C46A0000 */  lwc1       $f10, 0x0($v1)
/* 212018 801DBD68 4600503E */  c.le.s     $f10, $f0
.L801DBD6C_ovl14:
/* 21201C 801DBD6C 00000000 */  nop
/* 212020 801DBD70 4502000D */  bc1fl      func_801DBDA8_ovl17
.L801DBD74_ovl15:
/* 212024 801DBD74 24190002 */   addiu     $t9, $zero, 0x2
/* 212028 801DBD78 E4600000 */  swc1       $f0, 0x0($v1)
/* 21202C 801DBD7C 8C8D0000 */  lw         $t5, 0x0($a0)
/* 212030 801DBD80 240C0001 */  addiu      $t4, $zero, 0x1
/* 212034 801DBD84 000D7080 */  sll        $t6, $t5, 2
/* 212038 801DBD88 00EE7821 */  addu       $t7, $a3, $t6
/* 21203C 801DBD8C ADEC0000 */  sw         $t4, 0x0($t7)
/* 212040 801DBD90 8C980000 */  lw         $t8, 0x0($a0)
.L801DBD94_ovl12:
/* 212044 801DBD94 00184880 */  sll        $t1, $t8, 2
.L801DBD98_ovl17:
/* 212048 801DBD98 00E95021 */  addu       $t2, $a3, $t1
.L801DBD9C_ovl17:
/* 21204C 801DBD9C 10000159 */  b          .L801DC304_ovl16
/* 212050 801DBDA0 8D420000 */   lw        $v0, 0x0($t2)
/* 212054 801DBDA4 24190002 */  addiu      $t9, $zero, 0x2
glabel func_801DBDA8_ovl17
/* 212058 801DBDA8 00E55821 */  addu       $t3, $a3, $a1
/* 21205C 801DBDAC AD790000 */  sw         $t9, 0x0($t3)
/* 212060 801DBDB0 8C8E0000 */  lw         $t6, 0x0($a0)
/* 212064 801DBDB4 3C01800E */  lui        $at, %hi(D_800E7CE0)
glabel func_801DBDB8_ovl10
/* 212068 801DBDB8 240D002D */  addiu      $t5, $zero, 0x2D
.L801DBDBC_ovl15:
/* 21206C 801DBDBC 000E6080 */  sll        $t4, $t6, 2
/* 212070 801DBDC0 002C0821 */  addu       $at, $at, $t4
/* 212074 801DBDC4 AC2D7CE0 */  sw         $t5, %lo(D_800E7CE0)($at)
/* 212078 801DBDC8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 21207C 801DBDCC 000FC080 */  sll        $t8, $t7, 2
/* 212080 801DBDD0 00F84821 */  addu       $t1, $a3, $t8
/* 212084 801DBDD4 1000014B */  b          .L801DC304_ovl16
.L801DBDD8_ovl14:
/* 212088 801DBDD8 8D220000 */   lw        $v0, 0x0($t1)
.L801DBDDC_ovl16:
/* 21208C 801DBDDC 8FA40048 */  lw         $a0, 0x48($sp)
.L801DBDE0_ovl16:
/* 212090 801DBDE0 27A50030 */  addiu      $a1, $sp, 0x30
.L801DBDE4_ovl17:
/* 212094 801DBDE4 0C079FB8 */  jal        func_801E7EE0_ovl16
/* 212098 801DBDE8 27A6002C */   addiu     $a2, $sp, 0x2C
/* 21209C 801DBDEC 3C08800D */  lui        $t0, %hi(D_800D7098)
.L801DBDF0_ovl17:
/* 2120A0 801DBDF0 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
/* 2120A4 801DBDF4 8D0A0004 */  lw         $t2, 0x4($t0)
glabel func_801DBDF8_ovl11
/* 2120A8 801DBDF8 3C02801F */  lui        $v0, %hi(D_801EF5FC_ovl16)
/* 2120AC 801DBDFC 8FAB0030 */  lw         $t3, 0x30($sp)
glabel func_801DBE00_ovl10
/* 2120B0 801DBE00 000AC880 */  sll        $t9, $t2, 2
/* 2120B4 801DBE04 00591021 */  addu       $v0, $v0, $t9
/* 2120B8 801DBE08 8C42F5FC */  lw         $v0, %lo(D_801EF5FC_ovl16)($v0)
.L801DBE0C_ovl9:
/* 2120BC 801DBE0C 3C07800F */  lui        $a3, %hi(D_800E83E0)
/* 2120C0 801DBE10 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
/* 2120C4 801DBE14 11620002 */  beq        $t3, $v0, func_801DBE20_ovl16
/* 2120C8 801DBE18 8FAE002C */   lw        $t6, 0x2C($sp)
/* 2120CC 801DBE1C 15C2002E */  bne        $t6, $v0, .L801DBED8_ovl17
glabel func_801DBE20_ovl16
/* 2120D0 801DBE20 3C048005 */   lui       $a0, %hi(D_8004A7C4)
/* 2120D4 801DBE24 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 2120D8 801DBE28 3C02800E */  lui        $v0, %hi(D_800E7B20)
/* 2120DC 801DBE2C 24427B20 */  addiu      $v0, $v0, %lo(D_800E7B20)
/* 2120E0 801DBE30 8C8D0000 */  lw         $t5, 0x0($a0)
/* 2120E4 801DBE34 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 2120E8 801DBE38 44819000 */  mtc1       $at, $f18
.L801DBE3C_ovl9:
/* 2120EC 801DBE3C 000D6080 */  sll        $t4, $t5, 2
/* 2120F0 801DBE40 004C1821 */  addu       $v1, $v0, $t4
/* 2120F4 801DBE44 C4700000 */  lwc1       $f16, 0x0($v1)
/* 2120F8 801DBE48 44800000 */  mtc1       $zero, $f0
/* 2120FC 801DBE4C 46128101 */  sub.s      $f4, $f16, $f18
.L801DBE50_ovl14:
/* 212100 801DBE50 E4640000 */  swc1       $f4, 0x0($v1)
.L801DBE54_ovl11:
/* 212104 801DBE54 8C850000 */  lw         $a1, 0x0($a0)
/* 212108 801DBE58 00052880 */  sll        $a1, $a1, 2
/* 21210C 801DBE5C 00451821 */  addu       $v1, $v0, $a1
/* 212110 801DBE60 C4660000 */  lwc1       $f6, 0x0($v1)
glabel func_801DBE64_ovl13
/* 212114 801DBE64 4600303E */  c.le.s     $f6, $f0
/* 212118 801DBE68 00000000 */  nop
.L801DBE6C_ovl17:
/* 21211C 801DBE6C 4502000D */  bc1fl      func_801DBEA4_ovl16
/* 212120 801DBE70 240D0002 */   addiu     $t5, $zero, 0x2
/* 212124 801DBE74 E4600000 */  swc1       $f0, 0x0($v1)
glabel func_801DBE78_ovl9
/* 212128 801DBE78 8C980000 */  lw         $t8, 0x0($a0)
/* 21212C 801DBE7C 240F0001 */  addiu      $t7, $zero, 0x1
.L801DBE80_ovl13:
/* 212130 801DBE80 00184880 */  sll        $t1, $t8, 2
/* 212134 801DBE84 00E95021 */  addu       $t2, $a3, $t1
/* 212138 801DBE88 AD4F0000 */  sw         $t7, 0x0($t2)
/* 21213C 801DBE8C 8C990000 */  lw         $t9, 0x0($a0)
/* 212140 801DBE90 00195880 */  sll        $t3, $t9, 2
/* 212144 801DBE94 00EB7021 */  addu       $t6, $a3, $t3
/* 212148 801DBE98 1000011A */  b          .L801DC304_ovl16
/* 21214C 801DBE9C 8DC20000 */   lw        $v0, 0x0($t6)
/* 212150 801DBEA0 240D0002 */  addiu      $t5, $zero, 0x2
glabel func_801DBEA4_ovl16
/* 212154 801DBEA4 00E56021 */  addu       $t4, $a3, $a1
/* 212158 801DBEA8 AD8D0000 */  sw         $t5, 0x0($t4)
glabel func_801DBEAC_ovl15
/* 21215C 801DBEAC 8C890000 */  lw         $t1, 0x0($a0)
/* 212160 801DBEB0 3C01800E */  lui        $at, %hi(D_800E7CE0)
/* 212164 801DBEB4 2418002D */  addiu      $t8, $zero, 0x2D
/* 212168 801DBEB8 00097880 */  sll        $t7, $t1, 2
/* 21216C 801DBEBC 002F0821 */  addu       $at, $at, $t7
/* 212170 801DBEC0 AC387CE0 */  sw         $t8, %lo(D_800E7CE0)($at)
/* 212174 801DBEC4 8C8A0000 */  lw         $t2, 0x0($a0)
/* 212178 801DBEC8 000AC880 */  sll        $t9, $t2, 2
/* 21217C 801DBECC 00F95821 */  addu       $t3, $a3, $t9
.L801DBED0_ovl17:
/* 212180 801DBED0 1000010C */  b          .L801DC304_ovl16
/* 212184 801DBED4 8D620000 */   lw        $v0, 0x0($t3)
.L801DBED8_ovl17:
/* 212188 801DBED8 8D0E0028 */  lw         $t6, 0x28($t0)
/* 21218C 801DBEDC 240D0001 */  addiu      $t5, $zero, 0x1
/* 212190 801DBEE0 240401B6 */  addiu      $a0, $zero, 0x1B6
/* 212194 801DBEE4 15C00017 */  bnez       $t6, .L801DBF44_ovl16
glabel func_801DBEE8_ovl11
/* 212198 801DBEE8 00000000 */   nop
/* 21219C 801DBEEC 0C029D9E */  jal        play_sound
glabel func_801DBEF0_ovl11
/* 2121A0 801DBEF0 AD0D0028 */   sw        $t5, 0x28($t0)
/* 2121A4 801DBEF4 24040005 */  addiu      $a0, $zero, 0x5
glabel func_801DBEF8_ovl9
/* 2121A8 801DBEF8 0C067829 */  jal        func_8019E0A4_ovl7
/* 2121AC 801DBEFC 24050008 */   addiu     $a1, $zero, 0x8
/* 2121B0 801DBF00 3C07800F */  lui        $a3, %hi(D_800E83E0)
/* 2121B4 801DBF04 2401FFFF */  addiu      $at, $zero, -0x1
/* 2121B8 801DBF08 1041000E */  beq        $v0, $at, .L801DBF44_ovl16
/* 2121BC 801DBF0C 24E783E0 */   addiu     $a3, $a3, %lo(D_800E83E0)
/* 2121C0 801DBF10 8FAC0034 */  lw         $t4, 0x34($sp)
/* 2121C4 801DBF14 0002C080 */  sll        $t8, $v0, 2
/* 2121C8 801DBF18 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801DBF1C_ovl17:
/* 2121CC 801DBF1C 8183003A */  lb         $v1, 0x3A($t4)
/* 2121D0 801DBF20 00380821 */  addu       $at, $at, $t8
/* 2121D4 801DBF24 00024880 */  sll        $t1, $v0, 2
/* 2121D8 801DBF28 1C600005 */  bgtz       $v1, .L801DBF40_ovl16
/* 2121DC 801DBF2C 00000000 */   nop
.L801DBF30_ovl12:
/* 2121E0 801DBF30 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801DBF34_ovl9:
/* 2121E4 801DBF34 00290821 */  addu       $at, $at, $t1
/* 2121E8 801DBF38 10000002 */  b          .L801DBF44_ovl16
.L801DBF3C_ovl13:
/* 2121EC 801DBF3C AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L801DBF40_ovl16:
/* 2121F0 801DBF40 AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
.L801DBF44_ovl16:
/* 2121F4 801DBF44 3C048005 */  lui        $a0, %hi(D_8004A7C4)
glabel func_801DBF48_ovl17
/* 2121F8 801DBF48 100000EA */  b          func_801DC2F4_ovl16
/* 2121FC 801DBF4C 8C84A7C4 */   lw        $a0, %lo(D_8004A7C4)($a0)
.L801DBF50_ovl16:
/* 212200 801DBF50 81EA003A */  lb         $t2, 0x3A($t7)
/* 212204 801DBF54 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
.L801DBF58_ovl12:
/* 212208 801DBF58 3C05801B */  lui        $a1, %hi(func_801AC11C_ovl7)
.L801DBF5C_ovl13:
/* 21220C 801DBF5C 000AC880 */  sll        $t9, $t2, 2
/* 212210 801DBF60 00992021 */  addu       $a0, $a0, $t9
/* 212214 801DBF64 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DBF68_ovl12:
/* 212218 801DBF68 0C02C7B2 */  jal        assign_new_process_entry
.L801DBF6C_ovl17:
/* 21221C 801DBF6C 24A5C11C */   addiu     $a1, $a1, %lo(func_801AC11C_ovl7)
glabel func_801DBF70_ovl10
/* 212220 801DBF70 8FA40048 */  lw         $a0, 0x48($sp)
/* 212224 801DBF74 27A50030 */  addiu      $a1, $sp, 0x30
/* 212228 801DBF78 0C079FB8 */  jal        func_801E7EE0_ovl16
/* 21222C 801DBF7C 27A6002C */   addiu     $a2, $sp, 0x2C
.L801DBF80_ovl13:
/* 212230 801DBF80 3C08800D */  lui        $t0, %hi(D_800D7098)
.L801DBF84_ovl13:
/* 212234 801DBF84 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
.L801DBF88_ovl17:
/* 212238 801DBF88 8D0B0004 */  lw         $t3, 0x4($t0)
/* 21223C 801DBF8C 3C02801F */  lui        $v0, %hi(D_801EF5FC_ovl16)
glabel func_801DBF90_ovl12
/* 212240 801DBF90 8FAD0030 */  lw         $t5, 0x30($sp)
/* 212244 801DBF94 000B7080 */  sll        $t6, $t3, 2
/* 212248 801DBF98 004E1021 */  addu       $v0, $v0, $t6
glabel func_801DBF9C_ovl11
/* 21224C 801DBF9C 8C42F5FC */  lw         $v0, %lo(D_801EF5FC_ovl16)($v0)
/* 212250 801DBFA0 3C07800F */  lui        $a3, %hi(D_800E83E0)
glabel func_801DBFA4_ovl11
/* 212254 801DBFA4 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
/* 212258 801DBFA8 11A20002 */  beq        $t5, $v0, .L801DBFB4_ovl16
glabel func_801DBFAC_ovl12
/* 21225C 801DBFAC 8FAC002C */   lw        $t4, 0x2C($sp)
/* 212260 801DBFB0 1582002E */  bne        $t4, $v0, func_801DC06C_ovl16
.L801DBFB4_ovl16:
/* 212264 801DBFB4 3C048005 */   lui       $a0, %hi(D_8004A7C4)
/* 212268 801DBFB8 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 21226C 801DBFBC 3C02800E */  lui        $v0, %hi(D_800E7B20)
.L801DBFC0_ovl13:
/* 212270 801DBFC0 24427B20 */  addiu      $v0, $v0, %lo(D_800E7B20)
/* 212274 801DBFC4 8C890000 */  lw         $t1, 0x0($a0)
/* 212278 801DBFC8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801DBFCC_ovl15:
/* 21227C 801DBFCC 44815000 */  mtc1       $at, $f10
/* 212280 801DBFD0 0009C080 */  sll        $t8, $t1, 2
/* 212284 801DBFD4 00581821 */  addu       $v1, $v0, $t8
/* 212288 801DBFD8 C4680000 */  lwc1       $f8, 0x0($v1)
/* 21228C 801DBFDC 44800000 */  mtc1       $zero, $f0
/* 212290 801DBFE0 460A4401 */  sub.s      $f16, $f8, $f10
.L801DBFE4_ovl17:
/* 212294 801DBFE4 E4700000 */  swc1       $f16, 0x0($v1)
/* 212298 801DBFE8 8C850000 */  lw         $a1, 0x0($a0)
.L801DBFEC_ovl15:
/* 21229C 801DBFEC 00052880 */  sll        $a1, $a1, 2
.L801DBFF0_ovl13:
/* 2122A0 801DBFF0 00451821 */  addu       $v1, $v0, $a1
/* 2122A4 801DBFF4 C4720000 */  lwc1       $f18, 0x0($v1)
/* 2122A8 801DBFF8 4600903E */  c.le.s     $f18, $f0
/* 2122AC 801DBFFC 00000000 */  nop
.L801DC000_ovl15:
/* 2122B0 801DC000 4502000D */  bc1fl      .L801DC038_ovl16
/* 2122B4 801DC004 24090002 */   addiu     $t1, $zero, 0x2
/* 2122B8 801DC008 E4600000 */  swc1       $f0, 0x0($v1)
.L801DC00C_ovl14:
/* 2122BC 801DC00C 8C8A0000 */  lw         $t2, 0x0($a0)
/* 2122C0 801DC010 240F0001 */  addiu      $t7, $zero, 0x1
/* 2122C4 801DC014 000AC880 */  sll        $t9, $t2, 2
/* 2122C8 801DC018 00F95821 */  addu       $t3, $a3, $t9
.L801DC01C_ovl15:
/* 2122CC 801DC01C AD6F0000 */  sw         $t7, 0x0($t3)
.L801DC020_ovl13:
/* 2122D0 801DC020 8C8E0000 */  lw         $t6, 0x0($a0)
.L801DC024_ovl9:
/* 2122D4 801DC024 000E6880 */  sll        $t5, $t6, 2
/* 2122D8 801DC028 00ED6021 */  addu       $t4, $a3, $t5
.L801DC02C_ovl17:
/* 2122DC 801DC02C 100000B5 */  b          .L801DC304_ovl16
/* 2122E0 801DC030 8D820000 */   lw        $v0, 0x0($t4)
/* 2122E4 801DC034 24090002 */  addiu      $t1, $zero, 0x2
.L801DC038_ovl16:
/* 2122E8 801DC038 00E5C021 */  addu       $t8, $a3, $a1
.L801DC03C_ovl9:
/* 2122EC 801DC03C AF090000 */  sw         $t1, 0x0($t8)
/* 2122F0 801DC040 8C990000 */  lw         $t9, 0x0($a0)
/* 2122F4 801DC044 3C01800E */  lui        $at, %hi(D_800E7CE0)
.L801DC048_ovl12:
/* 2122F8 801DC048 240A002D */  addiu      $t2, $zero, 0x2D
.L801DC04C_ovl11:
/* 2122FC 801DC04C 00197880 */  sll        $t7, $t9, 2
/* 212300 801DC050 002F0821 */  addu       $at, $at, $t7
.L801DC054_ovl11:
/* 212304 801DC054 AC2A7CE0 */  sw         $t2, %lo(D_800E7CE0)($at)
.L801DC058_ovl17:
/* 212308 801DC058 8C8B0000 */  lw         $t3, 0x0($a0)
.L801DC05C_ovl12:
/* 21230C 801DC05C 000B7080 */  sll        $t6, $t3, 2
/* 212310 801DC060 00EE6821 */  addu       $t5, $a3, $t6
glabel func_801DC064_ovl11
/* 212314 801DC064 100000A7 */  b          .L801DC304_ovl16
/* 212318 801DC068 8DA20000 */   lw        $v0, 0x0($t5)
glabel func_801DC06C_ovl16
/* 21231C 801DC06C 8D0C0028 */  lw         $t4, 0x28($t0)
/* 212320 801DC070 24090001 */  addiu      $t1, $zero, 0x1
/* 212324 801DC074 240401B6 */  addiu      $a0, $zero, 0x1B6
/* 212328 801DC078 15800017 */  bnez       $t4, .L801DC0D8_ovl16
.L801DC07C_ovl17:
/* 21232C 801DC07C 00000000 */   nop
/* 212330 801DC080 0C029D9E */  jal        play_sound
/* 212334 801DC084 AD090028 */   sw        $t1, 0x28($t0)
.L801DC088_ovl14:
/* 212338 801DC088 24040005 */  addiu      $a0, $zero, 0x5
/* 21233C 801DC08C 0C067829 */  jal        func_8019E0A4_ovl7
/* 212340 801DC090 24050008 */   addiu     $a1, $zero, 0x8
glabel func_801DC094_ovl12
/* 212344 801DC094 3C07800F */  lui        $a3, %hi(D_800E83E0)
/* 212348 801DC098 2401FFFF */  addiu      $at, $zero, -0x1
.L801DC09C_ovl13:
/* 21234C 801DC09C 1041000E */  beq        $v0, $at, .L801DC0D8_ovl16
.L801DC0A0_ovl17:
/* 212350 801DC0A0 24E783E0 */   addiu     $a3, $a3, %lo(D_800E83E0)
/* 212354 801DC0A4 8FB80034 */  lw         $t8, 0x34($sp)
/* 212358 801DC0A8 00025080 */  sll        $t2, $v0, 2
/* 21235C 801DC0AC 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801DC0B0_ovl9:
/* 212360 801DC0B0 8303003A */  lb         $v1, 0x3A($t8)
/* 212364 801DC0B4 002A0821 */  addu       $at, $at, $t2
.L801DC0B8_ovl13:
/* 212368 801DC0B8 0002C880 */  sll        $t9, $v0, 2
.L801DC0BC_ovl17:
/* 21236C 801DC0BC 1C600005 */  bgtz       $v1, .L801DC0D4_ovl16
.L801DC0C0_ovl17:
/* 212370 801DC0C0 00000000 */   nop
/* 212374 801DC0C4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 212378 801DC0C8 00390821 */  addu       $at, $at, $t9
/* 21237C 801DC0CC 10000002 */  b          .L801DC0D8_ovl16
/* 212380 801DC0D0 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L801DC0D4_ovl16:
/* 212384 801DC0D4 AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
.L801DC0D8_ovl16:
/* 212388 801DC0D8 3C048005 */  lui        $a0, %hi(D_8004A7C4)
glabel func_801DC0DC_ovl15
/* 21238C 801DC0DC 10000085 */  b          func_801DC2F4_ovl16
/* 212390 801DC0E0 8C84A7C4 */   lw        $a0, %lo(D_8004A7C4)($a0)
.L801DC0E4_ovl16:
/* 212394 801DC0E4 0C0443F5 */  jal        func_80110FD4
/* 212398 801DC0E8 27A40040 */   addiu     $a0, $sp, 0x40
glabel func_801DC0EC_ovl15
/* 21239C 801DC0EC 1040006F */  beqz       $v0, .L801DC2AC_ovl16
.L801DC0F0_ovl13:
/* 2123A0 801DC0F0 00000000 */   nop
/* 2123A4 801DC0F4 8FA40034 */  lw         $a0, 0x34($sp)
.L801DC0F8_ovl17:
/* 2123A8 801DC0F8 0C076E95 */  jal        func_801DBA54_ovl16
/* 2123AC 801DC0FC 27A50040 */   addiu     $a1, $sp, 0x40
/* 2123B0 801DC100 3C048005 */  lui        $a0, %hi(D_8004A7C4)
.L801DC104_ovl15:
/* 2123B4 801DC104 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 2123B8 801DC108 3C07800F */  lui        $a3, %hi(D_800E83E0)
glabel func_801DC10C_ovl15
/* 2123BC 801DC10C 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
/* 2123C0 801DC110 8C8F0000 */  lw         $t7, 0x0($a0)
/* 2123C4 801DC114 24010006 */  addiu      $at, $zero, 0x6
/* 2123C8 801DC118 3C08800D */  lui        $t0, %hi(D_800D7098)
.L801DC11C_ovl15:
/* 2123CC 801DC11C 000F5880 */  sll        $t3, $t7, 2
.L801DC120_ovl17:
/* 2123D0 801DC120 00EB7021 */  addu       $t6, $a3, $t3
/* 2123D4 801DC124 8DCD0000 */  lw         $t5, 0x0($t6)
/* 2123D8 801DC128 27A50030 */  addiu      $a1, $sp, 0x30
/* 2123DC 801DC12C 27A6002C */  addiu      $a2, $sp, 0x2C
/* 2123E0 801DC130 15A1005C */  bne        $t5, $at, .L801DC2A4_ovl16
.L801DC134_ovl15:
/* 2123E4 801DC134 25087098 */   addiu     $t0, $t0, %lo(D_800D7098)
/* 2123E8 801DC138 0C079FB8 */  jal        func_801E7EE0_ovl16
glabel func_801DC13C_ovl15
/* 2123EC 801DC13C 8FA40048 */   lw        $a0, 0x48($sp)
/* 2123F0 801DC140 3C08800D */  lui        $t0, %hi(D_800D7098)
/* 2123F4 801DC144 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
/* 2123F8 801DC148 8D0C0004 */  lw         $t4, 0x4($t0)
/* 2123FC 801DC14C 3C02801F */  lui        $v0, %hi(D_801EF5FC_ovl16)
/* 212400 801DC150 8FB80030 */  lw         $t8, 0x30($sp)
.L801DC154_ovl14:
/* 212404 801DC154 000C4880 */  sll        $t1, $t4, 2
glabel func_801DC158_ovl11
/* 212408 801DC158 00491021 */  addu       $v0, $v0, $t1
/* 21240C 801DC15C 8C42F5FC */  lw         $v0, %lo(D_801EF5FC_ovl16)($v0)
/* 212410 801DC160 3C07800F */  lui        $a3, %hi(D_800E83E0)
/* 212414 801DC164 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
/* 212418 801DC168 13020002 */  beq        $t8, $v0, .L801DC174_ovl16
.L801DC16C_ovl14:
/* 21241C 801DC16C 8FB9002C */   lw        $t9, 0x2C($sp)
/* 212420 801DC170 1722002E */  bne        $t9, $v0, .L801DC22C_ovl16
.L801DC174_ovl16:
/* 212424 801DC174 3C048005 */   lui       $a0, %hi(D_8004A7C4)
.L801DC178_ovl14:
/* 212428 801DC178 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
glabel func_801DC17C_ovl12
/* 21242C 801DC17C 3C02800E */  lui        $v0, %hi(D_800E7B20)
.L801DC180_ovl14:
/* 212430 801DC180 24427B20 */  addiu      $v0, $v0, %lo(D_800E7B20)
/* 212434 801DC184 8C8A0000 */  lw         $t2, 0x0($a0)
/* 212438 801DC188 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 21243C 801DC18C 44813000 */  mtc1       $at, $f6
/* 212440 801DC190 000A7880 */  sll        $t7, $t2, 2
/* 212444 801DC194 004F1821 */  addu       $v1, $v0, $t7
/* 212448 801DC198 C4640000 */  lwc1       $f4, 0x0($v1)
/* 21244C 801DC19C 44800000 */  mtc1       $zero, $f0
.L801DC1A0_ovl9:
/* 212450 801DC1A0 46062201 */  sub.s      $f8, $f4, $f6
/* 212454 801DC1A4 E4680000 */  swc1       $f8, 0x0($v1)
/* 212458 801DC1A8 8C850000 */  lw         $a1, 0x0($a0)
/* 21245C 801DC1AC 00052880 */  sll        $a1, $a1, 2
/* 212460 801DC1B0 00451821 */  addu       $v1, $v0, $a1
.L801DC1B4_ovl11:
/* 212464 801DC1B4 C46A0000 */  lwc1       $f10, 0x0($v1)
.L801DC1B8_ovl10:
/* 212468 801DC1B8 4600503E */  c.le.s     $f10, $f0
glabel func_801DC1BC_ovl14
/* 21246C 801DC1BC 00000000 */  nop
/* 212470 801DC1C0 4502000D */  bc1fl      .L801DC1F8_ovl16
glabel func_801DC1C4_ovl14
/* 212474 801DC1C4 240A0002 */   addiu     $t2, $zero, 0x2
/* 212478 801DC1C8 E4600000 */  swc1       $f0, 0x0($v1)
.L801DC1CC_ovl10:
/* 21247C 801DC1CC 8C8E0000 */  lw         $t6, 0x0($a0)
/* 212480 801DC1D0 240B0001 */  addiu      $t3, $zero, 0x1
/* 212484 801DC1D4 000E6880 */  sll        $t5, $t6, 2
/* 212488 801DC1D8 00ED6021 */  addu       $t4, $a3, $t5
/* 21248C 801DC1DC AD8B0000 */  sw         $t3, 0x0($t4)
.L801DC1E0_ovl12:
/* 212490 801DC1E0 8C890000 */  lw         $t1, 0x0($a0)
.L801DC1E4_ovl9:
/* 212494 801DC1E4 0009C080 */  sll        $t8, $t1, 2
/* 212498 801DC1E8 00F8C821 */  addu       $t9, $a3, $t8
/* 21249C 801DC1EC 10000045 */  b          .L801DC304_ovl16
/* 2124A0 801DC1F0 8F220000 */   lw        $v0, 0x0($t9)
glabel func_801DC1F4_ovl9
/* 2124A4 801DC1F4 240A0002 */  addiu      $t2, $zero, 0x2
.L801DC1F8_ovl16:
/* 2124A8 801DC1F8 00E57821 */  addu       $t7, $a3, $a1
/* 2124AC 801DC1FC ADEA0000 */  sw         $t2, 0x0($t7)
/* 2124B0 801DC200 8C8D0000 */  lw         $t5, 0x0($a0)
/* 2124B4 801DC204 3C01800E */  lui        $at, %hi(D_800E7CE0)
.L801DC208_ovl12:
/* 2124B8 801DC208 240E002D */  addiu      $t6, $zero, 0x2D
.L801DC20C_ovl12:
/* 2124BC 801DC20C 000D5880 */  sll        $t3, $t5, 2
/* 2124C0 801DC210 002B0821 */  addu       $at, $at, $t3
.L801DC214_ovl17:
/* 2124C4 801DC214 AC2E7CE0 */  sw         $t6, %lo(D_800E7CE0)($at)
/* 2124C8 801DC218 8C8C0000 */  lw         $t4, 0x0($a0)
/* 2124CC 801DC21C 000C4880 */  sll        $t1, $t4, 2
/* 2124D0 801DC220 00E9C021 */  addu       $t8, $a3, $t1
/* 2124D4 801DC224 10000037 */  b          .L801DC304_ovl16
/* 2124D8 801DC228 8F020000 */   lw        $v0, 0x0($t8)
.L801DC22C_ovl16:
/* 2124DC 801DC22C 8D190028 */  lw         $t9, 0x28($t0)
/* 2124E0 801DC230 240A0001 */  addiu      $t2, $zero, 0x1
/* 2124E4 801DC234 240401B6 */  addiu      $a0, $zero, 0x1B6
.L801DC238_ovl17:
/* 2124E8 801DC238 17200017 */  bnez       $t9, func_801DC298_ovl16
/* 2124EC 801DC23C 00000000 */   nop
/* 2124F0 801DC240 0C029D9E */  jal        play_sound
.L801DC244_ovl17:
/* 2124F4 801DC244 AD0A0028 */   sw        $t2, 0x28($t0)
.L801DC248_ovl12:
/* 2124F8 801DC248 24040005 */  addiu      $a0, $zero, 0x5
/* 2124FC 801DC24C 0C067829 */  jal        func_8019E0A4_ovl7
glabel func_801DC250_ovl17
/* 212500 801DC250 24050008 */   addiu     $a1, $zero, 0x8
/* 212504 801DC254 3C07800F */  lui        $a3, %hi(D_800E83E0)
glabel func_801DC258_ovl12
/* 212508 801DC258 2401FFFF */  addiu      $at, $zero, -0x1
/* 21250C 801DC25C 1041000E */  beq        $v0, $at, func_801DC298_ovl16
/* 212510 801DC260 24E783E0 */   addiu     $a3, $a3, %lo(D_800E83E0)
/* 212514 801DC264 8FAF0034 */  lw         $t7, 0x34($sp)
/* 212518 801DC268 00027080 */  sll        $t6, $v0, 2
.L801DC26C_ovl17:
/* 21251C 801DC26C 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801DC270_ovl12:
/* 212520 801DC270 81E3003A */  lb         $v1, 0x3A($t7)
/* 212524 801DC274 002E0821 */  addu       $at, $at, $t6
glabel func_801DC278_ovl12
/* 212528 801DC278 00026880 */  sll        $t5, $v0, 2
/* 21252C 801DC27C 1C600005 */  bgtz       $v1, .L801DC294_ovl16
/* 212530 801DC280 00000000 */   nop
/* 212534 801DC284 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 212538 801DC288 002D0821 */  addu       $at, $at, $t5
/* 21253C 801DC28C 10000002 */  b          func_801DC298_ovl16
/* 212540 801DC290 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L801DC294_ovl16:
/* 212544 801DC294 AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
glabel func_801DC298_ovl16
/* 212548 801DC298 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 21254C 801DC29C 10000015 */  b          func_801DC2F4_ovl16
glabel func_801DC2A0_ovl14
/* 212550 801DC2A0 8C84A7C4 */   lw        $a0, %lo(D_8004A7C4)($a0)
.L801DC2A4_ovl16:
/* 212554 801DC2A4 10000013 */  b          func_801DC2F4_ovl16
/* 212558 801DC2A8 AD000028 */   sw        $zero, 0x28($t0)
.L801DC2AC_ovl16:
/* 21255C 801DC2AC 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 212560 801DC2B0 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 212564 801DC2B4 3C07800F */  lui        $a3, %hi(D_800E83E0)
/* 212568 801DC2B8 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
glabel func_801DC2BC_ovl15
/* 21256C 801DC2BC 8D6C0000 */  lw         $t4, 0x0($t3)
.L801DC2C0_ovl14:
/* 212570 801DC2C0 3C08800D */  lui        $t0, %hi(D_800D7098)
/* 212574 801DC2C4 240AFFFF */  addiu      $t2, $zero, -0x1
.L801DC2C8_ovl11:
/* 212578 801DC2C8 000C4880 */  sll        $t1, $t4, 2
/* 21257C 801DC2CC 00E9C021 */  addu       $t8, $a3, $t1
glabel func_801DC2D0_ovl17
/* 212580 801DC2D0 AF000000 */  sw         $zero, 0x0($t8)
/* 212584 801DC2D4 8FB90034 */  lw         $t9, 0x34($sp)
.L801DC2D8_ovl11:
/* 212588 801DC2D8 25087098 */  addiu      $t0, $t0, %lo(D_800D7098)
.L801DC2DC_ovl12:
/* 21258C 801DC2DC 3C048005 */  lui        $a0, %hi(D_8004A7C4)
.L801DC2E0_ovl14:
/* 212590 801DC2E0 A3200043 */  sb         $zero, 0x43($t9)
/* 212594 801DC2E4 8FAF0034 */  lw         $t7, 0x34($sp)
.L801DC2E8_ovl13:
/* 212598 801DC2E8 A1EA003A */  sb         $t2, 0x3A($t7)
/* 21259C 801DC2EC AD000028 */  sw         $zero, 0x28($t0)
.L801DC2F0_ovl15:
/* 2125A0 801DC2F0 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
glabel func_801DC2F4_ovl16
/* 2125A4 801DC2F4 8C8D0000 */  lw         $t5, 0x0($a0)
/* 2125A8 801DC2F8 000D7080 */  sll        $t6, $t5, 2
/* 2125AC 801DC2FC 00EE5821 */  addu       $t3, $a3, $t6
/* 2125B0 801DC300 8D620000 */  lw         $v0, 0x0($t3)
.L801DC304_ovl16:
/* 2125B4 801DC304 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2125B8 801DC308 27BD0060 */  addiu      $sp, $sp, 0x60
.L801DC30C_ovl12:
/* 2125BC 801DC30C 03E00008 */  jr         $ra
glabel func_801DC310_ovl15
/* 2125C0 801DC310 00000000 */   nop
