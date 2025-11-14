glabel func_801ACC34_ovl7
/* 152CA4 801ACC34 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 152CA8 801ACC38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 152CAC 801ACC3C 0C06B274 */  jal   func_801AC9D0_ovl7
/* 152CB0 801ACC40 00000000 */   nop   
/* 152CB4 801ACC44 14400003 */  bnez  $v0, .L801ACC54_ovl7
/* 152CB8 801ACC48 00402025 */   move  $a0, $v0
/* 152CBC 801ACC4C 10000010 */  b     .L801ACC90_ovl7
/* 152CC0 801ACC50 00001025 */   move  $v0, $zero
.L801ACC54_ovl7:
/* 152CC4 801ACC54 3C05800E */  lui   $a1, %hi(D_800E0D50) # $a1, 0x800e
/* 152CC8 801ACC58 24A50D50 */  addiu $a1, %lo(D_800E0D50) # addiu $a1, $a1, 0xd50
/* 152CCC 801ACC5C 00021880 */  sll   $v1, $v0, 2
/* 152CD0 801ACC60 00A37021 */  addu  $t6, $a1, $v1
/* 152CD4 801ACC64 8DCF0000 */  lw    $t7, ($t6)
/* 152CD8 801ACC68 3C01800E */ lui $at, %hi(D_800DDA90)
/* 152CDC 801ACC6C 00230821 */  addu  $at, $at, $v1
/* 152CE0 801ACC70 000FC080 */  sll   $t8, $t7, 2
/* 152CE4 801ACC74 00B8C821 */  addu  $t9, $a1, $t8
/* 152CE8 801ACC78 8F280000 */  lw    $t0, ($t9)
/* 152CEC 801ACC7C 24090023 */  li    $t1, 35
/* 152CF0 801ACC80 00801025 */  move  $v0, $a0
/* 152CF4 801ACC84 15000002 */  bnez  $t0, .L801ACC90_ovl7
/* 152CF8 801ACC88 00000000 */   nop   
/* 152CFC 801ACC8C AC29DA90 */ sw $t1, %lo(D_800DDA90)($at)
.L801ACC90_ovl7:
/* 152D00 801ACC90 8FBF0014 */  lw    $ra, 0x14($sp)
/* 152D04 801ACC94 27BD0018 */  addiu $sp, $sp, 0x18
/* 152D08 801ACC98 03E00008 */  jr    $ra
/* 152D0C 801ACC9C 00000000 */   nop   
.type func_801ACC34_ovl7, @function
.size func_801ACC34_ovl7, . - func_801ACC34_ovl7
