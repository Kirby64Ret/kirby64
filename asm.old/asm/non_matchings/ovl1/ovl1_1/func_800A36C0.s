glabel func_800A36C0
/* 04B910 800A36C0 27BDFF88 */  addiu $sp, $sp, -0x78
/* 04B914 800A36C4 3C0F800C */  lui   $t7, %hi(D_800BE498) # $t7, 0x800c
/* 04B918 800A36C8 25EFE498 */  addiu $t7, %lo(D_800BE498) # addiu $t7, $t7, -0x1b68
/* 04B91C 800A36CC AFBF0024 */  sw    $ra, 0x24($sp)
/* 04B920 800A36D0 AFB20020 */  sw    $s2, 0x20($sp)
/* 04B924 800A36D4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 04B928 800A36D8 AFB00018 */  sw    $s0, 0x18($sp)
/* 04B92C 800A36DC 25E8003C */  addiu $t0, $t7, 0x3c
/* 04B930 800A36E0 27AE002C */  addiu $t6, $sp, 0x2c
.L800A36E4_ovl1:
/* 04B934 800A36E4 8DF90000 */  lw    $t9, ($t7)
/* 04B938 800A36E8 25EF000C */  addiu $t7, $t7, 0xc
/* 04B93C 800A36EC 25CE000C */  addiu $t6, $t6, 0xc
/* 04B940 800A36F0 ADD9FFF4 */  sw    $t9, -0xc($t6)
/* 04B944 800A36F4 8DF8FFF8 */  lw    $t8, -8($t7)
/* 04B948 800A36F8 ADD8FFF8 */  sw    $t8, -8($t6)
/* 04B94C 800A36FC 8DF9FFFC */  lw    $t9, -4($t7)
/* 04B950 800A3700 15E8FFF8 */  bne   $t7, $t0, .L800A36E4_ovl1
/* 04B954 800A3704 ADD9FFFC */   sw    $t9, -4($t6)
/* 04B958 800A3708 8DF90000 */  lw    $t9, ($t7)
/* 04B95C 800A370C 8DF80004 */  lw    $t8, 4($t7)
/* 04B960 800A3710 27B0002C */  addiu $s0, $sp, 0x2c
/* 04B964 800A3714 27B20070 */  addiu $s2, $sp, 0x70
/* 04B968 800A3718 24110003 */  li    $s1, 3
/* 04B96C 800A371C ADD90000 */  sw    $t9, ($t6)
/* 04B970 800A3720 ADD80004 */  sw    $t8, 4($t6)
.L800A3724_ovl1:
/* 04B974 800A3724 0C029AC8 */  jal   load_overlay
/* 04B978 800A3728 24040004 */   li    $a0, 4
/* 04B97C 800A372C 8E040000 */  lw    $a0, ($s0)
/* 04B980 800A3730 0C055358 */  jal   func_80154D60_ovl1
/* 04B984 800A3734 24050015 */   li    $a1, 21
/* 04B988 800A3738 10510003 */  beq   $v0, $s1, .L800A3748_ovl1
/* 04B98C 800A373C 26100004 */   addiu $s0, $s0, 4
/* 04B990 800A3740 1612FFF8 */  bne   $s0, $s2, .L800A3724_ovl1
/* 04B994 800A3744 00000000 */   nop   
.L800A3748_ovl1:
/* 04B998 800A3748 3C02800C */  lui   $v0, %hi(gGameState) # $v0, 0x800c
/* 04B99C 800A374C 2442E4F0 */  addiu $v0, %lo(gGameState) # addiu $v0, $v0, -0x1b10
/* 04B9A0 800A3750 8C490000 */  lw    $t1, ($v0)
/* 04B9A4 800A3754 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04B9A8 800A3758 3C01800D */  lui   $at, %hi(D_800D6B68) # $at, 0x800d
/* 04B9AC 800A375C 240A0017 */  li    $t2, 23
/* 04B9B0 800A3760 8FB00018 */  lw    $s0, 0x18($sp)
/* 04B9B4 800A3764 8FB1001C */  lw    $s1, 0x1c($sp)
/* 04B9B8 800A3768 8FB20020 */  lw    $s2, 0x20($sp)
/* 04B9BC 800A376C AC296B68 */  sw    $t1, %lo(D_800D6B68)($at)
/* 04B9C0 800A3770 AC4A0000 */  sw    $t2, ($v0)
/* 04B9C4 800A3774 03E00008 */  jr    $ra
/* 04B9C8 800A3778 27BD0078 */   addiu $sp, $sp, 0x78
.type func_800A36C0, @function
.size func_800A36C0, . - func_800A36C0
