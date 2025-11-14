glabel func_801164D4
/* 09EF44 801164D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EF48 801164D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EF4C 801164DC 8C8E0000 */  lw    $t6, ($a0)
/* 09EF50 801164E0 3C01800D */  lui   $at, %hi(D_800D70A4) # $at, 0x800d
/* 09EF54 801164E4 AFA40018 */  sw    $a0, 0x18($sp)
/* 09EF58 801164E8 0C04553C */  jal   func_801154F0
/* 09EF5C 801164EC AC2E70A4 */   sw    $t6, %lo(D_800D70A4)($at)
/* 09EF60 801164F0 0C045942 */  jal   func_80116508
/* 09EF64 801164F4 8FA40018 */   lw    $a0, 0x18($sp)
/* 09EF68 801164F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EF6C 801164FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 09EF70 80116500 03E00008 */  jr    $ra
/* 09EF74 80116504 00000000 */   nop   
.type func_801164D4, @function
.size func_801164D4, . - func_801164D4
