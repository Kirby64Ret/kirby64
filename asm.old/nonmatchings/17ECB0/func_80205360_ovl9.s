glabel func_80205360_ovl9
/* 1B33B0 80205360 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 1B33B4 80205364 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 1B33B8 80205368 8D0E0000 */  lw         $t6, 0x0($t0)
/* 1B33BC 8020536C 3C09800F */  lui        $t1, %hi(D_800EA6E0)
/* 1B33C0 80205370 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* 1B33C4 80205374 8DC20000 */  lw         $v0, 0x0($t6)
/* 1B33C8 80205378 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* 1B33CC 8020537C 2529A6E0 */  addiu      $t1, $t1, %lo(D_800EA6E0)
/* 1B33D0 80205380 00021080 */  sll        $v0, $v0, 2
/* 1B33D4 80205384 01227821 */  addu       $t7, $t1, $v0
/* 1B33D8 80205388 0142C021 */  addu       $t8, $t2, $v0
/* 1B33DC 8020538C C7060000 */  lwc1       $f6, 0x0($t8)
/* 1B33E0 80205390 C5E40000 */  lwc1       $f4, 0x0($t7)
/* 1B33E4 80205394 3C0B800F */  lui        $t3, %hi(D_800EAFA0)
/* 1B33E8 80205398 256BAFA0 */  addiu      $t3, $t3, %lo(D_800EAFA0)
/* 1B33EC 8020539C 3C04800E */  lui        $a0, %hi(D_800DFBD0)
/* 1B33F0 802053A0 46062201 */  sub.s      $f8, $f4, $f6
/* 1B33F4 802053A4 00822021 */  addu       $a0, $a0, $v0
/* 1B33F8 802053A8 0162C821 */  addu       $t9, $t3, $v0
/* 1B33FC 802053AC 8C84FBD0 */  lw         $a0, %lo(D_800DFBD0)($a0)
/* 1B3400 802053B0 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 1B3404 802053B4 3C0C800F */  lui        $t4, %hi(D_800EB320)
/* 1B3408 802053B8 8C830004 */  lw         $v1, 0x4($a0)
/* 1B340C 802053BC 460A4401 */  sub.s      $f16, $f8, $f10
/* 1B3410 802053C0 8C850008 */  lw         $a1, 0x8($a0)
/* 1B3414 802053C4 8C86000C */  lw         $a2, 0xC($a0)
/* 1B3418 802053C8 8C870010 */  lw         $a3, 0x10($a0)
/* 1B341C 802053CC E4700020 */  swc1       $f16, 0x20($v1)
/* 1B3420 802053D0 C4720020 */  lwc1       $f18, 0x20($v1)
/* 1B3424 802053D4 258CB320 */  addiu      $t4, $t4, %lo(D_800EB320)
/* 1B3428 802053D8 3C0D800F */  lui        $t5, %hi(D_800EB160)
/* 1B342C 802053DC 46009107 */  neg.s      $f4, $f18
/* 1B3430 802053E0 25ADB160 */  addiu      $t5, $t5, %lo(D_800EB160)
/* 1B3434 802053E4 E4A40020 */  swc1       $f4, 0x20($a1)
/* 1B3438 802053E8 8D0E0000 */  lw         $t6, 0x0($t0)
/* 1B343C 802053EC 44800000 */  mtc1       $zero, $f0
/* 1B3440 802053F0 8DC20000 */  lw         $v0, 0x0($t6)
/* 1B3444 802053F4 00021080 */  sll        $v0, $v0, 2
/* 1B3448 802053F8 01827821 */  addu       $t7, $t4, $v0
/* 1B344C 802053FC 0142C021 */  addu       $t8, $t2, $v0
/* 1B3450 80205400 C7080000 */  lwc1       $f8, 0x0($t8)
/* 1B3454 80205404 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 1B3458 80205408 46083281 */  sub.s      $f10, $f6, $f8
/* 1B345C 8020540C E4CA0020 */  swc1       $f10, 0x20($a2)
/* 1B3460 80205410 8D190000 */  lw         $t9, 0x0($t0)
/* 1B3464 80205414 8F220000 */  lw         $v0, 0x0($t9)
/* 1B3468 80205418 00021080 */  sll        $v0, $v0, 2
/* 1B346C 8020541C 01227021 */  addu       $t6, $t1, $v0
/* 1B3470 80205420 01827821 */  addu       $t7, $t4, $v0
/* 1B3474 80205424 C5F20000 */  lwc1       $f18, 0x0($t7)
/* 1B3478 80205428 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 1B347C 8020542C 01A2C021 */  addu       $t8, $t5, $v0
/* 1B3480 80205430 C7060000 */  lwc1       $f6, 0x0($t8)
/* 1B3484 80205434 46128101 */  sub.s      $f4, $f16, $f18
/* 1B3488 80205438 46043200 */  add.s      $f8, $f6, $f4
/* 1B348C 8020543C E4E80020 */  swc1       $f8, 0x20($a3)
/* 1B3490 80205440 C46A0020 */  lwc1       $f10, 0x20($v1)
/* 1B3494 80205444 4600503C */  c.lt.s     $f10, $f0
/* 1B3498 80205448 00000000 */  nop
/* 1B349C 8020544C 45020003 */  bc1fl      .L8020545C_ovl9
/* 1B34A0 80205450 C4F00020 */   lwc1      $f16, 0x20($a3)
/* 1B34A4 80205454 E4600020 */  swc1       $f0, 0x20($v1)
/* 1B34A8 80205458 C4F00020 */  lwc1       $f16, 0x20($a3)
.L8020545C_ovl9:
/* 1B34AC 8020545C 4610003C */  c.lt.s     $f0, $f16
/* 1B34B0 80205460 00000000 */  nop
/* 1B34B4 80205464 45020003 */  bc1fl      .L80205474_ovl9
/* 1B34B8 80205468 8D020000 */   lw        $v0, 0x0($t0)
/* 1B34BC 8020546C E4E00020 */  swc1       $f0, 0x20($a3)
/* 1B34C0 80205470 8D020000 */  lw         $v0, 0x0($t0)
.L80205474_ovl9:
/* 1B34C4 80205474 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 1B34C8 80205478 44813000 */  mtc1       $at, $f6
/* 1B34CC 8020547C 8C590000 */  lw         $t9, 0x0($v0)
/* 1B34D0 80205480 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1B34D4 80205484 44815000 */  mtc1       $at, $f10
/* 1B34D8 80205488 00197080 */  sll        $t6, $t9, 2
/* 1B34DC 8020548C 016E1821 */  addu       $v1, $t3, $t6
/* 1B34E0 80205490 C4720000 */  lwc1       $f18, 0x0($v1)
/* 1B34E4 80205494 46069100 */  add.s      $f4, $f18, $f6
/* 1B34E8 80205498 E4640000 */  swc1       $f4, 0x0($v1)
/* 1B34EC 8020549C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1B34F0 802054A0 000FC080 */  sll        $t8, $t7, 2
/* 1B34F4 802054A4 01B82021 */  addu       $a0, $t5, $t8
/* 1B34F8 802054A8 C4880000 */  lwc1       $f8, 0x0($a0)
/* 1B34FC 802054AC 460A4400 */  add.s      $f16, $f8, $f10
/* 1B3500 802054B0 03E00008 */  jr         $ra
/* 1B3504 802054B4 E4900000 */   swc1      $f16, 0x0($a0)
