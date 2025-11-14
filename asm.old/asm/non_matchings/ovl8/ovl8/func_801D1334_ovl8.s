glabel func_801D1334_ovl8
/* 174E14 801D1334 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 174E18 801D1338 AFBF0014 */  sw    $ra, 0x14($sp)
/* 174E1C 801D133C 0C02D69F */  jal   func_800B5A7C
/* 174E20 801D1340 00000000 */   nop   
/* 174E24 801D1344 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174E28 801D1348 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174E2C 801D134C 3C01800E */ lui $at, %hi(D_800E5510)
/* 174E30 801D1350 3C0E800E */  lui   $t6, %hi(D_800E64D0) # $t6, 0x800e
/* 174E34 801D1354 8C620000 */  lw    $v0, ($v1)
/* 174E38 801D1358 25CE64D0 */  addiu $t6, %lo(D_800E64D0) # addiu $t6, $t6, 0x64d0
/* 174E3C 801D135C 3C04800E */ lui $a0, %hi(D_800DE350)
/* 174E40 801D1360 00021080 */  sll   $v0, $v0, 2
/* 174E44 801D1364 00220821 */  addu  $at, $at, $v0
/* 174E48 801D1368 C4245510 */ lwc1 $f4, %lo(D_800E5510)($at)
/* 174E4C 801D136C 3C01800E */ lui $at, %hi(D_800E56D0)
/* 174E50 801D1370 00220821 */  addu  $at, $at, $v0
/* 174E54 801D1374 C42656D0 */ lwc1 $f6, %lo(D_800E56D0)($at)
/* 174E58 801D1378 004E2821 */  addu  $a1, $v0, $t6
/* 174E5C 801D137C C4AA0000 */  lwc1  $f10, ($a1)
/* 174E60 801D1380 46062200 */  add.s $f8, $f4, $f6
/* 174E64 801D1384 46085400 */  add.s $f16, $f10, $f8
/* 174E68 801D1388 E4B00000 */  swc1  $f16, ($a1)
/* 174E6C 801D138C 8C6F0000 */  lw    $t7, ($v1)
/* 174E70 801D1390 000FC080 */  sll   $t8, $t7, 2
/* 174E74 801D1394 00982021 */  addu  $a0, $a0, $t8
/* 174E78 801D1398 0C03E39B */  jal   func_800F8E6C
/* 174E7C 801D139C 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 174E80 801D13A0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174E84 801D13A4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174E88 801D13A8 3C01800E */ lui $at, %hi(D_800E5510)
/* 174E8C 801D13AC 3C19800E */  lui   $t9, %hi(D_800E64D0) # $t9, 0x800e
/* 174E90 801D13B0 8C620000 */  lw    $v0, ($v1)
/* 174E94 801D13B4 273964D0 */  addiu $t9, %lo(D_800E64D0) # addiu $t9, $t9, 0x64d0
/* 174E98 801D13B8 3C08800F */ lui $t0, %hi(D_800E98E0)
/* 174E9C 801D13BC 00021080 */  sll   $v0, $v0, 2
/* 174EA0 801D13C0 00220821 */  addu  $at, $at, $v0
/* 174EA4 801D13C4 C4325510 */ lwc1 $f18, %lo(D_800E5510)($at)
/* 174EA8 801D13C8 3C01800E */ lui $at, %hi(D_800E56D0)
/* 174EAC 801D13CC 00220821 */  addu  $at, $at, $v0
/* 174EB0 801D13D0 C42456D0 */ lwc1 $f4, %lo(D_800E56D0)($at)
/* 174EB4 801D13D4 00592821 */  addu  $a1, $v0, $t9
/* 174EB8 801D13D8 C4AA0000 */  lwc1  $f10, ($a1)
/* 174EBC 801D13DC 46049180 */  add.s $f6, $f18, $f4
/* 174EC0 801D13E0 46065201 */  sub.s $f8, $f10, $f6
/* 174EC4 801D13E4 E4A80000 */  swc1  $f8, ($a1)
/* 174EC8 801D13E8 8C620000 */  lw    $v0, ($v1)
/* 174ECC 801D13EC 3C03800D */  lui   $v1, %hi(D_800D7098) # $v1, 0x800d
/* 174ED0 801D13F0 24637098 */  addiu $v1, %lo(D_800D7098) # addiu $v1, $v1, 0x7098
/* 174ED4 801D13F4 00021080 */  sll   $v0, $v0, 2
/* 174ED8 801D13F8 01024021 */  addu  $t0, $t0, $v0
/* 174EDC 801D13FC 8D0898E0 */ lw $t0, %lo(D_800E98E0)($t0)
/* 174EE0 801D1400 1100000D */  beqz  $t0, .L801D1438_ovl8
/* 174EE4 801D1404 00000000 */   nop   
/* 174EE8 801D1408 8C690010 */  lw    $t1, 0x10($v1)
/* 174EEC 801D140C 1120000A */  beqz  $t1, .L801D1438_ovl8
/* 174EF0 801D1410 00000000 */   nop   
/* 174EF4 801D1414 8C6A0000 */  lw    $t2, ($v1)
/* 174EF8 801D1418 3C0C800E */  lui   $t4, %hi(D_800E3210) # $t4, 0x800e
/* 174EFC 801D141C 258C3210 */  addiu $t4, %lo(D_800E3210) # addiu $t4, $t4, 0x3210
/* 174F00 801D1420 000A5880 */  sll   $t3, $t2, 2
/* 174F04 801D1424 016C6821 */  addu  $t5, $t3, $t4
/* 174F08 801D1428 C5B00000 */  lwc1  $f16, ($t5)
/* 174F0C 801D142C 004C7021 */  addu  $t6, $v0, $t4
/* 174F10 801D1430 1000000A */  b     .L801D145C_ovl8
/* 174F14 801D1434 E5D00000 */   swc1  $f16, ($t6)
.L801D1438_ovl8:
/* 174F18 801D1438 3C0F800F */ lui $t7, %hi(D_800E9C60)
/* 174F1C 801D143C 01E27821 */  addu  $t7, $t7, $v0
/* 174F20 801D1440 8DEF9C60 */ lw $t7, %lo(D_800E9C60)($t7)
/* 174F24 801D1444 15E00005 */  bnez  $t7, .L801D145C_ovl8
/* 174F28 801D1448 00000000 */   nop   
/* 174F2C 801D144C 44809000 */  mtc1  $zero, $f18
/* 174F30 801D1450 3C01800E */ lui $at, %hi(D_800E3210)
/* 174F34 801D1454 00220821 */  addu  $at, $at, $v0
/* 174F38 801D1458 E4323210 */ swc1 $f18, %lo(D_800E3210)($at)
.L801D145C_ovl8:
/* 174F3C 801D145C 0C0744A9 */  jal   func_801D12A4_ovl8
/* 174F40 801D1460 00000000 */   nop   
/* 174F44 801D1464 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 174F48 801D1468 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 174F4C 801D146C 3C18800E */  lui   $t8, %hi(gEntitiesNextPosXArray) # $t8, 0x800e
/* 174F50 801D1470 271825D0 */  addiu $t8, %lo(gEntitiesNextPosXArray) # addiu $t8, $t8, 0x25d0
/* 174F54 801D1474 8C620000 */  lw    $v0, ($v1)
/* 174F58 801D1478 3C01800E */ lui $at, %hi(D_800E2090)
/* 174F5C 801D147C 3C19800F */  lui   $t9, %hi(D_800EA6E0) # $t9, 0x800f
/* 174F60 801D1480 00021080 */  sll   $v0, $v0, 2
/* 174F64 801D1484 00582021 */  addu  $a0, $v0, $t8
/* 174F68 801D1488 00220821 */  addu  $at, $at, $v0
/* 174F6C 801D148C C42A2090 */ lwc1 $f10, %lo(D_800E2090)($at)
/* 174F70 801D1490 C4840000 */  lwc1  $f4, ($a0)
/* 174F74 801D1494 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 174F78 801D1498 2739A6E0 */  addiu $t9, %lo(D_800EA6E0) # addiu $t9, $t9, -0x5920
/* 174F7C 801D149C 460A2180 */  add.s $f6, $f4, $f10
/* 174F80 801D14A0 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 174F84 801D14A4 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 174F88 801D14A8 3C09800E */  lui   $t1, %hi(gEntitiesNextPosZArray) # $t1, 0x800e
/* 174F8C 801D14AC E4860000 */  swc1  $f6, ($a0)
/* 174F90 801D14B0 8C620000 */  lw    $v0, ($v1)
/* 174F94 801D14B4 25292950 */  addiu $t1, %lo(gEntitiesNextPosZArray) # addiu $t1, $t1, 0x2950
/* 174F98 801D14B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 174F9C 801D14BC 00021080 */  sll   $v0, $v0, 2
/* 174FA0 801D14C0 00592821 */  addu  $a1, $v0, $t9
/* 174FA4 801D14C4 00220821 */  addu  $at, $at, $v0
/* 174FA8 801D14C8 C430A8A0 */ lwc1 $f16, %lo(D_800EA8A0)($at)
/* 174FAC 801D14CC C4A80000 */  lwc1  $f8, ($a1)
/* 174FB0 801D14D0 3C01800E */ lui $at, %hi(D_800E3210)
/* 174FB4 801D14D4 46104000 */  add.s $f0, $f8, $f16
/* 174FB8 801D14D8 E4A00000 */  swc1  $f0, ($a1)
/* 174FBC 801D14DC 8C620000 */  lw    $v0, ($v1)
/* 174FC0 801D14E0 00021080 */  sll   $v0, $v0, 2
/* 174FC4 801D14E4 00220821 */  addu  $at, $at, $v0
/* 174FC8 801D14E8 C4243210 */ lwc1 $f4, %lo(D_800E3210)($at)
/* 174FCC 801D14EC 00483021 */  addu  $a2, $v0, $t0
/* 174FD0 801D14F0 C4D20000 */  lwc1  $f18, ($a2)
/* 174FD4 801D14F4 46002280 */  add.s $f10, $f4, $f0
/* 174FD8 801D14F8 3C01800E */ lui $at, %hi(D_800E2410)
/* 174FDC 801D14FC 460A9180 */  add.s $f6, $f18, $f10
/* 174FE0 801D1500 E4C60000 */  swc1  $f6, ($a2)
/* 174FE4 801D1504 8C620000 */  lw    $v0, ($v1)
/* 174FE8 801D1508 00021080 */  sll   $v0, $v0, 2
/* 174FEC 801D150C 00493821 */  addu  $a3, $v0, $t1
/* 174FF0 801D1510 00220821 */  addu  $at, $at, $v0
/* 174FF4 801D1514 C4302410 */ lwc1 $f16, %lo(D_800E2410)($at)
/* 174FF8 801D1518 C4E80000 */  lwc1  $f8, ($a3)
/* 174FFC 801D151C 27BD0018 */  addiu $sp, $sp, 0x18
/* 175000 801D1520 46104100 */  add.s $f4, $f8, $f16
/* 175004 801D1524 03E00008 */  jr    $ra
/* 175008 801D1528 E4E40000 */   swc1  $f4, ($a3)
.type func_801D1334_ovl8, @function
.size func_801D1334_ovl8, . - func_801D1334_ovl8
