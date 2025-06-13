glabel func_8021F600_ovl19
/* 23FD10 8021F600 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 23FD14 8021F604 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 23FD18 8021F608 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 23FD1C 8021F60C AFBF0014 */  sw    $ra, 0x14($sp)
/* 23FD20 8021F610 AFA40038 */  sw    $a0, 0x38($sp)
/* 23FD24 8021F614 8DC30000 */  lw    $v1, ($t6)
/* 23FD28 8021F618 3C0F800F */ lui $t7, %hi(D_800E98E0)
/* 23FD2C 8021F61C 3C18800D */  lui   $t8, %hi(D_800D6E64) # $t8, 0x800d
/* 23FD30 8021F620 00031880 */  sll   $v1, $v1, 2
/* 23FD34 8021F624 01E37821 */  addu  $t7, $t7, $v1
/* 23FD38 8021F628 8DEF98E0 */ lw $t7, %lo(D_800E98E0)($t7)
/* 23FD3C 8021F62C 55E00027 */  bnezl $t7, .L8021F6CC_ovl19
/* 23FD40 8021F630 8FBF0014 */   lw    $ra, 0x14($sp)
/* 23FD44 8021F634 8F186E64 */  lw    $t8, %lo(D_800D6E64)($t8)
/* 23FD48 8021F638 3C02800F */ lui $v0, %hi(D_800E9AA0)
/* 23FD4C 8021F63C 00431021 */  addu  $v0, $v0, $v1
/* 23FD50 8021F640 17000021 */  bnez  $t8, .L8021F6C8_ovl19
/* 23FD54 8021F644 3C01800E */   lui   $at, %hi(gEntitiesNextPosXArray) # $at, 0x800e
/* 23FD58 8021F648 C42425D0 */  lwc1  $f4, %lo(gEntitiesNextPosXArray)($at)
/* 23FD5C 8021F64C 3C01800E */  lui   $at, %hi(gEntitiesNextPosZArray) # $at, 0x800e
/* 23FD60 8021F650 44800000 */  mtc1  $zero, $f0
/* 23FD64 8021F654 C4262950 */  lwc1  $f6, %lo(gEntitiesNextPosZArray)($at)
/* 23FD68 8021F658 8C429AA0 */ lw $v0, %lo(D_800E9AA0)($v0)
/* 23FD6C 8021F65C E7A4002C */  swc1  $f4, 0x2c($sp)
/* 23FD70 8021F660 E7A00030 */  swc1  $f0, 0x30($sp)
/* 23FD74 8021F664 E7A60034 */  swc1  $f6, 0x34($sp)
/* 23FD78 8021F668 C4480008 */  lwc1  $f8, 8($v0)
/* 23FD7C 8021F66C E7A00024 */  swc1  $f0, 0x24($sp)
/* 23FD80 8021F670 27A4002C */  addiu $a0, $sp, 0x2c
/* 23FD84 8021F674 E7A80020 */  swc1  $f8, 0x20($sp)
/* 23FD88 8021F678 C44A0010 */  lwc1  $f10, 0x10($v0)
/* 23FD8C 8021F67C 27A50020 */  addiu $a1, $sp, 0x20
/* 23FD90 8021F680 0C029157 */  jal   vec3_dist_square
/* 23FD94 8021F684 E7AA0028 */   swc1  $f10, 0x28($sp)
/* 23FD98 8021F688 3C0147C8 */  li    $at, 0x47C80000 # 102400.000000
/* 23FD9C 8021F68C 44818000 */  mtc1  $at, $f16
/* 23FDA0 8021F690 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 23FDA4 8021F694 4610003C */  c.lt.s $f0, $f16
/* 23FDA8 8021F698 00000000 */  nop   
/* 23FDAC 8021F69C 4502000B */  bc1fl .L8021F6CC_ovl19
/* 23FDB0 8021F6A0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 23FDB4 8021F6A4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 23FDB8 8021F6A8 3C0A800F */  lui   $t2, %hi(D_800E98E0) # $t2, 0x800f
/* 23FDBC 8021F6AC 254A98E0 */  addiu $t2, %lo(D_800E98E0) # addiu $t2, $t2, -0x6720
/* 23FDC0 8021F6B0 8F280000 */  lw    $t0, ($t9)
/* 23FDC4 8021F6B4 00084880 */  sll   $t1, $t0, 2
/* 23FDC8 8021F6B8 012A1021 */  addu  $v0, $t1, $t2
/* 23FDCC 8021F6BC 8C4B0000 */  lw    $t3, ($v0)
/* 23FDD0 8021F6C0 256C0001 */  addiu $t4, $t3, 1
/* 23FDD4 8021F6C4 AC4C0000 */  sw    $t4, ($v0)
.L8021F6C8_ovl19:
/* 23FDD8 8021F6C8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8021F6CC_ovl19:
/* 23FDDC 8021F6CC 27BD0038 */  addiu $sp, $sp, 0x38
/* 23FDE0 8021F6D0 03E00008 */  jr    $ra
/* 23FDE4 8021F6D4 00000000 */   nop   
.type func_8021F600_ovl19, @function
.size func_8021F600_ovl19, . - func_8021F600_ovl19
