nonmatching func_801E2D34_ovl9, 0x228

glabel func_801E2D34_ovl9
    /* 190D84 801E2D34 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 190D88 801E2D38 AFB2002C */  sw         $s2, 0x2C($sp)
    /* 190D8C 801E2D3C 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* 190D90 801E2D40 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* 190D94 801E2D44 8E420000 */  lw         $v0, 0x0($s2)
    /* 190D98 801E2D48 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 190D9C 801E2D4C AFB50038 */  sw         $s5, 0x38($sp)
    /* 190DA0 801E2D50 AFB40034 */  sw         $s4, 0x34($sp)
    /* 190DA4 801E2D54 AFB30030 */  sw         $s3, 0x30($sp)
    /* 190DA8 801E2D58 AFB10028 */  sw         $s1, 0x28($sp)
    /* 190DAC 801E2D5C AFB00024 */  sw         $s0, 0x24($sp)
    /* 190DB0 801E2D60 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* 190DB4 801E2D64 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* 190DB8 801E2D68 AFA40040 */  sw         $a0, 0x40($sp)
    /* 190DBC 801E2D6C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 190DC0 801E2D70 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 190DC4 801E2D74 3C09800E */  lui        $t1, %hi(D_800E1B50)
    /* 190DC8 801E2D78 000E7880 */  sll        $t7, $t6, 2
    /* 190DCC 801E2D7C 002F0821 */  addu       $at, $at, $t7
    /* 190DD0 801E2D80 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
    /* 190DD4 801E2D84 8C590000 */  lw         $t9, 0x0($v0)
    /* 190DD8 801E2D88 3C18801D */  lui        $t8, %hi(D_801CBA7C)
    /* 190DDC 801E2D8C 3C10800D */  lui        $s0, %hi(gameTicksPerDraw)
    /* 190DE0 801E2D90 00194080 */  sll        $t0, $t9, 2
    /* 190DE4 801E2D94 01284821 */  addu       $t1, $t1, $t0
    /* 190DE8 801E2D98 8D291B50 */  lw         $t1, %lo(D_800E1B50)($t1)
    /* 190DEC 801E2D9C 2718BA7C */  addiu      $t8, $t8, %lo(D_801CBA7C)
    /* 190DF0 801E2DA0 26106B10 */  addiu      $s0, $s0, %lo(gameTicksPerDraw)
    /* 190DF4 801E2DA4 AD380098 */  sw         $t8, 0x98($t1)
    /* 190DF8 801E2DA8 0C02BB30 */  jal        func_800AECC0
    /* 190DFC 801E2DAC C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 190E00 801E2DB0 0C02BB48 */  jal        func_800AED20
    /* 190E04 801E2DB4 C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 190E08 801E2DB8 0C02CCFD */  jal        func_800B33F4
    /* 190E0C 801E2DBC 00000000 */   nop
    /* 190E10 801E2DC0 8E4A0000 */  lw         $t2, 0x0($s2)
    /* 190E14 801E2DC4 3C11800E */  lui        $s1, %hi(D_800E6A10)
    /* 190E18 801E2DC8 26316A10 */  addiu      $s1, $s1, %lo(D_800E6A10)
    /* 190E1C 801E2DCC 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 190E20 801E2DD0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 190E24 801E2DD4 4481B000 */  mtc1       $at, $f22
    /* 190E28 801E2DD8 000B6080 */  sll        $t4, $t3, 2
    /* 190E2C 801E2DDC 022C6821 */  addu       $t5, $s1, $t4
    /* 190E30 801E2DE0 C5A40000 */  lwc1       $f4, 0x0($t5)
    /* 190E34 801E2DE4 3C150001 */  lui        $s5, (0x101B4 >> 16)
    /* 190E38 801E2DE8 36B501B4 */  ori        $s5, $s5, (0x101B4 & 0xFFFF)
    /* 190E3C 801E2DEC 4604B032 */  c.eq.s     $f22, $f4
    /* 190E40 801E2DF0 3C140001 */  lui        $s4, (0x101B6 >> 16)
    /* 190E44 801E2DF4 369401B6 */  ori        $s4, $s4, (0x101B6 & 0xFFFF)
    /* 190E48 801E2DF8 02A02025 */  or         $a0, $s5, $zero
    /* 190E4C 801E2DFC 45000007 */  bc1f       .L801E2E1C_ovl9
    /* 190E50 801E2E00 00000000 */   nop
    /* 190E54 801E2E04 3C140001 */  lui        $s4, (0x101B6 >> 16)
    /* 190E58 801E2E08 369401B6 */  ori        $s4, $s4, (0x101B6 & 0xFFFF)
    /* 190E5C 801E2E0C 3C150001 */  lui        $s5, (0x101B4 >> 16)
    /* 190E60 801E2E10 36B501B4 */  ori        $s5, $s5, (0x101B4 & 0xFFFF)
    /* 190E64 801E2E14 10000001 */  b          .L801E2E1C_ovl9
    /* 190E68 801E2E18 02802025 */   or        $a0, $s4, $zero
  .L801E2E1C_ovl9:
    /* 190E6C 801E2E1C 0C02A806 */  jal        func_800AA018
    /* 190E70 801E2E20 00000000 */   nop
    /* 190E74 801E2E24 0C002DAF */  jal        ohSleep
    /* 190E78 801E2E28 24040001 */   addiu     $a0, $zero, 0x1
    /* 190E7C 801E2E2C 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 190E80 801E2E30 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* 190E84 801E2E34 4481A000 */  mtc1       $at, $f20
    /* 190E88 801E2E38 8DC40000 */  lw         $a0, 0x0($t6)
    /* 190E8C 801E2E3C 3C13800E */  lui        $s3, %hi(D_800E64D0)
    /* 190E90 801E2E40 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
    /* 190E94 801E2E44 00042080 */  sll        $a0, $a0, 2
    /* 190E98 801E2E48 02247821 */  addu       $t7, $s1, $a0
    /* 190E9C 801E2E4C C5E60000 */  lwc1       $f6, 0x0($t7)
    /* 190EA0 801E2E50 0264C821 */  addu       $t9, $s3, $a0
    /* 190EA4 801E2E54 3C10800F */  lui        $s0, %hi(D_800E98E0)
    /* 190EA8 801E2E58 46143202 */  mul.s      $f8, $f6, $f20
    /* 190EAC 801E2E5C 261098E0 */  addiu      $s0, $s0, %lo(D_800E98E0)
    /* 190EB0 801E2E60 E7280000 */  swc1       $f8, 0x0($t9)
  .L801E2E64_ovl9:
    /* 190EB4 801E2E64 0C02BC9F */  jal        func_800AF27C
    /* 190EB8 801E2E68 00000000 */   nop
    /* 190EBC 801E2E6C 8E420000 */  lw         $v0, 0x0($s2)
    /* 190EC0 801E2E70 8C440000 */  lw         $a0, 0x0($v0)
    /* 190EC4 801E2E74 00042080 */  sll        $a0, $a0, 2
    /* 190EC8 801E2E78 02041821 */  addu       $v1, $s0, $a0
    /* 190ECC 801E2E7C 8C650000 */  lw         $a1, 0x0($v1)
    /* 190ED0 801E2E80 30A80001 */  andi       $t0, $a1, 0x1
    /* 190ED4 801E2E84 5500001F */  bnel       $t0, $zero, .L801E2F04_ovl9
    /* 190ED8 801E2E88 24AFFFFF */   addiu     $t7, $a1, -0x1
    /* 190EDC 801E2E8C 02241821 */  addu       $v1, $s1, $a0
    /* 190EE0 801E2E90 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 190EE4 801E2E94 02A02025 */  or         $a0, $s5, $zero
    /* 190EE8 801E2E98 46005407 */  neg.s      $f16, $f10
    /* 190EEC 801E2E9C E4700000 */  swc1       $f16, 0x0($v1)
    /* 190EF0 801E2EA0 8C580000 */  lw         $t8, 0x0($v0)
    /* 190EF4 801E2EA4 00184880 */  sll        $t1, $t8, 2
    /* 190EF8 801E2EA8 02295021 */  addu       $t2, $s1, $t1
    /* 190EFC 801E2EAC C5520000 */  lwc1       $f18, 0x0($t2)
    /* 190F00 801E2EB0 4612B032 */  c.eq.s     $f22, $f18
    /* 190F04 801E2EB4 00000000 */  nop
    /* 190F08 801E2EB8 45000003 */  bc1f       .L801E2EC8_ovl9
    /* 190F0C 801E2EBC 00000000 */   nop
    /* 190F10 801E2EC0 10000001 */  b          .L801E2EC8_ovl9
    /* 190F14 801E2EC4 02802025 */   or        $a0, $s4, $zero
  .L801E2EC8_ovl9:
    /* 190F18 801E2EC8 0C02A806 */  jal        func_800AA018
    /* 190F1C 801E2ECC 00000000 */   nop
    /* 190F20 801E2ED0 8E420000 */  lw         $v0, 0x0($s2)
    /* 190F24 801E2ED4 8C440000 */  lw         $a0, 0x0($v0)
    /* 190F28 801E2ED8 00042080 */  sll        $a0, $a0, 2
    /* 190F2C 801E2EDC 02245821 */  addu       $t3, $s1, $a0
    /* 190F30 801E2EE0 C5640000 */  lwc1       $f4, 0x0($t3)
    /* 190F34 801E2EE4 02646021 */  addu       $t4, $s3, $a0
    /* 190F38 801E2EE8 46142182 */  mul.s      $f6, $f4, $f20
    /* 190F3C 801E2EEC E5860000 */  swc1       $f6, 0x0($t4)
    /* 190F40 801E2EF0 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 190F44 801E2EF4 000D7080 */  sll        $t6, $t5, 2
    /* 190F48 801E2EF8 020E1821 */  addu       $v1, $s0, $t6
    /* 190F4C 801E2EFC 8C650000 */  lw         $a1, 0x0($v1)
    /* 190F50 801E2F00 24AFFFFF */  addiu      $t7, $a1, -0x1
  .L801E2F04_ovl9:
    /* 190F54 801E2F04 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 190F58 801E2F08 8C440000 */  lw         $a0, 0x0($v0)
    /* 190F5C 801E2F0C 00042080 */  sll        $a0, $a0, 2
    /* 190F60 801E2F10 0204C821 */  addu       $t9, $s0, $a0
    /* 190F64 801E2F14 8F280000 */  lw         $t0, 0x0($t9)
    /* 190F68 801E2F18 1D00FFD2 */  bgtz       $t0, .L801E2E64_ovl9
    /* 190F6C 801E2F1C 00000000 */   nop
    /* 190F70 801E2F20 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 190F74 801E2F24 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 190F78 801E2F28 00240821 */  addu       $at, $at, $a0
    /* 190F7C 801E2F2C 24180003 */  addiu      $t8, $zero, 0x3
    /* 190F80 801E2F30 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* 190F84 801E2F34 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* 190F88 801E2F38 8FB00024 */  lw         $s0, 0x24($sp)
    /* 190F8C 801E2F3C 8FB10028 */  lw         $s1, 0x28($sp)
    /* 190F90 801E2F40 8FB2002C */  lw         $s2, 0x2C($sp)
    /* 190F94 801E2F44 8FB30030 */  lw         $s3, 0x30($sp)
    /* 190F98 801E2F48 8FB40034 */  lw         $s4, 0x34($sp)
    /* 190F9C 801E2F4C 8FB50038 */  lw         $s5, 0x38($sp)
    /* 190FA0 801E2F50 AC38DC50 */  sw         $t8, %lo(gEntityFuncListIDArray)($at)
    /* 190FA4 801E2F54 03E00008 */  jr         $ra
    /* 190FA8 801E2F58 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_801E2D34_ovl9
.size func_801E2D34_ovl9, . - func_801E2D34_ovl9
