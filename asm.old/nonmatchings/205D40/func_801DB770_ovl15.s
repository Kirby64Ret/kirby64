glabel func_801DB770_ovl15
/* 2062D0 801DB770 27BDFFA0 */  addiu      $sp, $sp, -0x60
.L801DB774_ovl11:
/* 2062D4 801DB774 AFB1003C */  sw         $s1, 0x3C($sp)
/* 2062D8 801DB778 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 2062DC 801DB77C 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
glabel func_801DB780_ovl14
/* 2062E0 801DB780 8E230000 */  lw         $v1, 0x0($s1)
/* 2062E4 801DB784 AFBF005C */  sw         $ra, 0x5C($sp)
glabel func_801DB788_ovl14
/* 2062E8 801DB788 AFBE0058 */  sw         $fp, 0x58($sp)
.L801DB78C_ovl11:
/* 2062EC 801DB78C AFB70054 */  sw         $s7, 0x54($sp)
/* 2062F0 801DB790 AFB60050 */  sw         $s6, 0x50($sp)
/* 2062F4 801DB794 AFB5004C */  sw         $s5, 0x4C($sp)
/* 2062F8 801DB798 AFB40048 */  sw         $s4, 0x48($sp)
/* 2062FC 801DB79C AFB30044 */  sw         $s3, 0x44($sp)
.L801DB7A0_ovl9:
/* 206300 801DB7A0 AFB20040 */  sw         $s2, 0x40($sp)
/* 206304 801DB7A4 AFB00038 */  sw         $s0, 0x38($sp)
glabel func_801DB7A8_ovl13
/* 206308 801DB7A8 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 20630C 801DB7AC F7B80028 */  sdc1       $f24, 0x28($sp)
/* 206310 801DB7B0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 206314 801DB7B4 F7B40018 */  sdc1       $f20, 0x18($sp)
.L801DB7B8_ovl11:
/* 206318 801DB7B8 AFA40060 */  sw         $a0, 0x60($sp)
.L801DB7BC_ovl11:
/* 20631C 801DB7BC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 206320 801DB7C0 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 206324 801DB7C4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 206328 801DB7C8 000E7880 */  sll        $t7, $t6, 2
/* 20632C 801DB7CC 002F0821 */  addu       $at, $at, $t7
glabel func_801DB7D0_ovl11
/* 206330 801DB7D0 AC208E60 */  sw         $zero, %lo(D_800E8E60)($at)
/* 206334 801DB7D4 8C780000 */  lw         $t8, 0x0($v1)
/* 206338 801DB7D8 3C05800B */  lui        $a1, %hi(func_800B1434)
.L801DB7DC_ovl13:
/* 20633C 801DB7DC 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
/* 206340 801DB7E0 0018C880 */  sll        $t9, $t8, 2
/* 206344 801DB7E4 00992021 */  addu       $a0, $a0, $t9
/* 206348 801DB7E8 0C02C7DA */  jal        func_800B1F68
/* 20634C 801DB7EC 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
.L801DB7F0_ovl12:
/* 206350 801DB7F0 8E280000 */  lw         $t0, 0x0($s1)
/* 206354 801DB7F4 24040071 */  addiu      $a0, $zero, 0x71
/* 206358 801DB7F8 0C02C67D */  jal        func_800B19F4
glabel func_801DB7FC_ovl14
/* 20635C 801DB7FC 8D050000 */   lw        $a1, 0x0($t0)
/* 206360 801DB800 00002025 */  or         $a0, $zero, $zero
glabel func_801DB804_ovl16
/* 206364 801DB804 0C02BEED */  jal        func_800AFBB4
/* 206368 801DB808 8E250000 */   lw        $a1, 0x0($s1)
.L801DB80C_ovl13:
/* 20636C 801DB80C 0C044A6B */  jal        func_801129AC
/* 206370 801DB810 00000000 */   nop
/* 206374 801DB814 0C044A77 */  jal        func_801129DC
/* 206378 801DB818 00000000 */   nop
/* 20637C 801DB81C 8E230000 */  lw         $v1, 0x0($s1)
/* 206380 801DB820 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 206384 801DB824 44812000 */  mtc1       $at, $f4
/* 206388 801DB828 8C690000 */  lw         $t1, 0x0($v1)
/* 20638C 801DB82C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 206390 801DB830 3C0B800B */  lui        $t3, %hi(func_800B7138)
/* 206394 801DB834 00095080 */  sll        $t2, $t1, 2
/* 206398 801DB838 002A0821 */  addu       $at, $at, $t2
/* 20639C 801DB83C E4242790 */  swc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 2063A0 801DB840 8C6C0000 */  lw         $t4, 0x0($v1)
/* 2063A4 801DB844 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 2063A8 801DB848 256B7138 */  addiu      $t3, $t3, %lo(func_800B7138)
/* 2063AC 801DB84C 000C6880 */  sll        $t5, $t4, 2
.L801DB850_ovl17:
/* 2063B0 801DB850 002D0821 */  addu       $at, $at, $t5
/* 2063B4 801DB854 AC2BEF90 */  sw         $t3, %lo(D_800DEF90)($at)
/* 2063B8 801DB858 8C6F0000 */  lw         $t7, 0x0($v1)
/* 2063BC 801DB85C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 2063C0 801DB860 3C0E801E */  lui        $t6, %hi(func_801DBE20_ovl16)
.L801DB864_ovl16:
/* 2063C4 801DB864 000FC080 */  sll        $t8, $t7, 2
.L801DB868_ovl11:
/* 2063C8 801DB868 00380821 */  addu       $at, $at, $t8
/* 2063CC 801DB86C 25CEBE20 */  addiu      $t6, $t6, %lo(func_801DBE20_ovl16)
glabel func_801DB870_ovl17
/* 2063D0 801DB870 0C02CCFD */  jal        func_800B33F4
/* 2063D4 801DB874 AC2EF150 */   sw        $t6, %lo(D_800DF150)($at)
/* 2063D8 801DB878 8E390000 */  lw         $t9, 0x0($s1)
.L801DB87C_ovl12:
/* 2063DC 801DB87C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 2063E0 801DB880 44813000 */  mtc1       $at, $f6
/* 2063E4 801DB884 8F280000 */  lw         $t0, 0x0($t9)
/* 2063E8 801DB888 3C01800E */  lui        $at, %hi(D_800E6A10)
.L801DB88C_ovl11:
/* 2063EC 801DB88C 3C04800D */  lui        $a0, %hi(D_800D7098 + 0x3C)
.L801DB890_ovl17:
/* 2063F0 801DB890 00084880 */  sll        $t1, $t0, 2
.L801DB894_ovl11:
/* 2063F4 801DB894 00290821 */  addu       $at, $at, $t1
/* 2063F8 801DB898 E4266A10 */  swc1       $f6, %lo(D_800E6A10)($at)
/* 2063FC 801DB89C 3C01801E */  lui        $at, %hi(func_801E67A0_ovl9 + 0x18)
glabel func_801DB8A0_ovl11
/* 206400 801DB8A0 C43A67B8 */  lwc1       $f26, %lo(func_801E67A0_ovl9 + 0x18)($at)
/* 206404 801DB8A4 3C01801E */  lui        $at, %hi(func_801E67A0_ovl9 + 0x1C)
/* 206408 801DB8A8 C43867BC */  lwc1       $f24, %lo(func_801E67A0_ovl9 + 0x1C)($at)
.L801DB8AC_ovl17:
/* 20640C 801DB8AC 3C01801E */  lui        $at, %hi(func_801E67A0_ovl9 + 0x20)
/* 206410 801DB8B0 C43667C0 */  lwc1       $f22, %lo(func_801E67A0_ovl9 + 0x20)($at)
/* 206414 801DB8B4 3C01801E */  lui        $at, %hi(func_801E67A0_ovl9 + 0x24)
.L801DB8B8_ovl12:
/* 206418 801DB8B8 3C15800E */  lui        $s5, %hi(D_800E0D50)
/* 20641C 801DB8BC 3C14800F */  lui        $s4, %hi(D_800EA6E0)
/* 206420 801DB8C0 3C13800E */  lui        $s3, %hi(D_800E64D0)
/* 206424 801DB8C4 3C12800E */  lui        $s2, %hi(gEntitiesNextPosXArray)
.L801DB8C8_ovl17:
/* 206428 801DB8C8 3C10800D */  lui        $s0, %hi(D_800D7098)
/* 20642C 801DB8CC 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
/* 206430 801DB8D0 265225D0 */  addiu      $s2, $s2, %lo(gEntitiesNextPosXArray)
/* 206434 801DB8D4 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
/* 206438 801DB8D8 2694A6E0 */  addiu      $s4, $s4, %lo(D_800EA6E0)
/* 20643C 801DB8DC 26B50D50 */  addiu      $s5, $s5, %lo(D_800E0D50)
.L801DB8E0_ovl16:
/* 206440 801DB8E0 C43467C4 */  lwc1       $f20, %lo(func_801E67A0_ovl9 + 0x24)($at)
/* 206444 801DB8E4 8C8470D4 */  lw         $a0, %lo(D_800D7098 + 0x3C)($a0)
glabel func_801DB8E8_ovl11
/* 206448 801DB8E8 241E0009 */  addiu      $fp, $zero, 0x9
glabel func_801DB8EC_ovl9
/* 20644C 801DB8EC 24170001 */  addiu      $s7, $zero, 0x1
.L801DB8F0_ovl14:
/* 206450 801DB8F0 24160004 */  addiu      $s6, $zero, 0x4
.L801DB8F4_ovl15:
/* 206454 801DB8F4 2C81000A */  sltiu      $at, $a0, 0xA
.L801DB8F8_ovl15:
/* 206458 801DB8F8 10200130 */  beqz       $at, .L801DBDBC_ovl15
/* 20645C 801DB8FC 00045080 */   sll       $t2, $a0, 2
.L801DB900_ovl15:
/* 206460 801DB900 3C01801E */  lui        $at, %hi(jtbl_801E67C8_ovl15)
/* 206464 801DB904 002A0821 */  addu       $at, $at, $t2
/* 206468 801DB908 8C2A67C8 */  lw         $t2, %lo(jtbl_801E67C8_ovl15)($at)
.L801DB90C_ovl17:
/* 20646C 801DB90C 01400008 */  jr         $t2
glabel func_801DB910_ovl12
/* 206470 801DB910 00000000 */   nop
.L801DB914_ovl16:
/* 206474 801DB914 5480FFF8 */  bnel       $a0, $zero, .L801DB8F8_ovl15
/* 206478 801DB918 2C81000A */   sltiu     $at, $a0, 0xA
.L801DB91C_ovl15:
/* 20647C 801DB91C 0C002DAF */  jal        finish_current_thread
/* 206480 801DB920 02E02025 */   or        $a0, $s7, $zero
/* 206484 801DB924 8E04003C */  lw         $a0, 0x3C($s0)
/* 206488 801DB928 1080FFFC */  beqz       $a0, .L801DB91C_ovl15
.L801DB92C_ovl10:
/* 20648C 801DB92C 00000000 */   nop
glabel func_801DB930_ovl9
/* 206490 801DB930 1000FFF1 */  b          .L801DB8F8_ovl15
.L801DB934_ovl12:
/* 206494 801DB934 2C81000A */   sltiu     $at, $a0, 0xA
/* 206498 801DB938 8E230000 */  lw         $v1, 0x0($s1)
/* 20649C 801DB93C 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* 2064A0 801DB940 44814000 */  mtc1       $at, $f8
glabel func_801DB944_ovl12
/* 2064A4 801DB944 8C6C0000 */  lw         $t4, 0x0($v1)
/* 2064A8 801DB948 000C5880 */  sll        $t3, $t4, 2
.L801DB94C_ovl10:
/* 2064AC 801DB94C 026B6821 */  addu       $t5, $s3, $t3
/* 2064B0 801DB950 E5A80000 */  swc1       $f8, 0x0($t5)
/* 2064B4 801DB954 8C620000 */  lw         $v0, 0x0($v1)
/* 2064B8 801DB958 00021080 */  sll        $v0, $v0, 2
/* 2064BC 801DB95C 02427821 */  addu       $t7, $s2, $v0
.L801DB960_ovl16:
/* 2064C0 801DB960 C5EA0000 */  lwc1       $f10, 0x0($t7)
.L801DB964_ovl14:
/* 2064C4 801DB964 460AA03C */  c.lt.s     $f20, $f10
.L801DB968_ovl12:
/* 2064C8 801DB968 00000000 */  nop
/* 2064CC 801DB96C 4502000D */  bc1fl      .L801DB9A4_ovl15
.L801DB970_ovl10:
/* 2064D0 801DB970 3C01C120 */   lui       $at, (0xC1200000 >> 16)
.L801DB974_ovl15:
/* 2064D4 801DB974 0C002DAF */  jal        finish_current_thread
/* 2064D8 801DB978 02E02025 */   or        $a0, $s7, $zero
/* 2064DC 801DB97C 8E230000 */  lw         $v1, 0x0($s1)
/* 2064E0 801DB980 8C620000 */  lw         $v0, 0x0($v1)
.L801DB984_ovl17:
/* 2064E4 801DB984 00021080 */  sll        $v0, $v0, 2
.L801DB988_ovl12:
/* 2064E8 801DB988 02427021 */  addu       $t6, $s2, $v0
/* 2064EC 801DB98C C5D00000 */  lwc1       $f16, 0x0($t6)
/* 2064F0 801DB990 4610A03C */  c.lt.s     $f20, $f16
.L801DB994_ovl11:
/* 2064F4 801DB994 00000000 */  nop
/* 2064F8 801DB998 4501FFF6 */  bc1t       .L801DB974_ovl15
/* 2064FC 801DB99C 00000000 */   nop
/* 206500 801DB9A0 3C01C120 */  lui        $at, (0xC1200000 >> 16)
.L801DB9A4_ovl15:
/* 206504 801DB9A4 44819000 */  mtc1       $at, $f18
/* 206508 801DB9A8 0262C021 */  addu       $t8, $s3, $v0
/* 20650C 801DB9AC E7120000 */  swc1       $f18, 0x0($t8)
/* 206510 801DB9B0 8C620000 */  lw         $v0, 0x0($v1)
.L801DB9B4_ovl11:
/* 206514 801DB9B4 00021080 */  sll        $v0, $v0, 2
.L801DB9B8_ovl10:
/* 206518 801DB9B8 0242C821 */  addu       $t9, $s2, $v0
/* 20651C 801DB9BC C7240000 */  lwc1       $f4, 0x0($t9)
/* 206520 801DB9C0 4604B03C */  c.lt.s     $f22, $f4
/* 206524 801DB9C4 00000000 */  nop
/* 206528 801DB9C8 4502000D */  bc1fl      func_801DBA00_ovl15
/* 20652C 801DB9CC 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
.L801DB9D0_ovl15:
/* 206530 801DB9D0 0C002DAF */  jal        finish_current_thread
.L801DB9D4_ovl14:
/* 206534 801DB9D4 02E02025 */   or        $a0, $s7, $zero
.L801DB9D8_ovl12:
/* 206538 801DB9D8 8E230000 */  lw         $v1, 0x0($s1)
glabel func_801DB9DC_ovl10
/* 20653C 801DB9DC 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801DB9E0_ovl17
/* 206540 801DB9E0 00021080 */  sll        $v0, $v0, 2
/* 206544 801DB9E4 02424021 */  addu       $t0, $s2, $v0
/* 206548 801DB9E8 C5060000 */  lwc1       $f6, 0x0($t0)
.L801DB9EC_ovl16:
/* 20654C 801DB9EC 4606B03C */  c.lt.s     $f22, $f6
.L801DB9F0_ovl17:
/* 206550 801DB9F0 00000000 */  nop
/* 206554 801DB9F4 4501FFF6 */  bc1t       .L801DB9D0_ovl15
glabel func_801DB9F8_ovl17
/* 206558 801DB9F8 00000000 */   nop
/* 20655C 801DB9FC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
glabel func_801DBA00_ovl15
/* 206560 801DBA00 44814000 */  mtc1       $at, $f8
/* 206564 801DBA04 02624821 */  addu       $t1, $s3, $v0
/* 206568 801DBA08 E5280000 */  swc1       $f8, 0x0($t1)
.L801DBA0C_ovl17:
/* 20656C 801DBA0C 8C620000 */  lw         $v0, 0x0($v1)
/* 206570 801DBA10 00021080 */  sll        $v0, $v0, 2
/* 206574 801DBA14 02425021 */  addu       $t2, $s2, $v0
/* 206578 801DBA18 C54A0000 */  lwc1       $f10, 0x0($t2)
.L801DBA1C_ovl12:
/* 20657C 801DBA1C 460AC03C */  c.lt.s     $f24, $f10
.L801DBA20_ovl12:
/* 206580 801DBA20 00000000 */  nop
/* 206584 801DBA24 4500000C */  bc1f       .L801DBA58_ovl15
/* 206588 801DBA28 00000000 */   nop
.L801DBA2C_ovl15:
/* 20658C 801DBA2C 0C002DAF */  jal        finish_current_thread
/* 206590 801DBA30 02E02025 */   or        $a0, $s7, $zero
/* 206594 801DBA34 8E230000 */  lw         $v1, 0x0($s1)
.L801DBA38_ovl13:
/* 206598 801DBA38 8C620000 */  lw         $v0, 0x0($v1)
.L801DBA3C_ovl13:
/* 20659C 801DBA3C 00021080 */  sll        $v0, $v0, 2
.L801DBA40_ovl16:
/* 2065A0 801DBA40 02426021 */  addu       $t4, $s2, $v0
.L801DBA44_ovl13:
/* 2065A4 801DBA44 C5900000 */  lwc1       $f16, 0x0($t4)
.L801DBA48_ovl17:
/* 2065A8 801DBA48 4610C03C */  c.lt.s     $f24, $f16
/* 2065AC 801DBA4C 00000000 */  nop
/* 2065B0 801DBA50 4501FFF6 */  bc1t       .L801DBA2C_ovl15
glabel func_801DBA54_ovl16
/* 2065B4 801DBA54 00000000 */   nop
.L801DBA58_ovl15:
/* 2065B8 801DBA58 3C01801E */  lui        $at, %hi(D_801E67F0_ovl15)
/* 2065BC 801DBA5C C43267F0 */  lwc1       $f18, %lo(D_801E67F0_ovl15)($at)
/* 2065C0 801DBA60 02625821 */  addu       $t3, $s3, $v0
/* 2065C4 801DBA64 E5720000 */  swc1       $f18, 0x0($t3)
/* 2065C8 801DBA68 8C620000 */  lw         $v0, 0x0($v1)
/* 2065CC 801DBA6C 00021080 */  sll        $v0, $v0, 2
/* 2065D0 801DBA70 02426821 */  addu       $t5, $s2, $v0
/* 2065D4 801DBA74 C5A40000 */  lwc1       $f4, 0x0($t5)
.L801DBA78_ovl12:
/* 2065D8 801DBA78 4604D03C */  c.lt.s     $f26, $f4
/* 2065DC 801DBA7C 00000000 */  nop
/* 2065E0 801DBA80 4502000D */  bc1fl      .L801DBAB8_ovl15
/* 2065E4 801DBA84 44804000 */   mtc1      $zero, $f8
glabel func_801DBA88_ovl15
/* 2065E8 801DBA88 0C002DAF */  jal        finish_current_thread
glabel func_801DBA8C_ovl17
/* 2065EC 801DBA8C 02E02025 */   or        $a0, $s7, $zero
/* 2065F0 801DBA90 8E230000 */  lw         $v1, 0x0($s1)
/* 2065F4 801DBA94 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801DBA98_ovl16
/* 2065F8 801DBA98 00021080 */  sll        $v0, $v0, 2
/* 2065FC 801DBA9C 02427821 */  addu       $t7, $s2, $v0
.L801DBAA0_ovl9:
/* 206600 801DBAA0 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 206604 801DBAA4 4606D03C */  c.lt.s     $f26, $f6
/* 206608 801DBAA8 00000000 */  nop
.L801DBAAC_ovl9:
/* 20660C 801DBAAC 4501FFF6 */  bc1t       func_801DBA88_ovl15
/* 206610 801DBAB0 00000000 */   nop
/* 206614 801DBAB4 44804000 */  mtc1       $zero, $f8
.L801DBAB8_ovl15:
/* 206618 801DBAB8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 20661C 801DBABC 00220821 */  addu       $at, $at, $v0
/* 206620 801DBAC0 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* 206624 801DBAC4 8C620000 */  lw         $v0, 0x0($v1)
/* 206628 801DBAC8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 20662C 801DBACC 00021080 */  sll        $v0, $v0, 2
/* 206630 801DBAD0 00220821 */  addu       $at, $at, $v0
/* 206634 801DBAD4 C42A6690 */  lwc1       $f10, %lo(D_800E6690)($at)
.L801DBAD8_ovl14:
/* 206638 801DBAD8 02627021 */  addu       $t6, $s3, $v0
/* 20663C 801DBADC 3C01801E */  lui        $at, %hi(D_801E67F4_ovl15)
/* 206640 801DBAE0 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 206644 801DBAE4 8C780000 */  lw         $t8, 0x0($v1)
/* 206648 801DBAE8 C43067F4 */  lwc1       $f16, %lo(D_801E67F4_ovl15)($at)
/* 20664C 801DBAEC 3C01800E */  lui        $at, %hi(D_800E6850)
.L801DBAF0_ovl13:
/* 206650 801DBAF0 0018C880 */  sll        $t9, $t8, 2
.L801DBAF4_ovl17:
/* 206654 801DBAF4 00390821 */  addu       $at, $at, $t9
/* 206658 801DBAF8 E4306850 */  swc1       $f16, %lo(D_800E6850)($at)
/* 20665C 801DBAFC 8E04003C */  lw         $a0, 0x3C($s0)
.L801DBB00_ovl9:
/* 206660 801DBB00 56E4FF7D */  bnel       $s7, $a0, .L801DB8F8_ovl15
.L801DBB04_ovl16:
/* 206664 801DBB04 2C81000A */   sltiu     $at, $a0, 0xA
.L801DBB08_ovl15:
/* 206668 801DBB08 0C002DAF */  jal        finish_current_thread
/* 20666C 801DBB0C 02E02025 */   or        $a0, $s7, $zero
/* 206670 801DBB10 8E04003C */  lw         $a0, 0x3C($s0)
/* 206674 801DBB14 12E4FFFC */  beq        $s7, $a0, .L801DBB08_ovl15
.L801DBB18_ovl16:
/* 206678 801DBB18 00000000 */   nop
.L801DBB1C_ovl13:
/* 20667C 801DBB1C 1000FF76 */  b          .L801DB8F8_ovl15
.L801DBB20_ovl17:
/* 206680 801DBB20 2C81000A */   sltiu     $at, $a0, 0xA
/* 206684 801DBB24 24010002 */  addiu      $at, $zero, 0x2
.L801DBB28_ovl16:
/* 206688 801DBB28 5481FF73 */  bnel       $a0, $at, .L801DB8F8_ovl15
/* 20668C 801DBB2C 2C81000A */   sltiu     $at, $a0, 0xA
.L801DBB30_ovl16:
/* 206690 801DBB30 0C002DAF */  jal        finish_current_thread
/* 206694 801DBB34 02E02025 */   or        $a0, $s7, $zero
/* 206698 801DBB38 8E04003C */  lw         $a0, 0x3C($s0)
/* 20669C 801DBB3C 24010002 */  addiu      $at, $zero, 0x2
/* 2066A0 801DBB40 1081FFFB */  beq        $a0, $at, .L801DBB30_ovl16
/* 2066A4 801DBB44 00000000 */   nop
/* 2066A8 801DBB48 1000FF6B */  b          .L801DB8F8_ovl15
glabel func_801DBB4C_ovl11
/* 2066AC 801DBB4C 2C81000A */   sltiu     $at, $a0, 0xA
/* 2066B0 801DBB50 AE17000C */  sw         $s7, 0xC($s0)
/* 2066B4 801DBB54 0C03EFC6 */  jal        func_800FBF18
.L801DBB58_ovl17:
/* 2066B8 801DBB58 24040002 */   addiu     $a0, $zero, 0x2
/* 2066BC 801DBB5C 0C03EF87 */  jal        func_800FBE1C
/* 2066C0 801DBB60 00000000 */   nop
/* 2066C4 801DBB64 8E230000 */  lw         $v1, 0x0($s1)
/* 2066C8 801DBB68 3C028013 */  lui        $v0, %hi(D_801292B0)
.L801DBB6C_ovl17:
/* 2066CC 801DBB6C 244292B0 */  addiu      $v0, $v0, %lo(D_801292B0)
/* 2066D0 801DBB70 8C680000 */  lw         $t0, 0x0($v1)
/* 2066D4 801DBB74 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 2066D8 801DBB78 24040004 */  addiu      $a0, $zero, 0x4
.L801DBB7C_ovl16:
/* 2066DC 801DBB7C 00084880 */  sll        $t1, $t0, 2
/* 2066E0 801DBB80 02495021 */  addu       $t2, $s2, $t1
/* 2066E4 801DBB84 C5520000 */  lwc1       $f18, 0x0($t2)
/* 2066E8 801DBB88 E4520000 */  swc1       $f18, 0x0($v0)
.L801DBB8C_ovl10:
/* 2066EC 801DBB8C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 2066F0 801DBB90 000C5880 */  sll        $t3, $t4, 2
.L801DBB94_ovl9:
/* 2066F4 801DBB94 002B0821 */  addu       $at, $at, $t3
/* 2066F8 801DBB98 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
.L801DBB9C_ovl11:
/* 2066FC 801DBB9C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
.L801DBBA0_ovl16:
/* 206700 801DBBA0 E4440004 */  swc1       $f4, 0x4($v0)
/* 206704 801DBBA4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 206708 801DBBA8 000D7880 */  sll        $t7, $t5, 2
.L801DBBAC_ovl17:
/* 20670C 801DBBAC 002F0821 */  addu       $at, $at, $t7
/* 206710 801DBBB0 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
.L801DBBB4_ovl9:
/* 206714 801DBBB4 0C03E905 */  jal        func_800FA414
/* 206718 801DBBB8 E4460008 */   swc1      $f6, 0x8($v0)
/* 20671C 801DBBBC 3C0E800D */  lui        $t6, %hi(D_800D7088)
/* 206720 801DBBC0 8DCE7088 */  lw         $t6, %lo(D_800D7088)($t6)
/* 206724 801DBBC4 2401000B */  addiu      $at, $zero, 0xB
.L801DBBC8_ovl13:
/* 206728 801DBBC8 51C10009 */  beql       $t6, $at, .L801DBBF0_ovl15
glabel func_801DBBCC_ovl16
/* 20672C 801DBBCC AE16003C */   sw        $s6, 0x3C($s0)
.L801DBBD0_ovl15:
/* 206730 801DBBD0 0C002DAF */  jal        finish_current_thread
.L801DBBD4_ovl10:
/* 206734 801DBBD4 02E02025 */   or        $a0, $s7, $zero
.L801DBBD8_ovl9:
/* 206738 801DBBD8 3C18800D */  lui        $t8, %hi(D_800D7088)
/* 20673C 801DBBDC 8F187088 */  lw         $t8, %lo(D_800D7088)($t8)
.L801DBBE0_ovl13:
/* 206740 801DBBE0 2401000B */  addiu      $at, $zero, 0xB
.L801DBBE4_ovl14:
/* 206744 801DBBE4 1701FFFA */  bne        $t8, $at, .L801DBBD0_ovl15
/* 206748 801DBBE8 00000000 */   nop
.L801DBBEC_ovl12:
/* 20674C 801DBBEC AE16003C */  sw         $s6, 0x3C($s0)
.L801DBBF0_ovl15:
/* 206750 801DBBF0 1000FF40 */  b          .L801DB8F4_ovl15
/* 206754 801DBBF4 02C02025 */   or        $a0, $s6, $zero
/* 206758 801DBBF8 56C4FF3F */  bnel       $s6, $a0, .L801DB8F8_ovl15
/* 20675C 801DBBFC 2C81000A */   sltiu     $at, $a0, 0xA
glabel func_801DBC00_ovl10
/* 206760 801DBC00 8E390000 */  lw         $t9, 0x0($s1)
.L801DBC04_ovl15:
/* 206764 801DBC04 02E02025 */  or         $a0, $s7, $zero
.L801DBC08_ovl13:
/* 206768 801DBC08 8F220000 */  lw         $v0, 0x0($t9)
/* 20676C 801DBC0C 00021080 */  sll        $v0, $v0, 2
.L801DBC10_ovl9:
/* 206770 801DBC10 02A24021 */  addu       $t0, $s5, $v0
/* 206774 801DBC14 8D090000 */  lw         $t1, 0x0($t0)
/* 206778 801DBC18 02625821 */  addu       $t3, $s3, $v0
.L801DBC1C_ovl9:
/* 20677C 801DBC1C 00095080 */  sll        $t2, $t1, 2
.L801DBC20_ovl9:
/* 206780 801DBC20 028A6021 */  addu       $t4, $s4, $t2
/* 206784 801DBC24 C5880000 */  lwc1       $f8, 0x0($t4)
/* 206788 801DBC28 0C002DAF */  jal        finish_current_thread
glabel func_801DBC2C_ovl17
/* 20678C 801DBC2C E5680000 */   swc1      $f8, 0x0($t3)
/* 206790 801DBC30 8E04003C */  lw         $a0, 0x3C($s0)
glabel func_801DBC34_ovl17
/* 206794 801DBC34 52C4FFF3 */  beql       $s6, $a0, .L801DBC04_ovl15
glabel func_801DBC38_ovl9
/* 206798 801DBC38 8E390000 */   lw        $t9, 0x0($s1)
.L801DBC3C_ovl16:
/* 20679C 801DBC3C 1000FF2E */  b          .L801DB8F8_ovl15
.L801DBC40_ovl11:
/* 2067A0 801DBC40 2C81000A */   sltiu     $at, $a0, 0xA
/* 2067A4 801DBC44 24010005 */  addiu      $at, $zero, 0x5
/* 2067A8 801DBC48 5481FF2B */  bnel       $a0, $at, .L801DB8F8_ovl15
/* 2067AC 801DBC4C 2C81000A */   sltiu     $at, $a0, 0xA
.L801DBC50_ovl16:
/* 2067B0 801DBC50 8E2D0000 */  lw         $t5, 0x0($s1)
.L801DBC54_ovl15:
/* 2067B4 801DBC54 02E02025 */  or         $a0, $s7, $zero
/* 2067B8 801DBC58 8DA20000 */  lw         $v0, 0x0($t5)
/* 2067BC 801DBC5C 00021080 */  sll        $v0, $v0, 2
.L801DBC60_ovl16:
/* 2067C0 801DBC60 02A27821 */  addu       $t7, $s5, $v0
/* 2067C4 801DBC64 8DEE0000 */  lw         $t6, 0x0($t7)
.L801DBC68_ovl16:
/* 2067C8 801DBC68 02624021 */  addu       $t0, $s3, $v0
/* 2067CC 801DBC6C 000EC080 */  sll        $t8, $t6, 2
/* 2067D0 801DBC70 0298C821 */  addu       $t9, $s4, $t8
/* 2067D4 801DBC74 C72A0000 */  lwc1       $f10, 0x0($t9)
.L801DBC78_ovl10:
/* 2067D8 801DBC78 0C002DAF */  jal        finish_current_thread
/* 2067DC 801DBC7C E50A0000 */   swc1      $f10, 0x0($t0)
/* 2067E0 801DBC80 8E04003C */  lw         $a0, 0x3C($s0)
/* 2067E4 801DBC84 24010005 */  addiu      $at, $zero, 0x5
.L801DBC88_ovl17:
/* 2067E8 801DBC88 5081FFF2 */  beql       $a0, $at, .L801DBC54_ovl15
/* 2067EC 801DBC8C 8E2D0000 */   lw        $t5, 0x0($s1)
.L801DBC90_ovl17:
/* 2067F0 801DBC90 1000FF19 */  b          .L801DB8F8_ovl15
/* 2067F4 801DBC94 2C81000A */   sltiu     $at, $a0, 0xA
/* 2067F8 801DBC98 24010006 */  addiu      $at, $zero, 0x6
/* 2067FC 801DBC9C 54810012 */  bnel       $a0, $at, .L801DBCE8_ovl15
/* 206800 801DBCA0 8E230000 */   lw        $v1, 0x0($s1)
/* 206804 801DBCA4 8E290000 */  lw         $t1, 0x0($s1)
.L801DBCA8_ovl15:
/* 206808 801DBCA8 02E02025 */  or         $a0, $s7, $zero
/* 20680C 801DBCAC 8D220000 */  lw         $v0, 0x0($t1)
/* 206810 801DBCB0 00021080 */  sll        $v0, $v0, 2
.L801DBCB4_ovl9:
/* 206814 801DBCB4 02A25021 */  addu       $t2, $s5, $v0
.L801DBCB8_ovl12:
/* 206818 801DBCB8 8D4C0000 */  lw         $t4, 0x0($t2)
/* 20681C 801DBCBC 02627821 */  addu       $t7, $s3, $v0
.L801DBCC0_ovl11:
/* 206820 801DBCC0 000C5880 */  sll        $t3, $t4, 2
/* 206824 801DBCC4 028B6821 */  addu       $t5, $s4, $t3
/* 206828 801DBCC8 C5B00000 */  lwc1       $f16, 0x0($t5)
glabel func_801DBCCC_ovl11
/* 20682C 801DBCCC 0C002DAF */  jal        finish_current_thread
/* 206830 801DBCD0 E5F00000 */   swc1      $f16, 0x0($t7)
.L801DBCD4_ovl16:
/* 206834 801DBCD4 8E04003C */  lw         $a0, 0x3C($s0)
.L801DBCD8_ovl17:
/* 206838 801DBCD8 24010006 */  addiu      $at, $zero, 0x6
/* 20683C 801DBCDC 5081FFF2 */  beql       $a0, $at, .L801DBCA8_ovl15
.L801DBCE0_ovl17:
/* 206840 801DBCE0 8E290000 */   lw        $t1, 0x0($s1)
/* 206844 801DBCE4 8E230000 */  lw         $v1, 0x0($s1)
.L801DBCE8_ovl15:
/* 206848 801DBCE8 44809000 */  mtc1       $zero, $f18
.L801DBCEC_ovl10:
/* 20684C 801DBCEC 3C01800E */  lui        $at, %hi(D_800E6690)
glabel func_801DBCF0_ovl9
/* 206850 801DBCF0 8C6E0000 */  lw         $t6, 0x0($v1)
.L801DBCF4_ovl12:
/* 206854 801DBCF4 000EC080 */  sll        $t8, $t6, 2
/* 206858 801DBCF8 00380821 */  addu       $at, $at, $t8
/* 20685C 801DBCFC E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
glabel func_801DBD00_ovl12
/* 206860 801DBD00 8C620000 */  lw         $v0, 0x0($v1)
/* 206864 801DBD04 3C01800E */  lui        $at, %hi(D_800E6690)
/* 206868 801DBD08 00021080 */  sll        $v0, $v0, 2
/* 20686C 801DBD0C 00220821 */  addu       $at, $at, $v0
/* 206870 801DBD10 C4246690 */  lwc1       $f4, %lo(D_800E6690)($at)
glabel func_801DBD14_ovl9
/* 206874 801DBD14 0262C821 */  addu       $t9, $s3, $v0
/* 206878 801DBD18 3C01801E */  lui        $at, %hi(.L801E67F8_ovl15)
/* 20687C 801DBD1C E7240000 */  swc1       $f4, 0x0($t9)
/* 206880 801DBD20 8C680000 */  lw         $t0, 0x0($v1)
/* 206884 801DBD24 C42667F8 */  lwc1       $f6, %lo(.L801E67F8_ovl15)($at)
.L801DBD28_ovl17:
/* 206888 801DBD28 3C01800E */  lui        $at, %hi(D_800E6850)
/* 20688C 801DBD2C 00084880 */  sll        $t1, $t0, 2
.L801DBD30_ovl17:
/* 206890 801DBD30 00290821 */  addu       $at, $at, $t1
/* 206894 801DBD34 1000FEEF */  b          .L801DB8F4_ovl15
glabel func_801DBD38_ovl10
/* 206898 801DBD38 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
/* 20689C 801DBD3C 24010007 */  addiu      $at, $zero, 0x7
/* 2068A0 801DBD40 5481FEED */  bnel       $a0, $at, .L801DB8F8_ovl15
/* 2068A4 801DBD44 2C81000A */   sltiu     $at, $a0, 0xA
.L801DBD48_ovl15:
/* 2068A8 801DBD48 0C002DAF */  jal        finish_current_thread
/* 2068AC 801DBD4C 02E02025 */   or        $a0, $s7, $zero
.L801DBD50_ovl17:
/* 2068B0 801DBD50 8E04003C */  lw         $a0, 0x3C($s0)
/* 2068B4 801DBD54 24010007 */  addiu      $at, $zero, 0x7
glabel func_801DBD58_ovl11
/* 2068B8 801DBD58 1081FFFB */  beq        $a0, $at, .L801DBD48_ovl15
/* 2068BC 801DBD5C 00000000 */   nop
/* 2068C0 801DBD60 1000FEE5 */  b          .L801DB8F8_ovl15
/* 2068C4 801DBD64 2C81000A */   sltiu     $at, $a0, 0xA
/* 2068C8 801DBD68 24010008 */  addiu      $at, $zero, 0x8
.L801DBD6C_ovl14:
/* 2068CC 801DBD6C 5481FEE2 */  bnel       $a0, $at, .L801DB8F8_ovl15
/* 2068D0 801DBD70 2C81000A */   sltiu     $at, $a0, 0xA
.L801DBD74_ovl15:
/* 2068D4 801DBD74 0C002DAF */  jal        finish_current_thread
/* 2068D8 801DBD78 02E02025 */   or        $a0, $s7, $zero
/* 2068DC 801DBD7C 8E04003C */  lw         $a0, 0x3C($s0)
/* 2068E0 801DBD80 24010008 */  addiu      $at, $zero, 0x8
/* 2068E4 801DBD84 1081FFFB */  beq        $a0, $at, .L801DBD74_ovl15
/* 2068E8 801DBD88 00000000 */   nop
/* 2068EC 801DBD8C 1000FEDA */  b          .L801DB8F8_ovl15
/* 2068F0 801DBD90 2C81000A */   sltiu     $at, $a0, 0xA
.L801DBD94_ovl12:
/* 2068F4 801DBD94 57C4FED8 */  bnel       $fp, $a0, .L801DB8F8_ovl15
.L801DBD98_ovl17:
/* 2068F8 801DBD98 2C81000A */   sltiu     $at, $a0, 0xA
.L801DBD9C_ovl17:
/* 2068FC 801DBD9C 0C002DAF */  jal        finish_current_thread
/* 206900 801DBDA0 02E02025 */   or        $a0, $s7, $zero
/* 206904 801DBDA4 8E04003C */  lw         $a0, 0x3C($s0)
glabel func_801DBDA8_ovl17
/* 206908 801DBDA8 13C4FFFC */  beq        $fp, $a0, .L801DBD9C_ovl17
/* 20690C 801DBDAC 00000000 */   nop
/* 206910 801DBDB0 2C81000A */  sltiu      $at, $a0, 0xA
/* 206914 801DBDB4 5420FED2 */  bnel       $at, $zero, .L801DB900_ovl15
glabel func_801DBDB8_ovl10
/* 206918 801DBDB8 00045080 */   sll       $t2, $a0, 2
.L801DBDBC_ovl15:
/* 20691C 801DBDBC 0C02BE85 */  jal        func_800AFA14
/* 206920 801DBDC0 00000000 */   nop
/* 206924 801DBDC4 1000FECB */  b          .L801DB8F4_ovl15
/* 206928 801DBDC8 8E04003C */   lw        $a0, 0x3C($s0)
/* 20692C 801DBDCC 00000000 */  nop
/* 206930 801DBDD0 00000000 */  nop
/* 206934 801DBDD4 00000000 */  nop
.L801DBDD8_ovl14:
/* 206938 801DBDD8 00000000 */  nop
.L801DBDDC_ovl16:
/* 20693C 801DBDDC 00000000 */  nop
.L801DBDE0_ovl16:
/* 206940 801DBDE0 8FBF005C */  lw         $ra, 0x5C($sp)
.L801DBDE4_ovl17:
/* 206944 801DBDE4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 206948 801DBDE8 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 20694C 801DBDEC D7B80028 */  ldc1       $f24, 0x28($sp)
.L801DBDF0_ovl17:
/* 206950 801DBDF0 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 206954 801DBDF4 8FB00038 */  lw         $s0, 0x38($sp)
glabel func_801DBDF8_ovl11
/* 206958 801DBDF8 8FB1003C */  lw         $s1, 0x3C($sp)
/* 20695C 801DBDFC 8FB20040 */  lw         $s2, 0x40($sp)
glabel func_801DBE00_ovl10
/* 206960 801DBE00 8FB30044 */  lw         $s3, 0x44($sp)
/* 206964 801DBE04 8FB40048 */  lw         $s4, 0x48($sp)
/* 206968 801DBE08 8FB5004C */  lw         $s5, 0x4C($sp)
.L801DBE0C_ovl9:
/* 20696C 801DBE0C 8FB60050 */  lw         $s6, 0x50($sp)
/* 206970 801DBE10 8FB70054 */  lw         $s7, 0x54($sp)
/* 206974 801DBE14 8FBE0058 */  lw         $fp, 0x58($sp)
/* 206978 801DBE18 03E00008 */  jr         $ra
/* 20697C 801DBE1C 27BD0060 */   addiu     $sp, $sp, 0x60
