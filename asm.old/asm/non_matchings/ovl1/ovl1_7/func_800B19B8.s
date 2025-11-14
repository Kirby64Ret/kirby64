glabel func_800B19B8
/* 059C08 800B19B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 059C0C 800B19BC 00057080 */  sll   $t6, $a1, 2
/* 059C10 800B19C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 059C14 800B19C4 008E1021 */  addu  $v0, $a0, $t6
/* 059C18 800B19C8 8C460000 */  lw    $a2, ($v0)
/* 059C1C 800B19CC 10C00005 */  beqz  $a2, .L800B19E4_ovl1
/* 059C20 800B19D0 00C02025 */   move  $a0, $a2
/* 059C24 800B19D4 0C00236A */  jal   func_80008DA8
/* 059C28 800B19D8 AFA20018 */   sw    $v0, 0x18($sp)
/* 059C2C 800B19DC 8FA20018 */  lw    $v0, 0x18($sp)
/* 059C30 800B19E0 AC400000 */  sw    $zero, ($v0)
.L800B19E4_ovl1:
/* 059C34 800B19E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 059C38 800B19E8 27BD0020 */  addiu $sp, $sp, 0x20
/* 059C3C 800B19EC 03E00008 */  jr    $ra
/* 059C40 800B19F0 00000000 */   nop   
.type func_800B19B8, @function
.size func_800B19B8, . - func_800B19B8
