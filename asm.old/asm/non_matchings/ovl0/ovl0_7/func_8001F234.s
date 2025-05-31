glabel func_8001F234
/* 01FE34 8001F234 3C028009 */  lui   $v0, %hi(D_80096510) # $v0, 0x8009
/* 01FE38 8001F238 24426510 */  addiu $v0, %lo(D_80096510) # addiu $v0, $v0, 0x6510
/* 01FE3C 8001F23C 8C4E0000 */  lw    $t6, ($v0)
/* 01FE40 8001F240 AC8E0000 */  sw    $t6, ($a0)
/* 01FE44 8001F244 03E00008 */  jr    $ra
/* 01FE48 8001F248 AC440000 */   sw    $a0, ($v0)
.type func_8001F234, @function
.size func_8001F234, . - func_8001F234
