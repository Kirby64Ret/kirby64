glabel func_801C1464_ovl7
/* 1674D4 801C1464 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1674D8 801C1468 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1674DC 801C146C AFA40000 */  sw         $a0, 0x0($sp)
/* 1674E0 801C1470 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* 1674E4 801C1474 8C430000 */  lw         $v1, 0x0($v0)
/* 1674E8 801C1478 3C05800E */  lui        $a1, %hi(D_800E64D0)
/* 1674EC 801C147C 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
/* 1674F0 801C1480 00031880 */  sll        $v1, $v1, 2
/* 1674F4 801C1484 01C37021 */  addu       $t6, $t6, $v1
/* 1674F8 801C1488 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* 1674FC 801C148C 00A32021 */  addu       $a0, $a1, $v1
/* 167500 801C1490 3C01801D */  lui        $at, %hi(D_801CE6B8_ovl7)
/* 167504 801C1494 31CF0001 */  andi       $t7, $t6, 0x1
/* 167508 801C1498 11E00056 */  beqz       $t7, .L801C15F4_ovl7
/* 16750C 801C149C 00000000 */   nop
/* 167510 801C14A0 44806000 */  mtc1       $zero, $f12
/* 167514 801C14A4 C4800000 */  lwc1       $f0, 0x0($a0)
/* 167518 801C14A8 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 16751C 801C14AC 44812000 */  mtc1       $at, $f4
/* 167520 801C14B0 460C003C */  c.lt.s     $f0, $f12
/* 167524 801C14B4 3C01801D */  lui        $at, %hi(D_801CE6A4_ovl7)
/* 167528 801C14B8 45020004 */  bc1fl      .L801C14CC_ovl7
/* 16752C 801C14BC 46000086 */   mov.s     $f2, $f0
/* 167530 801C14C0 10000002 */  b          .L801C14CC_ovl7
/* 167534 801C14C4 46000087 */   neg.s     $f2, $f0
/* 167538 801C14C8 46000086 */  mov.s      $f2, $f0
.L801C14CC_ovl7:
/* 16753C 801C14CC 4602203C */  c.lt.s     $f4, $f2
/* 167540 801C14D0 00000000 */  nop
/* 167544 801C14D4 4502000D */  bc1fl      .L801C150C_ovl7
/* 167548 801C14D8 44807000 */   mtc1      $zero, $f14
/* 16754C 801C14DC C426E6A4 */  lwc1       $f6, %lo(D_801CE6A4_ovl7)($at)
/* 167550 801C14E0 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 167554 801C14E4 44807000 */  mtc1       $zero, $f14
/* 167558 801C14E8 46060202 */  mul.s      $f8, $f0, $f6
/* 16755C 801C14EC 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 167560 801C14F0 E4880000 */  swc1       $f8, 0x0($a0)
/* 167564 801C14F4 8C580000 */  lw         $t8, 0x0($v0)
/* 167568 801C14F8 0018C880 */  sll        $t9, $t8, 2
/* 16756C 801C14FC 00D94021 */  addu       $t0, $a2, $t9
/* 167570 801C1500 10000013 */  b          .L801C1550_ovl7
/* 167574 801C1504 E50E0000 */   swc1      $f14, 0x0($t0)
/* 167578 801C1508 44807000 */  mtc1       $zero, $f14
.L801C150C_ovl7:
/* 16757C 801C150C 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 167580 801C1510 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 167584 801C1514 00C34821 */  addu       $t1, $a2, $v1
/* 167588 801C1518 E52E0000 */  swc1       $f14, 0x0($t1)
/* 16758C 801C151C 8C430000 */  lw         $v1, 0x0($v0)
/* 167590 801C1520 3C01801D */  lui        $at, %hi(D_801CE6A8_ovl7)
/* 167594 801C1524 00031880 */  sll        $v1, $v1, 2
/* 167598 801C1528 00C35021 */  addu       $t2, $a2, $v1
/* 16759C 801C152C C54A0000 */  lwc1       $f10, 0x0($t2)
/* 1675A0 801C1530 00A35821 */  addu       $t3, $a1, $v1
/* 1675A4 801C1534 E56A0000 */  swc1       $f10, 0x0($t3)
/* 1675A8 801C1538 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1675AC 801C153C C430E6A8 */  lwc1       $f16, %lo(D_801CE6A8_ovl7)($at)
/* 1675B0 801C1540 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1675B4 801C1544 000C6880 */  sll        $t5, $t4, 2
/* 1675B8 801C1548 002D0821 */  addu       $at, $at, $t5
/* 1675BC 801C154C E4306850 */  swc1       $f16, %lo(D_800E6850)($at)
.L801C1550_ovl7:
/* 1675C0 801C1550 8C430000 */  lw         $v1, 0x0($v0)
/* 1675C4 801C1554 3C0E800E */  lui        $t6, %hi(D_800E3210)
/* 1675C8 801C1558 25CE3210 */  addiu      $t6, $t6, %lo(D_800E3210)
/* 1675CC 801C155C 00031880 */  sll        $v1, $v1, 2
/* 1675D0 801C1560 006E2021 */  addu       $a0, $v1, $t6
/* 1675D4 801C1564 C4800000 */  lwc1       $f0, 0x0($a0)
/* 1675D8 801C1568 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 1675DC 801C156C 44819000 */  mtc1       $at, $f18
/* 1675E0 801C1570 460C003C */  c.lt.s     $f0, $f12
/* 1675E4 801C1574 3C01801D */  lui        $at, %hi(D_801CE6AC_ovl7)
/* 1675E8 801C1578 45020004 */  bc1fl      .L801C158C_ovl7
/* 1675EC 801C157C 46000086 */   mov.s     $f2, $f0
/* 1675F0 801C1580 10000002 */  b          .L801C158C_ovl7
/* 1675F4 801C1584 46000087 */   neg.s     $f2, $f0
/* 1675F8 801C1588 46000086 */  mov.s      $f2, $f0
.L801C158C_ovl7:
/* 1675FC 801C158C 4602903C */  c.lt.s     $f18, $f2
/* 167600 801C1590 00000000 */  nop
/* 167604 801C1594 4500000A */  bc1f       .L801C15C0_ovl7
/* 167608 801C1598 00000000 */   nop
/* 16760C 801C159C C424E6AC */  lwc1       $f4, %lo(D_801CE6AC_ovl7)($at)
/* 167610 801C15A0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 167614 801C15A4 46040182 */  mul.s      $f6, $f0, $f4
/* 167618 801C15A8 E4860000 */  swc1       $f6, 0x0($a0)
/* 16761C 801C15AC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 167620 801C15B0 000FC080 */  sll        $t8, $t7, 2
/* 167624 801C15B4 00380821 */  addu       $at, $at, $t8
/* 167628 801C15B8 03E00008 */  jr         $ra
/* 16762C 801C15BC E42E3750 */   swc1      $f14, %lo(D_800E3750)($at)
.L801C15C0_ovl7:
/* 167630 801C15C0 3C01801D */  lui        $at, %hi(D_801CE6B0_ovl7)
/* 167634 801C15C4 C428E6B0 */  lwc1       $f8, %lo(D_801CE6B0_ovl7)($at)
/* 167638 801C15C8 3C01800E */  lui        $at, %hi(D_800E3750)
/* 16763C 801C15CC 00230821 */  addu       $at, $at, $v1
/* 167640 801C15D0 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
/* 167644 801C15D4 8C590000 */  lw         $t9, 0x0($v0)
/* 167648 801C15D8 3C01801D */  lui        $at, %hi(D_801CE6B4_ovl7)
/* 16764C 801C15DC C42AE6B4 */  lwc1       $f10, %lo(D_801CE6B4_ovl7)($at)
/* 167650 801C15E0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 167654 801C15E4 00194080 */  sll        $t0, $t9, 2
/* 167658 801C15E8 00280821 */  addu       $at, $at, $t0
/* 16765C 801C15EC 03E00008 */  jr         $ra
/* 167660 801C15F0 E42A3C90 */   swc1      $f10, %lo(D_800E3C90)($at)
.L801C15F4_ovl7:
/* 167664 801C15F4 C430E6B8 */  lwc1       $f16, %lo(D_801CE6B8_ovl7)($at)
/* 167668 801C15F8 3C01800E */  lui        $at, %hi(D_800E3750)
/* 16766C 801C15FC 00230821 */  addu       $at, $at, $v1
/* 167670 801C1600 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 167674 801C1604 8C490000 */  lw         $t1, 0x0($v0)
/* 167678 801C1608 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 16767C 801C160C 44819000 */  mtc1       $at, $f18
/* 167680 801C1610 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 167684 801C1614 00095080 */  sll        $t2, $t1, 2
/* 167688 801C1618 002A0821 */  addu       $at, $at, $t2
/* 16768C 801C161C E4323C90 */  swc1       $f18, %lo(D_800E3C90)($at)
/* 167690 801C1620 03E00008 */  jr         $ra
/* 167694 801C1624 00000000 */   nop
