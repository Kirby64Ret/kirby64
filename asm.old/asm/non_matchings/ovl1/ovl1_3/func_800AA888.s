glabel func_800AA888
/* 052AD8 800AA888 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 052ADC 800AA88C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 052AE0 800AA890 00047402 */  srl   $t6, $a0, 0x10
/* 052AE4 800AA894 000E7880 */  sll   $t7, $t6, 2
/* 052AE8 800AA898 3C18800D */  lui   $t8, 0x800d
/* 052AEC 800AA89C 8D2A0000 */  lw    $t2, ($t1)
/* 052AF0 800AA8A0 030FC021 */  addu  $t8, $t8, $t7
/* 052AF4 800AA8A4 8F1800C4 */  lw    $t8, 0xc4($t8)
/* 052AF8 800AA8A8 3099FFFF */  andi  $t9, $a0, 0xffff
/* 052AFC 800AA8AC 00194080 */  sll   $t0, $t9, 2
/* 052B00 800AA8B0 3C0C800E */  lui   $t4, 0x800e
/* 052B04 800AA8B4 000A5880 */  sll   $t3, $t2, 2
/* 052B08 800AA8B8 018B6021 */  addu  $t4, $t4, $t3
/* 052B0C 800AA8BC 03081021 */  addu  $v0, $t8, $t0
/* 052B10 800AA8C0 8C4D0000 */  lw    $t5, ($v0)
/* 052B14 800AA8C4 8D8CF4D0 */  lw    $t4, -0xb30($t4)
/* 052B18 800AA8C8 00001025 */  move  $v0, $zero
/* 052B1C 800AA8CC 158D0003 */  bne   $t4, $t5, .L800AA8DC_ovl1
/* 052B20 800AA8D0 00000000 */   nop   
/* 052B24 800AA8D4 03E00008 */  jr    $ra
/* 052B28 800AA8D8 24020001 */   li    $v0, 1
.type func_800AA888, @function

.L800AA8DC_ovl1:
/* 052B2C 800AA8DC 03E00008 */  jr    $ra
/* 052B30 800AA8E0 00000000 */   nop   
.type func_800AA888, @function
.size func_800AA888, . - func_800AA888
