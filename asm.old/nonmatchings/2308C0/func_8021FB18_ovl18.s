glabel func_8021FB18_ovl18
/* 2324B8 8021FB18 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 2324BC 8021FB1C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 2324C0 8021FB20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2324C4 8021FB24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2324C8 8021FB28 8C4E0000 */  lw         $t6, 0x0($v0)
/* 2324CC 8021FB2C 3C01800E */  lui        $at, %hi(D_800E7CE0)
/* 2324D0 8021FB30 3C03800D */  lui        $v1, %hi(D_800D70D8)
/* 2324D4 8021FB34 000E7880 */  sll        $t7, $t6, 2
.L8021FB38_ovl19:
/* 2324D8 8021FB38 002F0821 */  addu       $at, $at, $t7
/* 2324DC 8021FB3C AC207CE0 */  sw         $zero, %lo(D_800E7CE0)($at)
.L8021FB40_ovl19:
/* 2324E0 8021FB40 8C580000 */  lw         $t8, 0x0($v0)
/* 2324E4 8021FB44 246370D8 */  addiu      $v1, $v1, %lo(D_800D70D8)
/* 2324E8 8021FB48 C4640000 */  lwc1       $f4, 0x0($v1)
/* 2324EC 8021FB4C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 2324F0 8021FB50 0018C880 */  sll        $t9, $t8, 2
/* 2324F4 8021FB54 00390821 */  addu       $at, $at, $t9
/* 2324F8 8021FB58 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 2324FC 8021FB5C 8C480000 */  lw         $t0, 0x0($v0)
/* 232500 8021FB60 C4660004 */  lwc1       $f6, 0x4($v1)
/* 232504 8021FB64 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 232508 8021FB68 00084880 */  sll        $t1, $t0, 2
/* 23250C 8021FB6C 00290821 */  addu       $at, $at, $t1
/* 232510 8021FB70 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 232514 8021FB74 8C4A0000 */  lw         $t2, 0x0($v0)
/* 232518 8021FB78 C4680008 */  lwc1       $f8, 0x8($v1)
/* 23251C 8021FB7C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 232520 8021FB80 000A5880 */  sll        $t3, $t2, 2
/* 232524 8021FB84 002B0821 */  addu       $at, $at, $t3
/* 232528 8021FB88 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 23252C 8021FB8C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 232530 8021FB90 C46A000C */  lwc1       $f10, 0xC($v1)
/* 232534 8021FB94 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 232538 8021FB98 000C6880 */  sll        $t5, $t4, 2
/* 23253C 8021FB9C 002D0821 */  addu       $at, $at, $t5
/* 232540 8021FBA0 E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
/* 232544 8021FBA4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 232548 8021FBA8 C4700010 */  lwc1       $f16, 0x10($v1)
/* 23254C 8021FBAC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 232550 8021FBB0 000E7880 */  sll        $t7, $t6, 2
/* 232554 8021FBB4 002F0821 */  addu       $at, $at, $t7
/* 232558 8021FBB8 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
/* 23255C 8021FBBC 8C580000 */  lw         $t8, 0x0($v0)
/* 232560 8021FBC0 C4720014 */  lwc1       $f18, 0x14($v1)
/* 232564 8021FBC4 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
/* 232568 8021FBC8 0018C880 */  sll        $t9, $t8, 2
/* 23256C 8021FBCC 00390821 */  addu       $at, $at, $t9
/* 232570 8021FBD0 E4324390 */  swc1       $f18, %lo(gEntitiesAngleZArray)($at)
/* 232574 8021FBD4 8C480000 */  lw         $t0, 0x0($v0)
/* 232578 8021FBD8 C4640018 */  lwc1       $f4, 0x18($v1)
/* 23257C 8021FBDC 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 232580 8021FBE0 00084880 */  sll        $t1, $t0, 2
/* 232584 8021FBE4 00290821 */  addu       $at, $at, $t1
/* 232588 8021FBE8 E4244550 */  swc1       $f4, %lo(gEntitiesScaleXArray)($at)
/* 23258C 8021FBEC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 232590 8021FBF0 C466001C */  lwc1       $f6, 0x1C($v1)
/* 232594 8021FBF4 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 232598 8021FBF8 000A5880 */  sll        $t3, $t2, 2
/* 23259C 8021FBFC 002B0821 */  addu       $at, $at, $t3
/* 2325A0 8021FC00 E4264710 */  swc1       $f6, %lo(gEntitiesScaleYArray)($at)
/* 2325A4 8021FC04 8C4C0000 */  lw         $t4, 0x0($v0)
/* 2325A8 8021FC08 C4680020 */  lwc1       $f8, 0x20($v1)
/* 2325AC 8021FC0C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 2325B0 8021FC10 000C6880 */  sll        $t5, $t4, 2
/* 2325B4 8021FC14 002D0821 */  addu       $at, $at, $t5
/* 2325B8 8021FC18 E42848D0 */  swc1       $f8, %lo(gEntitiesScaleZArray)($at)
/* 2325BC 8021FC1C 3C01800D */  lui        $at, %hi(D_800D7098)
/* 2325C0 8021FC20 AC207098 */  sw         $zero, %lo(D_800D7098)($at)
/* 2325C4 8021FC24 00002025 */  or         $a0, $zero, $zero
/* 2325C8 8021FC28 0C02C6FC */  jal        func_800B1BF0
/* 2325CC 8021FC2C 8C450000 */   lw        $a1, 0x0($v0)
/* 2325D0 8021FC30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2325D4 8021FC34 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2325D8 8021FC38 03E00008 */  jr         $ra
/* 2325DC 8021FC3C 00000000 */   nop
