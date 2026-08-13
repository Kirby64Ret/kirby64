nonmatching func_8017B068_ovl3, 0x35C

glabel func_8017B068_ovl3
    /* DBAA8 8017B068 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* DBAAC 8017B06C AFB00030 */  sw         $s0, 0x30($sp)
    /* DBAB0 8017B070 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* DBAB4 8017B074 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* DBAB8 8017B078 AFB7004C */  sw         $s7, 0x4C($sp)
    /* DBABC 8017B07C 24170001 */  addiu      $s7, $zero, 0x1
    /* DBAC0 8017B080 AFBF0054 */  sw         $ra, 0x54($sp)
    /* DBAC4 8017B084 AFBE0050 */  sw         $fp, 0x50($sp)
    /* DBAC8 8017B088 AFB60048 */  sw         $s6, 0x48($sp)
    /* DBACC 8017B08C AFB50044 */  sw         $s5, 0x44($sp)
    /* DBAD0 8017B090 AFB40040 */  sw         $s4, 0x40($sp)
    /* DBAD4 8017B094 AFB3003C */  sw         $s3, 0x3C($sp)
    /* DBAD8 8017B098 AFB20038 */  sw         $s2, 0x38($sp)
    /* DBADC 8017B09C AFB10034 */  sw         $s1, 0x34($sp)
    /* DBAE0 8017B0A0 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* DBAE4 8017B0A4 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* DBAE8 8017B0A8 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* DBAEC 8017B0AC AFA40058 */  sw         $a0, 0x58($sp)
    /* DBAF0 8017B0B0 AE000044 */  sw         $zero, 0x44($s0)
    /* DBAF4 8017B0B4 AE000030 */  sw         $zero, 0x30($s0)
    /* DBAF8 8017B0B8 AE170048 */  sw         $s7, 0x48($s0)
    /* DBAFC 8017B0BC 0C0473D6 */  jal        func_8011CF58
    /* DBB00 8017B0C0 A2000007 */   sb        $zero, 0x7($s0)
    /* DBB04 8017B0C4 3C168005 */  lui        $s6, %hi(omCurrentObj)
    /* DBB08 8017B0C8 8E0F0090 */  lw         $t7, 0x90($s0)
    /* DBB0C 8017B0CC 26D6A7C4 */  addiu      $s6, $s6, %lo(omCurrentObj)
    /* DBB10 8017B0D0 8ED90000 */  lw         $t9, 0x0($s6)
    /* DBB14 8017B0D4 AE0F00A0 */  sw         $t7, 0xA0($s0)
    /* DBB18 8017B0D8 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* DBB1C 8017B0DC 8F280000 */  lw         $t0, 0x0($t9)
    /* DBB20 8017B0E0 24180023 */  addiu      $t8, $zero, 0x23
    /* DBB24 8017B0E4 00084880 */  sll        $t1, $t0, 2
    /* DBB28 8017B0E8 00290821 */  addu       $at, $at, $t1
    /* DBB2C 8017B0EC 0C04828A */  jal        func_80120A28
    /* DBB30 8017B0F0 AC38DFD0 */   sw        $t8, %lo(D_800DDFD0)($at)
    /* DBB34 8017B0F4 8EC40000 */  lw         $a0, 0x0($s6)
    /* DBB38 8017B0F8 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DBB3C 8017B0FC 3C1E800F */  lui        $fp, %hi(D_800EAA60)
    /* DBB40 8017B100 8C820000 */  lw         $v0, 0x0($a0)
    /* DBB44 8017B104 27DEAA60 */  addiu      $fp, $fp, %lo(D_800EAA60)
    /* DBB48 8017B108 4480C000 */  mtc1       $zero, $f24
    /* DBB4C 8017B10C 00021080 */  sll        $v0, $v0, 2
    /* DBB50 8017B110 00220821 */  addu       $at, $at, $v0
    /* DBB54 8017B114 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
    /* DBB58 8017B118 03C25021 */  addu       $t2, $fp, $v0
    /* DBB5C 8017B11C 3C11800F */  lui        $s1, %hi(D_800EA8A0)
    /* DBB60 8017B120 E5440000 */  swc1       $f4, 0x0($t2)
    /* DBB64 8017B124 8C8B0000 */  lw         $t3, 0x0($a0)
    /* DBB68 8017B128 2631A8A0 */  addiu      $s1, $s1, %lo(D_800EA8A0)
    /* DBB6C 8017B12C 3C12800F */  lui        $s2, %hi(D_800EA6E0)
    /* DBB70 8017B130 000B6080 */  sll        $t4, $t3, 2
    /* DBB74 8017B134 022C6821 */  addu       $t5, $s1, $t4
    /* DBB78 8017B138 E5B80000 */  swc1       $f24, 0x0($t5)
    /* DBB7C 8017B13C 8C820000 */  lw         $v0, 0x0($a0)
    /* DBB80 8017B140 2652A6E0 */  addiu      $s2, $s2, %lo(D_800EA6E0)
    /* DBB84 8017B144 3C19800F */  lui        $t9, %hi(D_800E8AE0)
    /* DBB88 8017B148 00021080 */  sll        $v0, $v0, 2
    /* DBB8C 8017B14C 02227021 */  addu       $t6, $s1, $v0
    /* DBB90 8017B150 C5C60000 */  lwc1       $f6, 0x0($t6)
    /* DBB94 8017B154 02427821 */  addu       $t7, $s2, $v0
    /* DBB98 8017B158 3C13800F */  lui        $s3, %hi(D_800EAC20)
    /* DBB9C 8017B15C E5E60000 */  swc1       $f6, 0x0($t7)
    /* DBBA0 8017B160 8C820000 */  lw         $v0, 0x0($a0)
    /* DBBA4 8017B164 3C018019 */  lui        $at, %hi(D_801975CC_ovl3)
    /* DBBA8 8017B168 3C040002 */  lui        $a0, (0x2000D >> 16)
    /* DBBAC 8017B16C 00021080 */  sll        $v0, $v0, 2
    /* DBBB0 8017B170 0322C821 */  addu       $t9, $t9, $v0
    /* DBBB4 8017B174 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
    /* DBBB8 8017B178 33280006 */  andi       $t0, $t9, 0x6
    /* DBBBC 8017B17C 11000008 */  beqz       $t0, .L8017B1A0_ovl3
    /* DBBC0 8017B180 00000000 */   nop
    /* DBBC4 8017B184 3C13800F */  lui        $s3, %hi(D_800EAC20)
    /* DBBC8 8017B188 3C018019 */  lui        $at, %hi(D_801975C8_ovl3)
    /* DBBCC 8017B18C C42875C8 */  lwc1       $f8, %lo(D_801975C8_ovl3)($at)
    /* DBBD0 8017B190 2673AC20 */  addiu      $s3, $s3, %lo(D_800EAC20)
    /* DBBD4 8017B194 0262C021 */  addu       $t8, $s3, $v0
    /* DBBD8 8017B198 10000005 */  b          .L8017B1B0_ovl3
    /* DBBDC 8017B19C E7080000 */   swc1      $f8, 0x0($t8)
  .L8017B1A0_ovl3:
    /* DBBE0 8017B1A0 C42A75CC */  lwc1       $f10, %lo(D_801975CC_ovl3)($at)
    /* DBBE4 8017B1A4 2673AC20 */  addiu      $s3, $s3, %lo(D_800EAC20)
    /* DBBE8 8017B1A8 02624821 */  addu       $t1, $s3, $v0
    /* DBBEC 8017B1AC E52A0000 */  swc1       $f10, 0x0($t1)
  .L8017B1B0_ovl3:
    /* DBBF0 8017B1B0 0C048BC2 */  jal        func_80122F08
    /* DBBF4 8017B1B4 3484000D */   ori       $a0, $a0, (0x2000D & 0xFFFF)
    /* DBBF8 8017B1B8 240A0002 */  addiu      $t2, $zero, 0x2
    /* DBBFC 8017B1BC AE0A0154 */  sw         $t2, 0x154($s0)
    /* DBC00 8017B1C0 24040002 */  addiu      $a0, $zero, 0x2
    /* DBC04 8017B1C4 02E02825 */  or         $a1, $s7, $zero
    /* DBC08 8017B1C8 0C02A08D */  jal        func_800A8234
    /* DBC0C 8017B1CC 24060031 */   addiu     $a2, $zero, 0x31
    /* DBC10 8017B1D0 AE02004C */  sw         $v0, 0x4C($s0)
    /* DBC14 8017B1D4 24040002 */  addiu      $a0, $zero, 0x2
    /* DBC18 8017B1D8 02E02825 */  or         $a1, $s7, $zero
    /* DBC1C 8017B1DC 0C02A08D */  jal        func_800A8234
    /* DBC20 8017B1E0 24060032 */   addiu     $a2, $zero, 0x32
    /* DBC24 8017B1E4 AE020050 */  sw         $v0, 0x50($s0)
    /* DBC28 8017B1E8 0C047701 */  jal        func_8011DC04
    /* DBC2C 8017B1EC 240400BC */   addiu     $a0, $zero, 0xBC
    /* DBC30 8017B1F0 3C040002 */  lui        $a0, (0x20192 >> 16)
    /* DBC34 8017B1F4 0C02A806 */  jal        func_800AA018
    /* DBC38 8017B1F8 34840192 */   ori       $a0, $a0, (0x20192 & 0xFFFF)
    /* DBC3C 8017B1FC 3C018019 */  lui        $at, %hi(D_801975D0_ovl3)
    /* DBC40 8017B200 C43675D0 */  lwc1       $f22, %lo(D_801975D0_ovl3)($at)
    /* DBC44 8017B204 3C018019 */  lui        $at, %hi(D_801975D4_ovl3)
    /* DBC48 8017B208 3C15800E */  lui        $s5, %hi(D_800DFBD0)
    /* DBC4C 8017B20C 3C14800D */  lui        $s4, %hi(gKirbyController)
    /* DBC50 8017B210 26946FE8 */  addiu      $s4, $s4, %lo(gKirbyController)
    /* DBC54 8017B214 26B5FBD0 */  addiu      $s5, $s5, %lo(D_800DFBD0)
    /* DBC58 8017B218 C43475D4 */  lwc1       $f20, %lo(D_801975D4_ovl3)($at)
    /* DBC5C 8017B21C 920B0017 */  lbu        $t3, 0x17($s0)
  .L8017B220_ovl3:
    /* DBC60 8017B220 15600050 */  bnez       $t3, .L8017B364_ovl3
    /* DBC64 8017B224 00000000 */   nop
    /* DBC68 8017B228 8E0C0044 */  lw         $t4, 0x44($s0)
    /* DBC6C 8017B22C 5580000D */  bnel       $t4, $zero, .L8017B264_ovl3
    /* DBC70 8017B230 8EC40000 */   lw        $a0, 0x0($s6)
    /* DBC74 8017B234 968D0000 */  lhu        $t5, 0x0($s4)
    /* DBC78 8017B238 31AE4000 */  andi       $t6, $t5, 0x4000
    /* DBC7C 8017B23C 55C00003 */  bnel       $t6, $zero, .L8017B24C_ovl3
    /* DBC80 8017B240 8EC40000 */   lw        $a0, 0x0($s6)
    /* DBC84 8017B244 AE170044 */  sw         $s7, 0x44($s0)
    /* DBC88 8017B248 8EC40000 */  lw         $a0, 0x0($s6)
  .L8017B24C_ovl3:
    /* DBC8C 8017B24C 8C820000 */  lw         $v0, 0x0($a0)
    /* DBC90 8017B250 00021080 */  sll        $v0, $v0, 2
    /* DBC94 8017B254 02427821 */  addu       $t7, $s2, $v0
    /* DBC98 8017B258 10000022 */  b          .L8017B2E4_ovl3
    /* DBC9C 8017B25C C5E00000 */   lwc1      $f0, 0x0($t7)
    /* DBCA0 8017B260 8EC40000 */  lw         $a0, 0x0($s6)
  .L8017B264_ovl3:
    /* DBCA4 8017B264 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DBCA8 8017B268 8C820000 */  lw         $v0, 0x0($a0)
    /* DBCAC 8017B26C 00021080 */  sll        $v0, $v0, 2
    /* DBCB0 8017B270 00220821 */  addu       $at, $at, $v0
    /* DBCB4 8017B274 03C2C821 */  addu       $t9, $fp, $v0
    /* DBCB8 8017B278 C7320000 */  lwc1       $f18, 0x0($t9)
    /* DBCBC 8017B27C C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* DBCC0 8017B280 02224021 */  addu       $t0, $s1, $v0
    /* DBCC4 8017B284 0262C021 */  addu       $t8, $s3, $v0
    /* DBCC8 8017B288 46128032 */  c.eq.s     $f16, $f18
    /* DBCCC 8017B28C 02424821 */  addu       $t1, $s2, $v0
    /* DBCD0 8017B290 02425021 */  addu       $t2, $s2, $v0
    /* DBCD4 8017B294 4502000A */  bc1fl      .L8017B2C0_ovl3
    /* DBCD8 8017B298 C5400000 */   lwc1      $f0, 0x0($t2)
    /* DBCDC 8017B29C C5040000 */  lwc1       $f4, 0x0($t0)
    /* DBCE0 8017B2A0 C7060000 */  lwc1       $f6, 0x0($t8)
    /* DBCE4 8017B2A4 4606203C */  c.lt.s     $f4, $f6
    /* DBCE8 8017B2A8 00000000 */  nop
    /* DBCEC 8017B2AC 4501002D */  bc1t       .L8017B364_ovl3
    /* DBCF0 8017B2B0 00000000 */   nop
    /* DBCF4 8017B2B4 1000000B */  b          .L8017B2E4_ovl3
    /* DBCF8 8017B2B8 C5200000 */   lwc1      $f0, 0x0($t1)
    /* DBCFC 8017B2BC C5400000 */  lwc1       $f0, 0x0($t2)
  .L8017B2C0_ovl3:
    /* DBD00 8017B2C0 02225821 */  addu       $t3, $s1, $v0
    /* DBD04 8017B2C4 4614003E */  c.le.s     $f0, $f20
    /* DBD08 8017B2C8 00000000 */  nop
    /* DBD0C 8017B2CC 45020006 */  bc1fl      .L8017B2E8_ovl3
    /* DBD10 8017B2D0 02226021 */   addu      $t4, $s1, $v0
    /* DBD14 8017B2D4 C5680000 */  lwc1       $f8, 0x0($t3)
    /* DBD18 8017B2D8 4608A03E */  c.le.s     $f20, $f8
    /* DBD1C 8017B2DC 00000000 */  nop
    /* DBD20 8017B2E0 45010020 */  bc1t       .L8017B364_ovl3
  .L8017B2E4_ovl3:
    /* DBD24 8017B2E4 02226021 */   addu      $t4, $s1, $v0
  .L8017B2E8_ovl3:
    /* DBD28 8017B2E8 E5800000 */  swc1       $f0, 0x0($t4)
    /* DBD2C 8017B2EC 8C820000 */  lw         $v0, 0x0($a0)
    /* DBD30 8017B2F0 00021080 */  sll        $v0, $v0, 2
    /* DBD34 8017B2F4 02421821 */  addu       $v1, $s2, $v0
    /* DBD38 8017B2F8 02626821 */  addu       $t5, $s3, $v0
    /* DBD3C 8017B2FC C5B00000 */  lwc1       $f16, 0x0($t5)
    /* DBD40 8017B300 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* DBD44 8017B304 46105481 */  sub.s      $f18, $f10, $f16
    /* DBD48 8017B308 E4720000 */  swc1       $f18, 0x0($v1)
    /* DBD4C 8017B30C 8C820000 */  lw         $v0, 0x0($a0)
    /* DBD50 8017B310 00021080 */  sll        $v0, $v0, 2
    /* DBD54 8017B314 02421821 */  addu       $v1, $s2, $v0
    /* DBD58 8017B318 C4600000 */  lwc1       $f0, 0x0($v1)
    /* DBD5C 8017B31C 4618003C */  c.lt.s     $f0, $f24
    /* DBD60 8017B320 00000000 */  nop
    /* DBD64 8017B324 45020008 */  bc1fl      .L8017B348_ovl3
    /* DBD68 8017B328 02A27821 */   addu      $t7, $s5, $v0
    /* DBD6C 8017B32C 46160100 */  add.s      $f4, $f0, $f22
    /* DBD70 8017B330 E4640000 */  swc1       $f4, 0x0($v1)
    /* DBD74 8017B334 8C820000 */  lw         $v0, 0x0($a0)
    /* DBD78 8017B338 00021080 */  sll        $v0, $v0, 2
    /* DBD7C 8017B33C 02427021 */  addu       $t6, $s2, $v0
    /* DBD80 8017B340 C5C00000 */  lwc1       $f0, 0x0($t6)
    /* DBD84 8017B344 02A27821 */  addu       $t7, $s5, $v0
  .L8017B348_ovl3:
    /* DBD88 8017B348 8DF90000 */  lw         $t9, 0x0($t7)
    /* DBD8C 8017B34C 02E02025 */  or         $a0, $s7, $zero
    /* DBD90 8017B350 8F280004 */  lw         $t0, 0x4($t9)
    /* DBD94 8017B354 0C002DAF */  jal        ohSleep
    /* DBD98 8017B358 E5000034 */   swc1      $f0, 0x34($t0)
    /* DBD9C 8017B35C 1000FFB0 */  b          .L8017B220_ovl3
    /* DBDA0 8017B360 920B0017 */   lbu       $t3, 0x17($s0)
  .L8017B364_ovl3:
    /* DBDA4 8017B364 0C04783A */  jal        func_8011E0E8
    /* DBDA8 8017B368 00000000 */   nop
    /* DBDAC 8017B36C 0C047717 */  jal        func_8011DC5C
    /* DBDB0 8017B370 00000000 */   nop
    /* DBDB4 8017B374 8E180030 */  lw         $t8, 0x30($s0)
    /* DBDB8 8017B378 AE0000A0 */  sw         $zero, 0xA0($s0)
    /* DBDBC 8017B37C 27090001 */  addiu      $t1, $t8, 0x1
    /* DBDC0 8017B380 0C02BE85 */  jal        curObjSleepForever
    /* DBDC4 8017B384 AE090030 */   sw        $t1, 0x30($s0)
    /* DBDC8 8017B388 8FBF0054 */  lw         $ra, 0x54($sp)
    /* DBDCC 8017B38C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* DBDD0 8017B390 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* DBDD4 8017B394 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* DBDD8 8017B398 8FB00030 */  lw         $s0, 0x30($sp)
    /* DBDDC 8017B39C 8FB10034 */  lw         $s1, 0x34($sp)
    /* DBDE0 8017B3A0 8FB20038 */  lw         $s2, 0x38($sp)
    /* DBDE4 8017B3A4 8FB3003C */  lw         $s3, 0x3C($sp)
    /* DBDE8 8017B3A8 8FB40040 */  lw         $s4, 0x40($sp)
    /* DBDEC 8017B3AC 8FB50044 */  lw         $s5, 0x44($sp)
    /* DBDF0 8017B3B0 8FB60048 */  lw         $s6, 0x48($sp)
    /* DBDF4 8017B3B4 8FB7004C */  lw         $s7, 0x4C($sp)
    /* DBDF8 8017B3B8 8FBE0050 */  lw         $fp, 0x50($sp)
    /* DBDFC 8017B3BC 03E00008 */  jr         $ra
    /* DBE00 8017B3C0 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_8017B068_ovl3
.size func_8017B068_ovl3, . - func_8017B068_ovl3
