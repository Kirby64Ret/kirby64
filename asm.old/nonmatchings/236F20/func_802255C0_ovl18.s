glabel func_802255C0_ovl18
/* 237F60 802255C0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 237F64 802255C4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 237F68 802255C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 237F6C 802255CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 237F70 802255D0 AFA40018 */  sw         $a0, 0x18($sp)
/* 237F74 802255D4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 237F78 802255D8 3C018023 */  lui        $at, %hi(D_8022BC4C_ovl18)
/* 237F7C 802255DC C424BC4C */  lwc1       $f4, %lo(D_8022BC4C_ovl18)($at)
/* 237F80 802255E0 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 237F84 802255E4 000E7880 */  sll        $t7, $t6, 2
/* 237F88 802255E8 002F0821 */  addu       $at, $at, $t7
/* 237F8C 802255EC E42417D0 */  swc1       $f4, %lo(D_800E17D0)($at)
.L802255F0_ovl19:
/* 237F90 802255F0 8C580000 */  lw         $t8, 0x0($v0)
/* 237F94 802255F4 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 237F98 802255F8 3C068023 */  lui        $a2, %hi(func_8022ACF0_ovl19)
/* 237F9C 802255FC 0018C880 */  sll        $t9, $t8, 2
/* 237FA0 80225600 00992021 */  addu       $a0, $a0, $t9
/* 237FA4 80225604 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 237FA8 80225608 24C6ACF0 */  addiu      $a2, $a2, %lo(func_8022ACF0_ovl19)
/* 237FAC 8022560C 0C02911F */  jal        call_virtual_function
/* 237FB0 80225610 24050002 */   addiu     $a1, $zero, 0x2
/* 237FB4 80225614 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 237FB8 80225618 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 237FBC 8022561C 3C0B800F */  lui        $t3, %hi(D_800E9C60)
glabel func_80225620_ovl19
/* 237FC0 80225620 8D090000 */  lw         $t1, 0x0($t0)
/* 237FC4 80225624 00095080 */  sll        $t2, $t1, 2
/* 237FC8 80225628 016A5821 */  addu       $t3, $t3, $t2
/* 237FCC 8022562C 8D6B9C60 */  lw         $t3, %lo(D_800E9C60)($t3)
/* 237FD0 80225630 51600004 */  beql       $t3, $zero, .L80225644_ovl18
/* 237FD4 80225634 8FBF0014 */   lw        $ra, 0x14($sp)
/* 237FD8 80225638 0C087D73 */  jal        func_8021F5CC_ovl19
/* 237FDC 8022563C 00000000 */   nop
/* 237FE0 80225640 8FBF0014 */  lw         $ra, 0x14($sp)
.L80225644_ovl18:
/* 237FE4 80225644 27BD0018 */  addiu      $sp, $sp, 0x18
/* 237FE8 80225648 03E00008 */  jr         $ra
/* 237FEC 8022564C 00000000 */   nop
