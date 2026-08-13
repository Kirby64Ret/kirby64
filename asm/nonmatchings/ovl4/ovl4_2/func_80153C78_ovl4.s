nonmatching func_80153C78_ovl4, 0x604

glabel func_80153C78_ovl4
    /* FB1A8 80153C78 27BDFF38 */  addiu      $sp, $sp, -0xC8
    /* FB1AC 80153C7C AFB70050 */  sw         $s7, 0x50($sp)
    /* FB1B0 80153C80 AFB10038 */  sw         $s1, 0x38($sp)
    /* FB1B4 80153C84 3C0E8016 */  lui        $t6, %hi(D_8015A760_ovl4)
    /* FB1B8 80153C88 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* FB1BC 80153C8C 3C17800F */  lui        $s7, %hi(D_800E98E0)
    /* FB1C0 80153C90 27A20098 */  addiu      $v0, $sp, 0x98
    /* FB1C4 80153C94 25CEA760 */  addiu      $t6, $t6, %lo(D_8015A760_ovl4)
    /* FB1C8 80153C98 26F798E0 */  addiu      $s7, $s7, %lo(D_800E98E0)
    /* FB1CC 80153C9C 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* FB1D0 80153CA0 AFBF0054 */  sw         $ra, 0x54($sp)
    /* FB1D4 80153CA4 AFB6004C */  sw         $s6, 0x4C($sp)
    /* FB1D8 80153CA8 AFB50048 */  sw         $s5, 0x48($sp)
    /* FB1DC 80153CAC AFB40044 */  sw         $s4, 0x44($sp)
    /* FB1E0 80153CB0 AFB30040 */  sw         $s3, 0x40($sp)
    /* FB1E4 80153CB4 AFB2003C */  sw         $s2, 0x3C($sp)
    /* FB1E8 80153CB8 AFB00034 */  sw         $s0, 0x34($sp)
    /* FB1EC 80153CBC F7BA0028 */  sdc1       $f26, 0x28($sp)
    /* FB1F0 80153CC0 F7B80020 */  sdc1       $f24, 0x20($sp)
    /* FB1F4 80153CC4 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* FB1F8 80153CC8 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* FB1FC 80153CCC 25C80030 */  addiu      $t0, $t6, 0x30
    /* FB200 80153CD0 0040C825 */  or         $t9, $v0, $zero
  .L80153CD4_ovl4:
    /* FB204 80153CD4 8DD80000 */  lw         $t8, 0x0($t6)
    /* FB208 80153CD8 25CE000C */  addiu      $t6, $t6, 0xC
    /* FB20C 80153CDC 2739000C */  addiu      $t9, $t9, 0xC
    /* FB210 80153CE0 AF38FFF4 */  sw         $t8, -0xC($t9)
    /* FB214 80153CE4 8DCFFFF8 */  lw         $t7, -0x8($t6)
    /* FB218 80153CE8 AF2FFFF8 */  sw         $t7, -0x8($t9)
    /* FB21C 80153CEC 8DD8FFFC */  lw         $t8, -0x4($t6)
    /* FB220 80153CF0 15C8FFF8 */  bne        $t6, $t0, .L80153CD4_ovl4
    /* FB224 80153CF4 AF38FFFC */   sw        $t8, -0x4($t9)
    /* FB228 80153CF8 8E270000 */  lw         $a3, 0x0($s1)
    /* FB22C 80153CFC 3C018016 */  lui        $at, %hi(D_8015C6A0_ovl4)
    /* FB230 80153D00 3C19800D */  lui        $t9, %hi(D_800D6B98)
    /* FB234 80153D04 8CE90000 */  lw         $t1, 0x0($a3)
    /* FB238 80153D08 3C0D8015 */  lui        $t5, %hi(func_8015427C_ovl4)
    /* FB23C 80153D0C 25AD427C */  addiu      $t5, $t5, %lo(func_8015427C_ovl4)
    /* FB240 80153D10 AC29C6A0 */  sw         $t1, %lo(D_8015C6A0_ovl4)($at)
    /* FB244 80153D14 8CEA0000 */  lw         $t2, 0x0($a3)
    /* FB248 80153D18 3C01800E */  lui        $at, %hi(D_800DF150)
    /* FB24C 80153D1C 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* FB250 80153D20 000A5880 */  sll        $t3, $t2, 2
    /* FB254 80153D24 02EB6021 */  addu       $t4, $s7, $t3
    /* FB258 80153D28 AD800000 */  sw         $zero, 0x0($t4)
    /* FB25C 80153D2C 8CE80000 */  lw         $t0, 0x0($a3)
    /* FB260 80153D30 8F396B98 */  lw         $t9, %lo(D_800D6B98)($t9)
    /* FB264 80153D34 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* FB268 80153D38 00087080 */  sll        $t6, $t0, 2
    /* FB26C 80153D3C 002E0821 */  addu       $at, $at, $t6
    /* FB270 80153D40 001978C0 */  sll        $t7, $t9, 3
    /* FB274 80153D44 AC2DF150 */  sw         $t5, %lo(D_800DF150)($at)
    /* FB278 80153D48 004FC021 */  addu       $t8, $v0, $t7
    /* FB27C 80153D4C 8F040000 */  lw         $a0, 0x0($t8)
    /* FB280 80153D50 0C02A619 */  jal        func_800A9864
    /* FB284 80153D54 24060010 */   addiu     $a2, $zero, 0x10
    /* FB288 80153D58 3C128016 */  lui        $s2, %hi(D_8015C698_ovl4)
    /* FB28C 80153D5C 2652C698 */  addiu      $s2, $s2, %lo(D_8015C698_ovl4)
    /* FB290 80153D60 8E4B0000 */  lw         $t3, 0x0($s2)
    /* FB294 80153D64 3C16800F */  lui        $s6, %hi(D_800E9FE0)
    /* FB298 80153D68 26D69FE0 */  addiu      $s6, $s6, %lo(D_800E9FE0)
    /* FB29C 80153D6C 000B6080 */  sll        $t4, $t3, 2
    /* FB2A0 80153D70 02CC4021 */  addu       $t0, $s6, $t4
    /* FB2A4 80153D74 8D0D0000 */  lw         $t5, 0x0($t0)
    /* FB2A8 80153D78 3C09800D */  lui        $t1, %hi(D_800D6B98)
    /* FB2AC 80153D7C 8D296B98 */  lw         $t1, %lo(D_800D6B98)($t1)
    /* FB2B0 80153D80 448D2000 */  mtc1       $t5, $f4
    /* FB2B4 80153D84 000950C0 */  sll        $t2, $t1, 3
    /* FB2B8 80153D88 46802120 */  cvt.s.w    $f4, $f4
    /* FB2BC 80153D8C 03AA2021 */  addu       $a0, $sp, $t2
    /* FB2C0 80153D90 8C84009C */  lw         $a0, 0x9C($a0)
    /* FB2C4 80153D94 44052000 */  mfc1       $a1, $f4
    /* FB2C8 80153D98 0C02A7E6 */  jal        func_800A9F98
    /* FB2CC 80153D9C 00000000 */   nop
    /* FB2D0 80153DA0 8E4E0000 */  lw         $t6, 0x0($s2)
    /* FB2D4 80153DA4 000EC880 */  sll        $t9, $t6, 2
    /* FB2D8 80153DA8 02D97821 */  addu       $t7, $s6, $t9
    /* FB2DC 80153DAC 8DF80000 */  lw         $t8, 0x0($t7)
    /* FB2E0 80153DB0 17000009 */  bnez       $t8, .L80153DD8_ovl4
    /* FB2E4 80153DB4 00000000 */   nop
    /* FB2E8 80153DB8 8E290000 */  lw         $t1, 0x0($s1)
    /* FB2EC 80153DBC 3C10800E */  lui        $s0, %hi(D_800DE350)
    /* FB2F0 80153DC0 2610E350 */  addiu      $s0, $s0, %lo(D_800DE350)
    /* FB2F4 80153DC4 8D2A0000 */  lw         $t2, 0x0($t1)
    /* FB2F8 80153DC8 000A5880 */  sll        $t3, $t2, 2
    /* FB2FC 80153DCC 020B6021 */  addu       $t4, $s0, $t3
    /* FB300 80153DD0 0C0038C9 */  jal        animUpdateModelTreeAnimation
    /* FB304 80153DD4 8D840000 */   lw        $a0, 0x0($t4)
  .L80153DD8_ovl4:
    /* FB308 80153DD8 3C10800E */  lui        $s0, %hi(D_800DE350)
    /* FB30C 80153DDC 0C02BD02 */  jal        func_800AF408
    /* FB310 80153DE0 2610E350 */   addiu     $s0, $s0, %lo(D_800DE350)
    /* FB314 80153DE4 3C014248 */  lui        $at, (0x42480000 >> 16)
    /* FB318 80153DE8 3C13800F */  lui        $s3, %hi(D_800E9AA0)
    /* FB31C 80153DEC 4481D000 */  mtc1       $at, $f26
    /* FB320 80153DF0 4480C000 */  mtc1       $zero, $f24
    /* FB324 80153DF4 26739AA0 */  addiu      $s3, $s3, %lo(D_800E9AA0)
    /* FB328 80153DF8 8E270000 */  lw         $a3, 0x0($s1)
    /* FB32C 80153DFC 27B5008C */  addiu      $s5, $sp, 0x8C
    /* FB330 80153E00 24140001 */  addiu      $s4, $zero, 0x1
  .L80153E04_ovl4:
    /* FB334 80153E04 8CE80000 */  lw         $t0, 0x0($a3)
    /* FB338 80153E08 00086880 */  sll        $t5, $t0, 2
    /* FB33C 80153E0C 02ED7021 */  addu       $t6, $s7, $t5
    /* FB340 80153E10 8DD90000 */  lw         $t9, 0x0($t6)
    /* FB344 80153E14 13200101 */  beqz       $t9, .L8015421C_ovl4
    /* FB348 80153E18 00000000 */   nop
    /* FB34C 80153E1C 8E420000 */  lw         $v0, 0x0($s2)
    /* FB350 80153E20 3C19800D */  lui        $t9, %hi(D_800D6B98)
    /* FB354 80153E24 00021080 */  sll        $v0, $v0, 2
    /* FB358 80153E28 02627821 */  addu       $t7, $s3, $v0
    /* FB35C 80153E2C ADF40000 */  sw         $s4, 0x0($t7)
    /* FB360 80153E30 8CF80000 */  lw         $t8, 0x0($a3)
    /* FB364 80153E34 00184880 */  sll        $t1, $t8, 2
    /* FB368 80153E38 02095021 */  addu       $t2, $s0, $t1
    /* FB36C 80153E3C 8D4B0000 */  lw         $t3, 0x0($t2)
    /* FB370 80153E40 02C2C021 */  addu       $t8, $s6, $v0
    /* FB374 80153E44 8F090000 */  lw         $t1, 0x0($t8)
    /* FB378 80153E48 8D6C003C */  lw         $t4, 0x3C($t3)
    /* FB37C 80153E4C 44893000 */  mtc1       $t1, $f6
    /* FB380 80153E50 8D880010 */  lw         $t0, 0x10($t4)
    /* FB384 80153E54 468031A0 */  cvt.s.w    $f6, $f6
    /* FB388 80153E58 8D0E001C */  lw         $t6, 0x1C($t0)
    /* FB38C 80153E5C AEAE0000 */  sw         $t6, 0x0($s5)
    /* FB390 80153E60 8D0D0020 */  lw         $t5, 0x20($t0)
    /* FB394 80153E64 44053000 */  mfc1       $a1, $f6
    /* FB398 80153E68 AEAD0004 */  sw         $t5, 0x4($s5)
    /* FB39C 80153E6C 8D0E0024 */  lw         $t6, 0x24($t0)
    /* FB3A0 80153E70 AEAE0008 */  sw         $t6, 0x8($s5)
    /* FB3A4 80153E74 8F396B98 */  lw         $t9, %lo(D_800D6B98)($t9)
    /* FB3A8 80153E78 001978C0 */  sll        $t7, $t9, 3
    /* FB3AC 80153E7C 03AF2021 */  addu       $a0, $sp, $t7
    /* FB3B0 80153E80 0C02A7E6 */  jal        func_800A9F98
    /* FB3B4 80153E84 8C84009C */   lw        $a0, 0x9C($a0)
    /* FB3B8 80153E88 8E4A0000 */  lw         $t2, 0x0($s2)
    /* FB3BC 80153E8C 000A5880 */  sll        $t3, $t2, 2
    /* FB3C0 80153E90 02CB6021 */  addu       $t4, $s6, $t3
    /* FB3C4 80153E94 8D880000 */  lw         $t0, 0x0($t4)
    /* FB3C8 80153E98 55000008 */  bnel       $t0, $zero, .L80153EBC_ovl4
    /* FB3CC 80153E9C 8E290000 */   lw        $t1, 0x0($s1)
    /* FB3D0 80153EA0 8E2D0000 */  lw         $t5, 0x0($s1)
    /* FB3D4 80153EA4 8DAE0000 */  lw         $t6, 0x0($t5)
    /* FB3D8 80153EA8 000EC880 */  sll        $t9, $t6, 2
    /* FB3DC 80153EAC 02197821 */  addu       $t7, $s0, $t9
    /* FB3E0 80153EB0 0C0038C9 */  jal        animUpdateModelTreeAnimation
    /* FB3E4 80153EB4 8DE40000 */   lw        $a0, 0x0($t7)
    /* FB3E8 80153EB8 8E290000 */  lw         $t1, 0x0($s1)
  .L80153EBC_ovl4:
    /* FB3EC 80153EBC 27B80080 */  addiu      $t8, $sp, 0x80
    /* FB3F0 80153EC0 8D2A0000 */  lw         $t2, 0x0($t1)
    /* FB3F4 80153EC4 000A5880 */  sll        $t3, $t2, 2
    /* FB3F8 80153EC8 020B6021 */  addu       $t4, $s0, $t3
    /* FB3FC 80153ECC 8D880000 */  lw         $t0, 0x0($t4)
    /* FB400 80153ED0 8D0D003C */  lw         $t5, 0x3C($t0)
    /* FB404 80153ED4 8DAE0010 */  lw         $t6, 0x10($t5)
    /* FB408 80153ED8 8DCF001C */  lw         $t7, 0x1C($t6)
    /* FB40C 80153EDC AF0F0000 */  sw         $t7, 0x0($t8)
    /* FB410 80153EE0 8DD90020 */  lw         $t9, 0x20($t6)
    /* FB414 80153EE4 AF190004 */  sw         $t9, 0x4($t8)
    /* FB418 80153EE8 8DCF0024 */  lw         $t7, 0x24($t6)
    /* FB41C 80153EEC 0C02BD02 */  jal        func_800AF408
    /* FB420 80153EF0 AF0F0008 */   sw        $t7, 0x8($t8)
    /* FB424 80153EF4 8E290000 */  lw         $t1, 0x0($s1)
    /* FB428 80153EF8 8EB90000 */  lw         $t9, 0x0($s5)
    /* FB42C 80153EFC 8D2A0000 */  lw         $t2, 0x0($t1)
    /* FB430 80153F00 000A5880 */  sll        $t3, $t2, 2
    /* FB434 80153F04 020B6021 */  addu       $t4, $s0, $t3
    /* FB438 80153F08 8D880000 */  lw         $t0, 0x0($t4)
    /* FB43C 80153F0C 8D0D003C */  lw         $t5, 0x3C($t0)
    /* FB440 80153F10 8DB80010 */  lw         $t8, 0x10($t5)
    /* FB444 80153F14 AF19001C */  sw         $t9, 0x1C($t8)
    /* FB448 80153F18 8EAE0004 */  lw         $t6, 0x4($s5)
    /* FB44C 80153F1C AF0E0020 */  sw         $t6, 0x20($t8)
    /* FB450 80153F20 8EB90008 */  lw         $t9, 0x8($s5)
    /* FB454 80153F24 AF190024 */  sw         $t9, 0x24($t8)
    /* FB458 80153F28 C7AA0094 */  lwc1       $f10, 0x94($sp)
    /* FB45C 80153F2C C7A80088 */  lwc1       $f8, 0x88($sp)
    /* FB460 80153F30 C7A40094 */  lwc1       $f4, 0x94($sp)
    /* FB464 80153F34 C7B20088 */  lwc1       $f18, 0x88($sp)
    /* FB468 80153F38 460A403C */  c.lt.s     $f8, $f10
    /* FB46C 80153F3C C7B0008C */  lwc1       $f16, 0x8C($sp)
    /* FB470 80153F40 C7A20080 */  lwc1       $f2, 0x80($sp)
    /* FB474 80153F44 45020005 */  bc1fl      .L80153F5C_ovl4
    /* FB478 80153F48 46049301 */   sub.s     $f12, $f18, $f4
    /* FB47C 80153F4C 460A4301 */  sub.s      $f12, $f8, $f10
    /* FB480 80153F50 10000002 */  b          .L80153F5C_ovl4
    /* FB484 80153F54 46006307 */   neg.s     $f12, $f12
    /* FB488 80153F58 46049301 */  sub.s      $f12, $f18, $f4
  .L80153F5C_ovl4:
    /* FB48C 80153F5C 4610103C */  c.lt.s     $f2, $f16
    /* FB490 80153F60 00000000 */  nop
    /* FB494 80153F64 45020005 */  bc1fl      .L80153F7C_ovl4
    /* FB498 80153F68 46101381 */   sub.s     $f14, $f2, $f16
    /* FB49C 80153F6C 46101381 */  sub.s      $f14, $f2, $f16
    /* FB4A0 80153F70 10000002 */  b          .L80153F7C_ovl4
    /* FB4A4 80153F74 46007387 */   neg.s     $f14, $f14
    /* FB4A8 80153F78 46101381 */  sub.s      $f14, $f2, $f16
  .L80153F7C_ovl4:
    /* FB4AC 80153F7C 0C0061C3 */  jal        atan2f
    /* FB4B0 80153F80 00000000 */   nop
    /* FB4B4 80153F84 C7A20080 */  lwc1       $f2, 0x80($sp)
    /* FB4B8 80153F88 C7B0008C */  lwc1       $f16, 0x8C($sp)
    /* FB4BC 80153F8C 46000506 */  mov.s      $f20, $f0
    /* FB4C0 80153F90 4602803C */  c.lt.s     $f16, $f2
    /* FB4C4 80153F94 00000000 */  nop
    /* FB4C8 80153F98 45000006 */  bc1f       .L80153FB4_ovl4
    /* FB4CC 80153F9C 00000000 */   nop
    /* FB4D0 80153FA0 0C00D604 */  jal        cosf
    /* FB4D4 80153FA4 46000306 */   mov.s     $f12, $f0
    /* FB4D8 80153FA8 461A0582 */  mul.s      $f22, $f0, $f26
    /* FB4DC 80153FAC 10000006 */  b          .L80153FC8_ovl4
    /* FB4E0 80153FB0 C7A60094 */   lwc1      $f6, 0x94($sp)
  .L80153FB4_ovl4:
    /* FB4E4 80153FB4 0C00D604 */  jal        cosf
    /* FB4E8 80153FB8 4600A306 */   mov.s     $f12, $f20
    /* FB4EC 80153FBC 461A0582 */  mul.s      $f22, $f0, $f26
    /* FB4F0 80153FC0 4600B587 */  neg.s      $f22, $f22
    /* FB4F4 80153FC4 C7A60094 */  lwc1       $f6, 0x94($sp)
  .L80153FC8_ovl4:
    /* FB4F8 80153FC8 C7A80088 */  lwc1       $f8, 0x88($sp)
    /* FB4FC 80153FCC 4608303C */  c.lt.s     $f6, $f8
    /* FB500 80153FD0 00000000 */  nop
    /* FB504 80153FD4 45000006 */  bc1f       .L80153FF0_ovl4
    /* FB508 80153FD8 00000000 */   nop
    /* FB50C 80153FDC 0C00B5B8 */  jal        sinf
    /* FB510 80153FE0 4600A306 */   mov.s     $f12, $f20
    /* FB514 80153FE4 461A0502 */  mul.s      $f20, $f0, $f26
    /* FB518 80153FE8 10000006 */  b          .L80154004_ovl4
    /* FB51C 80153FEC 8E270000 */   lw        $a3, 0x0($s1)
  .L80153FF0_ovl4:
    /* FB520 80153FF0 0C00B5B8 */  jal        sinf
    /* FB524 80153FF4 4600A306 */   mov.s     $f12, $f20
    /* FB528 80153FF8 461A0502 */  mul.s      $f20, $f0, $f26
    /* FB52C 80153FFC 4600A507 */  neg.s      $f20, $f20
    /* FB530 80154000 8E270000 */  lw         $a3, 0x0($s1)
  .L80154004_ovl4:
    /* FB534 80154004 C7AA0080 */  lwc1       $f10, 0x80($sp)
    /* FB538 80154008 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB53C 8015400C 00031880 */  sll        $v1, $v1, 2
    /* FB540 80154010 02037821 */  addu       $t7, $s0, $v1
    /* FB544 80154014 8DE90000 */  lw         $t1, 0x0($t7)
    /* FB548 80154018 8D2A003C */  lw         $t2, 0x3C($t1)
    /* FB54C 8015401C 8D420010 */  lw         $v0, 0x10($t2)
    /* FB550 80154020 C440001C */  lwc1       $f0, 0x1C($v0)
    /* FB554 80154024 46005032 */  c.eq.s     $f10, $f0
    /* FB558 80154028 00000000 */  nop
    /* FB55C 8015402C 45030031 */  bc1tl      .L801540F4_ovl4
    /* FB560 80154030 C4400024 */   lwc1      $f0, 0x24($v0)
    /* FB564 80154034 4616C03C */  c.lt.s     $f24, $f22
    /* FB568 80154038 46160480 */  add.s      $f18, $f0, $f22
    /* FB56C 8015403C 45000017 */  bc1f       .L8015409C_ovl4
    /* FB570 80154040 E452001C */   swc1      $f18, 0x1C($v0)
    /* FB574 80154044 8E270000 */  lw         $a3, 0x0($s1)
    /* FB578 80154048 C7A40080 */  lwc1       $f4, 0x80($sp)
    /* FB57C 8015404C 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB580 80154050 00031880 */  sll        $v1, $v1, 2
    /* FB584 80154054 02035821 */  addu       $t3, $s0, $v1
    /* FB588 80154058 8D6C0000 */  lw         $t4, 0x0($t3)
    /* FB58C 8015405C 8D88003C */  lw         $t0, 0x3C($t4)
    /* FB590 80154060 8D020010 */  lw         $v0, 0x10($t0)
    /* FB594 80154064 C446001C */  lwc1       $f6, 0x1C($v0)
    /* FB598 80154068 4606203C */  c.lt.s     $f4, $f6
    /* FB59C 8015406C 00000000 */  nop
    /* FB5A0 80154070 45020020 */  bc1fl      .L801540F4_ovl4
    /* FB5A4 80154074 C4400024 */   lwc1      $f0, 0x24($v0)
    /* FB5A8 80154078 E444001C */  swc1       $f4, 0x1C($v0)
    /* FB5AC 8015407C 8E270000 */  lw         $a3, 0x0($s1)
    /* FB5B0 80154080 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB5B4 80154084 00031880 */  sll        $v1, $v1, 2
    /* FB5B8 80154088 02036821 */  addu       $t5, $s0, $v1
    /* FB5BC 8015408C 8DB80000 */  lw         $t8, 0x0($t5)
    /* FB5C0 80154090 8F0E003C */  lw         $t6, 0x3C($t8)
    /* FB5C4 80154094 10000016 */  b          .L801540F0_ovl4
    /* FB5C8 80154098 8DC20010 */   lw        $v0, 0x10($t6)
  .L8015409C_ovl4:
    /* FB5CC 8015409C 8E270000 */  lw         $a3, 0x0($s1)
    /* FB5D0 801540A0 C7AA0080 */  lwc1       $f10, 0x80($sp)
    /* FB5D4 801540A4 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB5D8 801540A8 00031880 */  sll        $v1, $v1, 2
    /* FB5DC 801540AC 0203C821 */  addu       $t9, $s0, $v1
    /* FB5E0 801540B0 8F2F0000 */  lw         $t7, 0x0($t9)
    /* FB5E4 801540B4 8DE9003C */  lw         $t1, 0x3C($t7)
    /* FB5E8 801540B8 8D220010 */  lw         $v0, 0x10($t1)
    /* FB5EC 801540BC C448001C */  lwc1       $f8, 0x1C($v0)
    /* FB5F0 801540C0 460A403C */  c.lt.s     $f8, $f10
    /* FB5F4 801540C4 00000000 */  nop
    /* FB5F8 801540C8 4502000A */  bc1fl      .L801540F4_ovl4
    /* FB5FC 801540CC C4400024 */   lwc1      $f0, 0x24($v0)
    /* FB600 801540D0 E44A001C */  swc1       $f10, 0x1C($v0)
    /* FB604 801540D4 8E270000 */  lw         $a3, 0x0($s1)
    /* FB608 801540D8 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB60C 801540DC 00031880 */  sll        $v1, $v1, 2
    /* FB610 801540E0 02035021 */  addu       $t2, $s0, $v1
    /* FB614 801540E4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* FB618 801540E8 8D6C003C */  lw         $t4, 0x3C($t3)
    /* FB61C 801540EC 8D820010 */  lw         $v0, 0x10($t4)
  .L801540F0_ovl4:
    /* FB620 801540F0 C4400024 */  lwc1       $f0, 0x24($v0)
  .L801540F4_ovl4:
    /* FB624 801540F4 C7B20088 */  lwc1       $f18, 0x88($sp)
    /* FB628 801540F8 46009032 */  c.eq.s     $f18, $f0
    /* FB62C 801540FC 00000000 */  nop
    /* FB630 80154100 45030031 */  bc1tl      .L801541C8_ovl4
    /* FB634 80154104 C7A60080 */   lwc1      $f6, 0x80($sp)
    /* FB638 80154108 4614C03C */  c.lt.s     $f24, $f20
    /* FB63C 8015410C 46140180 */  add.s      $f6, $f0, $f20
    /* FB640 80154110 45000017 */  bc1f       .L80154170_ovl4
    /* FB644 80154114 E4460024 */   swc1      $f6, 0x24($v0)
    /* FB648 80154118 8E270000 */  lw         $a3, 0x0($s1)
    /* FB64C 8015411C C7A40088 */  lwc1       $f4, 0x88($sp)
    /* FB650 80154120 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB654 80154124 00031880 */  sll        $v1, $v1, 2
    /* FB658 80154128 02034021 */  addu       $t0, $s0, $v1
    /* FB65C 8015412C 8D0D0000 */  lw         $t5, 0x0($t0)
    /* FB660 80154130 8DB8003C */  lw         $t8, 0x3C($t5)
    /* FB664 80154134 8F020010 */  lw         $v0, 0x10($t8)
    /* FB668 80154138 C4480024 */  lwc1       $f8, 0x24($v0)
    /* FB66C 8015413C 4608203C */  c.lt.s     $f4, $f8
    /* FB670 80154140 00000000 */  nop
    /* FB674 80154144 45020020 */  bc1fl      .L801541C8_ovl4
    /* FB678 80154148 C7A60080 */   lwc1      $f6, 0x80($sp)
    /* FB67C 8015414C E4440024 */  swc1       $f4, 0x24($v0)
    /* FB680 80154150 8E270000 */  lw         $a3, 0x0($s1)
    /* FB684 80154154 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB688 80154158 00031880 */  sll        $v1, $v1, 2
    /* FB68C 8015415C 02037021 */  addu       $t6, $s0, $v1
    /* FB690 80154160 8DD90000 */  lw         $t9, 0x0($t6)
    /* FB694 80154164 8F2F003C */  lw         $t7, 0x3C($t9)
    /* FB698 80154168 10000016 */  b          .L801541C4_ovl4
    /* FB69C 8015416C 8DE20010 */   lw        $v0, 0x10($t7)
  .L80154170_ovl4:
    /* FB6A0 80154170 8E270000 */  lw         $a3, 0x0($s1)
    /* FB6A4 80154174 C7B20088 */  lwc1       $f18, 0x88($sp)
    /* FB6A8 80154178 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB6AC 8015417C 00031880 */  sll        $v1, $v1, 2
    /* FB6B0 80154180 02034821 */  addu       $t1, $s0, $v1
    /* FB6B4 80154184 8D2A0000 */  lw         $t2, 0x0($t1)
    /* FB6B8 80154188 8D4B003C */  lw         $t3, 0x3C($t2)
    /* FB6BC 8015418C 8D620010 */  lw         $v0, 0x10($t3)
    /* FB6C0 80154190 C44A0024 */  lwc1       $f10, 0x24($v0)
    /* FB6C4 80154194 4612503C */  c.lt.s     $f10, $f18
    /* FB6C8 80154198 00000000 */  nop
    /* FB6CC 8015419C 4502000A */  bc1fl      .L801541C8_ovl4
    /* FB6D0 801541A0 C7A60080 */   lwc1      $f6, 0x80($sp)
    /* FB6D4 801541A4 E4520024 */  swc1       $f18, 0x24($v0)
    /* FB6D8 801541A8 8E270000 */  lw         $a3, 0x0($s1)
    /* FB6DC 801541AC 8CE30000 */  lw         $v1, 0x0($a3)
    /* FB6E0 801541B0 00031880 */  sll        $v1, $v1, 2
    /* FB6E4 801541B4 02036021 */  addu       $t4, $s0, $v1
    /* FB6E8 801541B8 8D880000 */  lw         $t0, 0x0($t4)
    /* FB6EC 801541BC 8D0D003C */  lw         $t5, 0x3C($t0)
    /* FB6F0 801541C0 8DA20010 */  lw         $v0, 0x10($t5)
  .L801541C4_ovl4:
    /* FB6F4 801541C4 C7A60080 */  lwc1       $f6, 0x80($sp)
  .L801541C8_ovl4:
    /* FB6F8 801541C8 C448001C */  lwc1       $f8, 0x1C($v0)
    /* FB6FC 801541CC C7A40088 */  lwc1       $f4, 0x88($sp)
    /* FB700 801541D0 46083032 */  c.eq.s     $f6, $f8
    /* FB704 801541D4 00000000 */  nop
    /* FB708 801541D8 45020009 */  bc1fl      .L80154200_ovl4
    /* FB70C 801541DC 8E4E0000 */   lw        $t6, 0x0($s2)
    /* FB710 801541E0 C44A0024 */  lwc1       $f10, 0x24($v0)
    /* FB714 801541E4 460A2032 */  c.eq.s     $f4, $f10
    /* FB718 801541E8 00000000 */  nop
    /* FB71C 801541EC 45000003 */  bc1f       .L801541FC_ovl4
    /* FB720 801541F0 02E3C021 */   addu      $t8, $s7, $v1
    /* FB724 801541F4 1000FF03 */  b          .L80153E04_ovl4
    /* FB728 801541F8 AF000000 */   sw        $zero, 0x0($t8)
  .L801541FC_ovl4:
    /* FB72C 801541FC 8E4E0000 */  lw         $t6, 0x0($s2)
  .L80154200_ovl4:
    /* FB730 80154200 02802025 */  or         $a0, $s4, $zero
    /* FB734 80154204 000EC880 */  sll        $t9, $t6, 2
    /* FB738 80154208 02797821 */  addu       $t7, $s3, $t9
    /* FB73C 8015420C 0C002DAF */  jal        ohSleep
    /* FB740 80154210 ADF40000 */   sw        $s4, 0x0($t7)
    /* FB744 80154214 1000FF7B */  b          .L80154004_ovl4
    /* FB748 80154218 8E270000 */   lw        $a3, 0x0($s1)
  .L8015421C_ovl4:
    /* FB74C 8015421C 0C002DAF */  jal        ohSleep
    /* FB750 80154220 02802025 */   or        $a0, $s4, $zero
    /* FB754 80154224 1000FEF7 */  b          .L80153E04_ovl4
    /* FB758 80154228 8E270000 */   lw        $a3, 0x0($s1)
    /* FB75C 8015422C 00000000 */  nop
    /* FB760 80154230 00000000 */  nop
    /* FB764 80154234 00000000 */  nop
    /* FB768 80154238 00000000 */  nop
    /* FB76C 8015423C 00000000 */  nop
    /* FB770 80154240 8FBF0054 */  lw         $ra, 0x54($sp)
    /* FB774 80154244 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* FB778 80154248 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* FB77C 8015424C D7B80020 */  ldc1       $f24, 0x20($sp)
    /* FB780 80154250 D7BA0028 */  ldc1       $f26, 0x28($sp)
    /* FB784 80154254 8FB00034 */  lw         $s0, 0x34($sp)
    /* FB788 80154258 8FB10038 */  lw         $s1, 0x38($sp)
    /* FB78C 8015425C 8FB2003C */  lw         $s2, 0x3C($sp)
    /* FB790 80154260 8FB30040 */  lw         $s3, 0x40($sp)
    /* FB794 80154264 8FB40044 */  lw         $s4, 0x44($sp)
    /* FB798 80154268 8FB50048 */  lw         $s5, 0x48($sp)
    /* FB79C 8015426C 8FB6004C */  lw         $s6, 0x4C($sp)
    /* FB7A0 80154270 8FB70050 */  lw         $s7, 0x50($sp)
    /* FB7A4 80154274 03E00008 */  jr         $ra
    /* FB7A8 80154278 27BD00C8 */   addiu     $sp, $sp, 0xC8
endlabel func_80153C78_ovl4
.size func_80153C78_ovl4, . - func_80153C78_ovl4
