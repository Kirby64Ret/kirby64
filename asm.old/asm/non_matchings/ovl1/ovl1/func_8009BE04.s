glabel func_8009BE04
/* 044054 8009BE04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 044058 8009BE08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04405C 8009BE0C AFA40020 */  sw    $a0, 0x20($sp)
/* 044060 8009BE10 00A03025 */  move  $a2, $a1
/* 044064 8009BE14 8FA50020 */  lw    $a1, 0x20($sp)
/* 044068 8009BE18 0C026F13 */  jal   func_8009BC4C
/* 04406C 8009BE1C 00002025 */   move  $a0, $zero
/* 044070 8009BE20 10400007 */  beqz  $v0, .L8009BE40_ovl1
/* 044074 8009BE24 00402025 */   move  $a0, $v0
/* 044078 8009BE28 8FA60020 */  lw    $a2, 0x20($sp)
/* 04407C 8009BE2C 00002825 */  move  $a1, $zero
/* 044080 8009BE30 AFA2001C */  sw    $v0, 0x1c($sp)
/* 044084 8009BE34 0C027138 */  jal   func_8009C4E0
/* 044088 8009BE38 000630C3 */   sra   $a2, $a2, 3
/* 04408C 8009BE3C 8FA4001C */  lw    $a0, 0x1c($sp)
.L8009BE40_ovl1:
/* 044090 8009BE40 8FBF0014 */  lw    $ra, 0x14($sp)
/* 044094 8009BE44 27BD0020 */  addiu $sp, $sp, 0x20
/* 044098 8009BE48 00801025 */  move  $v0, $a0
/* 04409C 8009BE4C 03E00008 */  jr    $ra
/* 0440A0 8009BE50 00000000 */   nop   
.type func_8009BE04, @function
.size func_8009BE04, . - func_8009BE04
