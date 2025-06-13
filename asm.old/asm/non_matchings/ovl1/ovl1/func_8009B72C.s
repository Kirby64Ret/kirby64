glabel func_8009B72C
/* 04397C 8009B72C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 043980 8009B730 AFA40018 */  sw    $a0, 0x18($sp)
/* 043984 8009B734 8FAE0018 */  lw    $t6, 0x18($sp)
/* 043988 8009B738 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04398C 8009B73C AFA5001C */  sw    $a1, 0x1c($sp)
/* 043990 8009B740 00A03025 */  move  $a2, $a1
/* 043994 8009B744 30C400FF */  andi  $a0, $a2, 0xff
/* 043998 8009B748 0C026D7A */  jal   func_8009B5E8
/* 04399C 8009B74C 95C50004 */   lhu   $a1, 4($t6)
/* 0439A0 8009B750 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0439A4 8009B754 ADE2004C */  sw    $v0, 0x4c($t7)
/* 0439A8 8009B758 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0439AC 8009B75C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0439B0 8009B760 03E00008 */  jr    $ra
/* 0439B4 8009B764 00000000 */   nop   
.type func_8009B72C, @function
.size func_8009B72C, . - func_8009B72C
