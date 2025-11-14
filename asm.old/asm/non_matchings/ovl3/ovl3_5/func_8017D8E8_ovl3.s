glabel func_8017D8E8_ovl3
/* 0DE328 8017D8E8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0DE32C 8017D8EC AFB00014 */  sw    $s0, 0x14($sp)
/* 0DE330 8017D8F0 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0DE334 8017D8F4 44802000 */  mtc1  $zero, $f4
/* 0DE338 8017D8F8 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0DE33C 8017D8FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0DE340 8017D900 E604007C */  swc1  $f4, 0x7c($s0)
/* 0DE344 8017D904 C606007C */  lwc1  $f6, 0x7c($s0)
/* 0DE348 8017D908 240EFFFF */  li    $t6, -1
/* 0DE34C 8017D90C AFB10018 */  sw    $s1, 0x18($sp)
/* 0DE350 8017D910 AFA40020 */  sw    $a0, 0x20($sp)
/* 0DE354 8017D914 AE0E003C */  sw    $t6, 0x3c($s0)
/* 0DE358 8017D918 AE000030 */  sw    $zero, 0x30($s0)
/* 0DE35C 8017D91C A2000007 */  sb    $zero, 7($s0)
/* 0DE360 8017D920 AE00004C */  sw    $zero, 0x4c($s0)
/* 0DE364 8017D924 0C0473D6 */  jal   func_8011CF58
/* 0DE368 8017D928 E6060080 */   swc1  $f6, 0x80($s0)
/* 0DE36C 8017D92C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0DE370 8017D930 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0DE374 8017D934 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0DE378 8017D938 240F0029 */  li    $t7, 41
/* 0DE37C 8017D93C 8C580000 */  lw    $t8, ($v0)
/* 0DE380 8017D940 44809000 */  mtc1  $zero, $f18
/* 0DE384 8017D944 0018C880 */  sll   $t9, $t8, 2
/* 0DE388 8017D948 00390821 */  addu  $at, $at, $t9
/* 0DE38C 8017D94C AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 0DE390 8017D950 8C480000 */  lw    $t0, ($v0)
/* 0DE394 8017D954 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0DE398 8017D958 44814000 */  mtc1  $at, $f8
/* 0DE39C 8017D95C 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 0DE3A0 8017D960 00084880 */  sll   $t1, $t0, 2
/* 0DE3A4 8017D964 00290821 */  addu  $at, $at, $t1
/* 0DE3A8 8017D968 E428A8A0 */ swc1 $f8, %lo(D_800EA8A0)($at)
/* 0DE3AC 8017D96C 8C4A0000 */  lw    $t2, ($v0)
/* 0DE3B0 8017D970 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0DE3B4 8017D974 000A5880 */  sll   $t3, $t2, 2
/* 0DE3B8 8017D978 002B0821 */  addu  $at, $at, $t3
/* 0DE3BC 8017D97C C42A6A10 */ lwc1 $f10, %lo(D_800E6A10)($at)
/* 0DE3C0 8017D980 AE000044 */  sw    $zero, 0x44($s0)
/* 0DE3C4 8017D984 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 0DE3C8 8017D988 46005407 */  neg.s $f16, $f10
/* 0DE3CC 8017D98C E6100078 */  swc1  $f16, 0x78($s0)
/* 0DE3D0 8017D990 8C4C0000 */  lw    $t4, ($v0)
/* 0DE3D4 8017D994 000C6880 */  sll   $t5, $t4, 2
/* 0DE3D8 8017D998 002D0821 */  addu  $at, $at, $t5
/* 0DE3DC 8017D99C 0C04828A */  jal   func_80120A28
/* 0DE3E0 8017D9A0 E432A6E0 */ swc1 $f18, %lo(D_800EA6E0)($at)
/* 0DE3E4 8017D9A4 3C040002 */  lui   $a0, (0x000201A7 >> 16) # lui $a0, 2
/* 0DE3E8 8017D9A8 3C050002 */  lui   $a1, (0x000201A8 >> 16) # lui $a1, 2
/* 0DE3EC 8017D9AC 34A501A8 */  ori   $a1, (0x000201A8 & 0xFFFF) # ori $a1, $a1, 0x1a8
/* 0DE3F0 8017D9B0 348401A7 */  ori   $a0, (0x000201A7 & 0xFFFF) # ori $a0, $a0, 0x1a7
/* 0DE3F4 8017D9B4 0C048C3A */  jal   func_801230E8
/* 0DE3F8 8017D9B8 24060001 */   li    $a2, 1
/* 0DE3FC 8017D9BC 8E0E0090 */  lw    $t6, 0x90($s0)
/* 0DE400 8017D9C0 3C040002 */  lui   $a0, (0x00020010 >> 16) # lui $a0, 2
/* 0DE404 8017D9C4 34840010 */  ori   $a0, (0x00020010 & 0xFFFF) # ori $a0, $a0, 0x10
/* 0DE408 8017D9C8 0C048BC2 */  jal   func_80122F08
/* 0DE40C 8017D9CC AE0E00A0 */   sw    $t6, 0xa0($s0)
/* 0DE410 8017D9D0 24180007 */  li    $t8, 7
/* 0DE414 8017D9D4 AE180154 */  sw    $t8, 0x154($s0)
/* 0DE418 8017D9D8 24040002 */  li    $a0, 2
/* 0DE41C 8017D9DC 24050001 */  li    $a1, 1
/* 0DE420 8017D9E0 0C02A08D */  jal   func_800A8234
/* 0DE424 8017D9E4 2406002C */   li    $a2, 44
/* 0DE428 8017D9E8 3C040002 */  lui   $a0, (0x000201A5 >> 16) # lui $a0, 2
/* 0DE42C 8017D9EC 3C050002 */  lui   $a1, (0x000201A6 >> 16) # lui $a1, 2
/* 0DE430 8017D9F0 AE02004C */  sw    $v0, 0x4c($s0)
/* 0DE434 8017D9F4 34A501A6 */  ori   $a1, (0x000201A6 & 0xFFFF) # ori $a1, $a1, 0x1a6
/* 0DE438 8017D9F8 348401A5 */  ori   $a0, (0x000201A5 & 0xFFFF) # ori $a0, $a0, 0x1a5
/* 0DE43C 8017D9FC 0C048C3A */  jal   func_801230E8
/* 0DE440 8017DA00 00003025 */   move  $a2, $zero
/* 0DE444 8017DA04 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0DE448 8017DA08 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0DE44C 8017DA0C 3C0F8018 */  lui   $t7, %hi(D_8017DAD8) # $t7, 0x8018
/* 0DE450 8017DA10 3C01800E */ lui $at, %hi(D_800DF310)
/* 0DE454 8017DA14 8F280000 */  lw    $t0, ($t9)
/* 0DE458 8017DA18 25EFDAD8 */  addiu $t7, %lo(D_8017DAD8) # addiu $t7, $t7, -0x2528
/* 0DE45C 8017DA1C 3C11800D */  lui   $s1, %hi(gKirbyController) # $s1, 0x800d
/* 0DE460 8017DA20 00084880 */  sll   $t1, $t0, 2
/* 0DE464 8017DA24 00290821 */  addu  $at, $at, $t1
/* 0DE468 8017DA28 AC2FF310 */ sw $t7, %lo(D_800DF310)($at)
/* 0DE46C 8017DA2C 26316FE8 */  addiu $s1, %lo(gKirbyController) # addiu $s1, $s1, 0x6fe8
/* 0DE470 8017DA30 920A0017 */  lbu   $t2, 0x17($s0)
.L8017DA34_ovl3:
/* 0DE474 8017DA34 15400009 */  bnez  $t2, .L8017DA5C_ovl3
/* 0DE478 8017DA38 00000000 */   nop   
/* 0DE47C 8017DA3C 962B0000 */  lhu   $t3, ($s1)
/* 0DE480 8017DA40 316C4000 */  andi  $t4, $t3, 0x4000
/* 0DE484 8017DA44 11800005 */  beqz  $t4, .L8017DA5C_ovl3
/* 0DE488 8017DA48 00000000 */   nop   
/* 0DE48C 8017DA4C 0C002DAF */  jal   finish_current_thread
/* 0DE490 8017DA50 24040001 */   li    $a0, 1
/* 0DE494 8017DA54 1000FFF7 */  b     .L8017DA34_ovl3
/* 0DE498 8017DA58 920A0017 */   lbu   $t2, 0x17($s0)
.L8017DA5C_ovl3:
/* 0DE49C 8017DA5C 0C04783A */  jal   func_8011E0E8
/* 0DE4A0 8017DA60 00000000 */   nop   
/* 0DE4A4 8017DA64 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0DE4A8 8017DA68 AE0000A0 */  sw    $zero, 0xa0($s0)
/* 0DE4AC 8017DA6C 0C048BC2 */  jal   func_80122F08
/* 0DE4B0 8017DA70 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0DE4B4 8017DA74 240D0002 */  li    $t5, 2
/* 0DE4B8 8017DA78 AE0D0154 */  sw    $t5, 0x154($s0)
/* 0DE4BC 8017DA7C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0DE4C0 8017DA80 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0DE4C4 8017DA84 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0DE4C8 8017DA88 3C040002 */  lui   $a0, (0x000201A9 >> 16) # lui $a0, 2
/* 0DE4CC 8017DA8C 8DD80000 */  lw    $t8, ($t6)
/* 0DE4D0 8017DA90 3C050002 */  lui   $a1, (0x000201AA >> 16) # lui $a1, 2
/* 0DE4D4 8017DA94 34A501AA */  ori   $a1, (0x000201AA & 0xFFFF) # ori $a1, $a1, 0x1aa
/* 0DE4D8 8017DA98 0018C880 */  sll   $t9, $t8, 2
/* 0DE4DC 8017DA9C 00390821 */  addu  $at, $at, $t9
/* 0DE4E0 8017DAA0 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 0DE4E4 8017DAA4 348401A9 */  ori   $a0, (0x000201A9 & 0xFFFF) # ori $a0, $a0, 0x1a9
/* 0DE4E8 8017DAA8 24060001 */  li    $a2, 1
/* 0DE4EC 8017DAAC 0C048C3A */  jal   func_801230E8
/* 0DE4F0 8017DAB0 E6040078 */   swc1  $f4, 0x78($s0)
/* 0DE4F4 8017DAB4 8E080030 */  lw    $t0, 0x30($s0)
/* 0DE4F8 8017DAB8 250F0001 */  addiu $t7, $t0, 1
/* 0DE4FC 8017DABC 0C02BE85 */  jal   func_800AFA14
/* 0DE500 8017DAC0 AE0F0030 */   sw    $t7, 0x30($s0)
/* 0DE504 8017DAC4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0DE508 8017DAC8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0DE50C 8017DACC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0DE510 8017DAD0 03E00008 */  jr    $ra
/* 0DE514 8017DAD4 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8017D8E8_ovl3, @function
.size func_8017D8E8_ovl3, . - func_8017D8E8_ovl3
