nonmatching func_801DC91C_ovl17, 0x70

glabel func_801DC91C_ovl17
    /* 227B0C 801DC91C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 227B10 801DC920 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 227B14 801DC924 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 227B18 801DC928 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 227B1C 801DC92C AFA40018 */  sw         $a0, 0x18($sp)
    /* 227B20 801DC930 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 227B24 801DC934 3C06800E */  lui        $a2, %hi(D_800E7CE0)
    /* 227B28 801DC938 24C67CE0 */  addiu      $a2, $a2, %lo(D_800E7CE0)
    /* 227B2C 801DC93C 000E7880 */  sll        $t7, $t6, 2
    /* 227B30 801DC940 00CF2821 */  addu       $a1, $a2, $t7
    /* 227B34 801DC944 8CA30000 */  lw         $v1, 0x0($a1)
    /* 227B38 801DC948 10600007 */  beqz       $v1, .L801DC968_ovl17
    /* 227B3C 801DC94C 2478FFFF */   addiu     $t8, $v1, -0x1
    /* 227B40 801DC950 1C600005 */  bgtz       $v1, .L801DC968_ovl17
    /* 227B44 801DC954 ACB80000 */   sw        $t8, 0x0($a1)
    /* 227B48 801DC958 8C590000 */  lw         $t9, 0x0($v0)
    /* 227B4C 801DC95C 00194080 */  sll        $t0, $t9, 2
    /* 227B50 801DC960 00C84821 */  addu       $t1, $a2, $t0
    /* 227B54 801DC964 AD200000 */  sw         $zero, 0x0($t1)
  .L801DC968_ovl17:
    /* 227B58 801DC968 8C430000 */  lw         $v1, 0x0($v0)
    /* 227B5C 801DC96C 54600004 */  bnel       $v1, $zero, .L801DC980_ovl17
    /* 227B60 801DC970 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 227B64 801DC974 0C04454D */  jal        func_80111534
    /* 227B68 801DC978 00602025 */   or        $a0, $v1, $zero
    /* 227B6C 801DC97C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DC980_ovl17:
    /* 227B70 801DC980 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 227B74 801DC984 03E00008 */  jr         $ra
    /* 227B78 801DC988 00000000 */   nop
endlabel func_801DC91C_ovl17
.size func_801DC91C_ovl17, . - func_801DC91C_ovl17
