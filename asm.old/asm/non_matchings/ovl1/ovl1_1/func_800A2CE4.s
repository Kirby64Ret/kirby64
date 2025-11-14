glabel func_800A2CE4
/* 04AF34 800A2CE4 3C0E800F */  lui   $t6, %hi(D_800EC9FC) # $t6, 0x800f
/* 04AF38 800A2CE8 8DCEC9FC */  lw    $t6, %lo(D_800EC9FC)($t6)
/* 04AF3C 800A2CEC 3C01800D */  lui   $at, %hi(D_800D6B88) # $at, 0x800d
/* 04AF40 800A2CF0 240F0003 */  li    $t7, 3
/* 04AF44 800A2CF4 AC2E6B88 */  sw    $t6, %lo(D_800D6B88)($at)
/* 04AF48 800A2CF8 3C01800D */  lui   $at, %hi(gKirbyLives) # $at, 0x800d
/* 04AF4C 800A2CFC AC2F6E4C */  sw    $t7, %lo(gKirbyLives)($at)
/* 04AF50 800A2D00 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 04AF54 800A2D04 44812000 */  mtc1  $at, $f4
/* 04AF58 800A2D08 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 04AF5C 800A2D0C 44800000 */  mtc1  $zero, $f0
/* 04AF60 800A2D10 E4246E50 */  swc1  $f4, %lo(gKirbyHp)($at)
/* 04AF64 800A2D14 3C01800D */  lui   $at, %hi(D_800D6E54) # $at, 0x800d
/* 04AF68 800A2D18 AC206E54 */  sw    $zero, %lo(D_800D6E54)($at)
/* 04AF6C 800A2D1C 3C01800D */  lui   $at, %hi(D_800D6E58) # $at, 0x800d
/* 04AF70 800A2D20 E4206E58 */  swc1  $f0, %lo(D_800D6E58)($at)
/* 04AF74 800A2D24 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 04AF78 800A2D28 E4206E5C */  swc1  $f0, %lo(D_800D6E5C)($at)
/* 04AF7C 800A2D2C 3C01800D */  lui   $at, %hi(gKirbyStars) # $at, 0x800d
/* 04AF80 800A2D30 AC206E60 */  sw    $zero, %lo(gKirbyStars)($at)
/* 04AF84 800A2D34 3C01800D */  lui   $at, %hi(D_800D6B7C) # $at, 0x800d
/* 04AF88 800A2D38 AC206B7C */  sw    $zero, %lo(D_800D6B7C)($at)
/* 04AF8C 800A2D3C 3C01800D */  lui   $at, %hi(D_800D6B80) # $at, 0x800d
/* 04AF90 800A2D40 AC206B80 */  sw    $zero, %lo(D_800D6B80)($at)
/* 04AF94 800A2D44 3C01800D */  lui   $at, %hi(D_800D6B44) # $at, 0x800d
/* 04AF98 800A2D48 2418FFFF */  li    $t8, -1
/* 04AF9C 800A2D4C AC386B44 */  sw    $t8, %lo(D_800D6B44)($at)
/* 04AFA0 800A2D50 3C01800D */ lui $at, %hi(D_800D6F50)
/* 04AFA4 800A2D54 03E00008 */  jr    $ra
/* 04AFA8 800A2D58 AC206F50 */ sw $zero, %lo(D_800D6F50)($at)
.type func_800A2CE4, @function
.size func_800A2CE4, . - func_800A2CE4
