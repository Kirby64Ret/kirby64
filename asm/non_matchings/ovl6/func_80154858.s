glabel func_80154858
/* 138BE8 80154858 3C04800E */  lui   $a0, %hi(D_800DE448) # $a0, 0x800e
/* 138BEC 8015485C 8C84E448 */  lw    $a0, %lo(D_800DE448)($a0)
/* 138BF0 80154860 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 138BF4 80154864 AFBF0014 */  sw    $ra, 0x14($sp)
/* 138BF8 80154868 1080000A */  beqz  $a0, .L80154894_ovl6
/* 138BFC 8015486C 240E0004 */   li    $t6, 4
/* 138C00 80154870 3C018016 */  lui   $at, %hi(D_8015A684) # $at, 0x8016
/* 138C04 80154874 3C058015 */  lui   $a1, %hi(D_80154810) # $a1, 0x8015
/* 138C08 80154878 AC2EA684 */  sw    $t6, %lo(D_8015A684)($at)
/* 138C0C 8015487C 24A54810 */  addiu $a1, %lo(D_80154810) # addiu $a1, $a1, 0x4810
/* 138C10 80154880 24060001 */  li    $a2, 1
/* 138C14 80154884 0C002286 */  jal   func_80008A18
/* 138C18 80154888 24070003 */   li    $a3, 3
/* 138C1C 8015488C 3C018016 */  lui   $at, %hi(D_8015A688) # $at, 0x8016
/* 138C20 80154890 AC22A688 */  sw    $v0, %lo(D_8015A688)($at)
.L80154894_ovl6:
/* 138C24 80154894 8FBF0014 */  lw    $ra, 0x14($sp)
/* 138C28 80154898 27BD0018 */  addiu $sp, $sp, 0x18
/* 138C2C 8015489C 03E00008 */  jr    $ra
/* 138C30 801548A0 00000000 */   nop   
.type func_80154858, @function
.size func_80154858, . - func_80154858
