glabel func_8001CE30
/* 01DA30 8001CE30 44856000 */  mtc1  $a1, $f12
/* 01DA34 8001CE34 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 01DA38 8001CE38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01DA3C 8001CE3C AFA40058 */  sw    $a0, 0x58($sp)
/* 01DA40 8001CE40 44056000 */  mfc1  $a1, $f12
/* 01DA44 8001CE44 0C007368 */  jal   create_z_rotation_matrix
/* 01DA48 8001CE48 27A40018 */   addiu $a0, $sp, 0x18
/* 01DA4C 8001CE4C 27A40018 */  addiu $a0, $sp, 0x18
/* 01DA50 8001CE50 0C006718 */  jal   func_80019C60
/* 01DA54 8001CE54 8FA50058 */   lw    $a1, 0x58($sp)
/* 01DA58 8001CE58 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01DA5C 8001CE5C 27BD0058 */  addiu $sp, $sp, 0x58
/* 01DA60 8001CE60 03E00008 */  jr    $ra
/* 01DA64 8001CE64 00000000 */   nop   
.type func_8001CE30, @function
.size func_8001CE30, . - func_8001CE30
