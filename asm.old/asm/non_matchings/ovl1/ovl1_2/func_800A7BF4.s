glabel func_800A7BF4
/* 04FE44 800A7BF4 90AE0008 */  lbu   $t6, 8($a1)
/* 04FE48 800A7BF8 3C01437F */  li    $at, 0x437F0000 # 255.000000
/* 04FE4C 800A7BFC 44818000 */  mtc1  $at, $f16
/* 04FE50 800A7C00 448E2000 */  mtc1  $t6, $f4
/* 04FE54 800A7C04 3C01800C */  lui   $at, %hi(D_800C4634) # $at, 0x800c
/* 04FE58 800A7C08 C4224634 */  lwc1  $f2, %lo(D_800C4634)($at)
/* 04FE5C 800A7C0C 05C10005 */  bgez  $t6, .L800A7C24_ovl1
/* 04FE60 800A7C10 468021A0 */   cvt.s.w $f6, $f4
/* 04FE64 800A7C14 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 04FE68 800A7C18 44814000 */  mtc1  $at, $f8
/* 04FE6C 800A7C1C 00000000 */  nop   
/* 04FE70 800A7C20 46083180 */  add.s $f6, $f6, $f8
.L800A7C24_ovl1:
/* 04FE74 800A7C24 90AF0009 */  lbu   $t7, 9($a1)
/* 04FE78 800A7C28 46061002 */  mul.s $f0, $f2, $f6
/* 04FE7C 800A7C2C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 04FE80 800A7C30 448F5000 */  mtc1  $t7, $f10
/* 04FE84 800A7C34 24080001 */  li    $t0, 1
/* 04FE88 800A7C38 05E10004 */  bgez  $t7, .L800A7C4C_ovl1
/* 04FE8C 800A7C3C 468054A0 */   cvt.s.w $f18, $f10
/* 04FE90 800A7C40 44812000 */  mtc1  $at, $f4
/* 04FE94 800A7C44 00000000 */  nop   
/* 04FE98 800A7C48 46049480 */  add.s $f18, $f18, $f4
.L800A7C4C_ovl1:
/* 04FE9C 800A7C4C 90B8000A */  lbu   $t8, 0xa($a1)
/* 04FEA0 800A7C50 46121302 */  mul.s $f12, $f2, $f18
/* 04FEA4 800A7C54 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 04FEA8 800A7C58 44984000 */  mtc1  $t8, $f8
/* 04FEAC 800A7C5C 07010004 */  bgez  $t8, .L800A7C70_ovl1
/* 04FEB0 800A7C60 468041A0 */   cvt.s.w $f6, $f8
/* 04FEB4 800A7C64 44815000 */  mtc1  $at, $f10
/* 04FEB8 800A7C68 00000000 */  nop   
/* 04FEBC 800A7C6C 460A3180 */  add.s $f6, $f6, $f10
.L800A7C70_ovl1:
/* 04FEC0 800A7C70 4600803C */  c.lt.s $f16, $f0
/* 04FEC4 800A7C74 46061382 */  mul.s $f14, $f2, $f6
/* 04FEC8 800A7C78 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 04FECC 800A7C7C 45020003 */  bc1fl .L800A7C8C_ovl1
/* 04FED0 800A7C80 460C803C */   c.lt.s $f16, $f12
/* 04FED4 800A7C84 46008006 */  mov.s $f0, $f16
/* 04FED8 800A7C88 460C803C */  c.lt.s $f16, $f12
.L800A7C8C_ovl1:
/* 04FEDC 800A7C8C 00000000 */  nop   
/* 04FEE0 800A7C90 45020003 */  bc1fl .L800A7CA0_ovl1
/* 04FEE4 800A7C94 460E803C */   c.lt.s $f16, $f14
/* 04FEE8 800A7C98 46008306 */  mov.s $f12, $f16
/* 04FEEC 800A7C9C 460E803C */  c.lt.s $f16, $f14
.L800A7CA0_ovl1:
/* 04FEF0 800A7CA0 00000000 */  nop   
/* 04FEF4 800A7CA4 45020003 */  bc1fl .L800A7CB4_ovl1
/* 04FEF8 800A7CA8 4459F800 */   cfc1  $t9, $31
/* 04FEFC 800A7CAC 46008386 */  mov.s $f14, $f16
/* 04FF00 800A7CB0 4459F800 */  cfc1  $t9, $31
.L800A7CB4_ovl1:
/* 04FF04 800A7CB4 44C8F800 */  ctc1  $t0, $31
/* 04FF08 800A7CB8 00000000 */  nop   
/* 04FF0C 800A7CBC 46000124 */  cvt.w.s $f4, $f0
/* 04FF10 800A7CC0 4448F800 */  cfc1  $t0, $31
/* 04FF14 800A7CC4 00000000 */  nop   
/* 04FF18 800A7CC8 31080078 */  andi  $t0, $t0, 0x78
/* 04FF1C 800A7CCC 51000013 */  beql  $t0, $zero, .L800A7D1C_ovl1
/* 04FF20 800A7CD0 44082000 */   mfc1  $t0, $f4
/* 04FF24 800A7CD4 44812000 */  mtc1  $at, $f4
/* 04FF28 800A7CD8 24080001 */  li    $t0, 1
/* 04FF2C 800A7CDC 46040101 */  sub.s $f4, $f0, $f4
/* 04FF30 800A7CE0 44C8F800 */  ctc1  $t0, $31
/* 04FF34 800A7CE4 00000000 */  nop   
/* 04FF38 800A7CE8 46002124 */  cvt.w.s $f4, $f4
/* 04FF3C 800A7CEC 4448F800 */  cfc1  $t0, $31
/* 04FF40 800A7CF0 00000000 */  nop   
/* 04FF44 800A7CF4 31080078 */  andi  $t0, $t0, 0x78
/* 04FF48 800A7CF8 15000005 */  bnez  $t0, .L800A7D10_ovl1
/* 04FF4C 800A7CFC 00000000 */   nop   
/* 04FF50 800A7D00 44082000 */  mfc1  $t0, $f4
/* 04FF54 800A7D04 3C018000 */  lui   $at, 0x8000
/* 04FF58 800A7D08 10000007 */  b     .L800A7D28_ovl1
/* 04FF5C 800A7D0C 01014025 */   or    $t0, $t0, $at
.L800A7D10_ovl1:
/* 04FF60 800A7D10 10000005 */  b     .L800A7D28_ovl1
/* 04FF64 800A7D14 2408FFFF */   li    $t0, -1
/* 04FF68 800A7D18 44082000 */  mfc1  $t0, $f4
.L800A7D1C_ovl1:
/* 04FF6C 800A7D1C 00000000 */  nop   
/* 04FF70 800A7D20 0500FFFB */  bltz  $t0, .L800A7D10_ovl1
/* 04FF74 800A7D24 00000000 */   nop   
.L800A7D28_ovl1:
/* 04FF78 800A7D28 44D9F800 */  ctc1  $t9, $31
/* 04FF7C 800A7D2C 240C0001 */  li    $t4, 1
/* 04FF80 800A7D30 00085200 */  sll   $t2, $t0, 8
/* 04FF84 800A7D34 A48A0000 */  sh    $t2, ($a0)
/* 04FF88 800A7D38 444BF800 */  cfc1  $t3, $31
/* 04FF8C 800A7D3C 44CCF800 */  ctc1  $t4, $31
/* 04FF90 800A7D40 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 04FF94 800A7D44 460064A4 */  cvt.w.s $f18, $f12
/* 04FF98 800A7D48 444CF800 */  cfc1  $t4, $31
/* 04FF9C 800A7D4C 00000000 */  nop   
/* 04FFA0 800A7D50 318C0078 */  andi  $t4, $t4, 0x78
/* 04FFA4 800A7D54 51800013 */  beql  $t4, $zero, .L800A7DA4_ovl1
/* 04FFA8 800A7D58 440C9000 */   mfc1  $t4, $f18
/* 04FFAC 800A7D5C 44819000 */  mtc1  $at, $f18
/* 04FFB0 800A7D60 240C0001 */  li    $t4, 1
/* 04FFB4 800A7D64 46126481 */  sub.s $f18, $f12, $f18
/* 04FFB8 800A7D68 44CCF800 */  ctc1  $t4, $31
/* 04FFBC 800A7D6C 00000000 */  nop   
/* 04FFC0 800A7D70 460094A4 */  cvt.w.s $f18, $f18
/* 04FFC4 800A7D74 444CF800 */  cfc1  $t4, $31
/* 04FFC8 800A7D78 00000000 */  nop   
/* 04FFCC 800A7D7C 318C0078 */  andi  $t4, $t4, 0x78
/* 04FFD0 800A7D80 15800005 */  bnez  $t4, .L800A7D98_ovl1
/* 04FFD4 800A7D84 00000000 */   nop   
/* 04FFD8 800A7D88 440C9000 */  mfc1  $t4, $f18
/* 04FFDC 800A7D8C 3C018000 */  lui   $at, 0x8000
/* 04FFE0 800A7D90 10000007 */  b     .L800A7DB0_ovl1
/* 04FFE4 800A7D94 01816025 */   or    $t4, $t4, $at
.L800A7D98_ovl1:
/* 04FFE8 800A7D98 10000005 */  b     .L800A7DB0_ovl1
/* 04FFEC 800A7D9C 240CFFFF */   li    $t4, -1
/* 04FFF0 800A7DA0 440C9000 */  mfc1  $t4, $f18
.L800A7DA4_ovl1:
/* 04FFF4 800A7DA4 00000000 */  nop   
/* 04FFF8 800A7DA8 0580FFFB */  bltz  $t4, .L800A7D98_ovl1
/* 04FFFC 800A7DAC 00000000 */   nop   
.L800A7DB0_ovl1:
/* 050000 800A7DB0 44CBF800 */  ctc1  $t3, $31
/* 050004 800A7DB4 24180001 */  li    $t8, 1
/* 050008 800A7DB8 000C7200 */  sll   $t6, $t4, 8
/* 05000C 800A7DBC A48E0002 */  sh    $t6, 2($a0)
/* 050010 800A7DC0 444FF800 */  cfc1  $t7, $31
/* 050014 800A7DC4 44D8F800 */  ctc1  $t8, $31
/* 050018 800A7DC8 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 05001C 800A7DCC 46007224 */  cvt.w.s $f8, $f14
/* 050020 800A7DD0 4458F800 */  cfc1  $t8, $31
/* 050024 800A7DD4 00000000 */  nop   
/* 050028 800A7DD8 33180078 */  andi  $t8, $t8, 0x78
/* 05002C 800A7DDC 53000013 */  beql  $t8, $zero, .L800A7E2C_ovl1
/* 050030 800A7DE0 44184000 */   mfc1  $t8, $f8
/* 050034 800A7DE4 44814000 */  mtc1  $at, $f8
/* 050038 800A7DE8 24180001 */  li    $t8, 1
/* 05003C 800A7DEC 46087201 */  sub.s $f8, $f14, $f8
/* 050040 800A7DF0 44D8F800 */  ctc1  $t8, $31
/* 050044 800A7DF4 00000000 */  nop   
/* 050048 800A7DF8 46004224 */  cvt.w.s $f8, $f8
/* 05004C 800A7DFC 4458F800 */  cfc1  $t8, $31
/* 050050 800A7E00 00000000 */  nop   
/* 050054 800A7E04 33180078 */  andi  $t8, $t8, 0x78
/* 050058 800A7E08 17000005 */  bnez  $t8, .L800A7E20_ovl1
/* 05005C 800A7E0C 00000000 */   nop   
/* 050060 800A7E10 44184000 */  mfc1  $t8, $f8
/* 050064 800A7E14 3C018000 */  lui   $at, 0x8000
/* 050068 800A7E18 10000007 */  b     .L800A7E38_ovl1
/* 05006C 800A7E1C 0301C025 */   or    $t8, $t8, $at
.L800A7E20_ovl1:
/* 050070 800A7E20 10000005 */  b     .L800A7E38_ovl1
/* 050074 800A7E24 2418FFFF */   li    $t8, -1
/* 050078 800A7E28 44184000 */  mfc1  $t8, $f8
.L800A7E2C_ovl1:
/* 05007C 800A7E2C 00000000 */  nop   
/* 050080 800A7E30 0700FFFB */  bltz  $t8, .L800A7E20_ovl1
/* 050084 800A7E34 00000000 */   nop   
.L800A7E38_ovl1:
/* 050088 800A7E38 44CFF800 */  ctc1  $t7, $31
/* 05008C 800A7E3C 00184200 */  sll   $t0, $t8, 8
/* 050090 800A7E40 03E00008 */  jr    $ra
/* 050094 800A7E44 A4880004 */   sh    $t0, 4($a0)
.type func_800A7BF4, @function
.size func_800A7BF4, . - func_800A7BF4