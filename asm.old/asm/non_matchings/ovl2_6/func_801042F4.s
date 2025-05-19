glabel func_801042F4
/* 08CD64 801042F4 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CD68 801042F8 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CD6C 801042FC 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CD70 80104300 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CD74 80104304 AFA40070 */  sw    $a0, 0x70($sp)
/* 08CD78 80104308 AFA50074 */  sw    $a1, 0x74($sp)
/* 08CD7C 8010430C AFA60078 */  sw    $a2, 0x78($sp)
/* 08CD80 80104310 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CD84 80104314 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CD88 80104318 8C880000 */  lw    $t0, ($a0)
/* 08CD8C 8010431C 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CD90 80104320 27A90034 */  addiu $t1, $sp, 0x34
/* 08CD94 80104324 ADE80000 */  sw    $t0, ($t7)
/* 08CD98 80104328 8C990004 */  lw    $t9, 4($a0)
/* 08CD9C 8010432C 3C0E8010 */  lui   $t6, %hi(func_801023FC) # $t6, 0x8010
/* 08CDA0 80104330 25CE23FC */  addiu $t6, %lo(func_801023FC) # addiu $t6, $t6, 0x23fc
/* 08CDA4 80104334 ADF90004 */  sw    $t9, 4($t7)
/* 08CDA8 80104338 8C880008 */  lw    $t0, 8($a0)
/* 08CDAC 8010433C ADE80008 */  sw    $t0, 8($t7)
/* 08CDB0 80104340 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CDB4 80104344 3C0F8010 */  lui   $t7, %hi(func_80101920) # $t7, 0x8010
/* 08CDB8 80104348 25EF1920 */  addiu $t7, %lo(func_80101920) # addiu $t7, $t7, 0x1920
/* 08CDBC 8010434C 8D4C0000 */  lw    $t4, ($t2)
/* 08CDC0 80104350 AD2C0000 */  sw    $t4, ($t1)
/* 08CDC4 80104354 8D4B0004 */  lw    $t3, 4($t2)
/* 08CDC8 80104358 AD2B0004 */  sw    $t3, 4($t1)
/* 08CDCC 8010435C 8D4C0008 */  lw    $t4, 8($t2)
/* 08CDD0 80104360 AD2C0008 */  sw    $t4, 8($t1)
/* 08CDD4 80104364 8FAD0078 */  lw    $t5, 0x78($sp)
/* 08CDD8 80104368 8FB8007C */  lw    $t8, 0x7c($sp)
/* 08CDDC 8010436C 8FB90090 */  lw    $t9, 0x90($sp)
/* 08CDE0 80104370 AFAE0064 */  sw    $t6, 0x64($sp)
/* 08CDE4 80104374 AFAF0060 */  sw    $t7, 0x60($sp)
/* 08CDE8 80104378 AFA00054 */  sw    $zero, 0x54($sp)
/* 08CDEC 8010437C AFA0005C */  sw    $zero, 0x5c($sp)
/* 08CDF0 80104380 8FA7008C */  lw    $a3, 0x8c($sp)
/* 08CDF4 80104384 8FA60088 */  lw    $a2, 0x88($sp)
/* 08CDF8 80104388 8FA50084 */  lw    $a1, 0x84($sp)
/* 08CDFC 8010438C 8FA40080 */  lw    $a0, 0x80($sp)
/* 08CE00 80104390 AFAD004C */  sw    $t5, 0x4c($sp)
/* 08CE04 80104394 AFB80058 */  sw    $t8, 0x58($sp)
/* 08CE08 80104398 0C040ED6 */  jal   func_80103B58
/* 08CE0C 8010439C AFB90010 */   sw    $t9, 0x10($sp)
/* 08CE10 801043A0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08CE14 801043A4 27BD0070 */  addiu $sp, $sp, 0x70
/* 08CE18 801043A8 03E00008 */  jr    $ra
/* 08CE1C 801043AC 00000000 */   nop   
.type func_801042F4, @function
.size func_801042F4, . - func_801042F4
