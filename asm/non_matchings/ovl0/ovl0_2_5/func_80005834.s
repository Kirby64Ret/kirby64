glabel func_80005834
/* 006434 80005834 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 006438 80005838 3C038005 */  lui   $v1, %hi(D_8004A460) # $v1, 0x8005
/* 00643C 8000583C 8C63A460 */  lw    $v1, %lo(D_8004A460)($v1)
/* 006440 80005840 AFB00004 */  sw    $s0, 4($sp)
/* 006444 80005844 00808025 */  move  $s0, $a0
/* 006448 80005848 AFB2000C */  sw    $s2, 0xc($sp)
/* 00644C 8000584C AFB10008 */  sw    $s1, 8($sp)
/* 006450 80005850 AFA60018 */  sw    $a2, 0x18($sp)
/* 006454 80005854 AFA7001C */  sw    $a3, 0x1c($sp)
/* 006458 80005858 18600028 */  blez  $v1, .L800058FC_ovl0
/* 00645C 8000585C 00001025 */   move  $v0, $zero
/* 006460 80005860 00053100 */  sll   $a2, $a1, 4
/* 006464 80005864 00C53021 */  addu  $a2, $a2, $a1
/* 006468 80005868 3C048005 */  lui   $a0, %hi(D_8004A368) # $a0, 0x8005
/* 00646C 8000586C 3C098005 */  lui   $t1, %hi(D_8004A370) # $t1, 0x8005
/* 006470 80005870 3C0A8005 */  lui   $t2, %hi(D_8004A378) # $t2, 0x8005
/* 006474 80005874 3C0C8005 */  lui   $t4, %hi(D_8004A380) # $t4, 0x8005
/* 006478 80005878 3C118005 */  lui   $s1, %hi(D_8004A388) # $s1, 0x8005
/* 00647C 8000587C 2631A388 */  addiu $s1, %lo(D_8004A388) # addiu $s1, $s1, -0x5c78
/* 006480 80005880 258CA380 */  addiu $t4, %lo(D_8004A380) # addiu $t4, $t4, -0x5c80
/* 006484 80005884 254AA378 */  addiu $t2, %lo(D_8004A378) # addiu $t2, $t2, -0x5c88
/* 006488 80005888 2529A370 */  addiu $t1, %lo(D_8004A370) # addiu $t1, $t1, -0x5c90
/* 00648C 8000588C 2484A368 */  addiu $a0, %lo(D_8004A368) # addiu $a0, $a0, -0x5c98
/* 006490 80005890 000630C0 */  sll   $a2, $a2, 3
/* 006494 80005894 02003825 */  move  $a3, $s0
/* 006498 80005898 8FAD0018 */  lw    $t5, 0x18($sp)
/* 00649C 8000589C 8FB2001C */  lw    $s2, 0x1c($sp)
.L800058A0_ovl0:
/* 0064A0 800058A0 244B0001 */  addiu $t3, $v0, 1
/* 0064A4 800058A4 00CB0019 */  multu $a2, $t3
/* 0064A8 800058A8 0005C100 */  sll   $t8, $a1, 4
/* 0064AC 800058AC 0305C021 */  addu  $t8, $t8, $a1
/* 0064B0 800058B0 0018C0C0 */  sll   $t8, $t8, 3
/* 0064B4 800058B4 0163082A */  slt   $at, $t3, $v1
/* 0064B8 800058B8 AC870000 */  sw    $a3, ($a0)
/* 0064BC 800058BC AD270000 */  sw    $a3, ($t1)
/* 0064C0 800058C0 AD8D0000 */  sw    $t5, ($t4)
/* 0064C4 800058C4 AE320000 */  sw    $s2, ($s1)
/* 0064C8 800058C8 26520038 */  addiu $s2, $s2, 0x38
/* 0064CC 800058CC 00007012 */  mflo  $t6
/* 0064D0 800058D0 020E7821 */  addu  $t7, $s0, $t6
/* 0064D4 800058D4 25AD002C */  addiu $t5, $t5, 0x2c
/* 0064D8 800058D8 00F83821 */  addu  $a3, $a3, $t8
/* 0064DC 800058DC 01601025 */  move  $v0, $t3
/* 0064E0 800058E0 24840004 */  addiu $a0, $a0, 4
/* 0064E4 800058E4 25290004 */  addiu $t1, $t1, 4
/* 0064E8 800058E8 254A0004 */  addiu $t2, $t2, 4
/* 0064EC 800058EC 258C0004 */  addiu $t4, $t4, 4
/* 0064F0 800058F0 26310004 */  addiu $s1, $s1, 4
/* 0064F4 800058F4 1420FFEA */  bnez  $at, .L800058A0_ovl0
/* 0064F8 800058F8 AD4FFFFC */   sw    $t7, -4($t2)
.L800058FC_ovl0:
/* 0064FC 800058FC 8FB00004 */  lw    $s0, 4($sp)
/* 006500 80005900 8FB10008 */  lw    $s1, 8($sp)
/* 006504 80005904 8FB2000C */  lw    $s2, 0xc($sp)
/* 006508 80005908 03E00008 */  jr    $ra
/* 00650C 8000590C 27BD0010 */   addiu $sp, $sp, 0x10
