glabel func_80184C64_ovl3
/* 0E56A4 80184C64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E56A8 80184C68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E56AC 80184C6C 0C054E61 */  jal   func_80153984_ovl3
/* 0E56B0 80184C70 AFA40018 */   sw    $a0, 0x18($sp)
/* 0E56B4 80184C74 0C0485EE */  jal   func_801217B8
/* 0E56B8 80184C78 00000000 */   nop   
/* 0E56BC 80184C7C 3C0E8013 */  lui   $t6, %hi(D_8012E7F0) # $t6, 0x8013
/* 0E56C0 80184C80 8DCEE7F0 */  lw    $t6, %lo(D_8012E7F0)($t6)
/* 0E56C4 80184C84 51C00004 */  beql  $t6, $zero, .L80184C98_ovl3
/* 0E56C8 80184C88 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0E56CC 80184C8C 0C04759F */  jal   func_8011D67C
/* 0E56D0 80184C90 00000000 */   nop   
/* 0E56D4 80184C94 8FBF0014 */  lw    $ra, 0x14($sp)
.L80184C98_ovl3:
/* 0E56D8 80184C98 27BD0018 */  addiu $sp, $sp, 0x18
/* 0E56DC 80184C9C 03E00008 */  jr    $ra
/* 0E56E0 80184CA0 00000000 */   nop   
.type func_80184C64_ovl3, @function
.size func_80184C64_ovl3, . - func_80184C64_ovl3
