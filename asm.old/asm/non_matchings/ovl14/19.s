.late_rodata
glabel jtbl_801E3078
/* 205C68 801E3078 */ .word L801DC440_ovl14
/* 205C6C 801E307C */ .word L801DC46C_ovl14
/* 205C70 801E3080 */ .word L801DC498_ovl14
/* 205C74 801E3084 */ .word L801DC4C0_ovl14
/* 205C78 801E3088 */ .word L801DC4EC_ovl14

.text
glabel func_801DC38C_ovl14 # 19
/* 1FEF7C 801DC38C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 1FEF80 801DC390 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FEF84 801DC394 AFA40030 */  sw          $a0, 0x30($sp)
/* 1FEF88 801DC398 24040017 */  addiu       $a0, $zero, 0x17
/* 1FEF8C 801DC39C 2405001E */  addiu       $a1, $zero, 0x1E
/* 1FEF90 801DC3A0 0C02BB02 */  jal         request_track_general
/* 1FEF94 801DC3A4 24060050 */   addiu      $a2, $zero, 0x50
/* 1FEF98 801DC3A8 2841003C */  slti        $at, $v0, 0x3C
/* 1FEF9C 801DC3AC 10200004 */  beqz        $at, .L801DC3C0
/* 1FEFA0 801DC3B0 AFA2002C */   sw         $v0, 0x2C($sp)
/* 1FEFA4 801DC3B4 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FEFA8 801DC3B8 14410009 */  bne         $v0, $at, .L801DC3E0
/* 1FEFAC 801DC3BC 240E00FF */   addiu      $t6, $zero, 0xFF
.L801DC3C0:
/* 1FEFB0 801DC3C0 3C04801E */  lui         $a0, %hi(D_801E2FA0_ovl14)
/* 1FEFB4 801DC3C4 24842FA0 */  addiu       $a0, $a0, %lo(D_801E2FA0_ovl14)
/* 1FEFB8 801DC3C8 0C02909C */  jal         print_error_stub
/* 1FEFBC 801DC3CC 8FA5002C */   lw         $a1, 0x2C($sp)
/* 1FEFC0 801DC3D0 0C02C640 */  jal         func_800B1900
/* 1FEFC4 801DC3D4 97A4002E */   lhu        $a0, 0x2E($sp)
/* 1FEFC8 801DC3D8 100000A2 */  b           .L801DC664
/* 1FEFCC 801DC3DC 2402FFFF */   addiu      $v0, $zero, -0x1
.L801DC3E0:
/* 1FEFD0 801DC3E0 3C01800E */  lui         $at, %hi(D_800E76C0)
/* 1FEFD4 801DC3E4 00220821 */  addu        $at, $at, $v0
/* 1FEFD8 801DC3E8 A02E76C0 */  sb          $t6, %lo(D_800E76C0)($at)
/* 1FEFDC 801DC3EC 3C01800E */  lui         $at, %hi(D_800E7730)
/* 1FEFE0 801DC3F0 00220821 */  addu        $at, $at, $v0
/* 1FEFE4 801DC3F4 A0207730 */  sb          $zero, %lo(D_800E7730)($at)
/* 1FEFE8 801DC3F8 3C01800E */  lui         $at, %hi(D_800E77A0)
/* 1FEFEC 801DC3FC 0002C040 */  sll         $t8, $v0, 1
/* 1FEFF0 801DC400 00380821 */  addu        $at, $at, $t8
/* 1FEFF4 801DC404 240F003C */  addiu       $t7, $zero, 0x3C
/* 1FEFF8 801DC408 A42F77A0 */  sh          $t7, %lo(D_800E77A0)($at)
/* 1FEFFC 801DC40C 8FA90030 */  lw          $t1, 0x30($sp)
/* 1FF000 801DC410 3C01800E */  lui         $at, %hi(D_800E7880)
/* 1FF004 801DC414 00220821 */  addu        $at, $at, $v0
/* 1FF008 801DC418 24190001 */  addiu       $t9, $zero, 0x1
/* 1FF00C 801DC41C A0397880 */  sb          $t9, %lo(D_800E7880)($at)
/* 1FF010 801DC420 2D210005 */  sltiu       $at, $t1, 0x5
/* 1FF014 801DC424 1020003C */  beqz        $at, .L801DC518
/* 1FF018 801DC428 00094880 */   sll        $t1, $t1, 2
/* 1FF01C 801DC42C 3C01801E */  lui         $at, %hi(jtbl_801E3078)
/* 1FF020 801DC430 00290821 */  addu        $at, $at, $t1
/* 1FF024 801DC434 8C293078 */  lw          $t1, %lo(jtbl_801E3078)($at)
/* 1FF028 801DC438 01200008 */  jr          $t1
/* 1FF02C 801DC43C 00000000 */   nop
glabel L801DC440_ovl14
/* 1FF030 801DC440 3C01C3A0 */  lui         $at, (0xC3A00000 >> 16)
/* 1FF034 801DC444 44810000 */  mtc1        $at, $f0
/* 1FF038 801DC448 3C08800E */  lui         $t0, %hi(gEntitiesNextPosXArray)
/* 1FF03C 801DC44C 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF040 801DC450 00021880 */  sll         $v1, $v0, 2
/* 1FF044 801DC454 250825D0 */  addiu       $t0, $t0, %lo(gEntitiesNextPosXArray)
/* 1FF048 801DC458 00230821 */  addu        $at, $at, $v1
/* 1FF04C 801DC45C 01035021 */  addu        $t2, $t0, $v1
/* 1FF050 801DC460 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF054 801DC464 1000002E */  b           .L801DC520
/* 1FF058 801DC468 E5400000 */   swc1       $f0, 0x0($t2)
glabel L801DC46C_ovl14
/* 1FF05C 801DC46C 3C01C320 */  lui         $at, (0xC3200000 >> 16)
/* 1FF060 801DC470 44810000 */  mtc1        $at, $f0
/* 1FF064 801DC474 3C08800E */  lui         $t0, %hi(gEntitiesNextPosXArray)
/* 1FF068 801DC478 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF06C 801DC47C 00021880 */  sll         $v1, $v0, 2
/* 1FF070 801DC480 250825D0 */  addiu       $t0, $t0, %lo(gEntitiesNextPosXArray)
/* 1FF074 801DC484 00230821 */  addu        $at, $at, $v1
/* 1FF078 801DC488 01035821 */  addu        $t3, $t0, $v1
/* 1FF07C 801DC48C E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF080 801DC490 10000023 */  b           .L801DC520
/* 1FF084 801DC494 E5600000 */   swc1       $f0, 0x0($t3)
glabel L801DC498_ovl14
/* 1FF088 801DC498 44800000 */  mtc1        $zero, $f0
/* 1FF08C 801DC49C 3C08800E */  lui         $t0, %hi(gEntitiesNextPosXArray)
/* 1FF090 801DC4A0 00021880 */  sll         $v1, $v0, 2
/* 1FF094 801DC4A4 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF098 801DC4A8 250825D0 */  addiu       $t0, $t0, %lo(gEntitiesNextPosXArray)
/* 1FF09C 801DC4AC 00230821 */  addu        $at, $at, $v1
/* 1FF0A0 801DC4B0 01036021 */  addu        $t4, $t0, $v1
/* 1FF0A4 801DC4B4 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF0A8 801DC4B8 10000019 */  b           .L801DC520
/* 1FF0AC 801DC4BC E5800000 */   swc1       $f0, 0x0($t4)
glabel L801DC4C0_ovl14
/* 1FF0B0 801DC4C0 3C014320 */  lui         $at, (0x43200000 >> 16)
/* 1FF0B4 801DC4C4 44810000 */  mtc1        $at, $f0
/* 1FF0B8 801DC4C8 3C08800E */  lui         $t0, %hi(gEntitiesNextPosXArray)
/* 1FF0BC 801DC4CC 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF0C0 801DC4D0 00021880 */  sll         $v1, $v0, 2
/* 1FF0C4 801DC4D4 250825D0 */  addiu       $t0, $t0, %lo(gEntitiesNextPosXArray)
/* 1FF0C8 801DC4D8 00230821 */  addu        $at, $at, $v1
/* 1FF0CC 801DC4DC 01036821 */  addu        $t5, $t0, $v1
/* 1FF0D0 801DC4E0 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF0D4 801DC4E4 1000000E */  b           .L801DC520
/* 1FF0D8 801DC4E8 E5A00000 */   swc1       $f0, 0x0($t5)
glabel L801DC4EC_ovl14
/* 1FF0DC 801DC4EC 3C0143A0 */  lui         $at, (0x43A00000 >> 16)
/* 1FF0E0 801DC4F0 44810000 */  mtc1        $at, $f0
/* 1FF0E4 801DC4F4 3C08800E */  lui         $t0, %hi(gEntitiesNextPosXArray)
/* 1FF0E8 801DC4F8 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF0EC 801DC4FC 00021880 */  sll         $v1, $v0, 2
/* 1FF0F0 801DC500 250825D0 */  addiu       $t0, $t0, %lo(gEntitiesNextPosXArray)
/* 1FF0F4 801DC504 00230821 */  addu        $at, $at, $v1
/* 1FF0F8 801DC508 01037021 */  addu        $t6, $t0, $v1
/* 1FF0FC 801DC50C E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF100 801DC510 10000003 */  b           .L801DC520
/* 1FF104 801DC514 E5C00000 */   swc1       $f0, 0x0($t6)
.L801DC518:
/* 1FF108 801DC518 1000FFFF */  b           .L801DC518
/* 1FF10C 801DC51C 00000000 */   nop
.L801DC520:
/* 1FF110 801DC520 8FA3002C */  lw          $v1, 0x2C($sp)
/* 1FF114 801DC524 44800000 */  mtc1        $zero, $f0
/* 1FF118 801DC528 3C01800E */  lui         $at, %hi(gEntitiesPosYArray)
/* 1FF11C 801DC52C 00031880 */  sll         $v1, $v1, 2
/* 1FF120 801DC530 00230821 */  addu        $at, $at, $v1
/* 1FF124 801DC534 E4202CD0 */  swc1        $f0, %lo(gEntitiesPosYArray)($at)
/* 1FF128 801DC538 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 1FF12C 801DC53C 00230821 */  addu        $at, $at, $v1
/* 1FF130 801DC540 E4202790 */  swc1        $f0, %lo(gEntitiesNextPosYArray)($at)
/* 1FF134 801DC544 3C01800E */  lui         $at, %hi(gEntitiesPosZArray)
/* 1FF138 801DC548 00230821 */  addu        $at, $at, $v1
/* 1FF13C 801DC54C 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FF140 801DC550 E4202E90 */  swc1        $f0, %lo(gEntitiesPosZArray)($at)
/* 1FF144 801DC554 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1FF148 801DC558 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 1FF14C 801DC55C 00230821 */  addu        $at, $at, $v1
/* 1FF150 801DC560 E4202950 */  swc1        $f0, %lo(gEntitiesNextPosZArray)($at)
/* 1FF154 801DC564 8C4F0000 */  lw          $t7, 0x0($v0)
/* 1FF158 801DC568 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 1FF15C 801DC56C 3C06800E */  lui         $a2, %hi(D_800E5F90)
/* 1FF160 801DC570 000FC080 */  sll         $t8, $t7, 2
/* 1FF164 801DC574 00380821 */  addu        $at, $at, $t8
/* 1FF168 801DC578 AC208E60 */  sw          $zero, %lo(D_800E8E60)($at)
/* 1FF16C 801DC57C 8C590000 */  lw          $t9, 0x0($v0)
/* 1FF170 801DC580 24C65F90 */  addiu       $a2, $a2, %lo(D_800E5F90)
/* 1FF174 801DC584 3C07800E */  lui         $a3, %hi(D_800E6BD0)
/* 1FF178 801DC588 00194880 */  sll         $t1, $t9, 2
/* 1FF17C 801DC58C 00C95021 */  addu        $t2, $a2, $t1
/* 1FF180 801DC590 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FF184 801DC594 24E76BD0 */  addiu       $a3, $a3, %lo(D_800E6BD0)
/* 1FF188 801DC598 01037821 */  addu        $t7, $t0, $v1
/* 1FF18C 801DC59C AFAB0024 */  sw          $t3, 0x24($sp)
/* 1FF190 801DC5A0 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1FF194 801DC5A4 8DE50000 */  lw          $a1, 0x0($t7)
/* 1FF198 801DC5A8 27A40024 */  addiu       $a0, $sp, 0x24
/* 1FF19C 801DC5AC 000C6880 */  sll         $t5, $t4, 2
/* 1FF1A0 801DC5B0 00ED7021 */  addu        $t6, $a3, $t5
/* 1FF1A4 801DC5B4 C5C40000 */  lwc1        $f4, 0x0($t6)
/* 1FF1A8 801DC5B8 AFA30020 */  sw          $v1, 0x20($sp)
/* 1FF1AC 801DC5BC 0C03E622 */  jal         func_800F9888
/* 1FF1B0 801DC5C0 E7A40028 */   swc1       $f4, 0x28($sp)
/* 1FF1B4 801DC5C4 3C06800E */  lui         $a2, %hi(D_800E5F90)
/* 1FF1B8 801DC5C8 3C07800E */  lui         $a3, %hi(D_800E6BD0)
/* 1FF1BC 801DC5CC 24E76BD0 */  addiu       $a3, $a3, %lo(D_800E6BD0)
/* 1FF1C0 801DC5D0 24C65F90 */  addiu       $a2, $a2, %lo(D_800E5F90)
/* 1FF1C4 801DC5D4 1440000E */  bnez        $v0, .L801DC610
/* 1FF1C8 801DC5D8 8FA30020 */   lw         $v1, 0x20($sp)
/* 1FF1CC 801DC5DC 8FA20024 */  lw          $v0, 0x24($sp)
/* 1FF1D0 801DC5E0 3C01800E */  lui         $at, %hi(D_800E6150)
/* 1FF1D4 801DC5E4 00230821 */  addu        $at, $at, $v1
/* 1FF1D8 801DC5E8 C7A00028 */  lwc1        $f0, 0x28($sp)
/* 1FF1DC 801DC5EC AC226150 */  sw          $v0, %lo(D_800E6150)($at)
/* 1FF1E0 801DC5F0 00C3C021 */  addu        $t8, $a2, $v1
/* 1FF1E4 801DC5F4 3C01800E */  lui         $at, %hi(D_800E6D90)
/* 1FF1E8 801DC5F8 00230821 */  addu        $at, $at, $v1
/* 1FF1EC 801DC5FC AF020000 */  sw          $v0, 0x0($t8)
/* 1FF1F0 801DC600 00E3C821 */  addu        $t9, $a3, $v1
/* 1FF1F4 801DC604 E4206D90 */  swc1        $f0, %lo(D_800E6D90)($at)
/* 1FF1F8 801DC608 1000000F */  b           .L801DC648
/* 1FF1FC 801DC60C E7200000 */   swc1       $f0, 0x0($t9)
.L801DC610:
/* 1FF200 801DC610 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FF204 801DC614 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1FF208 801DC618 00C36821 */  addu        $t5, $a2, $v1
/* 1FF20C 801DC61C 00E3C821 */  addu        $t9, $a3, $v1
/* 1FF210 801DC620 8C490000 */  lw          $t1, 0x0($v0)
/* 1FF214 801DC624 00095080 */  sll         $t2, $t1, 2
/* 1FF218 801DC628 00CA5821 */  addu        $t3, $a2, $t2
/* 1FF21C 801DC62C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FF220 801DC630 ADAC0000 */  sw          $t4, 0x0($t5)
/* 1FF224 801DC634 8C4E0000 */  lw          $t6, 0x0($v0)
/* 1FF228 801DC638 000E7880 */  sll         $t7, $t6, 2
/* 1FF22C 801DC63C 00EFC021 */  addu        $t8, $a3, $t7
/* 1FF230 801DC640 C7060000 */  lwc1        $f6, 0x0($t8)
/* 1FF234 801DC644 E7260000 */  swc1        $f6, 0x0($t9)
.L801DC648:
/* 1FF238 801DC648 8FA90030 */  lw          $t1, 0x30($sp)
/* 1FF23C 801DC64C 3C01800F */  lui         $at, %hi(D_800EC2E0)
/* 1FF240 801DC650 00230821 */  addu        $at, $at, $v1
/* 1FF244 801DC654 24040191 */  addiu       $a0, $zero, 0x191
/* 1FF248 801DC658 0C029D9E */  jal         play_sound
/* 1FF24C 801DC65C AC29C2E0 */   sw         $t1, %lo(D_800EC2E0)($at)
/* 1FF250 801DC660 8FA2002C */  lw          $v0, 0x2C($sp)
.L801DC664:
/* 1FF254 801DC664 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FF258 801DC668 27BD0030 */  addiu       $sp, $sp, 0x30
/* 1FF25C 801DC66C 03E00008 */  jr          $ra
/* 1FF260 801DC670 00000000 */   nop
.type func_801DC38C_ovl14, @function
.size func_801DC38C_ovl14, . - func_801DC38C_ovl14
