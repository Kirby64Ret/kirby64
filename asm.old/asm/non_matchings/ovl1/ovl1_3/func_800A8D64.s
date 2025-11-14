glabel func_800A8D64
/* 050FB4 800A8D64 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 050FB8 800A8D68 00047402 */  srl   $t6, $a0, 0x10
/* 050FBC 800A8D6C 3C18800D */  lui   $t8, %hi(D_800D00C4) # $t8, 0x800d
/* 050FC0 800A8D70 AFB00014 */  sw    $s0, 0x14($sp)
/* 050FC4 800A8D74 271800C4 */  addiu $t8, %lo(D_800D00C4) # addiu $t8, $t8, 0xc4
/* 050FC8 800A8D78 000E7880 */  sll   $t7, $t6, 2
/* 050FCC 800A8D7C 01F88021 */  addu  $s0, $t7, $t8
/* 050FD0 800A8D80 8E190000 */  lw    $t9, ($s0)
/* 050FD4 800A8D84 3083FFFF */  andi  $v1, $a0, 0xffff
/* 050FD8 800A8D88 00031880 */  sll   $v1, $v1, 2
/* 050FDC 800A8D8C AFBF001C */  sw    $ra, 0x1c($sp)
/* 050FE0 800A8D90 AFB10018 */  sw    $s1, 0x18($sp)
/* 050FE4 800A8D94 03234021 */  addu  $t0, $t9, $v1
/* 050FE8 800A8D98 8D110000 */  lw    $s1, ($t0)
/* 050FEC 800A8D9C 12200028 */  beqz  $s1, .L800A8E40_ovl1
/* 050FF0 800A8DA0 02252025 */   or    $a0, $s1, $a1
/* 050FF4 800A8DA4 0C02A15E */  jal   func_800A8578
/* 050FF8 800A8DA8 AFA30020 */   sw    $v1, 0x20($sp)
/* 050FFC 800A8DAC 14400024 */  bnez  $v0, .L800A8E40_ovl1
/* 051000 800A8DB0 8FA30020 */   lw    $v1, 0x20($sp)
/* 051004 800A8DB4 8E090000 */  lw    $t1, ($s0)
/* 051008 800A8DB8 01235021 */  addu  $t2, $t1, $v1
/* 05100C 800A8DBC AD400000 */  sw    $zero, ($t2)
/* 051010 800A8DC0 8E30000C */  lw    $s0, 0xc($s1)
/* 051014 800A8DC4 3C11800D */  lui   $s1, %hi(D_800D0104) # $s1, 0x800d
/* 051018 800A8DC8 26310104 */  addiu $s1, %lo(D_800D0104) # addiu $s1, $s1, 0x104
/* 05101C 800A8DCC 8E030000 */  lw    $v1, ($s0)
/* 051020 800A8DD0 1060001B */  beqz  $v1, .L800A8E40_ovl1
/* 051024 800A8DD4 00035C02 */   srl   $t3, $v1, 0x10
.L800A8DD8_ovl1:
/* 051028 800A8DD8 000B6080 */  sll   $t4, $t3, 2
/* 05102C 800A8DDC 022C6821 */  addu  $t5, $s1, $t4
/* 051030 800A8DE0 8DAE0000 */  lw    $t6, ($t5)
/* 051034 800A8DE4 306FFFFF */  andi  $t7, $v1, 0xffff
/* 051038 800A8DE8 000FC080 */  sll   $t8, $t7, 2
/* 05103C 800A8DEC 01D8C821 */  addu  $t9, $t6, $t8
/* 051040 800A8DF0 8F250000 */  lw    $a1, ($t9)
/* 051044 800A8DF4 50A0000F */  beql  $a1, $zero, .L800A8E34_ovl1
/* 051048 800A8DF8 8E030004 */   lw    $v1, 4($s0)
/* 05104C 800A8DFC 0C02A15E */  jal   func_800A8578
/* 051050 800A8E00 34A40003 */   ori   $a0, $a1, 3
/* 051054 800A8E04 5440000B */  bnezl $v0, .L800A8E34_ovl1
/* 051058 800A8E08 8E030004 */   lw    $v1, 4($s0)
/* 05105C 800A8E0C 8E020000 */  lw    $v0, ($s0)
/* 051060 800A8E10 00024402 */  srl   $t0, $v0, 0x10
/* 051064 800A8E14 00084880 */  sll   $t1, $t0, 2
/* 051068 800A8E18 02295021 */  addu  $t2, $s1, $t1
/* 05106C 800A8E1C 8D4B0000 */  lw    $t3, ($t2)
/* 051070 800A8E20 304CFFFF */  andi  $t4, $v0, 0xffff
/* 051074 800A8E24 000C6880 */  sll   $t5, $t4, 2
/* 051078 800A8E28 016D7821 */  addu  $t7, $t3, $t5
/* 05107C 800A8E2C ADE00000 */  sw    $zero, ($t7)
/* 051080 800A8E30 8E030004 */  lw    $v1, 4($s0)
.L800A8E34_ovl1:
/* 051084 800A8E34 26100004 */  addiu $s0, $s0, 4
/* 051088 800A8E38 5460FFE7 */  bnezl $v1, .L800A8DD8_ovl1
/* 05108C 800A8E3C 00035C02 */   srl   $t3, $v1, 0x10
.L800A8E40_ovl1:
/* 051090 800A8E40 8FBF001C */  lw    $ra, 0x1c($sp)
/* 051094 800A8E44 8FB00014 */  lw    $s0, 0x14($sp)
/* 051098 800A8E48 8FB10018 */  lw    $s1, 0x18($sp)
/* 05109C 800A8E4C 03E00008 */  jr    $ra
/* 0510A0 800A8E50 27BD0048 */   addiu $sp, $sp, 0x48
.type func_800A8D64, @function
.size func_800A8D64, . - func_800A8D64
