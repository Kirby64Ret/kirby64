nonmatching func_800B8E00, 0x134

glabel func_800B8E00
    /* 61050 800B8E00 00044080 */  sll        $t0, $a0, 2
    /* 61054 800B8E04 01044023 */  subu       $t0, $t0, $a0
    /* 61058 800B8E08 00084080 */  sll        $t0, $t0, 2
    /* 6105C 800B8E0C 01044023 */  subu       $t0, $t0, $a0
    /* 61060 800B8E10 3C0E800F */  lui        $t6, %hi(gSaveBuffer1)
    /* 61064 800B8E14 25CEC9F8 */  addiu      $t6, $t6, %lo(gSaveBuffer1)
    /* 61068 800B8E18 000840C0 */  sll        $t0, $t0, 3
    /* 6106C 800B8E1C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 61070 800B8E20 010E1821 */  addu       $v1, $t0, $t6
    /* 61074 800B8E24 AFB00018 */  sw         $s0, 0x18($sp)
    /* 61078 800B8E28 24700010 */  addiu      $s0, $v1, 0x10
    /* 6107C 800B8E2C 24660064 */  addiu      $a2, $v1, 0x64
    /* 61080 800B8E30 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 61084 800B8E34 00803825 */  or         $a3, $a0, $zero
    /* 61088 800B8E38 02001025 */  or         $v0, $s0, $zero
    /* 6108C 800B8E3C 10D00013 */  beq        $a2, $s0, .L800B8E8C
    /* 61090 800B8E40 00C02825 */   or        $a1, $a2, $zero
    /* 61094 800B8E44 00D01823 */  subu       $v1, $a2, $s0
    /* 61098 800B8E48 3063000F */  andi       $v1, $v1, 0xF
    /* 6109C 800B8E4C 10600007 */  beqz       $v1, .L800B8E6C
    /* 610A0 800B8E50 00702021 */   addu      $a0, $v1, $s0
    /* 610A4 800B8E54 3C039999 */  lui        $v1, (0x99999999 >> 16)
    /* 610A8 800B8E58 34639999 */  ori        $v1, $v1, (0x99999999 & 0xFFFF)
  .L800B8E5C:
    /* 610AC 800B8E5C 24420004 */  addiu      $v0, $v0, 0x4
    /* 610B0 800B8E60 1482FFFE */  bne        $a0, $v0, .L800B8E5C
    /* 610B4 800B8E64 AC43FFFC */   sw        $v1, -0x4($v0)
    /* 610B8 800B8E68 10460008 */  beq        $v0, $a2, .L800B8E8C
  .L800B8E6C:
    /* 610BC 800B8E6C 3C039999 */   lui       $v1, (0x99999999 >> 16)
    /* 610C0 800B8E70 34639999 */  ori        $v1, $v1, (0x99999999 & 0xFFFF)
  .L800B8E74:
    /* 610C4 800B8E74 24420010 */  addiu      $v0, $v0, 0x10
    /* 610C8 800B8E78 AC43FFF0 */  sw         $v1, -0x10($v0)
    /* 610CC 800B8E7C AC43FFF4 */  sw         $v1, -0xC($v0)
    /* 610D0 800B8E80 AC43FFF8 */  sw         $v1, -0x8($v0)
    /* 610D4 800B8E84 1445FFFB */  bne        $v0, $a1, .L800B8E74
    /* 610D8 800B8E88 AC43FFFC */   sw        $v1, -0x4($v0)
  .L800B8E8C:
    /* 610DC 800B8E8C 00E02025 */  or         $a0, $a3, $zero
    /* 610E0 800B8E90 AFA70040 */  sw         $a3, 0x40($sp)
    /* 610E4 800B8E94 0C02E3F2 */  jal        saveSetFileChecksum
    /* 610E8 800B8E98 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 610EC 800B8E9C 8FA70040 */  lw         $a3, 0x40($sp)
    /* 610F0 800B8EA0 3C18800D */  lui        $t8, %hi(D_800D5150)
    /* 610F4 800B8EA4 27185150 */  addiu      $t8, $t8, %lo(D_800D5150)
    /* 610F8 800B8EA8 00077840 */  sll        $t7, $a3, 1
    /* 610FC 800B8EAC 01F81021 */  addu       $v0, $t7, $t8
    /* 61100 800B8EB0 90440001 */  lbu        $a0, 0x1($v0)
    /* 61104 800B8EB4 AFA20024 */  sw         $v0, 0x24($sp)
    /* 61108 800B8EB8 02002825 */  or         $a1, $s0, $zero
    /* 6110C 800B8EBC 0C00134D */  jal        func_80004D34
    /* 61110 800B8EC0 24060058 */   addiu     $a2, $zero, 0x58
    /* 61114 800B8EC4 8FA20024 */  lw         $v0, 0x24($sp)
    /* 61118 800B8EC8 02002825 */  or         $a1, $s0, $zero
    /* 6111C 800B8ECC 24060058 */  addiu      $a2, $zero, 0x58
    /* 61120 800B8ED0 0C00134D */  jal        func_80004D34
    /* 61124 800B8ED4 90440007 */   lbu       $a0, 0x7($v0)
    /* 61128 800B8ED8 8FB9002C */  lw         $t9, 0x2C($sp)
    /* 6112C 800B8EDC 3C0A800F */  lui        $t2, %hi(gSaveBuffer2)
    /* 61130 800B8EE0 254ACBB0 */  addiu      $t2, $t2, %lo(gSaveBuffer2)
    /* 61134 800B8EE4 27290010 */  addiu      $t1, $t9, 0x10
    /* 61138 800B8EE8 012A5821 */  addu       $t3, $t1, $t2
    /* 6113C 800B8EEC 02007025 */  or         $t6, $s0, $zero
    /* 61140 800B8EF0 260F0054 */  addiu      $t7, $s0, 0x54
  .L800B8EF4:
    /* 61144 800B8EF4 8DCD0000 */  lw         $t5, 0x0($t6)
    /* 61148 800B8EF8 25CE000C */  addiu      $t6, $t6, 0xC
    /* 6114C 800B8EFC 256B000C */  addiu      $t3, $t3, 0xC
    /* 61150 800B8F00 AD6DFFF4 */  sw         $t5, -0xC($t3)
    /* 61154 800B8F04 8DCCFFF8 */  lw         $t4, -0x8($t6)
    /* 61158 800B8F08 AD6CFFF8 */  sw         $t4, -0x8($t3)
    /* 6115C 800B8F0C 8DCDFFFC */  lw         $t5, -0x4($t6)
    /* 61160 800B8F10 15CFFFF8 */  bne        $t6, $t7, .L800B8EF4
    /* 61164 800B8F14 AD6DFFFC */   sw        $t5, -0x4($t3)
    /* 61168 800B8F18 8DCD0000 */  lw         $t5, 0x0($t6)
    /* 6116C 800B8F1C AD6D0000 */  sw         $t5, 0x0($t3)
    /* 61170 800B8F20 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 61174 800B8F24 8FB00018 */  lw         $s0, 0x18($sp)
    /* 61178 800B8F28 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 6117C 800B8F2C 03E00008 */  jr         $ra
    /* 61180 800B8F30 00000000 */   nop
endlabel func_800B8E00
.size func_800B8E00, . - func_800B8E00
