glabel func_800A8518
/* 050768 800A8518 2482FFF0 */  addiu $v0, $a0, -0x10
/* 05076C 800A851C 8C4E000C */  lw    $t6, 0xc($v0)
/* 050770 800A8520 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 050774 800A8524 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 050778 800A8528 01C17824 */  and   $t7, $t6, $at
/* 05077C 800A852C 3C019900 */  lui   $at, 0x9900
/* 050780 800A8530 AC4F000C */  sw    $t7, 0xc($v0)
/* 050784 800A8534 01E1C825 */  or    $t9, $t7, $at
/* 050788 800A8538 03E00008 */  jr    $ra
/* 05078C 800A853C AC59000C */   sw    $t9, 0xc($v0)
.type func_800A8518, @function
.size func_800A8518, . - func_800A8518
