nonmatching func_802169E4_ovl9, 0x1BC

glabel func_802169E4_ovl9
    /* 1C4A34 802169E4 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 1C4A38 802169E8 AFB30034 */  sw         $s3, 0x34($sp)
    /* 1C4A3C 802169EC 3C138005 */  lui        $s3, %hi(omCurrentObj)
    /* 1C4A40 802169F0 2673A7C4 */  addiu      $s3, $s3, %lo(omCurrentObj)
    /* 1C4A44 802169F4 8E6E0000 */  lw         $t6, 0x0($s3)
    /* 1C4A48 802169F8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 1C4A4C 802169FC AFB40038 */  sw         $s4, 0x38($sp)
    /* 1C4A50 80216A00 AFB20030 */  sw         $s2, 0x30($sp)
    /* 1C4A54 80216A04 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 1C4A58 80216A08 AFB00028 */  sw         $s0, 0x28($sp)
    /* 1C4A5C 80216A0C F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 1C4A60 80216A10 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 1C4A64 80216A14 AFA40058 */  sw         $a0, 0x58($sp)
    /* 1C4A68 80216A18 8DC20000 */  lw         $v0, 0x0($t6)
    /* 1C4A6C 80216A1C 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 1C4A70 80216A20 3C10800E */  lui        $s0, %hi(D_800E1B50)
    /* 1C4A74 80216A24 00021080 */  sll        $v0, $v0, 2
    /* 1C4A78 80216A28 00220821 */  addu       $at, $at, $v0
    /* 1C4A7C 80216A2C 02028021 */  addu       $s0, $s0, $v0
    /* 1C4A80 80216A30 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
    /* 1C4A84 80216A34 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
    /* 1C4A88 80216A38 3C0F801D */  lui        $t7, %hi(D_801CCDC0)
    /* 1C4A8C 80216A3C 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
    /* 1C4A90 80216A40 25EFCDC0 */  addiu      $t7, $t7, %lo(D_801CCDC0)
    /* 1C4A94 80216A44 44816000 */  mtc1       $at, $f12
    /* 1C4A98 80216A48 0C066F0D */  jal        func_8019BC34_ovl7
    /* 1C4A9C 80216A4C AE0F0098 */   sw        $t7, 0x98($s0)
    /* 1C4AA0 80216A50 9218003C */  lbu        $t8, 0x3C($s0)
    /* 1C4AA4 80216A54 3C040001 */  lui        $a0, (0x10046 >> 16)
    /* 1C4AA8 80216A58 34840046 */  ori        $a0, $a0, (0x10046 & 0xFFFF)
    /* 1C4AAC 80216A5C 1700000C */  bnez       $t8, .L80216A90_ovl9
    /* 1C4AB0 80216A60 00000000 */   nop
    /* 1C4AB4 80216A64 8E790000 */  lw         $t9, 0x0($s3)
    /* 1C4AB8 80216A68 3C14800E */  lui        $s4, %hi(D_800E6A10)
    /* 1C4ABC 80216A6C 26946A10 */  addiu      $s4, $s4, %lo(D_800E6A10)
    /* 1C4AC0 80216A70 8F220000 */  lw         $v0, 0x0($t9)
    /* 1C4AC4 80216A74 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 1C4AC8 80216A78 00021080 */  sll        $v0, $v0, 2
    /* 1C4ACC 80216A7C 02824021 */  addu       $t0, $s4, $v0
    /* 1C4AD0 80216A80 C5000000 */  lwc1       $f0, 0x0($t0)
    /* 1C4AD4 80216A84 00220821 */  addu       $at, $at, $v0
    /* 1C4AD8 80216A88 46000100 */  add.s      $f4, $f0, $f0
    /* 1C4ADC 80216A8C E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
  .L80216A90_ovl9:
    /* 1C4AE0 80216A90 3C14800E */  lui        $s4, %hi(D_800E6A10)
    /* 1C4AE4 80216A94 0C02A7A9 */  jal        func_800A9EA4
    /* 1C4AE8 80216A98 26946A10 */   addiu     $s4, $s4, %lo(D_800E6A10)
    /* 1C4AEC 80216A9C 3C01800D */  lui        $at, %hi(gameTicksPerDraw)
    /* 1C4AF0 80216AA0 C4266B10 */  lwc1       $f6, %lo(gameTicksPerDraw)($at)
    /* 1C4AF4 80216AA4 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* 1C4AF8 80216AA8 44814000 */  mtc1       $at, $f8
    /* 1C4AFC 80216AAC 00000000 */  nop
    /* 1C4B00 80216AB0 46083302 */  mul.s      $f12, $f6, $f8
    /* 1C4B04 80216AB4 0C02BB30 */  jal        func_800AECC0
    /* 1C4B08 80216AB8 00000000 */   nop
    /* 1C4B0C 80216ABC 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
    /* 1C4B10 80216AC0 4481B000 */  mtc1       $at, $f22
    /* 1C4B14 80216AC4 3C0143A0 */  lui        $at, (0x43A00000 >> 16)
    /* 1C4B18 80216AC8 4481A000 */  mtc1       $at, $f20
    /* 1C4B1C 80216ACC 27B20048 */  addiu      $s2, $sp, 0x48
    /* 1C4B20 80216AD0 24110003 */  addiu      $s1, $zero, 0x3
    /* 1C4B24 80216AD4 4600A306 */  mov.s      $f12, $f20
  .L80216AD8_ovl9:
    /* 1C4B28 80216AD8 0C066A6B */  jal        func_8019A9AC_ovl7
    /* 1C4B2C 80216ADC 4600B386 */   mov.s     $f14, $f22
    /* 1C4B30 80216AE0 14510021 */  bne        $v0, $s1, .L80216B68_ovl9
    /* 1C4B34 80216AE4 00000000 */   nop
    /* 1C4B38 80216AE8 0C066A40 */  jal        func_8019A900_ovl7
    /* 1C4B3C 80216AEC 02402025 */   or        $a0, $s2, $zero
    /* 1C4B40 80216AF0 10400010 */  beqz       $v0, .L80216B34_ovl9
    /* 1C4B44 80216AF4 8FA90048 */   lw        $t1, 0x48($sp)
    /* 1C4B48 80216AF8 8E6A0000 */  lw         $t2, 0x0($s3)
    /* 1C4B4C 80216AFC 44895000 */  mtc1       $t1, $f10
    /* 1C4B50 80216B00 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 1C4B54 80216B04 46805420 */  cvt.s.w    $f16, $f10
    /* 1C4B58 80216B08 000B6080 */  sll        $t4, $t3, 2
    /* 1C4B5C 80216B0C 028C6821 */  addu       $t5, $s4, $t4
    /* 1C4B60 80216B10 C5B20000 */  lwc1       $f18, 0x0($t5)
    /* 1C4B64 80216B14 46128032 */  c.eq.s     $f16, $f18
    /* 1C4B68 80216B18 00000000 */  nop
    /* 1C4B6C 80216B1C 45030006 */  bc1tl      .L80216B38_ovl9
    /* 1C4B70 80216B20 920F003C */   lbu       $t7, 0x3C($s0)
    /* 1C4B74 80216B24 9202003C */  lbu        $v0, 0x3C($s0)
    /* 1C4B78 80216B28 14400002 */  bnez       $v0, .L80216B34_ovl9
    /* 1C4B7C 80216B2C 244E0001 */   addiu     $t6, $v0, 0x1
    /* 1C4B80 80216B30 A20E003C */  sb         $t6, 0x3C($s0)
  .L80216B34_ovl9:
    /* 1C4B84 80216B34 920F003C */  lbu        $t7, 0x3C($s0)
  .L80216B38_ovl9:
    /* 1C4B88 80216B38 15E0000B */  bnez       $t7, .L80216B68_ovl9
    /* 1C4B8C 80216B3C 3C01800D */   lui       $at, %hi(gameTicksPerDraw)
    /* 1C4B90 80216B40 0C02BB30 */  jal        func_800AECC0
    /* 1C4B94 80216B44 C42C6B10 */   lwc1      $f12, %lo(gameTicksPerDraw)($at)
    /* 1C4B98 80216B48 8E790000 */  lw         $t9, 0x0($s3)
    /* 1C4B9C 80216B4C 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1C4BA0 80216B50 24180002 */  addiu      $t8, $zero, 0x2
    /* 1C4BA4 80216B54 8F280000 */  lw         $t0, 0x0($t9)
    /* 1C4BA8 80216B58 00084880 */  sll        $t1, $t0, 2
    /* 1C4BAC 80216B5C 00290821 */  addu       $at, $at, $t1
    /* 1C4BB0 80216B60 10000005 */  b          .L80216B78_ovl9
    /* 1C4BB4 80216B64 AC38DC50 */   sw        $t8, %lo(gEntityFuncListIDArray)($at)
  .L80216B68_ovl9:
    /* 1C4BB8 80216B68 0C002DAF */  jal        ohSleep
    /* 1C4BBC 80216B6C 24040001 */   addiu     $a0, $zero, 0x1
    /* 1C4BC0 80216B70 1000FFD9 */  b          .L80216AD8_ovl9
    /* 1C4BC4 80216B74 4600A306 */   mov.s     $f12, $f20
  .L80216B78_ovl9:
    /* 1C4BC8 80216B78 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 1C4BCC 80216B7C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 1C4BD0 80216B80 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 1C4BD4 80216B84 8FB00028 */  lw         $s0, 0x28($sp)
    /* 1C4BD8 80216B88 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 1C4BDC 80216B8C 8FB20030 */  lw         $s2, 0x30($sp)
    /* 1C4BE0 80216B90 8FB30034 */  lw         $s3, 0x34($sp)
    /* 1C4BE4 80216B94 8FB40038 */  lw         $s4, 0x38($sp)
    /* 1C4BE8 80216B98 03E00008 */  jr         $ra
    /* 1C4BEC 80216B9C 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_802169E4_ovl9
.size func_802169E4_ovl9, . - func_802169E4_ovl9
