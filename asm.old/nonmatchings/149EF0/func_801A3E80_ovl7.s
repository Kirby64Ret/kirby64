glabel func_801A3E80_ovl7
/* 149EF0 801A3E80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 149EF4 801A3E84 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 149EF8 801A3E88 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 149EFC 801A3E8C AFBF0024 */  sw         $ra, 0x24($sp)
/* 149F00 801A3E90 AFB00020 */  sw         $s0, 0x20($sp)
/* 149F04 801A3E94 AFA40030 */  sw         $a0, 0x30($sp)
/* 149F08 801A3E98 8DCF0000 */  lw         $t7, 0x0($t6)
/* 149F0C 801A3E9C 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 149F10 801A3EA0 000FC080 */  sll        $t8, $t7, 2
/* 149F14 801A3EA4 02188021 */  addu       $s0, $s0, $t8
/* 149F18 801A3EA8 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
/* 149F1C 801A3EAC 8E190088 */  lw         $t9, 0x88($s0)
/* 149F20 801A3EB0 0C066DF6 */  jal        func_8019B7D8_ovl7
/* 149F24 801A3EB4 AFB90028 */   sw        $t9, 0x28($sp)
/* 149F28 801A3EB8 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 149F2C 801A3EBC 0C02BB30 */  jal        func_800AECC0
/* 149F30 801A3EC0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 149F34 801A3EC4 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 149F38 801A3EC8 0C02BB48 */  jal        func_800AED20
/* 149F3C 801A3ECC C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 149F40 801A3ED0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 149F44 801A3ED4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 149F48 801A3ED8 3C01801D */  lui        $at, %hi(D_801CDFB0_ovl7)
/* 149F4C 801A3EDC C42CDFB0 */  lwc1       $f12, %lo(D_801CDFB0_ovl7)($at)
/* 149F50 801A3EE0 8C680000 */  lw         $t0, 0x0($v1)
/* 149F54 801A3EE4 3C01800E */  lui        $at, %hi(D_800DF150)
/* 149F58 801A3EE8 44802000 */  mtc1       $zero, $f4
/* 149F5C 801A3EEC 00084880 */  sll        $t1, $t0, 2
/* 149F60 801A3EF0 00290821 */  addu       $at, $at, $t1
/* 149F64 801A3EF4 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
/* 149F68 801A3EF8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 149F6C 801A3EFC 3C04800E */  lui        $a0, %hi(D_800E6690)
/* 149F70 801A3F00 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* 149F74 801A3F04 000A5880 */  sll        $t3, $t2, 2
/* 149F78 801A3F08 008B6021 */  addu       $t4, $a0, $t3
/* 149F7C 801A3F0C E5840000 */  swc1       $f4, 0x0($t4)
/* 149F80 801A3F10 8C620000 */  lw         $v0, 0x0($v1)
/* 149F84 801A3F14 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 149F88 801A3F18 44804000 */  mtc1       $zero, $f8
/* 149F8C 801A3F1C 00021080 */  sll        $v0, $v0, 2
/* 149F90 801A3F20 00826821 */  addu       $t5, $a0, $v0
/* 149F94 801A3F24 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 149F98 801A3F28 00220821 */  addu       $at, $at, $v0
/* 149F9C 801A3F2C 3C06800E */  lui        $a2, %hi(D_800E3910)
/* 149FA0 801A3F30 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 149FA4 801A3F34 8C6E0000 */  lw         $t6, 0x0($v1)
/* 149FA8 801A3F38 3C01800E */  lui        $at, %hi(D_800E6850)
/* 149FAC 801A3F3C 24C63910 */  addiu      $a2, $a2, %lo(D_800E3910)
/* 149FB0 801A3F40 000E7880 */  sll        $t7, $t6, 2
/* 149FB4 801A3F44 002F0821 */  addu       $at, $at, $t7
/* 149FB8 801A3F48 E42C6850 */  swc1       $f12, %lo(D_800E6850)($at)
/* 149FBC 801A3F4C 8C780000 */  lw         $t8, 0x0($v1)
/* 149FC0 801A3F50 3C01800E */  lui        $at, %hi(D_800E3750)
/* 149FC4 801A3F54 3C07800E */  lui        $a3, %hi(D_800E3E50)
/* 149FC8 801A3F58 0018C880 */  sll        $t9, $t8, 2
/* 149FCC 801A3F5C 00D94021 */  addu       $t0, $a2, $t9
/* 149FD0 801A3F60 E5080000 */  swc1       $f8, 0x0($t0)
/* 149FD4 801A3F64 8C620000 */  lw         $v0, 0x0($v1)
/* 149FD8 801A3F68 24E73E50 */  addiu      $a3, $a3, %lo(D_800E3E50)
/* 149FDC 801A3F6C 00021080 */  sll        $v0, $v0, 2
/* 149FE0 801A3F70 00C24821 */  addu       $t1, $a2, $v0
/* 149FE4 801A3F74 C5200000 */  lwc1       $f0, 0x0($t1)
/* 149FE8 801A3F78 00220821 */  addu       $at, $at, $v0
/* 149FEC 801A3F7C E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 149FF0 801A3F80 8C6A0000 */  lw         $t2, 0x0($v1)
/* 149FF4 801A3F84 3C01800E */  lui        $at, %hi(D_800E3590)
/* 149FF8 801A3F88 000A5880 */  sll        $t3, $t2, 2
/* 149FFC 801A3F8C 002B0821 */  addu       $at, $at, $t3
/* 14A000 801A3F90 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 14A004 801A3F94 8C6C0000 */  lw         $t4, 0x0($v1)
/* 14A008 801A3F98 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 14A00C 801A3F9C 000C6880 */  sll        $t5, $t4, 2
/* 14A010 801A3FA0 002D0821 */  addu       $at, $at, $t5
/* 14A014 801A3FA4 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 14A018 801A3FA8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 14A01C 801A3FAC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 14A020 801A3FB0 000E7880 */  sll        $t7, $t6, 2
/* 14A024 801A3FB4 002F0821 */  addu       $at, $at, $t7
/* 14A028 801A3FB8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 14A02C 801A3FBC 8C780000 */  lw         $t8, 0x0($v1)
/* 14A030 801A3FC0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 14A034 801A3FC4 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 14A038 801A3FC8 0018C880 */  sll        $t9, $t8, 2
/* 14A03C 801A3FCC 00390821 */  addu       $at, $at, $t9
/* 14A040 801A3FD0 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 14A044 801A3FD4 8C680000 */  lw         $t0, 0x0($v1)
/* 14A048 801A3FD8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 14A04C 801A3FDC 00084880 */  sll        $t1, $t0, 2
/* 14A050 801A3FE0 00E95021 */  addu       $t2, $a3, $t1
/* 14A054 801A3FE4 E54C0000 */  swc1       $f12, 0x0($t2)
/* 14A058 801A3FE8 8C620000 */  lw         $v0, 0x0($v1)
/* 14A05C 801A3FEC 8FAE0030 */  lw         $t6, 0x30($sp)
/* 14A060 801A3FF0 00021080 */  sll        $v0, $v0, 2
/* 14A064 801A3FF4 00E25821 */  addu       $t3, $a3, $v0
/* 14A068 801A3FF8 C5620000 */  lwc1       $f2, 0x0($t3)
/* 14A06C 801A3FFC 00220821 */  addu       $at, $at, $v0
/* 14A070 801A4000 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 14A074 801A4004 8C6C0000 */  lw         $t4, 0x0($v1)
/* 14A078 801A4008 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 14A07C 801A400C 000C6880 */  sll        $t5, $t4, 2
/* 14A080 801A4010 002D0821 */  addu       $at, $at, $t5
/* 14A084 801A4014 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
/* 14A088 801A4018 ADC00048 */  sw         $zero, 0x48($t6)
/* 14A08C 801A401C 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 14A090 801A4020 3C01800E */  lui        $at, %hi(D_800DF310)
/* 14A094 801A4024 8DF80000 */  lw         $t8, 0x0($t7)
/* 14A098 801A4028 0018C880 */  sll        $t9, $t8, 2
/* 14A09C 801A402C 00390821 */  addu       $at, $at, $t9
/* 14A0A0 801A4030 AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
/* 14A0A4 801A4034 8E050034 */  lw         $a1, 0x34($s0)
/* 14A0A8 801A4038 10A00003 */  beqz       $a1, .L801A4048_ovl7
/* 14A0AC 801A403C 00000000 */   nop
/* 14A0B0 801A4040 0C0288B5 */  jal        func_800A22D4
/* 14A0B4 801A4044 00A02025 */   or        $a0, $a1, $zero
.L801A4048_ovl7:
/* 14A0B8 801A4048 0C0288C0 */  jal        func_800A2300
/* 14A0BC 801A404C 8FA40030 */   lw        $a0, 0x30($sp)
/* 14A0C0 801A4050 92080040 */  lbu        $t0, 0x40($s0)
/* 14A0C4 801A4054 24010001 */  addiu      $at, $zero, 0x1
/* 14A0C8 801A4058 AE000034 */  sw         $zero, 0x34($s0)
/* 14A0CC 801A405C 11010046 */  beq        $t0, $at, .L801A4178_ovl7
/* 14A0D0 801A4060 00000000 */   nop
/* 14A0D4 801A4064 0C0699AD */  jal        func_801A66B4_ovl7
/* 14A0D8 801A4068 00000000 */   nop
/* 14A0DC 801A406C 1040000B */  beqz       $v0, .L801A409C_ovl7
/* 14A0E0 801A4070 00000000 */   nop
/* 14A0E4 801A4074 44800000 */  mtc1       $zero, $f0
/* 14A0E8 801A4078 8E090094 */  lw         $t1, 0x94($s0)
/* 14A0EC 801A407C 00002025 */  or         $a0, $zero, $zero
/* 14A0F0 801A4080 44060000 */  mfc1       $a2, $f0
/* 14A0F4 801A4084 8D250018 */  lw         $a1, 0x18($t1)
/* 14A0F8 801A4088 44070000 */  mfc1       $a3, $f0
/* 14A0FC 801A408C 0C03F55C */  jal        func_800FD570
/* 14A100 801A4090 E7A00010 */   swc1      $f0, 0x10($sp)
/* 14A104 801A4094 1000001E */  b          .L801A4110_ovl7
/* 14A108 801A4098 8E020094 */   lw        $v0, 0x94($s0)
.L801A409C_ovl7:
/* 14A10C 801A409C 0C0699BF */  jal        func_801A66FC_ovl7
/* 14A110 801A40A0 00000000 */   nop
/* 14A114 801A40A4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 14A118 801A40A8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 14A11C 801A40AC 3C07800E */  lui        $a3, %hi(gEntityVtableIndexArray)
/* 14A120 801A40B0 24E7DC50 */  addiu      $a3, $a3, %lo(gEntityVtableIndexArray)
/* 14A124 801A40B4 8C6A0000 */  lw         $t2, 0x0($v1)
/* 14A128 801A40B8 3C06801C */  lui        $a2, %hi(D_801C2970_ovl7)
/* 14A12C 801A40BC 24C62970 */  addiu      $a2, $a2, %lo(D_801C2970_ovl7)
/* 14A130 801A40C0 000A5880 */  sll        $t3, $t2, 2
/* 14A134 801A40C4 00EB6021 */  addu       $t4, $a3, $t3
/* 14A138 801A40C8 AD820000 */  sw         $v0, 0x0($t4)
/* 14A13C 801A40CC 8C6D0000 */  lw         $t5, 0x0($v1)
/* 14A140 801A40D0 24050009 */  addiu      $a1, $zero, 0x9
/* 14A144 801A40D4 000D7080 */  sll        $t6, $t5, 2
/* 14A148 801A40D8 00EE7821 */  addu       $t7, $a3, $t6
/* 14A14C 801A40DC 0C02911F */  jal        call_virtual_function
/* 14A150 801A40E0 8DE40000 */   lw        $a0, 0x0($t7)
/* 14A154 801A40E4 0C066220 */  jal        func_80198880_ovl7
/* 14A158 801A40E8 8FA40028 */   lw        $a0, 0x28($sp)
/* 14A15C 801A40EC 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 14A160 801A40F0 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 14A164 801A40F4 44805000 */  mtc1       $zero, $f10
/* 14A168 801A40F8 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 14A16C 801A40FC 8F190000 */  lw         $t9, 0x0($t8)
/* 14A170 801A4100 00194080 */  sll        $t0, $t9, 2
/* 14A174 801A4104 00280821 */  addu       $at, $at, $t0
/* 14A178 801A4108 E42A7B20 */  swc1       $f10, %lo(D_800E7B20)($at)
/* 14A17C 801A410C 8E020094 */  lw         $v0, 0x94($s0)
.L801A4110_ovl7:
/* 14A180 801A4110 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 14A184 801A4114 8C44001C */  lw         $a0, 0x1C($v0)
/* 14A188 801A4118 10810008 */  beq        $a0, $at, .L801A413C_ovl7
/* 14A18C 801A411C 00000000 */   nop
/* 14A190 801A4120 92090040 */  lbu        $t1, 0x40($s0)
/* 14A194 801A4124 24010001 */  addiu      $at, $zero, 0x1
/* 14A198 801A4128 11210004 */  beq        $t1, $at, .L801A413C_ovl7
/* 14A19C 801A412C 00000000 */   nop
/* 14A1A0 801A4130 0C029D9E */  jal        play_sound
/* 14A1A4 801A4134 00000000 */   nop
/* 14A1A8 801A4138 8E020094 */  lw         $v0, 0x94($s0)
.L801A413C_ovl7:
/* 14A1AC 801A413C 1040000E */  beqz       $v0, .L801A4178_ovl7
/* 14A1B0 801A4140 00000000 */   nop
/* 14A1B4 801A4144 8C430018 */  lw         $v1, 0x18($v0)
/* 14A1B8 801A4148 24010006 */  addiu      $at, $zero, 0x6
/* 14A1BC 801A414C 54610006 */  bnel       $v1, $at, .L801A4168_ovl7
/* 14A1C0 801A4150 24010007 */   addiu     $at, $zero, 0x7
/* 14A1C4 801A4154 0C069075 */  jal        func_801A41D4_ovl7
/* 14A1C8 801A4158 8FA40030 */   lw        $a0, 0x30($sp)
/* 14A1CC 801A415C 8E0A0094 */  lw         $t2, 0x94($s0)
/* 14A1D0 801A4160 8D430018 */  lw         $v1, 0x18($t2)
/* 14A1D4 801A4164 24010007 */  addiu      $at, $zero, 0x7
.L801A4168_ovl7:
/* 14A1D8 801A4168 14610003 */  bne        $v1, $at, .L801A4178_ovl7
/* 14A1DC 801A416C 00000000 */   nop
/* 14A1E0 801A4170 0C0690B6 */  jal        func_801A42D8_ovl7
/* 14A1E4 801A4174 8FA40030 */   lw        $a0, 0x30($sp)
.L801A4178_ovl7:
/* 14A1E8 801A4178 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 14A1EC 801A417C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 14A1F0 801A4180 3C01800E */  lui        $at, %hi(D_800DF150)
/* 14A1F4 801A4184 2404007D */  addiu      $a0, $zero, 0x7D
/* 14A1F8 801A4188 8C6B0000 */  lw         $t3, 0x0($v1)
/* 14A1FC 801A418C 000B6080 */  sll        $t4, $t3, 2
/* 14A200 801A4190 002C0821 */  addu       $at, $at, $t4
/* 14A204 801A4194 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
/* 14A208 801A4198 0C02C67D */  jal        func_800B19F4
/* 14A20C 801A419C 8C650000 */   lw        $a1, 0x0($v1)
/* 14A210 801A41A0 0C066ED6 */  jal        func_8019BB58_ovl7
/* 14A214 801A41A4 00000000 */   nop
/* 14A218 801A41A8 0C002DAF */  jal        finish_current_thread
/* 14A21C 801A41AC 2404000F */   addiu     $a0, $zero, 0xF
/* 14A220 801A41B0 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 14A224 801A41B4 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 14A228 801A41B8 0C067656 */  jal        func_8019D958_ovl7
/* 14A22C 801A41BC 95A40002 */   lhu       $a0, 0x2($t5)
/* 14A230 801A41C0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 14A234 801A41C4 8FB00020 */  lw         $s0, 0x20($sp)
/* 14A238 801A41C8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 14A23C 801A41CC 03E00008 */  jr         $ra
/* 14A240 801A41D0 00000000 */   nop
