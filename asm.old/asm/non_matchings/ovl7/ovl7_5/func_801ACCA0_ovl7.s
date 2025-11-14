glabel func_801ACCA0_ovl7
/* 152D10 801ACCA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 152D14 801ACCA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 152D18 801ACCA8 AFA60028 */  sw    $a2, 0x28($sp)
/* 152D1C 801ACCAC 0C06B30D */  jal   func_801ACC34_ovl7
/* 152D20 801ACCB0 AFA7002C */   sw    $a3, 0x2c($sp)
/* 152D24 801ACCB4 14400003 */  bnez  $v0, .L801ACCC4_ovl7
/* 152D28 801ACCB8 00403025 */   move  $a2, $v0
/* 152D2C 801ACCBC 1000001E */  b     .L801ACD38_ovl7
/* 152D30 801ACCC0 00001025 */   move  $v0, $zero
.L801ACCC4_ovl7:
/* 152D34 801ACCC4 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 152D38 801ACCC8 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 152D3C 801ACCCC 00067080 */  sll   $t6, $a2, 2
/* 152D40 801ACCD0 01CF1021 */  addu  $v0, $t6, $t7
/* 152D44 801ACCD4 C4440000 */  lwc1  $f4, ($v0)
/* 152D48 801ACCD8 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 152D4C 801ACCDC 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 152D50 801ACCE0 3C01800E */ lui $at, %hi(D_800E6A10)
/* 152D54 801ACCE4 46062200 */  add.s $f8, $f4, $f6
/* 152D58 801ACCE8 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 152D5C 801ACCEC 00C02025 */  move  $a0, $a2
/* 152D60 801ACCF0 E4480000 */  swc1  $f8, ($v0)
/* 152D64 801ACCF4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 152D68 801ACCF8 8F190000 */  lw    $t9, ($t8)
/* 152D6C 801ACCFC AFA6001C */  sw    $a2, 0x1c($sp)
/* 152D70 801ACD00 00194080 */  sll   $t0, $t9, 2
/* 152D74 801ACD04 00280821 */  addu  $at, $at, $t0
/* 152D78 801ACD08 C42A6A10 */ lwc1 $f10, %lo(D_800E6A10)($at)
/* 152D7C 801ACD0C 46105482 */  mul.s $f18, $f10, $f16
/* 152D80 801ACD10 44059000 */  mfc1  $a1, $f18
/* 152D84 801ACD14 0C03E63B */  jal   func_800F98EC
/* 152D88 801ACD18 00000000 */   nop   
/* 152D8C 801ACD1C 10400005 */  beqz  $v0, .L801ACD34_ovl7
/* 152D90 801ACD20 8FA6001C */   lw    $a2, 0x1c($sp)
/* 152D94 801ACD24 0C02C640 */  jal   func_800B1900
/* 152D98 801ACD28 30C4FFFF */   andi  $a0, $a2, 0xffff
/* 152D9C 801ACD2C 10000002 */  b     .L801ACD38_ovl7
/* 152DA0 801ACD30 00001025 */   move  $v0, $zero
.L801ACD34_ovl7:
/* 152DA4 801ACD34 00C01025 */  move  $v0, $a2
.L801ACD38_ovl7:
/* 152DA8 801ACD38 8FBF0014 */  lw    $ra, 0x14($sp)
/* 152DAC 801ACD3C 27BD0020 */  addiu $sp, $sp, 0x20
/* 152DB0 801ACD40 03E00008 */  jr    $ra
/* 152DB4 801ACD44 00000000 */   nop   
.type func_801ACCA0_ovl7, @function
.size func_801ACCA0_ovl7, . - func_801ACCA0_ovl7
