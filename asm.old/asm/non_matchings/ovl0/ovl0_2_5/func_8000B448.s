glabel func_8000B448
/* 00C048 8000B448 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00C04C 8000B44C AFB50028 */  sw    $s5, 0x28($sp)
/* 00C050 8000B450 AFB40024 */  sw    $s4, 0x24($sp)
/* 00C054 8000B454 AFB30020 */  sw    $s3, 0x20($sp)
/* 00C058 8000B458 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00C05C 8000B45C 3C148005 */  lui   $s4, %hi(D_8004A578) # $s4, 0x8005
/* 00C060 8000B460 3C158005 */  lui   $s5, %hi(D_8004A5F8) # $s5, 0x8005
/* 00C064 8000B464 00A09025 */  move  $s2, $a1
/* 00C068 8000B468 00809825 */  move  $s3, $a0
/* 00C06C 8000B46C AFBF002C */  sw    $ra, 0x2c($sp)
/* 00C070 8000B470 AFB10018 */  sw    $s1, 0x18($sp)
/* 00C074 8000B474 AFB00014 */  sw    $s0, 0x14($sp)
/* 00C078 8000B478 26B5A5F8 */  addiu $s5, %lo(D_8004A5F8) # addiu $s5, $s5, -0x5a08
/* 00C07C 8000B47C 2694A578 */  addiu $s4, %lo(D_8004A578) # addiu $s4, $s4, -0x5a88
/* 00C080 8000B480 8E900000 */  lw    $s0, ($s4)
.L8000B484_ovl0:
/* 00C084 8000B484 52000008 */  beql  $s0, $zero, .L8000B4A8_ovl0
/* 00C088 8000B488 26940004 */   addiu $s4, $s4, 4
.L8000B48C_ovl0:
/* 00C08C 8000B48C 8E110004 */  lw    $s1, 4($s0)
/* 00C090 8000B490 02002025 */  move  $a0, $s0
/* 00C094 8000B494 0260F809 */  jalr  $s3
/* 00C098 8000B498 02402825 */  move  $a1, $s2
/* 00C09C 8000B49C 1620FFFB */  bnez  $s1, .L8000B48C_ovl0
/* 00C0A0 8000B4A0 02208025 */   move  $s0, $s1
/* 00C0A4 8000B4A4 26940004 */  addiu $s4, $s4, 4
.L8000B4A8_ovl0:
/* 00C0A8 8000B4A8 5695FFF6 */  bnel  $s4, $s5, .L8000B484_ovl0
/* 00C0AC 8000B4AC 8E900000 */   lw    $s0, ($s4)
/* 00C0B0 8000B4B0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00C0B4 8000B4B4 8FB00014 */  lw    $s0, 0x14($sp)
/* 00C0B8 8000B4B8 8FB10018 */  lw    $s1, 0x18($sp)
/* 00C0BC 8000B4BC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 00C0C0 8000B4C0 8FB30020 */  lw    $s3, 0x20($sp)
/* 00C0C4 8000B4C4 8FB40024 */  lw    $s4, 0x24($sp)
/* 00C0C8 8000B4C8 8FB50028 */  lw    $s5, 0x28($sp)
/* 00C0CC 8000B4CC 03E00008 */  jr    $ra
/* 00C0D0 8000B4D0 27BD0030 */   addiu $sp, $sp, 0x30
.type func_8000B448, @function
.size func_8000B448, . - func_8000B448
