glabel func_8000597C
/* 00657C 8000597C 3C028005 */  lui   $v0, %hi(D_8004A450) # $v0, 0x8005
/* 006580 80005980 8C42A450 */  lw    $v0, %lo(D_8004A450)($v0)
/* 006584 80005984 3C048005 */  lui   $a0, 0x8005
/* 006588 80005988 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00658C 8000598C 00027080 */  sll   $t6, $v0, 2
/* 006590 80005990 008E2021 */  addu  $a0, $a0, $t6
/* 006594 80005994 8C84A380 */  lw    $a0, -0x5c80($a0)
/* 006598 80005998 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00659C 8000599C 2405FFFF */  li    $a1, -1
/* 0065A0 800059A0 14800006 */  bnez  $a0, .L800059BC_ovl0
/* 0065A4 800059A4 00403025 */   move  $a2, $v0
/* 0065A8 800059A8 3C048004 */  lui   $a0, %hi(D_80040080) # $a0, 0x8004
/* 0065AC 800059AC 0C008C27 */  jal   fatal_printf
/* 0065B0 800059B0 24840080 */   addiu $a0, %lo(D_80040080) # addiu $a0, $a0, 0x80
.L800059B4_ovl0:
/* 0065B4 800059B4 1000FFFF */  b     .L800059B4_ovl0
/* 0065B8 800059B8 00000000 */   nop   
.L800059BC_ovl0:
/* 0065BC 800059BC 3C078005 */  lui   $a3, %hi(D_80049320) # $a3, 0x8005
/* 0065C0 800059C0 0C001644 */  jal   func_80005910_ovl0
/* 0065C4 800059C4 24E79320 */   addiu $a3, %lo(D_80049320) # addiu $a3, $a3, -0x6ce0
/* 0065C8 800059C8 3C028005 */  lui   $v0, %hi(D_8004A450) # $v0, 0x8005
/* 0065CC 800059CC 8C42A450 */  lw    $v0, %lo(D_8004A450)($v0)
/* 0065D0 800059D0 3C0F8005 */  lui   $t7, 0x8005
/* 0065D4 800059D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0065D8 800059D8 00021080 */  sll   $v0, $v0, 2
/* 0065DC 800059DC 01E27821 */  addu  $t7, $t7, $v0
/* 0065E0 800059E0 8DEFA368 */  lw    $t7, -0x5c98($t7)
/* 0065E4 800059E4 3C018005 */  lui   $at, 0x8005
/* 0065E8 800059E8 00220821 */  addu  $at, $at, $v0
/* 0065EC 800059EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0065F0 800059F0 03E00008 */  jr    $ra
/* 0065F4 800059F4 AC2FA370 */   sw    $t7, -0x5c90($at)
