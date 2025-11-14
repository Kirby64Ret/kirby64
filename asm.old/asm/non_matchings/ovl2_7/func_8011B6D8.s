glabel func_8011B6D8
/* 0A4148 8011B6D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A414C 8011B6DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A4150 8011B6E0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A4154 8011B6E4 8C830000 */  lw    $v1, ($a0)
/* 0A4158 8011B6E8 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 0A415C 8011B6EC 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 0A4160 8011B6F0 00031080 */  sll   $v0, $v1, 2
/* 0A4164 8011B6F4 00A27821 */  addu  $t7, $a1, $v0
/* 0A4168 8011B6F8 C5E60000 */  lwc1  $f6, ($t7)
/* 0A416C 8011B6FC C4A40000 */  lwc1  $f4, ($a1)
/* 0A4170 8011B700 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 0A4174 8011B704 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 0A4178 8011B708 00C2C021 */  addu  $t8, $a2, $v0
/* 0A417C 8011B70C 46062001 */  sub.s $f0, $f4, $f6
/* 0A4180 8011B710 C70A0000 */  lwc1  $f10, ($t8)
/* 0A4184 8011B714 C4C80000 */  lwc1  $f8, ($a2)
/* 0A4188 8011B718 3C0145C8 */  li    $at, 0x45C80000 # 6400.000000
/* 0A418C 8011B71C 46000402 */  mul.s $f16, $f0, $f0
/* 0A4190 8011B720 460A4081 */  sub.s $f2, $f8, $f10
/* 0A4194 8011B724 44813000 */  mtc1  $at, $f6
/* 0A4198 8011B728 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0A419C 8011B72C 46021482 */  mul.s $f18, $f2, $f2
/* 0A41A0 8011B730 46128100 */  add.s $f4, $f16, $f18
/* 0A41A4 8011B734 4606203C */  c.lt.s $f4, $f6
/* 0A41A8 8011B738 00000000 */  nop   
/* 0A41AC 8011B73C 4500000F */  bc1f  .L8011B77C_ovl2
/* 0A41B0 8011B740 00000000 */   nop   
/* 0A41B4 8011B744 0C02BB30 */  jal   func_800AECC0
/* 0A41B8 8011B748 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0A41BC 8011B74C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0A41C0 8011B750 0C02BB48 */  jal   func_800AED20
/* 0A41C4 8011B754 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0A41C8 8011B758 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A41CC 8011B75C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A41D0 8011B760 3C198011 */  lui   $t9, %hi(func_80112B4C) # $t9, 0x8011
/* 0A41D4 8011B764 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A41D8 8011B768 8D090000 */  lw    $t1, ($t0)
/* 0A41DC 8011B76C 27392B4C */  addiu $t9, %lo(func_80112B4C) # addiu $t9, $t9, 0x2b4c
/* 0A41E0 8011B770 00095080 */  sll   $t2, $t1, 2
/* 0A41E4 8011B774 002A0821 */  addu  $at, $at, $t2
/* 0A41E8 8011B778 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
.L8011B77C_ovl2:
/* 0A41EC 8011B77C 0C044AD3 */  jal   func_80112B4C
/* 0A41F0 8011B780 8FA40018 */   lw    $a0, 0x18($sp)
/* 0A41F4 8011B784 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A41F8 8011B788 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A41FC 8011B78C 03E00008 */  jr    $ra
/* 0A4200 8011B790 00000000 */   nop   
.type func_8011B6D8, @function
.size func_8011B6D8, . - func_8011B6D8
