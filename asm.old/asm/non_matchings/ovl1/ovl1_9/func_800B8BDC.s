glabel func_800B8BDC
/* 060E2C 800B8BDC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060E30 800B8BE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 060E34 800B8BE4 3C05800F */  lui   $a1, %hi(gSaveBuffer1) # $a1, 0x800f
/* 060E38 800B8BE8 24A5C9F8 */  addiu $a1, %lo(gSaveBuffer1) # addiu $a1, $a1, -0x3608
/* 060E3C 800B8BEC 00002025 */  move  $a0, $zero
/* 060E40 800B8BF0 0C00134D */  jal   func_80004D34_ovl1
/* 060E44 800B8BF4 24060010 */   li    $a2, 16
/* 060E48 800B8BF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060E4C 800B8BFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 060E50 800B8C00 03E00008 */  jr    $ra
/* 060E54 800B8C04 00000000 */   nop   
.type func_800B8BDC, @function
.size func_800B8BDC, . - func_800B8BDC
