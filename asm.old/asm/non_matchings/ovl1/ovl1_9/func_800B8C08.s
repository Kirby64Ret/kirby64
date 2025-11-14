glabel func_800B8C08
/* 060E58 800B8C08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060E5C 800B8C0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 060E60 800B8C10 3C05800F */  lui   $a1, %hi(D_800ECB10) # $a1, 0x800f
/* 060E64 800B8C14 24A5CB10 */  addiu $a1, %lo(D_800ECB10) # addiu $a1, $a1, -0x34f0
/* 060E68 800B8C18 24040023 */  li    $a0, 35
/* 060E6C 800B8C1C 0C00134D */  jal   func_80004D34_ovl1
/* 060E70 800B8C20 240600A0 */   li    $a2, 160
/* 060E74 800B8C24 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060E78 800B8C28 27BD0018 */  addiu $sp, $sp, 0x18
/* 060E7C 800B8C2C 03E00008 */  jr    $ra
/* 060E80 800B8C30 00000000 */   nop   
.type func_800B8C08, @function
.size func_800B8C08, . - func_800B8C08
