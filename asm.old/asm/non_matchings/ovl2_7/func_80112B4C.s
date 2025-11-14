glabel func_80112B4C
/* 09B5BC 80112B4C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 09B5C0 80112B50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09B5C4 80112B54 8C83003C */  lw    $v1, 0x3c($a0)
/* 09B5C8 80112B58 8C850000 */  lw    $a1, ($a0)
/* 09B5CC 80112B5C 44800000 */  mtc1  $zero, $f0
/* 09B5D0 80112B60 3C0E800E */  lui   $t6, %hi(D_800E33D0) # $t6, 0x800e
/* 09B5D4 80112B64 00051080 */  sll   $v0, $a1, 2
/* 09B5D8 80112B68 3C0F800E */  lui   $t7, %hi(D_800E3210) # $t7, 0x800e
/* 09B5DC 80112B6C 3C18800E */  lui   $t8, %hi(D_800E3050) # $t8, 0x800e
/* 09B5E0 80112B70 27183050 */  addiu $t8, %lo(D_800E3050) # addiu $t8, $t8, 0x3050
/* 09B5E4 80112B74 25EF3210 */  addiu $t7, %lo(D_800E3210) # addiu $t7, $t7, 0x3210
/* 09B5E8 80112B78 25CE33D0 */  addiu $t6, %lo(D_800E33D0) # addiu $t6, $t6, 0x33d0
/* 09B5EC 80112B7C 004E3821 */  addu  $a3, $v0, $t6
/* 09B5F0 80112B80 004F4021 */  addu  $t0, $v0, $t7
/* 09B5F4 80112B84 00584821 */  addu  $t1, $v0, $t8
/* 09B5F8 80112B88 2463001C */  addiu $v1, $v1, 0x1c
/* 09B5FC 80112B8C AFA3003C */  sw    $v1, 0x3c($sp)
/* 09B600 80112B90 AFA9001C */  sw    $t1, 0x1c($sp)
/* 09B604 80112B94 AFA80020 */  sw    $t0, 0x20($sp)
/* 09B608 80112B98 AFA70024 */  sw    $a3, 0x24($sp)
/* 09B60C 80112B9C AFA20028 */  sw    $v0, 0x28($sp)
/* 09B610 80112BA0 AFA40040 */  sw    $a0, 0x40($sp)
/* 09B614 80112BA4 E5200000 */  swc1  $f0, ($t1)
/* 09B618 80112BA8 E5000000 */  swc1  $f0, ($t0)
/* 09B61C 80112BAC 0C02D249 */  jal   D_800B4924_ovl2
/* 09B620 80112BB0 E4E00000 */   swc1  $f0, ($a3)
/* 09B624 80112BB4 8FA20028 */  lw    $v0, 0x28($sp)
/* 09B628 80112BB8 8FA3003C */  lw    $v1, 0x3c($sp)
/* 09B62C 80112BBC 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 09B630 80112BC0 00220821 */  addu  $at, $at, $v0
/* 09B634 80112BC4 C4262B10 */ lwc1 $f6, %lo(gEntitiesPosXArray)($at)
/* 09B638 80112BC8 C4640000 */  lwc1  $f4, ($v1)
/* 09B63C 80112BCC 8FA9001C */  lw    $t1, 0x1c($sp)
/* 09B640 80112BD0 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 09B644 80112BD4 46062201 */  sub.s $f8, $f4, $f6
/* 09B648 80112BD8 00220821 */  addu  $at, $at, $v0
/* 09B64C 80112BDC 8FA80020 */  lw    $t0, 0x20($sp)
/* 09B650 80112BE0 8FA70024 */  lw    $a3, 0x24($sp)
/* 09B654 80112BE4 E5280000 */  swc1  $f8, ($t1)
/* 09B658 80112BE8 C4302CD0 */ lwc1 $f16, %lo(gEntitiesPosYArray)($at)
/* 09B65C 80112BEC C46A0004 */  lwc1  $f10, 4($v1)
/* 09B660 80112BF0 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 09B664 80112BF4 00220821 */  addu  $at, $at, $v0
/* 09B668 80112BF8 46105481 */  sub.s $f18, $f10, $f16
/* 09B66C 80112BFC 8FA60040 */  lw    $a2, 0x40($sp)
/* 09B670 80112C00 E5120000 */  swc1  $f18, ($t0)
/* 09B674 80112C04 C4262E90 */ lwc1 $f6, %lo(gEntitiesPosZArray)($at)
/* 09B678 80112C08 C4640008 */  lwc1  $f4, 8($v1)
/* 09B67C 80112C0C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 09B680 80112C10 00220821 */  addu  $at, $at, $v0
/* 09B684 80112C14 46062201 */  sub.s $f8, $f4, $f6
/* 09B688 80112C18 E4E80000 */  swc1  $f8, ($a3)
/* 09B68C 80112C1C C46A0000 */  lwc1  $f10, ($v1)
/* 09B690 80112C20 E42A25D0 */ swc1 $f10, %lo(gEntitiesNextPosXArray)($at)
/* 09B694 80112C24 C4700004 */  lwc1  $f16, 4($v1)
/* 09B698 80112C28 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 09B69C 80112C2C 00220821 */  addu  $at, $at, $v0
/* 09B6A0 80112C30 E4302790 */ swc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 09B6A4 80112C34 C4720008 */  lwc1  $f18, 8($v1)
/* 09B6A8 80112C38 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 09B6AC 80112C3C 00220821 */  addu  $at, $at, $v0
/* 09B6B0 80112C40 E4322950 */ swc1 $f18, %lo(gEntitiesNextPosZArray)($at)
/* 09B6B4 80112C44 8CD9004C */  lw    $t9, 0x4c($a2)
/* 09B6B8 80112C48 932A0002 */  lbu   $t2, 2($t9)
/* 09B6BC 80112C4C 314B0002 */  andi  $t3, $t2, 2
/* 09B6C0 80112C50 5160001D */  beql  $t3, $zero, .L80112CC8_ovl2
/* 09B6C4 80112C54 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09B6C8 80112C58 8CC5003C */  lw    $a1, 0x3c($a2)
/* 09B6CC 80112C5C 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 09B6D0 80112C60 00220821 */  addu  $at, $at, $v0
/* 09B6D4 80112C64 24A30030 */  addiu $v1, $a1, 0x30
/* 09B6D8 80112C68 C4640000 */  lwc1  $f4, ($v1)
/* 09B6DC 80112C6C 24A40040 */  addiu $a0, $a1, 0x40
/* 09B6E0 80112C70 E4244010 */ swc1 $f4, %lo(gEntitiesAngleXArray)($at)
/* 09B6E4 80112C74 C4660004 */  lwc1  $f6, 4($v1)
/* 09B6E8 80112C78 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 09B6EC 80112C7C 00220821 */  addu  $at, $at, $v0
/* 09B6F0 80112C80 E42641D0 */ swc1 $f6, %lo(gEntitiesAngleYArray)($at)
/* 09B6F4 80112C84 C4680008 */  lwc1  $f8, 8($v1)
/* 09B6F8 80112C88 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 09B6FC 80112C8C 00220821 */  addu  $at, $at, $v0
/* 09B700 80112C90 E4284390 */ swc1 $f8, %lo(gEntitiesAngleZArray)($at)
/* 09B704 80112C94 C48A0000 */  lwc1  $f10, ($a0)
/* 09B708 80112C98 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 09B70C 80112C9C 00220821 */  addu  $at, $at, $v0
/* 09B710 80112CA0 E42A4550 */ swc1 $f10, %lo(gEntitiesScaleXArray)($at)
/* 09B714 80112CA4 C4900004 */  lwc1  $f16, 4($a0)
/* 09B718 80112CA8 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 09B71C 80112CAC 00220821 */  addu  $at, $at, $v0
/* 09B720 80112CB0 E4304710 */ swc1 $f16, %lo(gEntitiesScaleYArray)($at)
/* 09B724 80112CB4 C4920008 */  lwc1  $f18, 8($a0)
/* 09B728 80112CB8 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 09B72C 80112CBC 00220821 */  addu  $at, $at, $v0
/* 09B730 80112CC0 E43248D0 */ swc1 $f18, %lo(gEntitiesScaleZArray)($at)
/* 09B734 80112CC4 8FBF0014 */  lw    $ra, 0x14($sp)
.L80112CC8_ovl2:
/* 09B738 80112CC8 27BD0040 */  addiu $sp, $sp, 0x40
/* 09B73C 80112CCC 03E00008 */  jr    $ra
/* 09B740 80112CD0 00000000 */   nop   
.type func_80112B4C, @function
.size func_80112B4C, . - func_80112B4C
