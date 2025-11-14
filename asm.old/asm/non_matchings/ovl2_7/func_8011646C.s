glabel func_8011646C
/* 09EEDC 8011646C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EEE0 80116470 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EEE4 80116474 8C8E0000 */  lw    $t6, ($a0)
/* 09EEE8 80116478 3C01800D */  lui   $at, %hi(D_800D709C) # $at, 0x800d
/* 09EEEC 8011647C AFA40018 */  sw    $a0, 0x18($sp)
/* 09EEF0 80116480 0C04553C */  jal   func_801154F0
/* 09EEF4 80116484 AC2E709C */   sw    $t6, %lo(D_800D709C)($at)
/* 09EEF8 80116488 0C045942 */  jal   func_80116508
/* 09EEFC 8011648C 8FA40018 */   lw    $a0, 0x18($sp)
/* 09EF00 80116490 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EF04 80116494 27BD0018 */  addiu $sp, $sp, 0x18
/* 09EF08 80116498 03E00008 */  jr    $ra
/* 09EF0C 8011649C 00000000 */   nop   
.type func_8011646C, @function
.size func_8011646C, . - func_8011646C
