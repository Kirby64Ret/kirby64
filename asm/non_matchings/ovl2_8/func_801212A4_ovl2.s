glabel func_801212A4_ovl2
/* 0A9D14 801212A4 3C0E800D */  lui   $t6, %hi(D_800D6B54) # $t6, 0x800d
/* 0A9D18 801212A8 8DCE6B54 */  lw    $t6, %lo(D_800D6B54)($t6)
/* 0A9D1C 801212AC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0A9D20 801212B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A9D24 801212B4 15C000C5 */  bnez  $t6, .L801215CC_ovl2
/* 0A9D28 801212B8 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A9D2C 801212BC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A9D30 801212C0 3C01800E */  lui   $at, 0x800e
/* 0A9D34 801212C4 27A4002C */  addiu $a0, $sp, 0x2c
/* 0A9D38 801212C8 8C4F0000 */  lw    $t7, ($v0)
/* 0A9D3C 801212CC 27A50020 */  addiu $a1, $sp, 0x20
/* 0A9D40 801212D0 000FC080 */  sll   $t8, $t7, 2
/* 0A9D44 801212D4 00380821 */  addu  $at, $at, $t8
/* 0A9D48 801212D8 C4242B10 */  lwc1  $f4, 0x2b10($at)
/* 0A9D4C 801212DC 3C01800E */  lui   $at, 0x800e
/* 0A9D50 801212E0 E7A4002C */  swc1  $f4, 0x2c($sp)
/* 0A9D54 801212E4 8C590000 */  lw    $t9, ($v0)
/* 0A9D58 801212E8 00194080 */  sll   $t0, $t9, 2
/* 0A9D5C 801212EC 00280821 */  addu  $at, $at, $t0
/* 0A9D60 801212F0 C4262CD0 */  lwc1  $f6, 0x2cd0($at)
/* 0A9D64 801212F4 3C01800E */  lui   $at, 0x800e
/* 0A9D68 801212F8 E7A60030 */  swc1  $f6, 0x30($sp)
/* 0A9D6C 801212FC 8C490000 */  lw    $t1, ($v0)
/* 0A9D70 80121300 00095080 */  sll   $t2, $t1, 2
/* 0A9D74 80121304 002A0821 */  addu  $at, $at, $t2
/* 0A9D78 80121308 C4282E90 */  lwc1  $f8, 0x2e90($at)
/* 0A9D7C 8012130C 3C01800E */  lui   $at, 0x800e
/* 0A9D80 80121310 E7A80034 */  swc1  $f8, 0x34($sp)
/* 0A9D84 80121314 8C4B0000 */  lw    $t3, ($v0)
/* 0A9D88 80121318 000B6080 */  sll   $t4, $t3, 2
/* 0A9D8C 8012131C 002C0821 */  addu  $at, $at, $t4
/* 0A9D90 80121320 C42A25D0 */  lwc1  $f10, 0x25d0($at)
/* 0A9D94 80121324 3C01800E */  lui   $at, 0x800e
/* 0A9D98 80121328 E7AA0020 */  swc1  $f10, 0x20($sp)
/* 0A9D9C 8012132C 8C4D0000 */  lw    $t5, ($v0)
/* 0A9DA0 80121330 000D7080 */  sll   $t6, $t5, 2
/* 0A9DA4 80121334 002E0821 */  addu  $at, $at, $t6
/* 0A9DA8 80121338 C4302790 */  lwc1  $f16, 0x2790($at)
/* 0A9DAC 8012133C 3C01800E */  lui   $at, 0x800e
/* 0A9DB0 80121340 E7B00024 */  swc1  $f16, 0x24($sp)
/* 0A9DB4 80121344 8C4F0000 */  lw    $t7, ($v0)
/* 0A9DB8 80121348 000FC080 */  sll   $t8, $t7, 2
/* 0A9DBC 8012134C 00380821 */  addu  $at, $at, $t8
/* 0A9DC0 80121350 C4322950 */  lwc1  $f18, 0x2950($at)
/* 0A9DC4 80121354 0C0411D3 */  jal   func_8010474C_ovl2
/* 0A9DC8 80121358 E7B20028 */   swc1  $f18, 0x28($sp)
/* 0A9DCC 8012135C 10400026 */  beqz  $v0, .L801213F8_ovl2
/* 0A9DD0 80121360 3C068013 */   lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0A9DD4 80121364 3C19800D */  lui   $t9, %hi(D_800D6B54) # $t9, 0x800d
/* 0A9DD8 80121368 8F396B54 */  lw    $t9, %lo(D_800D6B54)($t9)
/* 0A9DDC 8012136C 57200098 */  bnezl $t9, .L801215D0_ovl2
/* 0A9DE0 80121370 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9DE4 80121374 0C047503 */  jal   func_8011D40C_ovl2
/* 0A9DE8 80121378 00000000 */   nop   
/* 0A9DEC 8012137C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A9DF0 80121380 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A9DF4 80121384 3C05800E */  lui   $a1, %hi(D_800E3210) # $a1, 0x800e
/* 0A9DF8 80121388 24A53210 */  addiu $a1, %lo(D_800E3210) # addiu $a1, $a1, 0x3210
/* 0A9DFC 8012138C 8C430000 */  lw    $v1, ($v0)
/* 0A9E00 80121390 44800000 */  mtc1  $zero, $f0
/* 0A9E04 80121394 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 0A9E08 80121398 00031880 */  sll   $v1, $v1, 2
/* 0A9E0C 8012139C 00A34021 */  addu  $t0, $a1, $v1
/* 0A9E10 801213A0 C5040000 */  lwc1  $f4, ($t0)
/* 0A9E14 801213A4 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 0A9E18 801213A8 00834821 */  addu  $t1, $a0, $v1
/* 0A9E1C 801213AC 4604003C */  c.lt.s $f0, $f4
/* 0A9E20 801213B0 00000000 */  nop   
/* 0A9E24 801213B4 45020086 */  bc1fl .L801215D0_ovl2
/* 0A9E28 801213B8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9E2C 801213BC E5200000 */  swc1  $f0, ($t1)
/* 0A9E30 801213C0 8C430000 */  lw    $v1, ($v0)
/* 0A9E34 801213C4 3C018013 */  lui   $at, %hi(D_80129074) # $at, 0x8013
/* 0A9E38 801213C8 00031880 */  sll   $v1, $v1, 2
/* 0A9E3C 801213CC 00835021 */  addu  $t2, $a0, $v1
/* 0A9E40 801213D0 C5460000 */  lwc1  $f6, ($t2)
/* 0A9E44 801213D4 00A35821 */  addu  $t3, $a1, $v1
/* 0A9E48 801213D8 E5660000 */  swc1  $f6, ($t3)
/* 0A9E4C 801213DC 8C4C0000 */  lw    $t4, ($v0)
/* 0A9E50 801213E0 C4289074 */  lwc1  $f8, %lo(D_80129074)($at)
/* 0A9E54 801213E4 3C01800E */  lui   $at, 0x800e
/* 0A9E58 801213E8 000C6880 */  sll   $t5, $t4, 2
/* 0A9E5C 801213EC 002D0821 */  addu  $at, $at, $t5
/* 0A9E60 801213F0 10000076 */  b     .L801215CC_ovl2
/* 0A9E64 801213F4 E4283C90 */   swc1  $f8, 0x3c90($at)
.L801213F8_ovl2:
/* 0A9E68 801213F8 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0A9E6C 801213FC 8CCE00E4 */  lw    $t6, 0xe4($a2)
/* 0A9E70 80121400 51C00017 */  beql  $t6, $zero, .L80121460_ovl2
/* 0A9E74 80121404 8CD900EC */   lw    $t9, 0xec($a2)
/* 0A9E78 80121408 8CCF00E8 */  lw    $t7, 0xe8($a2)
/* 0A9E7C 8012140C 51E00014 */  beql  $t7, $zero, .L80121460_ovl2
/* 0A9E80 80121410 8CD900EC */   lw    $t9, 0xec($a2)
/* 0A9E84 80121414 90D80005 */  lbu   $t8, 5($a2)
/* 0A9E88 80121418 2401001D */  li    $at, 29
/* 0A9E8C 8012141C 53010010 */  beql  $t8, $at, .L80121460_ovl2
/* 0A9E90 80121420 8CD900EC */   lw    $t9, 0xec($a2)
/* 0A9E94 80121424 94C20100 */  lhu   $v0, 0x100($a2)
/* 0A9E98 80121428 24010004 */  li    $at, 4
/* 0A9E9C 8012142C 1041000B */  beq   $v0, $at, .L8012145C_ovl2
/* 0A9EA0 80121430 24010005 */   li    $at, 5
/* 0A9EA4 80121434 10410009 */  beq   $v0, $at, .L8012145C_ovl2
/* 0A9EA8 80121438 3C01C0C0 */   li    $at, 0xC0C00000 # -6.000000
/* 0A9EAC 8012143C 44816000 */  mtc1  $at, $f12
/* 0A9EB0 80121440 0C02EFF8 */  jal   func_800BBFE0_ovl2
/* 0A9EB4 80121444 00000000 */   nop   
/* 0A9EB8 80121448 24040016 */  li    $a0, 22
/* 0A9EBC 8012144C 0C048BDB */  jal   func_80122F6C_ovl2
/* 0A9EC0 80121450 24050017 */   li    $a1, 23
/* 0A9EC4 80121454 1000005E */  b     .L801215D0_ovl2
/* 0A9EC8 80121458 8FBF0014 */   lw    $ra, 0x14($sp)
.L8012145C_ovl2:
/* 0A9ECC 8012145C 8CD900EC */  lw    $t9, 0xec($a2)
.L80121460_ovl2:
/* 0A9ED0 80121460 53200015 */  beql  $t9, $zero, .L801214B8_ovl2
/* 0A9ED4 80121464 8CCB0140 */   lw    $t3, 0x140($a2)
/* 0A9ED8 80121468 8CC800F0 */  lw    $t0, 0xf0($a2)
/* 0A9EDC 8012146C 51000012 */  beql  $t0, $zero, .L801214B8_ovl2
/* 0A9EE0 80121470 8CCB0140 */   lw    $t3, 0x140($a2)
/* 0A9EE4 80121474 94C90104 */  lhu   $t1, 0x104($a2)
/* 0A9EE8 80121478 24020002 */  li    $v0, 2
/* 0A9EEC 8012147C 5049000E */  beql  $v0, $t1, .L801214B8_ovl2
/* 0A9EF0 80121480 8CCB0140 */   lw    $t3, 0x140($a2)
/* 0A9EF4 80121484 94CA0106 */  lhu   $t2, 0x106($a2)
/* 0A9EF8 80121488 3C01C0C0 */  li    $at, 0xC0C00000 # -6.000000
/* 0A9EFC 8012148C 504A000A */  beql  $v0, $t2, .L801214B8_ovl2
/* 0A9F00 80121490 8CCB0140 */   lw    $t3, 0x140($a2)
/* 0A9F04 80121494 44816000 */  mtc1  $at, $f12
/* 0A9F08 80121498 0C02EFF8 */  jal   func_800BBFE0_ovl2
/* 0A9F0C 8012149C 00000000 */   nop   
/* 0A9F10 801214A0 24040016 */  li    $a0, 22
/* 0A9F14 801214A4 0C048BDB */  jal   func_80122F6C_ovl2
/* 0A9F18 801214A8 24050017 */   li    $a1, 23
/* 0A9F1C 801214AC 10000048 */  b     .L801215D0_ovl2
/* 0A9F20 801214B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9F24 801214B4 8CCB0140 */  lw    $t3, 0x140($a2)
.L801214B8_ovl2:
/* 0A9F28 801214B8 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0A9F2C 801214BC 51600044 */  beql  $t3, $zero, .L801215D0_ovl2
/* 0A9F30 801214C0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9F34 801214C4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0A9F38 801214C8 3C01800E */  lui   $at, 0x800e
/* 0A9F3C 801214CC 44805000 */  mtc1  $zero, $f10
/* 0A9F40 801214D0 8D830000 */  lw    $v1, ($t4)
/* 0A9F44 801214D4 3C0D800E */  lui   $t5, 0x800e
/* 0A9F48 801214D8 00031880 */  sll   $v1, $v1, 2
/* 0A9F4C 801214DC 00230821 */  addu  $at, $at, $v1
/* 0A9F50 801214E0 C4307B20 */  lwc1  $f16, 0x7b20($at)
/* 0A9F54 801214E4 01A36821 */  addu  $t5, $t5, $v1
/* 0A9F58 801214E8 46105032 */  c.eq.s $f10, $f16
/* 0A9F5C 801214EC 00000000 */  nop   
/* 0A9F60 801214F0 45030037 */  bc1tl .L801215D0_ovl2
/* 0A9F64 801214F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9F68 801214F8 8DAD7CE0 */  lw    $t5, 0x7ce0($t5)
/* 0A9F6C 801214FC 55A00034 */  bnezl $t5, .L801215D0_ovl2
/* 0A9F70 80121500 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9F74 80121504 90C20005 */  lbu   $v0, 5($a2)
/* 0A9F78 80121508 2401001D */  li    $at, 29
/* 0A9F7C 8012150C 50410030 */  beql  $v0, $at, .L801215D0_ovl2
/* 0A9F80 80121510 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9F84 80121514 94CE0068 */  lhu   $t6, 0x68($a2)
/* 0A9F88 80121518 24010016 */  li    $at, 22
/* 0A9F8C 8012151C 55C0002C */  bnezl $t6, .L801215D0_ovl2
/* 0A9F90 80121520 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A9F94 80121524 10410029 */  beq   $v0, $at, .L801215CC_ovl2
/* 0A9F98 80121528 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
/* 0A9F9C 8012152C 44816000 */  mtc1  $at, $f12
/* 0A9FA0 80121530 0C02EFF8 */  jal   func_800BBFE0_ovl2
/* 0A9FA4 80121534 00000000 */   nop   
/* 0A9FA8 80121538 14400005 */  bnez  $v0, .L80121550_ovl2
/* 0A9FAC 8012153C 24040016 */   li    $a0, 22
/* 0A9FB0 80121540 0C048BDB */  jal   func_80122F6C_ovl2
/* 0A9FB4 80121544 24050017 */   li    $a1, 23
/* 0A9FB8 80121548 10000021 */  b     .L801215D0_ovl2
/* 0A9FBC 8012154C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80121550_ovl2:
/* 0A9FC0 80121550 0C0482F3 */  jal   func_80120BCC_ovl2
/* 0A9FC4 80121554 00000000 */   nop   
/* 0A9FC8 80121558 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0A9FCC 8012155C 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0A9FD0 80121560 8CC30140 */  lw    $v1, 0x140($a2)
/* 0A9FD4 80121564 24040014 */  li    $a0, 20
/* 0A9FD8 80121568 24050016 */  li    $a1, 22
/* 0A9FDC 8012156C 00037B40 */  sll   $t7, $v1, 0xd
/* 0A9FE0 80121570 05E1000A */  bgez  $t7, .L8012159C_ovl2
/* 0A9FE4 80121574 00035300 */   sll   $t2, $v1, 0xc
/* 0A9FE8 80121578 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0A9FEC 8012157C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0A9FF0 80121580 3C01800F */  lui   $at, 0x800f
/* 0A9FF4 80121584 24180001 */  li    $t8, 1
/* 0A9FF8 80121588 8F280000 */  lw    $t0, ($t9)
/* 0A9FFC 8012158C 00084880 */  sll   $t1, $t0, 2
/* 0AA000 80121590 00290821 */  addu  $at, $at, $t1
/* 0AA004 80121594 1000000A */  b     .L801215C0_ovl2
/* 0AA008 80121598 AC3885A0 */   sw    $t8, -0x7a60($at)
.L8012159C_ovl2:
/* 0AA00C 8012159C 05410008 */  bgez  $t2, .L801215C0_ovl2
/* 0AA010 801215A0 3C0C8005 */   lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0AA014 801215A4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0AA018 801215A8 3C01800F */  lui   $at, 0x800f
/* 0AA01C 801215AC 240BFFFF */  li    $t3, -1
/* 0AA020 801215B0 8D8D0000 */  lw    $t5, ($t4)
/* 0AA024 801215B4 000D7080 */  sll   $t6, $t5, 2
/* 0AA028 801215B8 002E0821 */  addu  $at, $at, $t6
/* 0AA02C 801215BC AC2B85A0 */  sw    $t3, -0x7a60($at)
.L801215C0_ovl2:
/* 0AA030 801215C0 240F0001 */  li    $t7, 1
/* 0AA034 801215C4 0C048BDB */  jal   func_80122F6C_ovl2
/* 0AA038 801215C8 ACCF0024 */   sw    $t7, 0x24($a2)
.L801215CC_ovl2:
/* 0AA03C 801215CC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801215D0_ovl2:
/* 0AA040 801215D0 27BD0038 */  addiu $sp, $sp, 0x38
/* 0AA044 801215D4 03E00008 */  jr    $ra
/* 0AA048 801215D8 00000000 */   nop   
