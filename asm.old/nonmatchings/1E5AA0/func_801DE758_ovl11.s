glabel func_801DE758_ovl11
/* 1E9018 801DE758 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1E901C 801DE75C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E9020 801DE760 AFA40000 */  sw         $a0, 0x0($sp)
.L801DE764_ovl16:
/* 1E9024 801DE764 3C0F800F */  lui        $t7, %hi(D_800E9E20)
/* 1E9028 801DE768 8DC20000 */  lw         $v0, 0x0($t6)
/* 1E902C 801DE76C 25EF9E20 */  addiu      $t7, $t7, %lo(D_800E9E20)
/* 1E9030 801DE770 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1E9034 801DE774 00021080 */  sll        $v0, $v0, 2
/* 1E9038 801DE778 004F1821 */  addu       $v1, $v0, $t7
/* 1E903C 801DE77C 8C780000 */  lw         $t8, 0x0($v1)
.L801DE780_ovl12:
/* 1E9040 801DE780 00220821 */  addu       $at, $at, $v0
/* 1E9044 801DE784 1700000B */  bnez       $t8, .L801DE7B4_ovl11
.L801DE788_ovl14:
/* 1E9048 801DE788 00000000 */   nop
.L801DE78C_ovl10:
/* 1E904C 801DE78C C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
glabel func_801DE790_ovl12
/* 1E9050 801DE790 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1E9054 801DE794 00220821 */  addu       $at, $at, $v0
/* 1E9058 801DE798 C4263750 */  lwc1       $f6, %lo(D_800E3750)($at)
/* 1E905C 801DE79C 24190001 */  addiu      $t9, $zero, 0x1
.L801DE7A0_ovl17:
/* 1E9060 801DE7A0 4606203C */  c.lt.s     $f4, $f6
.L801DE7A4_ovl15:
/* 1E9064 801DE7A4 00000000 */  nop
/* 1E9068 801DE7A8 45000002 */  bc1f       .L801DE7B4_ovl11
.L801DE7AC_ovl9:
/* 1E906C 801DE7AC 00000000 */   nop
.L801DE7B0_ovl10:
/* 1E9070 801DE7B0 AC790000 */  sw         $t9, 0x0($v1)
.L801DE7B4_ovl11:
/* 1E9074 801DE7B4 03E00008 */  jr         $ra
/* 1E9078 801DE7B8 00000000 */   nop
