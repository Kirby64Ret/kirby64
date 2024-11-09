glabel func_8000E4E4
/* 00F0E4 8000E4E4 24AEFFFF */  addiu $t6, $a1, -1
/* 00F0E8 8000E4E8 2DC1000A */  sltiu $at, $t6, 0xa
/* 00F0EC 8000E4EC 10200017 */  beqz  $at, .L8000E54C_ovl0
/* 00F0F0 8000E4F0 000E7080 */   sll   $t6, $t6, 2
/* 00F0F4 8000E4F4 3C018004 */  lui   $at, %hi(jtbl_80040820)
/* 00F0F8 8000E4F8 002E0821 */  addu  $at, $at, $t6
/* 00F0FC 8000E4FC 8C2E0820 */  lw    $t6, %lo(jtbl_80040820)($at)
/* 00F100 8000E500 01C00008 */  jr    $t6
/* 00F104 8000E504 00000000 */   nop   
/* 00F108 8000E508 03E00008 */  jr    $ra
/* 00F10C 8000E50C C4800014 */   lwc1  $f0, 0x14($a0)
.type func_8000E4E4, @function

/* 00F110 8000E510 03E00008 */  jr    $ra
/* 00F114 8000E514 C4800018 */   lwc1  $f0, 0x18($a0)
.type func_8000E4E4, @function

/* 00F118 8000E518 03E00008 */  jr    $ra
/* 00F11C 8000E51C C480001C */   lwc1  $f0, 0x1c($a0)
.type func_8000E4E4, @function

/* 00F120 8000E520 03E00008 */  jr    $ra
/* 00F124 8000E524 C4800008 */   lwc1  $f0, 8($a0)
.type func_8000E4E4, @function

/* 00F128 8000E528 03E00008 */  jr    $ra
/* 00F12C 8000E52C C480000C */   lwc1  $f0, 0xc($a0)
.type func_8000E4E4, @function

/* 00F130 8000E530 03E00008 */  jr    $ra
/* 00F134 8000E534 C4800010 */   lwc1  $f0, 0x10($a0)
.type func_8000E4E4, @function

/* 00F138 8000E538 03E00008 */  jr    $ra
/* 00F13C 8000E53C C4800020 */   lwc1  $f0, 0x20($a0)
.type func_8000E4E4, @function

/* 00F140 8000E540 03E00008 */  jr    $ra
/* 00F144 8000E544 C4800024 */   lwc1  $f0, 0x24($a0)
.type func_8000E4E4, @function

/* 00F148 8000E548 C4800028 */  lwc1  $f0, 0x28($a0)
.L8000E54C_ovl0:
/* 00F14C 8000E54C 03E00008 */  jr    $ra
/* 00F150 8000E550 00000000 */   nop   
.type func_8000E4E4, @function
.size func_8000E4E4, . - func_8000E4E4
