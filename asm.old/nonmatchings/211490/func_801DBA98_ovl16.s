glabel func_801DBA98_ovl16
/* 211D48 801DBA98 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 211D4C 801DBA9C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L801DBAA0_ovl9:
/* 211D50 801DBAA0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 211D54 801DBAA4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 211D58 801DBAA8 AFB00018 */  sw         $s0, 0x18($sp)
.L801DBAAC_ovl9:
/* 211D5C 801DBAAC AFA40058 */  sw         $a0, 0x58($sp)
/* 211D60 801DBAB0 AFA5005C */  sw         $a1, 0x5C($sp)
/* 211D64 801DBAB4 AFA60060 */  sw         $a2, 0x60($sp)
.L801DBAB8_ovl15:
/* 211D68 801DBAB8 8DC40000 */  lw         $a0, 0x0($t6)
/* 211D6C 801DBABC 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 211D70 801DBAC0 00047880 */  sll        $t7, $a0, 2
/* 211D74 801DBAC4 020F8021 */  addu       $s0, $s0, $t7
/* 211D78 801DBAC8 0C044554 */  jal        func_80111550
/* 211D7C 801DBACC 8E101B50 */   lw        $s0, %lo(D_800E1B50)($s0)
/* 211D80 801DBAD0 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 211D84 801DBAD4 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
.L801DBAD8_ovl14:
/* 211D88 801DBAD8 8E04008C */  lw         $a0, 0x8C($s0)
/* 211D8C 801DBADC 0C044722 */  jal        func_80111C88
/* 211D90 801DBAE0 8F050000 */   lw        $a1, 0x0($t8)
/* 211D94 801DBAE4 10400012 */  beqz       $v0, .L801DBB30_ovl16
/* 211D98 801DBAE8 00402025 */   or        $a0, $v0, $zero
/* 211D9C 801DBAEC 8FA30058 */  lw         $v1, 0x58($sp)
.L801DBAF0_ovl13:
/* 211DA0 801DBAF0 50600004 */  beql       $v1, $zero, .L801DBB04_ovl16
.L801DBAF4_ovl17:
/* 211DA4 801DBAF4 8FA3005C */   lw        $v1, 0x5C($sp)
/* 211DA8 801DBAF8 8C590024 */  lw         $t9, 0x24($v0)
/* 211DAC 801DBAFC AF230008 */  sw         $v1, 0x8($t9)
.L801DBB00_ovl9:
/* 211DB0 801DBB00 8FA3005C */  lw         $v1, 0x5C($sp)
.L801DBB04_ovl16:
/* 211DB4 801DBB04 50600004 */  beql       $v1, $zero, .L801DBB18_ovl16
.L801DBB08_ovl15:
/* 211DB8 801DBB08 8FA30060 */   lw        $v1, 0x60($sp)
/* 211DBC 801DBB0C 8C480024 */  lw         $t0, 0x24($v0)
/* 211DC0 801DBB10 AD030030 */  sw         $v1, 0x30($t0)
/* 211DC4 801DBB14 8FA30060 */  lw         $v1, 0x60($sp)
.L801DBB18_ovl16:
/* 211DC8 801DBB18 10600003 */  beqz       $v1, .L801DBB28_ovl16
.L801DBB1C_ovl13:
/* 211DCC 801DBB1C 00000000 */   nop
.L801DBB20_ovl17:
/* 211DD0 801DBB20 8C490024 */  lw         $t1, 0x24($v0)
/* 211DD4 801DBB24 AD230058 */  sw         $v1, 0x58($t1)
.L801DBB28_ovl16:
/* 211DD8 801DBB28 0C0447B3 */  jal        func_80111ECC
/* 211DDC 801DBB2C 00000000 */   nop
.L801DBB30_ovl16:
/* 211DE0 801DBB30 0C044054 */  jal        func_80110150
/* 211DE4 801DBB34 27A40038 */   addiu     $a0, $sp, 0x38
/* 211DE8 801DBB38 0C0442C0 */  jal        func_80110B00
/* 211DEC 801DBB3C 27A40038 */   addiu     $a0, $sp, 0x38
/* 211DF0 801DBB40 10400005 */  beqz       $v0, .L801DBB58_ovl17
/* 211DF4 801DBB44 02002025 */   or        $a0, $s0, $zero
/* 211DF8 801DBB48 0C076E95 */  jal        func_801DBA54_ovl16
glabel func_801DBB4C_ovl11
/* 211DFC 801DBB4C 27A50038 */   addiu     $a1, $sp, 0x38
/* 211E00 801DBB50 10000013 */  b          .L801DBBA0_ovl16
/* 211E04 801DBB54 00000000 */   nop
.L801DBB58_ovl17:
/* 211E08 801DBB58 0C0443F5 */  jal        func_80110FD4
/* 211E0C 801DBB5C 27A40038 */   addiu     $a0, $sp, 0x38
/* 211E10 801DBB60 10400006 */  beqz       $v0, .L801DBB7C_ovl16
/* 211E14 801DBB64 3C0A8005 */   lui       $t2, %hi(D_8004A7C4)
/* 211E18 801DBB68 02002025 */  or         $a0, $s0, $zero
.L801DBB6C_ovl17:
/* 211E1C 801DBB6C 0C076E95 */  jal        func_801DBA54_ovl16
/* 211E20 801DBB70 27A50038 */   addiu     $a1, $sp, 0x38
/* 211E24 801DBB74 1000000A */  b          .L801DBBA0_ovl16
/* 211E28 801DBB78 00000000 */   nop
.L801DBB7C_ovl16:
/* 211E2C 801DBB7C 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 211E30 801DBB80 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 211E34 801DBB84 240DFFFF */  addiu      $t5, $zero, -0x1
/* 211E38 801DBB88 8D4B0000 */  lw         $t3, 0x0($t2)
.L801DBB8C_ovl10:
/* 211E3C 801DBB8C 000B6080 */  sll        $t4, $t3, 2
/* 211E40 801DBB90 002C0821 */  addu       $at, $at, $t4
.L801DBB94_ovl9:
/* 211E44 801DBB94 AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
/* 211E48 801DBB98 A2000043 */  sb         $zero, 0x43($s0)
.L801DBB9C_ovl11:
/* 211E4C 801DBB9C A20D003A */  sb         $t5, 0x3A($s0)
.L801DBBA0_ovl16:
/* 211E50 801DBBA0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 211E54 801DBBA4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 211E58 801DBBA8 8FBF001C */  lw         $ra, 0x1C($sp)
.L801DBBAC_ovl17:
/* 211E5C 801DBBAC 3C02800F */  lui        $v0, %hi(D_800E83E0)
/* 211E60 801DBBB0 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DBBB4_ovl9:
/* 211E64 801DBBB4 8FB00018 */  lw         $s0, 0x18($sp)
/* 211E68 801DBBB8 000FC080 */  sll        $t8, $t7, 2
/* 211E6C 801DBBBC 00581021 */  addu       $v0, $v0, $t8
/* 211E70 801DBBC0 8C4283E0 */  lw         $v0, %lo(D_800E83E0)($v0)
/* 211E74 801DBBC4 03E00008 */  jr         $ra
.L801DBBC8_ovl13:
/* 211E78 801DBBC8 27BD0058 */   addiu     $sp, $sp, 0x58
