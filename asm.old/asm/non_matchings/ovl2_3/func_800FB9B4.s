glabel func_800FB9B4
/* 084424 800FB9B4 3C058013 */  lui   $a1, %hi(D_801293F8) # $a1, 0x8013
/* 084428 800FB9B8 24A593F8 */  addiu $a1, %lo(D_801293F8) # addiu $a1, $a1, -0x6c08
/* 08442C 800FB9BC 8CA20000 */  lw    $v0, ($a1)
/* 084430 800FB9C0 3C068013 */  lui   $a2, %hi(D_801293FC) # $a2, 0x8013
/* 084434 800FB9C4 24C693FC */  addiu $a2, %lo(D_801293FC) # addiu $a2, $a2, -0x6c04
/* 084438 800FB9C8 10400029 */  beqz  $v0, .L800FBA70_ovl2
/* 08443C 800FB9CC 00027080 */   sll   $t6, $v0, 2
/* 084440 800FB9D0 8CCF0000 */  lw    $t7, ($a2)
/* 084444 800FB9D4 3C038012 */  lui   $v1, 0x8012
/* 084448 800FB9D8 006E1821 */  addu  $v1, $v1, $t6
/* 08444C 800FB9DC 8C6342B4 */  lw    $v1, 0x42b4($v1)
/* 084450 800FB9E0 25F80002 */  addiu $t8, $t7, 2
/* 084454 800FB9E4 ACD80000 */  sw    $t8, ($a2)
/* 084458 800FB9E8 00184080 */  sll   $t0, $t8, 2
/* 08445C 800FB9EC 3C018013 */  lui   $at, %hi(D_80128828) # $at, 0x8013
/* 084460 800FB9F0 00682021 */  addu  $a0, $v1, $t0
/* 084464 800FB9F4 C4800000 */  lwc1  $f0, ($a0)
/* 084468 800FB9F8 C4248828 */  lwc1  $f4, %lo(D_80128828)($at)
/* 08446C 800FB9FC 3C028013 */  lui   $v0, %hi(D_80129404) # $v0, 0x8013
/* 084470 800FBA00 24429404 */  addiu $v0, %lo(D_80129404) # addiu $v0, $v0, -0x6bfc
/* 084474 800FBA04 46002032 */  c.eq.s $f4, $f0
/* 084478 800FBA08 2409FFFE */  li    $t1, -2
/* 08447C 800FBA0C 45000009 */  bc1f  .L800FBA34_ovl2
/* 084480 800FBA10 00000000 */   nop   
/* 084484 800FBA14 44803000 */  mtc1  $zero, $f6
/* 084488 800FBA18 ACA00000 */  sw    $zero, ($a1)
/* 08448C 800FBA1C ACC90000 */  sw    $t1, ($a2)
/* 084490 800FBA20 E4460000 */  swc1  $f6, ($v0)
/* 084494 800FBA24 C4480000 */  lwc1  $f8, ($v0)
/* 084498 800FBA28 3C018013 */  lui   $at, 0x8013
/* 08449C 800FBA2C 03E00008 */  jr    $ra
/* 0844A0 800FBA30 E4289400 */   swc1  $f8, -0x6c00($at)
.type func_800FB9B4, @function

.L800FBA34_ovl2:
/* 0844A4 800FBA34 3C018013 */  lui   $at, %hi(D_8012882C) # $at, 0x8013
/* 0844A8 800FBA38 C42A882C */  lwc1  $f10, %lo(D_8012882C)($at)
/* 0844AC 800FBA3C 3C018013 */  lui   $at, %hi(D_80129400) # $at, 0x8013
/* 0844B0 800FBA40 46005032 */  c.eq.s $f10, $f0
/* 0844B4 800FBA44 00000000 */  nop   
/* 0844B8 800FBA48 45000004 */  bc1f  .L800FBA5C_ovl2
/* 0844BC 800FBA4C 00005880 */   sll   $t3, $zero, 2
/* 0844C0 800FBA50 006B2021 */  addu  $a0, $v1, $t3
/* 0844C4 800FBA54 ACC00000 */  sw    $zero, ($a2)
/* 0844C8 800FBA58 C4800000 */  lwc1  $f0, ($a0)
.L800FBA5C_ovl2:
/* 0844CC 800FBA5C E4209400 */  swc1  $f0, %lo(D_80129400)($at)
/* 0844D0 800FBA60 C4900004 */  lwc1  $f16, 4($a0)
/* 0844D4 800FBA64 3C028013 */  lui   $v0, %hi(D_80129404) # $v0, 0x8013
/* 0844D8 800FBA68 24429404 */  addiu $v0, %lo(D_80129404) # addiu $v0, $v0, -0x6bfc
/* 0844DC 800FBA6C E4500000 */  swc1  $f16, ($v0)
.L800FBA70_ovl2:
/* 0844E0 800FBA70 03E00008 */  jr    $ra
/* 0844E4 800FBA74 00000000 */   nop   
.type func_800FB9B4, @function
.size func_800FB9B4, . - func_800FB9B4
