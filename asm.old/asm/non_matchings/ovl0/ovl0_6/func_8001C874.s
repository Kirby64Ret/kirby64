glabel func_8001C874
/* 01D474 8001C874 44856000 */  mtc1  $a1, $f12
/* 01D478 8001C878 44867000 */  mtc1  $a2, $f14
/* 01D47C 8001C87C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 01D480 8001C880 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D484 8001C884 AFA40058 */  sw    $a0, 0x58($sp)
/* 01D488 8001C888 44056000 */  mfc1  $a1, $f12
/* 01D48C 8001C88C 44067000 */  mfc1  $a2, $f14
/* 01D490 8001C890 AFA70064 */  sw    $a3, 0x64($sp)
/* 01D494 8001C894 0C0071CF */  jal   func_8001C73C
/* 01D498 8001C898 27A40018 */   addiu $a0, $sp, 0x18
/* 01D49C 8001C89C 27A40018 */  addiu $a0, $sp, 0x18
/* 01D4A0 8001C8A0 0C006718 */  jal   func_80019C60
/* 01D4A4 8001C8A4 8FA50058 */   lw    $a1, 0x58($sp)
/* 01D4A8 8001C8A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01D4AC 8001C8AC 27BD0058 */  addiu $sp, $sp, 0x58
/* 01D4B0 8001C8B0 03E00008 */  jr    $ra
/* 01D4B4 8001C8B4 00000000 */   nop   
.type func_8001C874, @function
.size func_8001C874, . - func_8001C874
