nonmatching func_80112B4C, 0x188

glabel func_80112B4C
    /* 9B5BC 80112B4C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 9B5C0 80112B50 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9B5C4 80112B54 8C83003C */  lw         $v1, 0x3C($a0)
    /* 9B5C8 80112B58 8C850000 */  lw         $a1, 0x0($a0)
    /* 9B5CC 80112B5C 44800000 */  mtc1       $zero, $f0
    /* 9B5D0 80112B60 3C0E800E */  lui        $t6, %hi(D_800E33D0)
    /* 9B5D4 80112B64 00051080 */  sll        $v0, $a1, 2
    /* 9B5D8 80112B68 3C0F800E */  lui        $t7, %hi(D_800E3210)
    /* 9B5DC 80112B6C 3C18800E */  lui        $t8, %hi(D_800E3050)
    /* 9B5E0 80112B70 27183050 */  addiu      $t8, $t8, %lo(D_800E3050)
    /* 9B5E4 80112B74 25EF3210 */  addiu      $t7, $t7, %lo(D_800E3210)
    /* 9B5E8 80112B78 25CE33D0 */  addiu      $t6, $t6, %lo(D_800E33D0)
    /* 9B5EC 80112B7C 004E3821 */  addu       $a3, $v0, $t6
    /* 9B5F0 80112B80 004F4021 */  addu       $t0, $v0, $t7
    /* 9B5F4 80112B84 00584821 */  addu       $t1, $v0, $t8
    /* 9B5F8 80112B88 2463001C */  addiu      $v1, $v1, 0x1C
    /* 9B5FC 80112B8C AFA3003C */  sw         $v1, 0x3C($sp)
    /* 9B600 80112B90 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 9B604 80112B94 AFA80020 */  sw         $t0, 0x20($sp)
    /* 9B608 80112B98 AFA70024 */  sw         $a3, 0x24($sp)
    /* 9B60C 80112B9C AFA20028 */  sw         $v0, 0x28($sp)
    /* 9B610 80112BA0 AFA40040 */  sw         $a0, 0x40($sp)
    /* 9B614 80112BA4 E5200000 */  swc1       $f0, 0x0($t1)
    /* 9B618 80112BA8 E5000000 */  swc1       $f0, 0x0($t0)
    /* 9B61C 80112BAC 0C02D249 */  jal        func_800B4924
    /* 9B620 80112BB0 E4E00000 */   swc1      $f0, 0x0($a3)
    /* 9B624 80112BB4 8FA20028 */  lw         $v0, 0x28($sp)
    /* 9B628 80112BB8 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 9B62C 80112BBC 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* 9B630 80112BC0 00220821 */  addu       $at, $at, $v0
    /* 9B634 80112BC4 C4262B10 */  lwc1       $f6, %lo(gEntitiesPosXArray)($at)
    /* 9B638 80112BC8 C4640000 */  lwc1       $f4, 0x0($v1)
    /* 9B63C 80112BCC 8FA9001C */  lw         $t1, 0x1C($sp)
    /* 9B640 80112BD0 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 9B644 80112BD4 46062201 */  sub.s      $f8, $f4, $f6
    /* 9B648 80112BD8 00220821 */  addu       $at, $at, $v0
    /* 9B64C 80112BDC 8FA80020 */  lw         $t0, 0x20($sp)
    /* 9B650 80112BE0 8FA70024 */  lw         $a3, 0x24($sp)
    /* 9B654 80112BE4 E5280000 */  swc1       $f8, 0x0($t1)
    /* 9B658 80112BE8 C4302CD0 */  lwc1       $f16, %lo(gEntitiesPosYArray)($at)
    /* 9B65C 80112BEC C46A0004 */  lwc1       $f10, 0x4($v1)
    /* 9B660 80112BF0 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* 9B664 80112BF4 00220821 */  addu       $at, $at, $v0
    /* 9B668 80112BF8 46105481 */  sub.s      $f18, $f10, $f16
    /* 9B66C 80112BFC 8FA60040 */  lw         $a2, 0x40($sp)
    /* 9B670 80112C00 E5120000 */  swc1       $f18, 0x0($t0)
    /* 9B674 80112C04 C4262E90 */  lwc1       $f6, %lo(gEntitiesPosZArray)($at)
    /* 9B678 80112C08 C4640008 */  lwc1       $f4, 0x8($v1)
    /* 9B67C 80112C0C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 9B680 80112C10 00220821 */  addu       $at, $at, $v0
    /* 9B684 80112C14 46062201 */  sub.s      $f8, $f4, $f6
    /* 9B688 80112C18 E4E80000 */  swc1       $f8, 0x0($a3)
    /* 9B68C 80112C1C C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 9B690 80112C20 E42A25D0 */  swc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* 9B694 80112C24 C4700004 */  lwc1       $f16, 0x4($v1)
    /* 9B698 80112C28 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 9B69C 80112C2C 00220821 */  addu       $at, $at, $v0
    /* 9B6A0 80112C30 E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 9B6A4 80112C34 C4720008 */  lwc1       $f18, 0x8($v1)
    /* 9B6A8 80112C38 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 9B6AC 80112C3C 00220821 */  addu       $at, $at, $v0
    /* 9B6B0 80112C40 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* 9B6B4 80112C44 8CD9004C */  lw         $t9, 0x4C($a2)
    /* 9B6B8 80112C48 932A0002 */  lbu        $t2, 0x2($t9)
    /* 9B6BC 80112C4C 314B0002 */  andi       $t3, $t2, 0x2
    /* 9B6C0 80112C50 5160001D */  beql       $t3, $zero, .L80112CC8
    /* 9B6C4 80112C54 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 9B6C8 80112C58 8CC5003C */  lw         $a1, 0x3C($a2)
    /* 9B6CC 80112C5C 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 9B6D0 80112C60 00220821 */  addu       $at, $at, $v0
    /* 9B6D4 80112C64 24A30030 */  addiu      $v1, $a1, 0x30
    /* 9B6D8 80112C68 C4640000 */  lwc1       $f4, 0x0($v1)
    /* 9B6DC 80112C6C 24A40040 */  addiu      $a0, $a1, 0x40
    /* 9B6E0 80112C70 E4244010 */  swc1       $f4, %lo(gEntitiesAngleXArray)($at)
    /* 9B6E4 80112C74 C4660004 */  lwc1       $f6, 0x4($v1)
    /* 9B6E8 80112C78 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 9B6EC 80112C7C 00220821 */  addu       $at, $at, $v0
    /* 9B6F0 80112C80 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
    /* 9B6F4 80112C84 C4680008 */  lwc1       $f8, 0x8($v1)
    /* 9B6F8 80112C88 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 9B6FC 80112C8C 00220821 */  addu       $at, $at, $v0
    /* 9B700 80112C90 E4284390 */  swc1       $f8, %lo(gEntitiesAngleZArray)($at)
    /* 9B704 80112C94 C48A0000 */  lwc1       $f10, 0x0($a0)
    /* 9B708 80112C98 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* 9B70C 80112C9C 00220821 */  addu       $at, $at, $v0
    /* 9B710 80112CA0 E42A4550 */  swc1       $f10, %lo(gEntitiesScaleXArray)($at)
    /* 9B714 80112CA4 C4900004 */  lwc1       $f16, 0x4($a0)
    /* 9B718 80112CA8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* 9B71C 80112CAC 00220821 */  addu       $at, $at, $v0
    /* 9B720 80112CB0 E4304710 */  swc1       $f16, %lo(gEntitiesScaleYArray)($at)
    /* 9B724 80112CB4 C4920008 */  lwc1       $f18, 0x8($a0)
    /* 9B728 80112CB8 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* 9B72C 80112CBC 00220821 */  addu       $at, $at, $v0
    /* 9B730 80112CC0 E43248D0 */  swc1       $f18, %lo(gEntitiesScaleZArray)($at)
    /* 9B734 80112CC4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80112CC8:
    /* 9B738 80112CC8 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 9B73C 80112CCC 03E00008 */  jr         $ra
    /* 9B740 80112CD0 00000000 */   nop
endlabel func_80112B4C
.size func_80112B4C, . - func_80112B4C
