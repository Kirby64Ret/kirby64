glabel func_800B9DF8
/* 062048 800B9DF8 24010003 */  li    $at, 3
/* 06204C 800B9DFC 0081001A */  div   $zero, $a0, $at
/* 062050 800B9E00 3C0E800C */  lui   $t6, %hi(D_800BE500) # $t6, 0x800c
/* 062054 800B9E04 8DCEE500 */  lw    $t6, %lo(D_800BE500)($t6)
/* 062058 800B9E08 3C18800C */  lui   $t8, %hi(D_800BE504) # $t8, 0x800c
/* 06205C 800B9E0C 8F18E504 */  lw    $t8, %lo(D_800BE504)($t8)
/* 062060 800B9E10 000E7880 */  sll   $t7, $t6, 2
/* 062064 800B9E14 3C08800D */  lui   $t0, 0x800d
/* 062068 800B9E18 01F8C821 */  addu  $t9, $t7, $t8
/* 06206C 800B9E1C 01194021 */  addu  $t0, $t0, $t9
/* 062070 800B9E20 91086BC8 */  lbu   $t0, 0x6bc8($t0)
/* 062074 800B9E24 00004810 */  mfhi  $t1
/* 062078 800B9E28 240A0001 */  li    $t2, 1
/* 06207C 800B9E2C 012A5804 */  sllv  $t3, $t2, $t1
/* 062080 800B9E30 010B6024 */  and   $t4, $t0, $t3
/* 062084 800B9E34 11800003 */  beqz  $t4, .L800B9E44_ovl1
/* 062088 800B9E38 00001025 */   move  $v0, $zero
/* 06208C 800B9E3C 03E00008 */  jr    $ra
/* 062090 800B9E40 24020001 */   li    $v0, 1
.type func_800B9DF8, @function

.L800B9E44_ovl1:
/* 062094 800B9E44 03E00008 */  jr    $ra
/* 062098 800B9E48 00000000 */   nop   
.type func_800B9DF8, @function
.size func_800B9DF8, . - func_800B9DF8
