glabel func_800F7404
/* 07FE74 800F7404 3C18800D */  lui   $t8, %hi(D_800D6D10) # $t8, 0x800d
/* 07FE78 800F7408 27186D10 */  addiu $t8, %lo(D_800D6D10) # addiu $t8, $t8, 0x6d10
/* 07FE7C 800F740C 000478C0 */  sll   $t7, $a0, 3
/* 07FE80 800F7410 3C05800D */  lui   $a1, %hi(D_800D6CD0) # $a1, 0x800d
/* 07FE84 800F7414 3C08800D */  lui   $t0, %hi(D_800D6D10) # $t0, 0x800d
/* 07FE88 800F7418 25086D10 */  addiu $t0, %lo(D_800D6D10) # addiu $t0, $t0, 0x6d10
/* 07FE8C 800F741C 24A56CD0 */  addiu $a1, %lo(D_800D6CD0) # addiu $a1, $a1, 0x6cd0
/* 07FE90 800F7420 01F81821 */  addu  $v1, $t7, $t8
/* 07FE94 800F7424 24070020 */  li    $a3, 32
.L800F7428_ovl2:
/* 07FE98 800F7428 8C620000 */  lw    $v0, ($v1)
/* 07FE9C 800F742C 00002025 */  move  $a0, $zero
/* 07FEA0 800F7430 00A03025 */  move  $a2, $a1
.L800F7434_ovl2:
/* 07FEA4 800F7434 30590001 */  andi  $t9, $v0, 1
/* 07FEA8 800F7438 00021042 */  srl   $v0, $v0, 1
/* 07FEAC 800F743C 30490001 */  andi  $t1, $v0, 1
/* 07FEB0 800F7440 00021042 */  srl   $v0, $v0, 1
/* 07FEB4 800F7444 304A0001 */  andi  $t2, $v0, 1
/* 07FEB8 800F7448 00021042 */  srl   $v0, $v0, 1
/* 07FEBC 800F744C 304B0001 */  andi  $t3, $v0, 1
/* 07FEC0 800F7450 24840004 */  addiu $a0, $a0, 4
/* 07FEC4 800F7454 A0CB0003 */  sb    $t3, 3($a2)
/* 07FEC8 800F7458 00021042 */  srl   $v0, $v0, 1
/* 07FECC 800F745C A0CA0002 */  sb    $t2, 2($a2)
/* 07FED0 800F7460 A0C90001 */  sb    $t1, 1($a2)
/* 07FED4 800F7464 24C60004 */  addiu $a2, $a2, 4
/* 07FED8 800F7468 1487FFF2 */  bne   $a0, $a3, .L800F7434_ovl2
/* 07FEDC 800F746C A0D9FFFC */   sb    $t9, -4($a2)
/* 07FEE0 800F7470 24A50020 */  addiu $a1, $a1, 0x20
/* 07FEE4 800F7474 14A8FFEC */  bne   $a1, $t0, .L800F7428_ovl2
/* 07FEE8 800F7478 24630004 */   addiu $v1, $v1, 4
/* 07FEEC 800F747C 03E00008 */  jr    $ra
/* 07FEF0 800F7480 00000000 */   nop   
.type func_800F7404, @function
.size func_800F7404, . - func_800F7404
