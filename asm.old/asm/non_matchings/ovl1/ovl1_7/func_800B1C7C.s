glabel func_800B1C7C
/* 059ECC 800B1C7C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 059ED0 800B1C80 AFBF0024 */  sw    $ra, 0x24($sp)
/* 059ED4 800B1C84 AFB20020 */  sw    $s2, 0x20($sp)
/* 059ED8 800B1C88 AFB1001C */  sw    $s1, 0x1c($sp)
/* 059EDC 800B1C8C AFB00018 */  sw    $s0, 0x18($sp)
/* 059EE0 800B1C90 8C900000 */  lw    $s0, ($a0)
/* 059EE4 800B1C94 3C0E800E */  lui   $t6, %hi(D_800DD8D0) # $t6, 0x800e
/* 059EE8 800B1C98 25CED8D0 */  addiu $t6, %lo(D_800DD8D0) # addiu $t6, $t6, -0x2730
/* 059EEC 800B1C9C 00109080 */  sll   $s2, $s0, 2
/* 059EF0 800B1CA0 024E1021 */  addu  $v0, $s2, $t6
/* 059EF4 800B1CA4 8C430000 */  lw    $v1, ($v0)
/* 059EF8 800B1CA8 00808825 */  move  $s1, $a0
/* 059EFC 800B1CAC 30650080 */  andi  $a1, $v1, 0x80
/* 059F00 800B1CB0 10A0000D */  beqz  $a1, .L800B1CE8_ovl1
/* 059F04 800B1CB4 306F8000 */   andi  $t7, $v1, 0x8000
/* 059F08 800B1CB8 15E0000B */  bnez  $t7, .L800B1CE8_ovl1
/* 059F0C 800B1CBC 00000000 */   nop   
/* 059F10 800B1CC0 0C002DD6 */  jal   func_8000B758_ovl1
/* 059F14 800B1CC4 AFA2002C */   sw    $v0, 0x2c($sp)
/* 059F18 800B1CC8 8E380044 */  lw    $t8, 0x44($s1)
/* 059F1C 800B1CCC 8FA2002C */  lw    $v0, 0x2c($sp)
/* 059F20 800B1CD0 37190001 */  ori   $t9, $t8, 1
/* 059F24 800B1CD4 AE390044 */  sw    $t9, 0x44($s1)
/* 059F28 800B1CD8 8C480000 */  lw    $t0, ($v0)
/* 059F2C 800B1CDC 35098000 */  ori   $t1, $t0, 0x8000
/* 059F30 800B1CE0 10000043 */  b     .L800B1DF0_ovl1
/* 059F34 800B1CE4 AC490000 */   sw    $t1, ($v0)
.L800B1CE8_ovl1:
/* 059F38 800B1CE8 14A0000E */  bnez  $a1, .L800B1D24_ovl1
/* 059F3C 800B1CEC 306A8000 */   andi  $t2, $v1, 0x8000
/* 059F40 800B1CF0 1140000C */  beqz  $t2, .L800B1D24_ovl1
/* 059F44 800B1CF4 02202025 */   move  $a0, $s1
/* 059F48 800B1CF8 0C002DE3 */  jal   func_8000B78C_ovl1
/* 059F4C 800B1CFC AFA2002C */   sw    $v0, 0x2c($sp)
/* 059F50 800B1D00 8E2B0044 */  lw    $t3, 0x44($s1)
/* 059F54 800B1D04 8FA2002C */  lw    $v0, 0x2c($sp)
/* 059F58 800B1D08 2401FFFE */  li    $at, -2
/* 059F5C 800B1D0C 01616024 */  and   $t4, $t3, $at
/* 059F60 800B1D10 AE2C0044 */  sw    $t4, 0x44($s1)
/* 059F64 800B1D14 8C4D0000 */  lw    $t5, ($v0)
/* 059F68 800B1D18 39AE8000 */  xori  $t6, $t5, 0x8000
/* 059F6C 800B1D1C 10000034 */  b     .L800B1DF0_ovl1
/* 059F70 800B1D20 AC4E0000 */   sw    $t6, ($v0)
.L800B1D24_ovl1:
/* 059F74 800B1D24 24040001 */  li    $a0, 1
/* 059F78 800B1D28 00002825 */  move  $a1, $zero
/* 059F7C 800B1D2C 0C02C782 */  jal   func_800B1E08
/* 059F80 800B1D30 02003025 */   move  $a2, $s0
/* 059F84 800B1D34 3C05800E */ lui $a1, %hi(gEntityGObjProcessArray)
/* 059F88 800B1D38 00B22821 */  addu  $a1, $a1, $s2
/* 059F8C 800B1D3C 8CA5E510 */ lw $a1, %lo(gEntityGObjProcessArray)($a1)
/* 059F90 800B1D40 24040002 */  li    $a0, 2
/* 059F94 800B1D44 0C02C782 */  jal   func_800B1E08
/* 059F98 800B1D48 02003025 */   move  $a2, $s0
/* 059F9C 800B1D4C 24040004 */  li    $a0, 4
/* 059FA0 800B1D50 00002825 */  move  $a1, $zero
/* 059FA4 800B1D54 0C02C782 */  jal   func_800B1E08
/* 059FA8 800B1D58 02003025 */   move  $a2, $s0
/* 059FAC 800B1D5C 24040008 */  li    $a0, 8
/* 059FB0 800B1D60 00002825 */  move  $a1, $zero
/* 059FB4 800B1D64 0C02C782 */  jal   func_800B1E08
/* 059FB8 800B1D68 02003025 */   move  $a2, $s0
/* 059FBC 800B1D6C 3C05800E */ lui $a1, %hi(gEntityGObjProcessArray3)
/* 059FC0 800B1D70 00B22821 */  addu  $a1, $a1, $s2
/* 059FC4 800B1D74 8CA5E890 */ lw $a1, %lo(gEntityGObjProcessArray3)($a1)
/* 059FC8 800B1D78 24040010 */  li    $a0, 16
/* 059FCC 800B1D7C 0C02C782 */  jal   func_800B1E08
/* 059FD0 800B1D80 02003025 */   move  $a2, $s0
/* 059FD4 800B1D84 3C05800E */ lui $a1, %hi(gEntityGObjProcessArray4)
/* 059FD8 800B1D88 00B22821 */  addu  $a1, $a1, $s2
/* 059FDC 800B1D8C 8CA5EA50 */ lw $a1, %lo(gEntityGObjProcessArray4)($a1)
/* 059FE0 800B1D90 24040020 */  li    $a0, 32
/* 059FE4 800B1D94 0C02C782 */  jal   func_800B1E08
/* 059FE8 800B1D98 02003025 */   move  $a2, $s0
/* 059FEC 800B1D9C 3C05800E */ lui $a1, %hi(gEntityGObjProcessArray5)
/* 059FF0 800B1DA0 00B22821 */  addu  $a1, $a1, $s2
/* 059FF4 800B1DA4 8CA5EC10 */ lw $a1, %lo(gEntityGObjProcessArray5)($a1)
/* 059FF8 800B1DA8 24040040 */  li    $a0, 64
/* 059FFC 800B1DAC 0C02C782 */  jal   func_800B1E08
/* 05A000 800B1DB0 02003025 */   move  $a2, $s0
/* 05A004 800B1DB4 24010001 */  li    $at, 1
/* 05A008 800B1DB8 10410005 */  beq   $v0, $at, .L800B1DD0_ovl1
/* 05A00C 800B1DBC 24010002 */   li    $at, 2
/* 05A010 800B1DC0 50410008 */  beql  $v0, $at, .L800B1DE4_ovl1
/* 05A014 800B1DC4 8E390044 */   lw    $t9, 0x44($s1)
/* 05A018 800B1DC8 1000000A */  b     .L800B1DF4_ovl1
/* 05A01C 800B1DCC 8FBF0024 */   lw    $ra, 0x24($sp)
.L800B1DD0_ovl1:
/* 05A020 800B1DD0 8E2F0044 */  lw    $t7, 0x44($s1)
/* 05A024 800B1DD4 35F80001 */  ori   $t8, $t7, 1
/* 05A028 800B1DD8 10000005 */  b     .L800B1DF0_ovl1
/* 05A02C 800B1DDC AE380044 */   sw    $t8, 0x44($s1)
/* 05A030 800B1DE0 8E390044 */  lw    $t9, 0x44($s1)
.L800B1DE4_ovl1:
/* 05A034 800B1DE4 2401FFFE */  li    $at, -2
/* 05A038 800B1DE8 03214024 */  and   $t0, $t9, $at
/* 05A03C 800B1DEC AE280044 */  sw    $t0, 0x44($s1)
.L800B1DF0_ovl1:
/* 05A040 800B1DF0 8FBF0024 */  lw    $ra, 0x24($sp)
.L800B1DF4_ovl1:
/* 05A044 800B1DF4 8FB00018 */  lw    $s0, 0x18($sp)
/* 05A048 800B1DF8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 05A04C 800B1DFC 8FB20020 */  lw    $s2, 0x20($sp)
/* 05A050 800B1E00 03E00008 */  jr    $ra
/* 05A054 800B1E04 27BD0040 */   addiu $sp, $sp, 0x40
.type func_800B1C7C, @function
.size func_800B1C7C, . - func_800B1C7C
