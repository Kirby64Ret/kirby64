glabel func_80152B9C
/* 136F2C 80152B9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 136F30 80152BA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 136F34 80152BA4 AFA40020 */  sw    $a0, 0x20($sp)
/* 136F38 80152BA8 8C860000 */  lw    $a2, ($a0)
/* 136F3C 80152BAC 3C0F8005 */  lui   $t7, %hi(D_8004A404) # $t7, 0x8005
/* 136F40 80152BB0 8DEFA404 */  lw    $t7, %lo(D_8004A404)($t7)
/* 136F44 80152BB4 00C02025 */  move  $a0, $a2
/* 136F48 80152BB8 AFA6001C */  sw    $a2, 0x1c($sp)
/* 136F4C 80152BBC 0C054777 */  jal   func_80151DDC_ovl6
/* 136F50 80152BC0 AFAF0018 */   sw    $t7, 0x18($sp)
/* 136F54 80152BC4 8FA6001C */  lw    $a2, 0x1c($sp)
/* 136F58 80152BC8 3C048016 */  lui   $a0, 0x8016
/* 136F5C 80152BCC 8FA50018 */  lw    $a1, 0x18($sp)
/* 136F60 80152BD0 0006C080 */  sll   $t8, $a2, 2
/* 136F64 80152BD4 00982021 */  addu  $a0, $a0, $t8
/* 136F68 80152BD8 0C054528 */  jal   func_801514A0_ovl6
/* 136F6C 80152BDC 8C84A570 */   lw    $a0, -0x5a90($a0)
/* 136F70 80152BE0 3C028005 */  lui   $v0, %hi(gDynamicBuffer1) # $v0, 0x8005
/* 136F74 80152BE4 2442A3F8 */  addiu $v0, %lo(gDynamicBuffer1) # addiu $v0, $v0, -0x5c08
/* 136F78 80152BE8 8C59000C */  lw    $t9, 0xc($v0)
/* 136F7C 80152BEC 8FA40020 */  lw    $a0, 0x20($sp)
/* 136F80 80152BF0 8FA50018 */  lw    $a1, 0x18($sp)
/* 136F84 80152BF4 27280018 */  addiu $t0, $t9, 0x18
/* 136F88 80152BF8 0C05484E */  jal   func_80152138_ovl6
/* 136F8C 80152BFC AC48000C */   sw    $t0, 0xc($v0)
/* 136F90 80152C00 8FBF0014 */  lw    $ra, 0x14($sp)
/* 136F94 80152C04 27BD0020 */  addiu $sp, $sp, 0x20
/* 136F98 80152C08 03E00008 */  jr    $ra
/* 136F9C 80152C0C 00000000 */   nop   
.type func_80152B9C, @function
.size func_80152B9C, . - func_80152B9C
