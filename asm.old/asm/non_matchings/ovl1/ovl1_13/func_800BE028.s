glabel func_800BE028
/* 066278 800BE028 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 06627C 800BE02C AFB2001C */  sw    $s2, 0x1c($sp)
/* 066280 800BE030 AFB00014 */  sw    $s0, 0x14($sp)
/* 066284 800BE034 00C09025 */  move  $s2, $a2
/* 066288 800BE038 AFBF0024 */  sw    $ra, 0x24($sp)
/* 06628C 800BE03C AFB30020 */  sw    $s3, 0x20($sp)
/* 066290 800BE040 AFB10018 */  sw    $s1, 0x18($sp)
/* 066294 800BE044 10C0000D */  beqz  $a2, .L800BE07C_ovl1
/* 066298 800BE048 00008025 */   move  $s0, $zero
/* 06629C 800BE04C 00057080 */  sll   $t6, $a1, 2
/* 0662A0 800BE050 008E8821 */  addu  $s1, $a0, $t6
/* 0662A4 800BE054 3413FFFF */  li    $s3, 65535
.L800BE058_ovl1:
/* 0662A8 800BE058 8E240000 */  lw    $a0, ($s1)
/* 0662AC 800BE05C 52640008 */  beql  $s3, $a0, .L800BE080_ovl1
/* 0662B0 800BE060 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0662B4 800BE064 0C02A29F */  jal   func_800A8A7C
/* 0662B8 800BE068 00000000 */   nop   
/* 0662BC 800BE06C 26100001 */  addiu $s0, $s0, 1
/* 0662C0 800BE070 0212082B */  sltu  $at, $s0, $s2
/* 0662C4 800BE074 1420FFF8 */  bnez  $at, .L800BE058_ovl1
/* 0662C8 800BE078 26310004 */   addiu $s1, $s1, 4
.L800BE07C_ovl1:
/* 0662CC 800BE07C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800BE080_ovl1:
/* 0662D0 800BE080 8FB00014 */  lw    $s0, 0x14($sp)
/* 0662D4 800BE084 8FB10018 */  lw    $s1, 0x18($sp)
/* 0662D8 800BE088 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0662DC 800BE08C 8FB30020 */  lw    $s3, 0x20($sp)
/* 0662E0 800BE090 03E00008 */  jr    $ra
/* 0662E4 800BE094 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800BE028, @function
.size func_800BE028, . - func_800BE028
