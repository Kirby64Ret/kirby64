glabel func_8020034C_ovl9
/* 1AE39C 8020034C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 1AE3A0 80200350 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 1AE3A4 80200354 8D0E0000 */  lw         $t6, 0x0($t0)
/* 1AE3A8 80200358 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1AE3AC 8020035C 3C18800E */  lui        $t8, %hi(D_800E5F90)
/* 1AE3B0 80200360 8DC50000 */  lw         $a1, 0x0($t6)
/* 1AE3B4 80200364 8C8F003C */  lw         $t7, 0x3C($a0)
/* 1AE3B8 80200368 3C018022 */  lui        $at, %hi(D_8021D9E4_ovl9)
/* 1AE3BC 8020036C 00052880 */  sll        $a1, $a1, 2
/* 1AE3C0 80200370 00451021 */  addu       $v0, $v0, $a1
/* 1AE3C4 80200374 0305C021 */  addu       $t8, $t8, $a1
/* 1AE3C8 80200378 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1AE3CC 8020037C 8F185F90 */  lw         $t8, %lo(D_800E5F90)($t8)
/* 1AE3D0 80200380 C422D9E4 */  lwc1       $f2, %lo(D_8021D9E4_ovl9)($at)
/* 1AE3D4 80200384 8DE60010 */  lw         $a2, 0x10($t7)
/* 1AE3D8 80200388 AC58002C */  sw         $t8, 0x2C($v0)
/* 1AE3DC 8020038C 8D190000 */  lw         $t9, 0x0($t0)
/* 1AE3E0 80200390 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 1AE3E4 80200394 3C09800E */  lui        $t1, %hi(gEntitiesAngleZArray)
/* 1AE3E8 80200398 8F2A0000 */  lw         $t2, 0x0($t9)
/* 1AE3EC 8020039C 25294390 */  addiu      $t1, $t1, %lo(gEntitiesAngleZArray)
/* 1AE3F0 802003A0 000A5880 */  sll        $t3, $t2, 2
/* 1AE3F4 802003A4 002B0821 */  addu       $at, $at, $t3
/* 1AE3F8 802003A8 C4246BD0 */  lwc1       $f4, %lo(D_800E6BD0)($at)
/* 1AE3FC 802003AC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1AE400 802003B0 E4440028 */  swc1       $f4, 0x28($v0)
/* 1AE404 802003B4 8D0C0000 */  lw         $t4, 0x0($t0)
/* 1AE408 802003B8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1AE40C 802003BC 000D7080 */  sll        $t6, $t5, 2
/* 1AE410 802003C0 002E0821 */  addu       $at, $at, $t6
/* 1AE414 802003C4 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1AE418 802003C8 3C01800F */  lui        $at, %hi(D_800EB160)
/* 1AE41C 802003CC E4460004 */  swc1       $f6, 0x4($v0)
/* 1AE420 802003D0 8D030000 */  lw         $v1, 0x0($t0)
/* 1AE424 802003D4 8C650000 */  lw         $a1, 0x0($v1)
/* 1AE428 802003D8 00052880 */  sll        $a1, $a1, 2
/* 1AE42C 802003DC 01257821 */  addu       $t7, $t1, $a1
/* 1AE430 802003E0 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 1AE434 802003E4 00250821 */  addu       $at, $at, $a1
/* 1AE438 802003E8 E428B160 */  swc1       $f8, %lo(D_800EB160)($at)
/* 1AE43C 802003EC 8C650000 */  lw         $a1, 0x0($v1)
/* 1AE440 802003F0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1AE444 802003F4 00052880 */  sll        $a1, $a1, 2
/* 1AE448 802003F8 01253821 */  addu       $a3, $t1, $a1
/* 1AE44C 802003FC C4E00000 */  lwc1       $f0, 0x0($a3)
/* 1AE450 80200400 4602003C */  c.lt.s     $f0, $f2
/* 1AE454 80200404 00000000 */  nop
/* 1AE458 80200408 4502000A */  bc1fl      .L80200434_ovl9
/* 1AE45C 8020040C 4600103E */   c.le.s    $f2, $f0
/* 1AE460 80200410 44815000 */  mtc1       $at, $f10
/* 1AE464 80200414 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1AE468 80200418 00250821 */  addu       $at, $at, $a1
/* 1AE46C 8020041C E42A6A10 */  swc1       $f10, %lo(D_800E6A10)($at)
/* 1AE470 80200420 8C650000 */  lw         $a1, 0x0($v1)
/* 1AE474 80200424 00052880 */  sll        $a1, $a1, 2
/* 1AE478 80200428 01253821 */  addu       $a3, $t1, $a1
/* 1AE47C 8020042C C4E00000 */  lwc1       $f0, 0x0($a3)
/* 1AE480 80200430 4600103E */  c.le.s     $f2, $f0
.L80200434_ovl9:
/* 1AE484 80200434 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1AE488 80200438 4500000F */  bc1f       .L80200478_ovl9
/* 1AE48C 8020043C 00000000 */   nop
/* 1AE490 80200440 44818000 */  mtc1       $at, $f16
/* 1AE494 80200444 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1AE498 80200448 00250821 */  addu       $at, $at, $a1
/* 1AE49C 8020044C E4306A10 */  swc1       $f16, %lo(D_800E6A10)($at)
/* 1AE4A0 80200450 8C780000 */  lw         $t8, 0x0($v1)
/* 1AE4A4 80200454 0018C880 */  sll        $t9, $t8, 2
/* 1AE4A8 80200458 01393821 */  addu       $a3, $t1, $t9
/* 1AE4AC 8020045C C4F20000 */  lwc1       $f18, 0x0($a3)
/* 1AE4B0 80200460 46009107 */  neg.s      $f4, $f18
/* 1AE4B4 80200464 E4E40000 */  swc1       $f4, 0x0($a3)
/* 1AE4B8 80200468 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1AE4BC 8020046C 000A5880 */  sll        $t3, $t2, 2
/* 1AE4C0 80200470 012B3821 */  addu       $a3, $t1, $t3
/* 1AE4C4 80200474 C4E00000 */  lwc1       $f0, 0x0($a3)
.L80200478_ovl9:
/* 1AE4C8 80200478 3C018022 */  lui        $at, %hi(D_8021D9E8_ovl9)
/* 1AE4CC 8020047C C426D9E8 */  lwc1       $f6, %lo(D_8021D9E8_ovl9)($at)
/* 1AE4D0 80200480 44808000 */  mtc1       $zero, $f16
/* 1AE4D4 80200484 46060201 */  sub.s      $f8, $f0, $f6
/* 1AE4D8 80200488 E4E80000 */  swc1       $f8, 0x0($a3)
/* 1AE4DC 8020048C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1AE4E0 80200490 000C6880 */  sll        $t5, $t4, 2
/* 1AE4E4 80200494 012D7021 */  addu       $t6, $t1, $t5
/* 1AE4E8 80200498 C5CA0000 */  lwc1       $f10, 0x0($t6)
/* 1AE4EC 8020049C E4CA0030 */  swc1       $f10, 0x30($a2)
/* 1AE4F0 802004A0 8D0F0000 */  lw         $t7, 0x0($t0)
/* 1AE4F4 802004A4 8DF80000 */  lw         $t8, 0x0($t7)
/* 1AE4F8 802004A8 0018C880 */  sll        $t9, $t8, 2
/* 1AE4FC 802004AC 01395021 */  addu       $t2, $t1, $t9
/* 1AE500 802004B0 03E00008 */  jr         $ra
/* 1AE504 802004B4 E5500000 */   swc1      $f16, 0x0($t2)
