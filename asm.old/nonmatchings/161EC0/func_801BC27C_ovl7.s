glabel func_801BC27C_ovl7
/* 1622EC 801BC27C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1622F0 801BC280 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1622F4 801BC284 AFA40020 */  sw         $a0, 0x20($sp)
/* 1622F8 801BC288 AFA50024 */  sw         $a1, 0x24($sp)
/* 1622FC 801BC28C 2405001E */  addiu      $a1, $zero, 0x1E
/* 162300 801BC290 2404001F */  addiu      $a0, $zero, 0x1F
/* 162304 801BC294 0C02BB02 */  jal        request_track_general
/* 162308 801BC298 2406003C */   addiu     $a2, $zero, 0x3C
/* 16230C 801BC29C 2401FFFF */  addiu      $at, $zero, -0x1
/* 162310 801BC2A0 14410006 */  bne        $v0, $at, .L801BC2BC_ovl7
/* 162314 801BC2A4 00403025 */   or        $a2, $v0, $zero
/* 162318 801BC2A8 3C04801D */  lui        $a0, %hi(D_801CE4F4_ovl7)
/* 16231C 801BC2AC 0C02909C */  jal        print_error_stub
/* 162320 801BC2B0 2484E4F4 */   addiu     $a0, $a0, %lo(D_801CE4F4_ovl7)
/* 162324 801BC2B4 10000061 */  b          .L801BC43C_ovl7
/* 162328 801BC2B8 2402FFFF */   addiu     $v0, $zero, -0x1
.L801BC2BC_ovl7:
/* 16232C 801BC2BC 3C01800E */  lui        $at, %hi(D_800E76C0)
/* 162330 801BC2C0 00220821 */  addu       $at, $at, $v0
/* 162334 801BC2C4 240E00FF */  addiu      $t6, $zero, 0xFF
/* 162338 801BC2C8 A02E76C0 */  sb         $t6, %lo(D_800E76C0)($at)
/* 16233C 801BC2CC 3C01800E */  lui        $at, %hi(D_800E7730)
/* 162340 801BC2D0 00220821 */  addu       $at, $at, $v0
/* 162344 801BC2D4 240F0006 */  addiu      $t7, $zero, 0x6
/* 162348 801BC2D8 8FB80020 */  lw         $t8, 0x20($sp)
/* 16234C 801BC2DC A02F7730 */  sb         $t7, %lo(D_800E7730)($at)
/* 162350 801BC2E0 00022080 */  sll        $a0, $v0, 2
/* 162354 801BC2E4 3C03800E */  lui        $v1, %hi(D_800E0D50)
/* 162358 801BC2E8 3C01800E */  lui        $at, %hi(D_800E77A0)
/* 16235C 801BC2EC 0002C840 */  sll        $t9, $v0, 1
/* 162360 801BC2F0 00641821 */  addu       $v1, $v1, $a0
/* 162364 801BC2F4 8C630D50 */  lw         $v1, %lo(D_800E0D50)($v1)
/* 162368 801BC2F8 00390821 */  addu       $at, $at, $t9
/* 16236C 801BC2FC 8FAA0024 */  lw         $t2, 0x24($sp)
/* 162370 801BC300 A43877A0 */  sh         $t8, %lo(D_800E77A0)($at)
/* 162374 801BC304 3C07800E */  lui        $a3, %hi(D_800E5F90)
/* 162378 801BC308 3C01800E */  lui        $at, %hi(D_800E7880)
/* 16237C 801BC30C 24E75F90 */  addiu      $a3, $a3, %lo(D_800E5F90)
/* 162380 801BC310 00220821 */  addu       $at, $at, $v0
/* 162384 801BC314 00032880 */  sll        $a1, $v1, 2
/* 162388 801BC318 00E55821 */  addu       $t3, $a3, $a1
/* 16238C 801BC31C A02A7880 */  sb         $t2, %lo(D_800E7880)($at)
/* 162390 801BC320 8D6C0000 */  lw         $t4, 0x0($t3)
/* 162394 801BC324 3C08800E */  lui        $t0, %hi(D_800E6BD0)
/* 162398 801BC328 25086BD0 */  addiu      $t0, $t0, %lo(D_800E6BD0)
/* 16239C 801BC32C 00E46821 */  addu       $t5, $a3, $a0
/* 1623A0 801BC330 01057021 */  addu       $t6, $t0, $a1
/* 1623A4 801BC334 ADAC0000 */  sw         $t4, 0x0($t5)
/* 1623A8 801BC338 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 1623AC 801BC33C 3C09800E */  lui        $t1, %hi(D_800E6A10)
/* 1623B0 801BC340 25296A10 */  addiu      $t1, $t1, %lo(D_800E6A10)
/* 1623B4 801BC344 01047821 */  addu       $t7, $t0, $a0
/* 1623B8 801BC348 0125C021 */  addu       $t8, $t1, $a1
/* 1623BC 801BC34C E5E40000 */  swc1       $f4, 0x0($t7)
/* 1623C0 801BC350 C7060000 */  lwc1       $f6, 0x0($t8)
/* 1623C4 801BC354 0124C821 */  addu       $t9, $t1, $a0
/* 1623C8 801BC358 1460000A */  bnez       $v1, .L801BC384_ovl7
/* 1623CC 801BC35C E7260000 */   swc1      $f6, 0x0($t9)
/* 1623D0 801BC360 0C066C51 */  jal        func_8019B144_ovl7
/* 1623D4 801BC364 AFA6001C */   sw        $a2, 0x1C($sp)
/* 1623D8 801BC368 8FA6001C */  lw         $a2, 0x1C($sp)
/* 1623DC 801BC36C 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
/* 1623E0 801BC370 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
/* 1623E4 801BC374 00061880 */  sll        $v1, $a2, 2
/* 1623E8 801BC378 00E35021 */  addu       $t2, $a3, $v1
/* 1623EC 801BC37C 10000008 */  b          .L801BC3A0_ovl7
/* 1623F0 801BC380 E5400000 */   swc1      $f0, 0x0($t2)
.L801BC384_ovl7:
/* 1623F4 801BC384 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
/* 1623F8 801BC388 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
/* 1623FC 801BC38C 00E55821 */  addu       $t3, $a3, $a1
/* 162400 801BC390 C5680000 */  lwc1       $f8, 0x0($t3)
/* 162404 801BC394 00E46021 */  addu       $t4, $a3, $a0
/* 162408 801BC398 00061880 */  sll        $v1, $a2, 2
/* 16240C 801BC39C E5880000 */  swc1       $f8, 0x0($t4)
.L801BC3A0_ovl7:
/* 162410 801BC3A0 3C02800E */  lui        $v0, %hi(D_800E0D50)
/* 162414 801BC3A4 00431021 */  addu       $v0, $v0, $v1
/* 162418 801BC3A8 8C420D50 */  lw         $v0, %lo(D_800E0D50)($v0)
/* 16241C 801BC3AC 3C05800E */  lui        $a1, %hi(gEntitiesAngleXArray)
/* 162420 801BC3B0 24A54010 */  addiu      $a1, $a1, %lo(gEntitiesAngleXArray)
/* 162424 801BC3B4 00021080 */  sll        $v0, $v0, 2
/* 162428 801BC3B8 00A26821 */  addu       $t5, $a1, $v0
/* 16242C 801BC3BC C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 162430 801BC3C0 3C07800E */  lui        $a3, %hi(gEntitiesAngleYArray)
/* 162434 801BC3C4 24E741D0 */  addiu      $a3, $a3, %lo(gEntitiesAngleYArray)
/* 162438 801BC3C8 00A37021 */  addu       $t6, $a1, $v1
/* 16243C 801BC3CC 00E27821 */  addu       $t7, $a3, $v0
/* 162440 801BC3D0 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 162444 801BC3D4 C5F00000 */  lwc1       $f16, 0x0($t7)
/* 162448 801BC3D8 3C08800E */  lui        $t0, %hi(gEntitiesAngleZArray)
/* 16244C 801BC3DC 25084390 */  addiu      $t0, $t0, %lo(gEntitiesAngleZArray)
/* 162450 801BC3E0 00E3C021 */  addu       $t8, $a3, $v1
/* 162454 801BC3E4 0102C821 */  addu       $t9, $t0, $v0
/* 162458 801BC3E8 E7100000 */  swc1       $f16, 0x0($t8)
/* 16245C 801BC3EC C7320000 */  lwc1       $f18, 0x0($t9)
/* 162460 801BC3F0 01035021 */  addu       $t2, $t0, $v1
/* 162464 801BC3F4 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 162468 801BC3F8 E5520000 */  swc1       $f18, 0x0($t2)
/* 16246C 801BC3FC 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 162470 801BC400 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 162474 801BC404 00230821 */  addu       $at, $at, $v1
/* 162478 801BC408 AC208E60 */  sw         $zero, %lo(D_800E8E60)($at)
/* 16247C 801BC40C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 162480 801BC410 3C01800F */  lui        $at, %hi(D_800E8220)
/* 162484 801BC414 240B0001 */  addiu      $t3, $zero, 0x1
/* 162488 801BC418 000D7080 */  sll        $t6, $t5, 2
/* 16248C 801BC41C 002E0821 */  addu       $at, $at, $t6
/* 162490 801BC420 AC2B8220 */  sw         $t3, %lo(D_800E8220)($at)
/* 162494 801BC424 AFA6001C */  sw         $a2, 0x1C($sp)
/* 162498 801BC428 0C06F113 */  jal        func_801BC44C_ovl7
/* 16249C 801BC42C 8FA40020 */   lw        $a0, 0x20($sp)
/* 1624A0 801BC430 8FA2001C */  lw         $v0, 0x1C($sp)
/* 1624A4 801BC434 3C01800D */  lui        $at, %hi(D_800D7090)
/* 1624A8 801BC438 AC227090 */  sw         $v0, %lo(D_800D7090)($at)
.L801BC43C_ovl7:
/* 1624AC 801BC43C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1624B0 801BC440 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1624B4 801BC444 03E00008 */  jr         $ra
/* 1624B8 801BC448 00000000 */   nop
