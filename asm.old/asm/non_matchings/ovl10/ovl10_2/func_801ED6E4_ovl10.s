glabel func_801ED6E4_ovl10
/* 1DE454 801ED6E4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DE458 801ED6E8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DE45C 801ED6EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DE460 801ED6F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DE464 801ED6F4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DE468 801ED6F8 8C430000 */  lw    $v1, ($v0)
/* 1DE46C 801ED6FC 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DE470 801ED700 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DE474 801ED704 00031880 */  sll   $v1, $v1, 2
/* 1DE478 801ED708 00230821 */  addu  $at, $at, $v1
/* 1DE47C 801ED70C 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DE480 801ED710 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DE484 801ED714 8C580000 */  lw    $t8, ($v0)
/* 1DE488 801ED718 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 1DE48C 801ED71C 00A32821 */  addu  $a1, $a1, $v1
/* 1DE490 801ED720 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DE494 801ED724 0018C880 */  sll   $t9, $t8, 2
/* 1DE498 801ED728 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 1DE49C 801ED72C 00390821 */  addu  $at, $at, $t9
/* 1DE4A0 801ED730 240F0006 */  li    $t7, 6
/* 1DE4A4 801ED734 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DE4A8 801ED738 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DE4AC 801ED73C 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DE4B0 801ED740 3C040001 */  lui   $a0, (0x00010258 >> 16) # lui $a0, 1
/* 1DE4B4 801ED744 34840258 */  ori   $a0, (0x00010258 & 0xFFFF) # ori $a0, $a0, 0x258
/* 1DE4B8 801ED748 0C02A806 */  jal   func_800AA018
/* 1DE4BC 801ED74C ACA80098 */   sw    $t0, 0x98($a1)
/* 1DE4C0 801ED750 3C040001 */  lui   $a0, (0x00010259 >> 16) # lui $a0, 1
/* 1DE4C4 801ED754 0C02A806 */  jal   func_800AA018
/* 1DE4C8 801ED758 34840259 */   ori   $a0, (0x00010259 & 0xFFFF) # ori $a0, $a0, 0x259
/* 1DE4CC 801ED75C 0C02CD48 */  jal   func_800B3520
/* 1DE4D0 801ED760 00000000 */   nop   
/* 1DE4D4 801ED764 0C07B5F4 */  jal   func_801ED7D0_ovl10
/* 1DE4D8 801ED768 8FA40018 */   lw    $a0, 0x18($sp)
/* 1DE4DC 801ED76C 0C029D9E */  jal   play_sound
/* 1DE4E0 801ED770 240401F4 */   li    $a0, 500
/* 1DE4E4 801ED774 0C02BC9F */  jal   func_800AF27C
/* 1DE4E8 801ED778 00000000 */   nop   
/* 1DE4EC 801ED77C 3C040001 */  lui   $a0, (0x00010256 >> 16) # lui $a0, 1
/* 1DE4F0 801ED780 0C02A806 */  jal   func_800AA018
/* 1DE4F4 801ED784 34840256 */   ori   $a0, (0x00010256 & 0xFFFF) # ori $a0, $a0, 0x256
/* 1DE4F8 801ED788 3C040001 */  lui   $a0, (0x00010257 >> 16) # lui $a0, 1
/* 1DE4FC 801ED78C 0C02A806 */  jal   func_800AA018
/* 1DE500 801ED790 34840257 */   ori   $a0, (0x00010257 & 0xFFFF) # ori $a0, $a0, 0x257
/* 1DE504 801ED794 0C02BC9F */  jal   func_800AF27C
/* 1DE508 801ED798 00000000 */   nop   
/* 1DE50C 801ED79C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1DE510 801ED7A0 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1DE514 801ED7A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DE518 801ED7A8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DE51C 801ED7AC 8D4B0000 */  lw    $t3, ($t2)
/* 1DE520 801ED7B0 24090001 */  li    $t1, 1
/* 1DE524 801ED7B4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DE528 801ED7B8 000B6080 */  sll   $t4, $t3, 2
/* 1DE52C 801ED7BC 002C0821 */  addu  $at, $at, $t4
/* 1DE530 801ED7C0 03E00008 */  jr    $ra
/* 1DE534 801ED7C4 AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
.type func_801ED6E4_ovl10, @function
.size func_801ED6E4_ovl10, . - func_801ED6E4_ovl10
