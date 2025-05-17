glabel func_801DE9C8_ovl11
/* 1E9288 801DE9C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E928C 801DE9CC 44866000 */  mtc1  $a2, $f12
/* 1E9290 801DE9D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9294 801DE9D4 14A0000D */  bnez  $a1, .L801DEA0C_ovl11
/* 1E9298 801DE9D8 AFA40018 */   sw    $a0, 0x18($sp)
/* 1E929C 801DE9DC 4600610D */  trunc.w.s $f4, $f12
/* 1E92A0 801DE9E0 24010001 */  li    $at, 1
/* 1E92A4 801DE9E4 2404001E */  li    $a0, 30
/* 1E92A8 801DE9E8 00002825 */  move  $a1, $zero
/* 1E92AC 801DE9EC 440F2000 */  mfc1  $t7, $f4
/* 1E92B0 801DE9F0 3C064180 */  lui   $a2, 0x4180
/* 1E92B4 801DE9F4 55E10006 */  bnel  $t7, $at, .L801DEA10_ovl11
/* 1E92B8 801DE9F8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E92BC 801DE9FC 0C06B328 */  jal   func_801ACCA0_ovl11
/* 1E92C0 801DEA00 3C0741A0 */   lui   $a3, 0x41a0
/* 1E92C4 801DEA04 0C029D9E */  jal   play_sound
/* 1E92C8 801DEA08 24040179 */   li    $a0, 377
.L801DEA0C_ovl11:
/* 1E92CC 801DEA0C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DEA10_ovl11:
/* 1E92D0 801DEA10 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E92D4 801DEA14 03E00008 */  jr    $ra
/* 1E92D8 801DEA18 00000000 */   nop   
.type func_801DE9C8_ovl11, @function
.size func_801DE9C8_ovl11, . - func_801DE9C8_ovl11
