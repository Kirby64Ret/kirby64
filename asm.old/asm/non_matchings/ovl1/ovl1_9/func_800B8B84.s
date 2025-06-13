glabel func_800B8B84
/* 060DD4 800B8B84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060DD8 800B8B88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 060DDC 800B8B8C 3C05800F */  lui   $a1, %hi(D_800ECAB8) # $a1, 0x800f
/* 060DE0 800B8B90 24A5CAB8 */  addiu $a1, %lo(D_800ECAB8) # addiu $a1, $a1, -0x3548
/* 060DE4 800B8B94 24040018 */  li    $a0, 24
/* 060DE8 800B8B98 0C00134D */  jal   func_80004D34_ovl1
/* 060DEC 800B8B9C 24060058 */   li    $a2, 88
/* 060DF0 800B8BA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060DF4 800B8BA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 060DF8 800B8BA8 03E00008 */  jr    $ra
/* 060DFC 800B8BAC 00000000 */   nop   
.type func_800B8B84, @function
.size func_800B8B84, . - func_800B8B84
