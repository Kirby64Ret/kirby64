glabel func_801DE030_ovl16
/* 2142E0 801DE030 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 2142E4 801DE034 AFB20020 */  sw    $s2, 0x20($sp)
/* 2142E8 801DE038 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 2142EC 801DE03C 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 2142F0 801DE040 8E4E0000 */  lw    $t6, ($s2)
/* 2142F4 801DE044 AFBF003C */  sw    $ra, 0x3c($sp)
/* 2142F8 801DE048 AFBE0038 */  sw    $fp, 0x38($sp)
/* 2142FC 801DE04C AFB70034 */  sw    $s7, 0x34($sp)
/* 214300 801DE050 AFB60030 */  sw    $s6, 0x30($sp)
/* 214304 801DE054 AFB5002C */  sw    $s5, 0x2c($sp)
/* 214308 801DE058 AFB40028 */  sw    $s4, 0x28($sp)
/* 21430C 801DE05C AFB30024 */  sw    $s3, 0x24($sp)
/* 214310 801DE060 AFB1001C */  sw    $s1, 0x1c($sp)
/* 214314 801DE064 AFB00018 */  sw    $s0, 0x18($sp)
/* 214318 801DE068 AFA40040 */  sw    $a0, 0x40($sp)
/* 21431C 801DE06C 8DCF0000 */  lw    $t7, ($t6)
/* 214320 801DE070 3C10800E */ lui $s0, %hi(D_800E0D50)
/* 214324 801DE074 000FC080 */  sll   $t8, $t7, 2
/* 214328 801DE078 02188021 */  addu  $s0, $s0, $t8
/* 21432C 801DE07C 0C066ED6 */  jal   func_8019BB58_ovl16
/* 214330 801DE080 8E100D50 */ lw $s0, %lo(D_800E0D50)($s0)
/* 214334 801DE084 8E470000 */  lw    $a3, ($s2)
/* 214338 801DE088 3C19800B */  lui   $t9, %hi(D_800B7560) # $t9, 0x800b
/* 21433C 801DE08C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 214340 801DE090 8CE80000 */  lw    $t0, ($a3)
/* 214344 801DE094 27397560 */  addiu $t9, %lo(D_800B7560) # addiu $t9, $t9, 0x7560
/* 214348 801DE098 3C0A801E */  lui   $t2, %hi(D_801DE524) # $t2, 0x801e
/* 21434C 801DE09C 00084880 */  sll   $t1, $t0, 2
/* 214350 801DE0A0 00290821 */  addu  $at, $at, $t1
/* 214354 801DE0A4 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 214358 801DE0A8 8CEB0000 */  lw    $t3, ($a3)
/* 21435C 801DE0AC 3C01800E */ lui $at, %hi(D_800DF150)
/* 214360 801DE0B0 254AE524 */  addiu $t2, %lo(D_801DE524) # addiu $t2, $t2, -0x1adc
/* 214364 801DE0B4 000B6080 */  sll   $t4, $t3, 2
/* 214368 801DE0B8 002C0821 */  addu  $at, $at, $t4
/* 21436C 801DE0BC 3C02800E */  lui   $v0, %hi(D_800E17D0) # $v0, 0x800e
/* 214370 801DE0C0 AC2AF150 */ sw $t2, %lo(D_800DF150)($at)
/* 214374 801DE0C4 8CEE0000 */  lw    $t6, ($a3)
/* 214378 801DE0C8 244217D0 */  addiu $v0, %lo(D_800E17D0) # addiu $v0, $v0, 0x17d0
/* 21437C 801DE0CC 0010B080 */  sll   $s6, $s0, 2
/* 214380 801DE0D0 00566821 */  addu  $t5, $v0, $s6
/* 214384 801DE0D4 C5A40000 */  lwc1  $f4, ($t5)
/* 214388 801DE0D8 000E7880 */  sll   $t7, $t6, 2
/* 21438C 801DE0DC 004FC021 */  addu  $t8, $v0, $t7
/* 214390 801DE0E0 3C03800F */  lui   $v1, %hi(D_800E9020) # $v1, 0x800f
/* 214394 801DE0E4 E7040000 */  swc1  $f4, ($t8)
/* 214398 801DE0E8 8CF90000 */  lw    $t9, ($a3)
/* 21439C 801DE0EC 24639020 */  addiu $v1, %lo(D_800E9020) # addiu $v1, $v1, -0x6fe0
/* 2143A0 801DE0F0 00764021 */  addu  $t0, $v1, $s6
/* 2143A4 801DE0F4 C5060000 */  lwc1  $f6, ($t0)
/* 2143A8 801DE0F8 00194880 */  sll   $t1, $t9, 2
/* 2143AC 801DE0FC 00695821 */  addu  $t3, $v1, $t1
/* 2143B0 801DE100 E5660000 */  swc1  $f6, ($t3)
/* 2143B4 801DE104 8CEA0000 */  lw    $t2, ($a3)
/* 2143B8 801DE108 3C01800F */ lui $at, %hi(D_800E8920)
/* 2143BC 801DE10C 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 2143C0 801DE110 000A6080 */  sll   $t4, $t2, 2
/* 2143C4 801DE114 002C0821 */  addu  $at, $at, $t4
/* 2143C8 801DE118 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 2143CC 801DE11C 8CEE0000 */  lw    $t6, ($a3)
/* 2143D0 801DE120 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 2143D4 801DE124 00966821 */  addu  $t5, $a0, $s6
/* 2143D8 801DE128 C5A80000 */  lwc1  $f8, ($t5)
/* 2143DC 801DE12C 000E7880 */  sll   $t7, $t6, 2
/* 2143E0 801DE130 008FC021 */  addu  $t8, $a0, $t7
/* 2143E4 801DE134 0C02CCFD */  jal   func_800B33F4
/* 2143E8 801DE138 E7080000 */   swc1  $f8, ($t8)
/* 2143EC 801DE13C 8E470000 */  lw    $a3, ($s2)
/* 2143F0 801DE140 3C02800F */ lui $v0, %hi(D_800E98E0)
/* 2143F4 801DE144 8CE30000 */  lw    $v1, ($a3)
/* 2143F8 801DE148 00031880 */  sll   $v1, $v1, 2
/* 2143FC 801DE14C 00431021 */  addu  $v0, $v0, $v1
/* 214400 801DE150 8C4298E0 */ lw $v0, %lo(D_800E98E0)($v0)
/* 214404 801DE154 2C410008 */  sltiu $at, $v0, 8
/* 214408 801DE158 10200055 */  beqz  $at, .L801DE2B0_ovl16
/* 21440C 801DE15C 00024080 */   sll   $t0, $v0, 2
/* 214410 801DE160 3C01801F */ lui $at, %hi(D_801EFE4C_ovl16)
/* 214414 801DE164 00280821 */  addu  $at, $at, $t0
/* 214418 801DE168 8C28FE4C */ lw $t0, %lo(D_801EFE4C_ovl16)($at)
/* 21441C 801DE16C 01000008 */  jr    $t0
/* 214420 801DE170 00000000 */   nop   
/* 214424 801DE174 0002C880 */  sll   $t9, $v0, 2
/* 214428 801DE178 3C01801F */ lui $at, %hi(D_801EF760_ovl16)
/* 21442C 801DE17C 00390821 */  addu  $at, $at, $t9
/* 214430 801DE180 C42AF760 */ lwc1 $f10, %lo(D_801EF760_ovl16)($at)
/* 214434 801DE184 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosXArray) # $fp, 0x800e
/* 214438 801DE188 27DE25D0 */  addiu $fp, %lo(gEntitiesNextPosXArray) # addiu $fp, $fp, 0x25d0
/* 21443C 801DE18C 03C34821 */  addu  $t1, $fp, $v1
/* 214440 801DE190 E52A0000 */  swc1  $f10, ($t1)
/* 214444 801DE194 8CE30000 */  lw    $v1, ($a3)
/* 214448 801DE198 3C02800F */ lui $v0, %hi(D_800E98E0)
/* 21444C 801DE19C 00031880 */  sll   $v1, $v1, 2
/* 214450 801DE1A0 00431021 */  addu  $v0, $v0, $v1
/* 214454 801DE1A4 10000042 */  b     .L801DE2B0_ovl16
/* 214458 801DE1A8 8C4298E0 */ lw $v0, %lo(D_800E98E0)($v0)
/* 21445C 801DE1AC 3C17800E */  lui   $s7, %hi(gEntitiesNextPosYArray) # $s7, 0x800e
/* 214460 801DE1B0 26F72790 */  addiu $s7, %lo(gEntitiesNextPosYArray) # addiu $s7, $s7, 0x2790
/* 214464 801DE1B4 02F65821 */  addu  $t3, $s7, $s6
/* 214468 801DE1B8 3C01438C */  li    $at, 0x438C0000 # 280.000000
/* 21446C 801DE1BC 44818000 */  mtc1  $at, $f16
/* 214470 801DE1C0 C5720000 */  lwc1  $f18, ($t3)
/* 214474 801DE1C4 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosXArray) # $fp, 0x800e
/* 214478 801DE1C8 27DE25D0 */  addiu $fp, %lo(gEntitiesNextPosXArray) # addiu $fp, $fp, 0x25d0
/* 21447C 801DE1CC 46128101 */  sub.s $f4, $f16, $f18
/* 214480 801DE1D0 03C35021 */  addu  $t2, $fp, $v1
/* 214484 801DE1D4 3C02800F */ lui $v0, %hi(D_800E98E0)
/* 214488 801DE1D8 E5440000 */  swc1  $f4, ($t2)
/* 21448C 801DE1DC 8CE30000 */  lw    $v1, ($a3)
/* 214490 801DE1E0 00031880 */  sll   $v1, $v1, 2
/* 214494 801DE1E4 00431021 */  addu  $v0, $v0, $v1
/* 214498 801DE1E8 10000031 */  b     .L801DE2B0_ovl16
/* 21449C 801DE1EC 8C4298E0 */ lw $v0, %lo(D_800E98E0)($v0)
/* 2144A0 801DE1F0 3C17800E */  lui   $s7, %hi(gEntitiesNextPosYArray) # $s7, 0x800e
/* 2144A4 801DE1F4 26F72790 */  addiu $s7, %lo(gEntitiesNextPosYArray) # addiu $s7, $s7, 0x2790
/* 2144A8 801DE1F8 02F66021 */  addu  $t4, $s7, $s6
/* 2144AC 801DE1FC C5860000 */  lwc1  $f6, ($t4)
/* 2144B0 801DE200 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosXArray) # $fp, 0x800e
/* 2144B4 801DE204 27DE25D0 */  addiu $fp, %lo(gEntitiesNextPosXArray) # addiu $fp, $fp, 0x25d0
/* 2144B8 801DE208 03C36821 */  addu  $t5, $fp, $v1
/* 2144BC 801DE20C E5A60000 */  swc1  $f6, ($t5)
/* 2144C0 801DE210 8CE30000 */  lw    $v1, ($a3)
/* 2144C4 801DE214 3C02800F */ lui $v0, %hi(D_800E98E0)
/* 2144C8 801DE218 00031880 */  sll   $v1, $v1, 2
/* 2144CC 801DE21C 00431021 */  addu  $v0, $v0, $v1
/* 2144D0 801DE220 10000023 */  b     .L801DE2B0_ovl16
/* 2144D4 801DE224 8C4298E0 */ lw $v0, %lo(D_800E98E0)($v0)
/* 2144D8 801DE228 3C17800E */  lui   $s7, %hi(gEntitiesNextPosYArray) # $s7, 0x800e
/* 2144DC 801DE22C 26F72790 */  addiu $s7, %lo(gEntitiesNextPosYArray) # addiu $s7, $s7, 0x2790
/* 2144E0 801DE230 02F67021 */  addu  $t6, $s7, $s6
/* 2144E4 801DE234 C5CA0000 */  lwc1  $f10, ($t6)
/* 2144E8 801DE238 44804000 */  mtc1  $zero, $f8
/* 2144EC 801DE23C 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosXArray) # $fp, 0x800e
/* 2144F0 801DE240 27DE25D0 */  addiu $fp, %lo(gEntitiesNextPosXArray) # addiu $fp, $fp, 0x25d0
/* 2144F4 801DE244 460A4401 */  sub.s $f16, $f8, $f10
/* 2144F8 801DE248 03C37821 */  addu  $t7, $fp, $v1
/* 2144FC 801DE24C 3C02800F */ lui $v0, %hi(D_800E98E0)
/* 214500 801DE250 E5F00000 */  swc1  $f16, ($t7)
/* 214504 801DE254 8CE30000 */  lw    $v1, ($a3)
/* 214508 801DE258 00031880 */  sll   $v1, $v1, 2
/* 21450C 801DE25C 00431021 */  addu  $v0, $v0, $v1
/* 214510 801DE260 10000013 */  b     .L801DE2B0_ovl16
/* 214514 801DE264 8C4298E0 */ lw $v0, %lo(D_800E98E0)($v0)
/* 214518 801DE268 3C17800E */  lui   $s7, %hi(gEntitiesNextPosYArray) # $s7, 0x800e
/* 21451C 801DE26C 26F72790 */  addiu $s7, %lo(gEntitiesNextPosYArray) # addiu $s7, $s7, 0x2790
/* 214520 801DE270 02F6C021 */  addu  $t8, $s7, $s6
/* 214524 801DE274 3C01438C */  li    $at, 0x438C0000 # 280.000000
/* 214528 801DE278 44819000 */  mtc1  $at, $f18
/* 21452C 801DE27C C7040000 */  lwc1  $f4, ($t8)
/* 214530 801DE280 44804000 */  mtc1  $zero, $f8
/* 214534 801DE284 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosXArray) # $fp, 0x800e
/* 214538 801DE288 46049181 */  sub.s $f6, $f18, $f4
/* 21453C 801DE28C 27DE25D0 */  addiu $fp, %lo(gEntitiesNextPosXArray) # addiu $fp, $fp, 0x25d0
/* 214540 801DE290 03C34021 */  addu  $t0, $fp, $v1
/* 214544 801DE294 3C02800F */ lui $v0, %hi(D_800E98E0)
/* 214548 801DE298 46064281 */  sub.s $f10, $f8, $f6
/* 21454C 801DE29C E50A0000 */  swc1  $f10, ($t0)
/* 214550 801DE2A0 8CE30000 */  lw    $v1, ($a3)
/* 214554 801DE2A4 00031880 */  sll   $v1, $v1, 2
/* 214558 801DE2A8 00431021 */  addu  $v0, $v0, $v1
/* 21455C 801DE2AC 8C4298E0 */ lw $v0, %lo(D_800E98E0)($v0)
.L801DE2B0_ovl16:
/* 214560 801DE2B0 0002C880 */  sll   $t9, $v0, 2
/* 214564 801DE2B4 3C01801F */ lui $at, %hi(D_801EF780_ovl16)
/* 214568 801DE2B8 00390821 */  addu  $at, $at, $t9
/* 21456C 801DE2BC C430F780 */ lwc1 $f16, %lo(D_801EF780_ovl16)($at)
/* 214570 801DE2C0 3C17800E */  lui   $s7, %hi(gEntitiesNextPosYArray) # $s7, 0x800e
/* 214574 801DE2C4 26F72790 */  addiu $s7, %lo(gEntitiesNextPosYArray) # addiu $s7, $s7, 0x2790
/* 214578 801DE2C8 02E34821 */  addu  $t1, $s7, $v1
/* 21457C 801DE2CC E5300000 */  swc1  $f16, ($t1)
/* 214580 801DE2D0 8CEB0000 */  lw    $t3, ($a3)
/* 214584 801DE2D4 3C10800F */  lui   $s0, %hi(D_800E9FE0) # $s0, 0x800f
/* 214588 801DE2D8 26109FE0 */  addiu $s0, %lo(D_800E9FE0) # addiu $s0, $s0, -0x6020
/* 21458C 801DE2DC 000B5080 */  sll   $t2, $t3, 2
/* 214590 801DE2E0 3C1E800E */  lui   $fp, %hi(gEntitiesNextPosXArray) # $fp, 0x800e
/* 214594 801DE2E4 020A6021 */  addu  $t4, $s0, $t2
/* 214598 801DE2E8 3C040001 */  lui   $a0, (0x000100E8 >> 16) # lui $a0, 1
/* 21459C 801DE2EC 27DE25D0 */  addiu $fp, %lo(gEntitiesNextPosXArray) # addiu $fp, $fp, 0x25d0
/* 2145A0 801DE2F0 AD800000 */  sw    $zero, ($t4)
/* 2145A4 801DE2F4 348400E8 */  ori   $a0, (0x000100E8 & 0xFFFF) # ori $a0, $a0, 0xe8
/* 2145A8 801DE2F8 24050023 */  li    $a1, 35
/* 2145AC 801DE2FC 0C02A619 */  jal   func_800A9864
/* 2145B0 801DE300 24060010 */   li    $a2, 16
/* 2145B4 801DE304 00002025 */  move  $a0, $zero
/* 2145B8 801DE308 0C02BEED */  jal   func_800AFBB4
/* 2145BC 801DE30C 8E450000 */   lw    $a1, ($s2)
/* 2145C0 801DE310 3C11800D */  lui   $s1, %hi(D_800D7098) # $s1, 0x800d
/* 2145C4 801DE314 26317098 */  addiu $s1, %lo(D_800D7098) # addiu $s1, $s1, 0x7098
/* 2145C8 801DE318 8E2D0010 */  lw    $t5, 0x10($s1)
/* 2145CC 801DE31C 3C15800F */  lui   $s5, %hi(D_800EA6E0) # $s5, 0x800f
/* 2145D0 801DE320 26B5A6E0 */  addiu $s5, %lo(D_800EA6E0) # addiu $s5, $s5, -0x5920
/* 2145D4 801DE324 11A00070 */  beqz  $t5, .L801DE4E8_ovl16
/* 2145D8 801DE328 24140002 */   li    $s4, 2
/* 2145DC 801DE32C 24130001 */  li    $s3, 1
/* 2145E0 801DE330 8E4E0000 */  lw    $t6, ($s2)
.L801DE334_ovl16:
/* 2145E4 801DE334 8DC30000 */  lw    $v1, ($t6)
/* 2145E8 801DE338 00031880 */  sll   $v1, $v1, 2
/* 2145EC 801DE33C 02037821 */  addu  $t7, $s0, $v1
/* 2145F0 801DE340 8DE20000 */  lw    $v0, ($t7)
/* 2145F4 801DE344 10400063 */  beqz  $v0, .L801DE4D4_ovl16
/* 2145F8 801DE348 00000000 */   nop   
/* 2145FC 801DE34C 10530005 */  beq   $v0, $s3, .L801DE364_ovl16
/* 214600 801DE350 03C3C021 */   addu  $t8, $fp, $v1
/* 214604 801DE354 10540037 */  beq   $v0, $s4, .L801DE434_ovl16
/* 214608 801DE358 24040033 */   li    $a0, 51
/* 21460C 801DE35C 1000005D */  b     .L801DE4D4_ovl16
/* 214610 801DE360 00000000 */   nop   
.L801DE364_ovl16:
/* 214614 801DE364 03D64021 */  addu  $t0, $fp, $s6
/* 214618 801DE368 02F6C821 */  addu  $t9, $s7, $s6
/* 21461C 801DE36C 02E34821 */  addu  $t1, $s7, $v1
/* 214620 801DE370 C5260000 */  lwc1  $f6, ($t1)
/* 214624 801DE374 C7280000 */  lwc1  $f8, ($t9)
/* 214628 801DE378 C5040000 */  lwc1  $f4, ($t0)
/* 21462C 801DE37C C7120000 */  lwc1  $f18, ($t8)
/* 214630 801DE380 46064381 */  sub.s $f14, $f8, $f6
/* 214634 801DE384 0C0061C3 */  jal   atan2f
/* 214638 801DE388 46049301 */   sub.s $f12, $f18, $f4
/* 21463C 801DE38C 8E450000 */  lw    $a1, ($s2)
/* 214640 801DE390 02602025 */  move  $a0, $s3
/* 214644 801DE394 8CAB0000 */  lw    $t3, ($a1)
/* 214648 801DE398 000B5080 */  sll   $t2, $t3, 2
/* 21464C 801DE39C 02AA6021 */  addu  $t4, $s5, $t2
/* 214650 801DE3A0 0C02BEED */  jal   func_800AFBB4
/* 214654 801DE3A4 E5800000 */   swc1  $f0, ($t4)
/* 214658 801DE3A8 0C029D9E */  jal   play_sound
/* 21465C 801DE3AC 240401B0 */   li    $a0, 432
/* 214660 801DE3B0 3C040001 */  lui   $a0, (0x0001066F >> 16) # lui $a0, 1
/* 214664 801DE3B4 0C02A806 */  jal   func_800AA018
/* 214668 801DE3B8 3484066F */   ori   $a0, (0x0001066F & 0xFFFF) # ori $a0, $a0, 0x66f
/* 21466C 801DE3BC 3C040001 */  lui   $a0, (0x0001066E >> 16) # lui $a0, 1
/* 214670 801DE3C0 0C02A855 */  jal   func_800AA154
/* 214674 801DE3C4 3484066E */   ori   $a0, (0x0001066E & 0xFFFF) # ori $a0, $a0, 0x66e
/* 214678 801DE3C8 00002025 */  move  $a0, $zero
/* 21467C 801DE3CC 0C02BEED */  jal   func_800AFBB4
/* 214680 801DE3D0 8E450000 */   lw    $a1, ($s2)
/* 214684 801DE3D4 8E2D0010 */  lw    $t5, 0x10($s1)
/* 214688 801DE3D8 11A0003E */  beqz  $t5, .L801DE4D4_ovl16
/* 21468C 801DE3DC 00000000 */   nop   
/* 214690 801DE3E0 8E4E0000 */  lw    $t6, ($s2)
/* 214694 801DE3E4 8DCF0000 */  lw    $t7, ($t6)
/* 214698 801DE3E8 000FC080 */  sll   $t8, $t7, 2
/* 21469C 801DE3EC 02184021 */  addu  $t0, $s0, $t8
/* 2146A0 801DE3F0 8D190000 */  lw    $t9, ($t0)
/* 2146A4 801DE3F4 16790037 */  bne   $s3, $t9, .L801DE4D4_ovl16
/* 2146A8 801DE3F8 00000000 */   nop   
.L801DE3FC_ovl16:
/* 2146AC 801DE3FC 0C002DAF */  jal   finish_current_thread
/* 2146B0 801DE400 02602025 */   move  $a0, $s3
/* 2146B4 801DE404 8E290010 */  lw    $t1, 0x10($s1)
/* 2146B8 801DE408 11200032 */  beqz  $t1, .L801DE4D4_ovl16
/* 2146BC 801DE40C 00000000 */   nop   
/* 2146C0 801DE410 8E4B0000 */  lw    $t3, ($s2)
/* 2146C4 801DE414 8D6A0000 */  lw    $t2, ($t3)
/* 2146C8 801DE418 000A6080 */  sll   $t4, $t2, 2
/* 2146CC 801DE41C 020C6821 */  addu  $t5, $s0, $t4
/* 2146D0 801DE420 8DAE0000 */  lw    $t6, ($t5)
/* 2146D4 801DE424 126EFFF5 */  beq   $s3, $t6, .L801DE3FC_ovl16
/* 2146D8 801DE428 00000000 */   nop   
/* 2146DC 801DE42C 10000029 */  b     .L801DE4D4_ovl16
/* 2146E0 801DE430 00000000 */   nop   
.L801DE434_ovl16:
/* 2146E4 801DE434 0C06B30D */  jal   func_801ACC34_ovl16
/* 2146E8 801DE438 00002825 */   move  $a1, $zero
/* 2146EC 801DE43C 1040000F */  beqz  $v0, .L801DE47C_ovl16
/* 2146F0 801DE440 00021880 */   sll   $v1, $v0, 2
/* 2146F4 801DE444 3C01800F */ lui $at, %hi(D_800E8E60)
/* 2146F8 801DE448 00230821 */  addu  $at, $at, $v1
/* 2146FC 801DE44C AC338E60 */ sw $s3, %lo(D_800E8E60)($at)
/* 214700 801DE450 8E470000 */  lw    $a3, ($s2)
/* 214704 801DE454 3C01800E */ lui $at, %hi(D_800E0D50)
/* 214708 801DE458 00230821 */  addu  $at, $at, $v1
/* 21470C 801DE45C 8CEF0000 */  lw    $t7, ($a3)
/* 214710 801DE460 02A34821 */  addu  $t1, $s5, $v1
/* 214714 801DE464 AC2F0D50 */ sw $t7, %lo(D_800E0D50)($at)
/* 214718 801DE468 8CF80000 */  lw    $t8, ($a3)
/* 21471C 801DE46C 00184080 */  sll   $t0, $t8, 2
/* 214720 801DE470 02A8C821 */  addu  $t9, $s5, $t0
/* 214724 801DE474 C72A0000 */  lwc1  $f10, ($t9)
/* 214728 801DE478 E52A0000 */  swc1  $f10, ($t1)
.L801DE47C_ovl16:
/* 21472C 801DE47C 8E2B0010 */  lw    $t3, 0x10($s1)
/* 214730 801DE480 11600014 */  beqz  $t3, .L801DE4D4_ovl16
/* 214734 801DE484 00000000 */   nop   
/* 214738 801DE488 8E4A0000 */  lw    $t2, ($s2)
/* 21473C 801DE48C 8D4C0000 */  lw    $t4, ($t2)
/* 214740 801DE490 000C6880 */  sll   $t5, $t4, 2
/* 214744 801DE494 020D7021 */  addu  $t6, $s0, $t5
/* 214748 801DE498 8DCF0000 */  lw    $t7, ($t6)
/* 21474C 801DE49C 168F000D */  bne   $s4, $t7, .L801DE4D4_ovl16
/* 214750 801DE4A0 00000000 */   nop   
.L801DE4A4_ovl16:
/* 214754 801DE4A4 0C002DAF */  jal   finish_current_thread
/* 214758 801DE4A8 02602025 */   move  $a0, $s3
/* 21475C 801DE4AC 8E380010 */  lw    $t8, 0x10($s1)
/* 214760 801DE4B0 13000008 */  beqz  $t8, .L801DE4D4_ovl16
/* 214764 801DE4B4 00000000 */   nop   
/* 214768 801DE4B8 8E480000 */  lw    $t0, ($s2)
/* 21476C 801DE4BC 8D190000 */  lw    $t9, ($t0)
/* 214770 801DE4C0 00194880 */  sll   $t1, $t9, 2
/* 214774 801DE4C4 02095821 */  addu  $t3, $s0, $t1
/* 214778 801DE4C8 8D6A0000 */  lw    $t2, ($t3)
/* 21477C 801DE4CC 128AFFF5 */  beq   $s4, $t2, .L801DE4A4_ovl16
/* 214780 801DE4D0 00000000 */   nop   
.L801DE4D4_ovl16:
/* 214784 801DE4D4 0C002DAF */  jal   finish_current_thread
/* 214788 801DE4D8 02602025 */   move  $a0, $s3
/* 21478C 801DE4DC 8E2C0010 */  lw    $t4, 0x10($s1)
/* 214790 801DE4E0 5580FF94 */  bnezl $t4, .L801DE334_ovl16
/* 214794 801DE4E4 8E4E0000 */   lw    $t6, ($s2)
.L801DE4E8_ovl16:
/* 214798 801DE4E8 8E4D0000 */  lw    $t5, ($s2)
/* 21479C 801DE4EC 0C067656 */  jal   func_8019D958_ovl16
/* 2147A0 801DE4F0 95A40002 */   lhu   $a0, 2($t5)
/* 2147A4 801DE4F4 8FBF003C */  lw    $ra, 0x3c($sp)
/* 2147A8 801DE4F8 8FB00018 */  lw    $s0, 0x18($sp)
/* 2147AC 801DE4FC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 2147B0 801DE500 8FB20020 */  lw    $s2, 0x20($sp)
/* 2147B4 801DE504 8FB30024 */  lw    $s3, 0x24($sp)
/* 2147B8 801DE508 8FB40028 */  lw    $s4, 0x28($sp)
/* 2147BC 801DE50C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 2147C0 801DE510 8FB60030 */  lw    $s6, 0x30($sp)
/* 2147C4 801DE514 8FB70034 */  lw    $s7, 0x34($sp)
/* 2147C8 801DE518 8FBE0038 */  lw    $fp, 0x38($sp)
/* 2147CC 801DE51C 03E00008 */  jr    $ra
/* 2147D0 801DE520 27BD0040 */   addiu $sp, $sp, 0x40
.type func_801DE030_ovl16, @function
.size func_801DE030_ovl16, . - func_801DE030_ovl16
