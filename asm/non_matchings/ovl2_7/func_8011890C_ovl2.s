glabel func_8011890C_ovl2
/* 0A137C 8011890C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A1380 80118910 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A1384 80118914 AFB00020 */  sw    $s0, 0x20($sp)
/* 0A1388 80118918 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0A138C 8011891C AFA40030 */  sw    $a0, 0x30($sp)
/* 0A1390 80118920 AFA50034 */  sw    $a1, 0x34($sp)
/* 0A1394 80118924 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0A1398 80118928 3C08800E */  lui   $t0, 0x800e
/* 0A139C 8011892C 4480A000 */  mtc1  $zero, $f20
/* 0A13A0 80118930 91F80003 */  lbu   $t8, 3($t7)
/* 0A13A4 80118934 4600A306 */  mov.s $f12, $f20
/* 0A13A8 80118938 0018C880 */  sll   $t9, $t8, 2
/* 0A13AC 8011893C 01194021 */  addu  $t0, $t0, $t9
/* 0A13B0 80118940 8D08E350 */  lw    $t0, -0x1cb0($t0)
/* 0A13B4 80118944 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A13B8 80118948 AFA8002C */   sw    $t0, 0x2c($sp)
/* 0A13BC 8011894C 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A13C0 80118950 4600A306 */   mov.s $f12, $f20
/* 0A13C4 80118954 8FA9002C */  lw    $t1, 0x2c($sp)
/* 0A13C8 80118958 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0A13CC 8011895C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0A13D0 80118960 4600A306 */  mov.s $f12, $f20
/* 0A13D4 80118964 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A13D8 80118968 AE090000 */   sw    $t1, ($s0)
/* 0A13DC 8011896C 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A13E0 80118970 4600A306 */   mov.s $f12, $f20
/* 0A13E4 80118974 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0A13E8 80118978 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 0A13EC 8011897C 44812000 */  mtc1  $at, $f4
/* 0A13F0 80118980 3C01800D */  lui   $at, %hi(D_800D6B14) # $at, 0x800d
/* 0A13F4 80118984 AE0A0000 */  sw    $t2, ($s0)
/* 0A13F8 80118988 C4266B14 */  lwc1  $f6, %lo(D_800D6B14)($at)
/* 0A13FC 8011898C 46062202 */  mul.s $f8, $f4, $f6
/* 0A1400 80118990 4600428D */  trunc.w.s $f10, $f8
/* 0A1404 80118994 44045000 */  mfc1  $a0, $f10
/* 0A1408 80118998 0C002DAF */  jal   func_8000B6BC
/* 0A140C 8011899C 00000000 */   nop   
/* 0A1410 801189A0 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0A1414 801189A4 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A1418 801189A8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0A141C 801189AC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0A1420 801189B0 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A1424 801189B4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0A1428 801189B8 8FAC002C */  lw    $t4, 0x2c($sp)
/* 0A142C 801189BC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0A1430 801189C0 AE0C0000 */  sw    $t4, ($s0)
/* 0A1434 801189C4 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A1438 801189C8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0A143C 801189CC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0A1440 801189D0 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A1444 801189D4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0A1448 801189D8 8FAE0034 */  lw    $t6, 0x34($sp)
/* 0A144C 801189DC 8FAD0030 */  lw    $t5, 0x30($sp)
/* 0A1450 801189E0 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0A1454 801189E4 448E8000 */  mtc1  $t6, $f16
/* 0A1458 801189E8 AE0D0000 */  sw    $t5, ($s0)
/* 0A145C 801189EC 05C10004 */  bgez  $t6, .L80118A00_ovl2
/* 0A1460 801189F0 468084A0 */   cvt.s.w $f18, $f16
/* 0A1464 801189F4 44812000 */  mtc1  $at, $f4
/* 0A1468 801189F8 00000000 */  nop   
/* 0A146C 801189FC 46049480 */  add.s $f18, $f18, $f4
.L80118A00_ovl2:
/* 0A1470 80118A00 3C01800D */  lui   $at, %hi(D_800D6B14) # $at, 0x800d
/* 0A1474 80118A04 C4266B14 */  lwc1  $f6, %lo(D_800D6B14)($at)
/* 0A1478 80118A08 46069202 */  mul.s $f8, $f18, $f6
/* 0A147C 80118A0C 4600428D */  trunc.w.s $f10, $f8
/* 0A1480 80118A10 44045000 */  mfc1  $a0, $f10
/* 0A1484 80118A14 0C002DAF */  jal   func_8000B6BC
/* 0A1488 80118A18 00000000 */   nop   
/* 0A148C 80118A1C 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A1490 80118A20 4600A306 */   mov.s $f12, $f20
/* 0A1494 80118A24 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A1498 80118A28 4600A306 */   mov.s $f12, $f20
/* 0A149C 80118A2C 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0A14A0 80118A30 4600A306 */  mov.s $f12, $f20
/* 0A14A4 80118A34 0C02BB30 */  jal   func_800AECC0_ovl2
/* 0A14A8 80118A38 AE180000 */   sw    $t8, ($s0)
/* 0A14AC 80118A3C 0C02BB48 */  jal   func_800AED20_ovl2
/* 0A14B0 80118A40 4600A306 */   mov.s $f12, $f20
/* 0A14B4 80118A44 8FB90030 */  lw    $t9, 0x30($sp)
/* 0A14B8 80118A48 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A14BC 80118A4C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0A14C0 80118A50 AE190000 */  sw    $t9, ($s0)
/* 0A14C4 80118A54 8FB00020 */  lw    $s0, 0x20($sp)
/* 0A14C8 80118A58 03E00008 */  jr    $ra
/* 0A14CC 80118A5C 27BD0030 */   addiu $sp, $sp, 0x30
