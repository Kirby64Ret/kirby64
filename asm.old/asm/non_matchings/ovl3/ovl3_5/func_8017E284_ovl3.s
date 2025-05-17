glabel func_8017E284_ovl3
/* 0DECC4 8017E284 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0DECC8 8017E288 AFB00028 */  sw    $s0, 0x28($sp)
/* 0DECCC 8017E28C 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0DECD0 8017E290 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0DECD4 8017E294 AFB30034 */  sw    $s3, 0x34($sp)
/* 0DECD8 8017E298 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 0DECDC 8017E29C 44802000 */  mtc1  $zero, $f4
/* 0DECE0 8017E2A0 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 0DECE4 8017E2A4 8E780000 */  lw    $t8, ($s3)
/* 0DECE8 8017E2A8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0DECEC 8017E2AC AFB40038 */  sw    $s4, 0x38($sp)
/* 0DECF0 8017E2B0 AFB20030 */  sw    $s2, 0x30($sp)
/* 0DECF4 8017E2B4 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0DECF8 8017E2B8 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 0DECFC 8017E2BC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0DED00 8017E2C0 AFA40040 */  sw    $a0, 0x40($sp)
/* 0DED04 8017E2C4 AE000030 */  sw    $zero, 0x30($s0)
/* 0DED08 8017E2C8 A2000007 */  sb    $zero, 7($s0)
/* 0DED0C 8017E2CC AE00004C */  sw    $zero, 0x4c($s0)
/* 0DED10 8017E2D0 A60000D2 */  sh    $zero, 0xd2($s0)
/* 0DED14 8017E2D4 A60000D0 */  sh    $zero, 0xd0($s0)
/* 0DED18 8017E2D8 E6040040 */  swc1  $f4, 0x40($s0)
/* 0DED1C 8017E2DC 8F190000 */  lw    $t9, ($t8)
/* 0DED20 8017E2E0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0DED24 8017E2E4 240F0001 */  li    $t7, 1
/* 0DED28 8017E2E8 00194080 */  sll   $t0, $t9, 2
/* 0DED2C 8017E2EC 00280821 */  addu  $at, $at, $t0
/* 0DED30 8017E2F0 0C0473D6 */  jal   func_8011CF58
/* 0DED34 8017E2F4 AC2F98E0 */ sw $t7, %lo(D_800E98E0)($at)
/* 0DED38 8017E2F8 8E6A0000 */  lw    $t2, ($s3)
/* 0DED3C 8017E2FC 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0DED40 8017E300 2409002B */  li    $t1, 43
/* 0DED44 8017E304 8D4B0000 */  lw    $t3, ($t2)
/* 0DED48 8017E308 000B6080 */  sll   $t4, $t3, 2
/* 0DED4C 8017E30C 002C0821 */  addu  $at, $at, $t4
/* 0DED50 8017E310 AC29DFD0 */ sw $t1, %lo(D_800DDFD0)($at)
/* 0DED54 8017E314 0C04828A */  jal   func_80120A28
/* 0DED58 8017E318 AE000044 */   sw    $zero, 0x44($s0)
/* 0DED5C 8017E31C 3C0D8019 */  lui   $t5, %hi(D_801905E8) # $t5, 0x8019
/* 0DED60 8017E320 25AD05E8 */  addiu $t5, %lo(D_801905E8) # addiu $t5, $t5, 0x5e8
/* 0DED64 8017E324 3C040002 */  lui   $a0, (0x000201B4 >> 16) # lui $a0, 2
/* 0DED68 8017E328 3C050002 */  lui   $a1, (0x000201B5 >> 16) # lui $a1, 2
/* 0DED6C 8017E32C AE0D015C */  sw    $t5, 0x15c($s0)
/* 0DED70 8017E330 34A501B5 */  ori   $a1, (0x000201B5 & 0xFFFF) # ori $a1, $a1, 0x1b5
/* 0DED74 8017E334 348401B4 */  ori   $a0, (0x000201B4 & 0xFFFF) # ori $a0, $a0, 0x1b4
/* 0DED78 8017E338 0C048C3A */  jal   func_801230E8
/* 0DED7C 8017E33C 24060001 */   li    $a2, 1
/* 0DED80 8017E340 8E0E0090 */  lw    $t6, 0x90($s0)
/* 0DED84 8017E344 3C040002 */  lui   $a0, (0x00020012 >> 16) # lui $a0, 2
/* 0DED88 8017E348 34840012 */  ori   $a0, (0x00020012 & 0xFFFF) # ori $a0, $a0, 0x12
/* 0DED8C 8017E34C 0C048BC2 */  jal   func_80122F08
/* 0DED90 8017E350 AE0E00A0 */   sw    $t6, 0xa0($s0)
/* 0DED94 8017E354 8E790000 */  lw    $t9, ($s3)
/* 0DED98 8017E358 24180005 */  li    $t8, 5
/* 0DED9C 8017E35C AE180154 */  sw    $t8, 0x154($s0)
/* 0DEDA0 8017E360 8F2F0000 */  lw    $t7, ($t9)
/* 0DEDA4 8017E364 3C0A800E */ lui $t2, %hi(D_800DFBD0)
/* 0DEDA8 8017E368 24040001 */  li    $a0, 1
/* 0DEDAC 8017E36C 000F4080 */  sll   $t0, $t7, 2
/* 0DEDB0 8017E370 01485021 */  addu  $t2, $t2, $t0
/* 0DEDB4 8017E374 8D4AFBD0 */ lw $t2, %lo(D_800DFBD0)($t2)
/* 0DEDB8 8017E378 24050001 */  li    $a1, 1
/* 0DEDBC 8017E37C 2406002A */  li    $a2, 42
/* 0DEDC0 8017E380 0C02A040 */  jal   func_800A8100
/* 0DEDC4 8017E384 8D470010 */   lw    $a3, 0x10($t2)
/* 0DEDC8 8017E388 8E6B0000 */  lw    $t3, ($s3)
/* 0DEDCC 8017E38C AE02004C */  sw    $v0, 0x4c($s0)
/* 0DEDD0 8017E390 3C14800F */  lui   $s4, %hi(D_800E9720) # $s4, 0x800f
/* 0DEDD4 8017E394 8D690000 */  lw    $t1, ($t3)
/* 0DEDD8 8017E398 26949720 */  addiu $s4, %lo(D_800E9720) # addiu $s4, $s4, -0x68e0
/* 0DEDDC 8017E39C 3C040002 */  lui   $a0, (0x000201B2 >> 16) # lui $a0, 2
/* 0DEDE0 8017E3A0 00096080 */  sll   $t4, $t1, 2
/* 0DEDE4 8017E3A4 028C6821 */  addu  $t5, $s4, $t4
/* 0DEDE8 8017E3A8 ADA00000 */  sw    $zero, ($t5)
/* 0DEDEC 8017E3AC 0C02A806 */  jal   func_800AA018
/* 0DEDF0 8017E3B0 348401B2 */   ori   $a0, (0x000201B2 & 0xFFFF) # ori $a0, $a0, 0x1b2
/* 0DEDF4 8017E3B4 3C018019 */  lui   $at, %hi(D_801976A0) # $at, 0x8019
/* 0DEDF8 8017E3B8 C43676A0 */  lwc1  $f22, %lo(D_801976A0)($at)
/* 0DEDFC 8017E3BC 3C018019 */  lui   $at, %hi(D_801976A4) # $at, 0x8019
/* 0DEE00 8017E3C0 3C12800D */  lui   $s2, %hi(gKirbyController) # $s2, 0x800d
/* 0DEE04 8017E3C4 3C11800E */  lui   $s1, %hi(gEntitiesAngleXArray) # $s1, 0x800e
/* 0DEE08 8017E3C8 26314010 */  addiu $s1, %lo(gEntitiesAngleXArray) # addiu $s1, $s1, 0x4010
/* 0DEE0C 8017E3CC 26526FE8 */  addiu $s2, %lo(gKirbyController) # addiu $s2, $s2, 0x6fe8
/* 0DEE10 8017E3D0 C43476A4 */  lwc1  $f20, %lo(D_801976A4)($at)
/* 0DEE14 8017E3D4 920E0017 */  lbu   $t6, 0x17($s0)
.L8017E3D8_ovl3:
/* 0DEE18 8017E3D8 15C00040 */  bnez  $t6, .L8017E4DC_ovl3
/* 0DEE1C 8017E3DC 00000000 */   nop   
/* 0DEE20 8017E3E0 C6000040 */  lwc1  $f0, 0x40($s0)
/* 0DEE24 8017E3E4 4600A032 */  c.eq.s $f20, $f0
/* 0DEE28 8017E3E8 00000000 */  nop   
/* 0DEE2C 8017E3EC 45030016 */  bc1tl .L8017E448_ovl3
/* 0DEE30 8017E3F0 964C0000 */   lhu   $t4, ($s2)
/* 0DEE34 8017E3F4 8E630000 */  lw    $v1, ($s3)
/* 0DEE38 8017E3F8 46160200 */  add.s $f8, $f0, $f22
/* 0DEE3C 8017E3FC 8C780000 */  lw    $t8, ($v1)
/* 0DEE40 8017E400 46000187 */  neg.s $f6, $f0
/* 0DEE44 8017E404 0018C880 */  sll   $t9, $t8, 2
/* 0DEE48 8017E408 02397821 */  addu  $t7, $s1, $t9
/* 0DEE4C 8017E40C E5E60000 */  swc1  $f6, ($t7)
/* 0DEE50 8017E410 E6080040 */  swc1  $f8, 0x40($s0)
/* 0DEE54 8017E414 C60A0040 */  lwc1  $f10, 0x40($s0)
/* 0DEE58 8017E418 460AA03E */  c.le.s $f20, $f10
/* 0DEE5C 8017E41C 00000000 */  nop   
/* 0DEE60 8017E420 45020003 */  bc1fl .L8017E430_ovl3
/* 0DEE64 8017E424 8C680000 */   lw    $t0, ($v1)
/* 0DEE68 8017E428 E6140040 */  swc1  $f20, 0x40($s0)
/* 0DEE6C 8017E42C 8C680000 */  lw    $t0, ($v1)
.L8017E430_ovl3:
/* 0DEE70 8017E430 00085080 */  sll   $t2, $t0, 2
/* 0DEE74 8017E434 028A1021 */  addu  $v0, $s4, $t2
/* 0DEE78 8017E438 8C4B0000 */  lw    $t3, ($v0)
/* 0DEE7C 8017E43C 25690001 */  addiu $t1, $t3, 1
/* 0DEE80 8017E440 AC490000 */  sw    $t1, ($v0)
/* 0DEE84 8017E444 964C0000 */  lhu   $t4, ($s2)
.L8017E448_ovl3:
/* 0DEE88 8017E448 318D4000 */  andi  $t5, $t4, 0x4000
/* 0DEE8C 8017E44C 11A00005 */  beqz  $t5, .L8017E464_ovl3
/* 0DEE90 8017E450 00000000 */   nop   
/* 0DEE94 8017E454 0C002DAF */  jal   finish_current_thread
/* 0DEE98 8017E458 24040001 */   li    $a0, 1
/* 0DEE9C 8017E45C 1000FFDE */  b     .L8017E3D8_ovl3
/* 0DEEA0 8017E460 920E0017 */   lbu   $t6, 0x17($s0)
.L8017E464_ovl3:
/* 0DEEA4 8017E464 0C058CAE */  jal   func_801632B8_ovl3
/* 0DEEA8 8017E468 24040004 */   li    $a0, 4
/* 0DEEAC 8017E46C 8E6E0000 */  lw    $t6, ($s3)
/* 0DEEB0 8017E470 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 0DEEB4 8017E474 00021880 */  sll   $v1, $v0, 2
/* 0DEEB8 8017E478 8DD80000 */  lw    $t8, ($t6)
/* 0DEEBC 8017E47C 3C01800E */ lui $at, %hi(D_800E1D10)
/* 0DEEC0 8017E480 00230821 */  addu  $at, $at, $v1
/* 0DEEC4 8017E484 0018C880 */  sll   $t9, $t8, 2
/* 0DEEC8 8017E488 01F97821 */  addu  $t7, $t7, $t9
/* 0DEECC 8017E48C 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 0DEED0 8017E490 240400B5 */  li    $a0, 181
/* 0DEED4 8017E494 8DE80010 */  lw    $t0, 0x10($t7)
/* 0DEED8 8017E498 AC281D10 */ sw $t0, %lo(D_800E1D10)($at)
/* 0DEEDC 8017E49C C6100040 */  lwc1  $f16, 0x40($s0)
/* 0DEEE0 8017E4A0 3C01800F */ lui $at, %hi(D_800EC660)
/* 0DEEE4 8017E4A4 00230821 */  addu  $at, $at, $v1
/* 0DEEE8 8017E4A8 0C029D9E */  jal   play_sound
/* 0DEEEC 8017E4AC E430C660 */ swc1 $f16, %lo(D_800EC660)($at)
/* 0DEEF0 8017E4B0 0C029D9E */  jal   play_sound
/* 0DEEF4 8017E4B4 240400B6 */   li    $a0, 182
/* 0DEEF8 8017E4B8 8E6A0000 */  lw    $t2, ($s3)
/* 0DEEFC 8017E4BC 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0DEF00 8017E4C0 3C040002 */  lui   $a0, (0x000201B3 >> 16) # lui $a0, 2
/* 0DEF04 8017E4C4 8D4B0000 */  lw    $t3, ($t2)
/* 0DEF08 8017E4C8 348401B3 */  ori   $a0, (0x000201B3 & 0xFFFF) # ori $a0, $a0, 0x1b3
/* 0DEF0C 8017E4CC 000B4880 */  sll   $t1, $t3, 2
/* 0DEF10 8017E4D0 00290821 */  addu  $at, $at, $t1
/* 0DEF14 8017E4D4 0C02A855 */  jal   func_800AA154
/* 0DEF18 8017E4D8 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
.L8017E4DC_ovl3:
/* 0DEF1C 8017E4DC 0C04783A */  jal   func_8011E0E8
/* 0DEF20 8017E4E0 00000000 */   nop   
/* 0DEF24 8017E4E4 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0DEF28 8017E4E8 AE0000A0 */  sw    $zero, 0xa0($s0)
/* 0DEF2C 8017E4EC 0C048BC2 */  jal   func_80122F08
/* 0DEF30 8017E4F0 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0DEF34 8017E4F4 240C0002 */  li    $t4, 2
/* 0DEF38 8017E4F8 3C040002 */  lui   $a0, (0x000201B6 >> 16) # lui $a0, 2
/* 0DEF3C 8017E4FC 3C050002 */  lui   $a1, (0x000201B7 >> 16) # lui $a1, 2
/* 0DEF40 8017E500 AE0C0154 */  sw    $t4, 0x154($s0)
/* 0DEF44 8017E504 34A501B7 */  ori   $a1, (0x000201B7 & 0xFFFF) # ori $a1, $a1, 0x1b7
/* 0DEF48 8017E508 348401B6 */  ori   $a0, (0x000201B6 & 0xFFFF) # ori $a0, $a0, 0x1b6
/* 0DEF4C 8017E50C 0C048C3A */  jal   func_801230E8
/* 0DEF50 8017E510 24060001 */   li    $a2, 1
/* 0DEF54 8017E514 8E0D0030 */  lw    $t5, 0x30($s0)
/* 0DEF58 8017E518 25AE0001 */  addiu $t6, $t5, 1
/* 0DEF5C 8017E51C 0C02BE85 */  jal   func_800AFA14
/* 0DEF60 8017E520 AE0E0030 */   sw    $t6, 0x30($s0)
/* 0DEF64 8017E524 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0DEF68 8017E528 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0DEF6C 8017E52C D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0DEF70 8017E530 8FB00028 */  lw    $s0, 0x28($sp)
/* 0DEF74 8017E534 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0DEF78 8017E538 8FB20030 */  lw    $s2, 0x30($sp)
/* 0DEF7C 8017E53C 8FB30034 */  lw    $s3, 0x34($sp)
/* 0DEF80 8017E540 8FB40038 */  lw    $s4, 0x38($sp)
/* 0DEF84 8017E544 03E00008 */  jr    $ra
/* 0DEF88 8017E548 27BD0040 */   addiu $sp, $sp, 0x40
.type func_8017E284_ovl3, @function
.size func_8017E284_ovl3, . - func_8017E284_ovl3
