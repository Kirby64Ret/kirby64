nonmatching func_801DC890_ovl15, 0x1AC

glabel func_801DC890_ovl15
    /* 2073F0 801DC890 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 2073F4 801DC894 AFA40020 */  sw         $a0, 0x20($sp)
    /* 2073F8 801DC898 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* 2073FC 801DC89C 2484A7C4 */  addiu      $a0, $a0, %lo(omCurrentObj)
    /* 207400 801DC8A0 8C850000 */  lw         $a1, 0x0($a0)
    /* 207404 801DC8A4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 207408 801DC8A8 3C0E800F */  lui        $t6, %hi(D_800E98E0)
    /* 20740C 801DC8AC 8CA30000 */  lw         $v1, 0x0($a1)
    /* 207410 801DC8B0 24010001 */  addiu      $at, $zero, 0x1
    /* 207414 801DC8B4 3C06800F */  lui        $a2, %hi(D_800EA360)
    /* 207418 801DC8B8 00031880 */  sll        $v1, $v1, 2
    /* 20741C 801DC8BC 01C37021 */  addu       $t6, $t6, $v1
    /* 207420 801DC8C0 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
    /* 207424 801DC8C4 00C33021 */  addu       $a2, $a2, $v1
    /* 207428 801DC8C8 55C10059 */  bnel       $t6, $at, .L801DCA30_ovl15
    /* 20742C 801DC8CC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 207430 801DC8D0 8CC6A360 */  lw         $a2, %lo(D_800EA360)($a2)
    /* 207434 801DC8D4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 207438 801DC8D8 00230821 */  addu       $at, $at, $v1
    /* 20743C 801DC8DC 10C0002F */  beqz       $a2, .L801DC99C_ovl15
    /* 207440 801DC8E0 3C07800E */   lui       $a3, %hi(gEntitiesNextPosXArray)
    /* 207444 801DC8E4 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 207448 801DC8E8 8CCF004C */  lw         $t7, 0x4C($a2)
    /* 20744C 801DC8EC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 207450 801DC8F0 E5E40004 */  swc1       $f4, 0x4($t7)
    /* 207454 801DC8F4 8C980000 */  lw         $t8, 0x0($a0)
    /* 207458 801DC8F8 8CC9004C */  lw         $t1, 0x4C($a2)
    /* 20745C 801DC8FC 8F190000 */  lw         $t9, 0x0($t8)
    /* 207460 801DC900 00194080 */  sll        $t0, $t9, 2
    /* 207464 801DC904 00280821 */  addu       $at, $at, $t0
    /* 207468 801DC908 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 20746C 801DC90C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 207470 801DC910 E5260008 */  swc1       $f6, 0x8($t1)
    /* 207474 801DC914 8C8A0000 */  lw         $t2, 0x0($a0)
    /* 207478 801DC918 8CCD004C */  lw         $t5, 0x4C($a2)
    /* 20747C 801DC91C 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 207480 801DC920 000B6080 */  sll        $t4, $t3, 2
    /* 207484 801DC924 002C0821 */  addu       $at, $at, $t4
    /* 207488 801DC928 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 20748C 801DC92C 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 207490 801DC930 E5A8000C */  swc1       $f8, 0xC($t5)
    /* 207494 801DC934 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 207498 801DC938 8CD9004C */  lw         $t9, 0x4C($a2)
    /* 20749C 801DC93C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 2074A0 801DC940 000FC080 */  sll        $t8, $t7, 2
    /* 2074A4 801DC944 00380821 */  addu       $at, $at, $t8
    /* 2074A8 801DC948 C42A4010 */  lwc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 2074AC 801DC94C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 2074B0 801DC950 E72A0010 */  swc1       $f10, 0x10($t9)
    /* 2074B4 801DC954 8C880000 */  lw         $t0, 0x0($a0)
    /* 2074B8 801DC958 8CCB004C */  lw         $t3, 0x4C($a2)
    /* 2074BC 801DC95C 8D090000 */  lw         $t1, 0x0($t0)
    /* 2074C0 801DC960 00095080 */  sll        $t2, $t1, 2
    /* 2074C4 801DC964 002A0821 */  addu       $at, $at, $t2
    /* 2074C8 801DC968 C43041D0 */  lwc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 2074CC 801DC96C 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 2074D0 801DC970 E5700014 */  swc1       $f16, 0x14($t3)
    /* 2074D4 801DC974 8C8C0000 */  lw         $t4, 0x0($a0)
    /* 2074D8 801DC978 8CCF004C */  lw         $t7, 0x4C($a2)
    /* 2074DC 801DC97C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 2074E0 801DC980 000D7080 */  sll        $t6, $t5, 2
    /* 2074E4 801DC984 002E0821 */  addu       $at, $at, $t6
    /* 2074E8 801DC988 C4324390 */  lwc1       $f18, %lo(gEntitiesAngleZArray)($at)
    /* 2074EC 801DC98C E5F20018 */  swc1       $f18, 0x18($t7)
    /* 2074F0 801DC990 8C850000 */  lw         $a1, 0x0($a0)
    /* 2074F4 801DC994 8CA30000 */  lw         $v1, 0x0($a1)
    /* 2074F8 801DC998 00031880 */  sll        $v1, $v1, 2
  .L801DC99C_ovl15:
    /* 2074FC 801DC99C 3C18800F */  lui        $t8, %hi(D_800EA1A0)
    /* 207500 801DC9A0 2718A1A0 */  addiu      $t8, $t8, %lo(D_800EA1A0)
    /* 207504 801DC9A4 00781021 */  addu       $v0, $v1, $t8
    /* 207508 801DC9A8 8C440000 */  lw         $a0, 0x0($v0)
    /* 20750C 801DC9AC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 207510 801DC9B0 30860001 */  andi       $a2, $a0, 0x1
    /* 207514 801DC9B4 2CC60001 */  sltiu      $a2, $a2, 0x1
    /* 207518 801DC9B8 24990001 */  addiu      $t9, $a0, 0x1
    /* 20751C 801DC9BC 10C00019 */  beqz       $a2, .L801DCA24_ovl15
    /* 207520 801DC9C0 AC590000 */   sw        $t9, 0x0($v0)
    /* 207524 801DC9C4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 207528 801DC9C8 44812000 */  mtc1       $at, $f4
    /* 20752C 801DC9CC 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 207530 801DC9D0 00031880 */  sll        $v1, $v1, 2
    /* 207534 801DC9D4 00230821 */  addu       $at, $at, $v1
    /* 207538 801DC9D8 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
    /* 20753C 801DC9DC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 207540 801DC9E0 00230821 */  addu       $at, $at, $v1
    /* 207544 801DC9E4 46062032 */  c.eq.s     $f4, $f6
    /* 207548 801DC9E8 00E33821 */  addu       $a3, $a3, $v1
    /* 20754C 801DC9EC 24050002 */  addiu      $a1, $zero, 0x2
    /* 207550 801DC9F0 24040006 */  addiu      $a0, $zero, 0x6
    /* 207554 801DC9F4 45000003 */  bc1f       .L801DCA04_ovl15
    /* 207558 801DC9F8 24060008 */   addiu     $a2, $zero, 0x8
    /* 20755C 801DC9FC 10000001 */  b          .L801DCA04_ovl15
    /* 207560 801DCA00 24060003 */   addiu     $a2, $zero, 0x3
  .L801DCA04_ovl15:
    /* 207564 801DCA04 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* 207568 801DCA08 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 20756C 801DCA0C 00230821 */  addu       $at, $at, $v1
    /* 207570 801DCA10 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 207574 801DCA14 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
    /* 207578 801DCA18 E7A80010 */  swc1       $f8, 0x10($sp)
    /* 20757C 801DCA1C 0C029FDD */  jal        func_800A7F74
    /* 207580 801DCA20 E7AA0014 */   swc1      $f10, 0x14($sp)
  .L801DCA24_ovl15:
    /* 207584 801DCA24 0C067CEC */  jal        func_8019F3B0_ovl7
    /* 207588 801DCA28 00000000 */   nop
    /* 20758C 801DCA2C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L801DCA30_ovl15:
    /* 207590 801DCA30 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 207594 801DCA34 03E00008 */  jr         $ra
    /* 207598 801DCA38 00000000 */   nop
endlabel func_801DC890_ovl15
.size func_801DC890_ovl15, . - func_801DC890_ovl15
