glabel func_801DFE44_ovl16
/* 2160F4 801DFE44 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2160F8 801DFE48 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2160FC 801DFE4C 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 216100 801DFE50 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 216104 801DFE54 8DC20000 */  lw    $v0, ($t6)
/* 216108 801DFE58 3C18800F */  lui   $t8, %hi(D_800E9E20) # $t8, 0x800f
/* 21610C 801DFE5C 27189E20 */  addiu $t8, %lo(D_800E9E20) # addiu $t8, $t8, -0x61e0
/* 216110 801DFE60 00021080 */  sll   $v0, $v0, 2
/* 216114 801DFE64 01E27821 */  addu  $t7, $t7, $v0
/* 216118 801DFE68 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 21611C 801DFE6C 00220821 */  addu  $at, $at, $v0
/* 216120 801DFE70 C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 216124 801DFE74 8DE30024 */  lw    $v1, 0x24($t7)
/* 216128 801DFE78 3C01420C */  li    $at, 0x420C0000 # 35.000000
/* 21612C 801DFE7C 44814000 */  mtc1  $at, $f8
/* 216130 801DFE80 C4600020 */  lwc1  $f0, 0x20($v1)
/* 216134 801DFE84 46040180 */  add.s $f6, $f0, $f4
/* 216138 801DFE88 4608303C */  c.lt.s $f6, $f8
/* 21613C 801DFE8C 00000000 */  nop   
/* 216140 801DFE90 45000006 */  bc1f  .L801DFEAC_ovl16
/* 216144 801DFE94 00000000 */   nop   
/* 216148 801DFE98 00581821 */  addu  $v1, $v0, $t8
/* 21614C 801DFE9C 8C790000 */  lw    $t9, ($v1)
/* 216150 801DFEA0 37280002 */  ori   $t0, $t9, 2
/* 216154 801DFEA4 03E00008 */  jr    $ra
/* 216158 801DFEA8 AC680000 */   sw    $t0, ($v1)
.type func_801DFE44_ovl16, @function

.L801DFEAC_ovl16:
/* 21615C 801DFEAC 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 216160 801DFEB0 00220821 */  addu  $at, $at, $v0
/* 216164 801DFEB4 C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 216168 801DFEB8 460A0401 */  sub.s $f16, $f0, $f10
/* 21616C 801DFEBC E4700020 */  swc1  $f16, 0x20($v1)
/* 216170 801DFEC0 03E00008 */  jr    $ra
/* 216174 801DFEC4 00000000 */   nop   
.type func_801DFE44_ovl16, @function
.size func_801DFE44_ovl16, . - func_801DFE44_ovl16
