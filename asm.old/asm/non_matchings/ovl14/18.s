glabel func_801DC2A0_ovl14 # 18
/* 1FEE90 801DC2A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 1FEE94 801DC2A4 AFB10018 */  sw          $s1, 0x18($sp)
/* 1FEE98 801DC2A8 AFB00014 */  sw          $s0, 0x14($sp)
/* 1FEE9C 801DC2AC 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 1FEEA0 801DC2B0 3C11800F */  lui         $s1, %hi(D_800E98E0)
/* 1FEEA4 801DC2B4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 1FEEA8 801DC2B8 263198E0 */  addiu       $s1, $s1, %lo(D_800E98E0)
/* 1FEEAC 801DC2BC 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
.L801DC2C0:
/* 1FEEB0 801DC2C0 0C006291 */  jal         random_soft_s32_range
/* 1FEEB4 801DC2C4 24040008 */   addiu      $a0, $zero, 0x8
/* 1FEEB8 801DC2C8 28410002 */  slti        $at, $v0, 0x2
/* 1FEEBC 801DC2CC 50200004 */  beql        $at, $zero, .L801DC2E0
/* 1FEEC0 801DC2D0 28410005 */   slti       $at, $v0, 0x5
/* 1FEEC4 801DC2D4 10000006 */  b           .L801DC2F0
/* 1FEEC8 801DC2D8 00001025 */   move       $v0, $zero
/* 1FEECC 801DC2DC 28410005 */  slti        $at, $v0, 0x5
.L801DC2E0:
/* 1FEED0 801DC2E0 10200003 */  beqz        $at, .L801DC2F0
/* 1FEED4 801DC2E4 24020002 */   addiu      $v0, $zero, 0x2
/* 1FEED8 801DC2E8 10000001 */  b           .L801DC2F0
/* 1FEEDC 801DC2EC 24020001 */   addiu      $v0, $zero, 0x1
.L801DC2F0:
/* 1FEEE0 801DC2F0 8E030000 */  lw          $v1, 0x0($s0)
/* 1FEEE4 801DC2F4 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FEEE8 801DC2F8 000E7880 */  sll         $t7, $t6, 2
/* 1FEEEC 801DC2FC 022F2021 */  addu        $a0, $s1, $t7
/* 1FEEF0 801DC300 8C980000 */  lw          $t8, 0x0($a0)
/* 1FEEF4 801DC304 1058FFEE */  beq         $v0, $t8, .L801DC2C0
/* 1FEEF8 801DC308 00000000 */   nop
/* 1FEEFC 801DC30C AC820000 */  sw          $v0, 0x0($a0)
/* 1FEF00 801DC310 8C660000 */  lw          $a2, 0x0($v1)
/* 1FEF04 801DC314 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FEF08 801DC318 24080003 */  addiu       $t0, $zero, 0x3
/* 1FEF0C 801DC31C 00063080 */  sll         $a2, $a2, 2
/* 1FEF10 801DC320 0226C821 */  addu        $t9, $s1, $a2
/* 1FEF14 801DC324 8F250000 */  lw          $a1, 0x0($t9)
/* 1FEF18 801DC328 00260821 */  addu        $at, $at, $a2
/* 1FEF1C 801DC32C 10A00009 */  beqz        $a1, .L801DC354
/* 1FEF20 801DC330 00000000 */   nop
/* 1FEF24 801DC334 24010001 */  addiu       $at, $zero, 0x1
/* 1FEF28 801DC338 10A10008 */  beq         $a1, $at, .L801DC35C
/* 1FEF2C 801DC33C 24090004 */   addiu      $t1, $zero, 0x4
/* 1FEF30 801DC340 24010002 */  addiu       $at, $zero, 0x2
/* 1FEF34 801DC344 10A10009 */  beq         $a1, $at, .L801DC36C
/* 1FEF38 801DC348 240A0005 */   addiu      $t2, $zero, 0x5
/* 1FEF3C 801DC34C 1000000B */  b           .L801DC37C
/* 1FEF40 801DC350 8FBF001C */   lw         $ra, 0x1C($sp)
.L801DC354:
/* 1FEF44 801DC354 10000008 */  b           .L801DC378
/* 1FEF48 801DC358 AC28DC50 */   sw         $t0, %lo(gEntityVtableIndexArray)($at)
.L801DC35C:
/* 1FEF4C 801DC35C 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FEF50 801DC360 00260821 */  addu        $at, $at, $a2
/* 1FEF54 801DC364 10000004 */  b           .L801DC378
/* 1FEF58 801DC368 AC29DC50 */   sw         $t1, %lo(gEntityVtableIndexArray)($at)
.L801DC36C:
/* 1FEF5C 801DC36C 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FEF60 801DC370 00260821 */  addu        $at, $at, $a2
/* 1FEF64 801DC374 AC2ADC50 */  sw          $t2, %lo(gEntityVtableIndexArray)($at)
.L801DC378:
/* 1FEF68 801DC378 8FBF001C */  lw          $ra, 0x1C($sp)
.L801DC37C:
/* 1FEF6C 801DC37C 8FB00014 */  lw          $s0, 0x14($sp)
/* 1FEF70 801DC380 8FB10018 */  lw          $s1, 0x18($sp)
/* 1FEF74 801DC384 03E00008 */  jr          $ra
/* 1FEF78 801DC388 27BD0020 */   addiu      $sp, $sp, 0x20
.type func_801DC2A0_ovl14, @function
.size func_801DC2A0_ovl14, . - func_801DC2A0_ovl14
