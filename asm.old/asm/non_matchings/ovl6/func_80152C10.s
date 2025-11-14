glabel func_80152C10
/* 136FA0 80152C10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 136FA4 80152C14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 136FA8 80152C18 AFA40020 */  sw    $a0, 0x20($sp)
/* 136FAC 80152C1C 8C860000 */  lw    $a2, ($a0)
/* 136FB0 80152C20 3C0F8005 */  lui   $t7, %hi(D_8004A404) # $t7, 0x8005
/* 136FB4 80152C24 8DEFA404 */  lw    $t7, %lo(D_8004A404)($t7)
/* 136FB8 80152C28 00C02025 */  move  $a0, $a2
/* 136FBC 80152C2C AFA6001C */  sw    $a2, 0x1c($sp)
/* 136FC0 80152C30 0C054784 */  jal   func_80151E10_ovl6
/* 136FC4 80152C34 AFAF0018 */   sw    $t7, 0x18($sp)
/* 136FC8 80152C38 8FA6001C */  lw    $a2, 0x1c($sp)
/* 136FCC 80152C3C 3C048016 */  lui   $a0, 0x8016
/* 136FD0 80152C40 8FA50018 */  lw    $a1, 0x18($sp)
/* 136FD4 80152C44 0006C080 */  sll   $t8, $a2, 2
/* 136FD8 80152C48 00982021 */  addu  $a0, $a0, $t8
/* 136FDC 80152C4C 0C054528 */  jal   func_801514A0_ovl6
/* 136FE0 80152C50 8C84A570 */   lw    $a0, -0x5a90($a0)
/* 136FE4 80152C54 3C028005 */  lui   $v0, %hi(gDynamicBuffer1) # $v0, 0x8005
/* 136FE8 80152C58 2442A3F8 */  addiu $v0, %lo(gDynamicBuffer1) # addiu $v0, $v0, -0x5c08
/* 136FEC 80152C5C 8C59000C */  lw    $t9, 0xc($v0)
/* 136FF0 80152C60 8FA40020 */  lw    $a0, 0x20($sp)
/* 136FF4 80152C64 8FA50018 */  lw    $a1, 0x18($sp)
/* 136FF8 80152C68 27280018 */  addiu $t0, $t9, 0x18
/* 136FFC 80152C6C 0C054798 */  jal   func_80151E60_ovl6
/* 137000 80152C70 AC48000C */   sw    $t0, 0xc($v0)
/* 137004 80152C74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 137008 80152C78 27BD0020 */  addiu $sp, $sp, 0x20
/* 13700C 80152C7C 03E00008 */  jr    $ra
/* 137010 80152C80 00000000 */   nop   
.type func_80152C10, @function
.size func_80152C10, . - func_80152C10
