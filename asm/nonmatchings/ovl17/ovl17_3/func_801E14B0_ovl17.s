nonmatching func_801E14B0_ovl17, 0xF4

glabel func_801E14B0_ovl17
    /* 22C6A0 801E14B0 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 22C6A4 801E14B4 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 22C6A8 801E14B8 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 22C6AC 801E14BC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 22C6B0 801E14C0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 22C6B4 801E14C4 8DC20000 */  lw         $v0, 0x0($t6)
    /* 22C6B8 801E14C8 3C10800E */  lui        $s0, %hi(D_800E1B50)
    /* 22C6BC 801E14CC 00027880 */  sll        $t7, $v0, 2
    /* 22C6C0 801E14D0 020F8021 */  addu       $s0, $s0, $t7
    /* 22C6C4 801E14D4 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
    /* 22C6C8 801E14D8 8E18008C */  lw         $t8, 0x8C($s0)
    /* 22C6CC 801E14DC 17000003 */  bnez       $t8, .L801E14EC_ovl17
    /* 22C6D0 801E14E0 00000000 */   nop
    /* 22C6D4 801E14E4 1000002A */  b          .L801E1590_ovl17
    /* 22C6D8 801E14E8 00001025 */   or        $v0, $zero, $zero
  .L801E14EC_ovl17:
    /* 22C6DC 801E14EC 0C044554 */  jal        func_80111550
    /* 22C6E0 801E14F0 00402025 */   or        $a0, $v0, $zero
    /* 22C6E4 801E14F4 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 22C6E8 801E14F8 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 22C6EC 801E14FC 8E04008C */  lw         $a0, 0x8C($s0)
    /* 22C6F0 801E1500 0C044722 */  jal        func_80111C88
    /* 22C6F4 801E1504 8F250000 */   lw        $a1, 0x0($t9)
    /* 22C6F8 801E1508 0C0447B3 */  jal        func_80111ECC
    /* 22C6FC 801E150C 00402025 */   or        $a0, $v0, $zero
    /* 22C700 801E1510 0C044054 */  jal        func_80110150
    /* 22C704 801E1514 27A4002C */   addiu     $a0, $sp, 0x2C
    /* 22C708 801E1518 1040000C */  beqz       $v0, .L801E154C_ovl17
    /* 22C70C 801E151C 3C0D8005 */   lui       $t5, %hi(omCurrentObj)
    /* 22C710 801E1520 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 22C714 801E1524 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 22C718 801E1528 93A8002E */  lbu        $t0, 0x2E($sp)
    /* 22C71C 801E152C 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* 22C720 801E1530 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 22C724 801E1534 93AC002F */  lbu        $t4, 0x2F($sp)
    /* 22C728 801E1538 000A5880 */  sll        $t3, $t2, 2
    /* 22C72C 801E153C 002B0821 */  addu       $at, $at, $t3
    /* 22C730 801E1540 AC2883E0 */  sw         $t0, %lo(D_800E83E0)($at)
    /* 22C734 801E1544 10000008 */  b          .L801E1568_ovl17
    /* 22C738 801E1548 A20C0043 */   sb        $t4, 0x43($s0)
  .L801E154C_ovl17:
    /* 22C73C 801E154C 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 22C740 801E1550 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* 22C744 801E1554 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 22C748 801E1558 000E7880 */  sll        $t7, $t6, 2
    /* 22C74C 801E155C 002F0821 */  addu       $at, $at, $t7
    /* 22C750 801E1560 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
    /* 22C754 801E1564 A2000043 */  sb         $zero, 0x43($s0)
  .L801E1568_ovl17:
    /* 22C758 801E1568 8E040090 */  lw         $a0, 0x90($s0)
    /* 22C75C 801E156C 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 22C760 801E1570 50800007 */  beql       $a0, $zero, .L801E1590_ovl17
    /* 22C764 801E1574 00001025 */   or        $v0, $zero, $zero
    /* 22C768 801E1578 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 22C76C 801E157C 0C044681 */  jal        func_80111A04
    /* 22C770 801E1580 8F050000 */   lw        $a1, 0x0($t8)
    /* 22C774 801E1584 0C044713 */  jal        func_80111C4C
    /* 22C778 801E1588 00402025 */   or        $a0, $v0, $zero
    /* 22C77C 801E158C 00001025 */  or         $v0, $zero, $zero
  .L801E1590_ovl17:
    /* 22C780 801E1590 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 22C784 801E1594 8FB00018 */  lw         $s0, 0x18($sp)
    /* 22C788 801E1598 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 22C78C 801E159C 03E00008 */  jr         $ra
    /* 22C790 801E15A0 00000000 */   nop
endlabel func_801E14B0_ovl17
.size func_801E14B0_ovl17, . - func_801E14B0_ovl17
