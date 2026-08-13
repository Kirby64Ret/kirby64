nonmatching func_80176F04_ovl5, 0x228

glabel func_80176F04_ovl5
    /* 11E374 80176F04 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 11E378 80176F08 3C0F8018 */  lui        $t7, %hi(D_80187410_ovl5)
    /* 11E37C 80176F0C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 11E380 80176F10 AFA40078 */  sw         $a0, 0x78($sp)
    /* 11E384 80176F14 AFA5007C */  sw         $a1, 0x7C($sp)
    /* 11E388 80176F18 25EF7410 */  addiu      $t7, $t7, %lo(D_80187410_ovl5)
    /* 11E38C 80176F1C 8DF90000 */  lw         $t9, 0x0($t7)
    /* 11E390 80176F20 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 11E394 80176F24 8DF80004 */  lw         $t8, 0x4($t7)
    /* 11E398 80176F28 ADD90000 */  sw         $t9, 0x0($t6)
    /* 11E39C 80176F2C 8DF90008 */  lw         $t9, 0x8($t7)
    /* 11E3A0 80176F30 3C098018 */  lui        $t1, %hi(D_8018741C_ovl5)
    /* 11E3A4 80176F34 2529741C */  addiu      $t1, $t1, %lo(D_8018741C_ovl5)
    /* 11E3A8 80176F38 ADD80004 */  sw         $t8, 0x4($t6)
    /* 11E3AC 80176F3C ADD90008 */  sw         $t9, 0x8($t6)
    /* 11E3B0 80176F40 8D2B0000 */  lw         $t3, 0x0($t1)
    /* 11E3B4 80176F44 27A80058 */  addiu      $t0, $sp, 0x58
    /* 11E3B8 80176F48 8D2A0004 */  lw         $t2, 0x4($t1)
    /* 11E3BC 80176F4C AD0B0000 */  sw         $t3, 0x0($t0)
    /* 11E3C0 80176F50 8D2B0008 */  lw         $t3, 0x8($t1)
    /* 11E3C4 80176F54 3C0D8018 */  lui        $t5, %hi(D_80187428_ovl5)
    /* 11E3C8 80176F58 25AD7428 */  addiu      $t5, $t5, %lo(D_80187428_ovl5)
    /* 11E3CC 80176F5C AD0A0004 */  sw         $t2, 0x4($t0)
    /* 11E3D0 80176F60 AD0B0008 */  sw         $t3, 0x8($t0)
    /* 11E3D4 80176F64 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 11E3D8 80176F68 27AC004C */  addiu      $t4, $sp, 0x4C
    /* 11E3DC 80176F6C 8DAE0004 */  lw         $t6, 0x4($t5)
    /* 11E3E0 80176F70 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 11E3E4 80176F74 8DAF0008 */  lw         $t7, 0x8($t5)
    /* 11E3E8 80176F78 3C198018 */  lui        $t9, %hi(D_80187434_ovl5)
    /* 11E3EC 80176F7C 27397434 */  addiu      $t9, $t9, %lo(D_80187434_ovl5)
    /* 11E3F0 80176F80 AD8E0004 */  sw         $t6, 0x4($t4)
    /* 11E3F4 80176F84 AD8F0008 */  sw         $t7, 0x8($t4)
    /* 11E3F8 80176F88 8F290000 */  lw         $t1, 0x0($t9)
    /* 11E3FC 80176F8C 27B80040 */  addiu      $t8, $sp, 0x40
    /* 11E400 80176F90 8F280004 */  lw         $t0, 0x4($t9)
    /* 11E404 80176F94 AF090000 */  sw         $t1, 0x0($t8)
    /* 11E408 80176F98 8F290008 */  lw         $t1, 0x8($t9)
    /* 11E40C 80176F9C 3C0B8018 */  lui        $t3, %hi(D_80187440_ovl5)
    /* 11E410 80176FA0 256B7440 */  addiu      $t3, $t3, %lo(D_80187440_ovl5)
    /* 11E414 80176FA4 AF080004 */  sw         $t0, 0x4($t8)
    /* 11E418 80176FA8 AF090008 */  sw         $t1, 0x8($t8)
    /* 11E41C 80176FAC 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 11E420 80176FB0 27AA0034 */  addiu      $t2, $sp, 0x34
    /* 11E424 80176FB4 8D6C0004 */  lw         $t4, 0x4($t3)
    /* 11E428 80176FB8 AD4D0000 */  sw         $t5, 0x0($t2)
    /* 11E42C 80176FBC 8D6D0008 */  lw         $t5, 0x8($t3)
    /* 11E430 80176FC0 3C0F8018 */  lui        $t7, %hi(D_8018744C_ovl5)
    /* 11E434 80176FC4 25EF744C */  addiu      $t7, $t7, %lo(D_8018744C_ovl5)
    /* 11E438 80176FC8 AD4C0004 */  sw         $t4, 0x4($t2)
    /* 11E43C 80176FCC AD4D0008 */  sw         $t5, 0x8($t2)
    /* 11E440 80176FD0 8DF80004 */  lw         $t8, 0x4($t7)
    /* 11E444 80176FD4 8DF90000 */  lw         $t9, 0x0($t7)
    /* 11E448 80176FD8 27AE0024 */  addiu      $t6, $sp, 0x24
    /* 11E44C 80176FDC ADD80004 */  sw         $t8, 0x4($t6)
    /* 11E450 80176FE0 ADD90000 */  sw         $t9, 0x0($t6)
    /* 11E454 80176FE4 8DF90008 */  lw         $t9, 0x8($t7)
    /* 11E458 80176FE8 8DF8000C */  lw         $t8, 0xC($t7)
    /* 11E45C 80176FEC 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 11E460 80176FF0 ADD90008 */  sw         $t9, 0x8($t6)
    /* 11E464 80176FF4 ADD8000C */  sw         $t8, 0xC($t6)
    /* 11E468 80176FF8 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 11E46C 80176FFC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11E470 80177000 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 11E474 80177004 8D090000 */  lw         $t1, 0x0($t0)
    /* 11E478 80177008 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 11E47C 8017700C 00095080 */  sll        $t2, $t1, 2
    /* 11E480 80177010 008A2021 */  addu       $a0, $a0, $t2
    /* 11E484 80177014 0C02C7DA */  jal        setProcessMain
    /* 11E488 80177018 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 11E48C 8017701C 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 11E490 80177020 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 11E494 80177024 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 11E498 80177028 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 11E49C 8017702C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 11E4A0 80177030 240E000A */  addiu      $t6, $zero, 0xA
    /* 11E4A4 80177034 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 11E4A8 80177038 000C6880 */  sll        $t5, $t4, 2
    /* 11E4AC 8017703C 002D0821 */  addu       $at, $at, $t5
    /* 11E4B0 80177040 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 11E4B4 80177044 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 11E4B8 80177048 8FA40078 */  lw         $a0, 0x78($sp)
    /* 11E4BC 8017704C 2406000A */  addiu      $a2, $zero, 0xA
    /* 11E4C0 80177050 0C00297F */  jal        omLinkGObjDL
    /* 11E4C4 80177054 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 11E4C8 80177058 0C05C5DA */  jal        func_80171768_ovl5
    /* 11E4CC 8017705C 8FA4007C */   lw        $a0, 0x7C($sp)
    /* 11E4D0 80177060 14400005 */  bnez       $v0, .L80177078_ovl5
    /* 11E4D4 80177064 00000000 */   nop
    /* 11E4D8 80177068 0C029D9E */  jal        play_sound
    /* 11E4DC 8017706C 24040231 */   addiu     $a0, $zero, 0x231
    /* 11E4E0 80177070 10000003 */  b          .L80177080_ovl5
    /* 11E4E4 80177074 00000000 */   nop
  .L80177078_ovl5:
    /* 11E4E8 80177078 0C029D9E */  jal        play_sound
    /* 11E4EC 8017707C 24040233 */   addiu     $a0, $zero, 0x233
  .L80177080_ovl5:
    /* 11E4F0 80177080 3C058018 */  lui        $a1, %hi(D_801877B8_ovl5)
    /* 11E4F4 80177084 24A577B8 */  addiu      $a1, $a1, %lo(D_801877B8_ovl5)
    /* 11E4F8 80177088 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11E4FC 8017708C 8FA40078 */   lw        $a0, 0x78($sp)
    /* 11E500 80177090 8FAF007C */  lw         $t7, 0x7C($sp)
    /* 11E504 80177094 3C198018 */  lui        $t9, %hi(D_801877D8_ovl5)
    /* 11E508 80177098 273977D8 */  addiu      $t9, $t9, %lo(D_801877D8_ovl5)
    /* 11E50C 8017709C 000FC0C0 */  sll        $t8, $t7, 3
    /* 11E510 801770A0 03191821 */  addu       $v1, $t8, $t9
    /* 11E514 801770A4 C4640000 */  lwc1       $f4, 0x0($v1)
    /* 11E518 801770A8 AFA20074 */  sw         $v0, 0x74($sp)
    /* 11E51C 801770AC 00402025 */  or         $a0, $v0, $zero
    /* 11E520 801770B0 E4440020 */  swc1       $f4, 0x20($v0)
    /* 11E524 801770B4 C4660004 */  lwc1       $f6, 0x4($v1)
    /* 11E528 801770B8 27A50064 */  addiu      $a1, $sp, 0x64
    /* 11E52C 801770BC 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E530 801770C0 E4460024 */   swc1      $f6, 0x24($v0)
    /* 11E534 801770C4 0C002DAF */  jal        ohSleep
    /* 11E538 801770C8 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E53C 801770CC 8FA40074 */  lw         $a0, 0x74($sp)
    /* 11E540 801770D0 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E544 801770D4 27A50058 */   addiu     $a1, $sp, 0x58
    /* 11E548 801770D8 0C002DAF */  jal        ohSleep
    /* 11E54C 801770DC 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E550 801770E0 8FA40074 */  lw         $a0, 0x74($sp)
    /* 11E554 801770E4 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E558 801770E8 27A5004C */   addiu     $a1, $sp, 0x4C
    /* 11E55C 801770EC 0C002DAF */  jal        ohSleep
    /* 11E560 801770F0 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E564 801770F4 8FA40074 */  lw         $a0, 0x74($sp)
    /* 11E568 801770F8 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E56C 801770FC 27A50040 */   addiu     $a1, $sp, 0x40
    /* 11E570 80177100 0C002DAF */  jal        ohSleep
    /* 11E574 80177104 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E578 80177108 8FA40074 */  lw         $a0, 0x74($sp)
    /* 11E57C 8017710C 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E580 80177110 27A50034 */   addiu     $a1, $sp, 0x34
    /* 11E584 80177114 0C02BE85 */  jal        curObjSleepForever
    /* 11E588 80177118 00000000 */   nop
    /* 11E58C 8017711C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 11E590 80177120 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 11E594 80177124 03E00008 */  jr         $ra
    /* 11E598 80177128 00000000 */   nop
endlabel func_80176F04_ovl5
.size func_80176F04_ovl5, . - func_80176F04_ovl5
