glabel func_801043B0
/* 08CE20 801043B0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CE24 801043B4 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CE28 801043B8 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CE2C 801043BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CE30 801043C0 AFA40070 */  sw    $a0, 0x70($sp)
/* 08CE34 801043C4 AFA50074 */  sw    $a1, 0x74($sp)
/* 08CE38 801043C8 AFA60078 */  sw    $a2, 0x78($sp)
/* 08CE3C 801043CC AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CE40 801043D0 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CE44 801043D4 8C880000 */  lw    $t0, ($a0)
/* 08CE48 801043D8 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CE4C 801043DC 27A90034 */  addiu $t1, $sp, 0x34
/* 08CE50 801043E0 ADE80000 */  sw    $t0, ($t7)
/* 08CE54 801043E4 8C990004 */  lw    $t9, 4($a0)
/* 08CE58 801043E8 3C0D8010 */  lui   $t5, %hi(func_801023FC) # $t5, 0x8010
/* 08CE5C 801043EC 3C0E8010 */  lui   $t6, %hi(func_80101E14) # $t6, 0x8010
/* 08CE60 801043F0 ADF90004 */  sw    $t9, 4($t7)
/* 08CE64 801043F4 8C880008 */  lw    $t0, 8($a0)
/* 08CE68 801043F8 25AD23FC */  addiu $t5, %lo(func_801023FC) # addiu $t5, $t5, 0x23fc
/* 08CE6C 801043FC 25CE1E14 */  addiu $t6, %lo(func_80101E14) # addiu $t6, $t6, 0x1e14
/* 08CE70 80104400 ADE80008 */  sw    $t0, 8($t7)
/* 08CE74 80104404 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CE78 80104408 8D4C0000 */  lw    $t4, ($t2)
/* 08CE7C 8010440C AD2C0000 */  sw    $t4, ($t1)
/* 08CE80 80104410 8D4B0004 */  lw    $t3, 4($t2)
/* 08CE84 80104414 AD2B0004 */  sw    $t3, 4($t1)
/* 08CE88 80104418 8D4C0008 */  lw    $t4, 8($t2)
/* 08CE8C 8010441C AD2C0008 */  sw    $t4, 8($t1)
/* 08CE90 80104420 8FAF0078 */  lw    $t7, 0x78($sp)
/* 08CE94 80104424 8FB8008C */  lw    $t8, 0x8c($sp)
/* 08CE98 80104428 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08CE9C 8010442C AFAD0064 */  sw    $t5, 0x64($sp)
/* 08CEA0 80104430 AFAE0060 */  sw    $t6, 0x60($sp)
/* 08CEA4 80104434 AFA00054 */  sw    $zero, 0x54($sp)
/* 08CEA8 80104438 AFA00058 */  sw    $zero, 0x58($sp)
/* 08CEAC 8010443C 8FA70088 */  lw    $a3, 0x88($sp)
/* 08CEB0 80104440 8FA60084 */  lw    $a2, 0x84($sp)
/* 08CEB4 80104444 8FA50080 */  lw    $a1, 0x80($sp)
/* 08CEB8 80104448 8FA4007C */  lw    $a0, 0x7c($sp)
/* 08CEBC 8010444C AFAF005C */  sw    $t7, 0x5c($sp)
/* 08CEC0 80104450 0C040ED6 */  jal   func_80103B58
/* 08CEC4 80104454 AFB80010 */   sw    $t8, 0x10($sp)
/* 08CEC8 80104458 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08CECC 8010445C 27BD0070 */  addiu $sp, $sp, 0x70
/* 08CED0 80104460 03E00008 */  jr    $ra
/* 08CED4 80104464 00000000 */   nop   
.type func_801043B0, @function
.size func_801043B0, . - func_801043B0
