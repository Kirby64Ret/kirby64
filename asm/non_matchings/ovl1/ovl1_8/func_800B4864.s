glabel func_800B4864
/* 05CAB4 800B4864 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 05CAB8 800B4868 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 05CABC 800B486C 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 05CAC0 800B4870 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 05CAC4 800B4874 8C430000 */  lw    $v1, ($v0)
/* 05CAC8 800B4878 3C01800E */ lui $at, %hi(D_800E6690)
/* 05CACC 800B487C 00031880 */  sll   $v1, $v1, 2
/* 05CAD0 800B4880 00A32021 */  addu  $a0, $a1, $v1
/* 05CAD4 800B4884 00230821 */  addu  $at, $at, $v1
/* 05CAD8 800B4888 C4266690 */ lwc1 $f6, %lo(D_800E6690)($at)
/* 05CADC 800B488C C4840000 */  lwc1  $f4, ($a0)
/* 05CAE0 800B4890 3C01800E */ lui $at, %hi(D_800E6850)
/* 05CAE4 800B4894 46062200 */  add.s $f8, $f4, $f6
/* 05CAE8 800B4898 E4880000 */  swc1  $f8, ($a0)
/* 05CAEC 800B489C 8C430000 */  lw    $v1, ($v0)
/* 05CAF0 800B48A0 00031880 */  sll   $v1, $v1, 2
/* 05CAF4 800B48A4 00230821 */  addu  $at, $at, $v1
/* 05CAF8 800B48A8 C4226850 */ lwc1 $f2, %lo(D_800E6850)($at)
/* 05CAFC 800B48AC 3C01800D */  lui   $at, %hi(D_800D6820) # $at, 0x800d
/* 05CB00 800B48B0 C42A6820 */  lwc1  $f10, %lo(D_800D6820)($at)
/* 05CB04 800B48B4 00A32021 */  addu  $a0, $a1, $v1
/* 05CB08 800B48B8 46025032 */  c.eq.s $f10, $f2
/* 05CB0C 800B48BC 00000000 */  nop   
/* 05CB10 800B48C0 45010014 */  bc1t  .L800B4914_ovl1
/* 05CB14 800B48C4 00000000 */   nop   
/* 05CB18 800B48C8 C4800000 */  lwc1  $f0, ($a0)
/* 05CB1C 800B48CC 44808000 */  mtc1  $zero, $f16
/* 05CB20 800B48D0 00000000 */  nop   
/* 05CB24 800B48D4 4600803C */  c.lt.s $f16, $f0
/* 05CB28 800B48D8 00000000 */  nop   
/* 05CB2C 800B48DC 45020008 */  bc1fl .L800B4900_ovl1
/* 05CB30 800B48E0 46001307 */   neg.s $f12, $f2
/* 05CB34 800B48E4 4600103C */  c.lt.s $f2, $f0
/* 05CB38 800B48E8 00000000 */  nop   
/* 05CB3C 800B48EC 45000009 */  bc1f  .L800B4914_ovl1
/* 05CB40 800B48F0 00000000 */   nop   
/* 05CB44 800B48F4 03E00008 */  jr    $ra
/* 05CB48 800B48F8 E4820000 */   swc1  $f2, ($a0)

/* 05CB4C 800B48FC 46001307 */  neg.s $f12, $f2
.L800B4900_ovl1:
/* 05CB50 800B4900 460C003C */  c.lt.s $f0, $f12
/* 05CB54 800B4904 00000000 */  nop   
/* 05CB58 800B4908 45000002 */  bc1f  .L800B4914_ovl1
/* 05CB5C 800B490C 00000000 */   nop   
/* 05CB60 800B4910 E48C0000 */  swc1  $f12, ($a0)
.L800B4914_ovl1:
/* 05CB64 800B4914 03E00008 */  jr    $ra
/* 05CB68 800B4918 00000000 */   nop   
