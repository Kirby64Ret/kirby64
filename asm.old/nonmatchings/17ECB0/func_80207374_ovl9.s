glabel func_80207374_ovl9
/* 1B53C4 80207374 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1B53C8 80207378 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1B53CC 8020737C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B53D0 80207380 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B53D4 80207384 8DC20000 */  lw         $v0, 0x0($t6)
/* 1B53D8 80207388 3C06800E */  lui        $a2, %hi(D_800E1B50)
/* 1B53DC 8020738C 3C0F800B */  lui        $t7, %hi(func_800B7B64)
/* 1B53E0 80207390 00021080 */  sll        $v0, $v0, 2
/* 1B53E4 80207394 00C23021 */  addu       $a2, $a2, $v0
/* 1B53E8 80207398 8CC61B50 */  lw         $a2, %lo(D_800E1B50)($a2)
/* 1B53EC 8020739C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1B53F0 802073A0 00220821 */  addu       $at, $at, $v0
/* 1B53F4 802073A4 25EF7B64 */  addiu      $t7, $t7, %lo(func_800B7B64)
/* 1B53F8 802073A8 3C18801D */  lui        $t8, %hi(D_801CC550)
/* 1B53FC 802073AC AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 1B5400 802073B0 2718C550 */  addiu      $t8, $t8, %lo(D_801CC550)
/* 1B5404 802073B4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B5408 802073B8 ACD80098 */  sw         $t8, 0x98($a2)
/* 1B540C 802073BC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B5410 802073C0 3C09800E */  lui        $t1, %hi(D_800E6A10)
/* 1B5414 802073C4 25296A10 */  addiu      $t1, $t1, %lo(D_800E6A10)
/* 1B5418 802073C8 8C790000 */  lw         $t9, 0x0($v1)
/* 1B541C 802073CC 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1B5420 802073D0 3C0A8020 */  lui        $t2, %hi(func_802074B0_ovl9)
/* 1B5424 802073D4 00194080 */  sll        $t0, $t9, 2
/* 1B5428 802073D8 01092821 */  addu       $a1, $t0, $t1
/* 1B542C 802073DC C4A40000 */  lwc1       $f4, 0x0($a1)
/* 1B5430 802073E0 254A74B0 */  addiu      $t2, $t2, %lo(func_802074B0_ovl9)
/* 1B5434 802073E4 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* 1B5438 802073E8 46002187 */  neg.s      $f6, $f4
/* 1B543C 802073EC E4A60000 */  swc1       $f6, 0x0($a1)
/* 1B5440 802073F0 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1B5444 802073F4 000B6080 */  sll        $t4, $t3, 2
/* 1B5448 802073F8 002C0821 */  addu       $at, $at, $t4
/* 1B544C 802073FC AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 1B5450 80207400 8C620000 */  lw         $v0, 0x0($v1)
/* 1B5454 80207404 00021080 */  sll        $v0, $v0, 2
/* 1B5458 80207408 01A26821 */  addu       $t5, $t5, $v0
/* 1B545C 8020740C 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* 1B5460 80207410 31AE0001 */  andi       $t6, $t5, 0x1
/* 1B5464 80207414 11C00007 */  beqz       $t6, .L80207434_ovl9
/* 1B5468 80207418 00000000 */   nop
/* 1B546C 8020741C 0C069B04 */  jal        func_801A6C10_ovl7
/* 1B5470 80207420 00000000 */   nop
/* 1B5474 80207424 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1B5478 80207428 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1B547C 8020742C 8DE20000 */  lw         $v0, 0x0($t7)
/* 1B5480 80207430 00021080 */  sll        $v0, $v0, 2
.L80207434_ovl9:
/* 1B5484 80207434 3C18800F */  lui        $t8, %hi(D_800E8920)
/* 1B5488 80207438 0302C021 */  addu       $t8, $t8, $v0
/* 1B548C 8020743C 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* 1B5490 80207440 24010001 */  addiu      $at, $zero, 0x1
/* 1B5494 80207444 24190003 */  addiu      $t9, $zero, 0x3
/* 1B5498 80207448 17010005 */  bne        $t8, $at, .L80207460_ovl9
/* 1B549C 8020744C 3C048020 */   lui       $a0, %hi(func_80207304_ovl9)
/* 1B54A0 80207450 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B54A4 80207454 00220821 */  addu       $at, $at, $v0
/* 1B54A8 80207458 10000004 */  b          .L8020746C_ovl9
/* 1B54AC 8020745C AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
.L80207460_ovl9:
/* 1B54B0 80207460 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B54B4 80207464 00220821 */  addu       $at, $at, $v0
/* 1B54B8 80207468 AC39DC50 */  sw         $t9, %lo(gEntityVtableIndexArray)($at)
.L8020746C_ovl9:
/* 1B54BC 8020746C 0C068354 */  jal        func_801A0D50_ovl7
/* 1B54C0 80207470 24847304 */   addiu     $a0, $a0, %lo(func_80207304_ovl9)
/* 1B54C4 80207474 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 1B54C8 80207478 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 1B54CC 8020747C 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 1B54D0 80207480 3C068022 */  lui        $a2, %hi(D_8021C8D8_ovl9)
/* 1B54D4 80207484 8D090000 */  lw         $t1, 0x0($t0)
/* 1B54D8 80207488 24C6C8D8 */  addiu      $a2, $a2, %lo(D_8021C8D8_ovl9)
/* 1B54DC 8020748C 24050004 */  addiu      $a1, $zero, 0x4
/* 1B54E0 80207490 00095880 */  sll        $t3, $t1, 2
/* 1B54E4 80207494 008B2021 */  addu       $a0, $a0, $t3
/* 1B54E8 80207498 0C02911F */  jal        call_virtual_function
/* 1B54EC 8020749C 8C84DC50 */   lw        $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1B54F0 802074A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B54F4 802074A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B54F8 802074A8 03E00008 */  jr         $ra
/* 1B54FC 802074AC 00000000 */   nop
