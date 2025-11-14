glabel func_800B18B4
/* 059B04 800B18B4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 059B08 800B18B8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 059B0C 800B18BC AFA40000 */  sw    $a0, ($sp)
/* 059B10 800B18C0 3C06800E */  lui   $a2, %hi(D_800E7CE0) # $a2, 0x800e
/* 059B14 800B18C4 8C4E0000 */  lw    $t6, ($v0)
/* 059B18 800B18C8 24C67CE0 */  addiu $a2, %lo(D_800E7CE0) # addiu $a2, $a2, 0x7ce0
/* 059B1C 800B18CC 000E7880 */  sll   $t7, $t6, 2
/* 059B20 800B18D0 00CF1821 */  addu  $v1, $a2, $t7
/* 059B24 800B18D4 8C640000 */  lw    $a0, ($v1)
/* 059B28 800B18D8 10800007 */  beqz  $a0, .L800B18F8_ovl1
/* 059B2C 800B18DC 2498FFFF */   addiu $t8, $a0, -1
/* 059B30 800B18E0 1C800005 */  bgtz  $a0, .L800B18F8_ovl1
/* 059B34 800B18E4 AC780000 */   sw    $t8, ($v1)
/* 059B38 800B18E8 8C590000 */  lw    $t9, ($v0)
/* 059B3C 800B18EC 00194080 */  sll   $t0, $t9, 2
/* 059B40 800B18F0 00C84821 */  addu  $t1, $a2, $t0
/* 059B44 800B18F4 AD200000 */  sw    $zero, ($t1)
.L800B18F8_ovl1:
/* 059B48 800B18F8 03E00008 */  jr    $ra
/* 059B4C 800B18FC 00000000 */   nop   
.type func_800B18B4, @function
.size func_800B18B4, . - func_800B18B4
