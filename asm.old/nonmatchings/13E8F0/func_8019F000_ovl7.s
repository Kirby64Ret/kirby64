glabel func_8019F000_ovl7
/* 145070 8019F000 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 145074 8019F004 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 145078 8019F008 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 14507C 8019F00C AFBF0014 */  sw         $ra, 0x14($sp)
/* 145080 8019F010 AFA40050 */  sw         $a0, 0x50($sp)
/* 145084 8019F014 8C4E0000 */  lw         $t6, 0x0($v0)
/* 145088 8019F018 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 14508C 8019F01C 27AA002C */  addiu      $t2, $sp, 0x2C
/* 145090 8019F020 000E7880 */  sll        $t7, $t6, 2
/* 145094 8019F024 002F0821 */  addu       $at, $at, $t7
/* 145098 8019F028 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 14509C 8019F02C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1450A0 8019F030 44876000 */  mtc1       $a3, $f12
/* 1450A4 8019F034 E7A40020 */  swc1       $f4, 0x20($sp)
/* 1450A8 8019F038 8C580000 */  lw         $t8, 0x0($v0)
/* 1450AC 8019F03C 0018C880 */  sll        $t9, $t8, 2
/* 1450B0 8019F040 00390821 */  addu       $at, $at, $t9
/* 1450B4 8019F044 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1450B8 8019F048 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1450BC 8019F04C E7A60024 */  swc1       $f6, 0x24($sp)
/* 1450C0 8019F050 8C480000 */  lw         $t0, 0x0($v0)
/* 1450C4 8019F054 00084880 */  sll        $t1, $t0, 2
/* 1450C8 8019F058 00290821 */  addu       $at, $at, $t1
/* 1450CC 8019F05C C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1450D0 8019F060 E7A80028 */  swc1       $f8, 0x28($sp)
/* 1450D4 8019F064 8C8C0008 */  lw         $t4, 0x8($a0)
/* 1450D8 8019F068 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1450DC 8019F06C 8C8B000C */  lw         $t3, 0xC($a0)
/* 1450E0 8019F070 AD4B0004 */  sw         $t3, 0x4($t2)
/* 1450E4 8019F074 8C8C0010 */  lw         $t4, 0x10($a0)
/* 1450E8 8019F078 27A40020 */  addiu      $a0, $sp, 0x20
/* 1450EC 8019F07C AD4C0008 */  sw         $t4, 0x8($t2)
/* 1450F0 8019F080 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* 1450F4 8019F084 C4B00000 */  lwc1       $f16, 0x0($a1)
/* 1450F8 8019F088 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 1450FC 8019F08C 46105480 */  add.s      $f18, $f10, $f16
/* 145100 8019F090 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 145104 8019F094 E7B2002C */  swc1       $f18, 0x2C($sp)
/* 145108 8019F098 C4A60004 */  lwc1       $f6, 0x4($a1)
/* 14510C 8019F09C 46062200 */  add.s      $f8, $f4, $f6
/* 145110 8019F0A0 E7A80030 */  swc1       $f8, 0x30($sp)
/* 145114 8019F0A4 C4B00008 */  lwc1       $f16, 0x8($a1)
/* 145118 8019F0A8 AFA6004C */  sw         $a2, 0x4C($sp)
/* 14511C 8019F0AC E7AC0044 */  swc1       $f12, 0x44($sp)
/* 145120 8019F0B0 46105480 */  add.s      $f18, $f10, $f16
/* 145124 8019F0B4 0C067B17 */  jal        func_8019EC5C_ovl7
/* 145128 8019F0B8 E7B20034 */   swc1      $f18, 0x34($sp)
/* 14512C 8019F0BC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 145130 8019F0C0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 145134 8019F0C4 C7A40038 */  lwc1       $f4, 0x38($sp)
/* 145138 8019F0C8 3C01800E */  lui        $at, %hi(D_800E3050)
/* 14513C 8019F0CC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 145140 8019F0D0 C7A6003C */  lwc1       $f6, 0x3C($sp)
/* 145144 8019F0D4 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 145148 8019F0D8 000D7080 */  sll        $t6, $t5, 2
/* 14514C 8019F0DC 002E0821 */  addu       $at, $at, $t6
/* 145150 8019F0E0 E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 145154 8019F0E4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 145158 8019F0E8 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 14515C 8019F0EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 145160 8019F0F0 000FC080 */  sll        $t8, $t7, 2
/* 145164 8019F0F4 00380821 */  addu       $at, $at, $t8
/* 145168 8019F0F8 E42633D0 */  swc1       $f6, %lo(D_800E33D0)($at)
/* 14516C 8019F0FC 8C590000 */  lw         $t9, 0x0($v0)
/* 145170 8019F100 3C01800E */  lui        $at, %hi(D_800E3210)
/* 145174 8019F104 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 145178 8019F108 00194080 */  sll        $t0, $t9, 2
/* 14517C 8019F10C 00280821 */  addu       $at, $at, $t0
/* 145180 8019F110 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 145184 8019F114 8C490000 */  lw         $t1, 0x0($v0)
/* 145188 8019F118 3C01800E */  lui        $at, %hi(D_800E3750)
/* 14518C 8019F11C 27BD0050 */  addiu      $sp, $sp, 0x50
/* 145190 8019F120 00095080 */  sll        $t2, $t1, 2
/* 145194 8019F124 002A0821 */  addu       $at, $at, $t2
/* 145198 8019F128 03E00008 */  jr         $ra
/* 14519C 8019F12C E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
