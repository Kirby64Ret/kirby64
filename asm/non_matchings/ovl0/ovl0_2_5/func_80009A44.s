glabel func_80009A44
/* 00A644 80009A44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00A648 80009A48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00A64C 80009A4C AFA40018 */  sw    $a0, 0x18($sp)
/* 00A650 80009A50 0C002223 */  jal   HS64_MObjPop
/* 00A654 80009A54 AFA5001C */   sw    $a1, 0x1c($sp)
/* 00A658 80009A58 8FA30018 */  lw    $v1, 0x18($sp)
/* 00A65C 80009A5C 8FA7001C */  lw    $a3, 0x1c($sp)
/* 00A660 80009A60 00402825 */  move  $a1, $v0
/* 00A664 80009A64 8C660080 */  lw    $a2, 0x80($v1)
/* 00A668 80009A68 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00A66C 80009A6C 50C0000C */  beql  $a2, $zero, .L80009AA0_ovl0
/* 00A670 80009A70 AC620080 */   sw    $v0, 0x80($v1)
/* 00A674 80009A74 8CC30000 */  lw    $v1, ($a2)
/* 00A678 80009A78 00C02025 */  move  $a0, $a2
/* 00A67C 80009A7C 10600005 */  beqz  $v1, .L80009A94_ovl0
/* 00A680 80009A80 00000000 */   nop   
/* 00A684 80009A84 00602025 */  move  $a0, $v1
.L80009A88_ovl0:
/* 00A688 80009A88 8C630000 */  lw    $v1, ($v1)
/* 00A68C 80009A8C 5460FFFE */  bnezl $v1, .L80009A88_ovl0
/* 00A690 80009A90 00602025 */   move  $a0, $v1
.L80009A94_ovl0:
/* 00A694 80009A94 10000002 */  b     .L80009AA0_ovl0
/* 00A698 80009A98 AC820000 */   sw    $v0, ($a0)
/* 00A69C 80009A9C AC620080 */  sw    $v0, 0x80($v1)
.L80009AA0_ovl0:
/* 00A6A0 80009AA0 ACA00000 */  sw    $zero, ($a1)
/* 00A6A4 80009AA4 90EE0054 */  lbu   $t6, 0x54($a3)
/* 00A6A8 80009AA8 448E2000 */  mtc1  $t6, $f4
/* 00A6AC 80009AAC 05C10004 */  bgez  $t6, .L80009AC0_ovl0
/* 00A6B0 80009AB0 468021A0 */   cvt.s.w $f6, $f4
/* 00A6B4 80009AB4 44814000 */  mtc1  $at, $f8
/* 00A6B8 80009AB8 00000000 */  nop   
/* 00A6BC 80009ABC 46083180 */  add.s $f6, $f6, $f8
.L80009AC0_ovl0:
/* 00A6C0 80009AC0 3C01437F */  li    $at, 0x437F0000 # 255.000000
/* 00A6C4 80009AC4 44815000 */  mtc1  $at, $f10
/* 00A6C8 80009AC8 44804000 */  mtc1  $zero, $f8
/* 00A6CC 80009ACC 00E0C825 */  move  $t9, $a3
/* 00A6D0 80009AD0 460A3403 */  div.s $f16, $f6, $f10
/* 00A6D4 80009AD4 00A04025 */  move  $t0, $a1
/* 00A6D8 80009AD8 24E90078 */  addiu $t1, $a3, 0x78
/* 00A6DC 80009ADC E4B00084 */  swc1  $f16, 0x84($a1)
.L80009AE0_ovl0:
/* 00A6E0 80009AE0 8F380000 */  lw    $t8, ($t9)
/* 00A6E4 80009AE4 2739000C */  addiu $t9, $t9, 0xc
/* 00A6E8 80009AE8 2508000C */  addiu $t0, $t0, 0xc
/* 00A6EC 80009AEC AD18FFFC */  sw    $t8, -4($t0)
/* 00A6F0 80009AF0 8F2FFFF8 */  lw    $t7, -8($t9)
/* 00A6F4 80009AF4 AD0F0000 */  sw    $t7, ($t0)
/* 00A6F8 80009AF8 8F38FFFC */  lw    $t8, -4($t9)
/* 00A6FC 80009AFC 1729FFF8 */  bne   $t9, $t1, .L80009AE0_ovl0
/* 00A700 80009B00 AD180004 */   sw    $t8, 4($t0)
/* 00A704 80009B04 C4F20014 */  lwc1  $f18, 0x14($a3)
/* 00A708 80009B08 3C018004 */  lui   $at, %hi(D_80040658) # $at, 0x8004
/* 00A70C 80009B0C 44808000 */  mtc1  $zero, $f16
/* 00A710 80009B10 E4B2002C */  swc1  $f18, 0x2c($a1)
/* 00A714 80009B14 C4E4001C */  lwc1  $f4, 0x1c($a3)
/* 00A718 80009B18 A4A00080 */  sh    $zero, 0x80($a1)
/* 00A71C 80009B1C A4A00082 */  sh    $zero, 0x82($a1)
/* 00A720 80009B20 E4A80088 */  swc1  $f8, 0x88($a1)
/* 00A724 80009B24 ACA00090 */  sw    $zero, 0x90($a1)
/* 00A728 80009B28 ACA00094 */  sw    $zero, 0x94($a1)
/* 00A72C 80009B2C E4A40030 */  swc1  $f4, 0x30($a1)
/* 00A730 80009B30 C4260658 */  lwc1  $f6, %lo(D_80040658)($at)
/* 00A734 80009B34 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00A738 80009B38 44815000 */  mtc1  $at, $f10
/* 00A73C 80009B3C E4B000A0 */  swc1  $f16, 0xa0($a1)
/* 00A740 80009B40 E4A60098 */  swc1  $f6, 0x98($a1)
/* 00A744 80009B44 E4AA009C */  swc1  $f10, 0x9c($a1)
/* 00A748 80009B48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00A74C 80009B4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 00A750 80009B50 00A01025 */  move  $v0, $a1
/* 00A754 80009B54 03E00008 */  jr    $ra
/* 00A758 80009B58 00000000 */   nop   
