glabel func_801DDB88_ovl10
/* 1CE8F8 801DDB88 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1CE8FC 801DDB8C AFB00014 */  sw    $s0, 0x14($sp)
/* 1CE900 801DDB90 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 1CE904 801DDB94 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 1CE908 801DDB98 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1CE90C 801DDB9C AFB30020 */  sw    $s3, 0x20($sp)
/* 1CE910 801DDBA0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 1CE914 801DDBA4 AFB10018 */  sw    $s1, 0x18($sp)
/* 1CE918 801DDBA8 AFA40028 */  sw    $a0, 0x28($sp)
/* 1CE91C 801DDBAC 0C02BB30 */  jal   func_800AECC0
/* 1CE920 801DDBB0 C60C0000 */   lwc1  $f12, ($s0)
/* 1CE924 801DDBB4 0C02BB48 */  jal   func_800AED20
/* 1CE928 801DDBB8 C60C0000 */   lwc1  $f12, ($s0)
/* 1CE92C 801DDBBC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1CE930 801DDBC0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1CE934 801DDBC4 8E240000 */  lw    $a0, ($s1)
/* 1CE938 801DDBC8 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1CE93C 801DDBCC 240E0005 */  li    $t6, 5
/* 1CE940 801DDBD0 8C8F0000 */  lw    $t7, ($a0)
/* 1CE944 801DDBD4 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1CE948 801DDBD8 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1CE94C 801DDBDC 000FC080 */  sll   $t8, $t7, 2
/* 1CE950 801DDBE0 00380821 */  addu  $at, $at, $t8
/* 1CE954 801DDBE4 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1CE958 801DDBE8 8C880000 */  lw    $t0, ($a0)
/* 1CE95C 801DDBEC 3C19801F */  lui   $t9, %hi(D_801F3A18_ovl10) # $t9, 0x801f
/* 1CE960 801DDBF0 27393A18 */  addiu $t9, %lo(D_801F3A18_ovl10) # addiu $t9, $t9, 0x3a18
/* 1CE964 801DDBF4 00084880 */  sll   $t1, $t0, 2
/* 1CE968 801DDBF8 00495021 */  addu  $t2, $v0, $t1
/* 1CE96C 801DDBFC 8D4B0000 */  lw    $t3, ($t2)
/* 1CE970 801DDC00 3C0C801F */  lui   $t4, %hi(D_801F4094_ovl10) # $t4, 0x801f
/* 1CE974 801DDC04 258C4094 */  addiu $t4, %lo(D_801F4094_ovl10) # addiu $t4, $t4, 0x4094
/* 1CE978 801DDC08 AD79008C */  sw    $t9, 0x8c($t3)
/* 1CE97C 801DDC0C 8E2D0000 */  lw    $t5, ($s1)
/* 1CE980 801DDC10 8DAF0000 */  lw    $t7, ($t5)
/* 1CE984 801DDC14 000F7080 */  sll   $t6, $t7, 2
/* 1CE988 801DDC18 004EC021 */  addu  $t8, $v0, $t6
/* 1CE98C 801DDC1C 8F080000 */  lw    $t0, ($t8)
/* 1CE990 801DDC20 0C02CCFD */  jal   func_800B33F4
/* 1CE994 801DDC24 AD0C0098 */   sw    $t4, 0x98($t0)
/* 1CE998 801DDC28 8E290000 */  lw    $t1, ($s1)
/* 1CE99C 801DDC2C 3C12800F */  lui   $s2, %hi(D_800EA360) # $s2, 0x800f
/* 1CE9A0 801DDC30 2652A360 */  addiu $s2, %lo(D_800EA360) # addiu $s2, $s2, -0x5ca0
/* 1CE9A4 801DDC34 8D250000 */  lw    $a1, ($t1)
/* 1CE9A8 801DDC38 00052880 */  sll   $a1, $a1, 2
/* 1CE9AC 801DDC3C 02455021 */  addu  $t2, $s2, $a1
/* 1CE9B0 801DDC40 8D420000 */  lw    $v0, ($t2)
/* 1CE9B4 801DDC44 1040000A */  beqz  $v0, .L801DDC70_ovl10
/* 1CE9B8 801DDC48 00000000 */   nop   
/* 1CE9BC 801DDC4C 0C0287CC */  jal   func_800A1F30
/* 1CE9C0 801DDC50 00402025 */   move  $a0, $v0
/* 1CE9C4 801DDC54 8E240000 */  lw    $a0, ($s1)
/* 1CE9C8 801DDC58 8C990000 */  lw    $t9, ($a0)
/* 1CE9CC 801DDC5C 00195880 */  sll   $t3, $t9, 2
/* 1CE9D0 801DDC60 024B6821 */  addu  $t5, $s2, $t3
/* 1CE9D4 801DDC64 ADA00000 */  sw    $zero, ($t5)
/* 1CE9D8 801DDC68 8C850000 */  lw    $a1, ($a0)
/* 1CE9DC 801DDC6C 00052880 */  sll   $a1, $a1, 2
.L801DDC70_ovl10:
/* 1CE9E0 801DDC70 3C10800F */  lui   $s0, %hi(D_800EA520) # $s0, 0x800f
/* 1CE9E4 801DDC74 2610A520 */  addiu $s0, %lo(D_800EA520) # addiu $s0, $s0, -0x5ae0
/* 1CE9E8 801DDC78 02057821 */  addu  $t7, $s0, $a1
/* 1CE9EC 801DDC7C 3C040001 */  lui   $a0, (0x000102BF >> 16) # lui $a0, 1
/* 1CE9F0 801DDC80 ADE00000 */  sw    $zero, ($t7)
/* 1CE9F4 801DDC84 0C02A806 */  jal   func_800AA018
/* 1CE9F8 801DDC88 348402BF */   ori   $a0, (0x000102BF & 0xFFFF) # ori $a0, $a0, 0x2bf
/* 1CE9FC 801DDC8C 3C040001 */  lui   $a0, (0x000102BE >> 16) # lui $a0, 1
/* 1CEA00 801DDC90 0C02A855 */  jal   func_800AA154
/* 1CEA04 801DDC94 348402BE */   ori   $a0, (0x000102BE & 0xFFFF) # ori $a0, $a0, 0x2be
/* 1CEA08 801DDC98 8E2E0000 */  lw    $t6, ($s1)
/* 1CEA0C 801DDC9C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1CEA10 801DDCA0 44804000 */  mtc1  $zero, $f8
/* 1CEA14 801DDCA4 8DC50000 */  lw    $a1, ($t6)
/* 1CEA18 801DDCA8 3C040001 */  lui   $a0, (0x000102C1 >> 16) # lui $a0, 1
/* 1CEA1C 801DDCAC 348402C1 */  ori   $a0, (0x000102C1 & 0xFFFF) # ori $a0, $a0, 0x2c1
/* 1CEA20 801DDCB0 00052880 */  sll   $a1, $a1, 2
/* 1CEA24 801DDCB4 00250821 */  addu  $at, $at, $a1
/* 1CEA28 801DDCB8 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1CEA2C 801DDCBC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1CEA30 801DDCC0 44814800 */  mtc1  $at, $f9
/* 1CEA34 801DDCC4 460021A1 */  cvt.d.s $f6, $f4
/* 1CEA38 801DDCC8 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1CEA3C 801DDCCC 46283282 */  mul.d $f10, $f6, $f8
/* 1CEA40 801DDCD0 00250821 */  addu  $at, $at, $a1
/* 1CEA44 801DDCD4 46205420 */  cvt.s.d $f16, $f10
/* 1CEA48 801DDCD8 0C02A806 */  jal   func_800AA018
/* 1CEA4C 801DDCDC E43064D0 */ swc1 $f16, %lo(D_800E64D0)($at)
/* 1CEA50 801DDCE0 3C040001 */  lui   $a0, (0x000102C0 >> 16) # lui $a0, 1
/* 1CEA54 801DDCE4 0C02A806 */  jal   func_800AA018
/* 1CEA58 801DDCE8 348402C0 */   ori   $a0, (0x000102C0 & 0xFFFF) # ori $a0, $a0, 0x2c0
/* 1CEA5C 801DDCEC 24040006 */  li    $a0, 6
/* 1CEA60 801DDCF0 24050002 */  li    $a1, 2
/* 1CEA64 801DDCF4 0C02A08D */  jal   func_800A8234
/* 1CEA68 801DDCF8 24060002 */   li    $a2, 2
/* 1CEA6C 801DDCFC 8E380000 */  lw    $t8, ($s1)
/* 1CEA70 801DDD00 240401DD */  li    $a0, 477
/* 1CEA74 801DDD04 8F0C0000 */  lw    $t4, ($t8)
/* 1CEA78 801DDD08 000C4080 */  sll   $t0, $t4, 2
/* 1CEA7C 801DDD0C 02484821 */  addu  $t1, $s2, $t0
/* 1CEA80 801DDD10 0C029D9E */  jal   play_sound
/* 1CEA84 801DDD14 AD220000 */   sw    $v0, ($t1)
/* 1CEA88 801DDD18 8E240000 */  lw    $a0, ($s1)
/* 1CEA8C 801DDD1C 240A0064 */  li    $t2, 100
/* 1CEA90 801DDD20 24130076 */  li    $s3, 118
/* 1CEA94 801DDD24 8C990000 */  lw    $t9, ($a0)
/* 1CEA98 801DDD28 00195880 */  sll   $t3, $t9, 2
/* 1CEA9C 801DDD2C 020B6821 */  addu  $t5, $s0, $t3
/* 1CEAA0 801DDD30 ADAA0000 */  sw    $t2, ($t5)
/* 1CEAA4 801DDD34 8C850000 */  lw    $a1, ($a0)
/* 1CEAA8 801DDD38 00052880 */  sll   $a1, $a1, 2
/* 1CEAAC 801DDD3C 02057821 */  addu  $t7, $s0, $a1
/* 1CEAB0 801DDD40 8DE30000 */  lw    $v1, ($t7)
/* 1CEAB4 801DDD44 28610078 */  slti  $at, $v1, 0x78
/* 1CEAB8 801DDD48 1020001D */  beqz  $at, .L801DDDC0_ovl10
/* 1CEABC 801DDD4C 00000000 */   nop   
.L801DDD50_ovl10:
/* 1CEAC0 801DDD50 1663000B */  bne   $s3, $v1, .L801DDD80_ovl10
/* 1CEAC4 801DDD54 02457021 */   addu  $t6, $s2, $a1
/* 1CEAC8 801DDD58 8DC20000 */  lw    $v0, ($t6)
/* 1CEACC 801DDD5C 10400008 */  beqz  $v0, .L801DDD80_ovl10
/* 1CEAD0 801DDD60 00000000 */   nop   
/* 1CEAD4 801DDD64 0C0287CC */  jal   func_800A1F30
/* 1CEAD8 801DDD68 00402025 */   move  $a0, $v0
/* 1CEADC 801DDD6C 8E380000 */  lw    $t8, ($s1)
/* 1CEAE0 801DDD70 8F0C0000 */  lw    $t4, ($t8)
/* 1CEAE4 801DDD74 000C4080 */  sll   $t0, $t4, 2
/* 1CEAE8 801DDD78 02484821 */  addu  $t1, $s2, $t0
/* 1CEAEC 801DDD7C AD200000 */  sw    $zero, ($t1)
.L801DDD80_ovl10:
/* 1CEAF0 801DDD80 0C02BC9F */  jal   func_800AF27C
/* 1CEAF4 801DDD84 00000000 */   nop   
/* 1CEAF8 801DDD88 8E240000 */  lw    $a0, ($s1)
/* 1CEAFC 801DDD8C 8C990000 */  lw    $t9, ($a0)
/* 1CEB00 801DDD90 00195880 */  sll   $t3, $t9, 2
/* 1CEB04 801DDD94 020B1021 */  addu  $v0, $s0, $t3
/* 1CEB08 801DDD98 8C4A0000 */  lw    $t2, ($v0)
/* 1CEB0C 801DDD9C 254D0001 */  addiu $t5, $t2, 1
/* 1CEB10 801DDDA0 AC4D0000 */  sw    $t5, ($v0)
/* 1CEB14 801DDDA4 8C850000 */  lw    $a1, ($a0)
/* 1CEB18 801DDDA8 00052880 */  sll   $a1, $a1, 2
/* 1CEB1C 801DDDAC 02057821 */  addu  $t7, $s0, $a1
/* 1CEB20 801DDDB0 8DE30000 */  lw    $v1, ($t7)
/* 1CEB24 801DDDB4 28610078 */  slti  $at, $v1, 0x78
/* 1CEB28 801DDDB8 1420FFE5 */  bnez  $at, .L801DDD50_ovl10
/* 1CEB2C 801DDDBC 00000000 */   nop   
.L801DDDC0_ovl10:
/* 1CEB30 801DDDC0 0C029D9E */  jal   play_sound
/* 1CEB34 801DDDC4 240401DF */   li    $a0, 479
/* 1CEB38 801DDDC8 8E240000 */  lw    $a0, ($s1)
/* 1CEB3C 801DDDCC 44809000 */  mtc1  $zero, $f18
/* 1CEB40 801DDDD0 3C03800E */  lui   $v1, %hi(D_800E6690) # $v1, 0x800e
/* 1CEB44 801DDDD4 8C8E0000 */  lw    $t6, ($a0)
/* 1CEB48 801DDDD8 24636690 */  addiu $v1, %lo(D_800E6690) # addiu $v1, $v1, 0x6690
/* 1CEB4C 801DDDDC 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1CEB50 801DDDE0 000EC080 */  sll   $t8, $t6, 2
/* 1CEB54 801DDDE4 00786021 */  addu  $t4, $v1, $t8
/* 1CEB58 801DDDE8 E5920000 */  swc1  $f18, ($t4)
/* 1CEB5C 801DDDEC 8C850000 */  lw    $a1, ($a0)
/* 1CEB60 801DDDF0 00052880 */  sll   $a1, $a1, 2
/* 1CEB64 801DDDF4 00654021 */  addu  $t0, $v1, $a1
/* 1CEB68 801DDDF8 C5040000 */  lwc1  $f4, ($t0)
/* 1CEB6C 801DDDFC 00250821 */  addu  $at, $at, $a1
/* 1CEB70 801DDE00 E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 1CEB74 801DDE04 8C890000 */  lw    $t1, ($a0)
/* 1CEB78 801DDE08 3C01801F */  lui   $at, %hi(D_801F49C4_ovl10) # $at, 0x801f
/* 1CEB7C 801DDE0C C42649C4 */  lwc1  $f6, %lo(D_801F49C4_ovl10)($at)
/* 1CEB80 801DDE10 3C01800E */ lui $at, %hi(D_800E6850)
/* 1CEB84 801DDE14 0009C880 */  sll   $t9, $t1, 2
/* 1CEB88 801DDE18 00390821 */  addu  $at, $at, $t9
/* 1CEB8C 801DDE1C E4266850 */ swc1 $f6, %lo(D_800E6850)($at)
/* 1CEB90 801DDE20 8C850000 */  lw    $a1, ($a0)
/* 1CEB94 801DDE24 00052880 */  sll   $a1, $a1, 2
/* 1CEB98 801DDE28 02455821 */  addu  $t3, $s2, $a1
/* 1CEB9C 801DDE2C 8D620000 */  lw    $v0, ($t3)
/* 1CEBA0 801DDE30 5040000B */  beql  $v0, $zero, .L801DDE60_ovl10
/* 1CEBA4 801DDE34 240E03E8 */   li    $t6, 1000
/* 1CEBA8 801DDE38 0C0287CC */  jal   func_800A1F30
/* 1CEBAC 801DDE3C 00402025 */   move  $a0, $v0
/* 1CEBB0 801DDE40 8E240000 */  lw    $a0, ($s1)
/* 1CEBB4 801DDE44 8C8A0000 */  lw    $t2, ($a0)
/* 1CEBB8 801DDE48 000A6880 */  sll   $t5, $t2, 2
/* 1CEBBC 801DDE4C 024D7821 */  addu  $t7, $s2, $t5
/* 1CEBC0 801DDE50 ADE00000 */  sw    $zero, ($t7)
/* 1CEBC4 801DDE54 8C850000 */  lw    $a1, ($a0)
/* 1CEBC8 801DDE58 00052880 */  sll   $a1, $a1, 2
/* 1CEBCC 801DDE5C 240E03E8 */  li    $t6, 1000
.L801DDE60_ovl10:
/* 1CEBD0 801DDE60 0205C021 */  addu  $t8, $s0, $a1
/* 1CEBD4 801DDE64 3C040001 */  lui   $a0, (0x000102C7 >> 16) # lui $a0, 1
/* 1CEBD8 801DDE68 AF0E0000 */  sw    $t6, ($t8)
/* 1CEBDC 801DDE6C 0C02A806 */  jal   func_800AA018
/* 1CEBE0 801DDE70 348402C7 */   ori   $a0, (0x000102C7 & 0xFFFF) # ori $a0, $a0, 0x2c7
/* 1CEBE4 801DDE74 3C040001 */  lui   $a0, (0x000102C6 >> 16) # lui $a0, 1
/* 1CEBE8 801DDE78 0C02A855 */  jal   func_800AA154
/* 1CEBEC 801DDE7C 348402C6 */   ori   $a0, (0x000102C6 & 0xFFFF) # ori $a0, $a0, 0x2c6
/* 1CEBF0 801DDE80 8E280000 */  lw    $t0, ($s1)
/* 1CEBF4 801DDE84 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1CEBF8 801DDE88 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CEBFC 801DDE8C 8D090000 */  lw    $t1, ($t0)
/* 1CEC00 801DDE90 240C0002 */  li    $t4, 2
/* 1CEC04 801DDE94 8FB10018 */  lw    $s1, 0x18($sp)
/* 1CEC08 801DDE98 0009C880 */  sll   $t9, $t1, 2
/* 1CEC0C 801DDE9C 00390821 */  addu  $at, $at, $t9
/* 1CEC10 801DDEA0 8FB00014 */  lw    $s0, 0x14($sp)
/* 1CEC14 801DDEA4 8FB2001C */  lw    $s2, 0x1c($sp)
/* 1CEC18 801DDEA8 8FB30020 */  lw    $s3, 0x20($sp)
/* 1CEC1C 801DDEAC AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
/* 1CEC20 801DDEB0 03E00008 */  jr    $ra
/* 1CEC24 801DDEB4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801DDB88_ovl10, @function
.size func_801DDB88_ovl10, . - func_801DDB88_ovl10
