glabel func_80184EC0_ovl5
/* 12C330 80184EC0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12C334 80184EC4 AFB60038 */  sw         $s6, 0x38($sp)
/* 12C338 80184EC8 3C168019 */  lui        $s6, %hi(D_8018D3E8_ovl5)
/* 12C33C 80184ECC AFB40030 */  sw         $s4, 0x30($sp)
/* 12C340 80184ED0 0080A025 */  or         $s4, $a0, $zero
/* 12C344 80184ED4 26D6D3E8 */  addiu      $s6, $s6, %lo(D_8018D3E8_ovl5)
/* 12C348 80184ED8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 12C34C 80184EDC AFB50034 */  sw         $s5, 0x34($sp)
/* 12C350 80184EE0 AFB3002C */  sw         $s3, 0x2C($sp)
/* 12C354 80184EE4 AFB20028 */  sw         $s2, 0x28($sp)
/* 12C358 80184EE8 AFB10024 */  sw         $s1, 0x24($sp)
/* 12C35C 80184EEC AFB00020 */  sw         $s0, 0x20($sp)
/* 12C360 80184EF0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 12C364 80184EF4 0C02A422 */  jal        func_800A9088
/* 12C368 80184EF8 8EC40000 */   lw        $a0, 0x0($s6)
/* 12C36C 80184EFC 3C158005 */  lui        $s5, %hi(D_8004A7C4)
/* 12C370 80184F00 26B5A7C4 */  addiu      $s5, $s5, %lo(D_8004A7C4)
/* 12C374 80184F04 3C028019 */  lui        $v0, %hi(D_8018C300_ovl5)
/* 12C378 80184F08 8EA60000 */  lw         $a2, 0x0($s5)
/* 12C37C 80184F0C 2442C300 */  addiu      $v0, $v0, %lo(D_8018C300_ovl5)
/* 12C380 80184F10 C4440000 */  lwc1       $f4, 0x0($v0)
.L80184F14_ovl3:
/* 12C384 80184F14 C6C60028 */  lwc1       $f6, 0x28($s6)
/* 12C388 80184F18 8CCE0000 */  lw         $t6, 0x0($a2)
.L80184F1C_ovl3:
/* 12C38C 80184F1C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 12C390 80184F20 46062200 */  add.s      $f8, $f4, $f6
/* 12C394 80184F24 000E7880 */  sll        $t7, $t6, 2
/* 12C398 80184F28 002F0821 */  addu       $at, $at, $t7
/* 12C39C 80184F2C E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 12C3A0 80184F30 C6D0002C */  lwc1       $f16, 0x2C($s6)
/* 12C3A4 80184F34 C44A0004 */  lwc1       $f10, 0x4($v0)
/* 12C3A8 80184F38 8CD80000 */  lw         $t8, 0x0($a2)
/* 12C3AC 80184F3C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 12C3B0 80184F40 46105480 */  add.s      $f18, $f10, $f16
/* 12C3B4 80184F44 0018C880 */  sll        $t9, $t8, 2
/* 12C3B8 80184F48 00390821 */  addu       $at, $at, $t9
/* 12C3BC 80184F4C E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 12C3C0 80184F50 C6C60030 */  lwc1       $f6, 0x30($s6)
/* 12C3C4 80184F54 C4440008 */  lwc1       $f4, 0x8($v0)
/* 12C3C8 80184F58 8CC80000 */  lw         $t0, 0x0($a2)
/* 12C3CC 80184F5C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 12C3D0 80184F60 46062200 */  add.s      $f8, $f4, $f6
/* 12C3D4 80184F64 00084880 */  sll        $t1, $t0, 2
/* 12C3D8 80184F68 00290821 */  addu       $at, $at, $t1
/* 12C3DC 80184F6C E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 12C3E0 80184F70 8EC40004 */  lw         $a0, 0x4($s6)
/* 12C3E4 80184F74 50800004 */  beql       $a0, $zero, .L80184F88_ovl5
/* 12C3E8 80184F78 8EC40008 */   lw        $a0, 0x8($s6)
/* 12C3EC 80184F7C 0C02A806 */  jal        func_800AA018
/* 12C3F0 80184F80 00000000 */   nop
/* 12C3F4 80184F84 8EC40008 */  lw         $a0, 0x8($s6)
.L80184F88_ovl5:
/* 12C3F8 80184F88 10800003 */  beqz       $a0, .L80184F98_ovl5
.L80184F8C_ovl3:
/* 12C3FC 80184F8C 00000000 */   nop
/* 12C400 80184F90 0C02A806 */  jal        func_800AA018
/* 12C404 80184F94 00000000 */   nop
.L80184F98_ovl5:
/* 12C408 80184F98 3C018019 */  lui        $at, %hi(D_8018E018_ovl5)
/* 12C40C 80184F9C C420E018 */  lwc1       $f0, %lo(D_8018E018_ovl5)($at)
/* 12C410 80184FA0 AE800048 */  sw         $zero, 0x48($s4)
/* 12C414 80184FA4 8EA60000 */  lw         $a2, 0x0($s5)
/* 12C418 80184FA8 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 12C41C 80184FAC 44811000 */  mtc1       $at, $f2
/* 12C420 80184FB0 8CCA0000 */  lw         $t2, 0x0($a2)
/* 12C424 80184FB4 3C01800E */  lui        $at, %hi(D_800DF310)
/* 12C428 80184FB8 44806000 */  mtc1       $zero, $f12
/* 12C42C 80184FBC 000A5880 */  sll        $t3, $t2, 2
/* 12C430 80184FC0 002B0821 */  addu       $at, $at, $t3
/* 12C434 80184FC4 AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
/* 12C438 80184FC8 C6CA001C */  lwc1       $f10, 0x1C($s6)
/* 12C43C 80184FCC 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12C440 80184FD0 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 12C444 80184FD4 46005402 */  mul.s      $f16, $f10, $f0
/* 12C448 80184FD8 000C6880 */  sll        $t5, $t4, 2
/* 12C44C 80184FDC 002D0821 */  addu       $at, $at, $t5
/* 12C450 80184FE0 3C11800E */  lui        $s1, %hi(gEntitiesScaleXArray)
/* 12C454 80184FE4 26314550 */  addiu      $s1, $s1, %lo(gEntitiesScaleXArray)
/* 12C458 80184FE8 3C12800E */  lui        $s2, %hi(gEntitiesScaleYArray)
/* 12C45C 80184FEC 26524710 */  addiu      $s2, $s2, %lo(gEntitiesScaleYArray)
/* 12C460 80184FF0 46028483 */  div.s      $f18, $f16, $f2
/* 12C464 80184FF4 3C13800E */  lui        $s3, %hi(gEntitiesScaleZArray)
/* 12C468 80184FF8 267348D0 */  addiu      $s3, $s3, %lo(gEntitiesScaleZArray)
/* 12C46C 80184FFC 24140004 */  addiu      $s4, $zero, 0x4
.L80185000_ovl3:
/* 12C470 80185000 00008025 */  or         $s0, $zero, $zero
/* 12C474 80185004 E4324010 */  swc1       $f18, %lo(gEntitiesAngleXArray)($at)
/* 12C478 80185008 C6C40020 */  lwc1       $f4, 0x20($s6)
/* 12C47C 8018500C 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12C480 80185010 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 12C484 80185014 46002182 */  mul.s      $f6, $f4, $f0
/* 12C488 80185018 000E7880 */  sll        $t7, $t6, 2
/* 12C48C 8018501C 002F0821 */  addu       $at, $at, $t7
/* 12C490 80185020 46023203 */  div.s      $f8, $f6, $f2
/* 12C494 80185024 E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* 12C498 80185028 C6CA0024 */  lwc1       $f10, 0x24($s6)
/* 12C49C 8018502C 8CD80000 */  lw         $t8, 0x0($a2)
/* 12C4A0 80185030 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
/* 12C4A4 80185034 46005402 */  mul.s      $f16, $f10, $f0
/* 12C4A8 80185038 0018C880 */  sll        $t9, $t8, 2
/* 12C4AC 8018503C 00390821 */  addu       $at, $at, $t9
/* 12C4B0 80185040 46028483 */  div.s      $f18, $f16, $f2
/* 12C4B4 80185044 E4324390 */  swc1       $f18, %lo(gEntitiesAngleZArray)($at)
/* 12C4B8 80185048 8CC80000 */  lw         $t0, 0x0($a2)
/* 12C4BC 8018504C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 12C4C0 80185050 44813000 */  mtc1       $at, $f6
/* 12C4C4 80185054 00084880 */  sll        $t1, $t0, 2
/* 12C4C8 80185058 02295021 */  addu       $t2, $s1, $t1
/* 12C4CC 8018505C E54C0000 */  swc1       $f12, 0x0($t2)
/* 12C4D0 80185060 8CCB0000 */  lw         $t3, 0x0($a2)
/* 12C4D4 80185064 000B6080 */  sll        $t4, $t3, 2
/* 12C4D8 80185068 024C6821 */  addu       $t5, $s2, $t4
/* 12C4DC 8018506C E5AC0000 */  swc1       $f12, 0x0($t5)
/* 12C4E0 80185070 8CCE0000 */  lw         $t6, 0x0($a2)
.L80185074_ovl3:
/* 12C4E4 80185074 000E7880 */  sll        $t7, $t6, 2
/* 12C4E8 80185078 026FC021 */  addu       $t8, $s3, $t7
/* 12C4EC 8018507C E70C0000 */  swc1       $f12, 0x0($t8)
/* 12C4F0 80185080 C6C4000C */  lwc1       $f4, 0xC($s6)
/* 12C4F4 80185084 46062503 */  div.s      $f20, $f4, $f6
/* 12C4F8 80185088 8EA60000 */  lw         $a2, 0x0($s5)
.L8018508C_ovl5:
/* 12C4FC 8018508C 24040001 */  addiu      $a0, $zero, 0x1
/* 12C500 80185090 8CD90000 */  lw         $t9, 0x0($a2)
/* 12C504 80185094 00194080 */  sll        $t0, $t9, 2
.L80185098_ovl3:
/* 12C508 80185098 02281021 */  addu       $v0, $s1, $t0
/* 12C50C 8018509C C4480000 */  lwc1       $f8, 0x0($v0)
/* 12C510 801850A0 46144280 */  add.s      $f10, $f8, $f20
/* 12C514 801850A4 E44A0000 */  swc1       $f10, 0x0($v0)
/* 12C518 801850A8 8CC90000 */  lw         $t1, 0x0($a2)
/* 12C51C 801850AC 00095080 */  sll        $t2, $t1, 2
/* 12C520 801850B0 024A1821 */  addu       $v1, $s2, $t2
/* 12C524 801850B4 C4700000 */  lwc1       $f16, 0x0($v1)
/* 12C528 801850B8 46148480 */  add.s      $f18, $f16, $f20
/* 12C52C 801850BC E4720000 */  swc1       $f18, 0x0($v1)
/* 12C530 801850C0 8CCB0000 */  lw         $t3, 0x0($a2)
/* 12C534 801850C4 000B6080 */  sll        $t4, $t3, 2
/* 12C538 801850C8 026C2821 */  addu       $a1, $s3, $t4
.L801850CC_ovl3:
/* 12C53C 801850CC C4A40000 */  lwc1       $f4, 0x0($a1)
/* 12C540 801850D0 46142180 */  add.s      $f6, $f4, $f20
/* 12C544 801850D4 0C002DAF */  jal        finish_current_thread
/* 12C548 801850D8 E4A60000 */   swc1      $f6, 0x0($a1)
/* 12C54C 801850DC 26100001 */  addiu      $s0, $s0, 0x1
/* 12C550 801850E0 5614FFEA */  bnel       $s0, $s4, .L8018508C_ovl5
/* 12C554 801850E4 8EA60000 */   lw        $a2, 0x0($s5)
/* 12C558 801850E8 8EA60000 */  lw         $a2, 0x0($s5)
/* 12C55C 801850EC C6C0000C */  lwc1       $f0, 0xC($s6)
/* 12C560 801850F0 8CCD0000 */  lw         $t5, 0x0($a2)
/* 12C564 801850F4 000D7080 */  sll        $t6, $t5, 2
/* 12C568 801850F8 022E7821 */  addu       $t7, $s1, $t6
/* 12C56C 801850FC E5E00000 */  swc1       $f0, 0x0($t7)
/* 12C570 80185100 8CD80000 */  lw         $t8, 0x0($a2)
/* 12C574 80185104 0018C880 */  sll        $t9, $t8, 2
/* 12C578 80185108 02594021 */  addu       $t0, $s2, $t9
/* 12C57C 8018510C E5000000 */  swc1       $f0, 0x0($t0)
/* 12C580 80185110 8CC90000 */  lw         $t1, 0x0($a2)
/* 12C584 80185114 00095080 */  sll        $t2, $t1, 2
/* 12C588 80185118 026A5821 */  addu       $t3, $s3, $t2
/* 12C58C 8018511C 0C02BE85 */  jal        func_800AFA14
/* 12C590 80185120 E5600000 */   swc1      $f0, 0x0($t3)
/* 12C594 80185124 8FBF003C */  lw         $ra, 0x3C($sp)
/* 12C598 80185128 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 12C59C 8018512C 8FB00020 */  lw         $s0, 0x20($sp)
/* 12C5A0 80185130 8FB10024 */  lw         $s1, 0x24($sp)
/* 12C5A4 80185134 8FB20028 */  lw         $s2, 0x28($sp)
/* 12C5A8 80185138 8FB3002C */  lw         $s3, 0x2C($sp)
/* 12C5AC 8018513C 8FB40030 */  lw         $s4, 0x30($sp)
/* 12C5B0 80185140 8FB50034 */  lw         $s5, 0x34($sp)
/* 12C5B4 80185144 8FB60038 */  lw         $s6, 0x38($sp)
/* 12C5B8 80185148 03E00008 */  jr         $ra
/* 12C5BC 8018514C 27BD0040 */   addiu     $sp, $sp, 0x40
