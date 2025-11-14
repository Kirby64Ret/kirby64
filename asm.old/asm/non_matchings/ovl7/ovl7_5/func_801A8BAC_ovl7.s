glabel func_801A8BAC_ovl7
/* 14EC1C 801A8BAC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14EC20 801A8BB0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14EC24 801A8BB4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 14EC28 801A8BB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14EC2C 801A8BBC 8DC20000 */  lw    $v0, ($t6)
/* 14EC30 801A8BC0 3C01800E */ lui $at, %hi(D_800E6F5C)
/* 14EC34 801A8BC4 3C04800E */ lui $a0, %hi(D_800E0D50)
/* 14EC38 801A8BC8 00027900 */  sll   $t7, $v0, 4
/* 14EC3C 801A8BCC 002F0821 */  addu  $at, $at, $t7
/* 14EC40 801A8BD0 C4226F5C */ lwc1 $f2, %lo(D_800E6F5C)($at)
/* 14EC44 801A8BD4 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 14EC48 801A8BD8 44812000 */  mtc1  $at, $f4
/* 14EC4C 801A8BDC 00021880 */  sll   $v1, $v0, 2
/* 14EC50 801A8BE0 00832021 */  addu  $a0, $a0, $v1
/* 14EC54 801A8BE4 4604103C */  c.lt.s $f2, $f4
/* 14EC58 801A8BE8 3C05800E */  lui   $a1, %hi(gEntitiesNextPosZArray) # $a1, 0x800e
/* 14EC5C 801A8BEC 8C840D50 */  lw    $a0, %lo(D_800E0D50)($a0)
/* 14EC60 801A8BF0 24A52950 */  addiu $a1, %lo(gEntitiesNextPosZArray) # addiu $a1, $a1, 0x2950
/* 14EC64 801A8BF4 4500002D */  bc1f  .L801A8CAC_ovl7
/* 14EC68 801A8BF8 3C06800E */   lui   $a2, %hi(gEntitiesNextPosXArray) # $a2, 0x800e
/* 14EC6C 801A8BFC 00041080 */  sll   $v0, $a0, 2
/* 14EC70 801A8C00 00A2C821 */  addu  $t9, $a1, $v0
/* 14EC74 801A8C04 00A3C021 */  addu  $t8, $a1, $v1
/* 14EC78 801A8C08 C7060000 */  lwc1  $f6, ($t8)
/* 14EC7C 801A8C0C C7280000 */  lwc1  $f8, ($t9)
/* 14EC80 801A8C10 24C625D0 */  addiu $a2, %lo(gEntitiesNextPosXArray) # addiu $a2, $a2, 0x25d0
/* 14EC84 801A8C14 00C34021 */  addu  $t0, $a2, $v1
/* 14EC88 801A8C18 00C24821 */  addu  $t1, $a2, $v0
/* 14EC8C 801A8C1C 46083001 */  sub.s $f0, $f6, $f8
/* 14EC90 801A8C20 C5300000 */  lwc1  $f16, ($t1)
/* 14EC94 801A8C24 C50A0000 */  lwc1  $f10, ($t0)
/* 14EC98 801A8C28 AFA2001C */  sw    $v0, 0x1c($sp)
/* 14EC9C 801A8C2C 46000482 */  mul.s $f18, $f0, $f0
/* 14ECA0 801A8C30 46105081 */  sub.s $f2, $f10, $f16
/* 14ECA4 801A8C34 46021102 */  mul.s $f4, $f2, $f2
/* 14ECA8 801A8C38 0C00CAC8 */  jal   sqrtf
/* 14ECAC 801A8C3C 46049300 */   add.s $f12, $f18, $f4
/* 14ECB0 801A8C40 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 14ECB4 801A8C44 8FA2001C */  lw    $v0, 0x1c($sp)
/* 14ECB8 801A8C48 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 14ECBC 801A8C4C 3C03800E */  lui   $v1, %hi(gEntitiesNextPosYArray) # $v1, 0x800e
/* 14ECC0 801A8C50 24632790 */  addiu $v1, %lo(gEntitiesNextPosYArray) # addiu $v1, $v1, 0x2790
/* 14ECC4 801A8C54 8D6C0000 */  lw    $t4, ($t3)
/* 14ECC8 801A8C58 3C0141E0 */  li    $at, 0x41E00000 # 28.000000
/* 14ECCC 801A8C5C 00625021 */  addu  $t2, $v1, $v0
/* 14ECD0 801A8C60 C5460000 */  lwc1  $f6, ($t2)
/* 14ECD4 801A8C64 44814000 */  mtc1  $at, $f8
/* 14ECD8 801A8C68 000C6880 */  sll   $t5, $t4, 2
/* 14ECDC 801A8C6C 006D7021 */  addu  $t6, $v1, $t5
/* 14ECE0 801A8C70 46083280 */  add.s $f10, $f6, $f8
/* 14ECE4 801A8C74 C5D00000 */  lwc1  $f16, ($t6)
/* 14ECE8 801A8C78 46000386 */  mov.s $f14, $f0
/* 14ECEC 801A8C7C 0C0294BC */  jal   func_800A52F0
/* 14ECF0 801A8C80 460A8301 */   sub.s $f12, $f16, $f10
/* 14ECF4 801A8C84 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 14ECF8 801A8C88 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 14ECFC 801A8C8C 46000487 */  neg.s $f18, $f0
/* 14ED00 801A8C90 3C01801A */  lui   $at, %hi(D_80198820) # $at, 0x801a
/* 14ED04 801A8C94 E4328820 */  swc1  $f18, %lo(D_80198820)($at)
/* 14ED08 801A8C98 8DF80000 */  lw    $t8, ($t7)
/* 14ED0C 801A8C9C 3C01800E */ lui $at, %hi(D_800E6F5C)
/* 14ED10 801A8CA0 0018C900 */  sll   $t9, $t8, 4
/* 14ED14 801A8CA4 00390821 */  addu  $at, $at, $t9
/* 14ED18 801A8CA8 C4226F5C */ lwc1 $f2, %lo(D_800E6F5C)($at)
.L801A8CAC_ovl7:
/* 14ED1C 801A8CAC 3C0141D0 */  li    $at, 0x41D00000 # 26.000000
/* 14ED20 801A8CB0 44812000 */  mtc1  $at, $f4
/* 14ED24 801A8CB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14ED28 801A8CB8 00001025 */  move  $v0, $zero
/* 14ED2C 801A8CBC 4604103C */  c.lt.s $f2, $f4
/* 14ED30 801A8CC0 00000000 */  nop   
/* 14ED34 801A8CC4 45000003 */  bc1f  .L801A8CD4_ovl7
/* 14ED38 801A8CC8 00000000 */   nop   
/* 14ED3C 801A8CCC 10000001 */  b     .L801A8CD4_ovl7
/* 14ED40 801A8CD0 24020001 */   li    $v0, 1
.L801A8CD4_ovl7:
/* 14ED44 801A8CD4 03E00008 */  jr    $ra
/* 14ED48 801A8CD8 27BD0030 */   addiu $sp, $sp, 0x30
.type func_801A8BAC_ovl7, @function
.size func_801A8BAC_ovl7, . - func_801A8BAC_ovl7
