glabel func_801782C8_ovl3
/* 0D8D08 801782C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D8D0C 801782CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D8D10 801782D0 0C0473D6 */  jal   func_8011CF58_ovl3
/* 0D8D14 801782D4 AFA40018 */   sw    $a0, 0x18($sp)
/* 0D8D18 801782D8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D8D1C 801782DC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D8D20 801782E0 3C01800E */  lui   $at, 0x800e
/* 0D8D24 801782E4 240E001E */  li    $t6, 30
/* 0D8D28 801782E8 8C6F0000 */  lw    $t7, ($v1)
/* 0D8D2C 801782EC 3C198019 */  lui   $t9, %hi(D_801926E8) # $t9, 0x8019
/* 0D8D30 801782F0 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0D8D34 801782F4 000FC080 */  sll   $t8, $t7, 2
/* 0D8D38 801782F8 00380821 */  addu  $at, $at, $t8
/* 0D8D3C 801782FC AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 0D8D40 80178300 8C690000 */  lw    $t1, ($v1)
/* 0D8D44 80178304 3C01800E */  lui   $at, 0x800e
/* 0D8D48 80178308 273926E8 */  addiu $t9, %lo(D_801926E8) # addiu $t9, $t9, 0x26e8
/* 0D8D4C 8017830C 00095080 */  sll   $t2, $t1, 2
/* 0D8D50 80178310 002A0821 */  addu  $at, $at, $t2
/* 0D8D54 80178314 3C0B8019 */  lui   $t3, %hi(D_80190358) # $t3, 0x8019
/* 0D8D58 80178318 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0D8D5C 8017831C AC390490 */  sw    $t9, 0x490($at)
/* 0D8D60 80178320 256B0358 */  addiu $t3, %lo(D_80190358) # addiu $t3, $t3, 0x358
/* 0D8D64 80178324 ACEB015C */  sw    $t3, 0x15c($a3)
/* 0D8D68 80178328 8C6C0000 */  lw    $t4, ($v1)
/* 0D8D6C 8017832C C4E400C4 */  lwc1  $f4, 0xc4($a3)
/* 0D8D70 80178330 3C01800E */  lui   $at, 0x800e
/* 0D8D74 80178334 000C6880 */  sll   $t5, $t4, 2
/* 0D8D78 80178338 002D0821 */  addu  $at, $at, $t5
/* 0D8D7C 8017833C E4243750 */  swc1  $f4, 0x3750($at)
/* 0D8D80 80178340 C4E000C8 */  lwc1  $f0, 0xc8($a3)
/* 0D8D84 80178344 44803000 */  mtc1  $zero, $f6
/* 0D8D88 80178348 3C08800E */  lui   $t0, %hi(D_800E6A10) # $t0, 0x800e
/* 0D8D8C 8017834C 4606003C */  c.lt.s $f0, $f6
/* 0D8D90 80178350 00000000 */  nop   
/* 0D8D94 80178354 45020009 */  bc1fl .L8017837C_ovl3
/* 0D8D98 80178358 8C780000 */   lw    $t8, ($v1)
/* 0D8D9C 8017835C 8C6F0000 */  lw    $t7, ($v1)
/* 0D8DA0 80178360 3C01800E */  lui   $at, 0x800e
/* 0D8DA4 80178364 46000207 */  neg.s $f8, $f0
/* 0D8DA8 80178368 000F7080 */  sll   $t6, $t7, 2
/* 0D8DAC 8017836C 002E0821 */  addu  $at, $at, $t6
/* 0D8DB0 80178370 10000006 */  b     .L8017838C_ovl3
/* 0D8DB4 80178374 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 0D8DB8 80178378 8C780000 */  lw    $t8, ($v1)
.L8017837C_ovl3:
/* 0D8DBC 8017837C 3C01800E */  lui   $at, 0x800e
/* 0D8DC0 80178380 00184880 */  sll   $t1, $t8, 2
/* 0D8DC4 80178384 00290821 */  addu  $at, $at, $t1
/* 0D8DC8 80178388 E4203C90 */  swc1  $f0, 0x3c90($at)
.L8017838C_ovl3:
/* 0D8DCC 8017838C 8C620000 */  lw    $v0, ($v1)
/* 0D8DD0 80178390 25086A10 */  addiu $t0, %lo(D_800E6A10) # addiu $t0, $t0, 0x6a10
/* 0D8DD4 80178394 C4F000C0 */  lwc1  $f16, 0xc0($a3)
/* 0D8DD8 80178398 00021080 */  sll   $v0, $v0, 2
/* 0D8DDC 8017839C 0102C821 */  addu  $t9, $t0, $v0
/* 0D8DE0 801783A0 C72A0000 */  lwc1  $f10, ($t9)
/* 0D8DE4 801783A4 3C01800E */  lui   $at, 0x800e
/* 0D8DE8 801783A8 00220821 */  addu  $at, $at, $v0
/* 0D8DEC 801783AC 46105482 */  mul.s $f18, $f10, $f16
/* 0D8DF0 801783B0 44805000 */  mtc1  $zero, $f10
/* 0D8DF4 801783B4 3C040002 */  lui   $a0, (0x00020087 >> 16) # lui $a0, 2
/* 0D8DF8 801783B8 3C050002 */  lui   $a1, (0x00020088 >> 16) # lui $a1, 2
/* 0D8DFC 801783BC 34A50088 */  ori   $a1, (0x00020088 & 0xFFFF) # ori $a1, $a1, 0x88
/* 0D8E00 801783C0 34840087 */  ori   $a0, (0x00020087 & 0xFFFF) # ori $a0, $a0, 0x87
/* 0D8E04 801783C4 00003025 */  move  $a2, $zero
/* 0D8E08 801783C8 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 0D8E0C 801783CC 8C620000 */  lw    $v0, ($v1)
/* 0D8E10 801783D0 C4E600BC */  lwc1  $f6, 0xbc($a3)
/* 0D8E14 801783D4 3C01800E */  lui   $at, 0x800e
/* 0D8E18 801783D8 00021080 */  sll   $v0, $v0, 2
/* 0D8E1C 801783DC 01025021 */  addu  $t2, $t0, $v0
/* 0D8E20 801783E0 C5440000 */  lwc1  $f4, ($t2)
/* 0D8E24 801783E4 00220821 */  addu  $at, $at, $v0
/* 0D8E28 801783E8 46062202 */  mul.s $f8, $f4, $f6
/* 0D8E2C 801783EC E4286690 */  swc1  $f8, 0x6690($at)
/* 0D8E30 801783F0 8C6B0000 */  lw    $t3, ($v1)
/* 0D8E34 801783F4 3C01800E */  lui   $at, 0x800e
/* 0D8E38 801783F8 000B6080 */  sll   $t4, $t3, 2
/* 0D8E3C 801783FC 002C0821 */  addu  $at, $at, $t4
/* 0D8E40 80178400 0C048C3A */  jal   func_801230E8_ovl3
/* 0D8E44 80178404 E42A6850 */   swc1  $f10, 0x6850($at)
/* 0D8E48 80178408 0C02BE85 */  jal   func_800AFA14_ovl3
/* 0D8E4C 8017840C 00000000 */   nop   
/* 0D8E50 80178410 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D8E54 80178414 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D8E58 80178418 03E00008 */  jr    $ra
/* 0D8E5C 8017841C 00000000 */   nop   
