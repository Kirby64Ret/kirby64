nonmatching func_80166F14_ovl5, 0x250

glabel func_80166F14_ovl5
    /* 10E384 80166F14 27BDFE98 */  addiu      $sp, $sp, -0x168
    /* 10E388 80166F18 AFB10018 */  sw         $s1, 0x18($sp)
    /* 10E38C 80166F1C AFB40024 */  sw         $s4, 0x24($sp)
    /* 10E390 80166F20 AFB30020 */  sw         $s3, 0x20($sp)
    /* 10E394 80166F24 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 10E398 80166F28 AFB00014 */  sw         $s0, 0x14($sp)
    /* 10E39C 80166F2C 3C118019 */  lui        $s1, %hi(D_8018E3C0_ovl5)
    /* 10E3A0 80166F30 00809825 */  or         $s3, $a0, $zero
    /* 10E3A4 80166F34 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 10E3A8 80166F38 AFB50028 */  sw         $s5, 0x28($sp)
    /* 10E3AC 80166F3C 2631E3C0 */  addiu      $s1, $s1, %lo(D_8018E3C0_ovl5)
    /* 10E3B0 80166F40 27B00058 */  addiu      $s0, $sp, 0x58
    /* 10E3B4 80166F44 2412029A */  addiu      $s2, $zero, 0x29A
    /* 10E3B8 80166F48 0000A025 */  or         $s4, $zero, $zero
  .L80166F4C_ovl5:
    /* 10E3BC 80166F4C 922E0000 */  lbu        $t6, 0x0($s1)
    /* 10E3C0 80166F50 51C0000A */  beql       $t6, $zero, .L80166F7C_ovl5
    /* 10E3C4 80166F54 AE120000 */   sw        $s2, 0x0($s0)
    /* 10E3C8 80166F58 12930005 */  beq        $s4, $s3, .L80166F70_ovl5
    /* 10E3CC 80166F5C 00000000 */   nop
    /* 10E3D0 80166F60 0C0597C7 */  jal        func_80165F1C_ovl5
    /* 10E3D4 80166F64 02802025 */   or        $a0, $s4, $zero
    /* 10E3D8 80166F68 10000004 */  b          .L80166F7C_ovl5
    /* 10E3DC 80166F6C AE020000 */   sw        $v0, 0x0($s0)
  .L80166F70_ovl5:
    /* 10E3E0 80166F70 10000002 */  b          .L80166F7C_ovl5
    /* 10E3E4 80166F74 AE120000 */   sw        $s2, 0x0($s0)
    /* 10E3E8 80166F78 AE120000 */  sw         $s2, 0x0($s0)
  .L80166F7C_ovl5:
    /* 10E3EC 80166F7C 26940001 */  addiu      $s4, $s4, 0x1
    /* 10E3F0 80166F80 2A810004 */  slti       $at, $s4, 0x4
    /* 10E3F4 80166F84 26310001 */  addiu      $s1, $s1, 0x1
    /* 10E3F8 80166F88 1420FFF0 */  bnez       $at, .L80166F4C_ovl5
    /* 10E3FC 80166F8C 26100004 */   addiu     $s0, $s0, 0x4
    /* 10E400 80166F90 0000A025 */  or         $s4, $zero, $zero
    /* 10E404 80166F94 00008825 */  or         $s1, $zero, $zero
    /* 10E408 80166F98 27B50068 */  addiu      $s5, $sp, 0x68
    /* 10E40C 80166F9C 27B00058 */  addiu      $s0, $sp, 0x58
  .L80166FA0_ovl5:
    /* 10E410 80166FA0 0C059640 */  jal        func_80165900_ovl5
    /* 10E414 80166FA4 02202025 */   or        $a0, $s1, $zero
    /* 10E418 80166FA8 10400010 */  beqz       $v0, .L80166FEC_ovl5
    /* 10E41C 80166FAC 02202025 */   or        $a0, $s1, $zero
    /* 10E420 80166FB0 0C059B2B */  jal        func_80166CAC_ovl5
    /* 10E424 80166FB4 02002825 */   or        $a1, $s0, $zero
    /* 10E428 80166FB8 5040000D */  beql       $v0, $zero, .L80166FF0_ovl5
    /* 10E42C 80166FBC 26310001 */   addiu     $s1, $s1, 0x1
    /* 10E430 80166FC0 0C059B8C */  jal        func_80166E30_ovl5
    /* 10E434 80166FC4 02202025 */   or        $a0, $s1, $zero
    /* 10E438 80166FC8 54400009 */  bnel       $v0, $zero, .L80166FF0_ovl5
    /* 10E43C 80166FCC 26310001 */   addiu     $s1, $s1, 0x1
    /* 10E440 80166FD0 0C05974C */  jal        func_80165D30_ovl5
    /* 10E444 80166FD4 02202025 */   or        $a0, $s1, $zero
    /* 10E448 80166FD8 14400004 */  bnez       $v0, .L80166FEC_ovl5
    /* 10E44C 80166FDC 00147880 */   sll       $t7, $s4, 2
    /* 10E450 80166FE0 02AFC021 */  addu       $t8, $s5, $t7
    /* 10E454 80166FE4 AF110000 */  sw         $s1, 0x0($t8)
    /* 10E458 80166FE8 26940001 */  addiu      $s4, $s4, 0x1
  .L80166FEC_ovl5:
    /* 10E45C 80166FEC 26310001 */  addiu      $s1, $s1, 0x1
  .L80166FF0_ovl5:
    /* 10E460 80166FF0 2A210040 */  slti       $at, $s1, 0x40
    /* 10E464 80166FF4 1420FFEA */  bnez       $at, .L80166FA0_ovl5
    /* 10E468 80166FF8 00000000 */   nop
    /* 10E46C 80166FFC 16800014 */  bnez       $s4, .L80167050_ovl5
    /* 10E470 80167000 3C048019 */   lui       $a0, %hi(D_8018D5F0_ovl5)
    /* 10E474 80167004 0C02909C */  jal        utilPrintf
    /* 10E478 80167008 2484D5F0 */   addiu     $a0, $a0, %lo(D_8018D5F0_ovl5)
    /* 10E47C 8016700C 00008825 */  or         $s1, $zero, $zero
    /* 10E480 80167010 24120040 */  addiu      $s2, $zero, 0x40
    /* 10E484 80167014 02202025 */  or         $a0, $s1, $zero
  .L80167018_ovl5:
    /* 10E488 80167018 0C059B2B */  jal        func_80166CAC_ovl5
    /* 10E48C 8016701C 02002825 */   or        $a1, $s0, $zero
    /* 10E490 80167020 50400009 */  beql       $v0, $zero, .L80167048_ovl5
    /* 10E494 80167024 26310001 */   addiu     $s1, $s1, 0x1
    /* 10E498 80167028 0C05974C */  jal        func_80165D30_ovl5
    /* 10E49C 8016702C 02202025 */   or        $a0, $s1, $zero
    /* 10E4A0 80167030 14400004 */  bnez       $v0, .L80167044_ovl5
    /* 10E4A4 80167034 0014C880 */   sll       $t9, $s4, 2
    /* 10E4A8 80167038 02B94021 */  addu       $t0, $s5, $t9
    /* 10E4AC 8016703C AD110000 */  sw         $s1, 0x0($t0)
    /* 10E4B0 80167040 26940001 */  addiu      $s4, $s4, 0x1
  .L80167044_ovl5:
    /* 10E4B4 80167044 26310001 */  addiu      $s1, $s1, 0x1
  .L80167048_ovl5:
    /* 10E4B8 80167048 5632FFF3 */  bnel       $s1, $s2, .L80167018_ovl5
    /* 10E4BC 8016704C 02202025 */   or        $a0, $s1, $zero
  .L80167050_ovl5:
    /* 10E4C0 80167050 00008025 */  or         $s0, $zero, $zero
    /* 10E4C4 80167054 24120004 */  addiu      $s2, $zero, 0x4
  .L80167058_ovl5:
    /* 10E4C8 80167058 0C006291 */  jal        random_soft_s32_range
    /* 10E4CC 8016705C 02802025 */   or        $a0, $s4, $zero
    /* 10E4D0 80167060 00024880 */  sll        $t1, $v0, 2
    /* 10E4D4 80167064 02A95021 */  addu       $t2, $s5, $t1
    /* 10E4D8 80167068 8D510000 */  lw         $s1, 0x0($t2)
    /* 10E4DC 8016706C 0C059631 */  jal        func_801658C4_ovl5
    /* 10E4E0 80167070 02202025 */   or        $a0, $s1, $zero
    /* 10E4E4 80167074 00115880 */  sll        $t3, $s1, 2
    /* 10E4E8 80167078 3C068019 */  lui        $a2, %hi(D_8018E2A0_ovl5)
    /* 10E4EC 8016707C 00CB3021 */  addu       $a2, $a2, $t3
    /* 10E4F0 80167080 8CC6E2A0 */  lw         $a2, %lo(D_8018E2A0_ovl5)($a2)
    /* 10E4F4 80167084 27A4003C */  addiu      $a0, $sp, 0x3C
    /* 10E4F8 80167088 0C02C8D0 */  jal        func_800B2340
    /* 10E4FC 8016708C 00402825 */   or        $a1, $v0, $zero
    /* 10E500 80167090 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 10E504 80167094 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 10E508 80167098 C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* 10E50C 8016709C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 10E510 801670A0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 10E514 801670A4 44803000 */  mtc1       $zero, $f6
    /* 10E518 801670A8 C7A80044 */  lwc1       $f8, 0x44($sp)
    /* 10E51C 801670AC 000C6880 */  sll        $t5, $t4, 2
    /* 10E520 801670B0 002D0821 */  addu       $at, $at, $t5
    /* 10E524 801670B4 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 10E528 801670B8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 10E52C 801670BC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 10E530 801670C0 3C118019 */  lui        $s1, %hi(D_8018E3C0_ovl5)
    /* 10E534 801670C4 000E7880 */  sll        $t7, $t6, 2
    /* 10E538 801670C8 002F0821 */  addu       $at, $at, $t7
    /* 10E53C 801670CC E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 10E540 801670D0 8C580000 */  lw         $t8, 0x0($v0)
    /* 10E544 801670D4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 10E548 801670D8 2631E3C0 */  addiu      $s1, $s1, %lo(D_8018E3C0_ovl5)
    /* 10E54C 801670DC 0018C880 */  sll        $t9, $t8, 2
    /* 10E550 801670E0 00390821 */  addu       $at, $at, $t9
    /* 10E554 801670E4 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
  .L801670E8_ovl5:
    /* 10E558 801670E8 92280000 */  lbu        $t0, 0x0($s1)
    /* 10E55C 801670EC 51000007 */  beql       $t0, $zero, .L8016710C_ovl5
    /* 10E560 801670F0 26100001 */   addiu     $s0, $s0, 0x1
    /* 10E564 801670F4 12700004 */  beq        $s3, $s0, .L80167108_ovl5
    /* 10E568 801670F8 02602025 */   or        $a0, $s3, $zero
    /* 10E56C 801670FC 0C059C97 */  jal        func_8016725C_ovl5
    /* 10E570 80167100 02002825 */   or        $a1, $s0, $zero
    /* 10E574 80167104 14400003 */  bnez       $v0, .L80167114_ovl5
  .L80167108_ovl5:
    /* 10E578 80167108 26100001 */   addiu     $s0, $s0, 0x1
  .L8016710C_ovl5:
    /* 10E57C 8016710C 1612FFF6 */  bne        $s0, $s2, .L801670E8_ovl5
    /* 10E580 80167110 26310001 */   addiu     $s1, $s1, 0x1
  .L80167114_ovl5:
    /* 10E584 80167114 3C098019 */  lui        $t1, %hi(D_8018E3C4_ovl5)
    /* 10E588 80167118 2529E3C4 */  addiu      $t1, $t1, %lo(D_8018E3C4_ovl5)
    /* 10E58C 8016711C 0229082B */  sltu       $at, $s1, $t1
    /* 10E590 80167120 50200008 */  beql       $at, $zero, .L80167144_ovl5
    /* 10E594 80167124 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 10E598 80167128 0C059693 */  jal        func_80165A4C_ovl5
    /* 10E59C 8016712C 02602025 */   or        $a0, $s3, $zero
    /* 10E5A0 80167130 50400004 */  beql       $v0, $zero, .L80167144_ovl5
    /* 10E5A4 80167134 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 10E5A8 80167138 1000FFC7 */  b          .L80167058_ovl5
    /* 10E5AC 8016713C 00008025 */   or        $s0, $zero, $zero
    /* 10E5B0 80167140 8FBF002C */  lw         $ra, 0x2C($sp)
  .L80167144_ovl5:
    /* 10E5B4 80167144 8FB00014 */  lw         $s0, 0x14($sp)
    /* 10E5B8 80167148 8FB10018 */  lw         $s1, 0x18($sp)
    /* 10E5BC 8016714C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 10E5C0 80167150 8FB30020 */  lw         $s3, 0x20($sp)
    /* 10E5C4 80167154 8FB40024 */  lw         $s4, 0x24($sp)
    /* 10E5C8 80167158 8FB50028 */  lw         $s5, 0x28($sp)
    /* 10E5CC 8016715C 03E00008 */  jr         $ra
    /* 10E5D0 80167160 27BD0168 */   addiu     $sp, $sp, 0x168
endlabel func_80166F14_ovl5
.size func_80166F14_ovl5, . - func_80166F14_ovl5
