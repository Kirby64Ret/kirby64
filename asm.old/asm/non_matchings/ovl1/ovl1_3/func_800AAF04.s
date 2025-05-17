glabel func_800AAF04
/* 053154 800AAF04 44876000 */  mtc1  $a3, $f12
/* 053158 800AAF08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05315C 800AAF0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 053160 800AAF10 44076000 */  mfc1  $a3, $f12
/* 053164 800AAF14 0C02AB32 */  jal   func_800AACC8
/* 053168 800AAF18 00000000 */   nop   
/* 05316C 800AAF1C 0C02BC9F */  jal   func_800AF27C
/* 053170 800AAF20 00000000 */   nop   
/* 053174 800AAF24 8FBF0014 */  lw    $ra, 0x14($sp)
/* 053178 800AAF28 27BD0018 */  addiu $sp, $sp, 0x18
/* 05317C 800AAF2C 03E00008 */  jr    $ra
/* 053180 800AAF30 00000000 */   nop   
.type func_800AAF04, @function
.size func_800AAF04, . - func_800AAF04
