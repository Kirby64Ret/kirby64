glabel func_800F88A0
/* 081310 800F88A0 3C0EA000 */  lui   $t6, %hi(D_A0000200) # $t6, 0xa000
/* 081314 800F88A4 8DCF0200 */  lw    $t7, %lo(D_A0000200)($t6)
/* 081318 800F88A8 3C01AC29 */  lui   $at, 0xac29
/* 08131C 800F88AC 00001825 */  move  $v1, $zero
/* 081320 800F88B0 15E10003 */  bne   $t7, $at, .L800F88C0_ovl2
/* 081324 800F88B4 00000000 */   nop   
/* 081328 800F88B8 03E00008 */  jr    $ra
/* 08132C 800F88BC 24020001 */   li    $v0, 1
.type func_800F88A0, @function

.L800F88C0_ovl2:
/* 081330 800F88C0 03E00008 */  jr    $ra
/* 081334 800F88C4 00601025 */   move  $v0, $v1
.type func_800F88A0, @function
.size func_800F88A0, . - func_800F88A0
