glabel func_800A8E54
/* 0510A4 800A8E54 00047402 */  srl   $t6, $a0, 0x10
/* 0510A8 800A8E58 3C18800D */  lui   $t8, %hi(D_800D0104) # $t8, 0x800d
/* 0510AC 800A8E5C 27180104 */  addiu $t8, %lo(D_800D0104) # addiu $t8, $t8, 0x104
/* 0510B0 800A8E60 000E7880 */  sll   $t7, $t6, 2
/* 0510B4 800A8E64 01F81821 */  addu  $v1, $t7, $t8
/* 0510B8 800A8E68 8C790000 */  lw    $t9, ($v1)
/* 0510BC 800A8E6C 3086FFFF */  andi  $a2, $a0, 0xffff
/* 0510C0 800A8E70 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0510C4 800A8E74 00063080 */  sll   $a2, $a2, 2
/* 0510C8 800A8E78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0510CC 800A8E7C 03264021 */  addu  $t0, $t9, $a2
/* 0510D0 800A8E80 8D020000 */  lw    $v0, ($t0)
/* 0510D4 800A8E84 1040000A */  beqz  $v0, .L800A8EB0_ovl1
/* 0510D8 800A8E88 00452025 */   or    $a0, $v0, $a1
/* 0510DC 800A8E8C AFA3001C */  sw    $v1, 0x1c($sp)
/* 0510E0 800A8E90 0C02A15E */  jal   func_800A8578
/* 0510E4 800A8E94 AFA60018 */   sw    $a2, 0x18($sp)
/* 0510E8 800A8E98 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0510EC 800A8E9C 14400004 */  bnez  $v0, .L800A8EB0_ovl1
/* 0510F0 800A8EA0 8FA60018 */   lw    $a2, 0x18($sp)
/* 0510F4 800A8EA4 8C690000 */  lw    $t1, ($v1)
/* 0510F8 800A8EA8 01265021 */  addu  $t2, $t1, $a2
/* 0510FC 800A8EAC AD400000 */  sw    $zero, ($t2)
.L800A8EB0_ovl1:
/* 051100 800A8EB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 051104 800A8EB4 27BD0030 */  addiu $sp, $sp, 0x30
/* 051108 800A8EB8 03E00008 */  jr    $ra
/* 05110C 800A8EBC 00000000 */   nop   
.type func_800A8E54, @function
.size func_800A8E54, . - func_800A8E54
