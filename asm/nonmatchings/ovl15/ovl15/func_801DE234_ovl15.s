nonmatching func_801DE234_ovl15, 0x3A8

glabel func_801DE234_ovl15
    /* 208D94 801DE234 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 208D98 801DE238 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* 208D9C 801DE23C 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 208DA0 801DE240 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 208DA4 801DE244 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 208DA8 801DE248 AFA40048 */  sw         $a0, 0x48($sp)
    /* 208DAC 801DE24C 8DC60000 */  lw         $a2, 0x0($t6)
    /* 208DB0 801DE250 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 208DB4 801DE254 00063080 */  sll        $a2, $a2, 2
    /* 208DB8 801DE258 00260821 */  addu       $at, $at, $a2
    /* 208DBC 801DE25C C420AC20 */  lwc1       $f0, %lo(D_800EAC20)($at)
    /* 208DC0 801DE260 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 208DC4 801DE264 44812000 */  mtc1       $at, $f4
    /* 208DC8 801DE268 3C0143CD */  lui        $at, (0x43CD0000 >> 16)
    /* 208DCC 801DE26C 4600203E */  c.le.s     $f4, $f0
    /* 208DD0 801DE270 00000000 */  nop
    /* 208DD4 801DE274 450000AB */  bc1f       .L801DE524_ovl15
    /* 208DD8 801DE278 00000000 */   nop
    /* 208DDC 801DE27C 44813000 */  mtc1       $at, $f6
    /* 208DE0 801DE280 3C02800F */  lui        $v0, %hi(D_800EBDA0)
    /* 208DE4 801DE284 3C0142F8 */  lui        $at, (0x42F80000 >> 16)
    /* 208DE8 801DE288 4606003E */  c.le.s     $f0, $f6
    /* 208DEC 801DE28C 00000000 */  nop
    /* 208DF0 801DE290 450000A4 */  bc1f       .L801DE524_ovl15
    /* 208DF4 801DE294 00000000 */   nop
    /* 208DF8 801DE298 44814000 */  mtc1       $at, $f8
    /* 208DFC 801DE29C 00461021 */  addu       $v0, $v0, $a2
    /* 208E00 801DE2A0 8C42BDA0 */  lw         $v0, %lo(D_800EBDA0)($v0)
    /* 208E04 801DE2A4 4608003C */  c.lt.s     $f0, $f8
    /* 208E08 801DE2A8 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
    /* 208E0C 801DE2AC 24420001 */  addiu      $v0, $v0, 0x1
    /* 208E10 801DE2B0 2C420001 */  sltiu      $v0, $v0, 0x1
    /* 208E14 801DE2B4 45020011 */  bc1fl      .L801DE2FC_ovl15
    /* 208E18 801DE2B8 44815000 */   mtc1      $at, $f10
    /* 208E1C 801DE2BC 10400008 */  beqz       $v0, .L801DE2E0_ovl15
    /* 208E20 801DE2C0 3C19801E */   lui       $t9, %hi(D_801D8ACC)
    /* 208E24 801DE2C4 3C18800E */  lui        $t8, %hi(D_800E1B50)
    /* 208E28 801DE2C8 0306C021 */  addu       $t8, $t8, $a2
    /* 208E2C 801DE2CC 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
    /* 208E30 801DE2D0 3C0F801E */  lui        $t7, %hi(D_801D8B38)
    /* 208E34 801DE2D4 25EF8B38 */  addiu      $t7, $t7, %lo(D_801D8B38)
    /* 208E38 801DE2D8 1000002A */  b          .L801DE384_ovl15
    /* 208E3C 801DE2DC AF0F008C */   sw        $t7, 0x8C($t8)
  .L801DE2E0_ovl15:
    /* 208E40 801DE2E0 3C08800E */  lui        $t0, %hi(D_800E1B50)
    /* 208E44 801DE2E4 01064021 */  addu       $t0, $t0, $a2
    /* 208E48 801DE2E8 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
    /* 208E4C 801DE2EC 27398ACC */  addiu      $t9, $t9, %lo(D_801D8ACC)
    /* 208E50 801DE2F0 10000024 */  b          .L801DE384_ovl15
    /* 208E54 801DE2F4 AD19008C */   sw        $t9, 0x8C($t0)
    /* 208E58 801DE2F8 44815000 */  mtc1       $at, $f10
  .L801DE2FC_ovl15:
    /* 208E5C 801DE2FC 00000000 */  nop
    /* 208E60 801DE300 460A003C */  c.lt.s     $f0, $f10
    /* 208E64 801DE304 00000000 */  nop
    /* 208E68 801DE308 45000010 */  bc1f       .L801DE34C_ovl15
    /* 208E6C 801DE30C 00000000 */   nop
    /* 208E70 801DE310 10400008 */  beqz       $v0, .L801DE334_ovl15
    /* 208E74 801DE314 3C0B801E */   lui       $t3, %hi(D_801D8AF0)
    /* 208E78 801DE318 3C0A800E */  lui        $t2, %hi(D_800E1B50)
    /* 208E7C 801DE31C 01465021 */  addu       $t2, $t2, $a2
    /* 208E80 801DE320 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
    /* 208E84 801DE324 3C09801E */  lui        $t1, %hi(D_801D8B5C)
    /* 208E88 801DE328 25298B5C */  addiu      $t1, $t1, %lo(D_801D8B5C)
    /* 208E8C 801DE32C 10000015 */  b          .L801DE384_ovl15
    /* 208E90 801DE330 AD49008C */   sw        $t1, 0x8C($t2)
  .L801DE334_ovl15:
    /* 208E94 801DE334 3C0C800E */  lui        $t4, %hi(D_800E1B50)
    /* 208E98 801DE338 01866021 */  addu       $t4, $t4, $a2
    /* 208E9C 801DE33C 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
    /* 208EA0 801DE340 256B8AF0 */  addiu      $t3, $t3, %lo(D_801D8AF0)
    /* 208EA4 801DE344 1000000F */  b          .L801DE384_ovl15
    /* 208EA8 801DE348 AD8B008C */   sw        $t3, 0x8C($t4)
  .L801DE34C_ovl15:
    /* 208EAC 801DE34C 10400008 */  beqz       $v0, .L801DE370_ovl15
    /* 208EB0 801DE350 3C18800E */   lui       $t8, %hi(D_800E1B50)
    /* 208EB4 801DE354 3C0E800E */  lui        $t6, %hi(D_800E1B50)
    /* 208EB8 801DE358 01C67021 */  addu       $t6, $t6, $a2
    /* 208EBC 801DE35C 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
    /* 208EC0 801DE360 3C0D801E */  lui        $t5, %hi(D_801D8B80)
    /* 208EC4 801DE364 25AD8B80 */  addiu      $t5, $t5, %lo(D_801D8B80)
    /* 208EC8 801DE368 10000006 */  b          .L801DE384_ovl15
    /* 208ECC 801DE36C ADCD008C */   sw        $t5, 0x8C($t6)
  .L801DE370_ovl15:
    /* 208ED0 801DE370 0306C021 */  addu       $t8, $t8, $a2
    /* 208ED4 801DE374 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
    /* 208ED8 801DE378 3C0F801E */  lui        $t7, %hi(D_801D8B14)
    /* 208EDC 801DE37C 25EF8B14 */  addiu      $t7, $t7, %lo(D_801D8B14)
    /* 208EE0 801DE380 AF0F008C */  sw         $t7, 0x8C($t8)
  .L801DE384_ovl15:
    /* 208EE4 801DE384 8CF90000 */  lw         $t9, 0x0($a3)
    /* 208EE8 801DE388 3C02800E */  lui        $v0, %hi(D_800DFBD0)
    /* 208EEC 801DE38C 00003025 */  or         $a2, $zero, $zero
    /* 208EF0 801DE390 8F280000 */  lw         $t0, 0x0($t9)
    /* 208EF4 801DE394 00084880 */  sll        $t1, $t0, 2
    /* 208EF8 801DE398 00491021 */  addu       $v0, $v0, $t1
    /* 208EFC 801DE39C 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
    /* 208F00 801DE3A0 8C440044 */  lw         $a0, 0x44($v0)
    /* 208F04 801DE3A4 0C0785DF */  jal        func_801E177C_ovl15
    /* 208F08 801DE3A8 8C45002C */   lw        $a1, 0x2C($v0)
    /* 208F0C 801DE3AC 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 208F10 801DE3B0 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 208F14 801DE3B4 3C0B800F */  lui        $t3, %hi(D_800E83E0)
    /* 208F18 801DE3B8 24010001 */  addiu      $at, $zero, 0x1
    /* 208F1C 801DE3BC 8D460000 */  lw         $a2, 0x0($t2)
    /* 208F20 801DE3C0 3C0C800E */  lui        $t4, %hi(gEntityFuncListIDArray)
    /* 208F24 801DE3C4 00063080 */  sll        $a2, $a2, 2
    /* 208F28 801DE3C8 01665821 */  addu       $t3, $t3, $a2
    /* 208F2C 801DE3CC 8D6B83E0 */  lw         $t3, %lo(D_800E83E0)($t3)
    /* 208F30 801DE3D0 01866021 */  addu       $t4, $t4, $a2
    /* 208F34 801DE3D4 5561000A */  bnel       $t3, $at, .L801DE400_ovl15
    /* 208F38 801DE3D8 3C0142F8 */   lui       $at, (0x42F80000 >> 16)
    /* 208F3C 801DE3DC 8D8CDC50 */  lw         $t4, %lo(gEntityFuncListIDArray)($t4)
    /* 208F40 801DE3E0 24010007 */  addiu      $at, $zero, 0x7
    /* 208F44 801DE3E4 1181004F */  beq        $t4, $at, .L801DE524_ovl15
    /* 208F48 801DE3E8 00000000 */   nop
    /* 208F4C 801DE3EC 0C07775D */  jal        func_801DDD74_ovl15
    /* 208F50 801DE3F0 8FA40048 */   lw        $a0, 0x48($sp)
    /* 208F54 801DE3F4 1000004B */  b          .L801DE524_ovl15
    /* 208F58 801DE3F8 00000000 */   nop
    /* 208F5C 801DE3FC 3C0142F8 */  lui        $at, (0x42F80000 >> 16)
  .L801DE400_ovl15:
    /* 208F60 801DE400 44818000 */  mtc1       $at, $f16
    /* 208F64 801DE404 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 208F68 801DE408 00260821 */  addu       $at, $at, $a2
    /* 208F6C 801DE40C C432AC20 */  lwc1       $f18, %lo(D_800EAC20)($at)
    /* 208F70 801DE410 3C0E800E */  lui        $t6, %hi(D_800E1B50)
    /* 208F74 801DE414 01C67021 */  addu       $t6, $t6, $a2
    /* 208F78 801DE418 4610903E */  c.le.s     $f18, $f16
    /* 208F7C 801DE41C 3C0D801E */  lui        $t5, %hi(D_801D8DC0)
    /* 208F80 801DE420 45000040 */  bc1f       .L801DE524_ovl15
    /* 208F84 801DE424 00000000 */   nop
    /* 208F88 801DE428 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
    /* 208F8C 801DE42C 25AD8DC0 */  addiu      $t5, $t5, %lo(D_801D8DC0)
    /* 208F90 801DE430 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 208F94 801DE434 ADCD008C */  sw         $t5, 0x8C($t6)
    /* 208F98 801DE438 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 208F9C 801DE43C 3C08800E */  lui        $t0, %hi(D_800DFBD0)
    /* 208FA0 801DE440 27A5002C */  addiu      $a1, $sp, 0x2C
    /* 208FA4 801DE444 8DF80000 */  lw         $t8, 0x0($t7)
    /* 208FA8 801DE448 0018C880 */  sll        $t9, $t8, 2
    /* 208FAC 801DE44C 01194021 */  addu       $t0, $t0, $t9
    /* 208FB0 801DE450 8D08FBD0 */  lw         $t0, %lo(D_800DFBD0)($t0)
    /* 208FB4 801DE454 0C0786E6 */  jal        func_801E1B98_ovl15
    /* 208FB8 801DE458 8D040044 */   lw        $a0, 0x44($t0)
    /* 208FBC 801DE45C 10400013 */  beqz       $v0, .L801DE4AC_ovl15
    /* 208FC0 801DE460 8FA40038 */   lw        $a0, 0x38($sp)
    /* 208FC4 801DE464 93A5002C */  lbu        $a1, 0x2C($sp)
    /* 208FC8 801DE468 93A6002D */  lbu        $a2, 0x2D($sp)
    /* 208FCC 801DE46C 0C05A50C */  jal        func_80169430_ovl3
    /* 208FD0 801DE470 24070009 */   addiu     $a3, $zero, 0x9
    /* 208FD4 801DE474 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 208FD8 801DE478 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 208FDC 801DE47C 3C01800F */  lui        $at, %hi(D_800EBF60)
    /* 208FE0 801DE480 3C04800F */  lui        $a0, %hi(D_800E9FE0)
    /* 208FE4 801DE484 8C690000 */  lw         $t1, 0x0($v1)
    /* 208FE8 801DE488 24849FE0 */  addiu      $a0, $a0, %lo(D_800E9FE0)
    /* 208FEC 801DE48C 00095080 */  sll        $t2, $t1, 2
    /* 208FF0 801DE490 002A0821 */  addu       $at, $at, $t2
    /* 208FF4 801DE494 AC20BF60 */  sw         $zero, %lo(D_800EBF60)($at)
    /* 208FF8 801DE498 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 208FFC 801DE49C 000B6080 */  sll        $t4, $t3, 2
    /* 209000 801DE4A0 008C6821 */  addu       $t5, $a0, $t4
    /* 209004 801DE4A4 1000001F */  b          .L801DE524_ovl15
    /* 209008 801DE4A8 ADA00000 */   sw        $zero, 0x0($t5)
  .L801DE4AC_ovl15:
    /* 20900C 801DE4AC 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 209010 801DE4B0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 209014 801DE4B4 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* 209018 801DE4B8 27A5002C */  addiu      $a1, $sp, 0x2C
    /* 20901C 801DE4BC 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 209020 801DE4C0 000FC080 */  sll        $t8, $t7, 2
    /* 209024 801DE4C4 0338C821 */  addu       $t9, $t9, $t8
    /* 209028 801DE4C8 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* 20902C 801DE4CC 0C0786E6 */  jal        func_801E1B98_ovl15
    /* 209030 801DE4D0 8F24002C */   lw        $a0, 0x2C($t9)
    /* 209034 801DE4D4 10400013 */  beqz       $v0, .L801DE524_ovl15
    /* 209038 801DE4D8 00000000 */   nop
    /* 20903C 801DE4DC 8FA40038 */  lw         $a0, 0x38($sp)
    /* 209040 801DE4E0 93A5002C */  lbu        $a1, 0x2C($sp)
    /* 209044 801DE4E4 93A6002D */  lbu        $a2, 0x2D($sp)
    /* 209048 801DE4E8 0C05A50C */  jal        func_80169430_ovl3
    /* 20904C 801DE4EC 2407000A */   addiu     $a3, $zero, 0xA
    /* 209050 801DE4F0 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 209054 801DE4F4 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 209058 801DE4F8 3C01800F */  lui        $at, %hi(D_800EBF60)
    /* 20905C 801DE4FC 3C04800F */  lui        $a0, %hi(D_800E9FE0)
    /* 209060 801DE500 8C680000 */  lw         $t0, 0x0($v1)
    /* 209064 801DE504 24849FE0 */  addiu      $a0, $a0, %lo(D_800E9FE0)
    /* 209068 801DE508 00084880 */  sll        $t1, $t0, 2
    /* 20906C 801DE50C 00290821 */  addu       $at, $at, $t1
    /* 209070 801DE510 AC20BF60 */  sw         $zero, %lo(D_800EBF60)($at)
    /* 209074 801DE514 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 209078 801DE518 000A5880 */  sll        $t3, $t2, 2
    /* 20907C 801DE51C 008B6021 */  addu       $t4, $a0, $t3
    /* 209080 801DE520 AD800000 */  sw         $zero, 0x0($t4)
  .L801DE524_ovl15:
    /* 209084 801DE524 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 209088 801DE528 24E7A7C4 */  addiu      $a3, $a3, %lo(omCurrentObj)
    /* 20908C 801DE52C 8CE30000 */  lw         $v1, 0x0($a3)
    /* 209090 801DE530 3C0D800F */  lui        $t5, %hi(D_800EAC20)
    /* 209094 801DE534 25ADAC20 */  addiu      $t5, $t5, %lo(D_800EAC20)
    /* 209098 801DE538 8C660000 */  lw         $a2, 0x0($v1)
    /* 20909C 801DE53C 3C0142F8 */  lui        $at, (0x42F80000 >> 16)
    /* 2090A0 801DE540 44812000 */  mtc1       $at, $f4
    /* 2090A4 801DE544 00063080 */  sll        $a2, $a2, 2
    /* 2090A8 801DE548 00CD1021 */  addu       $v0, $a2, $t5
    /* 2090AC 801DE54C C4400000 */  lwc1       $f0, 0x0($v0)
    /* 2090B0 801DE550 3C014380 */  lui        $at, (0x43800000 >> 16)
    /* 2090B4 801DE554 3C04800F */  lui        $a0, %hi(D_800E9FE0)
    /* 2090B8 801DE558 4600203C */  c.lt.s     $f4, $f0
    /* 2090BC 801DE55C 44813000 */  mtc1       $at, $f6
    /* 2090C0 801DE560 24849FE0 */  addiu      $a0, $a0, %lo(D_800E9FE0)
    /* 2090C4 801DE564 3C01800E */  lui        $at, %hi(D_800E09D0)
    /* 2090C8 801DE568 45000009 */  bc1f       .L801DE590_ovl15
    /* 2090CC 801DE56C 240E0001 */   addiu     $t6, $zero, 0x1
    /* 2090D0 801DE570 00867821 */  addu       $t7, $a0, $a2
    /* 2090D4 801DE574 ADEE0000 */  sw         $t6, 0x0($t7)
    /* 2090D8 801DE578 8C660000 */  lw         $a2, 0x0($v1)
    /* 2090DC 801DE57C 3C18800F */  lui        $t8, %hi(D_800EAC20)
    /* 2090E0 801DE580 2718AC20 */  addiu      $t8, $t8, %lo(D_800EAC20)
    /* 2090E4 801DE584 00063080 */  sll        $a2, $a2, 2
    /* 2090E8 801DE588 00D81021 */  addu       $v0, $a2, $t8
    /* 2090EC 801DE58C C4400000 */  lwc1       $f0, 0x0($v0)
  .L801DE590_ovl15:
    /* 2090F0 801DE590 4600303C */  c.lt.s     $f6, $f0
    /* 2090F4 801DE594 00000000 */  nop
    /* 2090F8 801DE598 45000009 */  bc1f       .L801DE5C0_ovl15
    /* 2090FC 801DE59C 24190002 */   addiu     $t9, $zero, 0x2
    /* 209100 801DE5A0 00864021 */  addu       $t0, $a0, $a2
    /* 209104 801DE5A4 AD190000 */  sw         $t9, 0x0($t0)
    /* 209108 801DE5A8 8C660000 */  lw         $a2, 0x0($v1)
    /* 20910C 801DE5AC 3C09800F */  lui        $t1, %hi(D_800EAC20)
    /* 209110 801DE5B0 2529AC20 */  addiu      $t1, $t1, %lo(D_800EAC20)
    /* 209114 801DE5B4 00063080 */  sll        $a2, $a2, 2
    /* 209118 801DE5B8 00C91021 */  addu       $v0, $a2, $t1
    /* 20911C 801DE5BC C4400000 */  lwc1       $f0, 0x0($v0)
  .L801DE5C0_ovl15:
    /* 209120 801DE5C0 00260821 */  addu       $at, $at, $a2
    /* 209124 801DE5C4 C42809D0 */  lwc1       $f8, %lo(D_800E09D0)($at)
    /* 209128 801DE5C8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 20912C 801DE5CC 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 209130 801DE5D0 46080280 */  add.s      $f10, $f0, $f8
    /* 209134 801DE5D4 03E00008 */  jr         $ra
    /* 209138 801DE5D8 E44A0000 */   swc1      $f10, 0x0($v0)
endlabel func_801DE234_ovl15
.size func_801DE234_ovl15, . - func_801DE234_ovl15
