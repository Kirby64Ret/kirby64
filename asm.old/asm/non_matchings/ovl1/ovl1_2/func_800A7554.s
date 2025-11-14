glabel func_800A7554
/* 04F7A4 800A7554 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04F7A8 800A7558 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F7AC 800A755C 0C008322 */  jal   func_80020C88_ovl1
/* 04F7B0 800A7560 00000000 */   nop   
/* 04F7B4 800A7564 3C059999 */  lui   $a1, (0x99999999 >> 16) # lui $a1, 0x9999
/* 04F7B8 800A7568 34A59999 */  ori   $a1, (0x99999999 & 0xFFFF) # ori $a1, $a1, 0x9999
/* 04F7BC 800A756C 0C029D6C */  jal   play_music
/* 04F7C0 800A7570 00002025 */   move  $a0, $zero
/* 04F7C4 800A7574 00002025 */  move  $a0, $zero
/* 04F7C8 800A7578 0C008266 */  jal   func_80020998_ovl1
/* 04F7CC 800A757C 24057800 */   li    $a1, 30720
/* 04F7D0 800A7580 3C02800C */  lui   $v0, %hi(D_800C0530) # $v0, 0x800c
/* 04F7D4 800A7584 24420530 */  addiu $v0, %lo(D_800C0530) # addiu $v0, $v0, 0x530
/* 04F7D8 800A7588 944E0000 */  lhu   $t6, ($v0)
/* 04F7DC 800A758C 3C01800D */  lui   $at, %hi(sMusicCount) # $at, 0x800d
/* 04F7E0 800A7590 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04F7E4 800A7594 25CFFFFF */  addiu $t7, $t6, -1
/* 04F7E8 800A7598 AC2F6B4C */  sw    $t7, %lo(sMusicCount)($at)
/* 04F7EC 800A759C 94580002 */  lhu   $t8, 2($v0)
/* 04F7F0 800A75A0 3C01800D */ lui $at, %hi(sSoundCount)
/* 04F7F4 800A75A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 04F7F8 800A75A8 03E00008 */  jr    $ra
/* 04F7FC 800A75AC AC386B50 */ sw $t8, %lo(sSoundCount)($at)
.type func_800A7554, @function
.size func_800A7554, . - func_800A7554
