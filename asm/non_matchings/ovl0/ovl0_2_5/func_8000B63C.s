glabel func_8000B63C
/* 00C23C 8000B63C 8C8E0000 */  lw    $t6, ($a0)
/* 00C240 8000B640 00001825 */  move  $v1, $zero
/* 00C244 8000B644 14AE0003 */  bne   $a1, $t6, .L8000B654_ovl0
/* 00C248 8000B648 00000000 */   nop   
/* 00C24C 8000B64C 03E00008 */  jr    $ra
/* 00C250 8000B650 00801025 */   move  $v0, $a0

.L8000B654_ovl0:
/* 00C254 8000B654 03E00008 */  jr    $ra
/* 00C258 8000B658 00601025 */   move  $v0, $v1
