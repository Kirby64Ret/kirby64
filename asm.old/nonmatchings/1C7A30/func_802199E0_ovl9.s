glabel func_802199E0_ovl9
/* 1C7A30 802199E0 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 1C7A34 802199E4 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 1C7A38 802199E8 8CEE0000 */  lw         $t6, 0x0($a3)
/* 1C7A3C 802199EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C7A40 802199F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C7A44 802199F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 1C7A48 802199F8 8DC20000 */  lw         $v0, 0x0($t6)
/* 1C7A4C 802199FC 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1C7A50 80219A00 3C0F801B */  lui        $t7, %hi(func_801ACF5C_ovl7)
/* 1C7A54 80219A04 00021080 */  sll        $v0, $v0, 2
/* 1C7A58 80219A08 00621821 */  addu       $v1, $v1, $v0
/* 1C7A5C 80219A0C 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1C7A60 80219A10 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1C7A64 80219A14 00220821 */  addu       $at, $at, $v0
/* 1C7A68 80219A18 25EFCF5C */  addiu      $t7, $t7, %lo(func_801ACF5C_ovl7)
/* 1C7A6C 80219A1C 3C18801D */  lui        $t8, %hi(D_801CB548)
/* 1C7A70 80219A20 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 1C7A74 80219A24 2718B548 */  addiu      $t8, $t8, %lo(D_801CB548)
/* 1C7A78 80219A28 AC780098 */  sw         $t8, 0x98($v1)
/* 1C7A7C 80219A2C 8CF90000 */  lw         $t9, 0x0($a3)
/* 1C7A80 80219A30 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1C7A84 80219A34 3C040001 */  lui        $a0, (0x10087 >> 16)
/* 1C7A88 80219A38 8F280000 */  lw         $t0, 0x0($t9)
/* 1C7A8C 80219A3C 34840087 */  ori        $a0, $a0, (0x10087 & 0xFFFF)
/* 1C7A90 80219A40 24050023 */  addiu      $a1, $zero, 0x23
/* 1C7A94 80219A44 00084880 */  sll        $t1, $t0, 2
/* 1C7A98 80219A48 00290821 */  addu       $at, $at, $t1
/* 1C7A9C 80219A4C AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1C7AA0 80219A50 0C02A619 */  jal        func_800A9864
/* 1C7AA4 80219A54 24060010 */   addiu     $a2, $zero, 0x10
/* 1C7AA8 80219A58 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 1C7AAC 80219A5C 00000000 */   nop
/* 1C7AB0 80219A60 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1C7AB4 80219A64 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1C7AB8 80219A68 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* 1C7ABC 80219A6C 24010001 */  addiu      $at, $zero, 0x1
/* 1C7AC0 80219A70 8C620000 */  lw         $v0, 0x0($v1)
/* 1C7AC4 80219A74 00021080 */  sll        $v0, $v0, 2
/* 1C7AC8 80219A78 01425021 */  addu       $t2, $t2, $v0
/* 1C7ACC 80219A7C 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
/* 1C7AD0 80219A80 1541001E */  bne        $t2, $at, .L80219AFC_ovl9
/* 1C7AD4 80219A84 3C01800E */   lui       $at, %hi(D_800E6A10)
/* 1C7AD8 80219A88 00220821 */  addu       $at, $at, $v0
/* 1C7ADC 80219A8C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1C7AE0 80219A90 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1C7AE4 80219A94 44813000 */  mtc1       $at, $f6
/* 1C7AE8 80219A98 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1C7AEC 80219A9C 00220821 */  addu       $at, $at, $v0
/* 1C7AF0 80219AA0 46062202 */  mul.s      $f8, $f4, $f6
/* 1C7AF4 80219AA4 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1C7AF8 80219AA8 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1C7AFC 80219AAC 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 1C7B00 80219AB0 44815000 */  mtc1       $at, $f10
/* 1C7B04 80219AB4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1C7B08 80219AB8 000B6080 */  sll        $t4, $t3, 2
/* 1C7B0C 80219ABC 002C0821 */  addu       $at, $at, $t4
/* 1C7B10 80219AC0 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1C7B14 80219AC4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1C7B18 80219AC8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1C7B1C 80219ACC 44818000 */  mtc1       $at, $f16
/* 1C7B20 80219AD0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1C7B24 80219AD4 000D7080 */  sll        $t6, $t5, 2
/* 1C7B28 80219AD8 002E0821 */  addu       $at, $at, $t6
/* 1C7B2C 80219ADC E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1C7B30 80219AE0 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1C7B34 80219AE4 3C018022 */  lui        $at, %hi(D_8021DEB0_ovl9)
/* 1C7B38 80219AE8 C432DEB0 */  lwc1       $f18, %lo(D_8021DEB0_ovl9)($at)
/* 1C7B3C 80219AEC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1C7B40 80219AF0 000FC080 */  sll        $t8, $t7, 2
/* 1C7B44 80219AF4 00380821 */  addu       $at, $at, $t8
/* 1C7B48 80219AF8 E4323C90 */  swc1       $f18, %lo(D_800E3C90)($at)
.L80219AFC_ovl9:
/* 1C7B4C 80219AFC 0C002DAF */  jal        finish_current_thread
/* 1C7B50 80219B00 2404003C */   addiu     $a0, $zero, 0x3C
/* 1C7B54 80219B04 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 1C7B58 80219B08 8FA40018 */   lw        $a0, 0x18($sp)
/* 1C7B5C 80219B0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C7B60 80219B10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C7B64 80219B14 03E00008 */  jr         $ra
/* 1C7B68 80219B18 00000000 */   nop
