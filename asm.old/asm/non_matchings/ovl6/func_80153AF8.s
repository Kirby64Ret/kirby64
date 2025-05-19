glabel func_80153AF8
/* 137E88 80153AF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 137E8C 80153AFC AFBF0014 */  sw    $ra, 0x14($sp)
/* 137E90 80153B00 3C059999 */  lui   $a1, (0x99999999 >> 16) # lui $a1, 0x9999
/* 137E94 80153B04 34A59999 */  ori   $a1, (0x99999999 & 0xFFFF) # ori $a1, $a1, 0x9999
/* 137E98 80153B08 0C029D6C */  jal   play_music
/* 137E9C 80153B0C 00002025 */   move  $a0, $zero
/* 137EA0 80153B10 3C0E8016 */  lui   $t6, %hi(D_8015A560) # $t6, 0x8016
/* 137EA4 80153B14 8DCEA560 */  lw    $t6, %lo(D_8015A560)($t6)
/* 137EA8 80153B18 00002025 */  move  $a0, $zero
/* 137EAC 80153B1C 0C029D6C */  jal   play_music
/* 137EB0 80153B20 8DC50004 */   lw    $a1, 4($t6)
/* 137EB4 80153B24 8FBF0014 */  lw    $ra, 0x14($sp)
/* 137EB8 80153B28 27BD0018 */  addiu $sp, $sp, 0x18
/* 137EBC 80153B2C 03E00008 */  jr    $ra
/* 137EC0 80153B30 00000000 */   nop   
.type func_80153AF8, @function
.size func_80153AF8, . - func_80153AF8
