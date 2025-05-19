glabel func_801DCB28_ovl13 # 8
/* 1F4AA8 801DCB28 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 1F4AAC 801DCB2C AFB10018 */  sw          $s1, 0x18($sp)
/* 1F4AB0 801DCB30 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1F4AB4 801DCB34 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1F4AB8 801DCB38 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F4ABC 801DCB3C AFBF001C */  sw          $ra, 0x1C($sp)
/* 1F4AC0 801DCB40 AFB00014 */  sw          $s0, 0x14($sp)
/* 1F4AC4 801DCB44 AFA40020 */  sw          $a0, 0x20($sp)
/* 1F4AC8 801DCB48 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F4ACC 801DCB4C 3C10800E */  lui         $s0, %hi(D_800E0D50)
/* 1F4AD0 801DCB50 000FC080 */  sll         $t8, $t7, 2
/* 1F4AD4 801DCB54 02188021 */  addu        $s0, $s0, $t8
/* 1F4AD8 801DCB58 0C068CA0 */  jal         func_801A3280_ovl7
/* 1F4ADC 801DCB5C 8E100D50 */   lw         $s0, %lo(D_800E0D50)($s0)
/* 1F4AE0 801DCB60 0C066ED6 */  jal         func_8019BB58_ovl7
/* 1F4AE4 801DCB64 00000000 */   nop
/* 1F4AE8 801DCB68 8E220000 */  lw          $v0, 0x0($s1)
/* 1F4AEC 801DCB6C 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1F4AF0 801DCB70 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray5)
/* 1F4AF4 801DCB74 8C590000 */  lw          $t9, 0x0($v0)
/* 1F4AF8 801DCB78 3C05800B */  lui         $a1, %hi(D_800B1434)
/* 1F4AFC 801DCB7C 24A51434 */  addiu       $a1, $a1, %lo(D_800B1434)
/* 1F4B00 801DCB80 00194080 */  sll         $t0, $t9, 2
/* 1F4B04 801DCB84 00280821 */  addu        $at, $at, $t0
/* 1F4B08 801DCB88 AC20EF90 */  sw          $zero, %lo(D_800DEF90)($at)
/* 1F4B0C 801DCB8C 8C490000 */  lw          $t1, 0x0($v0)
/* 1F4B10 801DCB90 3C01800E */  lui         $at, %hi(D_800DF150)
/* 1F4B14 801DCB94 00095080 */  sll         $t2, $t1, 2
/* 1F4B18 801DCB98 002A0821 */  addu        $at, $at, $t2
/* 1F4B1C 801DCB9C AC20F150 */  sw          $zero, %lo(D_800DF150)($at)
/* 1F4B20 801DCBA0 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1F4B24 801DCBA4 000B6080 */  sll         $t4, $t3, 2
/* 1F4B28 801DCBA8 008C2021 */  addu        $a0, $a0, $t4
/* 1F4B2C 801DCBAC 0C02C7DA */  jal         func_800B1F68
/* 1F4B30 801DCBB0 8C84EC10 */   lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1F4B34 801DCBB4 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F4B38 801DCBB8 2404007D */  addiu       $a0, $zero, 0x7D
/* 1F4B3C 801DCBBC 0C02C67D */  jal         func_800B19F4
/* 1F4B40 801DCBC0 8DA50000 */   lw         $a1, 0x0($t5)
/* 1F4B44 801DCBC4 00002025 */  move        $a0, $zero
/* 1F4B48 801DCBC8 0C02BEED */  jal         func_800AFBB4
/* 1F4B4C 801DCBCC 8E250000 */   lw         $a1, 0x0($s1)
/* 1F4B50 801DCBD0 0C029D9E */  jal         play_sound
/* 1F4B54 801DCBD4 24040028 */   addiu      $a0, $zero, 0x28
/* 1F4B58 801DCBD8 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1F4B5C 801DCBDC 3C01800F */  lui         $at, %hi(D_800E98E0)
/* 1F4B60 801DCBE0 240E0002 */  addiu       $t6, $zero, 0x2
/* 1F4B64 801DCBE4 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F4B68 801DCBE8 02002825 */  move        $a1, $s0
/* 1F4B6C 801DCBEC 0018C880 */  sll         $t9, $t8, 2
/* 1F4B70 801DCBF0 00390821 */  addu        $at, $at, $t9
/* 1F4B74 801DCBF4 AC2E98E0 */  sw          $t6, %lo(D_800E98E0)($at)
/* 1F4B78 801DCBF8 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F4B7C 801DCBFC 0C02BB74 */  jal         func_800AEDD0
/* 1F4B80 801DCC00 C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1F4B84 801DCC04 3C040001 */  lui         $a0, (0x10412 >> 16)
/* 1F4B88 801DCC08 34840412 */  ori         $a0, $a0, (0x10412 & 0xFFFF)
/* 1F4B8C 801DCC0C 24050000 */  addiu       $a1, $zero, 0x0
/* 1F4B90 801DCC10 0C02A80E */  jal         func_800AA038
/* 1F4B94 801DCC14 02003025 */   move       $a2, $s0
/* 1F4B98 801DCC18 0C002DAF */  jal         finish_current_thread
/* 1F4B9C 801DCC1C 2404002A */   addiu      $a0, $zero, 0x2A
/* 1F4BA0 801DCC20 3C040001 */  lui         $a0, (0x1041F >> 16)
/* 1F4BA4 801DCC24 3484041F */  ori         $a0, $a0, (0x1041F & 0xFFFF)
/* 1F4BA8 801DCC28 24050000 */  addiu       $a1, $zero, 0x0
/* 1F4BAC 801DCC2C 0C02A80E */  jal         func_800AA038
/* 1F4BB0 801DCC30 02003025 */   move       $a2, $s0
/* 1F4BB4 801DCC34 8E220000 */  lw          $v0, 0x0($s1)
/* 1F4BB8 801DCC38 3C01800F */  lui         $at, %hi(D_800E98E0)
/* 1F4BBC 801DCC3C 00105880 */  sll         $t3, $s0, 2
/* 1F4BC0 801DCC40 8C480000 */  lw          $t0, 0x0($v0)
/* 1F4BC4 801DCC44 240AFFFF */  addiu       $t2, $zero, -0x1
/* 1F4BC8 801DCC48 00084880 */  sll         $t1, $t0, 2
/* 1F4BCC 801DCC4C 00290821 */  addu        $at, $at, $t1
/* 1F4BD0 801DCC50 AC2098E0 */  sw          $zero, %lo(D_800E98E0)($at)
/* 1F4BD4 801DCC54 3C01800F */  lui         $at, %hi(D_800EBDA0)
/* 1F4BD8 801DCC58 002B0821 */  addu        $at, $at, $t3
/* 1F4BDC 801DCC5C AC2ABDA0 */  sw          $t2, %lo(D_800EBDA0)($at)
/* 1F4BE0 801DCC60 0C067656 */  jal         func_8019D958_ovl7
/* 1F4BE4 801DCC64 94440002 */   lhu        $a0, 0x2($v0)
/* 1F4BE8 801DCC68 8FBF001C */  lw          $ra, 0x1C($sp)
/* 1F4BEC 801DCC6C 8FB00014 */  lw          $s0, 0x14($sp)
/* 1F4BF0 801DCC70 8FB10018 */  lw          $s1, 0x18($sp)
/* 1F4BF4 801DCC74 03E00008 */  jr          $ra
/* 1F4BF8 801DCC78 27BD0020 */   addiu      $sp, $sp, 0x20
.type func_801DCB28_ovl13, @function

.size func_801DCB28_ovl13, . - func_801DCB28_ovl13
