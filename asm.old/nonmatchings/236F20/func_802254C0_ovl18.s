glabel func_802254C0_ovl18
/* 237E60 802254C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 237E64 802254C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 237E68 802254C8 0C087D28 */  jal        func_8021F4A0_ovl18
/* 237E6C 802254CC AFA40018 */   sw        $a0, 0x18($sp)
/* 237E70 802254D0 0C068CA0 */  jal        func_801A3280_ovl7
/* 237E74 802254D4 00000000 */   nop
/* 237E78 802254D8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 237E7C 802254DC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 237E80 802254E0 3C0E8022 */  lui        $t6, %hi(func_802255C0_ovl18)
/* 237E84 802254E4 3C01800E */  lui        $at, %hi(D_800DF150)
/* 237E88 802254E8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 237E8C 802254EC 25CE55C0 */  addiu      $t6, $t6, %lo(func_802255C0_ovl18)
/* 237E90 802254F0 3C07800E */  lui        $a3, %hi(gEntitiesScaleZArray)
/* 237E94 802254F4 000FC080 */  sll        $t8, $t7, 2
/* 237E98 802254F8 00380821 */  addu       $at, $at, $t8
/* 237E9C 802254FC AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* 237EA0 80225500 8C590000 */  lw         $t9, 0x0($v0)
/* 237EA4 80225504 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 237EA8 80225508 44812000 */  mtc1       $at, $f4
/* 237EAC 8022550C 24E748D0 */  addiu      $a3, $a3, %lo(gEntitiesScaleZArray)
/* 237EB0 80225510 00194880 */  sll        $t1, $t9, 2
/* 237EB4 80225514 00E95021 */  addu       $t2, $a3, $t1
/* 237EB8 80225518 E5440000 */  swc1       $f4, 0x0($t2)
/* 237EBC 8022551C 8C430000 */  lw         $v1, 0x0($v0)
/* 237EC0 80225520 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 237EC4 80225524 44803000 */  mtc1       $zero, $f6
/* 237EC8 80225528 00031880 */  sll        $v1, $v1, 2
/* 237ECC 8022552C 00E35821 */  addu       $t3, $a3, $v1
/* 237ED0 80225530 C5600000 */  lwc1       $f0, 0x0($t3)
/* 237ED4 80225534 00230821 */  addu       $at, $at, $v1
/* 237ED8 80225538 3C08800E */  lui        $t0, %hi(gEntityVtableIndexArray)
.L8022553C_ovl19:
/* 237EDC 8022553C E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 237EE0 80225540 8C4C0000 */  lw         $t4, 0x0($v0)
/* 237EE4 80225544 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 237EE8 80225548 2508DC50 */  addiu      $t0, $t0, %lo(gEntityVtableIndexArray)
/* 237EEC 8022554C 000C6880 */  sll        $t5, $t4, 2
/* 237EF0 80225550 002D0821 */  addu       $at, $at, $t5
/* 237EF4 80225554 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 237EF8 80225558 8C4F0000 */  lw         $t7, 0x0($v0)
/* 237EFC 8022555C 3C01800F */  lui        $at, %hi(D_800E93A0)
/* 237F00 80225560 3C068023 */  lui        $a2, %hi(D_8022ACE8_ovl18)
/* 237F04 80225564 000F7080 */  sll        $t6, $t7, 2
/* 237F08 80225568 002E0821 */  addu       $at, $at, $t6
/* 237F0C 8022556C AC2093A0 */  sw         $zero, %lo(D_800E93A0)($at)
/* 237F10 80225570 8C580000 */  lw         $t8, 0x0($v0)
/* 237F14 80225574 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 237F18 80225578 24C6ACE8 */  addiu      $a2, $a2, %lo(D_8022ACE8_ovl18)
/* 237F1C 8022557C 0018C880 */  sll        $t9, $t8, 2
/* 237F20 80225580 00390821 */  addu       $at, $at, $t9
/* 237F24 80225584 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* 237F28 80225588 8C490000 */  lw         $t1, 0x0($v0)
/* 237F2C 8022558C 24050002 */  addiu      $a1, $zero, 0x2
/* 237F30 80225590 00095080 */  sll        $t2, $t1, 2
/* 237F34 80225594 010A5821 */  addu       $t3, $t0, $t2
/* 237F38 80225598 AD600000 */  sw         $zero, 0x0($t3)
/* 237F3C 8022559C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 237F40 802255A0 000C6880 */  sll        $t5, $t4, 2
/* 237F44 802255A4 010D7821 */  addu       $t7, $t0, $t5
/* 237F48 802255A8 0C02911F */  jal        call_virtual_function
/* 237F4C 802255AC 8DE40000 */   lw        $a0, 0x0($t7)
/* 237F50 802255B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 237F54 802255B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 237F58 802255B8 03E00008 */  jr         $ra
/* 237F5C 802255BC 00000000 */   nop
