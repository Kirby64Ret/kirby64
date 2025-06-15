glabel func_801046A0
/* 08D110 801046A0 27BDFF98 */  addiu $sp, $sp, -0x68
/* 08D114 801046A4 27AE0018 */  addiu $t6, $sp, 0x18
/* 08D118 801046A8 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D11C 801046AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 08D120 801046B0 AFA40068 */  sw    $a0, 0x68($sp)
/* 08D124 801046B4 AFA5006C */  sw    $a1, 0x6c($sp)
/* 08D128 801046B8 AFA60070 */  sw    $a2, 0x70($sp)
/* 08D12C 801046BC AFA70074 */  sw    $a3, 0x74($sp)
/* 08D130 801046C0 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D134 801046C4 8C880000 */  lw    $t0, ($a0)
/* 08D138 801046C8 27AF0020 */  addiu $t7, $sp, 0x20
/* 08D13C 801046CC 27A9002C */  addiu $t1, $sp, 0x2c
/* 08D140 801046D0 ADE80000 */  sw    $t0, ($t7)
/* 08D144 801046D4 8C990004 */  lw    $t9, 4($a0)
/* 08D148 801046D8 3C0D8010 */  lui   $t5, %hi(func_801023FC) # $t5, 0x8010
/* 08D14C 801046DC 3C0E8010 */  lui   $t6, %hi(func_80101E5C) # $t6, 0x8010
/* 08D150 801046E0 ADF90004 */  sw    $t9, 4($t7)
/* 08D154 801046E4 8C880008 */  lw    $t0, 8($a0)
/* 08D158 801046E8 25AD23FC */  addiu $t5, %lo(func_801023FC) # addiu $t5, $t5, 0x23fc
/* 08D15C 801046EC 25CE1E5C */  addiu $t6, %lo(func_80101E5C) # addiu $t6, $t6, 0x1e5c
/* 08D160 801046F0 ADE80008 */  sw    $t0, 8($t7)
/* 08D164 801046F4 8FAA006C */  lw    $t2, 0x6c($sp)
/* 08D168 801046F8 8D4C0000 */  lw    $t4, ($t2)
/* 08D16C 801046FC AD2C0000 */  sw    $t4, ($t1)
/* 08D170 80104700 8D4B0004 */  lw    $t3, 4($t2)
/* 08D174 80104704 AD2B0004 */  sw    $t3, 4($t1)
/* 08D178 80104708 8D4C0008 */  lw    $t4, 8($t2)
/* 08D17C 8010470C AD2C0008 */  sw    $t4, 8($t1)
/* 08D180 80104710 AFA00044 */  sw    $zero, 0x44($sp)
/* 08D184 80104714 AFA00054 */  sw    $zero, 0x54($sp)
/* 08D188 80104718 AFAD005C */  sw    $t5, 0x5c($sp)
/* 08D18C 8010471C AFAE0058 */  sw    $t6, 0x58($sp)
/* 08D190 80104720 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D194 80104724 AFA00050 */  sw    $zero, 0x50($sp)
/* 08D198 80104728 8FA7007C */  lw    $a3, 0x7c($sp)
/* 08D19C 8010472C 8FA60078 */  lw    $a2, 0x78($sp)
/* 08D1A0 80104730 8FA50074 */  lw    $a1, 0x74($sp)
/* 08D1A4 80104734 0C040F60 */  jal   func_80103D80
/* 08D1A8 80104738 8FA40070 */   lw    $a0, 0x70($sp)
/* 08D1AC 8010473C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08D1B0 80104740 27BD0068 */  addiu $sp, $sp, 0x68
/* 08D1B4 80104744 03E00008 */  jr    $ra
/* 08D1B8 80104748 00000000 */   nop   
.type func_801046A0, @function
.size func_801046A0, . - func_801046A0
