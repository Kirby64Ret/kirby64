glabel func_800A5404
/* 04D654 800A5404 90A20000 */  lbu   $v0, ($a1)
/* 04D658 800A5408 A0820004 */  sb    $v0, 4($a0)
/* 04D65C 800A540C A0820000 */  sb    $v0, ($a0)
/* 04D660 800A5410 90A20001 */  lbu   $v0, 1($a1)
/* 04D664 800A5414 A0820005 */  sb    $v0, 5($a0)
/* 04D668 800A5418 A0820001 */  sb    $v0, 1($a0)
/* 04D66C 800A541C 90A20002 */  lbu   $v0, 2($a1)
/* 04D670 800A5420 A0820006 */  sb    $v0, 6($a0)
/* 04D674 800A5424 A0820002 */  sb    $v0, 2($a0)
/* 04D678 800A5428 90A20003 */  lbu   $v0, 3($a1)
/* 04D67C 800A542C A082000C */  sb    $v0, 0xc($a0)
/* 04D680 800A5430 A0820008 */  sb    $v0, 8($a0)
/* 04D684 800A5434 90A20004 */  lbu   $v0, 4($a1)
/* 04D688 800A5438 A082000D */  sb    $v0, 0xd($a0)
/* 04D68C 800A543C A0820009 */  sb    $v0, 9($a0)
/* 04D690 800A5440 90A20005 */  lbu   $v0, 5($a1)
/* 04D694 800A5444 A082000E */  sb    $v0, 0xe($a0)
/* 04D698 800A5448 A082000A */  sb    $v0, 0xa($a0)
/* 04D69C 800A544C 90AE0006 */  lbu   $t6, 6($a1)
/* 04D6A0 800A5450 A08E0010 */  sb    $t6, 0x10($a0)
/* 04D6A4 800A5454 90AF0007 */  lbu   $t7, 7($a1)
/* 04D6A8 800A5458 A08F0011 */  sb    $t7, 0x11($a0)
/* 04D6AC 800A545C 90B80008 */  lbu   $t8, 8($a1)
/* 04D6B0 800A5460 03E00008 */  jr    $ra
/* 04D6B4 800A5464 A0980012 */   sb    $t8, 0x12($a0)
.type func_800A5404, @function
.size func_800A5404, . - func_800A5404