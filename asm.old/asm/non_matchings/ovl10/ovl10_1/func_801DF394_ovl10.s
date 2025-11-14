glabel func_801DF394_ovl10
/* 1D0104 801DF394 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D0108 801DF398 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D010C 801DF39C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D0110 801DF3A0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D0114 801DF3A4 0C02BB30 */  jal   func_800AECC0
/* 1D0118 801DF3A8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D011C 801DF3AC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D0120 801DF3B0 0C02BB48 */  jal   func_800AED20
/* 1D0124 801DF3B4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D0128 801DF3B8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D012C 801DF3BC 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 1D0130 801DF3C0 8C620000 */  lw    $v0, ($v1)
/* 1D0134 801DF3C4 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D0138 801DF3C8 240E0009 */  li    $t6, 9
/* 1D013C 801DF3CC 8C4F0000 */  lw    $t7, ($v0)
/* 1D0140 801DF3D0 3C04800E */  lui   $a0, %hi(D_800E1B50) # $a0, 0x800e
/* 1D0144 801DF3D4 24841B50 */  addiu $a0, %lo(D_800E1B50) # addiu $a0, $a0, 0x1b50
/* 1D0148 801DF3D8 000FC080 */  sll   $t8, $t7, 2
/* 1D014C 801DF3DC 00380821 */  addu  $at, $at, $t8
/* 1D0150 801DF3E0 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1D0154 801DF3E4 8C480000 */  lw    $t0, ($v0)
/* 1D0158 801DF3E8 3C19801F */  lui   $t9, %hi(D_801F39F4_ovl10) # $t9, 0x801f
/* 1D015C 801DF3EC 273939F4 */  addiu $t9, %lo(D_801F39F4_ovl10) # addiu $t9, $t9, 0x39f4
/* 1D0160 801DF3F0 00084880 */  sll   $t1, $t0, 2
/* 1D0164 801DF3F4 00895021 */  addu  $t2, $a0, $t1
/* 1D0168 801DF3F8 8D4B0000 */  lw    $t3, ($t2)
/* 1D016C 801DF3FC 3C0C801F */  lui   $t4, %hi(D_801F4094_ovl10) # $t4, 0x801f
/* 1D0170 801DF400 258C4094 */  addiu $t4, %lo(D_801F4094_ovl10) # addiu $t4, $t4, 0x4094
/* 1D0174 801DF404 AD79008C */  sw    $t9, 0x8c($t3)
/* 1D0178 801DF408 8C6D0000 */  lw    $t5, ($v1)
/* 1D017C 801DF40C 8DAF0000 */  lw    $t7, ($t5)
/* 1D0180 801DF410 000F7080 */  sll   $t6, $t7, 2
/* 1D0184 801DF414 008EC021 */  addu  $t8, $a0, $t6
/* 1D0188 801DF418 8F080000 */  lw    $t0, ($t8)
/* 1D018C 801DF41C 0C02CCFD */  jal   func_800B33F4
/* 1D0190 801DF420 AD0C0098 */   sw    $t4, 0x98($t0)
/* 1D0194 801DF424 0C029D9E */  jal   play_sound
/* 1D0198 801DF428 240401DF */   li    $a0, 479
/* 1D019C 801DF42C 0C029D9E */  jal   play_sound
/* 1D01A0 801DF430 2404002A */   li    $a0, 42
/* 1D01A4 801DF434 24040002 */  li    $a0, 2
/* 1D01A8 801DF438 0C02ED1A */  jal   func_800BB468
/* 1D01AC 801DF43C 00002825 */   move  $a1, $zero
/* 1D01B0 801DF440 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1D01B4 801DF444 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1D01B8 801DF448 3C02800F */ lui $v0, %hi(D_800EA360)
/* 1D01BC 801DF44C 8D2A0000 */  lw    $t2, ($t1)
/* 1D01C0 801DF450 000AC880 */  sll   $t9, $t2, 2
/* 1D01C4 801DF454 00591021 */  addu  $v0, $v0, $t9
/* 1D01C8 801DF458 8C42A360 */ lw $v0, %lo(D_800EA360)($v0)
/* 1D01CC 801DF45C 5040000B */  beql  $v0, $zero, .L801DF48C_ovl10
/* 1D01D0 801DF460 3C040001 */   lui   $a0, 1
/* 1D01D4 801DF464 0C0288B5 */  jal   func_800A22D4
/* 1D01D8 801DF468 00402025 */   move  $a0, $v0
/* 1D01DC 801DF46C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 1D01E0 801DF470 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 1D01E4 801DF474 3C01800F */ lui $at, %hi(D_800EA360)
/* 1D01E8 801DF478 8D6D0000 */  lw    $t5, ($t3)
/* 1D01EC 801DF47C 000D7880 */  sll   $t7, $t5, 2
/* 1D01F0 801DF480 002F0821 */  addu  $at, $at, $t7
/* 1D01F4 801DF484 AC20A360 */ sw $zero, %lo(D_800EA360)($at)
/* 1D01F8 801DF488 3C040001 */  lui   $a0, (0x000102DF >> 16) # lui $a0, 1
.L801DF48C_ovl10:
/* 1D01FC 801DF48C 0C02A806 */  jal   func_800AA018
/* 1D0200 801DF490 348402DF */   ori   $a0, (0x000102DF & 0xFFFF) # ori $a0, $a0, 0x2df
/* 1D0204 801DF494 3C040001 */  lui   $a0, (0x000102DE >> 16) # lui $a0, 1
/* 1D0208 801DF498 0C02A855 */  jal   func_800AA154
/* 1D020C 801DF49C 348402DE */   ori   $a0, (0x000102DE & 0xFFFF) # ori $a0, $a0, 0x2de
/* 1D0210 801DF4A0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1D0214 801DF4A4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1D0218 801DF4A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D021C 801DF4AC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D0220 801DF4B0 8F0C0000 */  lw    $t4, ($t8)
/* 1D0224 801DF4B4 240E000A */  li    $t6, 10
/* 1D0228 801DF4B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D022C 801DF4BC 000C4080 */  sll   $t0, $t4, 2
/* 1D0230 801DF4C0 00280821 */  addu  $at, $at, $t0
/* 1D0234 801DF4C4 03E00008 */  jr    $ra
/* 1D0238 801DF4C8 AC2EDC50 */ sw $t6, %lo(gEntityVtableIndexArray)($at)
.type func_801DF394_ovl10, @function
.size func_801DF394_ovl10, . - func_801DF394_ovl10
