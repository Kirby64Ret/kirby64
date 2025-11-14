glabel func_801DD390_ovl10
/* 1CE100 801DD390 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1CE104 801DD394 AFB00028 */  sw    $s0, 0x28($sp)
/* 1CE108 801DD398 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 1CE10C 801DD39C 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 1CE110 801DD3A0 AFBF0044 */  sw    $ra, 0x44($sp)
/* 1CE114 801DD3A4 AFB60040 */  sw    $s6, 0x40($sp)
/* 1CE118 801DD3A8 AFB5003C */  sw    $s5, 0x3c($sp)
/* 1CE11C 801DD3AC AFB40038 */  sw    $s4, 0x38($sp)
/* 1CE120 801DD3B0 AFB30034 */  sw    $s3, 0x34($sp)
/* 1CE124 801DD3B4 AFB20030 */  sw    $s2, 0x30($sp)
/* 1CE128 801DD3B8 AFB1002C */  sw    $s1, 0x2c($sp)
/* 1CE12C 801DD3BC F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1CE130 801DD3C0 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1CE134 801DD3C4 AFA40048 */  sw    $a0, 0x48($sp)
/* 1CE138 801DD3C8 0C02BB30 */  jal   func_800AECC0
/* 1CE13C 801DD3CC C60C0000 */   lwc1  $f12, ($s0)
/* 1CE140 801DD3D0 0C02BB48 */  jal   func_800AED20
/* 1CE144 801DD3D4 C60C0000 */   lwc1  $f12, ($s0)
/* 1CE148 801DD3D8 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1CE14C 801DD3DC 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1CE150 801DD3E0 8E700000 */  lw    $s0, ($s3)
/* 1CE154 801DD3E4 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1CE158 801DD3E8 240E0004 */  li    $t6, 4
/* 1CE15C 801DD3EC 8E0F0000 */  lw    $t7, ($s0)
/* 1CE160 801DD3F0 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1CE164 801DD3F4 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1CE168 801DD3F8 000FC080 */  sll   $t8, $t7, 2
/* 1CE16C 801DD3FC 00380821 */  addu  $at, $at, $t8
/* 1CE170 801DD400 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1CE174 801DD404 8E080000 */  lw    $t0, ($s0)
/* 1CE178 801DD408 3C19801F */  lui   $t9, %hi(D_801F3A18_ovl10) # $t9, 0x801f
/* 1CE17C 801DD40C 27393A18 */  addiu $t9, %lo(D_801F3A18_ovl10) # addiu $t9, $t9, 0x3a18
/* 1CE180 801DD410 00084880 */  sll   $t1, $t0, 2
/* 1CE184 801DD414 00495021 */  addu  $t2, $v0, $t1
/* 1CE188 801DD418 8D4B0000 */  lw    $t3, ($t2)
/* 1CE18C 801DD41C 3C0C801F */  lui   $t4, %hi(D_801F40B8_ovl10) # $t4, 0x801f
/* 1CE190 801DD420 258C40B8 */  addiu $t4, %lo(D_801F40B8_ovl10) # addiu $t4, $t4, 0x40b8
/* 1CE194 801DD424 AD79008C */  sw    $t9, 0x8c($t3)
/* 1CE198 801DD428 8E6D0000 */  lw    $t5, ($s3)
/* 1CE19C 801DD42C 3C12800F */  lui   $s2, %hi(D_800EA520) # $s2, 0x800f
/* 1CE1A0 801DD430 2652A520 */  addiu $s2, %lo(D_800EA520) # addiu $s2, $s2, -0x5ae0
/* 1CE1A4 801DD434 8DAF0000 */  lw    $t7, ($t5)
/* 1CE1A8 801DD438 000F7080 */  sll   $t6, $t7, 2
/* 1CE1AC 801DD43C 004EC021 */  addu  $t8, $v0, $t6
/* 1CE1B0 801DD440 8F080000 */  lw    $t0, ($t8)
/* 1CE1B4 801DD444 AD0C0098 */  sw    $t4, 0x98($t0)
/* 1CE1B8 801DD448 8E690000 */  lw    $t1, ($s3)
/* 1CE1BC 801DD44C 8D2A0000 */  lw    $t2, ($t1)
/* 1CE1C0 801DD450 000AC880 */  sll   $t9, $t2, 2
/* 1CE1C4 801DD454 02595821 */  addu  $t3, $s2, $t9
/* 1CE1C8 801DD458 0C02CCFD */  jal   func_800B33F4
/* 1CE1CC 801DD45C AD600000 */   sw    $zero, ($t3)
/* 1CE1D0 801DD460 8E700000 */  lw    $s0, ($s3)
/* 1CE1D4 801DD464 3C16800E */  lui   $s6, %hi(D_800E6A10) # $s6, 0x800e
/* 1CE1D8 801DD468 26D66A10 */  addiu $s6, %lo(D_800E6A10) # addiu $s6, $s6, 0x6a10
/* 1CE1DC 801DD46C 8E110000 */  lw    $s1, ($s0)
/* 1CE1E0 801DD470 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1CE1E4 801DD474 4481A000 */  mtc1  $at, $f20
/* 1CE1E8 801DD478 00118880 */  sll   $s1, $s1, 2
/* 1CE1EC 801DD47C 02D16821 */  addu  $t5, $s6, $s1
/* 1CE1F0 801DD480 C5A40000 */  lwc1  $f4, ($t5)
/* 1CE1F4 801DD484 3C01801F */ lui $at, %hi(D_801F49A8_ovl10)
/* 1CE1F8 801DD488 D42849A8 */ ldc1 $f8, %lo(D_801F49A8_ovl10)($at)
/* 1CE1FC 801DD48C 460021A1 */  cvt.d.s $f6, $f4
/* 1CE200 801DD490 3C15800E */  lui   $s5, %hi(D_800E6690) # $s5, 0x800e
/* 1CE204 801DD494 46283282 */  mul.d $f10, $f6, $f8
/* 1CE208 801DD498 26B56690 */  addiu $s5, %lo(D_800E6690) # addiu $s5, $s5, 0x6690
/* 1CE20C 801DD49C 02B17821 */  addu  $t7, $s5, $s1
/* 1CE210 801DD4A0 3C01800E */ lui $at, %hi(D_800E6850)
/* 1CE214 801DD4A4 3C040001 */  lui   $a0, (0x000102E3 >> 16) # lui $a0, 1
/* 1CE218 801DD4A8 348402E3 */  ori   $a0, (0x000102E3 & 0xFFFF) # ori $a0, $a0, 0x2e3
/* 1CE21C 801DD4AC 46205420 */  cvt.s.d $f16, $f10
/* 1CE220 801DD4B0 E5F00000 */  swc1  $f16, ($t7)
/* 1CE224 801DD4B4 8E0E0000 */  lw    $t6, ($s0)
/* 1CE228 801DD4B8 000EC080 */  sll   $t8, $t6, 2
/* 1CE22C 801DD4BC 00380821 */  addu  $at, $at, $t8
/* 1CE230 801DD4C0 0C02A806 */  jal   func_800AA018
/* 1CE234 801DD4C4 E4346850 */ swc1 $f20, %lo(D_800E6850)($at)
/* 1CE238 801DD4C8 3C040001 */  lui   $a0, (0x000102E2 >> 16) # lui $a0, 1
/* 1CE23C 801DD4CC 0C02A855 */  jal   func_800AA154
/* 1CE240 801DD4D0 348402E2 */   ori   $a0, (0x000102E2 & 0xFFFF) # ori $a0, $a0, 0x2e2
/* 1CE244 801DD4D4 3C040001 */  lui   $a0, (0x000102E5 >> 16) # lui $a0, 1
/* 1CE248 801DD4D8 0C02A806 */  jal   func_800AA018
/* 1CE24C 801DD4DC 348402E5 */   ori   $a0, (0x000102E5 & 0xFFFF) # ori $a0, $a0, 0x2e5
/* 1CE250 801DD4E0 3C040001 */  lui   $a0, (0x000102E4 >> 16) # lui $a0, 1
/* 1CE254 801DD4E4 0C02A806 */  jal   func_800AA018
/* 1CE258 801DD4E8 348402E4 */   ori   $a0, (0x000102E4 & 0xFFFF) # ori $a0, $a0, 0x2e4
/* 1CE25C 801DD4EC 8E700000 */  lw    $s0, ($s3)
/* 1CE260 801DD4F0 3C14800E */  lui   $s4, %hi(D_800E64D0) # $s4, 0x800e
/* 1CE264 801DD4F4 8E110000 */  lw    $s1, ($s0)
/* 1CE268 801DD4F8 00118880 */  sll   $s1, $s1, 2
/* 1CE26C 801DD4FC 02516021 */  addu  $t4, $s2, $s1
/* 1CE270 801DD500 8D880000 */  lw    $t0, ($t4)
/* 1CE274 801DD504 29010003 */  slti  $at, $t0, 3
/* 1CE278 801DD508 5020001C */  beql  $at, $zero, .L801DD57C_ovl10
/* 1CE27C 801DD50C 02D15021 */   addu  $t2, $s6, $s1
/* 1CE280 801DD510 4480B000 */  mtc1  $zero, $f22
/* 1CE284 801DD514 269464D0 */  addiu $s4, %lo(D_800E64D0) # addiu $s4, $s4, 0x64d0
/* 1CE288 801DD518 02D14821 */  addu  $t1, $s6, $s1
.L801DD51C_ovl10:
/* 1CE28C 801DD51C C5320000 */  lwc1  $f18, ($t1)
/* 1CE290 801DD520 02915021 */  addu  $t2, $s4, $s1
/* 1CE294 801DD524 46149102 */  mul.s $f4, $f18, $f20
/* 1CE298 801DD528 E5440000 */  swc1  $f4, ($t2)
/* 1CE29C 801DD52C 8E190000 */  lw    $t9, ($s0)
/* 1CE2A0 801DD530 00195880 */  sll   $t3, $t9, 2
/* 1CE2A4 801DD534 02AB6821 */  addu  $t5, $s5, $t3
/* 1CE2A8 801DD538 0C02BC9F */  jal   func_800AF27C
/* 1CE2AC 801DD53C E5B60000 */   swc1  $f22, ($t5)
/* 1CE2B0 801DD540 8E700000 */  lw    $s0, ($s3)
/* 1CE2B4 801DD544 8E0F0000 */  lw    $t7, ($s0)
/* 1CE2B8 801DD548 000F7080 */  sll   $t6, $t7, 2
/* 1CE2BC 801DD54C 024E1021 */  addu  $v0, $s2, $t6
/* 1CE2C0 801DD550 8C580000 */  lw    $t8, ($v0)
/* 1CE2C4 801DD554 270C0001 */  addiu $t4, $t8, 1
/* 1CE2C8 801DD558 AC4C0000 */  sw    $t4, ($v0)
/* 1CE2CC 801DD55C 8E110000 */  lw    $s1, ($s0)
/* 1CE2D0 801DD560 00118880 */  sll   $s1, $s1, 2
/* 1CE2D4 801DD564 02514021 */  addu  $t0, $s2, $s1
/* 1CE2D8 801DD568 8D090000 */  lw    $t1, ($t0)
/* 1CE2DC 801DD56C 29210003 */  slti  $at, $t1, 3
/* 1CE2E0 801DD570 5420FFEA */  bnezl $at, .L801DD51C_ovl10
/* 1CE2E4 801DD574 02D14821 */   addu  $t1, $s6, $s1
/* 1CE2E8 801DD578 02D15021 */  addu  $t2, $s6, $s1
.L801DD57C_ovl10:
/* 1CE2EC 801DD57C C5460000 */  lwc1  $f6, ($t2)
/* 1CE2F0 801DD580 3C01801F */ lui $at, %hi(D_801F49B0_ovl10)
/* 1CE2F4 801DD584 D42A49B0 */ ldc1 $f10, %lo(D_801F49B0_ovl10)($at)
/* 1CE2F8 801DD588 46003221 */  cvt.d.s $f8, $f6
/* 1CE2FC 801DD58C 3C14800E */  lui   $s4, %hi(D_800E64D0) # $s4, 0x800e
/* 1CE300 801DD590 462A4402 */  mul.d $f16, $f8, $f10
/* 1CE304 801DD594 4480B000 */  mtc1  $zero, $f22
/* 1CE308 801DD598 02B1C821 */  addu  $t9, $s5, $s1
/* 1CE30C 801DD59C 3C040001 */  lui   $a0, (0x000102E7 >> 16) # lui $a0, 1
/* 1CE310 801DD5A0 269464D0 */  addiu $s4, %lo(D_800E64D0) # addiu $s4, $s4, 0x64d0
/* 1CE314 801DD5A4 348402E7 */  ori   $a0, (0x000102E7 & 0xFFFF) # ori $a0, $a0, 0x2e7
/* 1CE318 801DD5A8 462084A0 */  cvt.s.d $f18, $f16
/* 1CE31C 801DD5AC 0C02A806 */  jal   func_800AA018
/* 1CE320 801DD5B0 E7320000 */   swc1  $f18, ($t9)
/* 1CE324 801DD5B4 3C040001 */  lui   $a0, (0x000102E6 >> 16) # lui $a0, 1
/* 1CE328 801DD5B8 0C02A855 */  jal   func_800AA154
/* 1CE32C 801DD5BC 348402E6 */   ori   $a0, (0x000102E6 & 0xFFFF) # ori $a0, $a0, 0x2e6
/* 1CE330 801DD5C0 8E700000 */  lw    $s0, ($s3)
/* 1CE334 801DD5C4 3C01801F */  lui   $at, %hi(D_801F49B8_ovl10) # $at, 0x801f
/* 1CE338 801DD5C8 24190004 */  li    $t9, 4
/* 1CE33C 801DD5CC 8E0B0000 */  lw    $t3, ($s0)
/* 1CE340 801DD5D0 000B6880 */  sll   $t5, $t3, 2
/* 1CE344 801DD5D4 02AD7821 */  addu  $t7, $s5, $t5
/* 1CE348 801DD5D8 E5F60000 */  swc1  $f22, ($t7)
/* 1CE34C 801DD5DC 8E110000 */  lw    $s1, ($s0)
/* 1CE350 801DD5E0 240B0002 */  li    $t3, 2
/* 1CE354 801DD5E4 00118880 */  sll   $s1, $s1, 2
/* 1CE358 801DD5E8 02B17021 */  addu  $t6, $s5, $s1
/* 1CE35C 801DD5EC C5C40000 */  lwc1  $f4, ($t6)
/* 1CE360 801DD5F0 0291C021 */  addu  $t8, $s4, $s1
/* 1CE364 801DD5F4 E7040000 */  swc1  $f4, ($t8)
/* 1CE368 801DD5F8 8E0C0000 */  lw    $t4, ($s0)
/* 1CE36C 801DD5FC C42649B8 */  lwc1  $f6, %lo(D_801F49B8_ovl10)($at)
/* 1CE370 801DD600 3C01800E */ lui $at, %hi(D_800E6850)
/* 1CE374 801DD604 000C4080 */  sll   $t0, $t4, 2
/* 1CE378 801DD608 00280821 */  addu  $at, $at, $t0
/* 1CE37C 801DD60C E4266850 */ swc1 $f6, %lo(D_800E6850)($at)
/* 1CE380 801DD610 8E110000 */  lw    $s1, ($s0)
/* 1CE384 801DD614 00118880 */  sll   $s1, $s1, 2
/* 1CE388 801DD618 02514821 */  addu  $t1, $s2, $s1
/* 1CE38C 801DD61C 8D2A0000 */  lw    $t2, ($t1)
/* 1CE390 801DD620 29410065 */  slti  $at, $t2, 0x65
/* 1CE394 801DD624 14200004 */  bnez  $at, .L801DD638_ovl10
/* 1CE398 801DD628 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CE39C 801DD62C 00310821 */  addu  $at, $at, $s1
/* 1CE3A0 801DD630 10000004 */  b     .L801DD644_ovl10
/* 1CE3A4 801DD634 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.L801DD638_ovl10:
/* 1CE3A8 801DD638 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CE3AC 801DD63C 00310821 */  addu  $at, $at, $s1
/* 1CE3B0 801DD640 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
.L801DD644_ovl10:
/* 1CE3B4 801DD644 8FBF0044 */  lw    $ra, 0x44($sp)
/* 1CE3B8 801DD648 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1CE3BC 801DD64C D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1CE3C0 801DD650 8FB00028 */  lw    $s0, 0x28($sp)
/* 1CE3C4 801DD654 8FB1002C */  lw    $s1, 0x2c($sp)
/* 1CE3C8 801DD658 8FB20030 */  lw    $s2, 0x30($sp)
/* 1CE3CC 801DD65C 8FB30034 */  lw    $s3, 0x34($sp)
/* 1CE3D0 801DD660 8FB40038 */  lw    $s4, 0x38($sp)
/* 1CE3D4 801DD664 8FB5003C */  lw    $s5, 0x3c($sp)
/* 1CE3D8 801DD668 8FB60040 */  lw    $s6, 0x40($sp)
/* 1CE3DC 801DD66C 03E00008 */  jr    $ra
/* 1CE3E0 801DD670 27BD0048 */   addiu $sp, $sp, 0x48
.type func_801DD390_ovl10, @function
.size func_801DD390_ovl10, . - func_801DD390_ovl10
