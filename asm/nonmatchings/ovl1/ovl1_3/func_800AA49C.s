nonmatching func_800AA49C, 0x128

glabel func_800AA49C
    /* 526EC 800AA49C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 526F0 800AA4A0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 526F4 800AA4A4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 526F8 800AA4A8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 526FC 800AA4AC AFA40028 */  sw         $a0, 0x28($sp)
    /* 52700 800AA4B0 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 52704 800AA4B4 AFA60030 */  sw         $a2, 0x30($sp)
    /* 52708 800AA4B8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 5270C 800AA4BC 3C01800E */  lui        $at, %hi(D_800E02D0)
    /* 52710 800AA4C0 0007C402 */  srl        $t8, $a3, 16
    /* 52714 800AA4C4 000E7880 */  sll        $t7, $t6, 2
    /* 52718 800AA4C8 002F0821 */  addu       $at, $at, $t7
    /* 5271C 800AA4CC AC2702D0 */  sw         $a3, %lo(D_800E02D0)($at)
    /* 52720 800AA4D0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 52724 800AA4D4 0018C880 */  sll        $t9, $t8, 2
    /* 52728 800AA4D8 3C08800D */  lui        $t0, %hi(D_800D00C4)
    /* 5272C 800AA4DC 01194021 */  addu       $t0, $t0, $t9
    /* 52730 800AA4E0 8D0800C4 */  lw         $t0, %lo(D_800D00C4)($t0)
    /* 52734 800AA4E4 30E9FFFF */  andi       $t1, $a3, 0xFFFF
    /* 52738 800AA4E8 3C01800E */  lui        $at, %hi(D_800DFD90)
    /* 5273C 800AA4EC 000C6880 */  sll        $t5, $t4, 2
    /* 52740 800AA4F0 00095080 */  sll        $t2, $t1, 2
    /* 52744 800AA4F4 002D0821 */  addu       $at, $at, $t5
    /* 52748 800AA4F8 AC24FD90 */  sw         $a0, %lo(D_800DFD90)($at)
    /* 5274C 800AA4FC 010A1821 */  addu       $v1, $t0, $t2
    /* 52750 800AA500 8C660000 */  lw         $a2, 0x0($v1)
    /* 52754 800AA504 00E02025 */  or         $a0, $a3, $zero
    /* 52758 800AA508 24050003 */  addiu      $a1, $zero, 0x3
    /* 5275C 800AA50C 10C0000B */  beqz       $a2, .L800AA53C
    /* 52760 800AA510 00000000 */   nop
    /* 52764 800AA514 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 52768 800AA518 3C01800E */  lui        $at, %hi(D_800DFA10)
    /* 5276C 800AA51C 24050001 */  addiu      $a1, $zero, 0x1
    /* 52770 800AA520 000E7880 */  sll        $t7, $t6, 2
    /* 52774 800AA524 002F0821 */  addu       $at, $at, $t7
    /* 52778 800AA528 AC26FA10 */  sw         $a2, %lo(D_800DFA10)($at)
    /* 5277C 800AA52C 0C02A159 */  jal        func_800A8564
    /* 52780 800AA530 8C640000 */   lw        $a0, 0x0($v1)
    /* 52784 800AA534 1000000C */  b          .L800AA568
    /* 52788 800AA538 00000000 */   nop
  .L800AA53C:
    /* 5278C 800AA53C 0C02A494 */  jal        func_800A9250
    /* 52790 800AA540 AFA30024 */   sw        $v1, 0x24($sp)
    /* 52794 800AA544 8FA30024 */  lw         $v1, 0x24($sp)
    /* 52798 800AA548 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 5279C 800AA54C 3C01800E */  lui        $at, %hi(D_800DFA10)
    /* 527A0 800AA550 AC620000 */  sw         $v0, 0x0($v1)
    /* 527A4 800AA554 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 527A8 800AA558 8F190000 */  lw         $t9, 0x0($t8)
    /* 527AC 800AA55C 00194880 */  sll        $t1, $t9, 2
    /* 527B0 800AA560 00290821 */  addu       $at, $at, $t1
    /* 527B4 800AA564 AC22FA10 */  sw         $v0, %lo(D_800DFA10)($at)
  .L800AA568:
    /* 527B8 800AA568 0C02A6D2 */  jal        func_800A9B48
    /* 527BC 800AA56C 8FA4002C */   lw        $a0, 0x2C($sp)
    /* 527C0 800AA570 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 527C4 800AA574 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 527C8 800AA578 3C0A800E */  lui        $t2, %hi(D_800DF690)
    /* 527CC 800AA57C 3C0C800E */  lui        $t4, %hi(D_800DFA10)
    /* 527D0 800AA580 8D030000 */  lw         $v1, 0x0($t0)
    /* 527D4 800AA584 C7A40038 */  lwc1       $f4, 0x38($sp)
    /* 527D8 800AA588 8FA40028 */  lw         $a0, 0x28($sp)
    /* 527DC 800AA58C 00031880 */  sll        $v1, $v1, 2
    /* 527E0 800AA590 01435021 */  addu       $t2, $t2, $v1
    /* 527E4 800AA594 01836021 */  addu       $t4, $t4, $v1
    /* 527E8 800AA598 8D8CFA10 */  lw         $t4, %lo(D_800DFA10)($t4)
    /* 527EC 800AA59C 8D4AF690 */  lw         $t2, %lo(D_800DF690)($t2)
    /* 527F0 800AA5A0 8FA60030 */  lw         $a2, 0x30($sp)
    /* 527F4 800AA5A4 8D870000 */  lw         $a3, 0x0($t4)
    /* 527F8 800AA5A8 8D450000 */  lw         $a1, 0x0($t2)
    /* 527FC 800AA5AC 0C02C7F4 */  jal        func_800B1FD0
    /* 52800 800AA5B0 E7A40010 */   swc1      $f4, 0x10($sp)
    /* 52804 800AA5B4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 52808 800AA5B8 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 5280C 800AA5BC 03E00008 */  jr         $ra
    /* 52810 800AA5C0 00000000 */   nop
endlabel func_800AA49C
.size func_800AA49C, . - func_800AA49C
