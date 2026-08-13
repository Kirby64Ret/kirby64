nonmatching func_801A33B8, 0x260

glabel func_801A33B8
    /* 149428 801A33B8 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 14942C 801A33BC 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 149430 801A33C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 149434 801A33C4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 149438 801A33C8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 14943C 801A33CC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 149440 801A33D0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 149444 801A33D4 44810000 */  mtc1       $at, $f0
    /* 149448 801A33D8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 14944C 801A33DC 000E7880 */  sll        $t7, $t6, 2
    /* 149450 801A33E0 002F0821 */  addu       $at, $at, $t7
    /* 149454 801A33E4 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 149458 801A33E8 3C10801D */  lui        $s0, %hi(D_801CE6D0_ovl7)
    /* 14945C 801A33EC 2610E6D0 */  addiu      $s0, $s0, %lo(D_801CE6D0_ovl7)
    /* 149460 801A33F0 E6040004 */  swc1       $f4, 0x4($s0)
    /* 149464 801A33F4 8C780000 */  lw         $t8, 0x0($v1)
    /* 149468 801A33F8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 14946C 801A33FC 3C0A801D */  lui        $t2, %hi(D_801CE6E0_ovl7)
    /* 149470 801A3400 0018C880 */  sll        $t9, $t8, 2
    /* 149474 801A3404 00390821 */  addu       $at, $at, $t9
    /* 149478 801A3408 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 14947C 801A340C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 149480 801A3410 254AE6E0 */  addiu      $t2, $t2, %lo(D_801CE6E0_ovl7)
    /* 149484 801A3414 E6060008 */  swc1       $f6, 0x8($s0)
    /* 149488 801A3418 8C680000 */  lw         $t0, 0x0($v1)
    /* 14948C 801A341C 3C02800E */  lui        $v0, %hi(D_800E6A10)
    /* 149490 801A3420 24426A10 */  addiu      $v0, $v0, %lo(D_800E6A10)
    /* 149494 801A3424 00084880 */  sll        $t1, $t0, 2
    /* 149498 801A3428 00290821 */  addu       $at, $at, $t1
    /* 14949C 801A342C C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 1494A0 801A3430 E608000C */  swc1       $f8, 0xC($s0)
    /* 1494A4 801A3434 8C8C0000 */  lw         $t4, 0x0($a0)
    /* 1494A8 801A3438 AD4C0000 */  sw         $t4, 0x0($t2)
    /* 1494AC 801A343C 8C8B0004 */  lw         $t3, 0x4($a0)
    /* 1494B0 801A3440 AD4B0004 */  sw         $t3, 0x4($t2)
    /* 1494B4 801A3444 8C8C0008 */  lw         $t4, 0x8($a0)
    /* 1494B8 801A3448 AD4C0008 */  sw         $t4, 0x8($t2)
    /* 1494BC 801A344C 8C8B000C */  lw         $t3, 0xC($a0)
    /* 1494C0 801A3450 AD4B000C */  sw         $t3, 0xC($t2)
    /* 1494C4 801A3454 8C8C0010 */  lw         $t4, 0x10($a0)
    /* 1494C8 801A3458 AD4C0010 */  sw         $t4, 0x10($t2)
    /* 1494CC 801A345C 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 1494D0 801A3460 000D7080 */  sll        $t6, $t5, 2
    /* 1494D4 801A3464 004E7821 */  addu       $t7, $v0, $t6
    /* 1494D8 801A3468 C5EA0000 */  lwc1       $f10, 0x0($t7)
    /* 1494DC 801A346C 460A0032 */  c.eq.s     $f0, $f10
    /* 1494E0 801A3470 00000000 */  nop
    /* 1494E4 801A3474 45020005 */  bc1fl      .L801A348C_ovl7
    /* 1494E8 801A3478 C4920010 */   lwc1      $f18, 0x10($a0)
    /* 1494EC 801A347C C490000C */  lwc1       $f16, 0xC($a0)
    /* 1494F0 801A3480 10000003 */  b          .L801A3490_ovl7
    /* 1494F4 801A3484 E610001C */   swc1      $f16, 0x1C($s0)
    /* 1494F8 801A3488 C4920010 */  lwc1       $f18, 0x10($a0)
  .L801A348C_ovl7:
    /* 1494FC 801A348C E612001C */  swc1       $f18, 0x1C($s0)
  .L801A3490_ovl7:
    /* 149500 801A3490 8C780000 */  lw         $t8, 0x0($v1)
    /* 149504 801A3494 0018C880 */  sll        $t9, $t8, 2
    /* 149508 801A3498 00594021 */  addu       $t0, $v0, $t9
    /* 14950C 801A349C C5040000 */  lwc1       $f4, 0x0($t0)
    /* 149510 801A34A0 46040032 */  c.eq.s     $f0, $f4
    /* 149514 801A34A4 00000000 */  nop
    /* 149518 801A34A8 45020005 */  bc1fl      .L801A34C0_ovl7
    /* 14951C 801A34AC C488000C */   lwc1      $f8, 0xC($a0)
    /* 149520 801A34B0 C4860010 */  lwc1       $f6, 0x10($a0)
    /* 149524 801A34B4 10000003 */  b          .L801A34C4_ovl7
    /* 149528 801A34B8 E6060020 */   swc1      $f6, 0x20($s0)
    /* 14952C 801A34BC C488000C */  lwc1       $f8, 0xC($a0)
  .L801A34C0_ovl7:
    /* 149530 801A34C0 E6080020 */  swc1       $f8, 0x20($s0)
  .L801A34C4_ovl7:
    /* 149534 801A34C4 8C690000 */  lw         $t1, 0x0($v1)
    /* 149538 801A34C8 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* 14953C 801A34CC 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* 149540 801A34D0 00095080 */  sll        $t2, $t1, 2
    /* 149544 801A34D4 002A0821 */  addu       $at, $at, $t2
    /* 149548 801A34D8 C42A17D0 */  lwc1       $f10, %lo(D_800E17D0)($at)
    /* 14954C 801A34DC E60A0024 */  swc1       $f10, 0x24($s0)
    /* 149550 801A34E0 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 149554 801A34E4 000B6080 */  sll        $t4, $t3, 2
    /* 149558 801A34E8 01AC6821 */  addu       $t5, $t5, $t4
    /* 14955C 801A34EC 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* 149560 801A34F0 15A0000B */  bnez       $t5, .L801A3520_ovl7
    /* 149564 801A34F4 00000000 */   nop
    /* 149568 801A34F8 0C0427D8 */  jal        func_80109F60
    /* 14956C 801A34FC 02002025 */   or        $a0, $s0, $zero
    /* 149570 801A3500 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 149574 801A3504 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 149578 801A3508 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 14957C 801A350C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 149580 801A3510 000E7880 */  sll        $t7, $t6, 2
    /* 149584 801A3514 002F0821 */  addu       $at, $at, $t7
    /* 149588 801A3518 1000000A */  b          .L801A3544_ovl7
    /* 14958C 801A351C AC228920 */   sw        $v0, %lo(D_800E8920)($at)
  .L801A3520_ovl7:
    /* 149590 801A3520 0C042C8E */  jal        func_8010B238
    /* 149594 801A3524 02002025 */   or        $a0, $s0, $zero
    /* 149598 801A3528 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 14959C 801A352C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1495A0 801A3530 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 1495A4 801A3534 8C780000 */  lw         $t8, 0x0($v1)
    /* 1495A8 801A3538 0018C880 */  sll        $t9, $t8, 2
    /* 1495AC 801A353C 00390821 */  addu       $at, $at, $t9
    /* 1495B0 801A3540 AC228920 */  sw         $v0, %lo(D_800E8920)($at)
  .L801A3544_ovl7:
    /* 1495B4 801A3544 8C640000 */  lw         $a0, 0x0($v1)
    /* 1495B8 801A3548 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1495BC 801A354C C6100004 */  lwc1       $f16, 0x4($s0)
    /* 1495C0 801A3550 00041080 */  sll        $v0, $a0, 2
    /* 1495C4 801A3554 00220821 */  addu       $at, $at, $v0
    /* 1495C8 801A3558 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* 1495CC 801A355C 44806000 */  mtc1       $zero, $f12
    /* 1495D0 801A3560 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1495D4 801A3564 46128001 */  sub.s      $f0, $f16, $f18
    /* 1495D8 801A3568 00220821 */  addu       $at, $at, $v0
    /* 1495DC 801A356C C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* 1495E0 801A3570 C604000C */  lwc1       $f4, 0xC($s0)
    /* 1495E4 801A3574 460C0032 */  c.eq.s     $f0, $f12
    /* 1495E8 801A3578 46062081 */  sub.s      $f2, $f4, $f6
    /* 1495EC 801A357C 45020006 */  bc1fl      .L801A3598_ovl7
    /* 1495F0 801A3580 44050000 */   mfc1      $a1, $f0
    /* 1495F4 801A3584 460C1032 */  c.eq.s     $f2, $f12
    /* 1495F8 801A3588 00000000 */  nop
    /* 1495FC 801A358C 45030016 */  bc1tl      .L801A35E8_ovl7
    /* 149600 801A3590 C6100008 */   lwc1      $f16, 0x8($s0)
    /* 149604 801A3594 44050000 */  mfc1       $a1, $f0
  .L801A3598_ovl7:
    /* 149608 801A3598 44061000 */  mfc1       $a2, $f2
    /* 14960C 801A359C 0C03E1CA */  jal        func_800F8728
    /* 149610 801A35A0 00000000 */   nop
    /* 149614 801A35A4 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 149618 801A35A8 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 14961C 801A35AC C6080004 */  lwc1       $f8, 0x4($s0)
    /* 149620 801A35B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 149624 801A35B4 8C680000 */  lw         $t0, 0x0($v1)
    /* 149628 801A35B8 00084880 */  sll        $t1, $t0, 2
    /* 14962C 801A35BC 00290821 */  addu       $at, $at, $t1
    /* 149630 801A35C0 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
    /* 149634 801A35C4 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 149638 801A35C8 C60A000C */  lwc1       $f10, 0xC($s0)
    /* 14963C 801A35CC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 149640 801A35D0 000A5880 */  sll        $t3, $t2, 2
    /* 149644 801A35D4 002B0821 */  addu       $at, $at, $t3
    /* 149648 801A35D8 E42A2950 */  swc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 14964C 801A35DC 8C620000 */  lw         $v0, 0x0($v1)
    /* 149650 801A35E0 00021080 */  sll        $v0, $v0, 2
    /* 149654 801A35E4 C6100008 */  lwc1       $f16, 0x8($s0)
  .L801A35E8_ovl7:
    /* 149658 801A35E8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 14965C 801A35EC 00220821 */  addu       $at, $at, $v0
    /* 149660 801A35F0 3C058013 */  lui        $a1, %hi(D_8012BCA0)
    /* 149664 801A35F4 24A5BCA0 */  addiu      $a1, $a1, %lo(D_8012BCA0)
    /* 149668 801A35F8 02002025 */  or         $a0, $s0, $zero
    /* 14966C 801A35FC 0C04148E */  jal        func_80105238
    /* 149670 801A3600 E4302790 */   swc1      $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 149674 801A3604 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 149678 801A3608 8FB00018 */  lw         $s0, 0x18($sp)
    /* 14967C 801A360C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 149680 801A3610 03E00008 */  jr         $ra
    /* 149684 801A3614 00000000 */   nop
endlabel func_801A33B8
.size func_801A33B8, . - func_801A33B8
