.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801E0D00_ovl17
/* 22BEF0 801E0D00 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22BEF4 801E0D04 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22BEF8 801E0D08 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 22BEFC 801E0D0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22BF00 801E0D10 AFA40040 */  sw    $a0, 0x40($sp)
/* 22BF04 801E0D14 8C620000 */  lw    $v0, ($v1)
/* 22BF08 801E0D18 3C0E800E */ lui $t6, %hi(D_800E7880)
/* 22BF0C 801E0D1C 24010001 */  li    $at, 1
/* 22BF10 801E0D20 01C27021 */  addu  $t6, $t6, $v0
/* 22BF14 801E0D24 91CE7880 */ lbu $t6, %lo(D_800E7880)($t6)
/* 22BF18 801E0D28 15C10006 */  bne   $t6, $at, .L801E0D44_ovl17
/* 22BF1C 801E0D2C 00000000 */   nop   
/* 22BF20 801E0D30 0C078569 */  jal   func_801E15A4_ovl17
/* 22BF24 801E0D34 00000000 */   nop   
/* 22BF28 801E0D38 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22BF2C 801E0D3C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22BF30 801E0D40 8C620000 */  lw    $v0, ($v1)
.L801E0D44_ovl17:
/* 22BF34 801E0D44 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 22BF38 801E0D48 0002C080 */  sll   $t8, $v0, 2
/* 22BF3C 801E0D4C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22BF40 801E0D50 00380821 */  addu  $at, $at, $t8
/* 22BF44 801E0D54 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 22BF48 801E0D58 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 22BF4C 801E0D5C 8C680000 */  lw    $t0, ($v1)
/* 22BF50 801E0D60 3C01800E */ lui $at, %hi(D_800DF150)
/* 22BF54 801E0D64 3C19801E */  lui   $t9, %hi(D_801E109C) # $t9, 0x801e
/* 22BF58 801E0D68 00084880 */  sll   $t1, $t0, 2
/* 22BF5C 801E0D6C 00290821 */  addu  $at, $at, $t1
/* 22BF60 801E0D70 2739109C */  addiu $t9, %lo(D_801E109C) # addiu $t9, $t9, 0x109c
/* 22BF64 801E0D74 AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 22BF68 801E0D78 8C6A0000 */  lw    $t2, ($v1)
/* 22BF6C 801E0D7C 3C01800F */ lui $at, %hi(D_800E8920)
/* 22BF70 801E0D80 3C0D800E */ lui $t5, %hi(D_800E7880)
/* 22BF74 801E0D84 000A5880 */  sll   $t3, $t2, 2
/* 22BF78 801E0D88 002B0821 */  addu  $at, $at, $t3
/* 22BF7C 801E0D8C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22BF80 801E0D90 8C6C0000 */  lw    $t4, ($v1)
/* 22BF84 801E0D94 01AC6821 */  addu  $t5, $t5, $t4
/* 22BF88 801E0D98 91AD7880 */ lbu $t5, %lo(D_800E7880)($t5)
/* 22BF8C 801E0D9C 15A00005 */  bnez  $t5, .L801E0DB4_ovl17
/* 22BF90 801E0DA0 00000000 */   nop   
/* 22BF94 801E0DA4 0C006291 */  jal   random_soft_s32_range
/* 22BF98 801E0DA8 2404001E */   li    $a0, 30
/* 22BF9C 801E0DAC 10000004 */  b     .L801E0DC0_ovl17
/* 22BFA0 801E0DB0 AFA2003C */   sw    $v0, 0x3c($sp)
.L801E0DB4_ovl17:
/* 22BFA4 801E0DB4 0C006291 */  jal   random_soft_s32_range
/* 22BFA8 801E0DB8 24040014 */   li    $a0, 20
/* 22BFAC 801E0DBC AFA2003C */  sw    $v0, 0x3c($sp)
.L801E0DC0_ovl17:
/* 22BFB0 801E0DC0 44822000 */  mtc1  $v0, $f4
/* 22BFB4 801E0DC4 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 22BFB8 801E0DC8 44814000 */  mtc1  $at, $f8
/* 22BFBC 801E0DCC 468021A0 */  cvt.s.w $f6, $f4
/* 22BFC0 801E0DD0 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 22BFC4 801E0DD4 44819000 */  mtc1  $at, $f18
/* 22BFC8 801E0DD8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22BFCC 801E0DDC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22BFD0 801E0DE0 3C08800E */ lui $t0, %hi(D_800E7880)
/* 22BFD4 801E0DE4 46083280 */  add.s $f10, $f6, $f8
/* 22BFD8 801E0DE8 8DF80000 */  lw    $t8, ($t7)
/* 22BFDC 801E0DEC 24010002 */  li    $at, 2
/* 22BFE0 801E0DF0 3C040001 */  lui   $a0, (0x000100BC >> 16) # lui $a0, 1
/* 22BFE4 801E0DF4 460A9103 */  div.s $f4, $f18, $f10
/* 22BFE8 801E0DF8 01184021 */  addu  $t0, $t0, $t8
/* 22BFEC 801E0DFC 91087880 */ lbu $t0, %lo(D_800E7880)($t0)
/* 22BFF0 801E0E00 348400BC */  ori   $a0, (0x000100BC & 0xFFFF) # ori $a0, $a0, 0xbc
/* 22BFF4 801E0E04 24050023 */  li    $a1, 35
/* 22BFF8 801E0E08 24060010 */  li    $a2, 16
/* 22BFFC 801E0E0C 4600218D */  trunc.w.s $f6, $f4
/* 22C000 801E0E10 44033000 */  mfc1  $v1, $f6
/* 22C004 801E0E14 15010009 */  bne   $t0, $at, .L801E0E3C_ovl17
/* 22C008 801E0E18 00603825 */   move  $a3, $v1
/* 22C00C 801E0E1C 44834000 */  mtc1  $v1, $f8
/* 22C010 801E0E20 3C01801E */  lui   $at, %hi(D_801E5680) # $at, 0x801e
/* 22C014 801E0E24 C42A5680 */  lwc1  $f10, %lo(D_801E5680)($at)
/* 22C018 801E0E28 468044A0 */  cvt.s.w $f18, $f8
/* 22C01C 801E0E2C 460A9102 */  mul.s $f4, $f18, $f10
/* 22C020 801E0E30 4600218D */  trunc.w.s $f6, $f4
/* 22C024 801E0E34 44073000 */  mfc1  $a3, $f6
/* 22C028 801E0E38 00000000 */  nop   
.L801E0E3C_ovl17:
/* 22C02C 801E0E3C 0C02A619 */  jal   func_800A9864
/* 22C030 801E0E40 AFA70038 */   sw    $a3, 0x38($sp)
/* 22C034 801E0E44 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 22C038 801E0E48 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 22C03C 801E0E4C 3C01800E */ lui $at, %hi(D_800DDA90)
/* 22C040 801E0E50 24090025 */  li    $t1, 37
/* 22C044 801E0E54 8D4B0000 */  lw    $t3, ($t2)
/* 22C048 801E0E58 3C040001 */  lui   $a0, (0x000105C4 >> 16) # lui $a0, 1
/* 22C04C 801E0E5C 348405C4 */  ori   $a0, (0x000105C4 & 0xFFFF) # ori $a0, $a0, 0x5c4
/* 22C050 801E0E60 000B6080 */  sll   $t4, $t3, 2
/* 22C054 801E0E64 002C0821 */  addu  $at, $at, $t4
/* 22C058 801E0E68 0C02A806 */  jal   func_800AA018
/* 22C05C 801E0E6C AC29DA90 */ sw $t1, %lo(D_800DDA90)($at)
/* 22C060 801E0E70 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22C064 801E0E74 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22C068 801E0E78 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 22C06C 801E0E7C 27A4002C */  addiu $a0, $sp, 0x2c
/* 22C070 801E0E80 8C6D0000 */  lw    $t5, ($v1)
/* 22C074 801E0E84 000D7080 */  sll   $t6, $t5, 2
/* 22C078 801E0E88 002E0821 */  addu  $at, $at, $t6
/* 22C07C 801E0E8C C428A6E0 */ lwc1 $f8, %lo(D_800EA6E0)($at)
/* 22C080 801E0E90 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 22C084 801E0E94 E7A8002C */  swc1  $f8, 0x2c($sp)
/* 22C088 801E0E98 8C6F0000 */  lw    $t7, ($v1)
/* 22C08C 801E0E9C 000FC080 */  sll   $t8, $t7, 2
/* 22C090 801E0EA0 00380821 */  addu  $at, $at, $t8
/* 22C094 801E0EA4 C432A8A0 */ lwc1 $f18, %lo(D_800EA8A0)($at)
/* 22C098 801E0EA8 3C01800F */ lui $at, %hi(D_800EAA60)
/* 22C09C 801E0EAC E7B20030 */  swc1  $f18, 0x30($sp)
/* 22C0A0 801E0EB0 8C680000 */  lw    $t0, ($v1)
/* 22C0A4 801E0EB4 0008C880 */  sll   $t9, $t0, 2
/* 22C0A8 801E0EB8 00390821 */  addu  $at, $at, $t9
/* 22C0AC 801E0EBC C42AAA60 */ lwc1 $f10, %lo(D_800EAA60)($at)
/* 22C0B0 801E0EC0 0C006328 */  jal   lbvector_Normalize
/* 22C0B4 801E0EC4 E7AA0034 */   swc1  $f10, 0x34($sp)
/* 22C0B8 801E0EC8 8FAA0038 */  lw    $t2, 0x38($sp)
/* 22C0BC 801E0ECC 27A4002C */  addiu $a0, $sp, 0x2c
/* 22C0C0 801E0ED0 448A2000 */  mtc1  $t2, $f4
/* 22C0C4 801E0ED4 00000000 */  nop   
/* 22C0C8 801E0ED8 468020A0 */  cvt.s.w $f2, $f4
/* 22C0CC 801E0EDC 44051000 */  mfc1  $a1, $f2
/* 22C0D0 801E0EE0 0C00639C */  jal   lbvector_Scale
/* 22C0D4 801E0EE4 E7A20020 */   swc1  $f2, 0x20($sp)
/* 22C0D8 801E0EE8 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 22C0DC 801E0EEC 44816000 */  mtc1  $at, $f12
/* 22C0E0 801E0EF0 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 22C0E4 801E0EF4 3C01801E */  lui   $at, %hi(D_801E5684) # $at, 0x801e
/* 22C0E8 801E0EF8 C42E5684 */  lwc1  $f14, %lo(D_801E5684)($at)
/* 22C0EC 801E0EFC 460C3002 */  mul.s $f0, $f6, $f12
/* 22C0F0 801E0F00 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 22C0F4 801E0F04 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22C0F8 801E0F08 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22C0FC 801E0F0C 460E4482 */  mul.s $f18, $f8, $f14
/* 22C100 801E0F10 C7A20020 */  lwc1  $f2, 0x20($sp)
/* 22C104 801E0F14 8C6B0000 */  lw    $t3, ($v1)
/* 22C108 801E0F18 3C01800E */ lui $at, %hi(D_800E3050)
/* 22C10C 801E0F1C 44808000 */  mtc1  $zero, $f16
/* 22C110 801E0F20 000B4880 */  sll   $t1, $t3, 2
/* 22C114 801E0F24 00290821 */  addu  $at, $at, $t1
/* 22C118 801E0F28 46029282 */  mul.s $f10, $f18, $f2
/* 22C11C 801E0F2C E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 22C120 801E0F30 8C6C0000 */  lw    $t4, ($v1)
/* 22C124 801E0F34 4610003C */  c.lt.s $f0, $f16
/* 22C128 801E0F38 3C01800E */ lui $at, %hi(D_800E3590)
/* 22C12C 801E0F3C 000C6880 */  sll   $t5, $t4, 2
/* 22C130 801E0F40 002D0821 */  addu  $at, $at, $t5
/* 22C134 801E0F44 45000008 */  bc1f  .L801E0F68_ovl17
/* 22C138 801E0F48 E42A3590 */ swc1 $f10, %lo(D_800E3590)($at)
/* 22C13C 801E0F4C 8C6E0000 */  lw    $t6, ($v1)
/* 22C140 801E0F50 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22C144 801E0F54 46000107 */  neg.s $f4, $f0
/* 22C148 801E0F58 000E7880 */  sll   $t7, $t6, 2
/* 22C14C 801E0F5C 002F0821 */  addu  $at, $at, $t7
/* 22C150 801E0F60 10000006 */  b     .L801E0F7C_ovl17
/* 22C154 801E0F64 E4243AD0 */ swc1 $f4, %lo(D_800E3AD0)($at)
.L801E0F68_ovl17:
/* 22C158 801E0F68 8C780000 */  lw    $t8, ($v1)
/* 22C15C 801E0F6C 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22C160 801E0F70 00184080 */  sll   $t0, $t8, 2
/* 22C164 801E0F74 00280821 */  addu  $at, $at, $t0
/* 22C168 801E0F78 E4203AD0 */ swc1 $f0, %lo(D_800E3AD0)($at)
.L801E0F7C_ovl17:
/* 22C16C 801E0F7C C7A60030 */  lwc1  $f6, 0x30($sp)
/* 22C170 801E0F80 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 22C174 801E0F84 8C790000 */  lw    $t9, ($v1)
/* 22C178 801E0F88 460C3002 */  mul.s $f0, $f6, $f12
/* 22C17C 801E0F8C 3C01800E */ lui $at, %hi(D_800E3210)
/* 22C180 801E0F90 00195080 */  sll   $t2, $t9, 2
/* 22C184 801E0F94 460E4482 */  mul.s $f18, $f8, $f14
/* 22C188 801E0F98 002A0821 */  addu  $at, $at, $t2
/* 22C18C 801E0F9C E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 22C190 801E0FA0 8C6B0000 */  lw    $t3, ($v1)
/* 22C194 801E0FA4 4610003C */  c.lt.s $f0, $f16
/* 22C198 801E0FA8 46029282 */  mul.s $f10, $f18, $f2
/* 22C19C 801E0FAC 3C01800E */ lui $at, %hi(D_800E3750)
/* 22C1A0 801E0FB0 000B4880 */  sll   $t1, $t3, 2
/* 22C1A4 801E0FB4 00290821 */  addu  $at, $at, $t1
/* 22C1A8 801E0FB8 45000008 */  bc1f  .L801E0FDC_ovl17
/* 22C1AC 801E0FBC E42A3750 */ swc1 $f10, %lo(D_800E3750)($at)
/* 22C1B0 801E0FC0 8C6C0000 */  lw    $t4, ($v1)
/* 22C1B4 801E0FC4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22C1B8 801E0FC8 46000107 */  neg.s $f4, $f0
/* 22C1BC 801E0FCC 000C6880 */  sll   $t5, $t4, 2
/* 22C1C0 801E0FD0 002D0821 */  addu  $at, $at, $t5
/* 22C1C4 801E0FD4 10000006 */  b     .L801E0FF0_ovl17
/* 22C1C8 801E0FD8 E4243C90 */ swc1 $f4, %lo(D_800E3C90)($at)
.L801E0FDC_ovl17:
/* 22C1CC 801E0FDC 8C6E0000 */  lw    $t6, ($v1)
/* 22C1D0 801E0FE0 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22C1D4 801E0FE4 000E7880 */  sll   $t7, $t6, 2
/* 22C1D8 801E0FE8 002F0821 */  addu  $at, $at, $t7
/* 22C1DC 801E0FEC E4203C90 */ swc1 $f0, %lo(D_800E3C90)($at)
.L801E0FF0_ovl17:
/* 22C1E0 801E0FF0 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 22C1E4 801E0FF4 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 22C1E8 801E0FF8 8C780000 */  lw    $t8, ($v1)
/* 22C1EC 801E0FFC 460C3002 */  mul.s $f0, $f6, $f12
/* 22C1F0 801E1000 3C01800E */ lui $at, %hi(D_800E33D0)
/* 22C1F4 801E1004 00184080 */  sll   $t0, $t8, 2
/* 22C1F8 801E1008 460E4482 */  mul.s $f18, $f8, $f14
/* 22C1FC 801E100C 00280821 */  addu  $at, $at, $t0
/* 22C200 801E1010 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 22C204 801E1014 8C790000 */  lw    $t9, ($v1)
/* 22C208 801E1018 4610003C */  c.lt.s $f0, $f16
/* 22C20C 801E101C 46029282 */  mul.s $f10, $f18, $f2
/* 22C210 801E1020 3C01800E */ lui $at, %hi(D_800E3910)
/* 22C214 801E1024 00195080 */  sll   $t2, $t9, 2
/* 22C218 801E1028 002A0821 */  addu  $at, $at, $t2
/* 22C21C 801E102C 45000008 */  bc1f  .L801E1050_ovl17
/* 22C220 801E1030 E42A3910 */ swc1 $f10, %lo(D_800E3910)($at)
/* 22C224 801E1034 8C6B0000 */  lw    $t3, ($v1)
/* 22C228 801E1038 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22C22C 801E103C 46000107 */  neg.s $f4, $f0
/* 22C230 801E1040 000B4880 */  sll   $t1, $t3, 2
/* 22C234 801E1044 00290821 */  addu  $at, $at, $t1
/* 22C238 801E1048 10000006 */  b     .L801E1064_ovl17
/* 22C23C 801E104C E4243E50 */ swc1 $f4, %lo(D_800E3E50)($at)
.L801E1050_ovl17:
/* 22C240 801E1050 8C6C0000 */  lw    $t4, ($v1)
/* 22C244 801E1054 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22C248 801E1058 000C6880 */  sll   $t5, $t4, 2
/* 22C24C 801E105C 002D0821 */  addu  $at, $at, $t5
/* 22C250 801E1060 E4203E50 */ swc1 $f0, %lo(D_800E3E50)($at)
.L801E1064_ovl17:
/* 22C254 801E1064 8C6E0000 */  lw    $t6, ($v1)
/* 22C258 801E1068 8FA4003C */  lw    $a0, 0x3c($sp)
/* 22C25C 801E106C 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22C260 801E1070 000E7880 */  sll   $t7, $t6, 2
/* 22C264 801E1074 002F0821 */  addu  $at, $at, $t7
/* 22C268 801E1078 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 22C26C 801E107C 0C002DAF */  jal   finish_current_thread
/* 22C270 801E1080 24840014 */   addiu $a0, $a0, 0x14
/* 22C274 801E1084 0C07845C */  jal   func_801E1170_ovl17
/* 22C278 801E1088 8FA40040 */   lw    $a0, 0x40($sp)
/* 22C27C 801E108C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22C280 801E1090 27BD0040 */  addiu $sp, $sp, 0x40
/* 22C284 801E1094 03E00008 */  jr    $ra
/* 22C288 801E1098 00000000 */   nop   
.type func_801E0D00_ovl17, @function
.size func_801E0D00_ovl17, . - func_801E0D00_ovl17

glabel func_801E109C_ovl17
/* 22C28C 801E109C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22C290 801E10A0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22C294 801E10A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22C298 801E10A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22C29C 801E10AC AFA40018 */  sw    $a0, 0x18($sp)
/* 22C2A0 801E10B0 8C6E0000 */  lw    $t6, ($v1)
/* 22C2A4 801E10B4 3C18800F */  lui   $t8, %hi(D_800E98E0) # $t8, 0x800f
/* 22C2A8 801E10B8 271898E0 */  addiu $t8, %lo(D_800E98E0) # addiu $t8, $t8, -0x6720
/* 22C2AC 801E10BC 000E7880 */  sll   $t7, $t6, 2
/* 22C2B0 801E10C0 01F82021 */  addu  $a0, $t7, $t8
/* 22C2B4 801E10C4 8C990000 */  lw    $t9, ($a0)
/* 22C2B8 801E10C8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 22C2BC 801E10CC 27280001 */  addiu $t0, $t9, 1
/* 22C2C0 801E10D0 AC880000 */  sw    $t0, ($a0)
/* 22C2C4 801E10D4 8C620000 */  lw    $v0, ($v1)
/* 22C2C8 801E10D8 00021080 */  sll   $v0, $v0, 2
/* 22C2CC 801E10DC 00220821 */  addu  $at, $at, $v0
/* 22C2D0 801E10E0 C4202950 */ lwc1 $f0, %lo(gEntitiesNextPosZArray)($at)
/* 22C2D4 801E10E4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 22C2D8 801E10E8 00220821 */  addu  $at, $at, $v0
/* 22C2DC 801E10EC C42225D0 */ lwc1 $f2, %lo(gEntitiesNextPosXArray)($at)
/* 22C2E0 801E10F0 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 22C2E4 801E10F4 00220821 */  addu  $at, $at, $v0
/* 22C2E8 801E10F8 46021102 */  mul.s $f4, $f2, $f2
/* 22C2EC 801E10FC C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 22C2F0 801E1100 460E7182 */  mul.s $f6, $f14, $f14
/* 22C2F4 801E1104 46062200 */  add.s $f8, $f4, $f6
/* 22C2F8 801E1108 46000282 */  mul.s $f10, $f0, $f0
/* 22C2FC 801E110C 0C00CAC8 */  jal   sqrtf
/* 22C300 801E1110 46085300 */   add.s $f12, $f10, $f8
/* 22C304 801E1114 3C01800D */  lui   $at, %hi(D_800D716C) # $at, 0x800d
/* 22C308 801E1118 C430716C */  lwc1  $f16, %lo(D_800D716C)($at)
/* 22C30C 801E111C 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 22C310 801E1120 44819000 */  mtc1  $at, $f18
/* 22C314 801E1124 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22C318 801E1128 46128101 */  sub.s $f4, $f16, $f18
/* 22C31C 801E112C 4600203C */  c.lt.s $f4, $f0
/* 22C320 801E1130 00000000 */  nop   
/* 22C324 801E1134 4502000B */  bc1fl .L801E1164_ovl17
/* 22C328 801E1138 8FBF0014 */   lw    $ra, 0x14($sp)
/* 22C32C 801E113C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22C330 801E1140 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22C334 801E1144 3C05801E */  lui   $a1, %hi(func_801E1170) # $a1, 0x801e
/* 22C338 801E1148 8D2A0000 */  lw    $t2, ($t1)
/* 22C33C 801E114C 24A51170 */  addiu $a1, %lo(func_801E1170) # addiu $a1, $a1, 0x1170
/* 22C340 801E1150 000A5880 */  sll   $t3, $t2, 2
/* 22C344 801E1154 008B2021 */  addu  $a0, $a0, $t3
/* 22C348 801E1158 0C02C7B2 */  jal   assign_new_process_entry
/* 22C34C 801E115C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22C350 801E1160 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E1164_ovl17:
/* 22C354 801E1164 27BD0018 */  addiu $sp, $sp, 0x18
/* 22C358 801E1168 03E00008 */  jr    $ra
/* 22C35C 801E116C 00000000 */   nop   
.type func_801E109C_ovl17, @function
.size func_801E109C_ovl17, . - func_801E109C_ovl17

glabel func_801E1170_ovl17
/* 22C360 801E1170 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 22C364 801E1174 AFB20030 */  sw    $s2, 0x30($sp)
/* 22C368 801E1178 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 22C36C 801E117C 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 22C370 801E1180 8E4E0000 */  lw    $t6, ($s2)
/* 22C374 801E1184 AFBF0034 */  sw    $ra, 0x34($sp)
/* 22C378 801E1188 AFB1002C */  sw    $s1, 0x2c($sp)
/* 22C37C 801E118C AFB00028 */  sw    $s0, 0x28($sp)
/* 22C380 801E1190 AFA40038 */  sw    $a0, 0x38($sp)
/* 22C384 801E1194 8DCF0000 */  lw    $t7, ($t6)
/* 22C388 801E1198 3C11800E */ lui $s1, %hi(D_800E1B50)
/* 22C38C 801E119C 000FC080 */  sll   $t8, $t7, 2
/* 22C390 801E11A0 02388821 */  addu  $s1, $s1, $t8
/* 22C394 801E11A4 0C006279 */  jal   random_soft_f32
/* 22C398 801E11A8 8E311B50 */ lw $s1, %lo(D_800E1B50)($s1)
/* 22C39C 801E11AC 3C01801E */  lui   $at, %hi(D_801E5688) # $at, 0x801e
/* 22C3A0 801E11B0 C4245688 */  lwc1  $f4, %lo(D_801E5688)($at)
/* 22C3A4 801E11B4 8E590000 */  lw    $t9, ($s2)
/* 22C3A8 801E11B8 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 22C3AC 801E11BC 46040182 */  mul.s $f6, $f0, $f4
/* 22C3B0 801E11C0 8F280000 */  lw    $t0, ($t9)
/* 22C3B4 801E11C4 00084880 */  sll   $t1, $t0, 2
/* 22C3B8 801E11C8 00290821 */  addu  $at, $at, $t1
/* 22C3BC 801E11CC 0C006279 */  jal   random_soft_f32
/* 22C3C0 801E11D0 E4264010 */ swc1 $f6, %lo(gEntitiesAngleXArray)($at)
/* 22C3C4 801E11D4 3C01801E */  lui   $at, %hi(D_801E568C) # $at, 0x801e
/* 22C3C8 801E11D8 C428568C */  lwc1  $f8, %lo(D_801E568C)($at)
/* 22C3CC 801E11DC 8E4A0000 */  lw    $t2, ($s2)
/* 22C3D0 801E11E0 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 22C3D4 801E11E4 46080282 */  mul.s $f10, $f0, $f8
/* 22C3D8 801E11E8 8D4B0000 */  lw    $t3, ($t2)
/* 22C3DC 801E11EC 000B6080 */  sll   $t4, $t3, 2
/* 22C3E0 801E11F0 002C0821 */  addu  $at, $at, $t4
/* 22C3E4 801E11F4 0C006279 */  jal   random_soft_f32
/* 22C3E8 801E11F8 E42A41D0 */ swc1 $f10, %lo(gEntitiesAngleYArray)($at)
/* 22C3EC 801E11FC 3C01801E */  lui   $at, %hi(D_801E5690) # $at, 0x801e
/* 22C3F0 801E1200 C4305690 */  lwc1  $f16, %lo(D_801E5690)($at)
/* 22C3F4 801E1204 8E500000 */  lw    $s0, ($s2)
/* 22C3F8 801E1208 3C03800E */  lui   $v1, %hi(gEntitiesAngleZArray) # $v1, 0x800e
/* 22C3FC 801E120C 46100482 */  mul.s $f18, $f0, $f16
/* 22C400 801E1210 8E0D0000 */  lw    $t5, ($s0)
/* 22C404 801E1214 24634390 */  addiu $v1, %lo(gEntitiesAngleZArray) # addiu $v1, $v1, 0x4390
/* 22C408 801E1218 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 22C40C 801E121C 000D7080 */  sll   $t6, $t5, 2
/* 22C410 801E1220 006E7821 */  addu  $t7, $v1, $t6
/* 22C414 801E1224 3C05800E */ lui $a1, %hi(gEntitiesNextPosXArray)
/* 22C418 801E1228 E5F20000 */  swc1  $f18, ($t7)
/* 22C41C 801E122C 8E020000 */  lw    $v0, ($s0)
/* 22C420 801E1230 8E380094 */  lw    $t8, 0x94($s1)
/* 22C424 801E1234 3C06800E */ lui $a2, %hi(gEntitiesNextPosYArray)
/* 22C428 801E1238 00021080 */  sll   $v0, $v0, 2
/* 22C42C 801E123C 00220821 */  addu  $at, $at, $v0
/* 22C430 801E1240 C4244010 */ lwc1 $f4, %lo(gEntitiesAngleXArray)($at)
/* 22C434 801E1244 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 22C438 801E1248 00220821 */  addu  $at, $at, $v0
/* 22C43C 801E124C 0062C821 */  addu  $t9, $v1, $v0
/* 22C440 801E1250 C7280000 */  lwc1  $f8, ($t9)
/* 22C444 801E1254 C42641D0 */ lwc1 $f6, %lo(gEntitiesAngleYArray)($at)
/* 22C448 801E1258 3C07800E */ lui $a3, %hi(gEntitiesNextPosZArray)
/* 22C44C 801E125C 8F040018 */  lw    $a0, 0x18($t8)
/* 22C450 801E1260 00E23821 */  addu  $a3, $a3, $v0
/* 22C454 801E1264 00A22821 */  addu  $a1, $a1, $v0
/* 22C458 801E1268 00C23021 */  addu  $a2, $a2, $v0
/* 22C45C 801E126C 8CC62790 */ lw $a2, %lo(gEntitiesNextPosYArray)($a2)
/* 22C460 801E1270 8CA525D0 */ lw $a1, %lo(gEntitiesNextPosXArray)($a1)
/* 22C464 801E1274 8CE72950 */ lw $a3, %lo(gEntitiesNextPosZArray)($a3)
/* 22C468 801E1278 E7A40010 */  swc1  $f4, 0x10($sp)
/* 22C46C 801E127C E7A80018 */  swc1  $f8, 0x18($sp)
/* 22C470 801E1280 0C03F61D */  jal   func_800FD874
/* 22C474 801E1284 E7A60014 */   swc1  $f6, 0x14($sp)
/* 22C478 801E1288 8E480000 */  lw    $t0, ($s2)
/* 22C47C 801E128C 8D020000 */  lw    $v0, ($t0)
/* 22C480 801E1290 30490001 */  andi  $t1, $v0, 1
/* 22C484 801E1294 5120000B */  beql  $t1, $zero, .L801E12C4_ovl17
/* 22C488 801E1298 00026880 */   sll   $t5, $v0, 2
/* 22C48C 801E129C 8E2A0094 */  lw    $t2, 0x94($s1)
/* 22C490 801E12A0 3C018000 */  lui   $at, 0x8000
/* 22C494 801E12A4 8D44001C */  lw    $a0, 0x1c($t2)
/* 22C498 801E12A8 50810006 */  beql  $a0, $at, .L801E12C4_ovl17
/* 22C49C 801E12AC 00026880 */   sll   $t5, $v0, 2
/* 22C4A0 801E12B0 0C029D9E */  jal   play_sound
/* 22C4A4 801E12B4 00000000 */   nop   
/* 22C4A8 801E12B8 8E4B0000 */  lw    $t3, ($s2)
/* 22C4AC 801E12BC 8D620000 */  lw    $v0, ($t3)
/* 22C4B0 801E12C0 00026880 */  sll   $t5, $v0, 2
.L801E12C4_ovl17:
/* 22C4B4 801E12C4 3C01800E */ lui $at, %hi(D_800DDA90)
/* 22C4B8 801E12C8 3C0F801E */  lui   $t7, %hi(D_801E5154) # $t7, 0x801e
/* 22C4BC 801E12CC 002D0821 */  addu  $at, $at, $t5
/* 22C4C0 801E12D0 240C0023 */  li    $t4, 35
/* 22C4C4 801E12D4 25EF5154 */  addiu $t7, %lo(D_801E5154) # addiu $t7, $t7, 0x5154
/* 22C4C8 801E12D8 3C0E801E */  lui   $t6, %hi(D_801E5710) # $t6, 0x801e
/* 22C4CC 801E12DC AC2CDA90 */ sw $t4, %lo(D_800DDA90)($at)
/* 22C4D0 801E12E0 25CE5710 */  addiu $t6, %lo(D_801E5710) # addiu $t6, $t6, 0x5710
/* 22C4D4 801E12E4 25E80024 */  addiu $t0, $t7, 0x24
.L801E12E8_ovl17:
/* 22C4D8 801E12E8 8DF90000 */  lw    $t9, ($t7)
/* 22C4DC 801E12EC 25EF000C */  addiu $t7, $t7, 0xc
/* 22C4E0 801E12F0 25CE000C */  addiu $t6, $t6, 0xc
/* 22C4E4 801E12F4 ADD9FFF4 */  sw    $t9, -0xc($t6)
/* 22C4E8 801E12F8 8DF8FFF8 */  lw    $t8, -8($t7)
/* 22C4EC 801E12FC ADD8FFF8 */  sw    $t8, -8($t6)
/* 22C4F0 801E1300 8DF9FFFC */  lw    $t9, -4($t7)
/* 22C4F4 801E1304 15E8FFF8 */  bne   $t7, $t0, .L801E12E8_ovl17
/* 22C4F8 801E1308 ADD9FFFC */   sw    $t9, -4($t6)
/* 22C4FC 801E130C 3C09801D */  lui   $t1, %hi(D_801CA28C) # $t1, 0x801d
/* 22C500 801E1310 2529A28C */  addiu $t1, %lo(D_801CA28C) # addiu $t1, $t1, -0x5d74
/* 22C504 801E1314 AE29008C */  sw    $t1, 0x8c($s1)
/* 22C508 801E1318 AE200090 */  sw    $zero, 0x90($s1)
/* 22C50C 801E131C 8E450000 */  lw    $a1, ($s2)
/* 22C510 801E1320 3C01800E */ lui $at, %hi(D_800E0D50)
/* 22C514 801E1324 240AFFFF */  li    $t2, -1
/* 22C518 801E1328 8CAB0000 */  lw    $t3, ($a1)
/* 22C51C 801E132C 3C0F801E */  lui   $t7, %hi(D_801E1424) # $t7, 0x801e
/* 22C520 801E1330 25EF1424 */  addiu $t7, %lo(D_801E1424) # addiu $t7, $t7, 0x1424
/* 22C524 801E1334 000B6080 */  sll   $t4, $t3, 2
/* 22C528 801E1338 002C0821 */  addu  $at, $at, $t4
/* 22C52C 801E133C AC2A0D50 */ sw $t2, %lo(D_800E0D50)($at)
/* 22C530 801E1340 8CAD0000 */  lw    $t5, ($a1)
/* 22C534 801E1344 3C01801E */  lui   $at, %hi(D_801E5694) # $at, 0x801e
/* 22C538 801E1348 C42A5694 */  lwc1  $f10, %lo(D_801E5694)($at)
/* 22C53C 801E134C 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22C540 801E1350 000D4080 */  sll   $t0, $t5, 2
/* 22C544 801E1354 00280821 */  addu  $at, $at, $t0
/* 22C548 801E1358 E42A7B20 */ swc1 $f10, %lo(D_800E7B20)($at)
/* 22C54C 801E135C 8CAE0000 */  lw    $t6, ($a1)
/* 22C550 801E1360 3C01800E */ lui $at, %hi(D_800DF150)
/* 22C554 801E1364 00002025 */  move  $a0, $zero
/* 22C558 801E1368 000EC080 */  sll   $t8, $t6, 2
/* 22C55C 801E136C 00380821 */  addu  $at, $at, $t8
/* 22C560 801E1370 0C02BEED */  jal   func_800AFBB4
/* 22C564 801E1374 AC2FF150 */ sw $t7, %lo(D_800DF150)($at)
/* 22C568 801E1378 0C02BD02 */  jal   func_800AF408
/* 22C56C 801E137C 00000000 */   nop   
/* 22C570 801E1380 8E500000 */  lw    $s0, ($s2)
/* 22C574 801E1384 3C11800F */  lui   $s1, %hi(D_800E9560) # $s1, 0x800f
/* 22C578 801E1388 26319560 */  addiu $s1, %lo(D_800E9560) # addiu $s1, $s1, -0x6aa0
/* 22C57C 801E138C 8E190000 */  lw    $t9, ($s0)
/* 22C580 801E1390 00194880 */  sll   $t1, $t9, 2
/* 22C584 801E1394 02295821 */  addu  $t3, $s1, $t1
/* 22C588 801E1398 AD600000 */  sw    $zero, ($t3)
/* 22C58C 801E139C 8E0A0000 */  lw    $t2, ($s0)
/* 22C590 801E13A0 000A6080 */  sll   $t4, $t2, 2
/* 22C594 801E13A4 022C6821 */  addu  $t5, $s1, $t4
/* 22C598 801E13A8 8DA80000 */  lw    $t0, ($t5)
/* 22C59C 801E13AC 29010011 */  slti  $at, $t0, 0x11
/* 22C5A0 801E13B0 10200011 */  beqz  $at, .L801E13F8_ovl17
/* 22C5A4 801E13B4 00000000 */   nop   
.L801E13B8_ovl17:
/* 22C5A8 801E13B8 0C002DAF */  jal   finish_current_thread
/* 22C5AC 801E13BC 24040001 */   li    $a0, 1
/* 22C5B0 801E13C0 8E500000 */  lw    $s0, ($s2)
/* 22C5B4 801E13C4 8E0E0000 */  lw    $t6, ($s0)
/* 22C5B8 801E13C8 000E7880 */  sll   $t7, $t6, 2
/* 22C5BC 801E13CC 022F1021 */  addu  $v0, $s1, $t7
/* 22C5C0 801E13D0 8C580000 */  lw    $t8, ($v0)
/* 22C5C4 801E13D4 27190001 */  addiu $t9, $t8, 1
/* 22C5C8 801E13D8 AC590000 */  sw    $t9, ($v0)
/* 22C5CC 801E13DC 8E090000 */  lw    $t1, ($s0)
/* 22C5D0 801E13E0 00095880 */  sll   $t3, $t1, 2
/* 22C5D4 801E13E4 022B5021 */  addu  $t2, $s1, $t3
/* 22C5D8 801E13E8 8D4C0000 */  lw    $t4, ($t2)
/* 22C5DC 801E13EC 29810011 */  slti  $at, $t4, 0x11
/* 22C5E0 801E13F0 1420FFF1 */  bnez  $at, .L801E13B8_ovl17
/* 22C5E4 801E13F4 00000000 */   nop   
.L801E13F8_ovl17:
/* 22C5E8 801E13F8 0C002DAF */  jal   finish_current_thread
/* 22C5EC 801E13FC 24040002 */   li    $a0, 2
/* 22C5F0 801E1400 8E4D0000 */  lw    $t5, ($s2)
/* 22C5F4 801E1404 0C067656 */  jal   func_8019D958_ovl17
/* 22C5F8 801E1408 95A40002 */   lhu   $a0, 2($t5)
/* 22C5FC 801E140C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 22C600 801E1410 8FB00028 */  lw    $s0, 0x28($sp)
/* 22C604 801E1414 8FB1002C */  lw    $s1, 0x2c($sp)
/* 22C608 801E1418 8FB20030 */  lw    $s2, 0x30($sp)
/* 22C60C 801E141C 03E00008 */  jr    $ra
/* 22C610 801E1420 27BD0038 */   addiu $sp, $sp, 0x38
.type func_801E1170_ovl17, @function
.size func_801E1170_ovl17, . - func_801E1170_ovl17

glabel func_801E1424_ovl17
/* 22C614 801E1424 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22C618 801E1428 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22C61C 801E142C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22C620 801E1430 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22C624 801E1434 AFA40018 */  sw    $a0, 0x18($sp)
/* 22C628 801E1438 8DC20000 */  lw    $v0, ($t6)
/* 22C62C 801E143C 3C03800F */ lui $v1, %hi(D_800E9560)
/* 22C630 801E1440 3C04800E */ lui $a0, %hi(D_800E1B50)
/* 22C634 801E1444 00021080 */  sll   $v0, $v0, 2
/* 22C638 801E1448 00621821 */  addu  $v1, $v1, $v0
/* 22C63C 801E144C 8C639560 */ lw $v1, %lo(D_800E9560)($v1)
/* 22C640 801E1450 00822021 */  addu  $a0, $a0, $v0
/* 22C644 801E1454 8C841B50 */ lw $a0, %lo(D_800E1B50)($a0)
/* 22C648 801E1458 28610011 */  slti  $at, $v1, 0x11
/* 22C64C 801E145C 50200011 */  beql  $at, $zero, .L801E14A4_ovl17
/* 22C650 801E1460 8FBF0014 */   lw    $ra, 0x14($sp)
/* 22C654 801E1464 44832000 */  mtc1  $v1, $f4
/* 22C658 801E1468 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 22C65C 801E146C 44814000 */  mtc1  $at, $f8
/* 22C660 801E1470 468021A0 */  cvt.s.w $f6, $f4
/* 22C664 801E1474 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 22C668 801E1478 44818000 */  mtc1  $at, $f16
/* 22C66C 801E147C 3C014234 */  li    $at, 0x42340000 # 45.000000
/* 22C670 801E1480 44812000 */  mtc1  $at, $f4
/* 22C674 801E1484 8C8F008C */  lw    $t7, 0x8c($a0)
/* 22C678 801E1488 46083280 */  add.s $f10, $f6, $f8
/* 22C67C 801E148C 8DF80008 */  lw    $t8, 8($t7)
/* 22C680 801E1490 46105483 */  div.s $f18, $f10, $f16
/* 22C684 801E1494 46049182 */  mul.s $f6, $f18, $f4
/* 22C688 801E1498 0C07852C */  jal   func_801E14B0_ovl17
/* 22C68C 801E149C E7060014 */   swc1  $f6, 0x14($t8)
/* 22C690 801E14A0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E14A4_ovl17:
/* 22C694 801E14A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 22C698 801E14A8 03E00008 */  jr    $ra
/* 22C69C 801E14AC 00000000 */   nop   
.type func_801E1424_ovl17, @function
.size func_801E1424_ovl17, . - func_801E1424_ovl17

glabel func_801E14B0_ovl17
/* 22C6A0 801E14B0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22C6A4 801E14B4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22C6A8 801E14B8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 22C6AC 801E14BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 22C6B0 801E14C0 AFB00018 */  sw    $s0, 0x18($sp)
/* 22C6B4 801E14C4 8DC20000 */  lw    $v0, ($t6)
/* 22C6B8 801E14C8 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 22C6BC 801E14CC 00027880 */  sll   $t7, $v0, 2
/* 22C6C0 801E14D0 020F8021 */  addu  $s0, $s0, $t7
/* 22C6C4 801E14D4 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 22C6C8 801E14D8 8E18008C */  lw    $t8, 0x8c($s0)
/* 22C6CC 801E14DC 17000003 */  bnez  $t8, .L801E14EC_ovl17
/* 22C6D0 801E14E0 00000000 */   nop   
/* 22C6D4 801E14E4 1000002A */  b     .L801E1590_ovl17
/* 22C6D8 801E14E8 00001025 */   move  $v0, $zero
.L801E14EC_ovl17:
/* 22C6DC 801E14EC 0C044554 */  jal   func_80111550
/* 22C6E0 801E14F0 00402025 */   move  $a0, $v0
/* 22C6E4 801E14F4 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22C6E8 801E14F8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22C6EC 801E14FC 8E04008C */  lw    $a0, 0x8c($s0)
/* 22C6F0 801E1500 0C044722 */  jal   func_80111C88
/* 22C6F4 801E1504 8F250000 */   lw    $a1, ($t9)
/* 22C6F8 801E1508 0C0447B3 */  jal   func_80111ECC
/* 22C6FC 801E150C 00402025 */   move  $a0, $v0
/* 22C700 801E1510 0C044054 */  jal   func_80110150
/* 22C704 801E1514 27A4002C */   addiu $a0, $sp, 0x2c
/* 22C708 801E1518 1040000C */  beqz  $v0, .L801E154C_ovl17
/* 22C70C 801E151C 3C0D8005 */   lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 22C710 801E1520 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22C714 801E1524 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22C718 801E1528 93A8002E */  lbu   $t0, 0x2e($sp)
/* 22C71C 801E152C 3C01800F */ lui $at, %hi(D_800E83E0)
/* 22C720 801E1530 8D2A0000 */  lw    $t2, ($t1)
/* 22C724 801E1534 93AC002F */  lbu   $t4, 0x2f($sp)
/* 22C728 801E1538 000A5880 */  sll   $t3, $t2, 2
/* 22C72C 801E153C 002B0821 */  addu  $at, $at, $t3
/* 22C730 801E1540 AC2883E0 */ sw $t0, %lo(D_800E83E0)($at)
/* 22C734 801E1544 10000008 */  b     .L801E1568_ovl17
/* 22C738 801E1548 A20C0043 */   sb    $t4, 0x43($s0)
.L801E154C_ovl17:
/* 22C73C 801E154C 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 22C740 801E1550 3C01800F */ lui $at, %hi(D_800E83E0)
/* 22C744 801E1554 8DAE0000 */  lw    $t6, ($t5)
/* 22C748 801E1558 000E7880 */  sll   $t7, $t6, 2
/* 22C74C 801E155C 002F0821 */  addu  $at, $at, $t7
/* 22C750 801E1560 AC2083E0 */ sw $zero, %lo(D_800E83E0)($at)
/* 22C754 801E1564 A2000043 */  sb    $zero, 0x43($s0)
.L801E1568_ovl17:
/* 22C758 801E1568 8E040090 */  lw    $a0, 0x90($s0)
/* 22C75C 801E156C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 22C760 801E1570 50800007 */  beql  $a0, $zero, .L801E1590_ovl17
/* 22C764 801E1574 00001025 */   move  $v0, $zero
/* 22C768 801E1578 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 22C76C 801E157C 0C044681 */  jal   func_80111A04
/* 22C770 801E1580 8F050000 */   lw    $a1, ($t8)
/* 22C774 801E1584 0C044713 */  jal   func_80111C4C
/* 22C778 801E1588 00402025 */   move  $a0, $v0
/* 22C77C 801E158C 00001025 */  move  $v0, $zero
.L801E1590_ovl17:
/* 22C780 801E1590 8FBF001C */  lw    $ra, 0x1c($sp)
/* 22C784 801E1594 8FB00018 */  lw    $s0, 0x18($sp)
/* 22C788 801E1598 27BD0050 */  addiu $sp, $sp, 0x50
/* 22C78C 801E159C 03E00008 */  jr    $ra
/* 22C790 801E15A0 00000000 */   nop   
.type func_801E14B0_ovl17, @function
.size func_801E14B0_ovl17, . - func_801E14B0_ovl17

glabel func_801E15A4_ovl17
/* 22C794 801E15A4 27BDFF88 */  addiu $sp, $sp, -0x78
/* 22C798 801E15A8 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 22C79C 801E15AC 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 22C7A0 801E15B0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 22C7A4 801E15B4 AFBE0038 */  sw    $fp, 0x38($sp)
/* 22C7A8 801E15B8 AFB70034 */  sw    $s7, 0x34($sp)
/* 22C7AC 801E15BC AFB60030 */  sw    $s6, 0x30($sp)
/* 22C7B0 801E15C0 AFB5002C */  sw    $s5, 0x2c($sp)
/* 22C7B4 801E15C4 AFB40028 */  sw    $s4, 0x28($sp)
/* 22C7B8 801E15C8 AFB30024 */  sw    $s3, 0x24($sp)
/* 22C7BC 801E15CC AFB20020 */  sw    $s2, 0x20($sp)
/* 22C7C0 801E15D0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 22C7C4 801E15D4 AFB00018 */  sw    $s0, 0x18($sp)
/* 22C7C8 801E15D8 AFA40078 */  sw    $a0, 0x78($sp)
/* 22C7CC 801E15DC 8CE20000 */  lw    $v0, ($a3)
/* 22C7D0 801E15E0 3C0E800E */ lui $t6, %hi(D_800E1B50)
/* 22C7D4 801E15E4 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 22C7D8 801E15E8 00021080 */  sll   $v0, $v0, 2
/* 22C7DC 801E15EC 01C27021 */  addu  $t6, $t6, $v0
/* 22C7E0 801E15F0 8DCE1B50 */ lw $t6, %lo(D_800E1B50)($t6)
/* 22C7E4 801E15F4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22C7E8 801E15F8 00220821 */  addu  $at, $at, $v0
/* 22C7EC 801E15FC 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 22C7F0 801E1600 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 22C7F4 801E1604 AFAE0050 */  sw    $t6, 0x50($sp)
/* 22C7F8 801E1608 8CF90000 */  lw    $t9, ($a3)
/* 22C7FC 801E160C 3C01800E */ lui $at, %hi(D_800DF150)
/* 22C800 801E1610 3C18801E */  lui   $t8, %hi(D_801E1890) # $t8, 0x801e
/* 22C804 801E1614 00194080 */  sll   $t0, $t9, 2
/* 22C808 801E1618 00280821 */  addu  $at, $at, $t0
/* 22C80C 801E161C 27181890 */  addiu $t8, %lo(D_801E1890) # addiu $t8, $t8, 0x1890
/* 22C810 801E1620 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 22C814 801E1624 8CE90000 */  lw    $t1, ($a3)
/* 22C818 801E1628 3C01800F */ lui $at, %hi(D_800E8920)
/* 22C81C 801E162C 3C040001 */  lui   $a0, (0x000100BB >> 16) # lui $a0, 1
/* 22C820 801E1630 00095080 */  sll   $t2, $t1, 2
/* 22C824 801E1634 002A0821 */  addu  $at, $at, $t2
/* 22C828 801E1638 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22C82C 801E163C 348400BB */  ori   $a0, (0x000100BB & 0xFFFF) # ori $a0, $a0, 0xbb
/* 22C830 801E1640 24050023 */  li    $a1, 35
/* 22C834 801E1644 0C02A619 */  jal   func_800A9864
/* 22C838 801E1648 24060010 */   li    $a2, 16
/* 22C83C 801E164C 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 22C840 801E1650 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 22C844 801E1654 3C01800E */ lui $at, %hi(D_800DDA90)
/* 22C848 801E1658 240B0025 */  li    $t3, 37
/* 22C84C 801E165C 8D8D0000 */  lw    $t5, ($t4)
/* 22C850 801E1660 3C040001 */  lui   $a0, (0x000105C3 >> 16) # lui $a0, 1
/* 22C854 801E1664 348405C3 */  ori   $a0, (0x000105C3 & 0xFFFF) # ori $a0, $a0, 0x5c3
/* 22C858 801E1668 000D7080 */  sll   $t6, $t5, 2
/* 22C85C 801E166C 002E0821 */  addu  $at, $at, $t6
/* 22C860 801E1670 0C02A806 */  jal   func_800AA018
/* 22C864 801E1674 AC2BDA90 */ sw $t3, %lo(D_800DDA90)($at)
/* 22C868 801E1678 0C078658 */  jal   func_801E1960_ovl17
/* 22C86C 801E167C 00000000 */   nop   
/* 22C870 801E1680 0C002DAF */  jal   finish_current_thread
/* 22C874 801E1684 2404000D */   li    $a0, 13
/* 22C878 801E1688 0C006291 */  jal   random_soft_s32_range
/* 22C87C 801E168C 24040005 */   li    $a0, 5
/* 22C880 801E1690 AFA20060 */  sw    $v0, 0x60($sp)
/* 22C884 801E1694 0C006291 */  jal   random_soft_s32_range
/* 22C888 801E1698 24040004 */   li    $a0, 4
/* 22C88C 801E169C 244F0005 */  addiu $t7, $v0, 5
/* 22C890 801E16A0 AFAF0064 */  sw    $t7, 0x64($sp)
/* 22C894 801E16A4 0C006291 */  jal   random_soft_s32_range
/* 22C898 801E16A8 2404000A */   li    $a0, 10
/* 22C89C 801E16AC 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 22C8A0 801E16B0 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 22C8A4 801E16B4 AFA20068 */  sw    $v0, 0x68($sp)
/* 22C8A8 801E16B8 3C12800F */  lui   $s2, %hi(D_800E9560) # $s2, 0x800f
/* 22C8AC 801E16BC 8CF90000 */  lw    $t9, ($a3)
/* 22C8B0 801E16C0 26529560 */  addiu $s2, %lo(D_800E9560) # addiu $s2, $s2, -0x6aa0
/* 22C8B4 801E16C4 3C17800F */  lui   $s7, %hi(D_800EA8A0) # $s7, 0x800f
/* 22C8B8 801E16C8 0019C080 */  sll   $t8, $t9, 2
/* 22C8BC 801E16CC 02584021 */  addu  $t0, $s2, $t8
/* 22C8C0 801E16D0 AD000000 */  sw    $zero, ($t0)
/* 22C8C4 801E16D4 8CE90000 */  lw    $t1, ($a3)
/* 22C8C8 801E16D8 3C16800F */  lui   $s6, %hi(D_800EA6E0) # $s6, 0x800f
/* 22C8CC 801E16DC 26D6A6E0 */  addiu $s6, %lo(D_800EA6E0) # addiu $s6, $s6, -0x5920
/* 22C8D0 801E16E0 00095080 */  sll   $t2, $t1, 2
/* 22C8D4 801E16E4 024A2821 */  addu  $a1, $s2, $t2
/* 22C8D8 801E16E8 8CA40000 */  lw    $a0, ($a1)
/* 22C8DC 801E16EC 26F7A8A0 */  addiu $s7, %lo(D_800EA8A0) # addiu $s7, $s7, -0x5760
/* 22C8E0 801E16F0 27B50054 */  addiu $s5, $sp, 0x54
/* 22C8E4 801E16F4 28810009 */  slti  $at, $a0, 9
/* 22C8E8 801E16F8 10200054 */  beqz  $at, .L801E184C_ovl17
/* 22C8EC 801E16FC 2414000C */   li    $s4, 12
/* 22C8F0 801E1700 3C1E800F */  lui   $fp, %hi(D_800EAA60) # $fp, 0x800f
/* 22C8F4 801E1704 3C13801E */  lui   $s3, %hi(D_801E5430) # $s3, 0x801e
/* 22C8F8 801E1708 26735430 */  addiu $s3, %lo(D_801E5430) # addiu $s3, $s3, 0x5430
/* 22C8FC 801E170C 27DEAA60 */  addiu $fp, %lo(D_800EAA60) # addiu $fp, $fp, -0x55a0
/* 22C900 801E1710 27B0006C */  addiu $s0, $sp, 0x6c
/* 22C904 801E1714 00001825 */  move  $v1, $zero
.L801E1718_ovl17:
/* 22C908 801E1718 27A20060 */  addiu $v0, $sp, 0x60
/* 22C90C 801E171C 8C4C0000 */  lw    $t4, ($v0)
.L801E1720_ovl17:
/* 22C910 801E1720 24420004 */  addiu $v0, $v0, 4
/* 22C914 801E1724 148C0002 */  bne   $a0, $t4, .L801E1730_ovl17
/* 22C918 801E1728 00000000 */   nop   
/* 22C91C 801E172C 24030001 */  li    $v1, 1
.L801E1730_ovl17:
/* 22C920 801E1730 5450FFFB */  bnel  $v0, $s0, .L801E1720_ovl17
/* 22C924 801E1734 8C4C0000 */   lw    $t4, ($v0)
/* 22C928 801E1738 1460003B */  bnez  $v1, .L801E1828_ovl17
/* 22C92C 801E173C 28810005 */   slti  $at, $a0, 5
/* 22C930 801E1740 10200006 */  beqz  $at, .L801E175C_ovl17
/* 22C934 801E1744 2404003C */   li    $a0, 60
/* 22C938 801E1748 2404003C */  li    $a0, 60
/* 22C93C 801E174C 0C06B352 */  jal   func_801ACD48_ovl17
/* 22C940 801E1750 00002825 */   move  $a1, $zero
/* 22C944 801E1754 10000004 */  b     .L801E1768_ovl17
/* 22C948 801E1758 00408825 */   move  $s1, $v0
.L801E175C_ovl17:
/* 22C94C 801E175C 0C06B352 */  jal   func_801ACD48_ovl17
/* 22C950 801E1760 24050002 */   li    $a1, 2
/* 22C954 801E1764 00408825 */  move  $s1, $v0
.L801E1768_ovl17:
/* 22C958 801E1768 10400029 */  beqz  $v0, .L801E1810_ovl17
/* 22C95C 801E176C 3C078005 */   lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 22C960 801E1770 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 22C964 801E1774 02A02025 */  move  $a0, $s5
/* 22C968 801E1778 8CED0000 */  lw    $t5, ($a3)
/* 22C96C 801E177C 000D5880 */  sll   $t3, $t5, 2
/* 22C970 801E1780 024B7021 */  addu  $t6, $s2, $t3
/* 22C974 801E1784 8DCF0000 */  lw    $t7, ($t6)
/* 22C978 801E1788 01F40019 */  multu $t7, $s4
/* 22C97C 801E178C 0000C812 */  mflo  $t9
/* 22C980 801E1790 0279C021 */  addu  $t8, $s3, $t9
/* 22C984 801E1794 C7040000 */  lwc1  $f4, ($t8)
/* 22C988 801E1798 E7A40054 */  swc1  $f4, 0x54($sp)
/* 22C98C 801E179C 8CE80000 */  lw    $t0, ($a3)
/* 22C990 801E17A0 00084880 */  sll   $t1, $t0, 2
/* 22C994 801E17A4 02495021 */  addu  $t2, $s2, $t1
/* 22C998 801E17A8 8D4C0000 */  lw    $t4, ($t2)
/* 22C99C 801E17AC 01940019 */  multu $t4, $s4
/* 22C9A0 801E17B0 00006812 */  mflo  $t5
/* 22C9A4 801E17B4 026D5821 */  addu  $t3, $s3, $t5
/* 22C9A8 801E17B8 C5660004 */  lwc1  $f6, 4($t3)
/* 22C9AC 801E17BC E7A60058 */  swc1  $f6, 0x58($sp)
/* 22C9B0 801E17C0 8CEE0000 */  lw    $t6, ($a3)
/* 22C9B4 801E17C4 000E7880 */  sll   $t7, $t6, 2
/* 22C9B8 801E17C8 024FC821 */  addu  $t9, $s2, $t7
/* 22C9BC 801E17CC 8F380000 */  lw    $t8, ($t9)
/* 22C9C0 801E17D0 03140019 */  multu $t8, $s4
/* 22C9C4 801E17D4 00004012 */  mflo  $t0
/* 22C9C8 801E17D8 02684821 */  addu  $t1, $s3, $t0
/* 22C9CC 801E17DC C5280008 */  lwc1  $f8, 8($t1)
/* 22C9D0 801E17E0 0C078CA3 */  jal   func_801E328C_ovl17
/* 22C9D4 801E17E4 E7A8005C */   swc1  $f8, 0x5c($sp)
/* 22C9D8 801E17E8 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 22C9DC 801E17EC 00111080 */  sll   $v0, $s1, 2
/* 22C9E0 801E17F0 02C25021 */  addu  $t2, $s6, $v0
/* 22C9E4 801E17F4 E54A0000 */  swc1  $f10, ($t2)
/* 22C9E8 801E17F8 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 22C9EC 801E17FC 02E26021 */  addu  $t4, $s7, $v0
/* 22C9F0 801E1800 03C26821 */  addu  $t5, $fp, $v0
/* 22C9F4 801E1804 E5900000 */  swc1  $f16, ($t4)
/* 22C9F8 801E1808 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* 22C9FC 801E180C E5B20000 */  swc1  $f18, ($t5)
.L801E1810_ovl17:
/* 22CA00 801E1810 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 22CA04 801E1814 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 22CA08 801E1818 8CEB0000 */  lw    $t3, ($a3)
/* 22CA0C 801E181C 000B7080 */  sll   $t6, $t3, 2
/* 22CA10 801E1820 024E2821 */  addu  $a1, $s2, $t6
/* 22CA14 801E1824 8CA40000 */  lw    $a0, ($a1)
.L801E1828_ovl17:
/* 22CA18 801E1828 248F0001 */  addiu $t7, $a0, 1
/* 22CA1C 801E182C ACAF0000 */  sw    $t7, ($a1)
/* 22CA20 801E1830 8CF90000 */  lw    $t9, ($a3)
/* 22CA24 801E1834 0019C080 */  sll   $t8, $t9, 2
/* 22CA28 801E1838 02582821 */  addu  $a1, $s2, $t8
/* 22CA2C 801E183C 8CA40000 */  lw    $a0, ($a1)
/* 22CA30 801E1840 28810009 */  slti  $at, $a0, 9
/* 22CA34 801E1844 5420FFB4 */  bnezl $at, .L801E1718_ovl17
/* 22CA38 801E1848 00001825 */   move  $v1, $zero
.L801E184C_ovl17:
/* 22CA3C 801E184C 8FA90050 */  lw    $t1, 0x50($sp)
/* 22CA40 801E1850 24080001 */  li    $t0, 1
/* 22CA44 801E1854 A1280040 */  sb    $t0, 0x40($t1)
/* 22CA48 801E1858 0C068FA0 */  jal   D_801A3E80_ovl17
/* 22CA4C 801E185C 8FA40078 */   lw    $a0, 0x78($sp)
/* 22CA50 801E1860 8FBF003C */  lw    $ra, 0x3c($sp)
/* 22CA54 801E1864 8FB00018 */  lw    $s0, 0x18($sp)
/* 22CA58 801E1868 8FB1001C */  lw    $s1, 0x1c($sp)
/* 22CA5C 801E186C 8FB20020 */  lw    $s2, 0x20($sp)
/* 22CA60 801E1870 8FB30024 */  lw    $s3, 0x24($sp)
/* 22CA64 801E1874 8FB40028 */  lw    $s4, 0x28($sp)
/* 22CA68 801E1878 8FB5002C */  lw    $s5, 0x2c($sp)
/* 22CA6C 801E187C 8FB60030 */  lw    $s6, 0x30($sp)
/* 22CA70 801E1880 8FB70034 */  lw    $s7, 0x34($sp)
/* 22CA74 801E1884 8FBE0038 */  lw    $fp, 0x38($sp)
/* 22CA78 801E1888 03E00008 */  jr    $ra
/* 22CA7C 801E188C 27BD0078 */   addiu $sp, $sp, 0x78
.type func_801E15A4_ovl17, @function
.size func_801E15A4_ovl17, . - func_801E15A4_ovl17

glabel func_801E1890_ovl17
/* 22CA80 801E1890 3C01800F */  lui   $at, %hi(D_800EAC20) # $at, 0x800f
/* 22CA84 801E1894 C420AC20 */  lwc1  $f0, %lo(D_800EAC20)($at)
/* 22CA88 801E1898 44802000 */  mtc1  $zero, $f4
/* 22CA8C 801E189C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22CA90 801E18A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22CA94 801E18A4 4604003C */  c.lt.s $f0, $f4
/* 22CA98 801E18A8 AFA40018 */  sw    $a0, 0x18($sp)
/* 22CA9C 801E18AC 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22CAA0 801E18B0 45020004 */  bc1fl .L801E18C4_ovl17
/* 22CAA4 801E18B4 46000086 */   mov.s $f2, $f0
/* 22CAA8 801E18B8 10000002 */  b     .L801E18C4_ovl17
/* 22CAAC 801E18BC 46000087 */   neg.s $f2, $f0
/* 22CAB0 801E18C0 46000086 */  mov.s $f2, $f0
.L801E18C4_ovl17:
/* 22CAB4 801E18C4 C4267170 */  lwc1  $f6, %lo(D_800D7170)($at)
/* 22CAB8 801E18C8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 22CABC 801E18CC 44814000 */  mtc1  $at, $f8
/* 22CAC0 801E18D0 00000000 */  nop   
/* 22CAC4 801E18D4 46083302 */  mul.s $f12, $f6, $f8
/* 22CAC8 801E18D8 4602603E */  c.le.s $f12, $f2
/* 22CACC 801E18DC 00000000 */  nop   
/* 22CAD0 801E18E0 4500000A */  bc1f  .L801E190C_ovl17
/* 22CAD4 801E18E4 00000000 */   nop   
/* 22CAD8 801E18E8 0C078658 */  jal   func_801E1960_ovl17
/* 22CADC 801E18EC 00000000 */   nop   
/* 22CAE0 801E18F0 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22CAE4 801E18F4 C42A7170 */  lwc1  $f10, %lo(D_800D7170)($at)
/* 22CAE8 801E18F8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 22CAEC 801E18FC 44818000 */  mtc1  $at, $f16
/* 22CAF0 801E1900 00000000 */  nop   
/* 22CAF4 801E1904 46105302 */  mul.s $f12, $f10, $f16
/* 22CAF8 801E1908 00000000 */  nop   
.L801E190C_ovl17:
/* 22CAFC 801E190C 3C01800F */  lui   $at, %hi(D_800EADE0) # $at, 0x800f
/* 22CB00 801E1910 C420ADE0 */  lwc1  $f0, %lo(D_800EADE0)($at)
/* 22CB04 801E1914 44809000 */  mtc1  $zero, $f18
/* 22CB08 801E1918 00000000 */  nop   
/* 22CB0C 801E191C 4612003C */  c.lt.s $f0, $f18
/* 22CB10 801E1920 00000000 */  nop   
/* 22CB14 801E1924 45020004 */  bc1fl .L801E1938_ovl17
/* 22CB18 801E1928 46000086 */   mov.s $f2, $f0
/* 22CB1C 801E192C 10000002 */  b     .L801E1938_ovl17
/* 22CB20 801E1930 46000087 */   neg.s $f2, $f0
/* 22CB24 801E1934 46000086 */  mov.s $f2, $f0
.L801E1938_ovl17:
/* 22CB28 801E1938 4602603E */  c.le.s $f12, $f2
/* 22CB2C 801E193C 00000000 */  nop   
/* 22CB30 801E1940 45020004 */  bc1fl .L801E1954_ovl17
/* 22CB34 801E1944 8FBF0014 */   lw    $ra, 0x14($sp)
/* 22CB38 801E1948 0C078658 */  jal   func_801E1960_ovl17
/* 22CB3C 801E194C 00000000 */   nop   
/* 22CB40 801E1950 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E1954_ovl17:
/* 22CB44 801E1954 27BD0018 */  addiu $sp, $sp, 0x18
/* 22CB48 801E1958 03E00008 */  jr    $ra
/* 22CB4C 801E195C 00000000 */   nop   
.type func_801E1890_ovl17, @function
.size func_801E1890_ovl17, . - func_801E1890_ovl17

glabel func_801E1960_ovl17
/* 22CB50 801E1960 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 22CB54 801E1964 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22CB58 801E1968 0C078CC9 */  jal   func_801E3324_ovl17
/* 22CB5C 801E196C 27A40028 */   addiu $a0, $sp, 0x28
/* 22CB60 801E1970 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22CB64 801E1974 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22CB68 801E1978 C7A40028 */  lwc1  $f4, 0x28($sp)
/* 22CB6C 801E197C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 22CB70 801E1980 8C6E0000 */  lw    $t6, ($v1)
/* 22CB74 801E1984 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 22CB78 801E1988 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 22CB7C 801E198C 000E7880 */  sll   $t7, $t6, 2
/* 22CB80 801E1990 002F0821 */  addu  $at, $at, $t7
/* 22CB84 801E1994 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 22CB88 801E1998 8C780000 */  lw    $t8, ($v1)
/* 22CB8C 801E199C 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 22CB90 801E19A0 44807000 */  mtc1  $zero, $f14
/* 22CB94 801E19A4 0018C880 */  sll   $t9, $t8, 2
/* 22CB98 801E19A8 00390821 */  addu  $at, $at, $t9
/* 22CB9C 801E19AC E426A8A0 */ swc1 $f6, %lo(D_800EA8A0)($at)
/* 22CBA0 801E19B0 8C680000 */  lw    $t0, ($v1)
/* 22CBA4 801E19B4 3C01800F */ lui $at, %hi(D_800EAA60)
/* 22CBA8 801E19B8 27A40028 */  addiu $a0, $sp, 0x28
/* 22CBAC 801E19BC 00084880 */  sll   $t1, $t0, 2
/* 22CBB0 801E19C0 00290821 */  addu  $at, $at, $t1
/* 22CBB4 801E19C4 E428AA60 */ swc1 $f8, %lo(D_800EAA60)($at)
/* 22CBB8 801E19C8 3C01800F */  lui   $at, %hi(D_800EAC20) # $at, 0x800f
/* 22CBBC 801E19CC C420AC20 */  lwc1  $f0, %lo(D_800EAC20)($at)
/* 22CBC0 801E19D0 3C01800D */  lui   $at, %hi(D_800D7170) # $at, 0x800d
/* 22CBC4 801E19D4 460E003C */  c.lt.s $f0, $f14
/* 22CBC8 801E19D8 00000000 */  nop   
/* 22CBCC 801E19DC 45020004 */  bc1fl .L801E19F0_ovl17
/* 22CBD0 801E19E0 46000086 */   mov.s $f2, $f0
/* 22CBD4 801E19E4 10000002 */  b     .L801E19F0_ovl17
/* 22CBD8 801E19E8 46000087 */   neg.s $f2, $f0
/* 22CBDC 801E19EC 46000086 */  mov.s $f2, $f0
.L801E19F0_ovl17:
/* 22CBE0 801E19F0 C42A7170 */  lwc1  $f10, %lo(D_800D7170)($at)
/* 22CBE4 801E19F4 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 22CBE8 801E19F8 44819000 */  mtc1  $at, $f18
/* 22CBEC 801E19FC 3C01800F */  lui   $at, %hi(D_800EADE0) # $at, 0x800f
/* 22CBF0 801E1A00 46125302 */  mul.s $f12, $f10, $f18
/* 22CBF4 801E1A04 4602603E */  c.le.s $f12, $f2
/* 22CBF8 801E1A08 00000000 */  nop   
/* 22CBFC 801E1A0C 4501000E */  bc1t  .L801E1A48_ovl17
/* 22CC00 801E1A10 00000000 */   nop   
/* 22CC04 801E1A14 C420ADE0 */  lwc1  $f0, %lo(D_800EADE0)($at)
/* 22CC08 801E1A18 3C0141C0 */  li    $at, 0x41C00000 # 24.000000
/* 22CC0C 801E1A1C 460E003C */  c.lt.s $f0, $f14
/* 22CC10 801E1A20 00000000 */  nop   
/* 22CC14 801E1A24 45020004 */  bc1fl .L801E1A38_ovl17
/* 22CC18 801E1A28 46000086 */   mov.s $f2, $f0
/* 22CC1C 801E1A2C 10000002 */  b     .L801E1A38_ovl17
/* 22CC20 801E1A30 46000087 */   neg.s $f2, $f0
/* 22CC24 801E1A34 46000086 */  mov.s $f2, $f0
.L801E1A38_ovl17:
/* 22CC28 801E1A38 4602603E */  c.le.s $f12, $f2
/* 22CC2C 801E1A3C 00000000 */  nop   
/* 22CC30 801E1A40 45020005 */  bc1fl .L801E1A58_ovl17
/* 22CC34 801E1A44 44811000 */   mtc1  $at, $f2
.L801E1A48_ovl17:
/* 22CC38 801E1A48 3C01801E */  li    $at, 0x801E0000 # -0.000000
/* 22CC3C 801E1A4C 10000003 */  b     .L801E1A5C_ovl17
/* 22CC40 801E1A50 C4225698 */   lwc1  $f2, %lo(D_801E5698)($at)
/* 22CC44 801E1A54 44811000 */  mtc1  $at, $f2
.L801E1A58_ovl17:
/* 22CC48 801E1A58 00000000 */  nop   
.L801E1A5C_ovl17:
/* 22CC4C 801E1A5C 0C006328 */  jal   lbvector_Normalize
/* 22CC50 801E1A60 E7A20034 */   swc1  $f2, 0x34($sp)
/* 22CC54 801E1A64 3C0141C0 */  li    $at, 0x41C00000 # 24.000000
/* 22CC58 801E1A68 44816000 */  mtc1  $at, $f12
/* 22CC5C 801E1A6C C7A40028 */  lwc1  $f4, 0x28($sp)
/* 22CC60 801E1A70 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 22CC64 801E1A74 44818000 */  mtc1  $at, $f16
/* 22CC68 801E1A78 460C2182 */  mul.s $f6, $f4, $f12
/* 22CC6C 801E1A7C C7A80028 */  lwc1  $f8, 0x28($sp)
/* 22CC70 801E1A80 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22CC74 801E1A84 C7A20034 */  lwc1  $f2, 0x34($sp)
/* 22CC78 801E1A88 46104282 */  mul.s $f10, $f8, $f16
/* 22CC7C 801E1A8C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22CC80 801E1A90 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 22CC84 801E1A94 3C01800E */ lui $at, %hi(D_800E3050)
/* 22CC88 801E1A98 8C6A0000 */  lw    $t2, ($v1)
/* 22CC8C 801E1A9C 46029002 */  mul.s $f0, $f18, $f2
/* 22CC90 801E1AA0 44807000 */  mtc1  $zero, $f14
/* 22CC94 801E1AA4 000A5880 */  sll   $t3, $t2, 2
/* 22CC98 801E1AA8 002B0821 */  addu  $at, $at, $t3
/* 22CC9C 801E1AAC E4263050 */ swc1 $f6, %lo(D_800E3050)($at)
/* 22CCA0 801E1AB0 8C6C0000 */  lw    $t4, ($v1)
/* 22CCA4 801E1AB4 3C01800E */ lui $at, %hi(D_800E3590)
/* 22CCA8 801E1AB8 460E003C */  c.lt.s $f0, $f14
/* 22CCAC 801E1ABC 000C6880 */  sll   $t5, $t4, 2
/* 22CCB0 801E1AC0 002D0821 */  addu  $at, $at, $t5
/* 22CCB4 801E1AC4 E42A3590 */ swc1 $f10, %lo(D_800E3590)($at)
/* 22CCB8 801E1AC8 45020009 */  bc1fl .L801E1AF0_ovl17
/* 22CCBC 801E1ACC 8C780000 */   lw    $t8, ($v1)
/* 22CCC0 801E1AD0 8C6E0000 */  lw    $t6, ($v1)
/* 22CCC4 801E1AD4 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22CCC8 801E1AD8 46000107 */  neg.s $f4, $f0
/* 22CCCC 801E1ADC 000E7880 */  sll   $t7, $t6, 2
/* 22CCD0 801E1AE0 002F0821 */  addu  $at, $at, $t7
/* 22CCD4 801E1AE4 10000006 */  b     .L801E1B00_ovl17
/* 22CCD8 801E1AE8 E4243AD0 */ swc1 $f4, %lo(D_800E3AD0)($at)
/* 22CCDC 801E1AEC 8C780000 */  lw    $t8, ($v1)
.L801E1AF0_ovl17:
/* 22CCE0 801E1AF0 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22CCE4 801E1AF4 0018C880 */  sll   $t9, $t8, 2
/* 22CCE8 801E1AF8 00390821 */  addu  $at, $at, $t9
/* 22CCEC 801E1AFC E4203AD0 */ swc1 $f0, %lo(D_800E3AD0)($at)
.L801E1B00_ovl17:
/* 22CCF0 801E1B00 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 22CCF4 801E1B04 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 22CCF8 801E1B08 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 22CCFC 801E1B0C 460C3202 */  mul.s $f8, $f6, $f12
/* 22CD00 801E1B10 8C680000 */  lw    $t0, ($v1)
/* 22CD04 801E1B14 3C01800E */ lui $at, %hi(D_800E3210)
/* 22CD08 801E1B18 46105482 */  mul.s $f18, $f10, $f16
/* 22CD0C 801E1B1C 00084880 */  sll   $t1, $t0, 2
/* 22CD10 801E1B20 00290821 */  addu  $at, $at, $t1
/* 22CD14 801E1B24 46022002 */  mul.s $f0, $f4, $f2
/* 22CD18 801E1B28 E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 22CD1C 801E1B2C 8C6A0000 */  lw    $t2, ($v1)
/* 22CD20 801E1B30 3C01800E */ lui $at, %hi(D_800E3750)
/* 22CD24 801E1B34 000A5880 */  sll   $t3, $t2, 2
/* 22CD28 801E1B38 002B0821 */  addu  $at, $at, $t3
/* 22CD2C 801E1B3C 460E003C */  c.lt.s $f0, $f14
/* 22CD30 801E1B40 E4323750 */ swc1 $f18, %lo(D_800E3750)($at)
/* 22CD34 801E1B44 45020009 */  bc1fl .L801E1B6C_ovl17
/* 22CD38 801E1B48 8C6E0000 */   lw    $t6, ($v1)
/* 22CD3C 801E1B4C 8C6C0000 */  lw    $t4, ($v1)
/* 22CD40 801E1B50 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22CD44 801E1B54 46000187 */  neg.s $f6, $f0
/* 22CD48 801E1B58 000C6880 */  sll   $t5, $t4, 2
/* 22CD4C 801E1B5C 002D0821 */  addu  $at, $at, $t5
/* 22CD50 801E1B60 10000006 */  b     .L801E1B7C_ovl17
/* 22CD54 801E1B64 E4263C90 */ swc1 $f6, %lo(D_800E3C90)($at)
/* 22CD58 801E1B68 8C6E0000 */  lw    $t6, ($v1)
.L801E1B6C_ovl17:
/* 22CD5C 801E1B6C 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22CD60 801E1B70 000E7880 */  sll   $t7, $t6, 2
/* 22CD64 801E1B74 002F0821 */  addu  $at, $at, $t7
/* 22CD68 801E1B78 E4203C90 */ swc1 $f0, %lo(D_800E3C90)($at)
.L801E1B7C_ovl17:
/* 22CD6C 801E1B7C C7A80030 */  lwc1  $f8, 0x30($sp)
/* 22CD70 801E1B80 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 22CD74 801E1B84 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 22CD78 801E1B88 460C4282 */  mul.s $f10, $f8, $f12
/* 22CD7C 801E1B8C 8C780000 */  lw    $t8, ($v1)
/* 22CD80 801E1B90 3C01800E */ lui $at, %hi(D_800E33D0)
/* 22CD84 801E1B94 46109102 */  mul.s $f4, $f18, $f16
/* 22CD88 801E1B98 0018C880 */  sll   $t9, $t8, 2
/* 22CD8C 801E1B9C 00390821 */  addu  $at, $at, $t9
/* 22CD90 801E1BA0 46023002 */  mul.s $f0, $f6, $f2
/* 22CD94 801E1BA4 E42A33D0 */ swc1 $f10, %lo(D_800E33D0)($at)
/* 22CD98 801E1BA8 8C680000 */  lw    $t0, ($v1)
/* 22CD9C 801E1BAC 3C01800E */ lui $at, %hi(D_800E3910)
/* 22CDA0 801E1BB0 00084880 */  sll   $t1, $t0, 2
/* 22CDA4 801E1BB4 00290821 */  addu  $at, $at, $t1
/* 22CDA8 801E1BB8 460E003C */  c.lt.s $f0, $f14
/* 22CDAC 801E1BBC E4243910 */ swc1 $f4, %lo(D_800E3910)($at)
/* 22CDB0 801E1BC0 45020009 */  bc1fl .L801E1BE8_ovl17
/* 22CDB4 801E1BC4 8C6C0000 */   lw    $t4, ($v1)
/* 22CDB8 801E1BC8 8C6A0000 */  lw    $t2, ($v1)
/* 22CDBC 801E1BCC 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22CDC0 801E1BD0 46000207 */  neg.s $f8, $f0
/* 22CDC4 801E1BD4 000A5880 */  sll   $t3, $t2, 2
/* 22CDC8 801E1BD8 002B0821 */  addu  $at, $at, $t3
/* 22CDCC 801E1BDC 10000006 */  b     .L801E1BF8_ovl17
/* 22CDD0 801E1BE0 E4283E50 */ swc1 $f8, %lo(D_800E3E50)($at)
/* 22CDD4 801E1BE4 8C6C0000 */  lw    $t4, ($v1)
.L801E1BE8_ovl17:
/* 22CDD8 801E1BE8 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22CDDC 801E1BEC 000C6880 */  sll   $t5, $t4, 2
/* 22CDE0 801E1BF0 002D0821 */  addu  $at, $at, $t5
/* 22CDE4 801E1BF4 E4203E50 */ swc1 $f0, %lo(D_800E3E50)($at)
.L801E1BF8_ovl17:
/* 22CDE8 801E1BF8 8C620000 */  lw    $v0, ($v1)
/* 22CDEC 801E1BFC 3C04800E */  lui   $a0, %hi(D_800E0D50) # $a0, 0x800e
/* 22CDF0 801E1C00 24840D50 */  addiu $a0, %lo(D_800E0D50) # addiu $a0, $a0, 0x0d50
/* 22CDF4 801E1C04 00021080 */  sll   $v0, $v0, 2
/* 22CDF8 801E1C08 00827021 */  addu  $t6, $a0, $v0
/* 22CDFC 801E1C0C 8DCF0000 */  lw    $t7, ($t6)
/* 22CE00 801E1C10 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 22CE04 801E1C14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22CE08 801E1C18 000FC080 */  sll   $t8, $t7, 2
/* 22CE0C 801E1C1C 0098C821 */  addu  $t9, $a0, $t8
/* 22CE10 801E1C20 8F280000 */  lw    $t0, ($t9)
/* 22CE14 801E1C24 00084880 */  sll   $t1, $t0, 2
/* 22CE18 801E1C28 00290821 */  addu  $at, $at, $t1
/* 22CE1C 801E1C2C C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 22CE20 801E1C30 3C01800F */ lui $at, %hi(D_800EAC20)
/* 22CE24 801E1C34 00220821 */  addu  $at, $at, $v0
/* 22CE28 801E1C38 E42AAC20 */ swc1 $f10, %lo(D_800EAC20)($at)
/* 22CE2C 801E1C3C 8C620000 */  lw    $v0, ($v1)
/* 22CE30 801E1C40 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 22CE34 801E1C44 00021080 */  sll   $v0, $v0, 2
/* 22CE38 801E1C48 00825021 */  addu  $t2, $a0, $v0
/* 22CE3C 801E1C4C 8D4B0000 */  lw    $t3, ($t2)
/* 22CE40 801E1C50 000B6080 */  sll   $t4, $t3, 2
/* 22CE44 801E1C54 008C6821 */  addu  $t5, $a0, $t4
/* 22CE48 801E1C58 8DAE0000 */  lw    $t6, ($t5)
/* 22CE4C 801E1C5C 000E7880 */  sll   $t7, $t6, 2
/* 22CE50 801E1C60 002F0821 */  addu  $at, $at, $t7
/* 22CE54 801E1C64 C432A8A0 */ lwc1 $f18, %lo(D_800EA8A0)($at)
/* 22CE58 801E1C68 3C01800F */ lui $at, %hi(D_800EADE0)
/* 22CE5C 801E1C6C 00220821 */  addu  $at, $at, $v0
/* 22CE60 801E1C70 E432ADE0 */ swc1 $f18, %lo(D_800EADE0)($at)
/* 22CE64 801E1C74 8C620000 */  lw    $v0, ($v1)
/* 22CE68 801E1C78 3C01800F */ lui $at, %hi(D_800EAA60)
/* 22CE6C 801E1C7C 00021080 */  sll   $v0, $v0, 2
/* 22CE70 801E1C80 0082C021 */  addu  $t8, $a0, $v0
/* 22CE74 801E1C84 8F190000 */  lw    $t9, ($t8)
/* 22CE78 801E1C88 00194080 */  sll   $t0, $t9, 2
/* 22CE7C 801E1C8C 00884821 */  addu  $t1, $a0, $t0
/* 22CE80 801E1C90 8D2A0000 */  lw    $t2, ($t1)
/* 22CE84 801E1C94 000A5880 */  sll   $t3, $t2, 2
/* 22CE88 801E1C98 002B0821 */  addu  $at, $at, $t3
/* 22CE8C 801E1C9C C424AA60 */ lwc1 $f4, %lo(D_800EAA60)($at)
/* 22CE90 801E1CA0 3C01800F */ lui $at, %hi(D_800EAFA0)
/* 22CE94 801E1CA4 00220821 */  addu  $at, $at, $v0
/* 22CE98 801E1CA8 27BD0038 */  addiu $sp, $sp, 0x38
/* 22CE9C 801E1CAC 03E00008 */  jr    $ra
/* 22CEA0 801E1CB0 E424AFA0 */ swc1 $f4, %lo(D_800EAFA0)($at)
.type func_801E1960_ovl17, @function
.size func_801E1960_ovl17, . - func_801E1960_ovl17

glabel func_801E1CB4_ovl17
/* 22CEA4 801E1CB4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 22CEA8 801E1CB8 AFB00018 */  sw    $s0, 0x18($sp)
/* 22CEAC 801E1CBC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 22CEB0 801E1CC0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 22CEB4 801E1CC4 8E030000 */  lw    $v1, ($s0)
/* 22CEB8 801E1CC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 22CEBC 801E1CCC AFA40040 */  sw    $a0, 0x40($sp)
/* 22CEC0 801E1CD0 8C620000 */  lw    $v0, ($v1)
/* 22CEC4 801E1CD4 3C0E800E */ lui $t6, %hi(D_800E1B50)
/* 22CEC8 801E1CD8 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 22CECC 801E1CDC 00021080 */  sll   $v0, $v0, 2
/* 22CED0 801E1CE0 01C27021 */  addu  $t6, $t6, $v0
/* 22CED4 801E1CE4 8DCE1B50 */ lw $t6, %lo(D_800E1B50)($t6)
/* 22CED8 801E1CE8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22CEDC 801E1CEC 00220821 */  addu  $at, $at, $v0
/* 22CEE0 801E1CF0 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 22CEE4 801E1CF4 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 22CEE8 801E1CF8 AFAE002C */  sw    $t6, 0x2c($sp)
/* 22CEEC 801E1CFC 8C790000 */  lw    $t9, ($v1)
/* 22CEF0 801E1D00 3C01800E */ lui $at, %hi(D_800DF150)
/* 22CEF4 801E1D04 3C18801E */  lui   $t8, %hi(D_801E2170) # $t8, 0x801e
/* 22CEF8 801E1D08 00196080 */  sll   $t4, $t9, 2
/* 22CEFC 801E1D0C 002C0821 */  addu  $at, $at, $t4
/* 22CF00 801E1D10 27182170 */  addiu $t8, %lo(D_801E2170) # addiu $t8, $t8, 0x2170
/* 22CF04 801E1D14 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 22CF08 801E1D18 8C6D0000 */  lw    $t5, ($v1)
/* 22CF0C 801E1D1C 3C01800F */ lui $at, %hi(D_800E8920)
/* 22CF10 801E1D20 3C05800E */  lui   $a1, %hi(D_800E0D50) # $a1, 0x800e
/* 22CF14 801E1D24 000D7080 */  sll   $t6, $t5, 2
/* 22CF18 801E1D28 002E0821 */  addu  $at, $at, $t6
/* 22CF1C 801E1D2C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22CF20 801E1D30 8C620000 */  lw    $v0, ($v1)
/* 22CF24 801E1D34 24A50D50 */  addiu $a1, %lo(D_800E0D50) # addiu $a1, $a1, 0x0d50
/* 22CF28 801E1D38 3C09800E */  lui   $t1, %hi(gEntitiesAngleXArray) # $t1, 0x800e
/* 22CF2C 801E1D3C 00021080 */  sll   $v0, $v0, 2
/* 22CF30 801E1D40 00A27821 */  addu  $t7, $a1, $v0
/* 22CF34 801E1D44 8DF90000 */  lw    $t9, ($t7)
/* 22CF38 801E1D48 25294010 */  addiu $t1, %lo(gEntitiesAngleXArray) # addiu $t1, $t1, 0x4010
/* 22CF3C 801E1D4C 01226821 */  addu  $t5, $t1, $v0
/* 22CF40 801E1D50 0019C080 */  sll   $t8, $t9, 2
/* 22CF44 801E1D54 01386021 */  addu  $t4, $t1, $t8
/* 22CF48 801E1D58 C5840000 */  lwc1  $f4, ($t4)
/* 22CF4C 801E1D5C 3C0A800E */  lui   $t2, %hi(gEntitiesAngleYArray) # $t2, 0x800e
/* 22CF50 801E1D60 254A41D0 */  addiu $t2, %lo(gEntitiesAngleYArray) # addiu $t2, $t2, 0x41d0
/* 22CF54 801E1D64 E5A40000 */  swc1  $f4, ($t5)
/* 22CF58 801E1D68 8C620000 */  lw    $v0, ($v1)
/* 22CF5C 801E1D6C 3C0B800E */  lui   $t3, %hi(gEntitiesAngleZArray) # $t3, 0x800e
/* 22CF60 801E1D70 256B4390 */  addiu $t3, %lo(gEntitiesAngleZArray) # addiu $t3, $t3, 0x4390
/* 22CF64 801E1D74 00021080 */  sll   $v0, $v0, 2
/* 22CF68 801E1D78 00A27021 */  addu  $t6, $a1, $v0
/* 22CF6C 801E1D7C 8DCF0000 */  lw    $t7, ($t6)
/* 22CF70 801E1D80 01426021 */  addu  $t4, $t2, $v0
/* 22CF74 801E1D84 3C06800F */  lui   $a2, %hi(D_800EA6E0) # $a2, 0x800f
/* 22CF78 801E1D88 000FC880 */  sll   $t9, $t7, 2
/* 22CF7C 801E1D8C 0159C021 */  addu  $t8, $t2, $t9
/* 22CF80 801E1D90 C7060000 */  lwc1  $f6, ($t8)
/* 22CF84 801E1D94 24C6A6E0 */  addiu $a2, %lo(D_800EA6E0) # addiu $a2, $a2, -0x5920
/* 22CF88 801E1D98 3C07800F */  lui   $a3, %hi(D_800EA8A0) # $a3, 0x800f
/* 22CF8C 801E1D9C E5860000 */  swc1  $f6, ($t4)
/* 22CF90 801E1DA0 8C620000 */  lw    $v0, ($v1)
/* 22CF94 801E1DA4 24E7A8A0 */  addiu $a3, %lo(D_800EA8A0) # addiu $a3, $a3, -0x5760
/* 22CF98 801E1DA8 3C08800F */  lui   $t0, %hi(D_800EAA60) # $t0, 0x800f
/* 22CF9C 801E1DAC 00021080 */  sll   $v0, $v0, 2
/* 22CFA0 801E1DB0 00A26821 */  addu  $t5, $a1, $v0
/* 22CFA4 801E1DB4 8DAE0000 */  lw    $t6, ($t5)
/* 22CFA8 801E1DB8 0162C021 */  addu  $t8, $t3, $v0
/* 22CFAC 801E1DBC 2508AA60 */  addiu $t0, %lo(D_800EAA60) # addiu $t0, $t0, -0x55a0
/* 22CFB0 801E1DC0 000E7880 */  sll   $t7, $t6, 2
/* 22CFB4 801E1DC4 016FC821 */  addu  $t9, $t3, $t7
/* 22CFB8 801E1DC8 C7280000 */  lwc1  $f8, ($t9)
/* 22CFBC 801E1DCC E7080000 */  swc1  $f8, ($t8)
/* 22CFC0 801E1DD0 8C620000 */  lw    $v0, ($v1)
/* 22CFC4 801E1DD4 00021080 */  sll   $v0, $v0, 2
/* 22CFC8 801E1DD8 00A26021 */  addu  $t4, $a1, $v0
/* 22CFCC 801E1DDC 8D8D0000 */  lw    $t5, ($t4)
/* 22CFD0 801E1DE0 00C2C821 */  addu  $t9, $a2, $v0
/* 22CFD4 801E1DE4 000D7080 */  sll   $t6, $t5, 2
/* 22CFD8 801E1DE8 00CE7821 */  addu  $t7, $a2, $t6
/* 22CFDC 801E1DEC C5EA0000 */  lwc1  $f10, ($t7)
/* 22CFE0 801E1DF0 E72A0000 */  swc1  $f10, ($t9)
/* 22CFE4 801E1DF4 8C620000 */  lw    $v0, ($v1)
/* 22CFE8 801E1DF8 00021080 */  sll   $v0, $v0, 2
/* 22CFEC 801E1DFC 00A2C021 */  addu  $t8, $a1, $v0
/* 22CFF0 801E1E00 8F0C0000 */  lw    $t4, ($t8)
/* 22CFF4 801E1E04 00E27821 */  addu  $t7, $a3, $v0
/* 22CFF8 801E1E08 000C6880 */  sll   $t5, $t4, 2
/* 22CFFC 801E1E0C 00ED7021 */  addu  $t6, $a3, $t5
/* 22D000 801E1E10 C5D00000 */  lwc1  $f16, ($t6)
/* 22D004 801E1E14 E5F00000 */  swc1  $f16, ($t7)
/* 22D008 801E1E18 8C620000 */  lw    $v0, ($v1)
/* 22D00C 801E1E1C 00021080 */  sll   $v0, $v0, 2
/* 22D010 801E1E20 00A2C821 */  addu  $t9, $a1, $v0
/* 22D014 801E1E24 8F380000 */  lw    $t8, ($t9)
/* 22D018 801E1E28 01027021 */  addu  $t6, $t0, $v0
/* 22D01C 801E1E2C 00186080 */  sll   $t4, $t8, 2
/* 22D020 801E1E30 010C6821 */  addu  $t5, $t0, $t4
/* 22D024 801E1E34 C5B20000 */  lwc1  $f18, ($t5)
/* 22D028 801E1E38 0C0788F8 */  jal   func_801E23E0_ovl17
/* 22D02C 801E1E3C E5D20000 */   swc1  $f18, ($t6)
/* 22D030 801E1E40 8E0F0000 */  lw    $t7, ($s0)
/* 22D034 801E1E44 3C18800E */ lui $t8, %hi(D_800E7880)
/* 22D038 801E1E48 24040006 */  li    $a0, 6
/* 22D03C 801E1E4C 8DF90000 */  lw    $t9, ($t7)
/* 22D040 801E1E50 24050003 */  li    $a1, 3
/* 22D044 801E1E54 0319C021 */  addu  $t8, $t8, $t9
/* 22D048 801E1E58 93187880 */ lbu $t8, %lo(D_800E7880)($t8)
/* 22D04C 801E1E5C 5700000C */  bnezl $t8, .L801E1E90_ovl17
/* 22D050 801E1E60 24040006 */   li    $a0, 6
/* 22D054 801E1E64 0C02A08D */  jal   func_800A8234
/* 22D058 801E1E68 24060003 */   li    $a2, 3
/* 22D05C 801E1E6C 8E030000 */  lw    $v1, ($s0)
/* 22D060 801E1E70 3C06800F */  lui   $a2, %hi(D_800E98E0) # $a2, 0x800f
/* 22D064 801E1E74 24C698E0 */  addiu $a2, %lo(D_800E98E0) # addiu $a2, $a2, -0x6720
/* 22D068 801E1E78 8C6C0000 */  lw    $t4, ($v1)
/* 22D06C 801E1E7C 000C6880 */  sll   $t5, $t4, 2
/* 22D070 801E1E80 00CD7021 */  addu  $t6, $a2, $t5
/* 22D074 801E1E84 1000000C */  b     .L801E1EB8_ovl17
/* 22D078 801E1E88 ADC20000 */   sw    $v0, ($t6)
/* 22D07C 801E1E8C 24040006 */  li    $a0, 6
.L801E1E90_ovl17:
/* 22D080 801E1E90 24050003 */  li    $a1, 3
/* 22D084 801E1E94 0C02A08D */  jal   func_800A8234
/* 22D088 801E1E98 24060006 */   li    $a2, 6
/* 22D08C 801E1E9C 8E030000 */  lw    $v1, ($s0)
/* 22D090 801E1EA0 3C06800F */  lui   $a2, %hi(D_800E98E0) # $a2, 0x800f
/* 22D094 801E1EA4 24C698E0 */  addiu $a2, %lo(D_800E98E0) # addiu $a2, $a2, -0x6720
/* 22D098 801E1EA8 8C6F0000 */  lw    $t7, ($v1)
/* 22D09C 801E1EAC 000FC880 */  sll   $t9, $t7, 2
/* 22D0A0 801E1EB0 00D9C021 */  addu  $t8, $a2, $t9
/* 22D0A4 801E1EB4 AF020000 */  sw    $v0, ($t8)
.L801E1EB8_ovl17:
/* 22D0A8 801E1EB8 8C620000 */  lw    $v0, ($v1)
/* 22D0AC 801E1EBC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 22D0B0 801E1EC0 00021080 */  sll   $v0, $v0, 2
/* 22D0B4 801E1EC4 00C26021 */  addu  $t4, $a2, $v0
/* 22D0B8 801E1EC8 8D840000 */  lw    $a0, ($t4)
/* 22D0BC 801E1ECC 00220821 */  addu  $at, $at, $v0
/* 22D0C0 801E1ED0 8C85004C */  lw    $a1, 0x4c($a0)
/* 22D0C4 801E1ED4 10A0002E */  beqz  $a1, .L801E1F90_ovl17
/* 22D0C8 801E1ED8 00000000 */   nop   
/* 22D0CC 801E1EDC C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 22D0D0 801E1EE0 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 22D0D4 801E1EE4 E4A40004 */  swc1  $f4, 4($a1)
/* 22D0D8 801E1EE8 8E0D0000 */  lw    $t5, ($s0)
/* 22D0DC 801E1EEC 8C99004C */  lw    $t9, 0x4c($a0)
/* 22D0E0 801E1EF0 8DAE0000 */  lw    $t6, ($t5)
/* 22D0E4 801E1EF4 000E7880 */  sll   $t7, $t6, 2
/* 22D0E8 801E1EF8 002F0821 */  addu  $at, $at, $t7
/* 22D0EC 801E1EFC C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 22D0F0 801E1F00 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 22D0F4 801E1F04 E7260008 */  swc1  $f6, 8($t9)
/* 22D0F8 801E1F08 8E180000 */  lw    $t8, ($s0)
/* 22D0FC 801E1F0C 8C8E004C */  lw    $t6, 0x4c($a0)
/* 22D100 801E1F10 8F0C0000 */  lw    $t4, ($t8)
/* 22D104 801E1F14 000C6880 */  sll   $t5, $t4, 2
/* 22D108 801E1F18 002D0821 */  addu  $at, $at, $t5
/* 22D10C 801E1F1C C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 22D110 801E1F20 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 22D114 801E1F24 E5C8000C */  swc1  $f8, 0xc($t6)
/* 22D118 801E1F28 8E0F0000 */  lw    $t7, ($s0)
/* 22D11C 801E1F2C 8C8C004C */  lw    $t4, 0x4c($a0)
/* 22D120 801E1F30 8DF90000 */  lw    $t9, ($t7)
/* 22D124 801E1F34 0019C080 */  sll   $t8, $t9, 2
/* 22D128 801E1F38 00380821 */  addu  $at, $at, $t8
/* 22D12C 801E1F3C C42A4010 */ lwc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 22D130 801E1F40 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 22D134 801E1F44 E58A0010 */  swc1  $f10, 0x10($t4)
/* 22D138 801E1F48 8E0D0000 */  lw    $t5, ($s0)
/* 22D13C 801E1F4C 8C99004C */  lw    $t9, 0x4c($a0)
/* 22D140 801E1F50 8DAE0000 */  lw    $t6, ($t5)
/* 22D144 801E1F54 000E7880 */  sll   $t7, $t6, 2
/* 22D148 801E1F58 002F0821 */  addu  $at, $at, $t7
/* 22D14C 801E1F5C C43041D0 */ lwc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 22D150 801E1F60 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 22D154 801E1F64 E7300014 */  swc1  $f16, 0x14($t9)
/* 22D158 801E1F68 8E180000 */  lw    $t8, ($s0)
/* 22D15C 801E1F6C 8C8E004C */  lw    $t6, 0x4c($a0)
/* 22D160 801E1F70 8F0C0000 */  lw    $t4, ($t8)
/* 22D164 801E1F74 000C6880 */  sll   $t5, $t4, 2
/* 22D168 801E1F78 002D0821 */  addu  $at, $at, $t5
/* 22D16C 801E1F7C C4324390 */ lwc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 22D170 801E1F80 E5D20018 */  swc1  $f18, 0x18($t6)
/* 22D174 801E1F84 8E0F0000 */  lw    $t7, ($s0)
/* 22D178 801E1F88 8DE20000 */  lw    $v0, ($t7)
/* 22D17C 801E1F8C 00021080 */  sll   $v0, $v0, 2
.L801E1F90_ovl17:
/* 22D180 801E1F90 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 22D184 801E1F94 00822021 */  addu  $a0, $a0, $v0
/* 22D188 801E1F98 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 22D18C 801E1F9C 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 22D190 801E1FA0 0C02C7DA */  jal   func_800B1F68
/* 22D194 801E1FA4 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 22D198 801E1FA8 00002025 */  move  $a0, $zero
/* 22D19C 801E1FAC 0C02BEED */  jal   func_800AFBB4
/* 22D1A0 801E1FB0 8E050000 */   lw    $a1, ($s0)
/* 22D1A4 801E1FB4 8E180000 */  lw    $t8, ($s0)
/* 22D1A8 801E1FB8 3C01800E */ lui $at, %hi(D_800DDA90)
/* 22D1AC 801E1FBC 24190025 */  li    $t9, 37
/* 22D1B0 801E1FC0 8F0C0000 */  lw    $t4, ($t8)
/* 22D1B4 801E1FC4 27A40034 */  addiu $a0, $sp, 0x34
/* 22D1B8 801E1FC8 000C6880 */  sll   $t5, $t4, 2
/* 22D1BC 801E1FCC 002D0821 */  addu  $at, $at, $t5
/* 22D1C0 801E1FD0 0C078D0F */  jal   func_801E343C_ovl17
/* 22D1C4 801E1FD4 AC39DA90 */ sw $t9, %lo(D_800DDA90)($at)
/* 22D1C8 801E1FD8 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 22D1CC 801E1FDC 44811000 */  mtc1  $at, $f2
/* 22D1D0 801E1FE0 C7A40034 */  lwc1  $f4, 0x34($sp)
/* 22D1D4 801E1FE4 8E030000 */  lw    $v1, ($s0)
/* 22D1D8 801E1FE8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 22D1DC 801E1FEC 46022002 */  mul.s $f0, $f4, $f2
/* 22D1E0 801E1FF0 8C6E0000 */  lw    $t6, ($v1)
/* 22D1E4 801E1FF4 44816000 */  mtc1  $at, $f12
/* 22D1E8 801E1FF8 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 22D1EC 801E1FFC 3C01800E */ lui $at, %hi(D_800E3050)
/* 22D1F0 801E2000 000E7880 */  sll   $t7, $t6, 2
/* 22D1F4 801E2004 44807000 */  mtc1  $zero, $f14
/* 22D1F8 801E2008 002F0821 */  addu  $at, $at, $t7
/* 22D1FC 801E200C 460C3202 */  mul.s $f8, $f6, $f12
/* 22D200 801E2010 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 22D204 801E2014 8C780000 */  lw    $t8, ($v1)
/* 22D208 801E2018 460E003C */  c.lt.s $f0, $f14
/* 22D20C 801E201C 3C01800E */ lui $at, %hi(D_800E3590)
/* 22D210 801E2020 00186080 */  sll   $t4, $t8, 2
/* 22D214 801E2024 002C0821 */  addu  $at, $at, $t4
/* 22D218 801E2028 45000008 */  bc1f  .L801E204C_ovl17
/* 22D21C 801E202C E4283590 */ swc1 $f8, %lo(D_800E3590)($at)
/* 22D220 801E2030 8C790000 */  lw    $t9, ($v1)
/* 22D224 801E2034 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22D228 801E2038 46000287 */  neg.s $f10, $f0
/* 22D22C 801E203C 00196880 */  sll   $t5, $t9, 2
/* 22D230 801E2040 002D0821 */  addu  $at, $at, $t5
/* 22D234 801E2044 10000006 */  b     .L801E2060_ovl17
/* 22D238 801E2048 E42A3AD0 */ swc1 $f10, %lo(D_800E3AD0)($at)
.L801E204C_ovl17:
/* 22D23C 801E204C 8C6E0000 */  lw    $t6, ($v1)
/* 22D240 801E2050 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22D244 801E2054 000E7880 */  sll   $t7, $t6, 2
/* 22D248 801E2058 002F0821 */  addu  $at, $at, $t7
/* 22D24C 801E205C E4203AD0 */ swc1 $f0, %lo(D_800E3AD0)($at)
.L801E2060_ovl17:
/* 22D250 801E2060 C7B00038 */  lwc1  $f16, 0x38($sp)
/* 22D254 801E2064 8C780000 */  lw    $t8, ($v1)
/* 22D258 801E2068 C7B20038 */  lwc1  $f18, 0x38($sp)
/* 22D25C 801E206C 46028002 */  mul.s $f0, $f16, $f2
/* 22D260 801E2070 3C01800E */ lui $at, %hi(D_800E3210)
/* 22D264 801E2074 00186080 */  sll   $t4, $t8, 2
/* 22D268 801E2078 002C0821 */  addu  $at, $at, $t4
/* 22D26C 801E207C 460C9102 */  mul.s $f4, $f18, $f12
/* 22D270 801E2080 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 22D274 801E2084 8C790000 */  lw    $t9, ($v1)
/* 22D278 801E2088 460E003C */  c.lt.s $f0, $f14
/* 22D27C 801E208C 3C01800E */ lui $at, %hi(D_800E3750)
/* 22D280 801E2090 00196880 */  sll   $t5, $t9, 2
/* 22D284 801E2094 002D0821 */  addu  $at, $at, $t5
/* 22D288 801E2098 45000008 */  bc1f  .L801E20BC_ovl17
/* 22D28C 801E209C E4243750 */ swc1 $f4, %lo(D_800E3750)($at)
/* 22D290 801E20A0 8C6E0000 */  lw    $t6, ($v1)
/* 22D294 801E20A4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22D298 801E20A8 46000187 */  neg.s $f6, $f0
/* 22D29C 801E20AC 000E7880 */  sll   $t7, $t6, 2
/* 22D2A0 801E20B0 002F0821 */  addu  $at, $at, $t7
/* 22D2A4 801E20B4 10000006 */  b     .L801E20D0_ovl17
/* 22D2A8 801E20B8 E4263C90 */ swc1 $f6, %lo(D_800E3C90)($at)
.L801E20BC_ovl17:
/* 22D2AC 801E20BC 8C780000 */  lw    $t8, ($v1)
/* 22D2B0 801E20C0 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22D2B4 801E20C4 00186080 */  sll   $t4, $t8, 2
/* 22D2B8 801E20C8 002C0821 */  addu  $at, $at, $t4
/* 22D2BC 801E20CC E4203C90 */ swc1 $f0, %lo(D_800E3C90)($at)
.L801E20D0_ovl17:
/* 22D2C0 801E20D0 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 22D2C4 801E20D4 8C790000 */  lw    $t9, ($v1)
/* 22D2C8 801E20D8 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* 22D2CC 801E20DC 46024002 */  mul.s $f0, $f8, $f2
/* 22D2D0 801E20E0 3C01800E */ lui $at, %hi(D_800E33D0)
/* 22D2D4 801E20E4 00196880 */  sll   $t5, $t9, 2
/* 22D2D8 801E20E8 002D0821 */  addu  $at, $at, $t5
/* 22D2DC 801E20EC 460C5402 */  mul.s $f16, $f10, $f12
/* 22D2E0 801E20F0 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 22D2E4 801E20F4 8C6E0000 */  lw    $t6, ($v1)
/* 22D2E8 801E20F8 460E003C */  c.lt.s $f0, $f14
/* 22D2EC 801E20FC 3C01800E */ lui $at, %hi(D_800E3910)
/* 22D2F0 801E2100 000E7880 */  sll   $t7, $t6, 2
/* 22D2F4 801E2104 002F0821 */  addu  $at, $at, $t7
/* 22D2F8 801E2108 45000008 */  bc1f  .L801E212C_ovl17
/* 22D2FC 801E210C E4303910 */ swc1 $f16, %lo(D_800E3910)($at)
/* 22D300 801E2110 8C780000 */  lw    $t8, ($v1)
/* 22D304 801E2114 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22D308 801E2118 46000487 */  neg.s $f18, $f0
/* 22D30C 801E211C 00186080 */  sll   $t4, $t8, 2
/* 22D310 801E2120 002C0821 */  addu  $at, $at, $t4
/* 22D314 801E2124 10000006 */  b     .L801E2140_ovl17
/* 22D318 801E2128 E4323E50 */ swc1 $f18, %lo(D_800E3E50)($at)
.L801E212C_ovl17:
/* 22D31C 801E212C 8C790000 */  lw    $t9, ($v1)
/* 22D320 801E2130 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22D324 801E2134 00196880 */  sll   $t5, $t9, 2
/* 22D328 801E2138 002D0821 */  addu  $at, $at, $t5
/* 22D32C 801E213C E4203E50 */ swc1 $f0, %lo(D_800E3E50)($at)
.L801E2140_ovl17:
/* 22D330 801E2140 0C002DAF */  jal   finish_current_thread
/* 22D334 801E2144 2404002D */   li    $a0, 45
/* 22D338 801E2148 8FAF002C */  lw    $t7, 0x2c($sp)
/* 22D33C 801E214C 240E0001 */  li    $t6, 1
/* 22D340 801E2150 A1EE0040 */  sb    $t6, 0x40($t7)
/* 22D344 801E2154 0C068FA0 */  jal   D_801A3E80_ovl17
/* 22D348 801E2158 8FA40040 */   lw    $a0, 0x40($sp)
/* 22D34C 801E215C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 22D350 801E2160 8FB00018 */  lw    $s0, 0x18($sp)
/* 22D354 801E2164 27BD0040 */  addiu $sp, $sp, 0x40
/* 22D358 801E2168 03E00008 */  jr    $ra
/* 22D35C 801E216C 00000000 */   nop   
.type func_801E1CB4_ovl17, @function
.size func_801E1CB4_ovl17, . - func_801E1CB4_ovl17

glabel func_801E2170_ovl17
/* 22D360 801E2170 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 22D364 801E2174 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 22D368 801E2178 8CCE0000 */  lw    $t6, ($a2)
/* 22D36C 801E217C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22D370 801E2180 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22D374 801E2184 AFA40018 */  sw    $a0, 0x18($sp)
/* 22D378 801E2188 8DC20000 */  lw    $v0, ($t6)
/* 22D37C 801E218C 3C0F800E */ lui $t7, %hi(D_800E0D50)
/* 22D380 801E2190 3C19800E */ lui $t9, %hi(gEntityVtableIndexArray)
/* 22D384 801E2194 00021080 */  sll   $v0, $v0, 2
/* 22D388 801E2198 01E27821 */  addu  $t7, $t7, $v0
/* 22D38C 801E219C 8DEF0D50 */ lw $t7, %lo(D_800E0D50)($t7)
/* 22D390 801E21A0 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 22D394 801E21A4 00621821 */  addu  $v1, $v1, $v0
/* 22D398 801E21A8 000FC080 */  sll   $t8, $t7, 2
/* 22D39C 801E21AC 0338C821 */  addu  $t9, $t9, $t8
/* 22D3A0 801E21B0 8F39DC50 */ lw $t9, %lo(gEntityVtableIndexArray)($t9)
/* 22D3A4 801E21B4 24010004 */  li    $at, 4
/* 22D3A8 801E21B8 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 22D3AC 801E21BC 1721000D */  bne   $t9, $at, .L801E21F4_ovl17
/* 22D3B0 801E21C0 00000000 */   nop   
/* 22D3B4 801E21C4 A0600043 */  sb    $zero, 0x43($v1)
/* 22D3B8 801E21C8 8CC80000 */  lw    $t0, ($a2)
/* 22D3BC 801E21CC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22D3C0 801E21D0 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 22D3C4 801E21D4 8D090000 */  lw    $t1, ($t0)
/* 22D3C8 801E21D8 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 22D3CC 801E21DC 00095080 */  sll   $t2, $t1, 2
/* 22D3D0 801E21E0 008A2021 */  addu  $a0, $a0, $t2
/* 22D3D4 801E21E4 0C02C7B2 */  jal   assign_new_process_entry
/* 22D3D8 801E21E8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22D3DC 801E21EC 10000004 */  b     .L801E2200_ovl17
/* 22D3E0 801E21F0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E21F4_ovl17:
/* 22D3E4 801E21F4 0C078883 */  jal   func_801E220C_ovl17
/* 22D3E8 801E21F8 00000000 */   nop   
/* 22D3EC 801E21FC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E2200_ovl17:
/* 22D3F0 801E2200 27BD0018 */  addiu $sp, $sp, 0x18
/* 22D3F4 801E2204 03E00008 */  jr    $ra
/* 22D3F8 801E2208 00000000 */   nop   
.type func_801E2170_ovl17, @function
.size func_801E2170_ovl17, . - func_801E2170_ovl17

glabel func_801E220C_ovl17
/* 22D3FC 801E220C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22D400 801E2210 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22D404 801E2214 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 22D408 801E2218 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22D40C 801E221C 8DCF0000 */  lw    $t7, ($t6)
/* 22D410 801E2220 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 22D414 801E2224 000FC080 */  sll   $t8, $t7, 2
/* 22D418 801E2228 0338C821 */  addu  $t9, $t9, $t8
/* 22D41C 801E222C 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 22D420 801E2230 0C068119 */  jal   func_801A0464_ovl17
/* 22D424 801E2234 AFB90048 */   sw    $t9, 0x48($sp)
/* 22D428 801E2238 0C0447B3 */  jal   func_80111ECC
/* 22D42C 801E223C 00402025 */   move  $a0, $v0
/* 22D430 801E2240 8FA80048 */  lw    $t0, 0x48($sp)
/* 22D434 801E2244 8D09008C */  lw    $t1, 0x8c($t0)
/* 22D438 801E2248 15200003 */  bnez  $t1, .L801E2258_ovl17
/* 22D43C 801E224C 00000000 */   nop   
/* 22D440 801E2250 1000002F */  b     .L801E2310_ovl17
/* 22D444 801E2254 00001025 */   move  $v0, $zero
.L801E2258_ovl17:
/* 22D448 801E2258 0C044054 */  jal   func_80110150
/* 22D44C 801E225C 27A40028 */   addiu $a0, $sp, 0x28
/* 22D450 801E2260 1040000E */  beqz  $v0, .L801E229C_ovl17
/* 22D454 801E2264 3C198005 */   lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22D458 801E2268 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 22D45C 801E226C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 22D460 801E2270 93AA002A */  lbu   $t2, 0x2a($sp)
/* 22D464 801E2274 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 22D468 801E2278 8D6C0000 */  lw    $t4, ($t3)
/* 22D46C 801E227C 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 22D470 801E2280 000C6880 */  sll   $t5, $t4, 2
/* 22D474 801E2284 008D7021 */  addu  $t6, $a0, $t5
/* 22D478 801E2288 ADCA0000 */  sw    $t2, ($t6)
/* 22D47C 801E228C 8FB80048 */  lw    $t8, 0x48($sp)
/* 22D480 801E2290 93AF002B */  lbu   $t7, 0x2b($sp)
/* 22D484 801E2294 1000000A */  b     .L801E22C0_ovl17
/* 22D488 801E2298 A30F0043 */   sb    $t7, 0x43($t8)
.L801E229C_ovl17:
/* 22D48C 801E229C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22D490 801E22A0 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 22D494 801E22A4 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 22D498 801E22A8 8F280000 */  lw    $t0, ($t9)
/* 22D49C 801E22AC 00084880 */  sll   $t1, $t0, 2
/* 22D4A0 801E22B0 00895821 */  addu  $t3, $a0, $t1
/* 22D4A4 801E22B4 AD600000 */  sw    $zero, ($t3)
/* 22D4A8 801E22B8 8FAC0048 */  lw    $t4, 0x48($sp)
/* 22D4AC 801E22BC A1800043 */  sb    $zero, 0x43($t4)
.L801E22C0_ovl17:
/* 22D4B0 801E22C0 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 22D4B4 801E22C4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 22D4B8 801E22C8 24010001 */  li    $at, 1
/* 22D4BC 801E22CC 3C05801E */  lui   $a1, %hi(func_801E2320_ovl17) # $a1, 0x801e
/* 22D4C0 801E22D0 8DA20000 */  lw    $v0, ($t5)
/* 22D4C4 801E22D4 24A52320 */  addiu $a1, %lo(func_801E2320_ovl17) # addiu $a1, $a1, 0x2320
/* 22D4C8 801E22D8 00021080 */  sll   $v0, $v0, 2
/* 22D4CC 801E22DC 00825021 */  addu  $t2, $a0, $v0
/* 22D4D0 801E22E0 8D430000 */  lw    $v1, ($t2)
/* 22D4D4 801E22E4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22D4D8 801E22E8 00822021 */  addu  $a0, $a0, $v0
/* 22D4DC 801E22EC 10610003 */  beq   $v1, $at, .L801E22FC_ovl17
/* 22D4E0 801E22F0 24010002 */   li    $at, 2
/* 22D4E4 801E22F4 54610006 */  bnel  $v1, $at, .L801E2310_ovl17
/* 22D4E8 801E22F8 00001025 */   move  $v0, $zero
.L801E22FC_ovl17:
/* 22D4EC 801E22FC 0C02C7B2 */  jal   assign_new_process_entry
/* 22D4F0 801E2300 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22D4F4 801E2304 10000002 */  b     .L801E2310_ovl17
/* 22D4F8 801E2308 24020001 */   li    $v0, 1
/* 22D4FC 801E230C 00001025 */  move  $v0, $zero
.L801E2310_ovl17:
/* 22D500 801E2310 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22D504 801E2314 27BD0050 */  addiu $sp, $sp, 0x50
/* 22D508 801E2318 03E00008 */  jr    $ra
/* 22D50C 801E231C 00000000 */   nop   
.type func_801E220C_ovl17, @function
.size func_801E220C_ovl17, . - func_801E220C_ovl17

glabel func_801E2320_ovl17
/* 22D510 801E2320 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22D514 801E2324 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22D518 801E2328 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 22D51C 801E232C AFBF001C */  sw    $ra, 0x1c($sp)
/* 22D520 801E2330 8DCF0000 */  lw    $t7, ($t6)
/* 22D524 801E2334 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 22D528 801E2338 000FC080 */  sll   $t8, $t7, 2
/* 22D52C 801E233C 0338C821 */  addu  $t9, $t9, $t8
/* 22D530 801E2340 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 22D534 801E2344 0C0288C0 */  jal   func_800A2300
/* 22D538 801E2348 AFB90024 */   sw    $t9, 0x24($sp)
/* 22D53C 801E234C 8FA80024 */  lw    $t0, 0x24($sp)
/* 22D540 801E2350 44800000 */  mtc1  $zero, $f0
/* 22D544 801E2354 00002025 */  move  $a0, $zero
/* 22D548 801E2358 8D090094 */  lw    $t1, 0x94($t0)
/* 22D54C 801E235C 44060000 */  mfc1  $a2, $f0
/* 22D550 801E2360 44070000 */  mfc1  $a3, $f0
/* 22D554 801E2364 8D250018 */  lw    $a1, 0x18($t1)
/* 22D558 801E2368 0C03F55C */  jal   func_800FD570
/* 22D55C 801E236C E7A00010 */   swc1  $f0, 0x10($sp)
/* 22D560 801E2370 8FAA0024 */  lw    $t2, 0x24($sp)
/* 22D564 801E2374 3C018000 */  lui   $at, 0x8000
/* 22D568 801E2378 8D4B0094 */  lw    $t3, 0x94($t2)
/* 22D56C 801E237C 8D64001C */  lw    $a0, 0x1c($t3)
/* 22D570 801E2380 10810003 */  beq   $a0, $at, .L801E2390_ovl17
/* 22D574 801E2384 00000000 */   nop   
/* 22D578 801E2388 0C029D9E */  jal   play_sound
/* 22D57C 801E238C 00000000 */   nop   
.L801E2390_ovl17:
/* 22D580 801E2390 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22D584 801E2394 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22D588 801E2398 3C01800E */ lui $at, %hi(D_800DF150)
/* 22D58C 801E239C 2404007D */  li    $a0, 125
/* 22D590 801E23A0 8C4C0000 */  lw    $t4, ($v0)
/* 22D594 801E23A4 000C6880 */  sll   $t5, $t4, 2
/* 22D598 801E23A8 002D0821 */  addu  $at, $at, $t5
/* 22D59C 801E23AC AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 22D5A0 801E23B0 0C02C67D */  jal   func_800B19F4
/* 22D5A4 801E23B4 8C450000 */   lw    $a1, ($v0)
/* 22D5A8 801E23B8 0C002DAF */  jal   finish_current_thread
/* 22D5AC 801E23BC 24040001 */   li    $a0, 1
/* 22D5B0 801E23C0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22D5B4 801E23C4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22D5B8 801E23C8 0C067656 */  jal   func_8019D958_ovl17
/* 22D5BC 801E23CC 95C40002 */   lhu   $a0, 2($t6)
/* 22D5C0 801E23D0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 22D5C4 801E23D4 27BD0028 */  addiu $sp, $sp, 0x28
/* 22D5C8 801E23D8 03E00008 */  jr    $ra
/* 22D5CC 801E23DC 00000000 */   nop   
.type func_801E2320_ovl17, @function
.size func_801E2320_ovl17, . - func_801E2320_ovl17

glabel func_801E23E0_ovl17
/* 22D5D0 801E23E0 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 22D5D4 801E23E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22D5D8 801E23E8 0C00C304 */  jal   guMtxIdentF
/* 22D5DC 801E23EC 27A400D0 */   addiu $a0, $sp, 0xd0
/* 22D5E0 801E23F0 44800000 */  mtc1  $zero, $f0
/* 22D5E4 801E23F4 3C064049 */  lui   $a2, (0x40490FDB >> 16) # lui $a2, 0x4049
/* 22D5E8 801E23F8 34C60FDB */  ori   $a2, (0x40490FDB & 0xFFFF) # ori $a2, $a2, 0xfdb
/* 22D5EC 801E23FC 44050000 */  mfc1  $a1, $f0
/* 22D5F0 801E2400 44070000 */  mfc1  $a3, $f0
/* 22D5F4 801E2404 0C006EEB */  jal   HS64_MkRotationMtxF
/* 22D5F8 801E2408 27A40090 */   addiu $a0, $sp, 0x90
/* 22D5FC 801E240C 27A400D0 */  addiu $a0, $sp, 0xd0
/* 22D600 801E2410 00803025 */  move  $a2, $a0
/* 22D604 801E2414 0C00D034 */  jal   guMtxCatF
/* 22D608 801E2418 27A50090 */   addiu $a1, $sp, 0x90
/* 22D60C 801E241C 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 22D610 801E2420 3C06800F */  lui   $a2, %hi(D_800EA8A0) # $a2, 0x800f
/* 22D614 801E2424 3C07800F */  lui   $a3, %hi(D_800EAA60) # $a3, 0x800f
/* 22D618 801E2428 8CE7AA60 */  lw    $a3, %lo(D_800EAA60)($a3)
/* 22D61C 801E242C 8CC6A8A0 */  lw    $a2, %lo(D_800EA8A0)($a2)
/* 22D620 801E2430 8CA5A6E0 */  lw    $a1, %lo(D_800EA6E0)($a1)
/* 22D624 801E2434 0C006EEB */  jal   HS64_MkRotationMtxF
/* 22D628 801E2438 27A40090 */   addiu $a0, $sp, 0x90
/* 22D62C 801E243C 27A400D0 */  addiu $a0, $sp, 0xd0
/* 22D630 801E2440 27A50090 */  addiu $a1, $sp, 0x90
/* 22D634 801E2444 0C00D034 */  jal   guMtxCatF
/* 22D638 801E2448 27A60050 */   addiu $a2, $sp, 0x50
/* 22D63C 801E244C 0C00C304 */  jal   guMtxIdentF
/* 22D640 801E2450 27A400D0 */   addiu $a0, $sp, 0xd0
/* 22D644 801E2454 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22D648 801E2458 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22D64C 801E245C 3C05800F */ lui $a1, %hi(D_800EA6E0)
/* 22D650 801E2460 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 22D654 801E2464 8DC30000 */  lw    $v1, ($t6)
/* 22D658 801E2468 3C07800F */ lui $a3, %hi(D_800EAA60)
/* 22D65C 801E246C 27A40090 */  addiu $a0, $sp, 0x90
/* 22D660 801E2470 00031880 */  sll   $v1, $v1, 2
/* 22D664 801E2474 00A32821 */  addu  $a1, $a1, $v1
/* 22D668 801E2478 00C33021 */  addu  $a2, $a2, $v1
/* 22D66C 801E247C 00E33821 */  addu  $a3, $a3, $v1
/* 22D670 801E2480 8CE7AA60 */ lw $a3, %lo(D_800EAA60)($a3)
/* 22D674 801E2484 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 22D678 801E2488 0C006EEB */  jal   HS64_MkRotationMtxF
/* 22D67C 801E248C 8CA5A6E0 */ lw $a1, %lo(D_800EA6E0)($a1)
/* 22D680 801E2490 27A600D0 */  addiu $a2, $sp, 0xd0
/* 22D684 801E2494 00C02025 */  move  $a0, $a2
/* 22D688 801E2498 0C00D034 */  jal   guMtxCatF
/* 22D68C 801E249C 27A50090 */   addiu $a1, $sp, 0x90
/* 22D690 801E24A0 C7A000D8 */  lwc1  $f0, 0xd8($sp)
/* 22D694 801E24A4 C7AC00D4 */  lwc1  $f12, 0xd4($sp)
/* 22D698 801E24A8 C7AE00D0 */  lwc1  $f14, 0xd0($sp)
/* 22D69C 801E24AC C7A400F0 */  lwc1  $f4, 0xf0($sp)
/* 22D6A0 801E24B0 C7A600F4 */  lwc1  $f6, 0xf4($sp)
/* 22D6A4 801E24B4 C7A800F8 */  lwc1  $f8, 0xf8($sp)
/* 22D6A8 801E24B8 3C063FC9 */  lui   $a2, (0x3FC90FDB >> 16) # lui $a2, 0x3fc9
/* 22D6AC 801E24BC 34C60FDB */  ori   $a2, (0x3FC90FDB & 0xFFFF) # ori $a2, $a2, 0xfdb
/* 22D6B0 801E24C0 27A40044 */  addiu $a0, $sp, 0x44
/* 22D6B4 801E24C4 27A50038 */  addiu $a1, $sp, 0x38
/* 22D6B8 801E24C8 E7A00040 */  swc1  $f0, 0x40($sp)
/* 22D6BC 801E24CC E7AC003C */  swc1  $f12, 0x3c($sp)
/* 22D6C0 801E24D0 E7AE0038 */  swc1  $f14, 0x38($sp)
/* 22D6C4 801E24D4 E7A40044 */  swc1  $f4, 0x44($sp)
/* 22D6C8 801E24D8 E7A60048 */  swc1  $f6, 0x48($sp)
/* 22D6CC 801E24DC 0C00647E */  jal   func_800191F8_ovl17
/* 22D6D0 801E24E0 E7A8004C */   swc1  $f8, 0x4c($sp)
/* 22D6D4 801E24E4 C7A20044 */  lwc1  $f2, 0x44($sp)
/* 22D6D8 801E24E8 C7B00048 */  lwc1  $f16, 0x48($sp)
/* 22D6DC 801E24EC C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 22D6E0 801E24F0 C7A000D8 */  lwc1  $f0, 0xd8($sp)
/* 22D6E4 801E24F4 C7AC00D4 */  lwc1  $f12, 0xd4($sp)
/* 22D6E8 801E24F8 C7AE00D0 */  lwc1  $f14, 0xd0($sp)
/* 22D6EC 801E24FC 27A40044 */  addiu $a0, $sp, 0x44
/* 22D6F0 801E2500 27A50038 */  addiu $a1, $sp, 0x38
/* 22D6F4 801E2504 27A60020 */  addiu $a2, $sp, 0x20
/* 22D6F8 801E2508 E7A20044 */  swc1  $f2, 0x44($sp)
/* 22D6FC 801E250C E7A200F0 */  swc1  $f2, 0xf0($sp)
/* 22D700 801E2510 E7B00048 */  swc1  $f16, 0x48($sp)
/* 22D704 801E2514 E7B000F4 */  swc1  $f16, 0xf4($sp)
/* 22D708 801E2518 E7B2004C */  swc1  $f18, 0x4c($sp)
/* 22D70C 801E251C E7B200F8 */  swc1  $f18, 0xf8($sp)
/* 22D710 801E2520 E7A00040 */  swc1  $f0, 0x40($sp)
/* 22D714 801E2524 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 22D718 801E2528 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22D71C 801E252C E7AE0038 */   swc1  $f14, 0x38($sp)
/* 22D720 801E2530 C7AA00F0 */  lwc1  $f10, 0xf0($sp)
/* 22D724 801E2534 C7A400F4 */  lwc1  $f4, 0xf4($sp)
/* 22D728 801E2538 44801000 */  mtc1  $zero, $f2
/* 22D72C 801E253C C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 22D730 801E2540 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 22D734 801E2544 C7A00028 */  lwc1  $f0, 0x28($sp)
/* 22D738 801E2548 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 22D73C 801E254C E7A40048 */  swc1  $f4, 0x48($sp)
/* 22D740 801E2550 C7A600F8 */  lwc1  $f6, 0xf8($sp)
/* 22D744 801E2554 C7A80070 */  lwc1  $f8, 0x70($sp)
/* 22D748 801E2558 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* 22D74C 801E255C C7A40078 */  lwc1  $f4, 0x78($sp)
/* 22D750 801E2560 27A40044 */  addiu $a0, $sp, 0x44
/* 22D754 801E2564 27A5002C */  addiu $a1, $sp, 0x2c
/* 22D758 801E2568 E7A20028 */  swc1  $f2, 0x28($sp)
/* 22D75C 801E256C E7A20024 */  swc1  $f2, 0x24($sp)
/* 22D760 801E2570 E7A20020 */  swc1  $f2, 0x20($sp)
/* 22D764 801E2574 E7AC0038 */  swc1  $f12, 0x38($sp)
/* 22D768 801E2578 E7AC00E0 */  swc1  $f12, 0xe0($sp)
/* 22D76C 801E257C E7AE003C */  swc1  $f14, 0x3c($sp)
/* 22D770 801E2580 E7AE00E4 */  swc1  $f14, 0xe4($sp)
/* 22D774 801E2584 E7A00040 */  swc1  $f0, 0x40($sp)
/* 22D778 801E2588 E7A000E8 */  swc1  $f0, 0xe8($sp)
/* 22D77C 801E258C E7A6004C */  swc1  $f6, 0x4c($sp)
/* 22D780 801E2590 E7A8002C */  swc1  $f8, 0x2c($sp)
/* 22D784 801E2594 E7AA0030 */  swc1  $f10, 0x30($sp)
/* 22D788 801E2598 0C0063EF */  jal   lbvector_Angle
/* 22D78C 801E259C E7A40034 */   swc1  $f4, 0x34($sp)
/* 22D790 801E25A0 3C01801E */  lui   $at, %hi(D_801E569C) # $at, 0x801e
/* 22D794 801E25A4 C426569C */  lwc1  $f6, %lo(D_801E569C)($at)
/* 22D798 801E25A8 46000086 */  mov.s $f2, $f0
/* 22D79C 801E25AC 4600303C */  c.lt.s $f6, $f0
/* 22D7A0 801E25B0 00000000 */  nop   
/* 22D7A4 801E25B4 45000002 */  bc1f  .L801E25C0_ovl17
/* 22D7A8 801E25B8 3C01801E */   lui   $at, %hi(D_801E56A0) # $at, 0x801e
/* 22D7AC 801E25BC C42256A0 */  lwc1  $f2, %lo(D_801E56A0)($at)
.L801E25C0_ovl17:
/* 22D7B0 801E25C0 3C01801E */  lui   $at, %hi(D_801E56A4) # $at, 0x801e
/* 22D7B4 801E25C4 C42856A4 */  lwc1  $f8, %lo(D_801E56A4)($at)
/* 22D7B8 801E25C8 27A40044 */  addiu $a0, $sp, 0x44
/* 22D7BC 801E25CC 27A5002C */  addiu $a1, $sp, 0x2c
/* 22D7C0 801E25D0 4602403C */  c.lt.s $f8, $f2
/* 22D7C4 801E25D4 27A60020 */  addiu $a2, $sp, 0x20
/* 22D7C8 801E25D8 4502002C */  bc1fl .L801E268C_ovl17
/* 22D7CC 801E25DC C7AA00E0 */   lwc1  $f10, 0xe0($sp)
/* 22D7D0 801E25E0 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22D7D4 801E25E4 E7A2011C */   swc1  $f2, 0x11c($sp)
/* 22D7D8 801E25E8 44800000 */  mtc1  $zero, $f0
/* 22D7DC 801E25EC C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 22D7E0 801E25F0 C7A2011C */  lwc1  $f2, 0x11c($sp)
/* 22D7E4 801E25F4 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 22D7E8 801E25F8 46005032 */  c.eq.s $f10, $f0
/* 22D7EC 801E25FC 27A40038 */  addiu $a0, $sp, 0x38
/* 22D7F0 801E2600 27A50020 */  addiu $a1, $sp, 0x20
/* 22D7F4 801E2604 45000009 */  bc1f  .L801E262C_ovl17
/* 22D7F8 801E2608 00000000 */   nop   
/* 22D7FC 801E260C 46002032 */  c.eq.s $f4, $f0
/* 22D800 801E2610 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 22D804 801E2614 45000005 */  bc1f  .L801E262C_ovl17
/* 22D808 801E2618 00000000 */   nop   
/* 22D80C 801E261C 46003032 */  c.eq.s $f6, $f0
/* 22D810 801E2620 00000000 */  nop   
/* 22D814 801E2624 45030019 */  bc1tl .L801E268C_ovl17
/* 22D818 801E2628 C7AA00E0 */   lwc1  $f10, 0xe0($sp)
.L801E262C_ovl17:
/* 22D81C 801E262C 0C0063EF */  jal   lbvector_Angle
/* 22D820 801E2630 E7A2011C */   swc1  $f2, 0x11c($sp)
/* 22D824 801E2634 3C01801E */  lui   $at, %hi(D_801E56A8) # $at, 0x801e
/* 22D828 801E2638 C42856A8 */  lwc1  $f8, %lo(D_801E56A8)($at)
/* 22D82C 801E263C C7A2011C */  lwc1  $f2, 0x11c($sp)
/* 22D830 801E2640 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 22D834 801E2644 4600403C */  c.lt.s $f8, $f0
/* 22D838 801E2648 27A40044 */  addiu $a0, $sp, 0x44
/* 22D83C 801E264C 45020006 */  bc1fl .L801E2668_ovl17
/* 22D840 801E2650 44061000 */   mfc1  $a2, $f2
/* 22D844 801E2654 44815000 */  mtc1  $at, $f10
/* 22D848 801E2658 00000000 */  nop   
/* 22D84C 801E265C 460A1082 */  mul.s $f2, $f2, $f10
/* 22D850 801E2660 00000000 */  nop   
/* 22D854 801E2664 44061000 */  mfc1  $a2, $f2
.L801E2668_ovl17:
/* 22D858 801E2668 0C00647E */  jal   func_800191F8_ovl17
/* 22D85C 801E266C 27A50038 */   addiu $a1, $sp, 0x38
/* 22D860 801E2670 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 22D864 801E2674 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 22D868 801E2678 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 22D86C 801E267C E7A400F0 */  swc1  $f4, 0xf0($sp)
/* 22D870 801E2680 E7A600F4 */  swc1  $f6, 0xf4($sp)
/* 22D874 801E2684 E7A800F8 */  swc1  $f8, 0xf8($sp)
/* 22D878 801E2688 C7AA00E0 */  lwc1  $f10, 0xe0($sp)
.L801E268C_ovl17:
/* 22D87C 801E268C C7AE00E4 */  lwc1  $f14, 0xe4($sp)
/* 22D880 801E2690 C7A400E8 */  lwc1  $f4, 0xe8($sp)
/* 22D884 801E2694 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 22D888 801E2698 C7A600F0 */  lwc1  $f6, 0xf0($sp)
/* 22D88C 801E269C C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* 22D890 801E26A0 C7AA00F8 */  lwc1  $f10, 0xf8($sp)
/* 22D894 801E26A4 27A40044 */  addiu $a0, $sp, 0x44
/* 22D898 801E26A8 27A5002C */  addiu $a1, $sp, 0x2c
/* 22D89C 801E26AC 27A60020 */  addiu $a2, $sp, 0x20
/* 22D8A0 801E26B0 E7AE0048 */  swc1  $f14, 0x48($sp)
/* 22D8A4 801E26B4 E7A4004C */  swc1  $f4, 0x4c($sp)
/* 22D8A8 801E26B8 E7A6002C */  swc1  $f6, 0x2c($sp)
/* 22D8AC 801E26BC E7A80030 */  swc1  $f8, 0x30($sp)
/* 22D8B0 801E26C0 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22D8B4 801E26C4 E7AA0034 */   swc1  $f10, 0x34($sp)
/* 22D8B8 801E26C8 C7A400F0 */  lwc1  $f4, 0xf0($sp)
/* 22D8BC 801E26CC C7A600F4 */  lwc1  $f6, 0xf4($sp)
/* 22D8C0 801E26D0 44801000 */  mtc1  $zero, $f2
/* 22D8C4 801E26D4 C7AE0020 */  lwc1  $f14, 0x20($sp)
/* 22D8C8 801E26D8 C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 22D8CC 801E26DC C7A00028 */  lwc1  $f0, 0x28($sp)
/* 22D8D0 801E26E0 E7A40044 */  swc1  $f4, 0x44($sp)
/* 22D8D4 801E26E4 E7A60048 */  swc1  $f6, 0x48($sp)
/* 22D8D8 801E26E8 C7A800F8 */  lwc1  $f8, 0xf8($sp)
/* 22D8DC 801E26EC C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 22D8E0 801E26F0 C7A40074 */  lwc1  $f4, 0x74($sp)
/* 22D8E4 801E26F4 C7A60078 */  lwc1  $f6, 0x78($sp)
/* 22D8E8 801E26F8 27A40044 */  addiu $a0, $sp, 0x44
/* 22D8EC 801E26FC 27A5002C */  addiu $a1, $sp, 0x2c
/* 22D8F0 801E2700 E7A20028 */  swc1  $f2, 0x28($sp)
/* 22D8F4 801E2704 E7A20024 */  swc1  $f2, 0x24($sp)
/* 22D8F8 801E2708 E7A20020 */  swc1  $f2, 0x20($sp)
/* 22D8FC 801E270C E7AE0038 */  swc1  $f14, 0x38($sp)
/* 22D900 801E2710 E7AE00D0 */  swc1  $f14, 0xd0($sp)
/* 22D904 801E2714 E7AC003C */  swc1  $f12, 0x3c($sp)
/* 22D908 801E2718 E7AC00D4 */  swc1  $f12, 0xd4($sp)
/* 22D90C 801E271C E7A00040 */  swc1  $f0, 0x40($sp)
/* 22D910 801E2720 E7A000D8 */  swc1  $f0, 0xd8($sp)
/* 22D914 801E2724 E7A8004C */  swc1  $f8, 0x4c($sp)
/* 22D918 801E2728 E7AA002C */  swc1  $f10, 0x2c($sp)
/* 22D91C 801E272C E7A40030 */  swc1  $f4, 0x30($sp)
/* 22D920 801E2730 0C0063EF */  jal   lbvector_Angle
/* 22D924 801E2734 E7A60034 */   swc1  $f6, 0x34($sp)
/* 22D928 801E2738 3C01801E */  lui   $at, %hi(D_801E56AC) # $at, 0x801e
/* 22D92C 801E273C C42856AC */  lwc1  $f8, %lo(D_801E56AC)($at)
/* 22D930 801E2740 46000086 */  mov.s $f2, $f0
/* 22D934 801E2744 3C01801E */  lui   $at, %hi(D_801E56B0) # $at, 0x801e
/* 22D938 801E2748 4600403C */  c.lt.s $f8, $f0
/* 22D93C 801E274C 27A40044 */  addiu $a0, $sp, 0x44
/* 22D940 801E2750 27A5002C */  addiu $a1, $sp, 0x2c
/* 22D944 801E2754 27A60020 */  addiu $a2, $sp, 0x20
/* 22D948 801E2758 45000002 */  bc1f  .L801E2764_ovl17
/* 22D94C 801E275C 00000000 */   nop   
/* 22D950 801E2760 C42256B0 */  lwc1  $f2, %lo(D_801E56B0)($at)
.L801E2764_ovl17:
/* 22D954 801E2764 3C01801E */  lui   $at, %hi(D_801E56B4) # $at, 0x801e
/* 22D958 801E2768 C42A56B4 */  lwc1  $f10, %lo(D_801E56B4)($at)
/* 22D95C 801E276C 4602503C */  c.lt.s $f10, $f2
/* 22D960 801E2770 00000000 */  nop   
/* 22D964 801E2774 4502002C */  bc1fl .L801E2828_ovl17
/* 22D968 801E2778 C7A400E0 */   lwc1  $f4, 0xe0($sp)
/* 22D96C 801E277C 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22D970 801E2780 E7A2011C */   swc1  $f2, 0x11c($sp)
/* 22D974 801E2784 44800000 */  mtc1  $zero, $f0
/* 22D978 801E2788 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 22D97C 801E278C C7A2011C */  lwc1  $f2, 0x11c($sp)
/* 22D980 801E2790 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 22D984 801E2794 46002032 */  c.eq.s $f4, $f0
/* 22D988 801E2798 27A40038 */  addiu $a0, $sp, 0x38
/* 22D98C 801E279C 27A50020 */  addiu $a1, $sp, 0x20
/* 22D990 801E27A0 45000009 */  bc1f  .L801E27C8_ovl17
/* 22D994 801E27A4 00000000 */   nop   
/* 22D998 801E27A8 46003032 */  c.eq.s $f6, $f0
/* 22D99C 801E27AC C7A80028 */  lwc1  $f8, 0x28($sp)
/* 22D9A0 801E27B0 45000005 */  bc1f  .L801E27C8_ovl17
/* 22D9A4 801E27B4 00000000 */   nop   
/* 22D9A8 801E27B8 46004032 */  c.eq.s $f8, $f0
/* 22D9AC 801E27BC 00000000 */  nop   
/* 22D9B0 801E27C0 45030019 */  bc1tl .L801E2828_ovl17
/* 22D9B4 801E27C4 C7A400E0 */   lwc1  $f4, 0xe0($sp)
.L801E27C8_ovl17:
/* 22D9B8 801E27C8 0C0063EF */  jal   lbvector_Angle
/* 22D9BC 801E27CC E7A2011C */   swc1  $f2, 0x11c($sp)
/* 22D9C0 801E27D0 3C01801E */  lui   $at, %hi(D_801E56B8) # $at, 0x801e
/* 22D9C4 801E27D4 C42A56B8 */  lwc1  $f10, %lo(D_801E56B8)($at)
/* 22D9C8 801E27D8 C7A2011C */  lwc1  $f2, 0x11c($sp)
/* 22D9CC 801E27DC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 22D9D0 801E27E0 4600503C */  c.lt.s $f10, $f0
/* 22D9D4 801E27E4 27A40044 */  addiu $a0, $sp, 0x44
/* 22D9D8 801E27E8 45020006 */  bc1fl .L801E2804_ovl17
/* 22D9DC 801E27EC 44061000 */   mfc1  $a2, $f2
/* 22D9E0 801E27F0 44812000 */  mtc1  $at, $f4
/* 22D9E4 801E27F4 00000000 */  nop   
/* 22D9E8 801E27F8 46041082 */  mul.s $f2, $f2, $f4
/* 22D9EC 801E27FC 00000000 */  nop   
/* 22D9F0 801E2800 44061000 */  mfc1  $a2, $f2
.L801E2804_ovl17:
/* 22D9F4 801E2804 0C00647E */  jal   func_800191F8_ovl17
/* 22D9F8 801E2808 27A50038 */   addiu $a1, $sp, 0x38
/* 22D9FC 801E280C C7A60044 */  lwc1  $f6, 0x44($sp)
/* 22DA00 801E2810 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 22DA04 801E2814 C7AA004C */  lwc1  $f10, 0x4c($sp)
/* 22DA08 801E2818 E7A600F0 */  swc1  $f6, 0xf0($sp)
/* 22DA0C 801E281C E7A800F4 */  swc1  $f8, 0xf4($sp)
/* 22DA10 801E2820 E7AA00F8 */  swc1  $f10, 0xf8($sp)
/* 22DA14 801E2824 C7A400E0 */  lwc1  $f4, 0xe0($sp)
.L801E2828_ovl17:
/* 22DA18 801E2828 C7AE00E4 */  lwc1  $f14, 0xe4($sp)
/* 22DA1C 801E282C C7A600E8 */  lwc1  $f6, 0xe8($sp)
/* 22DA20 801E2830 E7A40044 */  swc1  $f4, 0x44($sp)
/* 22DA24 801E2834 C7A800F0 */  lwc1  $f8, 0xf0($sp)
/* 22DA28 801E2838 C7AA00F4 */  lwc1  $f10, 0xf4($sp)
/* 22DA2C 801E283C C7A400F8 */  lwc1  $f4, 0xf8($sp)
/* 22DA30 801E2840 27A40044 */  addiu $a0, $sp, 0x44
/* 22DA34 801E2844 27A5002C */  addiu $a1, $sp, 0x2c
/* 22DA38 801E2848 27A60020 */  addiu $a2, $sp, 0x20
/* 22DA3C 801E284C E7AE0048 */  swc1  $f14, 0x48($sp)
/* 22DA40 801E2850 E7A6004C */  swc1  $f6, 0x4c($sp)
/* 22DA44 801E2854 E7A8002C */  swc1  $f8, 0x2c($sp)
/* 22DA48 801E2858 E7AA0030 */  swc1  $f10, 0x30($sp)
/* 22DA4C 801E285C 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22DA50 801E2860 E7A40034 */   swc1  $f4, 0x34($sp)
/* 22DA54 801E2864 C7AE0020 */  lwc1  $f14, 0x20($sp)
/* 22DA58 801E2868 C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 22DA5C 801E286C C7A00028 */  lwc1  $f0, 0x28($sp)
/* 22DA60 801E2870 C7A600F0 */  lwc1  $f6, 0xf0($sp)
/* 22DA64 801E2874 C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* 22DA68 801E2878 C7AA00F8 */  lwc1  $f10, 0xf8($sp)
/* 22DA6C 801E287C 27A40044 */  addiu $a0, $sp, 0x44
/* 22DA70 801E2880 27A5002C */  addiu $a1, $sp, 0x2c
/* 22DA74 801E2884 27A60020 */  addiu $a2, $sp, 0x20
/* 22DA78 801E2888 E7AE002C */  swc1  $f14, 0x2c($sp)
/* 22DA7C 801E288C E7AE00D0 */  swc1  $f14, 0xd0($sp)
/* 22DA80 801E2890 E7AC0030 */  swc1  $f12, 0x30($sp)
/* 22DA84 801E2894 E7AC00D4 */  swc1  $f12, 0xd4($sp)
/* 22DA88 801E2898 E7A00034 */  swc1  $f0, 0x34($sp)
/* 22DA8C 801E289C E7A000D8 */  swc1  $f0, 0xd8($sp)
/* 22DA90 801E28A0 E7A60044 */  swc1  $f6, 0x44($sp)
/* 22DA94 801E28A4 E7A80048 */  swc1  $f8, 0x48($sp)
/* 22DA98 801E28A8 0C0065D0 */  jal   vec3_normalized_cross_product
/* 22DA9C 801E28AC E7AA004C */   swc1  $f10, 0x4c($sp)
/* 22DAA0 801E28B0 C7A000D8 */  lwc1  $f0, 0xd8($sp)
/* 22DAA4 801E28B4 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 22DAA8 801E28B8 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 22DAAC 801E28BC C7A60028 */  lwc1  $f6, 0x28($sp)
/* 22DAB0 801E28C0 46000307 */  neg.s $f12, $f0
/* 22DAB4 801E28C4 E7A400E0 */  swc1  $f4, 0xe0($sp)
/* 22DAB8 801E28C8 E7AE00E4 */  swc1  $f14, 0xe4($sp)
/* 22DABC 801E28CC 0C006203 */  jal   asinf
/* 22DAC0 801E28D0 E7A600E8 */   swc1  $f6, 0xe8($sp)
/* 22DAC4 801E28D4 3C01801E */  lui   $at, %hi(D_801E56BC) # $at, 0x801e
/* 22DAC8 801E28D8 C42256BC */  lwc1  $f2, %lo(D_801E56BC)($at)
/* 22DACC 801E28DC E7A00114 */  swc1  $f0, 0x114($sp)
/* 22DAD0 801E28E0 3C01801E */  lui   $at, %hi(D_801E56C0) # $at, 0x801e
/* 22DAD4 801E28E4 46020032 */  c.eq.s $f0, $f2
/* 22DAD8 801E28E8 00000000 */  nop   
/* 22DADC 801E28EC 45030008 */  bc1tl .L801E2910_ovl17
/* 22DAE0 801E28F0 46020032 */   c.eq.s $f0, $f2
/* 22DAE4 801E28F4 C42856C0 */  lwc1  $f8, %lo(D_801E56C0)($at)
/* 22DAE8 801E28F8 C7AC00E8 */  lwc1  $f12, 0xe8($sp)
/* 22DAEC 801E28FC 46080032 */  c.eq.s $f0, $f8
/* 22DAF0 801E2900 00000000 */  nop   
/* 22DAF4 801E2904 45000011 */  bc1f  .L801E294C_ovl17
/* 22DAF8 801E2908 00000000 */   nop   
/* 22DAFC 801E290C 46020032 */  c.eq.s $f0, $f2
.L801E2910_ovl17:
/* 22DB00 801E2910 C7AE00E4 */  lwc1  $f14, 0xe4($sp)
/* 22DB04 801E2914 C7AC00E0 */  lwc1  $f12, 0xe0($sp)
/* 22DB08 801E2918 45020006 */  bc1fl .L801E2934_ovl17
/* 22DB0C 801E291C C7AE00E4 */   lwc1  $f14, 0xe4($sp)
/* 22DB10 801E2920 0C0061C3 */  jal   atan2f
/* 22DB14 801E2924 C7AC00E0 */   lwc1  $f12, 0xe0($sp)
/* 22DB18 801E2928 10000005 */  b     .L801E2940_ovl17
/* 22DB1C 801E292C E7A00110 */   swc1  $f0, 0x110($sp)
/* 22DB20 801E2930 C7AE00E4 */  lwc1  $f14, 0xe4($sp)
.L801E2934_ovl17:
/* 22DB24 801E2934 0C0061C3 */  jal   atan2f
/* 22DB28 801E2938 46006307 */   neg.s $f12, $f12
/* 22DB2C 801E293C E7A00110 */  swc1  $f0, 0x110($sp)
.L801E2940_ovl17:
/* 22DB30 801E2940 44805000 */  mtc1  $zero, $f10
/* 22DB34 801E2944 10000008 */  b     .L801E2968_ovl17
/* 22DB38 801E2948 E7AA0118 */   swc1  $f10, 0x118($sp)
.L801E294C_ovl17:
/* 22DB3C 801E294C 0C0061C3 */  jal   atan2f
/* 22DB40 801E2950 C7AE00F8 */   lwc1  $f14, 0xf8($sp)
/* 22DB44 801E2954 C7AC00D4 */  lwc1  $f12, 0xd4($sp)
/* 22DB48 801E2958 C7AE00D0 */  lwc1  $f14, 0xd0($sp)
/* 22DB4C 801E295C 0C0061C3 */  jal   atan2f
/* 22DB50 801E2960 E7A00110 */   swc1  $f0, 0x110($sp)
/* 22DB54 801E2964 E7A00118 */  swc1  $f0, 0x118($sp)
.L801E2968_ovl17:
/* 22DB58 801E2968 0C029166 */  jal   func_800A4598
/* 22DB5C 801E296C 27A40110 */   addiu $a0, $sp, 0x110
/* 22DB60 801E2970 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22DB64 801E2974 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22DB68 801E2978 C7A40110 */  lwc1  $f4, 0x110($sp)
/* 22DB6C 801E297C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 22DB70 801E2980 8C580000 */  lw    $t8, ($v0)
/* 22DB74 801E2984 C7A60114 */  lwc1  $f6, 0x114($sp)
/* 22DB78 801E2988 C7A80118 */  lwc1  $f8, 0x118($sp)
/* 22DB7C 801E298C 0018C880 */  sll   $t9, $t8, 2
/* 22DB80 801E2990 00390821 */  addu  $at, $at, $t9
/* 22DB84 801E2994 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 22DB88 801E2998 8C480000 */  lw    $t0, ($v0)
/* 22DB8C 801E299C 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 22DB90 801E29A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22DB94 801E29A4 00084880 */  sll   $t1, $t0, 2
/* 22DB98 801E29A8 00290821 */  addu  $at, $at, $t1
/* 22DB9C 801E29AC E426A8A0 */ swc1 $f6, %lo(D_800EA8A0)($at)
/* 22DBA0 801E29B0 8C4A0000 */  lw    $t2, ($v0)
/* 22DBA4 801E29B4 3C01800F */ lui $at, %hi(D_800EAA60)
/* 22DBA8 801E29B8 000A5880 */  sll   $t3, $t2, 2
/* 22DBAC 801E29BC 002B0821 */  addu  $at, $at, $t3
/* 22DBB0 801E29C0 E428AA60 */ swc1 $f8, %lo(D_800EAA60)($at)
/* 22DBB4 801E29C4 8C430000 */  lw    $v1, ($v0)
/* 22DBB8 801E29C8 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 22DBBC 801E29CC 00031880 */  sll   $v1, $v1, 2
/* 22DBC0 801E29D0 00230821 */  addu  $at, $at, $v1
/* 22DBC4 801E29D4 C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 22DBC8 801E29D8 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 22DBCC 801E29DC 00230821 */  addu  $at, $at, $v1
/* 22DBD0 801E29E0 E42A4010 */ swc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 22DBD4 801E29E4 8C430000 */  lw    $v1, ($v0)
/* 22DBD8 801E29E8 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 22DBDC 801E29EC 00031880 */  sll   $v1, $v1, 2
/* 22DBE0 801E29F0 00230821 */  addu  $at, $at, $v1
/* 22DBE4 801E29F4 C424A8A0 */ lwc1 $f4, %lo(D_800EA8A0)($at)
/* 22DBE8 801E29F8 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 22DBEC 801E29FC 00230821 */  addu  $at, $at, $v1
/* 22DBF0 801E2A00 E42441D0 */ swc1 $f4, %lo(gEntitiesAngleYArray)($at)
/* 22DBF4 801E2A04 8C430000 */  lw    $v1, ($v0)
/* 22DBF8 801E2A08 3C01800F */ lui $at, %hi(D_800EAA60)
/* 22DBFC 801E2A0C 00031880 */  sll   $v1, $v1, 2
/* 22DC00 801E2A10 00230821 */  addu  $at, $at, $v1
/* 22DC04 801E2A14 C426AA60 */ lwc1 $f6, %lo(D_800EAA60)($at)
/* 22DC08 801E2A18 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 22DC0C 801E2A1C 00230821 */  addu  $at, $at, $v1
/* 22DC10 801E2A20 27BD0120 */  addiu $sp, $sp, 0x120
/* 22DC14 801E2A24 03E00008 */  jr    $ra
/* 22DC18 801E2A28 E4264390 */ swc1 $f6, %lo(gEntitiesAngleZArray)($at)
.type func_801E23E0_ovl17, @function
.size func_801E23E0_ovl17, . - func_801E23E0_ovl17

glabel func_801E2A2C_ovl17
/* 22DC1C 801E2A2C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22DC20 801E2A30 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22DC24 801E2A34 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22DC28 801E2A38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22DC2C 801E2A3C AFA40018 */  sw    $a0, 0x18($sp)
/* 22DC30 801E2A40 8C4F0000 */  lw    $t7, ($v0)
/* 22DC34 801E2A44 3C0E800B */  lui   $t6, %hi(D_800B4B9C) # $t6, 0x800b
/* 22DC38 801E2A48 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22DC3C 801E2A4C 000FC080 */  sll   $t8, $t7, 2
/* 22DC40 801E2A50 00380821 */  addu  $at, $at, $t8
/* 22DC44 801E2A54 25CE4B9C */  addiu $t6, %lo(D_800B4B9C) # addiu $t6, $t6, 0x4b9c
/* 22DC48 801E2A58 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 22DC4C 801E2A5C 8C480000 */  lw    $t0, ($v0)
/* 22DC50 801E2A60 3C01800E */ lui $at, %hi(D_800DF150)
/* 22DC54 801E2A64 3C19801E */  lui   $t9, %hi(D_801E2B78) # $t9, 0x801e
/* 22DC58 801E2A68 00084880 */  sll   $t1, $t0, 2
/* 22DC5C 801E2A6C 00290821 */  addu  $at, $at, $t1
/* 22DC60 801E2A70 27392B78 */  addiu $t9, %lo(D_801E2B78) # addiu $t9, $t9, 0x2b78
/* 22DC64 801E2A74 AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 22DC68 801E2A78 8C4A0000 */  lw    $t2, ($v0)
/* 22DC6C 801E2A7C 3C01800F */ lui $at, %hi(D_800E8920)
/* 22DC70 801E2A80 3C040001 */  lui   $a0, (0x00010085 >> 16) # lui $a0, 1
/* 22DC74 801E2A84 000A5880 */  sll   $t3, $t2, 2
/* 22DC78 801E2A88 002B0821 */  addu  $at, $at, $t3
/* 22DC7C 801E2A8C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22DC80 801E2A90 8C4C0000 */  lw    $t4, ($v0)
/* 22DC84 801E2A94 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 22DC88 801E2A98 44812000 */  mtc1  $at, $f4
/* 22DC8C 801E2A9C 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22DC90 801E2AA0 000C6880 */  sll   $t5, $t4, 2
/* 22DC94 801E2AA4 002D0821 */  addu  $at, $at, $t5
/* 22DC98 801E2AA8 34840085 */  ori   $a0, (0x00010085 & 0xFFFF) # ori $a0, $a0, 0x85
/* 22DC9C 801E2AAC 24050023 */  li    $a1, 35
/* 22DCA0 801E2AB0 24060010 */  li    $a2, 16
/* 22DCA4 801E2AB4 0C02A619 */  jal   func_800A9864
/* 22DCA8 801E2AB8 E4247B20 */ swc1 $f4, %lo(D_800E7B20)($at)
/* 22DCAC 801E2ABC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22DCB0 801E2AC0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22DCB4 801E2AC4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22DCB8 801E2AC8 8FA40018 */  lw    $a0, 0x18($sp)
/* 22DCBC 801E2ACC 8DEE0000 */  lw    $t6, ($t7)
/* 22DCC0 801E2AD0 000EC080 */  sll   $t8, $t6, 2
/* 22DCC4 801E2AD4 00380821 */  addu  $at, $at, $t8
/* 22DCC8 801E2AD8 0C078ABC */  jal   func_801E2AF0_ovl17
/* 22DCCC 801E2ADC AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 22DCD0 801E2AE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22DCD4 801E2AE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 22DCD8 801E2AE8 03E00008 */  jr    $ra
/* 22DCDC 801E2AEC 00000000 */   nop   
.type func_801E2A2C_ovl17, @function
.size func_801E2A2C_ovl17, . - func_801E2A2C_ovl17

glabel func_801E2AF0_ovl17
/* 22DCE0 801E2AF0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 22DCE4 801E2AF4 AFB20020 */  sw    $s2, 0x20($sp)
/* 22DCE8 801E2AF8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 22DCEC 801E2AFC AFB00018 */  sw    $s0, 0x18($sp)
/* 22DCF0 801E2B00 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 22DCF4 801E2B04 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 22DCF8 801E2B08 3C12801E */  lui   $s2, %hi(D_801E549C) # $s2, 0x801e
/* 22DCFC 801E2B0C AFBF0024 */  sw    $ra, 0x24($sp)
/* 22DD00 801E2B10 AFA40028 */  sw    $a0, 0x28($sp)
/* 22DD04 801E2B14 2652549C */  addiu $s2, %lo(D_801E549C) # addiu $s2, $s2, 0x549c
/* 22DD08 801E2B18 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 22DD0C 801E2B1C 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 22DD10 801E2B20 8E2E0000 */  lw    $t6, ($s1)
.L801E2B24_ovl17:
/* 22DD14 801E2B24 24050005 */  li    $a1, 5
/* 22DD18 801E2B28 02403025 */  move  $a2, $s2
/* 22DD1C 801E2B2C 8DCF0000 */  lw    $t7, ($t6)
/* 22DD20 801E2B30 000FC080 */  sll   $t8, $t7, 2
/* 22DD24 801E2B34 0218C821 */  addu  $t9, $s0, $t8
/* 22DD28 801E2B38 0C02911F */  jal   call_virtual_function
/* 22DD2C 801E2B3C 8F240000 */   lw    $a0, ($t9)
/* 22DD30 801E2B40 1000FFF8 */  b     .L801E2B24_ovl17
/* 22DD34 801E2B44 8E2E0000 */   lw    $t6, ($s1)
/* 22DD38 801E2B48 00000000 */  nop   
/* 22DD3C 801E2B4C 00000000 */  nop   
/* 22DD40 801E2B50 00000000 */  nop   
/* 22DD44 801E2B54 00000000 */  nop   
/* 22DD48 801E2B58 00000000 */  nop   
/* 22DD4C 801E2B5C 00000000 */  nop   
/* 22DD50 801E2B60 8FBF0024 */  lw    $ra, 0x24($sp)
/* 22DD54 801E2B64 8FB00018 */  lw    $s0, 0x18($sp)
/* 22DD58 801E2B68 8FB1001C */  lw    $s1, 0x1c($sp)
/* 22DD5C 801E2B6C 8FB20020 */  lw    $s2, 0x20($sp)
/* 22DD60 801E2B70 03E00008 */  jr    $ra
/* 22DD64 801E2B74 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801E2AF0_ovl17, @function
.size func_801E2AF0_ovl17, . - func_801E2AF0_ovl17

glabel func_801E2B78_ovl17
/* 22DD68 801E2B78 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22DD6C 801E2B7C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22DD70 801E2B80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22DD74 801E2B84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22DD78 801E2B88 AFA40018 */  sw    $a0, 0x18($sp)
/* 22DD7C 801E2B8C 8C620000 */  lw    $v0, ($v1)
/* 22DD80 801E2B90 3C0E800E */  lui   $t6, %hi(gEntityVtableIndexArray) # $t6, 0x800e
/* 22DD84 801E2B94 25CEDC50 */  addiu $t6, %lo(gEntityVtableIndexArray) # addiu $t6, $t6, -0x23b0
/* 22DD88 801E2B98 00021080 */  sll   $v0, $v0, 2
/* 22DD8C 801E2B9C 004E3021 */  addu  $a2, $v0, $t6
/* 22DD90 801E2BA0 8CCF0000 */  lw    $t7, ($a2)
/* 22DD94 801E2BA4 24070004 */  li    $a3, 4
/* 22DD98 801E2BA8 3C18800E */ lui $t8, %hi(D_800E0D50)
/* 22DD9C 801E2BAC 10EF0013 */  beq   $a3, $t7, .L801E2BFC_ovl17
/* 22DDA0 801E2BB0 0302C021 */   addu  $t8, $t8, $v0
/* 22DDA4 801E2BB4 8F180D50 */ lw $t8, %lo(D_800E0D50)($t8)
/* 22DDA8 801E2BB8 3C08800F */ lui $t0, %hi(D_800EA1A0)
/* 22DDAC 801E2BBC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22DDB0 801E2BC0 0018C880 */  sll   $t9, $t8, 2
/* 22DDB4 801E2BC4 01194021 */  addu  $t0, $t0, $t9
/* 22DDB8 801E2BC8 8D08A1A0 */ lw $t0, %lo(D_800EA1A0)($t0)
/* 22DDBC 801E2BCC 1100000B */  beqz  $t0, .L801E2BFC_ovl17
/* 22DDC0 801E2BD0 00000000 */   nop   
/* 22DDC4 801E2BD4 ACC70000 */  sw    $a3, ($a2)
/* 22DDC8 801E2BD8 8C690000 */  lw    $t1, ($v1)
/* 22DDCC 801E2BDC 3C05801E */  lui   $a1, %hi(func_801E2AF0) # $a1, 0x801e
/* 22DDD0 801E2BE0 24A52AF0 */  addiu $a1, %lo(func_801E2AF0) # addiu $a1, $a1, 0x2af0
/* 22DDD4 801E2BE4 00095080 */  sll   $t2, $t1, 2
/* 22DDD8 801E2BE8 008A2021 */  addu  $a0, $a0, $t2
/* 22DDDC 801E2BEC 0C02C7B2 */  jal   assign_new_process_entry
/* 22DDE0 801E2BF0 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22DDE4 801E2BF4 10000009 */  b     .L801E2C1C_ovl17
/* 22DDE8 801E2BF8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E2BFC_ovl17:
/* 22DDEC 801E2BFC 3C04800E */ lui $a0, %hi(D_800DDFD0)
/* 22DDF0 801E2C00 00822021 */  addu  $a0, $a0, $v0
/* 22DDF4 801E2C04 3C06801E */  lui   $a2, %hi(D_801E54B0) # $a2, 0x801e
/* 22DDF8 801E2C08 24C654B0 */  addiu $a2, %lo(D_801E54B0) # addiu $a2, $a2, 0x54b0
/* 22DDFC 801E2C0C 8C84DFD0 */ lw $a0, %lo(D_800DDFD0)($a0)
/* 22DE00 801E2C10 0C02911F */  jal   call_virtual_function
/* 22DE04 801E2C14 24050005 */   li    $a1, 5
/* 22DE08 801E2C18 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E2C1C_ovl17:
/* 22DE0C 801E2C1C 27BD0018 */  addiu $sp, $sp, 0x18
/* 22DE10 801E2C20 03E00008 */  jr    $ra
/* 22DE14 801E2C24 00000000 */   nop   
.type func_801E2B78_ovl17, @function
.size func_801E2B78_ovl17, . - func_801E2B78_ovl17

glabel func_801E2C28_ovl17
/* 22DE18 801E2C28 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 22DE1C 801E2C2C AFB00018 */  sw    $s0, 0x18($sp)
/* 22DE20 801E2C30 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 22DE24 801E2C34 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 22DE28 801E2C38 8E050000 */  lw    $a1, ($s0)
/* 22DE2C 801E2C3C AFBF0024 */  sw    $ra, 0x24($sp)
/* 22DE30 801E2C40 AFB20020 */  sw    $s2, 0x20($sp)
/* 22DE34 801E2C44 AFB1001C */  sw    $s1, 0x1c($sp)
/* 22DE38 801E2C48 AFA40028 */  sw    $a0, 0x28($sp)
/* 22DE3C 801E2C4C 8CAE0000 */  lw    $t6, ($a1)
/* 22DE40 801E2C50 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22DE44 801E2C54 3C11800F */  lui   $s1, %hi(D_800E9AA0) # $s1, 0x800f
/* 22DE48 801E2C58 000E7880 */  sll   $t7, $t6, 2
/* 22DE4C 801E2C5C 002F0821 */  addu  $at, $at, $t7
/* 22DE50 801E2C60 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 22DE54 801E2C64 AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 22DE58 801E2C68 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0x0d50
/* 22DE5C 801E2C6C 26319AA0 */  addiu $s1, %lo(D_800E9AA0) # addiu $s1, $s1, -0x6560
.L801E2C70_ovl17:
/* 22DE60 801E2C70 0C02BEED */  jal   func_800AFBB4
/* 22DE64 801E2C74 00002025 */   move  $a0, $zero
/* 22DE68 801E2C78 0C002DAF */  jal   finish_current_thread
/* 22DE6C 801E2C7C 24040001 */   li    $a0, 1
/* 22DE70 801E2C80 8E050000 */  lw    $a1, ($s0)
/* 22DE74 801E2C84 8CA20000 */  lw    $v0, ($a1)
/* 22DE78 801E2C88 00021080 */  sll   $v0, $v0, 2
/* 22DE7C 801E2C8C 0242C021 */  addu  $t8, $s2, $v0
/* 22DE80 801E2C90 8F190000 */  lw    $t9, ($t8)
/* 22DE84 801E2C94 00194080 */  sll   $t0, $t9, 2
/* 22DE88 801E2C98 02284821 */  addu  $t1, $s1, $t0
/* 22DE8C 801E2C9C 8D2A0000 */  lw    $t2, ($t1)
/* 22DE90 801E2CA0 1140FFF3 */  beqz  $t2, .L801E2C70_ovl17
/* 22DE94 801E2CA4 00000000 */   nop   
/* 22DE98 801E2CA8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 22DE9C 801E2CAC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22DEA0 801E2CB0 00220821 */  addu  $at, $at, $v0
/* 22DEA4 801E2CB4 240B0001 */  li    $t3, 1
/* 22DEA8 801E2CB8 8FB00018 */  lw    $s0, 0x18($sp)
/* 22DEAC 801E2CBC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 22DEB0 801E2CC0 8FB20020 */  lw    $s2, 0x20($sp)
/* 22DEB4 801E2CC4 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 22DEB8 801E2CC8 03E00008 */  jr    $ra
/* 22DEBC 801E2CCC 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801E2C28_ovl17, @function
.size func_801E2C28_ovl17, . - func_801E2C28_ovl17

glabel func_801E2CD0_ovl17
/* 22DEC0 801E2CD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22DEC4 801E2CD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22DEC8 801E2CD8 0C078C2F */  jal   D_801E30BC_ovl17
/* 22DECC 801E2CDC AFA40018 */   sw    $a0, 0x18($sp)
/* 22DED0 801E2CE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22DED4 801E2CE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 22DED8 801E2CE8 03E00008 */  jr    $ra
/* 22DEDC 801E2CEC 00000000 */   nop   
.type func_801E2CD0_ovl17, @function
.size func_801E2CD0_ovl17, . - func_801E2CD0_ovl17

glabel func_801E2CF0_ovl17
/* 22DEE0 801E2CF0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22DEE4 801E2CF4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22DEE8 801E2CF8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 22DEEC 801E2CFC AFBF0014 */  sw    $ra, 0x14($sp)
/* 22DEF0 801E2D00 AFA40028 */  sw    $a0, 0x28($sp)
/* 22DEF4 801E2D04 8DF80000 */  lw    $t8, ($t7)
/* 22DEF8 801E2D08 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22DEFC 801E2D0C 240E0001 */  li    $t6, 1
/* 22DF00 801E2D10 0018C880 */  sll   $t9, $t8, 2
/* 22DF04 801E2D14 00390821 */  addu  $at, $at, $t9
/* 22DF08 801E2D18 3C040001 */  lui   $a0, (0x00010517 >> 16) # lui $a0, 1
/* 22DF0C 801E2D1C AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22DF10 801E2D20 0C02A806 */  jal   func_800AA018
/* 22DF14 801E2D24 34840517 */   ori   $a0, (0x00010517 & 0xFFFF) # ori $a0, $a0, 0x517
/* 22DF18 801E2D28 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22DF1C 801E2D2C 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22DF20 801E2D30 0C02BEED */  jal   func_800AFBB4
/* 22DF24 801E2D34 24040001 */   li    $a0, 1
/* 22DF28 801E2D38 0C002DAF */  jal   finish_current_thread
/* 22DF2C 801E2D3C 24040006 */   li    $a0, 6
/* 22DF30 801E2D40 8FA80028 */  lw    $t0, 0x28($sp)
/* 22DF34 801E2D44 27A4001C */  addiu $a0, $sp, 0x1c
/* 22DF38 801E2D48 8D09003C */  lw    $t1, 0x3c($t0)
/* 22DF3C 801E2D4C 8D2A0010 */  lw    $t2, 0x10($t1)
/* 22DF40 801E2D50 0C0291E5 */  jal   func_800A4794
/* 22DF44 801E2D54 8D450010 */   lw    $a1, 0x10($t2)
/* 22DF48 801E2D58 2404003C */  li    $a0, 60
/* 22DF4C 801E2D5C 24050001 */  li    $a1, 1
/* 22DF50 801E2D60 0C06B364 */  jal   func_801ACD90_ovl17
/* 22DF54 801E2D64 27A6001C */   addiu $a2, $sp, 0x1c
/* 22DF58 801E2D68 0C029D9E */  jal   play_sound
/* 22DF5C 801E2D6C 240401C7 */   li    $a0, 455
/* 22DF60 801E2D70 0C002DAF */  jal   finish_current_thread
/* 22DF64 801E2D74 24040006 */   li    $a0, 6
/* 22DF68 801E2D78 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 22DF6C 801E2D7C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 22DF70 801E2D80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22DF74 801E2D84 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22DF78 801E2D88 8D6C0000 */  lw    $t4, ($t3)
/* 22DF7C 801E2D8C 27BD0028 */  addiu $sp, $sp, 0x28
/* 22DF80 801E2D90 000C6880 */  sll   $t5, $t4, 2
/* 22DF84 801E2D94 002D0821 */  addu  $at, $at, $t5
/* 22DF88 801E2D98 03E00008 */  jr    $ra
/* 22DF8C 801E2D9C AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
.type func_801E2CF0_ovl17, @function
.size func_801E2CF0_ovl17, . - func_801E2CF0_ovl17

glabel func_801E2DA0_ovl17
/* 22DF90 801E2DA0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22DF94 801E2DA4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22DF98 801E2DA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22DF9C 801E2DAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 22DFA0 801E2DB0 AFA40018 */  sw    $a0, 0x18($sp)
/* 22DFA4 801E2DB4 8C430000 */  lw    $v1, ($v0)
/* 22DFA8 801E2DB8 3C0E800E */ lui $t6, %hi(D_800E0D50)
/* 22DFAC 801E2DBC 3C18800F */ lui $t8, %hi(D_800E9AA0)
/* 22DFB0 801E2DC0 00031880 */  sll   $v1, $v1, 2
/* 22DFB4 801E2DC4 01C37021 */  addu  $t6, $t6, $v1
/* 22DFB8 801E2DC8 8DCE0D50 */ lw $t6, %lo(D_800E0D50)($t6)
/* 22DFBC 801E2DCC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22DFC0 801E2DD0 00230821 */  addu  $at, $at, $v1
/* 22DFC4 801E2DD4 000E7880 */  sll   $t7, $t6, 2
/* 22DFC8 801E2DD8 030FC021 */  addu  $t8, $t8, $t7
/* 22DFCC 801E2DDC 8F189AA0 */ lw $t8, %lo(D_800E9AA0)($t8)
/* 22DFD0 801E2DE0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22DFD4 801E2DE4 17000009 */  bnez  $t8, .L801E2E0C_ovl17
/* 22DFD8 801E2DE8 00000000 */   nop   
/* 22DFDC 801E2DEC AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 22DFE0 801E2DF0 8C590000 */  lw    $t9, ($v0)
/* 22DFE4 801E2DF4 3C05801E */  lui   $a1, %hi(func_801E2AF0) # $a1, 0x801e
/* 22DFE8 801E2DF8 24A52AF0 */  addiu $a1, %lo(func_801E2AF0) # addiu $a1, $a1, 0x2af0
/* 22DFEC 801E2DFC 00194080 */  sll   $t0, $t9, 2
/* 22DFF0 801E2E00 00882021 */  addu  $a0, $a0, $t0
/* 22DFF4 801E2E04 0C02C7B2 */  jal   assign_new_process_entry
/* 22DFF8 801E2E08 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E2E0C_ovl17:
/* 22DFFC 801E2E0C 0C078C2F */  jal   D_801E30BC_ovl17
/* 22E000 801E2E10 00000000 */   nop   
/* 22E004 801E2E14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E008 801E2E18 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E00C 801E2E1C 03E00008 */  jr    $ra
/* 22E010 801E2E20 00000000 */   nop   
.type func_801E2DA0_ovl17, @function
.size func_801E2DA0_ovl17, . - func_801E2DA0_ovl17

glabel func_801E2E24_ovl17
/* 22E014 801E2E24 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22E018 801E2E28 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22E01C 801E2E2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E020 801E2E30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E024 801E2E34 AFA40018 */  sw    $a0, 0x18($sp)
/* 22E028 801E2E38 8DF80000 */  lw    $t8, ($t7)
/* 22E02C 801E2E3C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22E030 801E2E40 240E0002 */  li    $t6, 2
/* 22E034 801E2E44 0018C880 */  sll   $t9, $t8, 2
/* 22E038 801E2E48 00390821 */  addu  $at, $at, $t9
/* 22E03C 801E2E4C 3C040001 */  lui   $a0, (0x00010519 >> 16) # lui $a0, 1
/* 22E040 801E2E50 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22E044 801E2E54 0C02A806 */  jal   func_800AA018
/* 22E048 801E2E58 34840519 */   ori   $a0, (0x00010519 & 0xFFFF) # ori $a0, $a0, 0x519
/* 22E04C 801E2E5C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22E050 801E2E60 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22E054 801E2E64 3C0B800E */ lui $t3, %hi(D_800E0D50)
/* 22E058 801E2E68 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22E05C 801E2E6C 8CA90000 */  lw    $t1, ($a1)
/* 22E060 801E2E70 24080001 */  li    $t0, 1
/* 22E064 801E2E74 24040001 */  li    $a0, 1
/* 22E068 801E2E78 00095080 */  sll   $t2, $t1, 2
/* 22E06C 801E2E7C 016A5821 */  addu  $t3, $t3, $t2
/* 22E070 801E2E80 8D6B0D50 */ lw $t3, %lo(D_800E0D50)($t3)
/* 22E074 801E2E84 000B6080 */  sll   $t4, $t3, 2
/* 22E078 801E2E88 002C0821 */  addu  $at, $at, $t4
/* 22E07C 801E2E8C 0C02BEED */  jal   func_800AFBB4
/* 22E080 801E2E90 AC2898E0 */ sw $t0, %lo(D_800E98E0)($at)
/* 22E084 801E2E94 0C002DAF */  jal   finish_current_thread
/* 22E088 801E2E98 2404000C */   li    $a0, 12
/* 22E08C 801E2E9C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22E090 801E2EA0 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22E094 801E2EA4 3C18800E */ lui $t8, %hi(D_800E0D50)
/* 22E098 801E2EA8 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22E09C 801E2EAC 8CAD0000 */  lw    $t5, ($a1)
/* 22E0A0 801E2EB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E0A4 801E2EB4 000D7880 */  sll   $t7, $t5, 2
/* 22E0A8 801E2EB8 030FC021 */  addu  $t8, $t8, $t7
/* 22E0AC 801E2EBC 8F180D50 */ lw $t8, %lo(D_800E0D50)($t8)
/* 22E0B0 801E2EC0 00187080 */  sll   $t6, $t8, 2
/* 22E0B4 801E2EC4 002E0821 */  addu  $at, $at, $t6
/* 22E0B8 801E2EC8 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 22E0BC 801E2ECC 8CB90000 */  lw    $t9, ($a1)
/* 22E0C0 801E2ED0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22E0C4 801E2ED4 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E0C8 801E2ED8 00194880 */  sll   $t1, $t9, 2
/* 22E0CC 801E2EDC 00290821 */  addu  $at, $at, $t1
/* 22E0D0 801E2EE0 03E00008 */  jr    $ra
/* 22E0D4 801E2EE4 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
.type func_801E2E24_ovl17, @function
.size func_801E2E24_ovl17, . - func_801E2E24_ovl17

glabel func_801E2EE8_ovl17
/* 22E0D8 801E2EE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E0DC 801E2EEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E0E0 801E2EF0 0C078C2F */  jal   D_801E30BC_ovl17
/* 22E0E4 801E2EF4 AFA40018 */   sw    $a0, 0x18($sp)
/* 22E0E8 801E2EF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E0EC 801E2EFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E0F0 801E2F00 03E00008 */  jr    $ra
/* 22E0F4 801E2F04 00000000 */   nop   
.type func_801E2EE8_ovl17, @function
.size func_801E2EE8_ovl17, . - func_801E2EE8_ovl17

glabel func_801E2F08_ovl17
/* 22E0F8 801E2F08 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22E0FC 801E2F0C 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22E100 801E2F10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E104 801E2F14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E108 801E2F18 AFA40018 */  sw    $a0, 0x18($sp)
/* 22E10C 801E2F1C 8CAF0000 */  lw    $t7, ($a1)
/* 22E110 801E2F20 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22E114 801E2F24 240E0003 */  li    $t6, 3
/* 22E118 801E2F28 000FC080 */  sll   $t8, $t7, 2
/* 22E11C 801E2F2C 00380821 */  addu  $at, $at, $t8
/* 22E120 801E2F30 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22E124 801E2F34 8CA80000 */  lw    $t0, ($a1)
/* 22E128 801E2F38 3C0A800E */ lui $t2, %hi(D_800E0D50)
/* 22E12C 801E2F3C 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22E130 801E2F40 00084880 */  sll   $t1, $t0, 2
/* 22E134 801E2F44 01495021 */  addu  $t2, $t2, $t1
/* 22E138 801E2F48 8D4A0D50 */ lw $t2, %lo(D_800E0D50)($t2)
/* 22E13C 801E2F4C 24190002 */  li    $t9, 2
/* 22E140 801E2F50 00002025 */  move  $a0, $zero
/* 22E144 801E2F54 000A5880 */  sll   $t3, $t2, 2
/* 22E148 801E2F58 002B0821 */  addu  $at, $at, $t3
/* 22E14C 801E2F5C 0C02BEED */  jal   func_800AFBB4
/* 22E150 801E2F60 AC3998E0 */ sw $t9, %lo(D_800E98E0)($at)
/* 22E154 801E2F64 0C002DAF */  jal   finish_current_thread
/* 22E158 801E2F68 240400D2 */   li    $a0, 210
/* 22E15C 801E2F6C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22E160 801E2F70 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22E164 801E2F74 3C0F800E */ lui $t7, %hi(D_800E0D50)
/* 22E168 801E2F78 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22E16C 801E2F7C 8CAC0000 */  lw    $t4, ($a1)
/* 22E170 801E2F80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E174 801E2F84 000C6880 */  sll   $t5, $t4, 2
/* 22E178 801E2F88 01ED7821 */  addu  $t7, $t7, $t5
/* 22E17C 801E2F8C 8DEF0D50 */ lw $t7, %lo(D_800E0D50)($t7)
/* 22E180 801E2F90 000F7080 */  sll   $t6, $t7, 2
/* 22E184 801E2F94 002E0821 */  addu  $at, $at, $t6
/* 22E188 801E2F98 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 22E18C 801E2F9C 8CB80000 */  lw    $t8, ($a1)
/* 22E190 801E2FA0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22E194 801E2FA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E198 801E2FA8 00184080 */  sll   $t0, $t8, 2
/* 22E19C 801E2FAC 00280821 */  addu  $at, $at, $t0
/* 22E1A0 801E2FB0 03E00008 */  jr    $ra
/* 22E1A4 801E2FB4 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
.type func_801E2F08_ovl17, @function
.size func_801E2F08_ovl17, . - func_801E2F08_ovl17

glabel func_801E2FB8_ovl17
/* 22E1A8 801E2FB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E1AC 801E2FBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E1B0 801E2FC0 0C078C2F */  jal   D_801E30BC_ovl17
/* 22E1B4 801E2FC4 AFA40018 */   sw    $a0, 0x18($sp)
/* 22E1B8 801E2FC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E1BC 801E2FCC 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E1C0 801E2FD0 03E00008 */  jr    $ra
/* 22E1C4 801E2FD4 00000000 */   nop   
.type func_801E2FB8_ovl17, @function
.size func_801E2FB8_ovl17, . - func_801E2FB8_ovl17

glabel func_801E2FD8_ovl17
/* 22E1C8 801E2FD8 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22E1CC 801E2FDC 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22E1D0 801E2FE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E1D4 801E2FE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E1D8 801E2FE8 AFA40018 */  sw    $a0, 0x18($sp)
/* 22E1DC 801E2FEC 8CAF0000 */  lw    $t7, ($a1)
/* 22E1E0 801E2FF0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22E1E4 801E2FF4 240E0004 */  li    $t6, 4
/* 22E1E8 801E2FF8 000FC080 */  sll   $t8, $t7, 2
/* 22E1EC 801E2FFC 00380821 */  addu  $at, $at, $t8
/* 22E1F0 801E3000 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22E1F4 801E3004 0C02BEED */  jal   func_800AFBB4
/* 22E1F8 801E3008 00002025 */   move  $a0, $zero
/* 22E1FC 801E300C 0C02BE85 */  jal   func_800AFA14
/* 22E200 801E3010 00000000 */   nop   
/* 22E204 801E3014 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E208 801E3018 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E20C 801E301C 03E00008 */  jr    $ra
/* 22E210 801E3020 00000000 */   nop   
.type func_801E2FD8_ovl17, @function
.size func_801E2FD8_ovl17, . - func_801E2FD8_ovl17

glabel func_801E3024_ovl17
/* 22E214 801E3024 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22E218 801E3028 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22E21C 801E302C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E220 801E3030 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E224 801E3034 AFA40018 */  sw    $a0, 0x18($sp)
/* 22E228 801E3038 8C430000 */  lw    $v1, ($v0)
/* 22E22C 801E303C 3C04800E */ lui $a0, %hi(D_800E0D50)
/* 22E230 801E3040 3C0E800F */ lui $t6, %hi(D_800EA1A0)
/* 22E234 801E3044 00031880 */  sll   $v1, $v1, 2
/* 22E238 801E3048 00832021 */  addu  $a0, $a0, $v1
/* 22E23C 801E304C 8C840D50 */ lw $a0, %lo(D_800E0D50)($a0)
/* 22E240 801E3050 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22E244 801E3054 00042080 */  sll   $a0, $a0, 2
/* 22E248 801E3058 01C47021 */  addu  $t6, $t6, $a0
/* 22E24C 801E305C 8DCEA1A0 */ lw $t6, %lo(D_800EA1A0)($t6)
/* 22E250 801E3060 00240821 */  addu  $at, $at, $a0
/* 22E254 801E3064 55C00012 */  bnezl $t6, .L801E30B0_ovl17
/* 22E258 801E3068 8FBF0014 */   lw    $ra, 0x14($sp)
/* 22E25C 801E306C 44802000 */  mtc1  $zero, $f4
/* 22E260 801E3070 C4267B20 */ lwc1 $f6, %lo(D_800E7B20)($at)
/* 22E264 801E3074 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22E268 801E3078 00230821 */  addu  $at, $at, $v1
/* 22E26C 801E307C 4606203C */  c.lt.s $f4, $f6
/* 22E270 801E3080 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22E274 801E3084 4502000A */  bc1fl .L801E30B0_ovl17
/* 22E278 801E3088 8FBF0014 */   lw    $ra, 0x14($sp)
/* 22E27C 801E308C AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 22E280 801E3090 8C4F0000 */  lw    $t7, ($v0)
/* 22E284 801E3094 3C05801E */  lui   $a1, %hi(func_801E2AF0) # $a1, 0x801e
/* 22E288 801E3098 24A52AF0 */  addiu $a1, %lo(func_801E2AF0) # addiu $a1, $a1, 0x2af0
/* 22E28C 801E309C 000FC080 */  sll   $t8, $t7, 2
/* 22E290 801E30A0 00982021 */  addu  $a0, $a0, $t8
/* 22E294 801E30A4 0C02C7B2 */  jal   assign_new_process_entry
/* 22E298 801E30A8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22E29C 801E30AC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E30B0_ovl17:
/* 22E2A0 801E30B0 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E2A4 801E30B4 03E00008 */  jr    $ra
/* 22E2A8 801E30B8 00000000 */   nop   
.type func_801E3024_ovl17, @function
.size func_801E3024_ovl17, . - func_801E3024_ovl17

glabel func_801E30BC_ovl17
/* 22E2AC 801E30BC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22E2B0 801E30C0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22E2B4 801E30C4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 22E2B8 801E30C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E2BC 801E30CC 8DCF0000 */  lw    $t7, ($t6)
/* 22E2C0 801E30D0 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 22E2C4 801E30D4 000FC080 */  sll   $t8, $t7, 2
/* 22E2C8 801E30D8 0338C821 */  addu  $t9, $t9, $t8
/* 22E2CC 801E30DC 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 22E2D0 801E30E0 0C068119 */  jal   func_801A0464_ovl17
/* 22E2D4 801E30E4 AFB90048 */   sw    $t9, 0x48($sp)
/* 22E2D8 801E30E8 0C0447B3 */  jal   func_80111ECC
/* 22E2DC 801E30EC 00402025 */   move  $a0, $v0
/* 22E2E0 801E30F0 8FA80048 */  lw    $t0, 0x48($sp)
/* 22E2E4 801E30F4 8D09008C */  lw    $t1, 0x8c($t0)
/* 22E2E8 801E30F8 15200003 */  bnez  $t1, .L801E3108_ovl17
/* 22E2EC 801E30FC 00000000 */   nop   
/* 22E2F0 801E3100 1000005E */  b     .L801E327C_ovl17
/* 22E2F4 801E3104 00001025 */   move  $v0, $zero
.L801E3108_ovl17:
/* 22E2F8 801E3108 0C0442C0 */  jal   func_80110B00
/* 22E2FC 801E310C 27A40028 */   addiu $a0, $sp, 0x28
/* 22E300 801E3110 1040000E */  beqz  $v0, .L801E314C_ovl17
/* 22E304 801E3114 3C198005 */   lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22E308 801E3118 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 22E30C 801E311C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 22E310 801E3120 93AA002A */  lbu   $t2, 0x2a($sp)
/* 22E314 801E3124 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 22E318 801E3128 8D6C0000 */  lw    $t4, ($t3)
/* 22E31C 801E312C 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 22E320 801E3130 000C6880 */  sll   $t5, $t4, 2
/* 22E324 801E3134 00AD7021 */  addu  $t6, $a1, $t5
/* 22E328 801E3138 ADCA0000 */  sw    $t2, ($t6)
/* 22E32C 801E313C 8FB80048 */  lw    $t8, 0x48($sp)
/* 22E330 801E3140 93AF002B */  lbu   $t7, 0x2b($sp)
/* 22E334 801E3144 1000000A */  b     .L801E3170_ovl17
/* 22E338 801E3148 A30F0043 */   sb    $t7, 0x43($t8)
.L801E314C_ovl17:
/* 22E33C 801E314C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22E340 801E3150 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 22E344 801E3154 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 22E348 801E3158 8F280000 */  lw    $t0, ($t9)
/* 22E34C 801E315C 00084880 */  sll   $t1, $t0, 2
/* 22E350 801E3160 00A95821 */  addu  $t3, $a1, $t1
/* 22E354 801E3164 AD600000 */  sw    $zero, ($t3)
/* 22E358 801E3168 8FAC0048 */  lw    $t4, 0x48($sp)
/* 22E35C 801E316C A1800043 */  sb    $zero, 0x43($t4)
.L801E3170_ovl17:
/* 22E360 801E3170 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22E364 801E3174 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22E368 801E3178 24010001 */  li    $at, 1
/* 22E36C 801E317C 240B00F0 */  li    $t3, 240
/* 22E370 801E3180 8C430000 */  lw    $v1, ($v0)
/* 22E374 801E3184 240A0003 */  li    $t2, 3
/* 22E378 801E3188 00031880 */  sll   $v1, $v1, 2
/* 22E37C 801E318C 00A36821 */  addu  $t5, $a1, $v1
/* 22E380 801E3190 8DA40000 */  lw    $a0, ($t5)
/* 22E384 801E3194 1081001E */  beq   $a0, $at, .L801E3210_ovl17
/* 22E388 801E3198 24010002 */   li    $at, 2
/* 22E38C 801E319C 14810037 */  bne   $a0, $at, .L801E327C_ovl17
/* 22E390 801E31A0 00001025 */   move  $v0, $zero
/* 22E394 801E31A4 3C0A800E */ lui $t2, %hi(D_800DFBD0)
/* 22E398 801E31A8 01435021 */  addu  $t2, $t2, $v1
/* 22E39C 801E31AC 8D4AFBD0 */ lw $t2, %lo(D_800DFBD0)($t2)
/* 22E3A0 801E31B0 24040006 */  li    $a0, 6
/* 22E3A4 801E31B4 24050003 */  li    $a1, 3
/* 22E3A8 801E31B8 00003025 */  move  $a2, $zero
/* 22E3AC 801E31BC 0C02A040 */  jal   func_800A8100
/* 22E3B0 801E31C0 8D470010 */   lw    $a3, 0x10($t2)
/* 22E3B4 801E31C4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22E3B8 801E31C8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22E3BC 801E31CC 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22E3C0 801E31D0 240E0001 */  li    $t6, 1
/* 22E3C4 801E31D4 8DF80000 */  lw    $t8, ($t7)
/* 22E3C8 801E31D8 240401BB */  li    $a0, 443
/* 22E3CC 801E31DC 0018C880 */  sll   $t9, $t8, 2
/* 22E3D0 801E31E0 00390821 */  addu  $at, $at, $t9
/* 22E3D4 801E31E4 0C029D9E */  jal   play_sound
/* 22E3D8 801E31E8 AC2E7CE0 */ sw $t6, %lo(D_800E7CE0)($at)
/* 22E3DC 801E31EC 8FA20034 */  lw    $v0, 0x34($sp)
/* 22E3E0 801E31F0 24080001 */  li    $t0, 1
/* 22E3E4 801E31F4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22E3E8 801E31F8 10400003 */  beqz  $v0, .L801E3208_ovl17
/* 22E3EC 801E31FC 00024880 */   sll   $t1, $v0, 2
/* 22E3F0 801E3200 00290821 */  addu  $at, $at, $t1
/* 22E3F4 801E3204 AC2898E0 */ sw $t0, %lo(D_800E98E0)($at)
.L801E3208_ovl17:
/* 22E3F8 801E3208 1000001C */  b     .L801E327C_ovl17
/* 22E3FC 801E320C 24020001 */   li    $v0, 1
.L801E3210_ovl17:
/* 22E400 801E3210 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22E404 801E3214 00230821 */  addu  $at, $at, $v1
/* 22E408 801E3218 AC2B7CE0 */ sw $t3, %lo(D_800E7CE0)($at)
/* 22E40C 801E321C 8C4C0000 */  lw    $t4, ($v0)
/* 22E410 801E3220 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 22E414 801E3224 44812000 */  mtc1  $at, $f4
/* 22E418 801E3228 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22E41C 801E322C 000C6880 */  sll   $t5, $t4, 2
/* 22E420 801E3230 002D0821 */  addu  $at, $at, $t5
/* 22E424 801E3234 E4247B20 */ swc1 $f4, %lo(D_800E7B20)($at)
/* 22E428 801E3238 8C4F0000 */  lw    $t7, ($v0)
/* 22E42C 801E323C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22E430 801E3240 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22E434 801E3244 000FC080 */  sll   $t8, $t7, 2
/* 22E438 801E3248 00380821 */  addu  $at, $at, $t8
/* 22E43C 801E324C AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
/* 22E440 801E3250 8C4E0000 */  lw    $t6, ($v0)
/* 22E444 801E3254 3C05801E */  lui   $a1, %hi(func_801E2AF0) # $a1, 0x801e
/* 22E448 801E3258 24A52AF0 */  addiu $a1, %lo(func_801E2AF0) # addiu $a1, $a1, 0x2af0
/* 22E44C 801E325C 000EC880 */  sll   $t9, $t6, 2
/* 22E450 801E3260 00992021 */  addu  $a0, $a0, $t9
/* 22E454 801E3264 0C02C7B2 */  jal   assign_new_process_entry
/* 22E458 801E3268 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22E45C 801E326C 0C029D9E */  jal   play_sound
/* 22E460 801E3270 240401C0 */   li    $a0, 448
/* 22E464 801E3274 10000001 */  b     .L801E327C_ovl17
/* 22E468 801E3278 24020001 */   li    $v0, 1
.L801E327C_ovl17:
/* 22E46C 801E327C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E470 801E3280 27BD0050 */  addiu $sp, $sp, 0x50
/* 22E474 801E3284 03E00008 */  jr    $ra
/* 22E478 801E3288 00000000 */   nop   
.type func_801E30BC_ovl17, @function
.size func_801E30BC_ovl17, . - func_801E30BC_ovl17

glabel func_801E328C_ovl17
/* 22E47C 801E328C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E480 801E3290 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E484 801E3294 0C006328 */  jal   lbvector_Normalize
/* 22E488 801E3298 AFA40018 */   sw    $a0, 0x18($sp)
/* 22E48C 801E329C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22E490 801E32A0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22E494 801E32A4 3C06800F */ lui $a2, %hi(D_800EAC20)
/* 22E498 801E32A8 8FA40018 */  lw    $a0, 0x18($sp)
/* 22E49C 801E32AC 8DCF0000 */  lw    $t7, ($t6)
/* 22E4A0 801E32B0 24050001 */  li    $a1, 1
/* 22E4A4 801E32B4 000FC080 */  sll   $t8, $t7, 2
/* 22E4A8 801E32B8 00D83021 */  addu  $a2, $a2, $t8
/* 22E4AC 801E32BC 0C006424 */  jal   lbvector_Rotate
/* 22E4B0 801E32C0 8CC6AC20 */ lw $a2, %lo(D_800EAC20)($a2)
/* 22E4B4 801E32C4 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22E4B8 801E32C8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22E4BC 801E32CC 3C06800F */ lui $a2, %hi(D_800EADE0)
/* 22E4C0 801E32D0 8FA40018 */  lw    $a0, 0x18($sp)
/* 22E4C4 801E32D4 8F280000 */  lw    $t0, ($t9)
/* 22E4C8 801E32D8 24050002 */  li    $a1, 2
/* 22E4CC 801E32DC 00084880 */  sll   $t1, $t0, 2
/* 22E4D0 801E32E0 00C93021 */  addu  $a2, $a2, $t1
/* 22E4D4 801E32E4 0C006424 */  jal   lbvector_Rotate
/* 22E4D8 801E32E8 8CC6ADE0 */ lw $a2, %lo(D_800EADE0)($a2)
/* 22E4DC 801E32EC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 22E4E0 801E32F0 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 22E4E4 801E32F4 3C06800F */ lui $a2, %hi(D_800EAFA0)
/* 22E4E8 801E32F8 8FA40018 */  lw    $a0, 0x18($sp)
/* 22E4EC 801E32FC 8D4B0000 */  lw    $t3, ($t2)
/* 22E4F0 801E3300 24050004 */  li    $a1, 4
/* 22E4F4 801E3304 000B6080 */  sll   $t4, $t3, 2
/* 22E4F8 801E3308 00CC3021 */  addu  $a2, $a2, $t4
/* 22E4FC 801E330C 0C006424 */  jal   lbvector_Rotate
/* 22E500 801E3310 8CC6AFA0 */ lw $a2, %lo(D_800EAFA0)($a2)
/* 22E504 801E3314 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E508 801E3318 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E50C 801E331C 03E00008 */  jr    $ra
/* 22E510 801E3320 00000000 */   nop   
.type func_801E328C_ovl17, @function
.size func_801E328C_ovl17, . - func_801E328C_ovl17

glabel func_801E3324_ovl17
/* 22E514 801E3324 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 22E518 801E3328 44800000 */  mtc1  $zero, $f0
/* 22E51C 801E332C AFBF001C */  sw    $ra, 0x1c($sp)
/* 22E520 801E3330 AFB00018 */  sw    $s0, 0x18($sp)
/* 22E524 801E3334 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 22E528 801E3338 44812000 */  mtc1  $at, $f4
/* 22E52C 801E333C 00808025 */  move  $s0, $a0
/* 22E530 801E3340 E4800000 */  swc1  $f0, ($a0)
/* 22E534 801E3344 E4800004 */  swc1  $f0, 4($a0)
/* 22E538 801E3348 0C006328 */  jal   lbvector_Normalize
/* 22E53C 801E334C E4840008 */   swc1  $f4, 8($a0)
/* 22E540 801E3350 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22E544 801E3354 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22E548 801E3358 3C02800E */  lui   $v0, %hi(D_800E0D50) # $v0, 0x800e
/* 22E54C 801E335C 24420D50 */  addiu $v0, %lo(D_800E0D50) # addiu $v0, $v0, 0x0d50
/* 22E550 801E3360 8DCF0000 */  lw    $t7, ($t6)
/* 22E554 801E3364 3C06800F */ lui $a2, %hi(D_800EA6E0)
/* 22E558 801E3368 02002025 */  move  $a0, $s0
/* 22E55C 801E336C 000FC080 */  sll   $t8, $t7, 2
/* 22E560 801E3370 0058C821 */  addu  $t9, $v0, $t8
/* 22E564 801E3374 8F280000 */  lw    $t0, ($t9)
/* 22E568 801E3378 24050001 */  li    $a1, 1
/* 22E56C 801E337C 00084880 */  sll   $t1, $t0, 2
/* 22E570 801E3380 00495021 */  addu  $t2, $v0, $t1
/* 22E574 801E3384 8D4B0000 */  lw    $t3, ($t2)
/* 22E578 801E3388 000B6080 */  sll   $t4, $t3, 2
/* 22E57C 801E338C 00CC3021 */  addu  $a2, $a2, $t4
/* 22E580 801E3390 0C006424 */  jal   lbvector_Rotate
/* 22E584 801E3394 8CC6A6E0 */ lw $a2, %lo(D_800EA6E0)($a2)
/* 22E588 801E3398 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 22E58C 801E339C 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 22E590 801E33A0 3C02800E */  lui   $v0, %hi(D_800E0D50) # $v0, 0x800e
/* 22E594 801E33A4 24420D50 */  addiu $v0, %lo(D_800E0D50) # addiu $v0, $v0, 0x0d50
/* 22E598 801E33A8 8DAE0000 */  lw    $t6, ($t5)
/* 22E59C 801E33AC 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 22E5A0 801E33B0 02002025 */  move  $a0, $s0
/* 22E5A4 801E33B4 000E7880 */  sll   $t7, $t6, 2
/* 22E5A8 801E33B8 004FC021 */  addu  $t8, $v0, $t7
/* 22E5AC 801E33BC 8F190000 */  lw    $t9, ($t8)
/* 22E5B0 801E33C0 24050002 */  li    $a1, 2
/* 22E5B4 801E33C4 00194080 */  sll   $t0, $t9, 2
/* 22E5B8 801E33C8 00484821 */  addu  $t1, $v0, $t0
/* 22E5BC 801E33CC 8D2A0000 */  lw    $t2, ($t1)
/* 22E5C0 801E33D0 000A5880 */  sll   $t3, $t2, 2
/* 22E5C4 801E33D4 00CB3021 */  addu  $a2, $a2, $t3
/* 22E5C8 801E33D8 0C006424 */  jal   lbvector_Rotate
/* 22E5CC 801E33DC 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 22E5D0 801E33E0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 22E5D4 801E33E4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 22E5D8 801E33E8 3C02800E */  lui   $v0, %hi(D_800E0D50) # $v0, 0x800e
/* 22E5DC 801E33EC 24420D50 */  addiu $v0, %lo(D_800E0D50) # addiu $v0, $v0, 0x0d50
/* 22E5E0 801E33F0 8D8D0000 */  lw    $t5, ($t4)
/* 22E5E4 801E33F4 3C06800F */ lui $a2, %hi(D_800EAA60)
/* 22E5E8 801E33F8 02002025 */  move  $a0, $s0
/* 22E5EC 801E33FC 000D7080 */  sll   $t6, $t5, 2
/* 22E5F0 801E3400 004E7821 */  addu  $t7, $v0, $t6
/* 22E5F4 801E3404 8DF80000 */  lw    $t8, ($t7)
/* 22E5F8 801E3408 24050004 */  li    $a1, 4
/* 22E5FC 801E340C 0018C880 */  sll   $t9, $t8, 2
/* 22E600 801E3410 00594021 */  addu  $t0, $v0, $t9
/* 22E604 801E3414 8D090000 */  lw    $t1, ($t0)
/* 22E608 801E3418 00095080 */  sll   $t2, $t1, 2
/* 22E60C 801E341C 00CA3021 */  addu  $a2, $a2, $t2
/* 22E610 801E3420 0C006424 */  jal   lbvector_Rotate
/* 22E614 801E3424 8CC6AA60 */ lw $a2, %lo(D_800EAA60)($a2)
/* 22E618 801E3428 8FBF001C */  lw    $ra, 0x1c($sp)
/* 22E61C 801E342C 8FB00018 */  lw    $s0, 0x18($sp)
/* 22E620 801E3430 27BD0020 */  addiu $sp, $sp, 0x20
/* 22E624 801E3434 03E00008 */  jr    $ra
/* 22E628 801E3438 00000000 */   nop   
.type func_801E3324_ovl17, @function
.size func_801E3324_ovl17, . - func_801E3324_ovl17

glabel func_801E343C_ovl17
/* 22E62C 801E343C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 22E630 801E3440 44800000 */  mtc1  $zero, $f0
/* 22E634 801E3444 AFBF001C */  sw    $ra, 0x1c($sp)
/* 22E638 801E3448 AFB00018 */  sw    $s0, 0x18($sp)
/* 22E63C 801E344C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 22E640 801E3450 44812000 */  mtc1  $at, $f4
/* 22E644 801E3454 00808025 */  move  $s0, $a0
/* 22E648 801E3458 E4800000 */  swc1  $f0, ($a0)
/* 22E64C 801E345C E4800004 */  swc1  $f0, 4($a0)
/* 22E650 801E3460 0C006328 */  jal   lbvector_Normalize
/* 22E654 801E3464 E4840008 */   swc1  $f4, 8($a0)
/* 22E658 801E3468 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22E65C 801E346C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22E660 801E3470 3C06800F */ lui $a2, %hi(D_800EA6E0)
/* 22E664 801E3474 02002025 */  move  $a0, $s0
/* 22E668 801E3478 8DCF0000 */  lw    $t7, ($t6)
/* 22E66C 801E347C 24050001 */  li    $a1, 1
/* 22E670 801E3480 000FC080 */  sll   $t8, $t7, 2
/* 22E674 801E3484 00D83021 */  addu  $a2, $a2, $t8
/* 22E678 801E3488 0C006424 */  jal   lbvector_Rotate
/* 22E67C 801E348C 8CC6A6E0 */ lw $a2, %lo(D_800EA6E0)($a2)
/* 22E680 801E3490 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22E684 801E3494 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22E688 801E3498 3C06800F */ lui $a2, %hi(D_800EA8A0)
/* 22E68C 801E349C 02002025 */  move  $a0, $s0
/* 22E690 801E34A0 8F280000 */  lw    $t0, ($t9)
/* 22E694 801E34A4 24050002 */  li    $a1, 2
/* 22E698 801E34A8 00084880 */  sll   $t1, $t0, 2
/* 22E69C 801E34AC 00C93021 */  addu  $a2, $a2, $t1
/* 22E6A0 801E34B0 0C006424 */  jal   lbvector_Rotate
/* 22E6A4 801E34B4 8CC6A8A0 */ lw $a2, %lo(D_800EA8A0)($a2)
/* 22E6A8 801E34B8 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 22E6AC 801E34BC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 22E6B0 801E34C0 3C06800F */ lui $a2, %hi(D_800EAA60)
/* 22E6B4 801E34C4 02002025 */  move  $a0, $s0
/* 22E6B8 801E34C8 8D4B0000 */  lw    $t3, ($t2)
/* 22E6BC 801E34CC 24050004 */  li    $a1, 4
/* 22E6C0 801E34D0 000B6080 */  sll   $t4, $t3, 2
/* 22E6C4 801E34D4 00CC3021 */  addu  $a2, $a2, $t4
/* 22E6C8 801E34D8 0C006424 */  jal   lbvector_Rotate
/* 22E6CC 801E34DC 8CC6AA60 */ lw $a2, %lo(D_800EAA60)($a2)
/* 22E6D0 801E34E0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 22E6D4 801E34E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 22E6D8 801E34E8 27BD0020 */  addiu $sp, $sp, 0x20
/* 22E6DC 801E34EC 03E00008 */  jr    $ra
/* 22E6E0 801E34F0 00000000 */   nop   
.type func_801E343C_ovl17, @function
.size func_801E343C_ovl17, . - func_801E343C_ovl17

glabel func_801E34F4_ovl17
/* 22E6E4 801E34F4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 22E6E8 801E34F8 AFB10018 */  sw    $s1, 0x18($sp)
/* 22E6EC 801E34FC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 22E6F0 801E3500 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 22E6F4 801E3504 8E230000 */  lw    $v1, ($s1)
/* 22E6F8 801E3508 AFBF0034 */  sw    $ra, 0x34($sp)
/* 22E6FC 801E350C AFB70030 */  sw    $s7, 0x30($sp)
/* 22E700 801E3510 AFB6002C */  sw    $s6, 0x2c($sp)
/* 22E704 801E3514 AFB50028 */  sw    $s5, 0x28($sp)
/* 22E708 801E3518 AFB40024 */  sw    $s4, 0x24($sp)
/* 22E70C 801E351C AFB30020 */  sw    $s3, 0x20($sp)
/* 22E710 801E3520 AFB2001C */  sw    $s2, 0x1c($sp)
/* 22E714 801E3524 AFB00014 */  sw    $s0, 0x14($sp)
/* 22E718 801E3528 AFA40038 */  sw    $a0, 0x38($sp)
/* 22E71C 801E352C 8C6F0000 */  lw    $t7, ($v1)
/* 22E720 801E3530 3C0E800B */  lui   $t6, %hi(D_800B5094) # $t6, 0x800b
/* 22E724 801E3534 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22E728 801E3538 000FC080 */  sll   $t8, $t7, 2
/* 22E72C 801E353C 00380821 */  addu  $at, $at, $t8
/* 22E730 801E3540 25CE5094 */  addiu $t6, %lo(D_800B5094) # addiu $t6, $t6, 0x5094
/* 22E734 801E3544 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 22E738 801E3548 8C680000 */  lw    $t0, ($v1)
/* 22E73C 801E354C 3C01800E */ lui $at, %hi(D_800DF150)
/* 22E740 801E3550 2419001D */  li    $t9, 29
/* 22E744 801E3554 00084880 */  sll   $t1, $t0, 2
/* 22E748 801E3558 00290821 */  addu  $at, $at, $t1
/* 22E74C 801E355C AC390F10 */  sw    $t9, 0xf10($at)
/* 22E750 801E3560 8C6B0000 */  lw    $t3, ($v1)
/* 22E754 801E3564 3C01800E */ lui $at, %hi(D_800DF150)
/* 22E758 801E3568 3C0A801E */  lui   $t2, %hi(D_801E36AC) # $t2, 0x801e
/* 22E75C 801E356C 000B6080 */  sll   $t4, $t3, 2
/* 22E760 801E3570 002C0821 */  addu  $at, $at, $t4
/* 22E764 801E3574 254A36AC */  addiu $t2, %lo(D_801E36AC) # addiu $t2, $t2, 0x36ac
/* 22E768 801E3578 AC2AF150 */ sw $t2, %lo(D_800DF150)($at)
/* 22E76C 801E357C 8C6D0000 */  lw    $t5, ($v1)
/* 22E770 801E3580 3C01800F */ lui $at, %hi(D_800E8920)
/* 22E774 801E3584 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 22E778 801E3588 000D7880 */  sll   $t7, $t5, 2
/* 22E77C 801E358C 002F0821 */  addu  $at, $at, $t7
/* 22E780 801E3590 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22E784 801E3594 8C6E0000 */  lw    $t6, ($v1)
/* 22E788 801E3598 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 22E78C 801E359C 44812000 */  mtc1  $at, $f4
/* 22E790 801E35A0 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22E794 801E35A4 000EC080 */  sll   $t8, $t6, 2
/* 22E798 801E35A8 00380821 */  addu  $at, $at, $t8
/* 22E79C 801E35AC E4247B20 */ swc1 $f4, %lo(D_800E7B20)($at)
/* 22E7A0 801E35B0 8C680000 */  lw    $t0, ($v1)
/* 22E7A4 801E35B4 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 22E7A8 801E35B8 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 22E7AC 801E35BC 0008C880 */  sll   $t9, $t0, 2
/* 22E7B0 801E35C0 00992021 */  addu  $a0, $a0, $t9
/* 22E7B4 801E35C4 0C02C7DA */  jal   func_800B1F68
/* 22E7B8 801E35C8 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 22E7BC 801E35CC 3C17800E */  lui   $s7, %hi(D_800E0D50) # $s7, 0x800e
/* 22E7C0 801E35D0 3C16800F */  lui   $s6, %hi(D_800E9FE0) # $s6, 0x800f
/* 22E7C4 801E35D4 3C15800F */  lui   $s5, %hi(D_800E83E0) # $s5, 0x800f
/* 22E7C8 801E35D8 3C12800E */  lui   $s2, %hi(D_800E7CE0) # $s2, 0x800e
/* 22E7CC 801E35DC 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 22E7D0 801E35E0 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 22E7D4 801E35E4 26527CE0 */  addiu $s2, %lo(D_800E7CE0) # addiu $s2, $s2, 0x7ce0
/* 22E7D8 801E35E8 26B583E0 */  addiu $s5, %lo(D_800E83E0) # addiu $s5, $s5, -0x7c20
/* 22E7DC 801E35EC 26D69FE0 */  addiu $s6, %lo(D_800E9FE0) # addiu $s6, $s6, -0x6020
/* 22E7E0 801E35F0 26F70D50 */  addiu $s7, %lo(D_800E0D50) # addiu $s7, $s7, 0x0d50
/* 22E7E4 801E35F4 8E230000 */  lw    $v1, ($s1)
/* 22E7E8 801E35F8 24140001 */  li    $s4, 1
/* 22E7EC 801E35FC 2413001E */  li    $s3, 30
.L801E3600_ovl17:
/* 22E7F0 801E3600 8C620000 */  lw    $v0, ($v1)
/* 22E7F4 801E3604 00021080 */  sll   $v0, $v0, 2
/* 22E7F8 801E3608 02A24821 */  addu  $t1, $s5, $v0
/* 22E7FC 801E360C 8D2B0000 */  lw    $t3, ($t1)
/* 22E800 801E3610 02E25021 */  addu  $t2, $s7, $v0
/* 22E804 801E3614 168B0013 */  bne   $s4, $t3, .L801E3664_ovl17
/* 22E808 801E3618 00000000 */   nop   
/* 22E80C 801E361C 8D4C0000 */  lw    $t4, ($t2)
/* 22E810 801E3620 000C6880 */  sll   $t5, $t4, 2
/* 22E814 801E3624 02CD7821 */  addu  $t7, $s6, $t5
/* 22E818 801E3628 ADF40000 */  sw    $s4, ($t7)
/* 22E81C 801E362C 1280FFF4 */  beqz  $s4, .L801E3600_ovl17
/* 22E820 801E3630 AE140004 */   sw    $s4, 4($s0)
/* 22E824 801E3634 8E380000 */  lw    $t8, ($s1)
.L801E3638_ovl17:
/* 22E828 801E3638 02802025 */  move  $a0, $s4
/* 22E82C 801E363C 8F080000 */  lw    $t0, ($t8)
/* 22E830 801E3640 0008C880 */  sll   $t9, $t0, 2
/* 22E834 801E3644 02594821 */  addu  $t1, $s2, $t9
/* 22E838 801E3648 0C002DAF */  jal   finish_current_thread
/* 22E83C 801E364C AD330000 */   sw    $s3, ($t1)
/* 22E840 801E3650 8E0B0004 */  lw    $t3, 4($s0)
/* 22E844 801E3654 5560FFF8 */  bnezl $t3, .L801E3638_ovl17
/* 22E848 801E3658 8E380000 */   lw    $t8, ($s1)
/* 22E84C 801E365C 1000FFE8 */  b     .L801E3600_ovl17
/* 22E850 801E3660 8E230000 */   lw    $v1, ($s1)
.L801E3664_ovl17:
/* 22E854 801E3664 0C002DAF */  jal   finish_current_thread
/* 22E858 801E3668 02802025 */   move  $a0, $s4
/* 22E85C 801E366C 1000FFE4 */  b     .L801E3600_ovl17
/* 22E860 801E3670 8E230000 */   lw    $v1, ($s1)
/* 22E864 801E3674 00000000 */  nop   
/* 22E868 801E3678 00000000 */  nop   
/* 22E86C 801E367C 00000000 */  nop   
/* 22E870 801E3680 8FBF0034 */  lw    $ra, 0x34($sp)
/* 22E874 801E3684 8FB00014 */  lw    $s0, 0x14($sp)
/* 22E878 801E3688 8FB10018 */  lw    $s1, 0x18($sp)
/* 22E87C 801E368C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 22E880 801E3690 8FB30020 */  lw    $s3, 0x20($sp)
/* 22E884 801E3694 8FB40024 */  lw    $s4, 0x24($sp)
/* 22E888 801E3698 8FB50028 */  lw    $s5, 0x28($sp)
/* 22E88C 801E369C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 22E890 801E36A0 8FB70030 */  lw    $s7, 0x30($sp)
/* 22E894 801E36A4 03E00008 */  jr    $ra
/* 22E898 801E36A8 27BD0038 */   addiu $sp, $sp, 0x38
.type func_801E34F4_ovl17, @function
.size func_801E34F4_ovl17, . - func_801E34F4_ovl17

glabel func_801E36AC_ovl17
/* 22E89C 801E36AC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22E8A0 801E36B0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22E8A4 801E36B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22E8A8 801E36B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E8AC 801E36BC AFA40018 */  sw    $a0, 0x18($sp)
/* 22E8B0 801E36C0 8C4E0000 */  lw    $t6, ($v0)
/* 22E8B4 801E36C4 3C18800E */  lui   $t8, %hi(gEntitiesNextPosXArray) # $t8, 0x800e
/* 22E8B8 801E36C8 271825D0 */  addiu $t8, %lo(gEntitiesNextPosXArray) # addiu $t8, $t8, 0x25d0
/* 22E8BC 801E36CC 000E7880 */  sll   $t7, $t6, 2
/* 22E8C0 801E36D0 3C01801E */  lui   $at, %hi(D_801E56C4) # $at, 0x801e
/* 22E8C4 801E36D4 01F81821 */  addu  $v1, $t7, $t8
/* 22E8C8 801E36D8 C42056C4 */  lwc1  $f0, %lo(D_801E56C4)($at)
/* 22E8CC 801E36DC C4640000 */  lwc1  $f4, ($v1)
/* 22E8D0 801E36E0 3C09800E */  lui   $t1, %hi(gEntitiesNextPosYArray) # $t1, 0x800e
/* 22E8D4 801E36E4 25292790 */  addiu $t1, %lo(gEntitiesNextPosYArray) # addiu $t1, $t1, 0x2790
/* 22E8D8 801E36E8 46002182 */  mul.s $f6, $f4, $f0
/* 22E8DC 801E36EC 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosZArray) # $t4, 0x800e
/* 22E8E0 801E36F0 258C2950 */  addiu $t4, %lo(gEntitiesNextPosZArray) # addiu $t4, $t4, 0x2950
/* 22E8E4 801E36F4 E4660000 */  swc1  $f6, ($v1)
/* 22E8E8 801E36F8 8C590000 */  lw    $t9, ($v0)
/* 22E8EC 801E36FC 00194080 */  sll   $t0, $t9, 2
/* 22E8F0 801E3700 01092021 */  addu  $a0, $t0, $t1
/* 22E8F4 801E3704 C4880000 */  lwc1  $f8, ($a0)
/* 22E8F8 801E3708 46004282 */  mul.s $f10, $f8, $f0
/* 22E8FC 801E370C E48A0000 */  swc1  $f10, ($a0)
/* 22E900 801E3710 8C4A0000 */  lw    $t2, ($v0)
/* 22E904 801E3714 000A5880 */  sll   $t3, $t2, 2
/* 22E908 801E3718 016C2821 */  addu  $a1, $t3, $t4
/* 22E90C 801E371C C4B00000 */  lwc1  $f16, ($a1)
/* 22E910 801E3720 46008482 */  mul.s $f18, $f16, $f0
/* 22E914 801E3724 0C078DCF */  jal   func_801E373C_ovl17
/* 22E918 801E3728 E4B20000 */   swc1  $f18, ($a1)
/* 22E91C 801E372C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22E920 801E3730 27BD0018 */  addiu $sp, $sp, 0x18
/* 22E924 801E3734 03E00008 */  jr    $ra
/* 22E928 801E3738 00000000 */   nop   
.type func_801E36AC_ovl17, @function
.size func_801E36AC_ovl17, . - func_801E36AC_ovl17

glabel func_801E373C_ovl17
/* 22E92C 801E373C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22E930 801E3740 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22E934 801E3744 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 22E938 801E3748 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22E93C 801E374C 8DCF0000 */  lw    $t7, ($t6)
/* 22E940 801E3750 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 22E944 801E3754 000FC080 */  sll   $t8, $t7, 2
/* 22E948 801E3758 0338C821 */  addu  $t9, $t9, $t8
/* 22E94C 801E375C 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 22E950 801E3760 0C068119 */  jal   func_801A0464_ovl17
/* 22E954 801E3764 AFB90048 */   sw    $t9, 0x48($sp)
/* 22E958 801E3768 0C0447B3 */  jal   func_80111ECC
/* 22E95C 801E376C 00402025 */   move  $a0, $v0
/* 22E960 801E3770 8FA80048 */  lw    $t0, 0x48($sp)
/* 22E964 801E3774 8D09008C */  lw    $t1, 0x8c($t0)
/* 22E968 801E3778 15200003 */  bnez  $t1, .L801E3788_ovl17
/* 22E96C 801E377C 00000000 */   nop   
/* 22E970 801E3780 10000042 */  b     .L801E388C_ovl17
/* 22E974 801E3784 00001025 */   move  $v0, $zero
.L801E3788_ovl17:
/* 22E978 801E3788 0C0442C0 */  jal   func_80110B00
/* 22E97C 801E378C 27A40028 */   addiu $a0, $sp, 0x28
/* 22E980 801E3790 1040000E */  beqz  $v0, .L801E37CC_ovl17
/* 22E984 801E3794 3C198005 */   lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22E988 801E3798 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 22E98C 801E379C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 22E990 801E37A0 93AA002A */  lbu   $t2, 0x2a($sp)
/* 22E994 801E37A4 3C06800F */  lui   $a2, %hi(D_800E83E0) # $a2, 0x800f
/* 22E998 801E37A8 8D6C0000 */  lw    $t4, ($t3)
/* 22E99C 801E37AC 24C683E0 */  addiu $a2, %lo(D_800E83E0) # addiu $a2, $a2, -0x7c20
/* 22E9A0 801E37B0 000C6880 */  sll   $t5, $t4, 2
/* 22E9A4 801E37B4 00CD7021 */  addu  $t6, $a2, $t5
/* 22E9A8 801E37B8 ADCA0000 */  sw    $t2, ($t6)
/* 22E9AC 801E37BC 8FB80048 */  lw    $t8, 0x48($sp)
/* 22E9B0 801E37C0 93AF002B */  lbu   $t7, 0x2b($sp)
/* 22E9B4 801E37C4 1000000A */  b     .L801E37F0_ovl17
/* 22E9B8 801E37C8 A30F0043 */   sb    $t7, 0x43($t8)
.L801E37CC_ovl17:
/* 22E9BC 801E37CC 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22E9C0 801E37D0 3C06800F */  lui   $a2, %hi(D_800E83E0) # $a2, 0x800f
/* 22E9C4 801E37D4 24C683E0 */  addiu $a2, %lo(D_800E83E0) # addiu $a2, $a2, -0x7c20
/* 22E9C8 801E37D8 8F280000 */  lw    $t0, ($t9)
/* 22E9CC 801E37DC 00084880 */  sll   $t1, $t0, 2
/* 22E9D0 801E37E0 00C95821 */  addu  $t3, $a2, $t1
/* 22E9D4 801E37E4 AD600000 */  sw    $zero, ($t3)
/* 22E9D8 801E37E8 8FAC0048 */  lw    $t4, 0x48($sp)
/* 22E9DC 801E37EC A1800043 */  sb    $zero, 0x43($t4)
.L801E37F0_ovl17:
/* 22E9E0 801E37F0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22E9E4 801E37F4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22E9E8 801E37F8 24050001 */  li    $a1, 1
/* 22E9EC 801E37FC 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22E9F0 801E3800 8C430000 */  lw    $v1, ($v0)
/* 22E9F4 801E3804 240A001E */  li    $t2, 30
/* 22E9F8 801E3808 00031880 */  sll   $v1, $v1, 2
/* 22E9FC 801E380C 00C36821 */  addu  $t5, $a2, $v1
/* 22EA00 801E3810 8DA40000 */  lw    $a0, ($t5)
/* 22EA04 801E3814 00230821 */  addu  $at, $at, $v1
/* 22EA08 801E3818 10850009 */  beq   $a0, $a1, .L801E3840_ovl17
/* 22EA0C 801E381C 00000000 */   nop   
/* 22EA10 801E3820 24010002 */  li    $at, 2
/* 22EA14 801E3824 14810019 */  bne   $a0, $at, .L801E388C_ovl17
/* 22EA18 801E3828 00001025 */   move  $v0, $zero
/* 22EA1C 801E382C 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22EA20 801E3830 00230821 */  addu  $at, $at, $v1
/* 22EA24 801E3834 AC257CE0 */ sw $a1, %lo(D_800E7CE0)($at)
/* 22EA28 801E3838 10000014 */  b     .L801E388C_ovl17
/* 22EA2C 801E383C 00A01025 */   move  $v0, $a1
.L801E3840_ovl17:
/* 22EA30 801E3840 AC2A7CE0 */  sw    $t2, 0x7ce0($at)
/* 22EA34 801E3844 8C4E0000 */  lw    $t6, ($v0)
/* 22EA38 801E3848 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 22EA3C 801E384C 44812000 */  mtc1  $at, $f4
/* 22EA40 801E3850 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22EA44 801E3854 000E7880 */  sll   $t7, $t6, 2
/* 22EA48 801E3858 002F0821 */  addu  $at, $at, $t7
/* 22EA4C 801E385C 240401C4 */  li    $a0, 452
/* 22EA50 801E3860 0C029D9E */  jal   play_sound
/* 22EA54 801E3864 E4247B20 */ swc1 $f4, %lo(D_800E7B20)($at)
/* 22EA58 801E3868 8FA20034 */  lw    $v0, 0x34($sp)
/* 22EA5C 801E386C 24050001 */  li    $a1, 1
/* 22EA60 801E3870 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22EA64 801E3874 10400003 */  beqz  $v0, .L801E3884_ovl17
/* 22EA68 801E3878 0002C080 */   sll   $t8, $v0, 2
/* 22EA6C 801E387C 00380821 */  addu  $at, $at, $t8
/* 22EA70 801E3880 AC2598E0 */ sw $a1, %lo(D_800E98E0)($at)
.L801E3884_ovl17:
/* 22EA74 801E3884 10000001 */  b     .L801E388C_ovl17
/* 22EA78 801E3888 24020001 */   li    $v0, 1
.L801E388C_ovl17:
/* 22EA7C 801E388C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22EA80 801E3890 27BD0050 */  addiu $sp, $sp, 0x50
/* 22EA84 801E3894 03E00008 */  jr    $ra
/* 22EA88 801E3898 00000000 */   nop   
.type func_801E373C_ovl17, @function
.size func_801E373C_ovl17, . - func_801E373C_ovl17

glabel func_801E389C_ovl17
/* 22EA8C 801E389C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22EA90 801E38A0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22EA94 801E38A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22EA98 801E38A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22EA9C 801E38AC AFA40018 */  sw    $a0, 0x18($sp)
/* 22EAA0 801E38B0 8C4F0000 */  lw    $t7, ($v0)
/* 22EAA4 801E38B4 3C0E800B */  lui   $t6, %hi(D_800B5094) # $t6, 0x800b
/* 22EAA8 801E38B8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22EAAC 801E38BC 000FC080 */  sll   $t8, $t7, 2
/* 22EAB0 801E38C0 00380821 */  addu  $at, $at, $t8
/* 22EAB4 801E38C4 25CE5094 */  addiu $t6, %lo(D_800B5094) # addiu $t6, $t6, 0x5094
/* 22EAB8 801E38C8 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 22EABC 801E38CC 8C430000 */  lw    $v1, ($v0)
/* 22EAC0 801E38D0 3C19800E */ lui $t9, %hi(D_800E7880)
/* 22EAC4 801E38D4 3C01800E */ lui $at, %hi(D_800DF150)
/* 22EAC8 801E38D8 0323C821 */  addu  $t9, $t9, $v1
/* 22EACC 801E38DC 93397880 */ lbu $t9, %lo(D_800E7880)($t9)
/* 22EAD0 801E38E0 240A0013 */  li    $t2, 19
/* 22EAD4 801E38E4 3C0C801E */  lui   $t4, %hi(D_801E3990) # $t4, 0x801e
/* 22EAD8 801E38E8 17200007 */  bnez  $t9, .L801E3908_ovl17
/* 22EADC 801E38EC 00035880 */   sll   $t3, $v1, 2
/* 22EAE0 801E38F0 00034880 */  sll   $t1, $v1, 2
/* 22EAE4 801E38F4 3C01800E */ lui $at, %hi(D_800DF150)
/* 22EAE8 801E38F8 00290821 */  addu  $at, $at, $t1
/* 22EAEC 801E38FC 24080008 */  li    $t0, 8
/* 22EAF0 801E3900 10000003 */  b     .L801E3910_ovl17
/* 22EAF4 801E3904 AC280F10 */   sw    $t0, 0xf10($at)
.L801E3908_ovl17:
/* 22EAF8 801E3908 002B0821 */  addu  $at, $at, $t3
/* 22EAFC 801E390C AC2A0F10 */  sw    $t2, 0xf10($at)
.L801E3910_ovl17:
/* 22EB00 801E3910 8C4D0000 */  lw    $t5, ($v0)
/* 22EB04 801E3914 3C01800E */ lui $at, %hi(D_800DF150)
/* 22EB08 801E3918 258C3990 */  addiu $t4, %lo(D_801E3990) # addiu $t4, $t4, 0x3990
/* 22EB0C 801E391C 000D7880 */  sll   $t7, $t5, 2
/* 22EB10 801E3920 002F0821 */  addu  $at, $at, $t7
/* 22EB14 801E3924 AC2CF150 */ sw $t4, %lo(D_800DF150)($at)
/* 22EB18 801E3928 8C4E0000 */  lw    $t6, ($v0)
/* 22EB1C 801E392C 3C01800F */ lui $at, %hi(D_800E8920)
/* 22EB20 801E3930 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 22EB24 801E3934 000EC080 */  sll   $t8, $t6, 2
/* 22EB28 801E3938 00380821 */  addu  $at, $at, $t8
/* 22EB2C 801E393C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22EB30 801E3940 8C590000 */  lw    $t9, ($v0)
/* 22EB34 801E3944 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 22EB38 801E3948 44812000 */  mtc1  $at, $f4
/* 22EB3C 801E394C 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22EB40 801E3950 00194080 */  sll   $t0, $t9, 2
/* 22EB44 801E3954 00280821 */  addu  $at, $at, $t0
/* 22EB48 801E3958 E4247B20 */ swc1 $f4, %lo(D_800E7B20)($at)
/* 22EB4C 801E395C 8C490000 */  lw    $t1, ($v0)
/* 22EB50 801E3960 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 22EB54 801E3964 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 22EB58 801E3968 00095080 */  sll   $t2, $t1, 2
/* 22EB5C 801E396C 008A2021 */  addu  $a0, $a0, $t2
/* 22EB60 801E3970 0C02C7DA */  jal   func_800B1F68
/* 22EB64 801E3974 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 22EB68 801E3978 0C02BE85 */  jal   func_800AFA14
/* 22EB6C 801E397C 00000000 */   nop   
/* 22EB70 801E3980 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22EB74 801E3984 27BD0018 */  addiu $sp, $sp, 0x18
/* 22EB78 801E3988 03E00008 */  jr    $ra
/* 22EB7C 801E398C 00000000 */   nop   
.type func_801E389C_ovl17, @function
.size func_801E389C_ovl17, . - func_801E389C_ovl17

glabel func_801E3990_ovl17
/* 22EB80 801E3990 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22EB84 801E3994 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22EB88 801E3998 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22EB8C 801E399C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22EB90 801E39A0 AFA40018 */  sw    $a0, 0x18($sp)
/* 22EB94 801E39A4 8C4E0000 */  lw    $t6, ($v0)
/* 22EB98 801E39A8 3C18800E */  lui   $t8, %hi(gEntitiesNextPosXArray) # $t8, 0x800e
/* 22EB9C 801E39AC 271825D0 */  addiu $t8, %lo(gEntitiesNextPosXArray) # addiu $t8, $t8, 0x25d0
/* 22EBA0 801E39B0 000E7880 */  sll   $t7, $t6, 2
/* 22EBA4 801E39B4 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 22EBA8 801E39B8 01F81821 */  addu  $v1, $t7, $t8
/* 22EBAC 801E39BC 44810000 */  mtc1  $at, $f0
/* 22EBB0 801E39C0 C4640000 */  lwc1  $f4, ($v1)
/* 22EBB4 801E39C4 3C09800E */  lui   $t1, %hi(gEntitiesNextPosYArray) # $t1, 0x800e
/* 22EBB8 801E39C8 25292790 */  addiu $t1, %lo(gEntitiesNextPosYArray) # addiu $t1, $t1, 0x2790
/* 22EBBC 801E39CC 46002182 */  mul.s $f6, $f4, $f0
/* 22EBC0 801E39D0 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosZArray) # $t4, 0x800e
/* 22EBC4 801E39D4 258C2950 */  addiu $t4, %lo(gEntitiesNextPosZArray) # addiu $t4, $t4, 0x2950
/* 22EBC8 801E39D8 E4660000 */  swc1  $f6, ($v1)
/* 22EBCC 801E39DC 8C590000 */  lw    $t9, ($v0)
/* 22EBD0 801E39E0 00194080 */  sll   $t0, $t9, 2
/* 22EBD4 801E39E4 01092021 */  addu  $a0, $t0, $t1
/* 22EBD8 801E39E8 C4880000 */  lwc1  $f8, ($a0)
/* 22EBDC 801E39EC 46004282 */  mul.s $f10, $f8, $f0
/* 22EBE0 801E39F0 E48A0000 */  swc1  $f10, ($a0)
/* 22EBE4 801E39F4 8C4A0000 */  lw    $t2, ($v0)
/* 22EBE8 801E39F8 000A5880 */  sll   $t3, $t2, 2
/* 22EBEC 801E39FC 016C2821 */  addu  $a1, $t3, $t4
/* 22EBF0 801E3A00 C4B00000 */  lwc1  $f16, ($a1)
/* 22EBF4 801E3A04 46008482 */  mul.s $f18, $f16, $f0
/* 22EBF8 801E3A08 0C078E88 */  jal   func_801E3A20_ovl17
/* 22EBFC 801E3A0C E4B20000 */   swc1  $f18, ($a1)
/* 22EC00 801E3A10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22EC04 801E3A14 27BD0018 */  addiu $sp, $sp, 0x18
/* 22EC08 801E3A18 03E00008 */  jr    $ra
/* 22EC0C 801E3A1C 00000000 */   nop   
.type func_801E3990_ovl17, @function
.size func_801E3990_ovl17, . - func_801E3990_ovl17

glabel func_801E3A20_ovl17
/* 22EC10 801E3A20 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22EC14 801E3A24 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22EC18 801E3A28 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 22EC1C 801E3A2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22EC20 801E3A30 8DCF0000 */  lw    $t7, ($t6)
/* 22EC24 801E3A34 3C19800E */ lui $t9, %hi(D_800E1B50)
/* 22EC28 801E3A38 000FC080 */  sll   $t8, $t7, 2
/* 22EC2C 801E3A3C 0338C821 */  addu  $t9, $t9, $t8
/* 22EC30 801E3A40 8F391B50 */ lw $t9, %lo(D_800E1B50)($t9)
/* 22EC34 801E3A44 0C068119 */  jal   func_801A0464_ovl17
/* 22EC38 801E3A48 AFB90050 */   sw    $t9, 0x50($sp)
/* 22EC3C 801E3A4C 0C0447B3 */  jal   func_80111ECC
/* 22EC40 801E3A50 00402025 */   move  $a0, $v0
/* 22EC44 801E3A54 8FA80050 */  lw    $t0, 0x50($sp)
/* 22EC48 801E3A58 8D09008C */  lw    $t1, 0x8c($t0)
/* 22EC4C 801E3A5C 15200003 */  bnez  $t1, .L801E3A6C_ovl17
/* 22EC50 801E3A60 00000000 */   nop   
/* 22EC54 801E3A64 1000016E */  b     .L801E4020_ovl17
/* 22EC58 801E3A68 00001025 */   move  $v0, $zero
.L801E3A6C_ovl17:
/* 22EC5C 801E3A6C 0C0442C0 */  jal   func_80110B00
/* 22EC60 801E3A70 27A4002C */   addiu $a0, $sp, 0x2c
/* 22EC64 801E3A74 1040000E */  beqz  $v0, .L801E3AB0_ovl17
/* 22EC68 801E3A78 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22EC6C 801E3A7C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 22EC70 801E3A80 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 22EC74 801E3A84 93AA002E */  lbu   $t2, 0x2e($sp)
/* 22EC78 801E3A88 3C07800F */  lui   $a3, %hi(D_800E83E0) # $a3, 0x800f
/* 22EC7C 801E3A8C 8D6C0000 */  lw    $t4, ($t3)
/* 22EC80 801E3A90 24E783E0 */  addiu $a3, %lo(D_800E83E0) # addiu $a3, $a3, -0x7c20
/* 22EC84 801E3A94 000C6880 */  sll   $t5, $t4, 2
/* 22EC88 801E3A98 00ED7021 */  addu  $t6, $a3, $t5
/* 22EC8C 801E3A9C ADCA0000 */  sw    $t2, ($t6)
/* 22EC90 801E3AA0 8FB80050 */  lw    $t8, 0x50($sp)
/* 22EC94 801E3AA4 93AF002F */  lbu   $t7, 0x2f($sp)
/* 22EC98 801E3AA8 1000000B */  b     .L801E3AD8_ovl17
/* 22EC9C 801E3AAC A30F0043 */   sb    $t7, 0x43($t8)
.L801E3AB0_ovl17:
/* 22ECA0 801E3AB0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22ECA4 801E3AB4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22ECA8 801E3AB8 3C07800F */  lui   $a3, %hi(D_800E83E0) # $a3, 0x800f
/* 22ECAC 801E3ABC 24E783E0 */  addiu $a3, %lo(D_800E83E0) # addiu $a3, $a3, -0x7c20
/* 22ECB0 801E3AC0 8F280000 */  lw    $t0, ($t9)
/* 22ECB4 801E3AC4 00084880 */  sll   $t1, $t0, 2
/* 22ECB8 801E3AC8 00E95821 */  addu  $t3, $a3, $t1
/* 22ECBC 801E3ACC AD600000 */  sw    $zero, ($t3)
/* 22ECC0 801E3AD0 8FAC0050 */  lw    $t4, 0x50($sp)
/* 22ECC4 801E3AD4 A1800043 */  sb    $zero, 0x43($t4)
.L801E3AD8_ovl17:
/* 22ECC8 801E3AD8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22ECCC 801E3ADC 24060001 */  li    $a2, 1
/* 22ECD0 801E3AE0 24010002 */  li    $at, 2
/* 22ECD4 801E3AE4 8C620000 */  lw    $v0, ($v1)
/* 22ECD8 801E3AE8 00022880 */  sll   $a1, $v0, 2
/* 22ECDC 801E3AEC 00E56821 */  addu  $t5, $a3, $a1
/* 22ECE0 801E3AF0 8DA40000 */  lw    $a0, ($t5)
/* 22ECE4 801E3AF4 10860110 */  beq   $a0, $a2, .L801E3F38_ovl17
/* 22ECE8 801E3AF8 00000000 */   nop   
/* 22ECEC 801E3AFC 14810133 */  bne   $a0, $at, .L801E3FCC_ovl17
/* 22ECF0 801E3B00 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22ECF4 801E3B04 00250821 */  addu  $at, $at, $a1
/* 22ECF8 801E3B08 AC267CE0 */ sw $a2, %lo(D_800E7CE0)($at)
/* 22ECFC 801E3B0C 0C029D9E */  jal   play_sound
/* 22ED00 801E3B10 240401BD */   li    $a0, 445
/* 22ED04 801E3B14 8FA20038 */  lw    $v0, 0x38($sp)
/* 22ED08 801E3B18 24060001 */  li    $a2, 1
/* 22ED0C 801E3B1C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 22ED10 801E3B20 10400004 */  beqz  $v0, .L801E3B34_ovl17
/* 22ED14 801E3B24 00025080 */   sll   $t2, $v0, 2
/* 22ED18 801E3B28 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22ED1C 801E3B2C 002A0821 */  addu  $at, $at, $t2
/* 22ED20 801E3B30 AC2698E0 */ sw $a2, %lo(D_800E98E0)($at)
.L801E3B34_ovl17:
/* 22ED24 801E3B34 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 22ED28 801E3B38 3C04800E */  lui   $a0, %hi(D_800E7880) # $a0, 0x800e
/* 22ED2C 801E3B3C 24847880 */  addiu $a0, %lo(D_800E7880) # addiu $a0, $a0, 0x7880
/* 22ED30 801E3B40 8C620000 */  lw    $v0, ($v1)
/* 22ED34 801E3B44 3C0D800E */ lui $t5, %hi(D_800E0D50)
/* 22ED38 801E3B48 3C08800E */ lui $t0, %hi(D_800E0D50)
/* 22ED3C 801E3B4C 00827021 */  addu  $t6, $a0, $v0
/* 22ED40 801E3B50 91CF0000 */  lbu   $t7, ($t6)
/* 22ED44 801E3B54 00026080 */  sll   $t4, $v0, 2
/* 22ED48 801E3B58 01AC6821 */  addu  $t5, $t5, $t4
/* 22ED4C 801E3B5C 15E00009 */  bnez  $t7, .L801E3B84_ovl17
/* 22ED50 801E3B60 0002C880 */   sll   $t9, $v0, 2
/* 22ED54 801E3B64 01194021 */  addu  $t0, $t0, $t9
/* 22ED58 801E3B68 8D080D50 */ lw $t0, %lo(D_800E0D50)($t0)
/* 22ED5C 801E3B6C 3C01800F */ lui $at, %hi(D_800E9C60)
/* 22ED60 801E3B70 24180003 */  li    $t8, 3
/* 22ED64 801E3B74 00084880 */  sll   $t1, $t0, 2
/* 22ED68 801E3B78 00290821 */  addu  $at, $at, $t1
/* 22ED6C 801E3B7C 10000007 */  b     .L801E3B9C_ovl17
/* 22ED70 801E3B80 AC389C60 */ sw $t8, %lo(D_800E9C60)($at)
.L801E3B84_ovl17:
/* 22ED74 801E3B84 8DAD0D50 */ lw $t5, %lo(D_800E0D50)($t5)
/* 22ED78 801E3B88 3C01800F */ lui $at, %hi(D_800E9E20)
/* 22ED7C 801E3B8C 240B0003 */  li    $t3, 3
/* 22ED80 801E3B90 000D5080 */  sll   $t2, $t5, 2
/* 22ED84 801E3B94 002A0821 */  addu  $at, $at, $t2
/* 22ED88 801E3B98 AC2B9E20 */ sw $t3, %lo(D_800E9E20)($at)
.L801E3B9C_ovl17:
/* 22ED8C 801E3B9C 8C6E0000 */  lw    $t6, ($v1)
/* 22ED90 801E3BA0 008E7821 */  addu  $t7, $a0, $t6
/* 22ED94 801E3BA4 91F90000 */  lbu   $t9, ($t7)
/* 22ED98 801E3BA8 17200072 */  bnez  $t9, .L801E3D74_ovl17
/* 22ED9C 801E3BAC 00000000 */   nop   
/* 22EDA0 801E3BB0 0C006291 */  jal   random_soft_s32_range
/* 22EDA4 801E3BB4 24040002 */   li    $a0, 2
/* 22EDA8 801E3BB8 10400013 */  beqz  $v0, .L801E3C08_ovl17
/* 22EDAC 801E3BBC 3C0A8005 */   lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 22EDB0 801E3BC0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 22EDB4 801E3BC4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 22EDB8 801E3BC8 3C0C800E */ lui $t4, %hi(D_800E0D50)
/* 22EDBC 801E3BCC 3C0B800E */ lui $t3, %hi(D_800DFBD0)
/* 22EDC0 801E3BD0 8D180000 */  lw    $t8, ($t0)
/* 22EDC4 801E3BD4 24040006 */  li    $a0, 6
/* 22EDC8 801E3BD8 24050003 */  li    $a1, 3
/* 22EDCC 801E3BDC 00184880 */  sll   $t1, $t8, 2
/* 22EDD0 801E3BE0 01896021 */  addu  $t4, $t4, $t1
/* 22EDD4 801E3BE4 8D8C0D50 */ lw $t4, %lo(D_800E0D50)($t4)
/* 22EDD8 801E3BE8 24060002 */  li    $a2, 2
/* 22EDDC 801E3BEC 000C6880 */  sll   $t5, $t4, 2
/* 22EDE0 801E3BF0 016D5821 */  addu  $t3, $t3, $t5
/* 22EDE4 801E3BF4 8D6BFBD0 */ lw $t3, %lo(D_800DFBD0)($t3)
/* 22EDE8 801E3BF8 0C02A040 */  jal   func_800A8100
/* 22EDEC 801E3BFC 8D670014 */   lw    $a3, 0x14($t3)
/* 22EDF0 801E3C00 10000010 */  b     .L801E3C44_ovl17
/* 22EDF4 801E3C04 00000000 */   nop   
.L801E3C08_ovl17:
/* 22EDF8 801E3C08 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 22EDFC 801E3C0C 3C19800E */ lui $t9, %hi(D_800E0D50)
/* 22EE00 801E3C10 3C18800E */ lui $t8, %hi(D_800DFBD0)
/* 22EE04 801E3C14 8D4E0000 */  lw    $t6, ($t2)
/* 22EE08 801E3C18 24040006 */  li    $a0, 6
/* 22EE0C 801E3C1C 24050003 */  li    $a1, 3
/* 22EE10 801E3C20 000E7880 */  sll   $t7, $t6, 2
/* 22EE14 801E3C24 032FC821 */  addu  $t9, $t9, $t7
/* 22EE18 801E3C28 8F390D50 */ lw $t9, %lo(D_800E0D50)($t9)
/* 22EE1C 801E3C2C 24060002 */  li    $a2, 2
/* 22EE20 801E3C30 00194080 */  sll   $t0, $t9, 2
/* 22EE24 801E3C34 0308C021 */  addu  $t8, $t8, $t0
/* 22EE28 801E3C38 8F18FBD0 */ lw $t8, %lo(D_800DFBD0)($t8)
/* 22EE2C 801E3C3C 0C02A040 */  jal   func_800A8100
/* 22EE30 801E3C40 8F070018 */   lw    $a3, 0x18($t8)
.L801E3C44_ovl17:
/* 22EE34 801E3C44 0C006291 */  jal   random_soft_s32_range
/* 22EE38 801E3C48 24040002 */   li    $a0, 2
/* 22EE3C 801E3C4C 10400013 */  beqz  $v0, .L801E3C9C_ovl17
/* 22EE40 801E3C50 3C0F8005 */   lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22EE44 801E3C54 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22EE48 801E3C58 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22EE4C 801E3C5C 3C0B800E */ lui $t3, %hi(D_800E0D50)
/* 22EE50 801E3C60 3C0E800E */ lui $t6, %hi(D_800DFBD0)
/* 22EE54 801E3C64 8D2C0000 */  lw    $t4, ($t1)
/* 22EE58 801E3C68 24040006 */  li    $a0, 6
/* 22EE5C 801E3C6C 24050003 */  li    $a1, 3
/* 22EE60 801E3C70 000C6880 */  sll   $t5, $t4, 2
/* 22EE64 801E3C74 016D5821 */  addu  $t3, $t3, $t5
/* 22EE68 801E3C78 8D6B0D50 */ lw $t3, %lo(D_800E0D50)($t3)
/* 22EE6C 801E3C7C 24060002 */  li    $a2, 2
/* 22EE70 801E3C80 000B5080 */  sll   $t2, $t3, 2
/* 22EE74 801E3C84 01CA7021 */  addu  $t6, $t6, $t2
/* 22EE78 801E3C88 8DCEFBD0 */ lw $t6, %lo(D_800DFBD0)($t6)
/* 22EE7C 801E3C8C 0C02A040 */  jal   func_800A8100
/* 22EE80 801E3C90 8DC70020 */   lw    $a3, 0x20($t6)
/* 22EE84 801E3C94 10000010 */  b     .L801E3CD8_ovl17
/* 22EE88 801E3C98 00000000 */   nop   
.L801E3C9C_ovl17:
/* 22EE8C 801E3C9C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22EE90 801E3CA0 3C18800E */ lui $t8, %hi(D_800E0D50)
/* 22EE94 801E3CA4 3C0C800E */ lui $t4, %hi(D_800DFBD0)
/* 22EE98 801E3CA8 8DF90000 */  lw    $t9, ($t7)
/* 22EE9C 801E3CAC 24040006 */  li    $a0, 6
/* 22EEA0 801E3CB0 24050003 */  li    $a1, 3
/* 22EEA4 801E3CB4 00194080 */  sll   $t0, $t9, 2
/* 22EEA8 801E3CB8 0308C021 */  addu  $t8, $t8, $t0
/* 22EEAC 801E3CBC 8F180D50 */ lw $t8, %lo(D_800E0D50)($t8)
/* 22EEB0 801E3CC0 24060002 */  li    $a2, 2
/* 22EEB4 801E3CC4 00184880 */  sll   $t1, $t8, 2
/* 22EEB8 801E3CC8 01896021 */  addu  $t4, $t4, $t1
/* 22EEBC 801E3CCC 8D8CFBD0 */ lw $t4, %lo(D_800DFBD0)($t4)
/* 22EEC0 801E3CD0 0C02A040 */  jal   func_800A8100
/* 22EEC4 801E3CD4 8D870024 */   lw    $a3, 0x24($t4)
.L801E3CD8_ovl17:
/* 22EEC8 801E3CD8 0C006291 */  jal   random_soft_s32_range
/* 22EECC 801E3CDC 24040002 */   li    $a0, 2
/* 22EED0 801E3CE0 10400013 */  beqz  $v0, .L801E3D30_ovl17
/* 22EED4 801E3CE4 3C088005 */   lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 22EED8 801E3CE8 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 22EEDC 801E3CEC 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 22EEE0 801E3CF0 3C0E800E */ lui $t6, %hi(D_800E0D50)
/* 22EEE4 801E3CF4 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 22EEE8 801E3CF8 8DAB0000 */  lw    $t3, ($t5)
/* 22EEEC 801E3CFC 24040006 */  li    $a0, 6
/* 22EEF0 801E3D00 24050003 */  li    $a1, 3
/* 22EEF4 801E3D04 000B5080 */  sll   $t2, $t3, 2
/* 22EEF8 801E3D08 01CA7021 */  addu  $t6, $t6, $t2
/* 22EEFC 801E3D0C 8DCE0D50 */ lw $t6, %lo(D_800E0D50)($t6)
/* 22EF00 801E3D10 24060002 */  li    $a2, 2
/* 22EF04 801E3D14 000E7880 */  sll   $t7, $t6, 2
/* 22EF08 801E3D18 032FC821 */  addu  $t9, $t9, $t7
/* 22EF0C 801E3D1C 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 22EF10 801E3D20 0C02A040 */  jal   func_800A8100
/* 22EF14 801E3D24 8F27002C */   lw    $a3, 0x2c($t9)
/* 22EF18 801E3D28 100000BD */  b     .L801E4020_ovl17
/* 22EF1C 801E3D2C 24020001 */   li    $v0, 1
.L801E3D30_ovl17:
/* 22EF20 801E3D30 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 22EF24 801E3D34 3C0C800E */ lui $t4, %hi(D_800E0D50)
/* 22EF28 801E3D38 3C0B800E */ lui $t3, %hi(D_800DFBD0)
/* 22EF2C 801E3D3C 8D180000 */  lw    $t8, ($t0)
/* 22EF30 801E3D40 24040006 */  li    $a0, 6
/* 22EF34 801E3D44 24050003 */  li    $a1, 3
/* 22EF38 801E3D48 00184880 */  sll   $t1, $t8, 2
/* 22EF3C 801E3D4C 01896021 */  addu  $t4, $t4, $t1
/* 22EF40 801E3D50 8D8C0D50 */ lw $t4, %lo(D_800E0D50)($t4)
/* 22EF44 801E3D54 24060002 */  li    $a2, 2
/* 22EF48 801E3D58 000C6880 */  sll   $t5, $t4, 2
/* 22EF4C 801E3D5C 016D5821 */  addu  $t3, $t3, $t5
/* 22EF50 801E3D60 8D6BFBD0 */ lw $t3, %lo(D_800DFBD0)($t3)
/* 22EF54 801E3D64 0C02A040 */  jal   func_800A8100
/* 22EF58 801E3D68 8D670030 */   lw    $a3, 0x30($t3)
/* 22EF5C 801E3D6C 100000AC */  b     .L801E4020_ovl17
/* 22EF60 801E3D70 24020001 */   li    $v0, 1
.L801E3D74_ovl17:
/* 22EF64 801E3D74 0C006291 */  jal   random_soft_s32_range
/* 22EF68 801E3D78 24040002 */   li    $a0, 2
/* 22EF6C 801E3D7C 10400013 */  beqz  $v0, .L801E3DCC_ovl17
/* 22EF70 801E3D80 3C098005 */   lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22EF74 801E3D84 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 22EF78 801E3D88 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 22EF7C 801E3D8C 3C19800E */ lui $t9, %hi(D_800E0D50)
/* 22EF80 801E3D90 3C18800E */ lui $t8, %hi(D_800DFBD0)
/* 22EF84 801E3D94 8D4E0000 */  lw    $t6, ($t2)
/* 22EF88 801E3D98 24040006 */  li    $a0, 6
/* 22EF8C 801E3D9C 24050003 */  li    $a1, 3
/* 22EF90 801E3DA0 000E7880 */  sll   $t7, $t6, 2
/* 22EF94 801E3DA4 032FC821 */  addu  $t9, $t9, $t7
/* 22EF98 801E3DA8 8F390D50 */ lw $t9, %lo(D_800E0D50)($t9)
/* 22EF9C 801E3DAC 24060002 */  li    $a2, 2
/* 22EFA0 801E3DB0 00194080 */  sll   $t0, $t9, 2
/* 22EFA4 801E3DB4 0308C021 */  addu  $t8, $t8, $t0
/* 22EFA8 801E3DB8 8F18FBD0 */ lw $t8, %lo(D_800DFBD0)($t8)
/* 22EFAC 801E3DBC 0C02A040 */  jal   func_800A8100
/* 22EFB0 801E3DC0 8F070040 */   lw    $a3, 0x40($t8)
/* 22EFB4 801E3DC4 10000010 */  b     .L801E3E08_ovl17
/* 22EFB8 801E3DC8 00000000 */   nop   
.L801E3DCC_ovl17:
/* 22EFBC 801E3DCC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22EFC0 801E3DD0 3C0B800E */ lui $t3, %hi(D_800E0D50)
/* 22EFC4 801E3DD4 3C0E800E */ lui $t6, %hi(D_800DFBD0)
/* 22EFC8 801E3DD8 8D2C0000 */  lw    $t4, ($t1)
/* 22EFCC 801E3DDC 24040006 */  li    $a0, 6
/* 22EFD0 801E3DE0 24050003 */  li    $a1, 3
/* 22EFD4 801E3DE4 000C6880 */  sll   $t5, $t4, 2
/* 22EFD8 801E3DE8 016D5821 */  addu  $t3, $t3, $t5
/* 22EFDC 801E3DEC 8D6B0D50 */ lw $t3, %lo(D_800E0D50)($t3)
/* 22EFE0 801E3DF0 24060002 */  li    $a2, 2
/* 22EFE4 801E3DF4 000B5080 */  sll   $t2, $t3, 2
/* 22EFE8 801E3DF8 01CA7021 */  addu  $t6, $t6, $t2
/* 22EFEC 801E3DFC 8DCEFBD0 */ lw $t6, %lo(D_800DFBD0)($t6)
/* 22EFF0 801E3E00 0C02A040 */  jal   func_800A8100
/* 22EFF4 801E3E04 8DC70044 */   lw    $a3, 0x44($t6)
.L801E3E08_ovl17:
/* 22EFF8 801E3E08 0C006291 */  jal   random_soft_s32_range
/* 22EFFC 801E3E0C 24040002 */   li    $a0, 2
/* 22F000 801E3E10 10400013 */  beqz  $v0, .L801E3E60_ovl17
/* 22F004 801E3E14 3C0D8005 */   lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 22F008 801E3E18 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22F00C 801E3E1C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22F010 801E3E20 3C18800E */ lui $t8, %hi(D_800E0D50)
/* 22F014 801E3E24 3C0C800E */ lui $t4, %hi(D_800DFBD0)
/* 22F018 801E3E28 8DF90000 */  lw    $t9, ($t7)
/* 22F01C 801E3E2C 24040006 */  li    $a0, 6
/* 22F020 801E3E30 24050003 */  li    $a1, 3
/* 22F024 801E3E34 00194080 */  sll   $t0, $t9, 2
/* 22F028 801E3E38 0308C021 */  addu  $t8, $t8, $t0
/* 22F02C 801E3E3C 8F180D50 */ lw $t8, %lo(D_800E0D50)($t8)
/* 22F030 801E3E40 24060002 */  li    $a2, 2
/* 22F034 801E3E44 00184880 */  sll   $t1, $t8, 2
/* 22F038 801E3E48 01896021 */  addu  $t4, $t4, $t1
/* 22F03C 801E3E4C 8D8CFBD0 */ lw $t4, %lo(D_800DFBD0)($t4)
/* 22F040 801E3E50 0C02A040 */  jal   func_800A8100
/* 22F044 801E3E54 8D87004C */   lw    $a3, 0x4c($t4)
/* 22F048 801E3E58 10000010 */  b     .L801E3E9C_ovl17
/* 22F04C 801E3E5C 00000000 */   nop   
.L801E3E60_ovl17:
/* 22F050 801E3E60 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 22F054 801E3E64 3C0E800E */ lui $t6, %hi(D_800E0D50)
/* 22F058 801E3E68 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 22F05C 801E3E6C 8DAB0000 */  lw    $t3, ($t5)
/* 22F060 801E3E70 24040006 */  li    $a0, 6
/* 22F064 801E3E74 24050003 */  li    $a1, 3
/* 22F068 801E3E78 000B5080 */  sll   $t2, $t3, 2
/* 22F06C 801E3E7C 01CA7021 */  addu  $t6, $t6, $t2
/* 22F070 801E3E80 8DCE0D50 */ lw $t6, %lo(D_800E0D50)($t6)
/* 22F074 801E3E84 24060002 */  li    $a2, 2
/* 22F078 801E3E88 000E7880 */  sll   $t7, $t6, 2
/* 22F07C 801E3E8C 032FC821 */  addu  $t9, $t9, $t7
/* 22F080 801E3E90 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 22F084 801E3E94 0C02A040 */  jal   func_800A8100
/* 22F088 801E3E98 8F270050 */   lw    $a3, 0x50($t9)
.L801E3E9C_ovl17:
/* 22F08C 801E3E9C 0C006291 */  jal   random_soft_s32_range
/* 22F090 801E3EA0 24040002 */   li    $a0, 2
/* 22F094 801E3EA4 10400013 */  beqz  $v0, .L801E3EF4_ovl17
/* 22F098 801E3EA8 3C0A8005 */   lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 22F09C 801E3EAC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 22F0A0 801E3EB0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 22F0A4 801E3EB4 3C0C800E */ lui $t4, %hi(D_800E0D50)
/* 22F0A8 801E3EB8 3C0B800E */ lui $t3, %hi(D_800DFBD0)
/* 22F0AC 801E3EBC 8D180000 */  lw    $t8, ($t0)
/* 22F0B0 801E3EC0 24040006 */  li    $a0, 6
/* 22F0B4 801E3EC4 24050003 */  li    $a1, 3
/* 22F0B8 801E3EC8 00184880 */  sll   $t1, $t8, 2
/* 22F0BC 801E3ECC 01896021 */  addu  $t4, $t4, $t1
/* 22F0C0 801E3ED0 8D8C0D50 */ lw $t4, %lo(D_800E0D50)($t4)
/* 22F0C4 801E3ED4 24060002 */  li    $a2, 2
/* 22F0C8 801E3ED8 000C6880 */  sll   $t5, $t4, 2
/* 22F0CC 801E3EDC 016D5821 */  addu  $t3, $t3, $t5
/* 22F0D0 801E3EE0 8D6BFBD0 */ lw $t3, %lo(D_800DFBD0)($t3)
/* 22F0D4 801E3EE4 0C02A040 */  jal   func_800A8100
/* 22F0D8 801E3EE8 8D670058 */   lw    $a3, 0x58($t3)
/* 22F0DC 801E3EEC 1000004C */  b     .L801E4020_ovl17
/* 22F0E0 801E3EF0 24020001 */   li    $v0, 1
.L801E3EF4_ovl17:
/* 22F0E4 801E3EF4 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 22F0E8 801E3EF8 3C19800E */ lui $t9, %hi(D_800E0D50)
/* 22F0EC 801E3EFC 3C18800E */ lui $t8, %hi(D_800DFBD0)
/* 22F0F0 801E3F00 8D4E0000 */  lw    $t6, ($t2)
/* 22F0F4 801E3F04 24040006 */  li    $a0, 6
/* 22F0F8 801E3F08 24050003 */  li    $a1, 3
/* 22F0FC 801E3F0C 000E7880 */  sll   $t7, $t6, 2
/* 22F100 801E3F10 032FC821 */  addu  $t9, $t9, $t7
/* 22F104 801E3F14 8F390D50 */ lw $t9, %lo(D_800E0D50)($t9)
/* 22F108 801E3F18 24060002 */  li    $a2, 2
/* 22F10C 801E3F1C 00194080 */  sll   $t0, $t9, 2
/* 22F110 801E3F20 0308C021 */  addu  $t8, $t8, $t0
/* 22F114 801E3F24 8F18FBD0 */ lw $t8, %lo(D_800DFBD0)($t8)
/* 22F118 801E3F28 0C02A040 */  jal   func_800A8100
/* 22F11C 801E3F2C 8F07005C */   lw    $a3, 0x5c($t8)
/* 22F120 801E3F30 1000003B */  b     .L801E4020_ovl17
/* 22F124 801E3F34 24020001 */   li    $v0, 1
.L801E3F38_ovl17:
/* 22F128 801E3F38 3C04800E */  lui   $a0, %hi(D_800E7880) # $a0, 0x800e
/* 22F12C 801E3F3C 24847880 */  addiu $a0, %lo(D_800E7880) # addiu $a0, $a0, 0x7880
/* 22F130 801E3F40 00824821 */  addu  $t1, $a0, $v0
/* 22F134 801E3F44 912C0000 */  lbu   $t4, ($t1)
/* 22F138 801E3F48 3C0A800E */ lui $t2, %hi(D_800E0D50)
/* 22F13C 801E3F4C 01455021 */  addu  $t2, $t2, $a1
/* 22F140 801E3F50 15800009 */  bnez  $t4, .L801E3F78_ovl17
/* 22F144 801E3F54 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 22F148 801E3F58 3C0D800E */ lui $t5, %hi(D_800E0D50)
/* 22F14C 801E3F5C 01A56821 */  addu  $t5, $t5, $a1
/* 22F150 801E3F60 8DAD0D50 */ lw $t5, %lo(D_800E0D50)($t5)
/* 22F154 801E3F64 3C01800F */ lui $at, %hi(D_800E9C60)
/* 22F158 801E3F68 000D5880 */  sll   $t3, $t5, 2
/* 22F15C 801E3F6C 002B0821 */  addu  $at, $at, $t3
/* 22F160 801E3F70 10000006 */  b     .L801E3F8C_ovl17
/* 22F164 801E3F74 AC269C60 */ sw $a2, %lo(D_800E9C60)($at)
.L801E3F78_ovl17:
/* 22F168 801E3F78 8D4A0D50 */ lw $t2, %lo(D_800E0D50)($t2)
/* 22F16C 801E3F7C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 22F170 801E3F80 000A7080 */  sll   $t6, $t2, 2
/* 22F174 801E3F84 002E0821 */  addu  $at, $at, $t6
/* 22F178 801E3F88 AC269E20 */ sw $a2, %lo(D_800E9E20)($at)
.L801E3F8C_ovl17:
/* 22F17C 801E3F8C 8C6F0000 */  lw    $t7, ($v1)
/* 22F180 801E3F90 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 22F184 801E3F94 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 22F188 801E3F98 000FC880 */  sll   $t9, $t7, 2
/* 22F18C 801E3F9C 00992021 */  addu  $a0, $a0, $t9
/* 22F190 801E3FA0 0C02C7B2 */  jal   assign_new_process_entry
/* 22F194 801E3FA4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 22F198 801E3FA8 8FA20038 */  lw    $v0, 0x38($sp)
/* 22F19C 801E3FAC 24060001 */  li    $a2, 1
/* 22F1A0 801E3FB0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22F1A4 801E3FB4 10400003 */  beqz  $v0, .L801E3FC4_ovl17
/* 22F1A8 801E3FB8 00024080 */   sll   $t0, $v0, 2
/* 22F1AC 801E3FBC 00280821 */  addu  $at, $at, $t0
/* 22F1B0 801E3FC0 AC2698E0 */ sw $a2, %lo(D_800E98E0)($at)
.L801E3FC4_ovl17:
/* 22F1B4 801E3FC4 10000016 */  b     .L801E4020_ovl17
/* 22F1B8 801E3FC8 24020001 */   li    $v0, 1
.L801E3FCC_ovl17:
/* 22F1BC 801E3FCC 3C04800E */  lui   $a0, %hi(D_800E7880) # $a0, 0x800e
/* 22F1C0 801E3FD0 24847880 */  addiu $a0, %lo(D_800E7880) # addiu $a0, $a0, 0x7880
/* 22F1C4 801E3FD4 0082C021 */  addu  $t8, $a0, $v0
/* 22F1C8 801E3FD8 93090000 */  lbu   $t1, ($t8)
/* 22F1CC 801E3FDC 3C0B800E */ lui $t3, %hi(D_800E0D50)
/* 22F1D0 801E3FE0 01655821 */  addu  $t3, $t3, $a1
/* 22F1D4 801E3FE4 15200009 */  bnez  $t1, .L801E400C_ovl17
/* 22F1D8 801E3FE8 00001025 */   move  $v0, $zero
/* 22F1DC 801E3FEC 3C0C800E */ lui $t4, %hi(D_800E0D50)
/* 22F1E0 801E3FF0 01856021 */  addu  $t4, $t4, $a1
/* 22F1E4 801E3FF4 8D8C0D50 */ lw $t4, %lo(D_800E0D50)($t4)
/* 22F1E8 801E3FF8 3C01800F */ lui $at, %hi(D_800E9C60)
/* 22F1EC 801E3FFC 000C6880 */  sll   $t5, $t4, 2
/* 22F1F0 801E4000 002D0821 */  addu  $at, $at, $t5
/* 22F1F4 801E4004 10000006 */  b     .L801E4020_ovl17
/* 22F1F8 801E4008 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
.L801E400C_ovl17:
/* 22F1FC 801E400C 8D6B0D50 */ lw $t3, %lo(D_800E0D50)($t3)
/* 22F200 801E4010 3C01800F */ lui $at, %hi(D_800E9E20)
/* 22F204 801E4014 000B5080 */  sll   $t2, $t3, 2
/* 22F208 801E4018 002A0821 */  addu  $at, $at, $t2
/* 22F20C 801E401C AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
.L801E4020_ovl17:
/* 22F210 801E4020 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F214 801E4024 27BD0058 */  addiu $sp, $sp, 0x58
/* 22F218 801E4028 03E00008 */  jr    $ra
/* 22F21C 801E402C 00000000 */   nop   
.type func_801E3A20_ovl17, @function
.size func_801E3A20_ovl17, . - func_801E3A20_ovl17

glabel func_801E4030_ovl17
/* 22F220 801E4030 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 22F224 801E4034 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 22F228 801E4038 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F22C 801E403C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F230 801E4040 AFA40018 */  sw    $a0, 0x18($sp)
/* 22F234 801E4044 8C4F0000 */  lw    $t7, ($v0)
/* 22F238 801E4048 3C0E800B */  lui   $t6, %hi(D_800B4B9C) # $t6, 0x800b
/* 22F23C 801E404C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22F240 801E4050 000FC080 */  sll   $t8, $t7, 2
/* 22F244 801E4054 00380821 */  addu  $at, $at, $t8
/* 22F248 801E4058 25CE4B9C */  addiu $t6, %lo(D_800B4B9C) # addiu $t6, $t6, 0x4b9c
/* 22F24C 801E405C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 22F250 801E4060 8C480000 */  lw    $t0, ($v0)
/* 22F254 801E4064 3C01800E */ lui $at, %hi(D_800DF150)
/* 22F258 801E4068 3C19801E */  lui   $t9, %hi(func_801E4178_ovl17) # $t9, 0x801e
/* 22F25C 801E406C 00084880 */  sll   $t1, $t0, 2
/* 22F260 801E4070 00290821 */  addu  $at, $at, $t1
/* 22F264 801E4074 27394178 */  addiu $t9, %lo(func_801E4178_ovl17) # addiu $t9, $t9, 0x4178
/* 22F268 801E4078 AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 22F26C 801E407C 8C4A0000 */  lw    $t2, ($v0)
/* 22F270 801E4080 3C01800F */ lui $at, %hi(D_800E8920)
/* 22F274 801E4084 3C040001 */  lui   $a0, (0x00010084 >> 16) # lui $a0, 1
/* 22F278 801E4088 000A5880 */  sll   $t3, $t2, 2
/* 22F27C 801E408C 002B0821 */  addu  $at, $at, $t3
/* 22F280 801E4090 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22F284 801E4094 8C4C0000 */  lw    $t4, ($v0)
/* 22F288 801E4098 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 22F28C 801E409C 44812000 */  mtc1  $at, $f4
/* 22F290 801E40A0 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22F294 801E40A4 000C6880 */  sll   $t5, $t4, 2
/* 22F298 801E40A8 002D0821 */  addu  $at, $at, $t5
/* 22F29C 801E40AC 34840084 */  ori   $a0, (0x00010084 & 0xFFFF) # ori $a0, $a0, 0x84
/* 22F2A0 801E40B0 24050023 */  li    $a1, 35
/* 22F2A4 801E40B4 24060010 */  li    $a2, 16
/* 22F2A8 801E40B8 0C02A619 */  jal   func_800A9864
/* 22F2AC 801E40BC E4247B20 */ swc1 $f4, %lo(D_800E7B20)($at)
/* 22F2B0 801E40C0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22F2B4 801E40C4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22F2B8 801E40C8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22F2BC 801E40CC 8FA40018 */  lw    $a0, 0x18($sp)
/* 22F2C0 801E40D0 8DEE0000 */  lw    $t6, ($t7)
/* 22F2C4 801E40D4 000EC080 */  sll   $t8, $t6, 2
/* 22F2C8 801E40D8 00380821 */  addu  $at, $at, $t8
/* 22F2CC 801E40DC 0C07903D */  jal   func_801E40F4_ovl17
/* 22F2D0 801E40E0 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 22F2D4 801E40E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F2D8 801E40E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 22F2DC 801E40EC 03E00008 */  jr    $ra
/* 22F2E0 801E40F0 00000000 */   nop   
.type func_801E4030_ovl17, @function
.size func_801E4030_ovl17, . - func_801E4030_ovl17

glabel func_801E40F4_ovl17
/* 22F2E4 801E40F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 22F2E8 801E40F8 AFB20020 */  sw    $s2, 0x20($sp)
/* 22F2EC 801E40FC AFB1001C */  sw    $s1, 0x1c($sp)
/* 22F2F0 801E4100 AFB00018 */  sw    $s0, 0x18($sp)
/* 22F2F4 801E4104 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 22F2F8 801E4108 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 22F2FC 801E410C 3C12801E */  lui   $s2, %hi(D_801E54C4) # $s2, 0x801e
/* 22F300 801E4110 AFBF0024 */  sw    $ra, 0x24($sp)
/* 22F304 801E4114 AFA40028 */  sw    $a0, 0x28($sp)
/* 22F308 801E4118 265254C4 */  addiu $s2, %lo(D_801E54C4) # addiu $s2, $s2, 0x54c4
/* 22F30C 801E411C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 22F310 801E4120 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 22F314 801E4124 8E2E0000 */  lw    $t6, ($s1)
.L801E4128_ovl17:
/* 22F318 801E4128 24050004 */  li    $a1, 4
/* 22F31C 801E412C 02403025 */  move  $a2, $s2
/* 22F320 801E4130 8DCF0000 */  lw    $t7, ($t6)
/* 22F324 801E4134 000FC080 */  sll   $t8, $t7, 2
/* 22F328 801E4138 0218C821 */  addu  $t9, $s0, $t8
/* 22F32C 801E413C 0C02911F */  jal   call_virtual_function
/* 22F330 801E4140 8F240000 */   lw    $a0, ($t9)
/* 22F334 801E4144 1000FFF8 */  b     .L801E4128_ovl17
/* 22F338 801E4148 8E2E0000 */   lw    $t6, ($s1)
/* 22F33C 801E414C 00000000 */  nop   
/* 22F340 801E4150 00000000 */  nop   
/* 22F344 801E4154 00000000 */  nop   
/* 22F348 801E4158 00000000 */  nop   
/* 22F34C 801E415C 00000000 */  nop   
/* 22F350 801E4160 8FBF0024 */  lw    $ra, 0x24($sp)
/* 22F354 801E4164 8FB00018 */  lw    $s0, 0x18($sp)
/* 22F358 801E4168 8FB1001C */  lw    $s1, 0x1c($sp)
/* 22F35C 801E416C 8FB20020 */  lw    $s2, 0x20($sp)
/* 22F360 801E4170 03E00008 */  jr    $ra
/* 22F364 801E4174 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801E40F4_ovl17, @function
.size func_801E40F4_ovl17, . - func_801E40F4_ovl17

glabel func_801E4178_ovl17
/* 22F368 801E4178 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F36C 801E417C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F370 801E4180 0C07919A */  jal   func_801E4668_ovl17
/* 22F374 801E4184 00000000 */   nop   
/* 22F378 801E4188 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22F37C 801E418C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22F380 801E4190 3C04800E */ lui $a0, %hi(D_800DDFD0)
/* 22F384 801E4194 3C06801E */  lui   $a2, %hi(D_801E54D4) # $a2, 0x801e
/* 22F388 801E4198 8DCF0000 */  lw    $t7, ($t6)
/* 22F38C 801E419C 24C654D4 */  addiu $a2, %lo(D_801E54D4) # addiu $a2, $a2, 0x54d4
/* 22F390 801E41A0 24050004 */  li    $a1, 4
/* 22F394 801E41A4 000FC080 */  sll   $t8, $t7, 2
/* 22F398 801E41A8 00982021 */  addu  $a0, $a0, $t8
/* 22F39C 801E41AC 0C02911F */  jal   call_virtual_function
/* 22F3A0 801E41B0 8C84DFD0 */ lw $a0, %lo(D_800DDFD0)($a0)
/* 22F3A4 801E41B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F3A8 801E41B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 22F3AC 801E41BC 03E00008 */  jr    $ra
/* 22F3B0 801E41C0 00000000 */   nop   
.type func_801E4178_ovl17, @function
.size func_801E4178_ovl17, . - func_801E4178_ovl17

glabel func_801E41C4_ovl17
/* 22F3B4 801E41C4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 22F3B8 801E41C8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 22F3BC 801E41CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F3C0 801E41D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F3C4 801E41D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 22F3C8 801E41D8 8DCF0000 */  lw    $t7, ($t6)
/* 22F3CC 801E41DC 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22F3D0 801E41E0 3C040001 */  lui   $a0, (0x00010510 >> 16) # lui $a0, 1
/* 22F3D4 801E41E4 000FC080 */  sll   $t8, $t7, 2
/* 22F3D8 801E41E8 00380821 */  addu  $at, $at, $t8
/* 22F3DC 801E41EC AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 22F3E0 801E41F0 0C02A806 */  jal   func_800AA018
/* 22F3E4 801E41F4 34840510 */   ori   $a0, (0x00010510 & 0xFFFF) # ori $a0, $a0, 0x510
/* 22F3E8 801E41F8 0C02BC9F */  jal   func_800AF27C
/* 22F3EC 801E41FC 00000000 */   nop   
/* 22F3F0 801E4200 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 22F3F4 801E4204 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 22F3F8 801E4208 3C08800E */ lui $t0, %hi(D_800E0D50)
/* 22F3FC 801E420C 3C0A800E */ lui $t2, %hi(gEntityVtableIndexArray)
/* 22F400 801E4210 8F220000 */  lw    $v0, ($t9)
/* 22F404 801E4214 3C040001 */  lui   $a0, (0x00010514 >> 16) # lui $a0, 1
/* 22F408 801E4218 00021080 */  sll   $v0, $v0, 2
/* 22F40C 801E421C 01024021 */  addu  $t0, $t0, $v0
/* 22F410 801E4220 8D080D50 */ lw $t0, %lo(D_800E0D50)($t0)
/* 22F414 801E4224 00084880 */  sll   $t1, $t0, 2
/* 22F418 801E4228 01495021 */  addu  $t2, $t2, $t1
/* 22F41C 801E422C 8D4ADC50 */ lw $t2, %lo(gEntityVtableIndexArray)($t2)
/* 22F420 801E4230 5540000A */  bnezl $t2, .L801E425C_ovl17
/* 22F424 801E4234 8FBF0014 */   lw    $ra, 0x14($sp)
/* 22F428 801E4238 0C02A806 */  jal   func_800AA018
/* 22F42C 801E423C 34840514 */   ori   $a0, (0x00010514 & 0xFFFF) # ori $a0, $a0, 0x514
/* 22F430 801E4240 0C002DAF */  jal   finish_current_thread
/* 22F434 801E4244 24040038 */   li    $a0, 56
/* 22F438 801E4248 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 22F43C 801E424C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 22F440 801E4250 8D620000 */  lw    $v0, ($t3)
/* 22F444 801E4254 00021080 */  sll   $v0, $v0, 2
/* 22F448 801E4258 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E425C_ovl17:
/* 22F44C 801E425C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22F450 801E4260 00220821 */  addu  $at, $at, $v0
/* 22F454 801E4264 240C0001 */  li    $t4, 1
/* 22F458 801E4268 AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
/* 22F45C 801E426C 03E00008 */  jr    $ra
/* 22F460 801E4270 27BD0018 */   addiu $sp, $sp, 0x18
.type func_801E41C4_ovl17, @function
.size func_801E41C4_ovl17, . - func_801E41C4_ovl17

glabel func_801E4274_ovl17
/* 22F464 801E4274 03E00008 */  jr    $ra
/* 22F468 801E4278 AFA40000 */   sw    $a0, ($sp)
.type func_801E4274_ovl17, @function
.size func_801E4274_ovl17, . - func_801E4274_ovl17

glabel func_801E427C_ovl17
/* 22F46C 801E427C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22F470 801E4280 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22F474 801E4284 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F478 801E4288 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F47C 801E428C AFA40018 */  sw    $a0, 0x18($sp)
/* 22F480 801E4290 8DF80000 */  lw    $t8, ($t7)
/* 22F484 801E4294 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22F488 801E4298 240E0001 */  li    $t6, 1
/* 22F48C 801E429C 0018C880 */  sll   $t9, $t8, 2
/* 22F490 801E42A0 00390821 */  addu  $at, $at, $t9
/* 22F494 801E42A4 3C040001 */  lui   $a0, (0x00010514 >> 16) # lui $a0, 1
/* 22F498 801E42A8 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22F49C 801E42AC 0C02A806 */  jal   func_800AA018
/* 22F4A0 801E42B0 34840514 */   ori   $a0, (0x00010514 & 0xFFFF) # ori $a0, $a0, 0x514
/* 22F4A4 801E42B4 0C02BE85 */  jal   func_800AFA14
/* 22F4A8 801E42B8 00000000 */   nop   
/* 22F4AC 801E42BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F4B0 801E42C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 22F4B4 801E42C4 03E00008 */  jr    $ra
/* 22F4B8 801E42C8 00000000 */   nop   
.type func_801E427C_ovl17, @function
.size func_801E427C_ovl17, . - func_801E427C_ovl17

glabel func_801E42CC_ovl17
/* 22F4BC 801E42CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F4C0 801E42D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F4C4 801E42D4 0C079122 */  jal   func_801E4488_ovl17
/* 22F4C8 801E42D8 AFA40018 */   sw    $a0, 0x18($sp)
/* 22F4CC 801E42DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F4D0 801E42E0 27BD0018 */  addiu $sp, $sp, 0x18
/* 22F4D4 801E42E4 03E00008 */  jr    $ra
/* 22F4D8 801E42E8 00000000 */   nop   
.type func_801E42CC_ovl17, @function
.size func_801E42CC_ovl17, . - func_801E42CC_ovl17

glabel func_801E42EC_ovl17
/* 22F4DC 801E42EC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22F4E0 801E42F0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22F4E4 801E42F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F4E8 801E42F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F4EC 801E42FC AFA40018 */  sw    $a0, 0x18($sp)
/* 22F4F0 801E4300 8DF80000 */  lw    $t8, ($t7)
/* 22F4F4 801E4304 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22F4F8 801E4308 240E0002 */  li    $t6, 2
/* 22F4FC 801E430C 0018C880 */  sll   $t9, $t8, 2
/* 22F500 801E4310 00390821 */  addu  $at, $at, $t9
/* 22F504 801E4314 3C040001 */  lui   $a0, (0x0001050E >> 16) # lui $a0, 1
/* 22F508 801E4318 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22F50C 801E431C 0C02A806 */  jal   func_800AA018
/* 22F510 801E4320 3484050E */   ori   $a0, (0x0001050E & 0xFFFF) # ori $a0, $a0, 0x50e
/* 22F514 801E4324 0C002DAF */  jal   finish_current_thread
/* 22F518 801E4328 24040008 */   li    $a0, 8
/* 22F51C 801E432C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 22F520 801E4330 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 22F524 801E4334 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F528 801E4338 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22F52C 801E433C 8D2A0000 */  lw    $t2, ($t1)
/* 22F530 801E4340 24080001 */  li    $t0, 1
/* 22F534 801E4344 27BD0018 */  addiu $sp, $sp, 0x18
/* 22F538 801E4348 000A5880 */  sll   $t3, $t2, 2
/* 22F53C 801E434C 002B0821 */  addu  $at, $at, $t3
/* 22F540 801E4350 03E00008 */  jr    $ra
/* 22F544 801E4354 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801E42EC_ovl17, @function
.size func_801E42EC_ovl17, . - func_801E42EC_ovl17

glabel func_801E4358_ovl17
/* 22F548 801E4358 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F54C 801E435C AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F550 801E4360 0C079122 */  jal   func_801E4488_ovl17
/* 22F554 801E4364 AFA40018 */   sw    $a0, 0x18($sp)
/* 22F558 801E4368 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F55C 801E436C 27BD0018 */  addiu $sp, $sp, 0x18
/* 22F560 801E4370 03E00008 */  jr    $ra
/* 22F564 801E4374 00000000 */   nop   
.type func_801E4358_ovl17, @function
.size func_801E4358_ovl17, . - func_801E4358_ovl17

glabel func_801E4378_ovl17
/* 22F568 801E4378 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 22F56C 801E437C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 22F570 801E4380 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 22F574 801E4384 AFBF0014 */  sw    $ra, 0x14($sp)
/* 22F578 801E4388 AFA40018 */  sw    $a0, 0x18($sp)
/* 22F57C 801E438C 8DF80000 */  lw    $t8, ($t7)
/* 22F580 801E4390 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 22F584 801E4394 240E0003 */  li    $t6, 3
/* 22F588 801E4398 0018C880 */  sll   $t9, $t8, 2
/* 22F58C 801E439C 00390821 */  addu  $at, $at, $t9
/* 22F590 801E43A0 3C040001 */  lui   $a0, (0x00010510 >> 16) # lui $a0, 1
/* 22F594 801E43A4 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 22F598 801E43A8 0C02A806 */  jal   func_800AA018
/* 22F59C 801E43AC 34840510 */   ori   $a0, (0x00010510 & 0xFFFF) # ori $a0, $a0, 0x510
/* 22F5A0 801E43B0 0C02BC9F */  jal   func_800AF27C
/* 22F5A4 801E43B4 00000000 */   nop   
/* 22F5A8 801E43B8 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22F5AC 801E43BC 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22F5B0 801E43C0 0C02BEED */  jal   func_800AFBB4
/* 22F5B4 801E43C4 00002025 */   move  $a0, $zero
/* 22F5B8 801E43C8 0C002DAF */  jal   finish_current_thread
/* 22F5BC 801E43CC 24040258 */   li    $a0, 600
/* 22F5C0 801E43D0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22F5C4 801E43D4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22F5C8 801E43D8 3C08800E */ lui $t0, %hi(D_800E0D50)
/* 22F5CC 801E43DC 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22F5D0 801E43E0 8CA20000 */  lw    $v0, ($a1)
/* 22F5D4 801E43E4 44802000 */  mtc1  $zero, $f4
/* 22F5D8 801E43E8 00021080 */  sll   $v0, $v0, 2
/* 22F5DC 801E43EC 01024021 */  addu  $t0, $t0, $v0
/* 22F5E0 801E43F0 8D080D50 */ lw $t0, %lo(D_800E0D50)($t0)
/* 22F5E4 801E43F4 00084880 */  sll   $t1, $t0, 2
/* 22F5E8 801E43F8 00290821 */  addu  $at, $at, $t1
/* 22F5EC 801E43FC C4267B20 */ lwc1 $f6, %lo(D_800E7B20)($at)
/* 22F5F0 801E4400 4604303E */  c.le.s $f6, $f4
/* 22F5F4 801E4404 00000000 */  nop   
/* 22F5F8 801E4408 45000007 */  bc1f  .L801E4428_ovl17
/* 22F5FC 801E440C 00000000 */   nop   
/* 22F600 801E4410 0C02BE85 */  jal   func_800AFA14
/* 22F604 801E4414 00000000 */   nop   
/* 22F608 801E4418 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 22F60C 801E441C 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 22F610 801E4420 8CA20000 */  lw    $v0, ($a1)
/* 22F614 801E4424 00021080 */  sll   $v0, $v0, 2
.L801E4428_ovl17:
/* 22F618 801E4428 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 22F61C 801E442C 00220821 */  addu  $at, $at, $v0
/* 22F620 801E4430 AC207CE0 */ sw $zero, %lo(D_800E7CE0)($at)
/* 22F624 801E4434 8CAA0000 */  lw    $t2, ($a1)
/* 22F628 801E4438 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 22F62C 801E443C 44814000 */  mtc1  $at, $f8
/* 22F630 801E4440 3C01800E */ lui $at, %hi(D_800E7B20)
/* 22F634 801E4444 000A5880 */  sll   $t3, $t2, 2
/* 22F638 801E4448 002B0821 */  addu  $at, $at, $t3
/* 22F63C 801E444C 24040001 */  li    $a0, 1
/* 22F640 801E4450 0C02BEED */  jal   func_800AFBB4
/* 22F644 801E4454 E4287B20 */ swc1 $f8, %lo(D_800E7B20)($at)
/* 22F648 801E4458 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 22F64C 801E445C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 22F650 801E4460 8FBF0014 */  lw    $ra, 0x14($sp)
/* 22F654 801E4464 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 22F658 801E4468 8D8D0000 */  lw    $t5, ($t4)
/* 22F65C 801E446C 27BD0018 */  addiu $sp, $sp, 0x18
/* 22F660 801E4470 000D7880 */  sll   $t7, $t5, 2
/* 22F664 801E4474 002F0821 */  addu  $at, $at, $t7
/* 22F668 801E4478 03E00008 */  jr    $ra
/* 22F66C 801E447C AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)

.type func_801E4378_ovl17, @function
.size func_801E4378_ovl17, . - func_801E4378_ovl17
