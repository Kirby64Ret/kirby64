glabel func_801EF218_ovl10
/* 1DFF88 801EF218 27BDFFE0 */  addiu      $sp, $sp, -0x20
.L801EF21C_ovl16:
/* 1DFF8C 801EF21C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1DFF90 801EF220 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1DFF94 801EF224 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1DFF98 801EF228 AFB10018 */  sw         $s1, 0x18($sp)
/* 1DFF9C 801EF22C AFB00014 */  sw         $s0, 0x14($sp)
/* 1DFFA0 801EF230 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1DFFA4 801EF234 3C10800F */  lui        $s0, %hi(D_800EBBE0)
/* 1DFFA8 801EF238 2610BBE0 */  addiu      $s0, $s0, %lo(D_800EBBE0)
/* 1DFFAC 801EF23C 000E7880 */  sll        $t7, $t6, 2
/* 1DFFB0 801EF240 020FC021 */  addu       $t8, $s0, $t7
/* 1DFFB4 801EF244 24010001 */  addiu      $at, $zero, 0x1
/* 1DFFB8 801EF248 00808825 */  or         $s1, $a0, $zero
/* 1DFFBC 801EF24C 10810008 */  beq        $a0, $at, .L801EF270_ovl10
/* 1DFFC0 801EF250 AF000000 */   sw        $zero, 0x0($t8)
/* 1DFFC4 801EF254 24010002 */  addiu      $at, $zero, 0x2
/* 1DFFC8 801EF258 10810020 */  beq        $a0, $at, .L801EF2DC_ovl10
/* 1DFFCC 801EF25C 24010003 */   addiu     $at, $zero, 0x3
.L801EF260_ovl9:
/* 1DFFD0 801EF260 5081002D */  beql       $a0, $at, .L801EF318_ovl10
.L801EF264_ovl16:
/* 1DFFD4 801EF264 44800000 */   mtc1      $zero, $f0
/* 1DFFD8 801EF268 10000038 */  b          .L801EF34C_ovl10
/* 1DFFDC 801EF26C 8C640000 */   lw        $a0, 0x0($v1)
.L801EF270_ovl10:
/* 1DFFE0 801EF270 44800000 */  mtc1       $zero, $f0
/* 1DFFE4 801EF274 2404000B */  addiu      $a0, $zero, 0xB
/* 1DFFE8 801EF278 00002825 */  or         $a1, $zero, $zero
/* 1DFFEC 801EF27C 44060000 */  mfc1       $a2, $f0
/* 1DFFF0 801EF280 44070000 */  mfc1       $a3, $f0
/* 1DFFF4 801EF284 0C06B328 */  jal        func_801ACCA0
/* 1DFFF8 801EF288 00000000 */   nop
.L801EF28C_ovl9:
/* 1DFFFC 801EF28C 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1E0000 801EF290 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1E0004 801EF294 44800000 */  mtc1       $zero, $f0
/* 1E0008 801EF298 2404000B */  addiu      $a0, $zero, 0xB
/* 1E000C 801EF29C 8F280000 */  lw         $t0, 0x0($t9)
/* 1E0010 801EF2A0 44060000 */  mfc1       $a2, $f0
/* 1E0014 801EF2A4 44070000 */  mfc1       $a3, $f0
/* 1E0018 801EF2A8 00084880 */  sll        $t1, $t0, 2
.L801EF2AC_ovl9:
/* 1E001C 801EF2AC 02095021 */  addu       $t2, $s0, $t1
.L801EF2B0_ovl16:
/* 1E0020 801EF2B0 AD420000 */  sw         $v0, 0x0($t2)
/* 1E0024 801EF2B4 0C06B328 */  jal        func_801ACCA0
/* 1E0028 801EF2B8 00002825 */   or        $a1, $zero, $zero
/* 1E002C 801EF2BC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1E0030 801EF2C0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801EF2C4_ovl9:
/* 1E0034 801EF2C4 3C01800F */  lui        $at, %hi(D_800EBDA0)
/* 1E0038 801EF2C8 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1E003C 801EF2CC 000B6080 */  sll        $t4, $t3, 2
/* 1E0040 801EF2D0 002C0821 */  addu       $at, $at, $t4
/* 1E0044 801EF2D4 1000001C */  b          .L801EF348_ovl10
/* 1E0048 801EF2D8 AC22BDA0 */   sw        $v0, %lo(D_800EBDA0)($at)
.L801EF2DC_ovl10:
/* 1E004C 801EF2DC 44800000 */  mtc1       $zero, $f0
.L801EF2E0_ovl16:
/* 1E0050 801EF2E0 2404000B */  addiu      $a0, $zero, 0xB
/* 1E0054 801EF2E4 00002825 */  or         $a1, $zero, $zero
glabel func_801EF2E8_ovl16
/* 1E0058 801EF2E8 44060000 */  mfc1       $a2, $f0
/* 1E005C 801EF2EC 44070000 */  mfc1       $a3, $f0
/* 1E0060 801EF2F0 0C06B328 */  jal        func_801ACCA0
/* 1E0064 801EF2F4 00000000 */   nop
.L801EF2F8_ovl9:
/* 1E0068 801EF2F8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1E006C 801EF2FC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1E0070 801EF300 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1E0074 801EF304 000D7080 */  sll        $t6, $t5, 2
/* 1E0078 801EF308 020E7821 */  addu       $t7, $s0, $t6
.L801EF30C_ovl16:
/* 1E007C 801EF30C 1000000E */  b          .L801EF348_ovl10
/* 1E0080 801EF310 ADE20000 */   sw        $v0, 0x0($t7)
/* 1E0084 801EF314 44800000 */  mtc1       $zero, $f0
.L801EF318_ovl10:
/* 1E0088 801EF318 2404000B */  addiu      $a0, $zero, 0xB
/* 1E008C 801EF31C 00002825 */  or         $a1, $zero, $zero
.L801EF320_ovl9:
/* 1E0090 801EF320 44060000 */  mfc1       $a2, $f0
/* 1E0094 801EF324 44070000 */  mfc1       $a3, $f0
/* 1E0098 801EF328 0C06B328 */  jal        func_801ACCA0
glabel func_801EF32C_ovl16
/* 1E009C 801EF32C 00000000 */   nop
/* 1E00A0 801EF330 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1E00A4 801EF334 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1E00A8 801EF338 8C780000 */  lw         $t8, 0x0($v1)
/* 1E00AC 801EF33C 0018C880 */  sll        $t9, $t8, 2
/* 1E00B0 801EF340 02194021 */  addu       $t0, $s0, $t9
/* 1E00B4 801EF344 AD020000 */  sw         $v0, 0x0($t0)
.L801EF348_ovl10:
/* 1E00B8 801EF348 8C640000 */  lw         $a0, 0x0($v1)
.L801EF34C_ovl10:
/* 1E00BC 801EF34C 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 1E00C0 801EF350 00042080 */  sll        $a0, $a0, 2
glabel func_801EF354_ovl9
/* 1E00C4 801EF354 02044821 */  addu       $t1, $s0, $a0
/* 1E00C8 801EF358 8D250000 */  lw         $a1, 0x0($t1)
/* 1E00CC 801EF35C 10A00012 */  beqz       $a1, .L801EF3A8_ovl10
/* 1E00D0 801EF360 00055080 */   sll       $t2, $a1, 2
/* 1E00D4 801EF364 002A0821 */  addu       $at, $at, $t2
/* 1E00D8 801EF368 AC31C2E0 */  sw         $s1, %lo(D_800EC2E0)($at)
/* 1E00DC 801EF36C 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1E00E0 801EF370 3C18800E */  lui        $t8, %hi(D_800E6A10)
/* 1E00E4 801EF374 27186A10 */  addiu      $t8, $t8, %lo(D_800E6A10)
/* 1E00E8 801EF378 000B6080 */  sll        $t4, $t3, 2
/* 1E00EC 801EF37C 020C6821 */  addu       $t5, $s0, $t4
/* 1E00F0 801EF380 8DAE0000 */  lw         $t6, 0x0($t5)
.L801EF384_ovl16:
/* 1E00F4 801EF384 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1E00F8 801EF388 44813000 */  mtc1       $at, $f6
/* 1E00FC 801EF38C 000E7880 */  sll        $t7, $t6, 2
.L801EF390_ovl16:
/* 1E0100 801EF390 01F81021 */  addu       $v0, $t7, $t8
/* 1E0104 801EF394 C4440000 */  lwc1       $f4, 0x0($v0)
/* 1E0108 801EF398 46062202 */  mul.s      $f8, $f4, $f6
/* 1E010C 801EF39C E4480000 */  swc1       $f8, 0x0($v0)
/* 1E0110 801EF3A0 8C640000 */  lw         $a0, 0x0($v1)
/* 1E0114 801EF3A4 00042080 */  sll        $a0, $a0, 2
.L801EF3A8_ovl10:
/* 1E0118 801EF3A8 3C02800F */  lui        $v0, %hi(D_800EBDA0)
/* 1E011C 801EF3AC 00441021 */  addu       $v0, $v0, $a0
glabel func_801EF3B0_ovl16
/* 1E0120 801EF3B0 8C42BDA0 */  lw         $v0, %lo(D_800EBDA0)($v0)
/* 1E0124 801EF3B4 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 1E0128 801EF3B8 10400005 */  beqz       $v0, .L801EF3D0_ovl10
/* 1E012C 801EF3BC 0002C880 */   sll       $t9, $v0, 2
/* 1E0130 801EF3C0 00390821 */  addu       $at, $at, $t9
/* 1E0134 801EF3C4 AC31C2E0 */  sw         $s1, %lo(D_800EC2E0)($at)
/* 1E0138 801EF3C8 8C640000 */  lw         $a0, 0x0($v1)
/* 1E013C 801EF3CC 00042080 */  sll        $a0, $a0, 2
.L801EF3D0_ovl10:
/* 1E0140 801EF3D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1E0144 801EF3D4 02044021 */  addu       $t0, $s0, $a0
/* 1E0148 801EF3D8 8D020000 */  lw         $v0, 0x0($t0)
/* 1E014C 801EF3DC 8FB00014 */  lw         $s0, 0x14($sp)
/* 1E0150 801EF3E0 8FB10018 */  lw         $s1, 0x18($sp)
/* 1E0154 801EF3E4 03E00008 */  jr         $ra
/* 1E0158 801EF3E8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1E015C 801EF3EC 00000000 */  nop
