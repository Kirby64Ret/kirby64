glabel func_80112CD4
/* 09B744 80112CD4 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 09B748 80112CD8 AFB10028 */  sw    $s1, 0x28($sp)
/* 09B74C 80112CDC 3C0E800E */  lui   $t6, %hi(gEntitiesAngleXArray) # $t6, 0x800e
/* 09B750 80112CE0 25CE4010 */  addiu $t6, %lo(gEntitiesAngleXArray) # addiu $t6, $t6, 0x4010
/* 09B754 80112CE4 00048880 */  sll   $s1, $a0, 2
/* 09B758 80112CE8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 09B75C 80112CEC AFB00024 */  sw    $s0, 0x24($sp)
/* 09B760 80112CF0 022E1021 */  addu  $v0, $s1, $t6
/* 09B764 80112CF4 00A08025 */  move  $s0, $a1
/* 09B768 80112CF8 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 09B76C 80112CFC F7B40010 */  sdc1  $f20, 0x10($sp)
/* 09B770 80112D00 C44C0000 */  lwc1  $f12, ($v0)
/* 09B774 80112D04 0C00B5B8 */  jal   sinf
/* 09B778 80112D08 AFA20030 */   sw    $v0, 0x30($sp)
/* 09B77C 80112D0C 8FA20030 */  lw    $v0, 0x30($sp)
/* 09B780 80112D10 46000506 */  mov.s $f20, $f0
/* 09B784 80112D14 0C00D604 */  jal   cosf
/* 09B788 80112D18 C44C0000 */   lwc1  $f12, ($v0)
/* 09B78C 80112D1C 3C0F800E */  lui   $t7, %hi(gEntitiesAngleYArray) # $t7, 0x800e
/* 09B790 80112D20 25EF41D0 */  addiu $t7, %lo(gEntitiesAngleYArray) # addiu $t7, $t7, 0x41d0
/* 09B794 80112D24 022F1021 */  addu  $v0, $s1, $t7
/* 09B798 80112D28 46000586 */  mov.s $f22, $f0
/* 09B79C 80112D2C C44C0000 */  lwc1  $f12, ($v0)
/* 09B7A0 80112D30 0C00B5B8 */  jal   sinf
/* 09B7A4 80112D34 AFA20030 */   sw    $v0, 0x30($sp)
/* 09B7A8 80112D38 8FA20030 */  lw    $v0, 0x30($sp)
/* 09B7AC 80112D3C E7A00058 */  swc1  $f0, 0x58($sp)
/* 09B7B0 80112D40 0C00D604 */  jal   cosf
/* 09B7B4 80112D44 C44C0000 */   lwc1  $f12, ($v0)
/* 09B7B8 80112D48 3C18800E */  lui   $t8, %hi(gEntitiesAngleZArray) # $t8, 0x800e
/* 09B7BC 80112D4C 27184390 */  addiu $t8, %lo(gEntitiesAngleZArray) # addiu $t8, $t8, 0x4390
/* 09B7C0 80112D50 02381021 */  addu  $v0, $s1, $t8
/* 09B7C4 80112D54 C44C0000 */  lwc1  $f12, ($v0)
/* 09B7C8 80112D58 AFA20030 */  sw    $v0, 0x30($sp)
/* 09B7CC 80112D5C 0C00B5B8 */  jal   sinf
/* 09B7D0 80112D60 E7A0004C */   swc1  $f0, 0x4c($sp)
/* 09B7D4 80112D64 8FA20030 */  lw    $v0, 0x30($sp)
/* 09B7D8 80112D68 E7A00054 */  swc1  $f0, 0x54($sp)
/* 09B7DC 80112D6C 0C00D604 */  jal   cosf
/* 09B7E0 80112D70 C44C0000 */   lwc1  $f12, ($v0)
/* 09B7E4 80112D74 C7B0004C */  lwc1  $f16, 0x4c($sp)
/* 09B7E8 80112D78 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 09B7EC 80112D7C 00310821 */  addu  $at, $at, $s1
/* 09B7F0 80112D80 46008102 */  mul.s $f4, $f16, $f0
/* 09B7F4 80112D84 C4224550 */ lwc1 $f2, %lo(gEntitiesScaleXArray)($at)
/* 09B7F8 80112D88 C7AE0054 */  lwc1  $f14, 0x54($sp)
/* 09B7FC 80112D8C 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 09B800 80112D90 00310821 */  addu  $at, $at, $s1
/* 09B804 80112D94 C42C4710 */ lwc1 $f12, %lo(gEntitiesScaleYArray)($at)
/* 09B808 80112D98 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 09B80C 80112D9C 46022182 */  mul.s $f6, $f4, $f2
/* 09B810 80112DA0 00310821 */  addu  $at, $at, $s1
/* 09B814 80112DA4 C43248D0 */ lwc1 $f18, %lo(gEntitiesScaleZArray)($at)
/* 09B818 80112DA8 460E8202 */  mul.s $f8, $f16, $f14
/* 09B81C 80112DAC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 09B820 80112DB0 00310821 */  addu  $at, $at, $s1
/* 09B824 80112DB4 E6060000 */  swc1  $f6, ($s0)
/* 09B828 80112DB8 46024282 */  mul.s $f10, $f8, $f2
/* 09B82C 80112DBC E60A0004 */  swc1  $f10, 4($s0)
/* 09B830 80112DC0 C7A40058 */  lwc1  $f4, 0x58($sp)
/* 09B834 80112DC4 46002187 */  neg.s $f6, $f4
/* 09B838 80112DC8 46023202 */  mul.s $f8, $f6, $f2
/* 09B83C 80112DCC E6080008 */  swc1  $f8, 8($s0)
/* 09B840 80112DD0 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* 09B844 80112DD4 460AA102 */  mul.s $f4, $f20, $f10
/* 09B848 80112DD8 E7A40030 */  swc1  $f4, 0x30($sp)
/* 09B84C 80112DDC C7A60030 */  lwc1  $f6, 0x30($sp)
/* 09B850 80112DE0 46003202 */  mul.s $f8, $f6, $f0
/* 09B854 80112DE4 00000000 */  nop   
/* 09B858 80112DE8 460EB282 */  mul.s $f10, $f22, $f14
/* 09B85C 80112DEC 460A4101 */  sub.s $f4, $f8, $f10
/* 09B860 80112DF0 460C2182 */  mul.s $f6, $f4, $f12
/* 09B864 80112DF4 E6060010 */  swc1  $f6, 0x10($s0)
/* 09B868 80112DF8 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 09B86C 80112DFC 460E4282 */  mul.s $f10, $f8, $f14
/* 09B870 80112E00 00000000 */  nop   
/* 09B874 80112E04 4600B102 */  mul.s $f4, $f22, $f0
/* 09B878 80112E08 46045180 */  add.s $f6, $f10, $f4
/* 09B87C 80112E0C 460C3202 */  mul.s $f8, $f6, $f12
/* 09B880 80112E10 00000000 */  nop   
/* 09B884 80112E14 4610A282 */  mul.s $f10, $f20, $f16
/* 09B888 80112E18 E6080014 */  swc1  $f8, 0x14($s0)
/* 09B88C 80112E1C 460C5102 */  mul.s $f4, $f10, $f12
/* 09B890 80112E20 E6040018 */  swc1  $f4, 0x18($s0)
/* 09B894 80112E24 C7A60058 */  lwc1  $f6, 0x58($sp)
/* 09B898 80112E28 4606B082 */  mul.s $f2, $f22, $f6
/* 09B89C 80112E2C 00000000 */  nop   
/* 09B8A0 80112E30 46001202 */  mul.s $f8, $f2, $f0
/* 09B8A4 80112E34 00000000 */  nop   
/* 09B8A8 80112E38 460EA282 */  mul.s $f10, $f20, $f14
/* 09B8AC 80112E3C 460A4100 */  add.s $f4, $f8, $f10
/* 09B8B0 80112E40 46122182 */  mul.s $f6, $f4, $f18
/* 09B8B4 80112E44 00000000 */  nop   
/* 09B8B8 80112E48 460E1202 */  mul.s $f8, $f2, $f14
/* 09B8BC 80112E4C 00000000 */  nop   
/* 09B8C0 80112E50 4600A282 */  mul.s $f10, $f20, $f0
/* 09B8C4 80112E54 E6060020 */  swc1  $f6, 0x20($s0)
/* 09B8C8 80112E58 44800000 */  mtc1  $zero, $f0
/* 09B8CC 80112E5C 460A4101 */  sub.s $f4, $f8, $f10
/* 09B8D0 80112E60 46122182 */  mul.s $f6, $f4, $f18
/* 09B8D4 80112E64 00000000 */  nop   
/* 09B8D8 80112E68 4610B202 */  mul.s $f8, $f22, $f16
/* 09B8DC 80112E6C E6060024 */  swc1  $f6, 0x24($s0)
/* 09B8E0 80112E70 46124282 */  mul.s $f10, $f8, $f18
/* 09B8E4 80112E74 E60A0028 */  swc1  $f10, 0x28($s0)
/* 09B8E8 80112E78 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 09B8EC 80112E7C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 09B8F0 80112E80 00310821 */  addu  $at, $at, $s1
/* 09B8F4 80112E84 E6040030 */  swc1  $f4, 0x30($s0)
/* 09B8F8 80112E88 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 09B8FC 80112E8C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 09B900 80112E90 00310821 */  addu  $at, $at, $s1
/* 09B904 80112E94 E6060034 */  swc1  $f6, 0x34($s0)
/* 09B908 80112E98 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 09B90C 80112E9C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 09B910 80112EA0 44815000 */  mtc1  $at, $f10
/* 09B914 80112EA4 E600000C */  swc1  $f0, 0xc($s0)
/* 09B918 80112EA8 E600001C */  swc1  $f0, 0x1c($s0)
/* 09B91C 80112EAC E600002C */  swc1  $f0, 0x2c($s0)
/* 09B920 80112EB0 E6080038 */  swc1  $f8, 0x38($s0)
/* 09B924 80112EB4 E60A003C */  swc1  $f10, 0x3c($s0)
/* 09B928 80112EB8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 09B92C 80112EBC 8FB10028 */  lw    $s1, 0x28($sp)
/* 09B930 80112EC0 8FB00024 */  lw    $s0, 0x24($sp)
/* 09B934 80112EC4 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 09B938 80112EC8 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 09B93C 80112ECC 03E00008 */  jr    $ra
/* 09B940 80112ED0 27BD0060 */   addiu $sp, $sp, 0x60
.type func_80112CD4, @function
.size func_80112CD4, . - func_80112CD4
