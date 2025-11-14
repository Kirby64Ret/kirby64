glabel func_800AA78C
/* 0529DC 800AA78C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0529E0 800AA790 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0529E4 800AA794 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0529E8 800AA798 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0529EC 800AA79C AFA40020 */  sw    $a0, 0x20($sp)
/* 0529F0 800AA7A0 8DCF003C */  lw    $t7, 0x3c($t6)
/* 0529F4 800AA7A4 00A03825 */  move  $a3, $a1
/* 0529F8 800AA7A8 44866000 */  mtc1  $a2, $f12
/* 0529FC 800AA7AC 00802825 */  move  $a1, $a0
/* 052A00 800AA7B0 8DE40010 */  lw    $a0, 0x10($t7)
/* 052A04 800AA7B4 24060000 */  li    $a2, 0
/* 052A08 800AA7B8 0C02A982 */  jal   func_800AA608
/* 052A0C 800AA7BC E7AC0010 */   swc1  $f12, 0x10($sp)
/* 052A10 800AA7C0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 052A14 800AA7C4 27BD0020 */  addiu $sp, $sp, 0x20
/* 052A18 800AA7C8 03E00008 */  jr    $ra
/* 052A1C 800AA7CC 00000000 */   nop   
.type func_800AA78C, @function
.size func_800AA78C, . - func_800AA78C
