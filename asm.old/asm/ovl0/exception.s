.set noat
.set noreorder
.set gp=64
.include "macros.inc"

.section .data

glabel __osHwIntTable
.word 0x0, 0x0, 0x0, 0x0, 0x0

.section .text,"ax"
glabel __osExceptionPreamble
/* 02EB60 8002DF60 3C1A8003 */  lui   $k0, %hi(__osException) # $k0, 0x8003
/* 02EB64 8002DF64 275ADF70 */  addiu $k0, %lo(__osException) # addiu $k0, $k0, -0x2090
/* 02EB68 8002DF68 03400008 */  jr    $k0
/* 02EB6C 8002DF6C 00000000 */   nop
.size __osExceptionPreamble, . - __osExceptionPreamble

glabel __osException
/* 02EB70 8002DF70 3C1A800A */  lui   $k0, %hi(__osThreadSave) # $k0, 0x800a
/* 02EB74 8002DF74 275A8B50 */  addiu $k0, %lo(__osThreadSave) # addiu $k0, $k0, -0x74b0
/* 02EB78 8002DF78 FF410020 */  sd    $at, 0x20($k0)
/* 02EB7C 8002DF7C 401B6000 */  mfc0  $k1, $12
/* 02EB80 8002DF80 AF5B0118 */  sw    $k1, 0x118($k0)
/* 02EB84 8002DF84 2401FFFC */  li    $at, -4
/* 02EB88 8002DF88 0361D824 */  and   $k1, $k1, $at
/* 02EB8C 8002DF8C 409B6000 */  mtc0  $k1, $12
/* 02EB90 8002DF90 FF480058 */  sd    $t0, 0x58($k0)
/* 02EB94 8002DF94 FF490060 */  sd    $t1, 0x60($k0)
/* 02EB98 8002DF98 FF4A0068 */  sd    $t2, 0x68($k0)
/* 02EB9C 8002DF9C AF400018 */  sw    $zero, 0x18($k0)
/* 02EBA0 8002DFA0 40086800 */  mfc0  $t0, $13
/* 02EBA4 8002DFA4 03404025 */  move  $t0, $k0
/* 02EBA8 8002DFA8 3C1A8004 */  lui   $k0, %hi(__osRunningThread) # $k0, 0x8004
/* 02EBAC 8002DFAC 8F5AFB60 */  lw    $k0, %lo(__osRunningThread)($k0)
/* 02EBB0 8002DFB0 DD090020 */  ld    $t1, 0x20($t0)
/* 02EBB4 8002DFB4 FF490020 */  sd    $t1, 0x20($k0)
/* 02EBB8 8002DFB8 DD090118 */  ld    $t1, 0x118($t0)
/* 02EBBC 8002DFBC FF490118 */  sd    $t1, 0x118($k0)
/* 02EBC0 8002DFC0 DD090058 */  ld    $t1, 0x58($t0)
/* 02EBC4 8002DFC4 FF490058 */  sd    $t1, 0x58($k0)
/* 02EBC8 8002DFC8 DD090060 */  ld    $t1, 0x60($t0)
/* 02EBCC 8002DFCC FF490060 */  sd    $t1, 0x60($k0)
/* 02EBD0 8002DFD0 DD090068 */  ld    $t1, 0x68($t0)
/* 02EBD4 8002DFD4 FF490068 */  sd    $t1, 0x68($k0)
/* 02EBD8 8002DFD8 8F5B0118 */  lw    $k1, 0x118($k0)
/* 02EBDC 8002DFDC 00004012 */  mflo  $t0
/* 02EBE0 8002DFE0 FF480108 */  sd    $t0, 0x108($k0)
/* 02EBE4 8002DFE4 00004010 */  mfhi  $t0
/* 02EBE8 8002DFE8 3369FF00 */  andi  $t1, $k1, 0xff00
/* 02EBEC 8002DFEC FF420028 */  sd    $v0, 0x28($k0)
/* 02EBF0 8002DFF0 FF430030 */  sd    $v1, 0x30($k0)
/* 02EBF4 8002DFF4 FF440038 */  sd    $a0, 0x38($k0)
/* 02EBF8 8002DFF8 FF450040 */  sd    $a1, 0x40($k0)
/* 02EBFC 8002DFFC FF460048 */  sd    $a2, 0x48($k0)
/* 02EC00 8002E000 FF470050 */  sd    $a3, 0x50($k0)
/* 02EC04 8002E004 FF4B0070 */  sd    $t3, 0x70($k0)
/* 02EC08 8002E008 FF4C0078 */  sd    $t4, 0x78($k0)
/* 02EC0C 8002E00C FF4D0080 */  sd    $t5, 0x80($k0)
/* 02EC10 8002E010 FF4E0088 */  sd    $t6, 0x88($k0)
/* 02EC14 8002E014 FF4F0090 */  sd    $t7, 0x90($k0)
/* 02EC18 8002E018 FF500098 */  sd    $s0, 0x98($k0)
/* 02EC1C 8002E01C FF5100A0 */  sd    $s1, 0xa0($k0)
/* 02EC20 8002E020 FF5200A8 */  sd    $s2, 0xa8($k0)
/* 02EC24 8002E024 FF5300B0 */  sd    $s3, 0xb0($k0)
/* 02EC28 8002E028 FF5400B8 */  sd    $s4, 0xb8($k0)
/* 02EC2C 8002E02C FF5500C0 */  sd    $s5, 0xc0($k0)
/* 02EC30 8002E030 FF5600C8 */  sd    $s6, 0xc8($k0)
/* 02EC34 8002E034 FF5700D0 */  sd    $s7, 0xd0($k0)
/* 02EC38 8002E038 FF5800D8 */  sd    $t8, 0xd8($k0)
/* 02EC3C 8002E03C FF5900E0 */  sd    $t9, 0xe0($k0)
/* 02EC40 8002E040 FF5C00E8 */  sd    $gp, 0xe8($k0)
/* 02EC44 8002E044 FF5D00F0 */  sd    $sp, 0xf0($k0)
/* 02EC48 8002E048 FF5E00F8 */  sd    $fp, 0xf8($k0)
/* 02EC4C 8002E04C FF5F0100 */  sd    $ra, 0x100($k0)
/* 02EC50 8002E050 11200011 */  beqz  $t1, .L8002E098_ovl0
/* 02EC54 8002E054 FF480110 */   sd    $t0, 0x110($k0)
/* 02EC58 8002E058 3C088004 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8004
/* 02EC5C 8002E05C 2508FBA0 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x460
/* 02EC60 8002E060 8D080000 */  lw    $t0, ($t0)
/* 02EC64 8002E064 2401FFFF */  li    $at, -1
/* 02EC68 8002E068 01015026 */  xor   $t2, $t0, $at
/* 02EC6C 8002E06C 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 02EC70 8002E070 314AFF00 */  andi  $t2, $t2, 0xff00
/* 02EC74 8002E074 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 02EC78 8002E078 012A6025 */  or    $t4, $t1, $t2
/* 02EC7C 8002E07C 03615824 */  and   $t3, $k1, $at
/* 02EC80 8002E080 3108FF00 */  andi  $t0, $t0, 0xff00
/* 02EC84 8002E084 016C5825 */  or    $t3, $t3, $t4
/* 02EC88 8002E088 01284824 */  and   $t1, $t1, $t0
/* 02EC8C 8002E08C 0361D824 */  and   $k1, $k1, $at
/* 02EC90 8002E090 AF4B0118 */  sw    $t3, 0x118($k0)
/* 02EC94 8002E094 0369D825 */  or    $k1, $k1, $t1
.L8002E098_ovl0:
/* 02EC98 8002E098 3C09A430 */  lui   $t1, %hi(D_A430000C) # $t1, 0xa430
/* 02EC9C 8002E09C 8D29000C */  lw    $t1, %lo(D_A430000C)($t1)
/* 02ECA0 8002E0A0 1120000B */  beqz  $t1, .L8002E0D0_ovl0
/* 02ECA4 8002E0A4 00000000 */   nop   
/* 02ECA8 8002E0A8 3C088004 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8004
/* 02ECAC 8002E0AC 2508FBA0 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x460
/* 02ECB0 8002E0B0 8D080000 */  lw    $t0, ($t0)
/* 02ECB4 8002E0B4 8F4C0128 */  lw    $t4, 0x128($k0)
/* 02ECB8 8002E0B8 2401FFFF */  li    $at, -1
/* 02ECBC 8002E0BC 00084402 */  srl   $t0, $t0, 0x10
/* 02ECC0 8002E0C0 01014026 */  xor   $t0, $t0, $at
/* 02ECC4 8002E0C4 3108003F */  andi  $t0, $t0, 0x3f
/* 02ECC8 8002E0C8 010C4024 */  and   $t0, $t0, $t4
/* 02ECCC 8002E0CC 01284825 */  or    $t1, $t1, $t0
.L8002E0D0_ovl0:
/* 02ECD0 8002E0D0 AF490128 */  sw    $t1, 0x128($k0)
/* 02ECD4 8002E0D4 40087000 */  mfc0  $t0, $14
/* 02ECD8 8002E0D8 AF48011C */  sw    $t0, 0x11c($k0)
/* 02ECDC 8002E0DC 8F480018 */  lw    $t0, 0x18($k0)
/* 02ECE0 8002E0E0 11000014 */  beqz  $t0, .L8002E134_ovl0
/* 02ECE4 8002E0E4 00000000 */   nop   
/* 02ECE8 8002E0E8 4448F800 */  cfc1  $t0, $31
/* 02ECEC 8002E0EC 00000000 */  nop   
/* 02ECF0 8002E0F0 AF48012C */  sw    $t0, 0x12c($k0)
/* 02ECF4 8002E0F4 F7400130 */  sdc1  $f0, 0x130($k0)
/* 02ECF8 8002E0F8 F7420138 */  sdc1  $f2, 0x138($k0)
/* 02ECFC 8002E0FC F7440140 */  sdc1  $f4, 0x140($k0)
/* 02ED00 8002E100 F7460148 */  sdc1  $f6, 0x148($k0)
/* 02ED04 8002E104 F7480150 */  sdc1  $f8, 0x150($k0)
/* 02ED08 8002E108 F74A0158 */  sdc1  $f10, 0x158($k0)
/* 02ED0C 8002E10C F74C0160 */  sdc1  $f12, 0x160($k0)
/* 02ED10 8002E110 F74E0168 */  sdc1  $f14, 0x168($k0)
/* 02ED14 8002E114 F7500170 */  sdc1  $f16, 0x170($k0)
/* 02ED18 8002E118 F7520178 */  sdc1  $f18, 0x178($k0)
/* 02ED1C 8002E11C F7540180 */  sdc1  $f20, 0x180($k0)
/* 02ED20 8002E120 F7560188 */  sdc1  $f22, 0x188($k0)
/* 02ED24 8002E124 F7580190 */  sdc1  $f24, 0x190($k0)
/* 02ED28 8002E128 F75A0198 */  sdc1  $f26, 0x198($k0)
/* 02ED2C 8002E12C F75C01A0 */  sdc1  $f28, 0x1a0($k0)
/* 02ED30 8002E130 F75E01A8 */  sdc1  $f30, 0x1a8($k0)
.L8002E134_ovl0:
/* 02ED34 8002E134 40086800 */  mfc0  $t0, $13
/* 02ED38 8002E138 AF480120 */  sw    $t0, 0x120($k0)
/* 02ED3C 8002E13C 24090002 */  li    $t1, 2
/* 02ED40 8002E140 A7490010 */  sh    $t1, 0x10($k0)
/* 02ED44 8002E144 3109007C */  andi  $t1, $t0, 0x7c
/* 02ED48 8002E148 240A0024 */  li    $t2, 36
/* 02ED4C 8002E14C 112A00B0 */  beq   $t1, $t2, .L8002E410_ovl0
/* 02ED50 8002E150 00000000 */   nop   
/* 02ED54 8002E154 240A002C */  li    $t2, 44
/* 02ED58 8002E158 112A00FF */  beq   $t1, $t2, .L8002E558_ovl0
/* 02ED5C 8002E15C 00000000 */   nop   
/* 02ED60 8002E160 240A0000 */  li    $t2, 0
/* 02ED64 8002E164 152A00C3 */  bne   $t1, $t2, .L8002E474_ovl0
/* 02ED68 8002E168 00000000 */   nop   
/* 02ED6C 8002E16C 03688024 */  and   $s0, $k1, $t0
.L8002E170_ovl0:
/* 02ED70 8002E170 3209FF00 */  andi  $t1, $s0, 0xff00
/* 02ED74 8002E174 00095302 */  srl   $t2, $t1, 0xc
/* 02ED78 8002E178 15400003 */  bnez  $t2, .L8002E188_ovl0
/* 02ED7C 8002E17C 00000000 */   nop   
/* 02ED80 8002E180 00095202 */  srl   $t2, $t1, 8
/* 02ED84 8002E184 214A0010 */  addi  $t2, $t2, 0x10
.L8002E188_ovl0:
/* 02ED88 8002E188 3C018004 */ lui $at, %hi(__osIntOffTable)
/* 02ED8C 8002E18C 002A0821 */  addu  $at, $at, $t2
/* 02ED90 8002E190 902A1B00 */ lbu $t2, %lo(__osIntOffTable)($at)
/* 02ED94 8002E194 3C018004 */ lui $at, %hi(__osIntTable)
/* 02ED98 8002E198 002A0821 */  addu  $at, $at, $t2
/* 02ED9C 8002E19C 8C2A1B20 */ lw $t2, %lo(__osIntTable)($at)
/* 02EDA0 8002E1A0 01400008 */  jr    $t2
/* 02EDA4 8002E1A4 00000000 */   nop   
/* 02EDA8 8002E1A8 2401DFFF */  li    $at, -8193
/* 02EDAC 8002E1AC 1000FFF0 */  b     .L8002E170_ovl0
/* 02EDB0 8002E1B0 02018024 */   and   $s0, $s0, $at
/* 02EDB4 8002E1B4 2401BFFF */  li    $at, -16385
/* 02EDB8 8002E1B8 1000FFED */  b     .L8002E170_ovl0
/* 02EDBC 8002E1BC 02018024 */   and   $s0, $s0, $at
/* 02EDC0 8002E1C0 40095800 */  mfc0  $t1, $11
/* 02EDC4 8002E1C4 40895800 */  mtc0  $t1, $11
/* 02EDC8 8002E1C8 0C00B929 */  jal   send_mesg
/* 02EDCC 8002E1CC 24040018 */   li    $a0, 24
/* 02EDD0 8002E1D0 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* 02EDD4 8002E1D4 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* 02EDD8 8002E1D8 1000FFE5 */  b     .L8002E170_ovl0
/* 02EDDC 8002E1DC 02018024 */   and   $s0, $s0, $at
/* 02EDE0 8002E1E0 2401F7FF */  li    $at, -2049
/* 02EDE4 8002E1E4 02018024 */  and   $s0, $s0, $at
/* 02EDE8 8002E1E8 240A0004 */  li    $t2, 4
/* 02EDEC 8002E1EC 3C018004 */ lui $at, %hi(__osHwIntTable)
/* 02EDF0 8002E1F0 002A0821 */  addu  $at, $at, $t2
/* 02EDF4 8002E1F4 8C2AFB30 */ lw $t2, %lo(__osHwIntTable)($at)
/* 02EDF8 8002E1F8 3C1D8009 */  lui   $sp, %hi(leoDiskStack) # $sp, 0x8009
/* 02EDFC 8002E1FC 27BD7990 */  addiu $sp, %lo(leoDiskStack) # addiu $sp, $sp, 0x7990
/* 02EE00 8002E200 24040010 */  li    $a0, 16
/* 02EE04 8002E204 11400007 */  beqz  $t2, .L8002E224_ovl0
/* 02EE08 8002E208 27BD0FF0 */   addiu $sp, $sp, 0xff0
/* 02EE0C 8002E20C 0140F809 */  jalr  $t2
/* 02EE10 8002E210 00000000 */  nop   
/* 02EE14 8002E214 10400003 */  beqz  $v0, .L8002E224_ovl0
/* 02EE18 8002E218 24040010 */   li    $a0, 16
/* 02EE1C 8002E21C 10000082 */  b     .L8002E428_ovl0
/* 02EE20 8002E220 00000000 */   nop   
.L8002E224_ovl0:
/* 02EE24 8002E224 0C00B929 */  jal   send_mesg
/* 02EE28 8002E228 00000000 */   nop   
/* 02EE2C 8002E22C 1000FFD0 */  b     .L8002E170_ovl0
/* 02EE30 8002E230 00000000 */   nop   
/* 02EE34 8002E234 3C088004 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8004
/* 02EE38 8002E238 2508FBA0 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x460
/* 02EE3C 8002E23C 8D080000 */  lw    $t0, ($t0)
/* 02EE40 8002E240 3C11A430 */  lui   $s1, %hi(D_A4300008) # $s1, 0xa430
/* 02EE44 8002E244 8E310008 */  lw    $s1, %lo(D_A4300008)($s1)
/* 02EE48 8002E248 00084402 */  srl   $t0, $t0, 0x10
/* 02EE4C 8002E24C 02288824 */  and   $s1, $s1, $t0
/* 02EE50 8002E250 32290001 */  andi  $t1, $s1, 1
/* 02EE54 8002E254 11200013 */  beqz  $t1, .L8002E2A4_ovl0
/* 02EE58 8002E258 00000000 */   nop   
/* 02EE5C 8002E25C 3C0CA404 */  lui   $t4, %hi(D_A4040010) # $t4, 0xa404
/* 02EE60 8002E260 8D8C0010 */  lw    $t4, %lo(D_A4040010)($t4)
/* 02EE64 8002E264 34098008 */  li    $t1, 32776
/* 02EE68 8002E268 3C01A404 */  lui   $at, %hi(D_A4040010) # $at, 0xa404
/* 02EE6C 8002E26C 318C0300 */  andi  $t4, $t4, 0x300
/* 02EE70 8002E270 3231003E */  andi  $s1, $s1, 0x3e
/* 02EE74 8002E274 11800007 */  beqz  $t4, .L8002E294_ovl0
/* 02EE78 8002E278 AC290010 */   sw    $t1, %lo(D_A4040010)($at)
/* 02EE7C 8002E27C 0C00B929 */  jal   send_mesg
/* 02EE80 8002E280 24040020 */   li    $a0, 32
/* 02EE84 8002E284 12200038 */  beqz  $s1, .L8002E368_ovl0
/* 02EE88 8002E288 00000000 */   nop   
/* 02EE8C 8002E28C 10000005 */  b     .L8002E2A4_ovl0
/* 02EE90 8002E290 00000000 */   nop   
.L8002E294_ovl0:
/* 02EE94 8002E294 0C00B929 */  jal   send_mesg
/* 02EE98 8002E298 24040058 */   li    $a0, 88
/* 02EE9C 8002E29C 12200032 */  beqz  $s1, .L8002E368_ovl0
/* 02EEA0 8002E2A0 00000000 */   nop   
.L8002E2A4_ovl0:
/* 02EEA4 8002E2A4 32290008 */  andi  $t1, $s1, 8
/* 02EEA8 8002E2A8 11200007 */  beqz  $t1, .L8002E2C8_ovl0
/* 02EEAC 8002E2AC 3C01A440 */   lui   $at, %hi(D_A4400010) # $at, 0xa440
/* 02EEB0 8002E2B0 32310037 */  andi  $s1, $s1, 0x37
/* 02EEB4 8002E2B4 AC200010 */  sw    $zero, %lo(D_A4400010)($at)
/* 02EEB8 8002E2B8 0C00B929 */  jal   send_mesg
/* 02EEBC 8002E2BC 24040038 */   li    $a0, 56
/* 02EEC0 8002E2C0 12200029 */  beqz  $s1, .L8002E368_ovl0
/* 02EEC4 8002E2C4 00000000 */   nop   
.L8002E2C8_ovl0:
/* 02EEC8 8002E2C8 32290004 */  andi  $t1, $s1, 4
/* 02EECC 8002E2CC 11200009 */  beqz  $t1, .L8002E2F4_ovl0
/* 02EED0 8002E2D0 00000000 */   nop   
/* 02EED4 8002E2D4 24090001 */  li    $t1, 1
/* 02EED8 8002E2D8 3C01A450 */  lui   $at, %hi(D_A450000C) # $at, 0xa450
/* 02EEDC 8002E2DC 3231003B */  andi  $s1, $s1, 0x3b
/* 02EEE0 8002E2E0 AC29000C */  sw    $t1, %lo(D_A450000C)($at)
/* 02EEE4 8002E2E4 0C00B929 */  jal   send_mesg
/* 02EEE8 8002E2E8 24040030 */   li    $a0, 48
/* 02EEEC 8002E2EC 1220001E */  beqz  $s1, .L8002E368_ovl0
/* 02EEF0 8002E2F0 00000000 */   nop   
.L8002E2F4_ovl0:
/* 02EEF4 8002E2F4 32290002 */  andi  $t1, $s1, 2
/* 02EEF8 8002E2F8 11200007 */  beqz  $t1, .L8002E318_ovl0
/* 02EEFC 8002E2FC 3C01A480 */   lui   $at, %hi(D_A4800018) # $at, 0xa480
/* 02EF00 8002E300 3231003D */  andi  $s1, $s1, 0x3d
/* 02EF04 8002E304 AC200018 */  sw    $zero, %lo(D_A4800018)($at)
/* 02EF08 8002E308 0C00B929 */  jal   send_mesg
/* 02EF0C 8002E30C 24040028 */   li    $a0, 40
/* 02EF10 8002E310 12200015 */  beqz  $s1, .L8002E368_ovl0
/* 02EF14 8002E314 00000000 */   nop   
.L8002E318_ovl0:
/* 02EF18 8002E318 32290010 */  andi  $t1, $s1, 0x10
/* 02EF1C 8002E31C 11200009 */  beqz  $t1, .L8002E344_ovl0
/* 02EF20 8002E320 00000000 */   nop   
/* 02EF24 8002E324 24090002 */  li    $t1, 2
/* 02EF28 8002E328 3C01A460 */  lui   $at, %hi(D_A4600010) # $at, 0xa460
/* 02EF2C 8002E32C 3231002F */  andi  $s1, $s1, 0x2f
/* 02EF30 8002E330 AC290010 */  sw    $t1, %lo(D_A4600010)($at)
/* 02EF34 8002E334 0C00B929 */  jal   send_mesg
/* 02EF38 8002E338 24040040 */   li    $a0, 64
/* 02EF3C 8002E33C 1220000A */  beqz  $s1, .L8002E368_ovl0
/* 02EF40 8002E340 00000000 */   nop   
.L8002E344_ovl0:
/* 02EF44 8002E344 32290020 */  andi  $t1, $s1, 0x20
/* 02EF48 8002E348 11200007 */  beqz  $t1, .L8002E368_ovl0
/* 02EF4C 8002E34C 00000000 */   nop   
/* 02EF50 8002E350 24090800 */  li    $t1, 2048
/* 02EF54 8002E354 3C01A430 */  lui   $at, 0xa430
/* 02EF58 8002E358 3231001F */  andi  $s1, $s1, 0x1f
/* 02EF5C 8002E35C AC290000 */  sw    $t1, ($at)
/* 02EF60 8002E360 0C00B929 */  jal   send_mesg
/* 02EF64 8002E364 24040048 */   li    $a0, 72
.L8002E368_ovl0:
/* 02EF68 8002E368 2401FBFF */  li    $at, -1025
/* 02EF6C 8002E36C 1000FF80 */  b     .L8002E170_ovl0
/* 02EF70 8002E370 02018024 */   and   $s0, $s0, $at
/* 02EF74 8002E374 8F5B0118 */  lw    $k1, 0x118($k0)
/* 02EF78 8002E378 2401EFFF */  li    $at, -4097
/* 02EF7C 8002E37C 3C098004 */  lui   $t1, %hi(__osShutdown) # $t1, 0x8004
/* 02EF80 8002E380 0361D824 */  and   $k1, $k1, $at
/* 02EF84 8002E384 AF5B0118 */  sw    $k1, 0x118($k0)
/* 02EF88 8002E388 2529FB9C */  addiu $t1, %lo(__osShutdown) # addiu $t1, $t1, -0x464
/* 02EF8C 8002E38C 8D2A0000 */  lw    $t2, ($t1)
/* 02EF90 8002E390 11400003 */  beqz  $t2, .L8002E3A0_ovl0
/* 02EF94 8002E394 2401EFFF */   li    $at, -4097
/* 02EF98 8002E398 10000023 */  b     .L8002E428_ovl0
/* 02EF9C 8002E39C 02018024 */   and   $s0, $s0, $at
.L8002E3A0_ovl0:
/* 02EFA0 8002E3A0 240A0001 */  li    $t2, 1
/* 02EFA4 8002E3A4 AD2A0000 */  sw    $t2, ($t1)
/* 02EFA8 8002E3A8 0C00B929 */  jal   send_mesg
/* 02EFAC 8002E3AC 24040070 */   li    $a0, 112
/* 02EFB0 8002E3B0 3C0A8004 */  lui   $t2, %hi(__osRunQueue) # $t2, 0x8004
/* 02EFB4 8002E3B4 8D4AFB58 */  lw    $t2, %lo(__osRunQueue)($t2)
/* 02EFB8 8002E3B8 2401EFFF */  li    $at, -4097
/* 02EFBC 8002E3BC 02018024 */  and   $s0, $s0, $at
/* 02EFC0 8002E3C0 8D5B0118 */  lw    $k1, 0x118($t2)
/* 02EFC4 8002E3C4 0361D824 */  and   $k1, $k1, $at
/* 02EFC8 8002E3C8 10000017 */  b     .L8002E428_ovl0
/* 02EFCC 8002E3CC AD5B0118 */   sw    $k1, 0x118($t2)
/* 02EFD0 8002E3D0 2401FDFF */  li    $at, -513
/* 02EFD4 8002E3D4 01014024 */  and   $t0, $t0, $at
/* 02EFD8 8002E3D8 40886800 */  mtc0  $t0, $13
/* 02EFDC 8002E3DC 0C00B929 */  jal   send_mesg
/* 02EFE0 8002E3E0 24040008 */   li    $a0, 8
/* 02EFE4 8002E3E4 2401FDFF */  li    $at, -513
/* 02EFE8 8002E3E8 1000FF61 */  b     .L8002E170_ovl0
/* 02EFEC 8002E3EC 02018024 */   and   $s0, $s0, $at
/* 02EFF0 8002E3F0 2401FEFF */  li    $at, -257
/* 02EFF4 8002E3F4 01014024 */  and   $t0, $t0, $at
/* 02EFF8 8002E3F8 40886800 */  mtc0  $t0, $13
/* 02EFFC 8002E3FC 0C00B929 */  jal   send_mesg
/* 02F000 8002E400 24040000 */   li    $a0, 0
/* 02F004 8002E404 2401FEFF */  li    $at, -257
/* 02F008 8002E408 1000FF59 */  b     .L8002E170_ovl0
/* 02F00C 8002E40C 02018024 */   and   $s0, $s0, $at
.L8002E410_ovl0:
/* 02F010 8002E410 24090001 */  li    $t1, 1
/* 02F014 8002E414 A7490012 */  sh    $t1, 0x12($k0)
/* 02F018 8002E418 0C00B929 */  jal   send_mesg
/* 02F01C 8002E41C 24040050 */   li    $a0, 80
/* 02F020 8002E420 10000001 */  b     .L8002E428_ovl0
/* 02F024 8002E424 00000000 */   nop   
.L8002E428_ovl0:
/* 02F028 8002E428 3C0A8004 */  lui   $t2, %hi(__osRunQueue) # $t2, 0x8004
/* 02F02C 8002E42C 8D4AFB58 */  lw    $t2, %lo(__osRunQueue)($t2)
/* 02F030 8002E430 8F490004 */  lw    $t1, 4($k0)
/* 02F034 8002E434 8D4B0004 */  lw    $t3, 4($t2)
/* 02F038 8002E438 012B082A */  slt   $at, $t1, $t3
/* 02F03C 8002E43C 10200007 */  beqz  $at, .L8002E45C_ovl0
/* 02F040 8002E440 00000000 */   nop   
/* 02F044 8002E444 3C048004 */  lui   $a0, %hi(__osRunQueue) # $a0, 0x8004
/* 02F048 8002E448 03402825 */  move  $a1, $k0
/* 02F04C 8002E44C 0C00B9A3 */  jal   __osEnqueueThread
/* 02F050 8002E450 2484FB58 */   addiu $a0, %lo(__osRunQueue) # addiu $a0, $a0, -0x4a8
/* 02F054 8002E454 0800B9B9 */  j     __osDispatchThread
/* 02F058 8002E458 00000000 */   nop   

.L8002E45C_ovl0:
/* 02F05C 8002E45C 3C098004 */  lui   $t1, %hi(__osRunQueue) # $t1, 0x8004
/* 02F060 8002E460 2529FB58 */  addiu $t1, %lo(__osRunQueue) # addiu $t1, $t1, -0x4a8
/* 02F064 8002E464 8D2A0000 */  lw    $t2, ($t1)
/* 02F068 8002E468 AF4A0000 */  sw    $t2, ($k0)
/* 02F06C 8002E46C 0800B9B9 */  j     __osDispatchThread
/* 02F070 8002E470 AD3A0000 */   sw    $k0, ($t1)

.L8002E474_ovl0:
/* 02F074 8002E474 3C018004 */  lui   $at, %hi(__osFaultedThread) # $at, 0x8004
/* 02F078 8002E478 AC3AFB64 */  sw    $k0, %lo(__osFaultedThread)($at)
/* 02F07C 8002E47C 24090001 */  li    $t1, 1
/* 02F080 8002E480 A7490010 */  sh    $t1, 0x10($k0)
/* 02F084 8002E484 24090002 */  li    $t1, 2
/* 02F088 8002E488 A7490012 */  sh    $t1, 0x12($k0)
/* 02F08C 8002E48C 400A4000 */  mfc0  $t2, $8
/* 02F090 8002E490 AF4A0124 */  sw    $t2, 0x124($k0)
/* 02F094 8002E494 0C00B929 */  jal   send_mesg
/* 02F098 8002E498 24040060 */   li    $a0, 96
/* 02F09C 8002E49C 0800B9B9 */  j     __osDispatchThread
/* 02F0A0 8002E4A0 00000000 */   nop   
.size __osException, . - __osException

glabel send_mesg
/* 02F0A4 8002E4A4 3C0A800A */  lui   $t2, %hi(__osEventStateTab) # $t2, 0x800a
/* 02F0A8 8002E4A8 254AA0E0 */  addiu $t2, %lo(__osEventStateTab) # addiu $t2, $t2, -0x5f20
/* 02F0AC 8002E4AC 01445021 */  addu  $t2, $t2, $a0
/* 02F0B0 8002E4B0 8D490000 */  lw    $t1, ($t2)
/* 02F0B4 8002E4B4 03E09025 */  move  $s2, $ra
/* 02F0B8 8002E4B8 11200025 */  beqz  $t1, .L8002E550_ovl0
/* 02F0BC 8002E4BC 00000000 */   nop   
/* 02F0C0 8002E4C0 8D2B0008 */  lw    $t3, 8($t1)
/* 02F0C4 8002E4C4 8D2C0010 */  lw    $t4, 0x10($t1)
/* 02F0C8 8002E4C8 016C082A */  slt   $at, $t3, $t4
/* 02F0CC 8002E4CC 10200020 */  beqz  $at, .L8002E550_ovl0
/* 02F0D0 8002E4D0 00000000 */   nop   
/* 02F0D4 8002E4D4 8D2D000C */  lw    $t5, 0xc($t1)
/* 02F0D8 8002E4D8 01AB6821 */  addu  $t5, $t5, $t3
/* 02F0DC 8002E4DC 01AC001A */  div   $zero, $t5, $t4
/* 02F0E0 8002E4E0 15800002 */  bnez  $t4, .L8002E4EC_ovl0
/* 02F0E4 8002E4E4 00000000 */   nop   
/* 02F0E8 8002E4E8 0007000D */  break 7
.L8002E4EC_ovl0:
/* 02F0EC 8002E4EC 2401FFFF */  li    $at, -1
/* 02F0F0 8002E4F0 15810004 */  bne   $t4, $at, .L8002E504_ovl0
/* 02F0F4 8002E4F4 3C018000 */   lui   $at, 0x8000
/* 02F0F8 8002E4F8 15A10002 */  bne   $t5, $at, .L8002E504_ovl0
/* 02F0FC 8002E4FC 00000000 */   nop   
/* 02F100 8002E500 0006000D */  break 6
.L8002E504_ovl0:
/* 02F104 8002E504 8D2C0014 */  lw    $t4, 0x14($t1)
/* 02F108 8002E508 00006810 */  mfhi  $t5
/* 02F10C 8002E50C 000D6880 */  sll   $t5, $t5, 2
/* 02F110 8002E510 018D6021 */  addu  $t4, $t4, $t5
/* 02F114 8002E514 8D4D0004 */  lw    $t5, 4($t2)
/* 02F118 8002E518 256A0001 */  addiu $t2, $t3, 1
/* 02F11C 8002E51C AD8D0000 */  sw    $t5, ($t4)
/* 02F120 8002E520 AD2A0008 */  sw    $t2, 8($t1)
/* 02F124 8002E524 8D2A0000 */  lw    $t2, ($t1)
/* 02F128 8002E528 8D4B0000 */  lw    $t3, ($t2)
/* 02F12C 8002E52C 11600008 */  beqz  $t3, .L8002E550_ovl0
/* 02F130 8002E530 00000000 */   nop   
/* 02F134 8002E534 0C00B9B5 */  jal   __osPopThread
/* 02F138 8002E538 01202025 */   move  $a0, $t1
/* 02F13C 8002E53C 00405025 */  move  $t2, $v0
/* 02F140 8002E540 3C048004 */  lui   $a0, %hi(__osRunQueue) # $a0, 0x8004
/* 02F144 8002E544 01402825 */  move  $a1, $t2
/* 02F148 8002E548 0C00B9A3 */  jal   __osEnqueueThread
/* 02F14C 8002E54C 2484FB58 */   addiu $a0, %lo(__osRunQueue) # addiu $a0, $a0, -0x4a8
.L8002E550_ovl0:
/* 02F150 8002E550 02400008 */  jr    $s2
/* 02F154 8002E554 00000000 */   nop   
.L8002E558_ovl0:
/* 02F158 8002E558 3C013000 */  lui   $at, 0x3000
/* 02F15C 8002E55C 01014824 */  and   $t1, $t0, $at
/* 02F160 8002E560 00094F02 */  srl   $t1, $t1, 0x1c
/* 02F164 8002E564 240A0001 */  li    $t2, 1
/* 02F168 8002E568 152AFFC2 */  bne   $t1, $t2, .L8002E474_ovl0
/* 02F16C 8002E56C 00000000 */   nop   
/* 02F170 8002E570 8F5B0118 */  lw    $k1, 0x118($k0)
/* 02F174 8002E574 3C012000 */  lui   $at, 0x2000
/* 02F178 8002E578 24090001 */  li    $t1, 1
/* 02F17C 8002E57C 0361D825 */  or    $k1, $k1, $at
/* 02F180 8002E580 AF490018 */  sw    $t1, 0x18($k0)
/* 02F184 8002E584 1000FFB5 */  b     .L8002E45C_ovl0
/* 02F188 8002E588 AF5B0118 */   sw    $k1, 0x118($k0)
/* 02F18C 8002E58C 3C058004 */  lui   $a1, %hi(__osRunningThread) # $a1, 0x8004
/* 02F190 8002E590 8CA5FB60 */  lw    $a1, %lo(__osRunningThread)($a1)
/* 02F194 8002E594 40086000 */  mfc0  $t0, $12
/* 02F198 8002E598 8CBB0018 */  lw    $k1, 0x18($a1)
/* 02F19C 8002E59C 35080002 */  ori   $t0, $t0, 2
/* 02F1A0 8002E5A0 ACA80118 */  sw    $t0, 0x118($a1)
/* 02F1A4 8002E5A4 FCB00098 */  sd    $s0, 0x98($a1)
/* 02F1A8 8002E5A8 FCB100A0 */  sd    $s1, 0xa0($a1)
/* 02F1AC 8002E5AC FCB200A8 */  sd    $s2, 0xa8($a1)
/* 02F1B0 8002E5B0 FCB300B0 */  sd    $s3, 0xb0($a1)
/* 02F1B4 8002E5B4 FCB400B8 */  sd    $s4, 0xb8($a1)
/* 02F1B8 8002E5B8 FCB500C0 */  sd    $s5, 0xc0($a1)
/* 02F1BC 8002E5BC FCB600C8 */  sd    $s6, 0xc8($a1)
/* 02F1C0 8002E5C0 FCB700D0 */  sd    $s7, 0xd0($a1)
/* 02F1C4 8002E5C4 FCBC00E8 */  sd    $gp, 0xe8($a1)
/* 02F1C8 8002E5C8 FCBD00F0 */  sd    $sp, 0xf0($a1)
/* 02F1CC 8002E5CC FCBE00F8 */  sd    $fp, 0xf8($a1)
/* 02F1D0 8002E5D0 FCBF0100 */  sd    $ra, 0x100($a1)
/* 02F1D4 8002E5D4 13600009 */  beqz  $k1, .L8002E5FC_ovl0
/* 02F1D8 8002E5D8 ACBF011C */   sw    $ra, 0x11c($a1)
/* 02F1DC 8002E5DC 445BF800 */  cfc1  $k1, $31
/* 02F1E0 8002E5E0 F4B40180 */  sdc1  $f20, 0x180($a1)
/* 02F1E4 8002E5E4 F4B60188 */  sdc1  $f22, 0x188($a1)
/* 02F1E8 8002E5E8 F4B80190 */  sdc1  $f24, 0x190($a1)
/* 02F1EC 8002E5EC F4BA0198 */  sdc1  $f26, 0x198($a1)
/* 02F1F0 8002E5F0 F4BC01A0 */  sdc1  $f28, 0x1a0($a1)
/* 02F1F4 8002E5F4 F4BE01A8 */  sdc1  $f30, 0x1a8($a1)
/* 02F1F8 8002E5F8 ACBB012C */  sw    $k1, 0x12c($a1)
.L8002E5FC_ovl0:
/* 02F1FC 8002E5FC 8CBB0118 */  lw    $k1, 0x118($a1)
/* 02F200 8002E600 3369FF00 */  andi  $t1, $k1, 0xff00
/* 02F204 8002E604 1120000D */  beqz  $t1, .L8002E63C_ovl0
/* 02F208 8002E608 00000000 */   nop   
/* 02F20C 8002E60C 3C088004 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8004
/* 02F210 8002E610 2508FBA0 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x460
/* 02F214 8002E614 8D080000 */  lw    $t0, ($t0)
/* 02F218 8002E618 2401FFFF */  li    $at, -1
/* 02F21C 8002E61C 01014026 */  xor   $t0, $t0, $at
/* 02F220 8002E620 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 02F224 8002E624 3108FF00 */  andi  $t0, $t0, 0xff00
/* 02F228 8002E628 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 02F22C 8002E62C 01284825 */  or    $t1, $t1, $t0
/* 02F230 8002E630 0361D824 */  and   $k1, $k1, $at
/* 02F234 8002E634 0369D825 */  or    $k1, $k1, $t1
/* 02F238 8002E638 ACBB0118 */  sw    $k1, 0x118($a1)
.L8002E63C_ovl0:
/* 02F23C 8002E63C 3C1BA430 */  lui   $k1, %hi(D_A430000C) # $k1, 0xa430
/* 02F240 8002E640 8F7B000C */  lw    $k1, %lo(D_A430000C)($k1)
/* 02F244 8002E644 1360000B */  beqz  $k1, .L8002E674_ovl0
/* 02F248 8002E648 00000000 */   nop   
/* 02F24C 8002E64C 3C1A8004 */  lui   $k0, %hi(__OSGlobalIntMask) # $k0, 0x8004
/* 02F250 8002E650 275AFBA0 */  addiu $k0, %lo(__OSGlobalIntMask) # addiu $k0, $k0, -0x460
/* 02F254 8002E654 8F5A0000 */  lw    $k0, ($k0)
/* 02F258 8002E658 8CA80128 */  lw    $t0, 0x128($a1)
/* 02F25C 8002E65C 2401FFFF */  li    $at, -1
/* 02F260 8002E660 001AD402 */  srl   $k0, $k0, 0x10
/* 02F264 8002E664 0341D026 */  xor   $k0, $k0, $at
/* 02F268 8002E668 335A003F */  andi  $k0, $k0, 0x3f
/* 02F26C 8002E66C 0348D024 */  and   $k0, $k0, $t0
/* 02F270 8002E670 037AD825 */  or    $k1, $k1, $k0
.L8002E674_ovl0:
/* 02F274 8002E674 10800003 */  beqz  $a0, .L8002E684_ovl0
/* 02F278 8002E678 ACBB0128 */   sw    $k1, 0x128($a1)
/* 02F27C 8002E67C 0C00B9A3 */  jal   __osEnqueueThread
/* 02F280 8002E680 00000000 */   nop   
.L8002E684_ovl0:
/* 02F284 8002E684 0800B9B9 */  j     __osDispatchThread
/* 02F288 8002E688 00000000 */   nop   
.size send_mesg, . - send_mesg

glabel __osEnqueueThread
/* 02F28C 8002E68C 8C980000 */  lw    $t8, ($a0)
/* 02F290 8002E690 8CAF0004 */  lw    $t7, 4($a1)
/* 02F294 8002E694 0080C825 */  move  $t9, $a0
/* 02F298 8002E698 8F0E0004 */  lw    $t6, 4($t8)
/* 02F29C 8002E69C 01CF082A */  slt   $at, $t6, $t7
/* 02F2A0 8002E6A0 14200007 */  bnez  $at, .L8002E6C0_ovl0
/* 02F2A4 8002E6A4 00000000 */   nop   
.L8002E6A8_ovl0:
/* 02F2A8 8002E6A8 0300C825 */  move  $t9, $t8
/* 02F2AC 8002E6AC 8F180000 */  lw    $t8, ($t8)
/* 02F2B0 8002E6B0 8F0E0004 */  lw    $t6, 4($t8)
/* 02F2B4 8002E6B4 01CF082A */  slt   $at, $t6, $t7
/* 02F2B8 8002E6B8 1020FFFB */  beqz  $at, .L8002E6A8_ovl0
/* 02F2BC 8002E6BC 00000000 */   nop   
.L8002E6C0_ovl0:
/* 02F2C0 8002E6C0 8F380000 */  lw    $t8, ($t9)
/* 02F2C4 8002E6C4 ACB80000 */  sw    $t8, ($a1)
/* 02F2C8 8002E6C8 AF250000 */  sw    $a1, ($t9)
/* 02F2CC 8002E6CC 03E00008 */  jr    $ra
/* 02F2D0 8002E6D0 ACA40008 */   sw    $a0, 8($a1)
.size __osEnqueueThread, . - __osEnqueueThread

glabel __osPopThread
/* 02F2D4 8002E6D4 8C820000 */  lw    $v0, ($a0)
/* 02F2D8 8002E6D8 8C590000 */  lw    $t9, ($v0)
/* 02F2DC 8002E6DC 03E00008 */  jr    $ra
/* 02F2E0 8002E6E0 AC990000 */   sw    $t9, ($a0)
.size __osPopThread, . - __osPopThread

glabel __osDispatchThread /* ASM */
/* 02F2E4 8002E6E4 3C048004 */  lui   $a0, %hi(__osRunQueue) # $a0, 0x8004
/* 02F2E8 8002E6E8 0C00B9B5 */  jal   __osPopThread
/* 02F2EC 8002E6EC 2484FB58 */   addiu $a0, %lo(__osRunQueue) # addiu $a0, $a0, -0x4a8
/* 02F2F0 8002E6F0 3C018004 */  lui   $at, %hi(__osRunningThread) # $at, 0x8004
/* 02F2F4 8002E6F4 AC22FB60 */  sw    $v0, %lo(__osRunningThread)($at)
/* 02F2F8 8002E6F8 24080004 */  li    $t0, 4
/* 02F2FC 8002E6FC A4480010 */  sh    $t0, 0x10($v0)
/* 02F300 8002E700 0040D025 */  move  $k0, $v0
/* 02F304 8002E704 3C088004 */  lui   $t0, %hi(__OSGlobalIntMask) # $t0, 0x8004
/* 02F308 8002E708 8F5B0118 */  lw    $k1, 0x118($k0)
/* 02F30C 8002E70C 2508FBA0 */  addiu $t0, %lo(__OSGlobalIntMask) # addiu $t0, $t0, -0x460
/* 02F310 8002E710 8D080000 */  lw    $t0, ($t0)
/* 02F314 8002E714 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 02F318 8002E718 3369FF00 */  andi  $t1, $k1, 0xff00
/* 02F31C 8002E71C 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 02F320 8002E720 3108FF00 */  andi  $t0, $t0, 0xff00
/* 02F324 8002E724 01284824 */  and   $t1, $t1, $t0
/* 02F328 8002E728 0361D824 */  and   $k1, $k1, $at
/* 02F32C 8002E72C 0369D825 */  or    $k1, $k1, $t1
/* 02F330 8002E730 409B6000 */  mtc0  $k1, $12
/* 02F334 8002E734 DF5B0108 */  ld    $k1, 0x108($k0)
/* 02F338 8002E738 DF410020 */  ld    $at, 0x20($k0)
/* 02F33C 8002E73C DF420028 */  ld    $v0, 0x28($k0)
/* 02F340 8002E740 03600013 */  mtlo  $k1
/* 02F344 8002E744 DF5B0110 */  ld    $k1, 0x110($k0)
/* 02F348 8002E748 DF430030 */  ld    $v1, 0x30($k0)
/* 02F34C 8002E74C DF440038 */  ld    $a0, 0x38($k0)
/* 02F350 8002E750 DF450040 */  ld    $a1, 0x40($k0)
/* 02F354 8002E754 DF460048 */  ld    $a2, 0x48($k0)
/* 02F358 8002E758 DF470050 */  ld    $a3, 0x50($k0)
/* 02F35C 8002E75C DF480058 */  ld    $t0, 0x58($k0)
/* 02F360 8002E760 DF490060 */  ld    $t1, 0x60($k0)
/* 02F364 8002E764 DF4A0068 */  ld    $t2, 0x68($k0)
/* 02F368 8002E768 DF4B0070 */  ld    $t3, 0x70($k0)
/* 02F36C 8002E76C DF4C0078 */  ld    $t4, 0x78($k0)
/* 02F370 8002E770 DF4D0080 */  ld    $t5, 0x80($k0)
/* 02F374 8002E774 DF4E0088 */  ld    $t6, 0x88($k0)
/* 02F378 8002E778 DF4F0090 */  ld    $t7, 0x90($k0)
/* 02F37C 8002E77C DF500098 */  ld    $s0, 0x98($k0)
/* 02F380 8002E780 DF5100A0 */  ld    $s1, 0xa0($k0)
/* 02F384 8002E784 DF5200A8 */  ld    $s2, 0xa8($k0)
/* 02F388 8002E788 DF5300B0 */  ld    $s3, 0xb0($k0)
/* 02F38C 8002E78C DF5400B8 */  ld    $s4, 0xb8($k0)
/* 02F390 8002E790 DF5500C0 */  ld    $s5, 0xc0($k0)
/* 02F394 8002E794 DF5600C8 */  ld    $s6, 0xc8($k0)
/* 02F398 8002E798 DF5700D0 */  ld    $s7, 0xd0($k0)
/* 02F39C 8002E79C DF5800D8 */  ld    $t8, 0xd8($k0)
/* 02F3A0 8002E7A0 DF5900E0 */  ld    $t9, 0xe0($k0)
/* 02F3A4 8002E7A4 DF5C00E8 */  ld    $gp, 0xe8($k0)
/* 02F3A8 8002E7A8 03600011 */  mthi  $k1
/* 02F3AC 8002E7AC DF5D00F0 */  ld    $sp, 0xf0($k0)
/* 02F3B0 8002E7B0 DF5E00F8 */  ld    $fp, 0xf8($k0)
/* 02F3B4 8002E7B4 DF5F0100 */  ld    $ra, 0x100($k0)
/* 02F3B8 8002E7B8 8F5B011C */  lw    $k1, 0x11c($k0)
/* 02F3BC 8002E7BC 409B7000 */  mtc0  $k1, $14
/* 02F3C0 8002E7C0 8F5B0018 */  lw    $k1, 0x18($k0)
/* 02F3C4 8002E7C4 13600013 */  beqz  $k1, .L8002E814_ovl0
/* 02F3C8 8002E7C8 00000000 */   nop   
/* 02F3CC 8002E7CC 8F5B012C */  lw    $k1, 0x12c($k0)
/* 02F3D0 8002E7D0 44DBF800 */  ctc1  $k1, $31
/* 02F3D4 8002E7D4 D7400130 */  ldc1  $f0, 0x130($k0)
/* 02F3D8 8002E7D8 D7420138 */  ldc1  $f2, 0x138($k0)
/* 02F3DC 8002E7DC D7440140 */  ldc1  $f4, 0x140($k0)
/* 02F3E0 8002E7E0 D7460148 */  ldc1  $f6, 0x148($k0)
/* 02F3E4 8002E7E4 D7480150 */  ldc1  $f8, 0x150($k0)
/* 02F3E8 8002E7E8 D74A0158 */  ldc1  $f10, 0x158($k0)
/* 02F3EC 8002E7EC D74C0160 */  ldc1  $f12, 0x160($k0)
/* 02F3F0 8002E7F0 D74E0168 */  ldc1  $f14, 0x168($k0)
/* 02F3F4 8002E7F4 D7500170 */  ldc1  $f16, 0x170($k0)
/* 02F3F8 8002E7F8 D7520178 */  ldc1  $f18, 0x178($k0)
/* 02F3FC 8002E7FC D7540180 */  ldc1  $f20, 0x180($k0)
/* 02F400 8002E800 D7560188 */  ldc1  $f22, 0x188($k0)
/* 02F404 8002E804 D7580190 */  ldc1  $f24, 0x190($k0)
/* 02F408 8002E808 D75A0198 */  ldc1  $f26, 0x198($k0)
/* 02F40C 8002E80C D75C01A0 */  ldc1  $f28, 0x1a0($k0)
/* 02F410 8002E810 D75E01A8 */  ldc1  $f30, 0x1a8($k0)
.L8002E814_ovl0:
/* 02F414 8002E814 8F5B0128 */  lw    $k1, 0x128($k0)
/* 02F418 8002E818 3C1A8004 */  lui   $k0, %hi(__OSGlobalIntMask) # $k0, 0x8004
/* 02F41C 8002E81C 275AFBA0 */  addiu $k0, %lo(__OSGlobalIntMask) # addiu $k0, $k0, -0x460
/* 02F420 8002E820 8F5A0000 */  lw    $k0, ($k0)
/* 02F424 8002E824 001AD402 */  srl   $k0, $k0, 0x10
/* 02F428 8002E828 037AD824 */  and   $k1, $k1, $k0
/* 02F42C 8002E82C 001BD840 */  sll   $k1, $k1, 1
/* 02F430 8002E830 3C1A8004 */  lui   $k0, %hi(__osRcpImTable) # $k0, 0x8004
/* 02F434 8002E834 275A1A30 */  addiu $k0, %lo(__osRcpImTable) # addiu $k0, $k0, 0x1a30
/* 02F438 8002E838 037AD821 */  addu  $k1, $k1, $k0
/* 02F43C 8002E83C 977B0000 */  lhu   $k1, ($k1)
/* 02F440 8002E840 3C1AA430 */  lui   $k0, %hi(D_A430000C) # $k0, 0xa430
/* 02F444 8002E844 275A000C */  addiu $k0, %lo(D_A430000C) # addiu $k0, $k0, 0xc
/* 02F448 8002E848 AF5B0000 */  sw    $k1, ($k0)
/* 02F44C 8002E84C 00000000 */  nop   
/* 02F450 8002E850 00000000 */  nop   
/* 02F454 8002E854 00000000 */  nop   
/* 02F458 8002E858 00000000 */  nop   
/* 02F45C 8002E85C 42000018 */  eret  
.size __osDispatchThread, . - __osDispatchThread

glabel __osCleanupThread
/* 02F460 8002E860 0C00B6E4 */  jal   osDestroyThread
/* 02F464 8002E864 00002025 */   move  $a0, $zero
/* 02F468 8002E868 00000000 */  nop   
/* 02F46C 8002E86C 00000000 */  nop  
/*END OF ASM*/ 

.size __osCleanupThread, . - __osCleanupThread
