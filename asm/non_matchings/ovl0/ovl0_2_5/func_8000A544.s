glabel func_8000A544
/* 00B144 8000A544 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00B148 8000A548 AFA50024 */  sw    $a1, 0x24($sp)
/* 00B14C 8000A54C 8FAE0024 */  lw    $t6, 0x24($sp)
/* 00B150 8000A550 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00B154 8000A554 AFA40020 */  sw    $a0, 0x20($sp)
/* 00B158 8000A558 00802825 */  move  $a1, $a0
/* 00B15C 8000A55C 8DC70010 */  lw    $a3, 0x10($t6)
/* 00B160 8000A560 91C6000C */  lbu   $a2, 0xc($t6)
/* 00B164 8000A564 24040003 */  li    $a0, 3
/* 00B168 8000A568 0C0028D4 */  jal   func_8000A350_ovl0
/* 00B16C 8000A56C AFAE0010 */   sw    $t6, 0x10($sp)
/* 00B170 8000A570 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00B174 8000A574 27BD0020 */  addiu $sp, $sp, 0x20
/* 00B178 8000A578 03E00008 */  jr    $ra
/* 00B17C 8000A57C 00000000 */   nop   
