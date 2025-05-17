glabel func_8000E474
/* 00F074 8000E474 24AEFFFF */  addiu $t6, $a1, -1
/* 00F078 8000E478 2DC1000A */  sltiu $at, $t6, 0xa
/* 00F07C 8000E47C 10200017 */  beqz  $at, .L8000E4DC_ovl0
/* 00F080 8000E480 000E7080 */   sll   $t6, $t6, 2
/* 00F084 8000E484 3C018004 */  lui   $at, %hi(jtbl_800407F8)
/* 00F088 8000E488 002E0821 */  addu  $at, $at, $t6
/* 00F08C 8000E48C 8C2E07F8 */  lw    $t6, %lo(jtbl_800407F8)($at)
/* 00F090 8000E490 01C00008 */  jr    $t6
/* 00F094 8000E494 00000000 */   nop   
/* 00F098 8000E498 03E00008 */  jr    $ra
/* 00F09C 8000E49C C4800030 */   lwc1  $f0, 0x30($a0)
.type func_8000E474, @function

/* 00F0A0 8000E4A0 03E00008 */  jr    $ra
/* 00F0A4 8000E4A4 C4800034 */   lwc1  $f0, 0x34($a0)
.type func_8000E474, @function

/* 00F0A8 8000E4A8 03E00008 */  jr    $ra
/* 00F0AC 8000E4AC C4800038 */   lwc1  $f0, 0x38($a0)
.type func_8000E474, @function

/* 00F0B0 8000E4B0 03E00008 */  jr    $ra
/* 00F0B4 8000E4B4 C480001C */   lwc1  $f0, 0x1c($a0)
.type func_8000E474, @function

/* 00F0B8 8000E4B8 03E00008 */  jr    $ra
/* 00F0BC 8000E4BC C4800020 */   lwc1  $f0, 0x20($a0)
.type func_8000E474, @function

/* 00F0C0 8000E4C0 03E00008 */  jr    $ra
/* 00F0C4 8000E4C4 C4800024 */   lwc1  $f0, 0x24($a0)
.type func_8000E474, @function

/* 00F0C8 8000E4C8 03E00008 */  jr    $ra
/* 00F0CC 8000E4CC C4800040 */   lwc1  $f0, 0x40($a0)
.type func_8000E474, @function

/* 00F0D0 8000E4D0 03E00008 */  jr    $ra
/* 00F0D4 8000E4D4 C4800044 */   lwc1  $f0, 0x44($a0)
.type func_8000E474, @function

/* 00F0D8 8000E4D8 C4800048 */  lwc1  $f0, 0x48($a0)
.L8000E4DC_ovl0:
/* 00F0DC 8000E4DC 03E00008 */  jr    $ra
/* 00F0E0 8000E4E0 00000000 */   nop   
.type func_8000E474, @function
.size func_8000E474, . - func_8000E474
