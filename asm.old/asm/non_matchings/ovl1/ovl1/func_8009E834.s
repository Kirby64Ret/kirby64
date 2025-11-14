glabel func_8009E834
/* 046A84 8009E834 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 046A88 8009E838 AFB60030 */  sw    $s6, 0x30($sp)
/* 046A8C 8009E83C AFB5002C */  sw    $s5, 0x2c($sp)
/* 046A90 8009E840 AFB40028 */  sw    $s4, 0x28($sp)
/* 046A94 8009E844 AFB20020 */  sw    $s2, 0x20($sp)
/* 046A98 8009E848 AFBF0034 */  sw    $ra, 0x34($sp)
/* 046A9C 8009E84C AFB30024 */  sw    $s3, 0x24($sp)
/* 046AA0 8009E850 AFB1001C */  sw    $s1, 0x1c($sp)
/* 046AA4 8009E854 AFB00018 */  sw    $s0, 0x18($sp)
/* 046AA8 8009E858 3C16800D */  lui   $s6, %hi(D_800D69C8) # $s6, 0x800d
/* 046AAC 8009E85C 8C930044 */  lw    $s3, 0x44($a0)
/* 046AB0 8009E860 26D669C8 */  addiu $s6, %lo(D_800D69C8) # addiu $s6, $s6, 0x69c8
/* 046AB4 8009E864 00009025 */  move  $s2, $zero
/* 046AB8 8009E868 3C140001 */  lui   $s4, 1
/* 046ABC 8009E86C 24150010 */  li    $s5, 16
.L8009E870_ovl1:
/* 046AC0 8009E870 02747024 */  and   $t6, $s3, $s4
/* 046AC4 8009E874 15C00012 */  bnez  $t6, .L8009E8C0_ovl1
/* 046AC8 8009E878 00127880 */   sll   $t7, $s2, 2
/* 046ACC 8009E87C 02CFC021 */  addu  $t8, $s6, $t7
/* 046AD0 8009E880 8F100000 */  lw    $s0, ($t8)
/* 046AD4 8009E884 00008825 */  move  $s1, $zero
/* 046AD8 8009E888 1200000D */  beqz  $s0, .L8009E8C0_ovl1
/* 046ADC 8009E88C 02002025 */   move  $a0, $s0
.L8009E890_ovl1:
/* 046AE0 8009E890 02202825 */  move  $a1, $s1
/* 046AE4 8009E894 0C027138 */  jal   func_8009C4E0
/* 046AE8 8009E898 02403025 */   move  $a2, $s2
/* 046AEC 8009E89C 8E190000 */  lw    $t9, ($s0)
/* 046AF0 8009E8A0 54590005 */  bnel  $v0, $t9, .L8009E8B8_ovl1
/* 046AF4 8009E8A4 00408025 */   move  $s0, $v0
/* 046AF8 8009E8A8 02008825 */  move  $s1, $s0
/* 046AFC 8009E8AC 10000002 */  b     .L8009E8B8_ovl1
/* 046B00 8009E8B0 00408025 */   move  $s0, $v0
/* 046B04 8009E8B4 00408025 */  move  $s0, $v0
.L8009E8B8_ovl1:
/* 046B08 8009E8B8 5600FFF5 */  bnezl $s0, .L8009E890_ovl1
/* 046B0C 8009E8BC 02002025 */   move  $a0, $s0
.L8009E8C0_ovl1:
/* 046B10 8009E8C0 26520001 */  addiu $s2, $s2, 1
/* 046B14 8009E8C4 1655FFEA */  bne   $s2, $s5, .L8009E870_ovl1
/* 046B18 8009E8C8 00139842 */   srl   $s3, $s3, 1
/* 046B1C 8009E8CC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 046B20 8009E8D0 8FB00018 */  lw    $s0, 0x18($sp)
/* 046B24 8009E8D4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 046B28 8009E8D8 8FB20020 */  lw    $s2, 0x20($sp)
/* 046B2C 8009E8DC 8FB30024 */  lw    $s3, 0x24($sp)
/* 046B30 8009E8E0 8FB40028 */  lw    $s4, 0x28($sp)
/* 046B34 8009E8E4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 046B38 8009E8E8 8FB60030 */  lw    $s6, 0x30($sp)
/* 046B3C 8009E8EC 03E00008 */  jr    $ra
/* 046B40 8009E8F0 27BD0038 */   addiu $sp, $sp, 0x38
.type func_8009E834, @function
.size func_8009E834, . - func_8009E834
