glabel func_80104B70
/* 08D5E0 80104B70 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08D5E4 80104B74 27AE0020 */  addiu $t6, $sp, 0x20
/* 08D5E8 80104B78 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D5EC 80104B7C AFBF001C */  sw    $ra, 0x1c($sp)
/* 08D5F0 80104B80 AFA40070 */  sw    $a0, 0x70($sp)
/* 08D5F4 80104B84 AFA50074 */  sw    $a1, 0x74($sp)
/* 08D5F8 80104B88 AFA60078 */  sw    $a2, 0x78($sp)
/* 08D5FC 80104B8C AFA7007C */  sw    $a3, 0x7c($sp)
/* 08D600 80104B90 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D604 80104B94 8C880000 */  lw    $t0, ($a0)
/* 08D608 80104B98 27AF0028 */  addiu $t7, $sp, 0x28
/* 08D60C 80104B9C 27A90034 */  addiu $t1, $sp, 0x34
/* 08D610 80104BA0 ADE80000 */  sw    $t0, ($t7)
/* 08D614 80104BA4 8C990004 */  lw    $t9, 4($a0)
/* 08D618 80104BA8 3C0D8010 */  lui   $t5, %hi(func_80102364) # $t5, 0x8010
/* 08D61C 80104BAC 3C0E8010 */  lui   $t6, %hi(func_80102324) # $t6, 0x8010
/* 08D620 80104BB0 ADF90004 */  sw    $t9, 4($t7)
/* 08D624 80104BB4 8C880008 */  lw    $t0, 8($a0)
/* 08D628 80104BB8 25AD2364 */  addiu $t5, %lo(func_80102364) # addiu $t5, $t5, 0x2364
/* 08D62C 80104BBC 25CE2324 */  addiu $t6, %lo(func_80102324) # addiu $t6, $t6, 0x2324
/* 08D630 80104BC0 ADE80008 */  sw    $t0, 8($t7)
/* 08D634 80104BC4 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08D638 80104BC8 8D4C0000 */  lw    $t4, ($t2)
/* 08D63C 80104BCC AD2C0000 */  sw    $t4, ($t1)
/* 08D640 80104BD0 8D4B0004 */  lw    $t3, 4($t2)
/* 08D644 80104BD4 AD2B0004 */  sw    $t3, 4($t1)
/* 08D648 80104BD8 8D4C0008 */  lw    $t4, 8($t2)
/* 08D64C 80104BDC AD2C0008 */  sw    $t4, 8($t1)
/* 08D650 80104BE0 8FAF0088 */  lw    $t7, 0x88($sp)
/* 08D654 80104BE4 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D658 80104BE8 AFAD0064 */  sw    $t5, 0x64($sp)
/* 08D65C 80104BEC AFAE0060 */  sw    $t6, 0x60($sp)
/* 08D660 80104BF0 AFA00054 */  sw    $zero, 0x54($sp)
/* 08D664 80104BF4 AFA00058 */  sw    $zero, 0x58($sp)
/* 08D668 80104BF8 AFA0005C */  sw    $zero, 0x5c($sp)
/* 08D66C 80104BFC 8FA70084 */  lw    $a3, 0x84($sp)
/* 08D670 80104C00 8FA60080 */  lw    $a2, 0x80($sp)
/* 08D674 80104C04 8FA5007C */  lw    $a1, 0x7c($sp)
/* 08D678 80104C08 8FA40078 */  lw    $a0, 0x78($sp)
/* 08D67C 80104C0C 0C040ED6 */  jal   func_80103B58
/* 08D680 80104C10 AFAF0010 */   sw    $t7, 0x10($sp)
/* 08D684 80104C14 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08D688 80104C18 27BD0070 */  addiu $sp, $sp, 0x70
/* 08D68C 80104C1C 03E00008 */  jr    $ra
/* 08D690 80104C20 00000000 */   nop   
.type func_80104B70, @function
.size func_80104B70, . - func_80104B70
