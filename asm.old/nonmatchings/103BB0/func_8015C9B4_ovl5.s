glabel func_8015C9B4_ovl5
/* 103E24 8015C9B4 27BDFEE8 */  addiu      $sp, $sp, -0x118
/* 103E28 8015C9B8 AFB00030 */  sw         $s0, 0x30($sp)
/* 103E2C 8015C9BC 00808025 */  or         $s0, $a0, $zero
/* 103E30 8015C9C0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 103E34 8015C9C4 AFA5011C */  sw         $a1, 0x11C($sp)
/* 103E38 8015C9C8 AFA60120 */  sw         $a2, 0x120($sp)
/* 103E3C 8015C9CC AFA70124 */  sw         $a3, 0x124($sp)
/* 103E40 8015C9D0 C6040028 */  lwc1       $f4, 0x28($s0)
/* 103E44 8015C9D4 8E070024 */  lw         $a3, 0x24($s0)
/* 103E48 8015C9D8 8E060020 */  lw         $a2, 0x20($s0)
.L8015C9DC_ovl3:
/* 103E4C 8015C9DC E7A40010 */  swc1       $f4, 0x10($sp)
/* 103E50 8015C9E0 C606002C */  lwc1       $f6, 0x2C($s0)
/* 103E54 8015C9E4 2605001C */  addiu      $a1, $s0, 0x1C
/* 103E58 8015C9E8 27A40098 */  addiu      $a0, $sp, 0x98
.L8015C9EC_ovl3:
/* 103E5C 8015C9EC E7A60014 */  swc1       $f6, 0x14($sp)
/* 103E60 8015C9F0 C6080030 */  lwc1       $f8, 0x30($s0)
/* 103E64 8015C9F4 0C006C02 */  jal        func_8001B008
/* 103E68 8015C9F8 E7A80018 */   swc1      $f8, 0x18($sp)
/* 103E6C 8015C9FC C60A0048 */  lwc1       $f10, 0x48($s0)
/* 103E70 8015CA00 8E05003C */  lw         $a1, 0x3C($s0)
/* 103E74 8015CA04 8E060040 */  lw         $a2, 0x40($s0)
/* 103E78 8015CA08 8E070044 */  lw         $a3, 0x44($s0)
/* 103E7C 8015CA0C E7AA0010 */  swc1       $f10, 0x10($sp)
/* 103E80 8015CA10 C604004C */  lwc1       $f4, 0x4C($s0)
/* 103E84 8015CA14 27A40058 */  addiu      $a0, $sp, 0x58
/* 103E88 8015CA18 E7A40014 */  swc1       $f4, 0x14($sp)
/* 103E8C 8015CA1C C6060050 */  lwc1       $f6, 0x50($s0)
/* 103E90 8015CA20 E7A60018 */  swc1       $f6, 0x18($sp)
/* 103E94 8015CA24 C6080054 */  lwc1       $f8, 0x54($s0)
/* 103E98 8015CA28 E7A8001C */  swc1       $f8, 0x1C($sp)
/* 103E9C 8015CA2C C60A0058 */  lwc1       $f10, 0x58($s0)
/* 103EA0 8015CA30 E7AA0020 */  swc1       $f10, 0x20($sp)
/* 103EA4 8015CA34 C604005C */  lwc1       $f4, 0x5C($s0)
/* 103EA8 8015CA38 0C0067AC */  jal        guLookAtF
/* 103EAC 8015CA3C E7A40024 */   swc1      $f4, 0x24($sp)
/* 103EB0 8015CA40 27A40058 */  addiu      $a0, $sp, 0x58
.L8015CA44_ovl3:
/* 103EB4 8015CA44 27A50098 */  addiu      $a1, $sp, 0x98
/* 103EB8 8015CA48 0C057221 */  jal        func_8015C884_ovl5
/* 103EBC 8015CA4C 27A600D8 */   addiu     $a2, $sp, 0xD8
/* 103EC0 8015CA50 8FA2011C */  lw         $v0, 0x11C($sp)
/* 103EC4 8015CA54 C7A600D8 */  lwc1       $f6, 0xD8($sp)
/* 103EC8 8015CA58 C7AA00E8 */  lwc1       $f10, 0xE8($sp)
/* 103ECC 8015CA5C C4400000 */  lwc1       $f0, 0x0($v0)
/* 103ED0 8015CA60 C4420004 */  lwc1       $f2, 0x4($v0)
/* 103ED4 8015CA64 C44C0008 */  lwc1       $f12, 0x8($v0)
/* 103ED8 8015CA68 46003202 */  mul.s      $f8, $f6, $f0
/* 103EDC 8015CA6C 3C018019 */  lui        $at, %hi(func_8018D460_ovl3 + 0xC)
/* 103EE0 8015CA70 46025102 */  mul.s      $f4, $f10, $f2
/* 103EE4 8015CA74 C7AA00F8 */  lwc1       $f10, 0xF8($sp)
/* 103EE8 8015CA78 46044180 */  add.s      $f6, $f8, $f4
/* 103EEC 8015CA7C 460C5202 */  mul.s      $f8, $f10, $f12
/* 103EF0 8015CA80 C7AA0108 */  lwc1       $f10, 0x108($sp)
/* 103EF4 8015CA84 46083100 */  add.s      $f4, $f6, $f8
/* 103EF8 8015CA88 C7A600DC */  lwc1       $f6, 0xDC($sp)
/* 103EFC 8015CA8C 46045480 */  add.s      $f18, $f10, $f4
.L8015CA90_ovl3:
/* 103F00 8015CA90 46003202 */  mul.s      $f8, $f6, $f0
/* 103F04 8015CA94 C7AA00EC */  lwc1       $f10, 0xEC($sp)
/* 103F08 8015CA98 46025102 */  mul.s      $f4, $f10, $f2
/* 103F0C 8015CA9C C7AA00FC */  lwc1       $f10, 0xFC($sp)
/* 103F10 8015CAA0 46044180 */  add.s      $f6, $f8, $f4
/* 103F14 8015CAA4 460C5202 */  mul.s      $f8, $f10, $f12
/* 103F18 8015CAA8 C7AA010C */  lwc1       $f10, 0x10C($sp)
/* 103F1C 8015CAAC 46083100 */  add.s      $f4, $f6, $f8
/* 103F20 8015CAB0 C7A800E4 */  lwc1       $f8, 0xE4($sp)
.L8015CAB4_ovl3:
/* 103F24 8015CAB4 46045180 */  add.s      $f6, $f10, $f4
/* 103F28 8015CAB8 46004282 */  mul.s      $f10, $f8, $f0
/* 103F2C 8015CABC C7A400F4 */  lwc1       $f4, 0xF4($sp)
/* 103F30 8015CAC0 E7A60044 */  swc1       $f6, 0x44($sp)
/* 103F34 8015CAC4 46022182 */  mul.s      $f6, $f4, $f2
/* 103F38 8015CAC8 C7A40104 */  lwc1       $f4, 0x104($sp)
/* 103F3C 8015CACC 46065200 */  add.s      $f8, $f10, $f6
/* 103F40 8015CAD0 460C2282 */  mul.s      $f10, $f4, $f12
/* 103F44 8015CAD4 C7A40114 */  lwc1       $f4, 0x114($sp)
/* 103F48 8015CAD8 460A4180 */  add.s      $f6, $f8, $f10
/* 103F4C 8015CADC 44804000 */  mtc1       $zero, $f8
/* 103F50 8015CAE0 46062400 */  add.s      $f16, $f4, $f6
/* 103F54 8015CAE4 4608803C */  c.lt.s     $f16, $f8
/* 103F58 8015CAE8 46008386 */  mov.s      $f14, $f16
/* 103F5C 8015CAEC 45020004 */  bc1fl      .L8015CB00_ovl5
/* 103F60 8015CAF0 46008006 */   mov.s     $f0, $f16
/* 103F64 8015CAF4 10000002 */  b          .L8015CB00_ovl5
/* 103F68 8015CAF8 46008007 */   neg.s     $f0, $f16
/* 103F6C 8015CAFC 46008006 */  mov.s      $f0, $f16
.L8015CB00_ovl5:
/* 103F70 8015CB00 C422D46C */  lwc1       $f2, %lo(func_8018D460_ovl3 + 0xC)($at)
/* 103F74 8015CB04 4602003C */  c.lt.s     $f0, $f2
/* 103F78 8015CB08 00000000 */  nop
/* 103F7C 8015CB0C 4502000B */  bc1fl      .L8015CB3C_ovl5
/* 103F80 8015CB10 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 103F84 8015CB14 44805000 */  mtc1       $zero, $f10
/* 103F88 8015CB18 3C018019 */  lui        $at, %hi(func_8018D460_ovl3 + 0x10)
/* 103F8C 8015CB1C 460A803C */  c.lt.s     $f16, $f10
/* 103F90 8015CB20 00000000 */  nop
/* 103F94 8015CB24 45020004 */  bc1fl      .L8015CB38_ovl5
.L8015CB28_ovl3:
/* 103F98 8015CB28 46001386 */   mov.s     $f14, $f2
/* 103F9C 8015CB2C 10000002 */  b          .L8015CB38_ovl5
/* 103FA0 8015CB30 C42ED470 */   lwc1      $f14, %lo(func_8018D460_ovl3 + 0x10)($at)
/* 103FA4 8015CB34 46001386 */  mov.s      $f14, $f2
.L8015CB38_ovl5:
/* 103FA8 8015CB38 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L8015CB3C_ovl5:
/* 103FAC 8015CB3C 44812000 */  mtc1       $at, $f4
/* 103FB0 8015CB40 8FAE0120 */  lw         $t6, 0x120($sp)
/* 103FB4 8015CB44 460E2383 */  div.s      $f14, $f4, $f14
.L8015CB48_ovl3:
/* 103FB8 8015CB48 460E9182 */  mul.s      $f6, $f18, $f14
/* 103FBC 8015CB4C E5C60000 */  swc1       $f6, 0x0($t6)
/* 103FC0 8015CB50 C7A80044 */  lwc1       $f8, 0x44($sp)
/* 103FC4 8015CB54 8FAF0124 */  lw         $t7, 0x124($sp)
/* 103FC8 8015CB58 460E4282 */  mul.s      $f10, $f8, $f14
/* 103FCC 8015CB5C E5EA0000 */  swc1       $f10, 0x0($t7)
/* 103FD0 8015CB60 8FBF0034 */  lw         $ra, 0x34($sp)
/* 103FD4 8015CB64 8FB00030 */  lw         $s0, 0x30($sp)
/* 103FD8 8015CB68 27BD0118 */  addiu      $sp, $sp, 0x118
/* 103FDC 8015CB6C 03E00008 */  jr         $ra
/* 103FE0 8015CB70 00000000 */   nop
/* 103FE4 8015CB74 03E00008 */  jr         $ra
/* 103FE8 8015CB78 00000000 */   nop
