glabel func_800B92B4
/* 061504 800B92B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 061508 800B92B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06150C 800B92BC 0C02E48B */  jal   func_800B922C
/* 061510 800B92C0 00000000 */   nop   
/* 061514 800B92C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 061518 800B92C8 3C01800F */  lui   $at, %hi(D_800ECBAC) # $at, 0x800f
/* 06151C 800B92CC AC22CBAC */  sw    $v0, %lo(D_800ECBAC)($at)
/* 061520 800B92D0 03E00008 */  jr    $ra
/* 061524 800B92D4 27BD0018 */   addiu $sp, $sp, 0x18
.type func_800B92B4, @function
.size func_800B92B4, . - func_800B92B4
