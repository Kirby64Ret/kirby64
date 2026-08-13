nonmatching func_8019ED58_ovl7, 0x18C

glabel func_8019ED58_ovl7
    /* 144DC8 8019ED58 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 144DCC 8019ED5C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 144DD0 8019ED60 8C82002C */  lw         $v0, 0x2C($a0)
    /* 144DD4 8019ED64 3C06800E */  lui        $a2, %hi(gEntitiesNextPosXArray)
    /* 144DD8 8019ED68 8C650000 */  lw         $a1, 0x0($v1)
    /* 144DDC 8019ED6C 244E0001 */  addiu      $t6, $v0, 0x1
    /* 144DE0 8019ED70 448E2000 */  mtc1       $t6, $f4
    /* 144DE4 8019ED74 24C625D0 */  addiu      $a2, $a2, %lo(gEntitiesNextPosXArray)
    /* 144DE8 8019ED78 00052880 */  sll        $a1, $a1, 2
    /* 144DEC 8019ED7C 00C57821 */  addu       $t7, $a2, $a1
    /* 144DF0 8019ED80 46802020 */  cvt.s.w    $f0, $f4
    /* 144DF4 8019ED84 C5E80000 */  lwc1       $f8, 0x0($t7)
    /* 144DF8 8019ED88 C4C60000 */  lwc1       $f6, 0x0($a2)
    /* 144DFC 8019ED8C 44822000 */  mtc1       $v0, $f4
    /* 144E00 8019ED90 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 144E04 8019ED94 46083281 */  sub.s      $f10, $f6, $f8
    /* 144E08 8019ED98 00250821 */  addu       $at, $at, $a1
    /* 144E0C 8019ED9C 3C07800E */  lui        $a3, %hi(gEntitiesNextPosZArray)
    /* 144E10 8019EDA0 468021A0 */  cvt.s.w    $f6, $f4
    /* 144E14 8019EDA4 24E72950 */  addiu      $a3, $a3, %lo(gEntitiesNextPosZArray)
    /* 144E18 8019EDA8 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
    /* 144E1C 8019EDAC 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
    /* 144E20 8019EDB0 46065203 */  div.s      $f8, $f10, $f6
    /* 144E24 8019EDB4 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
    /* 144E28 8019EDB8 8C650000 */  lw         $a1, 0x0($v1)
    /* 144E2C 8019EDBC 8C99002C */  lw         $t9, 0x2C($a0)
    /* 144E30 8019EDC0 C4E40000 */  lwc1       $f4, 0x0($a3)
    /* 144E34 8019EDC4 00052880 */  sll        $a1, $a1, 2
    /* 144E38 8019EDC8 00E5C021 */  addu       $t8, $a3, $a1
    /* 144E3C 8019EDCC C70A0000 */  lwc1       $f10, 0x0($t8)
    /* 144E40 8019EDD0 44994000 */  mtc1       $t9, $f8
    /* 144E44 8019EDD4 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 144E48 8019EDD8 460A2181 */  sub.s      $f6, $f4, $f10
    /* 144E4C 8019EDDC 00250821 */  addu       $at, $at, $a1
    /* 144E50 8019EDE0 46804120 */  cvt.s.w    $f4, $f8
    /* 144E54 8019EDE4 46043283 */  div.s      $f10, $f6, $f4
    /* 144E58 8019EDE8 E42A33D0 */  swc1       $f10, %lo(D_800E33D0)($at)
    /* 144E5C 8019EDEC 8C650000 */  lw         $a1, 0x0($v1)
    /* 144E60 8019EDF0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 144E64 8019EDF4 44813000 */  mtc1       $at, $f6
    /* 144E68 8019EDF8 C5080000 */  lwc1       $f8, 0x0($t0)
    /* 144E6C 8019EDFC 00052880 */  sll        $a1, $a1, 2
    /* 144E70 8019EE00 01054821 */  addu       $t1, $t0, $a1
    /* 144E74 8019EE04 46064100 */  add.s      $f4, $f8, $f6
    /* 144E78 8019EE08 C52A0000 */  lwc1       $f10, 0x0($t1)
    /* 144E7C 8019EE0C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 144E80 8019EE10 C4880024 */  lwc1       $f8, 0x24($a0)
    /* 144E84 8019EE14 460A2081 */  sub.s      $f2, $f4, $f10
    /* 144E88 8019EE18 44812000 */  mtc1       $at, $f4
    /* 144E8C 8019EE1C 46004187 */  neg.s      $f6, $f8
    /* 144E90 8019EE20 46040282 */  mul.s      $f10, $f0, $f4
    /* 144E94 8019EE24 44804000 */  mtc1       $zero, $f8
    /* 144E98 8019EE28 00000000 */  nop
    /* 144E9C 8019EE2C 4608103C */  c.lt.s     $f2, $f8
    /* 144EA0 8019EE30 460A3302 */  mul.s      $f12, $f6, $f10
    /* 144EA4 8019EE34 45020004 */  bc1fl      .L8019EE48_ovl7
    /* 144EA8 8019EE38 46001386 */   mov.s     $f14, $f2
    /* 144EAC 8019EE3C 10000002 */  b          .L8019EE48_ovl7
    /* 144EB0 8019EE40 46001387 */   neg.s     $f14, $f2
    /* 144EB4 8019EE44 46001386 */  mov.s      $f14, $f2
  .L8019EE48_ovl7:
    /* 144EB8 8019EE48 46007103 */  div.s      $f4, $f14, $f0
    /* 144EBC 8019EE4C 44803000 */  mtc1       $zero, $f6
    /* 144EC0 8019EE50 00000000 */  nop
    /* 144EC4 8019EE54 4606103E */  c.le.s     $f2, $f6
    /* 144EC8 8019EE58 44803000 */  mtc1       $zero, $f6
    /* 144ECC 8019EE5C 45000003 */  bc1f       .L8019EE6C_ovl7
    /* 144ED0 8019EE60 460C2481 */   sub.s     $f18, $f4, $f12
    /* 144ED4 8019EE64 10000009 */  b          .L8019EE8C_ovl7
    /* 144ED8 8019EE68 460C9401 */   sub.s     $f16, $f18, $f12
  .L8019EE6C_ovl7:
    /* 144EDC 8019EE6C 460C6280 */  add.s      $f10, $f12, $f12
    /* 144EE0 8019EE70 44804000 */  mtc1       $zero, $f8
    /* 144EE4 8019EE74 460A9400 */  add.s      $f16, $f18, $f10
    /* 144EE8 8019EE78 4610403C */  c.lt.s     $f8, $f16
    /* 144EEC 8019EE7C 00000000 */  nop
    /* 144EF0 8019EE80 45020003 */  bc1fl      .L8019EE90_ovl7
    /* 144EF4 8019EE84 4602303C */   c.lt.s    $f6, $f2
    /* 144EF8 8019EE88 46008407 */  neg.s      $f16, $f16
  .L8019EE8C_ovl7:
    /* 144EFC 8019EE8C 4602303C */  c.lt.s     $f6, $f2
  .L8019EE90_ovl7:
    /* 144F00 8019EE90 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 144F04 8019EE94 46008107 */  neg.s      $f4, $f16
    /* 144F08 8019EE98 00250821 */  addu       $at, $at, $a1
    /* 144F0C 8019EE9C 45000008 */  bc1f       .L8019EEC0_ovl7
    /* 144F10 8019EEA0 E4243210 */   swc1      $f4, %lo(D_800E3210)($at)
    /* 144F14 8019EEA4 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 144F18 8019EEA8 C48A0024 */  lwc1       $f10, 0x24($a0)
    /* 144F1C 8019EEAC 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 144F20 8019EEB0 000A5880 */  sll        $t3, $t2, 2
    /* 144F24 8019EEB4 002B0821 */  addu       $at, $at, $t3
    /* 144F28 8019EEB8 03E00008 */  jr         $ra
    /* 144F2C 8019EEBC E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
  .L8019EEC0_ovl7:
    /* 144F30 8019EEC0 C4800024 */  lwc1       $f0, 0x24($a0)
    /* 144F34 8019EEC4 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 144F38 8019EEC8 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 144F3C 8019EECC 46000200 */  add.s      $f8, $f0, $f0
    /* 144F40 8019EED0 000C6880 */  sll        $t5, $t4, 2
    /* 144F44 8019EED4 002D0821 */  addu       $at, $at, $t5
    /* 144F48 8019EED8 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
    /* 144F4C 8019EEDC 03E00008 */  jr         $ra
    /* 144F50 8019EEE0 00000000 */   nop
endlabel func_8019ED58_ovl7
.size func_8019ED58_ovl7, . - func_8019ED58_ovl7
