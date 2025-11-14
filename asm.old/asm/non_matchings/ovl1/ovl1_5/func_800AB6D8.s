glabel func_800AB6D8
/* 053928 800AB6D8 AFA60008 */  sw    $a2, 8($sp)
/* 05392C 800AB6DC AFA7000C */  sw    $a3, 0xc($sp)
/* 053930 800AB6E0 3C0E800E */  lui   $t6, %hi(sTextureImageCommand) # $t6, 0x800e
/* 053934 800AB6E4 8DCED6F4 */  lw    $t6, %lo(sTextureImageCommand)($t6)
/* 053938 800AB6E8 8C8F0000 */  lw    $t7, ($a0)
/* 05393C 800AB6EC 3C09E600 */  lui   $t1, 0xe600
/* 053940 800AB6F0 3C0DF400 */  lui   $t5, 0xf400
/* 053944 800AB6F4 ADEE0000 */  sw    $t6, ($t7)
/* 053948 800AB6F8 8C980000 */  lw    $t8, ($a0)
/* 05394C 800AB6FC 3C0F800E */  lui   $t7, %hi(D_800DD70A) # $t7, 0x800e
/* 053950 800AB700 00073C00 */  sll   $a3, $a3, 0x10
/* 053954 800AB704 AF050004 */  sw    $a1, 4($t8)
/* 053958 800AB708 8C990000 */  lw    $t9, ($a0)
/* 05395C 800AB70C 00073C03 */  sra   $a3, $a3, 0x10
/* 053960 800AB710 00063400 */  sll   $a2, $a2, 0x10
/* 053964 800AB714 27280008 */  addiu $t0, $t9, 8
/* 053968 800AB718 AC880000 */  sw    $t0, ($a0)
/* 05396C 800AB71C AD090000 */  sw    $t1, ($t0)
/* 053970 800AB720 8C8B0000 */  lw    $t3, ($a0)
/* 053974 800AB724 00063403 */  sra   $a2, $a2, 0x10
/* 053978 800AB728 24010003 */  li    $at, 3
/* 05397C 800AB72C 256C0008 */  addiu $t4, $t3, 8
/* 053980 800AB730 AC8C0000 */  sw    $t4, ($a0)
/* 053984 800AB734 AD8D0000 */  sw    $t5, ($t4)
/* 053988 800AB738 81EFD70A */  lb    $t7, %lo(D_800DD70A)($t7)
/* 05398C 800AB73C 24EAFFFF */  addiu $t2, $a3, -1
/* 053990 800AB740 000A5C00 */  sll   $t3, $t2, 0x10
/* 053994 800AB744 15E10008 */  bne   $t7, $at, .L800AB768_ovl1
/* 053998 800AB748 00066880 */   sll   $t5, $a2, 2
/* 05399C 800AB74C 24F8FFFF */  addiu $t8, $a3, -1
/* 0539A0 800AB750 8C890000 */  lw    $t1, ($a0)
/* 0539A4 800AB754 0018CC00 */  sll   $t9, $t8, 0x10
/* 0539A8 800AB758 3C010700 */  lui   $at, 0x700
/* 0539AC 800AB75C 03214025 */  or    $t0, $t9, $at
/* 0539B0 800AB760 10000007 */  b     .L800AB780_ovl1
/* 0539B4 800AB764 AD280004 */   sw    $t0, 4($t1)
.L800AB768_ovl1:
/* 0539B8 800AB768 8C980000 */  lw    $t8, ($a0)
/* 0539BC 800AB76C 3C010700 */  lui   $at, 0x700
/* 0539C0 800AB770 01616025 */  or    $t4, $t3, $at
/* 0539C4 800AB774 25AEFFFF */  addiu $t6, $t5, -1
/* 0539C8 800AB778 018E7825 */  or    $t7, $t4, $t6
/* 0539CC 800AB77C AF0F0004 */  sw    $t7, 4($t8)
.L800AB780_ovl1:
/* 0539D0 800AB780 8C990000 */  lw    $t9, ($a0)
/* 0539D4 800AB784 27280008 */  addiu $t0, $t9, 8
/* 0539D8 800AB788 03E00008 */  jr    $ra
/* 0539DC 800AB78C AC880000 */   sw    $t0, ($a0)
.type func_800AB6D8, @function
.size func_800AB6D8, . - func_800AB6D8
