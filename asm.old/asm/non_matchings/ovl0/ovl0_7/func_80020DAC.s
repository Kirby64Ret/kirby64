glabel func_80020DAC
/* 0219AC 80020DAC 30AE00FF */  andi  $t6, $a1, 0xff
/* 0219B0 80020DB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0219B4 80020DB4 29C10080 */  slti  $at, $t6, 0x80
/* 0219B8 80020DB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0219BC 80020DBC 00803825 */  move  $a3, $a0
/* 0219C0 80020DC0 14200002 */  bnez  $at, .L80020DCC_ovl0
/* 0219C4 80020DC4 30A600FF */   andi  $a2, $a1, 0xff
/* 0219C8 80020DC8 2406007F */  li    $a2, 127
.L80020DCC_ovl0:
/* 0219CC 80020DCC 3C0F8009 */  lui   $t7, %hi(D_8009646C) # $t7, 0x8009
/* 0219D0 80020DD0 8DEF646C */  lw    $t7, %lo(D_8009646C)($t7)
/* 0219D4 80020DD4 0007C080 */  sll   $t8, $a3, 2
/* 0219D8 80020DD8 01F8C821 */  addu  $t9, $t7, $t8
/* 0219DC 80020DDC 8F240000 */  lw    $a0, ($t9)
/* 0219E0 80020DE0 50800004 */  beql  $a0, $zero, .L80020DF4_ovl0
/* 0219E4 80020DE4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0219E8 80020DE8 0C008CE1 */  jal   func_80023384
/* 0219EC 80020DEC 30C500FF */   andi  $a1, $a2, 0xff
/* 0219F0 80020DF0 8FBF0014 */  lw    $ra, 0x14($sp)
.L80020DF4_ovl0:
/* 0219F4 80020DF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0219F8 80020DF8 03E00008 */  jr    $ra
/* 0219FC 80020DFC 00000000 */   nop   
.type func_80020DAC, @function
.size func_80020DAC, . - func_80020DAC
