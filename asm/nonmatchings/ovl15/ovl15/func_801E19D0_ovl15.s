nonmatching func_801E19D0_ovl15, 0x1C8

glabel func_801E19D0_ovl15
    /* 20C530 801E19D0 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 20C534 801E19D4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 20C538 801E19D8 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 20C53C 801E19DC 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 20C540 801E19E0 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 20C544 801E19E4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 20C548 801E19E8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 20C54C 801E19EC AFA40050 */  sw         $a0, 0x50($sp)
    /* 20C550 801E19F0 AFA50054 */  sw         $a1, 0x54($sp)
    /* 20C554 801E19F4 AFA60058 */  sw         $a2, 0x58($sp)
    /* 20C558 801E19F8 8DC40000 */  lw         $a0, 0x0($t6)
    /* 20C55C 801E19FC 3C10800E */  lui        $s0, %hi(D_800E1B50)
    /* 20C560 801E1A00 00047880 */  sll        $t7, $a0, 2
    /* 20C564 801E1A04 020F8021 */  addu       $s0, $s0, $t7
    /* 20C568 801E1A08 0C044554 */  jal        func_80111550
    /* 20C56C 801E1A0C 8E101B50 */   lw        $s0, %lo(D_800E1B50)($s0)
    /* 20C570 801E1A10 8E380000 */  lw         $t8, 0x0($s1)
    /* 20C574 801E1A14 8E04008C */  lw         $a0, 0x8C($s0)
    /* 20C578 801E1A18 0C044722 */  jal        func_80111C88
    /* 20C57C 801E1A1C 8F050000 */   lw        $a1, 0x0($t8)
    /* 20C580 801E1A20 10400012 */  beqz       $v0, .L801E1A6C_ovl15
    /* 20C584 801E1A24 00402025 */   or        $a0, $v0, $zero
    /* 20C588 801E1A28 8FA30050 */  lw         $v1, 0x50($sp)
    /* 20C58C 801E1A2C 50600004 */  beql       $v1, $zero, .L801E1A40_ovl15
    /* 20C590 801E1A30 8FA30054 */   lw        $v1, 0x54($sp)
    /* 20C594 801E1A34 8C590024 */  lw         $t9, 0x24($v0)
    /* 20C598 801E1A38 AF230008 */  sw         $v1, 0x8($t9)
    /* 20C59C 801E1A3C 8FA30054 */  lw         $v1, 0x54($sp)
  .L801E1A40_ovl15:
    /* 20C5A0 801E1A40 50600004 */  beql       $v1, $zero, .L801E1A54_ovl15
    /* 20C5A4 801E1A44 8FA30058 */   lw        $v1, 0x58($sp)
    /* 20C5A8 801E1A48 8C480024 */  lw         $t0, 0x24($v0)
    /* 20C5AC 801E1A4C AD030030 */  sw         $v1, 0x30($t0)
    /* 20C5B0 801E1A50 8FA30058 */  lw         $v1, 0x58($sp)
  .L801E1A54_ovl15:
    /* 20C5B4 801E1A54 10600003 */  beqz       $v1, .L801E1A64_ovl15
    /* 20C5B8 801E1A58 00000000 */   nop
    /* 20C5BC 801E1A5C 8C490024 */  lw         $t1, 0x24($v0)
    /* 20C5C0 801E1A60 AD230058 */  sw         $v1, 0x58($t1)
  .L801E1A64_ovl15:
    /* 20C5C4 801E1A64 0C0447B3 */  jal        func_80111ECC
    /* 20C5C8 801E1A68 00000000 */   nop
  .L801E1A6C_ovl15:
    /* 20C5CC 801E1A6C 0C0442C0 */  jal        func_80110B00
    /* 20C5D0 801E1A70 27A40030 */   addiu     $a0, $sp, 0x30
    /* 20C5D4 801E1A74 10400010 */  beqz       $v0, .L801E1AB8_ovl15
    /* 20C5D8 801E1A78 00000000 */   nop
    /* 20C5DC 801E1A7C 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 20C5E0 801E1A80 93AA0032 */  lbu        $t2, 0x32($sp)
    /* 20C5E4 801E1A84 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 20C5E8 801E1A88 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 20C5EC 801E1A8C 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 20C5F0 801E1A90 000C6880 */  sll        $t5, $t4, 2
    /* 20C5F4 801E1A94 006D7021 */  addu       $t6, $v1, $t5
    /* 20C5F8 801E1A98 ADCA0000 */  sw         $t2, 0x0($t6)
    /* 20C5FC 801E1A9C 93AF0033 */  lbu        $t7, 0x33($sp)
    /* 20C600 801E1AA0 A20F0043 */  sb         $t7, 0x43($s0)
    /* 20C604 801E1AA4 93B80030 */  lbu        $t8, 0x30($sp)
    /* 20C608 801E1AA8 A218003E */  sb         $t8, 0x3E($s0)
    /* 20C60C 801E1AAC 93B90031 */  lbu        $t9, 0x31($sp)
    /* 20C610 801E1AB0 1000002F */  b          .L801E1B70_ovl15
    /* 20C614 801E1AB4 A219003F */   sb        $t9, 0x3F($s0)
  .L801E1AB8_ovl15:
    /* 20C618 801E1AB8 0C0443F5 */  jal        func_80110FD4
    /* 20C61C 801E1ABC 27A40030 */   addiu     $a0, $sp, 0x30
    /* 20C620 801E1AC0 10400010 */  beqz       $v0, .L801E1B04_ovl15
    /* 20C624 801E1AC4 00000000 */   nop
    /* 20C628 801E1AC8 8E290000 */  lw         $t1, 0x0($s1)
    /* 20C62C 801E1ACC 93A80032 */  lbu        $t0, 0x32($sp)
    /* 20C630 801E1AD0 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 20C634 801E1AD4 8D2B0000 */  lw         $t3, 0x0($t1)
    /* 20C638 801E1AD8 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 20C63C 801E1ADC 000B6080 */  sll        $t4, $t3, 2
    /* 20C640 801E1AE0 006C6821 */  addu       $t5, $v1, $t4
    /* 20C644 801E1AE4 ADA80000 */  sw         $t0, 0x0($t5)
    /* 20C648 801E1AE8 93AA0033 */  lbu        $t2, 0x33($sp)
    /* 20C64C 801E1AEC A20A0043 */  sb         $t2, 0x43($s0)
    /* 20C650 801E1AF0 93AE0030 */  lbu        $t6, 0x30($sp)
    /* 20C654 801E1AF4 A20E003E */  sb         $t6, 0x3E($s0)
    /* 20C658 801E1AF8 93AF0031 */  lbu        $t7, 0x31($sp)
    /* 20C65C 801E1AFC 1000001C */  b          .L801E1B70_ovl15
    /* 20C660 801E1B00 A20F003F */   sb        $t7, 0x3F($s0)
  .L801E1B04_ovl15:
    /* 20C664 801E1B04 0C044054 */  jal        func_80110150
    /* 20C668 801E1B08 27A40030 */   addiu     $a0, $sp, 0x30
    /* 20C66C 801E1B0C 50400011 */  beql       $v0, $zero, .L801E1B54_ovl15
    /* 20C670 801E1B10 8E2E0000 */   lw        $t6, 0x0($s1)
    /* 20C674 801E1B14 8E390000 */  lw         $t9, 0x0($s1)
    /* 20C678 801E1B18 93B80032 */  lbu        $t8, 0x32($sp)
    /* 20C67C 801E1B1C 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 20C680 801E1B20 8F290000 */  lw         $t1, 0x0($t9)
    /* 20C684 801E1B24 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 20C688 801E1B28 00095880 */  sll        $t3, $t1, 2
    /* 20C68C 801E1B2C 006B6021 */  addu       $t4, $v1, $t3
    /* 20C690 801E1B30 AD980000 */  sw         $t8, 0x0($t4)
    /* 20C694 801E1B34 93A80033 */  lbu        $t0, 0x33($sp)
    /* 20C698 801E1B38 A2080043 */  sb         $t0, 0x43($s0)
    /* 20C69C 801E1B3C 93AD0030 */  lbu        $t5, 0x30($sp)
    /* 20C6A0 801E1B40 A20D003E */  sb         $t5, 0x3E($s0)
    /* 20C6A4 801E1B44 93AA0031 */  lbu        $t2, 0x31($sp)
    /* 20C6A8 801E1B48 10000009 */  b          .L801E1B70_ovl15
    /* 20C6AC 801E1B4C A20A003F */   sb        $t2, 0x3F($s0)
    /* 20C6B0 801E1B50 8E2E0000 */  lw         $t6, 0x0($s1)
  .L801E1B54_ovl15:
    /* 20C6B4 801E1B54 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 20C6B8 801E1B58 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 20C6BC 801E1B5C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 20C6C0 801E1B60 000FC880 */  sll        $t9, $t7, 2
    /* 20C6C4 801E1B64 00794821 */  addu       $t1, $v1, $t9
    /* 20C6C8 801E1B68 AD200000 */  sw         $zero, 0x0($t1)
    /* 20C6CC 801E1B6C A2000043 */  sb         $zero, 0x43($s0)
  .L801E1B70_ovl15:
    /* 20C6D0 801E1B70 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 20C6D4 801E1B74 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 20C6D8 801E1B78 8FB10018 */  lw         $s1, 0x18($sp)
    /* 20C6DC 801E1B7C 8D780000 */  lw         $t8, 0x0($t3)
    /* 20C6E0 801E1B80 8FB00014 */  lw         $s0, 0x14($sp)
    /* 20C6E4 801E1B84 00186080 */  sll        $t4, $t8, 2
    /* 20C6E8 801E1B88 006C4021 */  addu       $t0, $v1, $t4
    /* 20C6EC 801E1B8C 8D020000 */  lw         $v0, 0x0($t0)
    /* 20C6F0 801E1B90 03E00008 */  jr         $ra
    /* 20C6F4 801E1B94 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_801E19D0_ovl15
.size func_801E19D0_ovl15, . - func_801E19D0_ovl15
