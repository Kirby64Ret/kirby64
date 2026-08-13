nonmatching func_801E3678_ovl15, 0x4E0

glabel func_801E3678_ovl15
    /* 20E1D8 801E3678 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 20E1DC 801E367C AFB20030 */  sw         $s2, 0x30($sp)
    /* 20E1E0 801E3680 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* 20E1E4 801E3684 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* 20E1E8 801E3688 8E420000 */  lw         $v0, 0x0($s2)
    /* 20E1EC 801E368C AFBF0034 */  sw         $ra, 0x34($sp)
    /* 20E1F0 801E3690 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 20E1F4 801E3694 AFB00028 */  sw         $s0, 0x28($sp)
    /* 20E1F8 801E3698 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 20E1FC 801E369C F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 20E200 801E36A0 AFA40038 */  sw         $a0, 0x38($sp)
    /* 20E204 801E36A4 8C430000 */  lw         $v1, 0x0($v0)
    /* 20E208 801E36A8 3C05800E */  lui        $a1, %hi(D_800E1B50)
    /* 20E20C 801E36AC 24A51B50 */  addiu      $a1, $a1, %lo(D_800E1B50)
    /* 20E210 801E36B0 00031880 */  sll        $v1, $v1, 2
    /* 20E214 801E36B4 00A37021 */  addu       $t6, $a1, $v1
    /* 20E218 801E36B8 3C0F800B */  lui        $t7, %hi(func_800B7560)
    /* 20E21C 801E36BC 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 20E220 801E36C0 8DD10000 */  lw         $s1, 0x0($t6)
    /* 20E224 801E36C4 00230821 */  addu       $at, $at, $v1
    /* 20E228 801E36C8 25EF7560 */  addiu      $t7, $t7, %lo(func_800B7560)
    /* 20E22C 801E36CC AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
    /* 20E230 801E36D0 8C590000 */  lw         $t9, 0x0($v0)
    /* 20E234 801E36D4 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 20E238 801E36D8 3C18801E */  lui        $t8, %hi(func_801E3B58_ovl15)
    /* 20E23C 801E36DC 00194080 */  sll        $t0, $t9, 2
    /* 20E240 801E36E0 00280821 */  addu       $at, $at, $t0
    /* 20E244 801E36E4 27183B58 */  addiu      $t8, $t8, %lo(func_801E3B58_ovl15)
    /* 20E248 801E36E8 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
    /* 20E24C 801E36EC 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 20E250 801E36F0 3C09801E */  lui        $t1, %hi(D_801DA04C)
    /* 20E254 801E36F4 2529A04C */  addiu      $t1, $t1, %lo(D_801DA04C)
    /* 20E258 801E36F8 000A5880 */  sll        $t3, $t2, 2
    /* 20E25C 801E36FC 00AB6021 */  addu       $t4, $a1, $t3
    /* 20E260 801E3700 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 20E264 801E3704 0C02CCFD */  jal        func_800B33F4
    /* 20E268 801E3708 ADA9008C */   sw        $t1, 0x8C($t5)
    /* 20E26C 801E370C 8E420000 */  lw         $v0, 0x0($s2)
    /* 20E270 801E3710 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 20E274 801E3714 3C040001 */  lui        $a0, (0x10091 >> 16)
    /* 20E278 801E3718 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 20E27C 801E371C 34840091 */  ori        $a0, $a0, (0x10091 & 0xFFFF)
    /* 20E280 801E3720 24050023 */  addiu      $a1, $zero, 0x23
    /* 20E284 801E3724 000E7880 */  sll        $t7, $t6, 2
    /* 20E288 801E3728 002F0821 */  addu       $at, $at, $t7
    /* 20E28C 801E372C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* 20E290 801E3730 8C590000 */  lw         $t9, 0x0($v0)
    /* 20E294 801E3734 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 20E298 801E3738 24060010 */  addiu      $a2, $zero, 0x10
    /* 20E29C 801E373C 0019C080 */  sll        $t8, $t9, 2
    /* 20E2A0 801E3740 00380821 */  addu       $at, $at, $t8
    /* 20E2A4 801E3744 AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
    /* 20E2A8 801E3748 8C480000 */  lw         $t0, 0x0($v0)
    /* 20E2AC 801E374C 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 20E2B0 801E3750 00085080 */  sll        $t2, $t0, 2
    /* 20E2B4 801E3754 002A0821 */  addu       $at, $at, $t2
    /* 20E2B8 801E3758 0C02A619 */  jal        func_800A9864
    /* 20E2BC 801E375C AC20A360 */   sw        $zero, %lo(D_800EA360)($at)
    /* 20E2C0 801E3760 3C040001 */  lui        $a0, (0x10534 >> 16)
    /* 20E2C4 801E3764 0C02A806 */  jal        func_800AA018
    /* 20E2C8 801E3768 34840534 */   ori       $a0, $a0, (0x10534 & 0xFFFF)
    /* 20E2CC 801E376C 3C10800D */  lui        $s0, %hi(D_800D7098)
    /* 20E2D0 801E3770 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
    /* 20E2D4 801E3774 8E0B0024 */  lw         $t3, 0x24($s0)
    /* 20E2D8 801E3778 5D600007 */  bgtzl      $t3, .L801E3798_ovl15
    /* 20E2DC 801E377C 8E420000 */   lw        $v0, 0x0($s2)
  .L801E3780_ovl15:
    /* 20E2E0 801E3780 0C002DAF */  jal        ohSleep
    /* 20E2E4 801E3784 24040001 */   addiu     $a0, $zero, 0x1
    /* 20E2E8 801E3788 8E0C0024 */  lw         $t4, 0x24($s0)
    /* 20E2EC 801E378C 1980FFFC */  blez       $t4, .L801E3780_ovl15
    /* 20E2F0 801E3790 00000000 */   nop
    /* 20E2F4 801E3794 8E420000 */  lw         $v0, 0x0($s2)
  .L801E3798_ovl15:
    /* 20E2F8 801E3798 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 20E2FC 801E379C 24090001 */  addiu      $t1, $zero, 0x1
    /* 20E300 801E37A0 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 20E304 801E37A4 3C040001 */  lui        $a0, (0x10532 >> 16)
    /* 20E308 801E37A8 34840532 */  ori        $a0, $a0, (0x10532 & 0xFFFF)
    /* 20E30C 801E37AC 000D7080 */  sll        $t6, $t5, 2
    /* 20E310 801E37B0 002E0821 */  addu       $at, $at, $t6
    /* 20E314 801E37B4 AC2998E0 */  sw         $t1, %lo(D_800E98E0)($at)
    /* 20E318 801E37B8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 20E31C 801E37BC 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 20E320 801E37C0 44812000 */  mtc1       $at, $f4
    /* 20E324 801E37C4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 20E328 801E37C8 000FC880 */  sll        $t9, $t7, 2
    /* 20E32C 801E37CC 00390821 */  addu       $at, $at, $t9
    /* 20E330 801E37D0 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
    /* 20E334 801E37D4 8C580000 */  lw         $t8, 0x0($v0)
    /* 20E338 801E37D8 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
    /* 20E33C 801E37DC 44813000 */  mtc1       $at, $f6
    /* 20E340 801E37E0 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 20E344 801E37E4 00184080 */  sll        $t0, $t8, 2
    /* 20E348 801E37E8 00280821 */  addu       $at, $at, $t0
    /* 20E34C 801E37EC 0C02A806 */  jal        func_800AA018
    /* 20E350 801E37F0 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
    /* 20E354 801E37F4 8E4A0000 */  lw         $t2, 0x0($s2)
    /* 20E358 801E37F8 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
    /* 20E35C 801E37FC 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
    /* 20E360 801E3800 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 20E364 801E3804 3C014448 */  lui        $at, (0x44480000 >> 16)
    /* 20E368 801E3808 4481A000 */  mtc1       $at, $f20
    /* 20E36C 801E380C 000B6080 */  sll        $t4, $t3, 2
    /* 20E370 801E3810 020C6821 */  addu       $t5, $s0, $t4
    /* 20E374 801E3814 C5A80000 */  lwc1       $f8, 0x0($t5)
    /* 20E378 801E3818 4614403C */  c.lt.s     $f8, $f20
    /* 20E37C 801E381C 00000000 */  nop
    /* 20E380 801E3820 4500000C */  bc1f       .L801E3854_ovl15
    /* 20E384 801E3824 00000000 */   nop
  .L801E3828_ovl15:
    /* 20E388 801E3828 0C002DAF */  jal        ohSleep
    /* 20E38C 801E382C 24040001 */   addiu     $a0, $zero, 0x1
    /* 20E390 801E3830 8E490000 */  lw         $t1, 0x0($s2)
    /* 20E394 801E3834 8D2E0000 */  lw         $t6, 0x0($t1)
    /* 20E398 801E3838 000E7880 */  sll        $t7, $t6, 2
    /* 20E39C 801E383C 020FC821 */  addu       $t9, $s0, $t7
    /* 20E3A0 801E3840 C72A0000 */  lwc1       $f10, 0x0($t9)
    /* 20E3A4 801E3844 4614503C */  c.lt.s     $f10, $f20
    /* 20E3A8 801E3848 00000000 */  nop
    /* 20E3AC 801E384C 4501FFF6 */  bc1t       .L801E3828_ovl15
    /* 20E3B0 801E3850 00000000 */   nop
  .L801E3854_ovl15:
    /* 20E3B4 801E3854 0C02CCFD */  jal        func_800B33F4
    /* 20E3B8 801E3858 00000000 */   nop
    /* 20E3BC 801E385C 8E580000 */  lw         $t8, 0x0($s2)
    /* 20E3C0 801E3860 3C04800F */  lui        $a0, %hi(D_800E9AA0)
    /* 20E3C4 801E3864 8F080000 */  lw         $t0, 0x0($t8)
    /* 20E3C8 801E3868 00085080 */  sll        $t2, $t0, 2
    /* 20E3CC 801E386C 008A2021 */  addu       $a0, $a0, $t2
    /* 20E3D0 801E3870 8C849AA0 */  lw         $a0, %lo(D_800E9AA0)($a0)
    /* 20E3D4 801E3874 000420C0 */  sll        $a0, $a0, 3
    /* 20E3D8 801E3878 0C002DAF */  jal        ohSleep
    /* 20E3DC 801E387C 24840001 */   addiu     $a0, $a0, 0x1
    /* 20E3E0 801E3880 8E420000 */  lw         $v0, 0x0($s2)
    /* 20E3E4 801E3884 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 20E3E8 801E3888 24090001 */  addiu      $t1, $zero, 0x1
    /* 20E3EC 801E388C 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 20E3F0 801E3890 3C19800F */  lui        $t9, %hi(D_800E9C60)
    /* 20E3F4 801E3894 3C08800E */  lui        $t0, %hi(D_800E0D50)
    /* 20E3F8 801E3898 000B6080 */  sll        $t4, $t3, 2
    /* 20E3FC 801E389C 020C6821 */  addu       $t5, $s0, $t4
    /* 20E400 801E38A0 E5B40000 */  swc1       $f20, 0x0($t5)
    /* 20E404 801E38A4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 20E408 801E38A8 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
    /* 20E40C 801E38AC 248425D0 */  addiu      $a0, $a0, %lo(gEntitiesNextPosXArray)
    /* 20E410 801E38B0 000E7880 */  sll        $t7, $t6, 2
    /* 20E414 801E38B4 002F0821 */  addu       $at, $at, $t7
    /* 20E418 801E38B8 AC29A360 */  sw         $t1, %lo(D_800EA360)($at)
    /* 20E41C 801E38BC 8C430000 */  lw         $v1, 0x0($v0)
    /* 20E420 801E38C0 3C01801E */  lui        $at, %hi(D_801E66F4_ovl15)
    /* 20E424 801E38C4 44800000 */  mtc1       $zero, $f0
    /* 20E428 801E38C8 00031880 */  sll        $v1, $v1, 2
    /* 20E42C 801E38CC 0323C821 */  addu       $t9, $t9, $v1
    /* 20E430 801E38D0 01034021 */  addu       $t0, $t0, $v1
    /* 20E434 801E38D4 8D080D50 */  lw         $t0, %lo(D_800E0D50)($t0)
    /* 20E438 801E38D8 8F399C60 */  lw         $t9, %lo(D_800E9C60)($t9)
    /* 20E43C 801E38DC 00836021 */  addu       $t4, $a0, $v1
    /* 20E440 801E38E0 00085080 */  sll        $t2, $t0, 2
    /* 20E444 801E38E4 0019C080 */  sll        $t8, $t9, 2
    /* 20E448 801E38E8 00380821 */  addu       $at, $at, $t8
    /* 20E44C 801E38EC 008A5821 */  addu       $t3, $a0, $t2
    /* 20E450 801E38F0 C5720000 */  lwc1       $f18, 0x0($t3)
    /* 20E454 801E38F4 C43066F4 */  lwc1       $f16, %lo(D_801E66F4_ovl15)($at)
    /* 20E458 801E38F8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 20E45C 801E38FC 46128100 */  add.s      $f4, $f16, $f18
    /* 20E460 801E3900 E5840000 */  swc1       $f4, 0x0($t4)
    /* 20E464 801E3904 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 20E468 801E3908 000D7080 */  sll        $t6, $t5, 2
    /* 20E46C 801E390C 002E0821 */  addu       $at, $at, $t6
    /* 20E470 801E3910 E4202950 */  swc1       $f0, %lo(gEntitiesNextPosZArray)($at)
    /* 20E474 801E3914 8C490000 */  lw         $t1, 0x0($v0)
    /* 20E478 801E3918 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
    /* 20E47C 801E391C 44813000 */  mtc1       $at, $f6
    /* 20E480 801E3920 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 20E484 801E3924 00097880 */  sll        $t7, $t1, 2
    /* 20E488 801E3928 002F0821 */  addu       $at, $at, $t7
    /* 20E48C 801E392C E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
    /* 20E490 801E3930 8C590000 */  lw         $t9, 0x0($v0)
    /* 20E494 801E3934 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 20E498 801E3938 0019C080 */  sll        $t8, $t9, 2
    /* 20E49C 801E393C 00380821 */  addu       $at, $at, $t8
    /* 20E4A0 801E3940 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
    /* 20E4A4 801E3944 8C480000 */  lw         $t0, 0x0($v0)
    /* 20E4A8 801E3948 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 20E4AC 801E394C 44814000 */  mtc1       $at, $f8
    /* 20E4B0 801E3950 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 20E4B4 801E3954 00085080 */  sll        $t2, $t0, 2
    /* 20E4B8 801E3958 002A0821 */  addu       $at, $at, $t2
    /* 20E4BC 801E395C 0C066E6C */  jal        func_8019B9B0_ovl7
    /* 20E4C0 801E3960 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
    /* 20E4C4 801E3964 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* 20E4C8 801E3968 4481B000 */  mtc1       $at, $f22
    /* 20E4CC 801E396C 3C01C47A */  lui        $at, (0xC47A0000 >> 16)
    /* 20E4D0 801E3970 44815000 */  mtc1       $at, $f10
    /* 20E4D4 801E3974 8E2B0080 */  lw         $t3, 0x80($s1)
    /* 20E4D8 801E3978 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 20E4DC 801E397C 44818000 */  mtc1       $at, $f16
    /* 20E4E0 801E3980 E56A0018 */  swc1       $f10, 0x18($t3)
    /* 20E4E4 801E3984 8E2C0080 */  lw         $t4, 0x80($s1)
    /* 20E4E8 801E3988 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 20E4EC 801E398C E5900010 */  swc1       $f16, 0x10($t4)
    /* 20E4F0 801E3990 8E220080 */  lw         $v0, 0x80($s1)
    /* 20E4F4 801E3994 C4520010 */  lwc1       $f18, 0x10($v0)
    /* 20E4F8 801E3998 4616903C */  c.lt.s     $f18, $f22
    /* 20E4FC 801E399C 00000000 */  nop
    /* 20E500 801E39A0 45020010 */  bc1fl      .L801E39E4_ovl15
    /* 20E504 801E39A4 E4560010 */   swc1      $f22, 0x10($v0)
    /* 20E508 801E39A8 4481A000 */  mtc1       $at, $f20
    /* 20E50C 801E39AC 00000000 */  nop
  .L801E39B0_ovl15:
    /* 20E510 801E39B0 0C002DAF */  jal        ohSleep
    /* 20E514 801E39B4 24040001 */   addiu     $a0, $zero, 0x1
    /* 20E518 801E39B8 8E220080 */  lw         $v0, 0x80($s1)
    /* 20E51C 801E39BC C4440010 */  lwc1       $f4, 0x10($v0)
    /* 20E520 801E39C0 46142180 */  add.s      $f6, $f4, $f20
    /* 20E524 801E39C4 E4460010 */  swc1       $f6, 0x10($v0)
    /* 20E528 801E39C8 8E220080 */  lw         $v0, 0x80($s1)
    /* 20E52C 801E39CC C4480010 */  lwc1       $f8, 0x10($v0)
    /* 20E530 801E39D0 4616403C */  c.lt.s     $f8, $f22
    /* 20E534 801E39D4 00000000 */  nop
    /* 20E538 801E39D8 4501FFF5 */  bc1t       .L801E39B0_ovl15
    /* 20E53C 801E39DC 00000000 */   nop
    /* 20E540 801E39E0 E4560010 */  swc1       $f22, 0x10($v0)
  .L801E39E4_ovl15:
    /* 20E544 801E39E4 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 20E548 801E39E8 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* 20E54C 801E39EC 4481A000 */  mtc1       $at, $f20
    /* 20E550 801E39F0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 20E554 801E39F4 000E4880 */  sll        $t1, $t6, 2
    /* 20E558 801E39F8 02097821 */  addu       $t7, $s0, $t1
    /* 20E55C 801E39FC C5EA0000 */  lwc1       $f10, 0x0($t7)
    /* 20E560 801E3A00 460AA03C */  c.lt.s     $f20, $f10
    /* 20E564 801E3A04 00000000 */  nop
    /* 20E568 801E3A08 4500000C */  bc1f       .L801E3A3C_ovl15
    /* 20E56C 801E3A0C 00000000 */   nop
  .L801E3A10_ovl15:
    /* 20E570 801E3A10 0C002DAF */  jal        ohSleep
    /* 20E574 801E3A14 24040001 */   addiu     $a0, $zero, 0x1
    /* 20E578 801E3A18 8E590000 */  lw         $t9, 0x0($s2)
    /* 20E57C 801E3A1C 8F380000 */  lw         $t8, 0x0($t9)
    /* 20E580 801E3A20 00184080 */  sll        $t0, $t8, 2
    /* 20E584 801E3A24 02085021 */  addu       $t2, $s0, $t0
    /* 20E588 801E3A28 C5500000 */  lwc1       $f16, 0x0($t2)
    /* 20E58C 801E3A2C 4610A03C */  c.lt.s     $f20, $f16
    /* 20E590 801E3A30 00000000 */  nop
    /* 20E594 801E3A34 4501FFF6 */  bc1t       .L801E3A10_ovl15
    /* 20E598 801E3A38 00000000 */   nop
  .L801E3A3C_ovl15:
    /* 20E59C 801E3A3C 0C02CCFD */  jal        func_800B33F4
    /* 20E5A0 801E3A40 00000000 */   nop
    /* 20E5A4 801E3A44 8E420000 */  lw         $v0, 0x0($s2)
    /* 20E5A8 801E3A48 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* 20E5AC 801E3A4C 44819000 */  mtc1       $at, $f18
    /* 20E5B0 801E3A50 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 20E5B4 801E3A54 3C0E800F */  lui        $t6, %hi(D_800E9E20)
    /* 20E5B8 801E3A58 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 20E5BC 801E3A5C 000B6080 */  sll        $t4, $t3, 2
    /* 20E5C0 801E3A60 020C6821 */  addu       $t5, $s0, $t4
    /* 20E5C4 801E3A64 E5B20000 */  swc1       $f18, 0x0($t5)
    /* 20E5C8 801E3A68 8C430000 */  lw         $v1, 0x0($v0)
    /* 20E5CC 801E3A6C 24090001 */  addiu      $t1, $zero, 0x1
    /* 20E5D0 801E3A70 24040197 */  addiu      $a0, $zero, 0x197
    /* 20E5D4 801E3A74 00031880 */  sll        $v1, $v1, 2
    /* 20E5D8 801E3A78 01C37021 */  addu       $t6, $t6, $v1
    /* 20E5DC 801E3A7C 8DCE9E20 */  lw         $t6, %lo(D_800E9E20)($t6)
    /* 20E5E0 801E3A80 00230821 */  addu       $at, $at, $v1
    /* 20E5E4 801E3A84 11C00024 */  beqz       $t6, .L801E3B18_ovl15
    /* 20E5E8 801E3A88 00000000 */   nop
    /* 20E5EC 801E3A8C 0C029D9E */  jal        play_sound
    /* 20E5F0 801E3A90 AC29A1A0 */   sw        $t1, %lo(D_800EA1A0)($at)
    /* 20E5F4 801E3A94 3C040001 */  lui        $a0, (0x1052F >> 16)
    /* 20E5F8 801E3A98 3484052F */  ori        $a0, $a0, (0x1052F & 0xFFFF)
    /* 20E5FC 801E3A9C 0C02A831 */  jal        func_800AA0C4
    /* 20E600 801E3AA0 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
    /* 20E604 801E3AA4 8E420000 */  lw         $v0, 0x0($s2)
    /* 20E608 801E3AA8 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 20E60C 801E3AAC 3C0E800E */  lui        $t6, %hi(D_800E1B50)
    /* 20E610 801E3AB0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 20E614 801E3AB4 3C0B801E */  lui        $t3, %hi(D_801DA070)
    /* 20E618 801E3AB8 256BA070 */  addiu      $t3, $t3, %lo(D_801DA070)
    /* 20E61C 801E3ABC 000FC880 */  sll        $t9, $t7, 2
    /* 20E620 801E3AC0 00390821 */  addu       $at, $at, $t9
    /* 20E624 801E3AC4 AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
    /* 20E628 801E3AC8 8C580000 */  lw         $t8, 0x0($v0)
    /* 20E62C 801E3ACC 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* 20E630 801E3AD0 44812000 */  mtc1       $at, $f4
    /* 20E634 801E3AD4 00184080 */  sll        $t0, $t8, 2
    /* 20E638 801E3AD8 02085021 */  addu       $t2, $s0, $t0
    /* 20E63C 801E3ADC E5440000 */  swc1       $f4, 0x0($t2)
    /* 20E640 801E3AE0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 20E644 801E3AE4 3C040001 */  lui        $a0, (0x10530 >> 16)
    /* 20E648 801E3AE8 34840530 */  ori        $a0, $a0, (0x10530 & 0xFFFF)
    /* 20E64C 801E3AEC 000C6880 */  sll        $t5, $t4, 2
    /* 20E650 801E3AF0 01CD7021 */  addu       $t6, $t6, $t5
    /* 20E654 801E3AF4 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
    /* 20E658 801E3AF8 0C02A806 */  jal        func_800AA018
    /* 20E65C 801E3AFC ADCB008C */   sw        $t3, 0x8C($t6)
    /* 20E660 801E3B00 0C002DAF */  jal        ohSleep
    /* 20E664 801E3B04 2404003C */   addiu     $a0, $zero, 0x3C
    /* 20E668 801E3B08 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 20E66C 801E3B0C 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 20E670 801E3B10 8D230000 */  lw         $v1, 0x0($t1)
    /* 20E674 801E3B14 00031880 */  sll        $v1, $v1, 2
  .L801E3B18_ovl15:
    /* 20E678 801E3B18 3C19800E */  lui        $t9, %hi(D_800E1B50)
    /* 20E67C 801E3B1C 0323C821 */  addu       $t9, $t9, $v1
    /* 20E680 801E3B20 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
    /* 20E684 801E3B24 3C0F801D */  lui        $t7, %hi(D_801D7B60)
    /* 20E688 801E3B28 25EF7B60 */  addiu      $t7, $t7, %lo(D_801D7B60)
    /* 20E68C 801E3B2C AF2F0094 */  sw         $t7, 0x94($t9)
    /* 20E690 801E3B30 0C06B3E1 */  jal        func_801ACF84_ovl7
    /* 20E694 801E3B34 8FA40038 */   lw        $a0, 0x38($sp)
    /* 20E698 801E3B38 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 20E69C 801E3B3C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 20E6A0 801E3B40 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 20E6A4 801E3B44 8FB00028 */  lw         $s0, 0x28($sp)
    /* 20E6A8 801E3B48 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 20E6AC 801E3B4C 8FB20030 */  lw         $s2, 0x30($sp)
    /* 20E6B0 801E3B50 03E00008 */  jr         $ra
    /* 20E6B4 801E3B54 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_801E3678_ovl15
.size func_801E3678_ovl15, . - func_801E3678_ovl15
