glabel func_8022ED10_ovl19
/* 24F420 8022ED10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 24F424 8022ED14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24F428 8022ED18 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 24F42C 8022ED1C AFA40028 */  sw         $a0, 0x28($sp)
/* 24F430 8022ED20 0C02BB30 */  jal        func_800AECC0
/* 24F434 8022ED24 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 24F438 8022ED28 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 24F43C 8022ED2C 0C02BB48 */  jal        func_800AED20
/* 24F440 8022ED30 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 24F444 8022ED34 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24F448 8022ED38 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24F44C 8022ED3C 3C0E800B */  lui        $t6, %hi(func_800B4924)
/* 24F450 8022ED40 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 24F454 8022ED44 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24F458 8022ED48 25CE4924 */  addiu      $t6, $t6, %lo(func_800B4924)
/* 24F45C 8022ED4C 24040060 */  addiu      $a0, $zero, 0x60
/* 24F460 8022ED50 000FC080 */  sll        $t8, $t7, 2
/* 24F464 8022ED54 00380821 */  addu       $at, $at, $t8
/* 24F468 8022ED58 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 24F46C 8022ED5C 8C590000 */  lw         $t9, 0x0($v0)
/* 24F470 8022ED60 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 24F474 8022ED64 44812000 */  mtc1       $at, $f4
/* 24F478 8022ED68 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 24F47C 8022ED6C 00194080 */  sll        $t0, $t9, 2
/* 24F480 8022ED70 00280821 */  addu       $at, $at, $t0
/* 24F484 8022ED74 0C002DAF */  jal        finish_current_thread
/* 24F488 8022ED78 E4246A10 */   swc1      $f4, %lo(D_800E6A10)($at)
/* 24F48C 8022ED7C 44800000 */  mtc1       $zero, $f0
/* 24F490 8022ED80 3C014248 */  lui        $at, (0x42480000 >> 16)
/* 24F494 8022ED84 44813000 */  mtc1       $at, $f6
/* 24F498 8022ED88 240401F6 */  addiu      $a0, $zero, 0x1F6
/* 24F49C 8022ED8C E7A00024 */  swc1       $f0, 0x24($sp)
/* 24F4A0 8022ED90 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 24F4A4 8022ED94 0C029D9E */  jal        play_sound
/* 24F4A8 8022ED98 E7A60020 */   swc1      $f6, 0x20($sp)
/* 24F4AC 8022ED9C 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 24F4B0 8022EDA0 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 24F4B4 8022EDA4 3C0C800E */  lui        $t4, %hi(D_800E0D50)
/* 24F4B8 8022EDA8 3C04800F */  lui        $a0, %hi(D_800E9AA0)
/* 24F4BC 8022EDAC 8D2A0000 */  lw         $t2, 0x0($t1)
/* 24F4C0 8022EDB0 3C07BF59 */  lui        $a3, (0xBF59999A >> 16)
/* 24F4C4 8022EDB4 34E7999A */  ori        $a3, $a3, (0xBF59999A & 0xFFFF)
/* 24F4C8 8022EDB8 000A5880 */  sll        $t3, $t2, 2
/* 24F4CC 8022EDBC 018B6021 */  addu       $t4, $t4, $t3
/* 24F4D0 8022EDC0 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
/* 24F4D4 8022EDC4 27A5001C */  addiu      $a1, $sp, 0x1C
/* 24F4D8 8022EDC8 24060028 */  addiu      $a2, $zero, 0x28
/* 24F4DC 8022EDCC 000C6880 */  sll        $t5, $t4, 2
/* 24F4E0 8022EDD0 008D2021 */  addu       $a0, $a0, $t5
/* 24F4E4 8022EDD4 0C067C00 */  jal        func_8019F000_ovl7
/* 24F4E8 8022EDD8 8C849AA0 */   lw        $a0, %lo(D_800E9AA0)($a0)
/* 24F4EC 8022EDDC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24F4F0 8022EDE0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24F4F4 8022EDE4 3C018023 */  lui        $at, %hi(D_8022FAA0_ovl19)
/* 24F4F8 8022EDE8 C428FAA0 */  lwc1       $f8, %lo(D_8022FAA0_ovl19)($at)
/* 24F4FC 8022EDEC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24F500 8022EDF0 3C01800E */  lui        $at, %hi(D_800E6D90)
/* 24F504 8022EDF4 44805000 */  mtc1       $zero, $f10
/* 24F508 8022EDF8 000F7080 */  sll        $t6, $t7, 2
/* 24F50C 8022EDFC 002E0821 */  addu       $at, $at, $t6
/* 24F510 8022EE00 E4286D90 */  swc1       $f8, %lo(D_800E6D90)($at)
/* 24F514 8022EE04 8C580000 */  lw         $t8, 0x0($v0)
/* 24F518 8022EE08 3C05800E */  lui        $a1, %hi(D_800E17D0)
/* 24F51C 8022EE0C 24A517D0 */  addiu      $a1, $a1, %lo(D_800E17D0)
/* 24F520 8022EE10 0018C880 */  sll        $t9, $t8, 2
/* 24F524 8022EE14 00B94021 */  addu       $t0, $a1, $t9
/* 24F528 8022EE18 E50A0000 */  swc1       $f10, 0x0($t0)
/* 24F52C 8022EE1C 8C430000 */  lw         $v1, 0x0($v0)
/* 24F530 8022EE20 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 24F534 8022EE24 3C0A8023 */  lui        $t2, %hi(func_8022EE78_ovl19)
/* 24F538 8022EE28 00031880 */  sll        $v1, $v1, 2
/* 24F53C 8022EE2C 00A34821 */  addu       $t1, $a1, $v1
/* 24F540 8022EE30 C5300000 */  lwc1       $f16, 0x0($t1)
/* 24F544 8022EE34 00230821 */  addu       $at, $at, $v1
/* 24F548 8022EE38 254AEE78 */  addiu      $t2, $t2, %lo(func_8022EE78_ovl19)
/* 24F54C 8022EE3C E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
/* 24F550 8022EE40 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24F554 8022EE44 3C01800E */  lui        $at, %hi(D_800DF150)
/* 24F558 8022EE48 3C040001 */  lui        $a0, (0x10601 >> 16)
/* 24F55C 8022EE4C 000B6080 */  sll        $t4, $t3, 2
/* 24F560 8022EE50 002C0821 */  addu       $at, $at, $t4
/* 24F564 8022EE54 AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 24F568 8022EE58 0C02A806 */  jal        func_800AA018
/* 24F56C 8022EE5C 34840601 */   ori       $a0, $a0, (0x10601 & 0xFFFF)
/* 24F570 8022EE60 0C02BE85 */  jal        func_800AFA14
/* 24F574 8022EE64 00000000 */   nop
/* 24F578 8022EE68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24F57C 8022EE6C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 24F580 8022EE70 03E00008 */  jr         $ra
/* 24F584 8022EE74 00000000 */   nop
