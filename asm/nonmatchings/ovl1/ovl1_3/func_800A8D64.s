nonmatching func_800A8D64, 0xF0

glabel func_800A8D64
    /* 50FB4 800A8D64 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 50FB8 800A8D68 00047402 */  srl        $t6, $a0, 16
    /* 50FBC 800A8D6C 3C18800D */  lui        $t8, %hi(D_800D00C4)
    /* 50FC0 800A8D70 AFB00014 */  sw         $s0, 0x14($sp)
    /* 50FC4 800A8D74 271800C4 */  addiu      $t8, $t8, %lo(D_800D00C4)
    /* 50FC8 800A8D78 000E7880 */  sll        $t7, $t6, 2
    /* 50FCC 800A8D7C 01F88021 */  addu       $s0, $t7, $t8
    /* 50FD0 800A8D80 8E190000 */  lw         $t9, 0x0($s0)
    /* 50FD4 800A8D84 3083FFFF */  andi       $v1, $a0, 0xFFFF
    /* 50FD8 800A8D88 00031880 */  sll        $v1, $v1, 2
    /* 50FDC 800A8D8C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 50FE0 800A8D90 AFB10018 */  sw         $s1, 0x18($sp)
    /* 50FE4 800A8D94 03234021 */  addu       $t0, $t9, $v1
    /* 50FE8 800A8D98 8D110000 */  lw         $s1, 0x0($t0)
    /* 50FEC 800A8D9C 12200028 */  beqz       $s1, .L800A8E40
    /* 50FF0 800A8DA0 02252025 */   or        $a0, $s1, $a1
    /* 50FF4 800A8DA4 0C02A15E */  jal        func_800A8578
    /* 50FF8 800A8DA8 AFA30020 */   sw        $v1, 0x20($sp)
    /* 50FFC 800A8DAC 14400024 */  bnez       $v0, .L800A8E40
    /* 51000 800A8DB0 8FA30020 */   lw        $v1, 0x20($sp)
    /* 51004 800A8DB4 8E090000 */  lw         $t1, 0x0($s0)
    /* 51008 800A8DB8 01235021 */  addu       $t2, $t1, $v1
    /* 5100C 800A8DBC AD400000 */  sw         $zero, 0x0($t2)
    /* 51010 800A8DC0 8E30000C */  lw         $s0, 0xC($s1)
    /* 51014 800A8DC4 3C11800D */  lui        $s1, %hi(D_800D0104)
    /* 51018 800A8DC8 26310104 */  addiu      $s1, $s1, %lo(D_800D0104)
    /* 5101C 800A8DCC 8E030000 */  lw         $v1, 0x0($s0)
    /* 51020 800A8DD0 1060001B */  beqz       $v1, .L800A8E40
    /* 51024 800A8DD4 00035C02 */   srl       $t3, $v1, 16
  .L800A8DD8:
    /* 51028 800A8DD8 000B6080 */  sll        $t4, $t3, 2
    /* 5102C 800A8DDC 022C6821 */  addu       $t5, $s1, $t4
    /* 51030 800A8DE0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 51034 800A8DE4 306FFFFF */  andi       $t7, $v1, 0xFFFF
    /* 51038 800A8DE8 000FC080 */  sll        $t8, $t7, 2
    /* 5103C 800A8DEC 01D8C821 */  addu       $t9, $t6, $t8
    /* 51040 800A8DF0 8F250000 */  lw         $a1, 0x0($t9)
    /* 51044 800A8DF4 50A0000F */  beql       $a1, $zero, .L800A8E34
    /* 51048 800A8DF8 8E030004 */   lw        $v1, 0x4($s0)
    /* 5104C 800A8DFC 0C02A15E */  jal        func_800A8578
    /* 51050 800A8E00 34A40003 */   ori       $a0, $a1, 0x3
    /* 51054 800A8E04 5440000B */  bnel       $v0, $zero, .L800A8E34
    /* 51058 800A8E08 8E030004 */   lw        $v1, 0x4($s0)
    /* 5105C 800A8E0C 8E020000 */  lw         $v0, 0x0($s0)
    /* 51060 800A8E10 00024402 */  srl        $t0, $v0, 16
    /* 51064 800A8E14 00084880 */  sll        $t1, $t0, 2
    /* 51068 800A8E18 02295021 */  addu       $t2, $s1, $t1
    /* 5106C 800A8E1C 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 51070 800A8E20 304CFFFF */  andi       $t4, $v0, 0xFFFF
    /* 51074 800A8E24 000C6880 */  sll        $t5, $t4, 2
    /* 51078 800A8E28 016D7821 */  addu       $t7, $t3, $t5
    /* 5107C 800A8E2C ADE00000 */  sw         $zero, 0x0($t7)
    /* 51080 800A8E30 8E030004 */  lw         $v1, 0x4($s0)
  .L800A8E34:
    /* 51084 800A8E34 26100004 */  addiu      $s0, $s0, 0x4
    /* 51088 800A8E38 5460FFE7 */  bnel       $v1, $zero, .L800A8DD8
    /* 5108C 800A8E3C 00035C02 */   srl       $t3, $v1, 16
  .L800A8E40:
    /* 51090 800A8E40 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 51094 800A8E44 8FB00014 */  lw         $s0, 0x14($sp)
    /* 51098 800A8E48 8FB10018 */  lw         $s1, 0x18($sp)
    /* 5109C 800A8E4C 03E00008 */  jr         $ra
    /* 510A0 800A8E50 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800A8D64
.size func_800A8D64, . - func_800A8D64
