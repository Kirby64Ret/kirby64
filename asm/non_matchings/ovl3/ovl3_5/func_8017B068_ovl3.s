glabel func_8017B068_ovl3
/* 0DBAA8 8017B068 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0DBAAC 8017B06C AFB00030 */  sw    $s0, 0x30($sp)
/* 0DBAB0 8017B070 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0DBAB4 8017B074 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0DBAB8 8017B078 AFB7004C */  sw    $s7, 0x4c($sp)
/* 0DBABC 8017B07C 24170001 */  li    $s7, 1
/* 0DBAC0 8017B080 AFBF0054 */  sw    $ra, 0x54($sp)
/* 0DBAC4 8017B084 AFBE0050 */  sw    $fp, 0x50($sp)
/* 0DBAC8 8017B088 AFB60048 */  sw    $s6, 0x48($sp)
/* 0DBACC 8017B08C AFB50044 */  sw    $s5, 0x44($sp)
/* 0DBAD0 8017B090 AFB40040 */  sw    $s4, 0x40($sp)
/* 0DBAD4 8017B094 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0DBAD8 8017B098 AFB20038 */  sw    $s2, 0x38($sp)
/* 0DBADC 8017B09C AFB10034 */  sw    $s1, 0x34($sp)
/* 0DBAE0 8017B0A0 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 0DBAE4 8017B0A4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 0DBAE8 8017B0A8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0DBAEC 8017B0AC AFA40058 */  sw    $a0, 0x58($sp)
/* 0DBAF0 8017B0B0 AE000044 */  sw    $zero, 0x44($s0)
/* 0DBAF4 8017B0B4 AE000030 */  sw    $zero, 0x30($s0)
/* 0DBAF8 8017B0B8 AE170048 */  sw    $s7, 0x48($s0)
/* 0DBAFC 8017B0BC 0C0473D6 */  jal   func_8011CF58_ovl3
/* 0DBB00 8017B0C0 A2000007 */   sb    $zero, 7($s0)
/* 0DBB04 8017B0C4 3C168005 */  lui   $s6, %hi(D_8004A7C4) # $s6, 0x8005
/* 0DBB08 8017B0C8 8E0F0090 */  lw    $t7, 0x90($s0)
/* 0DBB0C 8017B0CC 26D6A7C4 */  addiu $s6, %lo(D_8004A7C4) # addiu $s6, $s6, -0x583c
/* 0DBB10 8017B0D0 8ED90000 */  lw    $t9, ($s6)
/* 0DBB14 8017B0D4 AE0F00A0 */  sw    $t7, 0xa0($s0)
/* 0DBB18 8017B0D8 3C01800E */  lui   $at, 0x800e
/* 0DBB1C 8017B0DC 8F280000 */  lw    $t0, ($t9)
/* 0DBB20 8017B0E0 24180023 */  li    $t8, 35
/* 0DBB24 8017B0E4 00084880 */  sll   $t1, $t0, 2
/* 0DBB28 8017B0E8 00290821 */  addu  $at, $at, $t1
/* 0DBB2C 8017B0EC 0C04828A */  jal   func_80120A28_ovl3
/* 0DBB30 8017B0F0 AC38DFD0 */   sw    $t8, -0x2030($at)
/* 0DBB34 8017B0F4 8EC40000 */  lw    $a0, ($s6)
/* 0DBB38 8017B0F8 3C01800E */  lui   $at, 0x800e
/* 0DBB3C 8017B0FC 3C1E800F */  lui   $fp, %hi(D_800EAA60) # $fp, 0x800f
/* 0DBB40 8017B100 8C820000 */  lw    $v0, ($a0)
/* 0DBB44 8017B104 27DEAA60 */  addiu $fp, %lo(D_800EAA60) # addiu $fp, $fp, -0x55a0
/* 0DBB48 8017B108 4480C000 */  mtc1  $zero, $f24
/* 0DBB4C 8017B10C 00021080 */  sll   $v0, $v0, 2
/* 0DBB50 8017B110 00220821 */  addu  $at, $at, $v0
/* 0DBB54 8017B114 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0DBB58 8017B118 03C25021 */  addu  $t2, $fp, $v0
/* 0DBB5C 8017B11C 3C11800F */  lui   $s1, %hi(D_800EA8A0) # $s1, 0x800f
/* 0DBB60 8017B120 E5440000 */  swc1  $f4, ($t2)
/* 0DBB64 8017B124 8C8B0000 */  lw    $t3, ($a0)
/* 0DBB68 8017B128 2631A8A0 */  addiu $s1, %lo(D_800EA8A0) # addiu $s1, $s1, -0x5760
/* 0DBB6C 8017B12C 3C12800F */  lui   $s2, %hi(D_800EA6E0) # $s2, 0x800f
/* 0DBB70 8017B130 000B6080 */  sll   $t4, $t3, 2
/* 0DBB74 8017B134 022C6821 */  addu  $t5, $s1, $t4
/* 0DBB78 8017B138 E5B80000 */  swc1  $f24, ($t5)
/* 0DBB7C 8017B13C 8C820000 */  lw    $v0, ($a0)
/* 0DBB80 8017B140 2652A6E0 */  addiu $s2, %lo(D_800EA6E0) # addiu $s2, $s2, -0x5920
/* 0DBB84 8017B144 3C19800F */  lui   $t9, 0x800f
/* 0DBB88 8017B148 00021080 */  sll   $v0, $v0, 2
/* 0DBB8C 8017B14C 02227021 */  addu  $t6, $s1, $v0
/* 0DBB90 8017B150 C5C60000 */  lwc1  $f6, ($t6)
/* 0DBB94 8017B154 02427821 */  addu  $t7, $s2, $v0
/* 0DBB98 8017B158 3C13800F */  lui   $s3, 0x800f
/* 0DBB9C 8017B15C E5E60000 */  swc1  $f6, ($t7)
/* 0DBBA0 8017B160 8C820000 */  lw    $v0, ($a0)
/* 0DBBA4 8017B164 3C018019 */  lui   $at, 0x8019
/* 0DBBA8 8017B168 3C040002 */  lui   $a0, (0x0002000D >> 16) # lui $a0, 2
/* 0DBBAC 8017B16C 00021080 */  sll   $v0, $v0, 2
/* 0DBBB0 8017B170 0322C821 */  addu  $t9, $t9, $v0
/* 0DBBB4 8017B174 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 0DBBB8 8017B178 33280006 */  andi  $t0, $t9, 6
/* 0DBBBC 8017B17C 11000008 */  beqz  $t0, .L8017B1A0_ovl3
/* 0DBBC0 8017B180 00000000 */   nop   
/* 0DBBC4 8017B184 3C13800F */  lui   $s3, %hi(D_800EAC20) # $s3, 0x800f
/* 0DBBC8 8017B188 3C018019 */  lui   $at, %hi(D_801975CC) # $at, 0x8019
/* 0DBBCC 8017B18C C42875C8 */  lwc1  $f8, %lo(D_801975C8)($at)
/* 0DBBD0 8017B190 2673AC20 */  addiu $s3, %lo(D_800EAC20) # addiu $s3, $s3, -0x53e0
/* 0DBBD4 8017B194 0262C021 */  addu  $t8, $s3, $v0
/* 0DBBD8 8017B198 10000005 */  b     .L8017B1B0_ovl3
/* 0DBBDC 8017B19C E7080000 */   swc1  $f8, ($t8)
.L8017B1A0_ovl3:
/* 0DBBE0 8017B1A0 C42A75CC */  lwc1  $f10, %lo(D_801975CC)($at)
/* 0DBBE4 8017B1A4 2673AC20 */  addiu $s3, $s3, -0x53e0
/* 0DBBE8 8017B1A8 02624821 */  addu  $t1, $s3, $v0
/* 0DBBEC 8017B1AC E52A0000 */  swc1  $f10, ($t1)
.L8017B1B0_ovl3:
/* 0DBBF0 8017B1B0 0C048BC2 */  jal   func_80122F08_ovl3
/* 0DBBF4 8017B1B4 3484000D */   ori   $a0, (0x0002000D & 0xFFFF) # ori $a0, $a0, 0xd
/* 0DBBF8 8017B1B8 240A0002 */  li    $t2, 2
/* 0DBBFC 8017B1BC AE0A0154 */  sw    $t2, 0x154($s0)
/* 0DBC00 8017B1C0 24040002 */  li    $a0, 2
/* 0DBC04 8017B1C4 02E02825 */  move  $a1, $s7
/* 0DBC08 8017B1C8 0C02A08D */  jal   func_800A8234_ovl3
/* 0DBC0C 8017B1CC 24060031 */   li    $a2, 49
/* 0DBC10 8017B1D0 AE02004C */  sw    $v0, 0x4c($s0)
/* 0DBC14 8017B1D4 24040002 */  li    $a0, 2
/* 0DBC18 8017B1D8 02E02825 */  move  $a1, $s7
/* 0DBC1C 8017B1DC 0C02A08D */  jal   func_800A8234_ovl3
/* 0DBC20 8017B1E0 24060032 */   li    $a2, 50
/* 0DBC24 8017B1E4 AE020050 */  sw    $v0, 0x50($s0)
/* 0DBC28 8017B1E8 0C047701 */  jal   func_8011DC04_ovl3
/* 0DBC2C 8017B1EC 240400BC */   li    $a0, 188
/* 0DBC30 8017B1F0 3C040002 */  lui   $a0, (0x00020192 >> 16) # lui $a0, 2
/* 0DBC34 8017B1F4 0C02A806 */  jal   func_800AA018_ovl3
/* 0DBC38 8017B1F8 34840192 */   ori   $a0, (0x00020192 & 0xFFFF) # ori $a0, $a0, 0x192
/* 0DBC3C 8017B1FC 3C018019 */  lui   $at, %hi(D_801975D0) # $at, 0x8019
/* 0DBC40 8017B200 C43675D0 */  lwc1  $f22, %lo(D_801975D0)($at)
/* 0DBC44 8017B204 3C018019 */  lui   $at, %hi(D_801975D4) # $at, 0x8019
/* 0DBC48 8017B208 3C15800E */  lui   $s5, %hi(D_800DFBD0) # $s5, 0x800e
/* 0DBC4C 8017B20C 3C14800D */  lui   $s4, %hi(D_800D6FE8) # $s4, 0x800d
/* 0DBC50 8017B210 26946FE8 */  addiu $s4, %lo(D_800D6FE8) # addiu $s4, $s4, 0x6fe8
/* 0DBC54 8017B214 26B5FBD0 */  addiu $s5, %lo(D_800DFBD0) # addiu $s5, $s5, -0x430
/* 0DBC58 8017B218 C43475D4 */  lwc1  $f20, %lo(D_801975D4)($at)
/* 0DBC5C 8017B21C 920B0017 */  lbu   $t3, 0x17($s0)
.L8017B220_ovl3:
/* 0DBC60 8017B220 15600050 */  bnez  $t3, .L8017B364_ovl3
/* 0DBC64 8017B224 00000000 */   nop   
/* 0DBC68 8017B228 8E0C0044 */  lw    $t4, 0x44($s0)
/* 0DBC6C 8017B22C 5580000D */  bnezl $t4, .L8017B264_ovl3
/* 0DBC70 8017B230 8EC40000 */   lw    $a0, ($s6)
/* 0DBC74 8017B234 968D0000 */  lhu   $t5, ($s4)
/* 0DBC78 8017B238 31AE4000 */  andi  $t6, $t5, 0x4000
/* 0DBC7C 8017B23C 55C00003 */  bnezl $t6, .L8017B24C_ovl3
/* 0DBC80 8017B240 8EC40000 */   lw    $a0, ($s6)
/* 0DBC84 8017B244 AE170044 */  sw    $s7, 0x44($s0)
/* 0DBC88 8017B248 8EC40000 */  lw    $a0, ($s6)
.L8017B24C_ovl3:
/* 0DBC8C 8017B24C 8C820000 */  lw    $v0, ($a0)
/* 0DBC90 8017B250 00021080 */  sll   $v0, $v0, 2
/* 0DBC94 8017B254 02427821 */  addu  $t7, $s2, $v0
/* 0DBC98 8017B258 10000022 */  b     .L8017B2E4_ovl3
/* 0DBC9C 8017B25C C5E00000 */   lwc1  $f0, ($t7)
/* 0DBCA0 8017B260 8EC40000 */  lw    $a0, ($s6)
.L8017B264_ovl3:
/* 0DBCA4 8017B264 3C01800E */  lui   $at, 0x800e
/* 0DBCA8 8017B268 8C820000 */  lw    $v0, ($a0)
/* 0DBCAC 8017B26C 00021080 */  sll   $v0, $v0, 2
/* 0DBCB0 8017B270 00220821 */  addu  $at, $at, $v0
/* 0DBCB4 8017B274 03C2C821 */  addu  $t9, $fp, $v0
/* 0DBCB8 8017B278 C7320000 */  lwc1  $f18, ($t9)
/* 0DBCBC 8017B27C C4306A10 */  lwc1  $f16, 0x6a10($at)
/* 0DBCC0 8017B280 02224021 */  addu  $t0, $s1, $v0
/* 0DBCC4 8017B284 0262C021 */  addu  $t8, $s3, $v0
/* 0DBCC8 8017B288 46128032 */  c.eq.s $f16, $f18
/* 0DBCCC 8017B28C 02424821 */  addu  $t1, $s2, $v0
/* 0DBCD0 8017B290 02425021 */  addu  $t2, $s2, $v0
/* 0DBCD4 8017B294 4502000A */  bc1fl .L8017B2C0_ovl3
/* 0DBCD8 8017B298 C5400000 */   lwc1  $f0, ($t2)
/* 0DBCDC 8017B29C C5040000 */  lwc1  $f4, ($t0)
/* 0DBCE0 8017B2A0 C7060000 */  lwc1  $f6, ($t8)
/* 0DBCE4 8017B2A4 4606203C */  c.lt.s $f4, $f6
/* 0DBCE8 8017B2A8 00000000 */  nop   
/* 0DBCEC 8017B2AC 4501002D */  bc1t  .L8017B364_ovl3
/* 0DBCF0 8017B2B0 00000000 */   nop   
/* 0DBCF4 8017B2B4 1000000B */  b     .L8017B2E4_ovl3
/* 0DBCF8 8017B2B8 C5200000 */   lwc1  $f0, ($t1)
/* 0DBCFC 8017B2BC C5400000 */  lwc1  $f0, ($t2)
.L8017B2C0_ovl3:
/* 0DBD00 8017B2C0 02225821 */  addu  $t3, $s1, $v0
/* 0DBD04 8017B2C4 4614003E */  c.le.s $f0, $f20
/* 0DBD08 8017B2C8 00000000 */  nop   
/* 0DBD0C 8017B2CC 45020006 */  bc1fl .L8017B2E8_ovl3
/* 0DBD10 8017B2D0 02226021 */   addu  $t4, $s1, $v0
/* 0DBD14 8017B2D4 C5680000 */  lwc1  $f8, ($t3)
/* 0DBD18 8017B2D8 4608A03E */  c.le.s $f20, $f8
/* 0DBD1C 8017B2DC 00000000 */  nop   
/* 0DBD20 8017B2E0 45010020 */  bc1t  .L8017B364_ovl3
.L8017B2E4_ovl3:
/* 0DBD24 8017B2E4 02226021 */   addu  $t4, $s1, $v0
.L8017B2E8_ovl3:
/* 0DBD28 8017B2E8 E5800000 */  swc1  $f0, ($t4)
/* 0DBD2C 8017B2EC 8C820000 */  lw    $v0, ($a0)
/* 0DBD30 8017B2F0 00021080 */  sll   $v0, $v0, 2
/* 0DBD34 8017B2F4 02421821 */  addu  $v1, $s2, $v0
/* 0DBD38 8017B2F8 02626821 */  addu  $t5, $s3, $v0
/* 0DBD3C 8017B2FC C5B00000 */  lwc1  $f16, ($t5)
/* 0DBD40 8017B300 C46A0000 */  lwc1  $f10, ($v1)
/* 0DBD44 8017B304 46105481 */  sub.s $f18, $f10, $f16
/* 0DBD48 8017B308 E4720000 */  swc1  $f18, ($v1)
/* 0DBD4C 8017B30C 8C820000 */  lw    $v0, ($a0)
/* 0DBD50 8017B310 00021080 */  sll   $v0, $v0, 2
/* 0DBD54 8017B314 02421821 */  addu  $v1, $s2, $v0
/* 0DBD58 8017B318 C4600000 */  lwc1  $f0, ($v1)
/* 0DBD5C 8017B31C 4618003C */  c.lt.s $f0, $f24
/* 0DBD60 8017B320 00000000 */  nop   
/* 0DBD64 8017B324 45020008 */  bc1fl .L8017B348_ovl3
/* 0DBD68 8017B328 02A27821 */   addu  $t7, $s5, $v0
/* 0DBD6C 8017B32C 46160100 */  add.s $f4, $f0, $f22
/* 0DBD70 8017B330 E4640000 */  swc1  $f4, ($v1)
/* 0DBD74 8017B334 8C820000 */  lw    $v0, ($a0)
/* 0DBD78 8017B338 00021080 */  sll   $v0, $v0, 2
/* 0DBD7C 8017B33C 02427021 */  addu  $t6, $s2, $v0
/* 0DBD80 8017B340 C5C00000 */  lwc1  $f0, ($t6)
/* 0DBD84 8017B344 02A27821 */  addu  $t7, $s5, $v0
.L8017B348_ovl3:
/* 0DBD88 8017B348 8DF90000 */  lw    $t9, ($t7)
/* 0DBD8C 8017B34C 02E02025 */  move  $a0, $s7
/* 0DBD90 8017B350 8F280004 */  lw    $t0, 4($t9)
/* 0DBD94 8017B354 0C002DAF */  jal   func_8000B6BC
/* 0DBD98 8017B358 E5000034 */   swc1  $f0, 0x34($t0)
/* 0DBD9C 8017B35C 1000FFB0 */  b     .L8017B220_ovl3
/* 0DBDA0 8017B360 920B0017 */   lbu   $t3, 0x17($s0)
.L8017B364_ovl3:
/* 0DBDA4 8017B364 0C04783A */  jal   func_8011E0E8_ovl3
/* 0DBDA8 8017B368 00000000 */   nop   
/* 0DBDAC 8017B36C 0C047717 */  jal   func_8011DC5C_ovl3
/* 0DBDB0 8017B370 00000000 */   nop   
/* 0DBDB4 8017B374 8E180030 */  lw    $t8, 0x30($s0)
/* 0DBDB8 8017B378 AE0000A0 */  sw    $zero, 0xa0($s0)
/* 0DBDBC 8017B37C 27090001 */  addiu $t1, $t8, 1
/* 0DBDC0 8017B380 0C02BE85 */  jal   func_800AFA14_ovl3
/* 0DBDC4 8017B384 AE090030 */   sw    $t1, 0x30($s0)
/* 0DBDC8 8017B388 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0DBDCC 8017B38C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0DBDD0 8017B390 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0DBDD4 8017B394 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 0DBDD8 8017B398 8FB00030 */  lw    $s0, 0x30($sp)
/* 0DBDDC 8017B39C 8FB10034 */  lw    $s1, 0x34($sp)
/* 0DBDE0 8017B3A0 8FB20038 */  lw    $s2, 0x38($sp)
/* 0DBDE4 8017B3A4 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0DBDE8 8017B3A8 8FB40040 */  lw    $s4, 0x40($sp)
/* 0DBDEC 8017B3AC 8FB50044 */  lw    $s5, 0x44($sp)
/* 0DBDF0 8017B3B0 8FB60048 */  lw    $s6, 0x48($sp)
/* 0DBDF4 8017B3B4 8FB7004C */  lw    $s7, 0x4c($sp)
/* 0DBDF8 8017B3B8 8FBE0050 */  lw    $fp, 0x50($sp)
/* 0DBDFC 8017B3BC 03E00008 */  jr    $ra
/* 0DBE00 8017B3C0 27BD0058 */   addiu $sp, $sp, 0x58
