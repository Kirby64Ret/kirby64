glabel func_80172B38_ovl5
/* 119FA8 80172B38 44864000 */  mtc1       $a2, $f8
/* 119FAC 80172B3C 00057080 */  sll        $t6, $a1, 2
/* 119FB0 80172B40 3C018018 */  lui        $at, %hi(D_80187C94_ovl5)
/* 119FB4 80172B44 468042A0 */  cvt.s.w    $f10, $f8
/* 119FB8 80172B48 002E0821 */  addu       $at, $at, $t6
/* 119FBC 80172B4C C4247C94 */  lwc1       $f4, %lo(D_80187C94_ovl5)($at)
/* 119FC0 80172B50 3C0143E1 */  lui        $at, (0x43E10000 >> 16)
/* 119FC4 80172B54 44818000 */  mtc1       $at, $f16
/* 119FC8 80172B58 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 119FCC 80172B5C 44803000 */  mtc1       $zero, $f6
/* 119FD0 80172B60 46105482 */  mul.s      $f18, $f10, $f16
/* 119FD4 80172B64 27AF0004 */  addiu      $t7, $sp, 0x4
/* 119FD8 80172B68 E7A40004 */  swc1       $f4, 0x4($sp)
/* 119FDC 80172B6C E7A60008 */  swc1       $f6, 0x8($sp)
/* 119FE0 80172B70 00801025 */  or         $v0, $a0, $zero
/* 119FE4 80172B74 E7B2000C */  swc1       $f18, 0xC($sp)
/* 119FE8 80172B78 8DF90000 */  lw         $t9, 0x0($t7)
/* 119FEC 80172B7C AC990000 */  sw         $t9, 0x0($a0)
/* 119FF0 80172B80 8DF80004 */  lw         $t8, 0x4($t7)
/* 119FF4 80172B84 AC980004 */  sw         $t8, 0x4($a0)
/* 119FF8 80172B88 8DF90008 */  lw         $t9, 0x8($t7)
/* 119FFC 80172B8C 27BD0010 */  addiu      $sp, $sp, 0x10
/* 11A000 80172B90 03E00008 */  jr         $ra
/* 11A004 80172B94 AC990008 */   sw        $t9, 0x8($a0)
