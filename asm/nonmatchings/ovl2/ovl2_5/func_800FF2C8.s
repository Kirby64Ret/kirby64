nonmatching func_800FF2C8, 0x30C

glabel func_800FF2C8
    /* 87D38 800FF2C8 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 87D3C 800FF2CC 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 87D40 800FF2D0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 87D44 800FF2D4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 87D48 800FF2D8 3C040002 */  lui        $a0, (0x20004 >> 16)
    /* 87D4C 800FF2DC AFB00018 */  sw         $s0, 0x18($sp)
    /* 87D50 800FF2E0 34840004 */  ori        $a0, $a0, (0x20004 & 0xFFFF)
    /* 87D54 800FF2E4 0C02A2EB */  jal        func_800A8BAC
    /* 87D58 800FF2E8 AFAE005C */   sw        $t6, 0x5C($sp)
    /* 87D5C 800FF2EC 3C108013 */  lui        $s0, %hi(D_8012B998)
    /* 87D60 800FF2F0 2610B998 */  addiu      $s0, $s0, %lo(D_8012B998)
    /* 87D64 800FF2F4 AE020004 */  sw         $v0, 0x4($s0)
    /* 87D68 800FF2F8 24040023 */  addiu      $a0, $zero, 0x23
    /* 87D6C 800FF2FC 2405003C */  addiu      $a1, $zero, 0x3C
    /* 87D70 800FF300 0C02BB02 */  jal        request_track_general
    /* 87D74 800FF304 24060050 */   addiu     $a2, $zero, 0x50
    /* 87D78 800FF308 00021880 */  sll        $v1, $v0, 2
    /* 87D7C 800FF30C 3C0F800E */  lui        $t7, %hi(D_800DE350)
    /* 87D80 800FF310 01E37821 */  addu       $t7, $t7, $v1
    /* 87D84 800FF314 8DEFE350 */  lw         $t7, %lo(D_800DE350)($t7)
    /* 87D88 800FF318 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray2)
    /* 87D8C 800FF31C 00832021 */  addu       $a0, $a0, $v1
    /* 87D90 800FF320 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 87D94 800FF324 AFA20054 */  sw         $v0, 0x54($sp)
    /* 87D98 800FF328 0C00236A */  jal        omEndProcess
    /* 87D9C 800FF32C 8C84E6D0 */   lw        $a0, %lo(gEntityGObjProcessArray2)($a0)
    /* 87DA0 800FF330 8FA20054 */  lw         $v0, 0x54($sp)
    /* 87DA4 800FF334 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 87DA8 800FF338 00021080 */  sll        $v0, $v0, 2
    /* 87DAC 800FF33C 00822021 */  addu       $a0, $a0, $v0
    /* 87DB0 800FF340 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 87DB4 800FF344 0C00236A */  jal        omEndProcess
    /* 87DB8 800FF348 AFA2002C */   sw        $v0, 0x2C($sp)
    /* 87DBC 800FF34C 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 87DC0 800FF350 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 87DC4 800FF354 00822021 */  addu       $a0, $a0, $v0
    /* 87DC8 800FF358 0C00236A */  jal        omEndProcess
    /* 87DCC 800FF35C 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 87DD0 800FF360 8E180000 */  lw         $t8, 0x0($s0)
    /* 87DD4 800FF364 3C018005 */  lui        $at, %hi(omCurrentObj)
    /* 87DD8 800FF368 24040029 */  addiu      $a0, $zero, 0x29
    /* 87DDC 800FF36C 24050010 */  addiu      $a1, $zero, 0x10
    /* 87DE0 800FF370 0C02BE6E */  jal        func_800AF9B8
    /* 87DE4 800FF374 AC38A7C4 */   sw        $t8, %lo(omCurrentObj)($at)
    /* 87DE8 800FF378 8FB9005C */  lw         $t9, 0x5C($sp)
    /* 87DEC 800FF37C 3C018005 */  lui        $at, %hi(omCurrentObj)
    /* 87DF0 800FF380 44800000 */  mtc1       $zero, $f0
    /* 87DF4 800FF384 AC39A7C4 */  sw         $t9, %lo(omCurrentObj)($at)
    /* 87DF8 800FF388 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 87DFC 800FF38C 44812000 */  mtc1       $at, $f4
    /* 87E00 800FF390 3C048013 */  lui        $a0, %hi(D_80129490)
    /* 87E04 800FF394 248B9490 */  addiu      $t3, $a0, %lo(D_80129490)
    /* 87E08 800FF398 3C018013 */  lui        $at, %hi(D_8012B990)
    /* 87E0C 800FF39C 3C028013 */  lui        $v0, %hi(D_80129490)
    /* 87E10 800FF3A0 3C038013 */  lui        $v1, %hi(D_801295B8)
    /* 87E14 800FF3A4 E6000008 */  swc1       $f0, 0x8($s0)
    /* 87E18 800FF3A8 E6000010 */  swc1       $f0, 0x10($s0)
    /* 87E1C 800FF3AC E604000C */  swc1       $f4, 0xC($s0)
    /* 87E20 800FF3B0 AC2BB990 */  sw         $t3, %lo(D_8012B990)($at)
    /* 87E24 800FF3B4 246395B8 */  addiu      $v1, $v1, %lo(D_801295B8)
    /* 87E28 800FF3B8 24429490 */  addiu      $v0, $v0, %lo(D_80129490)
    /* 87E2C 800FF3BC 00005025 */  or         $t2, $zero, $zero
  .L800FF3C0:
    /* 87E30 800FF3C0 254A0001 */  addiu      $t2, $t2, 0x1
    /* 87E34 800FF3C4 2D41001F */  sltiu      $at, $t2, 0x1F
    /* 87E38 800FF3C8 AC430000 */  sw         $v1, 0x0($v0)
    /* 87E3C 800FF3CC 24630128 */  addiu      $v1, $v1, 0x128
    /* 87E40 800FF3D0 1420FFFB */  bnez       $at, .L800FF3C0
    /* 87E44 800FF3D4 24420128 */   addiu     $v0, $v0, 0x128
    /* 87E48 800FF3D8 3C098012 */  lui        $t1, %hi(D_801246F0)
    /* 87E4C 800FF3DC AC400000 */  sw         $zero, 0x0($v0)
    /* 87E50 800FF3E0 252946F0 */  addiu      $t1, $t1, %lo(D_801246F0)
    /* 87E54 800FF3E4 00005025 */  or         $t2, $zero, $zero
    /* 87E58 800FF3E8 240D0020 */  addiu      $t5, $zero, 0x20
    /* 87E5C 800FF3EC 27A40030 */  addiu      $a0, $sp, 0x30
  .L800FF3F0:
    /* 87E60 800FF3F0 3C068012 */  lui        $a2, %hi(D_80124640)
    /* 87E64 800FF3F4 3C078012 */  lui        $a3, %hi(D_80124650)
    /* 87E68 800FF3F8 3C088012 */  lui        $t0, %hi(D_80124660)
    /* 87E6C 800FF3FC 3C058012 */  lui        $a1, %hi(D_80124670)
    /* 87E70 800FF400 25620028 */  addiu      $v0, $t3, 0x28
    /* 87E74 800FF404 256300A8 */  addiu      $v1, $t3, 0xA8
    /* 87E78 800FF408 24A54670 */  addiu      $a1, $a1, %lo(D_80124670)
    /* 87E7C 800FF40C 25084660 */  addiu      $t0, $t0, %lo(D_80124660)
    /* 87E80 800FF410 24E74650 */  addiu      $a3, $a3, %lo(D_80124650)
    /* 87E84 800FF414 24C64640 */  addiu      $a2, $a2, %lo(D_80124640)
  .L800FF418:
    /* 87E88 800FF418 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 87E8C 800FF41C 8CCE0004 */  lw         $t6, 0x4($a2)
    /* 87E90 800FF420 24A50040 */  addiu      $a1, $a1, 0x40
    /* 87E94 800FF424 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 87E98 800FF428 AC8E0004 */  sw         $t6, 0x4($a0)
    /* 87E9C 800FF42C 8CCE000C */  lw         $t6, 0xC($a2)
    /* 87EA0 800FF430 8CCF0008 */  lw         $t7, 0x8($a2)
    /* 87EA4 800FF434 8C990000 */  lw         $t9, 0x0($a0)
    /* 87EA8 800FF438 AC8E000C */  sw         $t6, 0xC($a0)
    /* 87EAC 800FF43C AC8F0008 */  sw         $t7, 0x8($a0)
    /* 87EB0 800FF440 AC790000 */  sw         $t9, 0x0($v1)
    /* 87EB4 800FF444 8C980004 */  lw         $t8, 0x4($a0)
    /* 87EB8 800FF448 24C60040 */  addiu      $a2, $a2, 0x40
    /* 87EBC 800FF44C 24E70040 */  addiu      $a3, $a3, 0x40
    /* 87EC0 800FF450 AC780004 */  sw         $t8, 0x4($v1)
    /* 87EC4 800FF454 8C990008 */  lw         $t9, 0x8($a0)
    /* 87EC8 800FF458 25080040 */  addiu      $t0, $t0, 0x40
    /* 87ECC 800FF45C 24420040 */  addiu      $v0, $v0, 0x40
    /* 87ED0 800FF460 AC790008 */  sw         $t9, 0x8($v1)
    /* 87ED4 800FF464 8C98000C */  lw         $t8, 0xC($a0)
    /* 87ED8 800FF468 24630040 */  addiu      $v1, $v1, 0x40
    /* 87EDC 800FF46C AC78FFCC */  sw         $t8, -0x34($v1)
    /* 87EE0 800FF470 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 87EE4 800FF474 AC4FFFC0 */  sw         $t7, -0x40($v0)
    /* 87EE8 800FF478 8C8E0004 */  lw         $t6, 0x4($a0)
    /* 87EEC 800FF47C AC4EFFC4 */  sw         $t6, -0x3C($v0)
    /* 87EF0 800FF480 8C8F0008 */  lw         $t7, 0x8($a0)
    /* 87EF4 800FF484 AC4FFFC8 */  sw         $t7, -0x38($v0)
    /* 87EF8 800FF488 8C8E000C */  lw         $t6, 0xC($a0)
    /* 87EFC 800FF48C AC4EFFCC */  sw         $t6, -0x34($v0)
    /* 87F00 800FF490 8CF8FFC4 */  lw         $t8, -0x3C($a3)
    /* 87F04 800FF494 8CF9FFC0 */  lw         $t9, -0x40($a3)
    /* 87F08 800FF498 AC980004 */  sw         $t8, 0x4($a0)
    /* 87F0C 800FF49C AC990000 */  sw         $t9, 0x0($a0)
    /* 87F10 800FF4A0 8CF9FFC8 */  lw         $t9, -0x38($a3)
    /* 87F14 800FF4A4 8CF8FFCC */  lw         $t8, -0x34($a3)
    /* 87F18 800FF4A8 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 87F1C 800FF4AC AC990008 */  sw         $t9, 0x8($a0)
    /* 87F20 800FF4B0 AC98000C */  sw         $t8, 0xC($a0)
    /* 87F24 800FF4B4 AC6FFFD0 */  sw         $t7, -0x30($v1)
    /* 87F28 800FF4B8 8C8E0004 */  lw         $t6, 0x4($a0)
    /* 87F2C 800FF4BC AC6EFFD4 */  sw         $t6, -0x2C($v1)
    /* 87F30 800FF4C0 8C8F0008 */  lw         $t7, 0x8($a0)
    /* 87F34 800FF4C4 AC6FFFD8 */  sw         $t7, -0x28($v1)
    /* 87F38 800FF4C8 8C8E000C */  lw         $t6, 0xC($a0)
    /* 87F3C 800FF4CC AC6EFFDC */  sw         $t6, -0x24($v1)
    /* 87F40 800FF4D0 8C990000 */  lw         $t9, 0x0($a0)
    /* 87F44 800FF4D4 AC59FFD0 */  sw         $t9, -0x30($v0)
    /* 87F48 800FF4D8 8C980004 */  lw         $t8, 0x4($a0)
    /* 87F4C 800FF4DC AC58FFD4 */  sw         $t8, -0x2C($v0)
    /* 87F50 800FF4E0 8C990008 */  lw         $t9, 0x8($a0)
    /* 87F54 800FF4E4 AC59FFD8 */  sw         $t9, -0x28($v0)
    /* 87F58 800FF4E8 8C98000C */  lw         $t8, 0xC($a0)
    /* 87F5C 800FF4EC AC58FFDC */  sw         $t8, -0x24($v0)
    /* 87F60 800FF4F0 8D0EFFC4 */  lw         $t6, -0x3C($t0)
    /* 87F64 800FF4F4 8D0FFFC0 */  lw         $t7, -0x40($t0)
    /* 87F68 800FF4F8 AC8E0004 */  sw         $t6, 0x4($a0)
    /* 87F6C 800FF4FC AC8F0000 */  sw         $t7, 0x0($a0)
    /* 87F70 800FF500 8D0FFFC8 */  lw         $t7, -0x38($t0)
    /* 87F74 800FF504 8D0EFFCC */  lw         $t6, -0x34($t0)
    /* 87F78 800FF508 8C990000 */  lw         $t9, 0x0($a0)
    /* 87F7C 800FF50C AC8F0008 */  sw         $t7, 0x8($a0)
    /* 87F80 800FF510 AC8E000C */  sw         $t6, 0xC($a0)
    /* 87F84 800FF514 AC79FFE0 */  sw         $t9, -0x20($v1)
    /* 87F88 800FF518 8C980004 */  lw         $t8, 0x4($a0)
    /* 87F8C 800FF51C AC78FFE4 */  sw         $t8, -0x1C($v1)
    /* 87F90 800FF520 8C990008 */  lw         $t9, 0x8($a0)
    /* 87F94 800FF524 AC79FFE8 */  sw         $t9, -0x18($v1)
    /* 87F98 800FF528 8C98000C */  lw         $t8, 0xC($a0)
    /* 87F9C 800FF52C AC78FFEC */  sw         $t8, -0x14($v1)
    /* 87FA0 800FF530 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 87FA4 800FF534 AC4FFFE0 */  sw         $t7, -0x20($v0)
    /* 87FA8 800FF538 8C8E0004 */  lw         $t6, 0x4($a0)
    /* 87FAC 800FF53C AC4EFFE4 */  sw         $t6, -0x1C($v0)
    /* 87FB0 800FF540 8C8F0008 */  lw         $t7, 0x8($a0)
    /* 87FB4 800FF544 AC4FFFE8 */  sw         $t7, -0x18($v0)
    /* 87FB8 800FF548 8C8E000C */  lw         $t6, 0xC($a0)
    /* 87FBC 800FF54C AC4EFFEC */  sw         $t6, -0x14($v0)
    /* 87FC0 800FF550 8CB8FFC4 */  lw         $t8, -0x3C($a1)
    /* 87FC4 800FF554 8CB9FFC0 */  lw         $t9, -0x40($a1)
    /* 87FC8 800FF558 AC980004 */  sw         $t8, 0x4($a0)
    /* 87FCC 800FF55C AC990000 */  sw         $t9, 0x0($a0)
    /* 87FD0 800FF560 8CB9FFC8 */  lw         $t9, -0x38($a1)
    /* 87FD4 800FF564 8CB8FFCC */  lw         $t8, -0x34($a1)
    /* 87FD8 800FF568 8C8F0000 */  lw         $t7, 0x0($a0)
    /* 87FDC 800FF56C AC990008 */  sw         $t9, 0x8($a0)
    /* 87FE0 800FF570 AC98000C */  sw         $t8, 0xC($a0)
    /* 87FE4 800FF574 AC6FFFF0 */  sw         $t7, -0x10($v1)
    /* 87FE8 800FF578 8C8E0004 */  lw         $t6, 0x4($a0)
    /* 87FEC 800FF57C AC6EFFF4 */  sw         $t6, -0xC($v1)
    /* 87FF0 800FF580 8C8F0008 */  lw         $t7, 0x8($a0)
    /* 87FF4 800FF584 AC6FFFF8 */  sw         $t7, -0x8($v1)
    /* 87FF8 800FF588 8C8E000C */  lw         $t6, 0xC($a0)
    /* 87FFC 800FF58C AC6EFFFC */  sw         $t6, -0x4($v1)
    /* 88000 800FF590 8C990000 */  lw         $t9, 0x0($a0)
    /* 88004 800FF594 AC59FFF0 */  sw         $t9, -0x10($v0)
    /* 88008 800FF598 8C980004 */  lw         $t8, 0x4($a0)
    /* 8800C 800FF59C AC58FFF4 */  sw         $t8, -0xC($v0)
    /* 88010 800FF5A0 8C990008 */  lw         $t9, 0x8($a0)
    /* 88014 800FF5A4 AC59FFF8 */  sw         $t9, -0x8($v0)
    /* 88018 800FF5A8 8C98000C */  lw         $t8, 0xC($a0)
    /* 8801C 800FF5AC 14A9FF9A */  bne        $a1, $t1, .L800FF418
    /* 88020 800FF5B0 AC58FFFC */   sw        $t8, -0x4($v0)
    /* 88024 800FF5B4 254A0001 */  addiu      $t2, $t2, 0x1
    /* 88028 800FF5B8 154DFF8D */  bne        $t2, $t5, .L800FF3F0
    /* 8802C 800FF5BC 256B0128 */   addiu     $t3, $t3, 0x128
    /* 88030 800FF5C0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 88034 800FF5C4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 88038 800FF5C8 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 8803C 800FF5CC 03E00008 */  jr         $ra
    /* 88040 800FF5D0 00000000 */   nop
endlabel func_800FF2C8
.size func_800FF2C8, . - func_800FF2C8
    /* 88044 800FF5D4 00000000 */  nop
    /* 88048 800FF5D8 00000000 */  nop
    /* 8804C 800FF5DC 00000000 */  nop
