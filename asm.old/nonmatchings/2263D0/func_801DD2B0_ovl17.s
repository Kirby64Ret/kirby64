glabel func_801DD2B0_ovl17
/* 2284A0 801DD2B0 3C01801E */  lui        $at, %hi(D_801E5584_ovl17)
/* 2284A4 801DD2B4 C4205584 */  lwc1       $f0, %lo(D_801E5584_ovl17)($at)
/* 2284A8 801DD2B8 3C03800D */  lui        $v1, %hi(D_800D7B20)
/* 2284AC 801DD2BC 3C0E800D */  lui        $t6, %hi(D_800D799C)
/* 2284B0 801DD2C0 8DCE799C */  lw         $t6, %lo(D_800D799C)($t6)
.L801DD2C4_ovl14:
/* 2284B4 801DD2C4 24637B20 */  addiu      $v1, $v1, %lo(D_800D7B20)
/* 2284B8 801DD2C8 3C01801E */  lui        $at, %hi(D_801E5588_ovl17)
glabel func_801DD2CC_ovl10
/* 2284BC 801DD2CC C4225588 */  lwc1       $f2, %lo(D_801E5588_ovl17)($at)
/* 2284C0 801DD2D0 8C790000 */  lw         $t9, 0x0($v1)
/* 2284C4 801DD2D4 3C01801E */  lui        $at, %hi(D_801E5590_ovl17)
/* 2284C8 801DD2D8 3C0F800D */  lui        $t7, %hi(D_800D7B38)
/* 2284CC 801DD2DC D42C5590 */  ldc1       $f12, %lo(D_801E5590_ovl17)($at)
/* 2284D0 801DD2E0 8DC2003C */  lw         $v0, 0x3C($t6)
/* 2284D4 801DD2E4 25EF7B38 */  addiu      $t7, $t7, %lo(D_800D7B38)
.L801DD2E8_ovl12:
/* 2284D8 801DD2E8 ADF90000 */  sw         $t9, 0x0($t7)
/* 2284DC 801DD2EC 8C780004 */  lw         $t8, 0x4($v1)
/* 2284E0 801DD2F0 3C01801E */  lui        $at, %hi(D_801E56F0_ovl17)
.L801DD2F4_ovl14:
/* 2284E4 801DD2F4 3C0A800D */  lui        $t2, %hi(D_800D7B2C)
/* 2284E8 801DD2F8 ADF80004 */  sw         $t8, 0x4($t7)
.L801DD2FC_ovl12:
/* 2284EC 801DD2FC 8C790008 */  lw         $t9, 0x8($v1)
/* 2284F0 801DD300 254A7B2C */  addiu      $t2, $t2, %lo(D_800D7B2C)
/* 2284F4 801DD304 ADF90008 */  sw         $t9, 0x8($t7)
.L801DD308_ovl15:
/* 2284F8 801DD308 8C78000C */  lw         $t8, 0xC($v1)
.L801DD30C_ovl15:
/* 2284FC 801DD30C ADF8000C */  sw         $t8, 0xC($t7)
.L801DD310_ovl16:
/* 228500 801DD310 8C790010 */  lw         $t9, 0x10($v1)
/* 228504 801DD314 ADF90010 */  sw         $t9, 0x10($t7)
glabel func_801DD318_ovl15
/* 228508 801DD318 8C780014 */  lw         $t8, 0x14($v1)
.L801DD31C_ovl10:
/* 22850C 801DD31C ADF80014 */  sw         $t8, 0x14($t7)
/* 228510 801DD320 C42456F0 */  lwc1       $f4, %lo(D_801E56F0_ovl17)($at)
/* 228514 801DD324 3C01801E */  lui        $at, %hi(D_801E56F4_ovl17)
/* 228518 801DD328 C4520048 */  lwc1       $f18, 0x48($v0)
/* 22851C 801DD32C E444003C */  swc1       $f4, 0x3C($v0)
.L801DD330_ovl11:
/* 228520 801DD330 C42656F4 */  lwc1       $f6, %lo(D_801E56F4_ovl17)($at)
/* 228524 801DD334 3C01801E */  lui        $at, %hi(D_801E56F8_ovl17)
.L801DD338_ovl11:
/* 228528 801DD338 E4460040 */  swc1       $f6, 0x40($v0)
glabel func_801DD33C_ovl13
/* 22852C 801DD33C C42856F8 */  lwc1       $f8, %lo(D_801E56F8_ovl17)($at)
.L801DD340_ovl16:
/* 228530 801DD340 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 228534 801DD344 E4480044 */  swc1       $f8, 0x44($v0)
.L801DD348_ovl11:
/* 228538 801DD348 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* 22853C 801DD34C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 228540 801DD350 46005402 */  mul.s      $f16, $f10, $f0
/* 228544 801DD354 00000000 */  nop
/* 228548 801DD358 46029102 */  mul.s      $f4, $f18, $f2
.L801DD35C_ovl16:
/* 22854C 801DD35C C452004C */  lwc1       $f18, 0x4C($v0)
/* 228550 801DD360 46048180 */  add.s      $f6, $f16, $f4
/* 228554 801DD364 E4460048 */  swc1       $f6, 0x48($v0)
/* 228558 801DD368 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
.L801DD36C_ovl13:
/* 22855C 801DD36C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
.L801DD370_ovl11:
/* 228560 801DD370 8C490048 */  lw         $t1, 0x48($v0)
.L801DD374_ovl14:
/* 228564 801DD374 46004282 */  mul.s      $f10, $f8, $f0
/* 228568 801DD378 00000000 */  nop
/* 22856C 801DD37C 46029402 */  mul.s      $f16, $f18, $f2
.L801DD380_ovl10:
/* 228570 801DD380 C4520050 */  lwc1       $f18, 0x50($v0)
/* 228574 801DD384 46105100 */  add.s      $f4, $f10, $f16
/* 228578 801DD388 E444004C */  swc1       $f4, 0x4C($v0)
/* 22857C 801DD38C C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
glabel func_801DD390_ovl16
/* 228580 801DD390 C4440054 */  lwc1       $f4, 0x54($v0)
/* 228584 801DD394 3C01800D */  lui        $at, %hi(D_800D7158)
.L801DD398_ovl12:
/* 228588 801DD398 46003202 */  mul.s      $f8, $f6, $f0
/* 22858C 801DD39C 460021A1 */  cvt.d.s    $f6, $f4
.L801DD3A0_ovl11:
/* 228590 801DD3A0 46029282 */  mul.s      $f10, $f18, $f2
.L801DD3A4_ovl16:
/* 228594 801DD3A4 00000000 */  nop
glabel func_801DD3A8_ovl13
/* 228598 801DD3A8 462C3482 */  mul.d      $f18, $f6, $f12
/* 22859C 801DD3AC 460A4400 */  add.s      $f16, $f8, $f10
.L801DD3B0_ovl11:
/* 2285A0 801DD3B0 C44A0058 */  lwc1       $f10, 0x58($v0)
.L801DD3B4_ovl14:
/* 2285A4 801DD3B4 46209220 */  cvt.s.d    $f8, $f18
/* 2285A8 801DD3B8 E4500050 */  swc1       $f16, 0x50($v0)
/* 2285AC 801DD3BC C452005C */  lwc1       $f18, 0x5C($v0)
/* 2285B0 801DD3C0 46005421 */  cvt.d.s    $f16, $f10
/* 2285B4 801DD3C4 E4480054 */  swc1       $f8, 0x54($v0)
/* 2285B8 801DD3C8 462C8102 */  mul.d      $f4, $f16, $f12
glabel func_801DD3CC_ovl9
/* 2285BC 801DD3CC 46009221 */  cvt.d.s    $f8, $f18
/* 2285C0 801DD3D0 462C4282 */  mul.d      $f10, $f8, $f12
/* 2285C4 801DD3D4 462021A0 */  cvt.s.d    $f6, $f4
.L801DD3D8_ovl16:
/* 2285C8 801DD3D8 46205420 */  cvt.s.d    $f16, $f10
/* 2285CC 801DD3DC E4460058 */  swc1       $f6, 0x58($v0)
/* 2285D0 801DD3E0 E450005C */  swc1       $f16, 0x5C($v0)
/* 2285D4 801DD3E4 C4247158 */  lwc1       $f4, %lo(D_800D7158)($at)
.L801DD3E8_ovl16:
/* 2285D8 801DD3E8 3C01800D */  lui        $at, %hi(D_800D7158 + 0x4)
/* 2285DC 801DD3EC E4440020 */  swc1       $f4, 0x20($v0)
/* 2285E0 801DD3F0 C426715C */  lwc1       $f6, %lo(D_800D7158 + 0x4)($at)
/* 2285E4 801DD3F4 3C01800D */  lui        $at, %hi(D_800D7158 + 0x8)
/* 2285E8 801DD3F8 E4460028 */  swc1       $f6, 0x28($v0)
/* 2285EC 801DD3FC C4327160 */  lwc1       $f18, %lo(D_800D7158 + 0x8)($at)
glabel func_801DD400_ovl12
/* 2285F0 801DD400 E452002C */  swc1       $f18, 0x2C($v0)
/* 2285F4 801DD404 AC690000 */  sw         $t1, 0x0($v1)
/* 2285F8 801DD408 8C48004C */  lw         $t0, 0x4C($v0)
.L801DD40C_ovl11:
/* 2285FC 801DD40C AC680004 */  sw         $t0, 0x4($v1)
/* 228600 801DD410 8C490050 */  lw         $t1, 0x50($v0)
/* 228604 801DD414 AC690008 */  sw         $t1, 0x8($v1)
/* 228608 801DD418 8C4C003C */  lw         $t4, 0x3C($v0)
.L801DD41C_ovl16:
/* 22860C 801DD41C AD4C0000 */  sw         $t4, 0x0($t2)
/* 228610 801DD420 8C4B0040 */  lw         $t3, 0x40($v0)
/* 228614 801DD424 AD4B0004 */  sw         $t3, 0x4($t2)
/* 228618 801DD428 8C4C0044 */  lw         $t4, 0x44($v0)
/* 22861C 801DD42C 03E00008 */  jr         $ra
/* 228620 801DD430 AD4C0008 */   sw        $t4, 0x8($t2)
/* 228624 801DD434 00000000 */  nop
