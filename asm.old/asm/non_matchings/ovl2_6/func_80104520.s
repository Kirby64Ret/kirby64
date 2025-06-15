glabel func_80104520
/* 08CF90 80104520 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CF94 80104524 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CF98 80104528 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CF9C 8010452C AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CFA0 80104530 AFA40070 */  sw    $a0, 0x70($sp)
/* 08CFA4 80104534 AFA50074 */  sw    $a1, 0x74($sp)
/* 08CFA8 80104538 AFA60078 */  sw    $a2, 0x78($sp)
/* 08CFAC 8010453C AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CFB0 80104540 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CFB4 80104544 8C880000 */  lw    $t0, ($a0)
/* 08CFB8 80104548 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CFBC 8010454C 27A90034 */  addiu $t1, $sp, 0x34
/* 08CFC0 80104550 ADE80000 */  sw    $t0, ($t7)
/* 08CFC4 80104554 8C990004 */  lw    $t9, 4($a0)
/* 08CFC8 80104558 3C0D8010 */  lui   $t5, %hi(func_801024E8) # $t5, 0x8010
/* 08CFCC 8010455C 3C0E8010 */  lui   $t6, %hi(func_80101DA8) # $t6, 0x8010
/* 08CFD0 80104560 ADF90004 */  sw    $t9, 4($t7)
/* 08CFD4 80104564 8C880008 */  lw    $t0, 8($a0)
/* 08CFD8 80104568 25AD24E8 */  addiu $t5, %lo(func_801024E8) # addiu $t5, $t5, 0x24e8
/* 08CFDC 8010456C 25CE1DA8 */  addiu $t6, %lo(func_80101DA8) # addiu $t6, $t6, 0x1da8
/* 08CFE0 80104570 ADE80008 */  sw    $t0, 8($t7)
/* 08CFE4 80104574 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CFE8 80104578 8D4C0000 */  lw    $t4, ($t2)
/* 08CFEC 8010457C AD2C0000 */  sw    $t4, ($t1)
/* 08CFF0 80104580 8D4B0004 */  lw    $t3, 4($t2)
/* 08CFF4 80104584 AD2B0004 */  sw    $t3, 4($t1)
/* 08CFF8 80104588 8D4C0008 */  lw    $t4, 8($t2)
/* 08CFFC 8010458C AD2C0008 */  sw    $t4, 8($t1)
/* 08D000 80104590 8FAF0078 */  lw    $t7, 0x78($sp)
/* 08D004 80104594 8FB8007C */  lw    $t8, 0x7c($sp)
/* 08D008 80104598 8FB90090 */  lw    $t9, 0x90($sp)
/* 08D00C 8010459C AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D010 801045A0 AFAD0064 */  sw    $t5, 0x64($sp)
/* 08D014 801045A4 AFAE0060 */  sw    $t6, 0x60($sp)
/* 08D018 801045A8 AFA0005C */  sw    $zero, 0x5c($sp)
/* 08D01C 801045AC 8FA7008C */  lw    $a3, 0x8c($sp)
/* 08D020 801045B0 8FA60088 */  lw    $a2, 0x88($sp)
/* 08D024 801045B4 8FA50084 */  lw    $a1, 0x84($sp)
/* 08D028 801045B8 8FA40080 */  lw    $a0, 0x80($sp)
/* 08D02C 801045BC AFAF0054 */  sw    $t7, 0x54($sp)
/* 08D030 801045C0 AFB80058 */  sw    $t8, 0x58($sp)
/* 08D034 801045C4 0C040ED6 */  jal   func_80103B58
/* 08D038 801045C8 AFB90010 */   sw    $t9, 0x10($sp)
/* 08D03C 801045CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08D040 801045D0 27BD0070 */  addiu $sp, $sp, 0x70
/* 08D044 801045D4 03E00008 */  jr    $ra
/* 08D048 801045D8 00000000 */   nop   
.type func_80104520, @function
.size func_80104520, . - func_80104520
