glabel func_801DCD8C_ovl11
/* 1E764C 801DCD8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E7650 801DCD90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E7654 801DCD94 0C06B9F8 */  jal   func_801AE7E0_ovl11
/* 1E7658 801DCD98 24040004 */   li    $a0, 4
/* 1E765C 801DCD9C 10400015 */  beqz  $v0, .L801DCDF4_ovl11
/* 1E7660 801DCDA0 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1E7664 801DCDA4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1E7668 801DCDA8 3C07800E */  lui   $a3, %hi(gEntitiesAngleYArray) # $a3, 0x800e
/* 1E766C 801DCDAC 24E741D0 */  addiu $a3, %lo(gEntitiesAngleYArray) # addiu $a3, $a3, 0x41d0
/* 1E7670 801DCDB0 8C650000 */  lw    $a1, ($v1)
/* 1E7674 801DCDB4 3C01800F */ lui $at, %hi(D_800EAA60)
/* 1E7678 801DCDB8 00021080 */  sll   $v0, $v0, 2
/* 1E767C 801DCDBC 00052880 */  sll   $a1, $a1, 2
/* 1E7680 801DCDC0 00250821 */  addu  $at, $at, $a1
/* 1E7684 801DCDC4 00E57021 */  addu  $t6, $a3, $a1
/* 1E7688 801DCDC8 C5C60000 */  lwc1  $f6, ($t6)
/* 1E768C 801DCDCC C424AA60 */ lwc1 $f4, %lo(D_800EAA60)($at)
/* 1E7690 801DCDD0 00E27821 */  addu  $t7, $a3, $v0
/* 1E7694 801DCDD4 3C01800F */ lui $at, %hi(D_800EA520)
/* 1E7698 801DCDD8 46062200 */  add.s $f8, $f4, $f6
/* 1E769C 801DCDDC 00220821 */  addu  $at, $at, $v0
/* 1E76A0 801DCDE0 24040176 */  li    $a0, 374
/* 1E76A4 801DCDE4 E5E80000 */  swc1  $f8, ($t7)
/* 1E76A8 801DCDE8 8C780000 */  lw    $t8, ($v1)
/* 1E76AC 801DCDEC 0C029D9E */  jal   play_sound
/* 1E76B0 801DCDF0 AC38A520 */ sw $t8, %lo(D_800EA520)($at)
.L801DCDF4_ovl11:
/* 1E76B4 801DCDF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E76B8 801DCDF8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E76BC 801DCDFC 03E00008 */  jr    $ra
/* 1E76C0 801DCE00 00000000 */   nop   
.type func_801DCD8C_ovl11, @function
.size func_801DCD8C_ovl11, . - func_801DCD8C_ovl11
