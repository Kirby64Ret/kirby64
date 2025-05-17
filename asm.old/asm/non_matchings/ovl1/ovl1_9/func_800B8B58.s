glabel func_800B8B58
/* 060DA8 800B8B58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060DAC 800B8B5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 060DB0 800B8B60 3C05800F */  lui   $a1, %hi(D_800ECA60) # $a1, 0x800f
/* 060DB4 800B8B64 24A5CA60 */  addiu $a1, %lo(D_800ECA60) # addiu $a1, $a1, -0x35a0
/* 060DB8 800B8B68 2404000D */  li    $a0, 13
/* 060DBC 800B8B6C 0C00134D */  jal   func_80004D34_ovl1
/* 060DC0 800B8B70 24060058 */   li    $a2, 88
/* 060DC4 800B8B74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060DC8 800B8B78 27BD0018 */  addiu $sp, $sp, 0x18
/* 060DCC 800B8B7C 03E00008 */  jr    $ra
/* 060DD0 800B8B80 00000000 */   nop   
.type func_800B8B58, @function
.size func_800B8B58, . - func_800B8B58
