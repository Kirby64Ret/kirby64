glabel func_801ACF30_ovl7
/* 152FA0 801ACF30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 152FA4 801ACF34 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 152FA8 801ACF38 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 152FAC 801ACF3C AFBF0014 */  sw    $ra, 0x14($sp)
/* 152FB0 801ACF40 AFA40018 */  sw    $a0, 0x18($sp)
/* 152FB4 801ACF44 0C02C640 */  jal   func_800B1900
/* 152FB8 801ACF48 95C40002 */   lhu   $a0, 2($t6)
/* 152FBC 801ACF4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 152FC0 801ACF50 27BD0018 */  addiu $sp, $sp, 0x18
/* 152FC4 801ACF54 03E00008 */  jr    $ra
/* 152FC8 801ACF58 00000000 */   nop   
.type func_801ACF30_ovl7, @function
.size func_801ACF30_ovl7, . - func_801ACF30_ovl7
