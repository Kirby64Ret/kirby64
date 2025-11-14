glabel func_801051AC
/* 08DC1C 801051AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08DC20 801051B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08DC24 801051B4 0C041438 */  jal   func_801050E0
/* 08DC28 801051B8 AFA40018 */   sw    $a0, 0x18($sp)
/* 08DC2C 801051BC 3C0E8013 */  lui   $t6, %hi(D_8012BD40) # $t6, 0x8013
/* 08DC30 801051C0 8DCEBD40 */  lw    $t6, %lo(D_8012BD40)($t6)
/* 08DC34 801051C4 8FAF0018 */  lw    $t7, 0x18($sp)
/* 08DC38 801051C8 ADEE0058 */  sw    $t6, 0x58($t7)
/* 08DC3C 801051CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08DC40 801051D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 08DC44 801051D4 03E00008 */  jr    $ra
/* 08DC48 801051D8 00000000 */   nop   
.type func_801051AC, @function
.size func_801051AC, . - func_801051AC
