glabel func_801AA720_ovl7
/* 150790 801AA720 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 150794 801AA724 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 150798 801AA728 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15079C 801AA72C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1507A0 801AA730 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1507A4 801AA734 3C19800E */  lui        $t9, %hi(D_800DD8D0)
/* 1507A8 801AA738 00001025 */  or         $v0, $zero, $zero
/* 1507AC 801AA73C 000FC080 */  sll        $t8, $t7, 2
/* 1507B0 801AA740 0338C821 */  addu       $t9, $t9, $t8
/* 1507B4 801AA744 8F39D8D0 */  lw         $t9, %lo(D_800DD8D0)($t9)
/* 1507B8 801AA748 00194782 */  srl        $t0, $t9, 30
/* 1507BC 801AA74C 11000003 */  beqz       $t0, .L801AA75C_ovl7
/* 1507C0 801AA750 00000000 */   nop
/* 1507C4 801AA754 10000001 */  b          .L801AA75C_ovl7
/* 1507C8 801AA758 24020001 */   addiu     $v0, $zero, 0x1
.L801AA75C_ovl7:
/* 1507CC 801AA75C 10400005 */  beqz       $v0, .L801AA774_ovl7
/* 1507D0 801AA760 00000000 */   nop
/* 1507D4 801AA764 0C06A9A4 */  jal        func_801AA690_ovl7
/* 1507D8 801AA768 00000000 */   nop
/* 1507DC 801AA76C 10000004 */  b          .L801AA780_ovl7
/* 1507E0 801AA770 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AA774_ovl7:
/* 1507E4 801AA774 0C06A980 */  jal        func_801AA600_ovl7
/* 1507E8 801AA778 00000000 */   nop
/* 1507EC 801AA77C 8FBF0014 */  lw         $ra, 0x14($sp)
.L801AA780_ovl7:
/* 1507F0 801AA780 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1507F4 801AA784 03E00008 */  jr         $ra
/* 1507F8 801AA788 00000000 */   nop
