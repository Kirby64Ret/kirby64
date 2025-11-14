glabel func_800B9DC8
/* 062018 800B9DC8 3C0E800C */  lui   $t6, %hi(D_800BE500) # $t6, 0x800c
/* 06201C 800B9DCC 8DCEE500 */  lw    $t6, %lo(D_800BE500)($t6)
/* 062020 800B9DD0 3C0F800D */  lui   $t7, 0x800d
/* 062024 800B9DD4 00001025 */  move  $v0, $zero
/* 062028 800B9DD8 01EE7821 */  addu  $t7, $t7, $t6
/* 06202C 800B9DDC 91EF6BC0 */  lbu   $t7, 0x6bc0($t7)
/* 062030 800B9DE0 11E00003 */  beqz  $t7, .L800B9DF0_ovl1
/* 062034 800B9DE4 00000000 */   nop   
/* 062038 800B9DE8 03E00008 */  jr    $ra
/* 06203C 800B9DEC 24020001 */   li    $v0, 1
.type func_800B9DC8, @function

.L800B9DF0_ovl1:
/* 062040 800B9DF0 03E00008 */  jr    $ra
/* 062044 800B9DF4 00000000 */   nop   
.type func_800B9DC8, @function
.size func_800B9DC8, . - func_800B9DC8
