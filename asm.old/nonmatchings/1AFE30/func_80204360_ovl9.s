glabel func_80204360_ovl9
/* 1B23B0 80204360 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1B23B4 80204364 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 1B23B8 80204368 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1B23BC 8020436C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B23C0 80204370 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B23C4 80204374 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B23C8 80204378 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1B23CC 8020437C 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1B23D0 80204380 3C19801D */  lui        $t9, %hi(D_801CC454)
/* 1B23D4 80204384 000FC080 */  sll        $t8, $t7, 2
/* 1B23D8 80204388 00781821 */  addu       $v1, $v1, $t8
/* 1B23DC 8020438C 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1B23E0 80204390 2739C454 */  addiu      $t9, $t9, %lo(D_801CC454)
/* 1B23E4 80204394 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1B23E8 80204398 AC790098 */  sw         $t9, 0x98($v1)
/* 1B23EC 8020439C 8CA20000 */  lw         $v0, 0x0($a1)
/* 1B23F0 802043A0 3C040001 */  lui        $a0, (0x10223 >> 16)
/* 1B23F4 802043A4 34840223 */  ori        $a0, $a0, (0x10223 & 0xFFFF)
/* 1B23F8 802043A8 8C480000 */  lw         $t0, 0x0($v0)
/* 1B23FC 802043AC 00084880 */  sll        $t1, $t0, 2
/* 1B2400 802043B0 00290821 */  addu       $at, $at, $t1
/* 1B2404 802043B4 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 1B2408 802043B8 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1B240C 802043BC 3C01800F */  lui        $at, %hi(D_800E9720)
/* 1B2410 802043C0 000A5880 */  sll        $t3, $t2, 2
/* 1B2414 802043C4 002B0821 */  addu       $at, $at, $t3
/* 1B2418 802043C8 0C02A7A9 */  jal        func_800A9EA4
/* 1B241C 802043CC AC209720 */   sw        $zero, %lo(D_800E9720)($at)
/* 1B2420 802043D0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1B2424 802043D4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1B2428 802043D8 44800000 */  mtc1       $zero, $f0
/* 1B242C 802043DC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1B2430 802043E0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1B2434 802043E4 44802000 */  mtc1       $zero, $f4
/* 1B2438 802043E8 000C6880 */  sll        $t5, $t4, 2
/* 1B243C 802043EC 002D0821 */  addu       $at, $at, $t5
/* 1B2440 802043F0 E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 1B2444 802043F4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1B2448 802043F8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1B244C 802043FC 000E7880 */  sll        $t7, $t6, 2
/* 1B2450 80204400 002F0821 */  addu       $at, $at, $t7
/* 1B2454 80204404 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 1B2458 80204408 8C580000 */  lw         $t8, 0x0($v0)
/* 1B245C 8020440C 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1B2460 80204410 0018C880 */  sll        $t9, $t8, 2
/* 1B2464 80204414 00390821 */  addu       $at, $at, $t9
/* 1B2468 80204418 E4206690 */  swc1       $f0, %lo(D_800E6690)($at)
/* 1B246C 8020441C 8C480000 */  lw         $t0, 0x0($v0)
/* 1B2470 80204420 3C018022 */  lui        $at, %hi(D_8021DA68_ovl9)
/* 1B2474 80204424 C426DA68 */  lwc1       $f6, %lo(D_8021DA68_ovl9)($at)
/* 1B2478 80204428 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1B247C 8020442C 00084880 */  sll        $t1, $t0, 2
/* 1B2480 80204430 00290821 */  addu       $at, $at, $t1
/* 1B2484 80204434 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 1B2488 80204438 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1B248C 8020443C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1B2490 80204440 44814000 */  mtc1       $at, $f8
/* 1B2494 80204444 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1B2498 80204448 000A5880 */  sll        $t3, $t2, 2
/* 1B249C 8020444C 002B0821 */  addu       $at, $at, $t3
/* 1B24A0 80204450 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* 1B24A4 80204454 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1B24A8 80204458 3C018022 */  lui        $at, %hi(D_8021DA6C_ovl9)
/* 1B24AC 8020445C C42ADA6C */  lwc1       $f10, %lo(D_8021DA6C_ovl9)($at)
/* 1B24B0 80204460 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1B24B4 80204464 000C6880 */  sll        $t5, $t4, 2
/* 1B24B8 80204468 002D0821 */  addu       $at, $at, $t5
/* 1B24BC 8020446C 0C02BE85 */  jal        func_800AFA14
/* 1B24C0 80204470 E42A3C90 */   swc1      $f10, %lo(D_800E3C90)($at)
/* 1B24C4 80204474 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B24C8 80204478 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B24CC 8020447C 03E00008 */  jr         $ra
/* 1B24D0 80204480 00000000 */   nop
