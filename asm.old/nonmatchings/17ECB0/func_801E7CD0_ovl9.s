glabel func_801E7CD0_ovl9
/* 195D20 801E7CD0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 195D24 801E7CD4 AFB30028 */  sw         $s3, 0x28($sp)
/* 195D28 801E7CD8 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 195D2C 801E7CDC 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* 195D30 801E7CE0 8E630000 */  lw         $v1, 0x0($s3)
/* 195D34 801E7CE4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 195D38 801E7CE8 AFB20024 */  sw         $s2, 0x24($sp)
/* 195D3C 801E7CEC AFB10020 */  sw         $s1, 0x20($sp)
/* 195D40 801E7CF0 AFB0001C */  sw         $s0, 0x1C($sp)
/* 195D44 801E7CF4 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 195D48 801E7CF8 AFA40030 */  sw         $a0, 0x30($sp)
/* 195D4C 801E7CFC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 195D50 801E7D00 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 195D54 801E7D04 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 195D58 801E7D08 000E7880 */  sll        $t7, $t6, 2
/* 195D5C 801E7D0C 002F0821 */  addu       $at, $at, $t7
/* 195D60 801E7D10 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 195D64 801E7D14 8C790000 */  lw         $t9, 0x0($v1)
/* 195D68 801E7D18 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
/* 195D6C 801E7D1C 3C18801D */  lui        $t8, %hi(D_801C8880)
/* 195D70 801E7D20 00194080 */  sll        $t0, $t9, 2
/* 195D74 801E7D24 00484821 */  addu       $t1, $v0, $t0
/* 195D78 801E7D28 8D2A0000 */  lw         $t2, 0x0($t1)
/* 195D7C 801E7D2C 27188880 */  addiu      $t8, $t8, %lo(D_801C8880)
/* 195D80 801E7D30 3C0B801D */  lui        $t3, %hi(D_801CBBC0)
/* 195D84 801E7D34 AD58008C */  sw         $t8, 0x8C($t2)
/* 195D88 801E7D38 8E6C0000 */  lw         $t4, 0x0($s3)
/* 195D8C 801E7D3C 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 195D90 801E7D40 256BBBC0 */  addiu      $t3, $t3, %lo(D_801CBBC0)
/* 195D94 801E7D44 8D8D0000 */  lw         $t5, 0x0($t4)
/* 195D98 801E7D48 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 195D9C 801E7D4C 000D7080 */  sll        $t6, $t5, 2
/* 195DA0 801E7D50 004E7821 */  addu       $t7, $v0, $t6
/* 195DA4 801E7D54 8DF90000 */  lw         $t9, 0x0($t7)
/* 195DA8 801E7D58 AF2B0098 */  sw         $t3, 0x98($t9)
/* 195DAC 801E7D5C 0C02BB30 */  jal        func_800AECC0
/* 195DB0 801E7D60 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 195DB4 801E7D64 0C02BB48 */  jal        func_800AED20
/* 195DB8 801E7D68 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 195DBC 801E7D6C 0C02CCFD */  jal        func_800B33F4
/* 195DC0 801E7D70 00000000 */   nop
/* 195DC4 801E7D74 8E630000 */  lw         $v1, 0x0($s3)
/* 195DC8 801E7D78 3C01800F */  lui        $at, %hi(D_800E8920)
/* 195DCC 801E7D7C 24100001 */  addiu      $s0, $zero, 0x1
/* 195DD0 801E7D80 8C680000 */  lw         $t0, 0x0($v1)
/* 195DD4 801E7D84 3C040001 */  lui        $a0, (0x10220 >> 16)
/* 195DD8 801E7D88 34840220 */  ori        $a0, $a0, (0x10220 & 0xFFFF)
/* 195DDC 801E7D8C 00084880 */  sll        $t1, $t0, 2
/* 195DE0 801E7D90 00290821 */  addu       $at, $at, $t1
/* 195DE4 801E7D94 AC308920 */  sw         $s0, %lo(D_800E8920)($at)
/* 195DE8 801E7D98 8C650000 */  lw         $a1, 0x0($v1)
/* 195DEC 801E7D9C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 195DF0 801E7DA0 00052880 */  sll        $a1, $a1, 2
/* 195DF4 801E7DA4 00250821 */  addu       $at, $at, $a1
/* 195DF8 801E7DA8 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 195DFC 801E7DAC 3C018022 */  lui        $at, %hi(D_8021D078_ovl9)
/* 195E00 801E7DB0 C426D078 */  lwc1       $f6, %lo(D_8021D078_ovl9)($at)
/* 195E04 801E7DB4 3C01800E */  lui        $at, %hi(D_800E4C50)
/* 195E08 801E7DB8 00250821 */  addu       $at, $at, $a1
/* 195E0C 801E7DBC 46062202 */  mul.s      $f8, $f4, $f6
/* 195E10 801E7DC0 0C02A806 */  jal        func_800AA018
/* 195E14 801E7DC4 E4284C50 */   swc1      $f8, %lo(D_800E4C50)($at)
/* 195E18 801E7DC8 3C040001 */  lui        $a0, (0x1021F >> 16)
/* 195E1C 801E7DCC 0C02A806 */  jal        func_800AA018
.L801E7DD0_ovl10:
/* 195E20 801E7DD0 3484021F */   ori       $a0, $a0, (0x1021F & 0xFFFF)
/* 195E24 801E7DD4 8E630000 */  lw         $v1, 0x0($s3)
/* 195E28 801E7DD8 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 195E2C 801E7DDC 2418FFFF */  addiu      $t8, $zero, -0x1
/* 195E30 801E7DE0 8C6A0000 */  lw         $t2, 0x0($v1)
.L801E7DE4_ovl16:
/* 195E34 801E7DE4 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 195E38 801E7DE8 240D0001 */  addiu      $t5, $zero, 0x1
/* 195E3C 801E7DEC 000A6080 */  sll        $t4, $t2, 2
/* 195E40 801E7DF0 002C0821 */  addu       $at, $at, $t4
/* 195E44 801E7DF4 AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
/* 195E48 801E7DF8 8C620000 */  lw         $v0, 0x0($v1)
/* 195E4C 801E7DFC 00822021 */  addu       $a0, $a0, $v0
/* 195E50 801E7E00 90847880 */  lbu        $a0, %lo(D_800E7880)($a0)
/* 195E54 801E7E04 00027080 */  sll        $t6, $v0, 2
.L801E7E08_ovl16:
/* 195E58 801E7E08 10800005 */  beqz       $a0, .L801E7E20_ovl16
/* 195E5C 801E7E0C 00000000 */   nop
/* 195E60 801E7E10 1090001C */  beq        $a0, $s0, .L801E7E84_ovl9
/* 195E64 801E7E14 3C014348 */   lui       $at, (0x43480000 >> 16)
/* 195E68 801E7E18 10000035 */  b          .L801E7EF0_ovl9
/* 195E6C 801E7E1C 8FBF002C */   lw        $ra, 0x2C($sp)
.L801E7E20_ovl16:
/* 195E70 801E7E20 3C10800E */  lui        $s0, %hi(gEntityVtableIndexArray)
/* 195E74 801E7E24 2610DC50 */  addiu      $s0, $s0, %lo(gEntityVtableIndexArray)
/* 195E78 801E7E28 020E7821 */  addu       $t7, $s0, $t6
/* 195E7C 801E7E2C ADED0000 */  sw         $t5, 0x0($t7)
/* 195E80 801E7E30 8C620000 */  lw         $v0, 0x0($v1)
/* 195E84 801E7E34 3C0B800F */  lui        $t3, %hi(D_800E9E20)
/* 195E88 801E7E38 3C11800E */  lui        $s1, %hi(D_800E6F50)
/* 195E8C 801E7E3C 00022880 */  sll        $a1, $v0, 2
/* 195E90 801E7E40 01655821 */  addu       $t3, $t3, $a1
.L801E7E44_ovl16:
/* 195E94 801E7E44 8D6B9E20 */  lw         $t3, %lo(D_800E9E20)($t3)
/* 195E98 801E7E48 26316F50 */  addiu      $s1, $s1, %lo(D_800E6F50)
/* 195E9C 801E7E4C 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 195EA0 801E7E50 1D600026 */  bgtz       $t3, .L801E7EEC_ovl9
/* 195EA4 801E7E54 0002C900 */   sll       $t9, $v0, 4
/* 195EA8 801E7E58 02394021 */  addu       $t0, $s1, $t9
/* 195EAC 801E7E5C 4481A000 */  mtc1       $at, $f20
/* 195EB0 801E7E60 C50A000C */  lwc1       $f10, 0xC($t0)
/* 195EB4 801E7E64 24120004 */  addiu      $s2, $zero, 0x4
/* 195EB8 801E7E68 02054821 */  addu       $t1, $s0, $a1
.L801E7E6C_ovl10:
/* 195EBC 801E7E6C 4614503C */  c.lt.s     $f10, $f20
/* 195EC0 801E7E70 00000000 */  nop
/* 195EC4 801E7E74 4502001E */  bc1fl      .L801E7EF0_ovl9
/* 195EC8 801E7E78 8FBF002C */   lw        $ra, 0x2C($sp)
/* 195ECC 801E7E7C 1000001B */  b          .L801E7EEC_ovl9
.L801E7E80_ovl10:
/* 195ED0 801E7E80 AD320000 */   sw        $s2, 0x0($t1)
.L801E7E84_ovl9:
/* 195ED4 801E7E84 3C11800E */  lui        $s1, %hi(D_800E6F50)
/* 195ED8 801E7E88 3C10800E */  lui        $s0, %hi(gEntityVtableIndexArray)
/* 195EDC 801E7E8C 4481A000 */  mtc1       $at, $f20
/* 195EE0 801E7E90 2610DC50 */  addiu      $s0, $s0, %lo(gEntityVtableIndexArray)
/* 195EE4 801E7E94 26316F50 */  addiu      $s1, $s1, %lo(D_800E6F50)
/* 195EE8 801E7E98 24120004 */  addiu      $s2, $zero, 0x4
.L801E7E9C_ovl9:
/* 195EEC 801E7E9C 0C02BC9F */  jal        func_800AF27C
/* 195EF0 801E7EA0 00000000 */   nop
/* 195EF4 801E7EA4 8E630000 */  lw         $v1, 0x0($s3)
/* 195EF8 801E7EA8 8C620000 */  lw         $v0, 0x0($v1)
/* 195EFC 801E7EAC 00025100 */  sll        $t2, $v0, 4
/* 195F00 801E7EB0 022AC021 */  addu       $t8, $s1, $t2
/* 195F04 801E7EB4 C710000C */  lwc1       $f16, 0xC($t8)
/* 195F08 801E7EB8 00026080 */  sll        $t4, $v0, 2
/* 195F0C 801E7EBC 020C7021 */  addu       $t6, $s0, $t4
/* 195F10 801E7EC0 4614803C */  c.lt.s     $f16, $f20
/* 195F14 801E7EC4 00000000 */  nop
/* 195F18 801E7EC8 45020004 */  bc1fl      .L801E7EDC_ovl9
/* 195F1C 801E7ECC 00026880 */   sll       $t5, $v0, 2
/* 195F20 801E7ED0 ADD20000 */  sw         $s2, 0x0($t6)
glabel func_801E7ED4_ovl10
/* 195F24 801E7ED4 8C620000 */  lw         $v0, 0x0($v1)
/* 195F28 801E7ED8 00026880 */  sll        $t5, $v0, 2
.L801E7EDC_ovl9:
/* 195F2C 801E7EDC 020D7821 */  addu       $t7, $s0, $t5
glabel func_801E7EE0_ovl16
/* 195F30 801E7EE0 8DEB0000 */  lw         $t3, 0x0($t7)
/* 195F34 801E7EE4 1160FFED */  beqz       $t3, .L801E7E9C_ovl9
/* 195F38 801E7EE8 00000000 */   nop
.L801E7EEC_ovl9:
/* 195F3C 801E7EEC 8FBF002C */  lw         $ra, 0x2C($sp)
.L801E7EF0_ovl9:
/* 195F40 801E7EF0 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 195F44 801E7EF4 8FB0001C */  lw         $s0, 0x1C($sp)
/* 195F48 801E7EF8 8FB10020 */  lw         $s1, 0x20($sp)
/* 195F4C 801E7EFC 8FB20024 */  lw         $s2, 0x24($sp)
/* 195F50 801E7F00 8FB30028 */  lw         $s3, 0x28($sp)
/* 195F54 801E7F04 03E00008 */  jr         $ra
/* 195F58 801E7F08 27BD0030 */   addiu     $sp, $sp, 0x30
