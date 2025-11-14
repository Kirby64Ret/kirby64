glabel func_800B9104
/* 061354 800B9104 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 061358 800B9108 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06135C 800B910C 0C001189 */  jal   D_80004624_ovl1
/* 061360 800B9110 00000000 */   nop   
/* 061364 800B9114 3C0E8005 */  lui   $t6, %hi(gPlayerControllers) # $t6, 0x8005
/* 061368 800B9118 95CE8F20 */  lhu   $t6, %lo(gPlayerControllers)($t6)
/* 06136C 800B911C 24010830 */  li    $at, 2096
/* 061370 800B9120 3C03800F */  lui   $v1, %hi(gSaveBuffer1) # $v1, 0x800f
/* 061374 800B9124 31CF0830 */  andi  $t7, $t6, 0x830
/* 061378 800B9128 15E10007 */  bne   $t7, $at, .L800B9148_ovl1
/* 06137C 800B912C 2463C9F8 */   addiu $v1, %lo(gSaveBuffer1) # addiu $v1, $v1, -0x3608
/* 061380 800B9130 8C7801B4 */  lw    $t8, 0x1b4($v1)
/* 061384 800B9134 8C680118 */  lw    $t0, 0x118($v1)
/* 061388 800B9138 27190001 */  addiu $t9, $t8, 1
/* 06138C 800B913C 25090001 */  addiu $t1, $t0, 1
/* 061390 800B9140 AC7901B4 */  sw    $t9, 0x1b4($v1)
/* 061394 800B9144 AC690118 */  sw    $t1, 0x118($v1)
.L800B9148_ovl1:
/* 061398 800B9148 3C03800F */  lui   $v1, %hi(gSaveBuffer1) # $v1, 0x800f
/* 06139C 800B914C 2463C9F8 */  addiu $v1, %lo(gSaveBuffer1) # addiu $v1, $v1, -0x3608
/* 0613A0 800B9150 8C6A0118 */  lw    $t2, 0x118($v1)
/* 0613A4 800B9154 3C019753 */  lui   $at, (0x97538642 >> 16) # lui $at, 0x9753
/* 0613A8 800B9158 34218642 */  ori   $at, (0x97538642 & 0xFFFF) # ori $at, $at, 0x8642
/* 0613AC 800B915C 11410012 */  beq   $t2, $at, .L800B91A8_ovl1
/* 0613B0 800B9160 24040023 */   li    $a0, 35
/* 0613B4 800B9164 3C05800F */  lui   $a1, %hi(D_800ECB10) # $a1, 0x800f
/* 0613B8 800B9168 24A5CB10 */  addiu $a1, %lo(D_800ECB10) # addiu $a1, $a1, -0x34f0
/* 0613BC 800B916C 0C001340 */  jal   func_80004D00_ovl1
/* 0613C0 800B9170 240600A0 */   li    $a2, 160
/* 0613C4 800B9174 0C02E48B */  jal   func_800B922C
/* 0613C8 800B9178 00000000 */   nop   
/* 0613CC 800B917C 3C03800F */  lui   $v1, %hi(gSaveBuffer1) # $v1, 0x800f
/* 0613D0 800B9180 2463C9F8 */  addiu $v1, %lo(gSaveBuffer1) # addiu $v1, $v1, -0x3608
/* 0613D4 800B9184 8C6B01B4 */  lw    $t3, 0x1b4($v1)
/* 0613D8 800B9188 504B0008 */  beql  $v0, $t3, .L800B91AC_ovl1
/* 0613DC 800B918C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0613E0 800B9190 0C02E46E */  jal   func_800B91B8
/* 0613E4 800B9194 00000000 */   nop   
/* 0613E8 800B9198 0C02E4AD */  jal   func_800B92B4
/* 0613EC 800B919C 00000000 */   nop   
/* 0613F0 800B91A0 0C02E302 */  jal   func_800B8C08
/* 0613F4 800B91A4 00000000 */   nop   
.L800B91A8_ovl1:
/* 0613F8 800B91A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B91AC_ovl1:
/* 0613FC 800B91AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 061400 800B91B0 03E00008 */  jr    $ra
/* 061404 800B91B4 00000000 */   nop   
.type func_800B9104, @function
.size func_800B9104, . - func_800B9104
