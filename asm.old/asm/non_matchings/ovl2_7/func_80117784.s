glabel func_80117784
/* 0A01F4 80117784 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A01F8 80117788 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A01FC 8011778C 8C82004C */  lw    $v0, 0x4c($a0)
/* 0A0200 80117790 904E0002 */  lbu   $t6, 2($v0)
/* 0A0204 80117794 35CF0002 */  ori   $t7, $t6, 2
/* 0A0208 80117798 0C0454EE */  jal   func_801153B8
/* 0A020C 8011779C A04F0002 */   sb    $t7, 2($v0)
/* 0A0210 801177A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A0214 801177A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0218 801177A8 03E00008 */  jr    $ra
/* 0A021C 801177AC 00000000 */   nop   
.type func_80117784, @function
.size func_80117784, . - func_80117784
