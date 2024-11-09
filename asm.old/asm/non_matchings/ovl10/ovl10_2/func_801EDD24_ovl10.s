glabel func_801EDD24_ovl10
/* 1DEA94 801EDD24 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1DEA98 801EDD28 AFB20020 */  sw    $s2, 0x20($sp)
/* 1DEA9C 801EDD2C 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 1DEAA0 801EDD30 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 1DEAA4 801EDD34 8E4E0000 */  lw    $t6, ($s2)
/* 1DEAA8 801EDD38 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1DEAAC 801EDD3C AFB1001C */  sw    $s1, 0x1c($sp)
/* 1DEAB0 801EDD40 AFB00018 */  sw    $s0, 0x18($sp)
/* 1DEAB4 801EDD44 8DC50000 */  lw    $a1, ($t6)
/* 1DEAB8 801EDD48 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1DEABC 801EDD4C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DEAC0 801EDD50 00052880 */  sll   $a1, $a1, 2
/* 1DEAC4 801EDD54 02058021 */  addu  $s0, $s0, $a1
/* 1DEAC8 801EDD58 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1DEACC 801EDD5C 00808825 */  move  $s1, $a0
/* 1DEAD0 801EDD60 00250821 */  addu  $at, $at, $a1
/* 1DEAD4 801EDD64 240F0009 */  li    $t7, 9
/* 1DEAD8 801EDD68 3C18801F */  lui   $t8, %hi(D_801F4148_ovl10) # $t8, 0x801f
/* 1DEADC 801EDD6C AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DEAE0 801EDD70 27184148 */  addiu $t8, %lo(D_801F4148_ovl10) # addiu $t8, $t8, 0x4148
/* 1DEAE4 801EDD74 3C040001 */  lui   $a0, (0x000102A6 >> 16) # lui $a0, 1
/* 1DEAE8 801EDD78 348402A6 */  ori   $a0, (0x000102A6 & 0xFFFF) # ori $a0, $a0, 0x2a6
/* 1DEAEC 801EDD7C 0C02A806 */  jal   func_800AA018
/* 1DEAF0 801EDD80 AE180098 */   sw    $t8, 0x98($s0)
/* 1DEAF4 801EDD84 3C040001 */  lui   $a0, (0x000102A7 >> 16) # lui $a0, 1
/* 1DEAF8 801EDD88 0C02A806 */  jal   func_800AA018
/* 1DEAFC 801EDD8C 348402A7 */   ori   $a0, (0x000102A7 & 0xFFFF) # ori $a0, $a0, 0x2a7
/* 1DEB00 801EDD90 0C02CD48 */  jal   func_800B3520
/* 1DEB04 801EDD94 00000000 */   nop   
/* 1DEB08 801EDD98 0C002DAF */  jal   finish_current_thread
/* 1DEB0C 801EDD9C 2404000E */   li    $a0, 14
/* 1DEB10 801EDDA0 8E590000 */  lw    $t9, ($s2)
/* 1DEB14 801EDDA4 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DEB18 801EDDA8 8F250000 */  lw    $a1, ($t9)
/* 1DEB1C 801EDDAC 00052880 */  sll   $a1, $a1, 2
/* 1DEB20 801EDDB0 00250821 */  addu  $at, $at, $a1
/* 1DEB24 801EDDB4 C4206A10 */ lwc1 $f0, %lo(D_800E6A10)($at)
/* 1DEB28 801EDDB8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1DEB2C 801EDDBC 44812000 */  mtc1  $at, $f4
/* 1DEB30 801EDDC0 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1DEB34 801EDDC4 00250821 */  addu  $at, $at, $a1
/* 1DEB38 801EDDC8 46002032 */  c.eq.s $f4, $f0
/* 1DEB3C 801EDDCC 00000000 */  nop   
/* 1DEB40 801EDDD0 45020007 */  bc1fl .L801EDDF0_ovl10
/* 1DEB44 801EDDD4 3C01BF80 */   lui   $at, %hi(D_BF8025D0) # $at, 0xbf80
/* 1DEB48 801EDDD8 44803000 */  mtc1  $zero, $f6
/* 1DEB4C 801EDDDC C42825D0 */  lwc1  $f8, %lo(D_BF8025D0)($at)
/* 1DEB50 801EDDE0 4608303C */  c.lt.s $f6, $f8
/* 1DEB54 801EDDE4 00000000 */  nop   
/* 1DEB58 801EDDE8 4501000F */  bc1t  .L801EDE28_ovl10
/* 1DEB5C 801EDDEC 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
.L801EDDF0_ovl10:
/* 1DEB60 801EDDF0 44815000 */  mtc1  $at, $f10
/* 1DEB64 801EDDF4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1DEB68 801EDDF8 00250821 */  addu  $at, $at, $a1
/* 1DEB6C 801EDDFC 46005032 */  c.eq.s $f10, $f0
/* 1DEB70 801EDE00 00000000 */  nop   
/* 1DEB74 801EDE04 4502000B */  bc1fl .L801EDE34_ovl10
/* 1DEB78 801EDE08 9208003C */   lbu   $t0, 0x3c($s0)
/* 1DEB7C 801EDE0C C43025D0 */ lwc1 $f16, %lo(gEntitiesNextPosXArray)($at)
/* 1DEB80 801EDE10 44809000 */  mtc1  $zero, $f18
/* 1DEB84 801EDE14 00000000 */  nop   
/* 1DEB88 801EDE18 4612803C */  c.lt.s $f16, $f18
/* 1DEB8C 801EDE1C 00000000 */  nop   
/* 1DEB90 801EDE20 45020004 */  bc1fl .L801EDE34_ovl10
/* 1DEB94 801EDE24 9208003C */   lbu   $t0, 0x3c($s0)
.L801EDE28_ovl10:
/* 1DEB98 801EDE28 0C0667C7 */  jal   func_80199F1C_ovl10
/* 1DEB9C 801EDE2C 02202025 */   move  $a0, $s1
/* 1DEBA0 801EDE30 9208003C */  lbu   $t0, 0x3c($s0)
.L801EDE34_ovl10:
/* 1DEBA4 801EDE34 51000007 */  beql  $t0, $zero, .L801EDE54_ovl10
/* 1DEBA8 801EDE38 3C040001 */   lui   $a0, 1
.L801EDE3C_ovl10:
/* 1DEBAC 801EDE3C 0C002DAF */  jal   finish_current_thread
/* 1DEBB0 801EDE40 24040001 */   li    $a0, 1
/* 1DEBB4 801EDE44 9209003C */  lbu   $t1, 0x3c($s0)
/* 1DEBB8 801EDE48 1520FFFC */  bnez  $t1, .L801EDE3C_ovl10
/* 1DEBBC 801EDE4C 00000000 */   nop   
/* 1DEBC0 801EDE50 3C040001 */  lui   $a0, (0x0001027E >> 16) # lui $a0, 1
.L801EDE54_ovl10:
/* 1DEBC4 801EDE54 0C02A806 */  jal   func_800AA018
/* 1DEBC8 801EDE58 3484027E */   ori   $a0, (0x0001027E & 0xFFFF) # ori $a0, $a0, 0x27e
/* 1DEBCC 801EDE5C 3C040001 */  lui   $a0, (0x0001027F >> 16) # lui $a0, 1
/* 1DEBD0 801EDE60 0C02A806 */  jal   func_800AA018
/* 1DEBD4 801EDE64 3484027F */   ori   $a0, (0x0001027F & 0xFFFF) # ori $a0, $a0, 0x27f
/* 1DEBD8 801EDE68 0C002DAF */  jal   finish_current_thread
/* 1DEBDC 801EDE6C 2404000B */   li    $a0, 11
/* 1DEBE0 801EDE70 8E4A0000 */  lw    $t2, ($s2)
/* 1DEBE4 801EDE74 3C0C800E */  lui   $t4, %hi(D_800E0D50) # $t4, 0x800e
/* 1DEBE8 801EDE78 8D8C0D50 */  lw    $t4, %lo(D_800E0D50)($t4)
/* 1DEBEC 801EDE7C 8D4B0000 */  lw    $t3, ($t2)
/* 1DEBF0 801EDE80 240D0002 */  li    $t5, 2
/* 1DEBF4 801EDE84 3C01800F */  lui   $at, %hi(D_800EC2E0) # $at, 0x800f
/* 1DEBF8 801EDE88 156C0002 */  bne   $t3, $t4, .L801EDE94_ovl10
/* 1DEBFC 801EDE8C 00000000 */   nop   
/* 1DEC00 801EDE90 AC2DC2E0 */  sw    $t5, %lo(D_800EC2E0)($at)
.L801EDE94_ovl10:
/* 1DEC04 801EDE94 0C029D9E */  jal   play_sound
/* 1DEC08 801EDE98 240401EE */   li    $a0, 494
/* 1DEC0C 801EDE9C 8E430000 */  lw    $v1, ($s2)
/* 1DEC10 801EDEA0 3C10800F */  lui   $s0, %hi(D_800E9560) # $s0, 0x800f
/* 1DEC14 801EDEA4 26109560 */  addiu $s0, %lo(D_800E9560) # addiu $s0, $s0, -0x6aa0
/* 1DEC18 801EDEA8 8C6F0000 */  lw    $t7, ($v1)
/* 1DEC1C 801EDEAC 240E0001 */  li    $t6, 1
/* 1DEC20 801EDEB0 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 1DEC24 801EDEB4 000FC080 */  sll   $t8, $t7, 2
/* 1DEC28 801EDEB8 0218C821 */  addu  $t9, $s0, $t8
/* 1DEC2C 801EDEBC AF2E0000 */  sw    $t6, ($t9)
/* 1DEC30 801EDEC0 8C650000 */  lw    $a1, ($v1)
/* 1DEC34 801EDEC4 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 1DEC38 801EDEC8 00052880 */  sll   $a1, $a1, 2
/* 1DEC3C 801EDECC 02054021 */  addu  $t0, $s0, $a1
/* 1DEC40 801EDED0 8D090000 */  lw    $t1, ($t0)
/* 1DEC44 801EDED4 2921003C */  slti  $at, $t1, 0x3c
/* 1DEC48 801EDED8 50200016 */  beql  $at, $zero, .L801EDF34_ovl10
/* 1DEC4C 801EDEDC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 1DEC50 801EDEE0 8E2A0000 */  lw    $t2, ($s1)
.L801EDEE4_ovl10:
/* 1DEC54 801EDEE4 29410003 */  slti  $at, $t2, 3
/* 1DEC58 801EDEE8 50200012 */  beql  $at, $zero, .L801EDF34_ovl10
/* 1DEC5C 801EDEEC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 1DEC60 801EDEF0 0C002DAF */  jal   finish_current_thread
/* 1DEC64 801EDEF4 24040001 */   li    $a0, 1
/* 1DEC68 801EDEF8 8E430000 */  lw    $v1, ($s2)
/* 1DEC6C 801EDEFC 8C6B0000 */  lw    $t3, ($v1)
/* 1DEC70 801EDF00 000B6080 */  sll   $t4, $t3, 2
/* 1DEC74 801EDF04 020C1021 */  addu  $v0, $s0, $t4
/* 1DEC78 801EDF08 8C4D0000 */  lw    $t5, ($v0)
/* 1DEC7C 801EDF0C 25AF0001 */  addiu $t7, $t5, 1
/* 1DEC80 801EDF10 AC4F0000 */  sw    $t7, ($v0)
/* 1DEC84 801EDF14 8C650000 */  lw    $a1, ($v1)
/* 1DEC88 801EDF18 00052880 */  sll   $a1, $a1, 2
/* 1DEC8C 801EDF1C 0205C021 */  addu  $t8, $s0, $a1
/* 1DEC90 801EDF20 8F0E0000 */  lw    $t6, ($t8)
/* 1DEC94 801EDF24 29C1003C */  slti  $at, $t6, 0x3c
/* 1DEC98 801EDF28 5420FFEE */  bnezl $at, .L801EDEE4_ovl10
/* 1DEC9C 801EDF2C 8E2A0000 */   lw    $t2, ($s1)
/* 1DECA0 801EDF30 8FBF0024 */  lw    $ra, 0x24($sp)
.L801EDF34_ovl10:
/* 1DECA4 801EDF34 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DECA8 801EDF38 00250821 */  addu  $at, $at, $a1
/* 1DECAC 801EDF3C 2419000A */  li    $t9, 10
/* 1DECB0 801EDF40 8FB00018 */  lw    $s0, 0x18($sp)
/* 1DECB4 801EDF44 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1DECB8 801EDF48 8FB20020 */  lw    $s2, 0x20($sp)
/* 1DECBC 801EDF4C AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
/* 1DECC0 801EDF50 03E00008 */  jr    $ra
/* 1DECC4 801EDF54 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801EDD24_ovl10, @function
.size func_801EDD24_ovl10, . - func_801EDD24_ovl10
