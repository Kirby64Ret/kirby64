glabel func_801514A0
/* 135830 801514A0 8C8E003C */  lw    $t6, 0x3c($a0)
/* 135834 801514A4 8DC20080 */  lw    $v0, 0x80($t6)
/* 135838 801514A8 90430068 */  lbu   $v1, 0x68($v0)
/* 13583C 801514AC 24420008 */  addiu $v0, $v0, 8
/* 135840 801514B0 A0A3000C */  sb    $v1, 0xc($a1)
/* 135844 801514B4 A0A30008 */  sb    $v1, 8($a1)
/* 135848 801514B8 90430061 */  lbu   $v1, 0x61($v0)
/* 13584C 801514BC A0A3000D */  sb    $v1, 0xd($a1)
/* 135850 801514C0 A0A30009 */  sb    $v1, 9($a1)
/* 135854 801514C4 90430062 */  lbu   $v1, 0x62($v0)
/* 135858 801514C8 A0A3000E */  sb    $v1, 0xe($a1)
/* 13585C 801514CC A0A3000A */  sb    $v1, 0xa($a1)
/* 135860 801514D0 90430064 */  lbu   $v1, 0x64($v0)
/* 135864 801514D4 A0A30004 */  sb    $v1, 4($a1)
/* 135868 801514D8 A0A30000 */  sb    $v1, ($a1)
/* 13586C 801514DC 90430065 */  lbu   $v1, 0x65($v0)
/* 135870 801514E0 A0A30005 */  sb    $v1, 5($a1)
/* 135874 801514E4 A0A30001 */  sb    $v1, 1($a1)
/* 135878 801514E8 90430066 */  lbu   $v1, 0x66($v0)
/* 13587C 801514EC A0A0000B */  sb    $zero, 0xb($a1)
/* 135880 801514F0 A0A0000F */  sb    $zero, 0xf($a1)
/* 135884 801514F4 A0A00013 */  sb    $zero, 0x13($a1)
/* 135888 801514F8 A0A00003 */  sb    $zero, 3($a1)
/* 13588C 801514FC A0A00007 */  sb    $zero, 7($a1)
/* 135890 80151500 A0A30006 */  sb    $v1, 6($a1)
/* 135894 80151504 03E00008 */  jr    $ra
/* 135898 80151508 A0A30002 */   sb    $v1, 2($a1)
.type func_801514A0, @function
.size func_801514A0, . - func_801514A0
