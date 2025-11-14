glabel func_801529C0_ovl3
/* 0B3400 801529C0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0B3404 801529C4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0B3408 801529C8 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0B340C 801529CC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0B3410 801529D0 8DCF0000 */  lw    $t7, ($t6)
/* 0B3414 801529D4 3C02800E */  lui   $v0, 0x800e
/* 0B3418 801529D8 3C058013 */  lui   $a1, %hi(gPositionState) # $a1, 0x8013
/* 0B341C 801529DC 000FC080 */  sll   $t8, $t7, 2
/* 0B3420 801529E0 00581021 */  addu  $v0, $v0, $t8
/* 0B3424 801529E4 8C420490 */  lw    $v0, 0x0490($v0)
/* 0B3428 801529E8 24A5E968 */  addiu $a1, %lo(gPositionState) # addiu $a1, $a1, -0x1698
/* 0B342C 801529EC 8C440004 */  lw    $a0, 4($v0)
/* 0B3430 801529F0 0C054A0A */  jal   func_80152828_ovl3
/* 0B3434 801529F4 AFA20064 */   sw    $v0, 0x64($sp)
/* 0B3438 801529F8 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0B343C 801529FC 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0B3440 80152A00 3C01800F */  lui   $at, 0x800f
/* 0B3444 80152A04 3C048013 */  lui   $a0, %hi(gPositionState) # $a0, 0x8013
/* 0B3448 80152A08 8F2D0000 */  lw    $t5, ($t9)
/* 0B344C 80152A0C 2484E968 */  addiu $a0, %lo(gPositionState) # addiu $a0, $a0, -0x1698
/* 0B3450 80152A10 000D7080 */  sll   $t6, $t5, 2
/* 0B3454 80152A14 002E0821 */  addu  $at, $at, $t6
/* 0B3458 80152A18 0C044A29 */  jal   func_801128A4
/* 0B345C 80152A1C AC228920 */   sw    $v0, -0x76e0($at)
/* 0B3460 80152A20 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0B3464 80152A24 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0B3468 80152A28 3C0C8013 */  lui   $t4, %hi(gPositionState) # $t4, 0x8013
/* 0B346C 80152A2C 3C01800E */  lui   $at, 0x800e
/* 0B3470 80152A30 8D240000 */  lw    $a0, ($t1)
/* 0B3474 80152A34 258CE968 */  addiu $t4, %lo(gPositionState) # addiu $t4, $t4, -0x1698
/* 0B3478 80152A38 C5840004 */  lwc1  $f4, 4($t4)
/* 0B347C 80152A3C 00041880 */  sll   $v1, $a0, 2
/* 0B3480 80152A40 00230821 */  addu  $at, $at, $v1
/* 0B3484 80152A44 C42625D0 */  lwc1  $f6, 0x25d0($at)
/* 0B3488 80152A48 44808000 */  mtc1  $zero, $f16
/* 0B348C 80152A4C 3C01800E */  lui   $at, 0x800e
/* 0B3490 80152A50 46062001 */  sub.s $f0, $f4, $f6
/* 0B3494 80152A54 00230821 */  addu  $at, $at, $v1
/* 0B3498 80152A58 C42A2950 */  lwc1  $f10, 0x2950($at)
/* 0B349C 80152A5C C588000C */  lwc1  $f8, 0xc($t4)
/* 0B34A0 80152A60 46100032 */  c.eq.s $f0, $f16
/* 0B34A4 80152A64 00403825 */  move  $a3, $v0
/* 0B34A8 80152A68 460A4081 */  sub.s $f2, $f8, $f10
/* 0B34AC 80152A6C 45020008 */  bc1fl .L80152A90_ovl3
/* 0B34B0 80152A70 44050000 */   mfc1  $a1, $f0
/* 0B34B4 80152A74 44809000 */  mtc1  $zero, $f18
/* 0B34B8 80152A78 00000000 */  nop   
/* 0B34BC 80152A7C 46121032 */  c.eq.s $f2, $f18
/* 0B34C0 80152A80 00000000 */  nop   
/* 0B34C4 80152A84 45010016 */  bc1t  .L80152AE0_ovl3
/* 0B34C8 80152A88 00000000 */   nop   
/* 0B34CC 80152A8C 44050000 */  mfc1  $a1, $f0
.L80152A90_ovl3:
/* 0B34D0 80152A90 44061000 */  mfc1  $a2, $f2
/* 0B34D4 80152A94 0C03E1CA */  jal   func_800F8728
/* 0B34D8 80152A98 AFA7006C */   sw    $a3, 0x6c($sp)
/* 0B34DC 80152A9C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0B34E0 80152AA0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0B34E4 80152AA4 3C0C8013 */  lui   $t4, %hi(gPositionState) # $t4, 0x8013
/* 0B34E8 80152AA8 258CE968 */  addiu $t4, %lo(gPositionState) # addiu $t4, $t4, -0x1698
/* 0B34EC 80152AAC 8D2F0000 */  lw    $t7, ($t1)
/* 0B34F0 80152AB0 C5840004 */  lwc1  $f4, 4($t4)
/* 0B34F4 80152AB4 3C01800E */  lui   $at, 0x800e
/* 0B34F8 80152AB8 000FC080 */  sll   $t8, $t7, 2
/* 0B34FC 80152ABC 00380821 */  addu  $at, $at, $t8
/* 0B3500 80152AC0 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 0B3504 80152AC4 8D390000 */  lw    $t9, ($t1)
/* 0B3508 80152AC8 C586000C */  lwc1  $f6, 0xc($t4)
/* 0B350C 80152ACC 3C01800E */  lui   $at, 0x800e
/* 0B3510 80152AD0 00196880 */  sll   $t5, $t9, 2
/* 0B3514 80152AD4 002D0821 */  addu  $at, $at, $t5
/* 0B3518 80152AD8 8FA7006C */  lw    $a3, 0x6c($sp)
/* 0B351C 80152ADC E4262950 */  swc1  $f6, 0x2950($at)
.L80152AE0_ovl3:
/* 0B3520 80152AE0 10E0003E */  beqz  $a3, .L80152BDC_ovl3
/* 0B3524 80152AE4 30EE0001 */   andi  $t6, $a3, 1
/* 0B3528 80152AE8 11C00010 */  beqz  $t6, .L80152B2C_ovl3
/* 0B352C 80152AEC 3C02800D */   lui   $v0, %hi(D_800D6E44) # $v0, 0x800d
/* 0B3530 80152AF0 24426E44 */  addiu $v0, %lo(D_800D6E44) # addiu $v0, $v0, 0x6e44
/* 0B3534 80152AF4 8C4F0000 */  lw    $t7, ($v0)
/* 0B3538 80152AF8 24010002 */  li    $at, 2
/* 0B353C 80152AFC 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0B3540 80152B00 11E1000A */  beq   $t7, $at, .L80152B2C_ovl3
/* 0B3544 80152B04 254ABCA0 */   addiu $t2, %lo(D_8012BCA0) # addiu $t2, $t2, -0x4360
/* 0B3548 80152B08 8D580000 */  lw    $t8, ($t2)
/* 0B354C 80152B0C AD400020 */  sw    $zero, 0x20($t2)
/* 0B3550 80152B10 0018CCC2 */  srl   $t9, $t8, 0x13
/* 0B3554 80152B14 95580000 */  lhu   $t8, ($t2)
/* 0B3558 80152B18 372D0001 */  ori   $t5, $t9, 1
/* 0B355C 80152B1C 000D78C0 */  sll   $t7, $t5, 3
/* 0B3560 80152B20 33190007 */  andi  $t9, $t8, 7
/* 0B3564 80152B24 01F96825 */  or    $t5, $t7, $t9
/* 0B3568 80152B28 A54D0000 */  sh    $t5, ($t2)
.L80152B2C_ovl3:
/* 0B356C 80152B2C 3C02800D */  lui   $v0, %hi(D_800D6E44) # $v0, 0x800d
/* 0B3570 80152B30 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0B3574 80152B34 30EE0002 */  andi  $t6, $a3, 2
/* 0B3578 80152B38 254ABCA0 */  addiu $t2, %lo(D_8012BCA0) # addiu $t2, $t2, -0x4360
/* 0B357C 80152B3C 11C0000E */  beqz  $t6, .L80152B78_ovl3
/* 0B3580 80152B40 24426E44 */   addiu $v0, %lo(D_800D6E44) # addiu $v0, $v0, 0x6e44
/* 0B3584 80152B44 8C580000 */  lw    $t8, ($v0)
/* 0B3588 80152B48 24010004 */  li    $at, 4
/* 0B358C 80152B4C 5301000B */  beql  $t8, $at, .L80152B7C_ovl3
/* 0B3590 80152B50 30EE0004 */   andi  $t6, $a3, 4
/* 0B3594 80152B54 8D4F0000 */  lw    $t7, ($t2)
/* 0B3598 80152B58 AD40002C */  sw    $zero, 0x2c($t2)
/* 0B359C 80152B5C 000FCCC2 */  srl   $t9, $t7, 0x13
/* 0B35A0 80152B60 954F0000 */  lhu   $t7, ($t2)
/* 0B35A4 80152B64 372D0008 */  ori   $t5, $t9, 8
/* 0B35A8 80152B68 000DC0C0 */  sll   $t8, $t5, 3
/* 0B35AC 80152B6C 31F90007 */  andi  $t9, $t7, 7
/* 0B35B0 80152B70 03196825 */  or    $t5, $t8, $t9
/* 0B35B4 80152B74 A54D0000 */  sh    $t5, ($t2)
.L80152B78_ovl3:
/* 0B35B8 80152B78 30EE0004 */  andi  $t6, $a3, 4
.L80152B7C_ovl3:
/* 0B35BC 80152B7C 51C0000F */  beql  $t6, $zero, .L80152BBC_ovl3
/* 0B35C0 80152B80 30EE0008 */   andi  $t6, $a3, 8
/* 0B35C4 80152B84 8C4F0000 */  lw    $t7, ($v0)
/* 0B35C8 80152B88 24010001 */  li    $at, 1
/* 0B35CC 80152B8C 51E1000B */  beql  $t7, $at, .L80152BBC_ovl3
/* 0B35D0 80152B90 30EE0008 */   andi  $t6, $a3, 8
/* 0B35D4 80152B94 8D580000 */  lw    $t8, ($t2)
/* 0B35D8 80152B98 AD400014 */  sw    $zero, 0x14($t2)
/* 0B35DC 80152B9C 0018CCC2 */  srl   $t9, $t8, 0x13
/* 0B35E0 80152BA0 95580000 */  lhu   $t8, ($t2)
/* 0B35E4 80152BA4 372D0040 */  ori   $t5, $t9, 0x40
/* 0B35E8 80152BA8 000D78C0 */  sll   $t7, $t5, 3
/* 0B35EC 80152BAC 33190007 */  andi  $t9, $t8, 7
/* 0B35F0 80152BB0 01F96825 */  or    $t5, $t7, $t9
/* 0B35F4 80152BB4 A54D0000 */  sh    $t5, ($t2)
/* 0B35F8 80152BB8 30EE0008 */  andi  $t6, $a3, 8
.L80152BBC_ovl3:
/* 0B35FC 80152BBC 51C00008 */  beql  $t6, $zero, .L80152BE0_ovl3
/* 0B3600 80152BC0 8D380000 */   lw    $t8, ($t1)
/* 0B3604 80152BC4 0C047503 */  jal   func_8011D40C
/* 0B3608 80152BC8 00000000 */   nop   
/* 0B360C 80152BCC 3C0C8013 */  lui   $t4, %hi(gPositionState) # $t4, 0x8013
/* 0B3610 80152BD0 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0B3614 80152BD4 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0B3618 80152BD8 258CE968 */  addiu $t4, %lo(gPositionState) # addiu $t4, $t4, -0x1698
.L80152BDC_ovl3:
/* 0B361C 80152BDC 8D380000 */  lw    $t8, ($t1)
.L80152BE0_ovl3:
/* 0B3620 80152BE0 C5880008 */  lwc1  $f8, 8($t4)
/* 0B3624 80152BE4 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosYArray) # $t3, 0x800e
/* 0B3628 80152BE8 256B2790 */  addiu $t3, %lo(gEntitiesNextPosYArray) # addiu $t3, $t3, 0x2790
/* 0B362C 80152BEC 00187880 */  sll   $t7, $t8, 2
/* 0B3630 80152BF0 016FC821 */  addu  $t9, $t3, $t7
/* 0B3634 80152BF4 E7280000 */  swc1  $f8, ($t9)
/* 0B3638 80152BF8 8D230000 */  lw    $v1, ($t1)
/* 0B363C 80152BFC 3C0D800F */  lui   $t5, 0x800f
/* 0B3640 80152C00 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0B3644 80152C04 00031880 */  sll   $v1, $v1, 2
/* 0B3648 80152C08 01A36821 */  addu  $t5, $t5, $v1
/* 0B364C 80152C0C 8DAD8920 */  lw    $t5, -0x76e0($t5)
/* 0B3650 80152C10 3C01800E */  lui   $at, 0x800e
/* 0B3654 80152C14 254ABCA0 */  addiu $t2, %lo(D_8012BCA0) # addiu $t2, $t2, -0x4360
/* 0B3658 80152C18 15A00013 */  bnez  $t5, .L80152C68_ovl3
/* 0B365C 80152C1C 00230821 */   addu  $at, $at, $v1
/* 0B3660 80152C20 44805000 */  mtc1  $zero, $f10
/* 0B3664 80152C24 C4303210 */  lwc1  $f16, 0x3210($at)
/* 0B3668 80152C28 3C01800E */  lui   $at, 0x800e
/* 0B366C 80152C2C 00230821 */  addu  $at, $at, $v1
/* 0B3670 80152C30 460A803E */  c.le.s $f16, $f10
/* 0B3674 80152C34 00000000 */  nop   
/* 0B3678 80152C38 4500000B */  bc1f  .L80152C68_ovl3
/* 0B367C 80152C3C 00000000 */   nop   
/* 0B3680 80152C40 44809000 */  mtc1  $zero, $f18
/* 0B3684 80152C44 C42464D0 */  lwc1  $f4, 0x64d0($at)
/* 0B3688 80152C48 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B368C 80152C4C 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B3690 80152C50 46049032 */  c.eq.s $f18, $f4
/* 0B3694 80152C54 00000000 */  nop   
/* 0B3698 80152C58 45010003 */  bc1t  .L80152C68_ovl3
/* 0B369C 80152C5C 00000000 */   nop   
/* 0B36A0 80152C60 8D0E00A0 */  lw    $t6, 0xa0($t0)
/* 0B36A4 80152C64 11C00005 */  beqz  $t6, .L80152C7C_ovl3
.L80152C68_ovl3:
/* 0B36A8 80152C68 3C088013 */   lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B36AC 80152C6C 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B36B0 80152C70 8D1800A0 */  lw    $t8, 0xa0($t0)
/* 0B36B4 80152C74 24010012 */  li    $at, 18
/* 0B36B8 80152C78 17010079 */  bne   $t8, $at, .L80152E60_ovl3
.L80152C7C_ovl3:
/* 0B36BC 80152C7C 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 0B36C0 80152C80 44813000 */  mtc1  $at, $f6
/* 0B36C4 80152C84 3C01800E */  lui   $at, 0x800e
/* 0B36C8 80152C88 00230821 */  addu  $at, $at, $v1
/* 0B36CC 80152C8C C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0B36D0 80152C90 46083032 */  c.eq.s $f6, $f8
/* 0B36D4 80152C94 00000000 */  nop   
/* 0B36D8 80152C98 45020004 */  bc1fl .L80152CAC_ovl3
/* 0B36DC 80152C9C C5820020 */   lwc1  $f2, 0x20($t4)
/* 0B36E0 80152CA0 10000002 */  b     .L80152CAC_ovl3
/* 0B36E4 80152CA4 C582001C */   lwc1  $f2, 0x1c($t4)
/* 0B36E8 80152CA8 C5820020 */  lwc1  $f2, 0x20($t4)
.L80152CAC_ovl3:
/* 0B36EC 80152CAC C58C0024 */  lwc1  $f12, 0x24($t4)
/* 0B36F0 80152CB0 0C00B5B8 */  jal   sinf
/* 0B36F4 80152CB4 E7A2005C */   swc1  $f2, 0x5c($sp)
/* 0B36F8 80152CB8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0B36FC 80152CBC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0B3700 80152CC0 C7A2005C */  lwc1  $f2, 0x5c($sp)
/* 0B3704 80152CC4 3C01800E */  lui   $at, 0x800e
/* 0B3708 80152CC8 8DF90000 */  lw    $t9, ($t7)
/* 0B370C 80152CCC 46020282 */  mul.s $f10, $f0, $f2
/* 0B3710 80152CD0 3C0C8013 */  lui   $t4, %hi(gPositionState) # $t4, 0x8013
/* 0B3714 80152CD4 00196880 */  sll   $t5, $t9, 2
/* 0B3718 80152CD8 002D0821 */  addu  $at, $at, $t5
/* 0B371C 80152CDC C43025D0 */  lwc1  $f16, 0x25d0($at)
/* 0B3720 80152CE0 258CE968 */  addiu $t4, %lo(gPositionState) # addiu $t4, $t4, -0x1698
/* 0B3724 80152CE4 C58C0024 */  lwc1  $f12, 0x24($t4)
/* 0B3728 80152CE8 46105480 */  add.s $f18, $f10, $f16
/* 0B372C 80152CEC E7B20044 */  swc1  $f18, 0x44($sp)
/* 0B3730 80152CF0 0C00D604 */  jal   cosf
/* 0B3734 80152CF4 E7B20050 */   swc1  $f18, 0x50($sp)
/* 0B3738 80152CF8 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0B373C 80152CFC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0B3740 80152D00 C7A2005C */  lwc1  $f2, 0x5c($sp)
/* 0B3744 80152D04 3C01800E */  lui   $at, 0x800e
/* 0B3748 80152D08 8D2E0000 */  lw    $t6, ($t1)
/* 0B374C 80152D0C 46020102 */  mul.s $f4, $f0, $f2
/* 0B3750 80152D10 8FA30064 */  lw    $v1, 0x64($sp)
/* 0B3754 80152D14 000EC080 */  sll   $t8, $t6, 2
/* 0B3758 80152D18 00380821 */  addu  $at, $at, $t8
/* 0B375C 80152D1C C4262950 */  lwc1  $f6, 0x2950($at)
/* 0B3760 80152D20 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosYArray) # $t3, 0x800e
/* 0B3764 80152D24 256B2790 */  addiu $t3, %lo(gEntitiesNextPosYArray) # addiu $t3, $t3, 0x2790
/* 0B3768 80152D28 46062200 */  add.s $f8, $f4, $f6
/* 0B376C 80152D2C 27A40050 */  addiu $a0, $sp, 0x50
/* 0B3770 80152D30 27A50044 */  addiu $a1, $sp, 0x44
/* 0B3774 80152D34 00003025 */  move  $a2, $zero
/* 0B3778 80152D38 E7A8004C */  swc1  $f8, 0x4c($sp)
/* 0B377C 80152D3C E7A80058 */  swc1  $f8, 0x58($sp)
/* 0B3780 80152D40 8D2F0000 */  lw    $t7, ($t1)
/* 0B3784 80152D44 8C620004 */  lw    $v0, 4($v1)
/* 0B3788 80152D48 27A70038 */  addiu $a3, $sp, 0x38
/* 0B378C 80152D4C 000FC880 */  sll   $t9, $t7, 2
/* 0B3790 80152D50 01796821 */  addu  $t5, $t3, $t9
/* 0B3794 80152D54 C5AA0000 */  lwc1  $f10, ($t5)
/* 0B3798 80152D58 C4500000 */  lwc1  $f16, ($v0)
/* 0B379C 80152D5C C4440008 */  lwc1  $f4, 8($v0)
/* 0B37A0 80152D60 46105480 */  add.s $f18, $f10, $f16
/* 0B37A4 80152D64 46049180 */  add.s $f6, $f18, $f4
/* 0B37A8 80152D68 E7A60048 */  swc1  $f6, 0x48($sp)
/* 0B37AC 80152D6C 8D2E0000 */  lw    $t6, ($t1)
/* 0B37B0 80152D70 8C620004 */  lw    $v0, 4($v1)
/* 0B37B4 80152D74 000EC080 */  sll   $t8, $t6, 2
/* 0B37B8 80152D78 01787821 */  addu  $t7, $t3, $t8
/* 0B37BC 80152D7C C5E80000 */  lwc1  $f8, ($t7)
/* 0B37C0 80152D80 C44A0000 */  lwc1  $f10, ($v0)
/* 0B37C4 80152D84 C4520004 */  lwc1  $f18, 4($v0)
/* 0B37C8 80152D88 AFA00018 */  sw    $zero, 0x18($sp)
/* 0B37CC 80152D8C 460A4400 */  add.s $f16, $f8, $f10
/* 0B37D0 80152D90 AFA00014 */  sw    $zero, 0x14($sp)
/* 0B37D4 80152D94 AFA00010 */  sw    $zero, 0x10($sp)
/* 0B37D8 80152D98 46128100 */  add.s $f4, $f16, $f18
/* 0B37DC 80152D9C 0C0412DC */  jal   func_80104B70
/* 0B37E0 80152DA0 E7A40054 */   swc1  $f4, 0x54($sp)
/* 0B37E4 80152DA4 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B37E8 80152DA8 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0B37EC 80152DAC 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosYArray) # $t3, 0x800e
/* 0B37F0 80152DB0 3C0C8013 */  lui   $t4, %hi(gPositionState) # $t4, 0x8013
/* 0B37F4 80152DB4 258CE968 */  addiu $t4, %lo(gPositionState) # addiu $t4, $t4, -0x1698
/* 0B37F8 80152DB8 256B2790 */  addiu $t3, %lo(gEntitiesNextPosYArray) # addiu $t3, $t3, 0x2790
/* 0B37FC 80152DBC 254ABCA0 */  addiu $t2, %lo(D_8012BCA0) # addiu $t2, $t2, -0x4360
/* 0B3800 80152DC0 10400027 */  beqz  $v0, .L80152E60_ovl3
/* 0B3804 80152DC4 2508E7C0 */   addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B3808 80152DC8 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0B380C 80152DCC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0B3810 80152DD0 8FAD0064 */  lw    $t5, 0x64($sp)
/* 0B3814 80152DD4 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* 0B3818 80152DD8 8D230000 */  lw    $v1, ($t1)
/* 0B381C 80152DDC 8DAE0004 */  lw    $t6, 4($t5)
/* 0B3820 80152DE0 3C01800F */  lui   $at, 0x800f
/* 0B3824 80152DE4 00031880 */  sll   $v1, $v1, 2
/* 0B3828 80152DE8 0163C821 */  addu  $t9, $t3, $v1
/* 0B382C 80152DEC C7280000 */  lwc1  $f8, ($t9)
/* 0B3830 80152DF0 C5D00000 */  lwc1  $f16, ($t6)
/* 0B3834 80152DF4 00230821 */  addu  $at, $at, $v1
/* 0B3838 80152DF8 46083281 */  sub.s $f10, $f6, $f8
/* 0B383C 80152DFC 24180001 */  li    $t8, 1
/* 0B3840 80152E00 4610503C */  c.lt.s $f10, $f16
/* 0B3844 80152E04 00000000 */  nop   
/* 0B3848 80152E08 45020016 */  bc1fl .L80152E64_ovl3
/* 0B384C 80152E0C 8D420000 */   lw    $v0, ($t2)
/* 0B3850 80152E10 AC388920 */  sw    $t8, -0x76e0($at)
/* 0B3854 80152E14 8D4F0000 */  lw    $t7, ($t2)
/* 0B3858 80152E18 AD400008 */  sw    $zero, 8($t2)
/* 0B385C 80152E1C C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 0B3860 80152E20 000FCCC2 */  srl   $t9, $t7, 0x13
/* 0B3864 80152E24 954F0000 */  lhu   $t7, ($t2)
/* 0B3868 80152E28 372D0200 */  ori   $t5, $t9, 0x200
/* 0B386C 80152E2C 000DC0C0 */  sll   $t8, $t5, 3
/* 0B3870 80152E30 31F90007 */  andi  $t9, $t7, 7
/* 0B3874 80152E34 03196825 */  or    $t5, $t8, $t9
/* 0B3878 80152E38 A54D0000 */  sh    $t5, ($t2)
/* 0B387C 80152E3C 8D2E0000 */  lw    $t6, ($t1)
/* 0B3880 80152E40 000E7880 */  sll   $t7, $t6, 2
/* 0B3884 80152E44 016FC021 */  addu  $t8, $t3, $t7
/* 0B3888 80152E48 E7120000 */  swc1  $f18, ($t8)
/* 0B388C 80152E4C 8D390000 */  lw    $t9, ($t1)
/* 0B3890 80152E50 00196880 */  sll   $t5, $t9, 2
/* 0B3894 80152E54 016D7021 */  addu  $t6, $t3, $t5
/* 0B3898 80152E58 C5C40000 */  lwc1  $f4, ($t6)
/* 0B389C 80152E5C E5840008 */  swc1  $f4, 8($t4)
.L80152E60_ovl3:
/* 0B38A0 80152E60 8D420000 */  lw    $v0, ($t2)
.L80152E64_ovl3:
/* 0B38A4 80152E64 8D430014 */  lw    $v1, 0x14($t2)
/* 0B38A8 80152E68 000214C2 */  srl   $v0, $v0, 0x13
/* 0B38AC 80152E6C 304501C0 */  andi  $a1, $v0, 0x1c0
/* 0B38B0 80152E70 30460E00 */  andi  $a2, $v0, 0xe00
/* 0B38B4 80152E74 30470007 */  andi  $a3, $v0, 7
/* 0B38B8 80152E78 30490038 */  andi  $t1, $v0, 0x38
/* 0B38BC 80152E7C 00A62025 */  or    $a0, $a1, $a2
/* 0B38C0 80152E80 00877825 */  or    $t7, $a0, $a3
/* 0B38C4 80152E84 00E97025 */  or    $t6, $a3, $t1
/* 0B38C8 80152E88 01E9C025 */  or    $t8, $t7, $t1
/* 0B38CC 80152E8C AD0500E4 */  sw    $a1, 0xe4($t0)
/* 0B38D0 80152E90 AD0600E8 */  sw    $a2, 0xe8($t0)
/* 0B38D4 80152E94 AD0700EC */  sw    $a3, 0xec($t0)
/* 0B38D8 80152E98 AD0900F0 */  sw    $t1, 0xf0($t0)
/* 0B38DC 80152E9C AD0400F8 */  sw    $a0, 0xf8($t0)
/* 0B38E0 80152EA0 AD0E00FC */  sw    $t6, 0xfc($t0)
/* 0B38E4 80152EA4 1060000B */  beqz  $v1, .L80152ED4_ovl3
/* 0B38E8 80152EA8 AD1800F4 */   sw    $t8, 0xf4($t0)
/* 0B38EC 80152EAC 50A0000A */  beql  $a1, $zero, .L80152ED8_ovl3
/* 0B38F0 80152EB0 A5000100 */   sh    $zero, 0x100($t0)
/* 0B38F4 80152EB4 94790012 */  lhu   $t9, 0x12($v1)
/* 0B38F8 80152EB8 8D4E0018 */  lw    $t6, 0x18($t2)
/* 0B38FC 80152EBC A5190100 */  sh    $t9, 0x100($t0)
/* 0B3900 80152EC0 946D000E */  lhu   $t5, 0xe($v1)
/* 0B3904 80152EC4 AD030110 */  sw    $v1, 0x110($t0)
/* 0B3908 80152EC8 AD0E0120 */  sw    $t6, 0x120($t0)
/* 0B390C 80152ECC 10000003 */  b     .L80152EDC_ovl3
/* 0B3910 80152ED0 A50D0108 */   sh    $t5, 0x108($t0)
.L80152ED4_ovl3:
/* 0B3914 80152ED4 A5000100 */  sh    $zero, 0x100($t0)
.L80152ED8_ovl3:
/* 0B3918 80152ED8 A5000108 */  sh    $zero, 0x108($t0)
.L80152EDC_ovl3:
/* 0B391C 80152EDC 8D430008 */  lw    $v1, 8($t2)
/* 0B3920 80152EE0 5060000C */  beql  $v1, $zero, .L80152F14_ovl3
/* 0B3924 80152EE4 A5000102 */   sh    $zero, 0x102($t0)
/* 0B3928 80152EE8 50C0000A */  beql  $a2, $zero, .L80152F14_ovl3
/* 0B392C 80152EEC A5000102 */   sh    $zero, 0x102($t0)
/* 0B3930 80152EF0 946F0012 */  lhu   $t7, 0x12($v1)
/* 0B3934 80152EF4 8D59000C */  lw    $t9, 0xc($t2)
/* 0B3938 80152EF8 A50F0102 */  sh    $t7, 0x102($t0)
/* 0B393C 80152EFC 9478000E */  lhu   $t8, 0xe($v1)
/* 0B3940 80152F00 AD030114 */  sw    $v1, 0x114($t0)
/* 0B3944 80152F04 AD190124 */  sw    $t9, 0x124($t0)
/* 0B3948 80152F08 10000003 */  b     .L80152F18_ovl3
/* 0B394C 80152F0C A518010A */   sh    $t8, 0x10a($t0)
/* 0B3950 80152F10 A5000102 */  sh    $zero, 0x102($t0)
.L80152F14_ovl3:
/* 0B3954 80152F14 A500010A */  sh    $zero, 0x10a($t0)
.L80152F18_ovl3:
/* 0B3958 80152F18 8D440020 */  lw    $a0, 0x20($t2)
/* 0B395C 80152F1C 1080000B */  beqz  $a0, .L80152F4C_ovl3
/* 0B3960 80152F20 00801825 */   move  $v1, $a0
/* 0B3964 80152F24 50E0000A */  beql  $a3, $zero, .L80152F50_ovl3
/* 0B3968 80152F28 A5000104 */   sh    $zero, 0x104($t0)
/* 0B396C 80152F2C 946D0012 */  lhu   $t5, 0x12($v1)
/* 0B3970 80152F30 8D4F0024 */  lw    $t7, 0x24($t2)
/* 0B3974 80152F34 A50D0104 */  sh    $t5, 0x104($t0)
/* 0B3978 80152F38 946E000E */  lhu   $t6, 0xe($v1)
/* 0B397C 80152F3C AD030118 */  sw    $v1, 0x118($t0)
/* 0B3980 80152F40 AD0F0128 */  sw    $t7, 0x128($t0)
/* 0B3984 80152F44 10000003 */  b     .L80152F54_ovl3
/* 0B3988 80152F48 A50E010C */   sh    $t6, 0x10c($t0)
.L80152F4C_ovl3:
/* 0B398C 80152F4C A5000104 */  sh    $zero, 0x104($t0)
.L80152F50_ovl3:
/* 0B3990 80152F50 A500010C */  sh    $zero, 0x10c($t0)
.L80152F54_ovl3:
/* 0B3994 80152F54 8D43002C */  lw    $v1, 0x2c($t2)
/* 0B3998 80152F58 5060000C */  beql  $v1, $zero, .L80152F8C_ovl3
/* 0B399C 80152F5C A5000106 */   sh    $zero, 0x106($t0)
/* 0B39A0 80152F60 5120000A */  beql  $t1, $zero, .L80152F8C_ovl3
/* 0B39A4 80152F64 A5000106 */   sh    $zero, 0x106($t0)
/* 0B39A8 80152F68 94780012 */  lhu   $t8, 0x12($v1)
/* 0B39AC 80152F6C 8D4D0030 */  lw    $t5, 0x30($t2)
/* 0B39B0 80152F70 A5180106 */  sh    $t8, 0x106($t0)
/* 0B39B4 80152F74 9479000E */  lhu   $t9, 0xe($v1)
/* 0B39B8 80152F78 AD03011C */  sw    $v1, 0x11c($t0)
/* 0B39BC 80152F7C AD0D012C */  sw    $t5, 0x12c($t0)
/* 0B39C0 80152F80 10000003 */  b     .L80152F90_ovl3
/* 0B39C4 80152F84 A519010E */   sh    $t9, 0x10e($t0)
/* 0B39C8 80152F88 A5000106 */  sh    $zero, 0x106($t0)
.L80152F8C_ovl3:
/* 0B39CC 80152F8C A500010E */  sh    $zero, 0x10e($t0)
.L80152F90_ovl3:
/* 0B39D0 80152F90 50E0000E */  beql  $a3, $zero, .L80152FCC_ovl3
/* 0B39D4 80152F94 8D0F00F0 */   lw    $t7, 0xf0($t0)
/* 0B39D8 80152F98 0C043709 */  jal   func_8010DC24
/* 0B39DC 80152F9C 00000000 */   nop   
/* 0B39E0 80152FA0 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B39E4 80152FA4 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0B39E8 80152FA8 254ABCA0 */  addiu $t2, %lo(D_8012BCA0) # addiu $t2, $t2, -0x4360
/* 0B39EC 80152FAC 10400006 */  beqz  $v0, .L80152FC8_ovl3
/* 0B39F0 80152FB0 2508E7C0 */   addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B39F4 80152FB4 3C010004 */  lui   $at, 4
/* 0B39F8 80152FB8 00417025 */  or    $t6, $v0, $at
/* 0B39FC 80152FBC 3C018013 */  lui   $at, %hi(D_8012E900) # $at, 0x8013
/* 0B3A00 80152FC0 10000031 */  b     .L80153088_ovl3
/* 0B3A04 80152FC4 AC2EE900 */   sw    $t6, %lo(D_8012E900)($at)
.L80152FC8_ovl3:
/* 0B3A08 80152FC8 8D0F00F0 */  lw    $t7, 0xf0($t0)
.L80152FCC_ovl3:
/* 0B3A0C 80152FCC 51E0000E */  beql  $t7, $zero, .L80153008_ovl3
/* 0B3A10 80152FD0 8D1900E4 */   lw    $t9, 0xe4($t0)
/* 0B3A14 80152FD4 0C043709 */  jal   func_8010DC24
/* 0B3A18 80152FD8 8D44002C */   lw    $a0, 0x2c($t2)
/* 0B3A1C 80152FDC 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B3A20 80152FE0 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0B3A24 80152FE4 254ABCA0 */  addiu $t2, %lo(D_8012BCA0) # addiu $t2, $t2, -0x4360
/* 0B3A28 80152FE8 10400006 */  beqz  $v0, .L80153004_ovl3
/* 0B3A2C 80152FEC 2508E7C0 */   addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B3A30 80152FF0 3C010008 */  lui   $at, 8
/* 0B3A34 80152FF4 0041C025 */  or    $t8, $v0, $at
/* 0B3A38 80152FF8 3C018013 */  lui   $at, %hi(D_8012E900) # $at, 0x8013
/* 0B3A3C 80152FFC 10000022 */  b     .L80153088_ovl3
/* 0B3A40 80153000 AC38E900 */   sw    $t8, %lo(D_8012E900)($at)
.L80153004_ovl3:
/* 0B3A44 80153004 8D1900E4 */  lw    $t9, 0xe4($t0)
.L80153008_ovl3:
/* 0B3A48 80153008 5320000E */  beql  $t9, $zero, .L80153044_ovl3
/* 0B3A4C 8015300C 8D0E00E8 */   lw    $t6, 0xe8($t0)
/* 0B3A50 80153010 0C043709 */  jal   func_8010DC24
/* 0B3A54 80153014 8D440014 */   lw    $a0, 0x14($t2)
/* 0B3A58 80153018 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B3A5C 8015301C 3C0A8013 */  lui   $t2, %hi(D_8012BCA0) # $t2, 0x8013
/* 0B3A60 80153020 254ABCA0 */  addiu $t2, %lo(D_8012BCA0) # addiu $t2, $t2, -0x4360
/* 0B3A64 80153024 10400006 */  beqz  $v0, .L80153040_ovl3
/* 0B3A68 80153028 2508E7C0 */   addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B3A6C 8015302C 3C010001 */  lui   $at, 1
/* 0B3A70 80153030 00416825 */  or    $t5, $v0, $at
/* 0B3A74 80153034 3C018013 */  lui   $at, %hi(D_8012E900) # $at, 0x8013
/* 0B3A78 80153038 10000013 */  b     .L80153088_ovl3
/* 0B3A7C 8015303C AC2DE900 */   sw    $t5, %lo(D_8012E900)($at)
.L80153040_ovl3:
/* 0B3A80 80153040 8D0E00E8 */  lw    $t6, 0xe8($t0)
.L80153044_ovl3:
/* 0B3A84 80153044 51C0000C */  beql  $t6, $zero, .L80153078_ovl3
/* 0B3A88 80153048 91180005 */   lbu   $t8, 5($t0)
/* 0B3A8C 8015304C 0C043709 */  jal   func_8010DC24
/* 0B3A90 80153050 8D440008 */   lw    $a0, 8($t2)
/* 0B3A94 80153054 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0B3A98 80153058 10400006 */  beqz  $v0, .L80153074_ovl3
/* 0B3A9C 8015305C 2508E7C0 */   addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0B3AA0 80153060 3C010002 */  lui   $at, 2
/* 0B3AA4 80153064 00417825 */  or    $t7, $v0, $at
/* 0B3AA8 80153068 3C018013 */  lui   $at, %hi(D_8012E900) # $at, 0x8013
/* 0B3AAC 8015306C 10000006 */  b     .L80153088_ovl3
/* 0B3AB0 80153070 AC2FE900 */   sw    $t7, %lo(D_8012E900)($at)
.L80153074_ovl3:
/* 0B3AB4 80153074 91180005 */  lbu   $t8, 5($t0)
.L80153078_ovl3:
/* 0B3AB8 80153078 24010016 */  li    $at, 22
/* 0B3ABC 8015307C 53010003 */  beql  $t8, $at, .L8015308C_ovl3
/* 0B3AC0 80153080 8FB90064 */   lw    $t9, 0x64($sp)
/* 0B3AC4 80153084 AD000140 */  sw    $zero, 0x140($t0)
.L80153088_ovl3:
/* 0B3AC8 80153088 8FB90064 */  lw    $t9, 0x64($sp)
.L8015308C_ovl3:
/* 0B3ACC 8015308C 0C054C2F */  jal   func_801530BC_ovl3
/* 0B3AD0 80153090 8F240004 */   lw    $a0, 4($t9)
/* 0B3AD4 80153094 0C054D9A */  jal   func_80153668_ovl3
/* 0B3AD8 80153098 00000000 */   nop   
/* 0B3ADC 8015309C 0C054E02 */  jal   func_80153808_ovl3
/* 0B3AE0 801530A0 00000000 */   nop   
/* 0B3AE4 801530A4 0C054E32 */  jal   func_801538C8_ovl3
/* 0B3AE8 801530A8 00000000 */   nop   
/* 0B3AEC 801530AC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0B3AF0 801530B0 27BD0070 */  addiu $sp, $sp, 0x70
/* 0B3AF4 801530B4 03E00008 */  jr    $ra
/* 0B3AF8 801530B8 00000000 */   nop   
.type func_801529C0_ovl3, @function
.size func_801529C0_ovl3, . - func_801529C0_ovl3
