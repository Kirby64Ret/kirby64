nonmatching func_801529C0_ovl3, 0x6FC

glabel func_801529C0_ovl3
    /* B3400 801529C0 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* B3404 801529C4 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* B3408 801529C8 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* B340C 801529CC AFBF0024 */  sw         $ra, 0x24($sp)
    /* B3410 801529D0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* B3414 801529D4 3C02800E */  lui        $v0, %hi(D_800E0490)
    /* B3418 801529D8 3C058013 */  lui        $a1, %hi(gPositionState)
    /* B341C 801529DC 000FC080 */  sll        $t8, $t7, 2
    /* B3420 801529E0 00581021 */  addu       $v0, $v0, $t8
    /* B3424 801529E4 8C420490 */  lw         $v0, %lo(D_800E0490)($v0)
    /* B3428 801529E8 24A5E968 */  addiu      $a1, $a1, %lo(gPositionState)
    /* B342C 801529EC 8C440004 */  lw         $a0, 0x4($v0)
    /* B3430 801529F0 0C054A0A */  jal        func_80152828_ovl3
    /* B3434 801529F4 AFA20064 */   sw        $v0, 0x64($sp)
    /* B3438 801529F8 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* B343C 801529FC 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* B3440 80152A00 3C01800F */  lui        $at, %hi(D_800E8920)
    /* B3444 80152A04 3C048013 */  lui        $a0, %hi(gPositionState)
    /* B3448 80152A08 8F2D0000 */  lw         $t5, 0x0($t9)
    /* B344C 80152A0C 2484E968 */  addiu      $a0, $a0, %lo(gPositionState)
    /* B3450 80152A10 000D7080 */  sll        $t6, $t5, 2
    /* B3454 80152A14 002E0821 */  addu       $at, $at, $t6
    /* B3458 80152A18 0C044A29 */  jal        func_801128A4
    /* B345C 80152A1C AC228920 */   sw        $v0, %lo(D_800E8920)($at)
    /* B3460 80152A20 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* B3464 80152A24 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* B3468 80152A28 3C0C8013 */  lui        $t4, %hi(gPositionState)
    /* B346C 80152A2C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B3470 80152A30 8D240000 */  lw         $a0, 0x0($t1)
    /* B3474 80152A34 258CE968 */  addiu      $t4, $t4, %lo(gPositionState)
    /* B3478 80152A38 C5840004 */  lwc1       $f4, 0x4($t4)
    /* B347C 80152A3C 00041880 */  sll        $v1, $a0, 2
    /* B3480 80152A40 00230821 */  addu       $at, $at, $v1
    /* B3484 80152A44 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* B3488 80152A48 44808000 */  mtc1       $zero, $f16
    /* B348C 80152A4C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B3490 80152A50 46062001 */  sub.s      $f0, $f4, $f6
    /* B3494 80152A54 00230821 */  addu       $at, $at, $v1
    /* B3498 80152A58 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* B349C 80152A5C C588000C */  lwc1       $f8, 0xC($t4)
    /* B34A0 80152A60 46100032 */  c.eq.s     $f0, $f16
    /* B34A4 80152A64 00403825 */  or         $a3, $v0, $zero
    /* B34A8 80152A68 460A4081 */  sub.s      $f2, $f8, $f10
    /* B34AC 80152A6C 45020008 */  bc1fl      .L80152A90_ovl3
    /* B34B0 80152A70 44050000 */   mfc1      $a1, $f0
    /* B34B4 80152A74 44809000 */  mtc1       $zero, $f18
    /* B34B8 80152A78 00000000 */  nop
    /* B34BC 80152A7C 46121032 */  c.eq.s     $f2, $f18
    /* B34C0 80152A80 00000000 */  nop
    /* B34C4 80152A84 45010016 */  bc1t       .L80152AE0_ovl3
    /* B34C8 80152A88 00000000 */   nop
    /* B34CC 80152A8C 44050000 */  mfc1       $a1, $f0
  .L80152A90_ovl3:
    /* B34D0 80152A90 44061000 */  mfc1       $a2, $f2
    /* B34D4 80152A94 0C03E1CA */  jal        func_800F8728
    /* B34D8 80152A98 AFA7006C */   sw        $a3, 0x6C($sp)
    /* B34DC 80152A9C 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* B34E0 80152AA0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* B34E4 80152AA4 3C0C8013 */  lui        $t4, %hi(gPositionState)
    /* B34E8 80152AA8 258CE968 */  addiu      $t4, $t4, %lo(gPositionState)
    /* B34EC 80152AAC 8D2F0000 */  lw         $t7, 0x0($t1)
    /* B34F0 80152AB0 C5840004 */  lwc1       $f4, 0x4($t4)
    /* B34F4 80152AB4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B34F8 80152AB8 000FC080 */  sll        $t8, $t7, 2
    /* B34FC 80152ABC 00380821 */  addu       $at, $at, $t8
    /* B3500 80152AC0 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* B3504 80152AC4 8D390000 */  lw         $t9, 0x0($t1)
    /* B3508 80152AC8 C586000C */  lwc1       $f6, 0xC($t4)
    /* B350C 80152ACC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B3510 80152AD0 00196880 */  sll        $t5, $t9, 2
    /* B3514 80152AD4 002D0821 */  addu       $at, $at, $t5
    /* B3518 80152AD8 8FA7006C */  lw         $a3, 0x6C($sp)
    /* B351C 80152ADC E4262950 */  swc1       $f6, %lo(gEntitiesNextPosZArray)($at)
  .L80152AE0_ovl3:
    /* B3520 80152AE0 10E0003E */  beqz       $a3, .L80152BDC_ovl3
    /* B3524 80152AE4 30EE0001 */   andi      $t6, $a3, 0x1
    /* B3528 80152AE8 11C00010 */  beqz       $t6, .L80152B2C_ovl3
    /* B352C 80152AEC 3C02800D */   lui       $v0, %hi(D_800D6E44)
    /* B3530 80152AF0 24426E44 */  addiu      $v0, $v0, %lo(D_800D6E44)
    /* B3534 80152AF4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* B3538 80152AF8 24010002 */  addiu      $at, $zero, 0x2
    /* B353C 80152AFC 3C0A8013 */  lui        $t2, %hi(D_8012BCA0)
    /* B3540 80152B00 11E1000A */  beq        $t7, $at, .L80152B2C_ovl3
    /* B3544 80152B04 254ABCA0 */   addiu     $t2, $t2, %lo(D_8012BCA0)
    /* B3548 80152B08 8D580000 */  lw         $t8, 0x0($t2)
    /* B354C 80152B0C AD400020 */  sw         $zero, 0x20($t2)
    /* B3550 80152B10 0018CCC2 */  srl        $t9, $t8, 19
    /* B3554 80152B14 95580000 */  lhu        $t8, 0x0($t2)
    /* B3558 80152B18 372D0001 */  ori        $t5, $t9, 0x1
    /* B355C 80152B1C 000D78C0 */  sll        $t7, $t5, 3
    /* B3560 80152B20 33190007 */  andi       $t9, $t8, 0x7
    /* B3564 80152B24 01F96825 */  or         $t5, $t7, $t9
    /* B3568 80152B28 A54D0000 */  sh         $t5, 0x0($t2)
  .L80152B2C_ovl3:
    /* B356C 80152B2C 3C02800D */  lui        $v0, %hi(D_800D6E44)
    /* B3570 80152B30 3C0A8013 */  lui        $t2, %hi(D_8012BCA0)
    /* B3574 80152B34 30EE0002 */  andi       $t6, $a3, 0x2
    /* B3578 80152B38 254ABCA0 */  addiu      $t2, $t2, %lo(D_8012BCA0)
    /* B357C 80152B3C 11C0000E */  beqz       $t6, .L80152B78_ovl3
    /* B3580 80152B40 24426E44 */   addiu     $v0, $v0, %lo(D_800D6E44)
    /* B3584 80152B44 8C580000 */  lw         $t8, 0x0($v0)
    /* B3588 80152B48 24010004 */  addiu      $at, $zero, 0x4
    /* B358C 80152B4C 5301000B */  beql       $t8, $at, .L80152B7C_ovl3
    /* B3590 80152B50 30EE0004 */   andi      $t6, $a3, 0x4
    /* B3594 80152B54 8D4F0000 */  lw         $t7, 0x0($t2)
    /* B3598 80152B58 AD40002C */  sw         $zero, 0x2C($t2)
    /* B359C 80152B5C 000FCCC2 */  srl        $t9, $t7, 19
    /* B35A0 80152B60 954F0000 */  lhu        $t7, 0x0($t2)
    /* B35A4 80152B64 372D0008 */  ori        $t5, $t9, 0x8
    /* B35A8 80152B68 000DC0C0 */  sll        $t8, $t5, 3
    /* B35AC 80152B6C 31F90007 */  andi       $t9, $t7, 0x7
    /* B35B0 80152B70 03196825 */  or         $t5, $t8, $t9
    /* B35B4 80152B74 A54D0000 */  sh         $t5, 0x0($t2)
  .L80152B78_ovl3:
    /* B35B8 80152B78 30EE0004 */  andi       $t6, $a3, 0x4
  .L80152B7C_ovl3:
    /* B35BC 80152B7C 51C0000F */  beql       $t6, $zero, .L80152BBC_ovl3
    /* B35C0 80152B80 30EE0008 */   andi      $t6, $a3, 0x8
    /* B35C4 80152B84 8C4F0000 */  lw         $t7, 0x0($v0)
    /* B35C8 80152B88 24010001 */  addiu      $at, $zero, 0x1
    /* B35CC 80152B8C 51E1000B */  beql       $t7, $at, .L80152BBC_ovl3
    /* B35D0 80152B90 30EE0008 */   andi      $t6, $a3, 0x8
    /* B35D4 80152B94 8D580000 */  lw         $t8, 0x0($t2)
    /* B35D8 80152B98 AD400014 */  sw         $zero, 0x14($t2)
    /* B35DC 80152B9C 0018CCC2 */  srl        $t9, $t8, 19
    /* B35E0 80152BA0 95580000 */  lhu        $t8, 0x0($t2)
    /* B35E4 80152BA4 372D0040 */  ori        $t5, $t9, 0x40
    /* B35E8 80152BA8 000D78C0 */  sll        $t7, $t5, 3
    /* B35EC 80152BAC 33190007 */  andi       $t9, $t8, 0x7
    /* B35F0 80152BB0 01F96825 */  or         $t5, $t7, $t9
    /* B35F4 80152BB4 A54D0000 */  sh         $t5, 0x0($t2)
    /* B35F8 80152BB8 30EE0008 */  andi       $t6, $a3, 0x8
  .L80152BBC_ovl3:
    /* B35FC 80152BBC 51C00008 */  beql       $t6, $zero, .L80152BE0_ovl3
    /* B3600 80152BC0 8D380000 */   lw        $t8, 0x0($t1)
    /* B3604 80152BC4 0C047503 */  jal        func_8011D40C
    /* B3608 80152BC8 00000000 */   nop
    /* B360C 80152BCC 3C0C8013 */  lui        $t4, %hi(gPositionState)
    /* B3610 80152BD0 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* B3614 80152BD4 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* B3618 80152BD8 258CE968 */  addiu      $t4, $t4, %lo(gPositionState)
  .L80152BDC_ovl3:
    /* B361C 80152BDC 8D380000 */  lw         $t8, 0x0($t1)
  .L80152BE0_ovl3:
    /* B3620 80152BE0 C5880008 */  lwc1       $f8, 0x8($t4)
    /* B3624 80152BE4 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosYArray)
    /* B3628 80152BE8 256B2790 */  addiu      $t3, $t3, %lo(gEntitiesNextPosYArray)
    /* B362C 80152BEC 00187880 */  sll        $t7, $t8, 2
    /* B3630 80152BF0 016FC821 */  addu       $t9, $t3, $t7
    /* B3634 80152BF4 E7280000 */  swc1       $f8, 0x0($t9)
    /* B3638 80152BF8 8D230000 */  lw         $v1, 0x0($t1)
    /* B363C 80152BFC 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* B3640 80152C00 3C0A8013 */  lui        $t2, %hi(D_8012BCA0)
    /* B3644 80152C04 00031880 */  sll        $v1, $v1, 2
    /* B3648 80152C08 01A36821 */  addu       $t5, $t5, $v1
    /* B364C 80152C0C 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* B3650 80152C10 3C01800E */  lui        $at, %hi(D_800E3210)
    /* B3654 80152C14 254ABCA0 */  addiu      $t2, $t2, %lo(D_8012BCA0)
    /* B3658 80152C18 15A00013 */  bnez       $t5, .L80152C68_ovl3
    /* B365C 80152C1C 00230821 */   addu      $at, $at, $v1
    /* B3660 80152C20 44805000 */  mtc1       $zero, $f10
    /* B3664 80152C24 C4303210 */  lwc1       $f16, %lo(D_800E3210)($at)
    /* B3668 80152C28 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* B366C 80152C2C 00230821 */  addu       $at, $at, $v1
    /* B3670 80152C30 460A803E */  c.le.s     $f16, $f10
    /* B3674 80152C34 00000000 */  nop
    /* B3678 80152C38 4500000B */  bc1f       .L80152C68_ovl3
    /* B367C 80152C3C 00000000 */   nop
    /* B3680 80152C40 44809000 */  mtc1       $zero, $f18
    /* B3684 80152C44 C42464D0 */  lwc1       $f4, %lo(D_800E64D0)($at)
    /* B3688 80152C48 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B368C 80152C4C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* B3690 80152C50 46049032 */  c.eq.s     $f18, $f4
    /* B3694 80152C54 00000000 */  nop
    /* B3698 80152C58 45010003 */  bc1t       .L80152C68_ovl3
    /* B369C 80152C5C 00000000 */   nop
    /* B36A0 80152C60 8D0E00A0 */  lw         $t6, 0xA0($t0)
    /* B36A4 80152C64 11C00005 */  beqz       $t6, .L80152C7C_ovl3
  .L80152C68_ovl3:
    /* B36A8 80152C68 3C088013 */   lui       $t0, %hi(D_801300E4)
    /* B36AC 80152C6C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* B36B0 80152C70 8D1800A0 */  lw         $t8, 0xA0($t0)
    /* B36B4 80152C74 24010012 */  addiu      $at, $zero, 0x12
    /* B36B8 80152C78 17010079 */  bne        $t8, $at, .L80152E60_ovl3
  .L80152C7C_ovl3:
    /* B36BC 80152C7C 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* B36C0 80152C80 44813000 */  mtc1       $at, $f6
    /* B36C4 80152C84 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* B36C8 80152C88 00230821 */  addu       $at, $at, $v1
    /* B36CC 80152C8C C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
    /* B36D0 80152C90 46083032 */  c.eq.s     $f6, $f8
    /* B36D4 80152C94 00000000 */  nop
    /* B36D8 80152C98 45020004 */  bc1fl      .L80152CAC_ovl3
    /* B36DC 80152C9C C5820020 */   lwc1      $f2, 0x20($t4)
    /* B36E0 80152CA0 10000002 */  b          .L80152CAC_ovl3
    /* B36E4 80152CA4 C582001C */   lwc1      $f2, 0x1C($t4)
    /* B36E8 80152CA8 C5820020 */  lwc1       $f2, 0x20($t4)
  .L80152CAC_ovl3:
    /* B36EC 80152CAC C58C0024 */  lwc1       $f12, 0x24($t4)
    /* B36F0 80152CB0 0C00B5B8 */  jal        sinf
    /* B36F4 80152CB4 E7A2005C */   swc1      $f2, 0x5C($sp)
    /* B36F8 80152CB8 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* B36FC 80152CBC 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* B3700 80152CC0 C7A2005C */  lwc1       $f2, 0x5C($sp)
    /* B3704 80152CC4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B3708 80152CC8 8DF90000 */  lw         $t9, 0x0($t7)
    /* B370C 80152CCC 46020282 */  mul.s      $f10, $f0, $f2
    /* B3710 80152CD0 3C0C8013 */  lui        $t4, %hi(gPositionState)
    /* B3714 80152CD4 00196880 */  sll        $t5, $t9, 2
    /* B3718 80152CD8 002D0821 */  addu       $at, $at, $t5
    /* B371C 80152CDC C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* B3720 80152CE0 258CE968 */  addiu      $t4, $t4, %lo(gPositionState)
    /* B3724 80152CE4 C58C0024 */  lwc1       $f12, 0x24($t4)
    /* B3728 80152CE8 46105480 */  add.s      $f18, $f10, $f16
    /* B372C 80152CEC E7B20044 */  swc1       $f18, 0x44($sp)
    /* B3730 80152CF0 0C00D604 */  jal        cosf
    /* B3734 80152CF4 E7B20050 */   swc1      $f18, 0x50($sp)
    /* B3738 80152CF8 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* B373C 80152CFC 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* B3740 80152D00 C7A2005C */  lwc1       $f2, 0x5C($sp)
    /* B3744 80152D04 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B3748 80152D08 8D2E0000 */  lw         $t6, 0x0($t1)
    /* B374C 80152D0C 46020102 */  mul.s      $f4, $f0, $f2
    /* B3750 80152D10 8FA30064 */  lw         $v1, 0x64($sp)
    /* B3754 80152D14 000EC080 */  sll        $t8, $t6, 2
    /* B3758 80152D18 00380821 */  addu       $at, $at, $t8
    /* B375C 80152D1C C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* B3760 80152D20 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosYArray)
    /* B3764 80152D24 256B2790 */  addiu      $t3, $t3, %lo(gEntitiesNextPosYArray)
    /* B3768 80152D28 46062200 */  add.s      $f8, $f4, $f6
    /* B376C 80152D2C 27A40050 */  addiu      $a0, $sp, 0x50
    /* B3770 80152D30 27A50044 */  addiu      $a1, $sp, 0x44
    /* B3774 80152D34 00003025 */  or         $a2, $zero, $zero
    /* B3778 80152D38 E7A8004C */  swc1       $f8, 0x4C($sp)
    /* B377C 80152D3C E7A80058 */  swc1       $f8, 0x58($sp)
    /* B3780 80152D40 8D2F0000 */  lw         $t7, 0x0($t1)
    /* B3784 80152D44 8C620004 */  lw         $v0, 0x4($v1)
    /* B3788 80152D48 27A70038 */  addiu      $a3, $sp, 0x38
    /* B378C 80152D4C 000FC880 */  sll        $t9, $t7, 2
    /* B3790 80152D50 01796821 */  addu       $t5, $t3, $t9
    /* B3794 80152D54 C5AA0000 */  lwc1       $f10, 0x0($t5)
    /* B3798 80152D58 C4500000 */  lwc1       $f16, 0x0($v0)
    /* B379C 80152D5C C4440008 */  lwc1       $f4, 0x8($v0)
    /* B37A0 80152D60 46105480 */  add.s      $f18, $f10, $f16
    /* B37A4 80152D64 46049180 */  add.s      $f6, $f18, $f4
    /* B37A8 80152D68 E7A60048 */  swc1       $f6, 0x48($sp)
    /* B37AC 80152D6C 8D2E0000 */  lw         $t6, 0x0($t1)
    /* B37B0 80152D70 8C620004 */  lw         $v0, 0x4($v1)
    /* B37B4 80152D74 000EC080 */  sll        $t8, $t6, 2
    /* B37B8 80152D78 01787821 */  addu       $t7, $t3, $t8
    /* B37BC 80152D7C C5E80000 */  lwc1       $f8, 0x0($t7)
    /* B37C0 80152D80 C44A0000 */  lwc1       $f10, 0x0($v0)
    /* B37C4 80152D84 C4520004 */  lwc1       $f18, 0x4($v0)
    /* B37C8 80152D88 AFA00018 */  sw         $zero, 0x18($sp)
    /* B37CC 80152D8C 460A4400 */  add.s      $f16, $f8, $f10
    /* B37D0 80152D90 AFA00014 */  sw         $zero, 0x14($sp)
    /* B37D4 80152D94 AFA00010 */  sw         $zero, 0x10($sp)
    /* B37D8 80152D98 46128100 */  add.s      $f4, $f16, $f18
    /* B37DC 80152D9C 0C0412DC */  jal        func_80104B70
    /* B37E0 80152DA0 E7A40054 */   swc1      $f4, 0x54($sp)
    /* B37E4 80152DA4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B37E8 80152DA8 3C0A8013 */  lui        $t2, %hi(D_8012BCA0)
    /* B37EC 80152DAC 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosYArray)
    /* B37F0 80152DB0 3C0C8013 */  lui        $t4, %hi(gPositionState)
    /* B37F4 80152DB4 258CE968 */  addiu      $t4, $t4, %lo(gPositionState)
    /* B37F8 80152DB8 256B2790 */  addiu      $t3, $t3, %lo(gEntitiesNextPosYArray)
    /* B37FC 80152DBC 254ABCA0 */  addiu      $t2, $t2, %lo(D_8012BCA0)
    /* B3800 80152DC0 10400027 */  beqz       $v0, .L80152E60_ovl3
    /* B3804 80152DC4 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* B3808 80152DC8 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* B380C 80152DCC 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* B3810 80152DD0 8FAD0064 */  lw         $t5, 0x64($sp)
    /* B3814 80152DD4 C7A6003C */  lwc1       $f6, 0x3C($sp)
    /* B3818 80152DD8 8D230000 */  lw         $v1, 0x0($t1)
    /* B381C 80152DDC 8DAE0004 */  lw         $t6, 0x4($t5)
    /* B3820 80152DE0 3C01800F */  lui        $at, %hi(D_800E8920)
    /* B3824 80152DE4 00031880 */  sll        $v1, $v1, 2
    /* B3828 80152DE8 0163C821 */  addu       $t9, $t3, $v1
    /* B382C 80152DEC C7280000 */  lwc1       $f8, 0x0($t9)
    /* B3830 80152DF0 C5D00000 */  lwc1       $f16, 0x0($t6)
    /* B3834 80152DF4 00230821 */  addu       $at, $at, $v1
    /* B3838 80152DF8 46083281 */  sub.s      $f10, $f6, $f8
    /* B383C 80152DFC 24180001 */  addiu      $t8, $zero, 0x1
    /* B3840 80152E00 4610503C */  c.lt.s     $f10, $f16
    /* B3844 80152E04 00000000 */  nop
    /* B3848 80152E08 45020016 */  bc1fl      .L80152E64_ovl3
    /* B384C 80152E0C 8D420000 */   lw        $v0, 0x0($t2)
    /* B3850 80152E10 AC388920 */  sw         $t8, %lo(D_800E8920)($at)
    /* B3854 80152E14 8D4F0000 */  lw         $t7, 0x0($t2)
    /* B3858 80152E18 AD400008 */  sw         $zero, 0x8($t2)
    /* B385C 80152E1C C7B2003C */  lwc1       $f18, 0x3C($sp)
    /* B3860 80152E20 000FCCC2 */  srl        $t9, $t7, 19
    /* B3864 80152E24 954F0000 */  lhu        $t7, 0x0($t2)
    /* B3868 80152E28 372D0200 */  ori        $t5, $t9, 0x200
    /* B386C 80152E2C 000DC0C0 */  sll        $t8, $t5, 3
    /* B3870 80152E30 31F90007 */  andi       $t9, $t7, 0x7
    /* B3874 80152E34 03196825 */  or         $t5, $t8, $t9
    /* B3878 80152E38 A54D0000 */  sh         $t5, 0x0($t2)
    /* B387C 80152E3C 8D2E0000 */  lw         $t6, 0x0($t1)
    /* B3880 80152E40 000E7880 */  sll        $t7, $t6, 2
    /* B3884 80152E44 016FC021 */  addu       $t8, $t3, $t7
    /* B3888 80152E48 E7120000 */  swc1       $f18, 0x0($t8)
    /* B388C 80152E4C 8D390000 */  lw         $t9, 0x0($t1)
    /* B3890 80152E50 00196880 */  sll        $t5, $t9, 2
    /* B3894 80152E54 016D7021 */  addu       $t6, $t3, $t5
    /* B3898 80152E58 C5C40000 */  lwc1       $f4, 0x0($t6)
    /* B389C 80152E5C E5840008 */  swc1       $f4, 0x8($t4)
  .L80152E60_ovl3:
    /* B38A0 80152E60 8D420000 */  lw         $v0, 0x0($t2)
  .L80152E64_ovl3:
    /* B38A4 80152E64 8D430014 */  lw         $v1, 0x14($t2)
    /* B38A8 80152E68 000214C2 */  srl        $v0, $v0, 19
    /* B38AC 80152E6C 304501C0 */  andi       $a1, $v0, 0x1C0
    /* B38B0 80152E70 30460E00 */  andi       $a2, $v0, 0xE00
    /* B38B4 80152E74 30470007 */  andi       $a3, $v0, 0x7
    /* B38B8 80152E78 30490038 */  andi       $t1, $v0, 0x38
    /* B38BC 80152E7C 00A62025 */  or         $a0, $a1, $a2
    /* B38C0 80152E80 00877825 */  or         $t7, $a0, $a3
    /* B38C4 80152E84 00E97025 */  or         $t6, $a3, $t1
    /* B38C8 80152E88 01E9C025 */  or         $t8, $t7, $t1
    /* B38CC 80152E8C AD0500E4 */  sw         $a1, %lo(D_801300E4)($t0)
    /* B38D0 80152E90 AD0600E8 */  sw         $a2, %lo(D_801300E8)($t0)
    /* B38D4 80152E94 AD0700EC */  sw         $a3, %lo(D_801300EC)($t0)
    /* B38D8 80152E98 AD0900F0 */  sw         $t1, %lo(D_801300F0)($t0)
    /* B38DC 80152E9C AD0400F8 */  sw         $a0, %lo(D_801300F8)($t0)
    /* B38E0 80152EA0 AD0E00FC */  sw         $t6, %lo(D_801300FC)($t0)
    /* B38E4 80152EA4 1060000B */  beqz       $v1, .L80152ED4_ovl3
    /* B38E8 80152EA8 AD1800F4 */   sw        $t8, %lo(D_801300F4)($t0)
    /* B38EC 80152EAC 50A0000A */  beql       $a1, $zero, .L80152ED8_ovl3
    /* B38F0 80152EB0 A5000100 */   sh        $zero, %lo(D_80130100)($t0)
    /* B38F4 80152EB4 94790012 */  lhu        $t9, 0x12($v1)
    /* B38F8 80152EB8 8D4E0018 */  lw         $t6, 0x18($t2)
    /* B38FC 80152EBC A5190100 */  sh         $t9, %lo(D_80130100)($t0)
    /* B3900 80152EC0 946D000E */  lhu        $t5, 0xE($v1)
    /* B3904 80152EC4 AD030110 */  sw         $v1, %lo(D_80130110)($t0)
    /* B3908 80152EC8 AD0E0120 */  sw         $t6, %lo(D_80130120)($t0)
    /* B390C 80152ECC 10000003 */  b          .L80152EDC_ovl3
    /* B3910 80152ED0 A50D0108 */   sh        $t5, %lo(D_80130108)($t0)
  .L80152ED4_ovl3:
    /* B3914 80152ED4 A5000100 */  sh         $zero, %lo(D_80130100)($t0)
  .L80152ED8_ovl3:
    /* B3918 80152ED8 A5000108 */  sh         $zero, %lo(D_80130108)($t0)
  .L80152EDC_ovl3:
    /* B391C 80152EDC 8D430008 */  lw         $v1, 0x8($t2)
    /* B3920 80152EE0 5060000C */  beql       $v1, $zero, .L80152F14_ovl3
    /* B3924 80152EE4 A5000102 */   sh        $zero, %lo(D_80130102)($t0)
    /* B3928 80152EE8 50C0000A */  beql       $a2, $zero, .L80152F14_ovl3
    /* B392C 80152EEC A5000102 */   sh        $zero, %lo(D_80130102)($t0)
    /* B3930 80152EF0 946F0012 */  lhu        $t7, 0x12($v1)
    /* B3934 80152EF4 8D59000C */  lw         $t9, 0xC($t2)
    /* B3938 80152EF8 A50F0102 */  sh         $t7, %lo(D_80130102)($t0)
    /* B393C 80152EFC 9478000E */  lhu        $t8, 0xE($v1)
    /* B3940 80152F00 AD030114 */  sw         $v1, %lo(D_80130114)($t0)
    /* B3944 80152F04 AD190124 */  sw         $t9, %lo(D_80130124)($t0)
    /* B3948 80152F08 10000003 */  b          .L80152F18_ovl3
    /* B394C 80152F0C A518010A */   sh        $t8, %lo(D_8013010A)($t0)
    /* B3950 80152F10 A5000102 */  sh         $zero, 0x102($t0)
  .L80152F14_ovl3:
    /* B3954 80152F14 A500010A */  sh         $zero, %lo(D_8013010A)($t0)
  .L80152F18_ovl3:
    /* B3958 80152F18 8D440020 */  lw         $a0, 0x20($t2)
    /* B395C 80152F1C 1080000B */  beqz       $a0, .L80152F4C_ovl3
    /* B3960 80152F20 00801825 */   or        $v1, $a0, $zero
    /* B3964 80152F24 50E0000A */  beql       $a3, $zero, .L80152F50_ovl3
    /* B3968 80152F28 A5000104 */   sh        $zero, %lo(D_80130104)($t0)
    /* B396C 80152F2C 946D0012 */  lhu        $t5, 0x12($v1)
    /* B3970 80152F30 8D4F0024 */  lw         $t7, 0x24($t2)
    /* B3974 80152F34 A50D0104 */  sh         $t5, %lo(D_80130104)($t0)
    /* B3978 80152F38 946E000E */  lhu        $t6, 0xE($v1)
    /* B397C 80152F3C AD030118 */  sw         $v1, %lo(D_80130118)($t0)
    /* B3980 80152F40 AD0F0128 */  sw         $t7, %lo(D_80130128)($t0)
    /* B3984 80152F44 10000003 */  b          .L80152F54_ovl3
    /* B3988 80152F48 A50E010C */   sh        $t6, %lo(D_8013010C)($t0)
  .L80152F4C_ovl3:
    /* B398C 80152F4C A5000104 */  sh         $zero, %lo(D_80130104)($t0)
  .L80152F50_ovl3:
    /* B3990 80152F50 A500010C */  sh         $zero, %lo(D_8013010C)($t0)
  .L80152F54_ovl3:
    /* B3994 80152F54 8D43002C */  lw         $v1, 0x2C($t2)
    /* B3998 80152F58 5060000C */  beql       $v1, $zero, .L80152F8C_ovl3
    /* B399C 80152F5C A5000106 */   sh        $zero, %lo(D_80130106)($t0)
    /* B39A0 80152F60 5120000A */  beql       $t1, $zero, .L80152F8C_ovl3
    /* B39A4 80152F64 A5000106 */   sh        $zero, %lo(D_80130106)($t0)
    /* B39A8 80152F68 94780012 */  lhu        $t8, 0x12($v1)
    /* B39AC 80152F6C 8D4D0030 */  lw         $t5, 0x30($t2)
    /* B39B0 80152F70 A5180106 */  sh         $t8, %lo(D_80130106)($t0)
    /* B39B4 80152F74 9479000E */  lhu        $t9, 0xE($v1)
    /* B39B8 80152F78 AD03011C */  sw         $v1, %lo(D_8013011C)($t0)
    /* B39BC 80152F7C AD0D012C */  sw         $t5, %lo(D_8013012C)($t0)
    /* B39C0 80152F80 10000003 */  b          .L80152F90_ovl3
    /* B39C4 80152F84 A519010E */   sh        $t9, %lo(D_8013010E)($t0)
    /* B39C8 80152F88 A5000106 */  sh         $zero, 0x106($t0)
  .L80152F8C_ovl3:
    /* B39CC 80152F8C A500010E */  sh         $zero, %lo(D_8013010E)($t0)
  .L80152F90_ovl3:
    /* B39D0 80152F90 50E0000E */  beql       $a3, $zero, .L80152FCC_ovl3
    /* B39D4 80152F94 8D0F00F0 */   lw        $t7, %lo(D_801300F0)($t0)
    /* B39D8 80152F98 0C043709 */  jal        func_8010DC24
    /* B39DC 80152F9C 00000000 */   nop
    /* B39E0 80152FA0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B39E4 80152FA4 3C0A8013 */  lui        $t2, %hi(D_8012BCA0)
    /* B39E8 80152FA8 254ABCA0 */  addiu      $t2, $t2, %lo(D_8012BCA0)
    /* B39EC 80152FAC 10400006 */  beqz       $v0, .L80152FC8_ovl3
    /* B39F0 80152FB0 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* B39F4 80152FB4 3C010004 */  lui        $at, (0x40000 >> 16)
    /* B39F8 80152FB8 00417025 */  or         $t6, $v0, $at
    /* B39FC 80152FBC 3C018013 */  lui        $at, %hi(D_8012E8CA + 0x36)
    /* B3A00 80152FC0 10000031 */  b          .L80153088_ovl3
    /* B3A04 80152FC4 AC2EE900 */   sw        $t6, %lo(D_8012E8CA + 0x36)($at)
  .L80152FC8_ovl3:
    /* B3A08 80152FC8 8D0F00F0 */  lw         $t7, 0xF0($t0)
  .L80152FCC_ovl3:
    /* B3A0C 80152FCC 51E0000E */  beql       $t7, $zero, .L80153008_ovl3
    /* B3A10 80152FD0 8D1900E4 */   lw        $t9, %lo(D_801300E4)($t0)
    /* B3A14 80152FD4 0C043709 */  jal        func_8010DC24
    /* B3A18 80152FD8 8D44002C */   lw        $a0, 0x2C($t2)
    /* B3A1C 80152FDC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B3A20 80152FE0 3C0A8013 */  lui        $t2, %hi(D_8012BCA0)
    /* B3A24 80152FE4 254ABCA0 */  addiu      $t2, $t2, %lo(D_8012BCA0)
    /* B3A28 80152FE8 10400006 */  beqz       $v0, .L80153004_ovl3
    /* B3A2C 80152FEC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* B3A30 80152FF0 3C010008 */  lui        $at, (0x80000 >> 16)
    /* B3A34 80152FF4 0041C025 */  or         $t8, $v0, $at
    /* B3A38 80152FF8 3C018013 */  lui        $at, %hi(D_8012E8CA + 0x36)
    /* B3A3C 80152FFC 10000022 */  b          .L80153088_ovl3
    /* B3A40 80153000 AC38E900 */   sw        $t8, %lo(D_8012E8CA + 0x36)($at)
  .L80153004_ovl3:
    /* B3A44 80153004 8D1900E4 */  lw         $t9, 0xE4($t0)
  .L80153008_ovl3:
    /* B3A48 80153008 5320000E */  beql       $t9, $zero, .L80153044_ovl3
    /* B3A4C 8015300C 8D0E00E8 */   lw        $t6, %lo(D_801300E8)($t0)
    /* B3A50 80153010 0C043709 */  jal        func_8010DC24
    /* B3A54 80153014 8D440014 */   lw        $a0, 0x14($t2)
    /* B3A58 80153018 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B3A5C 8015301C 3C0A8013 */  lui        $t2, %hi(D_8012BCA0)
    /* B3A60 80153020 254ABCA0 */  addiu      $t2, $t2, %lo(D_8012BCA0)
    /* B3A64 80153024 10400006 */  beqz       $v0, .L80153040_ovl3
    /* B3A68 80153028 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* B3A6C 8015302C 3C010001 */  lui        $at, (0x10000 >> 16)
    /* B3A70 80153030 00416825 */  or         $t5, $v0, $at
    /* B3A74 80153034 3C018013 */  lui        $at, %hi(D_8012E8CA + 0x36)
    /* B3A78 80153038 10000013 */  b          .L80153088_ovl3
    /* B3A7C 8015303C AC2DE900 */   sw        $t5, %lo(D_8012E8CA + 0x36)($at)
  .L80153040_ovl3:
    /* B3A80 80153040 8D0E00E8 */  lw         $t6, 0xE8($t0)
  .L80153044_ovl3:
    /* B3A84 80153044 51C0000C */  beql       $t6, $zero, .L80153078_ovl3
    /* B3A88 80153048 91180005 */   lbu       $t8, %lo(D_80130005)($t0)
    /* B3A8C 8015304C 0C043709 */  jal        func_8010DC24
    /* B3A90 80153050 8D440008 */   lw        $a0, 0x8($t2)
    /* B3A94 80153054 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* B3A98 80153058 10400006 */  beqz       $v0, .L80153074_ovl3
    /* B3A9C 8015305C 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* B3AA0 80153060 3C010002 */  lui        $at, (0x20000 >> 16)
    /* B3AA4 80153064 00417825 */  or         $t7, $v0, $at
    /* B3AA8 80153068 3C018013 */  lui        $at, %hi(D_8012E8CA + 0x36)
    /* B3AAC 8015306C 10000006 */  b          .L80153088_ovl3
    /* B3AB0 80153070 AC2FE900 */   sw        $t7, %lo(D_8012E8CA + 0x36)($at)
  .L80153074_ovl3:
    /* B3AB4 80153074 91180005 */  lbu        $t8, 0x5($t0)
  .L80153078_ovl3:
    /* B3AB8 80153078 24010016 */  addiu      $at, $zero, 0x16
    /* B3ABC 8015307C 53010003 */  beql       $t8, $at, .L8015308C_ovl3
    /* B3AC0 80153080 8FB90064 */   lw        $t9, 0x64($sp)
    /* B3AC4 80153084 AD000140 */  sw         $zero, %lo(D_80130140)($t0)
  .L80153088_ovl3:
    /* B3AC8 80153088 8FB90064 */  lw         $t9, 0x64($sp)
  .L8015308C_ovl3:
    /* B3ACC 8015308C 0C054C2F */  jal        func_801530BC_ovl3
    /* B3AD0 80153090 8F240004 */   lw        $a0, 0x4($t9)
    /* B3AD4 80153094 0C054D9A */  jal        func_80153668_ovl3
    /* B3AD8 80153098 00000000 */   nop
    /* B3ADC 8015309C 0C054E02 */  jal        func_80153808_ovl3
    /* B3AE0 801530A0 00000000 */   nop
    /* B3AE4 801530A4 0C054E32 */  jal        func_801538C8_ovl3
    /* B3AE8 801530A8 00000000 */   nop
    /* B3AEC 801530AC 8FBF0024 */  lw         $ra, 0x24($sp)
    /* B3AF0 801530B0 27BD0070 */  addiu      $sp, $sp, 0x70
    /* B3AF4 801530B4 03E00008 */  jr         $ra
    /* B3AF8 801530B8 00000000 */   nop
endlabel func_801529C0_ovl3
.size func_801529C0_ovl3, . - func_801529C0_ovl3
