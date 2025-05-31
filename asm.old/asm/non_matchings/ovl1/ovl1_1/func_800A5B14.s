glabel func_800A5B14
/* 04DD64 800A5B14 AFA50004 */  sw    $a1, 4($sp)
/* 04DD68 800A5B18 AFA60008 */  sw    $a2, 8($sp)
/* 04DD6C 800A5B1C AFA7000C */  sw    $a3, 0xc($sp)
/* 04DD70 800A5B20 8C82004C */  lw    $v0, 0x4c($a0)
/* 04DD74 800A5B24 A0450014 */  sb    $a1, 0x14($v0)
/* 04DD78 800A5B28 A0460015 */  sb    $a2, 0x15($v0)
/* 04DD7C 800A5B2C A0470016 */  sb    $a3, 0x16($v0)
/* 04DD80 800A5B30 93AE0013 */  lbu   $t6, 0x13($sp)
/* 04DD84 800A5B34 03E00008 */  jr    $ra
/* 04DD88 800A5B38 A04E0017 */   sb    $t6, 0x17($v0)
.type func_800A5B14, @function
.size func_800A5B14, . - func_800A5B14
