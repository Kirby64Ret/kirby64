glabel func_8000B8C0
/* 00C4C0 8000B8C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00C4C4 8000B8C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C4C8 8000B8C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 00C4CC 8000B8CC 24050012 */  li    $a1, 18
/* 00C4D0 8000B8D0 0C00258A */  jal   func_80009628
/* 00C4D4 8000B8D4 00003025 */   move  $a2, $zero
/* 00C4D8 8000B8D8 8FA40018 */  lw    $a0, 0x18($sp)
/* 00C4DC 8000B8DC 24050015 */  li    $a1, 21
/* 00C4E0 8000B8E0 0C00258A */  jal   func_80009628
/* 00C4E4 8000B8E4 00003025 */   move  $a2, $zero
/* 00C4E8 8000B8E8 8FA40018 */  lw    $a0, 0x18($sp)
/* 00C4EC 8000B8EC 24050020 */  li    $a1, 32
/* 00C4F0 8000B8F0 0C00258A */  jal   func_80009628
/* 00C4F4 8000B8F4 00003025 */   move  $a2, $zero
/* 00C4F8 8000B8F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00C4FC 8000B8FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 00C500 8000B900 03E00008 */  jr    $ra
/* 00C504 8000B904 00000000 */   nop   
.type func_8000B8C0, @function
.size func_8000B8C0, . - func_8000B8C0
