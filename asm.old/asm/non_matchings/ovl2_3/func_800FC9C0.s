glabel spawn_entity
/* 085430 800FC9C0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 085434 800FC9C4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 085438 800FC9C8 AFB00038 */  sw    $s0, 0x38($sp)
/* 08543C 800FC9CC 90A20004 */  lbu   $v0, 4($a1)
/* 085440 800FC9D0 00A08025 */  move  $s0, $a1
/* 085444 800FC9D4 260F0014 */  addiu $t7, $s0, 0x14
/* 085448 800FC9D8 304E0001 */  andi  $t6, $v0, 1
/* 08544C 800FC9DC 55C00017 */  bnezl $t6, .L800FCA3C_ovl2
/* 085450 800FC9E0 92050001 */   lbu   $a1, 1($s0)
/* 085454 800FC9E4 920F0002 */  lbu   $t7, 2($s0)
/* 085458 800FC9E8 90A50000 */  lbu   $a1, ($a1)
/* 08545C 800FC9EC 8E060024 */  lw    $a2, 0x24($s0)
/* 085460 800FC9F0 92070001 */  lbu   $a3, 1($s0)
/* 085464 800FC9F4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 085468 800FC9F8 92180003 */  lbu   $t8, 3($s0)
/* 08546C 800FC9FC AFA20018 */  sw    $v0, 0x18($sp)
/* 085470 800FCA00 26090008 */  addiu $t1, $s0, 8
/* 085474 800FCA04 AFB80014 */  sw    $t8, 0x14($sp)
/* 085478 800FCA08 92190005 */  lbu   $t9, 5($s0)
/* 08547C 800FCA0C 260A0014 */  addiu $t2, $s0, 0x14
/* 085480 800FCA10 260B0020 */  addiu $t3, $s0, 0x20
/* 085484 800FCA14 AFB9001C */  sw    $t9, 0x1c($sp)
/* 085488 800FCA18 86080006 */  lh    $t0, 6($s0)
/* 08548C 800FCA1C AFAB002C */  sw    $t3, 0x2c($sp)
/* 085490 800FCA20 AFAA0028 */  sw    $t2, 0x28($sp)
/* 085494 800FCA24 AFA90024 */  sw    $t1, 0x24($sp)
/* 085498 800FCA28 0C03F345 */  jal   func_800FCD14
/* 08549C 800FCA2C AFA80020 */   sw    $t0, 0x20($sp)
/* 0854A0 800FCA30 10000010 */  b     .L800FCA74_ovl2
/* 0854A4 800FCA34 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0854A8 800FCA38 92050001 */  lbu   $a1, 1($s0)
.L800FCA3C_ovl2:
/* 0854AC 800FCA3C 92060002 */  lbu   $a2, 2($s0)
/* 0854B0 800FCA40 92070003 */  lbu   $a3, 3($s0)
/* 0854B4 800FCA44 AFA20010 */  sw    $v0, 0x10($sp)
/* 0854B8 800FCA48 920C0005 */  lbu   $t4, 5($s0)
/* 0854BC 800FCA4C 260E0008 */  addiu $t6, $s0, 8
/* 0854C0 800FCA50 26180020 */  addiu $t8, $s0, 0x20
/* 0854C4 800FCA54 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0854C8 800FCA58 860D0006 */  lh    $t5, 6($s0)
/* 0854CC 800FCA5C AFB80024 */  sw    $t8, 0x24($sp)
/* 0854D0 800FCA60 AFAF0020 */  sw    $t7, 0x20($sp)
/* 0854D4 800FCA64 AFAE001C */  sw    $t6, 0x1c($sp)
/* 0854D8 800FCA68 0C03F370 */  jal   func_800FCDC0
/* 0854DC 800FCA6C AFAD0018 */   sw    $t5, 0x18($sp)
/* 0854E0 800FCA70 8FBF003C */  lw    $ra, 0x3c($sp)
.L800FCA74_ovl2:
/* 0854E4 800FCA74 8FB00038 */  lw    $s0, 0x38($sp)
/* 0854E8 800FCA78 27BD0040 */  addiu $sp, $sp, 0x40
/* 0854EC 800FCA7C 03E00008 */  jr    $ra
/* 0854F0 800FCA80 00000000 */   nop   
.size spawn_entity, . - spawn_entity
