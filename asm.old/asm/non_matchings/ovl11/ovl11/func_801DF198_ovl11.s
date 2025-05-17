glabel func_801DF198_ovl11
/* 1E9A58 801DF198 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E9A5C 801DF19C 44866000 */  mtc1  $a2, $f12
/* 1E9A60 801DF1A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9A64 801DF1A4 14A00013 */  bnez  $a1, .L801DF1F4_ovl11
/* 1E9A68 801DF1A8 AFA40018 */   sw    $a0, 0x18($sp)
/* 1E9A6C 801DF1AC 4600610D */  trunc.w.s $f4, $f12
/* 1E9A70 801DF1B0 24010001 */  li    $at, 1
/* 1E9A74 801DF1B4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1E9A78 801DF1B8 440F2000 */  mfc1  $t7, $f4
/* 1E9A7C 801DF1BC 00000000 */  nop   
/* 1E9A80 801DF1C0 55E1000D */  bnel  $t7, $at, .L801DF1F8_ovl11
/* 1E9A84 801DF1C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E9A88 801DF1C8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1E9A8C 801DF1CC 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1E9A90 801DF1D0 00002025 */  move  $a0, $zero
/* 1E9A94 801DF1D4 8F190000 */  lw    $t9, ($t8)
/* 1E9A98 801DF1D8 00002825 */  move  $a1, $zero
/* 1E9A9C 801DF1DC 00194080 */  sll   $t0, $t9, 2
/* 1E9AA0 801DF1E0 00280821 */  addu  $at, $at, $t0
/* 1E9AA4 801DF1E4 0C02ED1A */  jal   func_800BB468
/* 1E9AA8 801DF1E8 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1E9AAC 801DF1EC 0C03EE45 */  jal   func_800FB914
/* 1E9AB0 801DF1F0 24040002 */   li    $a0, 2
.L801DF1F4_ovl11:
/* 1E9AB4 801DF1F4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DF1F8_ovl11:
/* 1E9AB8 801DF1F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9ABC 801DF1FC 03E00008 */  jr    $ra
/* 1E9AC0 801DF200 00000000 */   nop   
.type func_801DF198_ovl11, @function
.size func_801DF198_ovl11, . - func_801DF198_ovl11
