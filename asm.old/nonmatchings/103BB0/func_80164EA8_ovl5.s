glabel func_80164EA8_ovl5
/* 10C318 80164EA8 3C0F8018 */  lui        $t7, %hi(D_80186068_ovl5)
/* 10C31C 80164EAC 25EF6068 */  addiu      $t7, $t7, %lo(D_80186068_ovl5)
/* 10C320 80164EB0 8DF90000 */  lw         $t9, 0x0($t7)
/* 10C324 80164EB4 8DF80004 */  lw         $t8, 0x4($t7)
/* 10C328 80164EB8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 10C32C 80164EBC 27AE0050 */  addiu      $t6, $sp, 0x50
/* 10C330 80164EC0 ADD90000 */  sw         $t9, 0x0($t6)
/* 10C334 80164EC4 ADD80004 */  sw         $t8, 0x4($t6)
/* 10C338 80164EC8 8DF8000C */  lw         $t8, 0xC($t7)
/* 10C33C 80164ECC 8DF90008 */  lw         $t9, 0x8($t7)
/* 10C340 80164ED0 27AD0040 */  addiu      $t5, $sp, 0x40
/* 10C344 80164ED4 ADD8000C */  sw         $t8, 0xC($t6)
/* 10C348 80164ED8 ADD90008 */  sw         $t9, 0x8($t6)
/* 10C34C 80164EDC 3C0E8018 */  lui        $t6, %hi(D_80186078_ovl5)
/* 10C350 80164EE0 25CE6078 */  addiu      $t6, $t6, %lo(D_80186078_ovl5)
/* 10C354 80164EE4 8DD80000 */  lw         $t8, 0x0($t6)
/* 10C358 80164EE8 8DCF0004 */  lw         $t7, 0x4($t6)
/* 10C35C 80164EEC 27B90030 */  addiu      $t9, $sp, 0x30
.L80164EF0_ovl3:
/* 10C360 80164EF0 ADB80000 */  sw         $t8, 0x0($t5)
/* 10C364 80164EF4 ADAF0004 */  sw         $t7, 0x4($t5)
/* 10C368 80164EF8 8DCF000C */  lw         $t7, 0xC($t6)
/* 10C36C 80164EFC 8DD80008 */  lw         $t8, 0x8($t6)
/* 10C370 80164F00 27A30020 */  addiu      $v1, $sp, 0x20
/* 10C374 80164F04 ADAF000C */  sw         $t7, 0xC($t5)
/* 10C378 80164F08 ADB80008 */  sw         $t8, 0x8($t5)
/* 10C37C 80164F0C 3C0D8018 */  lui        $t5, %hi(D_80186088_ovl5)
/* 10C380 80164F10 25AD6088 */  addiu      $t5, $t5, %lo(D_80186088_ovl5)
/* 10C384 80164F14 8DAF0000 */  lw         $t7, 0x0($t5)
/* 10C388 80164F18 8DAE0004 */  lw         $t6, 0x4($t5)
/* 10C38C 80164F1C 3C188018 */  lui        $t8, %hi(D_80186098_ovl5)
/* 10C390 80164F20 AF2F0000 */  sw         $t7, 0x0($t9)
/* 10C394 80164F24 AF2E0004 */  sw         $t6, 0x4($t9)
/* 10C398 80164F28 8DAE000C */  lw         $t6, 0xC($t5)
/* 10C39C 80164F2C 8DAF0008 */  lw         $t7, 0x8($t5)
/* 10C3A0 80164F30 27186098 */  addiu      $t8, $t8, %lo(D_80186098_ovl5)
/* 10C3A4 80164F34 AF2E000C */  sw         $t6, 0xC($t9)
/* 10C3A8 80164F38 AF2F0008 */  sw         $t7, 0x8($t9)
/* 10C3AC 80164F3C 8F0D0000 */  lw         $t5, 0x0($t8)
/* 10C3B0 80164F40 3C018019 */  lui        $at, %hi(D_8018E020_ovl5)
/* 10C3B4 80164F44 3C02800D */  lui        $v0, %hi(D_800D7158 + 0x60)
/* 10C3B8 80164F48 AC6D0000 */  sw         $t5, 0x0($v1)
/* 10C3BC 80164F4C 8F190004 */  lw         $t9, 0x4($t8)
/* 10C3C0 80164F50 240E0001 */  addiu      $t6, $zero, 0x1
/* 10C3C4 80164F54 3C058019 */  lui        $a1, %hi(func_8018E164_ovl5 + 0xA4)
/* 10C3C8 80164F58 AC790004 */  sw         $t9, 0x4($v1)
/* 10C3CC 80164F5C 8F0D0008 */  lw         $t5, 0x8($t8)
/* 10C3D0 80164F60 3C048019 */  lui        $a0, %hi(func_8018E164_ovl5 + 0xB8)
/* 10C3D4 80164F64 2484E21C */  addiu      $a0, $a0, %lo(func_8018E164_ovl5 + 0xB8)
/* 10C3D8 80164F68 AC6D0008 */  sw         $t5, 0x8($v1)
/* 10C3DC 80164F6C 8F19000C */  lw         $t9, 0xC($t8)
/* 10C3E0 80164F70 24A5E208 */  addiu      $a1, $a1, %lo(func_8018E164_ovl5 + 0xA4)
/* 10C3E4 80164F74 3C068019 */  lui        $a2, %hi(func_8018E164_ovl5 + 0x84)
/* 10C3E8 80164F78 AC79000C */  sw         $t9, 0xC($v1)
/* 10C3EC 80164F7C AC20E020 */  sw         $zero, %lo(D_8018E020_ovl5)($at)
/* 10C3F0 80164F80 3C018019 */  lui        $at, %hi(D_8018E024_ovl5)
/* 10C3F4 80164F84 A020E024 */  sb         $zero, %lo(D_8018E024_ovl5)($at)
/* 10C3F8 80164F88 8C4271B8 */  lw         $v0, %lo(D_800D7158 + 0x60)($v0)
/* 10C3FC 80164F8C 3C018019 */  lui        $at, %hi(D_8018E025_ovl5)
/* 10C400 80164F90 A02EE025 */  sb         $t6, %lo(D_8018E025_ovl5)($at)
/* 10C404 80164F94 3C018019 */  lui        $at, %hi(func_8018E164_ovl5 + 0xF4)
/* 10C408 80164F98 A022E258 */  sb         $v0, %lo(func_8018E164_ovl5 + 0xF4)($at)
/* 10C40C 80164F9C 3C018019 */  lui        $at, %hi(func_8018E164_ovl5 + 0xBC)
/* 10C410 80164FA0 A020E220 */  sb         $zero, %lo(func_8018E164_ovl5 + 0xBC)($at)
.L80164FA4_ovl5:
/* 10C414 80164FA4 24A50004 */  addiu      $a1, $a1, 0x4
/* 10C418 80164FA8 A0A0FFFD */  sb         $zero, -0x3($a1)
/* 10C41C 80164FAC A0A0FFFE */  sb         $zero, -0x2($a1)
/* 10C420 80164FB0 A0A0FFFF */  sb         $zero, -0x1($a1)
/* 10C424 80164FB4 14A4FFFB */  bne        $a1, $a0, .L80164FA4_ovl5
/* 10C428 80164FB8 A0A0FFFC */   sb        $zero, -0x4($a1)
/* 10C42C 80164FBC 3C058019 */  lui        $a1, %hi(func_8018E164_ovl5 + 0x7C)
/* 10C430 80164FC0 3C0A8019 */  lui        $t2, %hi(func_8018E164_ovl5 + 0xC0)
/* 10C434 80164FC4 3C0C8019 */  lui        $t4, %hi(func_8018E164_ovl5 + 0xC4)
/* 10C438 80164FC8 258CE228 */  addiu      $t4, $t4, %lo(func_8018E164_ovl5 + 0xC4)
/* 10C43C 80164FCC 254AE224 */  addiu      $t2, $t2, %lo(func_8018E164_ovl5 + 0xC0)
/* 10C440 80164FD0 24A5E1E0 */  addiu      $a1, $a1, %lo(func_8018E164_ovl5 + 0x7C)
/* 10C444 80164FD4 24C6E1E8 */  addiu      $a2, $a2, %lo(func_8018E164_ovl5 + 0x84)
/* 10C448 80164FD8 27A70050 */  addiu      $a3, $sp, 0x50
/* 10C44C 80164FDC 27A80040 */  addiu      $t0, $sp, 0x40
/* 10C450 80164FE0 27A90030 */  addiu      $t1, $sp, 0x30
/* 10C454 80164FE4 240B0004 */  addiu      $t3, $zero, 0x4
/* 10C458 80164FE8 24040001 */  addiu      $a0, $zero, 0x1
.L80164FEC_ovl5:
/* 10C45C 80164FEC 8CEF0000 */  lw         $t7, 0x0($a3)
/* 10C460 80164FF0 A0A00000 */  sb         $zero, 0x0($a1)
/* 10C464 80164FF4 8D190000 */  lw         $t9, 0x0($t0)
/* 10C468 80164FF8 8DF80000 */  lw         $t8, 0x0($t7)
/* 10C46C 80164FFC 8D2E0000 */  lw         $t6, 0x0($t1)
/* 10C470 80165000 ACD80000 */  sw         $t8, 0x0($a2)
/* 10C474 80165004 8F2D0000 */  lw         $t5, 0x0($t9)
/* 10C478 80165008 0002C080 */  sll        $t8, $v0, 2
/* 10C47C 8016500C 0078C821 */  addu       $t9, $v1, $t8
/* 10C480 80165010 ACCD0004 */  sw         $t5, 0x4($a2)
/* 10C484 80165014 8DCF0000 */  lw         $t7, 0x0($t6)
/* 10C488 80165018 548F0005 */  bnel       $a0, $t7, .L80165030_ovl5
/* 10C48C 8016501C A14B0000 */   sb        $t3, 0x0($t2)
/* 10C490 80165020 8F2D0000 */  lw         $t5, 0x0($t9)
/* 10C494 80165024 10000002 */  b          .L80165030_ovl5
/* 10C498 80165028 A14D0000 */   sb        $t5, 0x0($t2)
/* 10C49C 8016502C A14B0000 */  sb         $t3, 0x0($t2)
.L80165030_ovl5:
/* 10C4A0 80165030 8CEE0004 */  lw         $t6, 0x4($a3)
/* 10C4A4 80165034 A0A00001 */  sb         $zero, 0x1($a1)
/* 10C4A8 80165038 8D180004 */  lw         $t8, 0x4($t0)
/* 10C4AC 8016503C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 10C4B0 80165040 8D2D0004 */  lw         $t5, 0x4($t1)
/* 10C4B4 80165044 24A50002 */  addiu      $a1, $a1, 0x2
/* 10C4B8 80165048 ACCF0008 */  sw         $t7, 0x8($a2)
/* 10C4BC 8016504C 8F190000 */  lw         $t9, 0x0($t8)
/* 10C4C0 80165050 00027880 */  sll        $t7, $v0, 2
.L80165054_ovl3:
/* 10C4C4 80165054 006FC021 */  addu       $t8, $v1, $t7
.L80165058_ovl3:
/* 10C4C8 80165058 ACD9000C */  sw         $t9, 0xC($a2)
/* 10C4CC 8016505C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 10C4D0 80165060 24C60010 */  addiu      $a2, $a2, 0x10
/* 10C4D4 80165064 24E70008 */  addiu      $a3, $a3, 0x8
/* 10C4D8 80165068 148E0004 */  bne        $a0, $t6, .L8016507C_ovl5
/* 10C4DC 8016506C 25080008 */   addiu     $t0, $t0, 0x8
/* 10C4E0 80165070 8F190000 */  lw         $t9, 0x0($t8)
/* 10C4E4 80165074 10000002 */  b          .L80165080_ovl5
/* 10C4E8 80165078 A1590001 */   sb        $t9, 0x1($t2)
.L8016507C_ovl5:
/* 10C4EC 8016507C A14B0001 */  sb         $t3, 0x1($t2)
.L80165080_ovl5:
/* 10C4F0 80165080 254A0002 */  addiu      $t2, $t2, 0x2
/* 10C4F4 80165084 154CFFD9 */  bne        $t2, $t4, .L80164FEC_ovl5
/* 10C4F8 80165088 25290008 */   addiu     $t1, $t1, 0x8
.L8016508C_ovl3:
/* 10C4FC 8016508C 3C028019 */  lui        $v0, %hi(D_8018E050_ovl5)
/* 10C500 80165090 3C048019 */  lui        $a0, %hi(func_8018E164_ovl5 + 0x7C)
/* 10C504 80165094 2484E1E0 */  addiu      $a0, $a0, %lo(func_8018E164_ovl5 + 0x7C)
/* 10C508 80165098 2442E050 */  addiu      $v0, $v0, %lo(D_8018E050_ovl5)
/* 10C50C 8016509C 240300FF */  addiu      $v1, $zero, 0xFF
.L801650A0_ovl5:
/* 10C510 801650A0 24420010 */  addiu      $v0, $v0, 0x10
/* 10C514 801650A4 AC43FFF4 */  sw         $v1, -0xC($v0)
/* 10C518 801650A8 AC43FFF8 */  sw         $v1, -0x8($v0)
/* 10C51C 801650AC AC43FFFC */  sw         $v1, -0x4($v0)
/* 10C520 801650B0 1444FFFB */  bne        $v0, $a0, .L801650A0_ovl5
/* 10C524 801650B4 AC43FFF0 */   sw        $v1, -0x10($v0)
/* 10C528 801650B8 03E00008 */  jr         $ra
/* 10C52C 801650BC 27BD0068 */   addiu     $sp, $sp, 0x68
