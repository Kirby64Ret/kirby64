glabel func_8000888C
/* 00948C 8000888C 3C068005 */  lui   $a2, %hi(D_8004A7A4) # $a2, 0x8005
/* 009490 80008890 24C6A7A4 */  addiu $a2, %lo(D_8004A7A4) # addiu $a2, $a2, -0x585c
/* 009494 80008894 8CC30000 */  lw    $v1, ($a2)
/* 009498 80008898 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00949C 8000889C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0094A0 800088A0 14600006 */  bnez  $v1, .L800088BC_ovl0
/* 0094A4 800088A4 3C058005 */   lui   $a1, %hi(D_8004A7A8) # $a1, 0x8005
/* 0094A8 800088A8 3C048004 */  lui   $a0, %hi(D_800402C8) # $a0, 0x8004
/* 0094AC 800088AC 0C008C27 */  jal   fatal_printf
/* 0094B0 800088B0 248402C8 */   addiu $a0, %lo(D_800402C8) # addiu $a0, $a0, 0x2c8
.L800088B4_ovl0:
/* 0094B4 800088B4 1000FFFF */  b     .L800088B4_ovl0
/* 0094B8 800088B8 00000000 */   nop   
.L800088BC_ovl0:
/* 0094BC 800088BC 24A5A7A8 */  addiu $a1, %lo(D_8004A7A8) # addiu $a1, $a1, -0x5858
/* 0094C0 800088C0 8CAF0000 */  lw    $t7, ($a1)
/* 0094C4 800088C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0094C8 800088C8 8C6E0000 */  lw    $t6, ($v1)
/* 0094CC 800088CC 25F80001 */  addiu $t8, $t7, 1
/* 0094D0 800088D0 ACB80000 */  sw    $t8, ($a1)
/* 0094D4 800088D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0094D8 800088D8 00601025 */  move  $v0, $v1
/* 0094DC 800088DC 03E00008 */  jr    $ra
/* 0094E0 800088E0 ACCE0000 */   sw    $t6, ($a2)
