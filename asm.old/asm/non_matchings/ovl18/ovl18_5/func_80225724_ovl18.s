glabel func_80225724_ovl18
/* 2380C4 80225724 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2380C8 80225728 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2380CC 8022572C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2380D0 80225730 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2380D4 80225734 AFA40018 */  sw    $a0, 0x18($sp)
/* 2380D8 80225738 8C620000 */  lw    $v0, ($v1)
/* 2380DC 8022573C 3C0E800F */  lui   $t6, %hi(D_800E9720) # $t6, 0x800f
/* 2380E0 80225740 25CE9720 */  addiu $t6, %lo(D_800E9720) # addiu $t6, $t6, -0x68e0
/* 2380E4 80225744 00021080 */  sll   $v0, $v0, 2
/* 2380E8 80225748 004E2021 */  addu  $a0, $v0, $t6
/* 2380EC 8022574C 8C850000 */  lw    $a1, ($a0)
/* 2380F0 80225750 240F0001 */  li    $t7, 1
/* 2380F4 80225754 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 2380F8 80225758 14A0000D */  bnez  $a1, .L80225790_ovl18
/* 2380FC 8022575C 24A8FFFF */   addiu $t0, $a1, -1
/* 238100 80225760 00220821 */  addu  $at, $at, $v0
/* 238104 80225764 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 238108 80225768 8C780000 */  lw    $t8, ($v1)
/* 23810C 8022576C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 238110 80225770 3C058022 */  lui   $a1, %hi(func_80225478_ovl18) # $a1, 0x8022
/* 238114 80225774 0018C880 */  sll   $t9, $t8, 2
/* 238118 80225778 00992021 */  addu  $a0, $a0, $t9
/* 23811C 8022577C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 238120 80225780 0C02C7B2 */  jal   assign_new_process_entry
/* 238124 80225784 24A55478 */   addiu $a1, %lo(func_80225478_ovl18) # addiu $a1, $a1, 0x5478
/* 238128 80225788 10000003 */  b     .L80225798_ovl18
/* 23812C 8022578C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80225790_ovl18:
/* 238130 80225790 AC880000 */  sw    $t0, ($a0)
/* 238134 80225794 8FBF0014 */  lw    $ra, 0x14($sp)
.L80225798_ovl18:
/* 238138 80225798 27BD0018 */  addiu $sp, $sp, 0x18
/* 23813C 8022579C 03E00008 */  jr    $ra
/* 238140 802257A0 00000000 */   nop   
.type func_80225724_ovl18, @function
.size func_80225724_ovl18, . - func_80225724_ovl18
