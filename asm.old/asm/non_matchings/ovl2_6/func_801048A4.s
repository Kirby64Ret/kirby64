glabel func_801048A4
/* 08D314 801048A4 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08D318 801048A8 27AE0020 */  addiu $t6, $sp, 0x20
/* 08D31C 801048AC 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D320 801048B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08D324 801048B4 AFA40070 */  sw    $a0, 0x70($sp)
/* 08D328 801048B8 AFA50074 */  sw    $a1, 0x74($sp)
/* 08D32C 801048BC AFA60078 */  sw    $a2, 0x78($sp)
/* 08D330 801048C0 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08D334 801048C4 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D338 801048C8 8C880000 */  lw    $t0, ($a0)
/* 08D33C 801048CC 27AF0028 */  addiu $t7, $sp, 0x28
/* 08D340 801048D0 27A90034 */  addiu $t1, $sp, 0x34
/* 08D344 801048D4 ADE80000 */  sw    $t0, ($t7)
/* 08D348 801048D8 8C990004 */  lw    $t9, 4($a0)
/* 08D34C 801048DC 3C0D8010 */  lui   $t5, %hi(func_801023FC) # $t5, 0x8010
/* 08D350 801048E0 3C0E8010 */  lui   $t6, %hi(func_801021BC) # $t6, 0x8010
/* 08D354 801048E4 ADF90004 */  sw    $t9, 4($t7)
/* 08D358 801048E8 8C880008 */  lw    $t0, 8($a0)
/* 08D35C 801048EC 25AD23FC */  addiu $t5, %lo(func_801023FC) # addiu $t5, $t5, 0x23fc
/* 08D360 801048F0 25CE21BC */  addiu $t6, %lo(func_801021BC) # addiu $t6, $t6, 0x21bc
/* 08D364 801048F4 ADE80008 */  sw    $t0, 8($t7)
/* 08D368 801048F8 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08D36C 801048FC 8D4C0000 */  lw    $t4, ($t2)
/* 08D370 80104900 AD2C0000 */  sw    $t4, ($t1)
/* 08D374 80104904 8D4B0004 */  lw    $t3, 4($t2)
/* 08D378 80104908 AD2B0004 */  sw    $t3, 4($t1)
/* 08D37C 8010490C 8D4C0008 */  lw    $t4, 8($t2)
/* 08D380 80104910 AD2C0008 */  sw    $t4, 8($t1)
/* 08D384 80104914 8FAF0088 */  lw    $t7, 0x88($sp)
/* 08D388 80104918 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D38C 8010491C AFAD0064 */  sw    $t5, 0x64($sp)
/* 08D390 80104920 AFAE0060 */  sw    $t6, 0x60($sp)
/* 08D394 80104924 AFA00054 */  sw    $zero, 0x54($sp)
/* 08D398 80104928 AFA00058 */  sw    $zero, 0x58($sp)
/* 08D39C 8010492C AFA0005C */  sw    $zero, 0x5c($sp)
/* 08D3A0 80104930 8FA70084 */  lw    $a3, 0x84($sp)
/* 08D3A4 80104934 8FA60080 */  lw    $a2, 0x80($sp)
/* 08D3A8 80104938 8FA5007C */  lw    $a1, 0x7c($sp)
/* 08D3AC 8010493C 8FA40078 */  lw    $a0, 0x78($sp)
/* 08D3B0 80104940 0C040ED6 */  jal   func_80103B58
/* 08D3B4 80104944 AFAF0010 */   sw    $t7, 0x10($sp)
/* 08D3B8 80104948 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08D3BC 8010494C 27BD0070 */  addiu $sp, $sp, 0x70
/* 08D3C0 80104950 03E00008 */  jr    $ra
/* 08D3C4 80104954 00000000 */   nop   
.type func_801048A4, @function
.size func_801048A4, . - func_801048A4
