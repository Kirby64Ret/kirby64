glabel func_80014768
/* 015368 80014768 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01536C 8001476C 44812000 */  mtc1  $at, $f4
/* 015370 80014770 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 015374 80014774 3C018005 */  lui   $at, %hi(D_8004AA94) # $at, 0x8005
/* 015378 80014778 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01537C 8001477C E424AA94 */  swc1  $f4, %lo(D_8004AA94)($at)
/* 015380 80014780 8C84003C */  lw    $a0, 0x3c($a0)
/* 015384 80014784 0C0050F5 */  jal   func_800143D4
/* 015388 80014788 8C850050 */   lw    $a1, 0x50($a0)
/* 01538C 8001478C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 015390 80014790 27BD0018 */  addiu $sp, $sp, 0x18
/* 015394 80014794 03E00008 */  jr    $ra
/* 015398 80014798 00000000 */   nop   
.type func_80014768, @function
.size func_80014768, . - func_80014768
