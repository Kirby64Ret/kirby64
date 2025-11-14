glabel func_8015986C_ovl4
/* 100D9C 8015986C 3C0E800D */  lui   $t6, %hi(D_800D6B24) # $t6, 0x800d
/* 100DA0 80159870 8DCE6B24 */  lw    $t6, %lo(D_800D6B24)($t6)
/* 100DA4 80159874 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 100DA8 80159878 AFBF0014 */  sw    $ra, 0x14($sp)
/* 100DAC 8015987C 15C0000D */  bnez  $t6, .L801598B4_ovl4
/* 100DB0 80159880 AFA40018 */   sw    $a0, 0x18($sp)
/* 100DB4 80159884 3C0F8016 */  lui   $t7, %hi(D_8015C710) # $t7, 0x8016
/* 100DB8 80159888 8DEFC710 */  lw    $t7, %lo(D_8015C710)($t7)
/* 100DBC 8015988C 24010002 */  li    $at, 2
/* 100DC0 80159890 00002025 */  move  $a0, $zero
/* 100DC4 80159894 15E10007 */  bne   $t7, $at, .L801598B4_ovl4
/* 100DC8 80159898 00002825 */   move  $a1, $zero
/* 100DCC 8015989C 0C0295D1 */  jal   func_800A5744
/* 100DD0 801598A0 00003025 */   move  $a2, $zero
/* 100DD4 801598A4 00002025 */  move  $a0, $zero
/* 100DD8 801598A8 24050010 */  li    $a1, 16
/* 100DDC 801598AC 0C029685 */  jal   func_800A5A14
/* 100DE0 801598B0 24060002 */   li    $a2, 2
.L801598B4_ovl4:
/* 100DE4 801598B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 100DE8 801598B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 100DEC 801598BC 03E00008 */  jr    $ra
/* 100DF0 801598C0 00000000 */   nop   
.type func_8015986C_ovl4, @function
.size func_8015986C_ovl4, . - func_8015986C_ovl4
