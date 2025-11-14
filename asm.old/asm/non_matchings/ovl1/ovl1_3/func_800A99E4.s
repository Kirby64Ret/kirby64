glabel func_800A99E4
/* 051C34 800A99E4 3C0F800E */  lui   $t7, %hi(D_800DFBD0) # $t7, 0x800e
/* 051C38 800A99E8 25EFFBD0 */  addiu $t7, %lo(D_800DFBD0) # addiu $t7, $t7, -0x430
/* 051C3C 800A99EC 00047080 */  sll   $t6, $a0, 2
/* 051C40 800A99F0 01CF1021 */  addu  $v0, $t6, $t7
/* 051C44 800A99F4 8C430000 */  lw    $v1, ($v0)
/* 051C48 800A99F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 051C4C 800A99FC 2401FFFF */  li    $at, -1
/* 051C50 800A9A00 10610005 */  beq   $v1, $at, .L800A9A18_ovl1
/* 051C54 800A9A04 AFBF0014 */   sw    $ra, 0x14($sp)
/* 051C58 800A9A08 34640001 */  ori   $a0, $v1, 1
/* 051C5C 800A9A0C 0C02A15E */  jal   func_800A8578
/* 051C60 800A9A10 AFA2001C */   sw    $v0, 0x1c($sp)
/* 051C64 800A9A14 8FA2001C */  lw    $v0, 0x1c($sp)
.L800A9A18_ovl1:
/* 051C68 800A9A18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 051C6C 800A9A1C 2418FFFF */  li    $t8, -1
/* 051C70 800A9A20 AC580000 */  sw    $t8, ($v0)
/* 051C74 800A9A24 03E00008 */  jr    $ra
/* 051C78 800A9A28 27BD0020 */   addiu $sp, $sp, 0x20
.type func_800A99E4, @function
.size func_800A99E4, . - func_800A99E4
