glabel func_801DFDCC_ovl16
/* 21607C 801DFDCC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 216080 801DFDD0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 216084 801DFDD4 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 216088 801DFDD8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 21608C 801DFDDC 8DC20000 */  lw    $v0, ($t6)
/* 216090 801DFDE0 44812000 */  mtc1  $at, $f4
/* 216094 801DFDE4 3C18800F */  lui   $t8, %hi(D_800E9E20) # $t8, 0x800f
/* 216098 801DFDE8 00021080 */  sll   $v0, $v0, 2
/* 21609C 801DFDEC 01E27821 */  addu  $t7, $t7, $v0
/* 2160A0 801DFDF0 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 2160A4 801DFDF4 27189E20 */  addiu $t8, %lo(D_800E9E20) # addiu $t8, $t8, -0x61e0
/* 2160A8 801DFDF8 8DE30014 */  lw    $v1, 0x14($t7)
/* 2160AC 801DFDFC C4600020 */  lwc1  $f0, 0x20($v1)
/* 2160B0 801DFE00 4604003C */  c.lt.s $f0, $f4
/* 2160B4 801DFE04 00000000 */  nop   
/* 2160B8 801DFE08 45000007 */  bc1f  .L801DFE28_ovl16
/* 2160BC 801DFE0C 00000000 */   nop   
/* 2160C0 801DFE10 00581821 */  addu  $v1, $v0, $t8
/* 2160C4 801DFE14 8C790000 */  lw    $t9, ($v1)
/* 2160C8 801DFE18 2401FFFE */  li    $at, -2
/* 2160CC 801DFE1C 03214024 */  and   $t0, $t9, $at
/* 2160D0 801DFE20 03E00008 */  jr    $ra
/* 2160D4 801DFE24 AC680000 */   sw    $t0, ($v1)
.type func_801DFDCC_ovl16, @function

.L801DFE28_ovl16:
/* 2160D8 801DFE28 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 2160DC 801DFE2C 00220821 */  addu  $at, $at, $v0
/* 2160E0 801DFE30 C426A6E0 */ lwc1 $f6, %lo(D_800EA6E0)($at)
/* 2160E4 801DFE34 46060200 */  add.s $f8, $f0, $f6
/* 2160E8 801DFE38 E4680020 */  swc1  $f8, 0x20($v1)
/* 2160EC 801DFE3C 03E00008 */  jr    $ra
/* 2160F0 801DFE40 00000000 */   nop   
.type func_801DFDCC_ovl16, @function
.size func_801DFDCC_ovl16, . - func_801DFDCC_ovl16
