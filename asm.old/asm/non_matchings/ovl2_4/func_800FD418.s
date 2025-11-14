glabel func_800FD418
/* 085E88 800FD418 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 085E8C 800FD41C AFB10018 */  sw    $s1, 0x18($sp)
/* 085E90 800FD420 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 085E94 800FD424 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 085E98 800FD428 8E2E0000 */  lw    $t6, ($s1)
/* 085E9C 800FD42C AFBF001C */  sw    $ra, 0x1c($sp)
/* 085EA0 800FD430 AFB00014 */  sw    $s0, 0x14($sp)
/* 085EA4 800FD434 AFA40020 */  sw    $a0, 0x20($sp)
/* 085EA8 800FD438 8DC50000 */  lw    $a1, ($t6)
/* 085EAC 800FD43C 3C02800F */ lui $v0, %hi(D_800EC2E0)
/* 085EB0 800FD440 3C198012 */  lui   $t9, %hi(D_801245C4) # $t9, 0x8012
/* 085EB4 800FD444 00057880 */  sll   $t7, $a1, 2
/* 085EB8 800FD448 004F1021 */  addu  $v0, $v0, $t7
/* 085EBC 800FD44C 8C42C2E0 */ lw $v0, %lo(D_800EC2E0)($v0)
/* 085EC0 800FD450 273945C4 */  addiu $t9, %lo(D_801245C4) # addiu $t9, $t9, 0x45c4
/* 085EC4 800FD454 30A4FFFF */  andi  $a0, $a1, 0xffff
/* 085EC8 800FD458 2841000A */  slti  $at, $v0, 0xa
/* 085ECC 800FD45C 10200006 */  beqz  $at, .L800FD478_ovl2
/* 085ED0 800FD460 0002C080 */   sll   $t8, $v0, 2
/* 085ED4 800FD464 0302C023 */  subu  $t8, $t8, $v0
/* 085ED8 800FD468 0018C080 */  sll   $t8, $t8, 2
/* 085EDC 800FD46C 03198021 */  addu  $s0, $t8, $t9
/* 085EE0 800FD470 8E030000 */  lw    $v1, ($s0)
/* 085EE4 800FD474 14600008 */  bnez  $v1, .L800FD498_ovl2
.L800FD478_ovl2:
/* 085EE8 800FD478 00024080 */   sll   $t0, $v0, 2
/* 085EEC 800FD47C 01024023 */  subu  $t0, $t0, $v0
/* 085EF0 800FD480 3C098012 */  lui   $t1, %hi(D_801245C4) # $t1, 0x8012
/* 085EF4 800FD484 252945C4 */  addiu $t1, %lo(D_801245C4) # addiu $t1, $t1, 0x45c4
/* 085EF8 800FD488 00084080 */  sll   $t0, $t0, 2
/* 085EFC 800FD48C 0C02C640 */  jal   func_800B1900
/* 085F00 800FD490 01098021 */   addu  $s0, $t0, $t1
/* 085F04 800FD494 8E030000 */  lw    $v1, ($s0)
.L800FD498_ovl2:
/* 085F08 800FD498 3C0A8012 */  lui   $t2, %hi(D_80124624) # $t2, 0x8012
/* 085F0C 800FD49C 254A4624 */  addiu $t2, %lo(D_80124624) # addiu $t2, $t2, 0x4624
/* 085F10 800FD4A0 160A0009 */  bne   $s0, $t2, .L800FD4C8_ovl2
/* 085F14 800FD4A4 00602025 */   move  $a0, $v1
/* 085F18 800FD4A8 8E2C0000 */  lw    $t4, ($s1)
/* 085F1C 800FD4AC 3C0B800B */  lui   $t3, %hi(D_800B4D40) # $t3, 0x800b
/* 085F20 800FD4B0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 085F24 800FD4B4 8D8D0000 */  lw    $t5, ($t4)
/* 085F28 800FD4B8 256B4D40 */  addiu $t3, %lo(D_800B4D40) # addiu $t3, $t3, 0x4d40
/* 085F2C 800FD4BC 000D7080 */  sll   $t6, $t5, 2
/* 085F30 800FD4C0 002E0821 */  addu  $at, $at, $t6
/* 085F34 800FD4C4 AC2BEF90 */ sw $t3, %lo(D_800DEF90)($at)
.L800FD4C8_ovl2:
/* 085F38 800FD4C8 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 085F3C 800FD4CC 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 085F40 800FD4D0 0C02A619 */  jal   func_800A9864
/* 085F44 800FD4D4 24060010 */   li    $a2, 16
/* 085F48 800FD4D8 0C02A806 */  jal   func_800AA018
/* 085F4C 800FD4DC 8E040004 */   lw    $a0, 4($s0)
/* 085F50 800FD4E0 0C02A806 */  jal   func_800AA018
/* 085F54 800FD4E4 8E040008 */   lw    $a0, 8($s0)
/* 085F58 800FD4E8 8E2F0000 */  lw    $t7, ($s1)
/* 085F5C 800FD4EC 8FA20020 */  lw    $v0, 0x20($sp)
/* 085F60 800FD4F0 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 085F64 800FD4F4 8DF80000 */  lw    $t8, ($t7)
/* 085F68 800FD4F8 8C48003C */  lw    $t0, 0x3c($v0)
/* 085F6C 800FD4FC 0018C880 */  sll   $t9, $t8, 2
/* 085F70 800FD500 00390821 */  addu  $at, $at, $t9
/* 085F74 800FD504 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 085F78 800FD508 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 085F7C 800FD50C E504001C */  swc1  $f4, 0x1c($t0)
/* 085F80 800FD510 8E290000 */  lw    $t1, ($s1)
/* 085F84 800FD514 8C4D003C */  lw    $t5, 0x3c($v0)
/* 085F88 800FD518 8D2A0000 */  lw    $t2, ($t1)
/* 085F8C 800FD51C 000A6080 */  sll   $t4, $t2, 2
/* 085F90 800FD520 002C0821 */  addu  $at, $at, $t4
/* 085F94 800FD524 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 085F98 800FD528 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 085F9C 800FD52C E5A60020 */  swc1  $f6, 0x20($t5)
/* 085FA0 800FD530 8E2B0000 */  lw    $t3, ($s1)
/* 085FA4 800FD534 8C58003C */  lw    $t8, 0x3c($v0)
/* 085FA8 800FD538 8D6E0000 */  lw    $t6, ($t3)
/* 085FAC 800FD53C 000E7880 */  sll   $t7, $t6, 2
/* 085FB0 800FD540 002F0821 */  addu  $at, $at, $t7
/* 085FB4 800FD544 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 085FB8 800FD548 0C02BC9F */  jal   func_800AF27C
/* 085FBC 800FD54C E7080024 */   swc1  $f8, 0x24($t8)
/* 085FC0 800FD550 8E390000 */  lw    $t9, ($s1)
/* 085FC4 800FD554 0C02C640 */  jal   func_800B1900
/* 085FC8 800FD558 97240002 */   lhu   $a0, 2($t9)
/* 085FCC 800FD55C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 085FD0 800FD560 8FB00014 */  lw    $s0, 0x14($sp)
/* 085FD4 800FD564 8FB10018 */  lw    $s1, 0x18($sp)
/* 085FD8 800FD568 03E00008 */  jr    $ra
/* 085FDC 800FD56C 27BD0020 */   addiu $sp, $sp, 0x20
.type func_800FD418, @function
.size func_800FD418, . - func_800FD418
