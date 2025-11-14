glabel func_8000B3E0
/* 00BFE0 8000B3E0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00BFE4 8000B3E4 AFB00014 */  sw    $s0, 0x14($sp)
/* 00BFE8 8000B3E8 3C108005 */  lui   $s0, 0x8005
/* 00BFEC 8000B3EC 00047080 */  sll   $t6, $a0, 2
/* 00BFF0 8000B3F0 020E8021 */  addu  $s0, $s0, $t6
/* 00BFF4 8000B3F4 8E10A578 */  lw    $s0, -0x5a88($s0)
/* 00BFF8 8000B3F8 AFB30020 */  sw    $s3, 0x20($sp)
/* 00BFFC 8000B3FC AFB2001C */  sw    $s2, 0x1c($sp)
/* 00C000 8000B400 00C09025 */  move  $s2, $a2
/* 00C004 8000B404 00A09825 */  move  $s3, $a1
/* 00C008 8000B408 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00C00C 8000B40C 12000007 */  beqz  $s0, .L8000B42C_ovl0
/* 00C010 8000B410 AFB10018 */   sw    $s1, 0x18($sp)
.L8000B414_ovl0:
/* 00C014 8000B414 8E110004 */  lw    $s1, 4($s0)
/* 00C018 8000B418 02002025 */  move  $a0, $s0
/* 00C01C 8000B41C 0260F809 */  jalr  $s3
/* 00C020 8000B420 02402825 */  move  $a1, $s2
/* 00C024 8000B424 1620FFFB */  bnez  $s1, .L8000B414_ovl0
/* 00C028 8000B428 02208025 */   move  $s0, $s1
.L8000B42C_ovl0:
/* 00C02C 8000B42C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00C030 8000B430 8FB00014 */  lw    $s0, 0x14($sp)
/* 00C034 8000B434 8FB10018 */  lw    $s1, 0x18($sp)
/* 00C038 8000B438 8FB2001C */  lw    $s2, 0x1c($sp)
/* 00C03C 8000B43C 8FB30020 */  lw    $s3, 0x20($sp)
/* 00C040 8000B440 03E00008 */  jr    $ra
/* 00C044 8000B444 27BD0028 */   addiu $sp, $sp, 0x28
.type func_8000B3E0, @function
.size func_8000B3E0, . - func_8000B3E0
