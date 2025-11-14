glabel func_8000B9FC
/* 00C5FC 8000B9FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C600 8000BA00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C604 8000BA04 0C00273A */  jal   func_80009CE8
/* 00C608 8000BA08 00000000 */   nop   
/* 00C60C 8000BA0C AFA2001C */  sw    $v0, 0x1c($sp)
/* 00C610 8000BA10 0C002E30 */  jal   func_8000B8C0
/* 00C614 8000BA14 00402025 */   move  $a0, $v0
/* 00C618 8000BA18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00C61C 8000BA1C 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00C620 8000BA20 27BD0020 */  addiu $sp, $sp, 0x20
/* 00C624 8000BA24 03E00008 */  jr    $ra
/* 00C628 8000BA28 00000000 */   nop   
.type func_8000B9FC, @function
.size func_8000B9FC, . - func_8000B9FC
