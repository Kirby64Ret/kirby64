glabel func_80020BE8
/* 0217E8 80020BE8 3C068009 */  lui   $a2, %hi(D_800964D3) # $a2, 0x8009
/* 0217EC 80020BEC 90C664D3 */  lbu   $a2, %lo(D_800964D3)($a2)
/* 0217F0 80020BF0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0217F4 80020BF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0217F8 80020BF8 00803825 */  move  $a3, $a0
/* 0217FC 80020BFC 18C00017 */  blez  $a2, .L80020C5C_ovl0
/* 021800 80020C00 00002825 */   move  $a1, $zero
/* 021804 80020C04 3C028009 */  lui   $v0, %hi(D_8009646C) # $v0, 0x8009
/* 021808 80020C08 8C42646C */  lw    $v0, %lo(D_8009646C)($v0)
/* 02180C 80020C0C 00001825 */  move  $v1, $zero
.L80020C10_ovl0:
/* 021810 80020C10 8C4E0000 */  lw    $t6, ($v0)
/* 021814 80020C14 24420004 */  addiu $v0, $v0, 4
/* 021818 80020C18 15C0000C */  bnez  $t6, .L80020C4C_ovl0
/* 02181C 80020C1C 30E4FFFF */   andi  $a0, $a3, 0xffff
/* 021820 80020C20 AFA3001C */  sw    $v1, 0x1c($sp)
/* 021824 80020C24 0C008F2C */  jal   func_80023CB0
/* 021828 80020C28 AFA50024 */   sw    $a1, 0x24($sp)
/* 02182C 80020C2C 3C0F8009 */  lui   $t7, %hi(D_8009646C) # $t7, 0x8009
/* 021830 80020C30 8DEF646C */  lw    $t7, %lo(D_8009646C)($t7)
/* 021834 80020C34 8FA3001C */  lw    $v1, 0x1c($sp)
/* 021838 80020C38 8FA50024 */  lw    $a1, 0x24($sp)
/* 02183C 80020C3C 01E3C021 */  addu  $t8, $t7, $v1
/* 021840 80020C40 AF020000 */  sw    $v0, ($t8)
/* 021844 80020C44 10000006 */  b     .L80020C60_ovl0
/* 021848 80020C48 00A01025 */   move  $v0, $a1
.L80020C4C_ovl0:
/* 02184C 80020C4C 24A50001 */  addiu $a1, $a1, 1
/* 021850 80020C50 00A6082A */  slt   $at, $a1, $a2
/* 021854 80020C54 1420FFEE */  bnez  $at, .L80020C10_ovl0
/* 021858 80020C58 24630004 */   addiu $v1, $v1, 4
.L80020C5C_ovl0:
/* 02185C 80020C5C 2402FFFF */  li    $v0, -1
.L80020C60_ovl0:
/* 021860 80020C60 8FBF0014 */  lw    $ra, 0x14($sp)
/* 021864 80020C64 27BD0028 */  addiu $sp, $sp, 0x28
/* 021868 80020C68 03E00008 */  jr    $ra
/* 02186C 80020C6C 00000000 */   nop   
