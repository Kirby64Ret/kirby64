glabel func_8000B870
/* 00C470 8000B870 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C474 8000B874 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00C478 8000B878 AFB10018 */  sw    $s1, 0x18($sp)
/* 00C47C 8000B87C 14800003 */  bnez  $a0, .L8000B88C_ovl0
/* 00C480 8000B880 AFB00014 */   sw    $s0, 0x14($sp)
/* 00C484 8000B884 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 00C488 8000B888 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
.L8000B88C_ovl0:
/* 00C48C 8000B88C 8C900018 */  lw    $s0, 0x18($a0)
/* 00C490 8000B890 52000007 */  beql  $s0, $zero, .L8000B8B0_ovl0
/* 00C494 8000B894 8FBF001C */   lw    $ra, 0x1c($sp)
.L8000B898_ovl0:
/* 00C498 8000B898 8E110000 */  lw    $s1, ($s0)
/* 00C49C 8000B89C 0C00236A */  jal   func_80008DA8_ovl0
/* 00C4A0 8000B8A0 02002025 */   move  $a0, $s0
/* 00C4A4 8000B8A4 1620FFFC */  bnez  $s1, .L8000B898_ovl0
/* 00C4A8 8000B8A8 02208025 */   move  $s0, $s1
/* 00C4AC 8000B8AC 8FBF001C */  lw    $ra, 0x1c($sp)
.L8000B8B0_ovl0:
/* 00C4B0 8000B8B0 8FB00014 */  lw    $s0, 0x14($sp)
/* 00C4B4 8000B8B4 8FB10018 */  lw    $s1, 0x18($sp)
/* 00C4B8 8000B8B8 03E00008 */  jr    $ra
/* 00C4BC 8000B8BC 27BD0020 */   addiu $sp, $sp, 0x20
