glabel func_801040CC
/* 08CB3C 801040CC 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CB40 801040D0 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CB44 801040D4 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CB48 801040D8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CB4C 801040DC AFA40070 */  sw    $a0, 0x70($sp)
/* 08CB50 801040E0 AFA50074 */  sw    $a1, 0x74($sp)
/* 08CB54 801040E4 AFA60078 */  sw    $a2, 0x78($sp)
/* 08CB58 801040E8 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CB5C 801040EC AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CB60 801040F0 8C880000 */  lw    $t0, ($a0)
/* 08CB64 801040F4 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CB68 801040F8 27A90034 */  addiu $t1, $sp, 0x34
/* 08CB6C 801040FC ADE80000 */  sw    $t0, ($t7)
/* 08CB70 80104100 8C990004 */  lw    $t9, 4($a0)
/* 08CB74 80104104 3C0D8010 */  lui   $t5, %hi(func_80102364) # $t5, 0x8010
/* 08CB78 80104108 3C0E8010 */  lui   $t6, %hi(func_80101D50) # $t6, 0x8010
/* 08CB7C 8010410C ADF90004 */  sw    $t9, 4($t7)
/* 08CB80 80104110 8C880008 */  lw    $t0, 8($a0)
/* 08CB84 80104114 25AD2364 */  addiu $t5, %lo(func_80102364) # addiu $t5, $t5, 0x2364
/* 08CB88 80104118 25CE1D50 */  addiu $t6, %lo(func_80101D50) # addiu $t6, $t6, 0x1d50
/* 08CB8C 8010411C ADE80008 */  sw    $t0, 8($t7)
/* 08CB90 80104120 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CB94 80104124 8D4C0000 */  lw    $t4, ($t2)
/* 08CB98 80104128 AD2C0000 */  sw    $t4, ($t1)
/* 08CB9C 8010412C 8D4B0004 */  lw    $t3, 4($t2)
/* 08CBA0 80104130 AD2B0004 */  sw    $t3, 4($t1)
/* 08CBA4 80104134 8D4C0008 */  lw    $t4, 8($t2)
/* 08CBA8 80104138 AD2C0008 */  sw    $t4, 8($t1)
/* 08CBAC 8010413C 8FAF0078 */  lw    $t7, 0x78($sp)
/* 08CBB0 80104140 8FB8008C */  lw    $t8, 0x8c($sp)
/* 08CBB4 80104144 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08CBB8 80104148 AFAD0064 */  sw    $t5, 0x64($sp)
/* 08CBBC 8010414C AFAE0060 */  sw    $t6, 0x60($sp)
/* 08CBC0 80104150 AFA00054 */  sw    $zero, 0x54($sp)
/* 08CBC4 80104154 AFA00058 */  sw    $zero, 0x58($sp)
/* 08CBC8 80104158 8FA70088 */  lw    $a3, 0x88($sp)
/* 08CBCC 8010415C 8FA60084 */  lw    $a2, 0x84($sp)
/* 08CBD0 80104160 8FA50080 */  lw    $a1, 0x80($sp)
/* 08CBD4 80104164 8FA4007C */  lw    $a0, 0x7c($sp)
/* 08CBD8 80104168 AFAF005C */  sw    $t7, 0x5c($sp)
/* 08CBDC 8010416C 0C040ED6 */  jal   func_80103B58
/* 08CBE0 80104170 AFB80010 */   sw    $t8, 0x10($sp)
/* 08CBE4 80104174 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08CBE8 80104178 27BD0070 */  addiu $sp, $sp, 0x70
/* 08CBEC 8010417C 03E00008 */  jr    $ra
/* 08CBF0 80104180 00000000 */   nop   
.type func_801040CC, @function
.size func_801040CC, . - func_801040CC
