glabel func_80153040
/* 1373D0 80153040 3C028016 */  lui   $v0, %hi(D_8015A7B0) # $v0, 0x8016
/* 1373D4 80153044 3C038016 */  lui   $v1, %hi(D_8015A7AC) # $v1, 0x8016
/* 1373D8 80153048 2463A7AC */  addiu $v1, %lo(D_8015A7AC) # addiu $v1, $v1, -0x5854
/* 1373DC 8015304C 2442A7B0 */  addiu $v0, %lo(D_8015A7B0) # addiu $v0, $v0, -0x5850
/* 1373E0 80153050 AC400000 */  sw    $zero, ($v0)
/* 1373E4 80153054 AC600000 */  sw    $zero, ($v1)
/* 1373E8 80153058 3C018016 */  lui   $at, 0x8016
/* 1373EC 8015305C 03E00008 */  jr    $ra
/* 1373F0 80153060 AC20A7A8 */   sw    $zero, -0x5858($at)
.type func_80153040, @function
.size func_80153040, . - func_80153040
