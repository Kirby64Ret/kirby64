glabel func_8011E2A0_ovl2
/* 0A6D10 8011E2A0 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0A6D14 8011E2A4 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0A6D18 8011E2A8 8C4E0034 */  lw    $t6, 0x34($v0)
/* 0A6D1C 8011E2AC 31CF4000 */  andi  $t7, $t6, 0x4000
/* 0A6D20 8011E2B0 55E00017 */  bnezl $t7, .L8011E310_ovl2
/* 0A6D24 8011E2B4 44800000 */   mtc1  $zero, $f0
/* 0A6D28 8011E2B8 8C580114 */  lw    $t8, 0x114($v0)
/* 0A6D2C 8011E2BC 3C018013 */  lui   $at, %hi(D_80128F18) # $at, 0x8013
/* 0A6D30 8011E2C0 C42C8F18 */  lwc1  $f12, %lo(D_80128F18)($at)
/* 0A6D34 8011E2C4 97190010 */  lhu   $t9, 0x10($t8)
/* 0A6D38 8011E2C8 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0A6D3C 8011E2CC 44992000 */  mtc1  $t9, $f4
/* 0A6D40 8011E2D0 07210004 */  bgez  $t9, .L8011E2E4_ovl2
/* 0A6D44 8011E2D4 468021A0 */   cvt.s.w $f6, $f4
/* 0A6D48 8011E2D8 44814000 */  mtc1  $at, $f8
/* 0A6D4C 8011E2DC 00000000 */  nop   
/* 0A6D50 8011E2E0 46083180 */  add.s $f6, $f6, $f8
.L8011E2E4_ovl2:
/* 0A6D54 8011E2E4 460C3082 */  mul.s $f2, $f6, $f12
/* 0A6D58 8011E2E8 44805000 */  mtc1  $zero, $f10
/* 0A6D5C 8011E2EC 00000000 */  nop   
/* 0A6D60 8011E2F0 460A1032 */  c.eq.s $f2, $f10
/* 0A6D64 8011E2F4 00000000 */  nop   
/* 0A6D68 8011E2F8 45030005 */  bc1tl .L8011E310_ovl2
/* 0A6D6C 8011E2FC 44800000 */   mtc1  $zero, $f0
/* 0A6D70 8011E300 460C1002 */  mul.s $f0, $f2, $f12
/* 0A6D74 8011E304 03E00008 */  jr    $ra
/* 0A6D78 8011E308 00000000 */   nop   

/* 0A6D7C 8011E30C 44800000 */  mtc1  $zero, $f0
.L8011E310_ovl2:
/* 0A6D80 8011E310 00000000 */  nop   
/* 0A6D84 8011E314 03E00008 */  jr    $ra
/* 0A6D88 8011E318 00000000 */   nop   
