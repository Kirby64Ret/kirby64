glabel func_800B8BB0
/* 060E00 800B8BB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060E04 800B8BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 060E08 800B8BB8 3C05800F */  lui   $a1, %hi(D_800ECA08) # $a1, 0x800f
/* 060E0C 800B8BBC 24A5CA08 */  addiu $a1, %lo(D_800ECA08) # addiu $a1, $a1, -0x35f8
/* 060E10 800B8BC0 24040002 */  li    $a0, 2
/* 060E14 800B8BC4 0C00134D */  jal   func_80004D34_ovl1
/* 060E18 800B8BC8 24060108 */   li    $a2, 264
/* 060E1C 800B8BCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060E20 800B8BD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 060E24 800B8BD4 03E00008 */  jr    $ra
/* 060E28 800B8BD8 00000000 */   nop   
.type func_800B8BB0, @function
.size func_800B8BB0, . - func_800B8BB0
