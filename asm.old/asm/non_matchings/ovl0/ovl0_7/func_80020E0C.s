glabel func_80020E0C
/* 021A0C 80020E0C 3C0E8009 */  lui   $t6, %hi(D_8009646C) # $t6, 0x8009
/* 021A10 80020E10 8DCE646C */  lw    $t6, %lo(D_8009646C)($t6)
/* 021A14 80020E14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 021A18 80020E18 00041080 */  sll   $v0, $a0, 2
/* 021A1C 80020E1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 021A20 80020E20 01C27821 */  addu  $t7, $t6, $v0
/* 021A24 80020E24 8DE50000 */  lw    $a1, ($t7)
/* 021A28 80020E28 10A00008 */  beqz  $a1, .L80020E4C_ovl0
/* 021A2C 80020E2C 00A02025 */   move  $a0, $a1
/* 021A30 80020E30 0C008E8A */  jal   func_80023A28
/* 021A34 80020E34 AFA2001C */   sw    $v0, 0x1c($sp)
/* 021A38 80020E38 3C188009 */  lui   $t8, %hi(D_8009646C) # $t8, 0x8009
/* 021A3C 80020E3C 8FA2001C */  lw    $v0, 0x1c($sp)
/* 021A40 80020E40 8F18646C */  lw    $t8, %lo(D_8009646C)($t8)
/* 021A44 80020E44 0302C821 */  addu  $t9, $t8, $v0
/* 021A48 80020E48 AF200000 */  sw    $zero, ($t9)
.L80020E4C_ovl0:
/* 021A4C 80020E4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 021A50 80020E50 27BD0020 */  addiu $sp, $sp, 0x20
/* 021A54 80020E54 03E00008 */  jr    $ra
/* 021A58 80020E58 00000000 */   nop   
.type func_80020E0C, @function
.size func_80020E0C, . - func_80020E0C
