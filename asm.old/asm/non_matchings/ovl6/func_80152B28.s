glabel func_80152B28
/* 136EB8 80152B28 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 136EBC 80152B2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 136EC0 80152B30 AFA40020 */  sw    $a0, 0x20($sp)
/* 136EC4 80152B34 8C860000 */  lw    $a2, ($a0)
/* 136EC8 80152B38 3C0F8005 */  lui   $t7, %hi(D_8004A404) # $t7, 0x8005
/* 136ECC 80152B3C 8DEFA404 */  lw    $t7, %lo(D_8004A404)($t7)
/* 136ED0 80152B40 00C02025 */  move  $a0, $a2
/* 136ED4 80152B44 AFA6001C */  sw    $a2, 0x1c($sp)
/* 136ED8 80152B48 0C054777 */  jal   func_80151DDC_ovl6
/* 136EDC 80152B4C AFAF0018 */   sw    $t7, 0x18($sp)
/* 136EE0 80152B50 8FA6001C */  lw    $a2, 0x1c($sp)
/* 136EE4 80152B54 3C048016 */  lui   $a0, 0x8016
/* 136EE8 80152B58 8FA50018 */  lw    $a1, 0x18($sp)
/* 136EEC 80152B5C 0006C080 */  sll   $t8, $a2, 2
/* 136EF0 80152B60 00982021 */  addu  $a0, $a0, $t8
/* 136EF4 80152B64 0C054528 */  jal   func_801514A0_ovl6
/* 136EF8 80152B68 8C84A570 */   lw    $a0, -0x5a90($a0)
/* 136EFC 80152B6C 3C028005 */  lui   $v0, %hi(gDynamicBuffer1) # $v0, 0x8005
/* 136F00 80152B70 2442A3F8 */  addiu $v0, %lo(gDynamicBuffer1) # addiu $v0, $v0, -0x5c08
/* 136F04 80152B74 8C59000C */  lw    $t9, 0xc($v0)
/* 136F08 80152B78 8FA40020 */  lw    $a0, 0x20($sp)
/* 136F0C 80152B7C 8FA50018 */  lw    $a1, 0x18($sp)
/* 136F10 80152B80 27280018 */  addiu $t0, $t9, 0x18
/* 136F14 80152B84 0C054798 */  jal   func_80151E60_ovl6
/* 136F18 80152B88 AC48000C */   sw    $t0, 0xc($v0)
/* 136F1C 80152B8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 136F20 80152B90 27BD0020 */  addiu $sp, $sp, 0x20
/* 136F24 80152B94 03E00008 */  jr    $ra
/* 136F28 80152B98 00000000 */   nop   
.type func_80152B28, @function
.size func_80152B28, . - func_80152B28
