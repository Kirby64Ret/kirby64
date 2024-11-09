glabel func_801E0724_ovl16
/* 2169D4 801E0724 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2169D8 801E0728 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2169DC 801E072C 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 2169E0 801E0730 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 2169E4 801E0734 8DC20000 */  lw    $v0, ($t6)
/* 2169E8 801E0738 3C18800F */  lui   $t8, %hi(D_800E9E20) # $t8, 0x800f
/* 2169EC 801E073C 27189E20 */  addiu $t8, %lo(D_800E9E20) # addiu $t8, $t8, -0x61e0
/* 2169F0 801E0740 00021080 */  sll   $v0, $v0, 2
/* 2169F4 801E0744 01E27821 */  addu  $t7, $t7, $v0
/* 2169F8 801E0748 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 2169FC 801E074C 00220821 */  addu  $at, $at, $v0
/* 216A00 801E0750 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 216A04 801E0754 8DE3000C */  lw    $v1, 0xc($t7)
/* 216A08 801E0758 3C01C375 */  li    $at, 0xC3750000 # -245.000000
/* 216A0C 801E075C 44814000 */  mtc1  $at, $f8
/* 216A10 801E0760 C460001C */  lwc1  $f0, 0x1c($v1)
/* 216A14 801E0764 46040180 */  add.s $f6, $f0, $f4
/* 216A18 801E0768 4608303C */  c.lt.s $f6, $f8
/* 216A1C 801E076C 00000000 */  nop   
/* 216A20 801E0770 45000006 */  bc1f  .L801E078C_ovl16
/* 216A24 801E0774 00000000 */   nop   
/* 216A28 801E0778 00581821 */  addu  $v1, $v0, $t8
/* 216A2C 801E077C 8C790000 */  lw    $t9, ($v1)
/* 216A30 801E0780 37280004 */  ori   $t0, $t9, 4
/* 216A34 801E0784 03E00008 */  jr    $ra
/* 216A38 801E0788 AC680000 */   sw    $t0, ($v1)
.type func_801E0724_ovl16, @function

.L801E078C_ovl16:
/* 216A3C 801E078C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 216A40 801E0790 00220821 */  addu  $at, $at, $v0
/* 216A44 801E0794 C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 216A48 801E0798 460A0401 */  sub.s $f16, $f0, $f10
/* 216A4C 801E079C E470001C */  swc1  $f16, 0x1c($v1)
/* 216A50 801E07A0 03E00008 */  jr    $ra
/* 216A54 801E07A4 00000000 */   nop   
.type func_801E0724_ovl16, @function
.size func_801E0724_ovl16, . - func_801E0724_ovl16
