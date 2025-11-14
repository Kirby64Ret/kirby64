glabel func_8001E300
/* 01EF00 8001E300 44866000 */  mtc1  $a2, $f12
/* 01EF04 8001E304 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01EF08 8001E308 AFA40018 */  sw    $a0, 0x18($sp)
/* 01EF0C 8001E30C AFA5001C */  sw    $a1, 0x1c($sp)
/* 01EF10 8001E310 00A02025 */  move  $a0, $a1
/* 01EF14 8001E314 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01EF18 8001E318 44056000 */  mfc1  $a1, $f12
/* 01EF1C 8001E31C 0C007841 */  jal   func_8001E104
/* 01EF20 8001E320 00000000 */   nop   
/* 01EF24 8001E324 44060000 */  mfc1  $a2, $f0
/* 01EF28 8001E328 8FA40018 */  lw    $a0, 0x18($sp)
/* 01EF2C 8001E32C 0C0076D5 */  jal   func_8001DB54
/* 01EF30 8001E330 8FA5001C */   lw    $a1, 0x1c($sp)
/* 01EF34 8001E334 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01EF38 8001E338 27BD0018 */  addiu $sp, $sp, 0x18
/* 01EF3C 8001E33C 03E00008 */  jr    $ra
/* 01EF40 8001E340 00000000 */   nop   
.type func_8001E300, @function
.size func_8001E300, . - func_8001E300
