glabel func_800B9F64
/* 0621B4 800B9F64 00047080 */  sll   $t6, $a0, 2
/* 0621B8 800B9F68 01C47023 */  subu  $t6, $t6, $a0
/* 0621BC 800B9F6C 000E7080 */  sll   $t6, $t6, 2
/* 0621C0 800B9F70 01C47023 */  subu  $t6, $t6, $a0
/* 0621C4 800B9F74 000E70C0 */  sll   $t6, $t6, 3
/* 0621C8 800B9F78 3C0F800F */  lui   $t7, 0x800f
/* 0621CC 800B9F7C 01EE7821 */  addu  $t7, $t7, $t6
/* 0621D0 800B9F80 8DEFCA14 */  lw    $t7, -0x35ec($t7)
/* 0621D4 800B9F84 00AF1006 */  srlv  $v0, $t7, $a1
/* 0621D8 800B9F88 03E00008 */  jr    $ra
/* 0621DC 800B9F8C 30420001 */   andi  $v0, $v0, 1
.type func_800B9F64, @function
.size func_800B9F64, . - func_800B9F64
