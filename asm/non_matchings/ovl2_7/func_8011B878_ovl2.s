glabel func_8011B878_ovl2
/* 0A42E8 8011B878 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A42EC 8011B87C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A42F0 8011B880 AFB00018 */  sw    $s0, 0x18($sp)
/* 0A42F4 8011B884 0C04555E */  jal   func_80115578_ovl2
/* 0A42F8 8011B888 00808025 */   move  $s0, $a0
/* 0A42FC 8011B88C 0C0461D8 */  jal   func_80118760_ovl2
/* 0A4300 8011B890 02002025 */   move  $a0, $s0
/* 0A4304 8011B894 44806000 */  mtc1  $zero, $f12
/* 0A4308 8011B898 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A430C 8011B89C 00000000 */   nop   
/* 0A4310 8011B8A0 44806000 */  mtc1  $zero, $f12
/* 0A4314 8011B8A4 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A4318 8011B8A8 00000000 */   nop   
/* 0A431C 8011B8AC 3C10800D */  lui   $s0, %hi(D_800D6E14) # $s0, 0x800d
/* 0A4320 8011B8B0 26106E14 */  addiu $s0, %lo(D_800D6E14) # addiu $s0, $s0, 0x6e14
/* 0A4324 8011B8B4 8E0E0000 */  lw    $t6, ($s0)
/* 0A4328 8011B8B8 15C00006 */  bnez  $t6, .L8011B8D4_ovl2
/* 0A432C 8011B8BC 00000000 */   nop   
.L8011B8C0_ovl2:
/* 0A4330 8011B8C0 0C002DAF */  jal   func_8000B6BC_ovl2
/* 0A4334 8011B8C4 24040001 */   li    $a0, 1
/* 0A4338 8011B8C8 8E0F0000 */  lw    $t7, ($s0)
/* 0A433C 8011B8CC 11E0FFFC */  beqz  $t7, .L8011B8C0_ovl2
/* 0A4340 8011B8D0 00000000 */   nop   
.L8011B8D4_ovl2:
/* 0A4344 8011B8D4 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 0A4348 8011B8D8 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 0A434C 8011B8DC 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A4350 8011B8E0 C60C0000 */   lwc1  $f12, ($s0)
/* 0A4354 8011B8E4 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A4358 8011B8E8 C60C0000 */   lwc1  $f12, ($s0)
/* 0A435C 8011B8EC 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 0A4360 8011B8F0 44812000 */  mtc1  $at, $f4
/* 0A4364 8011B8F4 3C01800D */  lui   $at, %hi(D_800D6B14) # $at, 0x800d
/* 0A4368 8011B8F8 C4266B14 */  lwc1  $f6, %lo(D_800D6B14)($at)
/* 0A436C 8011B8FC 46062202 */  mul.s $f8, $f4, $f6
/* 0A4370 8011B900 4600428D */  trunc.w.s $f10, $f8
/* 0A4374 8011B904 44045000 */  mfc1  $a0, $f10
/* 0A4378 8011B908 0C002DAF */  jal   func_8000B6BC_ovl2
/* 0A437C 8011B90C 00000000 */   nop   
/* 0A4380 8011B910 44806000 */  mtc1  $zero, $f12
/* 0A4384 8011B914 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A4388 8011B918 00000000 */   nop   
/* 0A438C 8011B91C 44806000 */  mtc1  $zero, $f12
/* 0A4390 8011B920 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A4394 8011B924 00000000 */   nop   
/* 0A4398 8011B928 0C00236A */  jal   func_80008DA8_ovl2
/* 0A439C 8011B92C 00002025 */   move  $a0, $zero
/* 0A43A0 8011B930 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0A43A4 8011B934 8FB00018 */  lw    $s0, 0x18($sp)
/* 0A43A8 8011B938 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A43AC 8011B93C 03E00008 */  jr    $ra
/* 0A43B0 8011B940 00000000 */   nop   
