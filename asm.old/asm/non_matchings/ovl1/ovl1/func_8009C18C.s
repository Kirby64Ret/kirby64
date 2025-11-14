glabel func_8009C18C
/* 0443DC 8009C18C 90820000 */  lbu   $v0, ($a0)
/* 0443E0 8009C190 24840001 */  addiu $a0, $a0, 1
/* 0443E4 8009C194 304E0080 */  andi  $t6, $v0, 0x80
/* 0443E8 8009C198 11C00007 */  beqz  $t6, .L8009C1B8_ovl1
/* 0443EC 8009C19C 00401825 */   move  $v1, $v0
/* 0443F0 8009C1A0 908F0000 */  lbu   $t7, ($a0)
/* 0443F4 8009C1A4 3058007F */  andi  $t8, $v0, 0x7f
/* 0443F8 8009C1A8 0018CA00 */  sll   $t9, $t8, 8
/* 0443FC 8009C1AC 01F91021 */  addu  $v0, $t7, $t9
/* 044400 8009C1B0 3043FFFF */  andi  $v1, $v0, 0xffff
/* 044404 8009C1B4 24840001 */  addiu $a0, $a0, 1
.L8009C1B8_ovl1:
/* 044408 8009C1B8 24680001 */  addiu $t0, $v1, 1
/* 04440C 8009C1BC A4A80000 */  sh    $t0, ($a1)
/* 044410 8009C1C0 03E00008 */  jr    $ra
/* 044414 8009C1C4 00801025 */   move  $v0, $a0
.type func_8009C18C, @function
.size func_8009C18C, . - func_8009C18C
