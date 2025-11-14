glabel func_801D0E3C_ovl8
/* 17491C 801D0E3C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174920 801D0E40 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174924 801D0E44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174928 801D0E48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17492C 801D0E4C 8CAE0000 */  lw    $t6, ($a1)
/* 174930 801D0E50 44806000 */  mtc1  $zero, $f12
/* 174934 801D0E54 3C02800E */  lui   $v0, %hi(D_800E5890) # $v0, 0x800e
/* 174938 801D0E58 24425890 */  addiu $v0, %lo(D_800E5890) # addiu $v0, $v0, 0x5890
/* 17493C 801D0E5C 000E7880 */  sll   $t7, $t6, 2
/* 174940 801D0E60 004FC021 */  addu  $t8, $v0, $t7
/* 174944 801D0E64 E70C0000 */  swc1  $f12, ($t8)
/* 174948 801D0E68 8CA30000 */  lw    $v1, ($a1)
/* 17494C 801D0E6C 3C01800E */ lui $at, %hi(D_800E5C10)
/* 174950 801D0E70 00031880 */  sll   $v1, $v1, 2
/* 174954 801D0E74 0043C821 */  addu  $t9, $v0, $v1
/* 174958 801D0E78 C7200000 */  lwc1  $f0, ($t9)
/* 17495C 801D0E7C 00230821 */  addu  $at, $at, $v1
/* 174960 801D0E80 E4205C10 */ swc1 $f0, %lo(D_800E5C10)($at)
/* 174964 801D0E84 8CA80000 */  lw    $t0, ($a1)
/* 174968 801D0E88 3C01800E */ lui $at, %hi(D_800E56D0)
/* 17496C 801D0E8C 00084880 */  sll   $t1, $t0, 2
/* 174970 801D0E90 00290821 */  addu  $at, $at, $t1
/* 174974 801D0E94 E42056D0 */ swc1 $f0, %lo(D_800E56D0)($at)
/* 174978 801D0E98 8CAA0000 */  lw    $t2, ($a1)
/* 17497C 801D0E9C 3C01800E */ lui $at, %hi(D_800E5510)
/* 174980 801D0EA0 000A5880 */  sll   $t3, $t2, 2
/* 174984 801D0EA4 002B0821 */  addu  $at, $at, $t3
/* 174988 801D0EA8 0C02D8AB */  jal   func_800B62AC
/* 17498C 801D0EAC E4205510 */ swc1 $f0, %lo(D_800E5510)($at)
/* 174990 801D0EB0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 174994 801D0EB4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 174998 801D0EB8 3C01801E */  lui   $at, %hi(D_801DB064_ovl8) # $at, 0x801e
/* 17499C 801D0EBC C422B064 */  lwc1  $f2, %lo(D_801DB064_ovl8)($at)
/* 1749A0 801D0EC0 8CA30000 */  lw    $v1, ($a1)
/* 1749A4 801D0EC4 3C01800E */ lui $at, %hi(D_800E17D0)
/* 1749A8 801D0EC8 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 1749AC 801D0ECC 00031880 */  sll   $v1, $v1, 2
/* 1749B0 801D0ED0 00230821 */  addu  $at, $at, $v1
/* 1749B4 801D0ED4 C42417D0 */ lwc1 $f4, %lo(D_800E17D0)($at)
/* 1749B8 801D0ED8 3C01800F */ lui $at, %hi(D_800E9020)
/* 1749BC 801D0EDC 00230821 */  addu  $at, $at, $v1
/* 1749C0 801D0EE0 C4269020 */ lwc1 $f6, %lo(D_800E9020)($at)
/* 1749C4 801D0EE4 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 1749C8 801D0EE8 00836021 */  addu  $t4, $a0, $v1
/* 1749CC 801D0EEC 46062200 */  add.s $f8, $f4, $f6
/* 1749D0 801D0EF0 44806000 */  mtc1  $zero, $f12
/* 1749D4 801D0EF4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1749D8 801D0EF8 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1749DC 801D0EFC E5880000 */  swc1  $f8, ($t4)
/* 1749E0 801D0F00 8CA30000 */  lw    $v1, ($a1)
/* 1749E4 801D0F04 00031880 */  sll   $v1, $v1, 2
/* 1749E8 801D0F08 00831021 */  addu  $v0, $a0, $v1
/* 1749EC 801D0F0C C4400000 */  lwc1  $f0, ($v0)
/* 1749F0 801D0F10 4600103E */  c.le.s $f2, $f0
/* 1749F4 801D0F14 00000000 */  nop   
/* 1749F8 801D0F18 4502000C */  bc1fl .L801D0F4C_ovl8
/* 1749FC 801D0F1C 460C003C */   c.lt.s $f0, $f12
/* 174A00 801D0F20 46020281 */  sub.s $f10, $f0, $f2
.L801D0F24_ovl8:
/* 174A04 801D0F24 E44A0000 */  swc1  $f10, ($v0)
/* 174A08 801D0F28 8CA30000 */  lw    $v1, ($a1)
/* 174A0C 801D0F2C 00031880 */  sll   $v1, $v1, 2
/* 174A10 801D0F30 00831021 */  addu  $v0, $a0, $v1
/* 174A14 801D0F34 C4400000 */  lwc1  $f0, ($v0)
/* 174A18 801D0F38 4600103E */  c.le.s $f2, $f0
/* 174A1C 801D0F3C 00000000 */  nop   
/* 174A20 801D0F40 4503FFF8 */  bc1tl .L801D0F24_ovl8
/* 174A24 801D0F44 46020281 */   sub.s $f10, $f0, $f2
/* 174A28 801D0F48 460C003C */  c.lt.s $f0, $f12
.L801D0F4C_ovl8:
/* 174A2C 801D0F4C 00000000 */  nop   
/* 174A30 801D0F50 4502000C */  bc1fl .L801D0F84_ovl8
/* 174A34 801D0F54 00230821 */   addu  $at, $at, $v1
/* 174A38 801D0F58 46020400 */  add.s $f16, $f0, $f2
.L801D0F5C_ovl8:
/* 174A3C 801D0F5C E4500000 */  swc1  $f16, ($v0)
/* 174A40 801D0F60 8CA30000 */  lw    $v1, ($a1)
/* 174A44 801D0F64 00031880 */  sll   $v1, $v1, 2
/* 174A48 801D0F68 00831021 */  addu  $v0, $a0, $v1
/* 174A4C 801D0F6C C4400000 */  lwc1  $f0, ($v0)
/* 174A50 801D0F70 460C003C */  c.lt.s $f0, $f12
/* 174A54 801D0F74 00000000 */  nop   
/* 174A58 801D0F78 4503FFF8 */  bc1tl .L801D0F5C_ovl8
/* 174A5C 801D0F7C 46020400 */   add.s $f16, $f0, $f2
/* 174A60 801D0F80 00230821 */  addu  $at, $at, $v1
.L801D0F84_ovl8:
/* 174A64 801D0F84 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 174A68 801D0F88 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 174A6C 801D0F8C 00230821 */  addu  $at, $at, $v1
/* 174A70 801D0F90 00C33021 */  addu  $a2, $a2, $v1
/* 174A74 801D0F94 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 174A78 801D0F98 0C02CC8D */  jal   func_800B3234
/* 174A7C 801D0F9C C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 174A80 801D0FA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174A84 801D0FA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 174A88 801D0FA8 03E00008 */  jr    $ra
/* 174A8C 801D0FAC 00000000 */   nop   
.type func_801D0E3C_ovl8, @function
.size func_801D0E3C_ovl8, . - func_801D0E3C_ovl8
