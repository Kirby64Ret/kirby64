glabel func_801DCDC8_ovl16
/* 213078 801DCDC8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 21307C 801DCDCC AFB20038 */  sw    $s2, 0x38($sp)
/* 213080 801DCDD0 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 213084 801DCDD4 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 213088 801DCDD8 8E4E0000 */  lw    $t6, ($s2)
/* 21308C 801DCDDC AFBF0054 */  sw    $ra, 0x54($sp)
/* 213090 801DCDE0 AFBE0050 */  sw    $fp, 0x50($sp)
/* 213094 801DCDE4 AFB7004C */  sw    $s7, 0x4c($sp)
/* 213098 801DCDE8 AFB60048 */  sw    $s6, 0x48($sp)
/* 21309C 801DCDEC AFB50044 */  sw    $s5, 0x44($sp)
/* 2130A0 801DCDF0 AFB40040 */  sw    $s4, 0x40($sp)
/* 2130A4 801DCDF4 AFB3003C */  sw    $s3, 0x3c($sp)
/* 2130A8 801DCDF8 AFB10034 */  sw    $s1, 0x34($sp)
/* 2130AC 801DCDFC AFB00030 */  sw    $s0, 0x30($sp)
/* 2130B0 801DCE00 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 2130B4 801DCE04 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 2130B8 801DCE08 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 2130BC 801DCE0C AFA40060 */  sw    $a0, 0x60($sp)
/* 2130C0 801DCE10 8DCF0000 */  lw    $t7, ($t6)
/* 2130C4 801DCE14 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 2130C8 801DCE18 000FC080 */  sll   $t8, $t7, 2
/* 2130CC 801DCE1C 0338C821 */  addu  $t9, $t9, $t8
/* 2130D0 801DCE20 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 2130D4 801DCE24 0C066ED6 */  jal   func_8019BB58_ovl16
/* 2130D8 801DCE28 AFB9005C */   sw    $t9, 0x5c($sp)
/* 2130DC 801DCE2C 3C040001 */  lui   $a0, (0x00010077 >> 16) # lui $a0, 1
/* 2130E0 801DCE30 34840077 */  ori   $a0, (0x00010077 & 0xFFFF) # ori $a0, $a0, 0x77
/* 2130E4 801DCE34 24050023 */  li    $a1, 35
/* 2130E8 801DCE38 0C02A619 */  jal   func_800A9864
/* 2130EC 801DCE3C 24060010 */   li    $a2, 16
/* 2130F0 801DCE40 8E500000 */  lw    $s0, ($s2)
/* 2130F4 801DCE44 3C08800B */  lui   $t0, %hi(D_800B7560) # $t0, 0x800b
/* 2130F8 801DCE48 3C01800E */ lui $at, %hi(D_800DEF90)
/* 2130FC 801DCE4C 8E090000 */  lw    $t1, ($s0)
/* 213100 801DCE50 25087560 */  addiu $t0, %lo(D_800B7560) # addiu $t0, $t0, 0x7560
/* 213104 801DCE54 3C0B801E */  lui   $t3, %hi(D_801DD25C) # $t3, 0x801e
/* 213108 801DCE58 00095080 */  sll   $t2, $t1, 2
/* 21310C 801DCE5C 002A0821 */  addu  $at, $at, $t2
/* 213110 801DCE60 AC28EF90 */ sw $t0, %lo(D_800DEF90)($at)
/* 213114 801DCE64 8E0C0000 */  lw    $t4, ($s0)
/* 213118 801DCE68 3C01800E */ lui $at, %hi(D_800DF150)
/* 21311C 801DCE6C 256BD25C */  addiu $t3, %lo(D_801DD25C) # addiu $t3, $t3, -0x2da4
/* 213120 801DCE70 000C6880 */  sll   $t5, $t4, 2
/* 213124 801DCE74 002D0821 */  addu  $at, $at, $t5
/* 213128 801DCE78 AC2BF150 */ sw $t3, %lo(D_800DF150)($at)
/* 21312C 801DCE7C 8E0E0000 */  lw    $t6, ($s0)
/* 213130 801DCE80 3C13800F */  lui   $s3, %hi(D_800E98E0) # $s3, 0x800f
/* 213134 801DCE84 267398E0 */  addiu $s3, %lo(D_800E98E0) # addiu $s3, $s3, -0x6720
/* 213138 801DCE88 000E7880 */  sll   $t7, $t6, 2
/* 21313C 801DCE8C 24150001 */  li    $s5, 1
/* 213140 801DCE90 026FC021 */  addu  $t8, $s3, $t7
/* 213144 801DCE94 AF150000 */  sw    $s5, ($t8)
/* 213148 801DCE98 8E190000 */  lw    $t9, ($s0)
/* 21314C 801DCE9C 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 213150 801DCEA0 3C1E800E */  lui   $fp, %hi(D_800E6BD0) # $fp, 0x800e
/* 213154 801DCEA4 00194880 */  sll   $t1, $t9, 2
/* 213158 801DCEA8 00290821 */  addu  $at, $at, $t1
/* 21315C 801DCEAC AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 213160 801DCEB0 8E080000 */  lw    $t0, ($s0)
/* 213164 801DCEB4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 213168 801DCEB8 4481C000 */  mtc1  $at, $f24
/* 21316C 801DCEBC 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 213170 801DCEC0 00085080 */  sll   $t2, $t0, 2
/* 213174 801DCEC4 026A6021 */  addu  $t4, $s3, $t2
/* 213178 801DCEC8 3C17800E */  lui   $s7, %hi(D_800E0D50) # $s7, 0x800e
/* 21317C 801DCECC 3C16800E */  lui   $s6, %hi(D_800E5F90) # $s6, 0x800e
/* 213180 801DCED0 3C14800D */  lui   $s4, %hi(D_800D6B10) # $s4, 0x800d
/* 213184 801DCED4 4481B000 */  mtc1  $at, $f22
/* 213188 801DCED8 26946B10 */  addiu $s4, %lo(D_800D6B10) # addiu $s4, $s4, 0x6b10
/* 21318C 801DCEDC 26D65F90 */  addiu $s6, %lo(D_800E5F90) # addiu $s6, $s6, 0x5f90
/* 213190 801DCEE0 26F70D50 */  addiu $s7, %lo(D_800E0D50) # addiu $s7, $s7, 0x0d50
/* 213194 801DCEE4 8D910000 */  lw    $s1, ($t4)
/* 213198 801DCEE8 27DE6BD0 */  addiu $fp, %lo(D_800E6BD0) # addiu $fp, $fp, 0x6bd0
.L801DCEEC_ovl16:
/* 21319C 801DCEEC 00115880 */  sll   $t3, $s1, 2
.L801DCEF0_ovl16:
/* 2131A0 801DCEF0 3C04801F */ lui $a0, %hi(D_801EF634_ovl16)
/* 2131A4 801DCEF4 008B2021 */  addu  $a0, $a0, $t3
/* 2131A8 801DCEF8 8C84F634 */ lw $a0, %lo(D_801EF634_ovl16)($a0)
/* 2131AC 801DCEFC 0C02BEED */  jal   func_800AFBB4
/* 2131B0 801DCF00 02002825 */   move  $a1, $s0
/* 2131B4 801DCF04 8E500000 */  lw    $s0, ($s2)
/* 2131B8 801DCF08 8E020000 */  lw    $v0, ($s0)
/* 2131BC 801DCF0C 00021080 */  sll   $v0, $v0, 2
/* 2131C0 801DCF10 02626821 */  addu  $t5, $s3, $v0
/* 2131C4 801DCF14 8DB10000 */  lw    $s1, ($t5)
/* 2131C8 801DCF18 2E210007 */  sltiu $at, $s1, 7
/* 2131CC 801DCF1C 5020FFF4 */  beql  $at, $zero, .L801DCEF0_ovl16
/* 2131D0 801DCF20 00115880 */   sll   $t3, $s1, 2
/* 2131D4 801DCF24 00117080 */  sll   $t6, $s1, 2
/* 2131D8 801DCF28 3C01801F */ lui $at, %hi(jtbl_801EFE00_ovl16)
/* 2131DC 801DCF2C 002E0821 */  addu  $at, $at, $t6
/* 2131E0 801DCF30 8C2EFE00 */ lw $t6, %lo(jtbl_801EFE00_ovl16)($at)
/* 2131E4 801DCF34 01C00008 */  jr    $t6
/* 2131E8 801DCF38 00000000 */   nop   
glabel L801DCF3C_ovl16
/* 2131EC 801DCF3C 0C002DAF */  jal   finish_current_thread
/* 2131F0 801DCF40 02A02025 */   move  $a0, $s5
glabel L801DCF44_ovl16
/* 2131F4 801DCF44 3C040001 */  lui   $a0, (0x0001046F >> 16) # lui $a0, 1
/* 2131F8 801DCF48 0C02A7A9 */  jal   func_800A9EA4
/* 2131FC 801DCF4C 3484046F */   ori   $a0, (0x0001046F & 0xFFFF) # ori $a0, $a0, 0x46f
/* 213200 801DCF50 3C040001 */  lui   $a0, (0x0001046E >> 16) # lui $a0, 1
/* 213204 801DCF54 0C02A7A9 */  jal   func_800A9EA4
/* 213208 801DCF58 3484046E */   ori   $a0, (0x0001046E & 0xFFFF) # ori $a0, $a0, 0x46e
/* 21320C 801DCF5C 0C002DAF */  jal   finish_current_thread
/* 213210 801DCF60 02A02025 */   move  $a0, $s5
/* 213214 801DCF64 8E500000 */  lw    $s0, ($s2)
/* 213218 801DCF68 8E0F0000 */  lw    $t7, ($s0)
/* 21321C 801DCF6C 000FC080 */  sll   $t8, $t7, 2
/* 213220 801DCF70 0278C821 */  addu  $t9, $s3, $t8
/* 213224 801DCF74 1000FFDD */  b     .L801DCEEC_ovl16
/* 213228 801DCF78 8F310000 */   lw    $s1, ($t9)
glabel L801DCF7C_ovl16
/* 21322C 801DCF7C 0C029D9E */  jal   play_sound
/* 213230 801DCF80 240401B2 */   li    $a0, 434
/* 213234 801DCF84 3C040001 */  lui   $a0, (0x0001046B >> 16) # lui $a0, 1
/* 213238 801DCF88 0C02A806 */  jal   func_800AA018
/* 21323C 801DCF8C 3484046B */   ori   $a0, (0x0001046B & 0xFFFF) # ori $a0, $a0, 0x46b
/* 213240 801DCF90 3C040001 */  lui   $a0, (0x0001046A >> 16) # lui $a0, 1
/* 213244 801DCF94 0C02A855 */  jal   func_800AA154
/* 213248 801DCF98 3484046A */   ori   $a0, (0x0001046A & 0xFFFF) # ori $a0, $a0, 0x46a
/* 21324C 801DCF9C 8E500000 */  lw    $s0, ($s2)
/* 213250 801DCFA0 8E090000 */  lw    $t1, ($s0)
/* 213254 801DCFA4 00094080 */  sll   $t0, $t1, 2
/* 213258 801DCFA8 02685021 */  addu  $t2, $s3, $t0
/* 21325C 801DCFAC AD400000 */  sw    $zero, ($t2)
/* 213260 801DCFB0 8E0C0000 */  lw    $t4, ($s0)
/* 213264 801DCFB4 000C5880 */  sll   $t3, $t4, 2
/* 213268 801DCFB8 026B6821 */  addu  $t5, $s3, $t3
/* 21326C 801DCFBC 1000FFCB */  b     .L801DCEEC_ovl16
/* 213270 801DCFC0 8DB10000 */   lw    $s1, ($t5)
glabel L801DCFC4_ovl16
/* 213274 801DCFC4 C6940000 */  lwc1  $f20, ($s4)
/* 213278 801DCFC8 0C02BB30 */  jal   func_800AECC0
/* 21327C 801DCFCC 4614A300 */   add.s $f12, $f20, $f20
/* 213280 801DCFD0 C6940000 */  lwc1  $f20, ($s4)
/* 213284 801DCFD4 0C02BB48 */  jal   func_800AED20
/* 213288 801DCFD8 4614A300 */   add.s $f12, $f20, $f20
/* 21328C 801DCFDC 3C040001 */  lui   $a0, (0x0001046D >> 16) # lui $a0, 1
/* 213290 801DCFE0 4405B000 */  mfc1  $a1, $f22
/* 213294 801DCFE4 0C02A7E6 */  jal   func_800A9F98
/* 213298 801DCFE8 3484046D */   ori   $a0, (0x0001046D & 0xFFFF) # ori $a0, $a0, 0x46d
/* 21329C 801DCFEC 3C040001 */  lui   $a0, (0x0001046C >> 16) # lui $a0, 1
/* 2132A0 801DCFF0 4405B000 */  mfc1  $a1, $f22
/* 2132A4 801DCFF4 0C02A831 */  jal   func_800AA0C4
/* 2132A8 801DCFF8 3484046C */   ori   $a0, (0x0001046C & 0xFFFF) # ori $a0, $a0, 0x46c
/* 2132AC 801DCFFC 0C02BB30 */  jal   func_800AECC0
/* 2132B0 801DD000 C68C0000 */   lwc1  $f12, ($s4)
/* 2132B4 801DD004 0C02BB48 */  jal   func_800AED20
/* 2132B8 801DD008 C68C0000 */   lwc1  $f12, ($s4)
/* 2132BC 801DD00C 8E500000 */  lw    $s0, ($s2)
/* 2132C0 801DD010 8E0E0000 */  lw    $t6, ($s0)
/* 2132C4 801DD014 000E7880 */  sll   $t7, $t6, 2
/* 2132C8 801DD018 026FC021 */  addu  $t8, $s3, $t7
/* 2132CC 801DD01C AF150000 */  sw    $s5, ($t8)
/* 2132D0 801DD020 8E190000 */  lw    $t9, ($s0)
/* 2132D4 801DD024 00194880 */  sll   $t1, $t9, 2
/* 2132D8 801DD028 02694021 */  addu  $t0, $s3, $t1
/* 2132DC 801DD02C 1000FFAF */  b     .L801DCEEC_ovl16
/* 2132E0 801DD030 8D110000 */   lw    $s1, ($t0)
glabel L801DD034_ovl16
/* 2132E4 801DD034 0C066E6C */  jal   func_8019B9B0_ovl16
/* 2132E8 801DD038 00000000 */   nop   
/* 2132EC 801DD03C 8FA2005C */  lw    $v0, 0x5c($sp)
/* 2132F0 801DD040 3C01800F */ lui $at, %hi(D_800EAA60)
/* 2132F4 801DD044 3C040001 */  lui   $a0, (0x00010469 >> 16) # lui $a0, 1
/* 2132F8 801DD048 8C4A0080 */  lw    $t2, 0x80($v0)
/* 2132FC 801DD04C 34840469 */  ori   $a0, (0x00010469 & 0xFFFF) # ori $a0, $a0, 0x469
/* 213300 801DD050 E5580010 */  swc1  $f24, 0x10($t2)
/* 213304 801DD054 8E4B0000 */  lw    $t3, ($s2)
/* 213308 801DD058 8C4C0080 */  lw    $t4, 0x80($v0)
/* 21330C 801DD05C 8D6D0000 */  lw    $t5, ($t3)
/* 213310 801DD060 C5840010 */  lwc1  $f4, 0x10($t4)
/* 213314 801DD064 000D7080 */  sll   $t6, $t5, 2
/* 213318 801DD068 002E0821 */  addu  $at, $at, $t6
/* 21331C 801DD06C 0C02A7A9 */  jal   func_800A9EA4
/* 213320 801DD070 E424AA60 */ swc1 $f4, %lo(D_800EAA60)($at)
/* 213324 801DD074 3C040001 */  lui   $a0, (0x00010468 >> 16) # lui $a0, 1
/* 213328 801DD078 0C02A7A9 */  jal   func_800A9EA4
/* 21332C 801DD07C 34840468 */   ori   $a0, (0x00010468 & 0xFFFF) # ori $a0, $a0, 0x468
/* 213330 801DD080 0C002DAF */  jal   finish_current_thread
/* 213334 801DD084 2404003C */   li    $a0, 60
/* 213338 801DD088 8E500000 */  lw    $s0, ($s2)
/* 21333C 801DD08C 240F0005 */  li    $t7, 5
/* 213340 801DD090 8E180000 */  lw    $t8, ($s0)
/* 213344 801DD094 0018C880 */  sll   $t9, $t8, 2
/* 213348 801DD098 02794821 */  addu  $t1, $s3, $t9
/* 21334C 801DD09C AD2F0000 */  sw    $t7, ($t1)
/* 213350 801DD0A0 8E080000 */  lw    $t0, ($s0)
/* 213354 801DD0A4 00085080 */  sll   $t2, $t0, 2
/* 213358 801DD0A8 026A6021 */  addu  $t4, $s3, $t2
/* 21335C 801DD0AC 1000FF8F */  b     .L801DCEEC_ovl16
/* 213360 801DD0B0 8D910000 */   lw    $s1, ($t4)
glabel L801DD0B4_ovl16
/* 213364 801DD0B4 0C06F1E5 */  jal   func_801BC794_ovl16
/* 213368 801DD0B8 24040005 */   li    $a0, 5
/* 21336C 801DD0BC 2401FFFF */  li    $at, -1
/* 213370 801DD0C0 10410030 */  beq   $v0, $at, .L801DD184_ovl16
/* 213374 801DD0C4 00000000 */   nop   
/* 213378 801DD0C8 8E500000 */  lw    $s0, ($s2)
/* 21337C 801DD0CC 00021880 */  sll   $v1, $v0, 2
/* 213380 801DD0D0 02C34021 */  addu  $t0, $s6, $v1
/* 213384 801DD0D4 8E0B0000 */  lw    $t3, ($s0)
/* 213388 801DD0D8 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 21338C 801DD0DC 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 213390 801DD0E0 000B6880 */  sll   $t5, $t3, 2
/* 213394 801DD0E4 02ED7021 */  addu  $t6, $s7, $t5
/* 213398 801DD0E8 8DD80000 */  lw    $t8, ($t6)
/* 21339C 801DD0EC 3C05800E */  lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 2133A0 801DD0F0 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 2133A4 801DD0F4 0018C880 */  sll   $t9, $t8, 2
/* 2133A8 801DD0F8 02D97821 */  addu  $t7, $s6, $t9
/* 2133AC 801DD0FC 8DE90000 */  lw    $t1, ($t7)
/* 2133B0 801DD100 03C3C821 */  addu  $t9, $fp, $v1
/* 2133B4 801DD104 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 2133B8 801DD108 AD090000 */  sw    $t1, ($t0)
/* 2133BC 801DD10C 8E0A0000 */  lw    $t2, ($s0)
/* 2133C0 801DD110 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 2133C4 801DD114 3C01800F */ lui $at, %hi(D_800E8E60)
/* 2133C8 801DD118 000A6080 */  sll   $t4, $t2, 2
/* 2133CC 801DD11C 02EC5821 */  addu  $t3, $s7, $t4
/* 2133D0 801DD120 8D6D0000 */  lw    $t5, ($t3)
/* 2133D4 801DD124 00835021 */  addu  $t2, $a0, $v1
/* 2133D8 801DD128 00230821 */  addu  $at, $at, $v1
/* 2133DC 801DD12C 000D7080 */  sll   $t6, $t5, 2
/* 2133E0 801DD130 03CEC021 */  addu  $t8, $fp, $t6
/* 2133E4 801DD134 C7060000 */  lwc1  $f6, ($t8)
/* 2133E8 801DD138 00A37021 */  addu  $t6, $a1, $v1
/* 2133EC 801DD13C E7260000 */  swc1  $f6, ($t9)
/* 2133F0 801DD140 8E0F0000 */  lw    $t7, ($s0)
/* 2133F4 801DD144 000F4880 */  sll   $t1, $t7, 2
/* 2133F8 801DD148 00894021 */  addu  $t0, $a0, $t1
/* 2133FC 801DD14C C5080000 */  lwc1  $f8, ($t0)
/* 213400 801DD150 00C34821 */  addu  $t1, $a2, $v1
/* 213404 801DD154 E5480000 */  swc1  $f8, ($t2)
/* 213408 801DD158 8E0C0000 */  lw    $t4, ($s0)
/* 21340C 801DD15C 000C5880 */  sll   $t3, $t4, 2
/* 213410 801DD160 00AB6821 */  addu  $t5, $a1, $t3
/* 213414 801DD164 C5AA0000 */  lwc1  $f10, ($t5)
/* 213418 801DD168 E5CA0000 */  swc1  $f10, ($t6)
/* 21341C 801DD16C 8E180000 */  lw    $t8, ($s0)
/* 213420 801DD170 0018C880 */  sll   $t9, $t8, 2
/* 213424 801DD174 00D97821 */  addu  $t7, $a2, $t9
/* 213428 801DD178 C5F00000 */  lwc1  $f16, ($t7)
/* 21342C 801DD17C E5300000 */  swc1  $f16, ($t1)
/* 213430 801DD180 AC358E60 */ sw $s5, %lo(D_800E8E60)($at)
.L801DD184_ovl16:
/* 213434 801DD184 0C066ED6 */  jal   func_8019BB58_ovl16
/* 213438 801DD188 00000000 */   nop   
/* 21343C 801DD18C 0C02BC9F */  jal   func_800AF27C
/* 213440 801DD190 00000000 */   nop   
/* 213444 801DD194 8E500000 */  lw    $s0, ($s2)
/* 213448 801DD198 24080006 */  li    $t0, 6
/* 21344C 801DD19C 8E0A0000 */  lw    $t2, ($s0)
/* 213450 801DD1A0 000A6080 */  sll   $t4, $t2, 2
/* 213454 801DD1A4 026C5821 */  addu  $t3, $s3, $t4
/* 213458 801DD1A8 AD680000 */  sw    $t0, ($t3)
/* 21345C 801DD1AC 8E0D0000 */  lw    $t5, ($s0)
/* 213460 801DD1B0 000D7080 */  sll   $t6, $t5, 2
/* 213464 801DD1B4 026EC021 */  addu  $t8, $s3, $t6
/* 213468 801DD1B8 1000FF4C */  b     .L801DCEEC_ovl16
/* 21346C 801DD1BC 8F110000 */   lw    $s1, ($t8)
glabel L801DD1C0_ovl16
/* 213470 801DD1C0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 213474 801DD1C4 00822021 */  addu  $a0, $a0, $v0
/* 213478 801DD1C8 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 21347C 801DD1CC 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 213480 801DD1D0 0C02C7DA */  jal   func_800B1F68
/* 213484 801DD1D4 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 213488 801DD1D8 8E590000 */  lw    $t9, ($s2)
/* 21348C 801DD1DC 3C01800E */ lui $at, %hi(D_800DF150)
/* 213490 801DD1E0 8F2F0000 */  lw    $t7, ($t9)
/* 213494 801DD1E4 000F4880 */  sll   $t1, $t7, 2
/* 213498 801DD1E8 00290821 */  addu  $at, $at, $t1
/* 21349C 801DD1EC 0C02CCFD */  jal   func_800B33F4
/* 2134A0 801DD1F0 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 2134A4 801DD1F4 0C02BE85 */  jal   func_800AFA14
/* 2134A8 801DD1F8 00000000 */   nop   
/* 2134AC 801DD1FC 8E500000 */  lw    $s0, ($s2)
/* 2134B0 801DD200 8E0A0000 */  lw    $t2, ($s0)
/* 2134B4 801DD204 000A6080 */  sll   $t4, $t2, 2
/* 2134B8 801DD208 026C4021 */  addu  $t0, $s3, $t4
/* 2134BC 801DD20C 1000FF37 */  b     .L801DCEEC_ovl16
/* 2134C0 801DD210 8D110000 */   lw    $s1, ($t0)
/* 2134C4 801DD214 00000000 */  nop   
/* 2134C8 801DD218 00000000 */  nop   
/* 2134CC 801DD21C 00000000 */  nop   
/* 2134D0 801DD220 8FBF0054 */  lw    $ra, 0x54($sp)
/* 2134D4 801DD224 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 2134D8 801DD228 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 2134DC 801DD22C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 2134E0 801DD230 8FB00030 */  lw    $s0, 0x30($sp)
/* 2134E4 801DD234 8FB10034 */  lw    $s1, 0x34($sp)
/* 2134E8 801DD238 8FB20038 */  lw    $s2, 0x38($sp)
/* 2134EC 801DD23C 8FB3003C */  lw    $s3, 0x3c($sp)
/* 2134F0 801DD240 8FB40040 */  lw    $s4, 0x40($sp)
/* 2134F4 801DD244 8FB50044 */  lw    $s5, 0x44($sp)
/* 2134F8 801DD248 8FB60048 */  lw    $s6, 0x48($sp)
/* 2134FC 801DD24C 8FB7004C */  lw    $s7, 0x4c($sp)
/* 213500 801DD250 8FBE0050 */  lw    $fp, 0x50($sp)
/* 213504 801DD254 03E00008 */  jr    $ra
/* 213508 801DD258 27BD0060 */   addiu $sp, $sp, 0x60
.type func_801DCDC8_ovl16, @function
.size func_801DCDC8_ovl16, . - func_801DCDC8_ovl16
