glabel func_800A8A7C
/* 050CCC 800A8A7C 00047402 */  srl   $t6, $a0, 0x10
/* 050CD0 800A8A80 3C18800D */  lui   $t8, %hi(D_800D0104) # $t8, 0x800d
/* 050CD4 800A8A84 27180104 */  addiu $t8, %lo(D_800D0104) # addiu $t8, $t8, 0x104
/* 050CD8 800A8A88 000E7880 */  sll   $t7, $t6, 2
/* 050CDC 800A8A8C 01F81821 */  addu  $v1, $t7, $t8
/* 050CE0 800A8A90 8C790000 */  lw    $t9, ($v1)
/* 050CE4 800A8A94 3087FFFF */  andi  $a3, $a0, 0xffff
/* 050CE8 800A8A98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 050CEC 800A8A9C 00073880 */  sll   $a3, $a3, 2
/* 050CF0 800A8AA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 050CF4 800A8AA4 03274021 */  addu  $t0, $t9, $a3
/* 050CF8 800A8AA8 8D060000 */  lw    $a2, ($t0)
/* 050CFC 800A8AAC 24050001 */  li    $a1, 1
/* 050D00 800A8AB0 50C00009 */  beql  $a2, $zero, .L800A8AD8_ovl1
/* 050D04 800A8AB4 AFA3001C */   sw    $v1, 0x1c($sp)
/* 050D08 800A8AB8 00C02025 */  move  $a0, $a2
/* 050D0C 800A8ABC AFA3001C */  sw    $v1, 0x1c($sp)
/* 050D10 800A8AC0 0C02A159 */  jal   func_800A8564
/* 050D14 800A8AC4 AFA70018 */   sw    $a3, 0x18($sp)
/* 050D18 800A8AC8 8FA3001C */  lw    $v1, 0x1c($sp)
/* 050D1C 800A8ACC 10000009 */  b     .L800A8AF4_ovl1
/* 050D20 800A8AD0 8FA70018 */   lw    $a3, 0x18($sp)
/* 050D24 800A8AD4 AFA3001C */  sw    $v1, 0x1c($sp)
.L800A8AD8_ovl1:
/* 050D28 800A8AD8 0C02A278 */  jal   func_800A89E0
/* 050D2C 800A8ADC AFA70018 */   sw    $a3, 0x18($sp)
/* 050D30 800A8AE0 8FA3001C */  lw    $v1, 0x1c($sp)
/* 050D34 800A8AE4 8FA70018 */  lw    $a3, 0x18($sp)
/* 050D38 800A8AE8 8C690000 */  lw    $t1, ($v1)
/* 050D3C 800A8AEC 01275021 */  addu  $t2, $t1, $a3
/* 050D40 800A8AF0 AD420000 */  sw    $v0, ($t2)
.L800A8AF4_ovl1:
/* 050D44 800A8AF4 8C6B0000 */  lw    $t3, ($v1)
/* 050D48 800A8AF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050D4C 800A8AFC 01676021 */  addu  $t4, $t3, $a3
/* 050D50 800A8B00 8D820000 */  lw    $v0, ($t4)
/* 050D54 800A8B04 03E00008 */  jr    $ra
/* 050D58 800A8B08 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800A8A7C, @function
.size func_800A8A7C, . - func_800A8A7C
