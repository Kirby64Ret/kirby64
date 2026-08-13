nonmatching func_800F7404, 0x80

glabel func_800F7404
    /* 7FE74 800F7404 3C18800D */  lui        $t8, %hi(D_800D6D10)
    /* 7FE78 800F7408 27186D10 */  addiu      $t8, $t8, %lo(D_800D6D10)
    /* 7FE7C 800F740C 000478C0 */  sll        $t7, $a0, 3
    /* 7FE80 800F7410 3C05800D */  lui        $a1, %hi(D_800D6C94 + 0x3C)
    /* 7FE84 800F7414 3C08800D */  lui        $t0, %hi(D_800D6D10)
    /* 7FE88 800F7418 25086D10 */  addiu      $t0, $t0, %lo(D_800D6D10)
    /* 7FE8C 800F741C 24A56CD0 */  addiu      $a1, $a1, %lo(D_800D6C94 + 0x3C)
    /* 7FE90 800F7420 01F81821 */  addu       $v1, $t7, $t8
    /* 7FE94 800F7424 24070020 */  addiu      $a3, $zero, 0x20
  .L800F7428:
    /* 7FE98 800F7428 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FE9C 800F742C 00002025 */  or         $a0, $zero, $zero
    /* 7FEA0 800F7430 00A03025 */  or         $a2, $a1, $zero
  .L800F7434:
    /* 7FEA4 800F7434 30590001 */  andi       $t9, $v0, 0x1
    /* 7FEA8 800F7438 00021042 */  srl        $v0, $v0, 1
    /* 7FEAC 800F743C 30490001 */  andi       $t1, $v0, 0x1
    /* 7FEB0 800F7440 00021042 */  srl        $v0, $v0, 1
    /* 7FEB4 800F7444 304A0001 */  andi       $t2, $v0, 0x1
    /* 7FEB8 800F7448 00021042 */  srl        $v0, $v0, 1
    /* 7FEBC 800F744C 304B0001 */  andi       $t3, $v0, 0x1
    /* 7FEC0 800F7450 24840004 */  addiu      $a0, $a0, 0x4
    /* 7FEC4 800F7454 A0CB0003 */  sb         $t3, 0x3($a2)
    /* 7FEC8 800F7458 00021042 */  srl        $v0, $v0, 1
    /* 7FECC 800F745C A0CA0002 */  sb         $t2, 0x2($a2)
    /* 7FED0 800F7460 A0C90001 */  sb         $t1, 0x1($a2)
    /* 7FED4 800F7464 24C60004 */  addiu      $a2, $a2, 0x4
    /* 7FED8 800F7468 1487FFF2 */  bne        $a0, $a3, .L800F7434
    /* 7FEDC 800F746C A0D9FFFC */   sb        $t9, -0x4($a2)
    /* 7FEE0 800F7470 24A50020 */  addiu      $a1, $a1, 0x20
    /* 7FEE4 800F7474 14A8FFEC */  bne        $a1, $t0, .L800F7428
    /* 7FEE8 800F7478 24630004 */   addiu     $v1, $v1, 0x4
    /* 7FEEC 800F747C 03E00008 */  jr         $ra
    /* 7FEF0 800F7480 00000000 */   nop
endlabel func_800F7404
.size func_800F7404, . - func_800F7404
