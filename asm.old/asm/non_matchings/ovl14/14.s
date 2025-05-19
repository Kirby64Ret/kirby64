glabel func_801DBEAC_ovl14 # 14
/* 1FEA9C 801DBEAC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 1FEAA0 801DBEB0 AFB10024 */  sw          $s1, 0x24($sp)
/* 1FEAA4 801DBEB4 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1FEAA8 801DBEB8 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1FEAAC 801DBEBC 8E280000 */  lw          $t0, 0x0($s1)
/* 1FEAB0 801DBEC0 AFBF002C */  sw          $ra, 0x2C($sp)
/* 1FEAB4 801DBEC4 AFB20028 */  sw          $s2, 0x28($sp)
/* 1FEAB8 801DBEC8 AFB00020 */  sw          $s0, 0x20($sp)
/* 1FEABC 801DBECC AFA40038 */  sw          $a0, 0x38($sp)
/* 1FEAC0 801DBED0 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1FEAC4 801DBED4 3C0140C0 */  lui         $at, (0x40C00000 >> 16)
/* 1FEAC8 801DBED8 44810000 */  mtc1        $at, $f0
/* 1FEACC 801DBEDC 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FEAD0 801DBEE0 000FC080 */  sll         $t8, $t7, 2
/* 1FEAD4 801DBEE4 00380821 */  addu        $at, $at, $t8
/* 1FEAD8 801DBEE8 240E0005 */  addiu       $t6, $zero, 0x5
/* 1FEADC 801DBEEC AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1FEAE0 801DBEF0 8D190000 */  lw          $t9, 0x0($t0)
/* 1FEAE4 801DBEF4 3C09800F */  lui         $t1, %hi(D_800EBF60)
/* 1FEAE8 801DBEF8 2529BF60 */  addiu       $t1, $t1, %lo(D_800EBF60)
/* 1FEAEC 801DBEFC 00195080 */  sll         $t2, $t9, 2
/* 1FEAF0 801DBF00 012A5821 */  addu        $t3, $t1, $t2
/* 1FEAF4 801DBF04 AD600000 */  sw          $zero, 0x0($t3)
/* 1FEAF8 801DBF08 8D030000 */  lw          $v1, 0x0($t0)
/* 1FEAFC 801DBF0C 3C12800F */  lui         $s2, %hi(D_800EBDA0)
/* 1FEB00 801DBF10 2652BDA0 */  addiu       $s2, $s2, %lo(D_800EBDA0)
/* 1FEB04 801DBF14 00031880 */  sll         $v1, $v1, 2
/* 1FEB08 801DBF18 01236021 */  addu        $t4, $t1, $v1
/* 1FEB0C 801DBF1C 8D820000 */  lw          $v0, 0x0($t4)
/* 1FEB10 801DBF20 02436821 */  addu        $t5, $s2, $v1
/* 1FEB14 801DBF24 3C10800F */  lui         $s0, %hi(D_800EBBE0)
/* 1FEB18 801DBF28 ADA20000 */  sw          $v0, 0x0($t5)
/* 1FEB1C 801DBF2C 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1FEB20 801DBF30 2610BBE0 */  addiu       $s0, $s0, %lo(D_800EBBE0)
/* 1FEB24 801DBF34 3C050001 */  lui         $a1, (0x10430 >> 16)
/* 1FEB28 801DBF38 000F7080 */  sll         $t6, $t7, 2
/* 1FEB2C 801DBF3C 020EC021 */  addu        $t8, $s0, $t6
/* 1FEB30 801DBF40 AF020000 */  sw          $v0, 0x0($t8)
/* 1FEB34 801DBF44 8C8A003C */  lw          $t2, 0x3C($a0)
/* 1FEB38 801DBF48 3C070001 */  lui         $a3, (0x1006B >> 16)
/* 1FEB3C 801DBF4C 44060000 */  mfc1        $a2, $f0
/* 1FEB40 801DBF50 8D440010 */  lw          $a0, 0x10($t2)
/* 1FEB44 801DBF54 34E7006B */  ori         $a3, $a3, (0x1006B & 0xFFFF)
/* 1FEB48 801DBF58 34A50430 */  ori         $a1, $a1, (0x10430 & 0xFFFF)
/* 1FEB4C 801DBF5C 0C02A982 */  jal         func_800AA608
/* 1FEB50 801DBF60 E7A00010 */   swc1       $f0, 0x10($sp)
/* 1FEB54 801DBF64 3C040001 */  lui         $a0, (0x10430 >> 16)
/* 1FEB58 801DBF68 34840430 */  ori         $a0, $a0, (0x10430 & 0xFFFF)
/* 1FEB5C 801DBF6C 0C02A7E6 */  jal         func_800A9F98
/* 1FEB60 801DBF70 3C0540C0 */   lui        $a1, (0x40C00000 >> 16)
/* 1FEB64 801DBF74 0C002DAF */  jal         finish_current_thread
/* 1FEB68 801DBF78 24040022 */   addiu      $a0, $zero, 0x22
/* 1FEB6C 801DBF7C 0C029D9E */  jal         play_sound
/* 1FEB70 801DBF80 240401AA */   addiu      $a0, $zero, 0x1AA
/* 1FEB74 801DBF84 0C02BC9F */  jal         func_800AF27C
/* 1FEB78 801DBF88 00000000 */   nop
/* 1FEB7C 801DBF8C 3C040001 */  lui         $a0, (0x10432 >> 16)
/* 1FEB80 801DBF90 0C02A806 */  jal         func_800AA018
/* 1FEB84 801DBF94 34840432 */   ori        $a0, $a0, (0x10432 & 0xFFFF)
/* 1FEB88 801DBF98 0C006291 */  jal         random_soft_s32_range
/* 1FEB8C 801DBF9C 24040004 */   addiu      $a0, $zero, 0x4
/* 1FEB90 801DBFA0 24040002 */  addiu       $a0, $zero, 0x2
/* 1FEB94 801DBFA4 00402825 */  move        $a1, $v0
/* 1FEB98 801DBFA8 0C07719D */  jal         func_801DC674_ovl14
/* 1FEB9C 801DBFAC AFA20034 */   sw         $v0, 0x34($sp)
/* 1FEBA0 801DBFB0 8E280000 */  lw          $t0, 0x0($s1)
/* 1FEBA4 801DBFB4 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FEBA8 801DBFB8 8FA60034 */  lw          $a2, 0x34($sp)
/* 1FEBAC 801DBFBC 8D0B0000 */  lw          $t3, 0x0($t0)
/* 1FEBB0 801DBFC0 24040014 */  addiu       $a0, $zero, 0x14
/* 1FEBB4 801DBFC4 000B6080 */  sll         $t4, $t3, 2
/* 1FEBB8 801DBFC8 020C6821 */  addu        $t5, $s0, $t4
/* 1FEBBC 801DBFCC ADA20000 */  sw          $v0, 0x0($t5)
/* 1FEBC0 801DBFD0 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1FEBC4 801DBFD4 000F7080 */  sll         $t6, $t7, 2
/* 1FEBC8 801DBFD8 020E1821 */  addu        $v1, $s0, $t6
/* 1FEBCC 801DBFDC 8C780000 */  lw          $t8, 0x0($v1)
/* 1FEBD0 801DBFE0 13010067 */  beq         $t8, $at, .L801DC180
/* 1FEBD4 801DBFE4 00000000 */   nop
/* 1FEBD8 801DBFE8 0C002DAF */  jal         finish_current_thread
/* 1FEBDC 801DBFEC AC660000 */   sw         $a2, 0x0($v1)
/* 1FEBE0 801DBFF0 3C040001 */  lui         $a0, (0x10438 >> 16)
/* 1FEBE4 801DBFF4 0C02A7A9 */  jal         func_800A9EA4
/* 1FEBE8 801DBFF8 34840438 */   ori        $a0, $a0, (0x10438 & 0xFFFF)
/* 1FEBEC 801DBFFC 0C006291 */  jal         random_soft_s32_range
/* 1FEBF0 801DC000 2404001E */   addiu      $a0, $zero, 0x1E
/* 1FEBF4 801DC004 0C002DAF */  jal         finish_current_thread
/* 1FEBF8 801DC008 2444000A */   addiu      $a0, $v0, 0xA
.L801DC00C:
/* 1FEBFC 801DC00C 0C006291 */  jal         random_soft_s32_range
/* 1FEC00 801DC010 24040004 */   addiu      $a0, $zero, 0x4
/* 1FEC04 801DC014 8E390000 */  lw          $t9, 0x0($s1)
/* 1FEC08 801DC018 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1FEC0C 801DC01C 000A5880 */  sll         $t3, $t2, 2
/* 1FEC10 801DC020 020B6021 */  addu        $t4, $s0, $t3
/* 1FEC14 801DC024 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FEC18 801DC028 104DFFF8 */  beq         $v0, $t5, .L801DC00C
/* 1FEC1C 801DC02C 00000000 */   nop
/* 1FEC20 801DC030 24040002 */  addiu       $a0, $zero, 0x2
/* 1FEC24 801DC034 00402825 */  move        $a1, $v0
/* 1FEC28 801DC038 0C07719D */  jal         func_801DC674_ovl14
/* 1FEC2C 801DC03C AFA20034 */   sw         $v0, 0x34($sp)
/* 1FEC30 801DC040 8E280000 */  lw          $t0, 0x0($s1)
/* 1FEC34 801DC044 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FEC38 801DC048 8FA60034 */  lw          $a2, 0x34($sp)
/* 1FEC3C 801DC04C 8D0F0000 */  lw          $t7, 0x0($t0)
/* 1FEC40 801DC050 2404001E */  addiu       $a0, $zero, 0x1E
/* 1FEC44 801DC054 000F7080 */  sll         $t6, $t7, 2
/* 1FEC48 801DC058 024EC021 */  addu        $t8, $s2, $t6
/* 1FEC4C 801DC05C AF020000 */  sw          $v0, 0x0($t8)
/* 1FEC50 801DC060 8D190000 */  lw          $t9, 0x0($t0)
/* 1FEC54 801DC064 00195080 */  sll         $t2, $t9, 2
/* 1FEC58 801DC068 024A1821 */  addu        $v1, $s2, $t2
/* 1FEC5C 801DC06C 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1FEC60 801DC070 11610043 */  beq         $t3, $at, .L801DC180
/* 1FEC64 801DC074 00000000 */   nop
/* 1FEC68 801DC078 0C006291 */  jal         random_soft_s32_range
/* 1FEC6C 801DC07C AC660000 */   sw         $a2, 0x0($v1)
/* 1FEC70 801DC080 0C002DAF */  jal         finish_current_thread
/* 1FEC74 801DC084 2444001E */   addiu      $a0, $v0, 0x1E
.L801DC088:
/* 1FEC78 801DC088 0C006291 */  jal         random_soft_s32_range
/* 1FEC7C 801DC08C 24040004 */   addiu      $a0, $zero, 0x4
/* 1FEC80 801DC090 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1FEC84 801DC094 8D830000 */  lw          $v1, 0x0($t4)
/* 1FEC88 801DC098 00031880 */  sll         $v1, $v1, 2
/* 1FEC8C 801DC09C 02036821 */  addu        $t5, $s0, $v1
/* 1FEC90 801DC0A0 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1FEC94 801DC0A4 104FFFF8 */  beq         $v0, $t7, .L801DC088
/* 1FEC98 801DC0A8 00000000 */   nop
/* 1FEC9C 801DC0AC 02437021 */  addu        $t6, $s2, $v1
/* 1FECA0 801DC0B0 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FECA4 801DC0B4 1058FFF4 */  beq         $v0, $t8, .L801DC088
/* 1FECA8 801DC0B8 00000000 */   nop
/* 1FECAC 801DC0BC 24040002 */  addiu       $a0, $zero, 0x2
/* 1FECB0 801DC0C0 00402825 */  move        $a1, $v0
/* 1FECB4 801DC0C4 0C07719D */  jal         func_801DC674_ovl14
/* 1FECB8 801DC0C8 AFA20034 */   sw         $v0, 0x34($sp)
/* 1FECBC 801DC0CC 8E280000 */  lw          $t0, 0x0($s1)
/* 1FECC0 801DC0D0 3C05800F */  lui         $a1, %hi(D_800EBF60)
/* 1FECC4 801DC0D4 24A5BF60 */  addiu       $a1, $a1, %lo(D_800EBF60)
/* 1FECC8 801DC0D8 8D190000 */  lw          $t9, 0x0($t0)
/* 1FECCC 801DC0DC 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FECD0 801DC0E0 8FA60034 */  lw          $a2, 0x34($sp)
/* 1FECD4 801DC0E4 00195080 */  sll         $t2, $t9, 2
/* 1FECD8 801DC0E8 00AA5821 */  addu        $t3, $a1, $t2
/* 1FECDC 801DC0EC AD620000 */  sw          $v0, 0x0($t3)
/* 1FECE0 801DC0F0 8D030000 */  lw          $v1, 0x0($t0)
/* 1FECE4 801DC0F4 2404001E */  addiu       $a0, $zero, 0x1E
/* 1FECE8 801DC0F8 00031880 */  sll         $v1, $v1, 2
/* 1FECEC 801DC0FC 02436021 */  addu        $t4, $s2, $v1
/* 1FECF0 801DC100 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FECF4 801DC104 00A37821 */  addu        $t7, $a1, $v1
/* 1FECF8 801DC108 11A1001D */  beq         $t5, $at, .L801DC180
/* 1FECFC 801DC10C 00000000 */   nop
/* 1FED00 801DC110 0C006291 */  jal         random_soft_s32_range
/* 1FED04 801DC114 ADE60000 */   sw         $a2, 0x0($t7)
/* 1FED08 801DC118 0C002DAF */  jal         finish_current_thread
/* 1FED0C 801DC11C 2444001E */   addiu      $a0, $v0, 0x1E
/* 1FED10 801DC120 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1FED14 801DC124 3C02800F */  lui         $v0, %hi(D_800EBF60)
/* 1FED18 801DC128 3C04800F */  lui         $a0, %hi(D_800EBBE0)
/* 1FED1C 801DC12C 8DC30000 */  lw          $v1, 0x0($t6)
/* 1FED20 801DC130 3C05800F */  lui         $a1, %hi(D_800EBDA0)
/* 1FED24 801DC134 00003025 */  move        $a2, $zero
/* 1FED28 801DC138 00031880 */  sll         $v1, $v1, 2
/* 1FED2C 801DC13C 00431021 */  addu        $v0, $v0, $v1
/* 1FED30 801DC140 00832021 */  addu        $a0, $a0, $v1
/* 1FED34 801DC144 00A32821 */  addu        $a1, $a1, $v1
/* 1FED38 801DC148 8CA5BDA0 */  lw          $a1, %lo(D_800EBDA0)($a1)
/* 1FED3C 801DC14C 8C84BBE0 */  lw          $a0, %lo(D_800EBBE0)($a0)
/* 1FED40 801DC150 8C42BF60 */  lw          $v0, %lo(D_800EBF60)($v0)
.L801DC154:
/* 1FED44 801DC154 10C40005 */  beq         $a2, $a0, .L801DC16C
/* 1FED48 801DC158 00000000 */   nop
/* 1FED4C 801DC15C 10C50003 */  beq         $a2, $a1, .L801DC16C
/* 1FED50 801DC160 00000000 */   nop
/* 1FED54 801DC164 54C20004 */  bnel        $a2, $v0, .L801DC178
/* 1FED58 801DC168 24040002 */   addiu      $a0, $zero, 0x2
.L801DC16C:
/* 1FED5C 801DC16C 1000FFF9 */  b           .L801DC154
/* 1FED60 801DC170 24C60001 */   addiu      $a2, $a2, 0x1
/* 1FED64 801DC174 24040002 */  addiu       $a0, $zero, 0x2
.L801DC178:
/* 1FED68 801DC178 0C07719D */  jal         func_801DC674_ovl14
/* 1FED6C 801DC17C 00C02825 */   move       $a1, $a2
.L801DC180:
/* 1FED70 801DC180 0C002DAF */  jal         finish_current_thread
/* 1FED74 801DC184 24040028 */   addiu      $a0, $zero, 0x28
/* 1FED78 801DC188 8E390000 */  lw          $t9, 0x0($s1)
/* 1FED7C 801DC18C 8FBF002C */  lw          $ra, 0x2C($sp)
/* 1FED80 801DC190 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FED84 801DC194 8F2A0000 */  lw          $t2, 0x0($t9)
/* 1FED88 801DC198 24180001 */  addiu       $t8, $zero, 0x1
/* 1FED8C 801DC19C 8FB10024 */  lw          $s1, 0x24($sp)
/* 1FED90 801DC1A0 000A5880 */  sll         $t3, $t2, 2
/* 1FED94 801DC1A4 002B0821 */  addu        $at, $at, $t3
/* 1FED98 801DC1A8 8FB00020 */  lw          $s0, 0x20($sp)
/* 1FED9C 801DC1AC 8FB20028 */  lw          $s2, 0x28($sp)
/* 1FEDA0 801DC1B0 AC38DC50 */  sw          $t8, %lo(gEntityVtableIndexArray)($at)
/* 1FEDA4 801DC1B4 03E00008 */  jr          $ra
/* 1FEDA8 801DC1B8 27BD0038 */   addiu      $sp, $sp, 0x38
.type func_801DBEAC_ovl14, @function
.size func_801DBEAC_ovl14, . - func_801DBEAC_ovl14
