glabel func_801AA344_ovl7
/* 1503B4 801AA344 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1503B8 801AA348 AFB30020 */  sw    $s3, 0x20($sp)
/* 1503BC 801AA34C 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1503C0 801AA350 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1503C4 801AA354 8E6E0000 */  lw    $t6, ($s3)
/* 1503C8 801AA358 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1503CC 801AA35C AFB2001C */  sw    $s2, 0x1c($sp)
/* 1503D0 801AA360 AFB10018 */  sw    $s1, 0x18($sp)
/* 1503D4 801AA364 AFB00014 */  sw    $s0, 0x14($sp)
/* 1503D8 801AA368 AFA40038 */  sw    $a0, 0x38($sp)
/* 1503DC 801AA36C 8DC20000 */  lw    $v0, ($t6)
/* 1503E0 801AA370 3C11800E */ lui $s1, %hi(D_800E1B50)
/* 1503E4 801AA374 3C18800B */  lui   $t8, %hi(D_800B799C) # $t8, 0x800b
/* 1503E8 801AA378 00021080 */  sll   $v0, $v0, 2
/* 1503EC 801AA37C 02228821 */  addu  $s1, $s1, $v0
/* 1503F0 801AA380 8E311B50 */ lw $s1, %lo(D_800E1B50)($s1)
/* 1503F4 801AA384 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1503F8 801AA388 00220821 */  addu  $at, $at, $v0
/* 1503FC 801AA38C 8E2F0088 */  lw    $t7, 0x88($s1)
/* 150400 801AA390 2718799C */  addiu $t8, %lo(D_800B799C) # addiu $t8, $t8, 0x799c
/* 150404 801AA394 8DE3000C */  lw    $v1, 0xc($t7)
/* 150408 801AA398 8C650004 */  lw    $a1, 4($v1)
/* 15040C 801AA39C 8CB2001C */  lw    $s2, 0x1c($a1)
/* 150410 801AA3A0 8E500014 */  lw    $s0, 0x14($s2)
/* 150414 801AA3A4 AC38EF90 */ sw $t8, %lo(D_800DEF90)($at)
/* 150418 801AA3A8 8E440010 */  lw    $a0, 0x10($s2)
/* 15041C 801AA3AC AFA3002C */  sw    $v1, 0x2c($sp)
/* 150420 801AA3B0 0C068956 */  jal   func_801A2558_ovl7
/* 150424 801AA3B4 AFA50028 */   sw    $a1, 0x28($sp)
/* 150428 801AA3B8 3C19801D */  lui   $t9, %hi(D_801CD240) # $t9, 0x801d
/* 15042C 801AA3BC 2739D240 */  addiu $t9, %lo(D_801CD240) # addiu $t9, $t9, -0x2dc0
/* 150430 801AA3C0 AE390098 */  sw    $t9, 0x98($s1)
/* 150434 801AA3C4 8E650000 */  lw    $a1, ($s3)
/* 150438 801AA3C8 3C01800F */ lui $at, %hi(D_800E8920)
/* 15043C 801AA3CC 240A0001 */  li    $t2, 1
/* 150440 801AA3D0 8CA80000 */  lw    $t0, ($a1)
/* 150444 801AA3D4 24040001 */  li    $a0, 1
/* 150448 801AA3D8 00084880 */  sll   $t1, $t0, 2
/* 15044C 801AA3DC 00290821 */  addu  $at, $at, $t1
/* 150450 801AA3E0 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 150454 801AA3E4 8CAB0000 */  lw    $t3, ($a1)
/* 150458 801AA3E8 3C01800F */ lui $at, %hi(D_800E8E60)
/* 15045C 801AA3EC 000B6080 */  sll   $t4, $t3, 2
/* 150460 801AA3F0 002C0821 */  addu  $at, $at, $t4
/* 150464 801AA3F4 0C02BEED */  jal   func_800AFBB4
/* 150468 801AA3F8 AC2A8E60 */ sw $t2, %lo(D_800E8E60)($at)
/* 15046C 801AA3FC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 150470 801AA400 44816000 */  mtc1  $at, $f12
/* 150474 801AA404 0C02BB30 */  jal   func_800AECC0
/* 150478 801AA408 00000000 */   nop   
/* 15047C 801AA40C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 150480 801AA410 44816000 */  mtc1  $at, $f12
/* 150484 801AA414 0C02BB48 */  jal   func_800AED20
/* 150488 801AA418 00000000 */   nop   
/* 15048C 801AA41C 8E650000 */  lw    $a1, ($s3)
/* 150490 801AA420 3C01800E */ lui $at, %hi(D_800DDA90)
/* 150494 801AA424 240D0023 */  li    $t5, 35
/* 150498 801AA428 8CAE0000 */  lw    $t6, ($a1)
/* 15049C 801AA42C 8FA40028 */  lw    $a0, 0x28($sp)
/* 1504A0 801AA430 2402FFFF */  li    $v0, -1
/* 1504A4 801AA434 000E7880 */  sll   $t7, $t6, 2
/* 1504A8 801AA438 002F0821 */  addu  $at, $at, $t7
/* 1504AC 801AA43C AC2DDA90 */ sw $t5, %lo(D_800DDA90)($at)
/* 1504B0 801AA440 8CB80000 */  lw    $t8, ($a1)
/* 1504B4 801AA444 3C01800E */ lui $at, %hi(D_800DA6E0)
/* 1504B8 801AA448 0018C880 */  sll   $t9, $t8, 2
/* 1504BC 801AA44C 00390821 */  addu  $at, $at, $t9
/* 1504C0 801AA450 AC200D50 */  sw    $zero, 0xd50($at)
/* 1504C4 801AA454 8CA80000 */  lw    $t0, ($a1)
/* 1504C8 801AA458 C4840010 */  lwc1  $f4, 0x10($a0)
/* 1504CC 801AA45C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1504D0 801AA460 00084880 */  sll   $t1, $t0, 2
/* 1504D4 801AA464 00290821 */  addu  $at, $at, $t1
/* 1504D8 801AA468 E424A6E0 */ swc1 $f4, %lo(D_800DA6E0)($at)
/* 1504DC 801AA46C A2200040 */  sb    $zero, 0x40($s1)
/* 1504E0 801AA470 A2220038 */  sb    $v0, 0x38($s1)
/* 1504E4 801AA474 A2220039 */  sb    $v0, 0x39($s1)
/* 1504E8 801AA478 8E6B0000 */  lw    $t3, ($s3)
/* 1504EC 801AA47C C6460004 */  lwc1  $f6, 4($s2)
/* 1504F0 801AA480 3C01800E */ lui $at, %hi(D_800E2250)
/* 1504F4 801AA484 8D6A0000 */  lw    $t2, ($t3)
/* 1504F8 801AA488 000A6080 */  sll   $t4, $t2, 2
/* 1504FC 801AA48C 002C0821 */  addu  $at, $at, $t4
/* 150500 801AA490 0C06B1B4 */  jal   func_801AC6D0_ovl7
/* 150504 801AA494 E4262250 */ swc1 $f6, %lo(D_800E2250)($at)
/* 150508 801AA498 8E6D0000 */  lw    $t5, ($s3)
/* 15050C 801AA49C 3C01800E */ lui $at, %hi(D_800D83E0)
/* 150510 801AA4A0 240E000E */  li    $t6, 14
/* 150514 801AA4A4 8DAF0000 */  lw    $t7, ($t5)
/* 150518 801AA4A8 3C03801D */  lui   $v1, %hi(D_801D0AA0) # $v1, 0x801d
/* 15051C 801AA4AC 3C04801D */  lui   $a0, %hi(D_801D0A9C) # $a0, 0x801d
/* 150520 801AA4B0 000FC080 */  sll   $t8, $t7, 2
/* 150524 801AA4B4 00380821 */  addu  $at, $at, $t8
/* 150528 801AA4B8 AC2E0F10 */  sw    $t6, 0xf10($at)
/* 15052C 801AA4BC 24840A9C */  addiu $a0, %lo(D_801D0A9C) # addiu $a0, $a0, 0xa9c
/* 150530 801AA4C0 24630AA0 */  addiu $v1, %lo(D_801D0AA0) # addiu $v1, $v1, 0xaa0
/* 150534 801AA4C4 AC600000 */  sw    $zero, ($v1)
/* 150538 801AA4C8 AC800000 */  sw    $zero, ($a0)
/* 15053C 801AA4CC 3C01801D */  lui   $at, %hi(D_801D0A98) # $at, 0x801d
/* 150540 801AA4D0 AC200A98 */  sw    $zero, %lo(D_801D0A98)($at)
/* 150544 801AA4D4 3C01801D */  lui   $at, %hi(D_801D0AA8) # $at, 0x801d
/* 150548 801AA4D8 AC200AA8 */  sw    $zero, %lo(D_801D0AA8)($at)
/* 15054C 801AA4DC AE200034 */  sw    $zero, 0x34($s1)
/* 150550 801AA4E0 8E490000 */  lw    $t1, ($s2)
/* 150554 801AA4E4 3C01801D */  lui   $at, %hi(D_801D0AA4) # $at, 0x801d
/* 150558 801AA4E8 3C05801D */  lui   $a1, %hi(D_801D0A78) # $a1, 0x801d
/* 15055C 801AA4EC AC290AA4 */  sw    $t1, %lo(D_801D0AA4)($at)
/* 150560 801AA4F0 8E4B000C */  lw    $t3, 0xc($s2)
/* 150564 801AA4F4 24A50A78 */  addiu $a1, %lo(D_801D0A78) # addiu $a1, $a1, 0xa78
/* 150568 801AA4F8 8FAD002C */  lw    $t5, 0x2c($sp)
/* 15056C 801AA4FC 8D6C0000 */  lw    $t4, ($t3)
/* 150570 801AA500 24030001 */  li    $v1, 1
/* 150574 801AA504 3C01800F */ lui $at, %hi(D_800E83E0)
/* 150578 801AA508 ACAC0000 */  sw    $t4, ($a1)
/* 15057C 801AA50C 8D6A0004 */  lw    $t2, 4($t3)
/* 150580 801AA510 ACAA0004 */  sw    $t2, 4($a1)
/* 150584 801AA514 8D6C0008 */  lw    $t4, 8($t3)
/* 150588 801AA518 ACAC0008 */  sw    $t4, 8($a1)
/* 15058C 801AA51C 8D6A000C */  lw    $t2, 0xc($t3)
/* 150590 801AA520 ACAA000C */  sw    $t2, 0xc($a1)
/* 150594 801AA524 8D6C0010 */  lw    $t4, 0x10($t3)
/* 150598 801AA528 ACAC0010 */  sw    $t4, 0x10($a1)
/* 15059C 801AA52C 8D6A0014 */  lw    $t2, 0x14($t3)
/* 1505A0 801AA530 ACAA0014 */  sw    $t2, 0x14($a1)
/* 1505A4 801AA534 8D6C0018 */  lw    $t4, 0x18($t3)
/* 1505A8 801AA538 ACAC0018 */  sw    $t4, 0x18($a1)
/* 1505AC 801AA53C 8D6A001C */  lw    $t2, 0x1c($t3)
/* 1505B0 801AA540 ACAA001C */  sw    $t2, 0x1c($a1)
/* 1505B4 801AA544 8DAF0000 */  lw    $t7, ($t5)
/* 1505B8 801AA548 8DEE001C */  lw    $t6, 0x1c($t7)
/* 1505BC 801AA54C 8DC20004 */  lw    $v0, 4($t6)
/* 1505C0 801AA550 10400002 */  beqz  $v0, .L801AA55C_ovl7
/* 1505C4 801AA554 00000000 */   nop   
/* 1505C8 801AA558 ACA2001C */  sw    $v0, 0x1c($a1)
.L801AA55C_ovl7:
/* 1505CC 801AA55C 12000010 */  beqz  $s0, .L801AA5A0_ovl7
/* 1505D0 801AA560 3C028013 */ lui $v0, %hi(gKirbyState)
/* 1505D4 801AA564 92180000 */  lbu   $t8, ($s0)
/* 1505D8 801AA568 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 1505DC 801AA56C 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 1505E0 801AA570 A05800B8 */  sb    $t8, 0xb8($v0)
/* 1505E4 801AA574 C6080004 */  lwc1  $f8, 4($s0)
/* 1505E8 801AA578 E44800BC */  swc1  $f8, 0xbc($v0)
/* 1505EC 801AA57C C60A0008 */  lwc1  $f10, 8($s0)
/* 1505F0 801AA580 E44A00C0 */  swc1  $f10, 0xc0($v0)
/* 1505F4 801AA584 C610000C */  lwc1  $f16, 0xc($s0)
/* 1505F8 801AA588 E45000C4 */  swc1  $f16, 0xc4($v0)
/* 1505FC 801AA58C C6120010 */  lwc1  $f18, 0x10($s0)
/* 150600 801AA590 E45200C8 */  swc1  $f18, 0xc8($v0)
/* 150604 801AA594 92190001 */  lbu   $t9, 1($s0)
/* 150608 801AA598 10000003 */  b     .L801AA5A8_ovl7
/* 15060C 801AA59C A05900B9 */   sb    $t9, 0xb9($v0)
.L801AA5A0_ovl7:
/* 150610 801AA5A0 2442E7C0 */  addiu $v0, $v0, %lo(gKirbyState)
/* 150614 801AA5A4 A04000B8 */  sb    $zero, 0xb8($v0)
.L801AA5A8_ovl7:
/* 150618 801AA5A8 8E650000 */  lw    $a1, ($s3)
/* 15061C 801AA5AC 240B0001 */  li    $t3, 1
/* 150620 801AA5B0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 150624 801AA5B4 8CA80000 */  lw    $t0, ($a1)
/* 150628 801AA5B8 8FB30020 */  lw    $s3, 0x20($sp)
/* 15062C 801AA5BC 8FB00014 */  lw    $s0, 0x14($sp)
/* 150630 801AA5C0 00084880 */  sll   $t1, $t0, 2
/* 150634 801AA5C4 00290821 */  addu  $at, $at, $t1
/* 150638 801AA5C8 AC2083E0 */ sw $zero, %lo(D_800D83E0)($at)
/* 15063C 801AA5CC A44B00B4 */  sh    $t3, 0xb4($v0)
/* 150640 801AA5D0 8CAA0000 */  lw    $t2, ($a1)
/* 150644 801AA5D4 3C01800F */ lui $at, %hi(D_800E8220)
/* 150648 801AA5D8 8FB10018 */  lw    $s1, 0x18($sp)
/* 15064C 801AA5DC 000A6080 */  sll   $t4, $t2, 2
/* 150650 801AA5E0 002C0821 */  addu  $at, $at, $t4
/* 150654 801AA5E4 AC238220 */ sw $v1, %lo(D_800E8220)($at)
/* 150658 801AA5E8 AC4300AC */  sw    $v1, 0xac($v0)
/* 15065C 801AA5EC 8E4D0008 */  lw    $t5, 8($s2)
/* 150660 801AA5F0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 150664 801AA5F4 27BD0038 */  addiu $sp, $sp, 0x38
/* 150668 801AA5F8 03E00008 */  jr    $ra
/* 15066C 801AA5FC A04D000E */   sb    $t5, 0xe($v0)
.type func_801AA344_ovl7, @function
.size func_801AA344_ovl7, . - func_801AA344_ovl7
