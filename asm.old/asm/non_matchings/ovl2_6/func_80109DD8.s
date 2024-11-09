glabel func_80109DD8
/* 092848 80109DD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09284C 80109DDC AFBF0014 */  sw    $ra, 0x14($sp)
/* 092850 80109DE0 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 092854 80109DE4 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 092858 80109DE8 0C0426FC */  jal   func_80109BF0
/* 09285C 80109DEC 24060008 */   li    $a2, 8
/* 092860 80109DF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 092864 80109DF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 092868 80109DF8 03E00008 */  jr    $ra
/* 09286C 80109DFC 00000000 */   nop   
.type func_80109DD8, @function
.size func_80109DD8, . - func_80109DD8
