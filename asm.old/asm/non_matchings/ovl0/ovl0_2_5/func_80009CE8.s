glabel func_80009CE8
/* 00A8E8 80009CE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00A8EC 80009CEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 00A8F0 80009CF0 AFA50024 */  sw    $a1, 0x24($sp)
/* 00A8F4 80009CF4 0C002244 */  jal   HS64_DObjPop
/* 00A8F8 80009CF8 AFA40020 */   sw    $a0, 0x20($sp)
/* 00A8FC 80009CFC 8FA60020 */  lw    $a2, 0x20($sp)
/* 00A900 80009D00 00402025 */  move  $a0, $v0
/* 00A904 80009D04 8CC30008 */  lw    $v1, 8($a2)
/* 00A908 80009D08 50600003 */  beql  $v1, $zero, .L80009D18_ovl0
/* 00A90C 80009D0C AC86000C */   sw    $a2, 0xc($a0)
/* 00A910 80009D10 AC62000C */  sw    $v0, 0xc($v1)
/* 00A914 80009D14 AC86000C */  sw    $a2, 0xc($a0)
.L80009D18_ovl0:
/* 00A918 80009D18 8CCE0008 */  lw    $t6, 8($a2)
/* 00A91C 80009D1C AC8E0008 */  sw    $t6, 8($a0)
/* 00A920 80009D20 8CCF0004 */  lw    $t7, 4($a2)
/* 00A924 80009D24 ACC40008 */  sw    $a0, 8($a2)
/* 00A928 80009D28 AC8F0004 */  sw    $t7, 4($a0)
/* 00A92C 80009D2C 8CD80014 */  lw    $t8, 0x14($a2)
/* 00A930 80009D30 AC800010 */  sw    $zero, 0x10($a0)
/* 00A934 80009D34 AC980014 */  sw    $t8, 0x14($a0)
/* 00A938 80009D38 8FB90024 */  lw    $t9, 0x24($sp)
/* 00A93C 80009D3C AC990050 */  sw    $t9, 0x50($a0)
/* 00A940 80009D40 0C0026F5 */  jal   func_80009BD4
/* 00A944 80009D44 AFA4001C */   sw    $a0, 0x1c($sp)
/* 00A948 80009D48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00A94C 80009D4C 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00A950 80009D50 27BD0020 */  addiu $sp, $sp, 0x20
/* 00A954 80009D54 03E00008 */  jr    $ra
/* 00A958 80009D58 00000000 */   nop   
.type func_80009CE8, @function
.size func_80009CE8, . - func_80009CE8
