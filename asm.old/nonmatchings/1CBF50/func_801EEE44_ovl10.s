glabel func_801EEE44_ovl10
/* 1DFBB4 801EEE44 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1DFBB8 801EEE48 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1DFBBC 801EEE4C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1DFBC0 801EEE50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DFBC4 801EEE54 AFA40038 */  sw         $a0, 0x38($sp)
/* 1DFBC8 801EEE58 0C044554 */  jal        func_80111550
/* 1DFBCC 801EEE5C 8DC40000 */   lw        $a0, 0x0($t6)
/* 1DFBD0 801EEE60 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1DFBD4 801EEE64 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
.L801EEE68_ovl16:
/* 1DFBD8 801EEE68 3C04801F */  lui        $a0, %hi(func_801F3E60_ovl9 + 0x80)
/* 1DFBDC 801EEE6C 24843EE0 */  addiu      $a0, $a0, %lo(func_801F3E60_ovl9 + 0x80)
/* 1DFBE0 801EEE70 0C044722 */  jal        func_80111C88
/* 1DFBE4 801EEE74 8DE50000 */   lw        $a1, 0x0($t7)
/* 1DFBE8 801EEE78 0C0447B3 */  jal        func_80111ECC
/* 1DFBEC 801EEE7C 00402025 */   or        $a0, $v0, $zero
/* 1DFBF0 801EEE80 0C044054 */  jal        func_80110150
/* 1DFBF4 801EEE84 27A40018 */   addiu     $a0, $sp, 0x18
/* 1DFBF8 801EEE88 1040000D */  beqz       $v0, .L801EEEC0_ovl10
/* 1DFBFC 801EEE8C 8FA40024 */   lw        $a0, 0x24($sp)
/* 1DFC00 801EEE90 0004C080 */  sll        $t8, $a0, 2
/* 1DFC04 801EEE94 3C19800F */  lui        $t9, %hi(D_800E8920)
/* 1DFC08 801EEE98 0338C821 */  addu       $t9, $t9, $t8
/* 1DFC0C 801EEE9C 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
/* 1DFC10 801EEEA0 24010001 */  addiu      $at, $zero, 0x1
/* 1DFC14 801EEEA4 93A50018 */  lbu        $a1, 0x18($sp)
/* 1DFC18 801EEEA8 17210005 */  bne        $t9, $at, .L801EEEC0_ovl10
/* 1DFC1C 801EEEAC 93A60019 */   lbu       $a2, 0x19($sp)
/* 1DFC20 801EEEB0 0C05A50C */  jal        func_80169430_ovl3
/* 1DFC24 801EEEB4 24070003 */   addiu     $a3, $zero, 0x3
/* 1DFC28 801EEEB8 10000002 */  b          .L801EEEC4_ovl10
/* 1DFC2C 801EEEBC 24020001 */   addiu     $v0, $zero, 0x1
.L801EEEC0_ovl10:
/* 1DFC30 801EEEC0 00001025 */  or         $v0, $zero, $zero
.L801EEEC4_ovl10:
/* 1DFC34 801EEEC4 8FBF0014 */  lw         $ra, 0x14($sp)
.L801EEEC8_ovl9:
/* 1DFC38 801EEEC8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1DFC3C 801EEECC 03E00008 */  jr         $ra
/* 1DFC40 801EEED0 00000000 */   nop
