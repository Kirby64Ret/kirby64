glabel func_801DFE64_ovl10
/* 1D0BD4 801DFE64 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D0BD8 801DFE68 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1D0BDC 801DFE6C 3C04800E */  lui   $a0, %hi(D_800E0D50) # $a0, 0x800e
/* 1D0BE0 801DFE70 24840D50 */  addiu $a0, %lo(D_800E0D50) # addiu $a0, $a0, 0xd50
/* 1D0BE4 801DFE74 8C6E0000 */  lw    $t6, ($v1)
/* 1D0BE8 801DFE78 3C02800F */ lui $v0, %hi(D_800EBDA0)
/* 1D0BEC 801DFE7C 3C05801F */  lui   $a1, %hi(D_801F4D48_ovl10) # $a1, 0x801f
/* 1D0BF0 801DFE80 000E7880 */  sll   $t7, $t6, 2
/* 1D0BF4 801DFE84 008FC021 */  addu  $t8, $a0, $t7
/* 1D0BF8 801DFE88 8F190000 */  lw    $t9, ($t8)
/* 1D0BFC 801DFE8C 24A54D48 */  addiu $a1, %lo(D_801F4D48_ovl10) # addiu $a1, $a1, 0x4d48
/* 1D0C00 801DFE90 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 1D0C04 801DFE94 00194080 */  sll   $t0, $t9, 2
/* 1D0C08 801DFE98 00481021 */  addu  $v0, $v0, $t0
/* 1D0C0C 801DFE9C 8C42BDA0 */ lw $v0, %lo(D_800EBDA0)($v0)
/* 1D0C10 801DFEA0 24C62790 */  addiu $a2, %lo(gEntitiesNextPosYArray) # addiu $a2, $a2, 0x2790
/* 1D0C14 801DFEA4 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1D0C18 801DFEA8 ACA2000C */  sw    $v0, 0xc($a1)
/* 1D0C1C 801DFEAC ACA20000 */  sw    $v0, ($a1)
/* 1D0C20 801DFEB0 8C690000 */  lw    $t1, ($v1)
/* 1D0C24 801DFEB4 44813000 */  mtc1  $at, $f6
/* 1D0C28 801DFEB8 3C07801F */  lui   $a3, %hi(D_801F4D30_ovl10) # $a3, 0x801f
/* 1D0C2C 801DFEBC 00095080 */  sll   $t2, $t1, 2
/* 1D0C30 801DFEC0 008A5821 */  addu  $t3, $a0, $t2
/* 1D0C34 801DFEC4 8D620000 */  lw    $v0, ($t3)
/* 1D0C38 801DFEC8 24E74D30 */  addiu $a3, %lo(D_801F4D30_ovl10) # addiu $a3, $a3, 0x4d30
/* 1D0C3C 801DFECC 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1D0C40 801DFED0 ACA20010 */  sw    $v0, 0x10($a1)
/* 1D0C44 801DFED4 ACA20004 */  sw    $v0, 4($a1)
/* 1D0C48 801DFED8 8C6C0000 */  lw    $t4, ($v1)
/* 1D0C4C 801DFEDC 3C02800F */ lui $v0, %hi(D_800EBF60)
/* 1D0C50 801DFEE0 44814000 */  mtc1  $at, $f8
/* 1D0C54 801DFEE4 000C6880 */  sll   $t5, $t4, 2
/* 1D0C58 801DFEE8 008D7021 */  addu  $t6, $a0, $t5
/* 1D0C5C 801DFEEC 8DCF0000 */  lw    $t7, ($t6)
/* 1D0C60 801DFEF0 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1D0C64 801DFEF4 44819000 */  mtc1  $at, $f18
/* 1D0C68 801DFEF8 000FC080 */  sll   $t8, $t7, 2
/* 1D0C6C 801DFEFC 00581021 */  addu  $v0, $v0, $t8
/* 1D0C70 801DFF00 8C42BF60 */ lw $v0, %lo(D_800EBF60)($v0)
/* 1D0C74 801DFF04 ACA20014 */  sw    $v0, 0x14($a1)
/* 1D0C78 801DFF08 ACA20008 */  sw    $v0, 8($a1)
/* 1D0C7C 801DFF0C 8C790000 */  lw    $t9, ($v1)
/* 1D0C80 801DFF10 00194080 */  sll   $t0, $t9, 2
/* 1D0C84 801DFF14 00884821 */  addu  $t1, $a0, $t0
/* 1D0C88 801DFF18 8D2A0000 */  lw    $t2, ($t1)
/* 1D0C8C 801DFF1C 000A5880 */  sll   $t3, $t2, 2
/* 1D0C90 801DFF20 00CB6021 */  addu  $t4, $a2, $t3
/* 1D0C94 801DFF24 C5840000 */  lwc1  $f4, ($t4)
/* 1D0C98 801DFF28 46062001 */  sub.s $f0, $f4, $f6
/* 1D0C9C 801DFF2C E4E00008 */  swc1  $f0, 8($a3)
/* 1D0CA0 801DFF30 E4E00000 */  swc1  $f0, ($a3)
/* 1D0CA4 801DFF34 8C6D0000 */  lw    $t5, ($v1)
/* 1D0CA8 801DFF38 000D7080 */  sll   $t6, $t5, 2
/* 1D0CAC 801DFF3C 008E7821 */  addu  $t7, $a0, $t6
/* 1D0CB0 801DFF40 8DF80000 */  lw    $t8, ($t7)
/* 1D0CB4 801DFF44 0018C880 */  sll   $t9, $t8, 2
/* 1D0CB8 801DFF48 00D94021 */  addu  $t0, $a2, $t9
/* 1D0CBC 801DFF4C C5000000 */  lwc1  $f0, ($t0)
/* 1D0CC0 801DFF50 46080281 */  sub.s $f10, $f0, $f8
/* 1D0CC4 801DFF54 E4E00004 */  swc1  $f0, 4($a3)
/* 1D0CC8 801DFF58 E4EA0010 */  swc1  $f10, 0x10($a3)
/* 1D0CCC 801DFF5C 8C690000 */  lw    $t1, ($v1)
/* 1D0CD0 801DFF60 00095080 */  sll   $t2, $t1, 2
/* 1D0CD4 801DFF64 008A5821 */  addu  $t3, $a0, $t2
/* 1D0CD8 801DFF68 8D6C0000 */  lw    $t4, ($t3)
/* 1D0CDC 801DFF6C 000C6880 */  sll   $t5, $t4, 2
/* 1D0CE0 801DFF70 00CD7021 */  addu  $t6, $a2, $t5
/* 1D0CE4 801DFF74 C5D00000 */  lwc1  $f16, ($t6)
/* 1D0CE8 801DFF78 46128001 */  sub.s $f0, $f16, $f18
/* 1D0CEC 801DFF7C E4E00014 */  swc1  $f0, 0x14($a3)
/* 1D0CF0 801DFF80 03E00008 */  jr    $ra
/* 1D0CF4 801DFF84 E4E0000C */   swc1  $f0, 0xc($a3)
.type func_801DFE64_ovl10, @function
.size func_801DFE64_ovl10, . - func_801DFE64_ovl10
