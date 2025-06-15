glabel func_8009BF7C
/* 0441CC 8009BF7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0441D0 8009BF80 00A03025 */  move  $a2, $a1
/* 0441D4 8009BF84 00802825 */  move  $a1, $a0
/* 0441D8 8009BF88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0441DC 8009BF8C AFA40018 */  sw    $a0, 0x18($sp)
/* 0441E0 8009BF90 0C026F13 */  jal   func_8009BC4C
/* 0441E4 8009BF94 00002025 */   move  $a0, $zero
/* 0441E8 8009BF98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0441EC 8009BF9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0441F0 8009BFA0 03E00008 */  jr    $ra
/* 0441F4 8009BFA4 00000000 */   nop   
.type func_8009BF7C, @function
.size func_8009BF7C, . - func_8009BF7C
