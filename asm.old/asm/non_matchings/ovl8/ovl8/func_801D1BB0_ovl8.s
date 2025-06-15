glabel func_801D1BB0_ovl8
/* 175690 801D1BB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 175694 801D1BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 175698 801D1BB8 0C074699 */  jal   func_801D1A64_ovl8
/* 17569C 801D1BBC 00000000 */   nop   
/* 1756A0 801D1BC0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1756A4 801D1BC4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1756A8 801D1BC8 3C01801E */  lui   $at, %hi(D_801DB078_ovl8) # $at, 0x801e
/* 1756AC 801D1BCC C422B078 */  lwc1  $f2, %lo(D_801DB078_ovl8)($at)
/* 1756B0 801D1BD0 8C650000 */  lw    $a1, ($v1)
/* 1756B4 801D1BD4 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1756B8 801D1BD8 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 1756BC 801D1BDC 00052880 */  sll   $a1, $a1, 2
/* 1756C0 801D1BE0 00250821 */  addu  $at, $at, $a1
/* 1756C4 801D1BE4 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1756C8 801D1BE8 3C01801E */  lui   $at, %hi(D_801DB07C_ovl8) # $at, 0x801e
/* 1756CC 801D1BEC C426B07C */  lwc1  $f6, %lo(D_801DB07C_ovl8)($at)
/* 1756D0 801D1BF0 3C01800E */ lui $at, %hi(D_800E17D0)
/* 1756D4 801D1BF4 00250821 */  addu  $at, $at, $a1
/* 1756D8 801D1BF8 46062202 */  mul.s $f8, $f4, $f6
/* 1756DC 801D1BFC C42A17D0 */ lwc1 $f10, %lo(D_800E17D0)($at)
/* 1756E0 801D1C00 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 1756E4 801D1C04 00857021 */  addu  $t6, $a0, $a1
/* 1756E8 801D1C08 44806000 */  mtc1  $zero, $f12
/* 1756EC 801D1C0C 460A4400 */  add.s $f16, $f8, $f10
/* 1756F0 801D1C10 E5D00000 */  swc1  $f16, ($t6)
/* 1756F4 801D1C14 8C6F0000 */  lw    $t7, ($v1)
/* 1756F8 801D1C18 000FC080 */  sll   $t8, $t7, 2
/* 1756FC 801D1C1C 00981021 */  addu  $v0, $a0, $t8
/* 175700 801D1C20 C4400000 */  lwc1  $f0, ($v0)
/* 175704 801D1C24 4600103E */  c.le.s $f2, $f0
/* 175708 801D1C28 00000000 */  nop   
/* 17570C 801D1C2C 4502000C */  bc1fl .L801D1C60_ovl8
/* 175710 801D1C30 460C003C */   c.lt.s $f0, $f12
/* 175714 801D1C34 46020481 */  sub.s $f18, $f0, $f2
.L801D1C38_ovl8:
/* 175718 801D1C38 E4520000 */  swc1  $f18, ($v0)
/* 17571C 801D1C3C 8C790000 */  lw    $t9, ($v1)
/* 175720 801D1C40 00194080 */  sll   $t0, $t9, 2
/* 175724 801D1C44 00881021 */  addu  $v0, $a0, $t0
/* 175728 801D1C48 C4400000 */  lwc1  $f0, ($v0)
/* 17572C 801D1C4C 4600103E */  c.le.s $f2, $f0
/* 175730 801D1C50 00000000 */  nop   
/* 175734 801D1C54 4503FFF8 */  bc1tl .L801D1C38_ovl8
/* 175738 801D1C58 46020481 */   sub.s $f18, $f0, $f2
/* 17573C 801D1C5C 460C003C */  c.lt.s $f0, $f12
.L801D1C60_ovl8:
/* 175740 801D1C60 00000000 */  nop   
/* 175744 801D1C64 4500000B */  bc1f  .L801D1C94_ovl8
/* 175748 801D1C68 00000000 */   nop   
/* 17574C 801D1C6C 46020100 */  add.s $f4, $f0, $f2
.L801D1C70_ovl8:
/* 175750 801D1C70 E4440000 */  swc1  $f4, ($v0)
/* 175754 801D1C74 8C690000 */  lw    $t1, ($v1)
/* 175758 801D1C78 00095080 */  sll   $t2, $t1, 2
/* 17575C 801D1C7C 008A1021 */  addu  $v0, $a0, $t2
/* 175760 801D1C80 C4400000 */  lwc1  $f0, ($v0)
/* 175764 801D1C84 460C003C */  c.lt.s $f0, $f12
/* 175768 801D1C88 00000000 */  nop   
/* 17576C 801D1C8C 4503FFF8 */  bc1tl .L801D1C70_ovl8
/* 175770 801D1C90 46020100 */   add.s $f4, $f0, $f2
.L801D1C94_ovl8:
/* 175774 801D1C94 0C02CC6D */  jal   func_800B31B4
/* 175778 801D1C98 00000000 */   nop   
/* 17577C 801D1C9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175780 801D1CA0 27BD0018 */  addiu $sp, $sp, 0x18
/* 175784 801D1CA4 03E00008 */  jr    $ra
/* 175788 801D1CA8 00000000 */   nop   
.type func_801D1BB0_ovl8, @function
.size func_801D1BB0_ovl8, . - func_801D1BB0_ovl8
