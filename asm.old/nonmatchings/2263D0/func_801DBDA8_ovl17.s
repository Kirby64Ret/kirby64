glabel func_801DBDA8_ovl17
/* 226F98 801DBDA8 3C058005 */  lui        $a1, %hi(gPlayerControllers)
/* 226F9C 801DBDAC 94A58F20 */  lhu        $a1, %lo(gPlayerControllers)($a1)
/* 226FA0 801DBDB0 27BDFF28 */  addiu      $sp, $sp, -0xD8
/* 226FA4 801DBDB4 AFBF0014 */  sw         $ra, 0x14($sp)
glabel func_801DBDB8_ovl10
/* 226FA8 801DBDB8 30A20C00 */  andi       $v0, $a1, 0xC00
.L801DBDBC_ovl15:
/* 226FAC 801DBDBC 10400009 */  beqz       $v0, .L801DBDE4_ovl17
/* 226FB0 801DBDC0 30AD0300 */   andi      $t5, $a1, 0x300
/* 226FB4 801DBDC4 30AE0003 */  andi       $t6, $a1, 0x3
/* 226FB8 801DBDC8 11C00006 */  beqz       $t6, .L801DBDE4_ovl17
/* 226FBC 801DBDCC 3C01800D */   lui       $at, %hi(D_800D7158 + 0x18)
/* 226FC0 801DBDD0 C42E7170 */  lwc1       $f14, %lo(D_800D7158 + 0x18)($at)
/* 226FC4 801DBDD4 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0x4)
.L801DBDD8_ovl14:
/* 226FC8 801DBDD8 C4245530 */  lwc1       $f4, %lo(func_801E552C_ovl17 + 0x4)($at)
.L801DBDDC_ovl16:
/* 226FCC 801DBDDC 10000004 */  b          .L801DBDF0_ovl17
.L801DBDE0_ovl16:
/* 226FD0 801DBDE0 46047403 */   div.s     $f16, $f14, $f4
.L801DBDE4_ovl17:
/* 226FD4 801DBDE4 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
/* 226FD8 801DBDE8 C42E7170 */  lwc1       $f14, %lo(D_800D7158 + 0x18)($at)
/* 226FDC 801DBDEC 46007406 */  mov.s      $f16, $f14
.L801DBDF0_ovl17:
/* 226FE0 801DBDF0 10400039 */  beqz       $v0, .L801DBED8_ovl17
/* 226FE4 801DBDF4 3C08800F */   lui       $t0, %hi(D_800EAFA0)
glabel func_801DBDF8_ovl11
/* 226FE8 801DBDF8 30AF0800 */  andi       $t7, $a1, 0x800
/* 226FEC 801DBDFC 11E0001B */  beqz       $t7, .L801DBE6C_ovl17
glabel func_801DBE00_ovl10
/* 226FF0 801DBE00 3C048005 */   lui       $a0, %hi(D_8004A7C4)
/* 226FF4 801DBE04 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 226FF8 801DBE08 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L801DBE0C_ovl9:
/* 226FFC 801DBE0C 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0x8)
/* 227000 801DBE10 C4265534 */  lwc1       $f6, %lo(func_801E552C_ovl17 + 0x8)($at)
/* 227004 801DBE14 8C980000 */  lw         $t8, 0x0($a0)
/* 227008 801DBE18 3C0A800F */  lui        $t2, %hi(D_800EAC20)
/* 22700C 801DBE1C 46067082 */  mul.s      $f2, $f14, $f6
glabel func_801DBE20_ovl16
/* 227010 801DBE20 254AAC20 */  addiu      $t2, $t2, %lo(D_800EAC20)
/* 227014 801DBE24 0018C880 */  sll        $t9, $t8, 2
/* 227018 801DBE28 01591021 */  addu       $v0, $t2, $t9
/* 22701C 801DBE2C C4480000 */  lwc1       $f8, 0x0($v0)
/* 227020 801DBE30 46024280 */  add.s      $f10, $f8, $f2
/* 227024 801DBE34 E44A0000 */  swc1       $f10, 0x0($v0)
/* 227028 801DBE38 8C830000 */  lw         $v1, 0x0($a0)
.L801DBE3C_ovl9:
/* 22702C 801DBE3C 00031880 */  sll        $v1, $v1, 2
/* 227030 801DBE40 01431021 */  addu       $v0, $t2, $v1
/* 227034 801DBE44 C4440000 */  lwc1       $f4, 0x0($v0)
/* 227038 801DBE48 4604803C */  c.lt.s     $f16, $f4
/* 22703C 801DBE4C 00000000 */  nop
.L801DBE50_ovl14:
/* 227040 801DBE50 4502001F */  bc1fl      .L801DBED0_ovl17
.L801DBE54_ovl11:
/* 227044 801DBE54 44809000 */   mtc1      $zero, $f18
/* 227048 801DBE58 E4500000 */  swc1       $f16, 0x0($v0)
/* 22704C 801DBE5C 8C830000 */  lw         $v1, 0x0($a0)
/* 227050 801DBE60 44809000 */  mtc1       $zero, $f18
glabel func_801DBE64_ovl13
/* 227054 801DBE64 10000048 */  b          .L801DBF88_ovl17
/* 227058 801DBE68 00031880 */   sll       $v1, $v1, 2
.L801DBE6C_ovl17:
/* 22705C 801DBE6C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 227060 801DBE70 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0xC)
/* 227064 801DBE74 C4265538 */  lwc1       $f6, %lo(func_801E552C_ovl17 + 0xC)($at)
glabel func_801DBE78_ovl9
/* 227068 801DBE78 8C8B0000 */  lw         $t3, 0x0($a0)
/* 22706C 801DBE7C 3C0A800F */  lui        $t2, %hi(D_800EAC20)
.L801DBE80_ovl13:
/* 227070 801DBE80 46067082 */  mul.s      $f2, $f14, $f6
/* 227074 801DBE84 254AAC20 */  addiu      $t2, $t2, %lo(D_800EAC20)
/* 227078 801DBE88 000B6080 */  sll        $t4, $t3, 2
/* 22707C 801DBE8C 014C1021 */  addu       $v0, $t2, $t4
/* 227080 801DBE90 C4480000 */  lwc1       $f8, 0x0($v0)
/* 227084 801DBE94 46008007 */  neg.s      $f0, $f16
/* 227088 801DBE98 46024281 */  sub.s      $f10, $f8, $f2
/* 22708C 801DBE9C E44A0000 */  swc1       $f10, 0x0($v0)
/* 227090 801DBEA0 8C830000 */  lw         $v1, 0x0($a0)
glabel func_801DBEA4_ovl16
/* 227094 801DBEA4 00031880 */  sll        $v1, $v1, 2
/* 227098 801DBEA8 01431021 */  addu       $v0, $t2, $v1
glabel func_801DBEAC_ovl15
/* 22709C 801DBEAC C4440000 */  lwc1       $f4, 0x0($v0)
/* 2270A0 801DBEB0 4600203C */  c.lt.s     $f4, $f0
/* 2270A4 801DBEB4 00000000 */  nop
/* 2270A8 801DBEB8 45020005 */  bc1fl      .L801DBED0_ovl17
/* 2270AC 801DBEBC 44809000 */   mtc1      $zero, $f18
/* 2270B0 801DBEC0 E4400000 */  swc1       $f0, 0x0($v0)
/* 2270B4 801DBEC4 8C830000 */  lw         $v1, 0x0($a0)
/* 2270B8 801DBEC8 00031880 */  sll        $v1, $v1, 2
/* 2270BC 801DBECC 44809000 */  mtc1       $zero, $f18
.L801DBED0_ovl17:
/* 2270C0 801DBED0 1000002D */  b          .L801DBF88_ovl17
/* 2270C4 801DBED4 00000000 */   nop
.L801DBED8_ovl17:
/* 2270C8 801DBED8 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 2270CC 801DBEDC 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 2270D0 801DBEE0 3C0A800F */  lui        $t2, %hi(D_800EAC20)
/* 2270D4 801DBEE4 254AAC20 */  addiu      $t2, $t2, %lo(D_800EAC20)
glabel func_801DBEE8_ovl11
/* 2270D8 801DBEE8 8C830000 */  lw         $v1, 0x0($a0)
/* 2270DC 801DBEEC 44809000 */  mtc1       $zero, $f18
glabel func_801DBEF0_ovl11
/* 2270E0 801DBEF0 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0x10)
/* 2270E4 801DBEF4 00031880 */  sll        $v1, $v1, 2
glabel func_801DBEF8_ovl9
/* 2270E8 801DBEF8 01431021 */  addu       $v0, $t2, $v1
/* 2270EC 801DBEFC C4400000 */  lwc1       $f0, 0x0($v0)
/* 2270F0 801DBF00 4612003C */  c.lt.s     $f0, $f18
/* 2270F4 801DBF04 00000000 */  nop
/* 2270F8 801DBF08 45020004 */  bc1fl      .L801DBF1C_ovl17
/* 2270FC 801DBF0C 46000306 */   mov.s     $f12, $f0
/* 227100 801DBF10 10000002 */  b          .L801DBF1C_ovl17
/* 227104 801DBF14 46000307 */   neg.s     $f12, $f0
/* 227108 801DBF18 46000306 */  mov.s      $f12, $f0
.L801DBF1C_ovl17:
/* 22710C 801DBF1C C426553C */  lwc1       $f6, %lo(func_801E552C_ovl17 + 0x10)($at)
/* 227110 801DBF20 46067082 */  mul.s      $f2, $f14, $f6
/* 227114 801DBF24 4602603C */  c.lt.s     $f12, $f2
/* 227118 801DBF28 00000000 */  nop
/* 22711C 801DBF2C 45020006 */  bc1fl      func_801DBF48_ovl17
.L801DBF30_ovl12:
/* 227120 801DBF30 4600103E */   c.le.s    $f2, $f0
.L801DBF34_ovl9:
/* 227124 801DBF34 E4520000 */  swc1       $f18, 0x0($v0)
/* 227128 801DBF38 8C830000 */  lw         $v1, 0x0($a0)
.L801DBF3C_ovl13:
/* 22712C 801DBF3C 10000012 */  b          .L801DBF88_ovl17
.L801DBF40_ovl16:
/* 227130 801DBF40 00031880 */   sll       $v1, $v1, 2
.L801DBF44_ovl16:
/* 227134 801DBF44 4600103E */  c.le.s     $f2, $f0
glabel func_801DBF48_ovl17
/* 227138 801DBF48 00000000 */  nop
/* 22713C 801DBF4C 45020007 */  bc1fl      .L801DBF6C_ovl17
.L801DBF50_ovl16:
/* 227140 801DBF50 4602003E */   c.le.s    $f0, $f2
/* 227144 801DBF54 46020201 */  sub.s      $f8, $f0, $f2
.L801DBF58_ovl12:
/* 227148 801DBF58 E4480000 */  swc1       $f8, 0x0($v0)
.L801DBF5C_ovl13:
/* 22714C 801DBF5C 8C830000 */  lw         $v1, 0x0($a0)
/* 227150 801DBF60 10000009 */  b          .L801DBF88_ovl17
/* 227154 801DBF64 00031880 */   sll       $v1, $v1, 2
.L801DBF68_ovl12:
/* 227158 801DBF68 4602003E */  c.le.s     $f0, $f2
.L801DBF6C_ovl17:
/* 22715C 801DBF6C 00000000 */  nop
glabel func_801DBF70_ovl10
/* 227160 801DBF70 45000005 */  bc1f       .L801DBF88_ovl17
/* 227164 801DBF74 00000000 */   nop
/* 227168 801DBF78 46020280 */  add.s      $f10, $f0, $f2
/* 22716C 801DBF7C E44A0000 */  swc1       $f10, 0x0($v0)
.L801DBF80_ovl13:
/* 227170 801DBF80 8C830000 */  lw         $v1, 0x0($a0)
.L801DBF84_ovl13:
/* 227174 801DBF84 00031880 */  sll        $v1, $v1, 2
.L801DBF88_ovl17:
/* 227178 801DBF88 11A00028 */  beqz       $t5, .L801DC02C_ovl17
/* 22717C 801DBF8C 2508AFA0 */   addiu     $t0, $t0, %lo(D_800EAFA0)
glabel func_801DBF90_ovl12
/* 227180 801DBF90 30AE0100 */  andi       $t6, $a1, 0x100
/* 227184 801DBF94 11C00013 */  beqz       $t6, .L801DBFE4_ovl17
/* 227188 801DBF98 3C09800F */   lui       $t1, %hi(D_800EADE0)
glabel func_801DBF9C_ovl11
/* 22718C 801DBF9C 3C09800F */  lui        $t1, %hi(D_800EADE0)
/* 227190 801DBFA0 2529ADE0 */  addiu      $t1, $t1, %lo(D_800EADE0)
glabel func_801DBFA4_ovl11
/* 227194 801DBFA4 01231021 */  addu       $v0, $t1, $v1
/* 227198 801DBFA8 C4440000 */  lwc1       $f4, 0x0($v0)
glabel func_801DBFAC_ovl12
/* 22719C 801DBFAC 46022180 */  add.s      $f6, $f4, $f2
/* 2271A0 801DBFB0 E4460000 */  swc1       $f6, 0x0($v0)
.L801DBFB4_ovl16:
/* 2271A4 801DBFB4 8C830000 */  lw         $v1, 0x0($a0)
/* 2271A8 801DBFB8 00031880 */  sll        $v1, $v1, 2
/* 2271AC 801DBFBC 01231021 */  addu       $v0, $t1, $v1
.L801DBFC0_ovl13:
/* 2271B0 801DBFC0 C4480000 */  lwc1       $f8, 0x0($v0)
/* 2271B4 801DBFC4 4608803C */  c.lt.s     $f16, $f8
/* 2271B8 801DBFC8 00000000 */  nop
.L801DBFCC_ovl15:
/* 2271BC 801DBFCC 4502003C */  bc1fl      .L801DC0C0_ovl17
/* 2271C0 801DBFD0 01037821 */   addu      $t7, $t0, $v1
/* 2271C4 801DBFD4 E4500000 */  swc1       $f16, 0x0($v0)
/* 2271C8 801DBFD8 8C830000 */  lw         $v1, 0x0($a0)
/* 2271CC 801DBFDC 10000037 */  b          .L801DC0BC_ovl17
/* 2271D0 801DBFE0 00031880 */   sll       $v1, $v1, 2
.L801DBFE4_ovl17:
/* 2271D4 801DBFE4 2529ADE0 */  addiu      $t1, $t1, %lo(D_800EADE0)
/* 2271D8 801DBFE8 01231021 */  addu       $v0, $t1, $v1
.L801DBFEC_ovl15:
/* 2271DC 801DBFEC C44A0000 */  lwc1       $f10, 0x0($v0)
.L801DBFF0_ovl13:
/* 2271E0 801DBFF0 46008007 */  neg.s      $f0, $f16
/* 2271E4 801DBFF4 46025101 */  sub.s      $f4, $f10, $f2
/* 2271E8 801DBFF8 E4440000 */  swc1       $f4, 0x0($v0)
/* 2271EC 801DBFFC 8C830000 */  lw         $v1, 0x0($a0)
.L801DC000_ovl15:
/* 2271F0 801DC000 00031880 */  sll        $v1, $v1, 2
/* 2271F4 801DC004 01231021 */  addu       $v0, $t1, $v1
/* 2271F8 801DC008 C4460000 */  lwc1       $f6, 0x0($v0)
.L801DC00C_ovl14:
/* 2271FC 801DC00C 4600303C */  c.lt.s     $f6, $f0
/* 227200 801DC010 00000000 */  nop
/* 227204 801DC014 4502002A */  bc1fl      .L801DC0C0_ovl17
/* 227208 801DC018 01037821 */   addu      $t7, $t0, $v1
.L801DC01C_ovl15:
/* 22720C 801DC01C E4400000 */  swc1       $f0, 0x0($v0)
.L801DC020_ovl13:
/* 227210 801DC020 8C830000 */  lw         $v1, 0x0($a0)
.L801DC024_ovl9:
/* 227214 801DC024 10000025 */  b          .L801DC0BC_ovl17
/* 227218 801DC028 00031880 */   sll       $v1, $v1, 2
.L801DC02C_ovl17:
/* 22721C 801DC02C 3C09800F */  lui        $t1, %hi(D_800EADE0)
/* 227220 801DC030 2529ADE0 */  addiu      $t1, $t1, %lo(D_800EADE0)
/* 227224 801DC034 01231021 */  addu       $v0, $t1, $v1
.L801DC038_ovl16:
/* 227228 801DC038 C4400000 */  lwc1       $f0, 0x0($v0)
.L801DC03C_ovl9:
/* 22722C 801DC03C 4612003C */  c.lt.s     $f0, $f18
/* 227230 801DC040 00000000 */  nop
/* 227234 801DC044 45020004 */  bc1fl      .L801DC058_ovl17
.L801DC048_ovl12:
/* 227238 801DC048 46000306 */   mov.s     $f12, $f0
.L801DC04C_ovl11:
/* 22723C 801DC04C 10000002 */  b          .L801DC058_ovl17
/* 227240 801DC050 46000307 */   neg.s     $f12, $f0
.L801DC054_ovl11:
/* 227244 801DC054 46000306 */  mov.s      $f12, $f0
.L801DC058_ovl17:
/* 227248 801DC058 4602603C */  c.lt.s     $f12, $f2
.L801DC05C_ovl12:
/* 22724C 801DC05C 00000000 */  nop
/* 227250 801DC060 45020006 */  bc1fl      .L801DC07C_ovl17
glabel func_801DC064_ovl11
/* 227254 801DC064 4600103E */   c.le.s    $f2, $f0
/* 227258 801DC068 E4520000 */  swc1       $f18, 0x0($v0)
glabel func_801DC06C_ovl16
/* 22725C 801DC06C 8C830000 */  lw         $v1, 0x0($a0)
/* 227260 801DC070 10000012 */  b          .L801DC0BC_ovl17
/* 227264 801DC074 00031880 */   sll       $v1, $v1, 2
/* 227268 801DC078 4600103E */  c.le.s     $f2, $f0
.L801DC07C_ovl17:
/* 22726C 801DC07C 00000000 */  nop
/* 227270 801DC080 45020007 */  bc1fl      .L801DC0A0_ovl17
/* 227274 801DC084 4602003E */   c.le.s    $f0, $f2
.L801DC088_ovl14:
/* 227278 801DC088 46020201 */  sub.s      $f8, $f0, $f2
/* 22727C 801DC08C E4480000 */  swc1       $f8, 0x0($v0)
/* 227280 801DC090 8C830000 */  lw         $v1, 0x0($a0)
glabel func_801DC094_ovl12
/* 227284 801DC094 10000009 */  b          .L801DC0BC_ovl17
/* 227288 801DC098 00031880 */   sll       $v1, $v1, 2
.L801DC09C_ovl13:
/* 22728C 801DC09C 4602003E */  c.le.s     $f0, $f2
.L801DC0A0_ovl17:
/* 227290 801DC0A0 00000000 */  nop
/* 227294 801DC0A4 45020006 */  bc1fl      .L801DC0C0_ovl17
/* 227298 801DC0A8 01037821 */   addu      $t7, $t0, $v1
/* 22729C 801DC0AC 46020280 */  add.s      $f10, $f0, $f2
.L801DC0B0_ovl9:
/* 2272A0 801DC0B0 E44A0000 */  swc1       $f10, 0x0($v0)
/* 2272A4 801DC0B4 8C830000 */  lw         $v1, 0x0($a0)
.L801DC0B8_ovl13:
/* 2272A8 801DC0B8 00031880 */  sll        $v1, $v1, 2
.L801DC0BC_ovl17:
/* 2272AC 801DC0BC 01037821 */  addu       $t7, $t0, $v1
.L801DC0C0_ovl17:
/* 2272B0 801DC0C0 30B80030 */  andi       $t8, $a1, 0x30
/* 2272B4 801DC0C4 13000016 */  beqz       $t8, .L801DC120_ovl17
/* 2272B8 801DC0C8 E5F20000 */   swc1      $f18, 0x0($t7)
/* 2272BC 801DC0CC 30B90010 */  andi       $t9, $a1, 0x10
/* 2272C0 801DC0D0 13200009 */  beqz       $t9, .L801DC0F8_ovl17
.L801DC0D4_ovl16:
/* 2272C4 801DC0D4 30AD0020 */   andi      $t5, $a1, 0x20
.L801DC0D8_ovl16:
/* 2272C8 801DC0D8 8C8B0000 */  lw         $t3, 0x0($a0)
glabel func_801DC0DC_ovl15
/* 2272CC 801DC0DC 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0x14)
/* 2272D0 801DC0E0 C4265540 */  lwc1       $f6, %lo(func_801E552C_ovl17 + 0x14)($at)
.L801DC0E4_ovl16:
/* 2272D4 801DC0E4 000B6080 */  sll        $t4, $t3, 2
/* 2272D8 801DC0E8 010C1021 */  addu       $v0, $t0, $t4
glabel func_801DC0EC_ovl15
/* 2272DC 801DC0EC C4440000 */  lwc1       $f4, 0x0($v0)
.L801DC0F0_ovl13:
/* 2272E0 801DC0F0 46062200 */  add.s      $f8, $f4, $f6
/* 2272E4 801DC0F4 E4480000 */  swc1       $f8, 0x0($v0)
.L801DC0F8_ovl17:
/* 2272E8 801DC0F8 11A00009 */  beqz       $t5, .L801DC120_ovl17
/* 2272EC 801DC0FC 00000000 */   nop
/* 2272F0 801DC100 8C8E0000 */  lw         $t6, 0x0($a0)
.L801DC104_ovl15:
/* 2272F4 801DC104 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0x18)
/* 2272F8 801DC108 C4245544 */  lwc1       $f4, %lo(func_801E552C_ovl17 + 0x18)($at)
glabel func_801DC10C_ovl15
/* 2272FC 801DC10C 000E7880 */  sll        $t7, $t6, 2
/* 227300 801DC110 010F1021 */  addu       $v0, $t0, $t7
/* 227304 801DC114 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 227308 801DC118 46045181 */  sub.s      $f6, $f10, $f4
.L801DC11C_ovl15:
/* 22730C 801DC11C E4460000 */  swc1       $f6, 0x0($v0)
.L801DC120_ovl17:
/* 227310 801DC120 0C00C304 */  jal        guMtxIdentF
/* 227314 801DC124 27A4007C */   addiu     $a0, $sp, 0x7C
/* 227318 801DC128 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 22731C 801DC12C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 227320 801DC130 3C08800F */  lui        $t0, %hi(D_800EAFA0)
.L801DC134_ovl15:
/* 227324 801DC134 3C09800F */  lui        $t1, %hi(D_800EADE0)
/* 227328 801DC138 8F030000 */  lw         $v1, 0x0($t8)
glabel func_801DC13C_ovl15
/* 22732C 801DC13C 3C0A800F */  lui        $t2, %hi(D_800EAC20)
/* 227330 801DC140 254AAC20 */  addiu      $t2, $t2, %lo(D_800EAC20)
/* 227334 801DC144 00031880 */  sll        $v1, $v1, 2
/* 227338 801DC148 2529ADE0 */  addiu      $t1, $t1, %lo(D_800EADE0)
/* 22733C 801DC14C 2508AFA0 */  addiu      $t0, $t0, %lo(D_800EAFA0)
/* 227340 801DC150 01036021 */  addu       $t4, $t0, $v1
.L801DC154_ovl14:
/* 227344 801DC154 01235821 */  addu       $t3, $t1, $v1
glabel func_801DC158_ovl11
/* 227348 801DC158 0143C821 */  addu       $t9, $t2, $v1
/* 22734C 801DC15C 8F250000 */  lw         $a1, 0x0($t9)
/* 227350 801DC160 8D660000 */  lw         $a2, 0x0($t3)
/* 227354 801DC164 8D870000 */  lw         $a3, 0x0($t4)
/* 227358 801DC168 0C006EEB */  jal        HS64_MkRotationMtxF
.L801DC16C_ovl14:
/* 22735C 801DC16C 27A4003C */   addiu     $a0, $sp, 0x3C
/* 227360 801DC170 27A4007C */  addiu      $a0, $sp, 0x7C
.L801DC174_ovl16:
/* 227364 801DC174 00803025 */  or         $a2, $a0, $zero
.L801DC178_ovl14:
/* 227368 801DC178 0C00D034 */  jal        guMtxCatF
glabel func_801DC17C_ovl12
/* 22736C 801DC17C 27A5003C */   addiu     $a1, $sp, 0x3C
.L801DC180_ovl14:
/* 227370 801DC180 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 227374 801DC184 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 227378 801DC188 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* 22737C 801DC18C 3C06800F */  lui        $a2, %hi(D_800EA8A0)
/* 227380 801DC190 8DA30000 */  lw         $v1, 0x0($t5)
/* 227384 801DC194 3C07800F */  lui        $a3, %hi(D_800EAA60)
/* 227388 801DC198 27A4003C */  addiu      $a0, $sp, 0x3C
/* 22738C 801DC19C 00031880 */  sll        $v1, $v1, 2
.L801DC1A0_ovl9:
/* 227390 801DC1A0 00A32821 */  addu       $a1, $a1, $v1
/* 227394 801DC1A4 00C33021 */  addu       $a2, $a2, $v1
/* 227398 801DC1A8 00E33821 */  addu       $a3, $a3, $v1
/* 22739C 801DC1AC 8CE7AA60 */  lw         $a3, %lo(D_800EAA60)($a3)
/* 2273A0 801DC1B0 8CC6A8A0 */  lw         $a2, %lo(D_800EA8A0)($a2)
.L801DC1B4_ovl11:
/* 2273A4 801DC1B4 0C006EEB */  jal        HS64_MkRotationMtxF
.L801DC1B8_ovl10:
/* 2273A8 801DC1B8 8CA5A6E0 */   lw        $a1, %lo(D_800EA6E0)($a1)
glabel func_801DC1BC_ovl14
/* 2273AC 801DC1BC 27A6007C */  addiu      $a2, $sp, 0x7C
/* 2273B0 801DC1C0 00C02025 */  or         $a0, $a2, $zero
glabel func_801DC1C4_ovl14
/* 2273B4 801DC1C4 0C00D034 */  jal        guMtxCatF
/* 2273B8 801DC1C8 27A5003C */   addiu     $a1, $sp, 0x3C
.L801DC1CC_ovl10:
/* 2273BC 801DC1CC C7AC0084 */  lwc1       $f12, 0x84($sp)
/* 2273C0 801DC1D0 0C006203 */  jal        asinf
/* 2273C4 801DC1D4 46006307 */   neg.s     $f12, $f12
/* 2273C8 801DC1D8 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0x1C)
/* 2273CC 801DC1DC C4225548 */  lwc1       $f2, %lo(func_801E552C_ovl17 + 0x1C)($at)
.L801DC1E0_ovl12:
/* 2273D0 801DC1E0 E7A000CC */  swc1       $f0, 0xCC($sp)
.L801DC1E4_ovl9:
/* 2273D4 801DC1E4 3C01801E */  lui        $at, %hi(func_801E552C_ovl17 + 0x20)
/* 2273D8 801DC1E8 46020032 */  c.eq.s     $f0, $f2
/* 2273DC 801DC1EC 00000000 */  nop
/* 2273E0 801DC1F0 45030008 */  bc1tl      .L801DC214_ovl17
glabel func_801DC1F4_ovl9
/* 2273E4 801DC1F4 46020032 */   c.eq.s    $f0, $f2
.L801DC1F8_ovl16:
/* 2273E8 801DC1F8 C428554C */  lwc1       $f8, %lo(func_801E552C_ovl17 + 0x20)($at)
/* 2273EC 801DC1FC C7AC0094 */  lwc1       $f12, 0x94($sp)
/* 2273F0 801DC200 46080032 */  c.eq.s     $f0, $f8
/* 2273F4 801DC204 00000000 */  nop
.L801DC208_ovl12:
/* 2273F8 801DC208 45000011 */  bc1f       func_801DC250_ovl17
.L801DC20C_ovl12:
/* 2273FC 801DC20C 00000000 */   nop
/* 227400 801DC210 46020032 */  c.eq.s     $f0, $f2
.L801DC214_ovl17:
/* 227404 801DC214 C7AC008C */  lwc1       $f12, 0x8C($sp)
/* 227408 801DC218 C7AE0090 */  lwc1       $f14, 0x90($sp)
/* 22740C 801DC21C 45000006 */  bc1f       .L801DC238_ovl17
/* 227410 801DC220 00000000 */   nop
/* 227414 801DC224 C7AC008C */  lwc1       $f12, 0x8C($sp)
/* 227418 801DC228 0C0061C3 */  jal        atan2f
.L801DC22C_ovl16:
/* 22741C 801DC22C C7AE0090 */   lwc1      $f14, 0x90($sp)
/* 227420 801DC230 10000004 */  b          .L801DC244_ovl17
/* 227424 801DC234 E7A000C8 */   swc1      $f0, 0xC8($sp)
.L801DC238_ovl17:
/* 227428 801DC238 0C0061C3 */  jal        atan2f
/* 22742C 801DC23C 46006307 */   neg.s     $f12, $f12
/* 227430 801DC240 E7A000C8 */  swc1       $f0, 0xC8($sp)
.L801DC244_ovl17:
/* 227434 801DC244 44805000 */  mtc1       $zero, $f10
.L801DC248_ovl12:
/* 227438 801DC248 10000008 */  b          .L801DC26C_ovl17
/* 22743C 801DC24C E7AA00D0 */   swc1      $f10, 0xD0($sp)
glabel func_801DC250_ovl17
/* 227440 801DC250 0C0061C3 */  jal        atan2f
/* 227444 801DC254 C7AE00A4 */   lwc1      $f14, 0xA4($sp)
glabel func_801DC258_ovl12
/* 227448 801DC258 E7A000C8 */  swc1       $f0, 0xC8($sp)
/* 22744C 801DC25C C7AC0080 */  lwc1       $f12, 0x80($sp)
/* 227450 801DC260 0C0061C3 */  jal        atan2f
/* 227454 801DC264 C7AE007C */   lwc1      $f14, 0x7C($sp)
/* 227458 801DC268 E7A000D0 */  swc1       $f0, 0xD0($sp)
.L801DC26C_ovl17:
/* 22745C 801DC26C 0C029166 */  jal        func_800A4598
.L801DC270_ovl12:
/* 227460 801DC270 27A400C8 */   addiu     $a0, $sp, 0xC8
/* 227464 801DC274 3C048005 */  lui        $a0, %hi(D_8004A7C4)
glabel func_801DC278_ovl12
/* 227468 801DC278 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 22746C 801DC27C C7A400C8 */  lwc1       $f4, 0xC8($sp)
/* 227470 801DC280 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 227474 801DC284 8C8F0000 */  lw         $t7, 0x0($a0)
/* 227478 801DC288 C7A600CC */  lwc1       $f6, 0xCC($sp)
/* 22747C 801DC28C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 227480 801DC290 000FC080 */  sll        $t8, $t7, 2
.L801DC294_ovl16:
/* 227484 801DC294 00380821 */  addu       $at, $at, $t8
glabel func_801DC298_ovl16
/* 227488 801DC298 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
/* 22748C 801DC29C 8C990000 */  lw         $t9, 0x0($a0)
glabel func_801DC2A0_ovl14
/* 227490 801DC2A0 3C01800F */  lui        $at, %hi(D_800EA8A0)
.L801DC2A4_ovl16:
/* 227494 801DC2A4 C7A800D0 */  lwc1       $f8, 0xD0($sp)
/* 227498 801DC2A8 00195880 */  sll        $t3, $t9, 2
.L801DC2AC_ovl16:
/* 22749C 801DC2AC 002B0821 */  addu       $at, $at, $t3
/* 2274A0 801DC2B0 E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
/* 2274A4 801DC2B4 8C8C0000 */  lw         $t4, 0x0($a0)
/* 2274A8 801DC2B8 3C01800F */  lui        $at, %hi(D_800EAA60)
glabel func_801DC2BC_ovl15
/* 2274AC 801DC2BC 27BD00D8 */  addiu      $sp, $sp, 0xD8
.L801DC2C0_ovl14:
/* 2274B0 801DC2C0 000C6880 */  sll        $t5, $t4, 2
/* 2274B4 801DC2C4 002D0821 */  addu       $at, $at, $t5
.L801DC2C8_ovl11:
/* 2274B8 801DC2C8 03E00008 */  jr         $ra
/* 2274BC 801DC2CC E428AA60 */   swc1      $f8, %lo(D_800EAA60)($at)
