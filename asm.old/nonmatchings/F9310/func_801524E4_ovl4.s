glabel func_801524E4_ovl4
/* F9A14 801524E4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* F9A18 801524E8 AFB10024 */  sw         $s1, 0x24($sp)
/* F9A1C 801524EC 3C11800D */  lui        $s1, %hi(D_800D6B98)
/* F9A20 801524F0 AFB20028 */  sw         $s2, 0x28($sp)
/* F9A24 801524F4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* F9A28 801524F8 3C01420C */  lui        $at, (0x420C0000 >> 16)
/* F9A2C 801524FC 3C12800C */  lui        $s2, %hi(D_800BE560)
/* F9A30 80152500 26316B98 */  addiu      $s1, $s1, %lo(D_800D6B98)
/* F9A34 80152504 AFB40030 */  sw         $s4, 0x30($sp)
/* F9A38 80152508 AFB3002C */  sw         $s3, 0x2C($sp)
/* F9A3C 8015250C AFB00020 */  sw         $s0, 0x20($sp)
/* F9A40 80152510 4481A000 */  mtc1       $at, $f20
/* F9A44 80152514 2652E560 */  addiu      $s2, $s2, %lo(D_800BE560)
/* F9A48 80152518 AFBF0034 */  sw         $ra, 0x34($sp)
/* F9A4C 8015251C 00008025 */  or         $s0, $zero, $zero
/* F9A50 80152520 27B30050 */  addiu      $s3, $sp, 0x50
/* F9A54 80152524 27B40044 */  addiu      $s4, $sp, 0x44
/* F9A58 80152528 8E240000 */  lw         $a0, 0x0($s1)
.L8015252C_ovl4:
/* F9A5C 8015252C 12000005 */  beqz       $s0, .L80152544_ovl4
/* F9A60 80152530 00000000 */   nop
/* F9A64 80152534 0C054888 */  jal        func_80152220_ovl4
/* F9A68 80152538 2605FFFF */   addiu     $a1, $s0, -0x1
/* F9A6C 8015253C 50400019 */  beql       $v0, $zero, .L801525A4_ovl4
/* F9A70 80152540 8E240000 */   lw        $a0, 0x0($s1)
.L80152544_ovl4:
/* F9A74 80152544 0C0548D8 */  jal        func_80152360_ovl4
.L80152548_ovl3:
/* F9A78 80152548 02602025 */   or        $a0, $s3, $zero
/* F9A7C 8015254C 02802025 */  or         $a0, $s4, $zero
/* F9A80 80152550 8E250000 */  lw         $a1, 0x0($s1)
/* F9A84 80152554 0C0548E8 */  jal        func_801523A0_ovl4
/* F9A88 80152558 02003025 */   or        $a2, $s0, $zero
/* F9A8C 8015255C C7A40044 */  lwc1       $f4, 0x44($sp)
/* F9A90 80152560 C7A60050 */  lwc1       $f6, 0x50($sp)
/* F9A94 80152564 C7A8004C */  lwc1       $f8, 0x4C($sp)
/* F9A98 80152568 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* F9A9C 8015256C 46062001 */  sub.s      $f0, $f4, $f6
/* F9AA0 80152570 460A4081 */  sub.s      $f2, $f8, $f10
/* F9AA4 80152574 46000402 */  mul.s      $f16, $f0, $f0
/* F9AA8 80152578 00000000 */  nop
/* F9AAC 8015257C 46021482 */  mul.s      $f18, $f2, $f2
/* F9AB0 80152580 0C00CAC8 */  jal        sqrtf
/* F9AB4 80152584 46128300 */   add.s     $f12, $f16, $f18
/* F9AB8 80152588 4614003E */  c.le.s     $f0, $f20
/* F9ABC 8015258C 00000000 */  nop
/* F9AC0 80152590 45020004 */  bc1fl      .L801525A4_ovl4
.L80152594_ovl3:
/* F9AC4 80152594 8E240000 */   lw        $a0, 0x0($s1)
/* F9AC8 80152598 1000000A */  b          .L801525C4_ovl4
/* F9ACC 8015259C 02001025 */   or        $v0, $s0, $zero
/* F9AD0 801525A0 8E240000 */  lw         $a0, 0x0($s1)
.L801525A4_ovl4:
/* F9AD4 801525A4 26100001 */  addiu      $s0, $s0, 0x1
/* F9AD8 801525A8 00047080 */  sll        $t6, $a0, 2
/* F9ADC 801525AC 024E7821 */  addu       $t7, $s2, $t6
/* F9AE0 801525B0 8DF80000 */  lw         $t8, 0x0($t7)
.L801525B4_ovl6:
/* F9AE4 801525B4 0310082B */  sltu       $at, $t8, $s0
/* F9AE8 801525B8 1020FFDC */  beqz       $at, .L8015252C_ovl4
/* F9AEC 801525BC 00000000 */   nop
/* F9AF0 801525C0 2402029A */  addiu      $v0, $zero, 0x29A
.L801525C4_ovl4:
/* F9AF4 801525C4 8FBF0034 */  lw         $ra, 0x34($sp)
/* F9AF8 801525C8 D7B40018 */  ldc1       $f20, 0x18($sp)
.L801525CC_ovl6:
/* F9AFC 801525CC 8FB00020 */  lw         $s0, 0x20($sp)
/* F9B00 801525D0 8FB10024 */  lw         $s1, 0x24($sp)
/* F9B04 801525D4 8FB20028 */  lw         $s2, 0x28($sp)
/* F9B08 801525D8 8FB3002C */  lw         $s3, 0x2C($sp)
/* F9B0C 801525DC 8FB40030 */  lw         $s4, 0x30($sp)
/* F9B10 801525E0 03E00008 */  jr         $ra
/* F9B14 801525E4 27BD0060 */   addiu     $sp, $sp, 0x60
