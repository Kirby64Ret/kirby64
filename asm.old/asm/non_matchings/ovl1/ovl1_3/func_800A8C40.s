glabel func_800A8C40
/* 050E90 800A8C40 00047402 */  srl   $t6, $a0, 0x10
/* 050E94 800A8C44 3C18800D */  lui   $t8, %hi(D_800D0104) # $t8, 0x800d
/* 050E98 800A8C48 27180104 */  addiu $t8, %lo(D_800D0104) # addiu $t8, $t8, 0x104
/* 050E9C 800A8C4C 000E7880 */  sll   $t7, $t6, 2
/* 050EA0 800A8C50 01F83021 */  addu  $a2, $t7, $t8
/* 050EA4 800A8C54 8CD90000 */  lw    $t9, ($a2)
/* 050EA8 800A8C58 3087FFFF */  andi  $a3, $a0, 0xffff
/* 050EAC 800A8C5C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 050EB0 800A8C60 00073880 */  sll   $a3, $a3, 2
/* 050EB4 800A8C64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 050EB8 800A8C68 03274021 */  addu  $t0, $t9, $a3
/* 050EBC 800A8C6C 8D050000 */  lw    $a1, ($t0)
/* 050EC0 800A8C70 54A00017 */  bnezl $a1, .L800A8CD0_ovl1
/* 050EC4 800A8C74 8FBF0014 */   lw    $ra, 0x14($sp)
/* 050EC8 800A8C78 24050003 */  li    $a1, 3
/* 050ECC 800A8C7C AFA60020 */  sw    $a2, 0x20($sp)
/* 050ED0 800A8C80 0C02A2C3 */  jal   func_800A8B0C
/* 050ED4 800A8C84 AFA7001C */   sw    $a3, 0x1c($sp)
/* 050ED8 800A8C88 8FA60020 */  lw    $a2, 0x20($sp)
/* 050EDC 800A8C8C 8FA7001C */  lw    $a3, 0x1c($sp)
/* 050EE0 800A8C90 8CC90000 */  lw    $t1, ($a2)
/* 050EE4 800A8C94 01275021 */  addu  $t2, $t1, $a3
/* 050EE8 800A8C98 AD420000 */  sw    $v0, ($t2)
/* 050EEC 800A8C9C 8CCB0000 */  lw    $t3, ($a2)
/* 050EF0 800A8CA0 01676021 */  addu  $t4, $t3, $a3
/* 050EF4 800A8CA4 8D830000 */  lw    $v1, ($t4)
/* 050EF8 800A8CA8 8C6D0008 */  lw    $t5, 8($v1)
/* 050EFC 800A8CAC 8C6F000C */  lw    $t7, 0xc($v1)
/* 050F00 800A8CB0 01A37021 */  addu  $t6, $t5, $v1
/* 050F04 800A8CB4 01E3C021 */  addu  $t8, $t7, $v1
/* 050F08 800A8CB8 AC6E0008 */  sw    $t6, 8($v1)
/* 050F0C 800A8CBC AC78000C */  sw    $t8, 0xc($v1)
/* 050F10 800A8CC0 8CD90000 */  lw    $t9, ($a2)
/* 050F14 800A8CC4 03274021 */  addu  $t0, $t9, $a3
/* 050F18 800A8CC8 8D050000 */  lw    $a1, ($t0)
/* 050F1C 800A8CCC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A8CD0_ovl1:
/* 050F20 800A8CD0 27BD0030 */  addiu $sp, $sp, 0x30
/* 050F24 800A8CD4 00A01025 */  move  $v0, $a1
/* 050F28 800A8CD8 03E00008 */  jr    $ra
/* 050F2C 800A8CDC 00000000 */   nop   
.type func_800A8C40, @function
.size func_800A8C40, . - func_800A8C40
