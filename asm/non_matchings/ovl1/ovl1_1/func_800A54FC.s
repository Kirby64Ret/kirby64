glabel func_800A54FC
/* 04D74C 800A54FC 90820000 */  lbu   $v0, ($a0)
/* 04D750 800A5500 A0A20004 */  sb    $v0, 4($a1)
/* 04D754 800A5504 A0A20000 */  sb    $v0, ($a1)
/* 04D758 800A5508 90820001 */  lbu   $v0, 1($a0)
/* 04D75C 800A550C A0A20005 */  sb    $v0, 5($a1)
/* 04D760 800A5510 A0A20001 */  sb    $v0, 1($a1)
/* 04D764 800A5514 90820002 */  lbu   $v0, 2($a0)
/* 04D768 800A5518 A0A20006 */  sb    $v0, 6($a1)
/* 04D76C 800A551C A0A20002 */  sb    $v0, 2($a1)
/* 04D770 800A5520 90820008 */  lbu   $v0, 8($a0)
/* 04D774 800A5524 A0A2000C */  sb    $v0, 0xc($a1)
/* 04D778 800A5528 A0A20008 */  sb    $v0, 8($a1)
/* 04D77C 800A552C 90820009 */  lbu   $v0, 9($a0)
/* 04D780 800A5530 A0A2000D */  sb    $v0, 0xd($a1)
/* 04D784 800A5534 A0A20009 */  sb    $v0, 9($a1)
/* 04D788 800A5538 9082000A */  lbu   $v0, 0xa($a0)
/* 04D78C 800A553C A0A2000E */  sb    $v0, 0xe($a1)
/* 04D790 800A5540 A0A2000A */  sb    $v0, 0xa($a1)
/* 04D794 800A5544 808E0010 */  lb    $t6, 0x10($a0)
/* 04D798 800A5548 A0AE0010 */  sb    $t6, 0x10($a1)
/* 04D79C 800A554C 808F0011 */  lb    $t7, 0x11($a0)
/* 04D7A0 800A5550 A0AF0011 */  sb    $t7, 0x11($a1)
/* 04D7A4 800A5554 80980012 */  lb    $t8, 0x12($a0)
/* 04D7A8 800A5558 03E00008 */  jr    $ra
/* 04D7AC 800A555C A0B80012 */   sb    $t8, 0x12($a1)
.type func_800A54FC, @function
.size func_800A54FC, . - func_800A54FC