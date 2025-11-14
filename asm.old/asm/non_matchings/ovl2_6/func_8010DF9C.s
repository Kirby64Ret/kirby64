glabel func_8010DF9C
/* 096A0C 8010DF9C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 096A10 8010DFA0 3C0E8013 */  lui   $t6, %hi(D_80129410) # $t6, 0x8013
/* 096A14 8010DFA4 8DCE9410 */  lw    $t6, %lo(D_80129410)($t6)
/* 096A18 8010DFA8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 096A1C 8010DFAC AFB20020 */  sw    $s2, 0x20($sp)
/* 096A20 8010DFB0 27AF0030 */  addiu $t7, $sp, 0x30
/* 096A24 8010DFB4 3C018013 */  lui   $at, %hi(D_8012BD48) # $at, 0x8013
/* 096A28 8010DFB8 00809025 */  move  $s2, $a0
/* 096A2C 8010DFBC AFB1001C */  sw    $s1, 0x1c($sp)
/* 096A30 8010DFC0 AFB00018 */  sw    $s0, 0x18($sp)
/* 096A34 8010DFC4 AFA00034 */  sw    $zero, 0x34($sp)
/* 096A38 8010DFC8 AC2FBD48 */  sw    $t7, %lo(D_8012BD48)($at)
/* 096A3C 8010DFCC 24050014 */  li    $a1, 20
/* 096A40 8010DFD0 0C043769 */  jal   func_8010DDA4
/* 096A44 8010DFD4 AFAE0030 */   sw    $t6, 0x30($sp)
/* 096A48 8010DFD8 3C028013 */  lui   $v0, %hi(D_8012D940) # $v0, 0x8013
/* 096A4C 8010DFDC 8C42D940 */  lw    $v0, %lo(D_8012D940)($v0)
/* 096A50 8010DFE0 3C108013 */  lui   $s0, %hi(D_8012D948) # $s0, 0x8013
/* 096A54 8010DFE4 2610D948 */  addiu $s0, %lo(D_8012D948) # addiu $s0, $s0, -0x26b8
/* 096A58 8010DFE8 10400010 */  beqz  $v0, .L8010E02C_ovl2
/* 096A5C 8010DFEC 00008825 */   move  $s1, $zero
.L8010DFF0_ovl2:
/* 096A60 8010DFF0 92180002 */  lbu   $t8, 2($s0)
/* 096A64 8010DFF4 02402025 */  move  $a0, $s2
/* 096A68 8010DFF8 33190001 */  andi  $t9, $t8, 1
/* 096A6C 8010DFFC 57200008 */  bnezl $t9, .L8010E020_ovl2
/* 096A70 8010E000 26310001 */   addiu $s1, $s1, 1
/* 096A74 8010E004 8E080004 */  lw    $t0, 4($s0)
/* 096A78 8010E008 02202825 */  move  $a1, $s1
/* 096A7C 8010E00C 0C043769 */  jal   func_8010DDA4
/* 096A80 8010E010 AFA80030 */   sw    $t0, 0x30($sp)
/* 096A84 8010E014 3C028013 */  lui   $v0, %hi(D_8012D940) # $v0, 0x8013
/* 096A88 8010E018 8C42D940 */  lw    $v0, %lo(D_8012D940)($v0)
/* 096A8C 8010E01C 26310001 */  addiu $s1, $s1, 1
.L8010E020_ovl2:
/* 096A90 8010E020 0222082B */  sltu  $at, $s1, $v0
/* 096A94 8010E024 1420FFF2 */  bnez  $at, .L8010DFF0_ovl2
/* 096A98 8010E028 261000B8 */   addiu $s0, $s0, 0xb8
.L8010E02C_ovl2:
/* 096A9C 8010E02C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 096AA0 8010E030 8FA20034 */  lw    $v0, 0x34($sp)
/* 096AA4 8010E034 8FB00018 */  lw    $s0, 0x18($sp)
/* 096AA8 8010E038 8FB1001C */  lw    $s1, 0x1c($sp)
/* 096AAC 8010E03C 8FB20020 */  lw    $s2, 0x20($sp)
/* 096AB0 8010E040 03E00008 */  jr    $ra
/* 096AB4 8010E044 27BD0040 */   addiu $sp, $sp, 0x40
.type func_8010DF9C, @function
.size func_8010DF9C, . - func_8010DF9C
