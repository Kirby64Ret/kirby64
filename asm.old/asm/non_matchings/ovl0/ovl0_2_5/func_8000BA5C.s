glabel func_8000BA5C
/* 00C65C 8000BA5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C660 8000BA60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C664 8000BA64 0C00270E */  jal   func_80009C38
/* 00C668 8000BA68 00000000 */   nop   
/* 00C66C 8000BA6C AFA2001C */  sw    $v0, 0x1c($sp)
/* 00C670 8000BA70 0C002E42 */  jal   func_8000B908
/* 00C674 8000BA74 00402025 */   move  $a0, $v0
/* 00C678 8000BA78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00C67C 8000BA7C 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00C680 8000BA80 27BD0020 */  addiu $sp, $sp, 0x20
/* 00C684 8000BA84 03E00008 */  jr    $ra
/* 00C688 8000BA88 00000000 */   nop   
.type func_8000BA5C, @function
.size func_8000BA5C, . - func_8000BA5C
