glabel func_801E6D50_ovl10
/* 194DA0 801E6D50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 194DA4 801E6D54 AFB20028 */  sw         $s2, 0x28($sp)
/* 194DA8 801E6D58 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 194DAC 801E6D5C 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 194DB0 801E6D60 8E450000 */  lw         $a1, 0x0($s2)
/* 194DB4 801E6D64 AFBF002C */  sw         $ra, 0x2C($sp)
/* 194DB8 801E6D68 AFB10024 */  sw         $s1, 0x24($sp)
/* 194DBC 801E6D6C AFB00020 */  sw         $s0, 0x20($sp)
/* 194DC0 801E6D70 F7B40018 */  sdc1       $f20, 0x18($sp)
.L801E6D74_ovl16:
/* 194DC4 801E6D74 AFA40030 */  sw         $a0, 0x30($sp)
/* 194DC8 801E6D78 8CAF0000 */  lw         $t7, 0x0($a1)
/* 194DCC 801E6D7C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 194DD0 801E6D80 240E0006 */  addiu      $t6, $zero, 0x6
/* 194DD4 801E6D84 000FC080 */  sll        $t8, $t7, 2
/* 194DD8 801E6D88 00380821 */  addu       $at, $at, $t8
/* 194DDC 801E6D8C AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 194DE0 801E6D90 8CA80000 */  lw         $t0, 0x0($a1)
/* 194DE4 801E6D94 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 194DE8 801E6D98 3C19801D */  lui        $t9, %hi(D_801CBB78)
/* 194DEC 801E6D9C 00084880 */  sll        $t1, $t0, 2
/* 194DF0 801E6DA0 01495021 */  addu       $t2, $t2, $t1
/* 194DF4 801E6DA4 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 194DF8 801E6DA8 2739BB78 */  addiu      $t9, $t9, %lo(D_801CBB78)
/* 194DFC 801E6DAC 4480A000 */  mtc1       $zero, $f20
/* 194E00 801E6DB0 AD590098 */  sw         $t9, 0x98($t2)
/* 194E04 801E6DB4 8E4B0000 */  lw         $t3, 0x0($s2)
/* 194E08 801E6DB8 3C01800F */  lui        $at, %hi(D_800E8920)
/* 194E0C 801E6DBC 4600A306 */  mov.s      $f12, $f20
/* 194E10 801E6DC0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 194E14 801E6DC4 000C6880 */  sll        $t5, $t4, 2
/* 194E18 801E6DC8 002D0821 */  addu       $at, $at, $t5
/* 194E1C 801E6DCC 0C02BB30 */  jal        func_800AECC0
/* 194E20 801E6DD0 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 194E24 801E6DD4 0C02BB48 */  jal        func_800AED20
/* 194E28 801E6DD8 4600A306 */   mov.s     $f12, $f20
/* 194E2C 801E6DDC 8E450000 */  lw         $a1, 0x0($s2)
/* 194E30 801E6DE0 3C018022 */  lui        $at, %hi(D_8021D058_ovl9)
/* 194E34 801E6DE4 C424D058 */  lwc1       $f4, %lo(D_8021D058_ovl9)($at)
/* 194E38 801E6DE8 8CAF0000 */  lw         $t7, 0x0($a1)
/* 194E3C 801E6DEC 3C06800E */  lui        $a2, %hi(D_800E3750)
/* 194E40 801E6DF0 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
.L801E6DF4_ovl16:
/* 194E44 801E6DF4 000F7080 */  sll        $t6, $t7, 2
/* 194E48 801E6DF8 00CEC021 */  addu       $t8, $a2, $t6
/* 194E4C 801E6DFC E7040000 */  swc1       $f4, 0x0($t8)
.L801E6E00_ovl16:
/* 194E50 801E6E00 8CA80000 */  lw         $t0, 0x0($a1)
/* 194E54 801E6E04 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 194E58 801E6E08 44813000 */  mtc1       $at, $f6
glabel func_801E6E0C_ovl16
/* 194E5C 801E6E0C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 194E60 801E6E10 00084880 */  sll        $t1, $t0, 2
/* 194E64 801E6E14 00290821 */  addu       $at, $at, $t1
/* 194E68 801E6E18 3C040001 */  lui        $a0, (0x101F5 >> 16)
/* 194E6C 801E6E1C 348401F5 */  ori        $a0, $a0, (0x101F5 & 0xFFFF)
/* 194E70 801E6E20 0C02A806 */  jal        func_800AA018
/* 194E74 801E6E24 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
/* 194E78 801E6E28 8E450000 */  lw         $a1, 0x0($s2)
/* 194E7C 801E6E2C 3C11800E */  lui        $s1, %hi(D_800E3210)
/* 194E80 801E6E30 26313210 */  addiu      $s1, $s1, %lo(D_800E3210)
/* 194E84 801E6E34 8CA20000 */  lw         $v0, 0x0($a1)
/* 194E88 801E6E38 3C06800E */  lui        $a2, %hi(D_800E3750)
/* 194E8C 801E6E3C 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* 194E90 801E6E40 00021080 */  sll        $v0, $v0, 2
/* 194E94 801E6E44 0222C821 */  addu       $t9, $s1, $v0
/* 194E98 801E6E48 C7220000 */  lwc1       $f2, 0x0($t9)
/* 194E9C 801E6E4C 00C25021 */  addu       $t2, $a2, $v0
/* 194EA0 801E6E50 4602A03C */  c.lt.s     $f20, $f2
/* 194EA4 801E6E54 00000000 */  nop
/* 194EA8 801E6E58 4500003D */  bc1f       .L801E6F50_ovl9
/* 194EAC 801E6E5C 00000000 */   nop
/* 194EB0 801E6E60 C5480000 */  lwc1       $f8, 0x0($t2)
/* 194EB4 801E6E64 3C10800F */  lui        $s0, %hi(D_800EAA60)
/* 194EB8 801E6E68 2610AA60 */  addiu      $s0, $s0, %lo(D_800EAA60)
/* 194EBC 801E6E6C 4614403C */  c.lt.s     $f8, $f20
/* 194EC0 801E6E70 02025821 */  addu       $t3, $s0, $v0
/* 194EC4 801E6E74 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 194EC8 801E6E78 45000035 */  bc1f       .L801E6F50_ovl9
/* 194ECC 801E6E7C 00000000 */   nop
/* 194ED0 801E6E80 E5620000 */  swc1       $f2, 0x0($t3)
glabel func_801E6E84_ovl10
/* 194ED4 801E6E84 8CA20000 */  lw         $v0, 0x0($a1)
/* 194ED8 801E6E88 00002025 */  or         $a0, $zero, $zero
/* 194EDC 801E6E8C 00021080 */  sll        $v0, $v0, 2
/* 194EE0 801E6E90 02021821 */  addu       $v1, $s0, $v0
/* 194EE4 801E6E94 C4600000 */  lwc1       $f0, 0x0($v1)
/* 194EE8 801E6E98 4600A03C */  c.lt.s     $f20, $f0
/* 194EEC 801E6E9C 00000000 */  nop
/* 194EF0 801E6EA0 4500000D */  bc1f       .L801E6ED8_ovl9
/* 194EF4 801E6EA4 00C26021 */   addu      $t4, $a2, $v0
.L801E6EA8_ovl9:
/* 194EF8 801E6EA8 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 194EFC 801E6EAC 24840001 */  addiu      $a0, $a0, 0x1
/* 194F00 801E6EB0 460A0400 */  add.s      $f16, $f0, $f10
/* 194F04 801E6EB4 E4700000 */  swc1       $f16, 0x0($v1)
/* 194F08 801E6EB8 8CA20000 */  lw         $v0, 0x0($a1)
/* 194F0C 801E6EBC 00021080 */  sll        $v0, $v0, 2
/* 194F10 801E6EC0 02021821 */  addu       $v1, $s0, $v0
/* 194F14 801E6EC4 C4600000 */  lwc1       $f0, 0x0($v1)
/* 194F18 801E6EC8 4600A03C */  c.lt.s     $f20, $f0
/* 194F1C 801E6ECC 00000000 */  nop
.L801E6ED0_ovl10:
/* 194F20 801E6ED0 4503FFF5 */  bc1tl      .L801E6EA8_ovl9
/* 194F24 801E6ED4 00C26021 */   addu      $t4, $a2, $v0
.L801E6ED8_ovl9:
/* 194F28 801E6ED8 14800004 */  bnez       $a0, .L801E6EEC_ovl9
/* 194F2C 801E6EDC 00220821 */   addu      $at, $at, $v0
/* 194F30 801E6EE0 44800000 */  mtc1       $zero, $f0
/* 194F34 801E6EE4 10000004 */  b          .L801E6EF8_ovl9
/* 194F38 801E6EE8 00000000 */   nop
.L801E6EEC_ovl9:
/* 194F3C 801E6EEC 44849000 */  mtc1       $a0, $f18
/* 194F40 801E6EF0 00000000 */  nop
/* 194F44 801E6EF4 46809020 */  cvt.s.w    $f0, $f18
.L801E6EF8_ovl9:
/* 194F48 801E6EF8 C424A8A0 */  lwc1       $f4, %lo(D_800EA8A0)($at)
/* 194F4C 801E6EFC 46002183 */  div.s      $f6, $f4, $f0
.L801E6F00_ovl10:
/* 194F50 801E6F00 E4660000 */  swc1       $f6, 0x0($v1)
/* 194F54 801E6F04 8CA20000 */  lw         $v0, 0x0($a1)
/* 194F58 801E6F08 00021080 */  sll        $v0, $v0, 2
/* 194F5C 801E6F0C 02226821 */  addu       $t5, $s1, $v0
/* 194F60 801E6F10 C5A80000 */  lwc1       $f8, 0x0($t5)
/* 194F64 801E6F14 4608A03C */  c.lt.s     $f20, $f8
/* 194F68 801E6F18 00000000 */  nop
/* 194F6C 801E6F1C 4500000C */  bc1f       .L801E6F50_ovl9
/* 194F70 801E6F20 00000000 */   nop
.L801E6F24_ovl16:
/* 194F74 801E6F24 0C002DAF */  jal        finish_current_thread
.L801E6F28_ovl10:
/* 194F78 801E6F28 24040001 */   addiu     $a0, $zero, 0x1
/* 194F7C 801E6F2C 8E450000 */  lw         $a1, 0x0($s2)
/* 194F80 801E6F30 8CA20000 */  lw         $v0, 0x0($a1)
glabel func_801E6F34_ovl10
/* 194F84 801E6F34 00021080 */  sll        $v0, $v0, 2
/* 194F88 801E6F38 02227821 */  addu       $t7, $s1, $v0
/* 194F8C 801E6F3C C5EA0000 */  lwc1       $f10, 0x0($t7)
/* 194F90 801E6F40 460AA03C */  c.lt.s     $f20, $f10
/* 194F94 801E6F44 00000000 */  nop
/* 194F98 801E6F48 4501FFF6 */  bc1t       .L801E6F24_ovl16
/* 194F9C 801E6F4C 00000000 */   nop
.L801E6F50_ovl9:
/* 194FA0 801E6F50 3C10800F */  lui        $s0, %hi(D_800EAA60)
/* 194FA4 801E6F54 2610AA60 */  addiu      $s0, $s0, %lo(D_800EAA60)
/* 194FA8 801E6F58 02027021 */  addu       $t6, $s0, $v0
/* 194FAC 801E6F5C E5D40000 */  swc1       $f20, 0x0($t6)
/* 194FB0 801E6F60 8CA20000 */  lw         $v0, 0x0($a1)
.L801E6F64_ovl16:
/* 194FB4 801E6F64 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 194FB8 801E6F68 00021080 */  sll        $v0, $v0, 2
/* 194FBC 801E6F6C 0202C021 */  addu       $t8, $s0, $v0
/* 194FC0 801E6F70 C7100000 */  lwc1       $f16, 0x0($t8)
/* 194FC4 801E6F74 00220821 */  addu       $at, $at, $v0
/* 194FC8 801E6F78 0C02BE85 */  jal        func_800AFA14
/* 194FCC 801E6F7C E430A8A0 */   swc1      $f16, %lo(D_800EA8A0)($at)
/* 194FD0 801E6F80 8FBF002C */  lw         $ra, 0x2C($sp)
/* 194FD4 801E6F84 D7B40018 */  ldc1       $f20, 0x18($sp)
.L801E6F88_ovl16:
/* 194FD8 801E6F88 8FB00020 */  lw         $s0, 0x20($sp)
/* 194FDC 801E6F8C 8FB10024 */  lw         $s1, 0x24($sp)
/* 194FE0 801E6F90 8FB20028 */  lw         $s2, 0x28($sp)
/* 194FE4 801E6F94 03E00008 */  jr         $ra
/* 194FE8 801E6F98 27BD0030 */   addiu     $sp, $sp, 0x30
