glabel func_8010B0D8
/* 093B48 8010B0D8 3C028013 */  lui   $v0, %hi(D_8012D940) # $v0, 0x8013
/* 093B4C 8010B0DC 2442D940 */  addiu $v0, %lo(D_8012D940) # addiu $v0, $v0, -0x26c0
/* 093B50 8010B0E0 8C4E0000 */  lw    $t6, ($v0)
/* 093B54 8010B0E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 093B58 8010B0E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 093B5C 8010B0EC 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 093B60 8010B0F0 AC400000 */  sw    $zero, ($v0)
/* 093B64 8010B0F4 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 093B68 8010B0F8 24060008 */  li    $a2, 8
/* 093B6C 8010B0FC 0C042BBC */  jal   func_8010AEF0
/* 093B70 8010B100 AFAE001C */   sw    $t6, 0x1c($sp)
/* 093B74 8010B104 8FBF0014 */  lw    $ra, 0x14($sp)
/* 093B78 8010B108 8FAF001C */  lw    $t7, 0x1c($sp)
/* 093B7C 8010B10C 3C018013 */  lui   $at, 0x8013
/* 093B80 8010B110 27BD0020 */  addiu $sp, $sp, 0x20
/* 093B84 8010B114 03E00008 */  jr    $ra
/* 093B88 8010B118 AC2FD940 */   sw    $t7, -0x26c0($at)
.type func_8010B0D8, @function
.size func_8010B0D8, . - func_8010B0D8
