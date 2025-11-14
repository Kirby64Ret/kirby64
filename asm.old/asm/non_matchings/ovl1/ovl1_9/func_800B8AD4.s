glabel func_800B8AD4
/* 060D24 800B8AD4 00803825 */  move  $a3, $a0
/* 060D28 800B8AD8 00077880 */  sll   $t7, $a3, 2
/* 060D2C 800B8ADC 01E77823 */  subu  $t7, $t7, $a3
/* 060D30 800B8AE0 000F7880 */  sll   $t7, $t7, 2
/* 060D34 800B8AE4 01E77823 */  subu  $t7, $t7, $a3
/* 060D38 800B8AE8 00047040 */  sll   $t6, $a0, 1
/* 060D3C 800B8AEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 060D40 800B8AF0 3C04800D */  lui   $a0, 0x800d
/* 060D44 800B8AF4 000F78C0 */  sll   $t7, $t7, 3
/* 060D48 800B8AF8 3C19800F */  lui   $t9, %hi(gSaveBuffer1) # $t9, 0x800f
/* 060D4C 800B8AFC AFBF0014 */  sw    $ra, 0x14($sp)
/* 060D50 800B8B00 2739C9F8 */  addiu $t9, %lo(gSaveBuffer1) # addiu $t9, $t9, -0x3608
/* 060D54 800B8B04 25F80010 */  addiu $t8, $t7, 0x10
/* 060D58 800B8B08 008E2021 */  addu  $a0, $a0, $t6
/* 060D5C 800B8B0C 90845157 */  lbu   $a0, 0x5157($a0)
/* 060D60 800B8B10 03192821 */  addu  $a1, $t8, $t9
/* 060D64 800B8B14 0C00134D */  jal   func_80004D34_ovl1
/* 060D68 800B8B18 24060058 */   li    $a2, 88
/* 060D6C 800B8B1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 060D70 800B8B20 27BD0018 */  addiu $sp, $sp, 0x18
/* 060D74 800B8B24 03E00008 */  jr    $ra
/* 060D78 800B8B28 00000000 */   nop   
.type func_800B8AD4, @function
.size func_800B8AD4, . - func_800B8AD4
