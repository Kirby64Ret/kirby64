glabel func_80160E6C_ovl5
/* 1082DC 80160E6C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1082E0 80160E70 AFB30048 */  sw         $s3, 0x48($sp)
/* 1082E4 80160E74 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 1082E8 80160E78 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* 1082EC 80160E7C 8E620000 */  lw         $v0, 0x0($s3)
/* 1082F0 80160E80 AFBF0054 */  sw         $ra, 0x54($sp)
/* 1082F4 80160E84 AFB50050 */  sw         $s5, 0x50($sp)
.L80160E88_ovl3:
/* 1082F8 80160E88 AFB4004C */  sw         $s4, 0x4C($sp)
/* 1082FC 80160E8C AFB20044 */  sw         $s2, 0x44($sp)
/* 108300 80160E90 AFB10040 */  sw         $s1, 0x40($sp)
/* 108304 80160E94 AFB0003C */  sw         $s0, 0x3C($sp)
/* 108308 80160E98 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 10830C 80160E9C F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 108310 80160EA0 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 108314 80160EA4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 108318 80160EA8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 10831C 80160EAC AFA40058 */  sw         $a0, 0x58($sp)
/* 108320 80160EB0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 108324 80160EB4 3C01800F */  lui        $at, %hi(D_800E98E0)
.L80160EB8_ovl3:
/* 108328 80160EB8 3C188019 */  lui        $t8, %hi(func_8018E164_ovl5 + 0x7C)
/* 10832C 80160EBC 000E7880 */  sll        $t7, $t6, 2
/* 108330 80160EC0 002F0821 */  addu       $at, $at, $t7
/* 108334 80160EC4 AC2598E0 */  sw         $a1, %lo(D_800E98E0)($at)
/* 108338 80160EC8 8C480000 */  lw         $t0, 0x0($v0)
/* 10833C 80160ECC 2718E1E0 */  addiu      $t8, $t8, %lo(func_8018E164_ovl5 + 0x7C)
/* 108340 80160ED0 00B8A821 */  addu       $s5, $a1, $t8
/* 108344 80160ED4 3C01800E */  lui        $at, %hi(D_800DDA90)
/* 108348 80160ED8 00084880 */  sll        $t1, $t0, 2
/* 10834C 80160EDC 92B00000 */  lbu        $s0, 0x0($s5)
/* 108350 80160EE0 00290821 */  addu       $at, $at, $t1
/* 108354 80160EE4 24190025 */  addiu      $t9, $zero, 0x25
/* 108358 80160EE8 AC39DA90 */  sw         $t9, %lo(D_800DDA90)($at)
/* 10835C 80160EEC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 108360 80160EF0 3C01800E */  lui        $at, %hi(D_800DF150)
/* 108364 80160EF4 3C0A8016 */  lui        $t2, %hi(func_80161078_ovl5)
/* 108368 80160EF8 000B6080 */  sll        $t4, $t3, 2
/* 10836C 80160EFC 002C0821 */  addu       $at, $at, $t4
/* 108370 80160F00 254A1078 */  addiu      $t2, $t2, %lo(func_80161078_ovl5)
/* 108374 80160F04 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 108378 80160F08 3C048018 */  lui        $a0, %hi(.L801868F0_ovl5)
/* 10837C 80160F0C AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 108380 80160F10 8C8468F0 */  lw         $a0, %lo(.L801868F0_ovl5)($a0)
/* 108384 80160F14 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 108388 80160F18 24060010 */  addiu      $a2, $zero, 0x10
/* 10838C 80160F1C 0C02A619 */  jal        func_800A9864
/* 108390 80160F20 26100001 */   addiu     $s0, $s0, 0x1
/* 108394 80160F24 4480C000 */  mtc1       $zero, $f24
/* 108398 80160F28 0C02BB30 */  jal        func_800AECC0
/* 10839C 80160F2C 4600C306 */   mov.s     $f12, $f24
/* 1083A0 80160F30 0C02BB48 */  jal        func_800AED20
/* 1083A4 80160F34 4600C306 */   mov.s     $f12, $f24
/* 1083A8 80160F38 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1083AC 80160F3C 4481E000 */  mtc1       $at, $f28
/* 1083B0 80160F40 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 1083B4 80160F44 4481D000 */  mtc1       $at, $f26
/* 1083B8 80160F48 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 1083BC 80160F4C 3C148018 */  lui        $s4, %hi(D_801868F4_ovl5)
/* 1083C0 80160F50 3C128019 */  lui        $s2, %hi(func_8018E164_ovl5 + 0xF4)
.L80160F54_ovl3:
/* 1083C4 80160F54 4481B000 */  mtc1       $at, $f22
/* 1083C8 80160F58 2652E258 */  addiu      $s2, $s2, %lo(func_8018E164_ovl5 + 0xF4)
/* 1083CC 80160F5C 269468F4 */  addiu      $s4, $s4, %lo(D_801868F4_ovl5)
/* 1083D0 80160F60 24110003 */  addiu      $s1, $zero, 0x3
/* 1083D4 80160F64 92A20000 */  lbu        $v0, 0x0($s5)
.L80160F68_ovl5:
/* 1083D8 80160F68 1202002B */  beq        $s0, $v0, .L80161018_ovl5
/* 1083DC 80160F6C 2841000A */   slti      $at, $v0, 0xA
/* 1083E0 80160F70 1420000B */  bnez       $at, .L80160FA0_ovl5
/* 1083E4 80160F74 00408025 */   or        $s0, $v0, $zero
/* 1083E8 80160F78 24040001 */  addiu      $a0, $zero, 0x1
/* 1083EC 80160F7C 0C02BEED */  jal        func_800AFBB4
/* 1083F0 80160F80 8E650000 */   lw        $a1, 0x0($s3)
/* 1083F4 80160F84 924D0000 */  lbu        $t5, 0x0($s2)
/* 1083F8 80160F88 162D0003 */  bne        $s1, $t5, .L80160F98_ovl5
/* 1083FC 80160F8C 00000000 */   nop
/* 108400 80160F90 10000018 */  b          .L80160FF4_ovl5
/* 108404 80160F94 4600D506 */   mov.s     $f20, $f26
.L80160F98_ovl5:
/* 108408 80160F98 10000016 */  b          .L80160FF4_ovl5
/* 10840C 80160F9C 4600E506 */   mov.s     $f20, $f28
.L80160FA0_ovl5:
/* 108410 80160FA0 2A010005 */  slti       $at, $s0, 0x5
/* 108414 80160FA4 1420000B */  bnez       $at, .L80160FD4_ovl5
/* 108418 80160FA8 00002025 */   or        $a0, $zero, $zero
/* 10841C 80160FAC 24040001 */  addiu      $a0, $zero, 0x1
/* 108420 80160FB0 0C02BEED */  jal        func_800AFBB4
/* 108424 80160FB4 8E650000 */   lw        $a1, 0x0($s3)
/* 108428 80160FB8 924E0000 */  lbu        $t6, 0x0($s2)
/* 10842C 80160FBC 162E0003 */  bne        $s1, $t6, .L80160FCC_ovl5
/* 108430 80160FC0 00000000 */   nop
/* 108434 80160FC4 1000000B */  b          .L80160FF4_ovl5
/* 108438 80160FC8 4600B506 */   mov.s     $f20, $f22
.L80160FCC_ovl5:
/* 10843C 80160FCC 10000009 */  b          .L80160FF4_ovl5
/* 108440 80160FD0 4600C506 */   mov.s     $f20, $f24
.L80160FD4_ovl5:
/* 108444 80160FD4 0C02BEED */  jal        func_800AFBB4
/* 108448 80160FD8 8E650000 */   lw        $a1, 0x0($s3)
/* 10844C 80160FDC 924F0000 */  lbu        $t7, 0x0($s2)
/* 108450 80160FE0 562F0004 */  bnel       $s1, $t7, .L80160FF4_ovl5
/* 108454 80160FE4 4600C506 */   mov.s     $f20, $f24
/* 108458 80160FE8 10000002 */  b          .L80160FF4_ovl5
/* 10845C 80160FEC 4600B506 */   mov.s     $f20, $f22
/* 108460 80160FF0 4600C506 */  mov.s      $f20, $f24
.L80160FF4_ovl5:
/* 108464 80160FF4 8E820000 */  lw         $v0, 0x0($s4)
/* 108468 80160FF8 50400005 */  beql       $v0, $zero, .L80161010_ovl5
/* 10846C 80160FFC 4405A000 */   mfc1      $a1, $f20
/* 108470 80161000 4405A000 */  mfc1       $a1, $f20
/* 108474 80161004 0C02A7E6 */  jal        func_800A9F98
/* 108478 80161008 00402025 */   or        $a0, $v0, $zero
/* 10847C 8016100C 4405A000 */  mfc1       $a1, $f20
.L80161010_ovl5:
/* 108480 80161010 0C02A7E6 */  jal        func_800A9F98
/* 108484 80161014 8E840004 */   lw        $a0, 0x4($s4)
.L80161018_ovl5:
/* 108488 80161018 0C002DAF */  jal        finish_current_thread
.L8016101C_ovl3:
/* 10848C 8016101C 24040001 */   addiu     $a0, $zero, 0x1
/* 108490 80161020 1000FFD1 */  b          .L80160F68_ovl5
/* 108494 80161024 92A20000 */   lbu       $v0, 0x0($s5)
/* 108498 80161028 00000000 */  nop
/* 10849C 8016102C 00000000 */  nop
/* 1084A0 80161030 00000000 */  nop
/* 1084A4 80161034 00000000 */  nop
/* 1084A8 80161038 00000000 */  nop
/* 1084AC 8016103C 00000000 */  nop
.L80161040_ovl3:
/* 1084B0 80161040 8FBF0054 */  lw         $ra, 0x54($sp)
/* 1084B4 80161044 D7B40010 */  ldc1       $f20, 0x10($sp)
.L80161048_ovl3:
/* 1084B8 80161048 D7B60018 */  ldc1       $f22, 0x18($sp)
.L8016104C_ovl3:
/* 1084BC 8016104C D7B80020 */  ldc1       $f24, 0x20($sp)
/* 1084C0 80161050 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 1084C4 80161054 D7BC0030 */  ldc1       $f28, 0x30($sp)
glabel func_80161058_ovl3
/* 1084C8 80161058 8FB0003C */  lw         $s0, 0x3C($sp)
/* 1084CC 8016105C 8FB10040 */  lw         $s1, 0x40($sp)
/* 1084D0 80161060 8FB20044 */  lw         $s2, 0x44($sp)
/* 1084D4 80161064 8FB30048 */  lw         $s3, 0x48($sp)
/* 1084D8 80161068 8FB4004C */  lw         $s4, 0x4C($sp)
/* 1084DC 8016106C 8FB50050 */  lw         $s5, 0x50($sp)
/* 1084E0 80161070 03E00008 */  jr         $ra
/* 1084E4 80161074 27BD0058 */   addiu     $sp, $sp, 0x58
