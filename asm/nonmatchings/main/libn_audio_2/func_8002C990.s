nonmatching func_8002C990, 0x14

glabel func_8002C990
    /* 2D590 8002C990 AFA50004 */  sw         $a1, 0x4($sp)
    /* 2D594 8002C994 00052C00 */  sll        $a1, $a1, 16
    /* 2D598 8002C998 00052C03 */  sra        $a1, $a1, 16
    /* 2D59C 8002C99C 03E00008 */  jr         $ra
    /* 2D5A0 8002C9A0 A4850016 */   sh        $a1, 0x16($a0)
endlabel func_8002C990
.size func_8002C990, . - func_8002C990
    /* 2D5A4 8002C9A4 00000000 */  nop
    /* 2D5A8 8002C9A8 00000000 */  nop
    /* 2D5AC 8002C9AC 00000000 */  nop
