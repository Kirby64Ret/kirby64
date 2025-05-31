glabel func_800AF7EC
/* 057A3C 800AF7EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 057A40 800AF7F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 057A44 800AF7F4 AFA40020 */  sw    $a0, 0x20($sp)
/* 057A48 800AF7F8 AFA50024 */  sw    $a1, 0x24($sp)
/* 057A4C 800AF7FC AFA60028 */  sw    $a2, 0x28($sp)
/* 057A50 800AF800 0C02A310 */  jal   func_800A8C40
/* 057A54 800AF804 AFA7002C */   sw    $a3, 0x2c($sp)
/* 057A58 800AF808 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 057A5C 800AF80C 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 057A60 800AF810 93A5002F */  lbu   $a1, 0x2f($sp)
/* 057A64 800AF814 0C02B255 */  jal   func_800AC954
/* 057A68 800AF818 00403025 */   move  $a2, $v0
/* 057A6C 800AF81C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 057A70 800AF820 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 057A74 800AF824 14400003 */  bnez  $v0, .L800AF834_ovl1
/* 057A78 800AF828 00401825 */   move  $v1, $v0
/* 057A7C 800AF82C 10000014 */  b     .L800AF880_ovl1
/* 057A80 800AF830 00001025 */   move  $v0, $zero
.L800AF834_ovl1:
/* 057A84 800AF834 8D0F0000 */  lw    $t7, ($t0)
/* 057A88 800AF838 8FAE0020 */  lw    $t6, 0x20($sp)
/* 057A8C 800AF83C 3C01800E */ lui $at, %hi(D_800E02D0)
/* 057A90 800AF840 8DF80000 */  lw    $t8, ($t7)
/* 057A94 800AF844 93AA002B */  lbu   $t2, 0x2b($sp)
/* 057A98 800AF848 93A60027 */  lbu   $a2, 0x27($sp)
/* 057A9C 800AF84C 0018C880 */  sll   $t9, $t8, 2
/* 057AA0 800AF850 00390821 */  addu  $at, $at, $t9
/* 057AA4 800AF854 AC2E02D0 */  sw    $t6, %lo(D_800E02D0)($at)
/* 057AA8 800AF858 90690013 */  lbu   $t1, 0x13($v1)
/* 057AAC 800AF85C 3C05800B */  lui   $a1, %hi(D_800AD1A0) # $a1, 0x800b
/* 057AB0 800AF860 24A5D1A0 */  addiu $a1, %lo(D_800AD1A0) # addiu $a1, $a1, -0x2e60
/* 057AB4 800AF864 012A5825 */  or    $t3, $t1, $t2
/* 057AB8 800AF868 A06B0013 */  sb    $t3, 0x13($v1)
/* 057ABC 800AF86C 8D040000 */  lw    $a0, ($t0)
/* 057AC0 800AF870 3C078000 */  lui   $a3, 0x8000
/* 057AC4 800AF874 0C00297F */  jal   func_8000A5FC
/* 057AC8 800AF878 AFA60010 */   sw    $a2, 0x10($sp)
/* 057ACC 800AF87C 24020001 */  li    $v0, 1
.L800AF880_ovl1:
/* 057AD0 800AF880 8FBF001C */  lw    $ra, 0x1c($sp)
/* 057AD4 800AF884 27BD0020 */  addiu $sp, $sp, 0x20
/* 057AD8 800AF888 03E00008 */  jr    $ra
/* 057ADC 800AF88C 00000000 */   nop   
.type func_800AF7EC, @function
.size func_800AF7EC, . - func_800AF7EC
