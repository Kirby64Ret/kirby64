glabel func_80117758
/* 0A01C8 80117758 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A01CC 8011775C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A01D0 80117760 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A01D4 80117764 904E0002 */  lbu   $t6, 2($v0)
/* 0A01D8 80117768 35CF0002 */  ori   $t7, $t6, 2
/* 0A01DC 8011776C 0C0454EE */  jal   func_801153B8
/* 0A01E0 80117770 A04F0002 */   sb    $t7, 2($v0)
/* 0A01E4 80117774 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A01E8 80117778 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A01EC 8011777C 03E00008 */  jr    $ra
/* 0A01F0 80117780 00000000 */   nop   
.type func_80117758, @function
.size func_80117758, . - func_80117758
