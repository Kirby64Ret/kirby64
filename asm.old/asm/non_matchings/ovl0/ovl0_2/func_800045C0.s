glabel func_800045C0
/* 0051C0 800045C0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0051C4 800045C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0051C8 800045C8 00803825 */  move  $a3, $a0
/* 0051CC 800045CC AFA70038 */  sw    $a3, 0x38($sp)
/* 0051D0 800045D0 27A4001C */  addiu $a0, $sp, 0x1c
/* 0051D4 800045D4 27A50034 */  addiu $a1, $sp, 0x34
/* 0051D8 800045D8 0C00CEB8 */  jal   osCreateMesgQueue
/* 0051DC 800045DC 24060001 */   li    $a2, 1
/* 0051E0 800045E0 8FA50038 */  lw    $a1, 0x38($sp)
/* 0051E4 800045E4 240E0001 */  li    $t6, 1
/* 0051E8 800045E8 27AF001C */  addiu $t7, $sp, 0x1c
/* 0051EC 800045EC 3C048005 */  lui   $a0, %hi(D_80048DE8) # $a0, 0x8005
/* 0051F0 800045F0 24848DE8 */  addiu $a0, %lo(D_80048DE8) # addiu $a0, $a0, -0x7218
/* 0051F4 800045F4 24060001 */  li    $a2, 1
/* 0051F8 800045F8 ACAE0004 */  sw    $t6, 4($a1)
/* 0051FC 800045FC 0C00B4BC */  jal   osSendMesg
/* 005200 80004600 ACAF0008 */   sw    $t7, 8($a1)
/* 005204 80004604 27A4001C */  addiu $a0, $sp, 0x1c
/* 005208 80004608 00002825 */  move  $a1, $zero
/* 00520C 8000460C 0C00B540 */  jal   osRecvMesg
/* 005210 80004610 24060001 */   li    $a2, 1
/* 005214 80004614 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005218 80004618 27BD0038 */  addiu $sp, $sp, 0x38
/* 00521C 8000461C 03E00008 */  jr    $ra
/* 005220 80004620 00000000 */   nop   
.type func_800045C0, @function
.size func_800045C0, . - func_800045C0
