nonmatching func_800A7BF4, 0x254

glabel func_800A7BF4
    /* 4FE44 800A7BF4 90AE0008 */  lbu        $t6, 0x8($a1)
    /* 4FE48 800A7BF8 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* 4FE4C 800A7BFC 44818000 */  mtc1       $at, $f16
    /* 4FE50 800A7C00 448E2000 */  mtc1       $t6, $f4
    /* 4FE54 800A7C04 3C01800C */  lui        $at, %hi(D_800C4634)
    /* 4FE58 800A7C08 C4224634 */  lwc1       $f2, %lo(D_800C4634)($at)
    /* 4FE5C 800A7C0C 05C10005 */  bgez       $t6, .L800A7C24
    /* 4FE60 800A7C10 468021A0 */   cvt.s.w   $f6, $f4
    /* 4FE64 800A7C14 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 4FE68 800A7C18 44814000 */  mtc1       $at, $f8
    /* 4FE6C 800A7C1C 00000000 */  nop
    /* 4FE70 800A7C20 46083180 */  add.s      $f6, $f6, $f8
  .L800A7C24:
    /* 4FE74 800A7C24 90AF0009 */  lbu        $t7, 0x9($a1)
    /* 4FE78 800A7C28 46061002 */  mul.s      $f0, $f2, $f6
    /* 4FE7C 800A7C2C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 4FE80 800A7C30 448F5000 */  mtc1       $t7, $f10
    /* 4FE84 800A7C34 24080001 */  addiu      $t0, $zero, 0x1
    /* 4FE88 800A7C38 05E10004 */  bgez       $t7, .L800A7C4C
    /* 4FE8C 800A7C3C 468054A0 */   cvt.s.w   $f18, $f10
    /* 4FE90 800A7C40 44812000 */  mtc1       $at, $f4
    /* 4FE94 800A7C44 00000000 */  nop
    /* 4FE98 800A7C48 46049480 */  add.s      $f18, $f18, $f4
  .L800A7C4C:
    /* 4FE9C 800A7C4C 90B8000A */  lbu        $t8, 0xA($a1)
    /* 4FEA0 800A7C50 46121302 */  mul.s      $f12, $f2, $f18
    /* 4FEA4 800A7C54 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 4FEA8 800A7C58 44984000 */  mtc1       $t8, $f8
    /* 4FEAC 800A7C5C 07010004 */  bgez       $t8, .L800A7C70
    /* 4FEB0 800A7C60 468041A0 */   cvt.s.w   $f6, $f8
    /* 4FEB4 800A7C64 44815000 */  mtc1       $at, $f10
    /* 4FEB8 800A7C68 00000000 */  nop
    /* 4FEBC 800A7C6C 460A3180 */  add.s      $f6, $f6, $f10
  .L800A7C70:
    /* 4FEC0 800A7C70 4600803C */  c.lt.s     $f16, $f0
    /* 4FEC4 800A7C74 46061382 */  mul.s      $f14, $f2, $f6
    /* 4FEC8 800A7C78 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 4FECC 800A7C7C 45020003 */  bc1fl      .L800A7C8C
    /* 4FED0 800A7C80 460C803C */   c.lt.s    $f16, $f12
    /* 4FED4 800A7C84 46008006 */  mov.s      $f0, $f16
    /* 4FED8 800A7C88 460C803C */  c.lt.s     $f16, $f12
  .L800A7C8C:
    /* 4FEDC 800A7C8C 00000000 */  nop
    /* 4FEE0 800A7C90 45020003 */  bc1fl      .L800A7CA0
    /* 4FEE4 800A7C94 460E803C */   c.lt.s    $f16, $f14
    /* 4FEE8 800A7C98 46008306 */  mov.s      $f12, $f16
    /* 4FEEC 800A7C9C 460E803C */  c.lt.s     $f16, $f14
  .L800A7CA0:
    /* 4FEF0 800A7CA0 00000000 */  nop
    /* 4FEF4 800A7CA4 45020003 */  bc1fl      .L800A7CB4
    /* 4FEF8 800A7CA8 4459F800 */   cfc1      $t9, $31
    /* 4FEFC 800A7CAC 46008386 */  mov.s      $f14, $f16
    /* 4FF00 800A7CB0 4459F800 */  cfc1       $t9, $31
  .L800A7CB4:
    /* 4FF04 800A7CB4 44C8F800 */  ctc1       $t0, $31
    /* 4FF08 800A7CB8 00000000 */  nop
    /* 4FF0C 800A7CBC 46000124 */  cvt.w.s    $f4, $f0
    /* 4FF10 800A7CC0 4448F800 */  cfc1       $t0, $31
    /* 4FF14 800A7CC4 00000000 */  nop
    /* 4FF18 800A7CC8 31080078 */  andi       $t0, $t0, 0x78
    /* 4FF1C 800A7CCC 51000013 */  beql       $t0, $zero, .L800A7D1C
    /* 4FF20 800A7CD0 44082000 */   mfc1      $t0, $f4
    /* 4FF24 800A7CD4 44812000 */  mtc1       $at, $f4
    /* 4FF28 800A7CD8 24080001 */  addiu      $t0, $zero, 0x1
    /* 4FF2C 800A7CDC 46040101 */  sub.s      $f4, $f0, $f4
    /* 4FF30 800A7CE0 44C8F800 */  ctc1       $t0, $31
    /* 4FF34 800A7CE4 00000000 */  nop
    /* 4FF38 800A7CE8 46002124 */  cvt.w.s    $f4, $f4
    /* 4FF3C 800A7CEC 4448F800 */  cfc1       $t0, $31
    /* 4FF40 800A7CF0 00000000 */  nop
    /* 4FF44 800A7CF4 31080078 */  andi       $t0, $t0, 0x78
    /* 4FF48 800A7CF8 15000005 */  bnez       $t0, .L800A7D10
    /* 4FF4C 800A7CFC 00000000 */   nop
    /* 4FF50 800A7D00 44082000 */  mfc1       $t0, $f4
    /* 4FF54 800A7D04 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 4FF58 800A7D08 10000007 */  b          .L800A7D28
    /* 4FF5C 800A7D0C 01014025 */   or        $t0, $t0, $at
  .L800A7D10:
    /* 4FF60 800A7D10 10000005 */  b          .L800A7D28
    /* 4FF64 800A7D14 2408FFFF */   addiu     $t0, $zero, -0x1
    /* 4FF68 800A7D18 44082000 */  mfc1       $t0, $f4
  .L800A7D1C:
    /* 4FF6C 800A7D1C 00000000 */  nop
    /* 4FF70 800A7D20 0500FFFB */  bltz       $t0, .L800A7D10
    /* 4FF74 800A7D24 00000000 */   nop
  .L800A7D28:
    /* 4FF78 800A7D28 44D9F800 */  ctc1       $t9, $31
    /* 4FF7C 800A7D2C 240C0001 */  addiu      $t4, $zero, 0x1
    /* 4FF80 800A7D30 00085200 */  sll        $t2, $t0, 8
    /* 4FF84 800A7D34 A48A0000 */  sh         $t2, 0x0($a0)
    /* 4FF88 800A7D38 444BF800 */  cfc1       $t3, $31
    /* 4FF8C 800A7D3C 44CCF800 */  ctc1       $t4, $31
    /* 4FF90 800A7D40 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 4FF94 800A7D44 460064A4 */  cvt.w.s    $f18, $f12
    /* 4FF98 800A7D48 444CF800 */  cfc1       $t4, $31
    /* 4FF9C 800A7D4C 00000000 */  nop
    /* 4FFA0 800A7D50 318C0078 */  andi       $t4, $t4, 0x78
    /* 4FFA4 800A7D54 51800013 */  beql       $t4, $zero, .L800A7DA4
    /* 4FFA8 800A7D58 440C9000 */   mfc1      $t4, $f18
    /* 4FFAC 800A7D5C 44819000 */  mtc1       $at, $f18
    /* 4FFB0 800A7D60 240C0001 */  addiu      $t4, $zero, 0x1
    /* 4FFB4 800A7D64 46126481 */  sub.s      $f18, $f12, $f18
    /* 4FFB8 800A7D68 44CCF800 */  ctc1       $t4, $31
    /* 4FFBC 800A7D6C 00000000 */  nop
    /* 4FFC0 800A7D70 460094A4 */  cvt.w.s    $f18, $f18
    /* 4FFC4 800A7D74 444CF800 */  cfc1       $t4, $31
    /* 4FFC8 800A7D78 00000000 */  nop
    /* 4FFCC 800A7D7C 318C0078 */  andi       $t4, $t4, 0x78
    /* 4FFD0 800A7D80 15800005 */  bnez       $t4, .L800A7D98
    /* 4FFD4 800A7D84 00000000 */   nop
    /* 4FFD8 800A7D88 440C9000 */  mfc1       $t4, $f18
    /* 4FFDC 800A7D8C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 4FFE0 800A7D90 10000007 */  b          .L800A7DB0
    /* 4FFE4 800A7D94 01816025 */   or        $t4, $t4, $at
  .L800A7D98:
    /* 4FFE8 800A7D98 10000005 */  b          .L800A7DB0
    /* 4FFEC 800A7D9C 240CFFFF */   addiu     $t4, $zero, -0x1
    /* 4FFF0 800A7DA0 440C9000 */  mfc1       $t4, $f18
  .L800A7DA4:
    /* 4FFF4 800A7DA4 00000000 */  nop
    /* 4FFF8 800A7DA8 0580FFFB */  bltz       $t4, .L800A7D98
    /* 4FFFC 800A7DAC 00000000 */   nop
  .L800A7DB0:
    /* 50000 800A7DB0 44CBF800 */  ctc1       $t3, $31
    /* 50004 800A7DB4 24180001 */  addiu      $t8, $zero, 0x1
    /* 50008 800A7DB8 000C7200 */  sll        $t6, $t4, 8
    /* 5000C 800A7DBC A48E0002 */  sh         $t6, 0x2($a0)
    /* 50010 800A7DC0 444FF800 */  cfc1       $t7, $31
    /* 50014 800A7DC4 44D8F800 */  ctc1       $t8, $31
    /* 50018 800A7DC8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 5001C 800A7DCC 46007224 */  cvt.w.s    $f8, $f14
    /* 50020 800A7DD0 4458F800 */  cfc1       $t8, $31
    /* 50024 800A7DD4 00000000 */  nop
    /* 50028 800A7DD8 33180078 */  andi       $t8, $t8, 0x78
    /* 5002C 800A7DDC 53000013 */  beql       $t8, $zero, .L800A7E2C
    /* 50030 800A7DE0 44184000 */   mfc1      $t8, $f8
    /* 50034 800A7DE4 44814000 */  mtc1       $at, $f8
    /* 50038 800A7DE8 24180001 */  addiu      $t8, $zero, 0x1
    /* 5003C 800A7DEC 46087201 */  sub.s      $f8, $f14, $f8
    /* 50040 800A7DF0 44D8F800 */  ctc1       $t8, $31
    /* 50044 800A7DF4 00000000 */  nop
    /* 50048 800A7DF8 46004224 */  cvt.w.s    $f8, $f8
    /* 5004C 800A7DFC 4458F800 */  cfc1       $t8, $31
    /* 50050 800A7E00 00000000 */  nop
    /* 50054 800A7E04 33180078 */  andi       $t8, $t8, 0x78
    /* 50058 800A7E08 17000005 */  bnez       $t8, .L800A7E20
    /* 5005C 800A7E0C 00000000 */   nop
    /* 50060 800A7E10 44184000 */  mfc1       $t8, $f8
    /* 50064 800A7E14 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 50068 800A7E18 10000007 */  b          .L800A7E38
    /* 5006C 800A7E1C 0301C025 */   or        $t8, $t8, $at
  .L800A7E20:
    /* 50070 800A7E20 10000005 */  b          .L800A7E38
    /* 50074 800A7E24 2418FFFF */   addiu     $t8, $zero, -0x1
    /* 50078 800A7E28 44184000 */  mfc1       $t8, $f8
  .L800A7E2C:
    /* 5007C 800A7E2C 00000000 */  nop
    /* 50080 800A7E30 0700FFFB */  bltz       $t8, .L800A7E20
    /* 50084 800A7E34 00000000 */   nop
  .L800A7E38:
    /* 50088 800A7E38 44CFF800 */  ctc1       $t7, $31
    /* 5008C 800A7E3C 00184200 */  sll        $t0, $t8, 8
    /* 50090 800A7E40 03E00008 */  jr         $ra
    /* 50094 800A7E44 A4880004 */   sh        $t0, 0x4($a0)
endlabel func_800A7BF4
.size func_800A7BF4, . - func_800A7BF4
