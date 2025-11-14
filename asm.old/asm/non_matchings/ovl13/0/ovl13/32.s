glabel func_801E135C_ovl13 # 32
/* 1F92DC 801E135C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 1F92E0 801E1360 AFBF0024 */  sw          $ra, 0x24($sp)
/* 1F92E4 801E1364 44806000 */  mtc1        $zero, $f12
/* 1F92E8 801E1368 AFB30020 */  sw          $s3, 0x20($sp)
/* 1F92EC 801E136C AFB2001C */  sw          $s2, 0x1C($sp)
/* 1F92F0 801E1370 AFB10018 */  sw          $s1, 0x18($sp)
/* 1F92F4 801E1374 AFB00014 */  sw          $s0, 0x14($sp)
/* 1F92F8 801E1378 0C02BB48 */  jal         func_800AED20
/* 1F92FC 801E137C AFA40028 */   sw         $a0, 0x28($sp)
/* 1F9300 801E1380 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F9304 801E1384 0C02BB30 */  jal         func_800AECC0
/* 1F9308 801E1388 C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1F930C 801E138C 3C138005 */  lui         $s3, %hi(D_8004A7C4)
/* 1F9310 801E1390 2673A7C4 */  addiu       $s3, $s3, %lo(D_8004A7C4)
/* 1F9314 801E1394 8E630000 */  lw          $v1, 0x0($s3)
/* 1F9318 801E1398 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F931C 801E139C 240E0008 */  addiu       $t6, $zero, 0x8
/* 1F9320 801E13A0 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F9324 801E13A4 3C02800E */  lui         $v0, %hi(D_800E1B50)
/* 1F9328 801E13A8 24421B50 */  addiu       $v0, $v0, %lo(D_800E1B50)
/* 1F932C 801E13AC 000FC080 */  sll         $t8, $t7, 2
/* 1F9330 801E13B0 00380821 */  addu        $at, $at, $t8
/* 1F9334 801E13B4 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1F9338 801E13B8 8C680000 */  lw          $t0, 0x0($v1)
/* 1F933C 801E13BC 3C19801E */  lui         $t9, %hi(D_801D9384)
/* 1F9340 801E13C0 27399384 */  addiu       $t9, $t9, %lo(D_801D9384)
/* 1F9344 801E13C4 00084880 */  sll         $t1, $t0, 2
/* 1F9348 801E13C8 00495021 */  addu        $t2, $v0, $t1
/* 1F934C 801E13CC 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F9350 801E13D0 3C0C801E */  lui         $t4, %hi(D_801DAE1C)
/* 1F9354 801E13D4 258CAE1C */  addiu       $t4, $t4, %lo(D_801DAE1C)
/* 1F9358 801E13D8 AD79008C */  sw          $t9, 0x8C($t3)
/* 1F935C 801E13DC 8E6D0000 */  lw          $t5, 0x0($s3)
/* 1F9360 801E13E0 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F9364 801E13E4 000F7080 */  sll         $t6, $t7, 2
/* 1F9368 801E13E8 004EC021 */  addu        $t8, $v0, $t6
/* 1F936C 801E13EC 8F080000 */  lw          $t0, 0x0($t8)
/* 1F9370 801E13F0 0C02CCFD */  jal         func_800B33F4
/* 1F9374 801E13F4 AD0C0098 */   sw         $t4, 0x98($t0)
/* 1F9378 801E13F8 8E690000 */  lw          $t1, 0x0($s3)
/* 1F937C 801E13FC 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F9380 801E1400 2442FBD0 */  addiu       $v0, $v0, %lo(D_800DFBD0)
/* 1F9384 801E1404 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F9388 801E1408 44800000 */  mtc1        $zero, $f0
/* 1F938C 801E140C 3C01801E */  lui         $at, %hi(D_801E5D78_ovl13)
/* 1F9390 801E1410 000AC880 */  sll         $t9, $t2, 2
/* 1F9394 801E1414 00595821 */  addu        $t3, $v0, $t9
/* 1F9398 801E1418 8D6D0000 */  lw          $t5, 0x0($t3)
/* 1F939C 801E141C 3C040001 */  lui         $a0, (0x10412 >> 16)
/* 1F93A0 801E1420 34840412 */  ori         $a0, $a0, (0x10412 & 0xFFFF)
/* 1F93A4 801E1424 8DAF0004 */  lw          $t7, 0x4($t5)
/* 1F93A8 801E1428 3C054040 */  lui         $a1, (0x40400000 >> 16)
/* 1F93AC 801E142C E5E00024 */  swc1        $f0, 0x24($t7)
/* 1F93B0 801E1430 8E6E0000 */  lw          $t6, 0x0($s3)
/* 1F93B4 801E1434 C4245D78 */  lwc1        $f4, %lo(D_801E5D78_ovl13)($at)
/* 1F93B8 801E1438 3C01801E */  lui         $at, %hi(D_801E5D7C_ovl13)
/* 1F93BC 801E143C 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F93C0 801E1440 00186080 */  sll         $t4, $t8, 2
/* 1F93C4 801E1444 004C4021 */  addu        $t0, $v0, $t4
/* 1F93C8 801E1448 8D090000 */  lw          $t1, 0x0($t0)
/* 1F93CC 801E144C 8D2A0008 */  lw          $t2, 0x8($t1)
/* 1F93D0 801E1450 E5440030 */  swc1        $f4, 0x30($t2)
/* 1F93D4 801E1454 8E790000 */  lw          $t9, 0x0($s3)
/* 1F93D8 801E1458 C4265D7C */  lwc1        $f6, %lo(D_801E5D7C_ovl13)($at)
/* 1F93DC 801E145C 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F93E0 801E1460 000B6880 */  sll         $t5, $t3, 2
/* 1F93E4 801E1464 004D7821 */  addu        $t7, $v0, $t5
/* 1F93E8 801E1468 8DEE0000 */  lw          $t6, 0x0($t7)
/* 1F93EC 801E146C 8DD80004 */  lw          $t8, 0x4($t6)
/* 1F93F0 801E1470 E7060034 */  swc1        $f6, 0x34($t8)
/* 1F93F4 801E1474 8E6C0000 */  lw          $t4, 0x0($s3)
/* 1F93F8 801E1478 8D880000 */  lw          $t0, 0x0($t4)
/* 1F93FC 801E147C 00084880 */  sll         $t1, $t0, 2
/* 1F9400 801E1480 00495021 */  addu        $t2, $v0, $t1
/* 1F9404 801E1484 8D590000 */  lw          $t9, 0x0($t2)
/* 1F9408 801E1488 8F2B0008 */  lw          $t3, 0x8($t9)
/* 1F940C 801E148C 0C02A7E6 */  jal         func_800A9F98
/* 1F9410 801E1490 E5600038 */   swc1       $f0, 0x38($t3)
/* 1F9414 801E1494 3C040001 */  lui         $a0, (0x10426 >> 16)
/* 1F9418 801E1498 0C02A806 */  jal         func_800AA018
/* 1F941C 801E149C 34840426 */   ori        $a0, $a0, (0x10426 & 0xFFFF)
/* 1F9420 801E14A0 0C002DAF */  jal         finish_current_thread
/* 1F9424 801E14A4 2404001E */   addiu      $a0, $zero, 0x1E
/* 1F9428 801E14A8 8E6D0000 */  lw          $t5, 0x0($s3)
/* 1F942C 801E14AC 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1F9430 801E14B0 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F9434 801E14B4 000F7080 */  sll         $t6, $t7, 2
/* 1F9438 801E14B8 002E0821 */  addu        $at, $at, $t6
/* 1F943C 801E14BC C4287B20 */  lwc1        $f8, %lo(D_800E7B20)($at)
/* 1F9440 801E14C0 4600428D */  trunc.w.s   $f10, $f8
/* 1F9444 801E14C4 44045000 */  mfc1        $a0, $f10
/* 1F9448 801E14C8 0C02F07F */  jal         func_800BC1FC
/* 1F944C 801E14CC 00000000 */   nop
/* 1F9450 801E14D0 0C002DAF */  jal         finish_current_thread
/* 1F9454 801E14D4 24040030 */   addiu      $a0, $zero, 0x30
/* 1F9458 801E14D8 8E6C0000 */  lw          $t4, 0x0($s3)
/* 1F945C 801E14DC 3C12800E */  lui         $s2, %hi(D_800E0D50)
/* 1F9460 801E14E0 26520D50 */  addiu       $s2, $s2, %lo(D_800E0D50)
/* 1F9464 801E14E4 8D880000 */  lw          $t0, 0x0($t4)
/* 1F9468 801E14E8 3C11800F */  lui         $s1, %hi(D_800E98E0)
/* 1F946C 801E14EC 263198E0 */  addiu       $s1, $s1, %lo(D_800E98E0)
/* 1F9470 801E14F0 00084880 */  sll         $t1, $t0, 2
/* 1F9474 801E14F4 02495021 */  addu        $t2, $s2, $t1
/* 1F9478 801E14F8 8D590000 */  lw          $t9, 0x0($t2)
/* 1F947C 801E14FC 24100003 */  addiu       $s0, $zero, 0x3
/* 1F9480 801E1500 00195880 */  sll         $t3, $t9, 2
/* 1F9484 801E1504 022B6821 */  addu        $t5, $s1, $t3
/* 1F9488 801E1508 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F948C 801E150C 160F000D */  bne         $s0, $t7, L801E1544_ovl13
/* 1F9490 801E1510 00000000 */   nop
glabel L801E1514_ovl13
/* 1F9494 801E1514 0C002DAF */  jal         finish_current_thread
/* 1F9498 801E1518 24040001 */   addiu      $a0, $zero, 0x1
/* 1F949C 801E151C 8E6E0000 */  lw          $t6, 0x0($s3)
/* 1F94A0 801E1520 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F94A4 801E1524 00186080 */  sll         $t4, $t8, 2
/* 1F94A8 801E1528 024C4021 */  addu        $t0, $s2, $t4
/* 1F94AC 801E152C 8D090000 */  lw          $t1, 0x0($t0)
/* 1F94B0 801E1530 00095080 */  sll         $t2, $t1, 2
/* 1F94B4 801E1534 022AC821 */  addu        $t9, $s1, $t2
/* 1F94B8 801E1538 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F94BC 801E153C 120BFFF5 */  beq         $s0, $t3, L801E1514_ovl13
/* 1F94C0 801E1540 00000000 */   nop
glabel L801E1544_ovl13
/* 1F94C4 801E1544 0C02BC9F */  jal         func_800AF27C
/* 1F94C8 801E1548 00000000 */   nop
/* 1F94CC 801E154C 8E630000 */  lw          $v1, 0x0($s3)
/* 1F94D0 801E1550 3C04800E */  lui         $a0, %hi(D_800E6A10)
/* 1F94D4 801E1554 24846A10 */  addiu       $a0, $a0, %lo(D_800E6A10)
/* 1F94D8 801E1558 8C620000 */  lw          $v0, 0x0($v1)
/* 1F94DC 801E155C 3C014080 */  lui         $at, (0x40800000 >> 16)
/* 1F94E0 801E1560 44819000 */  mtc1        $at, $f18
/* 1F94E4 801E1564 00021080 */  sll         $v0, $v0, 2
/* 1F94E8 801E1568 00826821 */  addu        $t5, $a0, $v0
/* 1F94EC 801E156C C5B00000 */  lwc1        $f16, 0x0($t5)
/* 1F94F0 801E1570 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F94F4 801E1574 00220821 */  addu        $at, $at, $v0
/* 1F94F8 801E1578 46128102 */  mul.s       $f4, $f16, $f18
/* 1F94FC 801E157C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 1F9500 801E1580 240E000A */  addiu       $t6, $zero, 0xA
/* 1F9504 801E1584 8FB30020 */  lw          $s3, 0x20($sp)
/* 1F9508 801E1588 8FB00014 */  lw          $s0, 0x14($sp)
/* 1F950C 801E158C 8FB10018 */  lw          $s1, 0x18($sp)
/* 1F9510 801E1590 8FB2001C */  lw          $s2, 0x1C($sp)
/* 1F9514 801E1594 E42464D0 */  swc1        $f4, %lo(D_800E64D0)($at)
/* 1F9518 801E1598 8C620000 */  lw          $v0, 0x0($v1)
/* 1F951C 801E159C 3C01801E */  lui         $at, %hi(D_801E5D80_ovl13)
/* 1F9520 801E15A0 C4285D80 */  lwc1        $f8, %lo(D_801E5D80_ovl13)($at)
/* 1F9524 801E15A4 00021080 */  sll         $v0, $v0, 2
/* 1F9528 801E15A8 00827821 */  addu        $t7, $a0, $v0
/* 1F952C 801E15AC C5E60000 */  lwc1        $f6, 0x0($t7)
/* 1F9530 801E15B0 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F9534 801E15B4 00220821 */  addu        $at, $at, $v0
/* 1F9538 801E15B8 46083282 */  mul.s       $f10, $f6, $f8
/* 1F953C 801E15BC E42A6690 */  swc1        $f10, %lo(D_800E6690)($at)
/* 1F9540 801E15C0 8C780000 */  lw          $t8, 0x0($v1)
/* 1F9544 801E15C4 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F9548 801E15C8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 1F954C 801E15CC 00186080 */  sll         $t4, $t8, 2
/* 1F9550 801E15D0 002C0821 */  addu        $at, $at, $t4
/* 1F9554 801E15D4 03E00008 */  jr          $ra
/* 1F9558 801E15D8 AC2EDC50 */   sw         $t6, %lo(gEntityVtableIndexArray)($at)
.type func_801E135C_ovl13, @function

.size func_801E135C_ovl13, . - func_801E135C_ovl13
.section .late_rodata
glabel D_801E5D78_ovl13
/* 1FDCF8 801E5D78 */ .word 0xBFC90FDB

glabel D_801E5D7C_ovl13
/* 1FDCFC 801E5D7C */ .word 0x40490FDB

glabel D_801E5D80_ovl13
/* 1FDD00 801E5D80 */ .word 0xBDCCCCCD

