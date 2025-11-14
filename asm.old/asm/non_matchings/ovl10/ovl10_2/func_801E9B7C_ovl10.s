glabel func_801E9B7C_ovl10
/* 1DA8EC 801E9B7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DA8F0 801E9B80 44866000 */  mtc1  $a2, $f12
/* 1DA8F4 801E9B84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DA8F8 801E9B88 14A00010 */  bnez  $a1, .L801E9BCC_ovl10
/* 1DA8FC 801E9B8C AFA40018 */   sw    $a0, 0x18($sp)
/* 1DA900 801E9B90 4600610D */  trunc.w.s $f4, $f12
/* 1DA904 801E9B94 24010001 */  li    $at, 1
/* 1DA908 801E9B98 440F2000 */  mfc1  $t7, $f4
/* 1DA90C 801E9B9C 00000000 */  nop   
/* 1DA910 801E9BA0 55E1000B */  bnel  $t7, $at, .L801E9BD0_ovl10
/* 1DA914 801E9BA4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DA918 801E9BA8 44800000 */  mtc1  $zero, $f0
/* 1DA91C 801E9BAC 2404001A */  li    $a0, 26
/* 1DA920 801E9BB0 00002825 */  move  $a1, $zero
/* 1DA924 801E9BB4 44060000 */  mfc1  $a2, $f0
/* 1DA928 801E9BB8 44070000 */  mfc1  $a3, $f0
/* 1DA92C 801E9BBC 0C06B328 */  jal   func_801ACCA0_ovl10
/* 1DA930 801E9BC0 00000000 */   nop   
/* 1DA934 801E9BC4 0C029D9E */  jal   play_sound
/* 1DA938 801E9BC8 240401D4 */   li    $a0, 468
.L801E9BCC_ovl10:
/* 1DA93C 801E9BCC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E9BD0_ovl10:
/* 1DA940 801E9BD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DA944 801E9BD4 03E00008 */  jr    $ra
/* 1DA948 801E9BD8 00000000 */   nop   
.type func_801E9B7C_ovl10, @function
.size func_801E9B7C_ovl10, . - func_801E9B7C_ovl10
