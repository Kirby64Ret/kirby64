glabel func_80176814_ovl3
/* 0D7254 80176814 3C0E8013 */  lui   $t6, %hi(D_8012E7F0) # $t6, 0x8013
/* 0D7258 80176818 8DCEE7F0 */  lw    $t6, %lo(D_8012E7F0)($t6)
/* 0D725C 8017681C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D7260 80176820 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D7264 80176824 11C00008 */  beqz  $t6, .L80176848_ovl3
/* 0D7268 80176828 AFA40018 */   sw    $a0, 0x18($sp)
/* 0D726C 8017682C 0C054E61 */  jal   func_80153984_ovl3
/* 0D7270 80176830 00000000 */   nop   
/* 0D7274 80176834 0C048596 */  jal   func_80121658_ovl3
/* 0D7278 80176838 00000000 */   nop   
/* 0D727C 8017683C 10400002 */  beqz  $v0, .L80176848_ovl3
/* 0D7280 80176840 3C018013 */   lui   $at, %hi(D_8012E7F0) # $at, 0x8013
/* 0D7284 80176844 AC20E7F0 */  sw    $zero, %lo(D_8012E7F0)($at)
.L80176848_ovl3:
/* 0D7288 80176848 0C047952 */  jal   func_8011E548_ovl3
/* 0D728C 8017684C 00000000 */   nop   
/* 0D7290 80176850 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D7294 80176854 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D7298 80176858 03E00008 */  jr    $ra
/* 0D729C 8017685C 00000000 */   nop   
