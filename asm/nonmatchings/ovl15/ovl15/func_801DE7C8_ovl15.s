nonmatching func_801DE7C8_ovl15, 0x248

glabel func_801DE7C8_ovl15
    /* 209328 801DE7C8 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 20932C 801DE7CC 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 209330 801DE7D0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 209334 801DE7D4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 209338 801DE7D8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 20933C 801DE7DC AFB70034 */  sw         $s7, 0x34($sp)
    /* 209340 801DE7E0 AFB60030 */  sw         $s6, 0x30($sp)
    /* 209344 801DE7E4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 209348 801DE7E8 AFB40028 */  sw         $s4, 0x28($sp)
    /* 20934C 801DE7EC AFB30024 */  sw         $s3, 0x24($sp)
    /* 209350 801DE7F0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 209354 801DE7F4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 209358 801DE7F8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 20935C 801DE7FC AFA40070 */  sw         $a0, 0x70($sp)
    /* 209360 801DE800 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 209364 801DE804 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 209368 801DE808 3C040001 */  lui        $a0, (0x103C9 >> 16)
    /* 20936C 801DE80C 000FC080 */  sll        $t8, $t7, 2
    /* 209370 801DE810 00380821 */  addu       $at, $at, $t8
    /* 209374 801DE814 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
    /* 209378 801DE818 0C02A806 */  jal        func_800AA018
    /* 20937C 801DE81C 348403C9 */   ori       $a0, $a0, (0x103C9 & 0xFFFF)
    /* 209380 801DE820 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 209384 801DE824 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 209388 801DE828 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 20938C 801DE82C 24190001 */  addiu      $t9, $zero, 0x1
    /* 209390 801DE830 8D090000 */  lw         $t1, 0x0($t0)
    /* 209394 801DE834 2404000A */  addiu      $a0, $zero, 0xA
    /* 209398 801DE838 00095080 */  sll        $t2, $t1, 2
    /* 20939C 801DE83C 002A0821 */  addu       $at, $at, $t2
    /* 2093A0 801DE840 AC39DC50 */  sw         $t9, %lo(gEntityFuncListIDArray)($at)
    /* 2093A4 801DE844 3C01800D */  lui        $at, %hi(D_800D7098 + 0x24)
    /* 2093A8 801DE848 0C002DAF */  jal        ohSleep
    /* 2093AC 801DE84C AC2070BC */   sw        $zero, %lo(D_800D7098 + 0x24)($at)
    /* 2093B0 801DE850 0C029D9E */  jal        play_sound
    /* 2093B4 801DE854 24040251 */   addiu     $a0, $zero, 0x251
    /* 2093B8 801DE858 0C006291 */  jal        random_soft_s32_range
    /* 2093BC 801DE85C 24040018 */   addiu     $a0, $zero, 0x18
    /* 2093C0 801DE860 AFA20064 */  sw         $v0, 0x64($sp)
    /* 2093C4 801DE864 0C006291 */  jal        random_soft_s32_range
    /* 2093C8 801DE868 24040018 */   addiu     $a0, $zero, 0x18
    /* 2093CC 801DE86C AFA20060 */  sw         $v0, 0x60($sp)
    /* 2093D0 801DE870 0C006291 */  jal        random_soft_s32_range
    /* 2093D4 801DE874 2404000E */   addiu     $a0, $zero, 0xE
    /* 2093D8 801DE878 3C1E801E */  lui        $fp, %hi(D_801E65EC_ovl15)
    /* 2093DC 801DE87C 3C17800E */  lui        $s7, %hi(D_800DFBD0)
    /* 2093E0 801DE880 3C15800F */  lui        $s5, %hi(D_800E8E60)
    /* 2093E4 801DE884 AFA2005C */  sw         $v0, 0x5C($sp)
    /* 2093E8 801DE888 26B58E60 */  addiu      $s5, $s5, %lo(D_800E8E60)
    /* 2093EC 801DE88C 26F7FBD0 */  addiu      $s7, $s7, %lo(D_800DFBD0)
    /* 2093F0 801DE890 27DE65EC */  addiu      $fp, $fp, %lo(D_801E65EC_ovl15)
    /* 2093F4 801DE894 00008825 */  or         $s1, $zero, $zero
    /* 2093F8 801DE898 27B60050 */  addiu      $s6, $sp, 0x50
    /* 2093FC 801DE89C 24040037 */  addiu      $a0, $zero, 0x37
  .L801DE8A0_ovl15:
    /* 209400 801DE8A0 0C06B30D */  jal        func_801ACC34_ovl7
    /* 209404 801DE8A4 00002825 */   or        $a1, $zero, $zero
    /* 209408 801DE8A8 1040003C */  beqz       $v0, .L801DE99C_ovl15
    /* 20940C 801DE8AC 00028080 */   sll       $s0, $v0, 2
    /* 209410 801DE8B0 240B0001 */  addiu      $t3, $zero, 0x1
    /* 209414 801DE8B4 02B06021 */  addu       $t4, $s5, $s0
    /* 209418 801DE8B8 AD8B0000 */  sw         $t3, 0x0($t4)
    /* 20941C 801DE8BC 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 209420 801DE8C0 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 209424 801DE8C4 00114880 */  sll        $t1, $s1, 2
    /* 209428 801DE8C8 03C9C821 */  addu       $t9, $fp, $t1
    /* 20942C 801DE8CC 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 209430 801DE8D0 8F2A0000 */  lw         $t2, 0x0($t9)
    /* 209434 801DE8D4 8FAD0064 */  lw         $t5, 0x64($sp)
    /* 209438 801DE8D8 000E7880 */  sll        $t7, $t6, 2
    /* 20943C 801DE8DC 02EFC021 */  addu       $t8, $s7, $t7
    /* 209440 801DE8E0 8F080000 */  lw         $t0, 0x0($t8)
    /* 209444 801DE8E4 000A5880 */  sll        $t3, $t2, 2
    /* 209448 801DE8E8 8FA90060 */  lw         $t1, 0x60($sp)
    /* 20944C 801DE8EC 010B6021 */  addu       $t4, $t0, $t3
    /* 209450 801DE8F0 8FAB005C */  lw         $t3, 0x5C($sp)
    /* 209454 801DE8F4 000D7080 */  sll        $t6, $t5, 2
    /* 209458 801DE8F8 01D17821 */  addu       $t7, $t6, $s1
    /* 20945C 801DE8FC 8D850000 */  lw         $a1, 0x0($t4)
    /* 209460 801DE900 3C0E801E */  lui        $t6, %hi(D_801E65B4_ovl15)
    /* 209464 801DE904 3C08801E */  lui        $t0, %hi(D_801E6554_ovl15)
    /* 209468 801DE908 3C18801E */  lui        $t8, %hi(D_801E6554_ovl15)
    /* 20946C 801DE90C 0009C880 */  sll        $t9, $t1, 2
    /* 209470 801DE910 000B6080 */  sll        $t4, $t3, 2
    /* 209474 801DE914 01916821 */  addu       $t5, $t4, $s1
    /* 209478 801DE918 03315021 */  addu       $t2, $t9, $s1
    /* 20947C 801DE91C 27186554 */  addiu      $t8, $t8, %lo(D_801E6554_ovl15)
    /* 209480 801DE920 25086554 */  addiu      $t0, $t0, %lo(D_801E6554_ovl15)
    /* 209484 801DE924 25CE65B4 */  addiu      $t6, $t6, %lo(D_801E65B4_ovl15)
    /* 209488 801DE928 01AEA021 */  addu       $s4, $t5, $t6
    /* 20948C 801DE92C 01489821 */  addu       $s3, $t2, $t0
    /* 209490 801DE930 01F89021 */  addu       $s2, $t7, $t8
    /* 209494 801DE934 0C0291E5 */  jal        utilGetTransformSRT
    /* 209498 801DE938 02C02025 */   or        $a0, $s6, $zero
    /* 20949C 801DE93C C7A40050 */  lwc1       $f4, 0x50($sp)
    /* 2094A0 801DE940 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 2094A4 801DE944 00300821 */  addu       $at, $at, $s0
    /* 2094A8 801DE948 C7A60054 */  lwc1       $f6, 0x54($sp)
    /* 2094AC 801DE94C E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 2094B0 801DE950 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 2094B4 801DE954 00300821 */  addu       $at, $at, $s0
    /* 2094B8 801DE958 C7A80058 */  lwc1       $f8, 0x58($sp)
    /* 2094BC 801DE95C E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 2094C0 801DE960 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 2094C4 801DE964 00300821 */  addu       $at, $at, $s0
    /* 2094C8 801DE968 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 2094CC 801DE96C 824F0000 */  lb         $t7, 0x0($s2)
    /* 2094D0 801DE970 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 2094D4 801DE974 00300821 */  addu       $at, $at, $s0
    /* 2094D8 801DE978 AC2F9AA0 */  sw         $t7, %lo(D_800E9AA0)($at)
    /* 2094DC 801DE97C 82780000 */  lb         $t8, 0x0($s3)
    /* 2094E0 801DE980 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 2094E4 801DE984 00300821 */  addu       $at, $at, $s0
    /* 2094E8 801DE988 AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
    /* 2094EC 801DE98C 82890000 */  lb         $t1, 0x0($s4)
    /* 2094F0 801DE990 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 2094F4 801DE994 00300821 */  addu       $at, $at, $s0
    /* 2094F8 801DE998 AC299E20 */  sw         $t1, %lo(D_800E9E20)($at)
  .L801DE99C_ovl15:
    /* 2094FC 801DE99C 26310001 */  addiu      $s1, $s1, 0x1
    /* 209500 801DE9A0 24010004 */  addiu      $at, $zero, 0x4
    /* 209504 801DE9A4 5621FFBE */  bnel       $s1, $at, .L801DE8A0_ovl15
    /* 209508 801DE9A8 24040037 */   addiu     $a0, $zero, 0x37
    /* 20950C 801DE9AC 0C002DAF */  jal        ohSleep
    /* 209510 801DE9B0 2404000A */   addiu     $a0, $zero, 0xA
    /* 209514 801DE9B4 24190001 */  addiu      $t9, $zero, 0x1
    /* 209518 801DE9B8 3C01800D */  lui        $at, %hi(D_800D7098 + 0x24)
    /* 20951C 801DE9BC AC3970BC */  sw         $t9, %lo(D_800D7098 + 0x24)($at)
    /* 209520 801DE9C0 0C029D9E */  jal        play_sound
    /* 209524 801DE9C4 2404019A */   addiu     $a0, $zero, 0x19A
    /* 209528 801DE9C8 0C02BC9F */  jal        func_800AF27C
    /* 20952C 801DE9CC 00000000 */   nop
    /* 209530 801DE9D0 3C040001 */  lui        $a0, (0x103CB >> 16)
    /* 209534 801DE9D4 348403CB */  ori        $a0, $a0, (0x103CB & 0xFFFF)
    /* 209538 801DE9D8 0C02AA19 */  jal        func_800AA864
    /* 20953C 801DE9DC 2405000D */   addiu     $a1, $zero, 0xD
    /* 209540 801DE9E0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 209544 801DE9E4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 209548 801DE9E8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 20954C 801DE9EC 8FB20020 */  lw         $s2, 0x20($sp)
    /* 209550 801DE9F0 8FB30024 */  lw         $s3, 0x24($sp)
    /* 209554 801DE9F4 8FB40028 */  lw         $s4, 0x28($sp)
    /* 209558 801DE9F8 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 20955C 801DE9FC 8FB60030 */  lw         $s6, 0x30($sp)
    /* 209560 801DEA00 8FB70034 */  lw         $s7, 0x34($sp)
    /* 209564 801DEA04 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 209568 801DEA08 03E00008 */  jr         $ra
    /* 20956C 801DEA0C 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_801DE7C8_ovl15
.size func_801DE7C8_ovl15, . - func_801DE7C8_ovl15
