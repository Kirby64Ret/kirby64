glabel func_80020ABC
/* 0216BC 80020ABC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0216C0 80020AC0 2CA10080 */  sltiu $at, $a1, 0x80
/* 0216C4 80020AC4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0216C8 80020AC8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0216CC 80020ACC AFB2001C */  sw    $s2, 0x1c($sp)
/* 0216D0 80020AD0 AFB10018 */  sw    $s1, 0x18($sp)
/* 0216D4 80020AD4 14200002 */  bnez  $at, .L80020AE0_ovl0
/* 0216D8 80020AD8 AFB00014 */   sw    $s0, 0x14($sp)
/* 0216DC 80020ADC 2405007F */  li    $a1, 127
.L80020AE0_ovl0:
/* 0216E0 80020AE0 3C0F8009 */  lui   $t7, %hi(D_80096478) # $t7, 0x8009
/* 0216E4 80020AE4 25EF6478 */  addiu $t7, %lo(D_80096478) # addiu $t7, $t7, 0x6478
/* 0216E8 80020AE8 00047080 */  sll   $t6, $a0, 2
/* 0216EC 80020AEC 01CF8821 */  addu  $s1, $t6, $t7
/* 0216F0 80020AF0 00008025 */  move  $s0, $zero
/* 0216F4 80020AF4 30B200FF */  andi  $s2, $a1, 0xff
/* 0216F8 80020AF8 24130010 */  li    $s3, 16
/* 0216FC 80020AFC 8E240000 */  lw    $a0, ($s1)
.L80020B00_ovl0:
/* 021700 80020B00 320500FF */  andi  $a1, $s0, 0xff
/* 021704 80020B04 0C008CC0 */  jal   func_80023300
/* 021708 80020B08 324600FF */   andi  $a2, $s2, 0xff
/* 02170C 80020B0C 26100001 */  addiu $s0, $s0, 1
/* 021710 80020B10 5613FFFB */  bnel  $s0, $s3, .L80020B00_ovl0
/* 021714 80020B14 8E240000 */   lw    $a0, ($s1)
/* 021718 80020B18 8FBF0024 */  lw    $ra, 0x24($sp)
/* 02171C 80020B1C 8FB00014 */  lw    $s0, 0x14($sp)
/* 021720 80020B20 8FB10018 */  lw    $s1, 0x18($sp)
/* 021724 80020B24 8FB2001C */  lw    $s2, 0x1c($sp)
/* 021728 80020B28 8FB30020 */  lw    $s3, 0x20($sp)
/* 02172C 80020B2C 03E00008 */  jr    $ra
/* 021730 80020B30 27BD0028 */   addiu $sp, $sp, 0x28
.type func_80020ABC, @function
.size func_80020ABC, . - func_80020ABC
