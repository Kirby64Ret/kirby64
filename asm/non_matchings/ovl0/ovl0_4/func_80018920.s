glabel inv_sinf
/* 019520 80018920 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 019524 80018924 AFBF0014 */  sw    $ra, 0x14($sp)
/* 019528 80018928 0C00B5B8 */  jal   sinf
/* 01952C 8001892C 00000000 */   nop   
/* 019530 80018930 8FBF0014 */  lw    $ra, 0x14($sp)
/* 019534 80018934 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 019538 80018938 44812000 */  mtc1  $at, $f4
/* 01953C 8001893C 27BD0018 */  addiu $sp, $sp, 0x18
/* 019540 80018940 03E00008 */  jr    $ra
/* 019544 80018944 46002003 */   div.s $f0, $f4, $f0
