glabel func_8017CF60_ovl3
/* 0DD9A0 8017CF60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0DD9A4 8017CF64 AFB10018 */  sw    $s1, 0x18($sp)
/* 0DD9A8 8017CF68 AFB00014 */  sw    $s0, 0x14($sp)
/* 0DD9AC 8017CF6C 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0DD9B0 8017CF70 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0DD9B4 8017CF74 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0DD9B8 8017CF78 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0DD9BC 8017CF7C 8E2E0000 */  lw    $t6, ($s1)
/* 0DD9C0 8017CF80 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0DD9C4 8017CF84 AFA40020 */  sw    $a0, 0x20($sp)
/* 0DD9C8 8017CF88 AE000030 */  sw    $zero, 0x30($s0)
/* 0DD9CC 8017CF8C AE00004C */  sw    $zero, 0x4c($s0)
/* 0DD9D0 8017CF90 A2000007 */  sb    $zero, 7($s0)
/* 0DD9D4 8017CF94 8DCF0000 */  lw    $t7, ($t6)
/* 0DD9D8 8017CF98 44802000 */  mtc1  $zero, $f4
/* 0DD9DC 8017CF9C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 0DD9E0 8017CFA0 000FC080 */  sll   $t8, $t7, 2
/* 0DD9E4 8017CFA4 00380821 */  addu  $at, $at, $t8
/* 0DD9E8 8017CFA8 0C0473D6 */  jal   func_8011CF58
/* 0DD9EC 8017CFAC E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 0DD9F0 8017CFB0 8E190090 */  lw    $t9, 0x90($s0)
/* 0DD9F4 8017CFB4 8E250000 */  lw    $a1, ($s1)
/* 0DD9F8 8017CFB8 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0DD9FC 8017CFBC AE1900A0 */  sw    $t9, 0xa0($s0)
/* 0DDA00 8017CFC0 8CA90000 */  lw    $t1, ($a1)
/* 0DDA04 8017CFC4 24080028 */  li    $t0, 40
/* 0DDA08 8017CFC8 3C0B8019 */  lui   $t3, %hi(D_801928D8) # $t3, 0x8019
/* 0DDA0C 8017CFCC 00095080 */  sll   $t2, $t1, 2
/* 0DDA10 8017CFD0 002A0821 */  addu  $at, $at, $t2
/* 0DDA14 8017CFD4 AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 0DDA18 8017CFD8 8CAC0000 */  lw    $t4, ($a1)
/* 0DDA1C 8017CFDC 3C01800E */ lui $at, %hi(D_800E0490)
/* 0DDA20 8017CFE0 256B28D8 */  addiu $t3, %lo(D_801928D8) # addiu $t3, $t3, 0x28d8
/* 0DDA24 8017CFE4 000C6880 */  sll   $t5, $t4, 2
/* 0DDA28 8017CFE8 002D0821 */  addu  $at, $at, $t5
/* 0DDA2C 8017CFEC 3C0E8019 */  lui   $t6, %hi(D_80190580) # $t6, 0x8019
/* 0DDA30 8017CFF0 AC2B0490 */ sw $t3, %lo(D_800E0490)($at)
/* 0DDA34 8017CFF4 25CE0580 */  addiu $t6, %lo(D_80190580) # addiu $t6, $t6, 0x580
/* 0DDA38 8017CFF8 AE0E015C */  sw    $t6, 0x15c($s0)
/* 0DDA3C 8017CFFC AE000044 */  sw    $zero, 0x44($s0)
/* 0DDA40 8017D000 0C047701 */  jal   func_8011DC04
/* 0DDA44 8017D004 240400AA */   li    $a0, 170
/* 0DDA48 8017D008 3C040002 */  lui   $a0, (0x00020013 >> 16) # lui $a0, 2
/* 0DDA4C 8017D00C 0C048BC2 */  jal   func_80122F08
/* 0DDA50 8017D010 34840013 */   ori   $a0, (0x00020013 & 0xFFFF) # ori $a0, $a0, 0x13
/* 0DDA54 8017D014 8E250000 */  lw    $a1, ($s1)
/* 0DDA58 8017D018 240F0002 */  li    $t7, 2
/* 0DDA5C 8017D01C AE0F0154 */  sw    $t7, 0x154($s0)
/* 0DDA60 8017D020 8CB80000 */  lw    $t8, ($a1)
/* 0DDA64 8017D024 44803000 */  mtc1  $zero, $f6
/* 0DDA68 8017D028 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 0DDA6C 8017D02C 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 0DDA70 8017D030 0018C880 */  sll   $t9, $t8, 2
/* 0DDA74 8017D034 00994821 */  addu  $t1, $a0, $t9
/* 0DDA78 8017D038 E5260000 */  swc1  $f6, ($t1)
/* 0DDA7C 8017D03C 8CA20000 */  lw    $v0, ($a1)
/* 0DDA80 8017D040 3C01800E */ lui $at, %hi(D_800E3210)
/* 0DDA84 8017D044 3C03800F */ lui $v1, %hi(D_800E8AE0)
/* 0DDA88 8017D048 00021080 */  sll   $v0, $v0, 2
/* 0DDA8C 8017D04C 00824021 */  addu  $t0, $a0, $v0
/* 0DDA90 8017D050 C5080000 */  lwc1  $f8, ($t0)
/* 0DDA94 8017D054 00220821 */  addu  $at, $at, $v0
/* 0DDA98 8017D058 44803000 */  mtc1  $zero, $f6
/* 0DDA9C 8017D05C E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 0DDAA0 8017D060 8CAA0000 */  lw    $t2, ($a1)
/* 0DDAA4 8017D064 3C018019 */  lui   $at, %hi(D_80197664) # $at, 0x8019
/* 0DDAA8 8017D068 C42A7664 */  lwc1  $f10, %lo(D_80197664)($at)
/* 0DDAAC 8017D06C 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0DDAB0 8017D070 000A6080 */  sll   $t4, $t2, 2
/* 0DDAB4 8017D074 002C0821 */  addu  $at, $at, $t4
/* 0DDAB8 8017D078 E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
/* 0DDABC 8017D07C 8CA20000 */  lw    $v0, ($a1)
/* 0DDAC0 8017D080 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0DDAC4 8017D084 3C040002 */  lui   $a0, (0x000201B8 >> 16) # lui $a0, 2
/* 0DDAC8 8017D088 00021080 */  sll   $v0, $v0, 2
/* 0DDACC 8017D08C 00220821 */  addu  $at, $at, $v0
/* 0DDAD0 8017D090 C4306A10 */ lwc1 $f16, %lo(D_800E6A10)($at)
/* 0DDAD4 8017D094 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0DDAD8 8017D098 44819000 */  mtc1  $at, $f18
/* 0DDADC 8017D09C 3C01800E */  lui    $at, %hi(D_800E6690)
/* 0DDAE0 8017D0A0 00220821 */  addu  $at, $at, $v0
/* 0DDAE4 8017D0A4 46128102 */  mul.s $f4, $f16, $f18
/* 0DDAE8 8017D0A8 E4246690 */  swc1  $f4, %lo(D_800E6690)($at)
/* 0DDAEC 8017D0AC 8CA20000 */  lw    $v0, ($a1)
/* 0DDAF0 8017D0B0 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0DDAF4 8017D0B4 00021080 */  sll   $v0, $v0, 2
/* 0DDAF8 8017D0B8 00621821 */  addu  $v1, $v1, $v0
/* 0DDAFC 8017D0BC 8C638AE0 */ lw $v1, %lo(D_800E8AE0)($v1)
/* 0DDB00 8017D0C0 30630006 */  andi  $v1, $v1, 6
/* 0DDB04 8017D0C4 54600008 */  bnezl $v1, .L8017D0E8_ovl3
/* 0DDB08 8017D0C8 44816000 */   mtc1  $at, $f12
/* 0DDB0C 8017D0CC 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0DDB10 8017D0D0 44811000 */  mtc1  $at, $f2
/* 0DDB14 8017D0D4 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0DDB18 8017D0D8 44816000 */  mtc1  $at, $f12
/* 0DDB1C 8017D0DC 10000005 */  b     .L8017D0F4_ovl3
/* 0DDB20 8017D0E0 46001006 */   mov.s $f0, $f2
/* 0DDB24 8017D0E4 44816000 */  mtc1  $at, $f12
.L8017D0E8_ovl3:
/* 0DDB28 8017D0E8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0DDB2C 8017D0EC 44811000 */  mtc1  $at, $f2
/* 0DDB30 8017D0F0 46006006 */  mov.s $f0, $f12
.L8017D0F4_ovl3:
/* 0DDB34 8017D0F4 4606003C */  c.lt.s $f0, $f6
/* 0DDB38 8017D0F8 3C01800E */ lui $at, %hi(D_800E6850)
/* 0DDB3C 8017D0FC 00220821 */  addu  $at, $at, $v0
/* 0DDB40 8017D100 4500000A */  bc1f  .L8017D12C_ovl3
/* 0DDB44 8017D104 00000000 */   nop   
/* 0DDB48 8017D108 14600003 */  bnez  $v1, .L8017D118_ovl3
/* 0DDB4C 8017D10C 3C01800E */ lui $at, %hi(D_800E6850)
/* 0DDB50 8017D110 10000002 */  b     .L8017D11C_ovl3
/* 0DDB54 8017D114 46001006 */   mov.s $f0, $f2
.L8017D118_ovl3:
/* 0DDB58 8017D118 46006006 */  mov.s $f0, $f12
.L8017D11C_ovl3:
/* 0DDB5C 8017D11C 46000207 */  neg.s $f8, $f0
/* 0DDB60 8017D120 00220821 */  addu  $at, $at, $v0
/* 0DDB64 8017D124 10000007 */  b     .L8017D144_ovl3
/* 0DDB68 8017D128 E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
.L8017D12C_ovl3:
/* 0DDB6C 8017D12C 54600004 */  bnezl $v1, .L8017D140_ovl3
/* 0DDB70 8017D130 46006006 */   mov.s $f0, $f12
/* 0DDB74 8017D134 10000002 */  b     .L8017D140_ovl3
/* 0DDB78 8017D138 46001006 */   mov.s $f0, $f2
/* 0DDB7C 8017D13C 46006006 */  mov.s $f0, $f12
.L8017D140_ovl3:
/* 0DDB80 8017D140 E4206850 */  swc1  $f0, %lo(D_800E6850)($at)
.L8017D144_ovl3:
/* 0DDB84 8017D144 0C02A806 */  jal   func_800AA018
/* 0DDB88 8017D148 348401B8 */   ori   $a0, (0x000201B8 & 0xFFFF) # ori $a0, $a0, 0x1b8
/* 0DDB8C 8017D14C 0C02BC8C */  jal   func_800AF230
/* 0DDB90 8017D150 00000000 */   nop   
/* 0DDB94 8017D154 54400022 */  bnezl $v0, .L8017D1E0_ovl3
/* 0DDB98 8017D158 24190001 */   li    $t9, 1
/* 0DDB9C 8017D15C 920B0017 */  lbu   $t3, 0x17($s0)
.L8017D160_ovl3:
/* 0DDBA0 8017D160 11600018 */  beqz  $t3, .L8017D1C4_ovl3
/* 0DDBA4 8017D164 00000000 */   nop   
/* 0DDBA8 8017D168 8E250000 */  lw    $a1, ($s1)
/* 0DDBAC 8017D16C 44805000 */  mtc1  $zero, $f10
/* 0DDBB0 8017D170 3C01800E */ lui $at, %hi(D_800E6690)
/* 0DDBB4 8017D174 8CAD0000 */  lw    $t5, ($a1)
/* 0DDBB8 8017D178 000D7080 */  sll   $t6, $t5, 2
/* 0DDBBC 8017D17C 002E0821 */  addu  $at, $at, $t6
/* 0DDBC0 8017D180 E42A6690 */ swc1 $f10, %lo(D_800E6690)($at)
/* 0DDBC4 8017D184 8CA20000 */  lw    $v0, ($a1)
/* 0DDBC8 8017D188 3C01800E */ lui $at, %hi(D_800E6690)
/* 0DDBCC 8017D18C 00021080 */  sll   $v0, $v0, 2
/* 0DDBD0 8017D190 00220821 */  addu  $at, $at, $v0
/* 0DDBD4 8017D194 C4306690 */ lwc1 $f16, %lo(D_800E6690)($at)
/* 0DDBD8 8017D198 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0DDBDC 8017D19C 00220821 */  addu  $at, $at, $v0
/* 0DDBE0 8017D1A0 E43064D0 */ swc1 $f16, %lo(D_800E64D0)($at)
/* 0DDBE4 8017D1A4 8CAF0000 */  lw    $t7, ($a1)
/* 0DDBE8 8017D1A8 3C018019 */  lui   $at, %hi(D_80197668) # $at, 0x8019
/* 0DDBEC 8017D1AC C4327668 */  lwc1  $f18, %lo(D_80197668)($at)
/* 0DDBF0 8017D1B0 3C01800E */ lui $at, %hi(D_800E6850)
/* 0DDBF4 8017D1B4 000FC080 */  sll   $t8, $t7, 2
/* 0DDBF8 8017D1B8 00380821 */  addu  $at, $at, $t8
/* 0DDBFC 8017D1BC 10000070 */  b     .L8017D380_ovl3
/* 0DDC00 8017D1C0 E4326850 */ swc1 $f18, %lo(D_800E6850)($at)
.L8017D1C4_ovl3:
/* 0DDC04 8017D1C4 0C002DAF */  jal   finish_current_thread
/* 0DDC08 8017D1C8 24040001 */   li    $a0, 1
/* 0DDC0C 8017D1CC 0C02BC8C */  jal   func_800AF230
/* 0DDC10 8017D1D0 00000000 */   nop   
/* 0DDC14 8017D1D4 5040FFE2 */  beql  $v0, $zero, .L8017D160_ovl3
/* 0DDC18 8017D1D8 920B0017 */   lbu   $t3, 0x17($s0)
/* 0DDC1C 8017D1DC 24190001 */  li    $t9, 1
.L8017D1E0_ovl3:
/* 0DDC20 8017D1E0 3C040002 */  lui   $a0, (0x000201B9 >> 16) # lui $a0, 2
/* 0DDC24 8017D1E4 AE190044 */  sw    $t9, 0x44($s0)
/* 0DDC28 8017D1E8 0C02A806 */  jal   func_800AA018
/* 0DDC2C 8017D1EC 348401B9 */   ori   $a0, (0x000201B9 & 0xFFFF) # ori $a0, $a0, 0x1b9
/* 0DDC30 8017D1F0 0C02BC8C */  jal   func_800AF230
/* 0DDC34 8017D1F4 00000000 */   nop   
/* 0DDC38 8017D1F8 54400022 */  bnezl $v0, .L8017D284_ovl3
/* 0DDC3C 8017D1FC 8E250000 */   lw    $a1, ($s1)
/* 0DDC40 8017D200 92090017 */  lbu   $t1, 0x17($s0)
.L8017D204_ovl3:
/* 0DDC44 8017D204 11200018 */  beqz  $t1, .L8017D268_ovl3
/* 0DDC48 8017D208 00000000 */   nop   
/* 0DDC4C 8017D20C 8E250000 */  lw    $a1, ($s1)
/* 0DDC50 8017D210 44802000 */  mtc1  $zero, $f4
/* 0DDC54 8017D214 3C03800E */  lui   $v1, %hi(D_800E6690) # $v1, 0x800e
/* 0DDC58 8017D218 8CA80000 */  lw    $t0, ($a1)
/* 0DDC5C 8017D21C 24636690 */  addiu $v1, %lo(D_800E6690) # addiu $v1, $v1, 0x6690
/* 0DDC60 8017D220 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0DDC64 8017D224 00085080 */  sll   $t2, $t0, 2
/* 0DDC68 8017D228 006A6021 */  addu  $t4, $v1, $t2
/* 0DDC6C 8017D22C E5840000 */  swc1  $f4, ($t4)
/* 0DDC70 8017D230 8CA20000 */  lw    $v0, ($a1)
/* 0DDC74 8017D234 00021080 */  sll   $v0, $v0, 2
/* 0DDC78 8017D238 00625821 */  addu  $t3, $v1, $v0
/* 0DDC7C 8017D23C C5660000 */  lwc1  $f6, ($t3)
/* 0DDC80 8017D240 00220821 */  addu  $at, $at, $v0
/* 0DDC84 8017D244 E42664D0 */ swc1 $f6, %lo(D_800E64D0)($at)
/* 0DDC88 8017D248 8CAD0000 */  lw    $t5, ($a1)
/* 0DDC8C 8017D24C 3C018019 */  lui   $at, %hi(D_8019766C) # $at, 0x8019
/* 0DDC90 8017D250 C428766C */  lwc1  $f8, %lo(D_8019766C)($at)
/* 0DDC94 8017D254 3C01800E */ lui $at, %hi(D_800E6850)
/* 0DDC98 8017D258 000D7080 */  sll   $t6, $t5, 2
/* 0DDC9C 8017D25C 002E0821 */  addu  $at, $at, $t6
/* 0DDCA0 8017D260 10000047 */  b     .L8017D380_ovl3
/* 0DDCA4 8017D264 E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
.L8017D268_ovl3:
/* 0DDCA8 8017D268 0C002DAF */  jal   finish_current_thread
/* 0DDCAC 8017D26C 24040001 */   li    $a0, 1
/* 0DDCB0 8017D270 0C02BC8C */  jal   func_800AF230
/* 0DDCB4 8017D274 00000000 */   nop   
/* 0DDCB8 8017D278 5040FFE2 */  beql  $v0, $zero, .L8017D204_ovl3
/* 0DDCBC 8017D27C 92090017 */   lbu   $t1, 0x17($s0)
/* 0DDCC0 8017D280 8E250000 */  lw    $a1, ($s1)
.L8017D284_ovl3:
/* 0DDCC4 8017D284 3C0F800F */ lui $t7, %hi(D_800E8AE0)
/* 0DDCC8 8017D288 3C06800F */  lui   $a2, %hi(D_800E9720) # $a2, 0x800f
/* 0DDCCC 8017D28C 8CA20000 */  lw    $v0, ($a1)
/* 0DDCD0 8017D290 24C69720 */  addiu $a2, %lo(D_800E9720) # addiu $a2, $a2, -0x68e0
/* 0DDCD4 8017D294 2408000F */  li    $t0, 15
/* 0DDCD8 8017D298 00021080 */  sll   $v0, $v0, 2
/* 0DDCDC 8017D29C 01E27821 */  addu  $t7, $t7, $v0
/* 0DDCE0 8017D2A0 8DEF8AE0 */ lw $t7, %lo(D_800E8AE0)($t7)
/* 0DDCE4 8017D2A4 00C25021 */  addu  $t2, $a2, $v0
/* 0DDCE8 8017D2A8 24190014 */  li    $t9, 20
/* 0DDCEC 8017D2AC 31F80006 */  andi  $t8, $t7, 6
/* 0DDCF0 8017D2B0 57000007 */  bnezl $t8, .L8017D2D0_ovl3
/* 0DDCF4 8017D2B4 AD480000 */   sw    $t0, ($t2)
/* 0DDCF8 8017D2B8 3C06800F */  lui   $a2, %hi(D_800E9720) # $a2, 0x800f
/* 0DDCFC 8017D2BC 24C69720 */  addiu $a2, %lo(D_800E9720) # addiu $a2, $a2, -0x68e0
/* 0DDD00 8017D2C0 00C24821 */  addu  $t1, $a2, $v0
/* 0DDD04 8017D2C4 10000002 */  b     .L8017D2D0_ovl3
/* 0DDD08 8017D2C8 AD390000 */   sw    $t9, ($t1)
/* 0DDD0C 8017D2CC AD480000 */  sw    $t0, ($t2)
.L8017D2D0_ovl3:
/* 0DDD10 8017D2D0 8CAC0000 */  lw    $t4, ($a1)
/* 0DDD14 8017D2D4 000C5880 */  sll   $t3, $t4, 2
/* 0DDD18 8017D2D8 00CB1021 */  addu  $v0, $a2, $t3
/* 0DDD1C 8017D2DC 8C430000 */  lw    $v1, ($v0)
/* 0DDD20 8017D2E0 246DFFFF */  addiu $t5, $v1, -1
/* 0DDD24 8017D2E4 10600026 */  beqz  $v1, .L8017D380_ovl3
/* 0DDD28 8017D2E8 AC4D0000 */   sw    $t5, ($v0)
.L8017D2EC_ovl3:
/* 0DDD2C 8017D2EC 920E0017 */  lbu   $t6, 0x17($s0)
/* 0DDD30 8017D2F0 11C00017 */  beqz  $t6, .L8017D350_ovl3
/* 0DDD34 8017D2F4 00000000 */   nop   
/* 0DDD38 8017D2F8 8CAF0000 */  lw    $t7, ($a1)
/* 0DDD3C 8017D2FC 44805000 */  mtc1  $zero, $f10
/* 0DDD40 8017D300 3C01800E */ lui $at, %hi(D_800E6690)
/* 0DDD44 8017D304 000FC080 */  sll   $t8, $t7, 2
/* 0DDD48 8017D308 00380821 */  addu  $at, $at, $t8
/* 0DDD4C 8017D30C E42A6690 */ swc1 $f10, %lo(D_800E6690)($at)
/* 0DDD50 8017D310 8CA20000 */  lw    $v0, ($a1)
/* 0DDD54 8017D314 3C01800E */ lui $at, %hi(D_800E6690)
/* 0DDD58 8017D318 00021080 */  sll   $v0, $v0, 2
/* 0DDD5C 8017D31C 00220821 */  addu  $at, $at, $v0
/* 0DDD60 8017D320 C4306690 */ lwc1 $f16, %lo(D_800E6690)($at)
/* 0DDD64 8017D324 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0DDD68 8017D328 00220821 */  addu  $at, $at, $v0
/* 0DDD6C 8017D32C E43064D0 */ swc1 $f16, %lo(D_800E64D0)($at)
/* 0DDD70 8017D330 8CB90000 */  lw    $t9, ($a1)
/* 0DDD74 8017D334 3C018019 */  lui   $at, %hi(D_80197670) # $at, 0x8019
/* 0DDD78 8017D338 C4327670 */  lwc1  $f18, %lo(D_80197670)($at)
/* 0DDD7C 8017D33C 3C01800E */ lui $at, %hi(D_800E6850)
/* 0DDD80 8017D340 00194880 */  sll   $t1, $t9, 2
/* 0DDD84 8017D344 00290821 */  addu  $at, $at, $t1
/* 0DDD88 8017D348 1000000D */  b     .L8017D380_ovl3
/* 0DDD8C 8017D34C E4326850 */ swc1 $f18, %lo(D_800E6850)($at)
.L8017D350_ovl3:
/* 0DDD90 8017D350 0C002DAF */  jal   finish_current_thread
/* 0DDD94 8017D354 24040001 */   li    $a0, 1
/* 0DDD98 8017D358 8E250000 */  lw    $a1, ($s1)
/* 0DDD9C 8017D35C 3C06800F */  lui   $a2, %hi(D_800E9720) # $a2, 0x800f
/* 0DDDA0 8017D360 24C69720 */  addiu $a2, %lo(D_800E9720) # addiu $a2, $a2, -0x68e0
/* 0DDDA4 8017D364 8CA80000 */  lw    $t0, ($a1)
/* 0DDDA8 8017D368 00085080 */  sll   $t2, $t0, 2
/* 0DDDAC 8017D36C 00CA1021 */  addu  $v0, $a2, $t2
/* 0DDDB0 8017D370 8C430000 */  lw    $v1, ($v0)
/* 0DDDB4 8017D374 246CFFFF */  addiu $t4, $v1, -1
/* 0DDDB8 8017D378 1460FFDC */  bnez  $v1, .L8017D2EC_ovl3
/* 0DDDBC 8017D37C AC4C0000 */   sw    $t4, ($v0)
.L8017D380_ovl3:
/* 0DDDC0 8017D380 240BFFFF */  li    $t3, -1
/* 0DDDC4 8017D384 3C040002 */  lui   $a0, (0x000201BA >> 16) # lui $a0, 2
/* 0DDDC8 8017D388 AE0B0044 */  sw    $t3, 0x44($s0)
/* 0DDDCC 8017D38C 0C02A855 */  jal   func_800AA154
/* 0DDDD0 8017D390 348401BA */   ori   $a0, (0x000201BA & 0xFFFF) # ori $a0, $a0, 0x1ba
/* 0DDDD4 8017D394 0C047717 */  jal   func_8011DC5C
/* 0DDDD8 8017D398 00000000 */   nop   
/* 0DDDDC 8017D39C 0C04783A */  jal   func_8011E0E8
/* 0DDDE0 8017D3A0 00000000 */   nop   
/* 0DDDE4 8017D3A4 0C04828A */  jal   func_80120A28
/* 0DDDE8 8017D3A8 AE0000A0 */   sw    $zero, 0xa0($s0)
/* 0DDDEC 8017D3AC 8E2D0000 */  lw    $t5, ($s1)
/* 0DDDF0 8017D3B0 3C0E800F */ lui $t6, %hi(D_800E8AE0)
/* 0DDDF4 8017D3B4 8DA20000 */  lw    $v0, ($t5)
/* 0DDDF8 8017D3B8 00021080 */  sll   $v0, $v0, 2
/* 0DDDFC 8017D3BC 01C27021 */  addu  $t6, $t6, $v0
/* 0DDE00 8017D3C0 8DCE8AE0 */ lw $t6, %lo(D_800E8AE0)($t6)
/* 0DDE04 8017D3C4 31CF0006 */  andi  $t7, $t6, 6
/* 0DDE08 8017D3C8 15E00008 */  bnez  $t7, .L8017D3EC_ovl3
/* 0DDE0C 8017D3CC 3C18800E */   lui   $t8, %hi(D_800E6690) # $t8, 0x800e
/* 0DDE10 8017D3D0 27186690 */  addiu $t8, %lo(D_800E6690) # addiu $t8, $t8, 0x6690
/* 0DDE14 8017D3D4 00581821 */  addu  $v1, $v0, $t8
/* 0DDE18 8017D3D8 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 0DDE1C 8017D3DC 44813000 */  mtc1  $at, $f6
/* 0DDE20 8017D3E0 C4640000 */  lwc1  $f4, ($v1)
/* 0DDE24 8017D3E4 46062202 */  mul.s $f8, $f4, $f6
/* 0DDE28 8017D3E8 E4680000 */  swc1  $f8, ($v1)
.L8017D3EC_ovl3:
/* 0DDE2C 8017D3EC 0C047585 */  jal   func_8011D614
/* 0DDE30 8017D3F0 00000000 */   nop   
/* 0DDE34 8017D3F4 3C040002 */  lui   $a0, (0x00020188 >> 16) # lui $a0, 2
/* 0DDE38 8017D3F8 3C050002 */  lui   $a1, (0x00020189 >> 16) # lui $a1, 2
/* 0DDE3C 8017D3FC 34A50189 */  ori   $a1, (0x00020189 & 0xFFFF) # ori $a1, $a1, 0x189
/* 0DDE40 8017D400 34840188 */  ori   $a0, (0x00020188 & 0xFFFF) # ori $a0, $a0, 0x188
/* 0DDE44 8017D404 0C048C3A */  jal   func_801230E8
/* 0DDE48 8017D408 24060001 */   li    $a2, 1
/* 0DDE4C 8017D40C 8E190030 */  lw    $t9, 0x30($s0)
/* 0DDE50 8017D410 27290001 */  addiu $t1, $t9, 1
/* 0DDE54 8017D414 0C02BE85 */  jal   func_800AFA14
/* 0DDE58 8017D418 AE090030 */   sw    $t1, 0x30($s0)
/* 0DDE5C 8017D41C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0DDE60 8017D420 8FB00014 */  lw    $s0, 0x14($sp)
/* 0DDE64 8017D424 8FB10018 */  lw    $s1, 0x18($sp)
/* 0DDE68 8017D428 03E00008 */  jr    $ra
/* 0DDE6C 8017D42C 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8017CF60_ovl3, @function
.size func_8017CF60_ovl3, . - func_8017CF60_ovl3
