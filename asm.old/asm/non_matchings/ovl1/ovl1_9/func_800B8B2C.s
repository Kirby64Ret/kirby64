glabel func_800B8B2C
/* 060D7C 800B8B2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060D80 800B8B30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 060D84 800B8B34 3C05800F */  lui   $a1, %hi(D_800ECA08) # $a1, 0x800f
/* 060D88 800B8B38 24A5CA08 */  addiu $a1, %lo(D_800ECA08) # addiu $a1, $a1, -0x35f8
/* 060D8C 800B8B3C 24040002 */  li    $a0, 2
/* 060D90 800B8B40 0C00134D */  jal   func_80004D34_ovl1
/* 060D94 800B8B44 24060058 */   li    $a2, 88
/* 060D98 800B8B48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060D9C 800B8B4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 060DA0 800B8B50 03E00008 */  jr    $ra
/* 060DA4 800B8B54 00000000 */   nop   
.type func_800B8B2C, @function
.size func_800B8B2C, . - func_800B8B2C
