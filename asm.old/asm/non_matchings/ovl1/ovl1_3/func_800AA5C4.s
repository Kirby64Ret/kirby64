glabel func_800AA5C4
/* 052814 800AA5C4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 052818 800AA5C8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 05281C 800AA5CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 052820 800AA5D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 052824 800AA5D4 AFA40020 */  sw    $a0, 0x20($sp)
/* 052828 800AA5D8 8DCF003C */  lw    $t7, 0x3c($t6)
/* 05282C 800AA5DC 00A03825 */  move  $a3, $a1
/* 052830 800AA5E0 44866000 */  mtc1  $a2, $f12
/* 052834 800AA5E4 00802825 */  move  $a1, $a0
/* 052838 800AA5E8 8DE40010 */  lw    $a0, 0x10($t7)
/* 05283C 800AA5EC 24060000 */  li    $a2, 0
/* 052840 800AA5F0 0C02A927 */  jal   func_800AA49C
/* 052844 800AA5F4 E7AC0010 */   swc1  $f12, 0x10($sp)
/* 052848 800AA5F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 05284C 800AA5FC 27BD0020 */  addiu $sp, $sp, 0x20
/* 052850 800AA600 03E00008 */  jr    $ra
/* 052854 800AA604 00000000 */   nop   
.type func_800AA5C4, @function
.size func_800AA5C4, . - func_800AA5C4
