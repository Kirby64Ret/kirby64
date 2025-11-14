glabel func_8010423C
/* 08CCAC 8010423C 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CCB0 80104240 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CCB4 80104244 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CCB8 80104248 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CCBC 8010424C AFA40070 */  sw    $a0, 0x70($sp)
/* 08CCC0 80104250 AFA50074 */  sw    $a1, 0x74($sp)
/* 08CCC4 80104254 AFA60078 */  sw    $a2, 0x78($sp)
/* 08CCC8 80104258 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CCCC 8010425C AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CCD0 80104260 8C880000 */  lw    $t0, ($a0)
/* 08CCD4 80104264 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CCD8 80104268 27A90034 */  addiu $t1, $sp, 0x34
/* 08CCDC 8010426C ADE80000 */  sw    $t0, ($t7)
/* 08CCE0 80104270 8C990004 */  lw    $t9, 4($a0)
/* 08CCE4 80104274 3C0E8010 */  lui   $t6, %hi(func_801023FC) # $t6, 0x8010
/* 08CCE8 80104278 25CE23FC */  addiu $t6, %lo(func_801023FC) # addiu $t6, $t6, 0x23fc
/* 08CCEC 8010427C ADF90004 */  sw    $t9, 4($t7)
/* 08CCF0 80104280 8C880008 */  lw    $t0, 8($a0)
/* 08CCF4 80104284 ADE80008 */  sw    $t0, 8($t7)
/* 08CCF8 80104288 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CCFC 8010428C 3C0F8010 */  lui   $t7, %hi(func_80101920) # $t7, 0x8010
/* 08CD00 80104290 25EF1920 */  addiu $t7, %lo(func_80101920) # addiu $t7, $t7, 0x1920
/* 08CD04 80104294 8D4C0000 */  lw    $t4, ($t2)
/* 08CD08 80104298 AD2C0000 */  sw    $t4, ($t1)
/* 08CD0C 8010429C 8D4B0004 */  lw    $t3, 4($t2)
/* 08CD10 801042A0 AD2B0004 */  sw    $t3, 4($t1)
/* 08CD14 801042A4 8D4C0008 */  lw    $t4, 8($t2)
/* 08CD18 801042A8 AD2C0008 */  sw    $t4, 8($t1)
/* 08CD1C 801042AC 8FAD0078 */  lw    $t5, 0x78($sp)
/* 08CD20 801042B0 8FB8008C */  lw    $t8, 0x8c($sp)
/* 08CD24 801042B4 AFAE0064 */  sw    $t6, 0x64($sp)
/* 08CD28 801042B8 AFAF0060 */  sw    $t7, 0x60($sp)
/* 08CD2C 801042BC AFA00054 */  sw    $zero, 0x54($sp)
/* 08CD30 801042C0 AFA00058 */  sw    $zero, 0x58($sp)
/* 08CD34 801042C4 AFA0005C */  sw    $zero, 0x5c($sp)
/* 08CD38 801042C8 8FA70088 */  lw    $a3, 0x88($sp)
/* 08CD3C 801042CC 8FA60084 */  lw    $a2, 0x84($sp)
/* 08CD40 801042D0 8FA50080 */  lw    $a1, 0x80($sp)
/* 08CD44 801042D4 8FA4007C */  lw    $a0, 0x7c($sp)
/* 08CD48 801042D8 AFAD004C */  sw    $t5, 0x4c($sp)
/* 08CD4C 801042DC 0C040ED6 */  jal   func_80103B58
/* 08CD50 801042E0 AFB80010 */   sw    $t8, 0x10($sp)
/* 08CD54 801042E4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08CD58 801042E8 27BD0070 */  addiu $sp, $sp, 0x70
/* 08CD5C 801042EC 03E00008 */  jr    $ra
/* 08CD60 801042F0 00000000 */   nop   
.type func_8010423C, @function
.size func_8010423C, . - func_8010423C
