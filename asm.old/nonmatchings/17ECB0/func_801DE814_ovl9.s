glabel func_801DE814_ovl9
/* 18C864 801DE814 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 18C868 801DE818 AFB60040 */  sw         $s6, 0x40($sp)
/* 18C86C 801DE81C 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 18C870 801DE820 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* 18C874 801DE824 8EC30000 */  lw         $v1, 0x0($s6)
/* 18C878 801DE828 AFBF0044 */  sw         $ra, 0x44($sp)
/* 18C87C 801DE82C AFB5003C */  sw         $s5, 0x3C($sp)
/* 18C880 801DE830 AFB40038 */  sw         $s4, 0x38($sp)
/* 18C884 801DE834 AFB30034 */  sw         $s3, 0x34($sp)
.L801DE838_ovl17:
/* 18C888 801DE838 AFB20030 */  sw         $s2, 0x30($sp)
/* 18C88C 801DE83C AFB1002C */  sw         $s1, 0x2C($sp)
glabel func_801DE840_ovl16
/* 18C890 801DE840 AFB00028 */  sw         $s0, 0x28($sp)
.L801DE844_ovl17:
/* 18C894 801DE844 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 18C898 801DE848 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 18C89C 801DE84C AFA40048 */  sw         $a0, 0x48($sp)
glabel func_801DE850_ovl17
/* 18C8A0 801DE850 8C6F0000 */  lw         $t7, 0x0($v1)
.L801DE854_ovl10:
/* 18C8A4 801DE854 3C01800E */  lui        $at, %hi(D_800E76C0)
/* 18C8A8 801DE858 240E00FF */  addiu      $t6, $zero, 0xFF
/* 18C8AC 801DE85C 002F0821 */  addu       $at, $at, $t7
/* 18C8B0 801DE860 A02E76C0 */  sb         $t6, %lo(D_800E76C0)($at)
/* 18C8B4 801DE864 8C790000 */  lw         $t9, 0x0($v1)
/* 18C8B8 801DE868 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 18C8BC 801DE86C 24180007 */  addiu      $t8, $zero, 0x7
/* 18C8C0 801DE870 00194080 */  sll        $t0, $t9, 2
/* 18C8C4 801DE874 00280821 */  addu       $at, $at, $t0
/* 18C8C8 801DE878 AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
/* 18C8CC 801DE87C 8C6A0000 */  lw         $t2, 0x0($v1)
.L801DE880_ovl10:
/* 18C8D0 801DE880 3C02800E */  lui        $v0, %hi(D_800E1B50)
.L801DE884_ovl11:
/* 18C8D4 801DE884 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
.L801DE888_ovl12:
/* 18C8D8 801DE888 000A5880 */  sll        $t3, $t2, 2
/* 18C8DC 801DE88C 004B6021 */  addu       $t4, $v0, $t3
/* 18C8E0 801DE890 8D8D0000 */  lw         $t5, 0x0($t4)
/* 18C8E4 801DE894 3C09801D */  lui        $t1, %hi(D_801C8080)
.L801DE898_ovl14:
/* 18C8E8 801DE898 25298080 */  addiu      $t1, $t1, %lo(D_801C8080)
.L801DE89C_ovl12:
/* 18C8EC 801DE89C ADA9008C */  sw         $t1, 0x8C($t5)
.L801DE8A0_ovl15:
/* 18C8F0 801DE8A0 8ECF0000 */  lw         $t7, 0x0($s6)
/* 18C8F4 801DE8A4 3C0E801D */  lui        $t6, %hi(D_801CB788)
glabel func_801DE8A8_ovl12
/* 18C8F8 801DE8A8 25CEB788 */  addiu      $t6, $t6, %lo(D_801CB788)
/* 18C8FC 801DE8AC 8DF90000 */  lw         $t9, 0x0($t7)
/* 18C900 801DE8B0 3C01800F */  lui        $at, %hi(D_800E8920)
/* 18C904 801DE8B4 240B0001 */  addiu      $t3, $zero, 0x1
/* 18C908 801DE8B8 0019C080 */  sll        $t8, $t9, 2
/* 18C90C 801DE8BC 00584021 */  addu       $t0, $v0, $t8
/* 18C910 801DE8C0 8D0A0000 */  lw         $t2, 0x0($t0)
/* 18C914 801DE8C4 4480B000 */  mtc1       $zero, $f22
/* 18C918 801DE8C8 AD4E0098 */  sw         $t6, 0x98($t2)
/* 18C91C 801DE8CC 8EC30000 */  lw         $v1, 0x0($s6)
glabel func_801DE8D0_ovl11
/* 18C920 801DE8D0 4600B306 */  mov.s      $f12, $f22
/* 18C924 801DE8D4 8C6C0000 */  lw         $t4, 0x0($v1)
/* 18C928 801DE8D8 000C4880 */  sll        $t1, $t4, 2
glabel func_801DE8DC_ovl16
/* 18C92C 801DE8DC 00290821 */  addu       $at, $at, $t1
/* 18C930 801DE8E0 AC2B8920 */  sw         $t3, %lo(D_800E8920)($at)
/* 18C934 801DE8E4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 18C938 801DE8E8 3C01800F */  lui        $at, %hi(D_800EB160)
.L801DE8EC_ovl10:
/* 18C93C 801DE8EC 000D7880 */  sll        $t7, $t5, 2
/* 18C940 801DE8F0 002F0821 */  addu       $at, $at, $t7
/* 18C944 801DE8F4 0C02BB30 */  jal        func_800AECC0
/* 18C948 801DE8F8 E436B160 */   swc1      $f22, %lo(D_800EB160)($at)
/* 18C94C 801DE8FC 0C02BB48 */  jal        func_800AED20
/* 18C950 801DE900 4600B306 */   mov.s     $f12, $f22
/* 18C954 801DE904 8EC30000 */  lw         $v1, 0x0($s6)
/* 18C958 801DE908 3C14800E */  lui        $s4, %hi(D_800E6A10)
/* 18C95C 801DE90C 26946A10 */  addiu      $s4, $s4, %lo(D_800E6A10)
/* 18C960 801DE910 8C790000 */  lw         $t9, 0x0($v1)
.L801DE914_ovl14:
/* 18C964 801DE914 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 18C968 801DE918 3C15800F */  lui        $s5, %hi(D_800EAC20)
/* 18C96C 801DE91C 0019C080 */  sll        $t8, $t9, 2
/* 18C970 801DE920 02982021 */  addu       $a0, $s4, $t8
/* 18C974 801DE924 C4840000 */  lwc1       $f4, 0x0($a0)
/* 18C978 801DE928 26B5AC20 */  addiu      $s5, $s5, %lo(D_800EAC20)
/* 18C97C 801DE92C 46002187 */  neg.s      $f6, $f4
/* 18C980 801DE930 E4860000 */  swc1       $f6, 0x0($a0)
/* 18C984 801DE934 8C680000 */  lw         $t0, 0x0($v1)
/* 18C988 801DE938 3C04800E */  lui        $a0, %hi(D_800E3910)
/* 18C98C 801DE93C 24843910 */  addiu      $a0, $a0, %lo(D_800E3910)
/* 18C990 801DE940 00087080 */  sll        $t6, $t0, 2
glabel func_801DE944_ovl12
/* 18C994 801DE944 002E0821 */  addu       $at, $at, $t6
/* 18C998 801DE948 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 18C99C 801DE94C 8C620000 */  lw         $v0, 0x0($v1)
/* 18C9A0 801DE950 00021080 */  sll        $v0, $v0, 2
/* 18C9A4 801DE954 02A25021 */  addu       $t2, $s5, $v0
/* 18C9A8 801DE958 C5480000 */  lwc1       $f8, 0x0($t2)
/* 18C9AC 801DE95C 00826021 */  addu       $t4, $a0, $v0
/* 18C9B0 801DE960 4608B032 */  c.eq.s     $f22, $f8
/* 18C9B4 801DE964 00000000 */  nop
/* 18C9B8 801DE968 45010086 */  bc1t       .L801DEB84_ovl9
/* 18C9BC 801DE96C 00000000 */   nop
/* 18C9C0 801DE970 E5960000 */  swc1       $f22, 0x0($t4)
/* 18C9C4 801DE974 8C620000 */  lw         $v0, 0x0($v1)
.L801DE978_ovl13:
/* 18C9C8 801DE978 3C01800E */  lui        $at, %hi(D_800E3750)
/* 18C9CC 801DE97C 3C05800E */  lui        $a1, %hi(D_800E3E50)
/* 18C9D0 801DE980 00021080 */  sll        $v0, $v0, 2
/* 18C9D4 801DE984 00825821 */  addu       $t3, $a0, $v0
/* 18C9D8 801DE988 C5600000 */  lwc1       $f0, 0x0($t3)
/* 18C9DC 801DE98C 00220821 */  addu       $at, $at, $v0
.L801DE990_ovl14:
/* 18C9E0 801DE990 24A53E50 */  addiu      $a1, $a1, %lo(D_800E3E50)
/* 18C9E4 801DE994 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
.L801DE998_ovl11:
/* 18C9E8 801DE998 8C690000 */  lw         $t1, 0x0($v1)
.L801DE99C_ovl15:
/* 18C9EC 801DE99C 3C01800E */  lui        $at, %hi(D_800E3590)
/* 18C9F0 801DE9A0 3C13800E */  lui        $s3, %hi(D_800E64D0)
.L801DE9A4_ovl12:
/* 18C9F4 801DE9A4 00096880 */  sll        $t5, $t1, 2
glabel func_801DE9A8_ovl17
/* 18C9F8 801DE9A8 002D0821 */  addu       $at, $at, $t5
/* 18C9FC 801DE9AC E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 18CA00 801DE9B0 8C6F0000 */  lw         $t7, 0x0($v1)
/* 18CA04 801DE9B4 3C01800E */  lui        $at, %hi(D_800E33D0)
.L801DE9B8_ovl12:
/* 18CA08 801DE9B8 3C12800E */  lui        $s2, %hi(D_800E7880)
.L801DE9BC_ovl11:
/* 18CA0C 801DE9BC 000FC880 */  sll        $t9, $t7, 2
/* 18CA10 801DE9C0 00390821 */  addu       $at, $at, $t9
glabel func_801DE9C4_ovl12
/* 18CA14 801DE9C4 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
glabel func_801DE9C8_ovl11
/* 18CA18 801DE9C8 8C780000 */  lw         $t8, 0x0($v1)
/* 18CA1C 801DE9CC 3C01800E */  lui        $at, %hi(D_800E3210)
.L801DE9D0_ovl13:
/* 18CA20 801DE9D0 26527880 */  addiu      $s2, $s2, %lo(D_800E7880)
/* 18CA24 801DE9D4 00184080 */  sll        $t0, $t8, 2
/* 18CA28 801DE9D8 00280821 */  addu       $at, $at, $t0
/* 18CA2C 801DE9DC E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
.L801DE9E0_ovl17:
/* 18CA30 801DE9E0 8C6E0000 */  lw         $t6, 0x0($v1)
/* 18CA34 801DE9E4 3C01800E */  lui        $at, %hi(D_800E3050)
/* 18CA38 801DE9E8 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
/* 18CA3C 801DE9EC 000E5080 */  sll        $t2, $t6, 2
/* 18CA40 801DE9F0 002A0821 */  addu       $at, $at, $t2
/* 18CA44 801DE9F4 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 18CA48 801DE9F8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 18CA4C 801DE9FC 3C018022 */  lui        $at, %hi(D_8021CF7C_ovl9)
/* 18CA50 801DEA00 C42ACF7C */  lwc1       $f10, %lo(D_8021CF7C_ovl9)($at)
/* 18CA54 801DEA04 000C5880 */  sll        $t3, $t4, 2
/* 18CA58 801DEA08 00AB4821 */  addu       $t1, $a1, $t3
.L801DEA0C_ovl11:
/* 18CA5C 801DEA0C E52A0000 */  swc1       $f10, 0x0($t1)
glabel func_801DEA10_ovl15
/* 18CA60 801DEA10 8C620000 */  lw         $v0, 0x0($v1)
/* 18CA64 801DEA14 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 18CA68 801DEA18 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
glabel func_801DEA1C_ovl11
/* 18CA6C 801DEA1C 00021080 */  sll        $v0, $v0, 2
/* 18CA70 801DEA20 00A26821 */  addu       $t5, $a1, $v0
/* 18CA74 801DEA24 C5A20000 */  lwc1       $f2, 0x0($t5)
/* 18CA78 801DEA28 00220821 */  addu       $at, $at, $v0
/* 18CA7C 801DEA2C 24100010 */  addiu      $s0, $zero, 0x10
.L801DEA30_ovl12:
/* 18CA80 801DEA30 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 18CA84 801DEA34 8C6F0000 */  lw         $t7, 0x0($v1)
/* 18CA88 801DEA38 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 18CA8C 801DEA3C 3C118022 */  lui        $s1, %hi(D_8021BDB8_ovl9)
.L801DEA40_ovl10:
/* 18CA90 801DEA40 000FC880 */  sll        $t9, $t7, 2
/* 18CA94 801DEA44 00390821 */  addu       $at, $at, $t9
/* 18CA98 801DEA48 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
/* 18CA9C 801DEA4C 8C780000 */  lw         $t8, 0x0($v1)
/* 18CAA0 801DEA50 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 18CAA4 801DEA54 00184080 */  sll        $t0, $t8, 2
.L801DEA58_ovl14:
/* 18CAA8 801DEA58 01C87021 */  addu       $t6, $t6, $t0
glabel func_801DEA5C_ovl17
/* 18CAAC 801DEA5C 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* 18CAB0 801DEA60 31CA0001 */  andi       $t2, $t6, 0x1
/* 18CAB4 801DEA64 51400027 */  beql       $t2, $zero, .L801DEB04_ovl9
/* 18CAB8 801DEA68 4481A000 */   mtc1      $at, $f20
/* 18CABC 801DEA6C 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 18CAC0 801DEA70 3C13800E */  lui        $s3, %hi(D_800E64D0)
/* 18CAC4 801DEA74 3C12800E */  lui        $s2, %hi(D_800E7880)
/* 18CAC8 801DEA78 3C118022 */  lui        $s1, %hi(D_8021BDB8_ovl9)
/* 18CACC 801DEA7C 4481A000 */  mtc1       $at, $f20
/* 18CAD0 801DEA80 2631BDB8 */  addiu      $s1, $s1, %lo(D_8021BDB8_ovl9)
/* 18CAD4 801DEA84 26527880 */  addiu      $s2, $s2, %lo(D_800E7880)
/* 18CAD8 801DEA88 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
/* 18CADC 801DEA8C 24100020 */  addiu      $s0, $zero, 0x20
/* 18CAE0 801DEA90 8ECC0000 */  lw         $t4, 0x0($s6)
glabel func_801DEA94_ovl16
/* 18CAE4 801DEA94 44904000 */  mtc1       $s0, $f8
glabel func_801DEA98_ovl15
/* 18CAE8 801DEA98 24040001 */  addiu      $a0, $zero, 0x1
/* 18CAEC 801DEA9C 8D830000 */  lw         $v1, 0x0($t4)
/* 18CAF0 801DEAA0 468042A0 */  cvt.s.w    $f10, $f8
/* 18CAF4 801DEAA4 02434821 */  addu       $t1, $s2, $v1
/* 18CAF8 801DEAA8 912D0000 */  lbu        $t5, 0x0($t1)
/* 18CAFC 801DEAAC 00031080 */  sll        $v0, $v1, 2
/* 18CB00 801DEAB0 02A25821 */  addu       $t3, $s5, $v0
/* 18CB04 801DEAB4 000D7880 */  sll        $t7, $t5, 2
/* 18CB08 801DEAB8 022FC821 */  addu       $t9, $s1, $t7
/* 18CB0C 801DEABC C7320000 */  lwc1       $f18, 0x0($t9)
/* 18CB10 801DEAC0 C5700000 */  lwc1       $f16, 0x0($t3)
/* 18CB14 801DEAC4 0282C021 */  addu       $t8, $s4, $v0
/* 18CB18 801DEAC8 C7060000 */  lwc1       $f6, 0x0($t8)
/* 18CB1C 801DEACC 46128102 */  mul.s      $f4, $f16, $f18
/* 18CB20 801DEAD0 02624021 */  addu       $t0, $s3, $v0
.L801DEAD4_ovl14:
/* 18CB24 801DEAD4 46142003 */  div.s      $f0, $f4, $f20
/* 18CB28 801DEAD8 46005402 */  mul.s      $f16, $f10, $f0
/* 18CB2C 801DEADC 00000000 */  nop
glabel func_801DEAE0_ovl16
/* 18CB30 801DEAE0 46103482 */  mul.s      $f18, $f6, $f16
/* 18CB34 801DEAE4 0C002DAF */  jal        finish_current_thread
glabel func_801DEAE8_ovl11
/* 18CB38 801DEAE8 E5120000 */   swc1      $f18, 0x0($t0)
/* 18CB3C 801DEAEC 2610FFFF */  addiu      $s0, $s0, -0x1
.L801DEAF0_ovl14:
/* 18CB40 801DEAF0 5600FFE8 */  bnel       $s0, $zero, func_801DEA94_ovl16
glabel func_801DEAF4_ovl12
/* 18CB44 801DEAF4 8ECC0000 */   lw        $t4, 0x0($s6)
/* 18CB48 801DEAF8 1000001E */  b          .L801DEB74_ovl9
/* 18CB4C 801DEAFC 8ED80000 */   lw        $t8, 0x0($s6)
/* 18CB50 801DEB00 4481A000 */  mtc1       $at, $f20
.L801DEB04_ovl9:
/* 18CB54 801DEB04 2631BDB8 */  addiu      $s1, $s1, %lo(D_8021BDB8_ovl9)
/* 18CB58 801DEB08 8ECE0000 */  lw         $t6, 0x0($s6)
.L801DEB0C_ovl9:
/* 18CB5C 801DEB0C 44908000 */  mtc1       $s0, $f16
/* 18CB60 801DEB10 24040001 */  addiu      $a0, $zero, 0x1
/* 18CB64 801DEB14 8DC30000 */  lw         $v1, 0x0($t6)
/* 18CB68 801DEB18 468084A0 */  cvt.s.w    $f18, $f16
glabel func_801DEB1C_ovl12
/* 18CB6C 801DEB1C 02436021 */  addu       $t4, $s2, $v1
/* 18CB70 801DEB20 918B0000 */  lbu        $t3, 0x0($t4)
/* 18CB74 801DEB24 00031080 */  sll        $v0, $v1, 2
/* 18CB78 801DEB28 02A25021 */  addu       $t2, $s5, $v0
/* 18CB7C 801DEB2C 000B4880 */  sll        $t1, $t3, 2
.L801DEB30_ovl14:
/* 18CB80 801DEB30 02296821 */  addu       $t5, $s1, $t1
/* 18CB84 801DEB34 C5A80000 */  lwc1       $f8, 0x0($t5)
/* 18CB88 801DEB38 C5440000 */  lwc1       $f4, 0x0($t2)
/* 18CB8C 801DEB3C 02827821 */  addu       $t7, $s4, $v0
/* 18CB90 801DEB40 C5E60000 */  lwc1       $f6, 0x0($t7)
.L801DEB44_ovl10:
/* 18CB94 801DEB44 46082282 */  mul.s      $f10, $f4, $f8
/* 18CB98 801DEB48 0262C821 */  addu       $t9, $s3, $v0
/* 18CB9C 801DEB4C 46145003 */  div.s      $f0, $f10, $f20
/* 18CBA0 801DEB50 46009102 */  mul.s      $f4, $f18, $f0
/* 18CBA4 801DEB54 00000000 */  nop
/* 18CBA8 801DEB58 46043202 */  mul.s      $f8, $f6, $f4
/* 18CBAC 801DEB5C 0C002DAF */  jal        finish_current_thread
.L801DEB60_ovl14:
/* 18CBB0 801DEB60 E7280000 */   swc1      $f8, 0x0($t9)
/* 18CBB4 801DEB64 2610FFFF */  addiu      $s0, $s0, -0x1
.L801DEB68_ovl11:
/* 18CBB8 801DEB68 5600FFE8 */  bnel       $s0, $zero, .L801DEB0C_ovl9
/* 18CBBC 801DEB6C 8ECE0000 */   lw        $t6, 0x0($s6)
/* 18CBC0 801DEB70 8ED80000 */  lw         $t8, 0x0($s6)
.L801DEB74_ovl9:
/* 18CBC4 801DEB74 8F080000 */  lw         $t0, 0x0($t8)
glabel func_801DEB78_ovl11
/* 18CBC8 801DEB78 00087080 */  sll        $t6, $t0, 2
/* 18CBCC 801DEB7C 02AE5021 */  addu       $t2, $s5, $t6
.L801DEB80_ovl13:
/* 18CBD0 801DEB80 E5560000 */  swc1       $f22, 0x0($t2)
.L801DEB84_ovl9:
/* 18CBD4 801DEB84 0C02CCFD */  jal        func_800B33F4
/* 18CBD8 801DEB88 00000000 */   nop
/* 18CBDC 801DEB8C 0C02BE85 */  jal        func_800AFA14
/* 18CBE0 801DEB90 00000000 */   nop
glabel func_801DEB94_ovl10
/* 18CBE4 801DEB94 8FBF0044 */  lw         $ra, 0x44($sp)
.L801DEB98_ovl14:
/* 18CBE8 801DEB98 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 18CBEC 801DEB9C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 18CBF0 801DEBA0 8FB00028 */  lw         $s0, 0x28($sp)
/* 18CBF4 801DEBA4 8FB1002C */  lw         $s1, 0x2C($sp)
.L801DEBA8_ovl14:
/* 18CBF8 801DEBA8 8FB20030 */  lw         $s2, 0x30($sp)
/* 18CBFC 801DEBAC 8FB30034 */  lw         $s3, 0x34($sp)
/* 18CC00 801DEBB0 8FB40038 */  lw         $s4, 0x38($sp)
/* 18CC04 801DEBB4 8FB5003C */  lw         $s5, 0x3C($sp)
.L801DEBB8_ovl14:
/* 18CC08 801DEBB8 8FB60040 */  lw         $s6, 0x40($sp)
.L801DEBBC_ovl13:
/* 18CC0C 801DEBBC 03E00008 */  jr         $ra
/* 18CC10 801DEBC0 27BD0048 */   addiu     $sp, $sp, 0x48
