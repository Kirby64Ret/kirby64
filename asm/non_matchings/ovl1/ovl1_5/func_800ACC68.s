glabel func_800ACC68
/* 054EB8 800ACC68 44806000 */  mtc1  $zero, $f12
/* 054EBC 800ACC6C C4C00028 */  lwc1  $f0, 0x28($a2)
/* 054EC0 800ACC70 3C013D00 */  li    $at, 0x3D000000 # 0.031250
/* 054EC4 800ACC74 44817000 */  mtc1  $at, $f14
/* 054EC8 800ACC78 460C003C */  c.lt.s $f0, $f12
/* 054ECC 800ACC7C 3C014480 */  li    $at, 0x44800000 # 1024.000000
/* 054ED0 800ACC80 340E8000 */  li    $t6, 32768
/* 054ED4 800ACC84 45020004 */  bc1fl .L800ACC98_ovl1
/* 054ED8 800ACC88 46000086 */   mov.s $f2, $f0
/* 054EDC 800ACC8C 10000002 */  b     .L800ACC98_ovl1
/* 054EE0 800ACC90 46000087 */   neg.s $f2, $f0
/* 054EE4 800ACC94 46000086 */  mov.s $f2, $f0
.L800ACC98_ovl1:
/* 054EE8 800ACC98 460E103C */  c.lt.s $f2, $f14
/* 054EEC 800ACC9C 34198000 */  li    $t9, 32768
/* 054EF0 800ACCA0 45020004 */  bc1fl .L800ACCB4_ovl1
/* 054EF4 800ACCA4 44812000 */   mtc1  $at, $f4
/* 054EF8 800ACCA8 10000026 */  b     .L800ACD44_ovl1
/* 054EFC 800ACCAC A48E0000 */   sh    $t6, ($a0)
/* 054F00 800ACCB0 44812000 */  mtc1  $at, $f4
.L800ACCB4_ovl1:
/* 054F04 800ACCB4 24180001 */  li    $t8, 1
/* 054F08 800ACCB8 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 054F0C 800ACCBC 46002183 */  div.s $f6, $f4, $f0
/* 054F10 800ACCC0 444FF800 */  cfc1  $t7, $31
/* 054F14 800ACCC4 44D8F800 */  ctc1  $t8, $31
/* 054F18 800ACCC8 00000000 */  nop   
/* 054F1C 800ACCCC 46003224 */  cvt.w.s $f8, $f6
/* 054F20 800ACCD0 4458F800 */  cfc1  $t8, $31
/* 054F24 800ACCD4 00000000 */  nop   
/* 054F28 800ACCD8 33180078 */  andi  $t8, $t8, 0x78
/* 054F2C 800ACCDC 53000013 */  beql  $t8, $zero, .L800ACD2C_ovl1
/* 054F30 800ACCE0 44184000 */   mfc1  $t8, $f8
/* 054F34 800ACCE4 44814000 */  mtc1  $at, $f8
/* 054F38 800ACCE8 24180001 */  li    $t8, 1
/* 054F3C 800ACCEC 46083201 */  sub.s $f8, $f6, $f8
/* 054F40 800ACCF0 44D8F800 */  ctc1  $t8, $31
/* 054F44 800ACCF4 00000000 */  nop   
/* 054F48 800ACCF8 46004224 */  cvt.w.s $f8, $f8
/* 054F4C 800ACCFC 4458F800 */  cfc1  $t8, $31
/* 054F50 800ACD00 00000000 */  nop   
/* 054F54 800ACD04 33180078 */  andi  $t8, $t8, 0x78
/* 054F58 800ACD08 17000005 */  bnez  $t8, .L800ACD20_ovl1
/* 054F5C 800ACD0C 00000000 */   nop   
/* 054F60 800ACD10 44184000 */  mfc1  $t8, $f8
/* 054F64 800ACD14 3C018000 */  lui   $at, 0x8000
/* 054F68 800ACD18 10000007 */  b     .L800ACD38_ovl1
/* 054F6C 800ACD1C 0301C025 */   or    $t8, $t8, $at
.L800ACD20_ovl1:
/* 054F70 800ACD20 10000005 */  b     .L800ACD38_ovl1
/* 054F74 800ACD24 2418FFFF */   li    $t8, -1
/* 054F78 800ACD28 44184000 */  mfc1  $t8, $f8
.L800ACD2C_ovl1:
/* 054F7C 800ACD2C 00000000 */  nop   
/* 054F80 800ACD30 0700FFFB */  bltz  $t8, .L800ACD20_ovl1
/* 054F84 800ACD34 00000000 */   nop   
.L800ACD38_ovl1:
/* 054F88 800ACD38 44CFF800 */  ctc1  $t7, $31
/* 054F8C 800ACD3C A4980000 */  sh    $t8, ($a0)
/* 054F90 800ACD40 00000000 */  nop   
.L800ACD44_ovl1:
/* 054F94 800ACD44 C4C0002C */  lwc1  $f0, 0x2c($a2)
/* 054F98 800ACD48 3C014480 */  li    $at, 0x44800000 # 1024.000000
/* 054F9C 800ACD4C 460C003C */  c.lt.s $f0, $f12
/* 054FA0 800ACD50 00000000 */  nop   
/* 054FA4 800ACD54 45020004 */  bc1fl .L800ACD68_ovl1
/* 054FA8 800ACD58 46000086 */   mov.s $f2, $f0
/* 054FAC 800ACD5C 10000002 */  b     .L800ACD68_ovl1
/* 054FB0 800ACD60 46000087 */   neg.s $f2, $f0
/* 054FB4 800ACD64 46000086 */  mov.s $f2, $f0
.L800ACD68_ovl1:
/* 054FB8 800ACD68 460E103C */  c.lt.s $f2, $f14
/* 054FBC 800ACD6C 00000000 */  nop   
/* 054FC0 800ACD70 45020004 */  bc1fl .L800ACD84_ovl1
/* 054FC4 800ACD74 44815000 */   mtc1  $at, $f10
/* 054FC8 800ACD78 03E00008 */  jr    $ra
/* 054FCC 800ACD7C A4B90000 */   sh    $t9, ($a1)

/* 054FD0 800ACD80 44815000 */  mtc1  $at, $f10
.L800ACD84_ovl1:
/* 054FD4 800ACD84 24090001 */  li    $t1, 1
/* 054FD8 800ACD88 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 054FDC 800ACD8C 46005403 */  div.s $f16, $f10, $f0
/* 054FE0 800ACD90 4448F800 */  cfc1  $t0, $31
/* 054FE4 800ACD94 44C9F800 */  ctc1  $t1, $31
/* 054FE8 800ACD98 00000000 */  nop   
/* 054FEC 800ACD9C 460084A4 */  cvt.w.s $f18, $f16
/* 054FF0 800ACDA0 4449F800 */  cfc1  $t1, $31
/* 054FF4 800ACDA4 00000000 */  nop   
/* 054FF8 800ACDA8 31290078 */  andi  $t1, $t1, 0x78
/* 054FFC 800ACDAC 51200013 */  beql  $t1, $zero, .L800ACDFC_ovl1
/* 055000 800ACDB0 44099000 */   mfc1  $t1, $f18
/* 055004 800ACDB4 44819000 */  mtc1  $at, $f18
/* 055008 800ACDB8 24090001 */  li    $t1, 1
/* 05500C 800ACDBC 46128481 */  sub.s $f18, $f16, $f18
/* 055010 800ACDC0 44C9F800 */  ctc1  $t1, $31
/* 055014 800ACDC4 00000000 */  nop   
/* 055018 800ACDC8 460094A4 */  cvt.w.s $f18, $f18
/* 05501C 800ACDCC 4449F800 */  cfc1  $t1, $31
/* 055020 800ACDD0 00000000 */  nop   
/* 055024 800ACDD4 31290078 */  andi  $t1, $t1, 0x78
/* 055028 800ACDD8 15200005 */  bnez  $t1, .L800ACDF0_ovl1
/* 05502C 800ACDDC 00000000 */   nop   
/* 055030 800ACDE0 44099000 */  mfc1  $t1, $f18
/* 055034 800ACDE4 3C018000 */  lui   $at, 0x8000
/* 055038 800ACDE8 10000007 */  b     .L800ACE08_ovl1
/* 05503C 800ACDEC 01214825 */   or    $t1, $t1, $at
.L800ACDF0_ovl1:
/* 055040 800ACDF0 10000005 */  b     .L800ACE08_ovl1
/* 055044 800ACDF4 2409FFFF */   li    $t1, -1
/* 055048 800ACDF8 44099000 */  mfc1  $t1, $f18
.L800ACDFC_ovl1:
/* 05504C 800ACDFC 00000000 */  nop   
/* 055050 800ACE00 0520FFFB */  bltz  $t1, .L800ACDF0_ovl1
/* 055054 800ACE04 00000000 */   nop   
.L800ACE08_ovl1:
/* 055058 800ACE08 44C8F800 */  ctc1  $t0, $31
/* 05505C 800ACE0C A4A90000 */  sh    $t1, ($a1)
/* 055060 800ACE10 00000000 */  nop   
/* 055064 800ACE14 03E00008 */  jr    $ra
/* 055068 800ACE18 00000000 */   nop   
