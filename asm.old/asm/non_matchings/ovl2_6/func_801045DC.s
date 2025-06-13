glabel func_801045DC
/* 08D04C 801045DC 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08D050 801045E0 27AE0020 */  addiu $t6, $sp, 0x20
/* 08D054 801045E4 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D058 801045E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08D05C 801045EC AFA40070 */  sw    $a0, 0x70($sp)
/* 08D060 801045F0 AFA50074 */  sw    $a1, 0x74($sp)
/* 08D064 801045F4 AFA60078 */  sw    $a2, 0x78($sp)
/* 08D068 801045F8 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08D06C 801045FC AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D070 80104600 8C880000 */  lw    $t0, ($a0)
/* 08D074 80104604 27AF0028 */  addiu $t7, $sp, 0x28
/* 08D078 80104608 27A90034 */  addiu $t1, $sp, 0x34
/* 08D07C 8010460C ADE80000 */  sw    $t0, ($t7)
/* 08D080 80104610 8C990004 */  lw    $t9, 4($a0)
/* 08D084 80104614 3C0D8010 */  lui   $t5, %hi(func_801024E8) # $t5, 0x8010
/* 08D088 80104618 3C0E8010 */  lui   $t6, %hi(func_8010203C) # $t6, 0x8010
/* 08D08C 8010461C ADF90004 */  sw    $t9, 4($t7)
/* 08D090 80104620 8C880008 */  lw    $t0, 8($a0)
/* 08D094 80104624 25AD24E8 */  addiu $t5, %lo(func_801024E8) # addiu $t5, $t5, 0x24e8
/* 08D098 80104628 25CE203C */  addiu $t6, %lo(func_8010203C) # addiu $t6, $t6, 0x203c
/* 08D09C 8010462C ADE80008 */  sw    $t0, 8($t7)
/* 08D0A0 80104630 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08D0A4 80104634 8D4C0000 */  lw    $t4, ($t2)
/* 08D0A8 80104638 AD2C0000 */  sw    $t4, ($t1)
/* 08D0AC 8010463C 8D4B0004 */  lw    $t3, 4($t2)
/* 08D0B0 80104640 AD2B0004 */  sw    $t3, 4($t1)
/* 08D0B4 80104644 8D4C0008 */  lw    $t4, 8($t2)
/* 08D0B8 80104648 AD2C0008 */  sw    $t4, 8($t1)
/* 08D0BC 8010464C 97AF007A */  lhu   $t7, 0x7a($sp)
/* 08D0C0 80104650 97B8007E */  lhu   $t8, 0x7e($sp)
/* 08D0C4 80104654 8FB90090 */  lw    $t9, 0x90($sp)
/* 08D0C8 80104658 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D0CC 8010465C AFAD0064 */  sw    $t5, 0x64($sp)
/* 08D0D0 80104660 AFAE0060 */  sw    $t6, 0x60($sp)
/* 08D0D4 80104664 AFA00054 */  sw    $zero, 0x54($sp)
/* 08D0D8 80104668 AFA00058 */  sw    $zero, 0x58($sp)
/* 08D0DC 8010466C AFA0005C */  sw    $zero, 0x5c($sp)
/* 08D0E0 80104670 8FA7008C */  lw    $a3, 0x8c($sp)
/* 08D0E4 80104674 8FA60088 */  lw    $a2, 0x88($sp)
/* 08D0E8 80104678 8FA50084 */  lw    $a1, 0x84($sp)
/* 08D0EC 8010467C 8FA40080 */  lw    $a0, 0x80($sp)
/* 08D0F0 80104680 A7AF006A */  sh    $t7, 0x6a($sp)
/* 08D0F4 80104684 A7B8006C */  sh    $t8, 0x6c($sp)
/* 08D0F8 80104688 0C040ED6 */  jal   func_80103B58
/* 08D0FC 8010468C AFB90010 */   sw    $t9, 0x10($sp)
/* 08D100 80104690 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08D104 80104694 27BD0070 */  addiu $sp, $sp, 0x70
/* 08D108 80104698 03E00008 */  jr    $ra
/* 08D10C 8010469C 00000000 */   nop   
.type func_801045DC, @function
.size func_801045DC, . - func_801045DC
