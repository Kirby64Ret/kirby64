glabel func_8010EA20
/* 097490 8010EA20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 097494 8010EA24 AFA50024 */  sw    $a1, 0x24($sp)
/* 097498 8010EA28 8FAF0024 */  lw    $t7, 0x24($sp)
/* 09749C 8010EA2C AFA60028 */  sw    $a2, 0x28($sp)
/* 0974A0 8010EA30 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0974A4 8010EA34 AFA40020 */  sw    $a0, 0x20($sp)
/* 0974A8 8010EA38 8FB80028 */  lw    $t8, 0x28($sp)
/* 0974AC 8010EA3C 00807025 */  move  $t6, $a0
/* 0974B0 8010EA40 8DC50018 */  lw    $a1, 0x18($t6)
/* 0974B4 8010EA44 8DE70018 */  lw    $a3, 0x18($t7)
/* 0974B8 8010EA48 2484000C */  addiu $a0, $a0, 0xc
/* 0974BC 8010EA4C 25E6000C */  addiu $a2, $t7, 0xc
/* 0974C0 8010EA50 0C043A3C */  jal   func_8010E8F0
/* 0974C4 8010EA54 AFB80010 */   sw    $t8, 0x10($sp)
/* 0974C8 8010EA58 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0974CC 8010EA5C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0974D0 8010EA60 03E00008 */  jr    $ra
/* 0974D4 8010EA64 00000000 */   nop   
.type func_8010EA20, @function
.size func_8010EA20, . - func_8010EA20
