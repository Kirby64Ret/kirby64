glabel func_801E6A84_ovl16
/* 21CD34 801E6A84 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 21CD38 801E6A88 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21CD3C 801E6A8C AFA40000 */  sw    $a0, ($sp)
/* 21CD40 801E6A90 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21CD44 801E6A94 8C4F0000 */  lw    $t7, ($v0)
/* 21CD48 801E6A98 240E0016 */  li    $t6, 22
/* 21CD4C 801E6A9C 44802000 */  mtc1  $zero, $f4
/* 21CD50 801E6AA0 000FC080 */  sll   $t8, $t7, 2
/* 21CD54 801E6AA4 00380821 */  addu  $at, $at, $t8
/* 21CD58 801E6AA8 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 21CD5C 801E6AAC 8C590000 */  lw    $t9, ($v0)
/* 21CD60 801E6AB0 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 21CD64 801E6AB4 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 21CD68 801E6AB8 00194080 */  sll   $t0, $t9, 2
/* 21CD6C 801E6ABC 00884821 */  addu  $t1, $a0, $t0
/* 21CD70 801E6AC0 E5240000 */  swc1  $f4, ($t1)
/* 21CD74 801E6AC4 8C430000 */  lw    $v1, ($v0)
/* 21CD78 801E6AC8 3C01800E */ lui $at, %hi(D_800E3590)
/* 21CD7C 801E6ACC 3C05800E */  lui   $a1, %hi(D_800E3C90) # $a1, 0x800e
/* 21CD80 801E6AD0 00031880 */  sll   $v1, $v1, 2
/* 21CD84 801E6AD4 00835021 */  addu  $t2, $a0, $v1
/* 21CD88 801E6AD8 C5400000 */  lwc1  $f0, ($t2)
/* 21CD8C 801E6ADC 00230821 */  addu  $at, $at, $v1
/* 21CD90 801E6AE0 24A53C90 */  addiu $a1, %lo(D_800E3C90) # addiu $a1, $a1, 0x3c90
/* 21CD94 801E6AE4 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 21CD98 801E6AE8 8C4B0000 */  lw    $t3, ($v0)
/* 21CD9C 801E6AEC 3C01800E */ lui $at, %hi(D_800E3210)
/* 21CDA0 801E6AF0 2409001B */  li    $t1, 27
/* 21CDA4 801E6AF4 000B6080 */  sll   $t4, $t3, 2
/* 21CDA8 801E6AF8 002C0821 */  addu  $at, $at, $t4
/* 21CDAC 801E6AFC E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 21CDB0 801E6B00 8C4D0000 */  lw    $t5, ($v0)
/* 21CDB4 801E6B04 3C01800E */ lui $at, %hi(D_800E3050)
/* 21CDB8 801E6B08 000D7880 */  sll   $t7, $t5, 2
/* 21CDBC 801E6B0C 002F0821 */  addu  $at, $at, $t7
/* 21CDC0 801E6B10 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 21CDC4 801E6B14 8C4E0000 */  lw    $t6, ($v0)
/* 21CDC8 801E6B18 3C01801F */  lui   $at, %hi(D_801F0044) # $at, 0x801f
/* 21CDCC 801E6B1C C4260044 */  lwc1  $f6, %lo(D_801F0044)($at)
/* 21CDD0 801E6B20 000EC080 */  sll   $t8, $t6, 2
/* 21CDD4 801E6B24 00B8C821 */  addu  $t9, $a1, $t8
/* 21CDD8 801E6B28 E7260000 */  swc1  $f6, ($t9)
/* 21CDDC 801E6B2C 8C430000 */  lw    $v1, ($v0)
/* 21CDE0 801E6B30 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 21CDE4 801E6B34 00031880 */  sll   $v1, $v1, 2
/* 21CDE8 801E6B38 00A34021 */  addu  $t0, $a1, $v1
/* 21CDEC 801E6B3C C5080000 */  lwc1  $f8, ($t0)
/* 21CDF0 801E6B40 00230821 */  addu  $at, $at, $v1
/* 21CDF4 801E6B44 E4283AD0 */ swc1 $f8, %lo(D_800E3AD0)($at)
/* 21CDF8 801E6B48 8C4A0000 */  lw    $t2, ($v0)
/* 21CDFC 801E6B4C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21CE00 801E6B50 000A5880 */  sll   $t3, $t2, 2
/* 21CE04 801E6B54 002B0821 */  addu  $at, $at, $t3
/* 21CE08 801E6B58 03E00008 */  jr    $ra
/* 21CE0C 801E6B5C AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
.type func_801E6A84_ovl16, @function
.size func_801E6A84_ovl16, . - func_801E6A84_ovl16
