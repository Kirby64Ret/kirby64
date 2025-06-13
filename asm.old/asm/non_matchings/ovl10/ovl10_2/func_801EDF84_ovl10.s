glabel func_801EDF84_ovl10
/* 1DECF4 801EDF84 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DECF8 801EDF88 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DECFC 801EDF8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DED00 801EDF90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DED04 801EDF94 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DED08 801EDF98 8C430000 */  lw    $v1, ($v0)
/* 1DED0C 801EDF9C 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DED10 801EDFA0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DED14 801EDFA4 00031880 */  sll   $v1, $v1, 2
/* 1DED18 801EDFA8 00230821 */  addu  $at, $at, $v1
/* 1DED1C 801EDFAC 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DED20 801EDFB0 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DED24 801EDFB4 8C580000 */  lw    $t8, ($v0)
/* 1DED28 801EDFB8 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 1DED2C 801EDFBC 00A32821 */  addu  $a1, $a1, $v1
/* 1DED30 801EDFC0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DED34 801EDFC4 0018C880 */  sll   $t9, $t8, 2
/* 1DED38 801EDFC8 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 1DED3C 801EDFCC 00390821 */  addu  $at, $at, $t9
/* 1DED40 801EDFD0 240F000A */  li    $t7, 10
/* 1DED44 801EDFD4 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DED48 801EDFD8 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DED4C 801EDFDC 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DED50 801EDFE0 3C040001 */  lui   $a0, (0x0001026C >> 16) # lui $a0, 1
/* 1DED54 801EDFE4 3484026C */  ori   $a0, (0x0001026C & 0xFFFF) # ori $a0, $a0, 0x26c
/* 1DED58 801EDFE8 0C02A806 */  jal   func_800AA018
/* 1DED5C 801EDFEC ACA80098 */   sw    $t0, 0x98($a1)
/* 1DED60 801EDFF0 3C040001 */  lui   $a0, (0x0001026D >> 16) # lui $a0, 1
/* 1DED64 801EDFF4 0C02A806 */  jal   func_800AA018
/* 1DED68 801EDFF8 3484026D */   ori   $a0, (0x0001026D & 0xFFFF) # ori $a0, $a0, 0x26d
/* 1DED6C 801EDFFC 0C02CD48 */  jal   func_800B3520
/* 1DED70 801EE000 00000000 */   nop   
/* 1DED74 801EE004 0C07B5F4 */  jal   func_801ED7D0_ovl10
/* 1DED78 801EE008 8FA40018 */   lw    $a0, 0x18($sp)
/* 1DED7C 801EE00C 0C029D9E */  jal   play_sound
/* 1DED80 801EE010 240401AF */   li    $a0, 431
/* 1DED84 801EE014 0C02BC9F */  jal   func_800AF27C
/* 1DED88 801EE018 00000000 */   nop   
/* 1DED8C 801EE01C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1DED90 801EE020 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1DED94 801EE024 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DED98 801EE028 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DED9C 801EE02C 8D4B0000 */  lw    $t3, ($t2)
/* 1DEDA0 801EE030 24090001 */  li    $t1, 1
/* 1DEDA4 801EE034 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DEDA8 801EE038 000B6080 */  sll   $t4, $t3, 2
/* 1DEDAC 801EE03C 002C0821 */  addu  $at, $at, $t4
/* 1DEDB0 801EE040 03E00008 */  jr    $ra
/* 1DEDB4 801EE044 AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
.type func_801EDF84_ovl10, @function
.size func_801EDF84_ovl10, . - func_801EDF84_ovl10
