glabel func_80104010
/* 08CA80 80104010 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CA84 80104014 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CA88 80104018 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CA8C 8010401C AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CA90 80104020 AFA40070 */  sw    $a0, 0x70($sp)
/* 08CA94 80104024 AFA50074 */  sw    $a1, 0x74($sp)
/* 08CA98 80104028 AFA60078 */  sw    $a2, 0x78($sp)
/* 08CA9C 8010402C AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CAA0 80104030 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CAA4 80104034 8C880000 */  lw    $t0, ($a0)
/* 08CAA8 80104038 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CAAC 8010403C 27A90034 */  addiu $t1, $sp, 0x34
/* 08CAB0 80104040 ADE80000 */  sw    $t0, ($t7)
/* 08CAB4 80104044 8C990004 */  lw    $t9, 4($a0)
/* 08CAB8 80104048 3C0E8010 */  lui   $t6, %hi(func_80102364) # $t6, 0x8010
/* 08CABC 8010404C 25CE2364 */  addiu $t6, %lo(func_80102364) # addiu $t6, $t6, 0x2364
/* 08CAC0 80104050 ADF90004 */  sw    $t9, 4($t7)
/* 08CAC4 80104054 8C880008 */  lw    $t0, 8($a0)
/* 08CAC8 80104058 ADE80008 */  sw    $t0, 8($t7)
/* 08CACC 8010405C 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CAD0 80104060 3C0F8010 */  lui   $t7, %hi(func_80101920) # $t7, 0x8010
/* 08CAD4 80104064 25EF1920 */  addiu $t7, %lo(func_80101920) # addiu $t7, $t7, 0x1920
/* 08CAD8 80104068 8D4C0000 */  lw    $t4, ($t2)
/* 08CADC 8010406C AD2C0000 */  sw    $t4, ($t1)
/* 08CAE0 80104070 8D4B0004 */  lw    $t3, 4($t2)
/* 08CAE4 80104074 AD2B0004 */  sw    $t3, 4($t1)
/* 08CAE8 80104078 8D4C0008 */  lw    $t4, 8($t2)
/* 08CAEC 8010407C AD2C0008 */  sw    $t4, 8($t1)
/* 08CAF0 80104080 8FAD0078 */  lw    $t5, 0x78($sp)
/* 08CAF4 80104084 8FB8007C */  lw    $t8, 0x7c($sp)
/* 08CAF8 80104088 8FB90090 */  lw    $t9, 0x90($sp)
/* 08CAFC 8010408C AFAE0064 */  sw    $t6, 0x64($sp)
/* 08CB00 80104090 AFAF0060 */  sw    $t7, 0x60($sp)
/* 08CB04 80104094 AFA00058 */  sw    $zero, 0x58($sp)
/* 08CB08 80104098 AFA0005C */  sw    $zero, 0x5c($sp)
/* 08CB0C 8010409C 8FA7008C */  lw    $a3, 0x8c($sp)
/* 08CB10 801040A0 8FA60088 */  lw    $a2, 0x88($sp)
/* 08CB14 801040A4 8FA50084 */  lw    $a1, 0x84($sp)
/* 08CB18 801040A8 8FA40080 */  lw    $a0, 0x80($sp)
/* 08CB1C 801040AC AFAD004C */  sw    $t5, 0x4c($sp)
/* 08CB20 801040B0 AFB80054 */  sw    $t8, 0x54($sp)
/* 08CB24 801040B4 0C040ED6 */  jal   func_80103B58
/* 08CB28 801040B8 AFB90010 */   sw    $t9, 0x10($sp)
/* 08CB2C 801040BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08CB30 801040C0 27BD0070 */  addiu $sp, $sp, 0x70
/* 08CB34 801040C4 03E00008 */  jr    $ra
/* 08CB38 801040C8 00000000 */   nop   
.type func_80104010, @function
.size func_80104010, . - func_80104010
