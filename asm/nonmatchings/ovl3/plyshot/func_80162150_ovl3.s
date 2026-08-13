nonmatching func_80162150_ovl3, 0x468

glabel func_80162150_ovl3
    /* C2B90 80162150 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* C2B94 80162154 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* C2B98 80162158 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* C2B9C 8016215C AFBF001C */  sw         $ra, 0x1C($sp)
    /* C2BA0 80162160 8D2A0000 */  lw         $t2, 0x0($t1)
    /* C2BA4 80162164 3C188019 */  lui        $t8, %hi(D_80197BF0_ovl3)
    /* C2BA8 80162168 27187BF0 */  addiu      $t8, $t8, %lo(D_80197BF0_ovl3)
    /* C2BAC 8016216C 000A7080 */  sll        $t6, $t2, 2
    /* C2BB0 80162170 01CA7023 */  subu       $t6, $t6, $t2
    /* C2BB4 80162174 000E7080 */  sll        $t6, $t6, 2
    /* C2BB8 80162178 01CA7023 */  subu       $t6, $t6, $t2
    /* C2BBC 8016217C 000E70C0 */  sll        $t6, $t6, 3
    /* C2BC0 80162180 25CFFEA0 */  addiu      $t7, $t6, -0x160
    /* C2BC4 80162184 01F81821 */  addu       $v1, $t7, $t8
    /* C2BC8 80162188 8C790000 */  lw         $t9, 0x0($v1)
    /* C2BCC 8016218C 24010FFF */  addiu      $at, $zero, 0xFFF
    /* C2BD0 80162190 3C04800F */  lui        $a0, %hi(D_800E8AE0)
    /* C2BD4 80162194 001964C2 */  srl        $t4, $t9, 19
    /* C2BD8 80162198 15810011 */  bne        $t4, $at, .L801621E0_ovl3
    /* C2BDC 8016219C 000A1080 */   sll       $v0, $t2, 2
    /* C2BE0 801621A0 3C0D8013 */  lui        $t5, %hi(D_8012BCA0)
    /* C2BE4 801621A4 25ADBCA0 */  addiu      $t5, $t5, %lo(D_8012BCA0)
    /* C2BE8 801621A8 25B90054 */  addiu      $t9, $t5, 0x54
    /* C2BEC 801621AC 0060C025 */  or         $t8, $v1, $zero
  .L801621B0_ovl3:
    /* C2BF0 801621B0 8DAF0000 */  lw         $t7, 0x0($t5)
    /* C2BF4 801621B4 25AD000C */  addiu      $t5, $t5, 0xC
    /* C2BF8 801621B8 2718000C */  addiu      $t8, $t8, 0xC
    /* C2BFC 801621BC AF0FFFF4 */  sw         $t7, -0xC($t8)
    /* C2C00 801621C0 8DAEFFF8 */  lw         $t6, -0x8($t5)
    /* C2C04 801621C4 AF0EFFF8 */  sw         $t6, -0x8($t8)
    /* C2C08 801621C8 8DAFFFFC */  lw         $t7, -0x4($t5)
    /* C2C0C 801621CC 15B9FFF8 */  bne        $t5, $t9, .L801621B0_ovl3
    /* C2C10 801621D0 AF0FFFFC */   sw        $t7, -0x4($t8)
    /* C2C14 801621D4 8DAF0000 */  lw         $t7, 0x0($t5)
    /* C2C18 801621D8 100000F3 */  b          .L801625A8_ovl3
    /* C2C1C 801621DC AF0F0000 */   sw        $t7, 0x0($t8)
  .L801621E0_ovl3:
    /* C2C20 801621E0 00822021 */  addu       $a0, $a0, $v0
    /* C2C24 801621E4 8C848AE0 */  lw         $a0, %lo(D_800E8AE0)($a0)
    /* C2C28 801621E8 24010006 */  addiu      $at, $zero, 0x6
    /* C2C2C 801621EC 108000DF */  beqz       $a0, .L8016256C_ovl3
    /* C2C30 801621F0 308C0006 */   andi      $t4, $a0, 0x6
    /* C2C34 801621F4 118100DD */  beq        $t4, $at, .L8016256C_ovl3
    /* C2C38 801621F8 00000000 */   nop
    /* C2C3C 801621FC 3C03800E */  lui        $v1, %hi(D_800E0490)
    /* C2C40 80162200 00621821 */  addu       $v1, $v1, $v0
    /* C2C44 80162204 8C630490 */  lw         $v1, %lo(D_800E0490)($v1)
    /* C2C48 80162208 30990004 */  andi       $t9, $a0, 0x4
    /* C2C4C 8016220C 1320005D */  beqz       $t9, .L80162384_ovl3
    /* C2C50 80162210 8C6B0004 */   lw        $t3, 0x4($v1)
    /* C2C54 80162214 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C2C58 80162218 00220821 */  addu       $at, $at, $v0
    /* C2C5C 8016221C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* C2C60 80162220 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* C2C64 80162224 27A40054 */  addiu      $a0, $sp, 0x54
    /* C2C68 80162228 E7A40054 */  swc1       $f4, 0x54($sp)
    /* C2C6C 8016222C 8D2D0000 */  lw         $t5, 0x0($t1)
    /* C2C70 80162230 C5680000 */  lwc1       $f8, 0x0($t3)
    /* C2C74 80162234 000DC080 */  sll        $t8, $t5, 2
    /* C2C78 80162238 00380821 */  addu       $at, $at, $t8
    /* C2C7C 8016223C C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* C2C80 80162240 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C2C84 80162244 46083280 */  add.s      $f10, $f6, $f8
    /* C2C88 80162248 E7AA0058 */  swc1       $f10, 0x58($sp)
    /* C2C8C 8016224C 8D2E0000 */  lw         $t6, 0x0($t1)
    /* C2C90 80162250 AFAB0034 */  sw         $t3, 0x34($sp)
    /* C2C94 80162254 000E7880 */  sll        $t7, $t6, 2
    /* C2C98 80162258 002F0821 */  addu       $at, $at, $t7
    /* C2C9C 8016225C C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* C2CA0 80162260 0C0437E7 */  jal        func_8010DF9C
    /* C2CA4 80162264 E7B0005C */   swc1      $f16, 0x5C($sp)
    /* C2CA8 80162268 8FAB0034 */  lw         $t3, 0x34($sp)
    /* C2CAC 8016226C 104000B3 */  beqz       $v0, .L8016253C_ovl3
    /* C2CB0 80162270 00403025 */   or        $a2, $v0, $zero
    /* C2CB4 80162274 184000B1 */  blez       $v0, .L8016253C_ovl3
    /* C2CB8 80162278 00001825 */   or        $v1, $zero, $zero
    /* C2CBC 8016227C 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* C2CC0 80162280 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* C2CC4 80162284 24050001 */  addiu      $a1, $zero, 0x1
  .L80162288_ovl3:
    /* C2CC8 80162288 8C440040 */  lw         $a0, 0x40($v0)
    /* C2CCC 8016228C 24630001 */  addiu      $v1, $v1, 0x1
    /* C2CD0 80162290 908C0004 */  lbu        $t4, 0x4($a0)
    /* C2CD4 80162294 14AC0037 */  bne        $a1, $t4, .L80162374_ovl3
    /* C2CD8 80162298 3C098005 */   lui       $t1, %hi(omCurrentObj)
    /* C2CDC 8016229C 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* C2CE0 801622A0 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* C2CE4 801622A4 8C45004C */  lw         $a1, 0x4C($v0)
    /* C2CE8 801622A8 8D390000 */  lw         $t9, 0x0($t1)
    /* C2CEC 801622AC 27A60048 */  addiu      $a2, $sp, 0x48
    /* C2CF0 801622B0 27A7003C */  addiu      $a3, $sp, 0x3C
    /* C2CF4 801622B4 00196880 */  sll        $t5, $t9, 2
    /* C2CF8 801622B8 002D0821 */  addu       $at, $at, $t5
    /* C2CFC 801622BC C4322B10 */  lwc1       $f18, %lo(gEntitiesPosXArray)($at)
    /* C2D00 801622C0 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* C2D04 801622C4 E7B20048 */  swc1       $f18, 0x48($sp)
    /* C2D08 801622C8 8D380000 */  lw         $t8, 0x0($t1)
    /* C2D0C 801622CC C5660000 */  lwc1       $f6, 0x0($t3)
    /* C2D10 801622D0 C56A0004 */  lwc1       $f10, 0x4($t3)
    /* C2D14 801622D4 00187080 */  sll        $t6, $t8, 2
    /* C2D18 801622D8 002E0821 */  addu       $at, $at, $t6
    /* C2D1C 801622DC C4242CD0 */  lwc1       $f4, %lo(gEntitiesPosYArray)($at)
    /* C2D20 801622E0 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* C2D24 801622E4 46062200 */  add.s      $f8, $f4, $f6
    /* C2D28 801622E8 460A4400 */  add.s      $f16, $f8, $f10
    /* C2D2C 801622EC E7B0004C */  swc1       $f16, 0x4C($sp)
    /* C2D30 801622F0 8D2F0000 */  lw         $t7, 0x0($t1)
    /* C2D34 801622F4 000F6080 */  sll        $t4, $t7, 2
    /* C2D38 801622F8 002C0821 */  addu       $at, $at, $t4
    /* C2D3C 801622FC C4322E90 */  lwc1       $f18, %lo(gEntitiesPosZArray)($at)
    /* C2D40 80162300 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C2D44 80162304 E7B20050 */  swc1       $f18, 0x50($sp)
    /* C2D48 80162308 8D390000 */  lw         $t9, 0x0($t1)
    /* C2D4C 8016230C 00196880 */  sll        $t5, $t9, 2
    /* C2D50 80162310 002D0821 */  addu       $at, $at, $t5
    /* C2D54 80162314 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* C2D58 80162318 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* C2D5C 8016231C 3C198013 */  lui        $t9, %hi(D_8012BCA8 + 0x4)
    /* C2D60 80162320 E7A4003C */  swc1       $f4, 0x3C($sp)
    /* C2D64 80162324 8D380000 */  lw         $t8, 0x0($t1)
    /* C2D68 80162328 2739BCAC */  addiu      $t9, $t9, %lo(D_8012BCA8 + 0x4)
    /* C2D6C 8016232C 27AD0054 */  addiu      $t5, $sp, 0x54
    /* C2D70 80162330 00187080 */  sll        $t6, $t8, 2
    /* C2D74 80162334 002E0821 */  addu       $at, $at, $t6
    /* C2D78 80162338 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* C2D7C 8016233C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C2D80 80162340 E7A60040 */  swc1       $f6, 0x40($sp)
    /* C2D84 80162344 8D2F0000 */  lw         $t7, 0x0($t1)
    /* C2D88 80162348 AFAD0014 */  sw         $t5, 0x14($sp)
    /* C2D8C 8016234C AFB90010 */  sw         $t9, 0x10($sp)
    /* C2D90 80162350 000F6080 */  sll        $t4, $t7, 2
    /* C2D94 80162354 002C0821 */  addu       $at, $at, $t4
    /* C2D98 80162358 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* C2D9C 8016235C 0C043812 */  jal        func_8010E048
    /* C2DA0 80162360 E7A80044 */   swc1      $f8, 0x44($sp)
    /* C2DA4 80162364 0C05896E */  jal        func_801625B8_ovl3
    /* C2DA8 80162368 27A40054 */   addiu     $a0, $sp, 0x54
    /* C2DAC 8016236C 10000073 */  b          .L8016253C_ovl3
    /* C2DB0 80162370 00000000 */   nop
  .L80162374_ovl3:
    /* C2DB4 80162374 1466FFC4 */  bne        $v1, $a2, .L80162288_ovl3
    /* C2DB8 80162378 24420004 */   addiu     $v0, $v0, 0x4
    /* C2DBC 8016237C 1000006F */  b          .L8016253C_ovl3
    /* C2DC0 80162380 00000000 */   nop
  .L80162384_ovl3:
    /* C2DC4 80162384 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* C2DC8 80162388 00220821 */  addu       $at, $at, $v0
    /* C2DCC 8016238C C42A2B10 */  lwc1       $f10, %lo(gEntitiesPosXArray)($at)
    /* C2DD0 80162390 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* C2DD4 80162394 27A40054 */  addiu      $a0, $sp, 0x54
    /* C2DD8 80162398 E7AA0054 */  swc1       $f10, 0x54($sp)
    /* C2DDC 8016239C 8D380000 */  lw         $t8, 0x0($t1)
    /* C2DE0 801623A0 C5720000 */  lwc1       $f18, 0x0($t3)
    /* C2DE4 801623A4 00187080 */  sll        $t6, $t8, 2
    /* C2DE8 801623A8 002E0821 */  addu       $at, $at, $t6
    /* C2DEC 801623AC C4302CD0 */  lwc1       $f16, %lo(gEntitiesPosYArray)($at)
    /* C2DF0 801623B0 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* C2DF4 801623B4 46128100 */  add.s      $f4, $f16, $f18
    /* C2DF8 801623B8 E7A40058 */  swc1       $f4, 0x58($sp)
    /* C2DFC 801623BC 8D2F0000 */  lw         $t7, 0x0($t1)
    /* C2E00 801623C0 AFAB0034 */  sw         $t3, 0x34($sp)
    /* C2E04 801623C4 000F6080 */  sll        $t4, $t7, 2
    /* C2E08 801623C8 002C0821 */  addu       $at, $at, $t4
    /* C2E0C 801623CC C4262E90 */  lwc1       $f6, %lo(gEntitiesPosZArray)($at)
    /* C2E10 801623D0 0C0437E7 */  jal        func_8010DF9C
    /* C2E14 801623D4 E7A6005C */   swc1      $f6, 0x5C($sp)
    /* C2E18 801623D8 8FAB0034 */  lw         $t3, 0x34($sp)
    /* C2E1C 801623DC 10400057 */  beqz       $v0, .L8016253C_ovl3
    /* C2E20 801623E0 00403025 */   or        $a2, $v0, $zero
    /* C2E24 801623E4 18400055 */  blez       $v0, .L8016253C_ovl3
    /* C2E28 801623E8 00001825 */   or        $v1, $zero, $zero
    /* C2E2C 801623EC 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* C2E30 801623F0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* C2E34 801623F4 3C188019 */  lui        $t8, %hi(D_80197BF0_ovl3)
    /* C2E38 801623F8 27187BF0 */  addiu      $t8, $t8, %lo(D_80197BF0_ovl3)
    /* C2E3C 801623FC 8D2A0000 */  lw         $t2, 0x0($t1)
    /* C2E40 80162400 00004025 */  or         $t0, $zero, $zero
    /* C2E44 80162404 24050001 */  addiu      $a1, $zero, 0x1
    /* C2E48 80162408 000AC880 */  sll        $t9, $t2, 2
    /* C2E4C 8016240C 032AC823 */  subu       $t9, $t9, $t2
    /* C2E50 80162410 0019C880 */  sll        $t9, $t9, 2
    /* C2E54 80162414 032AC823 */  subu       $t9, $t9, $t2
    /* C2E58 80162418 0019C8C0 */  sll        $t9, $t9, 3
    /* C2E5C 8016241C 272DFEA0 */  addiu      $t5, $t9, -0x160
    /* C2E60 80162420 01B81021 */  addu       $v0, $t5, $t8
  .L80162424_ovl3:
    /* C2E64 80162424 8C4E0040 */  lw         $t6, 0x40($v0)
    /* C2E68 80162428 24630001 */  addiu      $v1, $v1, 0x1
    /* C2E6C 8016242C 24420004 */  addiu      $v0, $v0, 0x4
    /* C2E70 80162430 91CF0004 */  lbu        $t7, 0x4($t6)
    /* C2E74 80162434 14AF003F */  bne        $a1, $t7, .L80162534_ovl3
    /* C2E78 80162438 000A6080 */   sll       $t4, $t2, 2
    /* C2E7C 8016243C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* C2E80 80162440 002C0821 */  addu       $at, $at, $t4
    /* C2E84 80162444 C4282B10 */  lwc1       $f8, %lo(gEntitiesPosXArray)($at)
    /* C2E88 80162448 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* C2E8C 8016244C 27A60048 */  addiu      $a2, $sp, 0x48
    /* C2E90 80162450 E7A80048 */  swc1       $f8, 0x48($sp)
    /* C2E94 80162454 8D390000 */  lw         $t9, 0x0($t1)
    /* C2E98 80162458 C5700000 */  lwc1       $f16, 0x0($t3)
    /* C2E9C 8016245C C5640004 */  lwc1       $f4, 0x4($t3)
    /* C2EA0 80162460 00196880 */  sll        $t5, $t9, 2
    /* C2EA4 80162464 002D0821 */  addu       $at, $at, $t5
    /* C2EA8 80162468 C42A2CD0 */  lwc1       $f10, %lo(gEntitiesPosYArray)($at)
    /* C2EAC 8016246C 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* C2EB0 80162470 27A7003C */  addiu      $a3, $sp, 0x3C
    /* C2EB4 80162474 46105480 */  add.s      $f18, $f10, $f16
    /* C2EB8 80162478 46049180 */  add.s      $f6, $f18, $f4
    /* C2EBC 8016247C E7A6004C */  swc1       $f6, 0x4C($sp)
    /* C2EC0 80162480 8D380000 */  lw         $t8, 0x0($t1)
    /* C2EC4 80162484 00187080 */  sll        $t6, $t8, 2
    /* C2EC8 80162488 002E0821 */  addu       $at, $at, $t6
    /* C2ECC 8016248C C4282E90 */  lwc1       $f8, %lo(gEntitiesPosZArray)($at)
    /* C2ED0 80162490 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C2ED4 80162494 E7A80050 */  swc1       $f8, 0x50($sp)
    /* C2ED8 80162498 8D2F0000 */  lw         $t7, 0x0($t1)
    /* C2EDC 8016249C 000F6080 */  sll        $t4, $t7, 2
    /* C2EE0 801624A0 002C0821 */  addu       $at, $at, $t4
    /* C2EE4 801624A4 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* C2EE8 801624A8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* C2EEC 801624AC E7AA003C */  swc1       $f10, 0x3C($sp)
    /* C2EF0 801624B0 8D390000 */  lw         $t9, 0x0($t1)
    /* C2EF4 801624B4 00196880 */  sll        $t5, $t9, 2
    /* C2EF8 801624B8 002D0821 */  addu       $at, $at, $t5
    /* C2EFC 801624BC C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* C2F00 801624C0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C2F04 801624C4 3C0D8019 */  lui        $t5, %hi(D_80197BF0_ovl3)
    /* C2F08 801624C8 E7B00040 */  swc1       $f16, 0x40($sp)
    /* C2F0C 801624CC 8D380000 */  lw         $t8, 0x0($t1)
    /* C2F10 801624D0 25AD7BF0 */  addiu      $t5, $t5, %lo(D_80197BF0_ovl3)
    /* C2F14 801624D4 00187080 */  sll        $t6, $t8, 2
    /* C2F18 801624D8 002E0821 */  addu       $at, $at, $t6
    /* C2F1C 801624DC C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* C2F20 801624E0 27AE0054 */  addiu      $t6, $sp, 0x54
    /* C2F24 801624E4 E7B20044 */  swc1       $f18, 0x44($sp)
    /* C2F28 801624E8 8D2F0000 */  lw         $t7, 0x0($t1)
    /* C2F2C 801624EC AFAE0014 */  sw         $t6, 0x14($sp)
    /* C2F30 801624F0 000F6080 */  sll        $t4, $t7, 2
    /* C2F34 801624F4 018F6023 */  subu       $t4, $t4, $t7
    /* C2F38 801624F8 000C6080 */  sll        $t4, $t4, 2
    /* C2F3C 801624FC 018F6023 */  subu       $t4, $t4, $t7
    /* C2F40 80162500 000C60C0 */  sll        $t4, $t4, 3
    /* C2F44 80162504 2599FEA0 */  addiu      $t9, $t4, -0x160
    /* C2F48 80162508 032D1821 */  addu       $v1, $t9, $t5
    /* C2F4C 8016250C 00681021 */  addu       $v0, $v1, $t0
    /* C2F50 80162510 2478000C */  addiu      $t8, $v1, 0xC
    /* C2F54 80162514 AFB80010 */  sw         $t8, 0x10($sp)
    /* C2F58 80162518 8C440040 */  lw         $a0, 0x40($v0)
    /* C2F5C 8016251C 0C043812 */  jal        func_8010E048
    /* C2F60 80162520 8C45004C */   lw        $a1, 0x4C($v0)
    /* C2F64 80162524 0C05896E */  jal        func_801625B8_ovl3
    /* C2F68 80162528 27A40054 */   addiu     $a0, $sp, 0x54
    /* C2F6C 8016252C 10000003 */  b          .L8016253C_ovl3
    /* C2F70 80162530 00000000 */   nop
  .L80162534_ovl3:
    /* C2F74 80162534 1466FFBB */  bne        $v1, $a2, .L80162424_ovl3
    /* C2F78 80162538 25080004 */   addiu     $t0, $t0, 0x4
  .L8016253C_ovl3:
    /* C2F7C 8016253C 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* C2F80 80162540 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* C2F84 80162544 3C188019 */  lui        $t8, %hi(D_80197BF0_ovl3)
    /* C2F88 80162548 27187BF0 */  addiu      $t8, $t8, %lo(D_80197BF0_ovl3)
    /* C2F8C 8016254C 8DEC0000 */  lw         $t4, 0x0($t7)
    /* C2F90 80162550 000CC880 */  sll        $t9, $t4, 2
    /* C2F94 80162554 032CC823 */  subu       $t9, $t9, $t4
    /* C2F98 80162558 0019C880 */  sll        $t9, $t9, 2
    /* C2F9C 8016255C 032CC823 */  subu       $t9, $t9, $t4
    /* C2FA0 80162560 0019C8C0 */  sll        $t9, $t9, 3
    /* C2FA4 80162564 272DFEA0 */  addiu      $t5, $t9, -0x160
    /* C2FA8 80162568 01B81821 */  addu       $v1, $t5, $t8
  .L8016256C_ovl3:
    /* C2FAC 8016256C 3C0E8013 */  lui        $t6, %hi(D_8012BCA0)
    /* C2FB0 80162570 25CEBCA0 */  addiu      $t6, $t6, %lo(D_8012BCA0)
    /* C2FB4 80162574 25CD0054 */  addiu      $t5, $t6, 0x54
    /* C2FB8 80162578 0060C825 */  or         $t9, $v1, $zero
  .L8016257C_ovl3:
    /* C2FBC 8016257C 8DCC0000 */  lw         $t4, 0x0($t6)
    /* C2FC0 80162580 25CE000C */  addiu      $t6, $t6, 0xC
    /* C2FC4 80162584 2739000C */  addiu      $t9, $t9, 0xC
    /* C2FC8 80162588 AF2CFFF4 */  sw         $t4, -0xC($t9)
    /* C2FCC 8016258C 8DCFFFF8 */  lw         $t7, -0x8($t6)
    /* C2FD0 80162590 AF2FFFF8 */  sw         $t7, -0x8($t9)
    /* C2FD4 80162594 8DCCFFFC */  lw         $t4, -0x4($t6)
    /* C2FD8 80162598 15CDFFF8 */  bne        $t6, $t5, .L8016257C_ovl3
    /* C2FDC 8016259C AF2CFFFC */   sw        $t4, -0x4($t9)
    /* C2FE0 801625A0 8DCC0000 */  lw         $t4, 0x0($t6)
    /* C2FE4 801625A4 AF2C0000 */  sw         $t4, 0x0($t9)
  .L801625A8_ovl3:
    /* C2FE8 801625A8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* C2FEC 801625AC 27BD0068 */  addiu      $sp, $sp, 0x68
    /* C2FF0 801625B0 03E00008 */  jr         $ra
    /* C2FF4 801625B4 00000000 */   nop
endlabel func_80162150_ovl3
.size func_80162150_ovl3, . - func_80162150_ovl3
