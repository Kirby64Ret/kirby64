glabel func_80220E14_ovl19
/* 241524 80220E14 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 241528 80220E18 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 24152C 80220E1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 241530 80220E20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 241534 80220E24 AFA40018 */  sw         $a0, 0x18($sp)
/* 241538 80220E28 8C6E0000 */  lw         $t6, 0x0($v1)
/* 24153C 80220E2C 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 241540 80220E30 44810000 */  mtc1       $at, $f0
/* 241544 80220E34 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 241548 80220E38 000E7880 */  sll        $t7, $t6, 2
/* 24154C 80220E3C 002F0821 */  addu       $at, $at, $t7
/* 241550 80220E40 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
/* 241554 80220E44 8C620000 */  lw         $v0, 0x0($v1)
/* 241558 80220E48 3C07800E */  lui        $a3, %hi(D_800E0D50)
/* 24155C 80220E4C 24E70D50 */  addiu      $a3, $a3, %lo(D_800E0D50)
/* 241560 80220E50 00021080 */  sll        $v0, $v0, 2
/* 241564 80220E54 00E2C021 */  addu       $t8, $a3, $v0
/* 241568 80220E58 8F190000 */  lw         $t9, 0x0($t8)
/* 24156C 80220E5C 3C08800E */  lui        $t0, %hi(gEntitiesNextPosXArray)
/* 241570 80220E60 250825D0 */  addiu      $t0, $t0, %lo(gEntitiesNextPosXArray)
/* 241574 80220E64 00195880 */  sll        $t3, $t9, 2
/* 241578 80220E68 010B6021 */  addu       $t4, $t0, $t3
/* 24157C 80220E6C C5840000 */  lwc1       $f4, 0x0($t4)
/* 241580 80220E70 01026821 */  addu       $t5, $t0, $v0
/* 241584 80220E74 3C09800E */  lui        $t1, %hi(gEntitiesNextPosYArray)
/* 241588 80220E78 E5A40000 */  swc1       $f4, 0x0($t5)
/* 24158C 80220E7C 8C620000 */  lw         $v0, 0x0($v1)
/* 241590 80220E80 25292790 */  addiu      $t1, $t1, %lo(gEntitiesNextPosYArray)
/* 241594 80220E84 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 241598 80220E88 00021080 */  sll        $v0, $v0, 2
.L80220E8C_ovl18:
/* 24159C 80220E8C 00E27021 */  addu       $t6, $a3, $v0
/* 2415A0 80220E90 8DCF0000 */  lw         $t7, 0x0($t6)
/* 2415A4 80220E94 44814000 */  mtc1       $at, $f8
/* 2415A8 80220E98 01225821 */  addu       $t3, $t1, $v0
/* 2415AC 80220E9C 000FC080 */  sll        $t8, $t7, 2
/* 2415B0 80220EA0 0138C821 */  addu       $t9, $t1, $t8
/* 2415B4 80220EA4 C7260000 */  lwc1       $f6, 0x0($t9)
/* 2415B8 80220EA8 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosZArray)
/* 2415BC 80220EAC 254A2950 */  addiu      $t2, $t2, %lo(gEntitiesNextPosZArray)
/* 2415C0 80220EB0 46083280 */  add.s      $f10, $f6, $f8
/* 2415C4 80220EB4 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 2415C8 80220EB8 3C040002 */  lui        $a0, (0x20071 >> 16)
.L80220EBC_ovl18:
/* 2415CC 80220EBC 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 2415D0 80220EC0 E56A0000 */  swc1       $f10, 0x0($t3)
/* 2415D4 80220EC4 8C620000 */  lw         $v0, 0x0($v1)
/* 2415D8 80220EC8 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 2415DC 80220ECC 34840071 */  ori        $a0, $a0, (0x20071 & 0xFFFF)
/* 2415E0 80220ED0 00021080 */  sll        $v0, $v0, 2
/* 2415E4 80220ED4 00E26021 */  addu       $t4, $a3, $v0
/* 2415E8 80220ED8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 2415EC 80220EDC 0142C021 */  addu       $t8, $t2, $v0
/* 2415F0 80220EE0 24060010 */  addiu      $a2, $zero, 0x10
.L80220EE4_ovl18:
/* 2415F4 80220EE4 000D7080 */  sll        $t6, $t5, 2
/* 2415F8 80220EE8 014E7821 */  addu       $t7, $t2, $t6
/* 2415FC 80220EEC C5F00000 */  lwc1       $f16, 0x0($t7)
/* 241600 80220EF0 E7100000 */  swc1       $f16, 0x0($t8)
/* 241604 80220EF4 8C790000 */  lw         $t9, 0x0($v1)
/* 241608 80220EF8 00195880 */  sll        $t3, $t9, 2
/* 24160C 80220EFC 002B0821 */  addu       $at, $at, $t3
/* 241610 80220F00 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 241614 80220F04 8C6C0000 */  lw         $t4, 0x0($v1)
/* 241618 80220F08 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 24161C 80220F0C 000C6880 */  sll        $t5, $t4, 2
/* 241620 80220F10 002D0821 */  addu       $at, $at, $t5
/* 241624 80220F14 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 241628 80220F18 8C6E0000 */  lw         $t6, 0x0($v1)
/* 24162C 80220F1C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 241630 80220F20 000E7880 */  sll        $t7, $t6, 2
/* 241634 80220F24 002F0821 */  addu       $at, $at, $t7
/* 241638 80220F28 0C02A619 */  jal        func_800A9864
/* 24163C 80220F2C E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 241640 80220F30 0C02BE85 */  jal        func_800AFA14
/* 241644 80220F34 00000000 */   nop
/* 241648 80220F38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24164C 80220F3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 241650 80220F40 03E00008 */  jr         $ra
/* 241654 80220F44 00000000 */   nop
