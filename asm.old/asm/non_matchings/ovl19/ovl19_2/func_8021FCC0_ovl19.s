glabel func_8021FCC0_ovl19
/* 2403D0 8021FCC0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 2403D4 8021FCC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 2403D8 8021FCC8 AFB10018 */  sw    $s1, 0x18($sp)
/* 2403DC 8021FCCC AFB00014 */  sw    $s0, 0x14($sp)
/* 2403E0 8021FCD0 0C0877F4 */  jal   func_8021DFD0_ovl19
/* 2403E4 8021FCD4 AFA40020 */   sw    $a0, 0x20($sp)
/* 2403E8 8021FCD8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 2403EC 8021FCDC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 2403F0 8021FCE0 8E030000 */  lw    $v1, ($s0)
/* 2403F4 8021FCE4 3C018023 */  lui   $at, %hi(D_8022F764) # $at, 0x8023
/* 2403F8 8021FCE8 C420F764 */  lwc1  $f0, %lo(D_8022F764)($at)
/* 2403FC 8021FCEC 8C6F0000 */  lw    $t7, ($v1)
/* 240400 8021FCF0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 240404 8021FCF4 3C0E8022 */  lui   $t6, %hi(D_8021E5DC) # $t6, 0x8022
/* 240408 8021FCF8 000FC080 */  sll   $t8, $t7, 2
/* 24040C 8021FCFC 00380821 */  addu  $at, $at, $t8
/* 240410 8021FD00 25CEE5DC */  addiu $t6, %lo(D_8021E5DC) # addiu $t6, $t6, -0x1a24
/* 240414 8021FD04 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 240418 8021FD08 8C680000 */  lw    $t0, ($v1)
/* 24041C 8021FD0C 3C01800E */ lui $at, %hi(D_800DF150)
/* 240420 8021FD10 3C198022 */  lui   $t9, %hi(D_8021FE5C) # $t9, 0x8022
/* 240424 8021FD14 00084880 */  sll   $t1, $t0, 2
/* 240428 8021FD18 00290821 */  addu  $at, $at, $t1
/* 24042C 8021FD1C 2739FE5C */  addiu $t9, %lo(D_8021FE5C) # addiu $t9, $t9, -0x1a4
/* 240430 8021FD20 AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 240434 8021FD24 8C6A0000 */  lw    $t2, ($v1)
/* 240438 8021FD28 44802000 */  mtc1  $zero, $f4
/* 24043C 8021FD2C 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 240440 8021FD30 000A5880 */  sll   $t3, $t2, 2
/* 240444 8021FD34 002B0821 */  addu  $at, $at, $t3
/* 240448 8021FD38 E42441D0 */ swc1 $f4, %lo(gEntitiesAngleYArray)($at)
/* 24044C 8021FD3C 8C6C0000 */  lw    $t4, ($v1)
/* 240450 8021FD40 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 240454 8021FD44 3C040002 */  lui   $a0, (0x00020067 >> 16) # lui $a0, 2
/* 240458 8021FD48 000C6880 */  sll   $t5, $t4, 2
/* 24045C 8021FD4C 002D0821 */  addu  $at, $at, $t5
/* 240460 8021FD50 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 240464 8021FD54 8C6F0000 */  lw    $t7, ($v1)
/* 240468 8021FD58 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 24046C 8021FD5C 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 240470 8021FD60 000F7080 */  sll   $t6, $t7, 2
/* 240474 8021FD64 002E0821 */  addu  $at, $at, $t6
/* 240478 8021FD68 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 24047C 8021FD6C 8C780000 */  lw    $t8, ($v1)
/* 240480 8021FD70 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 240484 8021FD74 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 240488 8021FD78 00184080 */  sll   $t0, $t8, 2
/* 24048C 8021FD7C 00280821 */  addu  $at, $at, $t0
/* 240490 8021FD80 34840067 */  ori   $a0, (0x00020067 & 0xFFFF) # ori $a0, $a0, 0x67
/* 240494 8021FD84 24060010 */  li    $a2, 16
/* 240498 8021FD88 0C02A619 */  jal   func_800A9864
/* 24049C 8021FD8C E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 2404A0 8021FD90 24040002 */  li    $a0, 2
/* 2404A4 8021FD94 0C0878B4 */  jal   func_8021E2D0_ovl19
/* 2404A8 8021FD98 24050001 */   li    $a1, 1
/* 2404AC 8021FD9C 8E030000 */  lw    $v1, ($s0)
/* 2404B0 8021FDA0 3C01800F */ lui $at, %hi(D_800EBBE0)
/* 2404B4 8021FDA4 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 2404B8 8021FDA8 8C790000 */  lw    $t9, ($v1)
/* 2404BC 8021FDAC 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 2404C0 8021FDB0 3C040002 */  lui   $a0, (0x0002035D >> 16) # lui $a0, 2
/* 2404C4 8021FDB4 00194880 */  sll   $t1, $t9, 2
/* 2404C8 8021FDB8 00290821 */  addu  $at, $at, $t1
/* 2404CC 8021FDBC AC22BBE0 */ sw $v0, %lo(D_800EBBE0)($at)
/* 2404D0 8021FDC0 8C6A0000 */  lw    $t2, ($v1)
/* 2404D4 8021FDC4 3484035D */  ori   $a0, (0x0002035D & 0xFFFF) # ori $a0, $a0, 0x35d
/* 2404D8 8021FDC8 000A5880 */  sll   $t3, $t2, 2
/* 2404DC 8021FDCC 022B6021 */  addu  $t4, $s1, $t3
/* 2404E0 8021FDD0 0C02A806 */  jal   func_800AA018
/* 2404E4 8021FDD4 AD800000 */   sw    $zero, ($t4)
/* 2404E8 8021FDD8 8E0D0000 */  lw    $t5, ($s0)
/* 2404EC 8021FDDC 8DA20000 */  lw    $v0, ($t5)
/* 2404F0 8021FDE0 00021080 */  sll   $v0, $v0, 2
/* 2404F4 8021FDE4 02227821 */  addu  $t7, $s1, $v0
/* 2404F8 8021FDE8 8DEE0000 */  lw    $t6, ($t7)
/* 2404FC 8021FDEC 15C0000A */  bnez  $t6, .L8021FE18_ovl19
/* 240500 8021FDF0 00000000 */   nop   
.L8021FDF4_ovl19:
/* 240504 8021FDF4 0C002DAF */  jal   finish_current_thread
/* 240508 8021FDF8 24040001 */   li    $a0, 1
/* 24050C 8021FDFC 8E180000 */  lw    $t8, ($s0)
/* 240510 8021FE00 8F020000 */  lw    $v0, ($t8)
/* 240514 8021FE04 00021080 */  sll   $v0, $v0, 2
/* 240518 8021FE08 02224021 */  addu  $t0, $s1, $v0
/* 24051C 8021FE0C 8D190000 */  lw    $t9, ($t0)
/* 240520 8021FE10 1320FFF8 */  beqz  $t9, .L8021FDF4_ovl19
/* 240524 8021FE14 00000000 */   nop   
.L8021FE18_ovl19:
/* 240528 8021FE18 3C0A800F */ lui $t2, %hi(D_800EBBE0)
/* 24052C 8021FE1C 01425021 */  addu  $t2, $t2, $v0
/* 240530 8021FE20 8D4ABBE0 */ lw $t2, %lo(D_800EBBE0)($t2)
/* 240534 8021FE24 24090001 */  li    $t1, 1
/* 240538 8021FE28 3C040002 */  lui   $a0, (0x0002035E >> 16) # lui $a0, 2
/* 24053C 8021FE2C 000A5880 */  sll   $t3, $t2, 2
/* 240540 8021FE30 022B6021 */  addu  $t4, $s1, $t3
/* 240544 8021FE34 AD890000 */  sw    $t1, ($t4)
/* 240548 8021FE38 0C02A855 */  jal   func_800AA154
/* 24054C 8021FE3C 3484035E */   ori   $a0, (0x0002035E & 0xFFFF) # ori $a0, $a0, 0x35e
/* 240550 8021FE40 0C02BE85 */  jal   func_800AFA14
/* 240554 8021FE44 00000000 */   nop   
/* 240558 8021FE48 8FBF001C */  lw    $ra, 0x1c($sp)
/* 24055C 8021FE4C 8FB00014 */  lw    $s0, 0x14($sp)
/* 240560 8021FE50 8FB10018 */  lw    $s1, 0x18($sp)
/* 240564 8021FE54 03E00008 */  jr    $ra
/* 240568 8021FE58 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8021FCC0_ovl19, @function
.size func_8021FCC0_ovl19, . - func_8021FCC0_ovl19
