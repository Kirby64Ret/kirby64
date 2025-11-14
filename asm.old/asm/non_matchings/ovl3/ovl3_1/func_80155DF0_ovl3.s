glabel func_80155DF0_ovl3
/* 0B6830 80155DF0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B6834 80155DF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B6838 80155DF8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0B683C 80155DFC C4C00000 */  lwc1  $f0, ($a2)
/* 0B6840 80155E00 3C01800E */  lui   $at, 0x800e
/* 0B6844 80155E04 00E02825 */  move  $a1, $a3
/* 0B6848 80155E08 E480000C */  swc1  $f0, 0xc($a0)
/* 0B684C 80155E0C E4800000 */  swc1  $f0, ($a0)
/* 0B6850 80155E10 C4C00004 */  lwc1  $f0, 4($a2)
/* 0B6854 80155E14 E4800010 */  swc1  $f0, 0x10($a0)
/* 0B6858 80155E18 E4800004 */  swc1  $f0, 4($a0)
/* 0B685C 80155E1C C4C00008 */  lwc1  $f0, 8($a2)
/* 0B6860 80155E20 E4800014 */  swc1  $f0, 0x14($a0)
/* 0B6864 80155E24 E4800008 */  swc1  $f0, 8($a0)
/* 0B6868 80155E28 8FAE0028 */  lw    $t6, 0x28($sp)
/* 0B686C 80155E2C 000E7880 */  sll   $t7, $t6, 2
/* 0B6870 80155E30 002F0821 */  addu  $at, $at, $t7
/* 0B6874 80155E34 C42441D0 */  lwc1  $f4, 0x41d0($at)
/* 0B6878 80155E38 E4840018 */  swc1  $f4, 0x18($a0)
/* 0B687C 80155E3C 8FB8001C */  lw    $t8, 0x1c($sp)
/* 0B6880 80155E40 0C046FD3 */  jal   func_8011BF4C
/* 0B6884 80155E44 AC98001C */   sw    $t8, 0x1c($a0)
/* 0B6888 80155E48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B688C 80155E4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B6890 80155E50 03E00008 */  jr    $ra
/* 0B6894 80155E54 00000000 */   nop   
.type func_80155DF0_ovl3, @function
.size func_80155DF0_ovl3, . - func_80155DF0_ovl3
