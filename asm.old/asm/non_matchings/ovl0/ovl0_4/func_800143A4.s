glabel func_800143A4
/* 014FA4 800143A4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 014FA8 800143A8 44812000 */  mtc1  $at, $f4
/* 014FAC 800143AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 014FB0 800143B0 3C018005 */  lui   $at, %hi(D_8004AA94) # $at, 0x8005
/* 014FB4 800143B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 014FB8 800143B8 E424AA94 */  swc1  $f4, %lo(D_8004AA94)($at)
/* 014FBC 800143BC 0C005099 */  jal   func_80014264
/* 014FC0 800143C0 8C84003C */   lw    $a0, 0x3c($a0)
/* 014FC4 800143C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 014FC8 800143C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 014FCC 800143CC 03E00008 */  jr    $ra
/* 014FD0 800143D0 00000000 */   nop   
.type func_800143A4, @function
.size func_800143A4, . - func_800143A4
