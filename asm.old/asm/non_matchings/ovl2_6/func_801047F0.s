glabel func_801047F0
/* 08D260 801047F0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08D264 801047F4 27AE0020 */  addiu $t6, $sp, 0x20
/* 08D268 801047F8 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D26C 801047FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 08D270 80104800 AFA40070 */  sw    $a0, 0x70($sp)
/* 08D274 80104804 AFA50074 */  sw    $a1, 0x74($sp)
/* 08D278 80104808 AFA60078 */  sw    $a2, 0x78($sp)
/* 08D27C 8010480C AFA7007C */  sw    $a3, 0x7c($sp)
/* 08D280 80104810 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D284 80104814 8C880000 */  lw    $t0, ($a0)
/* 08D288 80104818 27AF0028 */  addiu $t7, $sp, 0x28
/* 08D28C 8010481C 27A90034 */  addiu $t1, $sp, 0x34
/* 08D290 80104820 ADE80000 */  sw    $t0, ($t7)
/* 08D294 80104824 8C990004 */  lw    $t9, 4($a0)
/* 08D298 80104828 3C0D8010 */  lui   $t5, %hi(func_801023FC) # $t5, 0x8010
/* 08D29C 8010482C 3C0E8010 */  lui   $t6, %hi(func_8010217C) # $t6, 0x8010
/* 08D2A0 80104830 ADF90004 */  sw    $t9, 4($t7)
/* 08D2A4 80104834 8C880008 */  lw    $t0, 8($a0)
/* 08D2A8 80104838 25AD23FC */  addiu $t5, %lo(func_801023FC) # addiu $t5, $t5, 0x23fc
/* 08D2AC 8010483C 25CE217C */  addiu $t6, %lo(func_8010217C) # addiu $t6, $t6, 0x217c
/* 08D2B0 80104840 ADE80008 */  sw    $t0, 8($t7)
/* 08D2B4 80104844 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08D2B8 80104848 8D4C0000 */  lw    $t4, ($t2)
/* 08D2BC 8010484C AD2C0000 */  sw    $t4, ($t1)
/* 08D2C0 80104850 8D4B0004 */  lw    $t3, 4($t2)
/* 08D2C4 80104854 AD2B0004 */  sw    $t3, 4($t1)
/* 08D2C8 80104858 8D4C0008 */  lw    $t4, 8($t2)
/* 08D2CC 8010485C AD2C0008 */  sw    $t4, 8($t1)
/* 08D2D0 80104860 8FAF0088 */  lw    $t7, 0x88($sp)
/* 08D2D4 80104864 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D2D8 80104868 AFAD0064 */  sw    $t5, 0x64($sp)
/* 08D2DC 8010486C AFAE0060 */  sw    $t6, 0x60($sp)
/* 08D2E0 80104870 AFA00054 */  sw    $zero, 0x54($sp)
/* 08D2E4 80104874 AFA00058 */  sw    $zero, 0x58($sp)
/* 08D2E8 80104878 AFA0005C */  sw    $zero, 0x5c($sp)
/* 08D2EC 8010487C 8FA70084 */  lw    $a3, 0x84($sp)
/* 08D2F0 80104880 8FA60080 */  lw    $a2, 0x80($sp)
/* 08D2F4 80104884 8FA5007C */  lw    $a1, 0x7c($sp)
/* 08D2F8 80104888 8FA40078 */  lw    $a0, 0x78($sp)
/* 08D2FC 8010488C 0C040ED6 */  jal   func_80103B58
/* 08D300 80104890 AFAF0010 */   sw    $t7, 0x10($sp)
/* 08D304 80104894 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08D308 80104898 27BD0070 */  addiu $sp, $sp, 0x70
/* 08D30C 8010489C 03E00008 */  jr    $ra
/* 08D310 801048A0 00000000 */   nop   
.type func_801047F0, @function
.size func_801047F0, . - func_801047F0
