glabel func_80160810_ovl5
/* 107C80 80160810 00047080 */  sll        $t6, $a0, 2
/* 107C84 80160814 3C0F8019 */  lui        $t7, %hi(D_8018E030_ovl5)
/* 107C88 80160818 01EE7821 */  addu       $t7, $t7, $t6
/* 107C8C 8016081C 8DEFE030 */  lw         $t7, %lo(D_8018E030_ovl5)($t7)
/* 107C90 80160820 3C19800F */  lui        $t9, %hi(D_800EA520)
/* 107C94 80160824 000FC080 */  sll        $t8, $t7, 2
/* 107C98 80160828 0338C821 */  addu       $t9, $t9, $t8
/* 107C9C 8016082C 8F39A520 */  lw         $t9, %lo(D_800EA520)($t9)
/* 107CA0 80160830 2728FFFC */  addiu      $t0, $t9, -0x4
/* 107CA4 80160834 2D01000A */  sltiu      $at, $t0, 0xA
/* 107CA8 80160838 10200008 */  beqz       $at, .L8016085C_ovl5
/* 107CAC 8016083C 00084080 */   sll       $t0, $t0, 2
/* 107CB0 80160840 3C018019 */  lui        $at, %hi(jtbl_8018D518_ovl5)
/* 107CB4 80160844 00280821 */  addu       $at, $at, $t0
/* 107CB8 80160848 8C28D518 */  lw         $t0, %lo(jtbl_8018D518_ovl5)($at)
/* 107CBC 8016084C 01000008 */  jr         $t0
/* 107CC0 80160850 00000000 */   nop
/* 107CC4 80160854 03E00008 */  jr         $ra
/* 107CC8 80160858 00001025 */   or        $v0, $zero, $zero
.L8016085C_ovl5:
/* 107CCC 8016085C 24020001 */  addiu      $v0, $zero, 0x1
/* 107CD0 80160860 03E00008 */  jr         $ra
/* 107CD4 80160864 00000000 */   nop
