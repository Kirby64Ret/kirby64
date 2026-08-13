nonmatching func_8020C378_ovl9, 0xDC

glabel func_8020C378_ovl9
    /* 1BA3C8 8020C378 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1BA3CC 8020C37C 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 1BA3D0 8020C380 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1BA3D4 8020C384 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1BA3D8 8020C388 8CA20000 */  lw         $v0, 0x0($a1)
    /* 1BA3DC 8020C38C 3C08800F */  lui        $t0, %hi(D_800E9AA0)
    /* 1BA3E0 8020C390 25089AA0 */  addiu      $t0, $t0, %lo(D_800E9AA0)
    /* 1BA3E4 8020C394 00021080 */  sll        $v0, $v0, 2
    /* 1BA3E8 8020C398 01023021 */  addu       $a2, $t0, $v0
    /* 1BA3EC 8020C39C 8CC70000 */  lw         $a3, 0x0($a2)
    /* 1BA3F0 8020C3A0 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 1BA3F4 8020C3A4 00621821 */  addu       $v1, $v1, $v0
    /* 1BA3F8 8020C3A8 18E0000C */  blez       $a3, .L8020C3DC_ovl9
    /* 1BA3FC 8020C3AC 8C631B50 */   lw        $v1, %lo(D_800E1B50)($v1)
    /* 1BA400 8020C3B0 24EEFFFF */  addiu      $t6, $a3, -0x1
    /* 1BA404 8020C3B4 ACCE0000 */  sw         $t6, 0x0($a2)
    /* 1BA408 8020C3B8 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 1BA40C 8020C3BC 000FC080 */  sll        $t8, $t7, 2
    /* 1BA410 8020C3C0 0118C821 */  addu       $t9, $t0, $t8
    /* 1BA414 8020C3C4 8F290000 */  lw         $t1, 0x0($t9)
    /* 1BA418 8020C3C8 15200004 */  bnez       $t1, .L8020C3DC_ovl9
    /* 1BA41C 8020C3CC 00000000 */   nop
    /* 1BA420 8020C3D0 8C6A0088 */  lw         $t2, 0x88($v1)
    /* 1BA424 8020C3D4 8D4B0014 */  lw         $t3, 0x14($t2)
    /* 1BA428 8020C3D8 AC6B008C */  sw         $t3, 0x8C($v1)
  .L8020C3DC_ovl9:
    /* 1BA42C 8020C3DC 0C06835D */  jal        func_801A0D74_ovl7
    /* 1BA430 8020C3E0 00000000 */   nop
    /* 1BA434 8020C3E4 44822000 */  mtc1       $v0, $f4
    /* 1BA438 8020C3E8 24040006 */  addiu      $a0, $zero, 0x6
    /* 1BA43C 8020C3EC 468021A0 */  cvt.s.w    $f6, $f4
    /* 1BA440 8020C3F0 0C066FA7 */  jal        eneTurnCommon
    /* 1BA444 8020C3F4 E7A6001C */   swc1      $f6, 0x1C($sp)
    /* 1BA448 8020C3F8 C7A8001C */  lwc1       $f8, 0x1C($sp)
    /* 1BA44C 8020C3FC 44805000 */  mtc1       $zero, $f10
    /* 1BA450 8020C400 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 1BA454 8020C404 460A4032 */  c.eq.s     $f8, $f10
    /* 1BA458 8020C408 00000000 */  nop
    /* 1BA45C 8020C40C 4500000B */  bc1f       .L8020C43C_ovl9
    /* 1BA460 8020C410 00000000 */   nop
    /* 1BA464 8020C414 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 1BA468 8020C418 3C04800E */  lui        $a0, %hi(D_800DDFD0)
    /* 1BA46C 8020C41C 3C068022 */  lui        $a2, %hi(D_8021CA3C_ovl9)
    /* 1BA470 8020C420 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1BA474 8020C424 24C6CA3C */  addiu      $a2, $a2, %lo(D_8021CA3C_ovl9)
    /* 1BA478 8020C428 24050003 */  addiu      $a1, $zero, 0x3
    /* 1BA47C 8020C42C 000D7080 */  sll        $t6, $t5, 2
    /* 1BA480 8020C430 008E2021 */  addu       $a0, $a0, $t6
    /* 1BA484 8020C434 0C02911F */  jal        utilFuncTableJump
    /* 1BA488 8020C438 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
  .L8020C43C_ovl9:
    /* 1BA48C 8020C43C 0C067CEC */  jal        func_8019F3B0_ovl7
    /* 1BA490 8020C440 00000000 */   nop
    /* 1BA494 8020C444 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1BA498 8020C448 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1BA49C 8020C44C 03E00008 */  jr         $ra
    /* 1BA4A0 8020C450 00000000 */   nop
endlabel func_8020C378_ovl9
.size func_8020C378_ovl9, . - func_8020C378_ovl9
