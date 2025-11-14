glabel func_801ED930_ovl10
/* 1DE6A0 801ED930 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DE6A4 801ED934 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DE6A8 801ED938 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DE6AC 801ED93C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DE6B0 801ED940 AFA40020 */  sw    $a0, 0x20($sp)
/* 1DE6B4 801ED944 8C620000 */  lw    $v0, ($v1)
/* 1DE6B8 801ED948 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DE6BC 801ED94C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DE6C0 801ED950 00021080 */  sll   $v0, $v0, 2
/* 1DE6C4 801ED954 00220821 */  addu  $at, $at, $v0
/* 1DE6C8 801ED958 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DE6CC 801ED95C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DE6D0 801ED960 8C780000 */  lw    $t8, ($v1)
/* 1DE6D4 801ED964 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 1DE6D8 801ED968 00A22821 */  addu  $a1, $a1, $v0
/* 1DE6DC 801ED96C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DE6E0 801ED970 0018C880 */  sll   $t9, $t8, 2
/* 1DE6E4 801ED974 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 1DE6E8 801ED978 00390821 */  addu  $at, $at, $t9
/* 1DE6EC 801ED97C 240F0007 */  li    $t7, 7
/* 1DE6F0 801ED980 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DE6F4 801ED984 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DE6F8 801ED988 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DE6FC 801ED98C 3C040001 */  lui   $a0, (0x0001025C >> 16) # lui $a0, 1
/* 1DE700 801ED990 3484025C */  ori   $a0, (0x0001025C & 0xFFFF) # ori $a0, $a0, 0x25c
/* 1DE704 801ED994 0C02A806 */  jal   func_800AA018
/* 1DE708 801ED998 ACA80098 */   sw    $t0, 0x98($a1)
/* 1DE70C 801ED99C 3C040001 */  lui   $a0, (0x0001025D >> 16) # lui $a0, 1
/* 1DE710 801ED9A0 0C02A806 */  jal   func_800AA018
/* 1DE714 801ED9A4 3484025D */   ori   $a0, (0x0001025D & 0xFFFF) # ori $a0, $a0, 0x25d
/* 1DE718 801ED9A8 0C02CD48 */  jal   func_800B3520
/* 1DE71C 801ED9AC 00000000 */   nop   
/* 1DE720 801ED9B0 0C029D9E */  jal   play_sound
/* 1DE724 801ED9B4 240401F5 */   li    $a0, 501
/* 1DE728 801ED9B8 0C03EE45 */  jal   func_800FB914
/* 1DE72C 801ED9BC 24040001 */   li    $a0, 1
/* 1DE730 801ED9C0 0C07BC57 */  jal   func_801EF15C_ovl10
/* 1DE734 801ED9C4 24040002 */   li    $a0, 2
/* 1DE738 801ED9C8 0C07BC86 */  jal   func_801EF218_ovl10
/* 1DE73C 801ED9CC 24040001 */   li    $a0, 1
/* 1DE740 801ED9D0 0C02BC9F */  jal   func_800AF27C
/* 1DE744 801ED9D4 00000000 */   nop   
/* 1DE748 801ED9D8 3C040001 */  lui   $a0, (0x0001025E >> 16) # lui $a0, 1
/* 1DE74C 801ED9DC 0C02A806 */  jal   func_800AA018
/* 1DE750 801ED9E0 3484025E */   ori   $a0, (0x0001025E & 0xFFFF) # ori $a0, $a0, 0x25e
/* 1DE754 801ED9E4 3C040001 */  lui   $a0, (0x0001025F >> 16) # lui $a0, 1
/* 1DE758 801ED9E8 0C02A806 */  jal   func_800AA018
/* 1DE75C 801ED9EC 3484025F */   ori   $a0, (0x0001025F & 0xFFFF) # ori $a0, $a0, 0x25f
/* 1DE760 801ED9F0 0C07BC57 */  jal   func_801EF15C_ovl10
/* 1DE764 801ED9F4 24040001 */   li    $a0, 1
/* 1DE768 801ED9F8 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1DE76C 801ED9FC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1DE770 801EDA00 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1DE774 801EDA04 3C07800E */ lui $a3, %hi(gEntitiesNextPosXArray)
/* 1DE778 801EDA08 8D220000 */  lw    $v0, ($t1)
/* 1DE77C 801EDA0C 24040006 */  li    $a0, 6
/* 1DE780 801EDA10 24050003 */  li    $a1, 3
/* 1DE784 801EDA14 00021080 */  sll   $v0, $v0, 2
/* 1DE788 801EDA18 00220821 */  addu  $at, $at, $v0
/* 1DE78C 801EDA1C C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 1DE790 801EDA20 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1DE794 801EDA24 44813000 */  mtc1  $at, $f6
/* 1DE798 801EDA28 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1DE79C 801EDA2C 00220821 */  addu  $at, $at, $v0
/* 1DE7A0 801EDA30 C42A2950 */ lwc1 $f10, %lo(gEntitiesNextPosZArray)($at)
/* 1DE7A4 801EDA34 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1DE7A8 801EDA38 44818000 */  mtc1  $at, $f16
/* 1DE7AC 801EDA3C 46062201 */  sub.s $f8, $f4, $f6
/* 1DE7B0 801EDA40 00E23821 */  addu  $a3, $a3, $v0
/* 1DE7B4 801EDA44 8CE725D0 */ lw $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 1DE7B8 801EDA48 46105480 */  add.s $f18, $f10, $f16
/* 1DE7BC 801EDA4C E7A80010 */  swc1  $f8, 0x10($sp)
/* 1DE7C0 801EDA50 24060002 */  li    $a2, 2
/* 1DE7C4 801EDA54 0C029FDD */  jal   func_800A7F74
/* 1DE7C8 801EDA58 E7B20014 */   swc1  $f18, 0x14($sp)
/* 1DE7CC 801EDA5C 0C07B5F4 */  jal   func_801ED7D0_ovl10
/* 1DE7D0 801EDA60 8FA40020 */   lw    $a0, 0x20($sp)
/* 1DE7D4 801EDA64 0C02BC9F */  jal   func_800AF27C
/* 1DE7D8 801EDA68 00000000 */   nop   
/* 1DE7DC 801EDA6C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 1DE7E0 801EDA70 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 1DE7E4 801EDA74 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DE7E8 801EDA78 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DE7EC 801EDA7C 8D6C0000 */  lw    $t4, ($t3)
/* 1DE7F0 801EDA80 240A0001 */  li    $t2, 1
/* 1DE7F4 801EDA84 27BD0020 */  addiu $sp, $sp, 0x20
/* 1DE7F8 801EDA88 000C6880 */  sll   $t5, $t4, 2
/* 1DE7FC 801EDA8C 002D0821 */  addu  $at, $at, $t5
/* 1DE800 801EDA90 03E00008 */  jr    $ra
/* 1DE804 801EDA94 AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
.type func_801ED930_ovl10, @function
.size func_801ED930_ovl10, . - func_801ED930_ovl10
