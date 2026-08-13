nonmatching __alSeqNextDelta, 0x68

glabel __alSeqNextDelta
    /* 2D8EC 8002CCEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2D8F0 8002CCF0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2D8F4 8002CCF4 8C8F0010 */  lw         $t7, 0x10($a0)
    /* 2D8F8 8002CCF8 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 2D8FC 8002CCFC 8C820008 */  lw         $v0, 0x8($a0)
    /* 2D900 8002CD00 00803025 */  or         $a2, $a0, $zero
    /* 2D904 8002CD04 01CFC021 */  addu       $t8, $t6, $t7
    /* 2D908 8002CD08 0058082B */  sltu       $at, $v0, $t8
    /* 2D90C 8002CD0C 14200003 */  bnez       $at, .L8002CD1C
    /* 2D910 8002CD10 00A04025 */   or        $t0, $a1, $zero
    /* 2D914 8002CD14 10000007 */  b          .L8002CD34
    /* 2D918 8002CD18 00001025 */   or        $v0, $zero, $zero
  .L8002CD1C:
    /* 2D91C 8002CD1C 00403825 */  or         $a3, $v0, $zero
    /* 2D920 8002CD20 0C00B27F */  jal        func_8002C9FC
    /* 2D924 8002CD24 00C02025 */   or        $a0, $a2, $zero
    /* 2D928 8002CD28 AD020000 */  sw         $v0, 0x0($t0)
    /* 2D92C 8002CD2C ACC70008 */  sw         $a3, 0x8($a2)
    /* 2D930 8002CD30 24020001 */  addiu      $v0, $zero, 0x1
  .L8002CD34:
    /* 2D934 8002CD34 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2D938 8002CD38 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2D93C 8002CD3C 03E00008 */  jr         $ra
    /* 2D940 8002CD40 00000000 */   nop
    /* 2D944 8002CD44 03E00008 */  jr         $ra
    /* 2D948 8002CD48 00000000 */   nop
    /* 2D94C 8002CD4C 03E00008 */  jr         $ra
    /* 2D950 8002CD50 00000000 */   nop
endlabel __alSeqNextDelta
.size __alSeqNextDelta, . - __alSeqNextDelta
    /* 2D954 8002CD54 00000000 */  nop
    /* 2D958 8002CD58 00000000 */  nop
    /* 2D95C 8002CD5C 00000000 */  nop
