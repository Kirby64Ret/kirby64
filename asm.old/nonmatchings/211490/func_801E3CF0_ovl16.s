glabel func_801E3CF0_ovl16
/* 219FA0 801E3CF0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 219FA4 801E3CF4 AFB0003C */  sw         $s0, 0x3C($sp)
/* 219FA8 801E3CF8 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 219FAC 801E3CFC 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 219FB0 801E3D00 8E0E0000 */  lw         $t6, 0x0($s0)
/* 219FB4 801E3D04 AFBF0044 */  sw         $ra, 0x44($sp)
/* 219FB8 801E3D08 AFB10040 */  sw         $s1, 0x40($sp)
/* 219FBC 801E3D0C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 219FC0 801E3D10 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 219FC4 801E3D14 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 219FC8 801E3D18 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 219FCC 801E3D1C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 219FD0 801E3D20 AFA40078 */  sw         $a0, 0x78($sp)
/* 219FD4 801E3D24 8DCF0000 */  lw         $t7, 0x0($t6)
/* 219FD8 801E3D28 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x40)
/* 219FDC 801E3D2C 3C02800F */  lui        $v0, %hi(D_800E9AA0)
.L801E3D30_ovl17:
/* 219FE0 801E3D30 C43AFF64 */  lwc1       $f26, %lo(func_801EFF24_ovl16 + 0x40)($at)
/* 219FE4 801E3D34 000FC080 */  sll        $t8, $t7, 2
/* 219FE8 801E3D38 00581021 */  addu       $v0, $v0, $t8
/* 219FEC 801E3D3C 3C014382 */  lui        $at, (0x43820000 >> 16)
/* 219FF0 801E3D40 8C429AA0 */  lw         $v0, %lo(D_800E9AA0)($v0)
/* 219FF4 801E3D44 4481C000 */  mtc1       $at, $f24
/* 219FF8 801E3D48 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 219FFC 801E3D4C 4481A000 */  mtc1       $at, $f20
/* 21A000 801E3D50 3C08801F */  lui        $t0, %hi(D_801EF97C_ovl16)
/* 21A004 801E3D54 2508F97C */  addiu      $t0, $t0, %lo(D_801EF97C_ovl16)
/* 21A008 801E3D58 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x44)
/* 21A00C 801E3D5C 3C11800E */  lui        $s1, %hi(D_800E1B50)
.L801E3D60_ovl15:
/* 21A010 801E3D60 3C06801F */  lui        $a2, %hi(D_801F01B0_ovl16)
/* 21A014 801E3D64 0002C8C0 */  sll        $t9, $v0, 3
/* 21A018 801E3D68 4480B000 */  mtc1       $zero, $f22
/* 21A01C 801E3D6C 4480E000 */  mtc1       $zero, $f28
/* 21A020 801E3D70 03283821 */  addu       $a3, $t9, $t0
.L801E3D74_ovl17:
/* 21A024 801E3D74 24C601B0 */  addiu      $a2, $a2, %lo(D_801F01B0_ovl16)
.L801E3D78_ovl13:
/* 21A028 801E3D78 26311B50 */  addiu      $s1, $s1, %lo(D_800E1B50)
.L801E3D7C_ovl15:
/* 21A02C 801E3D7C C432FF68 */  lwc1       $f18, %lo(func_801EFF24_ovl16 + 0x44)($at)
.L801E3D80_ovl16:
/* 21A030 801E3D80 8E090000 */  lw         $t1, 0x0($s0)
/* 21A034 801E3D84 90E30000 */  lbu        $v1, 0x0($a3)
/* 21A038 801E3D88 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x48)
/* 21A03C 801E3D8C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 21A040 801E3D90 00031880 */  sll        $v1, $v1, 2
/* 21A044 801E3D94 C424FF6C */  lwc1       $f4, %lo(func_801EFF24_ovl16 + 0x48)($at)
/* 21A048 801E3D98 C4CC0000 */  lwc1       $f12, 0x0($a2)
/* 21A04C 801E3D9C 3C02800E */  lui        $v0, %hi(D_800DFBD0)
.L801E3DA0_ovl13:
/* 21A050 801E3DA0 3C0C801F */  lui        $t4, %hi(D_801EF93C_ovl16)
/* 21A054 801E3DA4 3C0F801F */  lui        $t7, %hi(D_801EF95C_ovl16)
glabel func_801E3DA8_ovl15
/* 21A058 801E3DA8 000A5880 */  sll        $t3, $t2, 2
.L801E3DAC_ovl13:
/* 21A05C 801E3DAC 004B1021 */  addu       $v0, $v0, $t3
/* 21A060 801E3DB0 01836021 */  addu       $t4, $t4, $v1
/* 21A064 801E3DB4 01E37821 */  addu       $t7, $t7, $v1
/* 21A068 801E3DB8 8D8CF93C */  lw         $t4, %lo(D_801EF93C_ovl16)($t4)
/* 21A06C 801E3DBC 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
glabel func_801E3DC0_ovl13
/* 21A070 801E3DC0 8DEFF95C */  lw         $t7, %lo(D_801EF95C_ovl16)($t7)
/* 21A074 801E3DC4 460C2032 */  c.eq.s     $f4, $f12
/* 21A078 801E3DC8 000C6880 */  sll        $t5, $t4, 2
.L801E3DCC_ovl17:
/* 21A07C 801E3DCC 000FC080 */  sll        $t8, $t7, 2
/* 21A080 801E3DD0 004D7021 */  addu       $t6, $v0, $t5
/* 21A084 801E3DD4 0058C821 */  addu       $t9, $v0, $t8
/* 21A088 801E3DD8 8DC40000 */  lw         $a0, 0x0($t6)
/* 21A08C 801E3DDC 45010052 */  bc1t       .L801E3F28_ovl16
/* 21A090 801E3DE0 8F250000 */   lw        $a1, 0x0($t9)
/* 21A094 801E3DE4 C4800020 */  lwc1       $f0, 0x20($a0)
/* 21A098 801E3DE8 461C003C */  c.lt.s     $f0, $f28
/* 21A09C 801E3DEC 00000000 */  nop
glabel func_801E3DF0_ovl9
/* 21A0A0 801E3DF0 45020004 */  bc1fl      func_801E3E04_ovl16
.L801E3DF4_ovl15:
/* 21A0A4 801E3DF4 46000086 */   mov.s     $f2, $f0
/* 21A0A8 801E3DF8 10000002 */  b          func_801E3E04_ovl16
/* 21A0AC 801E3DFC 46000087 */   neg.s     $f2, $f0
/* 21A0B0 801E3E00 46000086 */  mov.s      $f2, $f0
glabel func_801E3E04_ovl16
/* 21A0B4 801E3E04 46121002 */  mul.s      $f0, $f2, $f18
.L801E3E08_ovl17:
/* 21A0B8 801E3E08 461C603C */  c.lt.s     $f12, $f28
/* 21A0BC 801E3E0C 00000000 */  nop
/* 21A0C0 801E3E10 45000003 */  bc1f       .L801E3E20_ovl16
/* 21A0C4 801E3E14 46000386 */   mov.s     $f14, $f0
/* 21A0C8 801E3E18 10000002 */  b          .L801E3E24_ovl16
/* 21A0CC 801E3E1C 46006087 */   neg.s     $f2, $f12
.L801E3E20_ovl16:
/* 21A0D0 801E3E20 46006086 */  mov.s      $f2, $f12
.L801E3E24_ovl16:
/* 21A0D4 801E3E24 4600C03C */  c.lt.s     $f24, $f0
/* 21A0D8 801E3E28 00000000 */  nop
/* 21A0DC 801E3E2C 45020004 */  bc1fl      .L801E3E40_ovl16
/* 21A0E0 801E3E30 4602003E */   c.le.s    $f0, $f2
/* 21A0E4 801E3E34 10000006 */  b          .L801E3E50_ovl16
.L801E3E38_ovl15:
/* 21A0E8 801E3E38 4600C386 */   mov.s     $f14, $f24
/* 21A0EC 801E3E3C 4602003E */  c.le.s     $f0, $f2
.L801E3E40_ovl16:
/* 21A0F0 801E3E40 00000000 */  nop
/* 21A0F4 801E3E44 45020003 */  bc1fl      .L801E3E54_ovl16
/* 21A0F8 801E3E48 460E103C */   c.lt.s    $f2, $f14
/* 21A0FC 801E3E4C 46001386 */  mov.s      $f14, $f2
.L801E3E50_ovl16:
/* 21A100 801E3E50 460E103C */  c.lt.s     $f2, $f14
.L801E3E54_ovl16:
/* 21A104 801E3E54 00000000 */  nop
.L801E3E58_ovl10:
/* 21A108 801E3E58 4502002D */  bc1fl      .L801E3F10_ovl16
/* 21A10C 801E3E5C 46001187 */   neg.s     $f6, $f2
.L801E3E60_ovl17:
/* 21A110 801E3E60 46187083 */  div.s      $f2, $f14, $f24
/* 21A114 801E3E64 461A1402 */  mul.s      $f16, $f2, $f26
/* 21A118 801E3E68 4610D03C */  c.lt.s     $f26, $f16
/* 21A11C 801E3E6C 46121302 */  mul.s      $f12, $f2, $f18
/* 21A120 801E3E70 45020003 */  bc1fl      .L801E3E80_ovl16
.L801E3E74_ovl15:
/* 21A124 801E3E74 4616803C */   c.lt.s    $f16, $f22
/* 21A128 801E3E78 4600D406 */  mov.s      $f16, $f26
/* 21A12C 801E3E7C 4616803C */  c.lt.s     $f16, $f22
.L801E3E80_ovl16:
/* 21A130 801E3E80 00000000 */  nop
/* 21A134 801E3E84 45020003 */  bc1fl      .L801E3E94_ovl16
/* 21A138 801E3E88 460C903C */   c.lt.s    $f18, $f12
/* 21A13C 801E3E8C 4600B406 */  mov.s      $f16, $f22
/* 21A140 801E3E90 460C903C */  c.lt.s     $f18, $f12
.L801E3E94_ovl16:
/* 21A144 801E3E94 4610A080 */  add.s      $f2, $f20, $f16
/* 21A148 801E3E98 45020003 */  bc1fl      .L801E3EA8_ovl16
.L801E3E9C_ovl17:
/* 21A14C 801E3E9C 4616603C */   c.lt.s    $f12, $f22
/* 21A150 801E3EA0 46009306 */  mov.s      $f12, $f18
.L801E3EA4_ovl10:
/* 21A154 801E3EA4 4616603C */  c.lt.s     $f12, $f22
.L801E3EA8_ovl16:
/* 21A158 801E3EA8 00000000 */  nop
/* 21A15C 801E3EAC 45020003 */  bc1fl      .L801E3EBC_ovl16
/* 21A160 801E3EB0 460CA001 */   sub.s     $f0, $f20, $f12
/* 21A164 801E3EB4 4600B306 */  mov.s      $f12, $f22
.L801E3EB8_ovl9:
/* 21A168 801E3EB8 460CA001 */  sub.s      $f0, $f20, $f12
.L801E3EBC_ovl16:
/* 21A16C 801E3EBC 3C08801E */  lui        $t0, %hi(func_801D98B8_ovl9)
/* 21A170 801E3EC0 250898B8 */  addiu      $t0, $t0, %lo(func_801D98B8_ovl9)
.L801E3EC4_ovl15:
/* 21A174 801E3EC4 E4800048 */  swc1       $f0, 0x48($a0)
/* 21A178 801E3EC8 E4800040 */  swc1       $f0, 0x40($a0)
/* 21A17C 801E3ECC E4A20040 */  swc1       $f2, 0x40($a1)
.L801E3ED0_ovl13:
/* 21A180 801E3ED0 E4A20048 */  swc1       $f2, 0x48($a1)
glabel func_801E3ED4_ovl15
/* 21A184 801E3ED4 8E090000 */  lw         $t1, 0x0($s0)
/* 21A188 801E3ED8 8D2A0000 */  lw         $t2, 0x0($t1)
/* 21A18C 801E3EDC 000A5880 */  sll        $t3, $t2, 2
.L801E3EE0_ovl9:
/* 21A190 801E3EE0 022B6021 */  addu       $t4, $s1, $t3
/* 21A194 801E3EE4 8D8D0000 */  lw         $t5, 0x0($t4)
.L801E3EE8_ovl13:
/* 21A198 801E3EE8 ADA8008C */  sw         $t0, 0x8C($t5)
/* 21A19C 801E3EEC AFA7004C */  sw         $a3, 0x4C($sp)
/* 21A1A0 801E3EF0 0C077264 */  jal        func_801DC990_ovl16
.L801E3EF4_ovl17:
/* 21A1A4 801E3EF4 AFA60048 */   sw        $a2, 0x48($sp)
.L801E3EF8_ovl13:
/* 21A1A8 801E3EF8 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x4C)
/* 21A1AC 801E3EFC C432FF70 */  lwc1       $f18, %lo(func_801EFF24_ovl16 + 0x4C)($at)
/* 21A1B0 801E3F00 8FA60048 */  lw         $a2, 0x48($sp)
.L801E3F04_ovl13:
/* 21A1B4 801E3F04 1000000C */  b          .L801E3F38_ovl17
/* 21A1B8 801E3F08 8FA7004C */   lw        $a3, 0x4C($sp)
/* 21A1BC 801E3F0C 46001187 */  neg.s      $f6, $f2
.L801E3F10_ovl16:
/* 21A1C0 801E3F10 E4860020 */  swc1       $f6, 0x20($a0)
/* 21A1C4 801E3F14 E4B40040 */  swc1       $f20, 0x40($a1)
/* 21A1C8 801E3F18 E4B40048 */  swc1       $f20, 0x48($a1)
/* 21A1CC 801E3F1C E4940040 */  swc1       $f20, 0x40($a0)
.L801E3F20_ovl13:
/* 21A1D0 801E3F20 10000005 */  b          .L801E3F38_ovl17
/* 21A1D4 801E3F24 E4940048 */   swc1      $f20, 0x48($a0)
.L801E3F28_ovl16:
/* 21A1D8 801E3F28 E4B40048 */  swc1       $f20, 0x48($a1)
.L801E3F2C_ovl13:
/* 21A1DC 801E3F2C E4B40040 */  swc1       $f20, 0x40($a1)
/* 21A1E0 801E3F30 E4940040 */  swc1       $f20, 0x40($a0)
/* 21A1E4 801E3F34 E4940048 */  swc1       $f20, 0x48($a0)
.L801E3F38_ovl17:
/* 21A1E8 801E3F38 3C0E801F */  lui        $t6, %hi(D_801F01D0_ovl16)
/* 21A1EC 801E3F3C 25CE01D0 */  addiu      $t6, $t6, %lo(D_801F01D0_ovl16)
/* 21A1F0 801E3F40 24C60004 */  addiu      $a2, $a2, 0x4
/* 21A1F4 801E3F44 14CEFF8E */  bne        $a2, $t6, .L801E3D80_ovl16
.L801E3F48_ovl10:
/* 21A1F8 801E3F48 24E70001 */   addiu     $a3, $a3, 0x1
/* 21A1FC 801E3F4C 8E0F0000 */  lw         $t7, 0x0($s0)
/* 21A200 801E3F50 3C01800F */  lui        $at, %hi(D_800E8920)
/* 21A204 801E3F54 8DF80000 */  lw         $t8, 0x0($t7)
/* 21A208 801E3F58 0018C880 */  sll        $t9, $t8, 2
/* 21A20C 801E3F5C 00390821 */  addu       $at, $at, $t9
/* 21A210 801E3F60 0C076D00 */  jal        func_801DB400_ovl16
/* 21A214 801E3F64 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 21A218 801E3F68 3C02801F */  lui        $v0, %hi(D_801F0120_ovl16)
/* 21A21C 801E3F6C 24420120 */  addiu      $v0, $v0, %lo(D_801F0120_ovl16)
.L801E3F70_ovl10:
/* 21A220 801E3F70 8C49000C */  lw         $t1, 0xC($v0)
/* 21A224 801E3F74 00002025 */  or         $a0, $zero, $zero
.L801E3F78_ovl17:
/* 21A228 801E3F78 00002825 */  or         $a1, $zero, $zero
glabel func_801E3F7C_ovl10
/* 21A22C 801E3F7C 5D20000B */  bgtzl      $t1, .L801E3FAC_ovl16
/* 21A230 801E3F80 8E180000 */   lw        $t8, 0x0($s0)
/* 21A234 801E3F84 8E0B0000 */  lw         $t3, 0x0($s0)
.L801E3F88_ovl9:
/* 21A238 801E3F88 3C0A801E */  lui        $t2, %hi(func_801D97E8_ovl9 + 0x40)
.L801E3F8C_ovl17:
/* 21A23C 801E3F8C 254A9828 */  addiu      $t2, $t2, %lo(func_801D97E8_ovl9 + 0x40)
/* 21A240 801E3F90 8D6C0000 */  lw         $t4, 0x0($t3)
/* 21A244 801E3F94 000C4080 */  sll        $t0, $t4, 2
/* 21A248 801E3F98 02286821 */  addu       $t5, $s1, $t0
/* 21A24C 801E3F9C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 21A250 801E3FA0 10000009 */  b          .L801E3FC8_ovl16
/* 21A254 801E3FA4 ADCA008C */   sw        $t2, 0x8C($t6)
/* 21A258 801E3FA8 8E180000 */  lw         $t8, 0x0($s0)
.L801E3FAC_ovl16:
/* 21A25C 801E3FAC 3C0F801E */  lui        $t7, %hi(func_801D97E8_ovl9 + 0x1C)
/* 21A260 801E3FB0 25EF9804 */  addiu      $t7, $t7, %lo(func_801D97E8_ovl9 + 0x1C)
glabel func_801E3FB4_ovl9
/* 21A264 801E3FB4 8F190000 */  lw         $t9, 0x0($t8)
/* 21A268 801E3FB8 00194880 */  sll        $t1, $t9, 2
/* 21A26C 801E3FBC 02295821 */  addu       $t3, $s1, $t1
/* 21A270 801E3FC0 8D6C0000 */  lw         $t4, 0x0($t3)
.L801E3FC4_ovl17:
/* 21A274 801E3FC4 AD8F008C */  sw         $t7, 0x8C($t4)
.L801E3FC8_ovl16:
/* 21A278 801E3FC8 3C08800D */  lui        $t0, %hi(D_800D7098 + 0x18)
.L801E3FCC_ovl17:
/* 21A27C 801E3FCC 8D0870B0 */  lw         $t0, %lo(D_800D7098 + 0x18)($t0)
/* 21A280 801E3FD0 15000004 */  bnez       $t0, func_801E3FE4_ovl16
/* 21A284 801E3FD4 00000000 */   nop
/* 21A288 801E3FD8 8C4D000C */  lw         $t5, 0xC($v0)
/* 21A28C 801E3FDC 1DA00005 */  bgtz       $t5, .L801E3FF4_ovl16
/* 21A290 801E3FE0 00000000 */   nop
glabel func_801E3FE4_ovl16
/* 21A294 801E3FE4 0C0770C5 */  jal        func_801DC314_ovl16
/* 21A298 801E3FE8 00003025 */   or        $a2, $zero, $zero
/* 21A29C 801E3FEC 10000004 */  b          .L801E4000_ovl16
/* 21A2A0 801E3FF0 8FBF0044 */   lw        $ra, 0x44($sp)
.L801E3FF4_ovl16:
/* 21A2A4 801E3FF4 0C076DA6 */  jal        func_801DB698_ovl16
/* 21A2A8 801E3FF8 00002025 */   or        $a0, $zero, $zero
/* 21A2AC 801E3FFC 8FBF0044 */  lw         $ra, 0x44($sp)
.L801E4000_ovl16:
/* 21A2B0 801E4000 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 21A2B4 801E4004 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 21A2B8 801E4008 D7B80020 */  ldc1       $f24, 0x20($sp)
.L801E400C_ovl17:
/* 21A2BC 801E400C D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 21A2C0 801E4010 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 21A2C4 801E4014 8FB0003C */  lw         $s0, 0x3C($sp)
/* 21A2C8 801E4018 8FB10040 */  lw         $s1, 0x40($sp)
/* 21A2CC 801E401C 03E00008 */  jr         $ra
.L801E4020_ovl17:
/* 21A2D0 801E4020 27BD0078 */   addiu     $sp, $sp, 0x78
