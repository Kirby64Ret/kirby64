glabel func_800ADD14
/* 055F64 800ADD14 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 055F68 800ADD18 AFB00020 */  sw    $s0, 0x20($sp)
/* 055F6C 800ADD1C AFBF0034 */  sw    $ra, 0x34($sp)
/* 055F70 800ADD20 AFB40030 */  sw    $s4, 0x30($sp)
/* 055F74 800ADD24 AFB3002C */  sw    $s3, 0x2c($sp)
/* 055F78 800ADD28 AFB20028 */  sw    $s2, 0x28($sp)
/* 055F7C 800ADD2C AFB10024 */  sw    $s1, 0x24($sp)
/* 055F80 800ADD30 AFA40040 */  sw    $a0, 0x40($sp)
/* 055F84 800ADD34 3C0F8005 */  lui   $t7, %hi(D_8004A444) # $t7, 0x8005
/* 055F88 800ADD38 8C88003C */  lw    $t0, 0x3c($a0)
/* 055F8C 800ADD3C 95EFA444 */  lhu   $t7, %lo(D_8004A444)($t7)
/* 055F90 800ADD40 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 055F94 800ADD44 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 055F98 800ADD48 02002025 */  move  $a0, $s0
/* 055F9C 800ADD4C 2405000A */  li    $a1, 10
/* 055FA0 800ADD50 AFA8003C */  sw    $t0, 0x3c($sp)
/* 055FA4 800ADD54 0C001779 */  jal   func_80005DE4_ovl1
/* 055FA8 800ADD58 AFAF0038 */   sw    $t7, 0x38($sp)
/* 055FAC 800ADD5C 8E020000 */  lw    $v0, ($s0)
/* 055FB0 800ADD60 8FA8003C */  lw    $t0, 0x3c($sp)
/* 055FB4 800ADD64 3C0A800D */  lui   $t2, %hi(D_800D4E98) # $t2, 0x800d
/* 055FB8 800ADD68 24580008 */  addiu $t8, $v0, 8
/* 055FBC 800ADD6C AE180000 */  sw    $t8, ($s0)
/* 055FC0 800ADD70 254A4E98 */  addiu $t2, %lo(D_800D4E98) # addiu $t2, $t2, 0x4e98
/* 055FC4 800ADD74 3C19DE00 */  lui   $t9, 0xde00
/* 055FC8 800ADD78 AC590000 */  sw    $t9, ($v0)
/* 055FCC 800ADD7C AC4A0004 */  sw    $t2, 4($v0)
/* 055FD0 800ADD80 85040010 */  lh    $a0, 0x10($t0)
/* 055FD4 800ADD84 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 055FD8 800ADD88 44816000 */  mtc1  $at, $f12
/* 055FDC 800ADD8C 85050008 */  lh    $a1, 8($t0)
/* 055FE0 800ADD90 85060012 */  lh    $a2, 0x12($t0)
/* 055FE4 800ADD94 8507000A */  lh    $a3, 0xa($t0)
/* 055FE8 800ADD98 3C098005 */  lui   $t1, %hi(gCurrScreenWidth) # $t1, 0x8005
/* 055FEC 800ADD9C 8D29A508 */  lw    $t1, %lo(gCurrScreenWidth)($t1)
/* 055FF0 800ADDA0 00401825 */  move  $v1, $v0
/* 055FF4 800ADDA4 04810002 */  bgez  $a0, .L800ADDB0_ovl1
/* 055FF8 800ADDA8 00800821 */   addu  $at, $a0, $zero
/* 055FFC 800ADDAC 24810003 */  addiu $at, $a0, 3
.L800ADDB0_ovl1:
/* 056000 800ADDB0 00012083 */  sra   $a0, $at, 2
/* 056004 800ADDB4 04A10002 */  bgez  $a1, .L800ADDC0_ovl1
/* 056008 800ADDB8 00A00821 */   addu  $at, $a1, $zero
/* 05600C 800ADDBC 24A10003 */  addiu $at, $a1, 3
.L800ADDC0_ovl1:
/* 056010 800ADDC0 00012883 */  sra   $a1, $at, 2
/* 056014 800ADDC4 00858823 */  subu  $s1, $a0, $a1
/* 056018 800ADDC8 04C10002 */  bgez  $a2, .L800ADDD4_ovl1
/* 05601C 800ADDCC 00C00821 */   addu  $at, $a2, $zero
/* 056020 800ADDD0 24C10003 */  addiu $at, $a2, 3
.L800ADDD4_ovl1:
/* 056024 800ADDD4 00013083 */  sra   $a2, $at, 2
/* 056028 800ADDD8 04E10002 */  bgez  $a3, .L800ADDE4_ovl1
/* 05602C 800ADDDC 00E00821 */   addu  $at, $a3, $zero
/* 056030 800ADDE0 24E10003 */  addiu $at, $a3, 3
.L800ADDE4_ovl1:
/* 056034 800ADDE4 00013883 */  sra   $a3, $at, 2
/* 056038 800ADDE8 24010140 */  li    $at, 320
/* 05603C 800ADDEC 0121001A */  div   $zero, $t1, $at
/* 056040 800ADDF0 00005812 */  mflo  $t3
/* 056044 800ADDF4 448B3000 */  mtc1  $t3, $f6
/* 056048 800ADDF8 44912000 */  mtc1  $s1, $f4
/* 05604C 800ADDFC 00C79023 */  subu  $s2, $a2, $a3
/* 056050 800ADE00 46803220 */  cvt.s.w $f8, $f6
/* 056054 800ADE04 44923000 */  mtc1  $s2, $f6
/* 056058 800ADE08 00A49821 */  addu  $s3, $a1, $a0
/* 05605C 800ADE0C 00E6A021 */  addu  $s4, $a3, $a2
/* 056060 800ADE10 3C028005 */  lui   $v0, %hi(gCurrScreenHeight) # $v0, 0x8005
/* 056064 800ADE14 46802420 */  cvt.s.w $f16, $f4
/* 056068 800ADE18 46086002 */  mul.s $f0, $f12, $f8
/* 05606C 800ADE1C 4600803C */  c.lt.s $f16, $f0
/* 056070 800ADE20 00000000 */  nop   
/* 056074 800ADE24 45000007 */  bc1f  .L800ADE44_ovl1
/* 056078 800ADE28 00000000 */   nop   
/* 05607C 800ADE2C 4600028D */  trunc.w.s $f10, $f0
/* 056080 800ADE30 44115000 */  mfc1  $s1, $f10
/* 056084 800ADE34 00000000 */  nop   
/* 056088 800ADE38 44912000 */  mtc1  $s1, $f4
/* 05608C 800ADE3C 00000000 */  nop   
/* 056090 800ADE40 46802420 */  cvt.s.w $f16, $f4
.L800ADE44_ovl1:
/* 056094 800ADE44 8C42A50C */  lw    $v0, %lo(gCurrScreenHeight)($v0)
/* 056098 800ADE48 240100F0 */  li    $at, 240
/* 05609C 800ADE4C 468034A0 */  cvt.s.w $f18, $f6
/* 0560A0 800ADE50 0041001A */  div   $zero, $v0, $at
/* 0560A4 800ADE54 00006812 */  mflo  $t5
/* 0560A8 800ADE58 448D4000 */  mtc1  $t5, $f8
/* 0560AC 800ADE5C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0560B0 800ADE60 468042A0 */  cvt.s.w $f10, $f8
/* 0560B4 800ADE64 44894000 */  mtc1  $t1, $f8
/* 0560B8 800ADE68 460A6082 */  mul.s $f2, $f12, $f10
/* 0560BC 800ADE6C 4602903C */  c.lt.s $f18, $f2
/* 0560C0 800ADE70 00000000 */  nop   
/* 0560C4 800ADE74 45020008 */  bc1fl .L800ADE98_ovl1
/* 0560C8 800ADE78 468042A0 */   cvt.s.w $f10, $f8
/* 0560CC 800ADE7C 4600110D */  trunc.w.s $f4, $f2
/* 0560D0 800ADE80 44122000 */  mfc1  $s2, $f4
/* 0560D4 800ADE84 00000000 */  nop   
/* 0560D8 800ADE88 44923000 */  mtc1  $s2, $f6
/* 0560DC 800ADE8C 00000000 */  nop   
/* 0560E0 800ADE90 468034A0 */  cvt.s.w $f18, $f6
/* 0560E4 800ADE94 468042A0 */  cvt.s.w $f10, $f8
.L800ADE98_ovl1:
/* 0560E8 800ADE98 44932000 */  mtc1  $s3, $f4
/* 0560EC 800ADE9C 00000000 */  nop   
/* 0560F0 800ADEA0 46802320 */  cvt.s.w $f12, $f4
/* 0560F4 800ADEA4 46005381 */  sub.s $f14, $f10, $f0
/* 0560F8 800ADEA8 44825000 */  mtc1  $v0, $f10
/* 0560FC 800ADEAC 460C703C */  c.lt.s $f14, $f12
/* 056100 800ADEB0 46805120 */  cvt.s.w $f4, $f10
/* 056104 800ADEB4 45020008 */  bc1fl .L800ADED8_ovl1
/* 056108 800ADEB8 44943000 */   mtc1  $s4, $f6
/* 05610C 800ADEBC 4600718D */  trunc.w.s $f6, $f14
/* 056110 800ADEC0 44133000 */  mfc1  $s3, $f6
/* 056114 800ADEC4 00000000 */  nop   
/* 056118 800ADEC8 44934000 */  mtc1  $s3, $f8
/* 05611C 800ADECC 00000000 */  nop   
/* 056120 800ADED0 46804320 */  cvt.s.w $f12, $f8
/* 056124 800ADED4 44943000 */  mtc1  $s4, $f6
.L800ADED8_ovl1:
/* 056128 800ADED8 46022001 */  sub.s $f0, $f4, $f2
/* 05612C 800ADEDC 468033A0 */  cvt.s.w $f14, $f6
/* 056130 800ADEE0 460E003C */  c.lt.s $f0, $f14
/* 056134 800ADEE4 00000000 */  nop   
/* 056138 800ADEE8 45020008 */  bc1fl .L800ADF0C_ovl1
/* 05613C 800ADEEC 44810000 */   mtc1  $at, $f0
/* 056140 800ADEF0 4600020D */  trunc.w.s $f8, $f0
/* 056144 800ADEF4 44144000 */  mfc1  $s4, $f8
/* 056148 800ADEF8 00000000 */  nop   
/* 05614C 800ADEFC 44945000 */  mtc1  $s4, $f10
/* 056150 800ADF00 00000000 */  nop   
/* 056154 800ADF04 468053A0 */  cvt.s.w $f14, $f10
/* 056158 800ADF08 44810000 */  mtc1  $at, $f0
.L800ADF0C_ovl1:
/* 05615C 800ADF0C 8E020000 */  lw    $v0, ($s0)
/* 056160 800ADF10 3C01ED00 */  lui   $at, 0xed00
/* 056164 800ADF14 46008102 */  mul.s $f4, $f16, $f0
/* 056168 800ADF18 24590008 */  addiu $t9, $v0, 8
/* 05616C 800ADF1C AE190000 */  sw    $t9, ($s0)
/* 056170 800ADF20 46009202 */  mul.s $f8, $f18, $f0
/* 056174 800ADF24 02202025 */  move  $a0, $s1
/* 056178 800ADF28 02402825 */  move  $a1, $s2
/* 05617C 800ADF2C 02603025 */  move  $a2, $s3
/* 056180 800ADF30 02803825 */  move  $a3, $s4
/* 056184 800ADF34 4600218D */  trunc.w.s $f6, $f4
/* 056188 800ADF38 46006102 */  mul.s $f4, $f12, $f0
/* 05618C 800ADF3C 440B3000 */  mfc1  $t3, $f6
/* 056190 800ADF40 4600428D */  trunc.w.s $f10, $f8
/* 056194 800ADF44 46007202 */  mul.s $f8, $f14, $f0
/* 056198 800ADF48 316C0FFF */  andi  $t4, $t3, 0xfff
/* 05619C 800ADF4C 000C6B00 */  sll   $t5, $t4, 0xc
/* 0561A0 800ADF50 44185000 */  mfc1  $t8, $f10
/* 0561A4 800ADF54 01A17025 */  or    $t6, $t5, $at
/* 0561A8 800ADF58 240B0001 */  li    $t3, 1
/* 0561AC 800ADF5C 4600218D */  trunc.w.s $f6, $f4
/* 0561B0 800ADF60 33190FFF */  andi  $t9, $t8, 0xfff
/* 0561B4 800ADF64 01D95025 */  or    $t2, $t6, $t9
/* 0561B8 800ADF68 4600428D */  trunc.w.s $f10, $f8
/* 0561BC 800ADF6C 440C3000 */  mfc1  $t4, $f6
/* 0561C0 800ADF70 AC4A0000 */  sw    $t2, ($v0)
/* 0561C4 800ADF74 440E5000 */  mfc1  $t6, $f10
/* 0561C8 800ADF78 318D0FFF */  andi  $t5, $t4, 0xfff
/* 0561CC 800ADF7C 000D7B00 */  sll   $t7, $t5, 0xc
/* 0561D0 800ADF80 31D90FFF */  andi  $t9, $t6, 0xfff
/* 0561D4 800ADF84 01F95025 */  or    $t2, $t7, $t9
/* 0561D8 800ADF88 AC4A0004 */  sw    $t2, 4($v0)
/* 0561DC 800ADF8C AFA8003C */  sw    $t0, 0x3c($sp)
/* 0561E0 800ADF90 0C02ADA0 */  jal   func_800AB680
/* 0561E4 800ADF94 AFAB0010 */   sw    $t3, 0x10($sp)
/* 0561E8 800ADF98 8E020000 */  lw    $v0, ($s0)
/* 0561EC 800ADF9C 8FA8003C */  lw    $t0, 0x3c($sp)
/* 0561F0 800ADFA0 3C0DE700 */  lui   $t5, 0xe700
/* 0561F4 800ADFA4 244C0008 */  addiu $t4, $v0, 8
/* 0561F8 800ADFA8 AE0C0000 */  sw    $t4, ($s0)
/* 0561FC 800ADFAC AC400004 */  sw    $zero, 4($v0)
/* 056200 800ADFB0 AC4D0000 */  sw    $t5, ($v0)
/* 056204 800ADFB4 8E020000 */  lw    $v0, ($s0)
/* 056208 800ADFB8 3C0E8005 */  lui   $t6, %hi(D_8004A504) # $t6, 0x8005
/* 05620C 800ADFBC 3C0B8005 */  lui   $t3, %hi(gCurrScreenWidth) # $t3, 0x8005
/* 056210 800ADFC0 24580008 */  addiu $t8, $v0, 8
/* 056214 800ADFC4 AE180000 */  sw    $t8, ($s0)
/* 056218 800ADFC8 8DCEA504 */  lw    $t6, %lo(D_8004A504)($t6)
/* 05621C 800ADFCC 8D6BA508 */  lw    $t3, %lo(gCurrScreenWidth)($t3)
/* 056220 800ADFD0 3C01FF00 */  lui   $at, 0xff00
/* 056224 800ADFD4 31CF0003 */  andi  $t7, $t6, 3
/* 056228 800ADFD8 000FCCC0 */  sll   $t9, $t7, 0x13
/* 05622C 800ADFDC 256CFFFF */  addiu $t4, $t3, -1
/* 056230 800ADFE0 318D0FFF */  andi  $t5, $t4, 0xfff
/* 056234 800ADFE4 03215025 */  or    $t2, $t9, $at
/* 056238 800ADFE8 014DC025 */  or    $t8, $t2, $t5
/* 05623C 800ADFEC 3C0E0F00 */  lui   $t6, 0xf00
/* 056240 800ADFF0 AC4E0004 */  sw    $t6, 4($v0)
/* 056244 800ADFF4 AC580000 */  sw    $t8, ($v0)
/* 056248 800ADFF8 8D0F0080 */  lw    $t7, 0x80($t0)
/* 05624C 800ADFFC 00002825 */  move  $a1, $zero
/* 056250 800AE000 31F90008 */  andi  $t9, $t7, 8
/* 056254 800AE004 13200003 */  beqz  $t9, .L800AE014_ovl1
/* 056258 800AE008 00000000 */   nop   
/* 05625C 800AE00C 10000001 */  b     .L800AE014_ovl1
/* 056260 800AE010 24050001 */   li    $a1, 1
.L800AE014_ovl1:
/* 056264 800AE014 0C005FA1 */  jal   func_80017E84_ovl1
/* 056268 800AE018 8FA40040 */   lw    $a0, 0x40($sp)
/* 05626C 800AE01C 02002025 */  move  $a0, $s0
/* 056270 800AE020 0C001779 */  jal   func_80005DE4_ovl1
/* 056274 800AE024 8FA50038 */   lw    $a1, 0x38($sp)
/* 056278 800AE028 8FBF0034 */  lw    $ra, 0x34($sp)
/* 05627C 800AE02C 8FB00020 */  lw    $s0, 0x20($sp)
/* 056280 800AE030 8FB10024 */  lw    $s1, 0x24($sp)
/* 056284 800AE034 8FB20028 */  lw    $s2, 0x28($sp)
/* 056288 800AE038 8FB3002C */  lw    $s3, 0x2c($sp)
/* 05628C 800AE03C 8FB40030 */  lw    $s4, 0x30($sp)
/* 056290 800AE040 03E00008 */  jr    $ra
/* 056294 800AE044 27BD0040 */   addiu $sp, $sp, 0x40
.type func_800ADD14, @function
.size func_800ADD14, . - func_800ADD14
