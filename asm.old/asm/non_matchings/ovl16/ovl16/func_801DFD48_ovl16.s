glabel func_801DFD48_ovl16
/* 215FF8 801DFD48 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 215FFC 801DFD4C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 216000 801DFD50 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 216004 801DFD54 3C014375 */  li    $at, 0x43750000 # 245.000000
/* 216008 801DFD58 8DC20000 */  lw    $v0, ($t6)
/* 21600C 801DFD5C 44812000 */  mtc1  $at, $f4
/* 216010 801DFD60 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 216014 801DFD64 00021080 */  sll   $v0, $v0, 2
/* 216018 801DFD68 01E27821 */  addu  $t7, $t7, $v0
/* 21601C 801DFD6C 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 216020 801DFD70 00220821 */  addu  $at, $at, $v0
/* 216024 801DFD74 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 216028 801DFD78 8DE30014 */  lw    $v1, 0x14($t7)
/* 21602C 801DFD7C 3C18800F */  lui   $t8, %hi(D_800E9E20) # $t8, 0x800f
/* 216030 801DFD80 27189E20 */  addiu $t8, %lo(D_800E9E20) # addiu $t8, $t8, -0x61e0
/* 216034 801DFD84 C4600020 */  lwc1  $f0, 0x20($v1)
/* 216038 801DFD88 46060200 */  add.s $f8, $f0, $f6
/* 21603C 801DFD8C 4608203C */  c.lt.s $f4, $f8
/* 216040 801DFD90 00000000 */  nop   
/* 216044 801DFD94 45000006 */  bc1f  .L801DFDB0_ovl16
/* 216048 801DFD98 00000000 */   nop   
/* 21604C 801DFD9C 00581821 */  addu  $v1, $v0, $t8
/* 216050 801DFDA0 8C790000 */  lw    $t9, ($v1)
/* 216054 801DFDA4 37280001 */  ori   $t0, $t9, 1
/* 216058 801DFDA8 03E00008 */  jr    $ra
/* 21605C 801DFDAC AC680000 */   sw    $t0, ($v1)
.type func_801DFD48_ovl16, @function

.L801DFDB0_ovl16:
/* 216060 801DFDB0 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 216064 801DFDB4 00220821 */  addu  $at, $at, $v0
/* 216068 801DFDB8 C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 21606C 801DFDBC 460A0400 */  add.s $f16, $f0, $f10
/* 216070 801DFDC0 E4700020 */  swc1  $f16, 0x20($v1)
/* 216074 801DFDC4 03E00008 */  jr    $ra
/* 216078 801DFDC8 00000000 */   nop   
.type func_801DFD48_ovl16, @function
.size func_801DFD48_ovl16, . - func_801DFD48_ovl16
