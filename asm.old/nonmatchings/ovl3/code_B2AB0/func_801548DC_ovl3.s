glabel func_801548DC_ovl3
/* B531C 801548DC 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* B5320 801548E0 2529A7C4 */  addiu      $t1, $t1, %lo(D_8004A7C4)
/* B5324 801548E4 8D2E0000 */  lw         $t6, 0x0($t1)
.L801548E8_ovl6:
/* B5328 801548E8 27BDFFA8 */  addiu      $sp, $sp, -0x58
.L801548EC_ovl6:
/* B532C 801548EC AFBF001C */  sw         $ra, 0x1C($sp)
/* B5330 801548F0 AFB00018 */  sw         $s0, 0x18($sp)
/* B5334 801548F4 8DC20000 */  lw         $v0, 0x0($t6)
glabel func_801548F8
/* B5338 801548F8 3C05800E */  lui        $a1, %hi(D_800E0490)
/* B533C 801548FC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* B5340 80154900 00021080 */  sll        $v0, $v0, 2
/* B5344 80154904 00A22821 */  addu       $a1, $a1, $v0
/* B5348 80154908 8CA50490 */  lw         $a1, %lo(D_800E0490)($a1)
/* B534C 8015490C 00220821 */  addu       $at, $at, $v0
/* B5350 80154910 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* B5354 80154914 8CA30004 */  lw         $v1, 0x4($a1)
/* B5358 80154918 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* B535C 8015491C E4840004 */  swc1       $f4, 0x4($a0)
.L80154920_ovl6:
/* B5360 80154920 8D2F0000 */  lw         $t7, 0x0($t1)
/* B5364 80154924 00808025 */  or         $s0, $a0, $zero
/* B5368 80154928 8DF80000 */  lw         $t8, 0x0($t7)
/* B536C 8015492C 0018C880 */  sll        $t9, $t8, 2
/* B5370 80154930 00390821 */  addu       $at, $at, $t9
/* B5374 80154934 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
glabel func_80154938
/* B5378 80154938 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* B537C 8015493C E4860008 */  swc1       $f6, 0x8($a0)
/* B5380 80154940 8D2B0000 */  lw         $t3, 0x0($t1)
/* B5384 80154944 8D6C0000 */  lw         $t4, 0x0($t3)
/* B5388 80154948 000C6880 */  sll        $t5, $t4, 2
/* B538C 8015494C 002D0821 */  addu       $at, $at, $t5
/* B5390 80154950 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* B5394 80154954 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* B5398 80154958 E488000C */  swc1       $f8, 0xC($a0)
/* B539C 8015495C C46A0000 */  lwc1       $f10, 0x0($v1)
/* B53A0 80154960 E48A0010 */  swc1       $f10, 0x10($a0)
/* B53A4 80154964 C4720000 */  lwc1       $f18, 0x0($v1)
/* B53A8 80154968 C4700004 */  lwc1       $f16, 0x4($v1)
/* B53AC 8015496C 46128100 */  add.s      $f4, $f16, $f18
/* B53B0 80154970 44818000 */  mtc1       $at, $f16
/* B53B4 80154974 3C01800E */  lui        $at, %hi(D_800E6A10)
/* B53B8 80154978 E4840014 */  swc1       $f4, 0x14($a0)
/* B53BC 8015497C C4680000 */  lwc1       $f8, 0x0($v1)
/* B53C0 80154980 C4660008 */  lwc1       $f6, 0x8($v1)
/* B53C4 80154984 46083280 */  add.s      $f10, $f6, $f8
/* B53C8 80154988 E48A0018 */  swc1       $f10, 0x18($a0)
/* B53CC 8015498C 8D2E0000 */  lw         $t6, 0x0($t1)
/* B53D0 80154990 8DCF0000 */  lw         $t7, 0x0($t6)
/* B53D4 80154994 000FC080 */  sll        $t8, $t7, 2
/* B53D8 80154998 00380821 */  addu       $at, $at, $t8
/* B53DC 8015499C C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* B53E0 801549A0 46128032 */  c.eq.s     $f16, $f18
/* B53E4 801549A4 00000000 */  nop
/* B53E8 801549A8 45020007 */  bc1fl      .L801549C8_ovl3
/* B53EC 801549AC C4680010 */   lwc1      $f8, 0x10($v1)
/* B53F0 801549B0 C464000C */  lwc1       $f4, 0xC($v1)
/* B53F4 801549B4 E484001C */  swc1       $f4, 0x1C($a0)
/* B53F8 801549B8 C4660010 */  lwc1       $f6, 0x10($v1)
/* B53FC 801549BC 10000005 */  b          .L801549D4_ovl3
/* B5400 801549C0 E4860020 */   swc1      $f6, 0x20($a0)
/* B5404 801549C4 C4680010 */  lwc1       $f8, 0x10($v1)
.L801549C8_ovl3:
/* B5408 801549C8 E608001C */  swc1       $f8, 0x1C($s0)
.L801549CC_ovl4:
/* B540C 801549CC C46A000C */  lwc1       $f10, 0xC($v1)
.L801549D0_ovl6:
/* B5410 801549D0 E60A0020 */  swc1       $f10, 0x20($s0)
.L801549D4_ovl3:
/* B5414 801549D4 8D390000 */  lw         $t9, 0x0($t1)
.L801549D8_ovl6:
/* B5418 801549D8 3C01800E */  lui        $at, %hi(D_800E17D0)
/* B541C 801549DC 3C18800F */  lui        $t8, %hi(D_800E8920)
/* B5420 801549E0 8F2B0000 */  lw         $t3, 0x0($t9)
/* B5424 801549E4 02002025 */  or         $a0, $s0, $zero
/* B5428 801549E8 000B6080 */  sll        $t4, $t3, 2
/* B542C 801549EC 002C0821 */  addu       $at, $at, $t4
/* B5430 801549F0 C43017D0 */  lwc1       $f16, %lo(D_800E17D0)($at)
/* B5434 801549F4 E6100024 */  swc1       $f16, 0x24($s0)
/* B5438 801549F8 8D2D0000 */  lw         $t5, 0x0($t1)
/* B543C 801549FC 8DAE0000 */  lw         $t6, 0x0($t5)
/* B5440 80154A00 000E7880 */  sll        $t7, $t6, 2
/* B5444 80154A04 030FC021 */  addu       $t8, $t8, $t7
/* B5448 80154A08 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* B544C 80154A0C 17000007 */  bnez       $t8, .L80154A2C_ovl3
.L80154A10_ovl4:
/* B5450 80154A10 00000000 */   nop
/* B5454 80154A14 02002025 */  or         $a0, $s0, $zero
/* B5458 80154A18 0C042791 */  jal        func_80109E44
/* B545C 80154A1C AFA30030 */   sw        $v1, 0x30($sp)
/* B5460 80154A20 8FA30030 */  lw         $v1, 0x30($sp)
.L80154A24_ovl4:
/* B5464 80154A24 10000005 */  b          .L80154A3C_ovl3
/* B5468 80154A28 00403025 */   or        $a2, $v0, $zero
.L80154A2C_ovl3:
/* B546C 80154A2C 0C042C47 */  jal        func_8010B11C
/* B5470 80154A30 AFA30030 */   sw        $v1, 0x30($sp)
/* B5474 80154A34 8FA30030 */  lw         $v1, 0x30($sp)
/* B5478 80154A38 00403025 */  or         $a2, $v0, $zero
.L80154A3C_ovl3:
/* B547C 80154A3C 3C058013 */  lui        $a1, %hi(D_8012BCA0)
glabel func_80154A40
/* B5480 80154A40 24A5BCA0 */  addiu      $a1, $a1, %lo(D_8012BCA0)
/* B5484 80154A44 02002025 */  or         $a0, $s0, $zero
/* B5488 80154A48 AFA30030 */  sw         $v1, 0x30($sp)
/* B548C 80154A4C 0C04148E */  jal        func_80105238
/* B5490 80154A50 AFA60054 */   sw        $a2, 0x54($sp)
/* B5494 80154A54 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* B5498 80154A58 2529A7C4 */  addiu      $t1, $t1, %lo(D_8004A7C4)
/* B549C 80154A5C 8D270000 */  lw         $a3, 0x0($t1)
/* B54A0 80154A60 8FA60054 */  lw         $a2, 0x54($sp)
/* B54A4 80154A64 3C01800F */  lui        $at, %hi(D_800E8920)
/* B54A8 80154A68 8CF90000 */  lw         $t9, 0x0($a3)
/* B54AC 80154A6C 44806000 */  mtc1       $zero, $f12
/* B54B0 80154A70 8FA30030 */  lw         $v1, 0x30($sp)
.L80154A74_ovl6:
/* B54B4 80154A74 00195880 */  sll        $t3, $t9, 2
/* B54B8 80154A78 002B0821 */  addu       $at, $at, $t3
/* B54BC 80154A7C AC268920 */  sw         $a2, %lo(D_800E8920)($at)
/* B54C0 80154A80 8CE40000 */  lw         $a0, 0x0($a3)
/* B54C4 80154A84 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* B54C8 80154A88 C6120004 */  lwc1       $f18, 0x4($s0)
/* B54CC 80154A8C 00041080 */  sll        $v0, $a0, 2
.L80154A90_ovl6:
/* B54D0 80154A90 00220821 */  addu       $at, $at, $v0
/* B54D4 80154A94 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* B54D8 80154A98 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
.L80154A9C_ovl4:
/* B54DC 80154A9C 00220821 */  addu       $at, $at, $v0
/* B54E0 80154AA0 46049001 */  sub.s      $f0, $f18, $f4
/* B54E4 80154AA4 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
.L80154AA8_ovl6:
/* B54E8 80154AA8 C606000C */  lwc1       $f6, 0xC($s0)
/* B54EC 80154AAC 460C0032 */  c.eq.s     $f0, $f12
/* B54F0 80154AB0 46083081 */  sub.s      $f2, $f6, $f8
/* B54F4 80154AB4 45020006 */  bc1fl      .L80154AD0_ovl6
/* B54F8 80154AB8 44050000 */   mfc1      $a1, $f0
/* B54FC 80154ABC 460C1032 */  c.eq.s     $f2, $f12
/* B5500 80154AC0 00000000 */  nop
/* B5504 80154AC4 45030018 */  bc1tl      .L80154B28_ovl3
/* B5508 80154AC8 C6120008 */   lwc1      $f18, 0x8($s0)
/* B550C 80154ACC 44050000 */  mfc1       $a1, $f0
.L80154AD0_ovl6:
/* B5510 80154AD0 44061000 */  mfc1       $a2, $f2
.L80154AD4_ovl4:
/* B5514 80154AD4 0C03E1CA */  jal        func_800F8728
/* B5518 80154AD8 AFA30030 */   sw        $v1, 0x30($sp)
.L80154ADC_ovl6:
/* B551C 80154ADC 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* B5520 80154AE0 2529A7C4 */  addiu      $t1, $t1, %lo(D_8004A7C4)
.L80154AE4_ovl6:
/* B5524 80154AE4 8D270000 */  lw         $a3, 0x0($t1)
.L80154AE8_ovl6:
/* B5528 80154AE8 C60A0004 */  lwc1       $f10, 0x4($s0)
/* B552C 80154AEC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* B5530 80154AF0 8CEC0000 */  lw         $t4, 0x0($a3)
/* B5534 80154AF4 8FA30030 */  lw         $v1, 0x30($sp)
/* B5538 80154AF8 000C6880 */  sll        $t5, $t4, 2
/* B553C 80154AFC 002D0821 */  addu       $at, $at, $t5
/* B5540 80154B00 E42A25D0 */  swc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* B5544 80154B04 8CEE0000 */  lw         $t6, 0x0($a3)
/* B5548 80154B08 C610000C */  lwc1       $f16, 0xC($s0)
.L80154B0C_ovl6:
/* B554C 80154B0C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* B5550 80154B10 000E7880 */  sll        $t7, $t6, 2
glabel func_80154B14
/* B5554 80154B14 002F0821 */  addu       $at, $at, $t7
/* B5558 80154B18 E4302950 */  swc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* B555C 80154B1C 8CE20000 */  lw         $v0, 0x0($a3)
/* B5560 80154B20 00021080 */  sll        $v0, $v0, 2
/* B5564 80154B24 C6120008 */  lwc1       $f18, 0x8($s0)
.L80154B28_ovl3:
/* B5568 80154B28 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* B556C 80154B2C 00220821 */  addu       $at, $at, $v0
/* B5570 80154B30 E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* B5574 80154B34 8CF80000 */  lw         $t8, 0x0($a3)
/* B5578 80154B38 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* B557C 80154B3C 27A40048 */  addiu      $a0, $sp, 0x48
/* B5580 80154B40 0018C880 */  sll        $t9, $t8, 2
/* B5584 80154B44 00390821 */  addu       $at, $at, $t9
/* B5588 80154B48 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* B558C 80154B4C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* B5590 80154B50 E7A40048 */  swc1       $f4, 0x48($sp)
/* B5594 80154B54 8CEB0000 */  lw         $t3, 0x0($a3)
/* B5598 80154B58 C4680000 */  lwc1       $f8, 0x0($v1)
/* B559C 80154B5C 000B6080 */  sll        $t4, $t3, 2
/* B55A0 80154B60 002C0821 */  addu       $at, $at, $t4
/* B55A4 80154B64 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* B55A8 80154B68 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* B55AC 80154B6C 46083280 */  add.s      $f10, $f6, $f8
/* B55B0 80154B70 E7AA004C */  swc1       $f10, 0x4C($sp)
/* B55B4 80154B74 8CED0000 */  lw         $t5, 0x0($a3)
/* B55B8 80154B78 000D7080 */  sll        $t6, $t5, 2
/* B55BC 80154B7C 002E0821 */  addu       $at, $at, $t6
/* B55C0 80154B80 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* B55C4 80154B84 0C0437E7 */  jal        func_8010DF9C
/* B55C8 80154B88 E7B00050 */   swc1      $f16, 0x50($sp)
.L80154B8C_ovl4:
/* B55CC 80154B8C 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* B55D0 80154B90 2529A7C4 */  addiu      $t1, $t1, %lo(D_8004A7C4)
/* B55D4 80154B94 8D270000 */  lw         $a3, 0x0($t1)
/* B55D8 80154B98 3C08800F */  lui        $t0, %hi(D_800E8AE0)
/* B55DC 80154B9C 25088AE0 */  addiu      $t0, $t0, %lo(D_800E8AE0)
glabel func_80154BA0
/* B55E0 80154BA0 8CEF0000 */  lw         $t7, 0x0($a3)
/* B55E4 80154BA4 00405025 */  or         $t2, $v0, $zero
/* B55E8 80154BA8 000FC080 */  sll        $t8, $t7, 2
/* B55EC 80154BAC 01181821 */  addu       $v1, $t0, $t8
/* B55F0 80154BB0 8C790000 */  lw         $t9, 0x0($v1)
/* B55F4 80154BB4 00195842 */  srl        $t3, $t9, 1
.L80154BB8_ovl4:
/* B55F8 80154BB8 1040004B */  beqz       $v0, .L80154CE8_ovl3
.L80154BBC_ovl4:
/* B55FC 80154BBC AC6B0000 */   sw        $t3, 0x0($v1)
/* B5600 80154BC0 18400049 */  blez       $v0, .L80154CE8_ovl3
/* B5604 80154BC4 00002825 */   or        $a1, $zero, $zero
/* B5608 80154BC8 30430003 */  andi       $v1, $v0, 0x3
/* B560C 80154BCC 10600014 */  beqz       $v1, .L80154C20_ovl3
/* B5610 80154BD0 00604825 */   or        $t1, $v1, $zero
/* B5614 80154BD4 3C0D8013 */  lui        $t5, %hi(D_8012BCA0)
/* B5618 80154BD8 25ADBCA0 */  addiu      $t5, $t5, %lo(D_8012BCA0)
/* B561C 80154BDC 00006080 */  sll        $t4, $zero, 2
/* B5620 80154BE0 018D2021 */  addu       $a0, $t4, $t5
/* B5624 80154BE4 24060001 */  addiu      $a2, $zero, 0x1
.L80154BE8_ovl3:
/* B5628 80154BE8 8C8E0040 */  lw         $t6, 0x40($a0)
.L80154BEC_ovl4:
/* B562C 80154BEC 24A50001 */  addiu      $a1, $a1, 0x1
/* B5630 80154BF0 91CF0004 */  lbu        $t7, 0x4($t6)
/* B5634 80154BF4 14CF0007 */  bne        $a2, $t7, .L80154C14_ovl3
/* B5638 80154BF8 00000000 */   nop
.L80154BFC_ovl6:
/* B563C 80154BFC 8CF80000 */  lw         $t8, 0x0($a3)
/* B5640 80154C00 0018C880 */  sll        $t9, $t8, 2
/* B5644 80154C04 01191821 */  addu       $v1, $t0, $t9
glabel func_80154C08
/* B5648 80154C08 8C6B0000 */  lw         $t3, 0x0($v1)
/* B564C 80154C0C 356C0004 */  ori        $t4, $t3, 0x4
/* B5650 80154C10 AC6C0000 */  sw         $t4, 0x0($v1)
.L80154C14_ovl3:
/* B5654 80154C14 1525FFF4 */  bne        $t1, $a1, .L80154BE8_ovl3
/* B5658 80154C18 24840004 */   addiu     $a0, $a0, 0x4
.L80154C1C_ovl4:
/* B565C 80154C1C 10A20032 */  beq        $a1, $v0, .L80154CE8_ovl3
.L80154C20_ovl3:
/* B5660 80154C20 3C0E8013 */   lui       $t6, %hi(D_8012BCA0)
/* B5664 80154C24 25CEBCA0 */  addiu      $t6, $t6, %lo(D_8012BCA0)
/* B5668 80154C28 00056880 */  sll        $t5, $a1, 2
/* B566C 80154C2C 000A7880 */  sll        $t7, $t2, 2
/* B5670 80154C30 01EE1021 */  addu       $v0, $t7, $t6
/* B5674 80154C34 01AE2021 */  addu       $a0, $t5, $t6
glabel func_80154C38
/* B5678 80154C38 24060001 */  addiu      $a2, $zero, 0x1
/* B567C 80154C3C 8C980040 */  lw         $t8, 0x40($a0)
.L80154C40_ovl3:
/* B5680 80154C40 93190004 */  lbu        $t9, 0x4($t8)
/* B5684 80154C44 54D90008 */  bnel       $a2, $t9, .L80154C68_ovl3
/* B5688 80154C48 8C8E0044 */   lw        $t6, 0x44($a0)
/* B568C 80154C4C 8CEB0000 */  lw         $t3, 0x0($a3)
/* B5690 80154C50 000B6080 */  sll        $t4, $t3, 2
/* B5694 80154C54 010C1821 */  addu       $v1, $t0, $t4
/* B5698 80154C58 8C6D0000 */  lw         $t5, 0x0($v1)
/* B569C 80154C5C 35AF0004 */  ori        $t7, $t5, 0x4
/* B56A0 80154C60 AC6F0000 */  sw         $t7, 0x0($v1)
glabel func_80154C64
/* B56A4 80154C64 8C8E0044 */  lw         $t6, 0x44($a0)
.L80154C68_ovl3:
/* B56A8 80154C68 91D80004 */  lbu        $t8, 0x4($t6)
/* B56AC 80154C6C 54D80008 */  bnel       $a2, $t8, .L80154C90_ovl3
/* B56B0 80154C70 8C8F0048 */   lw        $t7, 0x48($a0)
/* B56B4 80154C74 8CF90000 */  lw         $t9, 0x0($a3)
/* B56B8 80154C78 00195880 */  sll        $t3, $t9, 2
/* B56BC 80154C7C 010B1821 */  addu       $v1, $t0, $t3
/* B56C0 80154C80 8C6C0000 */  lw         $t4, 0x0($v1)
/* B56C4 80154C84 358D0004 */  ori        $t5, $t4, 0x4
/* B56C8 80154C88 AC6D0000 */  sw         $t5, 0x0($v1)
/* B56CC 80154C8C 8C8F0048 */  lw         $t7, 0x48($a0)
.L80154C90_ovl3:
/* B56D0 80154C90 91EE0004 */  lbu        $t6, 0x4($t7)
/* B56D4 80154C94 54CE0008 */  bnel       $a2, $t6, .L80154CB8_ovl3
.L80154C98_ovl4:
/* B56D8 80154C98 8C8D004C */   lw        $t5, 0x4C($a0)
/* B56DC 80154C9C 8CF80000 */  lw         $t8, 0x0($a3)
/* B56E0 80154CA0 0018C880 */  sll        $t9, $t8, 2
/* B56E4 80154CA4 01191821 */  addu       $v1, $t0, $t9
/* B56E8 80154CA8 8C6B0000 */  lw         $t3, 0x0($v1)
/* B56EC 80154CAC 356C0004 */  ori        $t4, $t3, 0x4
/* B56F0 80154CB0 AC6C0000 */  sw         $t4, 0x0($v1)
/* B56F4 80154CB4 8C8D004C */  lw         $t5, 0x4C($a0)
.L80154CB8_ovl3:
/* B56F8 80154CB8 24840010 */  addiu      $a0, $a0, 0x10
/* B56FC 80154CBC 91AF0004 */  lbu        $t7, 0x4($t5)
/* B5700 80154CC0 14CF0007 */  bne        $a2, $t7, .L80154CE0_ovl3
/* B5704 80154CC4 00000000 */   nop
/* B5708 80154CC8 8CEE0000 */  lw         $t6, 0x0($a3)
/* B570C 80154CCC 000EC080 */  sll        $t8, $t6, 2
/* B5710 80154CD0 01181821 */  addu       $v1, $t0, $t8
/* B5714 80154CD4 8C790000 */  lw         $t9, 0x0($v1)
/* B5718 80154CD8 372B0004 */  ori        $t3, $t9, 0x4
/* B571C 80154CDC AC6B0000 */  sw         $t3, 0x0($v1)
.L80154CE0_ovl3:
/* B5720 80154CE0 5482FFD7 */  bnel       $a0, $v0, .L80154C40_ovl3
/* B5724 80154CE4 8C980040 */   lw        $t8, 0x40($a0)
.L80154CE8_ovl3:
/* B5728 80154CE8 8FBF001C */  lw         $ra, 0x1C($sp)
/* B572C 80154CEC 8FB00018 */  lw         $s0, 0x18($sp)
/* B5730 80154CF0 27BD0058 */  addiu      $sp, $sp, 0x58
/* B5734 80154CF4 03E00008 */  jr         $ra
/* B5738 80154CF8 00000000 */   nop
