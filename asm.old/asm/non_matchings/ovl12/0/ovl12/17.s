glabel func_801DC094_ovl12 # 17
/* 000E94 801DC094 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 000E98 801DC098 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 000E9C 801DC09C 3C08800D */  lui         $t0, %hi(D_800D7098)
/* 000EA0 801DC0A0 25087098 */  addiu       $t0, $t0, %lo(D_800D7098)
/* 000EA4 801DC0A4 8D0F0000 */  lw          $t7, 0x0($t0)
/* 000EA8 801DC0A8 8DC30000 */  lw          $v1, 0x0($t6)
/* 000EAC 801DC0AC 3C07800E */  lui         $a3, %hi(gEntitiesNextPosYArray)
/* 000EB0 801DC0B0 24E72790 */  addiu       $a3, $a3, %lo(gEntitiesNextPosYArray)
/* 000EB4 801DC0B4 000FC080 */  sll         $t8, $t7, 2
/* 000EB8 801DC0B8 3C04800E */  lui         $a0, %hi(D_800DFBD0)
/* 000EBC 801DC0BC 00F8C821 */  addu        $t9, $a3, $t8
/* 000EC0 801DC0C0 3C0142C8 */  lui         $at, (0x42C80000 >> 16)
/* 000EC4 801DC0C4 00031880 */  sll         $v1, $v1, 2
/* 000EC8 801DC0C8 44813000 */  mtc1        $at, $f6
/* 000ECC 801DC0CC C7240000 */  lwc1        $f4, 0x0($t9)
/* 000ED0 801DC0D0 00832021 */  addu        $a0, $a0, $v1
/* 000ED4 801DC0D4 8C84FBD0 */  lw          $a0, %lo(D_800DFBD0)($a0)
/* 000ED8 801DC0D8 46062200 */  add.s       $f8, $f4, $f6
/* 000EDC 801DC0DC 00E35821 */  addu        $t3, $a3, $v1
/* 000EE0 801DC0E0 8C820008 */  lw          $v0, 0x8($a0)
/* 000EE4 801DC0E4 8C85000C */  lw          $a1, 0xC($a0)
/* 000EE8 801DC0E8 8C860010 */  lw          $a2, 0x10($a0)
/* 000EEC 801DC0EC E5680000 */  swc1        $f8, 0x0($t3)
/* 000EF0 801DC0F0 8D0C001C */  lw          $t4, 0x1C($t0)
/* 000EF4 801DC0F4 3C09800E */  lui         $t1, %hi(gEntitiesNextPosXArray)
/* 000EF8 801DC0F8 252925D0 */  addiu       $t1, $t1, %lo(gEntitiesNextPosXArray)
/* 000EFC 801DC0FC 000C6880 */  sll         $t5, $t4, 2
/* 000F00 801DC100 012D7021 */  addu        $t6, $t1, $t5
/* 000F04 801DC104 C5CA0000 */  lwc1        $f10, 0x0($t6)
/* 000F08 801DC108 3C0A800E */  lui         $t2, %hi(gEntitiesNextPosZArray)
/* 000F0C 801DC10C 254A2950 */  addiu       $t2, $t2, %lo(gEntitiesNextPosZArray)
/* 000F10 801DC110 E44A001C */  swc1        $f10, 0x1C($v0)
/* 000F14 801DC114 8D0F001C */  lw          $t7, 0x1C($t0)
/* 000F18 801DC118 000FC080 */  sll         $t8, $t7, 2
/* 000F1C 801DC11C 0158C821 */  addu        $t9, $t2, $t8
/* 000F20 801DC120 C7300000 */  lwc1        $f16, 0x0($t9)
/* 000F24 801DC124 E4500024 */  swc1        $f16, 0x24($v0)
/* 000F28 801DC128 8D0B0020 */  lw          $t3, 0x20($t0)
/* 000F2C 801DC12C 000B6080 */  sll         $t4, $t3, 2
/* 000F30 801DC130 012C6821 */  addu        $t5, $t1, $t4
/* 000F34 801DC134 C5B20000 */  lwc1        $f18, 0x0($t5)
/* 000F38 801DC138 E4B2001C */  swc1        $f18, 0x1C($a1)
/* 000F3C 801DC13C 8D0E0020 */  lw          $t6, 0x20($t0)
/* 000F40 801DC140 000E7880 */  sll         $t7, $t6, 2
/* 000F44 801DC144 014FC021 */  addu        $t8, $t2, $t7
/* 000F48 801DC148 C7040000 */  lwc1        $f4, 0x0($t8)
/* 000F4C 801DC14C E4A40024 */  swc1        $f4, 0x24($a1)
/* 000F50 801DC150 8D190024 */  lw          $t9, 0x24($t0)
/* 000F54 801DC154 00195880 */  sll         $t3, $t9, 2
/* 000F58 801DC158 012B6021 */  addu        $t4, $t1, $t3
/* 000F5C 801DC15C C5860000 */  lwc1        $f6, 0x0($t4)
/* 000F60 801DC160 E4C6001C */  swc1        $f6, 0x1C($a2)
/* 000F64 801DC164 8D0D0024 */  lw          $t5, 0x24($t0)
/* 000F68 801DC168 000D7080 */  sll         $t6, $t5, 2
/* 000F6C 801DC16C 014E7821 */  addu        $t7, $t2, $t6
/* 000F70 801DC170 C5E80000 */  lwc1        $f8, 0x0($t7)
/* 000F74 801DC174 03E00008 */  jr          $ra
/* 000F78 801DC178 E4C80024 */   swc1       $f8, 0x24($a2)
.type func_801DC094_ovl12, @function
.size func_801DC094_ovl12, . - func_801DC094_ovl12
