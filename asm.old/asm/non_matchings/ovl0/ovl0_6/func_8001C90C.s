glabel func_8001C90C
/* 01D50C 8001C90C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 01D510 8001C910 44856000 */  mtc1  $a1, $f12
/* 01D514 8001C914 44867000 */  mtc1  $a2, $f14
/* 01D518 8001C918 C7A40078 */  lwc1  $f4, 0x78($sp)
/* 01D51C 8001C91C C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 01D520 8001C920 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 01D524 8001C924 AFBF0024 */  sw    $ra, 0x24($sp)
/* 01D528 8001C928 AFA40068 */  sw    $a0, 0x68($sp)
/* 01D52C 8001C92C 44056000 */  mfc1  $a1, $f12
/* 01D530 8001C930 44067000 */  mfc1  $a2, $f14
/* 01D534 8001C934 AFA70074 */  sw    $a3, 0x74($sp)
/* 01D538 8001C938 27A40028 */  addiu $a0, $sp, 0x28
/* 01D53C 8001C93C E7A40010 */  swc1  $f4, 0x10($sp)
/* 01D540 8001C940 E7A60014 */  swc1  $f6, 0x14($sp)
/* 01D544 8001C944 0C00722E */  jal   func_8001C8B8
/* 01D548 8001C948 E7A80018 */   swc1  $f8, 0x18($sp)
/* 01D54C 8001C94C 27A40028 */  addiu $a0, $sp, 0x28
/* 01D550 8001C950 0C006718 */  jal   func_80019C60
/* 01D554 8001C954 8FA50068 */   lw    $a1, 0x68($sp)
/* 01D558 8001C958 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01D55C 8001C95C 27BD0068 */  addiu $sp, $sp, 0x68
/* 01D560 8001C960 03E00008 */  jr    $ra
/* 01D564 8001C964 00000000 */   nop   
.type func_8001C90C, @function
.size func_8001C90C, . - func_8001C90C