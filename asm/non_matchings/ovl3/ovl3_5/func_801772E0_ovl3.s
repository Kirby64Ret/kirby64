glabel func_801772E0_ovl3
/* 0D7D20 801772E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D7D24 801772E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D7D28 801772E8 0C0473D6 */  jal   func_8011CF58
/* 0D7D2C 801772EC AFA40018 */   sw    $a0, 0x18($sp)
/* 0D7D30 801772F0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D7D34 801772F4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D7D38 801772F8 3C01800E */  lui   $at, 0x800e
/* 0D7D3C 801772FC 240E001A */  li    $t6, 26
/* 0D7D40 80177300 8C4F0000 */  lw    $t7, ($v0)
/* 0D7D44 80177304 3C198019 */  lui   $t9, %hi(D_801926E8) # $t9, 0x8019
/* 0D7D48 80177308 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0D7D4C 8017730C 000FC080 */  sll   $t8, $t7, 2
/* 0D7D50 80177310 00380821 */  addu  $at, $at, $t8
/* 0D7D54 80177314 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 0D7D58 80177318 8C480000 */  lw    $t0, ($v0)
/* 0D7D5C 8017731C 3C01800E */  lui   $at, 0x800e
/* 0D7D60 80177320 273926E8 */  addiu $t9, %lo(D_801926E8) # addiu $t9, $t9, 0x26e8
/* 0D7D64 80177324 00084880 */  sll   $t1, $t0, 2
/* 0D7D68 80177328 00290821 */  addu  $at, $at, $t1
/* 0D7D6C 8017732C 3C0A8019 */  lui   $t2, %hi(D_80190358) # $t2, 0x8019
/* 0D7D70 80177330 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0D7D74 80177334 AC390490 */  sw    $t9, 0x490($at)
/* 0D7D78 80177338 254A0358 */  addiu $t2, %lo(D_80190358) # addiu $t2, $t2, 0x358
/* 0D7D7C 8017733C AC8A015C */  sw    $t2, 0x15c($a0)
/* 0D7D80 80177340 8C4B0000 */  lw    $t3, ($v0)
/* 0D7D84 80177344 C48400C4 */  lwc1  $f4, 0xc4($a0)
/* 0D7D88 80177348 3C01800E */  lui   $at, 0x800e
/* 0D7D8C 8017734C 000B6080 */  sll   $t4, $t3, 2
/* 0D7D90 80177350 002C0821 */  addu  $at, $at, $t4
/* 0D7D94 80177354 E4243750 */  swc1  $f4, 0x3750($at)
/* 0D7D98 80177358 44801000 */  mtc1  $zero, $f2
/* 0D7D9C 8017735C C48000C8 */  lwc1  $f0, 0xc8($a0)
/* 0D7DA0 80177360 3C050002 */  lui   $a1, (0x00020088 >> 16) # lui $a1, 2
/* 0D7DA4 80177364 34A50088 */  ori   $a1, (0x00020088 & 0xFFFF) # ori $a1, $a1, 0x88
/* 0D7DA8 80177368 4602003C */  c.lt.s $f0, $f2
/* 0D7DAC 8017736C 00003025 */  move  $a2, $zero
/* 0D7DB0 80177370 45020009 */  bc1fl .L80177398_ovl3
/* 0D7DB4 80177374 8C4E0000 */   lw    $t6, ($v0)
/* 0D7DB8 80177378 8C4D0000 */  lw    $t5, ($v0)
/* 0D7DBC 8017737C 3C01800E */  lui   $at, 0x800e
/* 0D7DC0 80177380 46000187 */  neg.s $f6, $f0
/* 0D7DC4 80177384 000D7880 */  sll   $t7, $t5, 2
/* 0D7DC8 80177388 002F0821 */  addu  $at, $at, $t7
/* 0D7DCC 8017738C 10000006 */  b     .L801773A8_ovl3
/* 0D7DD0 80177390 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 0D7DD4 80177394 8C4E0000 */  lw    $t6, ($v0)
.L80177398_ovl3:
/* 0D7DD8 80177398 3C01800E */  lui   $at, 0x800e
/* 0D7DDC 8017739C 000EC080 */  sll   $t8, $t6, 2
/* 0D7DE0 801773A0 00380821 */  addu  $at, $at, $t8
/* 0D7DE4 801773A4 E4203C90 */  swc1  $f0, 0x3c90($at)
.L801773A8_ovl3:
/* 0D7DE8 801773A8 8C430000 */  lw    $v1, ($v0)
/* 0D7DEC 801773AC 3C01800E */  lui   $at, 0x800e
/* 0D7DF0 801773B0 C48A00BC */  lwc1  $f10, 0xbc($a0)
/* 0D7DF4 801773B4 00031880 */  sll   $v1, $v1, 2
/* 0D7DF8 801773B8 00230821 */  addu  $at, $at, $v1
/* 0D7DFC 801773BC C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0D7E00 801773C0 3C01800E */  lui   $at, 0x800e
/* 0D7E04 801773C4 00230821 */  addu  $at, $at, $v1
/* 0D7E08 801773C8 460A4402 */  mul.s $f16, $f8, $f10
/* 0D7E0C 801773CC E4306690 */  swc1  $f16, 0x6690($at)
/* 0D7E10 801773D0 C48000C0 */  lwc1  $f0, 0xc0($a0)
/* 0D7E14 801773D4 3C040002 */  lui   $a0, (0x00020087 >> 16) # lui $a0, 2
/* 0D7E18 801773D8 4602003C */  c.lt.s $f0, $f2
/* 0D7E1C 801773DC 00000000 */  nop   
/* 0D7E20 801773E0 45020009 */  bc1fl .L80177408_ovl3
/* 0D7E24 801773E4 8C490000 */   lw    $t1, ($v0)
/* 0D7E28 801773E8 8C480000 */  lw    $t0, ($v0)
/* 0D7E2C 801773EC 3C01800E */  lui   $at, 0x800e
/* 0D7E30 801773F0 46000487 */  neg.s $f18, $f0
/* 0D7E34 801773F4 0008C880 */  sll   $t9, $t0, 2
/* 0D7E38 801773F8 00390821 */  addu  $at, $at, $t9
/* 0D7E3C 801773FC 10000006 */  b     .L80177418_ovl3
/* 0D7E40 80177400 E4326850 */   swc1  $f18, 0x6850($at)
/* 0D7E44 80177404 8C490000 */  lw    $t1, ($v0)
.L80177408_ovl3:
/* 0D7E48 80177408 3C01800E */  lui   $at, 0x800e
/* 0D7E4C 8017740C 00095080 */  sll   $t2, $t1, 2
/* 0D7E50 80177410 002A0821 */  addu  $at, $at, $t2
/* 0D7E54 80177414 E4206850 */  swc1  $f0, 0x6850($at)
.L80177418_ovl3:
/* 0D7E58 80177418 0C048C3A */  jal   func_801230E8
/* 0D7E5C 8017741C 34840087 */   ori   $a0, (0x00020087 & 0xFFFF) # ori $a0, $a0, 0x87
/* 0D7E60 80177420 0C02BE85 */  jal   func_800AFA14
/* 0D7E64 80177424 00000000 */   nop   
/* 0D7E68 80177428 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D7E6C 8017742C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D7E70 80177430 03E00008 */  jr    $ra
/* 0D7E74 80177434 00000000 */   nop   
