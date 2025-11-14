glabel func_801EAB98_ovl10
/* 1DB908 801EAB98 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1DB90C 801EAB9C AFB1001C */  sw    $s1, 0x1c($sp)
/* 1DB910 801EABA0 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1DB914 801EABA4 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1DB918 801EABA8 8E220000 */  lw    $v0, ($s1)
/* 1DB91C 801EABAC AFBF0024 */  sw    $ra, 0x24($sp)
/* 1DB920 801EABB0 AFB20020 */  sw    $s2, 0x20($sp)
/* 1DB924 801EABB4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1DB928 801EABB8 AFA40058 */  sw    $a0, 0x58($sp)
/* 1DB92C 801EABBC 8C4E0000 */  lw    $t6, ($v0)
/* 1DB930 801EABC0 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DB934 801EABC4 3C12800F */  lui   $s2, %hi(D_800E9E20) # $s2, 0x800f
/* 1DB938 801EABC8 000E7880 */  sll   $t7, $t6, 2
/* 1DB93C 801EABCC 002F0821 */  addu  $at, $at, $t7
/* 1DB940 801EABD0 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1DB944 801EABD4 8C580000 */  lw    $t8, ($v0)
/* 1DB948 801EABD8 26529E20 */  addiu $s2, %lo(D_800E9E20) # addiu $s2, $s2, -0x61e0
/* 1DB94C 801EABDC 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1DB950 801EABE0 0018C880 */  sll   $t9, $t8, 2
/* 1DB954 801EABE4 02594021 */  addu  $t0, $s2, $t9
/* 1DB958 801EABE8 AD000000 */  sw    $zero, ($t0)
/* 1DB95C 801EABEC 8C4A0000 */  lw    $t2, ($v0)
/* 1DB960 801EABF0 2409FFFF */  li    $t1, -1
/* 1DB964 801EABF4 240E0001 */  li    $t6, 1
/* 1DB968 801EABF8 000A5880 */  sll   $t3, $t2, 2
/* 1DB96C 801EABFC 002B0821 */  addu  $at, $at, $t3
/* 1DB970 801EAC00 AC299FE0 */ sw $t1, %lo(D_800E9FE0)($at)
/* 1DB974 801EAC04 8C4C0000 */  lw    $t4, ($v0)
/* 1DB978 801EAC08 3C01800F */ lui $at, %hi(D_800E9560)
/* 1DB97C 801EAC0C 3C040001 */  lui   $a0, (0x0001036F >> 16) # lui $a0, 1
/* 1DB980 801EAC10 000C6880 */  sll   $t5, $t4, 2
/* 1DB984 801EAC14 002D0821 */  addu  $at, $at, $t5
/* 1DB988 801EAC18 AC209560 */ sw $zero, %lo(D_800E9560)($at)
/* 1DB98C 801EAC1C 8C4F0000 */  lw    $t7, ($v0)
/* 1DB990 801EAC20 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DB994 801EAC24 3484036F */  ori   $a0, (0x0001036F & 0xFFFF) # ori $a0, $a0, 0x36f
/* 1DB998 801EAC28 000FC080 */  sll   $t8, $t7, 2
/* 1DB99C 801EAC2C 00380821 */  addu  $at, $at, $t8
/* 1DB9A0 801EAC30 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1DB9A4 801EAC34 8C590000 */  lw    $t9, ($v0)
/* 1DB9A8 801EAC38 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1DB9AC 801EAC3C 44812000 */  mtc1  $at, $f4
/* 1DB9B0 801EAC40 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DB9B4 801EAC44 00194080 */  sll   $t0, $t9, 2
/* 1DB9B8 801EAC48 00280821 */  addu  $at, $at, $t0
/* 1DB9BC 801EAC4C 0C02A7A9 */  jal   func_800A9EA4
/* 1DB9C0 801EAC50 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1DB9C4 801EAC54 3C040001 */  lui   $a0, (0x0001036E >> 16) # lui $a0, 1
/* 1DB9C8 801EAC58 3484036E */  ori   $a0, (0x0001036E & 0xFFFF) # ori $a0, $a0, 0x36e
/* 1DB9CC 801EAC5C 0C02AA19 */  jal   func_800AA864
/* 1DB9D0 801EAC60 24050001 */   li    $a1, 1
/* 1DB9D4 801EAC64 3C040001 */  lui   $a0, (0x00010396 >> 16) # lui $a0, 1
/* 1DB9D8 801EAC68 0C02A7A9 */  jal   func_800A9EA4
/* 1DB9DC 801EAC6C 34840396 */   ori   $a0, (0x00010396 & 0xFFFF) # ori $a0, $a0, 0x396
/* 1DB9E0 801EAC70 3C040001 */  lui   $a0, (0x00010395 >> 16) # lui $a0, 1
/* 1DB9E4 801EAC74 34840395 */  ori   $a0, (0x00010395 & 0xFFFF) # ori $a0, $a0, 0x395
/* 1DB9E8 801EAC78 0C02AA19 */  jal   func_800AA864
/* 1DB9EC 801EAC7C 24050002 */   li    $a1, 2
/* 1DB9F0 801EAC80 3C040001 */  lui   $a0, (0x0001037E >> 16) # lui $a0, 1
/* 1DB9F4 801EAC84 0C02A7A9 */  jal   func_800A9EA4
/* 1DB9F8 801EAC88 3484037E */   ori   $a0, (0x0001037E & 0xFFFF) # ori $a0, $a0, 0x37e
/* 1DB9FC 801EAC8C 3C040001 */  lui   $a0, (0x0001037D >> 16) # lui $a0, 1
/* 1DBA00 801EAC90 3484037D */  ori   $a0, (0x0001037D & 0xFFFF) # ori $a0, $a0, 0x37d
/* 1DBA04 801EAC94 0C02AA19 */  jal   func_800AA864
/* 1DBA08 801EAC98 24050001 */   li    $a1, 1
/* 1DBA0C 801EAC9C 3C040001 */  lui   $a0, (0x00010380 >> 16) # lui $a0, 1
/* 1DBA10 801EACA0 0C02A7A9 */  jal   func_800A9EA4
/* 1DBA14 801EACA4 34840380 */   ori   $a0, (0x00010380 & 0xFFFF) # ori $a0, $a0, 0x380
/* 1DBA18 801EACA8 3C040001 */  lui   $a0, (0x0001037F >> 16) # lui $a0, 1
/* 1DBA1C 801EACAC 0C02A7A9 */  jal   func_800A9EA4
/* 1DBA20 801EACB0 3484037F */   ori   $a0, (0x0001037F & 0xFFFF) # ori $a0, $a0, 0x37f
/* 1DBA24 801EACB4 0C0798F9 */  jal   func_801E63E4_ovl10
/* 1DBA28 801EACB8 27A40050 */   addiu $a0, $sp, 0x50
/* 1DBA2C 801EACBC 8E220000 */  lw    $v0, ($s1)
/* 1DBA30 801EACC0 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 1DBA34 801EACC4 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 1DBA38 801EACC8 8C4A0000 */  lw    $t2, ($v0)
/* 1DBA3C 801EACCC 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 1DBA40 801EACD0 44800000 */  mtc1  $zero, $f0
/* 1DBA44 801EACD4 000A4880 */  sll   $t1, $t2, 2
/* 1DBA48 801EACD8 00695821 */  addu  $t3, $v1, $t1
/* 1DBA4C 801EACDC E5660000 */  swc1  $f6, ($t3)
/* 1DBA50 801EACE0 8C4D0000 */  lw    $t5, ($v0)
/* 1DBA54 801EACE4 93A50054 */  lbu   $a1, 0x54($sp)
/* 1DBA58 801EACE8 3C06BECC */  lui   $a2, (0xBECCCCCD >> 16) # lui $a2, 0xbecc
/* 1DBA5C 801EACEC 000D7880 */  sll   $t7, $t5, 2
/* 1DBA60 801EACF0 006F7021 */  addu  $t6, $v1, $t7
/* 1DBA64 801EACF4 C5C80000 */  lwc1  $f8, ($t6)
/* 1DBA68 801EACF8 34C6CCCD */  ori   $a2, (0xBECCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 1DBA6C 801EACFC 27A40040 */  addiu $a0, $sp, 0x40
/* 1DBA70 801EAD00 E7A00044 */  swc1  $f0, 0x44($sp)
/* 1DBA74 801EAD04 E7A00048 */  swc1  $f0, 0x48($sp)
/* 1DBA78 801EAD08 00A08025 */  move  $s0, $a1
/* 1DBA7C 801EAD0C 0C0796C2 */  jal   func_801E5B08_ovl10
/* 1DBA80 801EAD10 E7A80040 */   swc1  $f8, 0x40($sp)
/* 1DBA84 801EAD14 8E380000 */  lw    $t8, ($s1)
/* 1DBA88 801EAD18 8F190000 */  lw    $t9, ($t8)
/* 1DBA8C 801EAD1C 00194080 */  sll   $t0, $t9, 2
/* 1DBA90 801EAD20 02485021 */  addu  $t2, $s2, $t0
/* 1DBA94 801EAD24 8D490000 */  lw    $t1, ($t2)
/* 1DBA98 801EAD28 5520000D */  bnezl $t1, .L801EAD60_ovl10
/* 1DBA9C 801EAD2C 3C040001 */   lui   $a0, 1
/* 1DBAA0 801EAD30 2610FFFF */  addiu $s0, $s0, -1
.L801EAD34_ovl10:
/* 1DBAA4 801EAD34 321000FF */  andi  $s0, $s0, 0xff
/* 1DBAA8 801EAD38 0C002DAF */  jal   finish_current_thread
/* 1DBAAC 801EAD3C 24040001 */   li    $a0, 1
/* 1DBAB0 801EAD40 8E2B0000 */  lw    $t3, ($s1)
/* 1DBAB4 801EAD44 8D6D0000 */  lw    $t5, ($t3)
/* 1DBAB8 801EAD48 000D7880 */  sll   $t7, $t5, 2
/* 1DBABC 801EAD4C 024F7021 */  addu  $t6, $s2, $t7
/* 1DBAC0 801EAD50 8DCC0000 */  lw    $t4, ($t6)
/* 1DBAC4 801EAD54 5180FFF7 */  beql  $t4, $zero, .L801EAD34_ovl10
/* 1DBAC8 801EAD58 2610FFFF */   addiu $s0, $s0, -1
/* 1DBACC 801EAD5C 3C040001 */  lui   $a0, (0x00010382 >> 16) # lui $a0, 1
.L801EAD60_ovl10:
/* 1DBAD0 801EAD60 0C02A7A9 */  jal   func_800A9EA4
/* 1DBAD4 801EAD64 34840382 */   ori   $a0, (0x00010382 & 0xFFFF) # ori $a0, $a0, 0x382
/* 1DBAD8 801EAD68 3C040001 */  lui   $a0, (0x00010381 >> 16) # lui $a0, 1
/* 1DBADC 801EAD6C 0C02A7A9 */  jal   func_800A9EA4
/* 1DBAE0 801EAD70 34840381 */   ori   $a0, (0x00010381 & 0xFFFF) # ori $a0, $a0, 0x381
/* 1DBAE4 801EAD74 0C002DAF */  jal   finish_current_thread
/* 1DBAE8 801EAD78 02002025 */   move  $a0, $s0
/* 1DBAEC 801EAD7C 8E220000 */  lw    $v0, ($s1)
/* 1DBAF0 801EAD80 44805000 */  mtc1  $zero, $f10
/* 1DBAF4 801EAD84 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 1DBAF8 801EAD88 8C580000 */  lw    $t8, ($v0)
/* 1DBAFC 801EAD8C 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 1DBB00 801EAD90 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DBB04 801EAD94 0018C880 */  sll   $t9, $t8, 2
/* 1DBB08 801EAD98 00994021 */  addu  $t0, $a0, $t9
/* 1DBB0C 801EAD9C E50A0000 */  swc1  $f10, ($t0)
/* 1DBB10 801EADA0 8C430000 */  lw    $v1, ($v0)
/* 1DBB14 801EADA4 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 1DBB18 801EADA8 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 1DBB1C 801EADAC 00031880 */  sll   $v1, $v1, 2
/* 1DBB20 801EADB0 00835021 */  addu  $t2, $a0, $v1
/* 1DBB24 801EADB4 C5400000 */  lwc1  $f0, ($t2)
/* 1DBB28 801EADB8 00230821 */  addu  $at, $at, $v1
/* 1DBB2C 801EADBC E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1DBB30 801EADC0 8C490000 */  lw    $t1, ($v0)
/* 1DBB34 801EADC4 3C01800E */ lui $at, %hi(D_800E3590)
/* 1DBB38 801EADC8 00095880 */  sll   $t3, $t1, 2
/* 1DBB3C 801EADCC 002B0821 */  addu  $at, $at, $t3
/* 1DBB40 801EADD0 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1DBB44 801EADD4 8C4D0000 */  lw    $t5, ($v0)
/* 1DBB48 801EADD8 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1DBB4C 801EADDC 000D7880 */  sll   $t7, $t5, 2
/* 1DBB50 801EADE0 002F0821 */  addu  $at, $at, $t7
/* 1DBB54 801EADE4 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1DBB58 801EADE8 8C4E0000 */  lw    $t6, ($v0)
/* 1DBB5C 801EADEC 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DBB60 801EADF0 000E6080 */  sll   $t4, $t6, 2
/* 1DBB64 801EADF4 002C0821 */  addu  $at, $at, $t4
/* 1DBB68 801EADF8 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1DBB6C 801EADFC 8C580000 */  lw    $t8, ($v0)
/* 1DBB70 801EAE00 3C01800E */ lui $at, %hi(D_800E3050)
/* 1DBB74 801EAE04 240E0001 */  li    $t6, 1
/* 1DBB78 801EAE08 0018C880 */  sll   $t9, $t8, 2
/* 1DBB7C 801EAE0C 00390821 */  addu  $at, $at, $t9
/* 1DBB80 801EAE10 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1DBB84 801EAE14 8C480000 */  lw    $t0, ($v0)
/* 1DBB88 801EAE18 3C01801F */  lui   $at, %hi(D_801F4B70_ovl10) # $at, 0x801f
/* 1DBB8C 801EAE1C C4304B70 */  lwc1  $f16, %lo(D_801F4B70_ovl10)($at)
/* 1DBB90 801EAE20 00085080 */  sll   $t2, $t0, 2
/* 1DBB94 801EAE24 00AA4821 */  addu  $t1, $a1, $t2
/* 1DBB98 801EAE28 E5300000 */  swc1  $f16, ($t1)
/* 1DBB9C 801EAE2C 8C430000 */  lw    $v1, ($v0)
/* 1DBBA0 801EAE30 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DBBA4 801EAE34 3C19801E */  lui   $t9, %hi(func_801DB1E0) # $t9, 0x801e
/* 1DBBA8 801EAE38 00031880 */  sll   $v1, $v1, 2
/* 1DBBAC 801EAE3C 00A35821 */  addu  $t3, $a1, $v1
/* 1DBBB0 801EAE40 C5620000 */  lwc1  $f2, ($t3)
/* 1DBBB4 801EAE44 00230821 */  addu  $at, $at, $v1
/* 1DBBB8 801EAE48 2739B1E0 */  addiu $t9, %lo(func_801DB1E0) # addiu $t9, $t9, -0x4e20
/* 1DBBBC 801EAE4C E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1DBBC0 801EAE50 8C4D0000 */  lw    $t5, ($v0)
/* 1DBBC4 801EAE54 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1DBBC8 801EAE58 000D7880 */  sll   $t7, $t5, 2
/* 1DBBCC 801EAE5C 002F0821 */  addu  $at, $at, $t7
/* 1DBBD0 801EAE60 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1DBBD4 801EAE64 8C4C0000 */  lw    $t4, ($v0)
/* 1DBBD8 801EAE68 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DBBDC 801EAE6C 000CC080 */  sll   $t8, $t4, 2
/* 1DBBE0 801EAE70 00380821 */  addu  $at, $at, $t8
/* 1DBBE4 801EAE74 AC2E9C60 */ sw $t6, %lo(D_800E9C60)($at)
/* 1DBBE8 801EAE78 8C480000 */  lw    $t0, ($v0)
/* 1DBBEC 801EAE7C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DBBF0 801EAE80 00085080 */  sll   $t2, $t0, 2
/* 1DBBF4 801EAE84 002A0821 */  addu  $at, $at, $t2
/* 1DBBF8 801EAE88 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 1DBBFC 801EAE8C 8C490000 */  lw    $t1, ($v0)
/* 1DBC00 801EAE90 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 1DBC04 801EAE94 00095880 */  sll   $t3, $t1, 2
/* 1DBC08 801EAE98 002B0821 */  addu  $at, $at, $t3
/* 1DBC0C 801EAE9C 0C07973C */  jal   func_801E5CF0_ovl10
/* 1DBC10 801EAEA0 C42CA8A0 */ lwc1 $f12, %lo(D_800EA8A0)($at)
/* 1DBC14 801EAEA4 8E2D0000 */  lw    $t5, ($s1)
/* 1DBC18 801EAEA8 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1DBC1C 801EAEAC 44819000 */  mtc1  $at, $f18
/* 1DBC20 801EAEB0 8DAF0000 */  lw    $t7, ($t5)
/* 1DBC24 801EAEB4 3C01800F */ lui $at, %hi(D_800EAA60)
/* 1DBC28 801EAEB8 240401CA */  li    $a0, 458
/* 1DBC2C 801EAEBC 000F6080 */  sll   $t4, $t7, 2
/* 1DBC30 801EAEC0 002C0821 */  addu  $at, $at, $t4
/* 1DBC34 801EAEC4 0C029D9E */  jal   play_sound
/* 1DBC38 801EAEC8 E432AA60 */ swc1 $f18, %lo(D_800EAA60)($at)
/* 1DBC3C 801EAECC 8E380000 */  lw    $t8, ($s1)
/* 1DBC40 801EAED0 3C01800F */ lui $at, %hi(D_800E8920)
/* 1DBC44 801EAED4 240E0001 */  li    $t6, 1
/* 1DBC48 801EAED8 8F080000 */  lw    $t0, ($t8)
/* 1DBC4C 801EAEDC 3C040001 */  lui   $a0, (0x00010386 >> 16) # lui $a0, 1
/* 1DBC50 801EAEE0 34840386 */  ori   $a0, (0x00010386 & 0xFFFF) # ori $a0, $a0, 0x386
/* 1DBC54 801EAEE4 0008C880 */  sll   $t9, $t0, 2
/* 1DBC58 801EAEE8 00390821 */  addu  $at, $at, $t9
/* 1DBC5C 801EAEEC 0C02A7A9 */  jal   func_800A9EA4
/* 1DBC60 801EAEF0 AC2E8920 */ sw $t6, %lo(D_800E8920)($at)
/* 1DBC64 801EAEF4 3C040001 */  lui   $a0, (0x00010385 >> 16) # lui $a0, 1
/* 1DBC68 801EAEF8 34840385 */  ori   $a0, (0x00010385 & 0xFFFF) # ori $a0, $a0, 0x385
/* 1DBC6C 801EAEFC 24050000 */  li    $a1, 0
/* 1DBC70 801EAF00 0C02A7B1 */  jal   func_800A9EC4
/* 1DBC74 801EAF04 24060001 */   li    $a2, 1
/* 1DBC78 801EAF08 8E290000 */  lw    $t1, ($s1)
/* 1DBC7C 801EAF0C 240A0002 */  li    $t2, 2
/* 1DBC80 801EAF10 8D2B0000 */  lw    $t3, ($t1)
/* 1DBC84 801EAF14 000B6880 */  sll   $t5, $t3, 2
/* 1DBC88 801EAF18 024D7821 */  addu  $t7, $s2, $t5
/* 1DBC8C 801EAF1C 0C02BE85 */  jal   func_800AFA14
/* 1DBC90 801EAF20 ADEA0000 */   sw    $t2, ($t7)
/* 1DBC94 801EAF24 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1DBC98 801EAF28 8FB00018 */  lw    $s0, 0x18($sp)
/* 1DBC9C 801EAF2C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1DBCA0 801EAF30 8FB20020 */  lw    $s2, 0x20($sp)
/* 1DBCA4 801EAF34 03E00008 */  jr    $ra
/* 1DBCA8 801EAF38 27BD0058 */   addiu $sp, $sp, 0x58
.type func_801EAB98_ovl10, @function
.size func_801EAB98_ovl10, . - func_801EAB98_ovl10
