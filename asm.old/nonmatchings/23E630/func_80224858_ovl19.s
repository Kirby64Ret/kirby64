glabel func_80224858_ovl19
/* 244F68 80224858 3C0E800E */  lui        $t6, %hi(D_800DD710 + 0x4)
/* 244F6C 8022485C 8DCED714 */  lw         $t6, %lo(D_800DD710 + 0x4)($t6)
/* 244F70 80224860 27BDFFE8 */  addiu      $sp, $sp, -0x18
glabel func_80224864_ovl18
/* 244F74 80224864 2401FFFF */  addiu      $at, $zero, -0x1
/* 244F78 80224868 11C10006 */  beq        $t6, $at, .L80224884_ovl19
/* 244F7C 8022486C AFBF0014 */   sw        $ra, 0x14($sp)
/* 244F80 80224870 3C04800E */  lui        $a0, %hi(D_800DE350 + 0x4)
/* 244F84 80224874 8C84E354 */  lw         $a0, %lo(D_800DE350 + 0x4)($a0)
/* 244F88 80224878 2405000C */  addiu      $a1, $zero, 0xC
/* 244F8C 8022487C 0C002A22 */  jal        omGMoveObjDL
/* 244F90 80224880 8C860028 */   lw        $a2, 0x28($a0)
.L80224884_ovl19:
/* 244F94 80224884 3C0F800E */  lui        $t7, %hi(D_800DD710 + 0x8)
/* 244F98 80224888 8DEFD718 */  lw         $t7, %lo(D_800DD710 + 0x8)($t7)
/* 244F9C 8022488C 2401FFFF */  addiu      $at, $zero, -0x1
/* 244FA0 80224890 3C04800E */  lui        $a0, %hi(D_800DE350 + 0x8)
/* 244FA4 80224894 11E10006 */  beq        $t7, $at, .L802248B0_ovl19
/* 244FA8 80224898 2405000C */   addiu     $a1, $zero, 0xC
/* 244FAC 8022489C 3C18800E */  lui        $t8, %hi(D_800DE350 + 0x4)
/* 244FB0 802248A0 8F18E354 */  lw         $t8, %lo(D_800DE350 + 0x4)($t8)
/* 244FB4 802248A4 8C84E358 */  lw         $a0, %lo(D_800DE350 + 0x8)($a0)
/* 244FB8 802248A8 0C002A22 */  jal        omGMoveObjDL
/* 244FBC 802248AC 8F060028 */   lw        $a2, 0x28($t8)
.L802248B0_ovl19:
/* 244FC0 802248B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 244FC4 802248B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 244FC8 802248B8 03E00008 */  jr         $ra
/* 244FCC 802248BC 00000000 */   nop
