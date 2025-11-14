glabel func_800AA934
/* 052B84 800AA934 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 052B88 800AA938 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 052B8C 800AA93C 3C19800E */  lui   $t9, 0x800e
/* 052B90 800AA940 00001025 */  move  $v0, $zero
/* 052B94 800AA944 8DCF0000 */  lw    $t7, ($t6)
/* 052B98 800AA948 000FC080 */  sll   $t8, $t7, 2
/* 052B9C 800AA94C 0338C821 */  addu  $t9, $t9, $t8
/* 052BA0 800AA950 8F39FF50 */  lw    $t9, -0xb0($t9)
/* 052BA4 800AA954 14990003 */  bne   $a0, $t9, .L800AA964_ovl1
/* 052BA8 800AA958 00000000 */   nop   
/* 052BAC 800AA95C 03E00008 */  jr    $ra
/* 052BB0 800AA960 24020001 */   li    $v0, 1
.type func_800AA934, @function

.L800AA964_ovl1:
/* 052BB4 800AA964 03E00008 */  jr    $ra
/* 052BB8 800AA968 00000000 */   nop   
.type func_800AA934, @function
.size func_800AA934, . - func_800AA934
