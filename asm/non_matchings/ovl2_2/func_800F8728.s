glabel func_800F8728
/* 081198 800F8728 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 08119C 800F872C 3C0E8013 */  lui   $t6, %hi(D_80129114) # $t6, 0x8013
/* 0811A0 800F8730 8DCE9114 */  lw    $t6, %lo(D_80129114)($t6)
/* 0811A4 800F8734 00041080 */  sll   $v0, $a0, 2
/* 0811A8 800F8738 3C18800E */  lui   $t8, 0x800e
/* 0811AC 800F873C 0302C021 */  addu  $t8, $t8, $v0
/* 0811B0 800F8740 8F185F90 */  lw    $t8, 0x5f90($t8)
/* 0811B4 800F8744 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0811B8 800F8748 AFA40038 */  sw    $a0, 0x38($sp)
/* 0811BC 800F874C AFA5003C */  sw    $a1, 0x3c($sp)
/* 0811C0 800F8750 AFA60040 */  sw    $a2, 0x40($sp)
/* 0811C4 800F8754 8DCF0004 */  lw    $t7, 4($t6)
/* 0811C8 800F8758 0018C900 */  sll   $t9, $t8, 4
/* 0811CC 800F875C 3C09800E */  lui   $t1, %hi(D_800E6BD0) # $t1, 0x800e
/* 0811D0 800F8760 01F94021 */  addu  $t0, $t7, $t9
/* 0811D4 800F8764 8D050004 */  lw    $a1, 4($t0)
/* 0811D8 800F8768 25296BD0 */  addiu $t1, %lo(D_800E6BD0) # addiu $t1, $t1, 0x6bd0
/* 0811DC 800F876C 00491821 */  addu  $v1, $v0, $t1
/* 0811E0 800F8770 8C660000 */  lw    $a2, ($v1)
/* 0811E4 800F8774 AFA3001C */  sw    $v1, 0x1c($sp)
/* 0811E8 800F8778 27A40028 */  addiu $a0, $sp, 0x28
/* 0811EC 800F877C 0C0078D1 */  jal   func_8001E344_ovl2
/* 0811F0 800F8780 AFA50034 */   sw    $a1, 0x34($sp)
/* 0811F4 800F8784 C7A00028 */  lwc1  $f0, 0x28($sp)
/* 0811F8 800F8788 C7A20030 */  lwc1  $f2, 0x30($sp)
/* 0811FC 800F878C 46000102 */  mul.s $f4, $f0, $f0
/* 081200 800F8790 00000000 */  nop   
/* 081204 800F8794 46021182 */  mul.s $f6, $f2, $f2
/* 081208 800F8798 0C00CAC8 */  jal   sqrtf
/* 08120C 800F879C 46062300 */   add.s $f12, $f4, $f6
/* 081210 800F87A0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 081214 800F87A4 44814000 */  mtc1  $at, $f8
/* 081218 800F87A8 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 08121C 800F87AC C7B20030 */  lwc1  $f18, 0x30($sp)
/* 081220 800F87B0 46004083 */  div.s $f2, $f8, $f0
/* 081224 800F87B4 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* 081228 800F87B8 8FAA0034 */  lw    $t2, 0x34($sp)
/* 08122C 800F87BC 3C018013 */  lui   $at, %hi(D_80128790) # $at, 0x8013
/* 081230 800F87C0 8FA3001C */  lw    $v1, 0x1c($sp)
/* 081234 800F87C4 8FA40038 */  lw    $a0, 0x38($sp)
/* 081238 800F87C8 46025402 */  mul.s $f16, $f10, $f2
/* 08123C 800F87CC C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 081240 800F87D0 46029102 */  mul.s $f4, $f18, $f2
/* 081244 800F87D4 00000000 */  nop   
/* 081248 800F87D8 46068202 */  mul.s $f8, $f16, $f6
/* 08124C 800F87DC E7B00028 */  swc1  $f16, 0x28($sp)
/* 081250 800F87E0 460A2482 */  mul.s $f18, $f4, $f10
/* 081254 800F87E4 E7A40030 */  swc1  $f4, 0x30($sp)
/* 081258 800F87E8 C4248790 */  lwc1  $f4, %lo(D_80128790)($at)
/* 08125C 800F87EC 46124300 */  add.s $f12, $f8, $f18
/* 081260 800F87F0 C4680000 */  lwc1  $f8, ($v1)
/* 081264 800F87F4 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 081268 800F87F8 C550000C */  lwc1  $f16, 0xc($t2)
/* 08126C 800F87FC 46106183 */  div.s $f6, $f12, $f16
/* 081270 800F8800 46043282 */  mul.s $f10, $f6, $f4
/* 081274 800F8804 460A4480 */  add.s $f18, $f8, $f10
/* 081278 800F8808 0C03E15C */  jal   func_800F8570
/* 08127C 800F880C E4720000 */   swc1  $f18, ($v1)
/* 081280 800F8810 8FBF0014 */  lw    $ra, 0x14($sp)
/* 081284 800F8814 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 081288 800F8818 27BD0038 */  addiu $sp, $sp, 0x38
/* 08128C 800F881C 03E00008 */  jr    $ra
/* 081290 800F8820 00000000 */   nop   