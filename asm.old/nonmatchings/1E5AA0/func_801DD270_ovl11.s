glabel func_801DD270_ovl11
/* 1E7B30 801DD270 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 1E7B34 801DD274 44800000 */  mtc1       $zero, $f0
/* 1E7B38 801DD278 F7B40018 */  sdc1       $f20, 0x18($sp)
glabel func_801DD27C_ovl9
/* 1E7B3C 801DD27C 24020001 */  addiu      $v0, $zero, 0x1
.L801DD280_ovl12:
/* 1E7B40 801DD280 46000506 */  mov.s      $f20, $f0
.L801DD284_ovl12:
/* 1E7B44 801DD284 4459F800 */  cfc1       $t9, $31
.L801DD288_ovl10:
/* 1E7B48 801DD288 44C2F800 */  ctc1       $v0, $31
/* 1E7B4C 801DD28C 3C0E801E */  lui        $t6, %hi(func_801E0B94_ovl11)
glabel func_801DD290_ovl12
/* 1E7B50 801DD290 AFBF0054 */  sw         $ra, 0x54($sp)
.L801DD294_ovl14:
/* 1E7B54 801DD294 46000124 */  cvt.w.s    $f4, $f0
/* 1E7B58 801DD298 AFBE0050 */  sw         $fp, 0x50($sp)
/* 1E7B5C 801DD29C AFB7004C */  sw         $s7, 0x4C($sp)
.L801DD2A0_ovl10:
/* 1E7B60 801DD2A0 AFB60048 */  sw         $s6, 0x48($sp)
glabel func_801DD2A4_ovl9
/* 1E7B64 801DD2A4 AFB50044 */  sw         $s5, 0x44($sp)
/* 1E7B68 801DD2A8 AFB40040 */  sw         $s4, 0x40($sp)
/* 1E7B6C 801DD2AC AFB3003C */  sw         $s3, 0x3C($sp)
glabel func_801DD2B0_ovl17
/* 1E7B70 801DD2B0 AFB20038 */  sw         $s2, 0x38($sp)
/* 1E7B74 801DD2B4 AFB10034 */  sw         $s1, 0x34($sp)
/* 1E7B78 801DD2B8 AFB00030 */  sw         $s0, 0x30($sp)
/* 1E7B7C 801DD2BC F7B80028 */  sdc1       $f24, 0x28($sp)
/* 1E7B80 801DD2C0 F7B60020 */  sdc1       $f22, 0x20($sp)
.L801DD2C4_ovl14:
/* 1E7B84 801DD2C4 25CE0B94 */  addiu      $t6, $t6, %lo(func_801E0B94_ovl11)
/* 1E7B88 801DD2C8 8DD80000 */  lw         $t8, 0x0($t6)
glabel func_801DD2CC_ovl10
/* 1E7B8C 801DD2CC 4442F800 */  cfc1       $v0, $31
/* 1E7B90 801DD2D0 27B20088 */  addiu      $s2, $sp, 0x88
/* 1E7B94 801DD2D4 AE580000 */  sw         $t8, 0x0($s2)
/* 1E7B98 801DD2D8 8DCF0004 */  lw         $t7, 0x4($t6)
/* 1E7B9C 801DD2DC 30420078 */  andi       $v0, $v0, 0x78
/* 1E7BA0 801DD2E0 0080F025 */  or         $fp, $a0, $zero
/* 1E7BA4 801DD2E4 24160008 */  addiu      $s6, $zero, 0x8
.L801DD2E8_ovl12:
/* 1E7BA8 801DD2E8 10400013 */  beqz       $v0, .L801DD338_ovl11
/* 1E7BAC 801DD2EC AE4F0004 */   sw        $t7, 0x4($s2)
/* 1E7BB0 801DD2F0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
.L801DD2F4_ovl14:
/* 1E7BB4 801DD2F4 44812000 */  mtc1       $at, $f4
/* 1E7BB8 801DD2F8 24020001 */  addiu      $v0, $zero, 0x1
.L801DD2FC_ovl12:
/* 1E7BBC 801DD2FC 46040101 */  sub.s      $f4, $f0, $f4
/* 1E7BC0 801DD300 44C2F800 */  ctc1       $v0, $31
/* 1E7BC4 801DD304 00000000 */  nop
.L801DD308_ovl15:
/* 1E7BC8 801DD308 46002124 */  cvt.w.s    $f4, $f4
.L801DD30C_ovl15:
/* 1E7BCC 801DD30C 4442F800 */  cfc1       $v0, $31
.L801DD310_ovl16:
/* 1E7BD0 801DD310 00000000 */  nop
/* 1E7BD4 801DD314 30420078 */  andi       $v0, $v0, 0x78
glabel func_801DD318_ovl15
/* 1E7BD8 801DD318 14400005 */  bnez       $v0, .L801DD330_ovl11
.L801DD31C_ovl10:
/* 1E7BDC 801DD31C 00000000 */   nop
/* 1E7BE0 801DD320 44022000 */  mfc1       $v0, $f4
/* 1E7BE4 801DD324 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 1E7BE8 801DD328 10000007 */  b          .L801DD348_ovl11
/* 1E7BEC 801DD32C 00411025 */   or        $v0, $v0, $at
.L801DD330_ovl11:
/* 1E7BF0 801DD330 10000005 */  b          .L801DD348_ovl11
/* 1E7BF4 801DD334 2402FFFF */   addiu     $v0, $zero, -0x1
.L801DD338_ovl11:
/* 1E7BF8 801DD338 44022000 */  mfc1       $v0, $f4
glabel func_801DD33C_ovl13
/* 1E7BFC 801DD33C 00000000 */  nop
.L801DD340_ovl16:
/* 1E7C00 801DD340 0440FFFB */  bltz       $v0, .L801DD330_ovl11
/* 1E7C04 801DD344 00000000 */   nop
.L801DD348_ovl11:
/* 1E7C08 801DD348 304800FF */  andi       $t0, $v0, 0xFF
/* 1E7C0C 801DD34C 29010008 */  slti       $at, $t0, 0x8
/* 1E7C10 801DD350 44D9F800 */  ctc1       $t9, $31
/* 1E7C14 801DD354 10200012 */  beqz       $at, .L801DD3A0_ovl11
/* 1E7C18 801DD358 305400FF */   andi      $s4, $v0, 0xFF
.L801DD35C_ovl16:
/* 1E7C1C 801DD35C 3C01801E */  lui        $at, %hi(D_801E0C28_ovl11)
/* 1E7C20 801DD360 C4380C28 */  lwc1       $f24, %lo(D_801E0C28_ovl11)($at)
/* 1E7C24 801DD364 3C01801E */  lui        $at, %hi(.L801E0C2C_ovl11)
/* 1E7C28 801DD368 C4360C2C */  lwc1       $f22, %lo(.L801E0C2C_ovl11)($at)
.L801DD36C_ovl13:
/* 1E7C2C 801DD36C 27B70068 */  addiu      $s7, $sp, 0x68
.L801DD370_ovl11:
/* 1E7C30 801DD370 0C006279 */  jal        random_soft_f32
.L801DD374_ovl14:
/* 1E7C34 801DD374 00000000 */   nop
/* 1E7C38 801DD378 46160182 */  mul.s      $f6, $f0, $f22
/* 1E7C3C 801DD37C 00144880 */  sll        $t1, $s4, 2
.L801DD380_ovl10:
/* 1E7C40 801DD380 26940001 */  addiu      $s4, $s4, 0x1
/* 1E7C44 801DD384 329400FF */  andi       $s4, $s4, 0xFF
/* 1E7C48 801DD388 2A810008 */  slti       $at, $s4, 0x8
/* 1E7C4C 801DD38C 02E95021 */  addu       $t2, $s7, $t1
glabel func_801DD390_ovl16
/* 1E7C50 801DD390 46143200 */  add.s      $f8, $f6, $f20
/* 1E7C54 801DD394 46184500 */  add.s      $f20, $f8, $f24
.L801DD398_ovl12:
/* 1E7C58 801DD398 1420FFF5 */  bnez       $at, .L801DD370_ovl11
/* 1E7C5C 801DD39C E5540000 */   swc1      $f20, 0x0($t2)
.L801DD3A0_ovl11:
/* 1E7C60 801DD3A0 27B70068 */  addiu      $s7, $sp, 0x68
.L801DD3A4_ovl16:
/* 1E7C64 801DD3A4 0000A025 */  or         $s4, $zero, $zero
glabel func_801DD3A8_ovl13
/* 1E7C68 801DD3A8 02C09825 */  or         $s3, $s6, $zero
/* 1E7C6C 801DD3AC 24040004 */  addiu      $a0, $zero, 0x4
.L801DD3B0_ovl11:
/* 1E7C70 801DD3B0 00008025 */  or         $s0, $zero, $zero
.L801DD3B4_ovl14:
/* 1E7C74 801DD3B4 0C006291 */  jal        random_soft_s32_range
/* 1E7C78 801DD3B8 00008825 */   or        $s1, $zero, $zero
/* 1E7C7C 801DD3BC 03D4A821 */  addu       $s5, $fp, $s4
/* 1E7C80 801DD3C0 244C0004 */  addiu      $t4, $v0, 0x4
/* 1E7C84 801DD3C4 A2AC0000 */  sb         $t4, 0x0($s5)
/* 1E7C88 801DD3C8 0C006291 */  jal        random_soft_s32_range
glabel func_801DD3CC_ovl9
/* 1E7C8C 801DD3CC 02602025 */   or        $a0, $s3, $zero
/* 1E7C90 801DD3D0 304D00FF */  andi       $t5, $v0, 0xFF
/* 1E7C94 801DD3D4 024D1821 */  addu       $v1, $s2, $t5
.L801DD3D8_ovl16:
/* 1E7C98 801DD3D8 906E0000 */  lbu        $t6, 0x0($v1)
/* 1E7C9C 801DD3DC 00144080 */  sll        $t0, $s4, 2
/* 1E7CA0 801DD3E0 26D6FFFF */  addiu      $s6, $s6, -0x1
/* 1E7CA4 801DD3E4 A2AE0008 */  sb         $t6, 0x8($s5)
.L801DD3E8_ovl16:
/* 1E7CA8 801DD3E8 906F0000 */  lbu        $t7, 0x0($v1)
/* 1E7CAC 801DD3EC 03C84821 */  addu       $t1, $fp, $t0
/* 1E7CB0 801DD3F0 32D600FF */  andi       $s6, $s6, 0xFF
/* 1E7CB4 801DD3F4 000FC080 */  sll        $t8, $t7, 2
/* 1E7CB8 801DD3F8 02F8C821 */  addu       $t9, $s7, $t8
/* 1E7CBC 801DD3FC C72A0000 */  lwc1       $f10, 0x0($t9)
glabel func_801DD400_ovl12
/* 1E7CC0 801DD400 02C09825 */  or         $s3, $s6, $zero
/* 1E7CC4 801DD404 1AC0000E */  blez       $s6, .L801DD440_ovl11
/* 1E7CC8 801DD408 E52A0010 */   swc1      $f10, 0x10($t1)
.L801DD40C_ovl11:
/* 1E7CCC 801DD40C 02515021 */  addu       $t2, $s2, $s1
/* 1E7CD0 801DD410 91420000 */  lbu        $v0, 0x0($t2)
/* 1E7CD4 801DD414 906B0000 */  lbu        $t3, 0x0($v1)
/* 1E7CD8 801DD418 26310001 */  addiu      $s1, $s1, 0x1
.L801DD41C_ovl16:
/* 1E7CDC 801DD41C 02506021 */  addu       $t4, $s2, $s0
/* 1E7CE0 801DD420 51620005 */  beql       $t3, $v0, func_801DD438_ovl17
/* 1E7CE4 801DD424 0213082A */   slt       $at, $s0, $s3
/* 1E7CE8 801DD428 26100001 */  addiu      $s0, $s0, 0x1
/* 1E7CEC 801DD42C A1820000 */  sb         $v0, 0x0($t4)
/* 1E7CF0 801DD430 321000FF */  andi       $s0, $s0, 0xFF
/* 1E7CF4 801DD434 0213082A */  slt        $at, $s0, $s3
glabel func_801DD438_ovl17
/* 1E7CF8 801DD438 1420FFF4 */  bnez       $at, .L801DD40C_ovl11
/* 1E7CFC 801DD43C 323100FF */   andi      $s1, $s1, 0xFF
.L801DD440_ovl11:
/* 1E7D00 801DD440 26940001 */  addiu      $s4, $s4, 0x1
/* 1E7D04 801DD444 329400FF */  andi       $s4, $s4, 0xFF
/* 1E7D08 801DD448 2A810008 */  slti       $at, $s4, 0x8
/* 1E7D0C 801DD44C 5420FFD8 */  bnel       $at, $zero, .L801DD3B0_ovl11
/* 1E7D10 801DD450 24040004 */   addiu     $a0, $zero, 0x4
.L801DD454_ovl13:
/* 1E7D14 801DD454 8FBF0054 */  lw         $ra, 0x54($sp)
/* 1E7D18 801DD458 D7B40018 */  ldc1       $f20, 0x18($sp)
.L801DD45C_ovl12:
/* 1E7D1C 801DD45C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 1E7D20 801DD460 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 1E7D24 801DD464 8FB00030 */  lw         $s0, 0x30($sp)
/* 1E7D28 801DD468 8FB10034 */  lw         $s1, 0x34($sp)
glabel func_801DD46C_ovl13
/* 1E7D2C 801DD46C 8FB20038 */  lw         $s2, 0x38($sp)
/* 1E7D30 801DD470 8FB3003C */  lw         $s3, 0x3C($sp)
/* 1E7D34 801DD474 8FB40040 */  lw         $s4, 0x40($sp)
/* 1E7D38 801DD478 8FB50044 */  lw         $s5, 0x44($sp)
.L801DD47C_ovl16:
/* 1E7D3C 801DD47C 8FB60048 */  lw         $s6, 0x48($sp)
/* 1E7D40 801DD480 8FB7004C */  lw         $s7, 0x4C($sp)
glabel func_801DD484_ovl16
/* 1E7D44 801DD484 8FBE0050 */  lw         $fp, 0x50($sp)
/* 1E7D48 801DD488 03E00008 */  jr         $ra
/* 1E7D4C 801DD48C 27BD0098 */   addiu     $sp, $sp, 0x98
