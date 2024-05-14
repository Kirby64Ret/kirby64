.set noat
.set noreorder
.set gp=64
.include "macros.inc"

.section .text, "ax" 

glabel func_80035B20
/* 036720 80035B20 908E0016 */  lbu   $t6, 0x16($a0)
/* 036724 80035B24 24010002 */  li    $at, 2
/* 036728 80035B28 24020200 */  li    $v0, 512
/* 03672C 80035B2C 15C10003 */  bne   $t6, $at, .L80035B3C_ovl0
/* 036730 80035B30 24180006 */   li    $t8, 6
/* 036734 80035B34 10000001 */  b     .L80035B3C_ovl0
/* 036738 80035B38 24020100 */   li    $v0, 256
.L80035B3C_ovl0:
/* 03673C 80035B3C 908F0017 */  lbu   $t7, 0x17($a0)
/* 036740 80035B40 94880014 */  lhu   $t0, 0x14($a0)
/* 036744 80035B44 24010033 */  li    $at, 51
/* 036748 80035B48 030F1823 */  subu  $v1, $t8, $t7
/* 03674C 80035B4C 3079FFFF */  andi  $t9, $v1, 0xffff
/* 036750 80035B50 1501002D */  bne   $t0, $at, .L80035C08_ovl0
/* 036754 80035B54 03201825 */   move  $v1, $t9
/* 036758 80035B58 94890002 */  lhu   $t1, 2($a0)
/* 03675C 80035B5C 00695007 */  srav  $t2, $t1, $v1
/* 036760 80035B60 3145FFFF */  andi  $a1, $t2, 0xffff
/* 036764 80035B64 0045001A */  div   $zero, $v0, $a1
/* 036768 80035B68 00005812 */  mflo  $t3
/* 03676C 80035B6C 000B6080 */  sll   $t4, $t3, 2
/* 036770 80035B70 00056840 */  sll   $t5, $a1, 1
/* 036774 80035B74 31B8FFFF */  andi  $t8, $t5, 0xffff
/* 036778 80035B78 318EFFFF */  andi  $t6, $t4, 0xffff
/* 03677C 80035B7C 01D80019 */  multu $t6, $t8
/* 036780 80035B80 A48A001C */  sh    $t2, 0x1c($a0)
/* 036784 80035B84 240A07FF */  li    $t2, 2047
/* 036788 80035B88 14A00002 */  bnez  $a1, .L80035B94_ovl0
/* 03678C 80035B8C 00000000 */   nop   
/* 036790 80035B90 0007000D */  break 7
.L80035B94_ovl0:
/* 036794 80035B94 2401FFFF */  li    $at, -1
/* 036798 80035B98 14A10004 */  bne   $a1, $at, .L80035BAC_ovl0
/* 03679C 80035B9C 3C018000 */   lui   $at, 0x8000
/* 0367A0 80035BA0 14410002 */  bne   $v0, $at, .L80035BAC_ovl0
/* 0367A4 80035BA4 00000000 */   nop   
/* 0367A8 80035BA8 0006000D */  break 6
.L80035BAC_ovl0:
/* 0367AC 80035BAC 00007812 */  mflo  $t7
/* 0367B0 80035BB0 31F9FFFF */  andi  $t9, $t7, 0xffff
/* 0367B4 80035BB4 A48C001E */  sh    $t4, 0x1e($a0)
/* 0367B8 80035BB8 0145001A */  div   $zero, $t2, $a1
/* 0367BC 80035BBC 00194043 */  sra   $t0, $t9, 1
/* 0367C0 80035BC0 00005812 */  mflo  $t3
/* 0367C4 80035BC4 2509FFFF */  addiu $t1, $t0, -1
/* 0367C8 80035BC8 256C0001 */  addiu $t4, $t3, 1
/* 0367CC 80035BCC A48D0024 */  sh    $t5, 0x24($a0)
/* 0367D0 80035BD0 A48F0026 */  sh    $t7, 0x26($a0)
/* 0367D4 80035BD4 A4890020 */  sh    $t1, 0x20($a0)
/* 0367D8 80035BD8 14A00002 */  bnez  $a1, .L80035BE4_ovl0
/* 0367DC 80035BDC 00000000 */   nop   
/* 0367E0 80035BE0 0007000D */  break 7
.L80035BE4_ovl0:
/* 0367E4 80035BE4 2401FFFF */  li    $at, -1
/* 0367E8 80035BE8 14A10004 */  bne   $a1, $at, .L80035BFC_ovl0
/* 0367EC 80035BEC 3C018000 */   lui   $at, 0x8000
/* 0367F0 80035BF0 15410002 */  bne   $t2, $at, .L80035BFC_ovl0
/* 0367F4 80035BF4 00000000 */   nop   
/* 0367F8 80035BF8 0006000D */  break 6
.L80035BFC_ovl0:
/* 0367FC 80035BFC A48C0022 */  sh    $t4, 0x22($a0)
/* 036800 80035C00 03E00008 */  jr    $ra
/* 036804 80035C04 00000000 */   nop   
.L80035C08_ovl0:
/* 036808 80035C08 948D0006 */  lhu   $t5, 6($a0)
/* 03680C 80035C0C 94890002 */  lhu   $t1, 2($a0)
/* 036810 80035C10 00602825 */  move  $a1, $v1
/* 036814 80035C14 006D7007 */  srav  $t6, $t5, $v1
/* 036818 80035C18 25D80003 */  addiu $t8, $t6, 3
/* 03681C 80035C1C 330FFFFF */  andi  $t7, $t8, 0xffff
/* 036820 80035C20 004F001A */  div   $zero, $v0, $t7
/* 036824 80035C24 0000C812 */  mflo  $t9
/* 036828 80035C28 00A95007 */  srav  $t2, $t1, $a1
/* 03682C 80035C2C 00194080 */  sll   $t0, $t9, 2
/* 036830 80035C30 000A5840 */  sll   $t3, $t2, 1
/* 036834 80035C34 316CFFFF */  andi  $t4, $t3, 0xffff
/* 036838 80035C38 3106FFFF */  andi  $a2, $t0, 0xffff
/* 03683C 80035C3C 00CC0019 */  multu $a2, $t4
/* 036840 80035C40 A498001C */  sh    $t8, 0x1c($a0)
/* 036844 80035C44 24D8FFFF */  addiu $t8, $a2, -1
/* 036848 80035C48 15E00002 */  bnez  $t7, .L80035C54_ovl0
/* 03684C 80035C4C 00000000 */   nop   
/* 036850 80035C50 0007000D */  break 7
.L80035C54_ovl0:
/* 036854 80035C54 2401FFFF */  li    $at, -1
/* 036858 80035C58 15E10004 */  bne   $t7, $at, .L80035C6C_ovl0
/* 03685C 80035C5C 3C018000 */   lui   $at, 0x8000
/* 036860 80035C60 14410002 */  bne   $v0, $at, .L80035C6C_ovl0
/* 036864 80035C64 00000000 */   nop   
/* 036868 80035C68 0006000D */  break 6
.L80035C6C_ovl0:
/* 03686C 80035C6C 00003812 */  mflo  $a3
/* 036870 80035C70 00076C02 */  srl   $t5, $a3, 0x10
/* 036874 80035C74 30EEFFFF */  andi  $t6, $a3, 0xffff
/* 036878 80035C78 A488001E */  sh    $t0, 0x1e($a0)
/* 03687C 80035C7C A48B0024 */  sh    $t3, 0x24($a0)
/* 036880 80035C80 A48D0026 */  sh    $t5, 0x26($a0)
/* 036884 80035C84 A48E0020 */  sh    $t6, 0x20($a0)
/* 036888 80035C88 A4980022 */  sh    $t8, 0x22($a0)
/* 03688C 80035C8C 03E00008 */  jr    $ra
/* 036890 80035C90 00000000 */   nop   
/* 036894 80035C94 00000000 */  nop   
/* 036898 80035C98 00000000 */  nop   
/* 03689C 80035C9C 00000000 */  nop   
.type func_80035B20, @function
.size func_80035B20, . - func_80035B20
