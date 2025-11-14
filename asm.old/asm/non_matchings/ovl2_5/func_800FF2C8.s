glabel func_800FF2C8
/* 087D38 800FF2C8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 087D3C 800FF2CC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 087D40 800FF2D0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 087D44 800FF2D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 087D48 800FF2D8 3C040002 */  lui   $a0, (0x00020004 >> 16) # lui $a0, 2
/* 087D4C 800FF2DC AFB00018 */  sw    $s0, 0x18($sp)
/* 087D50 800FF2E0 34840004 */  ori   $a0, (0x00020004 & 0xFFFF) # ori $a0, $a0, 4
/* 087D54 800FF2E4 0C02A2EB */  jal   func_800A8BAC
/* 087D58 800FF2E8 AFAE005C */   sw    $t6, 0x5c($sp)
/* 087D5C 800FF2EC 3C108013 */  lui   $s0, %hi(D_8012B998) # $s0, 0x8013
/* 087D60 800FF2F0 2610B998 */  addiu $s0, %lo(D_8012B998) # addiu $s0, $s0, -0x4668
/* 087D64 800FF2F4 AE020004 */  sw    $v0, 4($s0)
/* 087D68 800FF2F8 24040023 */  li    $a0, 35
/* 087D6C 800FF2FC 2405003C */  li    $a1, 60
/* 087D70 800FF300 0C02BB02 */  jal   request_track_general
/* 087D74 800FF304 24060050 */   li    $a2, 80
/* 087D78 800FF308 00021880 */  sll   $v1, $v0, 2
/* 087D7C 800FF30C 3C0F800E */  lui   $t7, 0x800e
/* 087D80 800FF310 01E37821 */  addu  $t7, $t7, $v1
/* 087D84 800FF314 8DEFE350 */  lw    $t7, -0x1cb0($t7)
/* 087D88 800FF318 3C04800E */  lui   $a0, 0x800e
/* 087D8C 800FF31C 00832021 */  addu  $a0, $a0, $v1
/* 087D90 800FF320 AE0F0000 */  sw    $t7, ($s0)
/* 087D94 800FF324 AFA20054 */  sw    $v0, 0x54($sp)
/* 087D98 800FF328 0C00236A */  jal   func_80008DA8
/* 087D9C 800FF32C 8C84E6D0 */   lw    $a0, -0x1930($a0)
/* 087DA0 800FF330 8FA20054 */  lw    $v0, 0x54($sp)
/* 087DA4 800FF334 3C04800E */  lui   $a0, 0x800e
/* 087DA8 800FF338 00021080 */  sll   $v0, $v0, 2
/* 087DAC 800FF33C 00822021 */  addu  $a0, $a0, $v0
/* 087DB0 800FF340 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 087DB4 800FF344 0C00236A */  jal   func_80008DA8
/* 087DB8 800FF348 AFA2002C */   sw    $v0, 0x2c($sp)
/* 087DBC 800FF34C 8FA2002C */  lw    $v0, 0x2c($sp)
/* 087DC0 800FF350 3C04800E */  lui   $a0, 0x800e
/* 087DC4 800FF354 00822021 */  addu  $a0, $a0, $v0
/* 087DC8 800FF358 0C00236A */  jal   func_80008DA8
/* 087DCC 800FF35C 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 087DD0 800FF360 8E180000 */  lw    $t8, ($s0)
/* 087DD4 800FF364 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 087DD8 800FF368 24040029 */  li    $a0, 41
/* 087DDC 800FF36C 24050010 */  li    $a1, 16
/* 087DE0 800FF370 0C02BE6E */  jal   func_800AF9B8
/* 087DE4 800FF374 AC38A7C4 */   sw    $t8, %lo(D_8004A7C4)($at)
/* 087DE8 800FF378 8FB9005C */  lw    $t9, 0x5c($sp)
/* 087DEC 800FF37C 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 087DF0 800FF380 44800000 */  mtc1  $zero, $f0
/* 087DF4 800FF384 AC39A7C4 */  sw    $t9, %lo(D_8004A7C4)($at)
/* 087DF8 800FF388 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 087DFC 800FF38C 44812000 */  mtc1  $at, $f4
/* 087E00 800FF390 3C048013 */  lui   $a0, 0x8013
/* 087E04 800FF394 248B9490 */  addiu $t3, $a0, -0x6b70
/* 087E08 800FF398 3C018013 */  lui   $at, %hi(D_8012B990) # $at, 0x8013
/* 087E0C 800FF39C 3C028013 */  lui   $v0, %hi(D_80129490) # $v0, 0x8013
/* 087E10 800FF3A0 3C038013 */  lui   $v1, %hi(D_801295B8) # $v1, 0x8013
/* 087E14 800FF3A4 E6000008 */  swc1  $f0, 8($s0)
/* 087E18 800FF3A8 E6000010 */  swc1  $f0, 0x10($s0)
/* 087E1C 800FF3AC E604000C */  swc1  $f4, 0xc($s0)
/* 087E20 800FF3B0 AC2BB990 */  sw    $t3, %lo(D_8012B990)($at)
/* 087E24 800FF3B4 246395B8 */  addiu $v1, %lo(D_801295B8) # addiu $v1, $v1, -0x6a48
/* 087E28 800FF3B8 24429490 */  addiu $v0, %lo(D_80129490) # addiu $v0, $v0, -0x6b70
/* 087E2C 800FF3BC 00005025 */  move  $t2, $zero
.L800FF3C0_ovl2:
/* 087E30 800FF3C0 254A0001 */  addiu $t2, $t2, 1
/* 087E34 800FF3C4 2D41001F */  sltiu $at, $t2, 0x1f
/* 087E38 800FF3C8 AC430000 */  sw    $v1, ($v0)
/* 087E3C 800FF3CC 24630128 */  addiu $v1, $v1, 0x128
/* 087E40 800FF3D0 1420FFFB */  bnez  $at, .L800FF3C0_ovl2
/* 087E44 800FF3D4 24420128 */   addiu $v0, $v0, 0x128
/* 087E48 800FF3D8 3C098012 */  lui   $t1, %hi(D_801246F0) # $t1, 0x8012
/* 087E4C 800FF3DC AC400000 */  sw    $zero, ($v0)
/* 087E50 800FF3E0 252946F0 */  addiu $t1, %lo(D_801246F0) # addiu $t1, $t1, 0x46f0
/* 087E54 800FF3E4 00005025 */  move  $t2, $zero
/* 087E58 800FF3E8 240D0020 */  li    $t5, 32
/* 087E5C 800FF3EC 27A40030 */  addiu $a0, $sp, 0x30
.L800FF3F0_ovl2:
/* 087E60 800FF3F0 3C068012 */  lui   $a2, %hi(D_80124640) # $a2, 0x8012
/* 087E64 800FF3F4 3C078012 */  lui   $a3, %hi(D_80124650) # $a3, 0x8012
/* 087E68 800FF3F8 3C088012 */  lui   $t0, %hi(D_80124660) # $t0, 0x8012
/* 087E6C 800FF3FC 3C058012 */  lui   $a1, %hi(D_80124670) # $a1, 0x8012
/* 087E70 800FF400 25620028 */  addiu $v0, $t3, 0x28
/* 087E74 800FF404 256300A8 */  addiu $v1, $t3, 0xa8
/* 087E78 800FF408 24A54670 */  addiu $a1, %lo(D_80124670) # addiu $a1, $a1, 0x4670
/* 087E7C 800FF40C 25084660 */  addiu $t0, %lo(D_80124660) # addiu $t0, $t0, 0x4660
/* 087E80 800FF410 24E74650 */  addiu $a3, %lo(D_80124650) # addiu $a3, $a3, 0x4650
/* 087E84 800FF414 24C64640 */  addiu $a2, %lo(D_80124640) # addiu $a2, $a2, 0x4640
.L800FF418_ovl2:
/* 087E88 800FF418 8CCF0000 */  lw    $t7, ($a2)
/* 087E8C 800FF41C 8CCE0004 */  lw    $t6, 4($a2)
/* 087E90 800FF420 24A50040 */  addiu $a1, $a1, 0x40
/* 087E94 800FF424 AC8F0000 */  sw    $t7, ($a0)
/* 087E98 800FF428 AC8E0004 */  sw    $t6, 4($a0)
/* 087E9C 800FF42C 8CCE000C */  lw    $t6, 0xc($a2)
/* 087EA0 800FF430 8CCF0008 */  lw    $t7, 8($a2)
/* 087EA4 800FF434 8C990000 */  lw    $t9, ($a0)
/* 087EA8 800FF438 AC8E000C */  sw    $t6, 0xc($a0)
/* 087EAC 800FF43C AC8F0008 */  sw    $t7, 8($a0)
/* 087EB0 800FF440 AC790000 */  sw    $t9, ($v1)
/* 087EB4 800FF444 8C980004 */  lw    $t8, 4($a0)
/* 087EB8 800FF448 24C60040 */  addiu $a2, $a2, 0x40
/* 087EBC 800FF44C 24E70040 */  addiu $a3, $a3, 0x40
/* 087EC0 800FF450 AC780004 */  sw    $t8, 4($v1)
/* 087EC4 800FF454 8C990008 */  lw    $t9, 8($a0)
/* 087EC8 800FF458 25080040 */  addiu $t0, $t0, 0x40
/* 087ECC 800FF45C 24420040 */  addiu $v0, $v0, 0x40
/* 087ED0 800FF460 AC790008 */  sw    $t9, 8($v1)
/* 087ED4 800FF464 8C98000C */  lw    $t8, 0xc($a0)
/* 087ED8 800FF468 24630040 */  addiu $v1, $v1, 0x40
/* 087EDC 800FF46C AC78FFCC */  sw    $t8, -0x34($v1)
/* 087EE0 800FF470 8C8F0000 */  lw    $t7, ($a0)
/* 087EE4 800FF474 AC4FFFC0 */  sw    $t7, -0x40($v0)
/* 087EE8 800FF478 8C8E0004 */  lw    $t6, 4($a0)
/* 087EEC 800FF47C AC4EFFC4 */  sw    $t6, -0x3c($v0)
/* 087EF0 800FF480 8C8F0008 */  lw    $t7, 8($a0)
/* 087EF4 800FF484 AC4FFFC8 */  sw    $t7, -0x38($v0)
/* 087EF8 800FF488 8C8E000C */  lw    $t6, 0xc($a0)
/* 087EFC 800FF48C AC4EFFCC */  sw    $t6, -0x34($v0)
/* 087F00 800FF490 8CF8FFC4 */  lw    $t8, -0x3c($a3)
/* 087F04 800FF494 8CF9FFC0 */  lw    $t9, -0x40($a3)
/* 087F08 800FF498 AC980004 */  sw    $t8, 4($a0)
/* 087F0C 800FF49C AC990000 */  sw    $t9, ($a0)
/* 087F10 800FF4A0 8CF9FFC8 */  lw    $t9, -0x38($a3)
/* 087F14 800FF4A4 8CF8FFCC */  lw    $t8, -0x34($a3)
/* 087F18 800FF4A8 8C8F0000 */  lw    $t7, ($a0)
/* 087F1C 800FF4AC AC990008 */  sw    $t9, 8($a0)
/* 087F20 800FF4B0 AC98000C */  sw    $t8, 0xc($a0)
/* 087F24 800FF4B4 AC6FFFD0 */  sw    $t7, -0x30($v1)
/* 087F28 800FF4B8 8C8E0004 */  lw    $t6, 4($a0)
/* 087F2C 800FF4BC AC6EFFD4 */  sw    $t6, -0x2c($v1)
/* 087F30 800FF4C0 8C8F0008 */  lw    $t7, 8($a0)
/* 087F34 800FF4C4 AC6FFFD8 */  sw    $t7, -0x28($v1)
/* 087F38 800FF4C8 8C8E000C */  lw    $t6, 0xc($a0)
/* 087F3C 800FF4CC AC6EFFDC */  sw    $t6, -0x24($v1)
/* 087F40 800FF4D0 8C990000 */  lw    $t9, ($a0)
/* 087F44 800FF4D4 AC59FFD0 */  sw    $t9, -0x30($v0)
/* 087F48 800FF4D8 8C980004 */  lw    $t8, 4($a0)
/* 087F4C 800FF4DC AC58FFD4 */  sw    $t8, -0x2c($v0)
/* 087F50 800FF4E0 8C990008 */  lw    $t9, 8($a0)
/* 087F54 800FF4E4 AC59FFD8 */  sw    $t9, -0x28($v0)
/* 087F58 800FF4E8 8C98000C */  lw    $t8, 0xc($a0)
/* 087F5C 800FF4EC AC58FFDC */  sw    $t8, -0x24($v0)
/* 087F60 800FF4F0 8D0EFFC4 */  lw    $t6, -0x3c($t0)
/* 087F64 800FF4F4 8D0FFFC0 */  lw    $t7, -0x40($t0)
/* 087F68 800FF4F8 AC8E0004 */  sw    $t6, 4($a0)
/* 087F6C 800FF4FC AC8F0000 */  sw    $t7, ($a0)
/* 087F70 800FF500 8D0FFFC8 */  lw    $t7, -0x38($t0)
/* 087F74 800FF504 8D0EFFCC */  lw    $t6, -0x34($t0)
/* 087F78 800FF508 8C990000 */  lw    $t9, ($a0)
/* 087F7C 800FF50C AC8F0008 */  sw    $t7, 8($a0)
/* 087F80 800FF510 AC8E000C */  sw    $t6, 0xc($a0)
/* 087F84 800FF514 AC79FFE0 */  sw    $t9, -0x20($v1)
/* 087F88 800FF518 8C980004 */  lw    $t8, 4($a0)
/* 087F8C 800FF51C AC78FFE4 */  sw    $t8, -0x1c($v1)
/* 087F90 800FF520 8C990008 */  lw    $t9, 8($a0)
/* 087F94 800FF524 AC79FFE8 */  sw    $t9, -0x18($v1)
/* 087F98 800FF528 8C98000C */  lw    $t8, 0xc($a0)
/* 087F9C 800FF52C AC78FFEC */  sw    $t8, -0x14($v1)
/* 087FA0 800FF530 8C8F0000 */  lw    $t7, ($a0)
/* 087FA4 800FF534 AC4FFFE0 */  sw    $t7, -0x20($v0)
/* 087FA8 800FF538 8C8E0004 */  lw    $t6, 4($a0)
/* 087FAC 800FF53C AC4EFFE4 */  sw    $t6, -0x1c($v0)
/* 087FB0 800FF540 8C8F0008 */  lw    $t7, 8($a0)
/* 087FB4 800FF544 AC4FFFE8 */  sw    $t7, -0x18($v0)
/* 087FB8 800FF548 8C8E000C */  lw    $t6, 0xc($a0)
/* 087FBC 800FF54C AC4EFFEC */  sw    $t6, -0x14($v0)
/* 087FC0 800FF550 8CB8FFC4 */  lw    $t8, -0x3c($a1)
/* 087FC4 800FF554 8CB9FFC0 */  lw    $t9, -0x40($a1)
/* 087FC8 800FF558 AC980004 */  sw    $t8, 4($a0)
/* 087FCC 800FF55C AC990000 */  sw    $t9, ($a0)
/* 087FD0 800FF560 8CB9FFC8 */  lw    $t9, -0x38($a1)
/* 087FD4 800FF564 8CB8FFCC */  lw    $t8, -0x34($a1)
/* 087FD8 800FF568 8C8F0000 */  lw    $t7, ($a0)
/* 087FDC 800FF56C AC990008 */  sw    $t9, 8($a0)
/* 087FE0 800FF570 AC98000C */  sw    $t8, 0xc($a0)
/* 087FE4 800FF574 AC6FFFF0 */  sw    $t7, -0x10($v1)
/* 087FE8 800FF578 8C8E0004 */  lw    $t6, 4($a0)
/* 087FEC 800FF57C AC6EFFF4 */  sw    $t6, -0xc($v1)
/* 087FF0 800FF580 8C8F0008 */  lw    $t7, 8($a0)
/* 087FF4 800FF584 AC6FFFF8 */  sw    $t7, -8($v1)
/* 087FF8 800FF588 8C8E000C */  lw    $t6, 0xc($a0)
/* 087FFC 800FF58C AC6EFFFC */  sw    $t6, -4($v1)
/* 088000 800FF590 8C990000 */  lw    $t9, ($a0)
/* 088004 800FF594 AC59FFF0 */  sw    $t9, -0x10($v0)
/* 088008 800FF598 8C980004 */  lw    $t8, 4($a0)
/* 08800C 800FF59C AC58FFF4 */  sw    $t8, -0xc($v0)
/* 088010 800FF5A0 8C990008 */  lw    $t9, 8($a0)
/* 088014 800FF5A4 AC59FFF8 */  sw    $t9, -8($v0)
/* 088018 800FF5A8 8C98000C */  lw    $t8, 0xc($a0)
/* 08801C 800FF5AC 14A9FF9A */  bne   $a1, $t1, .L800FF418_ovl2
/* 088020 800FF5B0 AC58FFFC */   sw    $t8, -4($v0)
/* 088024 800FF5B4 254A0001 */  addiu $t2, $t2, 1
/* 088028 800FF5B8 154DFF8D */  bne   $t2, $t5, .L800FF3F0_ovl2
/* 08802C 800FF5BC 256B0128 */   addiu $t3, $t3, 0x128
/* 088030 800FF5C0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 088034 800FF5C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 088038 800FF5C8 27BD0060 */  addiu $sp, $sp, 0x60
/* 08803C 800FF5CC 03E00008 */  jr    $ra
/* 088040 800FF5D0 00000000 */   nop   
/* 088044 800FF5D4 00000000 */  nop   
/* 088048 800FF5D8 00000000 */  nop   
/* 08804C 800FF5DC 00000000 */  nop   
.type func_800FF2C8, @function
.size func_800FF2C8, . - func_800FF2C8
