glabel func_800FC500
/* 084F70 800FC500 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 084F74 800FC504 AFBF0014 */  sw    $ra, 0x14($sp)
/* 084F78 800FC508 0C03EEEE */  jal   func_800FBBB8
/* 084F7C 800FC50C 00000000 */   nop   
/* 084F80 800FC510 3C048013 */  lui   $a0, %hi(D_80129210) # $a0, 0x8013
/* 084F84 800FC514 0C03F059 */  jal   func_800FC164
/* 084F88 800FC518 24849210 */   addiu $a0, %lo(D_80129210) # addiu $a0, $a0, -0x6df0
/* 084F8C 800FC51C 10400003 */  beqz  $v0, .L800FC52C_ovl2
/* 084F90 800FC520 240E000B */   li    $t6, 11
/* 084F94 800FC524 3C01800D */  lui   $at, %hi(D_800D7088) # $at, 0x800d
/* 084F98 800FC528 AC2E7088 */  sw    $t6, %lo(D_800D7088)($at)
.L800FC52C_ovl2:
/* 084F9C 800FC52C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 084FA0 800FC530 27BD0018 */  addiu $sp, $sp, 0x18
/* 084FA4 800FC534 03E00008 */  jr    $ra
/* 084FA8 800FC538 00000000 */   nop   
.type func_800FC500, @function
.size func_800FC500, . - func_800FC500
