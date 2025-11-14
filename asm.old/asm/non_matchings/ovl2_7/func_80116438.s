glabel func_80116438
/* 09EEA8 80116438 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EEAC 8011643C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EEB0 80116440 8C8E0000 */  lw    $t6, ($a0)
/* 09EEB4 80116444 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 09EEB8 80116448 AFA40018 */  sw    $a0, 0x18($sp)
/* 09EEBC 8011644C 0C04553C */  jal   func_801154F0
/* 09EEC0 80116450 AC2E7098 */   sw    $t6, %lo(D_800D7098)($at)
/* 09EEC4 80116454 0C045942 */  jal   func_80116508
/* 09EEC8 80116458 8FA40018 */   lw    $a0, 0x18($sp)
/* 09EECC 8011645C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EED0 80116460 27BD0018 */  addiu $sp, $sp, 0x18
/* 09EED4 80116464 03E00008 */  jr    $ra
/* 09EED8 80116468 00000000 */   nop   
.type func_80116438, @function
.size func_80116438, . - func_80116438
