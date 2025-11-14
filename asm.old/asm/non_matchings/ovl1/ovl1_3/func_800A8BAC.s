glabel func_800A8BAC
/* 050DFC 800A8BAC 00047402 */  srl   $t6, $a0, 0x10
/* 050E00 800A8BB0 3C18800D */  lui   $t8, %hi(D_800D0104) # $t8, 0x800d
/* 050E04 800A8BB4 27180104 */  addiu $t8, %lo(D_800D0104) # addiu $t8, $t8, 0x104
/* 050E08 800A8BB8 000E7880 */  sll   $t7, $t6, 2
/* 050E0C 800A8BBC 01F81821 */  addu  $v1, $t7, $t8
/* 050E10 800A8BC0 8C790000 */  lw    $t9, ($v1)
/* 050E14 800A8BC4 3087FFFF */  andi  $a3, $a0, 0xffff
/* 050E18 800A8BC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 050E1C 800A8BCC 00073880 */  sll   $a3, $a3, 2
/* 050E20 800A8BD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 050E24 800A8BD4 03274021 */  addu  $t0, $t9, $a3
/* 050E28 800A8BD8 8D060000 */  lw    $a2, ($t0)
/* 050E2C 800A8BDC 24050003 */  li    $a1, 3
/* 050E30 800A8BE0 50C0000A */  beql  $a2, $zero, .L800A8C0C_ovl1
/* 050E34 800A8BE4 AFA3001C */   sw    $v1, 0x1c($sp)
/* 050E38 800A8BE8 00C02025 */  move  $a0, $a2
/* 050E3C 800A8BEC 24050001 */  li    $a1, 1
/* 050E40 800A8BF0 AFA3001C */  sw    $v1, 0x1c($sp)
/* 050E44 800A8BF4 0C02A159 */  jal   func_800A8564
/* 050E48 800A8BF8 AFA70018 */   sw    $a3, 0x18($sp)
/* 050E4C 800A8BFC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 050E50 800A8C00 10000009 */  b     .L800A8C28_ovl1
/* 050E54 800A8C04 8FA70018 */   lw    $a3, 0x18($sp)
/* 050E58 800A8C08 AFA3001C */  sw    $v1, 0x1c($sp)
.L800A8C0C_ovl1:
/* 050E5C 800A8C0C 0C02A2C3 */  jal   func_800A8B0C
/* 050E60 800A8C10 AFA70018 */   sw    $a3, 0x18($sp)
/* 050E64 800A8C14 8FA3001C */  lw    $v1, 0x1c($sp)
/* 050E68 800A8C18 8FA70018 */  lw    $a3, 0x18($sp)
/* 050E6C 800A8C1C 8C690000 */  lw    $t1, ($v1)
/* 050E70 800A8C20 01275021 */  addu  $t2, $t1, $a3
/* 050E74 800A8C24 AD420000 */  sw    $v0, ($t2)
.L800A8C28_ovl1:
/* 050E78 800A8C28 8C6B0000 */  lw    $t3, ($v1)
/* 050E7C 800A8C2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050E80 800A8C30 01676021 */  addu  $t4, $t3, $a3
/* 050E84 800A8C34 8D820000 */  lw    $v0, ($t4)
/* 050E88 800A8C38 03E00008 */  jr    $ra
/* 050E8C 800A8C3C 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800A8BAC, @function
.size func_800A8BAC, . - func_800A8BAC
