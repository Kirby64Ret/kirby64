nonmatching func_800F7484, 0xB8

glabel func_800F7484
    /* 7FEF4 800F7484 3C18800D */  lui        $t8, %hi(D_800D6D10)
    /* 7FEF8 800F7488 27186D10 */  addiu      $t8, $t8, %lo(D_800D6D10)
    /* 7FEFC 800F748C 3C05800D */  lui        $a1, %hi(D_800D6C94 + 0x3C)
    /* 7FF00 800F7490 000478C0 */  sll        $t7, $a0, 3
    /* 7FF04 800F7494 3C09800D */  lui        $t1, %hi(D_800D6D10)
    /* 7FF08 800F7498 25296D10 */  addiu      $t1, $t1, %lo(D_800D6D10)
    /* 7FF0C 800F749C 01F83021 */  addu       $a2, $t7, $t8
    /* 7FF10 800F74A0 24A56CD0 */  addiu      $a1, $a1, %lo(D_800D6C94 + 0x3C)
    /* 7FF14 800F74A4 24080020 */  addiu      $t0, $zero, 0x20
    /* 7FF18 800F74A8 3C078000 */  lui        $a3, (0x80000000 >> 16)
  .L800F74AC:
    /* 7FF1C 800F74AC 00001025 */  or         $v0, $zero, $zero
    /* 7FF20 800F74B0 00001825 */  or         $v1, $zero, $zero
    /* 7FF24 800F74B4 00A02025 */  or         $a0, $a1, $zero
  .L800F74B8:
    /* 7FF28 800F74B8 90990000 */  lbu        $t9, 0x0($a0)
    /* 7FF2C 800F74BC 24630004 */  addiu      $v1, $v1, 0x4
    /* 7FF30 800F74C0 00021042 */  srl        $v0, $v0, 1
    /* 7FF34 800F74C4 332A0001 */  andi       $t2, $t9, 0x1
    /* 7FF38 800F74C8 51400003 */  beql       $t2, $zero, .L800F74D8
    /* 7FF3C 800F74CC 908B0001 */   lbu       $t3, 0x1($a0)
    /* 7FF40 800F74D0 00471025 */  or         $v0, $v0, $a3
    /* 7FF44 800F74D4 908B0001 */  lbu        $t3, 0x1($a0)
  .L800F74D8:
    /* 7FF48 800F74D8 00021042 */  srl        $v0, $v0, 1
    /* 7FF4C 800F74DC 316C0001 */  andi       $t4, $t3, 0x1
    /* 7FF50 800F74E0 51800003 */  beql       $t4, $zero, .L800F74F0
    /* 7FF54 800F74E4 908D0002 */   lbu       $t5, 0x2($a0)
    /* 7FF58 800F74E8 00471025 */  or         $v0, $v0, $a3
    /* 7FF5C 800F74EC 908D0002 */  lbu        $t5, 0x2($a0)
  .L800F74F0:
    /* 7FF60 800F74F0 00021042 */  srl        $v0, $v0, 1
    /* 7FF64 800F74F4 31AE0001 */  andi       $t6, $t5, 0x1
    /* 7FF68 800F74F8 51C00003 */  beql       $t6, $zero, .L800F7508
    /* 7FF6C 800F74FC 908F0003 */   lbu       $t7, 0x3($a0)
    /* 7FF70 800F7500 00471025 */  or         $v0, $v0, $a3
    /* 7FF74 800F7504 908F0003 */  lbu        $t7, 0x3($a0)
  .L800F7508:
    /* 7FF78 800F7508 00021042 */  srl        $v0, $v0, 1
    /* 7FF7C 800F750C 31F80001 */  andi       $t8, $t7, 0x1
    /* 7FF80 800F7510 13000002 */  beqz       $t8, .L800F751C
    /* 7FF84 800F7514 00000000 */   nop
    /* 7FF88 800F7518 00471025 */  or         $v0, $v0, $a3
  .L800F751C:
    /* 7FF8C 800F751C 1468FFE6 */  bne        $v1, $t0, .L800F74B8
    /* 7FF90 800F7520 24840004 */   addiu     $a0, $a0, 0x4
    /* 7FF94 800F7524 24A50020 */  addiu      $a1, $a1, 0x20
    /* 7FF98 800F7528 24C60004 */  addiu      $a2, $a2, 0x4
    /* 7FF9C 800F752C 14A9FFDF */  bne        $a1, $t1, .L800F74AC
    /* 7FFA0 800F7530 ACC2FFFC */   sw        $v0, -0x4($a2)
    /* 7FFA4 800F7534 03E00008 */  jr         $ra
    /* 7FFA8 800F7538 00000000 */   nop
endlabel func_800F7484
.size func_800F7484, . - func_800F7484
