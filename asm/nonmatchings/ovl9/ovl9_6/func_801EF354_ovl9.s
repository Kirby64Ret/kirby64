nonmatching func_801EF354_ovl9, 0x1D0

glabel func_801EF354_ovl9
    /* 19D3A4 801EF354 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 19D3A8 801EF358 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* 19D3AC 801EF35C 8CE60000 */  lw         $a2, 0x0($a3)
    /* 19D3B0 801EF360 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 19D3B4 801EF364 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 19D3B8 801EF368 AFA40020 */  sw         $a0, 0x20($sp)
    /* 19D3BC 801EF36C 8CC30000 */  lw         $v1, 0x0($a2)
    /* 19D3C0 801EF370 3C05800F */  lui        $a1, %hi(D_800E9AA0)
    /* 19D3C4 801EF374 3C0E800E */  lui        $t6, %hi(D_800E1B50)
    /* 19D3C8 801EF378 00031880 */  sll        $v1, $v1, 2
    /* 19D3CC 801EF37C 00A32821 */  addu       $a1, $a1, $v1
    /* 19D3D0 801EF380 8CA59AA0 */  lw         $a1, %lo(D_800E9AA0)($a1)
    /* 19D3D4 801EF384 01C37021 */  addu       $t6, $t6, $v1
    /* 19D3D8 801EF388 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
    /* 19D3DC 801EF38C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 19D3E0 801EF390 10A00030 */  beqz       $a1, .L801EF454_ovl9
    /* 19D3E4 801EF394 AFAE001C */   sw        $t6, 0x1C($sp)
    /* 19D3E8 801EF398 00230821 */  addu       $at, $at, $v1
    /* 19D3EC 801EF39C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 19D3F0 801EF3A0 8CAF004C */  lw         $t7, 0x4C($a1)
    /* 19D3F4 801EF3A4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 19D3F8 801EF3A8 E5E40004 */  swc1       $f4, 0x4($t7)
    /* 19D3FC 801EF3AC 8CF80000 */  lw         $t8, 0x0($a3)
    /* 19D400 801EF3B0 8CA9004C */  lw         $t1, 0x4C($a1)
    /* 19D404 801EF3B4 8F190000 */  lw         $t9, 0x0($t8)
    /* 19D408 801EF3B8 00194080 */  sll        $t0, $t9, 2
    /* 19D40C 801EF3BC 00280821 */  addu       $at, $at, $t0
    /* 19D410 801EF3C0 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 19D414 801EF3C4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 19D418 801EF3C8 E5260008 */  swc1       $f6, 0x8($t1)
    /* 19D41C 801EF3CC 8CEA0000 */  lw         $t2, 0x0($a3)
    /* 19D420 801EF3D0 8CAD004C */  lw         $t5, 0x4C($a1)
    /* 19D424 801EF3D4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 19D428 801EF3D8 000B6080 */  sll        $t4, $t3, 2
    /* 19D42C 801EF3DC 002C0821 */  addu       $at, $at, $t4
    /* 19D430 801EF3E0 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 19D434 801EF3E4 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 19D438 801EF3E8 E5A8000C */  swc1       $f8, 0xC($t5)
    /* 19D43C 801EF3EC 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 19D440 801EF3F0 8CB9004C */  lw         $t9, 0x4C($a1)
    /* 19D444 801EF3F4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 19D448 801EF3F8 000FC080 */  sll        $t8, $t7, 2
    /* 19D44C 801EF3FC 00380821 */  addu       $at, $at, $t8
    /* 19D450 801EF400 C42A4010 */  lwc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 19D454 801EF404 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 19D458 801EF408 E72A0010 */  swc1       $f10, 0x10($t9)
    /* 19D45C 801EF40C 8CE80000 */  lw         $t0, 0x0($a3)
    /* 19D460 801EF410 8CAB004C */  lw         $t3, 0x4C($a1)
    /* 19D464 801EF414 8D090000 */  lw         $t1, 0x0($t0)
    /* 19D468 801EF418 00095080 */  sll        $t2, $t1, 2
    /* 19D46C 801EF41C 002A0821 */  addu       $at, $at, $t2
    /* 19D470 801EF420 C43041D0 */  lwc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 19D474 801EF424 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 19D478 801EF428 E5700014 */  swc1       $f16, 0x14($t3)
    /* 19D47C 801EF42C 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 19D480 801EF430 8CAF004C */  lw         $t7, 0x4C($a1)
    /* 19D484 801EF434 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 19D488 801EF438 000D7080 */  sll        $t6, $t5, 2
    /* 19D48C 801EF43C 002E0821 */  addu       $at, $at, $t6
    /* 19D490 801EF440 C4324390 */  lwc1       $f18, %lo(gEntitiesAngleZArray)($at)
    /* 19D494 801EF444 E5F20018 */  swc1       $f18, 0x18($t7)
    /* 19D498 801EF448 8CE60000 */  lw         $a2, 0x0($a3)
    /* 19D49C 801EF44C 8CC30000 */  lw         $v1, 0x0($a2)
    /* 19D4A0 801EF450 00031880 */  sll        $v1, $v1, 2
  .L801EF454_ovl9:
    /* 19D4A4 801EF454 3C18800F */  lui        $t8, %hi(D_800E9E20)
    /* 19D4A8 801EF458 27189E20 */  addiu      $t8, $t8, %lo(D_800E9E20)
    /* 19D4AC 801EF45C 00782021 */  addu       $a0, $v1, $t8
    /* 19D4B0 801EF460 8C820000 */  lw         $v0, 0x0($a0)
    /* 19D4B4 801EF464 18400007 */  blez       $v0, .L801EF484_ovl9
    /* 19D4B8 801EF468 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 19D4BC 801EF46C AC990000 */  sw         $t9, 0x0($a0)
    /* 19D4C0 801EF470 8CC80000 */  lw         $t0, 0x0($a2)
    /* 19D4C4 801EF474 3C02800F */  lui        $v0, %hi(D_800E9E20)
    /* 19D4C8 801EF478 00084880 */  sll        $t1, $t0, 2
    /* 19D4CC 801EF47C 00491021 */  addu       $v0, $v0, $t1
    /* 19D4D0 801EF480 8C429E20 */  lw         $v0, %lo(D_800E9E20)($v0)
  .L801EF484_ovl9:
    /* 19D4D4 801EF484 1C400003 */  bgtz       $v0, .L801EF494_ovl9
    /* 19D4D8 801EF488 00000000 */   nop
    /* 19D4DC 801EF48C 0C06835D */  jal        func_801A0D74_ovl7
    /* 19D4E0 801EF490 8FA40020 */   lw        $a0, 0x20($sp)
  .L801EF494_ovl9:
    /* 19D4E4 801EF494 0C067CEC */  jal        func_8019F3B0_ovl7
    /* 19D4E8 801EF498 00000000 */   nop
    /* 19D4EC 801EF49C 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 19D4F0 801EF4A0 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* 19D4F4 801EF4A4 8CEA0000 */  lw         $t2, 0x0($a3)
    /* 19D4F8 801EF4A8 3C02800F */  lui        $v0, %hi(D_800E83E0)
    /* 19D4FC 801EF4AC 24010001 */  addiu      $at, $zero, 0x1
    /* 19D500 801EF4B0 8D430000 */  lw         $v1, 0x0($t2)
    /* 19D504 801EF4B4 3C05800F */  lui        $a1, %hi(D_800E9AA0)
    /* 19D508 801EF4B8 00031880 */  sll        $v1, $v1, 2
    /* 19D50C 801EF4BC 00431021 */  addu       $v0, $v0, $v1
    /* 19D510 801EF4C0 8C4283E0 */  lw         $v0, %lo(D_800E83E0)($v0)
    /* 19D514 801EF4C4 00A32821 */  addu       $a1, $a1, $v1
    /* 19D518 801EF4C8 10410003 */  beq        $v0, $at, .L801EF4D8_ovl9
    /* 19D51C 801EF4CC 24010003 */   addiu     $at, $zero, 0x3
    /* 19D520 801EF4D0 54410011 */  bnel       $v0, $at, .L801EF518_ovl9
    /* 19D524 801EF4D4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801EF4D8_ovl9:
    /* 19D528 801EF4D8 8CA59AA0 */  lw         $a1, %lo(D_800E9AA0)($a1)
    /* 19D52C 801EF4DC 50A0000E */  beql       $a1, $zero, .L801EF518_ovl9
    /* 19D530 801EF4E0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 19D534 801EF4E4 0C0287CC */  jal        func_800A1F30
    /* 19D538 801EF4E8 00A02025 */   or        $a0, $a1, $zero
    /* 19D53C 801EF4EC 8FAB001C */  lw         $t3, 0x1C($sp)
    /* 19D540 801EF4F0 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 19D544 801EF4F4 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* 19D548 801EF4F8 AD600034 */  sw         $zero, 0x34($t3)
    /* 19D54C 801EF4FC 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 19D550 801EF500 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 19D554 801EF504 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 19D558 801EF508 000D7080 */  sll        $t6, $t5, 2
    /* 19D55C 801EF50C 002E0821 */  addu       $at, $at, $t6
    /* 19D560 801EF510 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* 19D564 801EF514 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801EF518_ovl9:
    /* 19D568 801EF518 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 19D56C 801EF51C 03E00008 */  jr         $ra
    /* 19D570 801EF520 00000000 */   nop
endlabel func_801EF354_ovl9
.size func_801EF354_ovl9, . - func_801EF354_ovl9
