glabel func_80228874_ovl19
/* 248F84 80228874 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 248F88 80228878 AFA40018 */  sw    $a0, 0x18($sp)
/* 248F8C 8022887C AFBF0014 */  sw    $ra, 0x14($sp)
/* 248F90 80228880 3C048023 */  lui   $a0, %hi(D_8022FAB0) # $a0, 0x8023
/* 248F94 80228884 0C03FC80 */  jal   func_800FF200
/* 248F98 80228888 8C84FAB0 */   lw    $a0, %lo(D_8022FAB0)($a0)
/* 248F9C 8022888C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 248FA0 80228890 27BD0018 */  addiu $sp, $sp, 0x18
/* 248FA4 80228894 03E00008 */  jr    $ra
/* 248FA8 80228898 00000000 */   nop   
.type func_80228874_ovl19, @function
.size func_80228874_ovl19, . - func_80228874_ovl19
