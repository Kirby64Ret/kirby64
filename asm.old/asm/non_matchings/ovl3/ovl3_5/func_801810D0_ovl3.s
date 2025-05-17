glabel func_801810D0_ovl3
/* 0E1B10 801810D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E1B14 801810D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E1B18 801810D8 0C054E61 */  jal   func_80153984_ovl3
/* 0E1B1C 801810DC AFA40018 */   sw    $a0, 0x18($sp)
/* 0E1B20 801810E0 0C0485EE */  jal   func_801217B8
/* 0E1B24 801810E4 00000000 */   nop   
/* 0E1B28 801810E8 3C0E8013 */  lui   $t6, %hi(D_8012E7F0) # $t6, 0x8013
/* 0E1B2C 801810EC 8DCEE7F0 */  lw    $t6, %lo(D_8012E7F0)($t6)
/* 0E1B30 801810F0 51C00004 */  beql  $t6, $zero, .L80181104_ovl3
/* 0E1B34 801810F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0E1B38 801810F8 0C04759F */  jal   func_8011D67C
/* 0E1B3C 801810FC 00000000 */   nop   
/* 0E1B40 80181100 8FBF0014 */  lw    $ra, 0x14($sp)
.L80181104_ovl3:
/* 0E1B44 80181104 27BD0018 */  addiu $sp, $sp, 0x18
/* 0E1B48 80181108 03E00008 */  jr    $ra
/* 0E1B4C 8018110C 00000000 */   nop   
.type func_801810D0_ovl3, @function
.size func_801810D0_ovl3, . - func_801810D0_ovl3
