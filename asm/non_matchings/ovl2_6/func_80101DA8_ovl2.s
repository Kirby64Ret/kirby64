glabel func_80101DA8_ovl2
/* 08A818 80101DA8 AFA50004 */  sw    $a1, 4($sp)
/* 08A81C 80101DAC AFA60008 */  sw    $a2, 8($sp)
/* 08A820 80101DB0 AFA7000C */  sw    $a3, 0xc($sp)
/* 08A824 80101DB4 94820008 */  lhu   $v0, 8($a0)
/* 08A828 80101DB8 304E0008 */  andi  $t6, $v0, 8
/* 08A82C 80101DBC 15C0000D */  bnez  $t6, .L80101DF4_ovl2
/* 08A830 80101DC0 304F0003 */   andi  $t7, $v0, 3
/* 08A834 80101DC4 11E00010 */  beqz  $t7, .L80101E08_ovl2
/* 08A838 80101DC8 30580004 */   andi  $t8, $v0, 4
/* 08A83C 80101DCC 13000007 */  beqz  $t8, .L80101DEC_ovl2
/* 08A840 80101DD0 3C198013 */   lui   $t9, %hi(D_8012BD00) # $t9, 0x8013
/* 08A844 80101DD4 8F39BD00 */  lw    $t9, %lo(D_8012BD00)($t9)
/* 08A848 80101DD8 001947C2 */  srl   $t0, $t9, 0x1f
/* 08A84C 80101DDC 15000003 */  bnez  $t0, .L80101DEC_ovl2
/* 08A850 80101DE0 00000000 */   nop   
/* 08A854 80101DE4 03E00008 */  jr    $ra
/* 08A858 80101DE8 00001025 */   move  $v0, $zero

.L80101DEC_ovl2:
/* 08A85C 80101DEC 03E00008 */  jr    $ra
/* 08A860 80101DF0 24020001 */   li    $v0, 1

.L80101DF4_ovl2:
/* 08A864 80101DF4 94890012 */  lhu   $t1, 0x12($a0)
/* 08A868 80101DF8 55200004 */  bnezl $t1, .L80101E0C_ovl2
/* 08A86C 80101DFC 00001025 */   move  $v0, $zero
/* 08A870 80101E00 03E00008 */  jr    $ra
/* 08A874 80101E04 24020001 */   li    $v0, 1

.L80101E08_ovl2:
/* 08A878 80101E08 00001025 */  move  $v0, $zero
.L80101E0C_ovl2:
/* 08A87C 80101E0C 03E00008 */  jr    $ra
/* 08A880 80101E10 00000000 */   nop   
