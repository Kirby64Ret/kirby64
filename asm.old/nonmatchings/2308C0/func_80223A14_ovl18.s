glabel func_80223A14_ovl18
/* 2363B4 80223A14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2363B8 80223A18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2363BC 80223A1C 0C087D28 */  jal        func_8021F4A0_ovl18
/* 2363C0 80223A20 AFA40018 */   sw        $a0, 0x18($sp)
/* 2363C4 80223A24 0C068CA0 */  jal        func_801A3280_ovl7
/* 2363C8 80223A28 00000000 */   nop
/* 2363CC 80223A2C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 2363D0 80223A30 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 2363D4 80223A34 3C0E8022 */  lui        $t6, %hi(func_80223B4C_ovl19)
/* 2363D8 80223A38 3C01800E */  lui        $at, %hi(D_800DF150)
/* 2363DC 80223A3C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 2363E0 80223A40 25CE3B4C */  addiu      $t6, $t6, %lo(func_80223B4C_ovl19)
/* 2363E4 80223A44 3C07800E */  lui        $a3, %hi(gEntitiesScaleZArray)
/* 2363E8 80223A48 000FC080 */  sll        $t8, $t7, 2
/* 2363EC 80223A4C 00380821 */  addu       $at, $at, $t8
/* 2363F0 80223A50 AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* 2363F4 80223A54 8C590000 */  lw         $t9, 0x0($v0)
/* 2363F8 80223A58 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 2363FC 80223A5C 44812000 */  mtc1       $at, $f4
/* 236400 80223A60 24E748D0 */  addiu      $a3, $a3, %lo(gEntitiesScaleZArray)
/* 236404 80223A64 00194880 */  sll        $t1, $t9, 2
/* 236408 80223A68 00E95021 */  addu       $t2, $a3, $t1
/* 23640C 80223A6C E5440000 */  swc1       $f4, 0x0($t2)
/* 236410 80223A70 8C430000 */  lw         $v1, 0x0($v0)
/* 236414 80223A74 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 236418 80223A78 240FFFFF */  addiu      $t7, $zero, -0x1
/* 23641C 80223A7C 00031880 */  sll        $v1, $v1, 2
/* 236420 80223A80 00E35821 */  addu       $t3, $a3, $v1
/* 236424 80223A84 C5600000 */  lwc1       $f0, 0x0($t3)
/* 236428 80223A88 00230821 */  addu       $at, $at, $v1
/* 23642C 80223A8C 2419000A */  addiu      $t9, $zero, 0xA
/* 236430 80223A90 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 236434 80223A94 8C4C0000 */  lw         $t4, 0x0($v0)
/* 236438 80223A98 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 23643C 80223A9C 44804000 */  mtc1       $zero, $f8
/* 236440 80223AA0 000C6880 */  sll        $t5, $t4, 2
/* 236444 80223AA4 002D0821 */  addu       $at, $at, $t5
/* 236448 80223AA8 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 23644C 80223AAC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 236450 80223AB0 3C01800F */  lui        $at, %hi(D_800E93A0)
/* 236454 80223AB4 3C08800E */  lui        $t0, %hi(gEntityVtableIndexArray)
/* 236458 80223AB8 000EC080 */  sll        $t8, $t6, 2
/* 23645C 80223ABC 00380821 */  addu       $at, $at, $t8
/* 236460 80223AC0 AC2F93A0 */  sw         $t7, %lo(D_800E93A0)($at)
/* 236464 80223AC4 8C490000 */  lw         $t1, 0x0($v0)
/* 236468 80223AC8 3C01800F */  lui        $at, %hi(D_800E9720)
/* 23646C 80223ACC 2508DC50 */  addiu      $t0, $t0, %lo(gEntityVtableIndexArray)
/* 236470 80223AD0 00095080 */  sll        $t2, $t1, 2
/* 236474 80223AD4 002A0821 */  addu       $at, $at, $t2
/* 236478 80223AD8 AC399720 */  sw         $t9, %lo(D_800E9720)($at)
/* 23647C 80223ADC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 236480 80223AE0 3C0143BE */  lui        $at, (0x43BE0000 >> 16)
/* 236484 80223AE4 44813000 */  mtc1       $at, $f6
/* 236488 80223AE8 3C01800F */  lui        $at, %hi(D_800EB320)
/* 23648C 80223AEC 000B6080 */  sll        $t4, $t3, 2
/* 236490 80223AF0 002C0821 */  addu       $at, $at, $t4
/* 236494 80223AF4 E426B320 */  swc1       $f6, %lo(D_800EB320)($at)
/* 236498 80223AF8 8C4D0000 */  lw         $t5, 0x0($v0)
/* 23649C 80223AFC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 2364A0 80223B00 3C068023 */  lui        $a2, %hi(D_8022AC34_ovl18)
/* 2364A4 80223B04 000D7080 */  sll        $t6, $t5, 2
/* 2364A8 80223B08 002E0821 */  addu       $at, $at, $t6
/* 2364AC 80223B0C E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* 2364B0 80223B10 8C4F0000 */  lw         $t7, 0x0($v0)
/* 2364B4 80223B14 24C6AC34 */  addiu      $a2, $a2, %lo(D_8022AC34_ovl18)
/* 2364B8 80223B18 24050005 */  addiu      $a1, $zero, 0x5
/* 2364BC 80223B1C 000FC080 */  sll        $t8, $t7, 2
/* 2364C0 80223B20 01184821 */  addu       $t1, $t0, $t8
/* 2364C4 80223B24 AD200000 */  sw         $zero, 0x0($t1)
/* 2364C8 80223B28 8C590000 */  lw         $t9, 0x0($v0)
/* 2364CC 80223B2C 00195080 */  sll        $t2, $t9, 2
/* 2364D0 80223B30 010A5821 */  addu       $t3, $t0, $t2
/* 2364D4 80223B34 0C02911F */  jal        call_virtual_function
/* 2364D8 80223B38 8D640000 */   lw        $a0, 0x0($t3)
/* 2364DC 80223B3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2364E0 80223B40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2364E4 80223B44 03E00008 */  jr         $ra
/* 2364E8 80223B48 00000000 */   nop
