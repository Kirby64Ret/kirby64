glabel func_801E0D00_ovl17
/* 22BEF0 801E0D00 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 22BEF4 801E0D04 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801E0D08_ovl12:
/* 22BEF8 801E0D08 27BDFFC0 */  addiu      $sp, $sp, -0x40
glabel func_801E0D0C_ovl12
/* 22BEFC 801E0D0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 22BF00 801E0D10 AFA40040 */  sw         $a0, 0x40($sp)
.L801E0D14_ovl10:
/* 22BF04 801E0D14 8C620000 */  lw         $v0, 0x0($v1)
/* 22BF08 801E0D18 3C0E800E */  lui        $t6, %hi(D_800E7880)
/* 22BF0C 801E0D1C 24010001 */  addiu      $at, $zero, 0x1
/* 22BF10 801E0D20 01C27021 */  addu       $t6, $t6, $v0
glabel func_801E0D24_ovl15
/* 22BF14 801E0D24 91CE7880 */  lbu        $t6, %lo(D_800E7880)($t6)
/* 22BF18 801E0D28 15C10006 */  bne        $t6, $at, .L801E0D44_ovl17
/* 22BF1C 801E0D2C 00000000 */   nop
/* 22BF20 801E0D30 0C078569 */  jal        func_801E15A4_ovl17
/* 22BF24 801E0D34 00000000 */   nop
.L801E0D38_ovl16:
/* 22BF28 801E0D38 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 22BF2C 801E0D3C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801E0D40_ovl15:
/* 22BF30 801E0D40 8C620000 */  lw         $v0, 0x0($v1)
.L801E0D44_ovl17:
/* 22BF34 801E0D44 3C0F800B */  lui        $t7, %hi(func_800B4924)
/* 22BF38 801E0D48 0002C080 */  sll        $t8, $v0, 2
/* 22BF3C 801E0D4C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 22BF40 801E0D50 00380821 */  addu       $at, $at, $t8
/* 22BF44 801E0D54 25EF4924 */  addiu      $t7, $t7, %lo(func_800B4924)
.L801E0D58_ovl16:
/* 22BF48 801E0D58 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 22BF4C 801E0D5C 8C680000 */  lw         $t0, 0x0($v1)
.L801E0D60_ovl15:
/* 22BF50 801E0D60 3C01800E */  lui        $at, %hi(D_800DF150)
glabel func_801E0D64_ovl12
/* 22BF54 801E0D64 3C19801E */  lui        $t9, %hi(func_801E109C_ovl17)
/* 22BF58 801E0D68 00084880 */  sll        $t1, $t0, 2
/* 22BF5C 801E0D6C 00290821 */  addu       $at, $at, $t1
glabel func_801E0D70_ovl14
/* 22BF60 801E0D70 2739109C */  addiu      $t9, $t9, %lo(func_801E109C_ovl17)
/* 22BF64 801E0D74 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
glabel func_801E0D78_ovl14
/* 22BF68 801E0D78 8C6A0000 */  lw         $t2, 0x0($v1)
/* 22BF6C 801E0D7C 3C01800F */  lui        $at, %hi(D_800E8920)
.L801E0D80_ovl10:
/* 22BF70 801E0D80 3C0D800E */  lui        $t5, %hi(D_800E7880)
/* 22BF74 801E0D84 000A5880 */  sll        $t3, $t2, 2
.L801E0D88_ovl15:
/* 22BF78 801E0D88 002B0821 */  addu       $at, $at, $t3
/* 22BF7C 801E0D8C AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 22BF80 801E0D90 8C6C0000 */  lw         $t4, 0x0($v1)
.L801E0D94_ovl15:
/* 22BF84 801E0D94 01AC6821 */  addu       $t5, $t5, $t4
/* 22BF88 801E0D98 91AD7880 */  lbu        $t5, %lo(D_800E7880)($t5)
/* 22BF8C 801E0D9C 15A00005 */  bnez       $t5, .L801E0DB4_ovl17
/* 22BF90 801E0DA0 00000000 */   nop
/* 22BF94 801E0DA4 0C006291 */  jal        random_soft_s32_range
/* 22BF98 801E0DA8 2404001E */   addiu     $a0, $zero, 0x1E
.L801E0DAC_ovl16:
/* 22BF9C 801E0DAC 10000004 */  b          .L801E0DC0_ovl17
/* 22BFA0 801E0DB0 AFA2003C */   sw        $v0, 0x3C($sp)
.L801E0DB4_ovl17:
/* 22BFA4 801E0DB4 0C006291 */  jal        random_soft_s32_range
/* 22BFA8 801E0DB8 24040014 */   addiu     $a0, $zero, 0x14
/* 22BFAC 801E0DBC AFA2003C */  sw         $v0, 0x3C($sp)
.L801E0DC0_ovl17:
/* 22BFB0 801E0DC0 44822000 */  mtc1       $v0, $f4
/* 22BFB4 801E0DC4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 22BFB8 801E0DC8 44814000 */  mtc1       $at, $f8
/* 22BFBC 801E0DCC 468021A0 */  cvt.s.w    $f6, $f4
.L801E0DD0_ovl16:
/* 22BFC0 801E0DD0 3C014248 */  lui        $at, (0x42480000 >> 16)
.L801E0DD4_ovl15:
/* 22BFC4 801E0DD4 44819000 */  mtc1       $at, $f18
/* 22BFC8 801E0DD8 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 22BFCC 801E0DDC 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
.L801E0DE0_ovl12:
/* 22BFD0 801E0DE0 3C08800E */  lui        $t0, %hi(D_800E7880)
.L801E0DE4_ovl15:
/* 22BFD4 801E0DE4 46083280 */  add.s      $f10, $f6, $f8
/* 22BFD8 801E0DE8 8DF80000 */  lw         $t8, 0x0($t7)
/* 22BFDC 801E0DEC 24010002 */  addiu      $at, $zero, 0x2
.L801E0DF0_ovl16:
/* 22BFE0 801E0DF0 3C040001 */  lui        $a0, (0x100BC >> 16)
/* 22BFE4 801E0DF4 460A9103 */  div.s      $f4, $f18, $f10
glabel func_801E0DF8_ovl12
/* 22BFE8 801E0DF8 01184021 */  addu       $t0, $t0, $t8
.L801E0DFC_ovl9:
/* 22BFEC 801E0DFC 91087880 */  lbu        $t0, %lo(D_800E7880)($t0)
.L801E0E00_ovl16:
/* 22BFF0 801E0E00 348400BC */  ori        $a0, $a0, (0x100BC & 0xFFFF)
/* 22BFF4 801E0E04 24050023 */  addiu      $a1, $zero, 0x23
.L801E0E08_ovl16:
/* 22BFF8 801E0E08 24060010 */  addiu      $a2, $zero, 0x10
/* 22BFFC 801E0E0C 4600218D */  trunc.w.s  $f6, $f4
/* 22C000 801E0E10 44033000 */  mfc1       $v1, $f6
/* 22C004 801E0E14 15010009 */  bne        $t0, $at, .L801E0E3C_ovl17
/* 22C008 801E0E18 00603825 */   or        $a3, $v1, $zero
/* 22C00C 801E0E1C 44834000 */  mtc1       $v1, $f8
/* 22C010 801E0E20 3C01801E */  lui        $at, %hi(D_801E5680_ovl17)
glabel func_801E0E24_ovl9
/* 22C014 801E0E24 C42A5680 */  lwc1       $f10, %lo(D_801E5680_ovl17)($at)
/* 22C018 801E0E28 468044A0 */  cvt.s.w    $f18, $f8
/* 22C01C 801E0E2C 460A9102 */  mul.s      $f4, $f18, $f10
.L801E0E30_ovl15:
/* 22C020 801E0E30 4600218D */  trunc.w.s  $f6, $f4
/* 22C024 801E0E34 44073000 */  mfc1       $a3, $f6
/* 22C028 801E0E38 00000000 */  nop
.L801E0E3C_ovl17:
/* 22C02C 801E0E3C 0C02A619 */  jal        func_800A9864
.L801E0E40_ovl15:
/* 22C030 801E0E40 AFA70038 */   sw        $a3, 0x38($sp)
.L801E0E44_ovl15:
/* 22C034 801E0E44 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 22C038 801E0E48 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 22C03C 801E0E4C 3C01800E */  lui        $at, %hi(D_800DDA90)
/* 22C040 801E0E50 24090025 */  addiu      $t1, $zero, 0x25
/* 22C044 801E0E54 8D4B0000 */  lw         $t3, 0x0($t2)
/* 22C048 801E0E58 3C040001 */  lui        $a0, (0x105C4 >> 16)
/* 22C04C 801E0E5C 348405C4 */  ori        $a0, $a0, (0x105C4 & 0xFFFF)
/* 22C050 801E0E60 000B6080 */  sll        $t4, $t3, 2
/* 22C054 801E0E64 002C0821 */  addu       $at, $at, $t4
.L801E0E68_ovl10:
/* 22C058 801E0E68 0C02A806 */  jal        func_800AA018
/* 22C05C 801E0E6C AC29DA90 */   sw        $t1, %lo(D_800DDA90)($at)
/* 22C060 801E0E70 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801E0E74_ovl16:
/* 22C064 801E0E74 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
glabel func_801E0E78_ovl10
/* 22C068 801E0E78 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 22C06C 801E0E7C 27A4002C */  addiu      $a0, $sp, 0x2C
.L801E0E80_ovl13:
/* 22C070 801E0E80 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22C074 801E0E84 000D7080 */  sll        $t6, $t5, 2
/* 22C078 801E0E88 002E0821 */  addu       $at, $at, $t6
/* 22C07C 801E0E8C C428A6E0 */  lwc1       $f8, %lo(D_800EA6E0)($at)
/* 22C080 801E0E90 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 22C084 801E0E94 E7A8002C */  swc1       $f8, 0x2C($sp)
/* 22C088 801E0E98 8C6F0000 */  lw         $t7, 0x0($v1)
/* 22C08C 801E0E9C 000FC080 */  sll        $t8, $t7, 2
/* 22C090 801E0EA0 00380821 */  addu       $at, $at, $t8
/* 22C094 801E0EA4 C432A8A0 */  lwc1       $f18, %lo(D_800EA8A0)($at)
/* 22C098 801E0EA8 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 22C09C 801E0EAC E7B20030 */  swc1       $f18, 0x30($sp)
/* 22C0A0 801E0EB0 8C680000 */  lw         $t0, 0x0($v1)
/* 22C0A4 801E0EB4 0008C880 */  sll        $t9, $t0, 2
/* 22C0A8 801E0EB8 00390821 */  addu       $at, $at, $t9
.L801E0EBC_ovl12:
/* 22C0AC 801E0EBC C42AAA60 */  lwc1       $f10, %lo(D_800EAA60)($at)
/* 22C0B0 801E0EC0 0C006328 */  jal        lbvector_Normalize
/* 22C0B4 801E0EC4 E7AA0034 */   swc1      $f10, 0x34($sp)
/* 22C0B8 801E0EC8 8FAA0038 */  lw         $t2, 0x38($sp)
/* 22C0BC 801E0ECC 27A4002C */  addiu      $a0, $sp, 0x2C
/* 22C0C0 801E0ED0 448A2000 */  mtc1       $t2, $f4
/* 22C0C4 801E0ED4 00000000 */  nop
/* 22C0C8 801E0ED8 468020A0 */  cvt.s.w    $f2, $f4
.L801E0EDC_ovl10:
/* 22C0CC 801E0EDC 44051000 */  mfc1       $a1, $f2
/* 22C0D0 801E0EE0 0C00639C */  jal        lbvector_Scale
/* 22C0D4 801E0EE4 E7A20020 */   swc1      $f2, 0x20($sp)
/* 22C0D8 801E0EE8 3C014170 */  lui        $at, (0x41700000 >> 16)
/* 22C0DC 801E0EEC 44816000 */  mtc1       $at, $f12
.L801E0EF0_ovl12:
/* 22C0E0 801E0EF0 C7A6002C */  lwc1       $f6, 0x2C($sp)
.L801E0EF4_ovl10:
/* 22C0E4 801E0EF4 3C01801E */  lui        $at, %hi(D_801E5684_ovl17)
.L801E0EF8_ovl16:
/* 22C0E8 801E0EF8 C42E5684 */  lwc1       $f14, %lo(D_801E5684_ovl17)($at)
/* 22C0EC 801E0EFC 460C3002 */  mul.s      $f0, $f6, $f12
/* 22C0F0 801E0F00 C7A8002C */  lwc1       $f8, 0x2C($sp)
glabel func_801E0F04_ovl16
/* 22C0F4 801E0F04 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 22C0F8 801E0F08 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 22C0FC 801E0F0C 460E4482 */  mul.s      $f18, $f8, $f14
/* 22C100 801E0F10 C7A20020 */  lwc1       $f2, 0x20($sp)
/* 22C104 801E0F14 8C6B0000 */  lw         $t3, 0x0($v1)
/* 22C108 801E0F18 3C01800E */  lui        $at, %hi(D_800E3050)
/* 22C10C 801E0F1C 44808000 */  mtc1       $zero, $f16
/* 22C110 801E0F20 000B4880 */  sll        $t1, $t3, 2
/* 22C114 801E0F24 00290821 */  addu       $at, $at, $t1
.L801E0F28_ovl10:
/* 22C118 801E0F28 46029282 */  mul.s      $f10, $f18, $f2
/* 22C11C 801E0F2C E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 22C120 801E0F30 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22C124 801E0F34 4610003C */  c.lt.s     $f0, $f16
/* 22C128 801E0F38 3C01800E */  lui        $at, %hi(D_800E3590)
/* 22C12C 801E0F3C 000C6880 */  sll        $t5, $t4, 2
.L801E0F40_ovl10:
/* 22C130 801E0F40 002D0821 */  addu       $at, $at, $t5
glabel func_801E0F44_ovl15
/* 22C134 801E0F44 45000008 */  bc1f       .L801E0F68_ovl17
/* 22C138 801E0F48 E42A3590 */   swc1      $f10, %lo(D_800E3590)($at)
/* 22C13C 801E0F4C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22C140 801E0F50 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 22C144 801E0F54 46000107 */  neg.s      $f4, $f0
.L801E0F58_ovl10:
/* 22C148 801E0F58 000E7880 */  sll        $t7, $t6, 2
/* 22C14C 801E0F5C 002F0821 */  addu       $at, $at, $t7
.L801E0F60_ovl16:
/* 22C150 801E0F60 10000006 */  b          .L801E0F7C_ovl17
/* 22C154 801E0F64 E4243AD0 */   swc1      $f4, %lo(D_800E3AD0)($at)
.L801E0F68_ovl17:
/* 22C158 801E0F68 8C780000 */  lw         $t8, 0x0($v1)
/* 22C15C 801E0F6C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 22C160 801E0F70 00184080 */  sll        $t0, $t8, 2
/* 22C164 801E0F74 00280821 */  addu       $at, $at, $t0
/* 22C168 801E0F78 E4203AD0 */  swc1       $f0, %lo(D_800E3AD0)($at)
.L801E0F7C_ovl17:
/* 22C16C 801E0F7C C7A60030 */  lwc1       $f6, 0x30($sp)
/* 22C170 801E0F80 C7A80030 */  lwc1       $f8, 0x30($sp)
/* 22C174 801E0F84 8C790000 */  lw         $t9, 0x0($v1)
/* 22C178 801E0F88 460C3002 */  mul.s      $f0, $f6, $f12
.L801E0F8C_ovl10:
/* 22C17C 801E0F8C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 22C180 801E0F90 00195080 */  sll        $t2, $t9, 2
/* 22C184 801E0F94 460E4482 */  mul.s      $f18, $f8, $f14
.L801E0F98_ovl12:
/* 22C188 801E0F98 002A0821 */  addu       $at, $at, $t2
/* 22C18C 801E0F9C E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 22C190 801E0FA0 8C6B0000 */  lw         $t3, 0x0($v1)
.L801E0FA4_ovl10:
/* 22C194 801E0FA4 4610003C */  c.lt.s     $f0, $f16
glabel func_801E0FA8_ovl14
/* 22C198 801E0FA8 46029282 */  mul.s      $f10, $f18, $f2
/* 22C19C 801E0FAC 3C01800E */  lui        $at, %hi(D_800E3750)
glabel func_801E0FB0_ovl14
/* 22C1A0 801E0FB0 000B4880 */  sll        $t1, $t3, 2
/* 22C1A4 801E0FB4 00290821 */  addu       $at, $at, $t1
/* 22C1A8 801E0FB8 45000008 */  bc1f       .L801E0FDC_ovl17
/* 22C1AC 801E0FBC E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
.L801E0FC0_ovl10:
/* 22C1B0 801E0FC0 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22C1B4 801E0FC4 3C01800E */  lui        $at, %hi(D_800E3C90)
glabel func_801E0FC8_ovl12
/* 22C1B8 801E0FC8 46000107 */  neg.s      $f4, $f0
/* 22C1BC 801E0FCC 000C6880 */  sll        $t5, $t4, 2
/* 22C1C0 801E0FD0 002D0821 */  addu       $at, $at, $t5
.L801E0FD4_ovl10:
/* 22C1C4 801E0FD4 10000006 */  b          .L801E0FF0_ovl17
.L801E0FD8_ovl15:
/* 22C1C8 801E0FD8 E4243C90 */   swc1      $f4, %lo(D_800E3C90)($at)
.L801E0FDC_ovl17:
/* 22C1CC 801E0FDC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22C1D0 801E0FE0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 22C1D4 801E0FE4 000E7880 */  sll        $t7, $t6, 2
.L801E0FE8_ovl16:
/* 22C1D8 801E0FE8 002F0821 */  addu       $at, $at, $t7
/* 22C1DC 801E0FEC E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L801E0FF0_ovl17:
/* 22C1E0 801E0FF0 C7A60034 */  lwc1       $f6, 0x34($sp)
.L801E0FF4_ovl15:
/* 22C1E4 801E0FF4 C7A80034 */  lwc1       $f8, 0x34($sp)
/* 22C1E8 801E0FF8 8C780000 */  lw         $t8, 0x0($v1)
.L801E0FFC_ovl10:
/* 22C1EC 801E0FFC 460C3002 */  mul.s      $f0, $f6, $f12
.L801E1000_ovl16:
/* 22C1F0 801E1000 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 22C1F4 801E1004 00184080 */  sll        $t0, $t8, 2
/* 22C1F8 801E1008 460E4482 */  mul.s      $f18, $f8, $f14
glabel func_801E100C_ovl10
/* 22C1FC 801E100C 00280821 */  addu       $at, $at, $t0
/* 22C200 801E1010 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 22C204 801E1014 8C790000 */  lw         $t9, 0x0($v1)
/* 22C208 801E1018 4610003C */  c.lt.s     $f0, $f16
.L801E101C_ovl9:
/* 22C20C 801E101C 46029282 */  mul.s      $f10, $f18, $f2
/* 22C210 801E1020 3C01800E */  lui        $at, %hi(D_800E3910)
/* 22C214 801E1024 00195080 */  sll        $t2, $t9, 2
.L801E1028_ovl13:
/* 22C218 801E1028 002A0821 */  addu       $at, $at, $t2
/* 22C21C 801E102C 45000008 */  bc1f       .L801E1050_ovl17
.L801E1030_ovl15:
/* 22C220 801E1030 E42A3910 */   swc1      $f10, %lo(D_800E3910)($at)
/* 22C224 801E1034 8C6B0000 */  lw         $t3, 0x0($v1)
/* 22C228 801E1038 3C01800E */  lui        $at, %hi(D_800E3E50)
/* 22C22C 801E103C 46000107 */  neg.s      $f4, $f0
/* 22C230 801E1040 000B4880 */  sll        $t1, $t3, 2
/* 22C234 801E1044 00290821 */  addu       $at, $at, $t1
.L801E1048_ovl15:
/* 22C238 801E1048 10000006 */  b          .L801E1064_ovl17
/* 22C23C 801E104C E4243E50 */   swc1      $f4, %lo(D_800E3E50)($at)
.L801E1050_ovl17:
/* 22C240 801E1050 8C6C0000 */  lw         $t4, 0x0($v1)
/* 22C244 801E1054 3C01800E */  lui        $at, %hi(D_800E3E50)
.L801E1058_ovl13:
/* 22C248 801E1058 000C6880 */  sll        $t5, $t4, 2
.L801E105C_ovl9:
/* 22C24C 801E105C 002D0821 */  addu       $at, $at, $t5
/* 22C250 801E1060 E4203E50 */  swc1       $f0, %lo(D_800E3E50)($at)
.L801E1064_ovl17:
/* 22C254 801E1064 8C6E0000 */  lw         $t6, 0x0($v1)
/* 22C258 801E1068 8FA4003C */  lw         $a0, 0x3C($sp)
/* 22C25C 801E106C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 22C260 801E1070 000E7880 */  sll        $t7, $t6, 2
/* 22C264 801E1074 002F0821 */  addu       $at, $at, $t7
/* 22C268 801E1078 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 22C26C 801E107C 0C002DAF */  jal        finish_current_thread
/* 22C270 801E1080 24840014 */   addiu     $a0, $a0, 0x14
/* 22C274 801E1084 0C07845C */  jal        func_801E1170_ovl17
/* 22C278 801E1088 8FA40040 */   lw        $a0, 0x40($sp)
.L801E108C_ovl12:
/* 22C27C 801E108C 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E1090_ovl9:
/* 22C280 801E1090 27BD0040 */  addiu      $sp, $sp, 0x40
.L801E1094_ovl12:
/* 22C284 801E1094 03E00008 */  jr         $ra
/* 22C288 801E1098 00000000 */   nop
