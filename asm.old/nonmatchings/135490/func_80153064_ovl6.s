glabel func_80153064_ovl6
/* 1373F4 80153064 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1373F8 80153068 AFB1001C */  sw         $s1, 0x1C($sp)
glabel func_8015306C_ovl4
/* 1373FC 8015306C AFB00018 */  sw         $s0, 0x18($sp)
/* 137400 80153070 3C108016 */  lui        $s0, %hi(D_8015A7B0_ovl6)
.L80153074_ovl3:
/* 137404 80153074 3C118016 */  lui        $s1, %hi(D_8015A7AC_ovl6)
.L80153078_ovl3:
/* 137408 80153078 2631A7AC */  addiu      $s1, $s1, %lo(D_8015A7AC_ovl6)
/* 13740C 8015307C 2610A7B0 */  addiu      $s0, $s0, %lo(D_8015A7B0_ovl6)
/* 137410 80153080 8E030000 */  lw         $v1, 0x0($s0)
/* 137414 80153084 8E220000 */  lw         $v0, 0x0($s1)
.L80153088_ovl3:
/* 137418 80153088 AFB20020 */  sw         $s2, 0x20($sp)
.L8015308C_ovl3:
/* 13741C 8015308C AFBF0024 */  sw         $ra, 0x24($sp)
/* 137420 80153090 1043001B */  beq        $v0, $v1, .L80153100_ovl6
/* 137424 80153094 3C128016 */   lui       $s2, %hi(gFrameBuffers + 0x30)
/* 137428 80153098 2652A6A8 */  addiu      $s2, $s2, %lo(gFrameBuffers + 0x30)
/* 13742C 8015309C 000370C0 */  sll        $t6, $v1, 3
.L801530A0_ovl6:
/* 137430 801530A0 024E1021 */  addu       $v0, $s2, $t6
/* 137434 801530A4 904F0004 */  lbu        $t7, 0x4($v0)
/* 137438 801530A8 24050003 */  addiu      $a1, $zero, 0x3
/* 13743C 801530AC 11E00006 */  beqz       $t7, .L801530C8_ovl6
/* 137440 801530B0 00000000 */   nop
/* 137444 801530B4 8C440000 */  lw         $a0, 0x0($v0)
/* 137448 801530B8 0C02A395 */  jal        func_800A8E54
glabel func_801530BC_ovl3
/* 13744C 801530BC 24050003 */   addiu     $a1, $zero, 0x3
/* 137450 801530C0 10000004 */  b          .L801530D4_ovl6
/* 137454 801530C4 8E020000 */   lw        $v0, 0x0($s0)
.L801530C8_ovl6:
/* 137458 801530C8 0C02A359 */  jal        func_800A8D64
/* 13745C 801530CC 8C440000 */   lw        $a0, 0x0($v0)
/* 137460 801530D0 8E020000 */  lw         $v0, 0x0($s0)
.L801530D4_ovl6:
/* 137464 801530D4 24420001 */  addiu      $v0, $v0, 0x1
/* 137468 801530D8 2C410020 */  sltiu      $at, $v0, 0x20
/* 13746C 801530DC 54200004 */  bnel       $at, $zero, .L801530F0_ovl6
/* 137470 801530E0 AE020000 */   sw        $v0, 0x0($s0)
/* 137474 801530E4 10000002 */  b          .L801530F0_ovl6
/* 137478 801530E8 AE000000 */   sw        $zero, 0x0($s0)
/* 13747C 801530EC AE020000 */  sw         $v0, 0x0($s0)
.L801530F0_ovl6:
/* 137480 801530F0 8E220000 */  lw         $v0, 0x0($s1)
/* 137484 801530F4 8E030000 */  lw         $v1, 0x0($s0)
/* 137488 801530F8 5443FFE9 */  bnel       $v0, $v1, .L801530A0_ovl6
/* 13748C 801530FC 000370C0 */   sll       $t6, $v1, 3
.L80153100_ovl6:
/* 137490 80153100 3C048016 */  lui        $a0, %hi(D_8015A7A8_ovl6)
/* 137494 80153104 8C84A7A8 */  lw         $a0, %lo(D_8015A7A8_ovl6)($a0)
/* 137498 80153108 1082000A */  beq        $a0, $v0, .L80153134_ovl6
/* 13749C 8015310C 24430001 */   addiu     $v1, $v0, 0x1
.L80153110_ovl6:
/* 1374A0 80153110 2C610020 */  sltiu      $at, $v1, 0x20
/* 1374A4 80153114 54200004 */  bnel       $at, $zero, .L80153128_ovl6
/* 1374A8 80153118 AE230000 */   sw        $v1, 0x0($s1)
/* 1374AC 8015311C 10000002 */  b          .L80153128_ovl6
/* 1374B0 80153120 AE200000 */   sw        $zero, 0x0($s1)
/* 1374B4 80153124 AE230000 */  sw         $v1, 0x0($s1)
.L80153128_ovl6:
/* 1374B8 80153128 8E220000 */  lw         $v0, 0x0($s1)
/* 1374BC 8015312C 5482FFF8 */  bnel       $a0, $v0, .L80153110_ovl6
/* 1374C0 80153130 24430001 */   addiu     $v1, $v0, 0x1
.L80153134_ovl6:
/* 1374C4 80153134 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1374C8 80153138 8FB00018 */  lw         $s0, 0x18($sp)
/* 1374CC 8015313C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1374D0 80153140 8FB20020 */  lw         $s2, 0x20($sp)
/* 1374D4 80153144 03E00008 */  jr         $ra
/* 1374D8 80153148 27BD0028 */   addiu     $sp, $sp, 0x28
