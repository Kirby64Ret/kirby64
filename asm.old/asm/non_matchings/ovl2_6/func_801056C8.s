glabel func_801056C8
/* 08E138 801056C8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 08E13C 801056CC AFBF002C */  sw    $ra, 0x2c($sp)
/* 08E140 801056D0 AFB10028 */  sw    $s1, 0x28($sp)
/* 08E144 801056D4 AFB00024 */  sw    $s0, 0x24($sp)
/* 08E148 801056D8 C4840034 */  lwc1  $f4, 0x34($a0)
/* 08E14C 801056DC 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 08E150 801056E0 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 08E154 801056E4 E7A40048 */  swc1  $f4, 0x48($sp)
/* 08E158 801056E8 C486002C */  lwc1  $f6, 0x2c($a0)
/* 08E15C 801056EC C4500004 */  lwc1  $f16, 4($v0)
/* 08E160 801056F0 00A08825 */  move  $s1, $a1
/* 08E164 801056F4 E7A6004C */  swc1  $f6, 0x4c($sp)
/* 08E168 801056F8 C4880038 */  lwc1  $f8, 0x38($a0)
/* 08E16C 801056FC 3C0E8013 */  lui   $t6, %hi(D_8012BD34) # $t6, 0x8013
/* 08E170 80105700 25CEBD34 */  addiu $t6, %lo(D_8012BD34) # addiu $t6, $t6, -0x42cc
/* 08E174 80105704 E7A80050 */  swc1  $f8, 0x50($sp)
/* 08E178 80105708 C48A0004 */  lwc1  $f10, 4($a0)
/* 08E17C 8010570C 262F0024 */  addiu $t7, $s1, 0x24
/* 08E180 80105710 26380020 */  addiu $t8, $s1, 0x20
/* 08E184 80105714 46105480 */  add.s $f18, $f10, $f16
/* 08E188 80105718 C4500008 */  lwc1  $f16, 8($v0)
/* 08E18C 8010571C 2639001C */  addiu $t9, $s1, 0x1c
/* 08E190 80105720 27A5003C */  addiu $a1, $sp, 0x3c
/* 08E194 80105724 E7B2003C */  swc1  $f18, 0x3c($sp)
/* 08E198 80105728 C4860010 */  lwc1  $f6, 0x10($a0)
/* 08E19C 8010572C C4840008 */  lwc1  $f4, 8($a0)
/* 08E1A0 80105730 27A60030 */  addiu $a2, $sp, 0x30
/* 08E1A4 80105734 00003825 */  move  $a3, $zero
/* 08E1A8 80105738 46062200 */  add.s $f8, $f4, $f6
/* 08E1AC 8010573C C4440014 */  lwc1  $f4, 0x14($v0)
/* 08E1B0 80105740 44803000 */  mtc1  $zero, $f6
/* 08E1B4 80105744 E7A80040 */  swc1  $f8, 0x40($sp)
/* 08E1B8 80105748 C48A000C */  lwc1  $f10, 0xc($a0)
/* 08E1BC 8010574C C4480018 */  lwc1  $f8, 0x18($v0)
/* 08E1C0 80105750 AFB9001C */  sw    $t9, 0x1c($sp)
/* 08E1C4 80105754 46105480 */  add.s $f18, $f10, $f16
/* 08E1C8 80105758 AFB80018 */  sw    $t8, 0x18($sp)
/* 08E1CC 8010575C AFAF0014 */  sw    $t7, 0x14($sp)
/* 08E1D0 80105760 AFAE0010 */  sw    $t6, 0x10($sp)
/* 08E1D4 80105764 E7B20044 */  swc1  $f18, 0x44($sp)
/* 08E1D8 80105768 27A40048 */  addiu $a0, $sp, 0x48
/* 08E1DC 8010576C E7A40030 */  swc1  $f4, 0x30($sp)
/* 08E1E0 80105770 E7A60034 */  swc1  $f6, 0x34($sp)
/* 08E1E4 80105774 0C04134B */  jal   func_80104D2C
/* 08E1E8 80105778 E7A80038 */   swc1  $f8, 0x38($sp)
/* 08E1EC 8010577C 5040000C */  beql  $v0, $zero, .L801057B0_ovl2
/* 08E1F0 80105780 00001025 */   move  $v0, $zero
/* 08E1F4 80105784 8E280000 */  lw    $t0, ($s1)
/* 08E1F8 80105788 962D0000 */  lhu   $t5, ($s1)
/* 08E1FC 8010578C 24020001 */  li    $v0, 1
/* 08E200 80105790 00084CC2 */  srl   $t1, $t0, 0x13
/* 08E204 80105794 352A0001 */  ori   $t2, $t1, 1
/* 08E208 80105798 000A60C0 */  sll   $t4, $t2, 3
/* 08E20C 8010579C 31AE0007 */  andi  $t6, $t5, 7
/* 08E210 801057A0 018E7825 */  or    $t7, $t4, $t6
/* 08E214 801057A4 10000002 */  b     .L801057B0_ovl2
/* 08E218 801057A8 A62F0000 */   sh    $t7, ($s1)
/* 08E21C 801057AC 00001025 */  move  $v0, $zero
.L801057B0_ovl2:
/* 08E220 801057B0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08E224 801057B4 8FB00024 */  lw    $s0, 0x24($sp)
/* 08E228 801057B8 8FB10028 */  lw    $s1, 0x28($sp)
/* 08E22C 801057BC 03E00008 */  jr    $ra
/* 08E230 801057C0 27BD0058 */   addiu $sp, $sp, 0x58
.type func_801056C8, @function
.size func_801056C8, . - func_801056C8