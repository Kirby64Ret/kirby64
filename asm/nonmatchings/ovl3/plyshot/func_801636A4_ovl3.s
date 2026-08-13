nonmatching func_801636A4_ovl3, 0x41C

glabel func_801636A4_ovl3
    /* C40E4 801636A4 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C40E8 801636A8 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C40EC 801636AC 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* C40F0 801636B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* C40F4 801636B4 AFA40050 */  sw         $a0, 0x50($sp)
    /* C40F8 801636B8 8CE30000 */  lw         $v1, 0x0($a3)
    /* C40FC 801636BC 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* C4100 801636C0 3C0F800F */  lui        $t7, %hi(D_800E9FE0)
    /* C4104 801636C4 00031880 */  sll        $v1, $v1, 2
    /* C4108 801636C8 3C188013 */  lui        $t8, %hi(gKirbyState + 0x4)
    /* C410C 801636CC 9318E7C4 */  lbu        $t8, %lo(gKirbyState + 0x4)($t8)
    /* C4110 801636D0 01C37021 */  addu       $t6, $t6, $v1
    /* C4114 801636D4 01E37821 */  addu       $t7, $t7, $v1
    /* C4118 801636D8 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* C411C 801636DC 8DEF9FE0 */  lw         $t7, %lo(D_800E9FE0)($t7)
    /* C4120 801636E0 240A0001 */  addiu      $t2, $zero, 0x1
    /* C4124 801636E4 AFAE0040 */  sw         $t6, 0x40($sp)
    /* C4128 801636E8 11580007 */  beq        $t2, $t8, .L80163708_ovl3
    /* C412C 801636EC AFAF003C */   sw        $t7, 0x3C($sp)
    /* C4130 801636F0 3C198013 */  lui        $t9, %hi(D_8012E7C5)
    /* C4134 801636F4 9339E7C5 */  lbu        $t9, %lo(D_8012E7C5)($t9)
    /* C4138 801636F8 24010018 */  addiu      $at, $zero, 0x18
    /* C413C 801636FC 3C18800E */  lui        $t8, %hi(gEntitiesNextPosYArray)
    /* C4140 80163700 13210012 */  beq        $t9, $at, .L8016374C_ovl3
    /* C4144 80163704 27182790 */   addiu     $t8, $t8, %lo(gEntitiesNextPosYArray)
  .L80163708_ovl3:
    /* C4148 80163708 8FA4003C */  lw         $a0, 0x3C($sp)
    /* C414C 8016370C 0C029E1C */  jal        func_800A7870
    /* C4150 80163710 24850004 */   addiu     $a1, $a0, 0x4
    /* C4154 80163714 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* C4158 80163718 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* C415C 8016371C 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* C4160 80163720 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C4164 80163724 000D7080 */  sll        $t6, $t5, 2
    /* C4168 80163728 008E2021 */  addu       $a0, $a0, $t6
    /* C416C 8016372C 0C0288B5 */  jal        func_800A22D4
    /* C4170 80163730 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
    /* C4174 80163734 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* C4178 80163738 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* C417C 8016373C 0C02C640 */  jal        func_800B1900
    /* C4180 80163740 95E40002 */   lhu       $a0, 0x2($t7)
    /* C4184 80163744 100000DB */  b          .L80163AB4_ovl3
    /* C4188 80163748 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8016374C_ovl3:
    /* C418C 8016374C 00781021 */  addu       $v0, $v1, $t8
    /* C4190 80163750 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* C4194 80163754 44813000 */  mtc1       $at, $f6
    /* C4198 80163758 C4440000 */  lwc1       $f4, 0x0($v0)
    /* C419C 8016375C 3C0C800F */  lui        $t4, %hi(D_800E9720)
    /* C41A0 80163760 258C9720 */  addiu      $t4, $t4, %lo(D_800E9720)
    /* C41A4 80163764 46062201 */  sub.s      $f8, $f4, $f6
    /* C41A8 80163768 3C06800D */  lui        $a2, %hi(D_800D71E8 + 0x10)
    /* C41AC 8016376C 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* C41B0 80163770 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* C41B4 80163774 E4480000 */  swc1       $f8, 0x0($v0)
    /* C41B8 80163778 8CF90000 */  lw         $t9, 0x0($a3)
    /* C41BC 8016377C 24C671F8 */  addiu      $a2, $a2, %lo(D_800D71E8 + 0x10)
    /* C41C0 80163780 00195880 */  sll        $t3, $t9, 2
    /* C41C4 80163784 016C2821 */  addu       $a1, $t3, $t4
    /* C41C8 80163788 8CA40000 */  lw         $a0, 0x0($a1)
    /* C41CC 8016378C 2881001E */  slti       $at, $a0, 0x1E
    /* C41D0 80163790 10200002 */  beqz       $at, .L8016379C_ovl3
    /* C41D4 80163794 248D0001 */   addiu     $t5, $a0, 0x1
    /* C41D8 80163798 ACAD0000 */  sw         $t5, 0x0($a1)
  .L8016379C_ovl3:
    /* C41DC 8016379C 8FA80040 */  lw         $t0, 0x40($sp)
    /* C41E0 801637A0 3C05800D */  lui        $a1, %hi(D_800D71E8 + 0x14)
    /* C41E4 801637A4 24A571FC */  addiu      $a1, $a1, %lo(D_800D71E8 + 0x14)
    /* C41E8 801637A8 00084080 */  sll        $t0, $t0, 2
    /* C41EC 801637AC 01287021 */  addu       $t6, $t1, $t0
    /* C41F0 801637B0 8DC40000 */  lw         $a0, 0x0($t6)
    /* C41F4 801637B4 ACA00000 */  sw         $zero, 0x0($a1)
    /* C41F8 801637B8 00001025 */  or         $v0, $zero, $zero
    /* C41FC 801637BC 308F0006 */  andi       $t7, $a0, 0x6
    /* C4200 801637C0 11E00002 */  beqz       $t7, .L801637CC_ovl3
    /* C4204 801637C4 ACC00000 */   sw        $zero, 0x0($a2)
    /* C4208 801637C8 ACCA0000 */  sw         $t2, 0x0($a2)
  .L801637CC_ovl3:
    /* C420C 801637CC 8CF80000 */  lw         $t8, 0x0($a3)
    /* C4210 801637D0 0018C880 */  sll        $t9, $t8, 2
    /* C4214 801637D4 01391821 */  addu       $v1, $t1, $t9
    /* C4218 801637D8 8C6B0000 */  lw         $t3, 0x0($v1)
    /* C421C 801637DC 316C0006 */  andi       $t4, $t3, 0x6
    /* C4220 801637E0 51800007 */  beql       $t4, $zero, .L80163800_ovl3
    /* C4224 801637E4 8CCF0000 */   lw        $t7, 0x0($a2)
    /* C4228 801637E8 ACAA0000 */  sw         $t2, 0x0($a1)
    /* C422C 801637EC 8CED0000 */  lw         $t5, 0x0($a3)
    /* C4230 801637F0 01401025 */  or         $v0, $t2, $zero
    /* C4234 801637F4 000D7080 */  sll        $t6, $t5, 2
    /* C4238 801637F8 012E1821 */  addu       $v1, $t1, $t6
    /* C423C 801637FC 8CCF0000 */  lw         $t7, 0x0($a2)
  .L80163800_ovl3:
    /* C4240 80163800 AC640000 */  sw         $a0, 0x0($v1)
    /* C4244 80163804 51E2005B */  beql       $t7, $v0, .L80163974_ovl3
    /* C4248 80163808 8CF80000 */   lw        $t8, 0x0($a3)
    /* C424C 8016380C 8CF90000 */  lw         $t9, 0x0($a3)
    /* C4250 80163810 00195880 */  sll        $t3, $t9, 2
    /* C4254 80163814 012B6021 */  addu       $t4, $t1, $t3
    /* C4258 80163818 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C425C 8016381C 31AE0006 */  andi       $t6, $t5, 0x6
    /* C4260 80163820 51C00004 */  beql       $t6, $zero, .L80163834_ovl3
    /* C4264 80163824 AFA00034 */   sw        $zero, 0x34($sp)
    /* C4268 80163828 10000002 */  b          .L80163834_ovl3
    /* C426C 8016382C AFAA0034 */   sw        $t2, 0x34($sp)
    /* C4270 80163830 AFA00034 */  sw         $zero, 0x34($sp)
  .L80163834_ovl3:
    /* C4274 80163834 8FA4003C */  lw         $a0, 0x3C($sp)
    /* C4278 80163838 AFA80020 */  sw         $t0, 0x20($sp)
    /* C427C 8016383C 24850004 */  addiu      $a1, $a0, 0x4
    /* C4280 80163840 0C029E1C */  jal        func_800A7870
    /* C4284 80163844 AFA50028 */   sw        $a1, 0x28($sp)
    /* C4288 80163848 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* C428C 8016384C 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* C4290 80163850 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* C4294 80163854 8F190000 */  lw         $t9, 0x0($t8)
    /* C4298 80163858 00195880 */  sll        $t3, $t9, 2
    /* C429C 8016385C 008B2021 */  addu       $a0, $a0, $t3
    /* C42A0 80163860 0C0288B5 */  jal        func_800A22D4
    /* C42A4 80163864 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
    /* C42A8 80163868 8FAC0034 */  lw         $t4, 0x34($sp)
    /* C42AC 8016386C 3C068019 */  lui        $a2, %hi(D_8019684C_ovl3)
    /* C42B0 80163870 24040001 */  addiu      $a0, $zero, 0x1
    /* C42B4 80163874 000C68C0 */  sll        $t5, $t4, 3
    /* C42B8 80163878 00CD3021 */  addu       $a2, $a2, $t5
    /* C42BC 8016387C 8CC6684C */  lw         $a2, %lo(D_8019684C_ovl3)($a2)
    /* C42C0 80163880 0C02A08D */  jal        func_800A8234
    /* C42C4 80163884 24050001 */   addiu     $a1, $zero, 0x1
    /* C42C8 80163888 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C42CC 8016388C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C42D0 80163890 3C01800F */  lui        $at, %hi(D_800EA520)
    /* C42D4 80163894 3C18800F */  lui        $t8, %hi(D_800E98E0)
    /* C42D8 80163898 8CEE0000 */  lw         $t6, 0x0($a3)
    /* C42DC 8016389C 271898E0 */  addiu      $t8, $t8, %lo(D_800E98E0)
    /* C42E0 801638A0 3C04800F */  lui        $a0, %hi(D_800E9720)
    /* C42E4 801638A4 000E7880 */  sll        $t7, $t6, 2
    /* C42E8 801638A8 002F0821 */  addu       $at, $at, $t7
    /* C42EC 801638AC AC22A520 */  sw         $v0, %lo(D_800EA520)($at)
    /* C42F0 801638B0 8CE30000 */  lw         $v1, 0x0($a3)
    /* C42F4 801638B4 8FA80020 */  lw         $t0, 0x20($sp)
    /* C42F8 801638B8 240B0001 */  addiu      $t3, $zero, 0x1
    /* C42FC 801638BC 00031880 */  sll        $v1, $v1, 2
    /* C4300 801638C0 00782821 */  addu       $a1, $v1, $t8
    /* C4304 801638C4 8CB90000 */  lw         $t9, 0x0($a1)
    /* C4308 801638C8 00832021 */  addu       $a0, $a0, $v1
    /* C430C 801638CC 24020005 */  addiu      $v0, $zero, 0x5
    /* C4310 801638D0 57200019 */  bnel       $t9, $zero, .L80163938_ovl3
    /* C4314 801638D4 ACA00000 */   sw        $zero, 0x0($a1)
    /* C4318 801638D8 8C849720 */  lw         $a0, %lo(D_800E9720)($a0)
    /* C431C 801638DC 28810003 */  slti       $at, $a0, 0x3
    /* C4320 801638E0 50200004 */  beql       $at, $zero, .L801638F4_ovl3
    /* C4324 801638E4 28810006 */   slti      $at, $a0, 0x6
    /* C4328 801638E8 10000010 */  b          .L8016392C_ovl3
    /* C432C 801638EC 00001025 */   or        $v0, $zero, $zero
    /* C4330 801638F0 28810006 */  slti       $at, $a0, 0x6
  .L801638F4_ovl3:
    /* C4334 801638F4 50200004 */  beql       $at, $zero, .L80163908_ovl3
    /* C4338 801638F8 2881000C */   slti      $at, $a0, 0xC
    /* C433C 801638FC 1000000B */  b          .L8016392C_ovl3
    /* C4340 80163900 24020001 */   addiu     $v0, $zero, 0x1
    /* C4344 80163904 2881000C */  slti       $at, $a0, 0xC
  .L80163908_ovl3:
    /* C4348 80163908 50200004 */  beql       $at, $zero, .L8016391C_ovl3
    /* C434C 8016390C 28810012 */   slti      $at, $a0, 0x12
    /* C4350 80163910 10000006 */  b          .L8016392C_ovl3
    /* C4354 80163914 24020002 */   addiu     $v0, $zero, 0x2
    /* C4358 80163918 28810012 */  slti       $at, $a0, 0x12
  .L8016391C_ovl3:
    /* C435C 8016391C 10200003 */  beqz       $at, .L8016392C_ovl3
    /* C4360 80163920 24020004 */   addiu     $v0, $zero, 0x4
    /* C4364 80163924 10000001 */  b          .L8016392C_ovl3
    /* C4368 80163928 24020003 */   addiu     $v0, $zero, 0x3
  .L8016392C_ovl3:
    /* C436C 8016392C 10000002 */  b          .L80163938_ovl3
    /* C4370 80163930 ACAB0000 */   sw        $t3, 0x0($a1)
    /* C4374 80163934 ACA00000 */  sw         $zero, 0x0($a1)
  .L80163938_ovl3:
    /* C4378 80163938 8FAD0034 */  lw         $t5, 0x34($sp)
    /* C437C 8016393C 000260C0 */  sll        $t4, $v0, 3
    /* C4380 80163940 3C048019 */  lui        $a0, %hi(D_80196858_ovl3)
    /* C4384 80163944 000D7080 */  sll        $t6, $t5, 2
    /* C4388 80163948 018E7821 */  addu       $t7, $t4, $t6
    /* C438C 8016394C 008F2021 */  addu       $a0, $a0, $t7
    /* C4390 80163950 8C846858 */  lw         $a0, %lo(D_80196858_ovl3)($a0)
    /* C4394 80163954 8FA5003C */  lw         $a1, 0x3C($sp)
    /* C4398 80163958 8FA60028 */  lw         $a2, 0x28($sp)
    /* C439C 8016395C 0C029DFA */  jal        func_800A77E8
    /* C43A0 80163960 AFA80020 */   sw        $t0, 0x20($sp)
    /* C43A4 80163964 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* C43A8 80163968 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* C43AC 8016396C 8FA80020 */  lw         $t0, 0x20($sp)
    /* C43B0 80163970 8CF80000 */  lw         $t8, 0x0($a3)
  .L80163974_ovl3:
    /* C43B4 80163974 3C02800F */  lui        $v0, %hi(D_800EA520)
    /* C43B8 80163978 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C43BC 8016397C 0018C880 */  sll        $t9, $t8, 2
    /* C43C0 80163980 00591021 */  addu       $v0, $v0, $t9
    /* C43C4 80163984 8C42A520 */  lw         $v0, %lo(D_800EA520)($v0)
    /* C43C8 80163988 00280821 */  addu       $at, $at, $t0
    /* C43CC 8016398C C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* C43D0 80163990 8C4B004C */  lw         $t3, 0x4C($v0)
    /* C43D4 80163994 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* C43D8 80163998 00280821 */  addu       $at, $at, $t0
    /* C43DC 8016399C E56A0004 */  swc1       $f10, 0x4($t3)
    /* C43E0 801639A0 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* C43E4 801639A4 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* C43E8 801639A8 44819000 */  mtc1       $at, $f18
    /* C43EC 801639AC 8C4D004C */  lw         $t5, 0x4C($v0)
    /* C43F0 801639B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C43F4 801639B4 46128100 */  add.s      $f4, $f16, $f18
    /* C43F8 801639B8 00280821 */  addu       $at, $at, $t0
    /* C43FC 801639BC 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* C4400 801639C0 01C87021 */  addu       $t6, $t6, $t0
    /* C4404 801639C4 E5A40008 */  swc1       $f4, 0x8($t5)
    /* C4408 801639C8 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* C440C 801639CC 8C4C004C */  lw         $t4, 0x4C($v0)
    /* C4410 801639D0 27A40044 */  addiu      $a0, $sp, 0x44
    /* C4414 801639D4 E586000C */  swc1       $f6, 0xC($t4)
    /* C4418 801639D8 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* C441C 801639DC 8FA60040 */  lw         $a2, 0x40($sp)
    /* C4420 801639E0 8DC50020 */  lw         $a1, 0x20($t6)
    /* C4424 801639E4 0C02C9B6 */  jal        func_800B26D8
    /* C4428 801639E8 AFA20038 */   sw        $v0, 0x38($sp)
    /* C442C 801639EC 8FA20038 */  lw         $v0, 0x38($sp)
    /* C4430 801639F0 C7A80044 */  lwc1       $f8, 0x44($sp)
    /* C4434 801639F4 3C0B8013 */  lui        $t3, %hi(D_8012E860 + 0x11)
    /* C4438 801639F8 8C4F004C */  lw         $t7, 0x4C($v0)
    /* C443C 801639FC 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* C4440 80163A00 3C058019 */  lui        $a1, %hi(D_80193920_ovl3)
    /* C4444 80163A04 E5E80010 */  swc1       $f8, 0x10($t7)
    /* C4448 80163A08 C7AA0048 */  lwc1       $f10, 0x48($sp)
    /* C444C 80163A0C 8C58004C */  lw         $t8, 0x4C($v0)
    /* C4450 80163A10 3C0F801A */  lui        $t7, %hi(D_80198540_ovl3)
    /* C4454 80163A14 25EF8540 */  addiu      $t7, $t7, %lo(D_80198540_ovl3)
    /* C4458 80163A18 E70A0014 */  swc1       $f10, 0x14($t8)
    /* C445C 80163A1C C7B0004C */  lwc1       $f16, 0x4C($sp)
    /* C4460 80163A20 8C59004C */  lw         $t9, 0x4C($v0)
    /* C4464 80163A24 E7300018 */  swc1       $f16, 0x18($t9)
    /* C4468 80163A28 916BE871 */  lbu        $t3, %lo(D_8012E860 + 0x11)($t3)
    /* C446C 80163A2C 15600014 */  bnez       $t3, .L80163A80_ovl3
    /* C4470 80163A30 00000000 */   nop
    /* C4474 80163A34 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* C4478 80163A38 3C07800E */  lui        $a3, %hi(D_800E0D50)
    /* C447C 80163A3C 3C068015 */  lui        $a2, %hi(func_80155E58_ovl3)
    /* C4480 80163A40 8DA20000 */  lw         $v0, 0x0($t5)
    /* C4484 80163A44 24C65E58 */  addiu      $a2, $a2, %lo(func_80155E58_ovl3)
    /* C4488 80163A48 24A53920 */  addiu      $a1, $a1, %lo(D_80193920_ovl3)
    /* C448C 80163A4C 00026140 */  sll        $t4, $v0, 5
    /* C4490 80163A50 0002C080 */  sll        $t8, $v0, 2
    /* C4494 80163A54 00F83821 */  addu       $a3, $a3, $t8
    /* C4498 80163A58 258EF880 */  addiu      $t6, $t4, -0x780
    /* C449C 80163A5C 01CF2021 */  addu       $a0, $t6, $t7
    /* C44A0 80163A60 0C055754 */  jal        func_80155D50_ovl3
    /* C44A4 80163A64 8CE70D50 */   lw        $a3, %lo(D_800E0D50)($a3)
    /* C44A8 80163A68 10400005 */  beqz       $v0, .L80163A80_ovl3
    /* C44AC 80163A6C 3C198013 */   lui       $t9, %hi(D_8012E860 + 0x11)
    /* C44B0 80163A70 9339E871 */  lbu        $t9, %lo(D_8012E860 + 0x11)($t9)
    /* C44B4 80163A74 3C018013 */  lui        $at, %hi(D_8012E860 + 0x11)
    /* C44B8 80163A78 272B0001 */  addiu      $t3, $t9, 0x1
    /* C44BC 80163A7C A02BE871 */  sb         $t3, %lo(D_8012E860 + 0x11)($at)
  .L80163A80_ovl3:
    /* C44C0 80163A80 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* C44C4 80163A84 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* C44C8 80163A88 3C05800E */  lui        $a1, %hi(D_800E0D50)
    /* C44CC 80163A8C 3C048019 */  lui        $a0, %hi(D_80191044_ovl3)
    /* C44D0 80163A90 8DAC0000 */  lw         $t4, 0x0($t5)
    /* C44D4 80163A94 24841044 */  addiu      $a0, $a0, %lo(D_80191044_ovl3)
    /* C44D8 80163A98 000C7080 */  sll        $t6, $t4, 2
    /* C44DC 80163A9C 00AE2821 */  addu       $a1, $a1, $t6
    /* C44E0 80163AA0 0C044681 */  jal        func_80111A04
    /* C44E4 80163AA4 8CA50D50 */   lw        $a1, %lo(D_800E0D50)($a1)
    /* C44E8 80163AA8 0C044713 */  jal        func_80111C4C
    /* C44EC 80163AAC 00402025 */   or        $a0, $v0, $zero
    /* C44F0 80163AB0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80163AB4_ovl3:
    /* C44F4 80163AB4 27BD0050 */  addiu      $sp, $sp, 0x50
    /* C44F8 80163AB8 03E00008 */  jr         $ra
    /* C44FC 80163ABC 00000000 */   nop
endlabel func_801636A4_ovl3
.size func_801636A4_ovl3, . - func_801636A4_ovl3
