glabel func_800B1F70
/* 05A1C0 800B1F70 8C820010 */  lw    $v0, 0x10($a0)
/* 05A1C4 800B1F74 50400004 */  beql  $v0, $zero, .L800B1F88_ovl1
/* 05A1C8 800B1F78 8C820008 */   lw    $v0, 8($a0)
/* 05A1CC 800B1F7C 03E00008 */  jr    $ra
/* 05A1D0 800B1F80 00000000 */   nop   
.type func_800B1F70, @function

/* 05A1D4 800B1F84 8C820008 */  lw    $v0, 8($a0)
.L800B1F88_ovl1:
/* 05A1D8 800B1F88 50400004 */  beql  $v0, $zero, .L800B1F9C_ovl1
/* 05A1DC 800B1F8C 8C820014 */   lw    $v0, 0x14($a0)
/* 05A1E0 800B1F90 03E00008 */  jr    $ra
/* 05A1E4 800B1F94 00000000 */   nop   
.type func_800B1F70, @function

.L800B1F98_ovl1:
/* 05A1E8 800B1F98 8C820014 */  lw    $v0, 0x14($a0)
.L800B1F9C_ovl1:
/* 05A1EC 800B1F9C 54A20004 */  bnel  $a1, $v0, .L800B1FB0_ovl1
/* 05A1F0 800B1FA0 8C430008 */   lw    $v1, 8($v0)
/* 05A1F4 800B1FA4 03E00008 */  jr    $ra
/* 05A1F8 800B1FA8 00001025 */   move  $v0, $zero
.type func_800B1F70, @function

/* 05A1FC 800B1FAC 8C430008 */  lw    $v1, 8($v0)
.L800B1FB0_ovl1:
/* 05A200 800B1FB0 10600003 */  beqz  $v1, .L800B1FC0_ovl1
/* 05A204 800B1FB4 00000000 */   nop   
/* 05A208 800B1FB8 03E00008 */  jr    $ra
/* 05A20C 800B1FBC 00601025 */   move  $v0, $v1
.type func_800B1F70, @function

.L800B1FC0_ovl1:
/* 05A210 800B1FC0 1000FFF5 */  b     .L800B1F98_ovl1
/* 05A214 800B1FC4 00402025 */   move  $a0, $v0
/* 05A218 800B1FC8 03E00008 */  jr    $ra
/* 05A21C 800B1FCC 00801025 */   move  $v0, $a0
.type func_800B1F70, @function
.size func_800B1F70, . - func_800B1F70
