glabel func_8000A02C
/* 00AC2C 8000A02C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00AC30 8000A030 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00AC34 8000A034 AFB20020 */  sw    $s2, 0x20($sp)
/* 00AC38 8000A038 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00AC3C 8000A03C AFB00018 */  sw    $s0, 0x18($sp)
/* 00AC40 8000A040 AFA40028 */  sw    $a0, 0x28($sp)
/* 00AC44 8000A044 8C820004 */  lw    $v0, 4($a0)
/* 00AC48 8000A048 00008025 */  move  $s0, $zero
/* 00AC4C 8000A04C 24120008 */  li    $s2, 8
/* 00AC50 8000A050 A040000F */  sb    $zero, 0xf($v0)
/* 00AC54 8000A054 AC40003C */  sw    $zero, 0x3c($v0)
/* 00AC58 8000A058 8FB10028 */  lw    $s1, 0x28($sp)
.L8000A05C_ovl0:
/* 00AC5C 8000A05C 8E240064 */  lw    $a0, 0x64($s1)
/* 00AC60 8000A060 50800004 */  beql  $a0, $zero, .L8000A074_ovl0
/* 00AC64 8000A064 26100004 */   addiu $s0, $s0, 4
/* 00AC68 8000A068 0C0021EB */  jal   HS64_OMMtxPush
/* 00AC6C 8000A06C 00000000 */   nop   
/* 00AC70 8000A070 26100004 */  addiu $s0, $s0, 4
.L8000A074_ovl0:
/* 00AC74 8000A074 1612FFF9 */  bne   $s0, $s2, .L8000A05C_ovl0
/* 00AC78 8000A078 26310004 */   addiu $s1, $s1, 4
/* 00AC7C 8000A07C 8FAF0028 */  lw    $t7, 0x28($sp)
/* 00AC80 8000A080 8DF0006C */  lw    $s0, 0x6c($t7)
/* 00AC84 8000A084 12000006 */  beqz  $s0, .L8000A0A0_ovl0
/* 00AC88 8000A088 00000000 */   nop   
.L8000A08C_ovl0:
/* 00AC8C 8000A08C 8E110000 */  lw    $s1, ($s0)
/* 00AC90 8000A090 0C002218 */  jal   HS64_AObjPush
/* 00AC94 8000A094 02002025 */   move  $a0, $s0
/* 00AC98 8000A098 1620FFFC */  bnez  $s1, .L8000A08C_ovl0
/* 00AC9C 8000A09C 02208025 */   move  $s0, $s1
.L8000A0A0_ovl0:
/* 00ACA0 8000A0A0 0C00227B */  jal   HS64_CameraPush
/* 00ACA4 8000A0A4 8FA40028 */   lw    $a0, 0x28($sp)
/* 00ACA8 8000A0A8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00ACAC 8000A0AC 8FB00018 */  lw    $s0, 0x18($sp)
/* 00ACB0 8000A0B0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00ACB4 8000A0B4 8FB20020 */  lw    $s2, 0x20($sp)
/* 00ACB8 8000A0B8 03E00008 */  jr    $ra
/* 00ACBC 8000A0BC 27BD0028 */   addiu $sp, $sp, 0x28
