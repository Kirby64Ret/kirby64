glabel func_8012307C
/* 0ABAEC 8012307C 44866000 */  mtc1  $a2, $f12
/* 0ABAF0 80123080 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ABAF4 80123084 AFA40018 */  sw    $a0, 0x18($sp)
/* 0ABAF8 80123088 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0ABAFC 8012308C 00A02025 */  move  $a0, $a1
/* 0ABB00 80123090 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0ABB04 80123094 44056000 */  mfc1  $a1, $f12
/* 0ABB08 80123098 AFA70024 */  sw    $a3, 0x24($sp)
/* 0ABB0C 8012309C 0C02A7E6 */  jal   func_800A9F98
/* 0ABB10 801230A0 E7AC0020 */   swc1  $f12, 0x20($sp)
/* 0ABB14 801230A4 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0ABB18 801230A8 8FA40018 */  lw    $a0, 0x18($sp)
/* 0ABB1C 801230AC C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 0ABB20 801230B0 55C00007 */  bnezl $t6, .L801230D0_ovl2
/* 0ABB24 801230B4 44056000 */   mfc1  $a1, $f12
/* 0ABB28 801230B8 44056000 */  mfc1  $a1, $f12
/* 0ABB2C 801230BC 0C02A7E6 */  jal   func_800A9F98
/* 0ABB30 801230C0 00000000 */   nop   
/* 0ABB34 801230C4 10000005 */  b     .L801230DC_ovl2
/* 0ABB38 801230C8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0ABB3C 801230CC 44056000 */  mfc1  $a1, $f12
.L801230D0_ovl2:
/* 0ABB40 801230D0 0C02A831 */  jal   func_800AA0C4
/* 0ABB44 801230D4 00000000 */   nop   
/* 0ABB48 801230D8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801230DC_ovl2:
/* 0ABB4C 801230DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0ABB50 801230E0 03E00008 */  jr    $ra
/* 0ABB54 801230E4 00000000 */   nop   