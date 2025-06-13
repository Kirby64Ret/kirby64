glabel func_80152C84
/* 137014 80152C84 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 137018 80152C88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 13701C 80152C8C AFA40020 */  sw    $a0, 0x20($sp)
/* 137020 80152C90 8C860000 */  lw    $a2, ($a0)
/* 137024 80152C94 3C0F8005 */  lui   $t7, %hi(D_8004A404) # $t7, 0x8005
/* 137028 80152C98 8DEFA404 */  lw    $t7, %lo(D_8004A404)($t7)
/* 13702C 80152C9C 00C02025 */  move  $a0, $a2
/* 137030 80152CA0 AFA6001C */  sw    $a2, 0x1c($sp)
/* 137034 80152CA4 0C054784 */  jal   func_80151E10_ovl6
/* 137038 80152CA8 AFAF0018 */   sw    $t7, 0x18($sp)
/* 13703C 80152CAC 8FA6001C */  lw    $a2, 0x1c($sp)
/* 137040 80152CB0 3C048016 */  lui   $a0, 0x8016
/* 137044 80152CB4 8FA50018 */  lw    $a1, 0x18($sp)
/* 137048 80152CB8 0006C080 */  sll   $t8, $a2, 2
/* 13704C 80152CBC 00982021 */  addu  $a0, $a0, $t8
/* 137050 80152CC0 0C054528 */  jal   func_801514A0_ovl6
/* 137054 80152CC4 8C84A570 */   lw    $a0, -0x5a90($a0)
/* 137058 80152CC8 3C028005 */  lui   $v0, %hi(gDynamicBuffer1) # $v0, 0x8005
/* 13705C 80152CCC 2442A3F8 */  addiu $v0, %lo(gDynamicBuffer1) # addiu $v0, $v0, -0x5c08
/* 137060 80152CD0 8C59000C */  lw    $t9, 0xc($v0)
/* 137064 80152CD4 8FA40020 */  lw    $a0, 0x20($sp)
/* 137068 80152CD8 8FA50018 */  lw    $a1, 0x18($sp)
/* 13706C 80152CDC 27280018 */  addiu $t0, $t9, 0x18
/* 137070 80152CE0 0C05484E */  jal   func_80152138_ovl6
/* 137074 80152CE4 AC48000C */   sw    $t0, 0xc($v0)
/* 137078 80152CE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 13707C 80152CEC 27BD0020 */  addiu $sp, $sp, 0x20
/* 137080 80152CF0 03E00008 */  jr    $ra
/* 137084 80152CF4 00000000 */   nop   
.type func_80152C84, @function
.size func_80152C84, . - func_80152C84
