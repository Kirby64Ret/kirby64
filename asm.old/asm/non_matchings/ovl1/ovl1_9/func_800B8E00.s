glabel func_800B8E00
/* 061050 800B8E00 00044080 */  sll   $t0, $a0, 2
/* 061054 800B8E04 01044023 */  subu  $t0, $t0, $a0
/* 061058 800B8E08 00084080 */  sll   $t0, $t0, 2
/* 06105C 800B8E0C 01044023 */  subu  $t0, $t0, $a0
/* 061060 800B8E10 3C0E800F */  lui   $t6, %hi(gSaveBuffer1) # $t6, 0x800f
/* 061064 800B8E14 25CEC9F8 */  addiu $t6, %lo(gSaveBuffer1) # addiu $t6, $t6, -0x3608
/* 061068 800B8E18 000840C0 */  sll   $t0, $t0, 3
/* 06106C 800B8E1C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 061070 800B8E20 010E1821 */  addu  $v1, $t0, $t6
/* 061074 800B8E24 AFB00018 */  sw    $s0, 0x18($sp)
/* 061078 800B8E28 24700010 */  addiu $s0, $v1, 0x10
/* 06107C 800B8E2C 24660064 */  addiu $a2, $v1, 0x64
/* 061080 800B8E30 AFBF001C */  sw    $ra, 0x1c($sp)
/* 061084 800B8E34 00803825 */  move  $a3, $a0
/* 061088 800B8E38 02001025 */  move  $v0, $s0
/* 06108C 800B8E3C 10D00013 */  beq   $a2, $s0, .L800B8E8C_ovl1
/* 061090 800B8E40 00C02825 */   move  $a1, $a2
/* 061094 800B8E44 00D01823 */  subu  $v1, $a2, $s0
/* 061098 800B8E48 3063000F */  andi  $v1, $v1, 0xf
/* 06109C 800B8E4C 10600007 */  beqz  $v1, .L800B8E6C_ovl1
/* 0610A0 800B8E50 00702021 */   addu  $a0, $v1, $s0
/* 0610A4 800B8E54 3C039999 */  lui   $v1, (0x99999999 >> 16) # lui $v1, 0x9999
/* 0610A8 800B8E58 34639999 */  ori   $v1, (0x99999999 & 0xFFFF) # ori $v1, $v1, 0x9999
.L800B8E5C_ovl1:
/* 0610AC 800B8E5C 24420004 */  addiu $v0, $v0, 4
/* 0610B0 800B8E60 1482FFFE */  bne   $a0, $v0, .L800B8E5C_ovl1
/* 0610B4 800B8E64 AC43FFFC */   sw    $v1, -4($v0)
/* 0610B8 800B8E68 10460008 */  beq   $v0, $a2, .L800B8E8C_ovl1
.L800B8E6C_ovl1:
/* 0610BC 800B8E6C 3C039999 */   lui   $v1, (0x99999999 >> 16) # lui $v1, 0x9999
/* 0610C0 800B8E70 34639999 */  ori   $v1, (0x99999999 & 0xFFFF) # ori $v1, $v1, 0x9999
.L800B8E74_ovl1:
/* 0610C4 800B8E74 24420010 */  addiu $v0, $v0, 0x10
/* 0610C8 800B8E78 AC43FFF0 */  sw    $v1, -0x10($v0)
/* 0610CC 800B8E7C AC43FFF4 */  sw    $v1, -0xc($v0)
/* 0610D0 800B8E80 AC43FFF8 */  sw    $v1, -8($v0)
/* 0610D4 800B8E84 1445FFFB */  bne   $v0, $a1, .L800B8E74_ovl1
/* 0610D8 800B8E88 AC43FFFC */   sw    $v1, -4($v0)
.L800B8E8C_ovl1:
/* 0610DC 800B8E8C 00E02025 */  move  $a0, $a3
/* 0610E0 800B8E90 AFA70040 */  sw    $a3, 0x40($sp)
/* 0610E4 800B8E94 0C02E3F2 */  jal   calc_file_checksum
/* 0610E8 800B8E98 AFA8002C */   sw    $t0, 0x2c($sp)
/* 0610EC 800B8E9C 8FA70040 */  lw    $a3, 0x40($sp)
/* 0610F0 800B8EA0 3C18800D */  lui   $t8, %hi(D_800D5150) # $t8, 0x800d
/* 0610F4 800B8EA4 27185150 */  addiu $t8, %lo(D_800D5150) # addiu $t8, $t8, 0x5150
/* 0610F8 800B8EA8 00077840 */  sll   $t7, $a3, 1
/* 0610FC 800B8EAC 01F81021 */  addu  $v0, $t7, $t8
/* 061100 800B8EB0 90440001 */  lbu   $a0, 1($v0)
/* 061104 800B8EB4 AFA20024 */  sw    $v0, 0x24($sp)
/* 061108 800B8EB8 02002825 */  move  $a1, $s0
/* 06110C 800B8EBC 0C00134D */  jal   func_80004D34_ovl1
/* 061110 800B8EC0 24060058 */   li    $a2, 88
/* 061114 800B8EC4 8FA20024 */  lw    $v0, 0x24($sp)
/* 061118 800B8EC8 02002825 */  move  $a1, $s0
/* 06111C 800B8ECC 24060058 */  li    $a2, 88
/* 061120 800B8ED0 0C00134D */  jal   func_80004D34_ovl1
/* 061124 800B8ED4 90440007 */   lbu   $a0, 7($v0)
/* 061128 800B8ED8 8FB9002C */  lw    $t9, 0x2c($sp)
/* 06112C 800B8EDC 3C0A800F */  lui   $t2, %hi(gSaveBuffer2) # $t2, 0x800f
/* 061130 800B8EE0 254ACBB0 */  addiu $t2, %lo(gSaveBuffer2) # addiu $t2, $t2, -0x3450
/* 061134 800B8EE4 27290010 */  addiu $t1, $t9, 0x10
/* 061138 800B8EE8 012A5821 */  addu  $t3, $t1, $t2
/* 06113C 800B8EEC 02007025 */  move  $t6, $s0
/* 061140 800B8EF0 260F0054 */  addiu $t7, $s0, 0x54
.L800B8EF4_ovl1:
/* 061144 800B8EF4 8DCD0000 */  lw    $t5, ($t6)
/* 061148 800B8EF8 25CE000C */  addiu $t6, $t6, 0xc
/* 06114C 800B8EFC 256B000C */  addiu $t3, $t3, 0xc
/* 061150 800B8F00 AD6DFFF4 */  sw    $t5, -0xc($t3)
/* 061154 800B8F04 8DCCFFF8 */  lw    $t4, -8($t6)
/* 061158 800B8F08 AD6CFFF8 */  sw    $t4, -8($t3)
/* 06115C 800B8F0C 8DCDFFFC */  lw    $t5, -4($t6)
/* 061160 800B8F10 15CFFFF8 */  bne   $t6, $t7, .L800B8EF4_ovl1
/* 061164 800B8F14 AD6DFFFC */   sw    $t5, -4($t3)
/* 061168 800B8F18 8DCD0000 */  lw    $t5, ($t6)
/* 06116C 800B8F1C AD6D0000 */  sw    $t5, ($t3)
/* 061170 800B8F20 8FBF001C */  lw    $ra, 0x1c($sp)
/* 061174 800B8F24 8FB00018 */  lw    $s0, 0x18($sp)
/* 061178 800B8F28 27BD0040 */  addiu $sp, $sp, 0x40
/* 06117C 800B8F2C 03E00008 */  jr    $ra
/* 061180 800B8F30 00000000 */   nop   
.type func_800B8E00, @function
.size func_800B8E00, . - func_800B8E00
