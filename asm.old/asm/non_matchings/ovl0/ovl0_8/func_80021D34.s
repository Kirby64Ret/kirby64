glabel crash_screen_draw_rect
/* 022934 80021D34 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 022938 80021D38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02293C 80021D3C AFB00018 */  sw    $s0, 0x18($sp)
/* 022940 80021D40 00E08025 */  move  $s0, $a3
/* 022944 80021D44 AFA40020 */  sw    $a0, 0x20($sp)
/* 022948 80021D48 AFA50024 */  sw    $a1, 0x24($sp)
/* 02294C 80021D4C 0C00E46C */  jal   osViGetCurrentFramebuffer
/* 022950 80021D50 AFA60028 */   sw    $a2, 0x28($sp)
/* 022954 80021D54 3C058005 */  lui   $a1, %hi(gCurrScreenWidth) # $a1, 0x8005
/* 022958 80021D58 8CA5A508 */  lw    $a1, %lo(gCurrScreenWidth)($a1)
/* 02295C 80021D5C 8FAE0024 */  lw    $t6, 0x24($sp)
/* 022960 80021D60 8FA90020 */  lw    $t1, 0x20($sp)
/* 022964 80021D64 8FA60028 */  lw    $a2, 0x28($sp)
/* 022968 80021D68 00AE0019 */  multu $a1, $t6
/* 02296C 80021D6C 00095040 */  sll   $t2, $t1, 1
/* 022970 80021D70 00004025 */  move  $t0, $zero
/* 022974 80021D74 24040001 */  li    $a0, 1
/* 022978 80021D78 00007812 */  mflo  $t7
/* 02297C 80021D7C 000FC040 */  sll   $t8, $t7, 1
/* 022980 80021D80 0058C821 */  addu  $t9, $v0, $t8
/* 022984 80021D84 1A000019 */  blez  $s0, .L80021DEC_ovl0
/* 022988 80021D88 032A1821 */   addu  $v1, $t9, $t2
.L80021D8C_ovl0:
/* 02298C 80021D8C 18C00012 */  blez  $a2, .L80021DD8_ovl0
/* 022990 80021D90 00001025 */   move  $v0, $zero
/* 022994 80021D94 30C70003 */  andi  $a3, $a2, 3
/* 022998 80021D98 10E00006 */  beqz  $a3, .L80021DB4_ovl0
/* 02299C 80021D9C 00E02825 */   move  $a1, $a3
.L80021DA0_ovl0:
/* 0229A0 80021DA0 24420001 */  addiu $v0, $v0, 1
/* 0229A4 80021DA4 A4640000 */  sh    $a0, ($v1)
/* 0229A8 80021DA8 14A2FFFD */  bne   $a1, $v0, .L80021DA0_ovl0
/* 0229AC 80021DAC 24630002 */   addiu $v1, $v1, 2
/* 0229B0 80021DB0 10460007 */  beq   $v0, $a2, .L80021DD0_ovl0
# nop
.L80021DB4_ovl0:
/* 0229B4 80021DB4 24420004 */   addiu $v0, $v0, 4
/* 0229B8 80021DB8 A4640002 */  sh    $a0, 2($v1)
/* 0229BC 80021DBC A4640004 */  sh    $a0, 4($v1)
/* 0229C0 80021DC0 A4640006 */  sh    $a0, 6($v1)
/* 0229C4 80021DC4 24630008 */  addiu $v1, $v1, 8
/* 0229C8 80021DC8 1446FFFA */  bne   $v0, $a2, .L80021DB4_ovl0
/* 0229CC 80021DCC A464FFF8 */   sh    $a0, -8($v1)
.L80021DD0_ovl0:
/* 0229D0 80021DD0 3C058005 */  lui   $a1, %hi(gCurrScreenWidth) # $a1, 0x8005
/* 0229D4 80021DD4 8CA5A508 */  lw    $a1, %lo(gCurrScreenWidth)($a1)
.L80021DD8_ovl0:
/* 0229D8 80021DD8 00A65823 */  subu  $t3, $a1, $a2
/* 0229DC 80021DDC 25080001 */  addiu $t0, $t0, 1
/* 0229E0 80021DE0 000B6040 */  sll   $t4, $t3, 1
/* 0229E4 80021DE4 1510FFE9 */  bne   $t0, $s0, .L80021D8C_ovl0
/* 0229E8 80021DE8 006C1821 */   addu  $v1, $v1, $t4
.L80021DEC_ovl0:
/* 0229EC 80021DEC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0229F0 80021DF0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0229F4 80021DF4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0229F8 80021DF8 03E00008 */  jr    $ra
/* 0229FC 80021DFC 00000000 */   nop   
.size crash_screen_draw_rect, . - crash_screen_draw_rect
