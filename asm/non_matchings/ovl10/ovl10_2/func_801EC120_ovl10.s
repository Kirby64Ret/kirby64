glabel func_801EC120_ovl10
/* 1DCE90 801EC120 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DCE94 801EC124 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DCE98 801EC128 0C06835D */  jal   func_801A0D74_ovl10
/* 1DCE9C 801EC12C 00000000 */   nop   
/* 1DCEA0 801EC130 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DCEA4 801EC134 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DCEA8 801EC138 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1DCEAC 801EC13C 8DC20000 */  lw    $v0, ($t6)
/* 1DCEB0 801EC140 00021080 */  sll   $v0, $v0, 2
/* 1DCEB4 801EC144 01E27821 */  addu  $t7, $t7, $v0
/* 1DCEB8 801EC148 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1DCEBC 801EC14C 11E00017 */  beqz  $t7, .L801EC1AC_ovl10
/* 1DCEC0 801EC150 00000000 */   nop   
/* 1DCEC4 801EC154 0C029D9E */  jal   func_800A7678
/* 1DCEC8 801EC158 240401CC */   li    $a0, 460
/* 1DCECC 801EC15C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DCED0 801EC160 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DCED4 801EC164 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DCED8 801EC168 8C620000 */  lw    $v0, ($v1)
/* 1DCEDC 801EC16C 00021080 */  sll   $v0, $v0, 2
/* 1DCEE0 801EC170 00220821 */  addu  $at, $at, $v0
/* 1DCEE4 801EC174 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1DCEE8 801EC178 3C0140D0 */  li    $at, 0x40D00000 # 6.500000
/* 1DCEEC 801EC17C 44813000 */  mtc1  $at, $f6
/* 1DCEF0 801EC180 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DCEF4 801EC184 00220821 */  addu  $at, $at, $v0
/* 1DCEF8 801EC188 46062202 */  mul.s $f8, $f4, $f6
/* 1DCEFC 801EC18C E42864D0 */ swc1 $f8, %lo(D_800E64D0)($at)
/* 1DCF00 801EC190 8C780000 */  lw    $t8, ($v1)
/* 1DCF04 801EC194 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DCF08 801EC198 0018C880 */  sll   $t9, $t8, 2
/* 1DCF0C 801EC19C 00390821 */  addu  $at, $at, $t9
/* 1DCF10 801EC1A0 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DCF14 801EC1A4 8C620000 */  lw    $v0, ($v1)
/* 1DCF18 801EC1A8 00021080 */  sll   $v0, $v0, 2
.L801EC1AC_ovl10:
/* 1DCF1C 801EC1AC 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DCF20 801EC1B0 00220821 */  addu  $at, $at, $v0
/* 1DCF24 801EC1B4 C42064D0 */ lwc1 $f0, %lo(D_800E64D0)($at)
/* 1DCF28 801EC1B8 44805000 */  mtc1  $zero, $f10
/* 1DCF2C 801EC1BC 3C0140D0 */  li    $at, 0x40D00000 # 6.500000
/* 1DCF30 801EC1C0 3C08800F */  lui   $t0, %hi(D_800E9720) # $t0, 0x800f
/* 1DCF34 801EC1C4 460A003C */  c.lt.s $f0, $f10
/* 1DCF38 801EC1C8 44818000 */  mtc1  $at, $f16
/* 1DCF3C 801EC1CC 25089720 */  addiu $t0, %lo(D_800E9720) # addiu $t0, $t0, -0x68e0
/* 1DCF40 801EC1D0 00482021 */  addu  $a0, $v0, $t0
/* 1DCF44 801EC1D4 45020004 */  bc1fl .L801EC1E8_ovl10
/* 1DCF48 801EC1D8 46000086 */   mov.s $f2, $f0
/* 1DCF4C 801EC1DC 10000002 */  b     .L801EC1E8_ovl10
/* 1DCF50 801EC1E0 46000087 */   neg.s $f2, $f0
/* 1DCF54 801EC1E4 46000086 */  mov.s $f2, $f0
.L801EC1E8_ovl10:
/* 1DCF58 801EC1E8 46101032 */  c.eq.s $f2, $f16
/* 1DCF5C 801EC1EC 00000000 */  nop   
/* 1DCF60 801EC1F0 45000025 */  bc1f  .L801EC288_ovl10
/* 1DCF64 801EC1F4 00000000 */   nop   
/* 1DCF68 801EC1F8 8C850000 */  lw    $a1, ($a0)
/* 1DCF6C 801EC1FC 3C07800E */ lui $a3, %hi(D_800E25D0)
/* 1DCF70 801EC200 00E23821 */  addu  $a3, $a3, $v0
/* 1DCF74 801EC204 14A0001E */  bnez  $a1, .L801EC280_ovl10
/* 1DCF78 801EC208 2406000B */   li    $a2, 11
/* 1DCF7C 801EC20C 3C01800E */ lui $at, %hi(D_800E2790)
/* 1DCF80 801EC210 00220821 */  addu  $at, $at, $v0
/* 1DCF84 801EC214 C4322790 */ lwc1 $f18, %lo(D_800E2790)($at)
/* 1DCF88 801EC218 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 1DCF8C 801EC21C 44812000 */  mtc1  $at, $f4
/* 1DCF90 801EC220 3C01800E */ lui $at, %hi(D_800E2950)
/* 1DCF94 801EC224 00220821 */  addu  $at, $at, $v0
/* 1DCF98 801EC228 46049181 */  sub.s $f6, $f18, $f4
/* 1DCF9C 801EC22C C4282950 */ lwc1 $f8, %lo(D_800E2950)($at)
/* 1DCFA0 801EC230 24040006 */  li    $a0, 6
/* 1DCFA4 801EC234 24050002 */  li    $a1, 2
/* 1DCFA8 801EC238 E7A60010 */  swc1  $f6, 0x10($sp)
/* 1DCFAC 801EC23C 8CE725D0 */ lw $a3, %lo(D_800E25D0)($a3)
/* 1DCFB0 801EC240 0C029FDD */  jal   func_800A7F74_ovl10
/* 1DCFB4 801EC244 E7A80014 */   swc1  $f8, 0x14($sp)
/* 1DCFB8 801EC248 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DCFBC 801EC24C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DCFC0 801EC250 3C01800F */ lui $at, %hi(D_800E9720)
/* 1DCFC4 801EC254 24090004 */  li    $t1, 4
/* 1DCFC8 801EC258 8C6A0000 */  lw    $t2, ($v1)
/* 1DCFCC 801EC25C 3C0E800F */  lui   $t6, %hi(D_800E9720) # $t6, 0x800f
/* 1DCFD0 801EC260 25CE9720 */  addiu $t6, %lo(D_800E9720) # addiu $t6, $t6, -0x68e0
/* 1DCFD4 801EC264 000A5880 */  sll   $t3, $t2, 2
/* 1DCFD8 801EC268 002B0821 */  addu  $at, $at, $t3
/* 1DCFDC 801EC26C AC299720 */ sw $t1, %lo(D_800E9720)($at)
/* 1DCFE0 801EC270 8C6C0000 */  lw    $t4, ($v1)
/* 1DCFE4 801EC274 000C6880 */  sll   $t5, $t4, 2
/* 1DCFE8 801EC278 01AE2021 */  addu  $a0, $t5, $t6
/* 1DCFEC 801EC27C 8C850000 */  lw    $a1, ($a0)
.L801EC280_ovl10:
/* 1DCFF0 801EC280 24AFFFFF */  addiu $t7, $a1, -1
/* 1DCFF4 801EC284 AC8F0000 */  sw    $t7, ($a0)
.L801EC288_ovl10:
/* 1DCFF8 801EC288 0C0680ED */  jal   func_801A03B4_ovl10
/* 1DCFFC 801EC28C 00000000 */   nop   
/* 1DD000 801EC290 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DD004 801EC294 27BD0020 */  addiu $sp, $sp, 0x20
/* 1DD008 801EC298 03E00008 */  jr    $ra
/* 1DD00C 801EC29C 00000000 */   nop   