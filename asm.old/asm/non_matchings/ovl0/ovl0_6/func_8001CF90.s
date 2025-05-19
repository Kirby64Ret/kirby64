glabel func_8001CF90
/* 01DB90 8001CF90 44856000 */  mtc1  $a1, $f12
/* 01DB94 8001CF94 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 01DB98 8001CF98 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01DB9C 8001CF9C AFA40058 */  sw    $a0, 0x58($sp)
/* 01DBA0 8001CFA0 44056000 */  mfc1  $a1, $f12
/* 01DBA4 8001CFA4 0C0073C0 */  jal   create_y_rotation_matrix
/* 01DBA8 8001CFA8 27A40018 */   addiu $a0, $sp, 0x18
/* 01DBAC 8001CFAC 27A40018 */  addiu $a0, $sp, 0x18
/* 01DBB0 8001CFB0 0C006718 */  jal   func_80019C60
/* 01DBB4 8001CFB4 8FA50058 */   lw    $a1, 0x58($sp)
/* 01DBB8 8001CFB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01DBBC 8001CFBC 27BD0058 */  addiu $sp, $sp, 0x58
/* 01DBC0 8001CFC0 03E00008 */  jr    $ra
/* 01DBC4 8001CFC4 00000000 */   nop   
.type func_8001CF90, @function
.size func_8001CF90, . - func_8001CF90
