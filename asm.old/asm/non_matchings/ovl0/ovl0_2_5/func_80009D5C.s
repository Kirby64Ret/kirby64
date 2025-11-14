glabel func_80009D5C
/* 00A95C 80009D5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00A960 80009D60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00A964 80009D64 AFA50024 */  sw    $a1, 0x24($sp)
/* 00A968 80009D68 0C002244 */  jal   HS64_DObjPop
/* 00A96C 80009D6C AFA40020 */   sw    $a0, 0x20($sp)
/* 00A970 80009D70 8FA70020 */  lw    $a3, 0x20($sp)
/* 00A974 80009D74 00402825 */  move  $a1, $v0
/* 00A978 80009D78 8CE60010 */  lw    $a2, 0x10($a3)
/* 00A97C 80009D7C 50C0000D */  beql  $a2, $zero, .L80009DB4_ovl0
/* 00A980 80009D80 ACE20010 */   sw    $v0, 0x10($a3)
/* 00A984 80009D84 8CC30008 */  lw    $v1, 8($a2)
/* 00A988 80009D88 00C02025 */  move  $a0, $a2
/* 00A98C 80009D8C 50600006 */  beql  $v1, $zero, .L80009DA8_ovl0
/* 00A990 80009D90 AC820008 */   sw    $v0, 8($a0)
/* 00A994 80009D94 00602025 */  move  $a0, $v1
.L80009D98_ovl0:
/* 00A998 80009D98 8C630008 */  lw    $v1, 8($v1)
/* 00A99C 80009D9C 5460FFFE */  bnezl $v1, .L80009D98_ovl0
/* 00A9A0 80009DA0 00602025 */   move  $a0, $v1
/* 00A9A4 80009DA4 AC820008 */  sw    $v0, 8($a0)
.L80009DA8_ovl0:
/* 00A9A8 80009DA8 10000003 */  b     .L80009DB8_ovl0
/* 00A9AC 80009DAC AC44000C */   sw    $a0, 0xc($v0)
/* 00A9B0 80009DB0 ACE20010 */  sw    $v0, 0x10($a3)
.L80009DB4_ovl0:
/* 00A9B4 80009DB4 AC40000C */  sw    $zero, 0xc($v0)
.L80009DB8_ovl0:
/* 00A9B8 80009DB8 8CEE0004 */  lw    $t6, 4($a3)
/* 00A9BC 80009DBC ACA70014 */  sw    $a3, 0x14($a1)
/* 00A9C0 80009DC0 ACA00010 */  sw    $zero, 0x10($a1)
/* 00A9C4 80009DC4 ACA00008 */  sw    $zero, 8($a1)
/* 00A9C8 80009DC8 ACAE0004 */  sw    $t6, 4($a1)
/* 00A9CC 80009DCC 8FAF0024 */  lw    $t7, 0x24($sp)
/* 00A9D0 80009DD0 00A02025 */  move  $a0, $a1
/* 00A9D4 80009DD4 ACAF0050 */  sw    $t7, 0x50($a1)
/* 00A9D8 80009DD8 0C0026F5 */  jal   func_80009BD4
/* 00A9DC 80009DDC AFA5001C */   sw    $a1, 0x1c($sp)
/* 00A9E0 80009DE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00A9E4 80009DE4 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00A9E8 80009DE8 27BD0020 */  addiu $sp, $sp, 0x20
/* 00A9EC 80009DEC 03E00008 */  jr    $ra
/* 00A9F0 80009DF0 00000000 */   nop   
.type func_80009D5C, @function
.size func_80009D5C, . - func_80009D5C
