glabel func_800A8540
/* 050790 800A8540 2482FFF0 */  addiu $v0, $a0, -0x10
/* 050794 800A8544 8C4E000C */  lw    $t6, 0xc($v0)
/* 050798 800A8548 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 05079C 800A854C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0507A0 800A8550 01C17824 */  and   $t7, $t6, $at
/* 0507A4 800A8554 03E00008 */  jr    $ra
/* 0507A8 800A8558 AC4F000C */   sw    $t7, 0xc($v0)
.type func_800A8540, @function
.size func_800A8540, . - func_800A8540
