glabel func_801164A0
/* 09EF10 801164A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09EF14 801164A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09EF18 801164A8 8C8E0000 */  lw    $t6, ($a0)
/* 09EF1C 801164AC 3C01800D */  lui   $at, %hi(D_800D70A0) # $at, 0x800d
/* 09EF20 801164B0 AFA40018 */  sw    $a0, 0x18($sp)
/* 09EF24 801164B4 0C04553C */  jal   func_801154F0
/* 09EF28 801164B8 AC2E70A0 */   sw    $t6, %lo(D_800D70A0)($at)
/* 09EF2C 801164BC 0C045942 */  jal   func_80116508
/* 09EF30 801164C0 8FA40018 */   lw    $a0, 0x18($sp)
/* 09EF34 801164C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09EF38 801164C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 09EF3C 801164CC 03E00008 */  jr    $ra
/* 09EF40 801164D0 00000000 */   nop   
.type func_801164A0, @function
.size func_801164A0, . - func_801164A0
