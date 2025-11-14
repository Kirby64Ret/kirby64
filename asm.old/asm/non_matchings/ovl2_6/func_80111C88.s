glabel func_80111C88
/* 09A6F8 80111C88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09A6FC 80111C8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09A700 80111C90 8C8E0000 */  lw    $t6, ($a0)
/* 09A704 80111C94 3C088013 */  lui   $t0, %hi(D_8012CF28) # $t0, 0x8013
/* 09A708 80111C98 00803825 */  move  $a3, $a0
/* 09A70C 80111C9C 11C00003 */  beqz  $t6, .L80111CAC_ovl2
/* 09A710 80111CA0 2508CF28 */   addiu $t0, %lo(D_8012CF28) # addiu $t0, $t0, -0x30d8
/* 09A714 80111CA4 10000002 */  b     .L80111CB0_ovl2
/* 09A718 80111CA8 24020001 */   li    $v0, 1
.L80111CAC_ovl2:
/* 09A71C 80111CAC 00001025 */  move  $v0, $zero
.L80111CB0_ovl2:
/* 09A720 80111CB0 8D0F0000 */  lw    $t7, ($t0)
/* 09A724 80111CB4 8CF90004 */  lw    $t9, 4($a3)
/* 09A728 80111CB8 3C098013 */  lui   $t1, %hi(D_8012D0C4) # $t1, 0x8013
/* 09A72C 80111CBC 004FC021 */  addu  $t8, $v0, $t7
/* 09A730 80111CC0 03195021 */  addu  $t2, $t8, $t9
/* 09A734 80111CC4 2941000B */  slti  $at, $t2, 0xb
/* 09A738 80111CC8 14200007 */  bnez  $at, .L80111CE8_ovl2
/* 09A73C 80111CCC 2529D0C4 */   addiu $t1, %lo(D_8012D0C4) # addiu $t1, $t1, -0x2f3c
/* 09A740 80111CD0 3C048013 */  lui   $a0, %hi(D_80128C54) # $a0, 0x8013
/* 09A744 80111CD4 24848C54 */  addiu $a0, %lo(D_80128C54) # addiu $a0, $a0, -0x73ac
/* 09A748 80111CD8 0C02909C */  jal   print_error_stub
/* 09A74C 80111CDC 00001025 */   move  $v0, $zero
.L80111CE0_ovl2:
/* 09A750 80111CE0 1000FFFF */  b     .L80111CE0_ovl2
/* 09A754 80111CE4 00000000 */   nop   
.L80111CE8_ovl2:
/* 09A758 80111CE8 8D220000 */  lw    $v0, ($t1)
/* 09A75C 80111CEC 24010005 */  li    $at, 5
/* 09A760 80111CF0 3C0C8013 */  lui   $t4, %hi(D_8012D0C8) # $t4, 0x8013
/* 09A764 80111CF4 14410007 */  bne   $v0, $at, .L80111D14_ovl2
/* 09A768 80111CF8 00025880 */   sll   $t3, $v0, 2
/* 09A76C 80111CFC 3C048013 */  lui   $a0, %hi(D_80128C84) # $a0, 0x8013
/* 09A770 80111D00 24848C84 */  addiu $a0, %lo(D_80128C84) # addiu $a0, $a0, -0x737c
/* 09A774 80111D04 0C02909C */  jal   print_error_stub
/* 09A778 80111D08 00001025 */   move  $v0, $zero
.L80111D0C_ovl2:
/* 09A77C 80111D0C 1000FFFF */  b     .L80111D0C_ovl2
/* 09A780 80111D10 00000000 */   nop   
.L80111D14_ovl2:
/* 09A784 80111D14 01625821 */  addu  $t3, $t3, $v0
/* 09A788 80111D18 000B58C0 */  sll   $t3, $t3, 3
/* 09A78C 80111D1C 258CD0C8 */  addiu $t4, %lo(D_8012D0C8) # addiu $t4, $t4, -0x2f38
/* 09A790 80111D20 016C3021 */  addu  $a2, $t3, $t4
/* 09A794 80111D24 ACC50000 */  sw    $a1, ($a2)
/* 09A798 80111D28 8CEE000C */  lw    $t6, 0xc($a3)
/* 09A79C 80111D2C ACCE0004 */  sw    $t6, 4($a2)
/* 09A7A0 80111D30 8CED0010 */  lw    $t5, 0x10($a3)
/* 09A7A4 80111D34 ACCD0008 */  sw    $t5, 8($a2)
/* 09A7A8 80111D38 8CEE0014 */  lw    $t6, 0x14($a3)
/* 09A7AC 80111D3C ACCE000C */  sw    $t6, 0xc($a2)
/* 09A7B0 80111D40 8CED0018 */  lw    $t5, 0x18($a3)
/* 09A7B4 80111D44 ACCD0010 */  sw    $t5, 0x10($a2)
/* 09A7B8 80111D48 8CEE001C */  lw    $t6, 0x1c($a3)
/* 09A7BC 80111D4C ACCE0014 */  sw    $t6, 0x14($a2)
/* 09A7C0 80111D50 8CED0020 */  lw    $t5, 0x20($a3)
/* 09A7C4 80111D54 ACCD0018 */  sw    $t5, 0x18($a2)
/* 09A7C8 80111D58 8CEF0000 */  lw    $t7, ($a3)
/* 09A7CC 80111D5C 51E00026 */  beql  $t7, $zero, .L80111DF8_ovl2
/* 09A7D0 80111D60 ACC0001C */   sw    $zero, 0x1c($a2)
/* 09A7D4 80111D64 8D180000 */  lw    $t8, ($t0)
/* 09A7D8 80111D68 3C0A8013 */  lui   $t2, %hi(D_8012CF30) # $t2, 0x8013
/* 09A7DC 80111D6C 254ACF30 */  addiu $t2, %lo(D_8012CF30) # addiu $t2, $t2, -0x30d0
/* 09A7E0 80111D70 0018C880 */  sll   $t9, $t8, 2
/* 09A7E4 80111D74 0338C821 */  addu  $t9, $t9, $t8
/* 09A7E8 80111D78 0019C8C0 */  sll   $t9, $t9, 3
/* 09A7EC 80111D7C 032A5821 */  addu  $t3, $t9, $t2
/* 09A7F0 80111D80 ACCB001C */  sw    $t3, 0x1c($a2)
/* 09A7F4 80111D84 8D0C0000 */  lw    $t4, ($t0)
/* 09A7F8 80111D88 258D0001 */  addiu $t5, $t4, 1
/* 09A7FC 80111D8C AD0D0000 */  sw    $t5, ($t0)
/* 09A800 80111D90 8CCE001C */  lw    $t6, 0x1c($a2)
/* 09A804 80111D94 A1C00000 */  sb    $zero, ($t6)
/* 09A808 80111D98 8CF80000 */  lw    $t8, ($a3)
/* 09A80C 80111D9C 8CCF001C */  lw    $t7, 0x1c($a2)
/* 09A810 80111DA0 8F0A0000 */  lw    $t2, ($t8)
/* 09A814 80111DA4 ADEA0004 */  sw    $t2, 4($t7)
/* 09A818 80111DA8 8F190004 */  lw    $t9, 4($t8)
/* 09A81C 80111DAC ADF90008 */  sw    $t9, 8($t7)
/* 09A820 80111DB0 8CEC0000 */  lw    $t4, ($a3)
/* 09A824 80111DB4 8CCB001C */  lw    $t3, 0x1c($a2)
/* 09A828 80111DB8 8D8E0008 */  lw    $t6, 8($t4)
/* 09A82C 80111DBC AD6E000C */  sw    $t6, 0xc($t3)
/* 09A830 80111DC0 8D8D000C */  lw    $t5, 0xc($t4)
/* 09A834 80111DC4 AD6D0010 */  sw    $t5, 0x10($t3)
/* 09A838 80111DC8 8D8E0010 */  lw    $t6, 0x10($t4)
/* 09A83C 80111DCC AD6E0014 */  sw    $t6, 0x14($t3)
/* 09A840 80111DD0 8D8D0014 */  lw    $t5, 0x14($t4)
/* 09A844 80111DD4 AD6D0018 */  sw    $t5, 0x18($t3)
/* 09A848 80111DD8 8D8E0018 */  lw    $t6, 0x18($t4)
/* 09A84C 80111DDC AD6E001C */  sw    $t6, 0x1c($t3)
/* 09A850 80111DE0 8D8D001C */  lw    $t5, 0x1c($t4)
/* 09A854 80111DE4 AD6D0020 */  sw    $t5, 0x20($t3)
/* 09A858 80111DE8 8D8E0020 */  lw    $t6, 0x20($t4)
/* 09A85C 80111DEC 10000002 */  b     .L80111DF8_ovl2
/* 09A860 80111DF0 AD6E0024 */   sw    $t6, 0x24($t3)
/* 09A864 80111DF4 ACC0001C */  sw    $zero, 0x1c($a2)
.L80111DF8_ovl2:
/* 09A868 80111DF8 8CE50004 */  lw    $a1, 4($a3)
/* 09A86C 80111DFC 3C0A8013 */  lui   $t2, %hi(D_8012CF30) # $t2, 0x8013
/* 09A870 80111E00 254ACF30 */  addiu $t2, %lo(D_8012CF30) # addiu $t2, $t2, -0x30d0
/* 09A874 80111E04 ACC50020 */  sw    $a1, 0x20($a2)
/* 09A878 80111E08 8D180000 */  lw    $t8, ($t0)
/* 09A87C 80111E0C 00002025 */  move  $a0, $zero
/* 09A880 80111E10 0018C880 */  sll   $t9, $t8, 2
/* 09A884 80111E14 0338C821 */  addu  $t9, $t9, $t8
/* 09A888 80111E18 0019C8C0 */  sll   $t9, $t9, 3
/* 09A88C 80111E1C 032A1021 */  addu  $v0, $t9, $t2
/* 09A890 80111E20 ACC20024 */  sw    $v0, 0x24($a2)
/* 09A894 80111E24 18A0001B */  blez  $a1, .L80111E94_ovl2
/* 09A898 80111E28 8CE30008 */   lw    $v1, 8($a3)
/* 09A89C 80111E2C A0400000 */  sb    $zero, ($v0)
.L80111E30_ovl2:
/* 09A8A0 80111E30 8C6D0000 */  lw    $t5, ($v1)
/* 09A8A4 80111E34 24840001 */  addiu $a0, $a0, 1
/* 09A8A8 80111E38 24630024 */  addiu $v1, $v1, 0x24
/* 09A8AC 80111E3C AC4D0004 */  sw    $t5, 4($v0)
/* 09A8B0 80111E40 8C6CFFE0 */  lw    $t4, -0x20($v1)
/* 09A8B4 80111E44 24420028 */  addiu $v0, $v0, 0x28
/* 09A8B8 80111E48 AC4CFFE0 */  sw    $t4, -0x20($v0)
/* 09A8BC 80111E4C 8C6FFFE4 */  lw    $t7, -0x1c($v1)
/* 09A8C0 80111E50 AC4FFFE4 */  sw    $t7, -0x1c($v0)
/* 09A8C4 80111E54 8C6EFFE8 */  lw    $t6, -0x18($v1)
/* 09A8C8 80111E58 AC4EFFE8 */  sw    $t6, -0x18($v0)
/* 09A8CC 80111E5C 8C6FFFEC */  lw    $t7, -0x14($v1)
/* 09A8D0 80111E60 AC4FFFEC */  sw    $t7, -0x14($v0)
/* 09A8D4 80111E64 8C6EFFF0 */  lw    $t6, -0x10($v1)
/* 09A8D8 80111E68 AC4EFFF0 */  sw    $t6, -0x10($v0)
/* 09A8DC 80111E6C 8C6FFFF4 */  lw    $t7, -0xc($v1)
/* 09A8E0 80111E70 AC4FFFF4 */  sw    $t7, -0xc($v0)
/* 09A8E4 80111E74 8C6EFFF8 */  lw    $t6, -8($v1)
/* 09A8E8 80111E78 AC4EFFF8 */  sw    $t6, -8($v0)
/* 09A8EC 80111E7C 8C6FFFFC */  lw    $t7, -4($v1)
/* 09A8F0 80111E80 AC4FFFFC */  sw    $t7, -4($v0)
/* 09A8F4 80111E84 8CC50020 */  lw    $a1, 0x20($a2)
/* 09A8F8 80111E88 0085082A */  slt   $at, $a0, $a1
/* 09A8FC 80111E8C 5420FFE8 */  bnezl $at, .L80111E30_ovl2
/* 09A900 80111E90 A0400000 */   sb    $zero, ($v0)
.L80111E94_ovl2:
/* 09A904 80111E94 8D180000 */  lw    $t8, ($t0)
/* 09A908 80111E98 8D2A0000 */  lw    $t2, ($t1)
/* 09A90C 80111E9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09A910 80111EA0 3C0C80FF */  lui   $t4, (0x80FFFF80 >> 16) # lui $t4, 0x80ff
/* 09A914 80111EA4 0305C821 */  addu  $t9, $t8, $a1
/* 09A918 80111EA8 254B0001 */  addiu $t3, $t2, 1
/* 09A91C 80111EAC AD190000 */  sw    $t9, ($t0)
/* 09A920 80111EB0 AD2B0000 */  sw    $t3, ($t1)
/* 09A924 80111EB4 358CFF80 */  ori   $t4, (0x80FFFF80 & 0xFFFF) # ori $t4, $t4, 0xff80
/* 09A928 80111EB8 3C018013 */  lui   $at, %hi(D_8012D924) # $at, 0x8013
/* 09A92C 80111EBC AC2CD924 */  sw    $t4, %lo(D_8012D924)($at)
/* 09A930 80111EC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 09A934 80111EC4 03E00008 */  jr    $ra
/* 09A938 80111EC8 00C01025 */   move  $v0, $a2
.type func_80111C88, @function
.size func_80111C88, . - func_80111C88
