nonmatching saveCalcHeaderChecksum, 0x78

glabel saveCalcHeaderChecksum
    /* 612B8 800B9068 3C06800F */  lui        $a2, %hi(gSaveBuffer1)
    /* 612BC 800B906C 3C07800F */  lui        $a3, %hi(D_800ECA04)
    /* 612C0 800B9070 24E7CA04 */  addiu      $a3, $a3, %lo(D_800ECA04)
    /* 612C4 800B9074 24C6C9F8 */  addiu      $a2, $a2, %lo(gSaveBuffer1)
    /* 612C8 800B9078 3C049753 */  lui        $a0, (0x97538642 >> 16)
    /* 612CC 800B907C 00C01025 */  or         $v0, $a2, $zero
    /* 612D0 800B9080 00E01825 */  or         $v1, $a3, $zero
    /* 612D4 800B9084 10E60014 */  beq        $a3, $a2, .L800B90D8
    /* 612D8 800B9088 34848642 */   ori       $a0, $a0, (0x97538642 & 0xFFFF)
    /* 612DC 800B908C 2405000C */  addiu      $a1, $zero, 0xC
    /* 612E0 800B9090 10A00007 */  beqz       $a1, .L800B90B0
    /* 612E4 800B9094 24C5000C */   addiu     $a1, $a2, 0xC
  .L800B9098:
    /* 612E8 800B9098 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 612EC 800B909C 24420004 */  addiu      $v0, $v0, 0x4
    /* 612F0 800B90A0 14A2FFFD */  bne        $a1, $v0, .L800B9098
    /* 612F4 800B90A4 008E2021 */   addu      $a0, $a0, $t6
    /* 612F8 800B90A8 1047000B */  beq        $v0, $a3, .L800B90D8
    /* 612FC 800B90AC 00000000 */   nop
  .L800B90B0:
    /* 61300 800B90B0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 61304 800B90B4 8C580004 */  lw         $t8, 0x4($v0)
    /* 61308 800B90B8 8C590008 */  lw         $t9, 0x8($v0)
    /* 6130C 800B90BC 008F2021 */  addu       $a0, $a0, $t7
    /* 61310 800B90C0 8C48000C */  lw         $t0, 0xC($v0)
    /* 61314 800B90C4 00982021 */  addu       $a0, $a0, $t8
    /* 61318 800B90C8 24420010 */  addiu      $v0, $v0, 0x10
    /* 6131C 800B90CC 00992021 */  addu       $a0, $a0, $t9
    /* 61320 800B90D0 1443FFF7 */  bne        $v0, $v1, .L800B90B0
    /* 61324 800B90D4 00882021 */   addu      $a0, $a0, $t0
  .L800B90D8:
    /* 61328 800B90D8 03E00008 */  jr         $ra
    /* 6132C 800B90DC 00801025 */   or        $v0, $a0, $zero
endlabel saveCalcHeaderChecksum
.size saveCalcHeaderChecksum, . - saveCalcHeaderChecksum
