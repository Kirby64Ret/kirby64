glabel func_801DEE50_ovl11
/* 1E9710 801DEE50 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1E9714 801DEE54 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1E9718 801DEE58 8CCE0000 */  lw    $t6, ($a2)
/* 1E971C 801DEE5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E9720 801DEE60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9724 801DEE64 8DC30000 */  lw    $v1, ($t6)
/* 1E9728 801DEE68 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 1E972C 801DEE6C 3C04800E */ lui $a0, %hi(D_800DE350)
/* 1E9730 801DEE70 00031880 */  sll   $v1, $v1, 2
/* 1E9734 801DEE74 00431021 */  addu  $v0, $v0, $v1
/* 1E9738 801DEE78 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 1E973C 801DEE7C 00832021 */  addu  $a0, $a0, $v1
/* 1E9740 801DEE80 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1E9744 801DEE84 240F0002 */  li    $t7, 2
/* 1E9748 801DEE88 24180015 */  li    $t8, 21
/* 1E974C 801DEE8C 24190001 */  li    $t9, 1
/* 1E9750 801DEE90 AC4F0070 */  sw    $t7, 0x70($v0)
/* 1E9754 801DEE94 AC580068 */  sw    $t8, 0x68($v0)
/* 1E9758 801DEE98 AC59006C */  sw    $t9, 0x6c($v0)
/* 1E975C 801DEE9C 8CC90000 */  lw    $t1, ($a2)
/* 1E9760 801DEEA0 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 1E9764 801DEEA4 24080001 */  li    $t0, 1
/* 1E9768 801DEEA8 8D2A0000 */  lw    $t2, ($t1)
/* 1E976C 801DEEAC 3C053F80 */  lui   $a1, 0x3f80
/* 1E9770 801DEEB0 000A5880 */  sll   $t3, $t2, 2
/* 1E9774 801DEEB4 002B0821 */  addu  $at, $at, $t3
/* 1E9778 801DEEB8 0C076CAF */  jal   func_801DB2BC_ovl11
/* 1E977C 801DEEBC AC28A1A0 */ sw $t0, %lo(D_800EA1A0)($at)
/* 1E9780 801DEEC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E9784 801DEEC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9788 801DEEC8 03E00008 */  jr    $ra
/* 1E978C 801DEECC 00000000 */   nop   
.type func_801DEE50_ovl11, @function
.size func_801DEE50_ovl11, . - func_801DEE50_ovl11
