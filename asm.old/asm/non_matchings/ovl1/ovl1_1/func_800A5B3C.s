glabel func_800A5B3C
/* 04DD8C 800A5B3C AFA50004 */  sw    $a1, 4($sp)
/* 04DD90 800A5B40 AFA60008 */  sw    $a2, 8($sp)
/* 04DD94 800A5B44 AFA7000C */  sw    $a3, 0xc($sp)
/* 04DD98 800A5B48 8C82004C */  lw    $v0, 0x4c($a0)
/* 04DD9C 800A5B4C A0450018 */  sb    $a1, 0x18($v0)
/* 04DDA0 800A5B50 A0460019 */  sb    $a2, 0x19($v0)
/* 04DDA4 800A5B54 A047001A */  sb    $a3, 0x1a($v0)
/* 04DDA8 800A5B58 93AE0013 */  lbu   $t6, 0x13($sp)
/* 04DDAC 800A5B5C 03E00008 */  jr    $ra
/* 04DDB0 800A5B60 A04E001B */   sb    $t6, 0x1b($v0)
.type func_800A5B3C, @function
.size func_800A5B3C, . - func_800A5B3C
