glabel func_80110CCC
/* 09973C 80110CCC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 099740 80110CD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 099744 80110CD4 8CAE0010 */  lw    $t6, 0x10($a1)
/* 099748 80110CD8 00A03825 */  move  $a3, $a1
/* 09974C 80110CDC 8C820000 */  lw    $v0, ($a0)
/* 099750 80110CE0 000E7840 */  sll   $t7, $t6, 1
/* 099754 80110CE4 05E00067 */  bltz  $t7, .L80110E84_ovl2
/* 099758 80110CE8 2401FFFF */   li    $at, -1
/* 09975C 80110CEC 14410005 */  bne   $v0, $at, .L80110D04_ovl2
/* 099760 80110CF0 24180002 */   li    $t8, 2
/* 099764 80110CF4 A0D80002 */  sb    $t8, 2($a2)
/* 099768 80110CF8 8CB9000C */  lw    $t9, 0xc($a1)
/* 09976C 80110CFC 10000061 */  b     .L80110E84_ovl2
/* 099770 80110D00 A0D90003 */   sb    $t9, 3($a2)
.L80110D04_ovl2:
/* 099774 80110D04 8C830014 */  lw    $v1, 0x14($a0)
/* 099778 80110D08 3C0B800E */  lui   $t3, %hi(D_800E7CE0) # $t3, 0x800e
/* 09977C 80110D0C 256B7CE0 */  addiu $t3, %lo(D_800E7CE0) # addiu $t3, $t3, 0x7ce0
/* 099780 80110D10 00035000 */  sll   $t2, $v1, 0
/* 099784 80110D14 0540005B */  bltz  $t2, .L80110E84_ovl2
/* 099788 80110D18 00024080 */   sll   $t0, $v0, 2
/* 09978C 80110D1C 010B4821 */  addu  $t1, $t0, $t3
/* 099790 80110D20 8D2C0000 */  lw    $t4, ($t1)
/* 099794 80110D24 55800058 */  bnezl $t4, .L80110E88_ovl2
/* 099798 80110D28 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09979C 80110D2C 90E50009 */  lbu   $a1, 9($a3)
/* 0997A0 80110D30 24010001 */  li    $at, 1
/* 0997A4 80110D34 306D0001 */  andi  $t5, $v1, 1
/* 0997A8 80110D38 10A10008 */  beq   $a1, $at, .L80110D5C_ovl2
/* 0997AC 80110D3C 24010002 */   li    $at, 2
/* 0997B0 80110D40 10A1000F */  beq   $a1, $at, .L80110D80_ovl2
/* 0997B4 80110D44 30790002 */   andi  $t9, $v1, 2
/* 0997B8 80110D48 24010003 */  li    $at, 3
/* 0997BC 80110D4C 10A10015 */  beq   $a1, $at, .L80110DA4_ovl2
/* 0997C0 80110D50 306D0004 */   andi  $t5, $v1, 4
/* 0997C4 80110D54 1000001C */  b     .L80110DC8_ovl2
/* 0997C8 80110D58 3C048013 */   lui   $a0, %hi(D_80128AF0) # $a0, 0x8013
.L80110D5C_ovl2:
/* 0997CC 80110D5C 11A0001E */  beqz  $t5, .L80110DD8_ovl2
/* 0997D0 80110D60 240E0007 */   li    $t6, 7
/* 0997D4 80110D64 A0CE0002 */  sb    $t6, 2($a2)
/* 0997D8 80110D68 8C8F0014 */  lw    $t7, %lo(D_80130014)($a0)
/* 0997DC 80110D6C 000FC0C0 */  sll   $t8, $t7, 3
/* 0997E0 80110D70 07030045 */  bgezl $t8, .L80110E88_ovl2
/* 0997E4 80110D74 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0997E8 80110D78 10000042 */  b     .L80110E84_ovl2
/* 0997EC 80110D7C A0C00002 */   sb    $zero, 2($a2)
.L80110D80_ovl2:
/* 0997F0 80110D80 13200015 */  beqz  $t9, .L80110DD8_ovl2
/* 0997F4 80110D84 240A0008 */   li    $t2, 8
/* 0997F8 80110D88 A0CA0002 */  sb    $t2, 2($a2)
/* 0997FC 80110D8C 8C8B0014 */  lw    $t3, %lo(D_80130014)($a0)
/* 099800 80110D90 000B60C0 */  sll   $t4, $t3, 3
/* 099804 80110D94 0583003C */  bgezl $t4, .L80110E88_ovl2
/* 099808 80110D98 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09980C 80110D9C 10000039 */  b     .L80110E84_ovl2
/* 099810 80110DA0 A0C00002 */   sb    $zero, 2($a2)
.L80110DA4_ovl2:
/* 099814 80110DA4 11A0000C */  beqz  $t5, .L80110DD8_ovl2
/* 099818 80110DA8 240E0009 */   li    $t6, 9
/* 09981C 80110DAC A0CE0002 */  sb    $t6, 2($a2)
/* 099820 80110DB0 8C8F0014 */  lw    $t7, %lo(D_80130014)($a0)
/* 099824 80110DB4 000FC0C0 */  sll   $t8, $t7, 3
/* 099828 80110DB8 07030033 */  bgezl $t8, .L80110E88_ovl2
/* 09982C 80110DBC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 099830 80110DC0 10000030 */  b     .L80110E84_ovl2
/* 099834 80110DC4 A0C00002 */   sb    $zero, 2($a2)
.L80110DC8_ovl2:
/* 099838 80110DC8 0C02909C */  jal   func_800A4270_ovl2
/* 09983C 80110DCC 24848AF0 */   addiu $a0, %lo(D_80128AF0) # addiu $a0, $a0, -0x7510
/* 099840 80110DD0 1000002D */  b     .L80110E88_ovl2
/* 099844 80110DD4 8FBF0014 */   lw    $ra, 0x14($sp)
.L80110DD8_ovl2:
/* 099848 80110DD8 8CF9000C */  lw    $t9, 0xc($a3)
/* 09984C 80110DDC 44800000 */  mtc1  $zero, $f0
/* 099850 80110DE0 3C0D800E */  lui   $t5, %hi(D_800E7B20) # $t5, 0x800e
/* 099854 80110DE4 A0D90003 */  sb    $t9, 3($a2)
/* 099858 80110DE8 8C8A0014 */  lw    $t2, 0x14($a0)
/* 09985C 80110DEC 3C030800 */  lui   $v1, 0x800
/* 099860 80110DF0 3C0C800E */  lui   $t4, %hi(D_800E7B20) # $t4, 0x800e
/* 099864 80110DF4 000A5900 */  sll   $t3, $t2, 4
/* 099868 80110DF8 05600007 */  bltz  $t3, .L80110E18_ovl2
/* 09986C 80110DFC 25AD7B20 */   addiu $t5, %lo(D_800E7B20) # addiu $t5, $t5, 0x7b20
/* 099870 80110E00 258C7B20 */  addiu $t4, %lo(D_800E7B20) # addiu $t4, $t4, 0x7b20
/* 099874 80110E04 010C1021 */  addu  $v0, $t0, $t4
/* 099878 80110E08 C4440000 */  lwc1  $f4, ($v0)
/* 09987C 80110E0C C4E60004 */  lwc1  $f6, 4($a3)
/* 099880 80110E10 46062201 */  sub.s $f8, $f4, $f6
/* 099884 80110E14 E4480000 */  swc1  $f8, ($v0)
.L80110E18_ovl2:
/* 099888 80110E18 010D1021 */  addu  $v0, $t0, $t5
/* 09988C 80110E1C C44A0000 */  lwc1  $f10, ($v0)
/* 099890 80110E20 240E0001 */  li    $t6, 1
/* 099894 80110E24 4600503E */  c.le.s $f10, $f0
/* 099898 80110E28 00000000 */  nop   
/* 09989C 80110E2C 45020005 */  bc1fl .L80110E44_ovl2
/* 0998A0 80110E30 240F0002 */   li    $t7, 2
/* 0998A4 80110E34 A0CE0002 */  sb    $t6, 2($a2)
/* 0998A8 80110E38 10000012 */  b     .L80110E84_ovl2
/* 0998AC 80110E3C E4400000 */   swc1  $f0, ($v0)
/* 0998B0 80110E40 240F0002 */  li    $t7, 2
.L80110E44_ovl2:
/* 0998B4 80110E44 A0CF0002 */  sb    $t7, 2($a2)
/* 0998B8 80110E48 8C980014 */  lw    $t8, 0x14($a0)
/* 0998BC 80110E4C 0303C824 */  and   $t9, $t8, $v1
/* 0998C0 80110E50 1720000B */  bnez  $t9, .L80110E80_ovl2
/* 0998C4 80110E54 3C0A800E */   lui   $t2, 0x800e
/* 0998C8 80110E58 01485021 */  addu  $t2, $t2, $t0
/* 0998CC 80110E5C 8D4AD710 */  lw    $t2, -0x28f0($t2)
/* 0998D0 80110E60 24010017 */  li    $at, 23
/* 0998D4 80110E64 240B000F */  li    $t3, 15
/* 0998D8 80110E68 15410003 */  bne   $t2, $at, .L80110E78_ovl2
/* 0998DC 80110E6C 240C002D */   li    $t4, 45
/* 0998E0 80110E70 10000004 */  b     .L80110E84_ovl2
/* 0998E4 80110E74 AD2B0000 */   sw    $t3, ($t1)
.L80110E78_ovl2:
/* 0998E8 80110E78 10000002 */  b     .L80110E84_ovl2
/* 0998EC 80110E7C AD2C0000 */   sw    $t4, ($t1)
.L80110E80_ovl2:
/* 0998F0 80110E80 AD200000 */  sw    $zero, ($t1)
.L80110E84_ovl2:
/* 0998F4 80110E84 8FBF0014 */  lw    $ra, 0x14($sp)
.L80110E88_ovl2:
/* 0998F8 80110E88 27BD0018 */  addiu $sp, $sp, 0x18
/* 0998FC 80110E8C 03E00008 */  jr    $ra
/* 099900 80110E90 00000000 */   nop   
