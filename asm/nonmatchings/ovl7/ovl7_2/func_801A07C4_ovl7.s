nonmatching func_801A07C4_ovl7, 0xBC

glabel func_801A07C4_ovl7
    /* 146834 801A07C4 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 146838 801A07C8 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 14683C 801A07CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 146840 801A07D0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 146844 801A07D4 8DC30000 */  lw         $v1, 0x0($t6)
    /* 146848 801A07D8 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 14684C 801A07DC 3C0F800F */  lui        $t7, %hi(D_800E83E0)
    /* 146850 801A07E0 00033080 */  sll        $a2, $v1, 2
    /* 146854 801A07E4 00461021 */  addu       $v0, $v0, $a2
    /* 146858 801A07E8 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
    /* 14685C 801A07EC 01E67821 */  addu       $t7, $t7, $a2
    /* 146860 801A07F0 8C440090 */  lw         $a0, 0x90($v0)
    /* 146864 801A07F4 14800003 */  bnez       $a0, .L801A0804_ovl7
    /* 146868 801A07F8 00000000 */   nop
    /* 14686C 801A07FC 1000001C */  b          .L801A0870_ovl7
    /* 146870 801A0800 00001025 */   or        $v0, $zero, $zero
  .L801A0804_ovl7:
    /* 146874 801A0804 8DEF83E0 */  lw         $t7, %lo(D_800E83E0)($t7)
    /* 146878 801A0808 3C18800E */  lui        $t8, %hi(D_800E7730)
    /* 14687C 801A080C 0303C021 */  addu       $t8, $t8, $v1
    /* 146880 801A0810 51E0000D */  beql       $t7, $zero, .L801A0848_ovl7
    /* 146884 801A0814 9045003D */   lbu       $a1, 0x3D($v0)
    /* 146888 801A0818 93187730 */  lbu        $t8, %lo(D_800E7730)($t8)
    /* 14688C 801A081C 24010004 */  addiu      $at, $zero, 0x4
    /* 146890 801A0820 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 146894 801A0824 17010005 */  bne        $t8, $at, .L801A083C_ovl7
    /* 146898 801A0828 00862021 */   addu      $a0, $a0, $a2
    /* 14689C 801A082C 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
    /* 1468A0 801A0830 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
    /* 1468A4 801A0834 0C02C7B2 */  jal        assign_new_process_entry
    /* 1468A8 801A0838 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
  .L801A083C_ovl7:
    /* 1468AC 801A083C 1000000C */  b          .L801A0870_ovl7
    /* 1468B0 801A0840 24020001 */   addiu     $v0, $zero, 0x1
    /* 1468B4 801A0844 9045003D */  lbu        $a1, 0x3D($v0)
  .L801A0848_ovl7:
    /* 1468B8 801A0848 14A00007 */  bnez       $a1, .L801A0868_ovl7
    /* 1468BC 801A084C 24B9FFFF */   addiu     $t9, $a1, -0x1
    /* 1468C0 801A0850 0C0445EF */  jal        func_801117BC
    /* 1468C4 801A0854 00602825 */   or        $a1, $v1, $zero
    /* 1468C8 801A0858 0C044713 */  jal        func_80111C4C
    /* 1468CC 801A085C 00402025 */   or        $a0, $v0, $zero
    /* 1468D0 801A0860 10000003 */  b          .L801A0870_ovl7
    /* 1468D4 801A0864 00001025 */   or        $v0, $zero, $zero
  .L801A0868_ovl7:
    /* 1468D8 801A0868 A059003D */  sb         $t9, 0x3D($v0)
    /* 1468DC 801A086C 00001025 */  or         $v0, $zero, $zero
  .L801A0870_ovl7:
    /* 1468E0 801A0870 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1468E4 801A0874 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1468E8 801A0878 03E00008 */  jr         $ra
    /* 1468EC 801A087C 00000000 */   nop
endlabel func_801A07C4_ovl7
.size func_801A07C4_ovl7, . - func_801A07C4_ovl7
