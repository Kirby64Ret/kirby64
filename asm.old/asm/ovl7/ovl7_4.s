.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801A3E80
/* 149EF0 801A3E80 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 149EF4 801A3E84 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 149EF8 801A3E88 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 149EFC 801A3E8C AFBF0024 */  sw    $ra, 0x24($sp)
/* 149F00 801A3E90 AFB00020 */  sw    $s0, 0x20($sp)
/* 149F04 801A3E94 AFA40030 */  sw    $a0, 0x30($sp)
/* 149F08 801A3E98 8DCF0000 */  lw    $t7, ($t6)
/* 149F0C 801A3E9C 3C10800E */  lui   $s0, 0x800e
/* 149F10 801A3EA0 000FC080 */  sll   $t8, $t7, 2
/* 149F14 801A3EA4 02188021 */  addu  $s0, $s0, $t8
/* 149F18 801A3EA8 8E101B50 */  lw    $s0, 0x1b50($s0)
/* 149F1C 801A3EAC 8E190088 */  lw    $t9, 0x88($s0)
/* 149F20 801A3EB0 0C066DF6 */  jal   func_8019B7D8_ovl7
/* 149F24 801A3EB4 AFB90028 */   sw    $t9, 0x28($sp)
/* 149F28 801A3EB8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 149F2C 801A3EBC 0C02BB30 */  jal   func_800AECC0
/* 149F30 801A3EC0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 149F34 801A3EC4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 149F38 801A3EC8 0C02BB48 */  jal   func_800AED20
/* 149F3C 801A3ECC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 149F40 801A3ED0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 149F44 801A3ED4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 149F48 801A3ED8 3C01801D */  lui   $at, %hi(D_801CDFB0) # $at, 0x801d
/* 149F4C 801A3EDC C42CDFB0 */  lwc1  $f12, %lo(D_801CDFB0)($at)
/* 149F50 801A3EE0 8C680000 */  lw    $t0, ($v1)
/* 149F54 801A3EE4 3C01800E */  lui   $at, 0x800e
/* 149F58 801A3EE8 44802000 */  mtc1  $zero, $f4
/* 149F5C 801A3EEC 00084880 */  sll   $t1, $t0, 2
/* 149F60 801A3EF0 00290821 */  addu  $at, $at, $t1
/* 149F64 801A3EF4 AC20F150 */  sw    $zero, -0xeb0($at)
/* 149F68 801A3EF8 8C6A0000 */  lw    $t2, ($v1)
/* 149F6C 801A3EFC 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 149F70 801A3F00 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 149F74 801A3F04 000A5880 */  sll   $t3, $t2, 2
/* 149F78 801A3F08 008B6021 */  addu  $t4, $a0, $t3
/* 149F7C 801A3F0C E5840000 */  swc1  $f4, ($t4)
/* 149F80 801A3F10 8C620000 */  lw    $v0, ($v1)
/* 149F84 801A3F14 3C01800E */  lui   $at, 0x800e
/* 149F88 801A3F18 44804000 */  mtc1  $zero, $f8
/* 149F8C 801A3F1C 00021080 */  sll   $v0, $v0, 2
/* 149F90 801A3F20 00826821 */  addu  $t5, $a0, $v0
/* 149F94 801A3F24 C5A60000 */  lwc1  $f6, ($t5)
/* 149F98 801A3F28 00220821 */  addu  $at, $at, $v0
/* 149F9C 801A3F2C 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 149FA0 801A3F30 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 149FA4 801A3F34 8C6E0000 */  lw    $t6, ($v1)
/* 149FA8 801A3F38 3C01800E */  lui   $at, 0x800e
/* 149FAC 801A3F3C 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 149FB0 801A3F40 000E7880 */  sll   $t7, $t6, 2
/* 149FB4 801A3F44 002F0821 */  addu  $at, $at, $t7
/* 149FB8 801A3F48 E42C6850 */  swc1  $f12, 0x6850($at)
/* 149FBC 801A3F4C 8C780000 */  lw    $t8, ($v1)
/* 149FC0 801A3F50 3C01800E */  lui   $at, 0x800e
/* 149FC4 801A3F54 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 149FC8 801A3F58 0018C880 */  sll   $t9, $t8, 2
/* 149FCC 801A3F5C 00D94021 */  addu  $t0, $a2, $t9
/* 149FD0 801A3F60 E5080000 */  swc1  $f8, ($t0)
/* 149FD4 801A3F64 8C620000 */  lw    $v0, ($v1)
/* 149FD8 801A3F68 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 149FDC 801A3F6C 00021080 */  sll   $v0, $v0, 2
/* 149FE0 801A3F70 00C24821 */  addu  $t1, $a2, $v0
/* 149FE4 801A3F74 C5200000 */  lwc1  $f0, ($t1)
/* 149FE8 801A3F78 00220821 */  addu  $at, $at, $v0
/* 149FEC 801A3F7C E4203750 */  swc1  $f0, 0x3750($at)
/* 149FF0 801A3F80 8C6A0000 */  lw    $t2, ($v1)
/* 149FF4 801A3F84 3C01800E */  lui   $at, 0x800e
/* 149FF8 801A3F88 000A5880 */  sll   $t3, $t2, 2
/* 149FFC 801A3F8C 002B0821 */  addu  $at, $at, $t3
/* 14A000 801A3F90 E4203590 */  swc1  $f0, 0x3590($at)
/* 14A004 801A3F94 8C6C0000 */  lw    $t4, ($v1)
/* 14A008 801A3F98 3C01800E */  lui   $at, 0x800e
/* 14A00C 801A3F9C 000C6880 */  sll   $t5, $t4, 2
/* 14A010 801A3FA0 002D0821 */  addu  $at, $at, $t5
/* 14A014 801A3FA4 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14A018 801A3FA8 8C6E0000 */  lw    $t6, ($v1)
/* 14A01C 801A3FAC 3C01800E */  lui   $at, 0x800e
/* 14A020 801A3FB0 000E7880 */  sll   $t7, $t6, 2
/* 14A024 801A3FB4 002F0821 */  addu  $at, $at, $t7
/* 14A028 801A3FB8 E4203210 */  swc1  $f0, 0x3210($at)
/* 14A02C 801A3FBC 8C780000 */  lw    $t8, ($v1)
/* 14A030 801A3FC0 3C01800E */  lui   $at, 0x800e
/* 14A034 801A3FC4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 14A038 801A3FC8 0018C880 */  sll   $t9, $t8, 2
/* 14A03C 801A3FCC 00390821 */  addu  $at, $at, $t9
/* 14A040 801A3FD0 E4203050 */  swc1  $f0, 0x3050($at)
/* 14A044 801A3FD4 8C680000 */  lw    $t0, ($v1)
/* 14A048 801A3FD8 3C01800E */  lui   $at, 0x800e
/* 14A04C 801A3FDC 00084880 */  sll   $t1, $t0, 2
/* 14A050 801A3FE0 00E95021 */  addu  $t2, $a3, $t1
/* 14A054 801A3FE4 E54C0000 */  swc1  $f12, ($t2)
/* 14A058 801A3FE8 8C620000 */  lw    $v0, ($v1)
/* 14A05C 801A3FEC 8FAE0030 */  lw    $t6, 0x30($sp)
/* 14A060 801A3FF0 00021080 */  sll   $v0, $v0, 2
/* 14A064 801A3FF4 00E25821 */  addu  $t3, $a3, $v0
/* 14A068 801A3FF8 C5620000 */  lwc1  $f2, ($t3)
/* 14A06C 801A3FFC 00220821 */  addu  $at, $at, $v0
/* 14A070 801A4000 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14A074 801A4004 8C6C0000 */  lw    $t4, ($v1)
/* 14A078 801A4008 3C01800E */  lui   $at, 0x800e
/* 14A07C 801A400C 000C6880 */  sll   $t5, $t4, 2
/* 14A080 801A4010 002D0821 */  addu  $at, $at, $t5
/* 14A084 801A4014 E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 14A088 801A4018 ADC00048 */  sw    $zero, 0x48($t6)
/* 14A08C 801A401C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 14A090 801A4020 3C01800E */  lui   $at, 0x800e
/* 14A094 801A4024 8DF80000 */  lw    $t8, ($t7)
/* 14A098 801A4028 0018C880 */  sll   $t9, $t8, 2
/* 14A09C 801A402C 00390821 */  addu  $at, $at, $t9
/* 14A0A0 801A4030 AC20F310 */  sw    $zero, -0xcf0($at)
/* 14A0A4 801A4034 8E050034 */  lw    $a1, 0x34($s0)
/* 14A0A8 801A4038 10A00003 */  beqz  $a1, .L801A4048_ovl7
/* 14A0AC 801A403C 00000000 */   nop   
/* 14A0B0 801A4040 0C0288B5 */  jal   func_800A22D4
/* 14A0B4 801A4044 00A02025 */   move  $a0, $a1
.L801A4048_ovl7:
/* 14A0B8 801A4048 0C0288C0 */  jal   func_800A2300
/* 14A0BC 801A404C 8FA40030 */   lw    $a0, 0x30($sp)
/* 14A0C0 801A4050 92080040 */  lbu   $t0, 0x40($s0)
/* 14A0C4 801A4054 24010001 */  li    $at, 1
/* 14A0C8 801A4058 AE000034 */  sw    $zero, 0x34($s0)
/* 14A0CC 801A405C 11010046 */  beq   $t0, $at, .L801A4178_ovl7
/* 14A0D0 801A4060 00000000 */   nop   
/* 14A0D4 801A4064 0C0699AD */  jal   func_801A66B4_ovl7
/* 14A0D8 801A4068 00000000 */   nop   
/* 14A0DC 801A406C 1040000B */  beqz  $v0, .L801A409C_ovl7
/* 14A0E0 801A4070 00000000 */   nop   
/* 14A0E4 801A4074 44800000 */  mtc1  $zero, $f0
/* 14A0E8 801A4078 8E090094 */  lw    $t1, 0x94($s0)
/* 14A0EC 801A407C 00002025 */  move  $a0, $zero
/* 14A0F0 801A4080 44060000 */  mfc1  $a2, $f0
/* 14A0F4 801A4084 8D250018 */  lw    $a1, 0x18($t1)
/* 14A0F8 801A4088 44070000 */  mfc1  $a3, $f0
/* 14A0FC 801A408C 0C03F55C */  jal   func_800FD570
/* 14A100 801A4090 E7A00010 */   swc1  $f0, 0x10($sp)
/* 14A104 801A4094 1000001E */  b     .L801A4110_ovl7
/* 14A108 801A4098 8E020094 */   lw    $v0, 0x94($s0)
.L801A409C_ovl7:
/* 14A10C 801A409C 0C0699BF */  jal   func_801A66FC_ovl7
/* 14A110 801A40A0 00000000 */   nop   
/* 14A114 801A40A4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14A118 801A40A8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14A11C 801A40AC 3C07800E */  lui   $a3, %hi(gEntityVtableIndexArray) # $a3, 0x800e
/* 14A120 801A40B0 24E7DC50 */  addiu $a3, %lo(gEntityVtableIndexArray) # addiu $a3, $a3, -0x23b0
/* 14A124 801A40B4 8C6A0000 */  lw    $t2, ($v1)
/* 14A128 801A40B8 3C06801C */  lui   $a2, %hi(D_801C2970) # $a2, 0x801c
/* 14A12C 801A40BC 24C62970 */  addiu $a2, %lo(D_801C2970) # addiu $a2, $a2, 0x2970
/* 14A130 801A40C0 000A5880 */  sll   $t3, $t2, 2
/* 14A134 801A40C4 00EB6021 */  addu  $t4, $a3, $t3
/* 14A138 801A40C8 AD820000 */  sw    $v0, ($t4)
/* 14A13C 801A40CC 8C6D0000 */  lw    $t5, ($v1)
/* 14A140 801A40D0 24050009 */  li    $a1, 9
/* 14A144 801A40D4 000D7080 */  sll   $t6, $t5, 2
/* 14A148 801A40D8 00EE7821 */  addu  $t7, $a3, $t6
/* 14A14C 801A40DC 0C02911F */  jal   call_virtual_function
/* 14A150 801A40E0 8DE40000 */   lw    $a0, ($t7)
/* 14A154 801A40E4 0C066220 */  jal   func_80198880_ovl7
/* 14A158 801A40E8 8FA40028 */   lw    $a0, 0x28($sp)
/* 14A15C 801A40EC 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 14A160 801A40F0 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 14A164 801A40F4 44805000 */  mtc1  $zero, $f10
/* 14A168 801A40F8 3C01800E */  lui   $at, 0x800e
/* 14A16C 801A40FC 8F190000 */  lw    $t9, ($t8)
/* 14A170 801A4100 00194080 */  sll   $t0, $t9, 2
/* 14A174 801A4104 00280821 */  addu  $at, $at, $t0
/* 14A178 801A4108 E42A7B20 */  swc1  $f10, 0x7b20($at)
/* 14A17C 801A410C 8E020094 */  lw    $v0, 0x94($s0)
.L801A4110_ovl7:
/* 14A180 801A4110 3C018000 */  lui   $at, 0x8000
/* 14A184 801A4114 8C44001C */  lw    $a0, 0x1c($v0)
/* 14A188 801A4118 10810008 */  beq   $a0, $at, .L801A413C_ovl7
/* 14A18C 801A411C 00000000 */   nop   
/* 14A190 801A4120 92090040 */  lbu   $t1, 0x40($s0)
/* 14A194 801A4124 24010001 */  li    $at, 1
/* 14A198 801A4128 11210004 */  beq   $t1, $at, .L801A413C_ovl7
/* 14A19C 801A412C 00000000 */   nop   
/* 14A1A0 801A4130 0C029D9E */  jal   play_sound
/* 14A1A4 801A4134 00000000 */   nop   
/* 14A1A8 801A4138 8E020094 */  lw    $v0, 0x94($s0)
.L801A413C_ovl7:
/* 14A1AC 801A413C 1040000E */  beqz  $v0, .L801A4178_ovl7
/* 14A1B0 801A4140 00000000 */   nop   
/* 14A1B4 801A4144 8C430018 */  lw    $v1, 0x18($v0)
/* 14A1B8 801A4148 24010006 */  li    $at, 6
/* 14A1BC 801A414C 54610006 */  bnel  $v1, $at, .L801A4168_ovl7
/* 14A1C0 801A4150 24010007 */   li    $at, 7
/* 14A1C4 801A4154 0C069075 */  jal   func_801A41D4_ovl7
/* 14A1C8 801A4158 8FA40030 */   lw    $a0, 0x30($sp)
/* 14A1CC 801A415C 8E0A0094 */  lw    $t2, 0x94($s0)
/* 14A1D0 801A4160 8D430018 */  lw    $v1, 0x18($t2)
/* 14A1D4 801A4164 24010007 */  li    $at, 7
.L801A4168_ovl7:
/* 14A1D8 801A4168 14610003 */  bne   $v1, $at, .L801A4178_ovl7
/* 14A1DC 801A416C 00000000 */   nop   
/* 14A1E0 801A4170 0C0690B6 */  jal   func_801A42D8_ovl7
/* 14A1E4 801A4174 8FA40030 */   lw    $a0, 0x30($sp)
.L801A4178_ovl7:
/* 14A1E8 801A4178 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14A1EC 801A417C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14A1F0 801A4180 3C01800E */  lui   $at, 0x800e
/* 14A1F4 801A4184 2404007D */  li    $a0, 125
/* 14A1F8 801A4188 8C6B0000 */  lw    $t3, ($v1)
/* 14A1FC 801A418C 000B6080 */  sll   $t4, $t3, 2
/* 14A200 801A4190 002C0821 */  addu  $at, $at, $t4
/* 14A204 801A4194 AC20F150 */  sw    $zero, -0xeb0($at)
/* 14A208 801A4198 0C02C67D */  jal   func_800B19F4
/* 14A20C 801A419C 8C650000 */   lw    $a1, ($v1)
/* 14A210 801A41A0 0C066ED6 */  jal   func_8019BB58_ovl7
/* 14A214 801A41A4 00000000 */   nop   
/* 14A218 801A41A8 0C002DAF */  jal   finish_current_thread
/* 14A21C 801A41AC 2404000F */   li    $a0, 15
/* 14A220 801A41B0 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 14A224 801A41B4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 14A228 801A41B8 0C067656 */  jal   func_8019D958_ovl7
/* 14A22C 801A41BC 95A40002 */   lhu   $a0, 2($t5)
/* 14A230 801A41C0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 14A234 801A41C4 8FB00020 */  lw    $s0, 0x20($sp)
/* 14A238 801A41C8 27BD0030 */  addiu $sp, $sp, 0x30
/* 14A23C 801A41CC 03E00008 */  jr    $ra
/* 14A240 801A41D0 00000000 */   nop   

.type func_801A3E80, @function
.size func_801A3E80, . - func_801A3E80

glabel func_801A41D4_ovl7
/* 14A244 801A41D4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 14A248 801A41D8 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 14A24C 801A41DC 8CEE0000 */  lw    $t6, ($a3)
/* 14A250 801A41E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14A254 801A41E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14A258 801A41E8 AFA40018 */  sw    $a0, 0x18($sp)
/* 14A25C 801A41EC 8DC60000 */  lw    $a2, ($t6)
/* 14A260 801A41F0 3C03800E */  lui   $v1, 0x800e
/* 14A264 801A41F4 3C01800E */  lui   $at, 0x800e
/* 14A268 801A41F8 00063080 */  sll   $a2, $a2, 2
/* 14A26C 801A41FC 00661821 */  addu  $v1, $v1, $a2
/* 14A270 801A4200 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 14A274 801A4204 00260821 */  addu  $at, $at, $a2
/* 14A278 801A4208 240F0023 */  li    $t7, 35
/* 14A27C 801A420C AC2FDA90 */  sw    $t7, -0x2570($at)
/* 14A280 801A4210 3C18801D */  lui   $t8, %hi(D_801CA28C) # $t8, 0x801d
/* 14A284 801A4214 3C19801D */  lui   $t9, %hi(D_801CA2B0) # $t9, 0x801d
/* 14A288 801A4218 2718A28C */  addiu $t8, %lo(D_801CA28C) # addiu $t8, $t8, -0x5d74
/* 14A28C 801A421C 2739A2B0 */  addiu $t9, %lo(D_801CA2B0) # addiu $t9, $t9, -0x5d50
/* 14A290 801A4220 AC78008C */  sw    $t8, 0x8c($v1)
/* 14A294 801A4224 AC790090 */  sw    $t9, 0x90($v1)
/* 14A298 801A4228 8CE20000 */  lw    $v0, ($a3)
/* 14A29C 801A422C 3C01800E */  lui   $at, 0x800e
/* 14A2A0 801A4230 2408FFFF */  li    $t0, -1
/* 14A2A4 801A4234 8C490000 */  lw    $t1, ($v0)
/* 14A2A8 801A4238 3C0D801A */  lui   $t5, %hi(D_801A42B8) # $t5, 0x801a
/* 14A2AC 801A423C 25AD42B8 */  addiu $t5, %lo(D_801A42B8) # addiu $t5, $t5, 0x42b8
/* 14A2B0 801A4240 00095080 */  sll   $t2, $t1, 2
/* 14A2B4 801A4244 002A0821 */  addu  $at, $at, $t2
/* 14A2B8 801A4248 AC280D50 */  sw    $t0, 0xd50($at)
/* 14A2BC 801A424C 8C4B0000 */  lw    $t3, ($v0)
/* 14A2C0 801A4250 3C01801D */  lui   $at, %hi(D_801CDFB4) # $at, 0x801d
/* 14A2C4 801A4254 C424DFB4 */  lwc1  $f4, %lo(D_801CDFB4)($at)
/* 14A2C8 801A4258 3C01800E */  lui   $at, 0x800e
/* 14A2CC 801A425C 000B6080 */  sll   $t4, $t3, 2
/* 14A2D0 801A4260 002C0821 */  addu  $at, $at, $t4
/* 14A2D4 801A4264 E4247B20 */  swc1  $f4, 0x7b20($at)
/* 14A2D8 801A4268 8C4E0000 */  lw    $t6, ($v0)
/* 14A2DC 801A426C 3C01800E */  lui   $at, 0x800e
/* 14A2E0 801A4270 24040074 */  li    $a0, 116
/* 14A2E4 801A4274 000E7880 */  sll   $t7, $t6, 2
/* 14A2E8 801A4278 002F0821 */  addu  $at, $at, $t7
/* 14A2EC 801A427C AC2DF150 */  sw    $t5, -0xeb0($at)
/* 14A2F0 801A4280 0C02C67D */  jal   func_800B19F4
/* 14A2F4 801A4284 8C450000 */   lw    $a1, ($v0)
/* 14A2F8 801A4288 0C066ED6 */  jal   func_8019BB58_ovl7
/* 14A2FC 801A428C 00000000 */   nop   
/* 14A300 801A4290 0C002DAF */  jal   finish_current_thread
/* 14A304 801A4294 2404001B */   li    $a0, 27
/* 14A308 801A4298 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 14A30C 801A429C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 14A310 801A42A0 0C067656 */  jal   func_8019D958_ovl7
/* 14A314 801A42A4 97040002 */   lhu   $a0, 2($t8)
/* 14A318 801A42A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14A31C 801A42AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 14A320 801A42B0 03E00008 */  jr    $ra
/* 14A324 801A42B4 00000000 */   nop   

.type func_801A41D4_ovl7, @function
.size func_801A41D4_ovl7, . - func_801A41D4_ovl7

glabel func_801A42B8_ovl7
/* 14A328 801A42B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14A32C 801A42BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 14A330 801A42C0 0C0682C4 */  jal   func_801A0B10_ovl7
/* 14A334 801A42C4 AFA40018 */   sw    $a0, 0x18($sp)
/* 14A338 801A42C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14A33C 801A42CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 14A340 801A42D0 03E00008 */  jr    $ra
/* 14A344 801A42D4 00000000 */   nop   

.type func_801A42B8_ovl7, @function
.size func_801A42B8_ovl7, . - func_801A42B8_ovl7

glabel func_801A42D8_ovl7
/* 14A348 801A42D8 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 14A34C 801A42DC 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 14A350 801A42E0 8CEE0000 */  lw    $t6, ($a3)
/* 14A354 801A42E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14A358 801A42E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14A35C 801A42EC AFA40018 */  sw    $a0, 0x18($sp)
/* 14A360 801A42F0 8DC60000 */  lw    $a2, ($t6)
/* 14A364 801A42F4 3C03800E */  lui   $v1, 0x800e
/* 14A368 801A42F8 3C01800E */  lui   $at, 0x800e
/* 14A36C 801A42FC 00063080 */  sll   $a2, $a2, 2
/* 14A370 801A4300 00661821 */  addu  $v1, $v1, $a2
/* 14A374 801A4304 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 14A378 801A4308 00260821 */  addu  $at, $at, $a2
/* 14A37C 801A430C 240F0023 */  li    $t7, 35
/* 14A380 801A4310 AC2FDA90 */  sw    $t7, -0x2570($at)
/* 14A384 801A4314 3C18801D */  lui   $t8, %hi(D_801CA2F4) # $t8, 0x801d
/* 14A388 801A4318 3C19801D */  lui   $t9, %hi(D_801CA318) # $t9, 0x801d
/* 14A38C 801A431C 2718A2F4 */  addiu $t8, %lo(D_801CA2F4) # addiu $t8, $t8, -0x5d0c
/* 14A390 801A4320 2739A318 */  addiu $t9, %lo(D_801CA318) # addiu $t9, $t9, -0x5ce8
/* 14A394 801A4324 AC78008C */  sw    $t8, 0x8c($v1)
/* 14A398 801A4328 AC790090 */  sw    $t9, 0x90($v1)
/* 14A39C 801A432C 8CE20000 */  lw    $v0, ($a3)
/* 14A3A0 801A4330 3C01800E */  lui   $at, 0x800e
/* 14A3A4 801A4334 2408FFFF */  li    $t0, -1
/* 14A3A8 801A4338 8C490000 */  lw    $t1, ($v0)
/* 14A3AC 801A433C 3C0D801A */  lui   $t5, %hi(D_801A42B8) # $t5, 0x801a
/* 14A3B0 801A4340 25AD42B8 */  addiu $t5, %lo(D_801A42B8) # addiu $t5, $t5, 0x42b8
/* 14A3B4 801A4344 00095080 */  sll   $t2, $t1, 2
/* 14A3B8 801A4348 002A0821 */  addu  $at, $at, $t2
/* 14A3BC 801A434C AC280D50 */  sw    $t0, 0xd50($at)
/* 14A3C0 801A4350 8C4B0000 */  lw    $t3, ($v0)
/* 14A3C4 801A4354 3C01801D */  lui   $at, %hi(D_801CDFB8) # $at, 0x801d
/* 14A3C8 801A4358 C424DFB8 */  lwc1  $f4, %lo(D_801CDFB8)($at)
/* 14A3CC 801A435C 3C01800E */  lui   $at, 0x800e
/* 14A3D0 801A4360 000B6080 */  sll   $t4, $t3, 2
/* 14A3D4 801A4364 002C0821 */  addu  $at, $at, $t4
/* 14A3D8 801A4368 E4247B20 */  swc1  $f4, 0x7b20($at)
/* 14A3DC 801A436C 8C4E0000 */  lw    $t6, ($v0)
/* 14A3E0 801A4370 3C01800E */  lui   $at, 0x800e
/* 14A3E4 801A4374 24040074 */  li    $a0, 116
/* 14A3E8 801A4378 000E7880 */  sll   $t7, $t6, 2
/* 14A3EC 801A437C 002F0821 */  addu  $at, $at, $t7
/* 14A3F0 801A4380 AC2DF150 */  sw    $t5, -0xeb0($at)
/* 14A3F4 801A4384 0C02C67D */  jal   func_800B19F4
/* 14A3F8 801A4388 8C450000 */   lw    $a1, ($v0)
/* 14A3FC 801A438C 0C066ED6 */  jal   func_8019BB58_ovl7
/* 14A400 801A4390 00000000 */   nop   
/* 14A404 801A4394 0C002DAF */  jal   finish_current_thread
/* 14A408 801A4398 24040007 */   li    $a0, 7
/* 14A40C 801A439C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 14A410 801A43A0 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 14A414 801A43A4 0C067656 */  jal   func_8019D958_ovl7
/* 14A418 801A43A8 97040002 */   lhu   $a0, 2($t8)
/* 14A41C 801A43AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14A420 801A43B0 27BD0018 */  addiu $sp, $sp, 0x18
/* 14A424 801A43B4 03E00008 */  jr    $ra
/* 14A428 801A43B8 00000000 */   nop   

.type func_801A42D8_ovl7, @function
.size func_801A42D8_ovl7, . - func_801A42D8_ovl7

glabel func_801A43BC_ovl7
/* 14A42C 801A43BC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14A430 801A43C0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14A434 801A43C4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14A438 801A43C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14A43C 801A43CC AFA40020 */  sw    $a0, 0x20($sp)
/* 14A440 801A43D0 8DCF0000 */  lw    $t7, ($t6)
/* 14A444 801A43D4 3C02800E */  lui   $v0, 0x800e
/* 14A448 801A43D8 44800000 */  mtc1  $zero, $f0
/* 14A44C 801A43DC 000FC080 */  sll   $t8, $t7, 2
/* 14A450 801A43E0 00581021 */  addu  $v0, $v0, $t8
/* 14A454 801A43E4 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14A458 801A43E8 44060000 */  mfc1  $a2, $f0
/* 14A45C 801A43EC 44070000 */  mfc1  $a3, $f0
/* 14A460 801A43F0 8C590094 */  lw    $t9, 0x94($v0)
/* 14A464 801A43F4 00002025 */  move  $a0, $zero
/* 14A468 801A43F8 8F250018 */  lw    $a1, 0x18($t9)
/* 14A46C 801A43FC 0C03F55C */  jal   func_800FD570
/* 14A470 801A4400 E7A00010 */   swc1  $f0, 0x10($sp)
/* 14A474 801A4404 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14A478 801A4408 27BD0020 */  addiu $sp, $sp, 0x20
/* 14A47C 801A440C 03E00008 */  jr    $ra
/* 14A480 801A4410 00000000 */   nop   

.type func_801A43BC_ovl7, @function
.size func_801A43BC_ovl7, . - func_801A43BC_ovl7

glabel func_801A4414_ovl7
/* 14A484 801A4414 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14A488 801A4418 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14A48C 801A441C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14A490 801A4420 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14A494 801A4424 AFA40020 */  sw    $a0, 0x20($sp)
/* 14A498 801A4428 8DC20000 */  lw    $v0, ($t6)
/* 14A49C 801A442C 3C01800E */  lui   $at, 0x800e
/* 14A4A0 801A4430 3C07800E */  lui   $a3, 0x800e
/* 14A4A4 801A4434 00021080 */  sll   $v0, $v0, 2
/* 14A4A8 801A4438 00220821 */  addu  $at, $at, $v0
/* 14A4AC 801A443C C4242790 */  lwc1  $f4, 0x2790($at)
/* 14A4B0 801A4440 3C01800E */  lui   $at, 0x800e
/* 14A4B4 801A4444 00220821 */  addu  $at, $at, $v0
/* 14A4B8 801A4448 C4262950 */  lwc1  $f6, 0x2950($at)
/* 14A4BC 801A444C 00E23821 */  addu  $a3, $a3, $v0
/* 14A4C0 801A4450 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 14A4C4 801A4454 24040003 */  li    $a0, 3
/* 14A4C8 801A4458 24050002 */  li    $a1, 2
/* 14A4CC 801A445C 24060077 */  li    $a2, 119
/* 14A4D0 801A4460 E7A40010 */  swc1  $f4, 0x10($sp)
/* 14A4D4 801A4464 0C029FDD */  jal   func_800A7F74
/* 14A4D8 801A4468 E7A60014 */   swc1  $f6, 0x14($sp)
/* 14A4DC 801A446C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14A4E0 801A4470 27BD0020 */  addiu $sp, $sp, 0x20
/* 14A4E4 801A4474 03E00008 */  jr    $ra
/* 14A4E8 801A4478 00000000 */   nop   

.type func_801A4414_ovl7, @function
.size func_801A4414_ovl7, . - func_801A4414_ovl7

glabel func_801A447C_ovl7
/* 14A4EC 801A447C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14A4F0 801A4480 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14A4F4 801A4484 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14A4F8 801A4488 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14A4FC 801A448C AFA40020 */  sw    $a0, 0x20($sp)
/* 14A500 801A4490 8DC20000 */  lw    $v0, ($t6)
/* 14A504 801A4494 3C01800E */  lui   $at, 0x800e
/* 14A508 801A4498 3C07800E */  lui   $a3, 0x800e
/* 14A50C 801A449C 00021080 */  sll   $v0, $v0, 2
/* 14A510 801A44A0 00220821 */  addu  $at, $at, $v0
/* 14A514 801A44A4 C4242790 */  lwc1  $f4, 0x2790($at)
/* 14A518 801A44A8 3C01800E */  lui   $at, 0x800e
/* 14A51C 801A44AC 00220821 */  addu  $at, $at, $v0
/* 14A520 801A44B0 C4262950 */  lwc1  $f6, 0x2950($at)
/* 14A524 801A44B4 00E23821 */  addu  $a3, $a3, $v0
/* 14A528 801A44B8 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 14A52C 801A44BC 24040003 */  li    $a0, 3
/* 14A530 801A44C0 24050002 */  li    $a1, 2
/* 14A534 801A44C4 24060064 */  li    $a2, 100
/* 14A538 801A44C8 E7A40010 */  swc1  $f4, 0x10($sp)
/* 14A53C 801A44CC 0C029FDD */  jal   func_800A7F74
/* 14A540 801A44D0 E7A60014 */   swc1  $f6, 0x14($sp)
/* 14A544 801A44D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14A548 801A44D8 27BD0020 */  addiu $sp, $sp, 0x20
/* 14A54C 801A44DC 03E00008 */  jr    $ra
/* 14A550 801A44E0 00000000 */   nop   

.type func_801A447C_ovl7, @function
.size func_801A447C_ovl7, . - func_801A447C_ovl7

glabel func_801A44E4_ovl7
/* 14A554 801A44E4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 14A558 801A44E8 AFB00024 */  sw    $s0, 0x24($sp)
/* 14A55C 801A44EC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 14A560 801A44F0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 14A564 801A44F4 8E0E0000 */  lw    $t6, ($s0)
/* 14A568 801A44F8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 14A56C 801A44FC AFB30030 */  sw    $s3, 0x30($sp)
/* 14A570 801A4500 AFB2002C */  sw    $s2, 0x2c($sp)
/* 14A574 801A4504 AFB10028 */  sw    $s1, 0x28($sp)
/* 14A578 801A4508 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 14A57C 801A450C AFA40040 */  sw    $a0, 0x40($sp)
/* 14A580 801A4510 8DC20000 */  lw    $v0, ($t6)
/* 14A584 801A4514 3C03800E */  lui   $v1, 0x800e
/* 14A588 801A4518 3C0F801A */  lui   $t7, %hi(D_801A470C) # $t7, 0x801a
/* 14A58C 801A451C 00021080 */  sll   $v0, $v0, 2
/* 14A590 801A4520 00621821 */  addu  $v1, $v1, $v0
/* 14A594 801A4524 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 14A598 801A4528 3C01800E */  lui   $at, 0x800e
/* 14A59C 801A452C 00220821 */  addu  $at, $at, $v0
/* 14A5A0 801A4530 25EF470C */  addiu $t7, %lo(D_801A470C) # addiu $t7, $t7, 0x470c
/* 14A5A4 801A4534 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 14A5A8 801A4538 AC600048 */  sw    $zero, 0x48($v1)
/* 14A5AC 801A453C AC600098 */  sw    $zero, 0x98($v1)
/* 14A5B0 801A4540 0C068F5B */  jal   func_801A3D6C_ovl7
/* 14A5B4 801A4544 AFA3003C */   sw    $v1, 0x3c($sp)
/* 14A5B8 801A4548 8E020000 */  lw    $v0, ($s0)
/* 14A5BC 801A454C 3C01800F */  lui   $at, 0x800f
/* 14A5C0 801A4550 3C11800E */  lui   $s1, %hi(D_800E3210) # $s1, 0x800e
/* 14A5C4 801A4554 8C580000 */  lw    $t8, ($v0)
/* 14A5C8 801A4558 26313210 */  addiu $s1, %lo(D_800E3210) # addiu $s1, $s1, 0x3210
/* 14A5CC 801A455C 3C12800E */  lui   $s2, %hi(D_800E3750) # $s2, 0x800e
/* 14A5D0 801A4560 0018C880 */  sll   $t9, $t8, 2
/* 14A5D4 801A4564 00390821 */  addu  $at, $at, $t9
/* 14A5D8 801A4568 AC208920 */  sw    $zero, -0x76e0($at)
/* 14A5DC 801A456C 8C480000 */  lw    $t0, ($v0)
/* 14A5E0 801A4570 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 14A5E4 801A4574 44812000 */  mtc1  $at, $f4
/* 14A5E8 801A4578 00084880 */  sll   $t1, $t0, 2
/* 14A5EC 801A457C 02295021 */  addu  $t2, $s1, $t1
/* 14A5F0 801A4580 E5440000 */  swc1  $f4, ($t2)
/* 14A5F4 801A4584 8C4B0000 */  lw    $t3, ($v0)
/* 14A5F8 801A4588 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 14A5FC 801A458C 44813000 */  mtc1  $at, $f6
/* 14A600 801A4590 26523750 */  addiu $s2, %lo(D_800E3750) # addiu $s2, $s2, 0x3750
/* 14A604 801A4594 000B6080 */  sll   $t4, $t3, 2
/* 14A608 801A4598 024C6821 */  addu  $t5, $s2, $t4
/* 14A60C 801A459C E5A60000 */  swc1  $f6, ($t5)
/* 14A610 801A45A0 8C4E0000 */  lw    $t6, ($v0)
/* 14A614 801A45A4 3C13800F */  lui   $s3, %hi(D_800EC2E0) # $s3, 0x800f
/* 14A618 801A45A8 2673C2E0 */  addiu $s3, %lo(D_800EC2E0) # addiu $s3, $s3, -0x3d20
/* 14A61C 801A45AC 000E7880 */  sll   $t7, $t6, 2
/* 14A620 801A45B0 026FC021 */  addu  $t8, $s3, $t7
/* 14A624 801A45B4 AF000000 */  sw    $zero, ($t8)
/* 14A628 801A45B8 0C029D9E */  jal   play_sound
/* 14A62C 801A45BC 24040157 */   li    $a0, 343
/* 14A630 801A45C0 2404000C */  li    $a0, 12
/* 14A634 801A45C4 0C02ED1A */  jal   func_800BB468
/* 14A638 801A45C8 00002825 */   move  $a1, $zero
/* 14A63C 801A45CC 8E190000 */  lw    $t9, ($s0)
/* 14A640 801A45D0 4480A000 */  mtc1  $zero, $f20
/* 14A644 801A45D4 8F220000 */  lw    $v0, ($t9)
/* 14A648 801A45D8 00021080 */  sll   $v0, $v0, 2
/* 14A64C 801A45DC 02224021 */  addu  $t0, $s1, $v0
/* 14A650 801A45E0 C5000000 */  lwc1  $f0, ($t0)
/* 14A654 801A45E4 02424821 */  addu  $t1, $s2, $v0
/* 14A658 801A45E8 02625021 */  addu  $t2, $s3, $v0
/* 14A65C 801A45EC 4614003C */  c.lt.s $f0, $f20
/* 14A660 801A45F0 00000000 */  nop   
/* 14A664 801A45F4 45020004 */  bc1fl .L801A4608_ovl7
/* 14A668 801A45F8 46000306 */   mov.s $f12, $f0
/* 14A66C 801A45FC 10000002 */  b     .L801A4608_ovl7
/* 14A670 801A4600 46000307 */   neg.s $f12, $f0
/* 14A674 801A4604 46000306 */  mov.s $f12, $f0
.L801A4608_ovl7:
/* 14A678 801A4608 C5200000 */  lwc1  $f0, ($t1)
/* 14A67C 801A460C 4614003C */  c.lt.s $f0, $f20
/* 14A680 801A4610 00000000 */  nop   
/* 14A684 801A4614 45020004 */  bc1fl .L801A4628_ovl7
/* 14A688 801A4618 46000086 */   mov.s $f2, $f0
/* 14A68C 801A461C 10000002 */  b     .L801A4628_ovl7
/* 14A690 801A4620 46000087 */   neg.s $f2, $f0
/* 14A694 801A4624 46000086 */  mov.s $f2, $f0
.L801A4628_ovl7:
/* 14A698 801A4628 460C103C */  c.lt.s $f2, $f12
/* 14A69C 801A462C 00000000 */  nop   
/* 14A6A0 801A4630 45000023 */  bc1f  .L801A46C0_ovl7
/* 14A6A4 801A4634 00000000 */   nop   
/* 14A6A8 801A4638 8D4B0000 */  lw    $t3, ($t2)
/* 14A6AC 801A463C 15600020 */  bnez  $t3, .L801A46C0_ovl7
/* 14A6B0 801A4640 00000000 */   nop   
.L801A4644_ovl7:
/* 14A6B4 801A4644 0C002DAF */  jal   finish_current_thread
/* 14A6B8 801A4648 24040001 */   li    $a0, 1
/* 14A6BC 801A464C 8E0C0000 */  lw    $t4, ($s0)
/* 14A6C0 801A4650 8D820000 */  lw    $v0, ($t4)
/* 14A6C4 801A4654 00021080 */  sll   $v0, $v0, 2
/* 14A6C8 801A4658 02226821 */  addu  $t5, $s1, $v0
/* 14A6CC 801A465C C5A00000 */  lwc1  $f0, ($t5)
/* 14A6D0 801A4660 02427021 */  addu  $t6, $s2, $v0
/* 14A6D4 801A4664 02627821 */  addu  $t7, $s3, $v0
/* 14A6D8 801A4668 4614003C */  c.lt.s $f0, $f20
/* 14A6DC 801A466C 00000000 */  nop   
/* 14A6E0 801A4670 45020004 */  bc1fl .L801A4684_ovl7
/* 14A6E4 801A4674 46000306 */   mov.s $f12, $f0
/* 14A6E8 801A4678 10000002 */  b     .L801A4684_ovl7
/* 14A6EC 801A467C 46000307 */   neg.s $f12, $f0
/* 14A6F0 801A4680 46000306 */  mov.s $f12, $f0
.L801A4684_ovl7:
/* 14A6F4 801A4684 C5C00000 */  lwc1  $f0, ($t6)
/* 14A6F8 801A4688 4614003C */  c.lt.s $f0, $f20
/* 14A6FC 801A468C 00000000 */  nop   
/* 14A700 801A4690 45020004 */  bc1fl .L801A46A4_ovl7
/* 14A704 801A4694 46000086 */   mov.s $f2, $f0
/* 14A708 801A4698 10000002 */  b     .L801A46A4_ovl7
/* 14A70C 801A469C 46000087 */   neg.s $f2, $f0
/* 14A710 801A46A0 46000086 */  mov.s $f2, $f0
.L801A46A4_ovl7:
/* 14A714 801A46A4 460C103C */  c.lt.s $f2, $f12
/* 14A718 801A46A8 00000000 */  nop   
/* 14A71C 801A46AC 45000004 */  bc1f  .L801A46C0_ovl7
/* 14A720 801A46B0 00000000 */   nop   
/* 14A724 801A46B4 8DF80000 */  lw    $t8, ($t7)
/* 14A728 801A46B8 1300FFE2 */  beqz  $t8, .L801A4644_ovl7
/* 14A72C 801A46BC 00000000 */   nop   
.L801A46C0_ovl7:
/* 14A730 801A46C0 0C02CD48 */  jal   func_800B3520
/* 14A734 801A46C4 00000000 */   nop   
/* 14A738 801A46C8 8FB9003C */  lw    $t9, 0x3c($sp)
/* 14A73C 801A46CC 44800000 */  mtc1  $zero, $f0
/* 14A740 801A46D0 00002025 */  move  $a0, $zero
/* 14A744 801A46D4 8F280094 */  lw    $t0, 0x94($t9)
/* 14A748 801A46D8 44060000 */  mfc1  $a2, $f0
/* 14A74C 801A46DC 44070000 */  mfc1  $a3, $f0
/* 14A750 801A46E0 8D050018 */  lw    $a1, 0x18($t0)
/* 14A754 801A46E4 0C03F55C */  jal   func_800FD570
/* 14A758 801A46E8 E7A00010 */   swc1  $f0, 0x10($sp)
/* 14A75C 801A46EC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 14A760 801A46F0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 14A764 801A46F4 8FB00024 */  lw    $s0, 0x24($sp)
/* 14A768 801A46F8 8FB10028 */  lw    $s1, 0x28($sp)
/* 14A76C 801A46FC 8FB2002C */  lw    $s2, 0x2c($sp)
/* 14A770 801A4700 8FB30030 */  lw    $s3, 0x30($sp)
/* 14A774 801A4704 03E00008 */  jr    $ra
/* 14A778 801A4708 27BD0040 */   addiu $sp, $sp, 0x40

.type func_801A44E4_ovl7, @function
.size func_801A44E4_ovl7, . - func_801A44E4_ovl7

glabel func_801A470C_ovl7
/* 14A77C 801A470C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14A780 801A4710 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14A784 801A4714 0C06835D */  jal   func_801A0D74_ovl7
/* 14A788 801A4718 00000000 */   nop   
/* 14A78C 801A471C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 14A790 801A4720 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 14A794 801A4724 3C0E8013 */  lui   $t6, %hi(D_8012BCA0) # $t6, 0x8013
/* 14A798 801A4728 8DCEBCA0 */  lw    $t6, %lo(D_8012BCA0)($t6)
/* 14A79C 801A472C 8F280000 */  lw    $t0, ($t9)
/* 14A7A0 801A4730 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14A7A4 801A4734 3C01800F */  lui   $at, 0x800f
/* 14A7A8 801A4738 000E7CC2 */  srl   $t7, $t6, 0x13
/* 14A7AC 801A473C 00084880 */  sll   $t1, $t0, 2
/* 14A7B0 801A4740 00290821 */  addu  $at, $at, $t1
/* 14A7B4 801A4744 31F80FFF */  andi  $t8, $t7, 0xfff
/* 14A7B8 801A4748 AC38C2E0 */  sw    $t8, -0x3d20($at)
/* 14A7BC 801A474C 03E00008 */  jr    $ra
/* 14A7C0 801A4750 27BD0018 */   addiu $sp, $sp, 0x18

.type func_801A470C_ovl7, @function
.size func_801A470C_ovl7, . - func_801A470C_ovl7

glabel func_801A4754_ovl7
/* 14A7C4 801A4754 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 14A7C8 801A4758 AFB10024 */  sw    $s1, 0x24($sp)
/* 14A7CC 801A475C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 14A7D0 801A4760 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 14A7D4 801A4764 8E280000 */  lw    $t0, ($s1)
/* 14A7D8 801A4768 AFBF0034 */  sw    $ra, 0x34($sp)
/* 14A7DC 801A476C AFB40030 */  sw    $s4, 0x30($sp)
/* 14A7E0 801A4770 AFB3002C */  sw    $s3, 0x2c($sp)
/* 14A7E4 801A4774 AFB20028 */  sw    $s2, 0x28($sp)
/* 14A7E8 801A4778 AFB00020 */  sw    $s0, 0x20($sp)
/* 14A7EC 801A477C AFA40048 */  sw    $a0, 0x48($sp)
/* 14A7F0 801A4780 8D030000 */  lw    $v1, ($t0)
/* 14A7F4 801A4784 3C02800E */  lui   $v0, 0x800e
/* 14A7F8 801A4788 3C01801D */  lui   $at, %hi(D_801CDFBC) # $at, 0x801d
/* 14A7FC 801A478C 00031880 */  sll   $v1, $v1, 2
/* 14A800 801A4790 00431021 */  addu  $v0, $v0, $v1
/* 14A804 801A4794 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14A808 801A4798 C42EDFBC */  lwc1  $f14, %lo(D_801CDFBC)($at)
/* 14A80C 801A479C 3C01800E */  lui   $at, 0x800e
/* 14A810 801A47A0 8C4E0088 */  lw    $t6, 0x88($v0)
/* 14A814 801A47A4 3C18801A */  lui   $t8, %hi(D_801A4C0C) # $t8, 0x801a
/* 14A818 801A47A8 27184C0C */  addiu $t8, %lo(D_801A4C0C) # addiu $t8, $t8, 0x4c0c
/* 14A81C 801A47AC 8DC5000C */  lw    $a1, 0xc($t6)
/* 14A820 801A47B0 00230821 */  addu  $at, $at, $v1
/* 14A824 801A47B4 24190024 */  li    $t9, 36
/* 14A828 801A47B8 8CAF0000 */  lw    $t7, ($a1)
/* 14A82C 801A47BC AC38F150 */  sw    $t8, -0xeb0($at)
/* 14A830 801A47C0 3C01800E */  lui   $at, 0x800e
/* 14A834 801A47C4 AFAF003C */  sw    $t7, 0x3c($sp)
/* 14A838 801A47C8 8D0A0000 */  lw    $t2, ($t0)
/* 14A83C 801A47CC 3C14800F */  lui   $s4, %hi(D_800EC4A0) # $s4, 0x800f
/* 14A840 801A47D0 2694C4A0 */  addiu $s4, %lo(D_800EC4A0) # addiu $s4, $s4, -0x3b60
/* 14A844 801A47D4 000A5880 */  sll   $t3, $t2, 2
/* 14A848 801A47D8 002B0821 */  addu  $at, $at, $t3
/* 14A84C 801A47DC AC39DA90 */  sw    $t9, -0x2570($at)
/* 14A850 801A47E0 AC400048 */  sw    $zero, 0x48($v0)
/* 14A854 801A47E4 AC400098 */  sw    $zero, 0x98($v0)
/* 14A858 801A47E8 8E280000 */  lw    $t0, ($s1)
/* 14A85C 801A47EC 3C01800F */  lui   $at, 0x800f
/* 14A860 801A47F0 44806000 */  mtc1  $zero, $f12
/* 14A864 801A47F4 8D0C0000 */  lw    $t4, ($t0)
/* 14A868 801A47F8 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 14A86C 801A47FC 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 14A870 801A4800 000C6880 */  sll   $t5, $t4, 2
/* 14A874 801A4804 002D0821 */  addu  $at, $at, $t5
/* 14A878 801A4808 AC20C2E0 */  sw    $zero, -0x3d20($at)
/* 14A87C 801A480C 8D0E0000 */  lw    $t6, ($t0)
/* 14A880 801A4810 3C01800E */  lui   $at, 0x800e
/* 14A884 801A4814 3C07800E */  lui   $a3, %hi(D_800E3910) # $a3, 0x800e
/* 14A888 801A4818 000E7880 */  sll   $t7, $t6, 2
/* 14A88C 801A481C 028FC021 */  addu  $t8, $s4, $t7
/* 14A890 801A4820 AF000000 */  sw    $zero, ($t8)
/* 14A894 801A4824 8D0A0000 */  lw    $t2, ($t0)
/* 14A898 801A4828 24E73910 */  addiu $a3, %lo(D_800E3910) # addiu $a3, $a3, 0x3910
/* 14A89C 801A482C 3C09800E */  lui   $t1, %hi(D_800E3E50) # $t1, 0x800e
/* 14A8A0 801A4830 000AC880 */  sll   $t9, $t2, 2
/* 14A8A4 801A4834 00D95821 */  addu  $t3, $a2, $t9
/* 14A8A8 801A4838 E56C0000 */  swc1  $f12, ($t3)
/* 14A8AC 801A483C 8D030000 */  lw    $v1, ($t0)
/* 14A8B0 801A4840 25293E50 */  addiu $t1, %lo(D_800E3E50) # addiu $t1, $t1, 0x3e50
/* 14A8B4 801A4844 00031880 */  sll   $v1, $v1, 2
/* 14A8B8 801A4848 00C36021 */  addu  $t4, $a2, $v1
/* 14A8BC 801A484C C5840000 */  lwc1  $f4, ($t4)
/* 14A8C0 801A4850 00230821 */  addu  $at, $at, $v1
/* 14A8C4 801A4854 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14A8C8 801A4858 8D0D0000 */  lw    $t5, ($t0)
/* 14A8CC 801A485C 3C01800E */  lui   $at, 0x800e
/* 14A8D0 801A4860 000D7080 */  sll   $t6, $t5, 2
/* 14A8D4 801A4864 002E0821 */  addu  $at, $at, $t6
/* 14A8D8 801A4868 E42E6850 */  swc1  $f14, 0x6850($at)
/* 14A8DC 801A486C 8D0F0000 */  lw    $t7, ($t0)
/* 14A8E0 801A4870 3C01800E */  lui   $at, 0x800e
/* 14A8E4 801A4874 000FC080 */  sll   $t8, $t7, 2
/* 14A8E8 801A4878 00F85021 */  addu  $t2, $a3, $t8
/* 14A8EC 801A487C E54C0000 */  swc1  $f12, ($t2)
/* 14A8F0 801A4880 8D030000 */  lw    $v1, ($t0)
/* 14A8F4 801A4884 00031880 */  sll   $v1, $v1, 2
/* 14A8F8 801A4888 00E3C821 */  addu  $t9, $a3, $v1
/* 14A8FC 801A488C C7200000 */  lwc1  $f0, ($t9)
/* 14A900 801A4890 00230821 */  addu  $at, $at, $v1
/* 14A904 801A4894 E4203750 */  swc1  $f0, 0x3750($at)
/* 14A908 801A4898 8D0B0000 */  lw    $t3, ($t0)
/* 14A90C 801A489C 3C01800E */  lui   $at, 0x800e
/* 14A910 801A48A0 000B6080 */  sll   $t4, $t3, 2
/* 14A914 801A48A4 002C0821 */  addu  $at, $at, $t4
/* 14A918 801A48A8 E4203590 */  swc1  $f0, 0x3590($at)
/* 14A91C 801A48AC 8D0D0000 */  lw    $t5, ($t0)
/* 14A920 801A48B0 3C01800E */  lui   $at, 0x800e
/* 14A924 801A48B4 000D7080 */  sll   $t6, $t5, 2
/* 14A928 801A48B8 002E0821 */  addu  $at, $at, $t6
/* 14A92C 801A48BC E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14A930 801A48C0 8D0F0000 */  lw    $t7, ($t0)
/* 14A934 801A48C4 3C01800E */  lui   $at, 0x800e
/* 14A938 801A48C8 000FC080 */  sll   $t8, $t7, 2
/* 14A93C 801A48CC 00380821 */  addu  $at, $at, $t8
/* 14A940 801A48D0 E4203210 */  swc1  $f0, 0x3210($at)
/* 14A944 801A48D4 8D0A0000 */  lw    $t2, ($t0)
/* 14A948 801A48D8 3C01800E */  lui   $at, 0x800e
/* 14A94C 801A48DC 000AC880 */  sll   $t9, $t2, 2
/* 14A950 801A48E0 00390821 */  addu  $at, $at, $t9
/* 14A954 801A48E4 E4203050 */  swc1  $f0, 0x3050($at)
/* 14A958 801A48E8 8D0B0000 */  lw    $t3, ($t0)
/* 14A95C 801A48EC 3C01800E */  lui   $at, 0x800e
/* 14A960 801A48F0 000B6080 */  sll   $t4, $t3, 2
/* 14A964 801A48F4 012C6821 */  addu  $t5, $t1, $t4
/* 14A968 801A48F8 E5AE0000 */  swc1  $f14, ($t5)
/* 14A96C 801A48FC 8D030000 */  lw    $v1, ($t0)
/* 14A970 801A4900 00031880 */  sll   $v1, $v1, 2
/* 14A974 801A4904 01237021 */  addu  $t6, $t1, $v1
/* 14A978 801A4908 C5C20000 */  lwc1  $f2, ($t6)
/* 14A97C 801A490C 00230821 */  addu  $at, $at, $v1
/* 14A980 801A4910 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14A984 801A4914 8D0F0000 */  lw    $t7, ($t0)
/* 14A988 801A4918 3C01800E */  lui   $at, 0x800e
/* 14A98C 801A491C 000FC080 */  sll   $t8, $t7, 2
/* 14A990 801A4920 00380821 */  addu  $at, $at, $t8
/* 14A994 801A4924 0C069984 */  jal   func_801A6610_ovl7
/* 14A998 801A4928 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 14A99C 801A492C 0C02BD02 */  jal   func_800AF408
/* 14A9A0 801A4930 00000000 */   nop   
/* 14A9A4 801A4934 8E280000 */  lw    $t0, ($s1)
/* 14A9A8 801A4938 3C10800F */  lui   $s0, %hi(D_800E9720) # $s0, 0x800f
/* 14A9AC 801A493C 26109720 */  addiu $s0, %lo(D_800E9720) # addiu $s0, $s0, -0x68e0
/* 14A9B0 801A4940 8D190000 */  lw    $t9, ($t0)
/* 14A9B4 801A4944 240A00B4 */  li    $t2, 180
/* 14A9B8 801A4948 3C01800F */  lui   $at, 0x800f
/* 14A9BC 801A494C 00195880 */  sll   $t3, $t9, 2
/* 14A9C0 801A4950 020B6021 */  addu  $t4, $s0, $t3
/* 14A9C4 801A4954 AD8A0000 */  sw    $t2, ($t4)
/* 14A9C8 801A4958 8D0D0000 */  lw    $t5, ($t0)
/* 14A9CC 801A495C 3C13800F */  lui   $s3, %hi(D_800E9E20) # $s3, 0x800f
/* 14A9D0 801A4960 26739E20 */  addiu $s3, %lo(D_800E9E20) # addiu $s3, $s3, -0x61e0
/* 14A9D4 801A4964 000D7080 */  sll   $t6, $t5, 2
/* 14A9D8 801A4968 002E0821 */  addu  $at, $at, $t6
/* 14A9DC 801A496C AC20A520 */  sw    $zero, -0x5ae0($at)
/* 14A9E0 801A4970 8D0F0000 */  lw    $t7, ($t0)
/* 14A9E4 801A4974 3C01800F */  lui   $at, 0x800f
/* 14A9E8 801A4978 24040007 */  li    $a0, 7
/* 14A9EC 801A497C 000FC080 */  sll   $t8, $t7, 2
/* 14A9F0 801A4980 00380821 */  addu  $at, $at, $t8
/* 14A9F4 801A4984 AC2083E0 */  sw    $zero, -0x7c20($at)
/* 14A9F8 801A4988 8D190000 */  lw    $t9, ($t0)
/* 14A9FC 801A498C 00195880 */  sll   $t3, $t9, 2
/* 14AA00 801A4990 026B5021 */  addu  $t2, $s3, $t3
/* 14AA04 801A4994 0C06B9F8 */  jal   func_801AE7E0_ovl7
/* 14AA08 801A4998 AD400000 */   sw    $zero, ($t2)
/* 14AA0C 801A499C 8E280000 */  lw    $t0, ($s1)
/* 14AA10 801A49A0 3C12800F */  lui   $s2, %hi(D_800E9C60) # $s2, 0x800f
/* 14AA14 801A49A4 26529C60 */  addiu $s2, %lo(D_800E9C60) # addiu $s2, $s2, -0x63a0
/* 14AA18 801A49A8 8D0C0000 */  lw    $t4, ($t0)
/* 14AA1C 801A49AC 8FA3003C */  lw    $v1, 0x3c($sp)
/* 14AA20 801A49B0 3C01800E */  lui   $at, 0x800e
/* 14AA24 801A49B4 000C6880 */  sll   $t5, $t4, 2
/* 14AA28 801A49B8 024D7021 */  addu  $t6, $s2, $t5
/* 14AA2C 801A49BC ADC20000 */  sw    $v0, ($t6)
/* 14AA30 801A49C0 8D0F0000 */  lw    $t7, ($t0)
/* 14AA34 801A49C4 C4660010 */  lwc1  $f6, 0x10($v1)
/* 14AA38 801A49C8 3C04801C */  lui   $a0, %hi(D_801C5360) # $a0, 0x801c
/* 14AA3C 801A49CC 000FC080 */  sll   $t8, $t7, 2
/* 14AA40 801A49D0 00380821 */  addu  $at, $at, $t8
/* 14AA44 801A49D4 E4264550 */  swc1  $f6, 0x4550($at)
/* 14AA48 801A49D8 8D190000 */  lw    $t9, ($t0)
/* 14AA4C 801A49DC C4680010 */  lwc1  $f8, 0x10($v1)
/* 14AA50 801A49E0 3C01800E */  lui   $at, 0x800e
/* 14AA54 801A49E4 00195880 */  sll   $t3, $t9, 2
/* 14AA58 801A49E8 002B0821 */  addu  $at, $at, $t3
/* 14AA5C 801A49EC E4284710 */  swc1  $f8, 0x4710($at)
/* 14AA60 801A49F0 8D0A0000 */  lw    $t2, ($t0)
/* 14AA64 801A49F4 C46A0010 */  lwc1  $f10, 0x10($v1)
/* 14AA68 801A49F8 3C01800E */  lui   $at, 0x800e
/* 14AA6C 801A49FC 000A6080 */  sll   $t4, $t2, 2
/* 14AA70 801A4A00 002C0821 */  addu  $at, $at, $t4
/* 14AA74 801A4A04 24845360 */  addiu $a0, %lo(D_801C5360) # addiu $a0, $a0, 0x5360
/* 14AA78 801A4A08 0C066220 */  jal   func_80198880_ovl7
/* 14AA7C 801A4A0C E42A48D0 */   swc1  $f10, 0x48d0($at)
/* 14AA80 801A4A10 8E2D0000 */  lw    $t5, ($s1)
/* 14AA84 801A4A14 3C01800F */  lui   $at, 0x800f
/* 14AA88 801A4A18 240400C1 */  li    $a0, 193
/* 14AA8C 801A4A1C 8DAE0000 */  lw    $t6, ($t5)
/* 14AA90 801A4A20 000E7880 */  sll   $t7, $t6, 2
/* 14AA94 801A4A24 002F0821 */  addu  $at, $at, $t7
/* 14AA98 801A4A28 0C029D9E */  jal   play_sound
/* 14AA9C 801A4A2C AC208920 */   sw    $zero, -0x76e0($at)
/* 14AAA0 801A4A30 8E280000 */  lw    $t0, ($s1)
/* 14AAA4 801A4A34 3C18800F */  lui   $t8, 0x800f
/* 14AAA8 801A4A38 24010001 */  li    $at, 1
/* 14AAAC 801A4A3C 8D030000 */  lw    $v1, ($t0)
/* 14AAB0 801A4A40 00031880 */  sll   $v1, $v1, 2
/* 14AAB4 801A4A44 0303C021 */  addu  $t8, $t8, $v1
/* 14AAB8 801A4A48 8F188E60 */  lw    $t8, -0x71a0($t8)
/* 14AABC 801A4A4C 0243C821 */  addu  $t9, $s2, $v1
/* 14AAC0 801A4A50 02835021 */  addu  $t2, $s4, $v1
/* 14AAC4 801A4A54 57010021 */  bnel  $t8, $at, .L801A4ADC_ovl7
/* 14AAC8 801A4A58 8D4C0000 */   lw    $t4, ($t2)
/* 14AACC 801A4A5C 8F220000 */  lw    $v0, ($t9)
/* 14AAD0 801A4A60 3C13800F */  lui   $s3, %hi(D_800E9AA0) # $s3, 0x800f
/* 14AAD4 801A4A64 26739AA0 */  addiu $s3, %lo(D_800E9AA0) # addiu $s3, $s3, -0x6560
/* 14AAD8 801A4A68 00021080 */  sll   $v0, $v0, 2
/* 14AADC 801A4A6C 02625821 */  addu  $t3, $s3, $v0
/* 14AAE0 801A4A70 8D6A0000 */  lw    $t2, ($t3)
/* 14AAE4 801A4A74 3C10800E */  lui   $s0, %hi(D_800DE350) # $s0, 0x800e
/* 14AAE8 801A4A78 2610E350 */  addiu $s0, %lo(D_800DE350) # addiu $s0, $s0, -0x1cb0
/* 14AAEC 801A4A7C 15400046 */  bnez  $t2, .L801A4B98_ovl7
/* 14AAF0 801A4A80 02026021 */   addu  $t4, $s0, $v0
/* 14AAF4 801A4A84 8D8D0000 */  lw    $t5, ($t4)
/* 14AAF8 801A4A88 11A00043 */  beqz  $t5, .L801A4B98_ovl7
/* 14AAFC 801A4A8C 00000000 */   nop   
.L801A4A90_ovl7:
/* 14AB00 801A4A90 0C002DAF */  jal   finish_current_thread
/* 14AB04 801A4A94 24040001 */   li    $a0, 1
/* 14AB08 801A4A98 8E280000 */  lw    $t0, ($s1)
/* 14AB0C 801A4A9C 8D030000 */  lw    $v1, ($t0)
/* 14AB10 801A4AA0 00031880 */  sll   $v1, $v1, 2
/* 14AB14 801A4AA4 02437021 */  addu  $t6, $s2, $v1
/* 14AB18 801A4AA8 8DC20000 */  lw    $v0, ($t6)
/* 14AB1C 801A4AAC 00021080 */  sll   $v0, $v0, 2
/* 14AB20 801A4AB0 02627821 */  addu  $t7, $s3, $v0
/* 14AB24 801A4AB4 8DF80000 */  lw    $t8, ($t7)
/* 14AB28 801A4AB8 0202C821 */  addu  $t9, $s0, $v0
/* 14AB2C 801A4ABC 17000036 */  bnez  $t8, .L801A4B98_ovl7
/* 14AB30 801A4AC0 00000000 */   nop   
/* 14AB34 801A4AC4 8F2B0000 */  lw    $t3, ($t9)
/* 14AB38 801A4AC8 1560FFF1 */  bnez  $t3, .L801A4A90_ovl7
/* 14AB3C 801A4ACC 00000000 */   nop   
/* 14AB40 801A4AD0 10000031 */  b     .L801A4B98_ovl7
/* 14AB44 801A4AD4 00000000 */   nop   
/* 14AB48 801A4AD8 8D4C0000 */  lw    $t4, ($t2)
.L801A4ADC_ovl7:
/* 14AB4C 801A4ADC 02036821 */  addu  $t5, $s0, $v1
/* 14AB50 801A4AE0 55800020 */  bnezl $t4, .L801A4B64_ovl7
/* 14AB54 801A4AE4 02035021 */   addu  $t2, $s0, $v1
/* 14AB58 801A4AE8 8DAE0000 */  lw    $t6, ($t5)
/* 14AB5C 801A4AEC 02637821 */  addu  $t7, $s3, $v1
/* 14AB60 801A4AF0 51C0001C */  beql  $t6, $zero, .L801A4B64_ovl7
/* 14AB64 801A4AF4 02035021 */   addu  $t2, $s0, $v1
/* 14AB68 801A4AF8 8DF80000 */  lw    $t8, ($t7)
/* 14AB6C 801A4AFC 57000019 */  bnezl $t8, .L801A4B64_ovl7
/* 14AB70 801A4B00 02035021 */   addu  $t2, $s0, $v1
.L801A4B04_ovl7:
/* 14AB74 801A4B04 0C002DAF */  jal   finish_current_thread
/* 14AB78 801A4B08 24040001 */   li    $a0, 1
/* 14AB7C 801A4B0C 8E280000 */  lw    $t0, ($s1)
/* 14AB80 801A4B10 8D190000 */  lw    $t9, ($t0)
/* 14AB84 801A4B14 00195880 */  sll   $t3, $t9, 2
/* 14AB88 801A4B18 020B1021 */  addu  $v0, $s0, $t3
/* 14AB8C 801A4B1C 8C4A0000 */  lw    $t2, ($v0)
/* 14AB90 801A4B20 254CFFFF */  addiu $t4, $t2, -1
/* 14AB94 801A4B24 AC4C0000 */  sw    $t4, ($v0)
/* 14AB98 801A4B28 8D030000 */  lw    $v1, ($t0)
/* 14AB9C 801A4B2C 00031880 */  sll   $v1, $v1, 2
/* 14ABA0 801A4B30 02836821 */  addu  $t5, $s4, $v1
/* 14ABA4 801A4B34 8DAE0000 */  lw    $t6, ($t5)
/* 14ABA8 801A4B38 02037821 */  addu  $t7, $s0, $v1
/* 14ABAC 801A4B3C 0263C821 */  addu  $t9, $s3, $v1
/* 14ABB0 801A4B40 55C00008 */  bnezl $t6, .L801A4B64_ovl7
/* 14ABB4 801A4B44 02035021 */   addu  $t2, $s0, $v1
/* 14ABB8 801A4B48 8DF80000 */  lw    $t8, ($t7)
/* 14ABBC 801A4B4C 53000005 */  beql  $t8, $zero, .L801A4B64_ovl7
/* 14ABC0 801A4B50 02035021 */   addu  $t2, $s0, $v1
/* 14ABC4 801A4B54 8F2B0000 */  lw    $t3, ($t9)
/* 14ABC8 801A4B58 1160FFEA */  beqz  $t3, .L801A4B04_ovl7
/* 14ABCC 801A4B5C 00000000 */   nop   
/* 14ABD0 801A4B60 02035021 */  addu  $t2, $s0, $v1
.L801A4B64_ovl7:
/* 14ABD4 801A4B64 8D4C0000 */  lw    $t4, ($t2)
/* 14ABD8 801A4B68 02636821 */  addu  $t5, $s3, $v1
/* 14ABDC 801A4B6C 1180000A */  beqz  $t4, .L801A4B98_ovl7
/* 14ABE0 801A4B70 00000000 */   nop   
/* 14ABE4 801A4B74 8DAE0000 */  lw    $t6, ($t5)
/* 14ABE8 801A4B78 15C00007 */  bnez  $t6, .L801A4B98_ovl7
/* 14ABEC 801A4B7C 00000000 */   nop   
/* 14ABF0 801A4B80 0C06937F */  jal   func_801A4DFC_ovl7
/* 14ABF4 801A4B84 8FA40048 */   lw    $a0, 0x48($sp)
/* 14ABF8 801A4B88 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14ABFC 801A4B8C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14AC00 801A4B90 8D030000 */  lw    $v1, ($t0)
/* 14AC04 801A4B94 00031880 */  sll   $v1, $v1, 2
.L801A4B98_ovl7:
/* 14AC08 801A4B98 3C01800F */  lui   $at, 0x800f
/* 14AC0C 801A4B9C 00230821 */  addu  $at, $at, $v1
/* 14AC10 801A4BA0 240F0001 */  li    $t7, 1
/* 14AC14 801A4BA4 AC2FC2E0 */  sw    $t7, -0x3d20($at)
/* 14AC18 801A4BA8 8D030000 */  lw    $v1, ($t0)
/* 14AC1C 801A4BAC 3C01800E */  lui   $at, 0x800e
/* 14AC20 801A4BB0 3C07800E */  lui   $a3, 0x800e
/* 14AC24 801A4BB4 00031880 */  sll   $v1, $v1, 2
/* 14AC28 801A4BB8 00230821 */  addu  $at, $at, $v1
/* 14AC2C 801A4BBC C4302790 */  lwc1  $f16, 0x2790($at)
/* 14AC30 801A4BC0 3C01800E */  lui   $at, 0x800e
/* 14AC34 801A4BC4 00230821 */  addu  $at, $at, $v1
/* 14AC38 801A4BC8 C4322950 */  lwc1  $f18, 0x2950($at)
/* 14AC3C 801A4BCC 00E33821 */  addu  $a3, $a3, $v1
/* 14AC40 801A4BD0 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 14AC44 801A4BD4 24040003 */  li    $a0, 3
/* 14AC48 801A4BD8 24050002 */  li    $a1, 2
/* 14AC4C 801A4BDC 2406006F */  li    $a2, 111
/* 14AC50 801A4BE0 E7B00010 */  swc1  $f16, 0x10($sp)
/* 14AC54 801A4BE4 0C029FDD */  jal   func_800A7F74
/* 14AC58 801A4BE8 E7B20014 */   swc1  $f18, 0x14($sp)
/* 14AC5C 801A4BEC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 14AC60 801A4BF0 8FB00020 */  lw    $s0, 0x20($sp)
/* 14AC64 801A4BF4 8FB10024 */  lw    $s1, 0x24($sp)
/* 14AC68 801A4BF8 8FB20028 */  lw    $s2, 0x28($sp)
/* 14AC6C 801A4BFC 8FB3002C */  lw    $s3, 0x2c($sp)
/* 14AC70 801A4C00 8FB40030 */  lw    $s4, 0x30($sp)
/* 14AC74 801A4C04 03E00008 */  jr    $ra
/* 14AC78 801A4C08 27BD0048 */   addiu $sp, $sp, 0x48

.type func_801A4754_ovl7, @function
.size func_801A4754_ovl7, . - func_801A4754_ovl7

glabel func_801A4C0C_ovl7
/* 14AC7C 801A4C0C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14AC80 801A4C10 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14AC84 801A4C14 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 14AC88 801A4C18 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 14AC8C 801A4C1C C420C9E4 */  lwc1  $f0, %lo(D_800EC9E4)($at)
/* 14AC90 801A4C20 44802000 */  mtc1  $zero, $f4
/* 14AC94 801A4C24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14AC98 801A4C28 AFA40050 */  sw    $a0, 0x50($sp)
/* 14AC9C 801A4C2C 8C620000 */  lw    $v0, ($v1)
/* 14ACA0 801A4C30 46002032 */  c.eq.s $f4, $f0
/* 14ACA4 801A4C34 3C06800E */  lui   $a2, 0x800e
/* 14ACA8 801A4C38 00022880 */  sll   $a1, $v0, 2
/* 14ACAC 801A4C3C 00C53021 */  addu  $a2, $a2, $a1
/* 14ACB0 801A4C40 45010007 */  bc1t  .L801A4C60_ovl7
/* 14ACB4 801A4C44 8CC61B50 */   lw    $a2, 0x1b50($a2)
/* 14ACB8 801A4C48 46000187 */  neg.s $f6, $f0
/* 14ACBC 801A4C4C 3C01800E */  lui   $at, 0x800e
/* 14ACC0 801A4C50 00250821 */  addu  $at, $at, $a1
/* 14ACC4 801A4C54 E4263210 */  swc1  $f6, 0x3210($at)
/* 14ACC8 801A4C58 8C620000 */  lw    $v0, ($v1)
/* 14ACCC 801A4C5C 00022880 */  sll   $a1, $v0, 2
.L801A4C60_ovl7:
/* 14ACD0 801A4C60 3C0E800F */  lui   $t6, 0x800f
/* 14ACD4 801A4C64 01C57021 */  addu  $t6, $t6, $a1
/* 14ACD8 801A4C68 8DCE8E60 */  lw    $t6, -0x71a0($t6)
/* 14ACDC 801A4C6C 24070001 */  li    $a3, 1
/* 14ACE0 801A4C70 00402025 */  move  $a0, $v0
/* 14ACE4 801A4C74 10EE002E */  beq   $a3, $t6, .L801A4D30_ovl7
/* 14ACE8 801A4C78 00000000 */   nop   
/* 14ACEC 801A4C7C 0C044554 */  jal   func_80111550
/* 14ACF0 801A4C80 AFA6004C */   sw    $a2, 0x4c($sp)
/* 14ACF4 801A4C84 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 14ACF8 801A4C88 8FA6004C */  lw    $a2, 0x4c($sp)
/* 14ACFC 801A4C8C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 14AD00 801A4C90 8CC4008C */  lw    $a0, 0x8c($a2)
/* 14AD04 801A4C94 0C044722 */  jal   func_80111C88
/* 14AD08 801A4C98 8DE50000 */   lw    $a1, ($t7)
/* 14AD0C 801A4C9C 0C0447B3 */  jal   func_80111ECC
/* 14AD10 801A4CA0 00402025 */   move  $a0, $v0
/* 14AD14 801A4CA4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 14AD18 801A4CA8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 14AD1C 801A4CAC 3C09800F */  lui   $t1, 0x800f
/* 14AD20 801A4CB0 24010001 */  li    $at, 1
/* 14AD24 801A4CB4 8F190000 */  lw    $t9, ($t8)
/* 14AD28 801A4CB8 00194080 */  sll   $t0, $t9, 2
/* 14AD2C 801A4CBC 01284821 */  addu  $t1, $t1, $t0
/* 14AD30 801A4CC0 8D29A520 */  lw    $t1, -0x5ae0($t1)
/* 14AD34 801A4CC4 1521000D */  bne   $t1, $at, .L801A4CFC_ovl7
/* 14AD38 801A4CC8 00000000 */   nop   
/* 14AD3C 801A4CCC 0C0442C0 */  jal   func_80110B00
/* 14AD40 801A4CD0 27A4002C */   addiu $a0, $sp, 0x2c
/* 14AD44 801A4CD4 5440000C */  bnezl $v0, .L801A4D08_ovl7
/* 14AD48 801A4CD8 93AA002E */   lbu   $t2, 0x2e($sp)
/* 14AD4C 801A4CDC 0C0443F5 */  jal   func_80110FD4
/* 14AD50 801A4CE0 27A4002C */   addiu $a0, $sp, 0x2c
/* 14AD54 801A4CE4 54400008 */  bnezl $v0, .L801A4D08_ovl7
/* 14AD58 801A4CE8 93AA002E */   lbu   $t2, 0x2e($sp)
/* 14AD5C 801A4CEC 0C044054 */  jal   func_80110150
/* 14AD60 801A4CF0 27A4002C */   addiu $a0, $sp, 0x2c
/* 14AD64 801A4CF4 10000004 */  b     .L801A4D08_ovl7
/* 14AD68 801A4CF8 93AA002E */   lbu   $t2, 0x2e($sp)
.L801A4CFC_ovl7:
/* 14AD6C 801A4CFC 0C044054 */  jal   func_80110150
/* 14AD70 801A4D00 27A4002C */   addiu $a0, $sp, 0x2c
/* 14AD74 801A4D04 93AA002E */  lbu   $t2, 0x2e($sp)
.L801A4D08_ovl7:
/* 14AD78 801A4D08 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 14AD7C 801A4D0C 11400008 */  beqz  $t2, .L801A4D30_ovl7
/* 14AD80 801A4D10 00000000 */   nop   
/* 14AD84 801A4D14 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 14AD88 801A4D18 3C01800F */  lui   $at, 0x800f
/* 14AD8C 801A4D1C 240B0001 */  li    $t3, 1
/* 14AD90 801A4D20 8D8D0000 */  lw    $t5, ($t4)
/* 14AD94 801A4D24 000D7080 */  sll   $t6, $t5, 2
/* 14AD98 801A4D28 002E0821 */  addu  $at, $at, $t6
/* 14AD9C 801A4D2C AC2BC4A0 */  sw    $t3, -0x3b60($at)
.L801A4D30_ovl7:
/* 14ADA0 801A4D30 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14ADA4 801A4D34 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14ADA8 801A4D38 3C19800F */  lui   $t9, 0x800f
/* 14ADAC 801A4D3C 24070001 */  li    $a3, 1
/* 14ADB0 801A4D40 8C6F0000 */  lw    $t7, ($v1)
/* 14ADB4 801A4D44 000FC080 */  sll   $t8, $t7, 2
/* 14ADB8 801A4D48 0338C821 */  addu  $t9, $t9, $t8
/* 14ADBC 801A4D4C 8F398E60 */  lw    $t9, -0x71a0($t9)
/* 14ADC0 801A4D50 10F9000F */  beq   $a3, $t9, .L801A4D90_ovl7
/* 14ADC4 801A4D54 00000000 */   nop   
/* 14ADC8 801A4D58 0C06835D */  jal   func_801A0D74_ovl7
/* 14ADCC 801A4D5C 8FA40050 */   lw    $a0, 0x50($sp)
/* 14ADD0 801A4D60 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14ADD4 801A4D64 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14ADD8 801A4D68 3C088013 */  lui   $t0, %hi(D_8012BCA0) # $t0, 0x8013
/* 14ADDC 801A4D6C 8D08BCA0 */  lw    $t0, %lo(D_8012BCA0)($t0)
/* 14ADE0 801A4D70 8C6C0000 */  lw    $t4, ($v1)
/* 14ADE4 801A4D74 3C01800F */  lui   $at, 0x800f
/* 14ADE8 801A4D78 00084CC2 */  srl   $t1, $t0, 0x13
/* 14ADEC 801A4D7C 000C6880 */  sll   $t5, $t4, 2
/* 14ADF0 801A4D80 002D0821 */  addu  $at, $at, $t5
/* 14ADF4 801A4D84 312A01FF */  andi  $t2, $t1, 0x1ff
/* 14ADF8 801A4D88 AC2A9E20 */  sw    $t2, -0x61e0($at)
/* 14ADFC 801A4D8C 24070001 */  li    $a3, 1
.L801A4D90_ovl7:
/* 14AE00 801A4D90 3C0B8013 */  lui   $t3, %hi(D_8012E860) # $t3, 0x8013
/* 14AE04 801A4D94 8D6BE860 */  lw    $t3, %lo(D_8012E860)($t3)
/* 14AE08 801A4D98 3C18800D */  lui   $t8, %hi(D_800D7154) # $t8, 0x800d
/* 14AE0C 801A4D9C 15600006 */  bnez  $t3, .L801A4DB8_ovl7
/* 14AE10 801A4DA0 00000000 */   nop   
/* 14AE14 801A4DA4 8C6E0000 */  lw    $t6, ($v1)
/* 14AE18 801A4DA8 3C01800F */  lui   $at, 0x800f
/* 14AE1C 801A4DAC 000E7880 */  sll   $t7, $t6, 2
/* 14AE20 801A4DB0 002F0821 */  addu  $at, $at, $t7
/* 14AE24 801A4DB4 AC27A520 */  sw    $a3, -0x5ae0($at)
.L801A4DB8_ovl7:
/* 14AE28 801A4DB8 8F187154 */  lw    $t8, %lo(D_800D7154)($t8)
/* 14AE2C 801A4DBC 5700000C */  bnezl $t8, .L801A4DF0_ovl7
/* 14AE30 801A4DC0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14AE34 801A4DC4 8C790000 */  lw    $t9, ($v1)
/* 14AE38 801A4DC8 3C01800F */  lui   $at, 0x800f
/* 14AE3C 801A4DCC 00194080 */  sll   $t0, $t9, 2
/* 14AE40 801A4DD0 00280821 */  addu  $at, $at, $t0
/* 14AE44 801A4DD4 AC27C4A0 */  sw    $a3, -0x3b60($at)
/* 14AE48 801A4DD8 8C690000 */  lw    $t1, ($v1)
/* 14AE4C 801A4DDC 3C01800F */  lui   $at, 0x800f
/* 14AE50 801A4DE0 00096080 */  sll   $t4, $t1, 2
/* 14AE54 801A4DE4 002C0821 */  addu  $at, $at, $t4
/* 14AE58 801A4DE8 AC279720 */  sw    $a3, -0x68e0($at)
/* 14AE5C 801A4DEC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801A4DF0_ovl7:
/* 14AE60 801A4DF0 27BD0050 */  addiu $sp, $sp, 0x50
/* 14AE64 801A4DF4 03E00008 */  jr    $ra
/* 14AE68 801A4DF8 00000000 */   nop   

.type func_801A4C0C_ovl7, @function
.size func_801A4C0C_ovl7, . - func_801A4C0C_ovl7

glabel func_801A4DFC_ovl7
/* 14AE6C 801A4DFC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 14AE70 801A4E00 AFB1001C */  sw    $s1, 0x1c($sp)
/* 14AE74 801A4E04 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 14AE78 801A4E08 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 14AE7C 801A4E0C 8E230000 */  lw    $v1, ($s1)
/* 14AE80 801A4E10 AFBF0024 */  sw    $ra, 0x24($sp)
/* 14AE84 801A4E14 AFB20020 */  sw    $s2, 0x20($sp)
/* 14AE88 801A4E18 AFB00018 */  sw    $s0, 0x18($sp)
/* 14AE8C 801A4E1C AFA40040 */  sw    $a0, 0x40($sp)
/* 14AE90 801A4E20 8C6F0000 */  lw    $t7, ($v1)
/* 14AE94 801A4E24 3C0E801A */  lui   $t6, %hi(D_801A4F70) # $t6, 0x801a
/* 14AE98 801A4E28 3C01800E */  lui   $at, 0x800e
/* 14AE9C 801A4E2C 000FC080 */  sll   $t8, $t7, 2
/* 14AEA0 801A4E30 00380821 */  addu  $at, $at, $t8
/* 14AEA4 801A4E34 25CE4F70 */  addiu $t6, %lo(D_801A4F70) # addiu $t6, $t6, 0x4f70
/* 14AEA8 801A4E38 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 14AEAC 801A4E3C 8C680000 */  lw    $t0, ($v1)
/* 14AEB0 801A4E40 3C01800E */  lui   $at, 0x800e
/* 14AEB4 801A4E44 24190023 */  li    $t9, 35
/* 14AEB8 801A4E48 00084880 */  sll   $t1, $t0, 2
/* 14AEBC 801A4E4C 00290821 */  addu  $at, $at, $t1
/* 14AEC0 801A4E50 AC39DA90 */  sw    $t9, -0x2570($at)
/* 14AEC4 801A4E54 8C6A0000 */  lw    $t2, ($v1)
/* 14AEC8 801A4E58 3C12800F */  lui   $s2, %hi(D_800EC2E0) # $s2, 0x800f
/* 14AECC 801A4E5C 2652C2E0 */  addiu $s2, %lo(D_800EC2E0) # addiu $s2, $s2, -0x3d20
/* 14AED0 801A4E60 000A5880 */  sll   $t3, $t2, 2
/* 14AED4 801A4E64 024B6021 */  addu  $t4, $s2, $t3
/* 14AED8 801A4E68 AD800000 */  sw    $zero, ($t4)
/* 14AEDC 801A4E6C 8C6D0000 */  lw    $t5, ($v1)
/* 14AEE0 801A4E70 3C01800F */  lui   $at, 0x800f
/* 14AEE4 801A4E74 240400C2 */  li    $a0, 194
/* 14AEE8 801A4E78 000D7880 */  sll   $t7, $t5, 2
/* 14AEEC 801A4E7C 002F0821 */  addu  $at, $at, $t7
/* 14AEF0 801A4E80 0C029D9E */  jal   play_sound
/* 14AEF4 801A4E84 AC2083E0 */   sw    $zero, -0x7c20($at)
/* 14AEF8 801A4E88 0C066A40 */  jal   func_8019A900_ovl7
/* 14AEFC 801A4E8C 27A40034 */   addiu $a0, $sp, 0x34
/* 14AF00 801A4E90 8FAE0034 */  lw    $t6, 0x34($sp)
/* 14AF04 801A4E94 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 14AF08 801A4E98 44814000 */  mtc1  $at, $f8
/* 14AF0C 801A4E9C 448E2000 */  mtc1  $t6, $f4
/* 14AF10 801A4EA0 8E230000 */  lw    $v1, ($s1)
/* 14AF14 801A4EA4 3C01800E */  lui   $at, 0x800e
/* 14AF18 801A4EA8 468021A0 */  cvt.s.w $f6, $f4
/* 14AF1C 801A4EAC 8C780000 */  lw    $t8, ($v1)
/* 14AF20 801A4EB0 3C10800F */  lui   $s0, %hi(D_800E9720) # $s0, 0x800f
/* 14AF24 801A4EB4 26109720 */  addiu $s0, %lo(D_800E9720) # addiu $s0, $s0, -0x68e0
/* 14AF28 801A4EB8 00184080 */  sll   $t0, $t8, 2
/* 14AF2C 801A4EBC 00280821 */  addu  $at, $at, $t0
/* 14AF30 801A4EC0 46083282 */  mul.s $f10, $f6, $f8
/* 14AF34 801A4EC4 2419003C */  li    $t9, 60
/* 14AF38 801A4EC8 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 14AF3C 801A4ECC 8C690000 */  lw    $t1, ($v1)
/* 14AF40 801A4ED0 00095080 */  sll   $t2, $t1, 2
/* 14AF44 801A4ED4 020A5821 */  addu  $t3, $s0, $t2
/* 14AF48 801A4ED8 AD790000 */  sw    $t9, ($t3)
/* 14AF4C 801A4EDC 8C640000 */  lw    $a0, ($v1)
/* 14AF50 801A4EE0 00042080 */  sll   $a0, $a0, 2
/* 14AF54 801A4EE4 02442821 */  addu  $a1, $s2, $a0
/* 14AF58 801A4EE8 8CAC0000 */  lw    $t4, ($a1)
/* 14AF5C 801A4EEC 02046821 */  addu  $t5, $s0, $a0
/* 14AF60 801A4EF0 55800018 */  bnezl $t4, .L801A4F54_ovl7
/* 14AF64 801A4EF4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 14AF68 801A4EF8 8DAF0000 */  lw    $t7, ($t5)
/* 14AF6C 801A4EFC 51E00015 */  beql  $t7, $zero, .L801A4F54_ovl7
/* 14AF70 801A4F00 8FBF0024 */   lw    $ra, 0x24($sp)
.L801A4F04_ovl7:
/* 14AF74 801A4F04 0C002DAF */  jal   finish_current_thread
/* 14AF78 801A4F08 24040001 */   li    $a0, 1
/* 14AF7C 801A4F0C 8E230000 */  lw    $v1, ($s1)
/* 14AF80 801A4F10 8C6E0000 */  lw    $t6, ($v1)
/* 14AF84 801A4F14 000EC080 */  sll   $t8, $t6, 2
/* 14AF88 801A4F18 02181021 */  addu  $v0, $s0, $t8
/* 14AF8C 801A4F1C 8C480000 */  lw    $t0, ($v0)
/* 14AF90 801A4F20 2509FFFF */  addiu $t1, $t0, -1
/* 14AF94 801A4F24 AC490000 */  sw    $t1, ($v0)
/* 14AF98 801A4F28 8C640000 */  lw    $a0, ($v1)
/* 14AF9C 801A4F2C 00042080 */  sll   $a0, $a0, 2
/* 14AFA0 801A4F30 02442821 */  addu  $a1, $s2, $a0
/* 14AFA4 801A4F34 8CAA0000 */  lw    $t2, ($a1)
/* 14AFA8 801A4F38 0204C821 */  addu  $t9, $s0, $a0
/* 14AFAC 801A4F3C 55400005 */  bnezl $t2, .L801A4F54_ovl7
/* 14AFB0 801A4F40 8FBF0024 */   lw    $ra, 0x24($sp)
/* 14AFB4 801A4F44 8F2B0000 */  lw    $t3, ($t9)
/* 14AFB8 801A4F48 1560FFEE */  bnez  $t3, .L801A4F04_ovl7
/* 14AFBC 801A4F4C 00000000 */   nop   
/* 14AFC0 801A4F50 8FBF0024 */  lw    $ra, 0x24($sp)
.L801A4F54_ovl7:
/* 14AFC4 801A4F54 240C0001 */  li    $t4, 1
/* 14AFC8 801A4F58 8FB00018 */  lw    $s0, 0x18($sp)
/* 14AFCC 801A4F5C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 14AFD0 801A4F60 8FB20020 */  lw    $s2, 0x20($sp)
/* 14AFD4 801A4F64 ACAC0000 */  sw    $t4, ($a1)
/* 14AFD8 801A4F68 03E00008 */  jr    $ra
/* 14AFDC 801A4F6C 27BD0040 */   addiu $sp, $sp, 0x40

.type func_801A4DFC_ovl7, @function
.size func_801A4DFC_ovl7, . - func_801A4DFC_ovl7

glabel func_801A4F70_ovl7
/* 14AFE0 801A4F70 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 14AFE4 801A4F74 C420C9E4 */  lwc1  $f0, %lo(D_800EC9E4)($at)
/* 14AFE8 801A4F78 44802000 */  mtc1  $zero, $f4
/* 14AFEC 801A4F7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14AFF0 801A4F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14AFF4 801A4F84 46002032 */  c.eq.s $f4, $f0
/* 14AFF8 801A4F88 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14AFFC 801A4F8C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 14B000 801A4F90 240A0001 */  li    $t2, 1
/* 14B004 801A4F94 45010008 */  bc1t  .L801A4FB8_ovl7
/* 14B008 801A4F98 00000000 */   nop   
/* 14B00C 801A4F9C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14B010 801A4FA0 46000187 */  neg.s $f6, $f0
/* 14B014 801A4FA4 3C01800E */  lui   $at, 0x800e
/* 14B018 801A4FA8 8DCF0000 */  lw    $t7, ($t6)
/* 14B01C 801A4FAC 000FC080 */  sll   $t8, $t7, 2
/* 14B020 801A4FB0 00380821 */  addu  $at, $at, $t8
/* 14B024 801A4FB4 E4263210 */  swc1  $f6, 0x3210($at)
.L801A4FB8_ovl7:
/* 14B028 801A4FB8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 14B02C 801A4FBC 3C09800F */  lui   $t1, 0x800f
/* 14B030 801A4FC0 3C01800F */  lui   $at, 0x800f
/* 14B034 801A4FC4 8F260000 */  lw    $a2, ($t9)
/* 14B038 801A4FC8 00063080 */  sll   $a2, $a2, 2
/* 14B03C 801A4FCC 01264821 */  addu  $t1, $t1, $a2
/* 14B040 801A4FD0 8D2983E0 */  lw    $t1, -0x7c20($t1)
/* 14B044 801A4FD4 00260821 */  addu  $at, $at, $a2
/* 14B048 801A4FD8 11200003 */  beqz  $t1, .L801A4FE8_ovl7
/* 14B04C 801A4FDC 00000000 */   nop   
/* 14B050 801A4FE0 1000002F */  b     .L801A50A0_ovl7
/* 14B054 801A4FE4 AC2A9720 */   sw    $t2, -0x68e0($at)
.L801A4FE8_ovl7:
/* 14B058 801A4FE8 0C06835D */  jal   func_801A0D74_ovl7
/* 14B05C 801A4FEC 00000000 */   nop   
/* 14B060 801A4FF0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14B064 801A4FF4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14B068 801A4FF8 3C01800F */  lui   $at, 0x800f
/* 14B06C 801A4FFC 3C0D8013 */  lui   $t5, %hi(D_8012BCA0) # $t5, 0x8013
/* 14B070 801A5000 8C6B0000 */  lw    $t3, ($v1)
/* 14B074 801A5004 8DADBCA0 */  lw    $t5, %lo(D_8012BCA0)($t5)
/* 14B078 801A5008 3C08800F */  lui   $t0, %hi(D_800EC2E0) # $t0, 0x800f
/* 14B07C 801A500C 000B6080 */  sll   $t4, $t3, 2
/* 14B080 801A5010 002C0821 */  addu  $at, $at, $t4
/* 14B084 801A5014 AC208920 */  sw    $zero, -0x76e0($at)
/* 14B088 801A5018 8C780000 */  lw    $t8, ($v1)
/* 14B08C 801A501C 2508C2E0 */  addiu $t0, %lo(D_800EC2E0) # addiu $t0, $t0, -0x3d20
/* 14B090 801A5020 000D74C2 */  srl   $t6, $t5, 0x13
/* 14B094 801A5024 0018C880 */  sll   $t9, $t8, 2
/* 14B098 801A5028 01194821 */  addu  $t1, $t0, $t9
/* 14B09C 801A502C 31CF01FF */  andi  $t7, $t6, 0x1ff
/* 14B0A0 801A5030 AD2F0000 */  sw    $t7, ($t1)
/* 14B0A4 801A5034 8C660000 */  lw    $a2, ($v1)
/* 14B0A8 801A5038 3C0B800E */  lui   $t3, 0x800e
/* 14B0AC 801A503C 3C04801D */  lui   $a0, %hi(D_801CA884) # $a0, 0x801d
/* 14B0B0 801A5040 00063080 */  sll   $a2, $a2, 2
/* 14B0B4 801A5044 01063821 */  addu  $a3, $t0, $a2
/* 14B0B8 801A5048 01665821 */  addu  $t3, $t3, $a2
/* 14B0BC 801A504C 8D6B6310 */  lw    $t3, 0x6310($t3)
/* 14B0C0 801A5050 8CEA0000 */  lw    $t2, ($a3)
/* 14B0C4 801A5054 2484A884 */  addiu $a0, %lo(D_801CA884) # addiu $a0, $a0, -0x577c
/* 14B0C8 801A5058 014B6025 */  or    $t4, $t2, $t3
/* 14B0CC 801A505C ACEC0000 */  sw    $t4, ($a3)
/* 14B0D0 801A5060 0C0445EF */  jal   func_801117BC
/* 14B0D4 801A5064 8C650000 */   lw    $a1, ($v1)
/* 14B0D8 801A5068 0C044713 */  jal   func_80111C4C
/* 14B0DC 801A506C 00402025 */   move  $a0, $v0
/* 14B0E0 801A5070 3C0D800D */  lui   $t5, %hi(D_800D7154) # $t5, 0x800d
/* 14B0E4 801A5074 8DAD7154 */  lw    $t5, %lo(D_800D7154)($t5)
/* 14B0E8 801A5078 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 14B0EC 801A507C 55A00009 */  bnezl $t5, .L801A50A4_ovl7
/* 14B0F0 801A5080 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14B0F4 801A5084 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 14B0F8 801A5088 3C01800F */  lui   $at, 0x800f
/* 14B0FC 801A508C 240E0001 */  li    $t6, 1
/* 14B100 801A5090 8F190000 */  lw    $t9, ($t8)
/* 14B104 801A5094 00197880 */  sll   $t7, $t9, 2
/* 14B108 801A5098 002F0821 */  addu  $at, $at, $t7
/* 14B10C 801A509C AC2EC2E0 */  sw    $t6, -0x3d20($at)
.L801A50A0_ovl7:
/* 14B110 801A50A0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801A50A4_ovl7:
/* 14B114 801A50A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 14B118 801A50A8 03E00008 */  jr    $ra
/* 14B11C 801A50AC 00000000 */   nop   

.type func_801A4F70_ovl7, @function
.size func_801A4F70_ovl7, . - func_801A4F70_ovl7

glabel func_801A50B0_ovl7
/* 14B120 801A50B0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14B124 801A50B4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14B128 801A50B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14B12C 801A50BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 14B130 801A50C0 AFA40018 */  sw    $a0, 0x18($sp)
/* 14B134 801A50C4 8C4F0000 */  lw    $t7, ($v0)
/* 14B138 801A50C8 3C01801D */  lui   $at, %hi(D_801CDFC0) # $at, 0x801d
/* 14B13C 801A50CC C42EDFC0 */  lwc1  $f14, %lo(D_801CDFC0)($at)
/* 14B140 801A50D0 3C01800E */  lui   $at, 0x800e
/* 14B144 801A50D4 3C0E801A */  lui   $t6, %hi(D_801A522C) # $t6, 0x801a
/* 14B148 801A50D8 000FC080 */  sll   $t8, $t7, 2
/* 14B14C 801A50DC 00380821 */  addu  $at, $at, $t8
/* 14B150 801A50E0 25CE522C */  addiu $t6, %lo(D_801A522C) # addiu $t6, $t6, 0x522c
/* 14B154 801A50E4 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 14B158 801A50E8 8C590000 */  lw    $t9, ($v0)
/* 14B15C 801A50EC 44806000 */  mtc1  $zero, $f12
/* 14B160 801A50F0 3C05800E */  lui   $a1, %hi(D_800E6690) # $a1, 0x800e
/* 14B164 801A50F4 24A56690 */  addiu $a1, %lo(D_800E6690) # addiu $a1, $a1, 0x6690
/* 14B168 801A50F8 00194080 */  sll   $t0, $t9, 2
/* 14B16C 801A50FC 00A84821 */  addu  $t1, $a1, $t0
/* 14B170 801A5100 E52C0000 */  swc1  $f12, ($t1)
/* 14B174 801A5104 8C430000 */  lw    $v1, ($v0)
/* 14B178 801A5108 3C01800E */  lui   $at, 0x800e
/* 14B17C 801A510C 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 14B180 801A5110 00031880 */  sll   $v1, $v1, 2
/* 14B184 801A5114 00A35021 */  addu  $t2, $a1, $v1
/* 14B188 801A5118 C5440000 */  lwc1  $f4, ($t2)
/* 14B18C 801A511C 00230821 */  addu  $at, $at, $v1
/* 14B190 801A5120 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 14B194 801A5124 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14B198 801A5128 8C4B0000 */  lw    $t3, ($v0)
/* 14B19C 801A512C 3C01800E */  lui   $at, 0x800e
/* 14B1A0 801A5130 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 14B1A4 801A5134 000B6080 */  sll   $t4, $t3, 2
/* 14B1A8 801A5138 002C0821 */  addu  $at, $at, $t4
/* 14B1AC 801A513C E42E6850 */  swc1  $f14, 0x6850($at)
/* 14B1B0 801A5140 8C4D0000 */  lw    $t5, ($v0)
/* 14B1B4 801A5144 3C01800E */  lui   $at, 0x800e
/* 14B1B8 801A5148 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 14B1BC 801A514C 000D7880 */  sll   $t7, $t5, 2
/* 14B1C0 801A5150 00CF7021 */  addu  $t6, $a2, $t7
/* 14B1C4 801A5154 E5CC0000 */  swc1  $f12, ($t6)
/* 14B1C8 801A5158 8C430000 */  lw    $v1, ($v0)
/* 14B1CC 801A515C 00031880 */  sll   $v1, $v1, 2
/* 14B1D0 801A5160 00C3C021 */  addu  $t8, $a2, $v1
/* 14B1D4 801A5164 C7000000 */  lwc1  $f0, ($t8)
/* 14B1D8 801A5168 00230821 */  addu  $at, $at, $v1
/* 14B1DC 801A516C E4203750 */  swc1  $f0, 0x3750($at)
/* 14B1E0 801A5170 8C590000 */  lw    $t9, ($v0)
/* 14B1E4 801A5174 3C01800E */  lui   $at, 0x800e
/* 14B1E8 801A5178 00194080 */  sll   $t0, $t9, 2
/* 14B1EC 801A517C 00280821 */  addu  $at, $at, $t0
/* 14B1F0 801A5180 E4203590 */  swc1  $f0, 0x3590($at)
/* 14B1F4 801A5184 8C490000 */  lw    $t1, ($v0)
/* 14B1F8 801A5188 3C01800E */  lui   $at, 0x800e
/* 14B1FC 801A518C 00095080 */  sll   $t2, $t1, 2
/* 14B200 801A5190 002A0821 */  addu  $at, $at, $t2
/* 14B204 801A5194 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14B208 801A5198 8C4B0000 */  lw    $t3, ($v0)
/* 14B20C 801A519C 3C01800E */  lui   $at, 0x800e
/* 14B210 801A51A0 000B6080 */  sll   $t4, $t3, 2
/* 14B214 801A51A4 002C0821 */  addu  $at, $at, $t4
/* 14B218 801A51A8 E4203210 */  swc1  $f0, 0x3210($at)
/* 14B21C 801A51AC 8C4D0000 */  lw    $t5, ($v0)
/* 14B220 801A51B0 3C01800E */  lui   $at, 0x800e
/* 14B224 801A51B4 000D7880 */  sll   $t7, $t5, 2
/* 14B228 801A51B8 002F0821 */  addu  $at, $at, $t7
/* 14B22C 801A51BC E4203050 */  swc1  $f0, 0x3050($at)
/* 14B230 801A51C0 8C4E0000 */  lw    $t6, ($v0)
/* 14B234 801A51C4 3C01800E */  lui   $at, 0x800e
/* 14B238 801A51C8 000EC080 */  sll   $t8, $t6, 2
/* 14B23C 801A51CC 00F8C821 */  addu  $t9, $a3, $t8
/* 14B240 801A51D0 E72E0000 */  swc1  $f14, ($t9)
/* 14B244 801A51D4 8C430000 */  lw    $v1, ($v0)
/* 14B248 801A51D8 00031880 */  sll   $v1, $v1, 2
/* 14B24C 801A51DC 00E34021 */  addu  $t0, $a3, $v1
/* 14B250 801A51E0 C5020000 */  lwc1  $f2, ($t0)
/* 14B254 801A51E4 00230821 */  addu  $at, $at, $v1
/* 14B258 801A51E8 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14B25C 801A51EC 8C490000 */  lw    $t1, ($v0)
/* 14B260 801A51F0 3C01800E */  lui   $at, 0x800e
/* 14B264 801A51F4 00095080 */  sll   $t2, $t1, 2
/* 14B268 801A51F8 002A0821 */  addu  $at, $at, $t2
/* 14B26C 801A51FC 0C069984 */  jal   func_801A6610_ovl7
/* 14B270 801A5200 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 14B274 801A5204 0C02BD02 */  jal   func_800AF408
/* 14B278 801A5208 00000000 */   nop   
/* 14B27C 801A520C 0C002DAF */  jal   finish_current_thread
/* 14B280 801A5210 2404000A */   li    $a0, 10
/* 14B284 801A5214 0C069105 */  jal   func_801A4414_ovl7
/* 14B288 801A5218 8FA40018 */   lw    $a0, 0x18($sp)
/* 14B28C 801A521C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14B290 801A5220 27BD0018 */  addiu $sp, $sp, 0x18
/* 14B294 801A5224 03E00008 */  jr    $ra
/* 14B298 801A5228 00000000 */   nop   

.type func_801A50B0_ovl7, @function
.size func_801A50B0_ovl7, . - func_801A50B0_ovl7

glabel func_801A522C_ovl7
/* 14B29C 801A522C 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 14B2A0 801A5230 C420C9E4 */  lwc1  $f0, %lo(D_800EC9E4)($at)
/* 14B2A4 801A5234 44802000 */  mtc1  $zero, $f4
/* 14B2A8 801A5238 AFA40000 */  sw    $a0, ($sp)
/* 14B2AC 801A523C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14B2B0 801A5240 46002032 */  c.eq.s $f4, $f0
/* 14B2B4 801A5244 00000000 */  nop   
/* 14B2B8 801A5248 45010008 */  bc1t  .L801A526C_ovl7
/* 14B2BC 801A524C 00000000 */   nop   
/* 14B2C0 801A5250 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14B2C4 801A5254 46000187 */  neg.s $f6, $f0
/* 14B2C8 801A5258 3C01800E */  lui   $at, 0x800e
/* 14B2CC 801A525C 8DCF0000 */  lw    $t7, ($t6)
/* 14B2D0 801A5260 000FC080 */  sll   $t8, $t7, 2
/* 14B2D4 801A5264 00380821 */  addu  $at, $at, $t8
/* 14B2D8 801A5268 E4263210 */  swc1  $f6, 0x3210($at)
.L801A526C_ovl7:
/* 14B2DC 801A526C 03E00008 */  jr    $ra
/* 14B2E0 801A5270 00000000 */   nop   

.type func_801A522C_ovl7, @function
.size func_801A522C_ovl7, . - func_801A522C_ovl7

glabel func_801A5274_ovl7
/* 14B2E4 801A5274 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 14B2E8 801A5278 AFB20020 */  sw    $s2, 0x20($sp)
/* 14B2EC 801A527C 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 14B2F0 801A5280 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 14B2F4 801A5284 AFB00018 */  sw    $s0, 0x18($sp)
/* 14B2F8 801A5288 8E500000 */  lw    $s0, ($s2)
/* 14B2FC 801A528C AFBF002C */  sw    $ra, 0x2c($sp)
/* 14B300 801A5290 AFB40028 */  sw    $s4, 0x28($sp)
/* 14B304 801A5294 AFB30024 */  sw    $s3, 0x24($sp)
/* 14B308 801A5298 AFB1001C */  sw    $s1, 0x1c($sp)
/* 14B30C 801A529C AFA40030 */  sw    $a0, 0x30($sp)
/* 14B310 801A52A0 8E030000 */  lw    $v1, ($s0)
/* 14B314 801A52A4 3C0E801A */  lui   $t6, %hi(D_801A557C) # $t6, 0x801a
/* 14B318 801A52A8 3C01800E */  lui   $at, 0x800e
/* 14B31C 801A52AC 00031880 */  sll   $v1, $v1, 2
/* 14B320 801A52B0 00230821 */  addu  $at, $at, $v1
/* 14B324 801A52B4 25CE557C */  addiu $t6, %lo(D_801A557C) # addiu $t6, $t6, 0x557c
/* 14B328 801A52B8 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 14B32C 801A52BC 8E180000 */  lw    $t8, ($s0)
/* 14B330 801A52C0 3C13800E */  lui   $s3, 0x800e
/* 14B334 801A52C4 3C01800E */  lui   $at, 0x800e
/* 14B338 801A52C8 0018C880 */  sll   $t9, $t8, 2
/* 14B33C 801A52CC 02639821 */  addu  $s3, $s3, $v1
/* 14B340 801A52D0 00390821 */  addu  $at, $at, $t9
/* 14B344 801A52D4 240F0023 */  li    $t7, 35
/* 14B348 801A52D8 8E731B50 */  lw    $s3, 0x1b50($s3)
/* 14B34C 801A52DC 0C069984 */  jal   func_801A6610_ovl7
/* 14B350 801A52E0 AC2FDA90 */   sw    $t7, -0x2570($at)
/* 14B354 801A52E4 8E500000 */  lw    $s0, ($s2)
/* 14B358 801A52E8 44806000 */  mtc1  $zero, $f12
/* 14B35C 801A52EC 3C02800E */  lui   $v0, %hi(D_800E6690) # $v0, 0x800e
/* 14B360 801A52F0 8E080000 */  lw    $t0, ($s0)
/* 14B364 801A52F4 24426690 */  addiu $v0, %lo(D_800E6690) # addiu $v0, $v0, 0x6690
/* 14B368 801A52F8 3C01801D */  lui   $at, %hi(D_801CDFC4) # $at, 0x801d
/* 14B36C 801A52FC 00084880 */  sll   $t1, $t0, 2
/* 14B370 801A5300 C42EDFC4 */  lwc1  $f14, %lo(D_801CDFC4)($at)
/* 14B374 801A5304 00495021 */  addu  $t2, $v0, $t1
/* 14B378 801A5308 E54C0000 */  swc1  $f12, ($t2)
/* 14B37C 801A530C 8E030000 */  lw    $v1, ($s0)
/* 14B380 801A5310 3C01800E */  lui   $at, 0x800e
/* 14B384 801A5314 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 14B388 801A5318 00031880 */  sll   $v1, $v1, 2
/* 14B38C 801A531C 00435821 */  addu  $t3, $v0, $v1
/* 14B390 801A5320 C5640000 */  lwc1  $f4, ($t3)
/* 14B394 801A5324 00230821 */  addu  $at, $at, $v1
/* 14B398 801A5328 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 14B39C 801A532C E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14B3A0 801A5330 8E0C0000 */  lw    $t4, ($s0)
/* 14B3A4 801A5334 3C01800E */  lui   $at, 0x800e
/* 14B3A8 801A5338 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 14B3AC 801A533C 000C6880 */  sll   $t5, $t4, 2
/* 14B3B0 801A5340 002D0821 */  addu  $at, $at, $t5
/* 14B3B4 801A5344 E42E6850 */  swc1  $f14, 0x6850($at)
/* 14B3B8 801A5348 8E0E0000 */  lw    $t6, ($s0)
/* 14B3BC 801A534C 3C01800E */  lui   $at, 0x800e
/* 14B3C0 801A5350 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 14B3C4 801A5354 000EC080 */  sll   $t8, $t6, 2
/* 14B3C8 801A5358 00987821 */  addu  $t7, $a0, $t8
/* 14B3CC 801A535C E5EC0000 */  swc1  $f12, ($t7)
/* 14B3D0 801A5360 8E030000 */  lw    $v1, ($s0)
/* 14B3D4 801A5364 00031880 */  sll   $v1, $v1, 2
/* 14B3D8 801A5368 0083C821 */  addu  $t9, $a0, $v1
/* 14B3DC 801A536C C7200000 */  lwc1  $f0, ($t9)
/* 14B3E0 801A5370 00230821 */  addu  $at, $at, $v1
/* 14B3E4 801A5374 E4203750 */  swc1  $f0, 0x3750($at)
/* 14B3E8 801A5378 8E080000 */  lw    $t0, ($s0)
/* 14B3EC 801A537C 3C01800E */  lui   $at, 0x800e
/* 14B3F0 801A5380 00084880 */  sll   $t1, $t0, 2
/* 14B3F4 801A5384 00290821 */  addu  $at, $at, $t1
/* 14B3F8 801A5388 E4203590 */  swc1  $f0, 0x3590($at)
/* 14B3FC 801A538C 8E0A0000 */  lw    $t2, ($s0)
/* 14B400 801A5390 3C01800E */  lui   $at, 0x800e
/* 14B404 801A5394 000A5880 */  sll   $t3, $t2, 2
/* 14B408 801A5398 002B0821 */  addu  $at, $at, $t3
/* 14B40C 801A539C E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14B410 801A53A0 8E0C0000 */  lw    $t4, ($s0)
/* 14B414 801A53A4 3C01800E */  lui   $at, 0x800e
/* 14B418 801A53A8 000C6880 */  sll   $t5, $t4, 2
/* 14B41C 801A53AC 002D0821 */  addu  $at, $at, $t5
/* 14B420 801A53B0 E4203210 */  swc1  $f0, 0x3210($at)
/* 14B424 801A53B4 8E0E0000 */  lw    $t6, ($s0)
/* 14B428 801A53B8 3C01800E */  lui   $at, 0x800e
/* 14B42C 801A53BC 000EC080 */  sll   $t8, $t6, 2
/* 14B430 801A53C0 00380821 */  addu  $at, $at, $t8
/* 14B434 801A53C4 E4203050 */  swc1  $f0, 0x3050($at)
/* 14B438 801A53C8 8E0F0000 */  lw    $t7, ($s0)
/* 14B43C 801A53CC 3C01800E */  lui   $at, 0x800e
/* 14B440 801A53D0 000FC880 */  sll   $t9, $t7, 2
/* 14B444 801A53D4 00B94021 */  addu  $t0, $a1, $t9
/* 14B448 801A53D8 E50E0000 */  swc1  $f14, ($t0)
/* 14B44C 801A53DC 8E030000 */  lw    $v1, ($s0)
/* 14B450 801A53E0 00031880 */  sll   $v1, $v1, 2
/* 14B454 801A53E4 00A34821 */  addu  $t1, $a1, $v1
/* 14B458 801A53E8 C5220000 */  lwc1  $f2, ($t1)
/* 14B45C 801A53EC 00230821 */  addu  $at, $at, $v1
/* 14B460 801A53F0 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14B464 801A53F4 8E0A0000 */  lw    $t2, ($s0)
/* 14B468 801A53F8 3C01800E */  lui   $at, 0x800e
/* 14B46C 801A53FC 000A5880 */  sll   $t3, $t2, 2
/* 14B470 801A5400 002B0821 */  addu  $at, $at, $t3
/* 14B474 801A5404 0C02BD02 */  jal   func_800AF408
/* 14B478 801A5408 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 14B47C 801A540C 3C0C801D */  lui   $t4, %hi(D_801CD264) # $t4, 0x801d
/* 14B480 801A5410 258CD264 */  addiu $t4, %lo(D_801CD264) # addiu $t4, $t4, -0x2d9c
/* 14B484 801A5414 AE600048 */  sw    $zero, 0x48($s3)
/* 14B488 801A5418 AE6C0098 */  sw    $t4, 0x98($s3)
/* 14B48C 801A541C 8E500000 */  lw    $s0, ($s2)
/* 14B490 801A5420 3C14800F */  lui   $s4, %hi(D_800EC2E0) # $s4, 0x800f
/* 14B494 801A5424 2694C2E0 */  addiu $s4, %lo(D_800EC2E0) # addiu $s4, $s4, -0x3d20
/* 14B498 801A5428 8E0D0000 */  lw    $t5, ($s0)
/* 14B49C 801A542C 3C11800F */  lui   $s1, %hi(D_800E9720) # $s1, 0x800f
/* 14B4A0 801A5430 26319720 */  addiu $s1, %lo(D_800E9720) # addiu $s1, $s1, -0x68e0
/* 14B4A4 801A5434 000D7080 */  sll   $t6, $t5, 2
/* 14B4A8 801A5438 028EC021 */  addu  $t8, $s4, $t6
/* 14B4AC 801A543C AF000000 */  sw    $zero, ($t8)
/* 14B4B0 801A5440 8E190000 */  lw    $t9, ($s0)
/* 14B4B4 801A5444 240F000A */  li    $t7, 10
/* 14B4B8 801A5448 24040222 */  li    $a0, 546
/* 14B4BC 801A544C 00194080 */  sll   $t0, $t9, 2
/* 14B4C0 801A5450 02284821 */  addu  $t1, $s1, $t0
/* 14B4C4 801A5454 0C029D9E */  jal   play_sound
/* 14B4C8 801A5458 AD2F0000 */   sw    $t7, ($t1)
/* 14B4CC 801A545C 8E500000 */  lw    $s0, ($s2)
/* 14B4D0 801A5460 3C0A800F */  lui   $t2, 0x800f
/* 14B4D4 801A5464 24010001 */  li    $at, 1
/* 14B4D8 801A5468 8E030000 */  lw    $v1, ($s0)
/* 14B4DC 801A546C 3C0B800C */  lui   $t3, %hi(D_800B83C8) # $t3, 0x800c
/* 14B4E0 801A5470 00031880 */  sll   $v1, $v1, 2
/* 14B4E4 801A5474 01435021 */  addu  $t2, $t2, $v1
/* 14B4E8 801A5478 8D4A8E60 */  lw    $t2, -0x71a0($t2)
/* 14B4EC 801A547C 11410030 */  beq   $t2, $at, .L801A5540_ovl7
/* 14B4F0 801A5480 3C01800E */   lui   $at, 0x800e
/* 14B4F4 801A5484 00230821 */  addu  $at, $at, $v1
/* 14B4F8 801A5488 AC200D50 */  sw    $zero, 0xd50($at)
/* 14B4FC 801A548C 8E0C0000 */  lw    $t4, ($s0)
/* 14B500 801A5490 3C01800E */  lui   $at, 0x800e
/* 14B504 801A5494 256B83C8 */  addiu $t3, %lo(D_800B83C8) # addiu $t3, $t3, -0x7c38
/* 14B508 801A5498 000C6880 */  sll   $t5, $t4, 2
/* 14B50C 801A549C 002D0821 */  addu  $at, $at, $t5
/* 14B510 801A54A0 0C0695B2 */  jal   func_801A56C8_ovl7
/* 14B514 801A54A4 AC2BEF90 */   sw    $t3, -0x1070($at)
/* 14B518 801A54A8 8E4E0000 */  lw    $t6, ($s2)
/* 14B51C 801A54AC 8DC30000 */  lw    $v1, ($t6)
/* 14B520 801A54B0 00031880 */  sll   $v1, $v1, 2
/* 14B524 801A54B4 0283C021 */  addu  $t8, $s4, $v1
/* 14B528 801A54B8 8F190000 */  lw    $t9, ($t8)
/* 14B52C 801A54BC 02234021 */  addu  $t0, $s1, $v1
/* 14B530 801A54C0 1720001F */  bnez  $t9, .L801A5540_ovl7
/* 14B534 801A54C4 00000000 */   nop   
/* 14B538 801A54C8 8D0F0000 */  lw    $t7, ($t0)
/* 14B53C 801A54CC 3C138013 */  lui   $s3, %hi(gKirbyState) # $s3, 0x8013
/* 14B540 801A54D0 2673E7C0 */  addiu $s3, %lo(gKirbyState) # addiu $s3, $s3, -0x1840
/* 14B544 801A54D4 11E0001A */  beqz  $t7, .L801A5540_ovl7
/* 14B548 801A54D8 00000000 */   nop   
/* 14B54C 801A54DC 8E6900A0 */  lw    $t1, 0xa0($s3)
/* 14B550 801A54E0 11200017 */  beqz  $t1, .L801A5540_ovl7
/* 14B554 801A54E4 00000000 */   nop   
.L801A54E8_ovl7:
/* 14B558 801A54E8 0C002DAF */  jal   finish_current_thread
/* 14B55C 801A54EC 24040001 */   li    $a0, 1
/* 14B560 801A54F0 8E500000 */  lw    $s0, ($s2)
/* 14B564 801A54F4 8E0A0000 */  lw    $t2, ($s0)
/* 14B568 801A54F8 000A6080 */  sll   $t4, $t2, 2
/* 14B56C 801A54FC 022C1021 */  addu  $v0, $s1, $t4
/* 14B570 801A5500 8C4B0000 */  lw    $t3, ($v0)
/* 14B574 801A5504 256DFFFF */  addiu $t5, $t3, -1
/* 14B578 801A5508 AC4D0000 */  sw    $t5, ($v0)
/* 14B57C 801A550C 8E030000 */  lw    $v1, ($s0)
/* 14B580 801A5510 00031880 */  sll   $v1, $v1, 2
/* 14B584 801A5514 02837021 */  addu  $t6, $s4, $v1
/* 14B588 801A5518 8DD80000 */  lw    $t8, ($t6)
/* 14B58C 801A551C 0223C821 */  addu  $t9, $s1, $v1
/* 14B590 801A5520 17000007 */  bnez  $t8, .L801A5540_ovl7
/* 14B594 801A5524 00000000 */   nop   
/* 14B598 801A5528 8F280000 */  lw    $t0, ($t9)
/* 14B59C 801A552C 11000004 */  beqz  $t0, .L801A5540_ovl7
/* 14B5A0 801A5530 00000000 */   nop   
/* 14B5A4 801A5534 8E6F00A0 */  lw    $t7, 0xa0($s3)
/* 14B5A8 801A5538 15E0FFEB */  bnez  $t7, .L801A54E8_ovl7
/* 14B5AC 801A553C 00000000 */   nop   
.L801A5540_ovl7:
/* 14B5B0 801A5540 3C09800B */  lui   $t1, %hi(D_800B74B8) # $t1, 0x800b
/* 14B5B4 801A5544 3C01800E */  lui   $at, 0x800e
/* 14B5B8 801A5548 00230821 */  addu  $at, $at, $v1
/* 14B5BC 801A554C 252974B8 */  addiu $t1, %lo(D_800B74B8) # addiu $t1, $t1, 0x74b8
/* 14B5C0 801A5550 AC29EF90 */  sw    $t1, -0x1070($at)
/* 14B5C4 801A5554 0C0690EF */  jal   func_801A43BC_ovl7
/* 14B5C8 801A5558 8FA40030 */   lw    $a0, 0x30($sp)
/* 14B5CC 801A555C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 14B5D0 801A5560 8FB00018 */  lw    $s0, 0x18($sp)
/* 14B5D4 801A5564 8FB1001C */  lw    $s1, 0x1c($sp)
/* 14B5D8 801A5568 8FB20020 */  lw    $s2, 0x20($sp)
/* 14B5DC 801A556C 8FB30024 */  lw    $s3, 0x24($sp)
/* 14B5E0 801A5570 8FB40028 */  lw    $s4, 0x28($sp)
/* 14B5E4 801A5574 03E00008 */  jr    $ra
/* 14B5E8 801A5578 27BD0030 */   addiu $sp, $sp, 0x30

.type func_801A5274_ovl7, @function
.size func_801A5274_ovl7, . - func_801A5274_ovl7

glabel func_801A557C_ovl7
/* 14B5EC 801A557C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14B5F0 801A5580 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14B5F4 801A5584 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14B5F8 801A5588 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14B5FC 801A558C 8DCF0000 */  lw    $t7, ($t6)
/* 14B600 801A5590 3C19800F */  lui   $t9, 0x800f
/* 14B604 801A5594 24010001 */  li    $at, 1
/* 14B608 801A5598 000FC080 */  sll   $t8, $t7, 2
/* 14B60C 801A559C 0338C821 */  addu  $t9, $t9, $t8
/* 14B610 801A55A0 8F398E60 */  lw    $t9, -0x71a0($t9)
/* 14B614 801A55A4 5321003B */  beql  $t9, $at, .L801A5694_ovl7
/* 14B618 801A55A8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14B61C 801A55AC 0C06835D */  jal   func_801A0D74_ovl7
/* 14B620 801A55B0 00000000 */   nop   
/* 14B624 801A55B4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14B628 801A55B8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14B62C 801A55BC 3C09800F */  lui   $t1, 0x800f
/* 14B630 801A55C0 3C0A800F */  lui   $t2, %hi(D_800EC2E0) # $t2, 0x800f
/* 14B634 801A55C4 8D020000 */  lw    $v0, ($t0)
/* 14B638 801A55C8 254AC2E0 */  addiu $t2, %lo(D_800EC2E0) # addiu $t2, $t2, -0x3d20
/* 14B63C 801A55CC 24010001 */  li    $at, 1
/* 14B640 801A55D0 00021080 */  sll   $v0, $v0, 2
/* 14B644 801A55D4 01224821 */  addu  $t1, $t1, $v0
/* 14B648 801A55D8 8D298920 */  lw    $t1, -0x76e0($t1)
/* 14B64C 801A55DC 004A1821 */  addu  $v1, $v0, $t2
/* 14B650 801A55E0 5521002C */  bnel  $t1, $at, .L801A5694_ovl7
/* 14B654 801A55E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14B658 801A55E8 8C6B0000 */  lw    $t3, ($v1)
/* 14B65C 801A55EC 3C01800E */  lui   $at, 0x800e
/* 14B660 801A55F0 00220821 */  addu  $at, $at, $v0
/* 14B664 801A55F4 55600027 */  bnezl $t3, .L801A5694_ovl7
/* 14B668 801A55F8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14B66C 801A55FC C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 14B670 801A5600 3C01800E */  lui   $at, 0x800e
/* 14B674 801A5604 00220821 */  addu  $at, $at, $v0
/* 14B678 801A5608 C4262B10 */  lwc1  $f6, 0x2b10($at)
/* 14B67C 801A560C 44807000 */  mtc1  $zero, $f14
/* 14B680 801A5610 3C01800E */  lui   $at, 0x800e
/* 14B684 801A5614 46062001 */  sub.s $f0, $f4, $f6
/* 14B688 801A5618 00220821 */  addu  $at, $at, $v0
/* 14B68C 801A561C C4282950 */  lwc1  $f8, 0x2950($at)
/* 14B690 801A5620 3C01800E */  lui   $at, 0x800e
/* 14B694 801A5624 460E003C */  c.lt.s $f0, $f14
/* 14B698 801A5628 00220821 */  addu  $at, $at, $v0
/* 14B69C 801A562C C42A2E90 */  lwc1  $f10, 0x2e90($at)
/* 14B6A0 801A5630 3C01801D */  lui   $at, %hi(D_801CDFC8) # $at, 0x801d
/* 14B6A4 801A5634 45000003 */  bc1f  .L801A5644_ovl7
/* 14B6A8 801A5638 460A4301 */   sub.s $f12, $f8, $f10
/* 14B6AC 801A563C 10000002 */  b     .L801A5648_ovl7
/* 14B6B0 801A5640 46000087 */   neg.s $f2, $f0
.L801A5644_ovl7:
/* 14B6B4 801A5644 46000086 */  mov.s $f2, $f0
.L801A5648_ovl7:
/* 14B6B8 801A5648 C430DFC8 */  lwc1  $f16, %lo(D_801CDFC8)($at)
/* 14B6BC 801A564C 240C0001 */  li    $t4, 1
/* 14B6C0 801A5650 4602803E */  c.le.s $f16, $f2
/* 14B6C4 801A5654 00000000 */  nop   
/* 14B6C8 801A5658 4503000D */  bc1tl .L801A5690_ovl7
/* 14B6CC 801A565C AC6C0000 */   sw    $t4, ($v1)
/* 14B6D0 801A5660 460E603C */  c.lt.s $f12, $f14
/* 14B6D4 801A5664 00000000 */  nop   
/* 14B6D8 801A5668 45020004 */  bc1fl .L801A567C_ovl7
/* 14B6DC 801A566C 46006006 */   mov.s $f0, $f12
/* 14B6E0 801A5670 10000002 */  b     .L801A567C_ovl7
/* 14B6E4 801A5674 46006007 */   neg.s $f0, $f12
/* 14B6E8 801A5678 46006006 */  mov.s $f0, $f12
.L801A567C_ovl7:
/* 14B6EC 801A567C 4600803E */  c.le.s $f16, $f0
/* 14B6F0 801A5680 00000000 */  nop   
/* 14B6F4 801A5684 45020003 */  bc1fl .L801A5694_ovl7
/* 14B6F8 801A5688 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14B6FC 801A568C AC6C0000 */  sw    $t4, ($v1)
.L801A5690_ovl7:
/* 14B700 801A5690 8FBF0014 */  lw    $ra, 0x14($sp)
.L801A5694_ovl7:
/* 14B704 801A5694 27BD0018 */  addiu $sp, $sp, 0x18
/* 14B708 801A5698 03E00008 */  jr    $ra
/* 14B70C 801A569C 00000000 */   nop   

.type func_801A557C_ovl7, @function
.size func_801A557C_ovl7, . - func_801A557C_ovl7

glabel func_801A56A0_ovl7
/* 14B710 801A56A0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 14B714 801A56A4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 14B718 801A56A8 AFA40000 */  sw    $a0, ($sp)
/* 14B71C 801A56AC 3C01800F */  lui   $at, 0x800f
/* 14B720 801A56B0 8DF80000 */  lw    $t8, ($t7)
/* 14B724 801A56B4 240E0001 */  li    $t6, 1
/* 14B728 801A56B8 0018C880 */  sll   $t9, $t8, 2
/* 14B72C 801A56BC 00390821 */  addu  $at, $at, $t9
/* 14B730 801A56C0 03E00008 */  jr    $ra
/* 14B734 801A56C4 AC2EC2E0 */   sw    $t6, -0x3d20($at)

.type func_801A56A0_ovl7, @function
.size func_801A56A0_ovl7, . - func_801A56A0_ovl7

glabel func_801A56C8_ovl7
/* 14B738 801A56C8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14B73C 801A56CC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14B740 801A56D0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 14B744 801A56D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14B748 801A56D8 8C430000 */  lw    $v1, ($v0)
/* 14B74C 801A56DC 3C0E800E */  lui   $t6, 0x800e
/* 14B750 801A56E0 3C18800E */  lui   $t8, 0x800e
/* 14B754 801A56E4 00031880 */  sll   $v1, $v1, 2
/* 14B758 801A56E8 01C37021 */  addu  $t6, $t6, $v1
/* 14B75C 801A56EC 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 14B760 801A56F0 3C01800E */  lui   $at, 0x800e
/* 14B764 801A56F4 00230821 */  addu  $at, $at, $v1
/* 14B768 801A56F8 000E7880 */  sll   $t7, $t6, 2
/* 14B76C 801A56FC 030FC021 */  addu  $t8, $t8, $t7
/* 14B770 801A5700 8F18E350 */  lw    $t8, -0x1cb0($t8)
/* 14B774 801A5704 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 14B778 801A5708 3C01800E */  lui   $at, 0x800e
/* 14B77C 801A570C 8F19003C */  lw    $t9, 0x3c($t8)
/* 14B780 801A5710 27A40020 */  addiu $a0, $sp, 0x20
/* 14B784 801A5714 8F250010 */  lw    $a1, 0x10($t9)
/* 14B788 801A5718 E7A40020 */  swc1  $f4, 0x20($sp)
/* 14B78C 801A571C 8C480000 */  lw    $t0, ($v0)
/* 14B790 801A5720 00084880 */  sll   $t1, $t0, 2
/* 14B794 801A5724 00290821 */  addu  $at, $at, $t1
/* 14B798 801A5728 C4262790 */  lwc1  $f6, 0x2790($at)
/* 14B79C 801A572C 3C01800E */  lui   $at, 0x800e
/* 14B7A0 801A5730 E7A60024 */  swc1  $f6, 0x24($sp)
/* 14B7A4 801A5734 8C4A0000 */  lw    $t2, ($v0)
/* 14B7A8 801A5738 000A5880 */  sll   $t3, $t2, 2
/* 14B7AC 801A573C 002B0821 */  addu  $at, $at, $t3
/* 14B7B0 801A5740 C4282950 */  lwc1  $f8, 0x2950($at)
/* 14B7B4 801A5744 0C0292CD */  jal   func_800A4B34
/* 14B7B8 801A5748 E7A80028 */   swc1  $f8, 0x28($sp)
/* 14B7BC 801A574C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14B7C0 801A5750 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14B7C4 801A5754 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 14B7C8 801A5758 3C01800E */  lui   $at, 0x800e
/* 14B7CC 801A575C 8C4C0000 */  lw    $t4, ($v0)
/* 14B7D0 801A5760 C7B00024 */  lwc1  $f16, 0x24($sp)
/* 14B7D4 801A5764 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14B7D8 801A5768 000C6880 */  sll   $t5, $t4, 2
/* 14B7DC 801A576C 002D0821 */  addu  $at, $at, $t5
/* 14B7E0 801A5770 E42A2090 */  swc1  $f10, 0x2090($at)
/* 14B7E4 801A5774 8C4E0000 */  lw    $t6, ($v0)
/* 14B7E8 801A5778 3C01800E */  lui   $at, 0x800e
/* 14B7EC 801A577C C7B20028 */  lwc1  $f18, 0x28($sp)
/* 14B7F0 801A5780 000E7880 */  sll   $t7, $t6, 2
/* 14B7F4 801A5784 002F0821 */  addu  $at, $at, $t7
/* 14B7F8 801A5788 E4302250 */  swc1  $f16, 0x2250($at)
/* 14B7FC 801A578C 8C580000 */  lw    $t8, ($v0)
/* 14B800 801A5790 3C01800E */  lui   $at, 0x800e
/* 14B804 801A5794 27BD0030 */  addiu $sp, $sp, 0x30
/* 14B808 801A5798 0018C880 */  sll   $t9, $t8, 2
/* 14B80C 801A579C 00390821 */  addu  $at, $at, $t9
/* 14B810 801A57A0 03E00008 */  jr    $ra
/* 14B814 801A57A4 E4322410 */   swc1  $f18, 0x2410($at)

.type func_801A56C8_ovl7, @function
.size func_801A56C8_ovl7, . - func_801A56C8_ovl7

glabel func_801A57A8_ovl7
/* 14B818 801A57A8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 14B81C 801A57AC AFB00020 */  sw    $s0, 0x20($sp)
/* 14B820 801A57B0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 14B824 801A57B4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 14B828 801A57B8 8E030000 */  lw    $v1, ($s0)
/* 14B82C 801A57BC AFBF002C */  sw    $ra, 0x2c($sp)
/* 14B830 801A57C0 AFB20028 */  sw    $s2, 0x28($sp)
/* 14B834 801A57C4 AFB10024 */  sw    $s1, 0x24($sp)
/* 14B838 801A57C8 AFA40030 */  sw    $a0, 0x30($sp)
/* 14B83C 801A57CC 8C680000 */  lw    $t0, ($v1)
/* 14B840 801A57D0 3C02800E */  lui   $v0, 0x800e
/* 14B844 801A57D4 3C01801D */  lui   $at, %hi(D_801CDFCC) # $at, 0x801d
/* 14B848 801A57D8 00084080 */  sll   $t0, $t0, 2
/* 14B84C 801A57DC 00481021 */  addu  $v0, $v0, $t0
/* 14B850 801A57E0 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14B854 801A57E4 C42EDFCC */  lwc1  $f14, %lo(D_801CDFCC)($at)
/* 14B858 801A57E8 3C01800E */  lui   $at, 0x800e
/* 14B85C 801A57EC 8C4E0088 */  lw    $t6, 0x88($v0)
/* 14B860 801A57F0 3C0F801A */  lui   $t7, %hi(D_801A5DE8) # $t7, 0x801a
/* 14B864 801A57F4 25EF5DE8 */  addiu $t7, %lo(D_801A5DE8) # addiu $t7, $t7, 0x5de8
/* 14B868 801A57F8 8DC5000C */  lw    $a1, 0xc($t6)
/* 14B86C 801A57FC 00280821 */  addu  $at, $at, $t0
/* 14B870 801A5800 24180024 */  li    $t8, 36
/* 14B874 801A5804 8CB10000 */  lw    $s1, ($a1)
/* 14B878 801A5808 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 14B87C 801A580C 8C790000 */  lw    $t9, ($v1)
/* 14B880 801A5810 3C01800E */  lui   $at, 0x800e
/* 14B884 801A5814 44806000 */  mtc1  $zero, $f12
/* 14B888 801A5818 00195080 */  sll   $t2, $t9, 2
/* 14B88C 801A581C 002A0821 */  addu  $at, $at, $t2
/* 14B890 801A5820 AC38DA90 */  sw    $t8, -0x2570($at)
/* 14B894 801A5824 AC400048 */  sw    $zero, 0x48($v0)
/* 14B898 801A5828 AC400098 */  sw    $zero, 0x98($v0)
/* 14B89C 801A582C 8E030000 */  lw    $v1, ($s0)
/* 14B8A0 801A5830 3C01800F */  lui   $at, 0x800f
/* 14B8A4 801A5834 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 14B8A8 801A5838 8C6B0000 */  lw    $t3, ($v1)
/* 14B8AC 801A583C 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 14B8B0 801A5840 3C07800E */  lui   $a3, %hi(D_800E3910) # $a3, 0x800e
/* 14B8B4 801A5844 000B6080 */  sll   $t4, $t3, 2
/* 14B8B8 801A5848 002C0821 */  addu  $at, $at, $t4
/* 14B8BC 801A584C AC20C2E0 */  sw    $zero, -0x3d20($at)
/* 14B8C0 801A5850 8C6D0000 */  lw    $t5, ($v1)
/* 14B8C4 801A5854 3C01800F */  lui   $at, 0x800f
/* 14B8C8 801A5858 24E73910 */  addiu $a3, %lo(D_800E3910) # addiu $a3, $a3, 0x3910
/* 14B8CC 801A585C 000D7080 */  sll   $t6, $t5, 2
/* 14B8D0 801A5860 002E0821 */  addu  $at, $at, $t6
/* 14B8D4 801A5864 AC20C4A0 */  sw    $zero, -0x3b60($at)
/* 14B8D8 801A5868 8C6F0000 */  lw    $t7, ($v1)
/* 14B8DC 801A586C 3C01800E */  lui   $at, 0x800e
/* 14B8E0 801A5870 3C09800E */  lui   $t1, %hi(D_800E3E50) # $t1, 0x800e
/* 14B8E4 801A5874 000FC880 */  sll   $t9, $t7, 2
/* 14B8E8 801A5878 00D9C021 */  addu  $t8, $a2, $t9
/* 14B8EC 801A587C E70C0000 */  swc1  $f12, ($t8)
/* 14B8F0 801A5880 8C680000 */  lw    $t0, ($v1)
/* 14B8F4 801A5884 25293E50 */  addiu $t1, %lo(D_800E3E50) # addiu $t1, $t1, 0x3e50
/* 14B8F8 801A5888 00084080 */  sll   $t0, $t0, 2
/* 14B8FC 801A588C 00C85021 */  addu  $t2, $a2, $t0
/* 14B900 801A5890 C5440000 */  lwc1  $f4, ($t2)
/* 14B904 801A5894 00280821 */  addu  $at, $at, $t0
/* 14B908 801A5898 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14B90C 801A589C 8C6B0000 */  lw    $t3, ($v1)
/* 14B910 801A58A0 3C01800E */  lui   $at, 0x800e
/* 14B914 801A58A4 000B6080 */  sll   $t4, $t3, 2
/* 14B918 801A58A8 002C0821 */  addu  $at, $at, $t4
/* 14B91C 801A58AC E42E6850 */  swc1  $f14, 0x6850($at)
/* 14B920 801A58B0 8C6D0000 */  lw    $t5, ($v1)
/* 14B924 801A58B4 3C01800E */  lui   $at, 0x800e
/* 14B928 801A58B8 000D7080 */  sll   $t6, $t5, 2
/* 14B92C 801A58BC 00EE7821 */  addu  $t7, $a3, $t6
/* 14B930 801A58C0 E5EC0000 */  swc1  $f12, ($t7)
/* 14B934 801A58C4 8C680000 */  lw    $t0, ($v1)
/* 14B938 801A58C8 00084080 */  sll   $t0, $t0, 2
/* 14B93C 801A58CC 00E8C821 */  addu  $t9, $a3, $t0
/* 14B940 801A58D0 C7200000 */  lwc1  $f0, ($t9)
/* 14B944 801A58D4 00280821 */  addu  $at, $at, $t0
/* 14B948 801A58D8 E4203750 */  swc1  $f0, 0x3750($at)
/* 14B94C 801A58DC 8C780000 */  lw    $t8, ($v1)
/* 14B950 801A58E0 3C01800E */  lui   $at, 0x800e
/* 14B954 801A58E4 00185080 */  sll   $t2, $t8, 2
/* 14B958 801A58E8 002A0821 */  addu  $at, $at, $t2
/* 14B95C 801A58EC E4203590 */  swc1  $f0, 0x3590($at)
/* 14B960 801A58F0 8C6B0000 */  lw    $t3, ($v1)
/* 14B964 801A58F4 3C01800E */  lui   $at, 0x800e
/* 14B968 801A58F8 000B6080 */  sll   $t4, $t3, 2
/* 14B96C 801A58FC 002C0821 */  addu  $at, $at, $t4
/* 14B970 801A5900 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14B974 801A5904 8C6D0000 */  lw    $t5, ($v1)
/* 14B978 801A5908 3C01800E */  lui   $at, 0x800e
/* 14B97C 801A590C 000D7080 */  sll   $t6, $t5, 2
/* 14B980 801A5910 002E0821 */  addu  $at, $at, $t6
/* 14B984 801A5914 E4203210 */  swc1  $f0, 0x3210($at)
/* 14B988 801A5918 8C6F0000 */  lw    $t7, ($v1)
/* 14B98C 801A591C 3C01800E */  lui   $at, 0x800e
/* 14B990 801A5920 000FC880 */  sll   $t9, $t7, 2
/* 14B994 801A5924 00390821 */  addu  $at, $at, $t9
/* 14B998 801A5928 E4203050 */  swc1  $f0, 0x3050($at)
/* 14B99C 801A592C 8C780000 */  lw    $t8, ($v1)
/* 14B9A0 801A5930 3C01800E */  lui   $at, 0x800e
/* 14B9A4 801A5934 00185080 */  sll   $t2, $t8, 2
/* 14B9A8 801A5938 012A5821 */  addu  $t3, $t1, $t2
/* 14B9AC 801A593C E56E0000 */  swc1  $f14, ($t3)
/* 14B9B0 801A5940 8C680000 */  lw    $t0, ($v1)
/* 14B9B4 801A5944 00084080 */  sll   $t0, $t0, 2
/* 14B9B8 801A5948 01286021 */  addu  $t4, $t1, $t0
/* 14B9BC 801A594C C5820000 */  lwc1  $f2, ($t4)
/* 14B9C0 801A5950 00280821 */  addu  $at, $at, $t0
/* 14B9C4 801A5954 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14B9C8 801A5958 8C6D0000 */  lw    $t5, ($v1)
/* 14B9CC 801A595C 3C01800E */  lui   $at, 0x800e
/* 14B9D0 801A5960 000D7080 */  sll   $t6, $t5, 2
/* 14B9D4 801A5964 002E0821 */  addu  $at, $at, $t6
/* 14B9D8 801A5968 0C069984 */  jal   func_801A6610_ovl7
/* 14B9DC 801A596C E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 14B9E0 801A5970 0C02BD02 */  jal   func_800AF408
/* 14B9E4 801A5974 00000000 */   nop   
/* 14B9E8 801A5978 8E030000 */  lw    $v1, ($s0)
/* 14B9EC 801A597C 3C12800F */  lui   $s2, %hi(D_800E9720) # $s2, 0x800f
/* 14B9F0 801A5980 26529720 */  addiu $s2, %lo(D_800E9720) # addiu $s2, $s2, -0x68e0
/* 14B9F4 801A5984 8C790000 */  lw    $t9, ($v1)
/* 14B9F8 801A5988 240F00B4 */  li    $t7, 180
/* 14B9FC 801A598C 3C01800F */  lui   $at, 0x800f
/* 14BA00 801A5990 0019C080 */  sll   $t8, $t9, 2
/* 14BA04 801A5994 02585021 */  addu  $t2, $s2, $t8
/* 14BA08 801A5998 AD4F0000 */  sw    $t7, ($t2)
/* 14BA0C 801A599C 8C6B0000 */  lw    $t3, ($v1)
/* 14BA10 801A59A0 24040007 */  li    $a0, 7
/* 14BA14 801A59A4 000B6080 */  sll   $t4, $t3, 2
/* 14BA18 801A59A8 002C0821 */  addu  $at, $at, $t4
/* 14BA1C 801A59AC AC20A520 */  sw    $zero, -0x5ae0($at)
/* 14BA20 801A59B0 8C6D0000 */  lw    $t5, ($v1)
/* 14BA24 801A59B4 3C01800F */  lui   $at, 0x800f
/* 14BA28 801A59B8 000D7080 */  sll   $t6, $t5, 2
/* 14BA2C 801A59BC 002E0821 */  addu  $at, $at, $t6
/* 14BA30 801A59C0 0C06B9F8 */  jal   func_801AE7E0_ovl7
/* 14BA34 801A59C4 AC2083E0 */   sw    $zero, -0x7c20($at)
/* 14BA38 801A59C8 8E030000 */  lw    $v1, ($s0)
/* 14BA3C 801A59CC 3C01800F */  lui   $at, 0x800f
/* 14BA40 801A59D0 3C04801C */  lui   $a0, %hi(D_801C5360) # $a0, 0x801c
/* 14BA44 801A59D4 8C790000 */  lw    $t9, ($v1)
/* 14BA48 801A59D8 24845360 */  addiu $a0, %lo(D_801C5360) # addiu $a0, $a0, 0x5360
/* 14BA4C 801A59DC 0019C080 */  sll   $t8, $t9, 2
/* 14BA50 801A59E0 00380821 */  addu  $at, $at, $t8
/* 14BA54 801A59E4 AC229C60 */  sw    $v0, -0x63a0($at)
/* 14BA58 801A59E8 8C6F0000 */  lw    $t7, ($v1)
/* 14BA5C 801A59EC C6260010 */  lwc1  $f6, 0x10($s1)
/* 14BA60 801A59F0 3C01800E */  lui   $at, 0x800e
/* 14BA64 801A59F4 000F5080 */  sll   $t2, $t7, 2
/* 14BA68 801A59F8 002A0821 */  addu  $at, $at, $t2
/* 14BA6C 801A59FC E4264550 */  swc1  $f6, 0x4550($at)
/* 14BA70 801A5A00 8C6B0000 */  lw    $t3, ($v1)
/* 14BA74 801A5A04 C6280010 */  lwc1  $f8, 0x10($s1)
/* 14BA78 801A5A08 3C01800E */  lui   $at, 0x800e
/* 14BA7C 801A5A0C 000B6080 */  sll   $t4, $t3, 2
/* 14BA80 801A5A10 002C0821 */  addu  $at, $at, $t4
/* 14BA84 801A5A14 E4284710 */  swc1  $f8, 0x4710($at)
/* 14BA88 801A5A18 8C6D0000 */  lw    $t5, ($v1)
/* 14BA8C 801A5A1C C62A0010 */  lwc1  $f10, 0x10($s1)
/* 14BA90 801A5A20 3C01800E */  lui   $at, 0x800e
/* 14BA94 801A5A24 000D7080 */  sll   $t6, $t5, 2
/* 14BA98 801A5A28 002E0821 */  addu  $at, $at, $t6
/* 14BA9C 801A5A2C 0C066220 */  jal   func_80198880_ovl7
/* 14BAA0 801A5A30 E42A48D0 */   swc1  $f10, 0x48d0($at)
/* 14BAA4 801A5A34 8E030000 */  lw    $v1, ($s0)
/* 14BAA8 801A5A38 3C01800F */  lui   $at, 0x800f
/* 14BAAC 801A5A3C 3C11800F */  lui   $s1, %hi(D_800E9E20) # $s1, 0x800f
/* 14BAB0 801A5A40 8C790000 */  lw    $t9, ($v1)
/* 14BAB4 801A5A44 26319E20 */  addiu $s1, %lo(D_800E9E20) # addiu $s1, $s1, -0x61e0
/* 14BAB8 801A5A48 240400C1 */  li    $a0, 193
/* 14BABC 801A5A4C 0019C080 */  sll   $t8, $t9, 2
/* 14BAC0 801A5A50 00380821 */  addu  $at, $at, $t8
/* 14BAC4 801A5A54 AC208920 */  sw    $zero, -0x76e0($at)
/* 14BAC8 801A5A58 8C6F0000 */  lw    $t7, ($v1)
/* 14BACC 801A5A5C 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 14BAD0 801A5A60 44818000 */  mtc1  $at, $f16
/* 14BAD4 801A5A64 3C01800E */  lui   $at, 0x800e
/* 14BAD8 801A5A68 000F5080 */  sll   $t2, $t7, 2
/* 14BADC 801A5A6C 002A0821 */  addu  $at, $at, $t2
/* 14BAE0 801A5A70 E4303210 */  swc1  $f16, 0x3210($at)
/* 14BAE4 801A5A74 8C6B0000 */  lw    $t3, ($v1)
/* 14BAE8 801A5A78 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 14BAEC 801A5A7C 44819000 */  mtc1  $at, $f18
/* 14BAF0 801A5A80 3C01800E */  lui   $at, 0x800e
/* 14BAF4 801A5A84 000B6080 */  sll   $t4, $t3, 2
/* 14BAF8 801A5A88 002C0821 */  addu  $at, $at, $t4
/* 14BAFC 801A5A8C E4323750 */  swc1  $f18, 0x3750($at)
/* 14BB00 801A5A90 8C6D0000 */  lw    $t5, ($v1)
/* 14BB04 801A5A94 3C01800F */  lui   $at, 0x800f
/* 14BB08 801A5A98 000D7080 */  sll   $t6, $t5, 2
/* 14BB0C 801A5A9C 022EC821 */  addu  $t9, $s1, $t6
/* 14BB10 801A5AA0 AF200000 */  sw    $zero, ($t9)
/* 14BB14 801A5AA4 8C780000 */  lw    $t8, ($v1)
/* 14BB18 801A5AA8 00187880 */  sll   $t7, $t8, 2
/* 14BB1C 801A5AAC 002F0821 */  addu  $at, $at, $t7
/* 14BB20 801A5AB0 0C029D9E */  jal   play_sound
/* 14BB24 801A5AB4 AC209FE0 */   sw    $zero, -0x6020($at)
/* 14BB28 801A5AB8 8E030000 */  lw    $v1, ($s0)
/* 14BB2C 801A5ABC 3C0A800F */  lui   $t2, 0x800f
/* 14BB30 801A5AC0 24010001 */  li    $at, 1
/* 14BB34 801A5AC4 8C680000 */  lw    $t0, ($v1)
/* 14BB38 801A5AC8 3C02800F */  lui   $v0, 0x800f
/* 14BB3C 801A5ACC 00084080 */  sll   $t0, $t0, 2
/* 14BB40 801A5AD0 01485021 */  addu  $t2, $t2, $t0
/* 14BB44 801A5AD4 8D4A8E60 */  lw    $t2, -0x71a0($t2)
/* 14BB48 801A5AD8 00481021 */  addu  $v0, $v0, $t0
/* 14BB4C 801A5ADC 15410022 */  bne   $t2, $at, .L801A5B68_ovl7
/* 14BB50 801A5AE0 00000000 */   nop   
/* 14BB54 801A5AE4 8C429C60 */  lw    $v0, -0x63a0($v0)
/* 14BB58 801A5AE8 3C0B800F */  lui   $t3, 0x800f
/* 14BB5C 801A5AEC 3C0C800E */  lui   $t4, 0x800e
/* 14BB60 801A5AF0 00021080 */  sll   $v0, $v0, 2
/* 14BB64 801A5AF4 01625821 */  addu  $t3, $t3, $v0
/* 14BB68 801A5AF8 8D6B9AA0 */  lw    $t3, -0x6560($t3)
/* 14BB6C 801A5AFC 01826021 */  addu  $t4, $t4, $v0
/* 14BB70 801A5B00 1560009E */  bnez  $t3, .L801A5D7C_ovl7
/* 14BB74 801A5B04 00000000 */   nop   
/* 14BB78 801A5B08 8D8CE350 */  lw    $t4, -0x1cb0($t4)
/* 14BB7C 801A5B0C 1180009B */  beqz  $t4, .L801A5D7C_ovl7
/* 14BB80 801A5B10 00000000 */   nop   
.L801A5B14_ovl7:
/* 14BB84 801A5B14 0C002DAF */  jal   finish_current_thread
/* 14BB88 801A5B18 24040001 */   li    $a0, 1
/* 14BB8C 801A5B1C 8E030000 */  lw    $v1, ($s0)
/* 14BB90 801A5B20 3C02800F */  lui   $v0, 0x800f
/* 14BB94 801A5B24 3C0D800F */  lui   $t5, 0x800f
/* 14BB98 801A5B28 8C680000 */  lw    $t0, ($v1)
/* 14BB9C 801A5B2C 3C0E800E */  lui   $t6, 0x800e
/* 14BBA0 801A5B30 00084080 */  sll   $t0, $t0, 2
/* 14BBA4 801A5B34 00481021 */  addu  $v0, $v0, $t0
/* 14BBA8 801A5B38 8C429C60 */  lw    $v0, -0x63a0($v0)
/* 14BBAC 801A5B3C 00021080 */  sll   $v0, $v0, 2
/* 14BBB0 801A5B40 01A26821 */  addu  $t5, $t5, $v0
/* 14BBB4 801A5B44 8DAD9AA0 */  lw    $t5, -0x6560($t5)
/* 14BBB8 801A5B48 01C27021 */  addu  $t6, $t6, $v0
/* 14BBBC 801A5B4C 15A0008B */  bnez  $t5, .L801A5D7C_ovl7
/* 14BBC0 801A5B50 00000000 */   nop   
/* 14BBC4 801A5B54 8DCEE350 */  lw    $t6, -0x1cb0($t6)
/* 14BBC8 801A5B58 15C0FFEE */  bnez  $t6, .L801A5B14_ovl7
/* 14BBCC 801A5B5C 00000000 */   nop   
/* 14BBD0 801A5B60 10000086 */  b     .L801A5D7C_ovl7
/* 14BBD4 801A5B64 00000000 */   nop   
.L801A5B68_ovl7:
/* 14BBD8 801A5B68 3C01800E */  lui   $at, 0x800e
/* 14BBDC 801A5B6C 00280821 */  addu  $at, $at, $t0
/* 14BBE0 801A5B70 C4243210 */  lwc1  $f4, 0x3210($at)
/* 14BBE4 801A5B74 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 14BBE8 801A5B78 C426C9E4 */  lwc1  $f6, %lo(D_800EC9E4)($at)
/* 14BBEC 801A5B7C 44807000 */  mtc1  $zero, $f14
/* 14BBF0 801A5B80 3C01800E */  lui   $at, 0x800e
/* 14BBF4 801A5B84 46062000 */  add.s $f0, $f4, $f6
/* 14BBF8 801A5B88 00280821 */  addu  $at, $at, $t0
/* 14BBFC 801A5B8C 0228C821 */  addu  $t9, $s1, $t0
/* 14BC00 801A5B90 460E003C */  c.lt.s $f0, $f14
/* 14BC04 801A5B94 00000000 */  nop   
/* 14BC08 801A5B98 45020004 */  bc1fl .L801A5BAC_ovl7
/* 14BC0C 801A5B9C 46000306 */   mov.s $f12, $f0
/* 14BC10 801A5BA0 10000002 */  b     .L801A5BAC_ovl7
/* 14BC14 801A5BA4 46000307 */   neg.s $f12, $f0
/* 14BC18 801A5BA8 46000306 */  mov.s $f12, $f0
.L801A5BAC_ovl7:
/* 14BC1C 801A5BAC C4203750 */  lwc1  $f0, 0x3750($at)
/* 14BC20 801A5BB0 460E003C */  c.lt.s $f0, $f14
/* 14BC24 801A5BB4 00000000 */  nop   
/* 14BC28 801A5BB8 45020004 */  bc1fl .L801A5BCC_ovl7
/* 14BC2C 801A5BBC 46000086 */   mov.s $f2, $f0
/* 14BC30 801A5BC0 10000002 */  b     .L801A5BCC_ovl7
/* 14BC34 801A5BC4 46000087 */   neg.s $f2, $f0
/* 14BC38 801A5BC8 46000086 */  mov.s $f2, $f0
.L801A5BCC_ovl7:
/* 14BC3C 801A5BCC 460C103C */  c.lt.s $f2, $f12
/* 14BC40 801A5BD0 00000000 */  nop   
/* 14BC44 801A5BD4 45000029 */  bc1f  .L801A5C7C_ovl7
/* 14BC48 801A5BD8 00000000 */   nop   
/* 14BC4C 801A5BDC 8F380000 */  lw    $t8, ($t9)
/* 14BC50 801A5BE0 17000026 */  bnez  $t8, .L801A5C7C_ovl7
/* 14BC54 801A5BE4 00000000 */   nop   
.L801A5BE8_ovl7:
/* 14BC58 801A5BE8 0C002DAF */  jal   finish_current_thread
/* 14BC5C 801A5BEC 24040001 */   li    $a0, 1
/* 14BC60 801A5BF0 8E0F0000 */  lw    $t7, ($s0)
/* 14BC64 801A5BF4 3C01800E */  lui   $at, 0x800e
/* 14BC68 801A5BF8 44807000 */  mtc1  $zero, $f14
/* 14BC6C 801A5BFC 8DE80000 */  lw    $t0, ($t7)
/* 14BC70 801A5C00 00084080 */  sll   $t0, $t0, 2
/* 14BC74 801A5C04 00280821 */  addu  $at, $at, $t0
/* 14BC78 801A5C08 C4283210 */  lwc1  $f8, 0x3210($at)
/* 14BC7C 801A5C0C 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 14BC80 801A5C10 C42AC9E4 */  lwc1  $f10, %lo(D_800EC9E4)($at)
/* 14BC84 801A5C14 3C01800E */  lui   $at, 0x800e
/* 14BC88 801A5C18 00280821 */  addu  $at, $at, $t0
/* 14BC8C 801A5C1C 460A4000 */  add.s $f0, $f8, $f10
/* 14BC90 801A5C20 02285021 */  addu  $t2, $s1, $t0
/* 14BC94 801A5C24 460E003C */  c.lt.s $f0, $f14
/* 14BC98 801A5C28 00000000 */  nop   
/* 14BC9C 801A5C2C 45020004 */  bc1fl .L801A5C40_ovl7
/* 14BCA0 801A5C30 46000306 */   mov.s $f12, $f0
/* 14BCA4 801A5C34 10000002 */  b     .L801A5C40_ovl7
/* 14BCA8 801A5C38 46000307 */   neg.s $f12, $f0
/* 14BCAC 801A5C3C 46000306 */  mov.s $f12, $f0
.L801A5C40_ovl7:
/* 14BCB0 801A5C40 C4203750 */  lwc1  $f0, 0x3750($at)
/* 14BCB4 801A5C44 460E003C */  c.lt.s $f0, $f14
/* 14BCB8 801A5C48 00000000 */  nop   
/* 14BCBC 801A5C4C 45020004 */  bc1fl .L801A5C60_ovl7
/* 14BCC0 801A5C50 46000086 */   mov.s $f2, $f0
/* 14BCC4 801A5C54 10000002 */  b     .L801A5C60_ovl7
/* 14BCC8 801A5C58 46000087 */   neg.s $f2, $f0
/* 14BCCC 801A5C5C 46000086 */  mov.s $f2, $f0
.L801A5C60_ovl7:
/* 14BCD0 801A5C60 460C103C */  c.lt.s $f2, $f12
/* 14BCD4 801A5C64 00000000 */  nop   
/* 14BCD8 801A5C68 45000004 */  bc1f  .L801A5C7C_ovl7
/* 14BCDC 801A5C6C 00000000 */   nop   
/* 14BCE0 801A5C70 8D4B0000 */  lw    $t3, ($t2)
/* 14BCE4 801A5C74 1160FFDC */  beqz  $t3, .L801A5BE8_ovl7
/* 14BCE8 801A5C78 00000000 */   nop   
.L801A5C7C_ovl7:
/* 14BCEC 801A5C7C 0C02CD48 */  jal   func_800B3520
/* 14BCF0 801A5C80 00000000 */   nop   
/* 14BCF4 801A5C84 8E030000 */  lw    $v1, ($s0)
/* 14BCF8 801A5C88 3C01800F */  lui   $at, 0x800f
/* 14BCFC 801A5C8C 240C0001 */  li    $t4, 1
/* 14BD00 801A5C90 8C6D0000 */  lw    $t5, ($v1)
/* 14BD04 801A5C94 3C18800F */  lui   $t8, 0x800f
/* 14BD08 801A5C98 000D7080 */  sll   $t6, $t5, 2
/* 14BD0C 801A5C9C 002E0821 */  addu  $at, $at, $t6
/* 14BD10 801A5CA0 AC2C9FE0 */  sw    $t4, -0x6020($at)
/* 14BD14 801A5CA4 8C680000 */  lw    $t0, ($v1)
/* 14BD18 801A5CA8 00084080 */  sll   $t0, $t0, 2
/* 14BD1C 801A5CAC 0228C821 */  addu  $t9, $s1, $t0
/* 14BD20 801A5CB0 8F220000 */  lw    $v0, ($t9)
/* 14BD24 801A5CB4 0308C021 */  addu  $t8, $t8, $t0
/* 14BD28 801A5CB8 14400030 */  bnez  $v0, .L801A5D7C_ovl7
/* 14BD2C 801A5CBC 00000000 */   nop   
/* 14BD30 801A5CC0 8F18C4A0 */  lw    $t8, -0x3b60($t8)
/* 14BD34 801A5CC4 02487821 */  addu  $t7, $s2, $t0
/* 14BD38 801A5CC8 5700001F */  bnezl $t8, .L801A5D48_ovl7
/* 14BD3C 801A5CCC 02486821 */   addu  $t5, $s2, $t0
/* 14BD40 801A5CD0 8DEA0000 */  lw    $t2, ($t7)
/* 14BD44 801A5CD4 5140001C */  beql  $t2, $zero, .L801A5D48_ovl7
/* 14BD48 801A5CD8 02486821 */   addu  $t5, $s2, $t0
/* 14BD4C 801A5CDC 5440001A */  bnezl $v0, .L801A5D48_ovl7
/* 14BD50 801A5CE0 02486821 */   addu  $t5, $s2, $t0
.L801A5CE4_ovl7:
/* 14BD54 801A5CE4 0C002DAF */  jal   finish_current_thread
/* 14BD58 801A5CE8 24040001 */   li    $a0, 1
/* 14BD5C 801A5CEC 8E030000 */  lw    $v1, ($s0)
/* 14BD60 801A5CF0 3C19800F */  lui   $t9, 0x800f
/* 14BD64 801A5CF4 8C6B0000 */  lw    $t3, ($v1)
/* 14BD68 801A5CF8 000B6880 */  sll   $t5, $t3, 2
/* 14BD6C 801A5CFC 024D1021 */  addu  $v0, $s2, $t5
/* 14BD70 801A5D00 8C4C0000 */  lw    $t4, ($v0)
/* 14BD74 801A5D04 258EFFFF */  addiu $t6, $t4, -1
/* 14BD78 801A5D08 AC4E0000 */  sw    $t6, ($v0)
/* 14BD7C 801A5D0C 8C680000 */  lw    $t0, ($v1)
/* 14BD80 801A5D10 00084080 */  sll   $t0, $t0, 2
/* 14BD84 801A5D14 0328C821 */  addu  $t9, $t9, $t0
/* 14BD88 801A5D18 8F39C4A0 */  lw    $t9, -0x3b60($t9)
/* 14BD8C 801A5D1C 0248C021 */  addu  $t8, $s2, $t0
/* 14BD90 801A5D20 02285021 */  addu  $t2, $s1, $t0
/* 14BD94 801A5D24 57200008 */  bnezl $t9, .L801A5D48_ovl7
/* 14BD98 801A5D28 02486821 */   addu  $t5, $s2, $t0
/* 14BD9C 801A5D2C 8F0F0000 */  lw    $t7, ($t8)
/* 14BDA0 801A5D30 51E00005 */  beql  $t7, $zero, .L801A5D48_ovl7
/* 14BDA4 801A5D34 02486821 */   addu  $t5, $s2, $t0
/* 14BDA8 801A5D38 8D4B0000 */  lw    $t3, ($t2)
/* 14BDAC 801A5D3C 1160FFE9 */  beqz  $t3, .L801A5CE4_ovl7
/* 14BDB0 801A5D40 00000000 */   nop   
/* 14BDB4 801A5D44 02486821 */  addu  $t5, $s2, $t0
.L801A5D48_ovl7:
/* 14BDB8 801A5D48 8DAC0000 */  lw    $t4, ($t5)
/* 14BDBC 801A5D4C 02287021 */  addu  $t6, $s1, $t0
/* 14BDC0 801A5D50 1180000A */  beqz  $t4, .L801A5D7C_ovl7
/* 14BDC4 801A5D54 00000000 */   nop   
/* 14BDC8 801A5D58 8DD90000 */  lw    $t9, ($t6)
/* 14BDCC 801A5D5C 17200007 */  bnez  $t9, .L801A5D7C_ovl7
/* 14BDD0 801A5D60 00000000 */   nop   
/* 14BDD4 801A5D64 0C06937F */  jal   func_801A4DFC_ovl7
/* 14BDD8 801A5D68 8FA40030 */   lw    $a0, 0x30($sp)
/* 14BDDC 801A5D6C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14BDE0 801A5D70 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14BDE4 801A5D74 8C680000 */  lw    $t0, ($v1)
/* 14BDE8 801A5D78 00084080 */  sll   $t0, $t0, 2
.L801A5D7C_ovl7:
/* 14BDEC 801A5D7C 3C01800F */  lui   $at, 0x800f
/* 14BDF0 801A5D80 00280821 */  addu  $at, $at, $t0
/* 14BDF4 801A5D84 24180001 */  li    $t8, 1
/* 14BDF8 801A5D88 AC38C2E0 */  sw    $t8, -0x3d20($at)
/* 14BDFC 801A5D8C 8C680000 */  lw    $t0, ($v1)
/* 14BE00 801A5D90 3C01800E */  lui   $at, 0x800e
/* 14BE04 801A5D94 3C07800E */  lui   $a3, 0x800e
/* 14BE08 801A5D98 00084080 */  sll   $t0, $t0, 2
/* 14BE0C 801A5D9C 00280821 */  addu  $at, $at, $t0
/* 14BE10 801A5DA0 C4302790 */  lwc1  $f16, 0x2790($at)
/* 14BE14 801A5DA4 3C01800E */  lui   $at, 0x800e
/* 14BE18 801A5DA8 00280821 */  addu  $at, $at, $t0
/* 14BE1C 801A5DAC C4322950 */  lwc1  $f18, 0x2950($at)
/* 14BE20 801A5DB0 00E83821 */  addu  $a3, $a3, $t0
/* 14BE24 801A5DB4 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 14BE28 801A5DB8 24040003 */  li    $a0, 3
/* 14BE2C 801A5DBC 24050002 */  li    $a1, 2
/* 14BE30 801A5DC0 2406006F */  li    $a2, 111
/* 14BE34 801A5DC4 E7B00010 */  swc1  $f16, 0x10($sp)
/* 14BE38 801A5DC8 0C029FDD */  jal   func_800A7F74
/* 14BE3C 801A5DCC E7B20014 */   swc1  $f18, 0x14($sp)
/* 14BE40 801A5DD0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 14BE44 801A5DD4 8FB00020 */  lw    $s0, 0x20($sp)
/* 14BE48 801A5DD8 8FB10024 */  lw    $s1, 0x24($sp)
/* 14BE4C 801A5DDC 8FB20028 */  lw    $s2, 0x28($sp)
/* 14BE50 801A5DE0 03E00008 */  jr    $ra
/* 14BE54 801A5DE4 27BD0030 */   addiu $sp, $sp, 0x30

.type func_801A57A8_ovl7, @function
.size func_801A57A8_ovl7, . - func_801A57A8_ovl7

glabel func_801A5DE8_ovl7
/* 14BE58 801A5DE8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 14BE5C 801A5DEC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14BE60 801A5DF0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14BE64 801A5DF4 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 14BE68 801A5DF8 C420C9E4 */  lwc1  $f0, %lo(D_800EC9E4)($at)
/* 14BE6C 801A5DFC 44802000 */  mtc1  $zero, $f4
/* 14BE70 801A5E00 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14BE74 801A5E04 AFB00018 */  sw    $s0, 0x18($sp)
/* 14BE78 801A5E08 AFA40058 */  sw    $a0, 0x58($sp)
/* 14BE7C 801A5E0C 8C650000 */  lw    $a1, ($v1)
/* 14BE80 801A5E10 46002032 */  c.eq.s $f4, $f0
/* 14BE84 801A5E14 3C06800E */  lui   $a2, 0x800e
/* 14BE88 801A5E18 00051080 */  sll   $v0, $a1, 2
/* 14BE8C 801A5E1C 00C23021 */  addu  $a2, $a2, $v0
/* 14BE90 801A5E20 45010007 */  bc1t  .L801A5E40_ovl7
/* 14BE94 801A5E24 8CC61B50 */   lw    $a2, 0x1b50($a2)
/* 14BE98 801A5E28 46000187 */  neg.s $f6, $f0
/* 14BE9C 801A5E2C 3C01800E */  lui   $at, 0x800e
/* 14BEA0 801A5E30 00220821 */  addu  $at, $at, $v0
/* 14BEA4 801A5E34 E4263210 */  swc1  $f6, 0x3210($at)
/* 14BEA8 801A5E38 8C650000 */  lw    $a1, ($v1)
/* 14BEAC 801A5E3C 00051080 */  sll   $v0, $a1, 2
.L801A5E40_ovl7:
/* 14BEB0 801A5E40 3C0E800F */  lui   $t6, 0x800f
/* 14BEB4 801A5E44 01C27021 */  addu  $t6, $t6, $v0
/* 14BEB8 801A5E48 8DCE8E60 */  lw    $t6, -0x71a0($t6)
/* 14BEBC 801A5E4C 24100001 */  li    $s0, 1
/* 14BEC0 801A5E50 3C0F800F */  lui   $t7, 0x800f
/* 14BEC4 801A5E54 120E0028 */  beq   $s0, $t6, .L801A5EF8_ovl7
/* 14BEC8 801A5E58 01E27821 */   addu  $t7, $t7, $v0
/* 14BECC 801A5E5C 8DEF9FE0 */  lw    $t7, -0x6020($t7)
/* 14BED0 801A5E60 3C18800F */  lui   $t8, 0x800f
/* 14BED4 801A5E64 0302C021 */  addu  $t8, $t8, $v0
/* 14BED8 801A5E68 11E00023 */  beqz  $t7, .L801A5EF8_ovl7
/* 14BEDC 801A5E6C 00000000 */   nop   
/* 14BEE0 801A5E70 8F18A520 */  lw    $t8, -0x5ae0($t8)
/* 14BEE4 801A5E74 00A02025 */  move  $a0, $a1
/* 14BEE8 801A5E78 1618001F */  bne   $s0, $t8, .L801A5EF8_ovl7
/* 14BEEC 801A5E7C 00000000 */   nop   
/* 14BEF0 801A5E80 0C044554 */  jal   func_80111550
/* 14BEF4 801A5E84 AFA60054 */   sw    $a2, 0x54($sp)
/* 14BEF8 801A5E88 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 14BEFC 801A5E8C 8FA60054 */  lw    $a2, 0x54($sp)
/* 14BF00 801A5E90 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 14BF04 801A5E94 8CC4008C */  lw    $a0, 0x8c($a2)
/* 14BF08 801A5E98 0C044722 */  jal   func_80111C88
/* 14BF0C 801A5E9C 8F250000 */   lw    $a1, ($t9)
/* 14BF10 801A5EA0 0C0447B3 */  jal   func_80111ECC
/* 14BF14 801A5EA4 00402025 */   move  $a0, $v0
/* 14BF18 801A5EA8 0C0442C0 */  jal   func_80110B00
/* 14BF1C 801A5EAC 27A40034 */   addiu $a0, $sp, 0x34
/* 14BF20 801A5EB0 54400008 */  bnezl $v0, .L801A5ED4_ovl7
/* 14BF24 801A5EB4 93A80036 */   lbu   $t0, 0x36($sp)
/* 14BF28 801A5EB8 0C0443F5 */  jal   func_80110FD4
/* 14BF2C 801A5EBC 27A40034 */   addiu $a0, $sp, 0x34
/* 14BF30 801A5EC0 54400004 */  bnezl $v0, .L801A5ED4_ovl7
/* 14BF34 801A5EC4 93A80036 */   lbu   $t0, 0x36($sp)
/* 14BF38 801A5EC8 0C044054 */  jal   func_80110150
/* 14BF3C 801A5ECC 27A40034 */   addiu $a0, $sp, 0x34
/* 14BF40 801A5ED0 93A80036 */  lbu   $t0, 0x36($sp)
.L801A5ED4_ovl7:
/* 14BF44 801A5ED4 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 14BF48 801A5ED8 11000007 */  beqz  $t0, .L801A5EF8_ovl7
/* 14BF4C 801A5EDC 00000000 */   nop   
/* 14BF50 801A5EE0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 14BF54 801A5EE4 3C01800F */  lui   $at, 0x800f
/* 14BF58 801A5EE8 8D2A0000 */  lw    $t2, ($t1)
/* 14BF5C 801A5EEC 000A5880 */  sll   $t3, $t2, 2
/* 14BF60 801A5EF0 002B0821 */  addu  $at, $at, $t3
/* 14BF64 801A5EF4 AC30C4A0 */  sw    $s0, -0x3b60($at)
.L801A5EF8_ovl7:
/* 14BF68 801A5EF8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14BF6C 801A5EFC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14BF70 801A5F00 3C0E800F */  lui   $t6, 0x800f
/* 14BF74 801A5F04 8C6C0000 */  lw    $t4, ($v1)
/* 14BF78 801A5F08 000C6880 */  sll   $t5, $t4, 2
/* 14BF7C 801A5F0C 01CD7021 */  addu  $t6, $t6, $t5
/* 14BF80 801A5F10 8DCE8E60 */  lw    $t6, -0x71a0($t6)
/* 14BF84 801A5F14 120E000E */  beq   $s0, $t6, .L801A5F50_ovl7
/* 14BF88 801A5F18 00000000 */   nop   
/* 14BF8C 801A5F1C 0C06835D */  jal   func_801A0D74_ovl7
/* 14BF90 801A5F20 8FA40058 */   lw    $a0, 0x58($sp)
/* 14BF94 801A5F24 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14BF98 801A5F28 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14BF9C 801A5F2C 3C0F8013 */  lui   $t7, %hi(D_8012BCA0) # $t7, 0x8013
/* 14BFA0 801A5F30 8DEFBCA0 */  lw    $t7, %lo(D_8012BCA0)($t7)
/* 14BFA4 801A5F34 8C680000 */  lw    $t0, ($v1)
/* 14BFA8 801A5F38 3C01800F */  lui   $at, 0x800f
/* 14BFAC 801A5F3C 000FC4C2 */  srl   $t8, $t7, 0x13
/* 14BFB0 801A5F40 00084880 */  sll   $t1, $t0, 2
/* 14BFB4 801A5F44 00290821 */  addu  $at, $at, $t1
/* 14BFB8 801A5F48 331901FF */  andi  $t9, $t8, 0x1ff
/* 14BFBC 801A5F4C AC399E20 */  sw    $t9, -0x61e0($at)
.L801A5F50_ovl7:
/* 14BFC0 801A5F50 3C0A8013 */  lui   $t2, %hi(D_8012E860) # $t2, 0x8013
/* 14BFC4 801A5F54 8D4AE860 */  lw    $t2, %lo(D_8012E860)($t2)
/* 14BFC8 801A5F58 3C0D800D */  lui   $t5, %hi(D_800D7154) # $t5, 0x800d
/* 14BFCC 801A5F5C 15400006 */  bnez  $t2, .L801A5F78_ovl7
/* 14BFD0 801A5F60 00000000 */   nop   
/* 14BFD4 801A5F64 8C6B0000 */  lw    $t3, ($v1)
/* 14BFD8 801A5F68 3C01800F */  lui   $at, 0x800f
/* 14BFDC 801A5F6C 000B6080 */  sll   $t4, $t3, 2
/* 14BFE0 801A5F70 002C0821 */  addu  $at, $at, $t4
/* 14BFE4 801A5F74 AC30A520 */  sw    $s0, -0x5ae0($at)
.L801A5F78_ovl7:
/* 14BFE8 801A5F78 8DAD7154 */  lw    $t5, %lo(D_800D7154)($t5)
/* 14BFEC 801A5F7C 55A00019 */  bnezl $t5, .L801A5FE4_ovl7
/* 14BFF0 801A5F80 8FBF001C */   lw    $ra, 0x1c($sp)
/* 14BFF4 801A5F84 8C6E0000 */  lw    $t6, ($v1)
/* 14BFF8 801A5F88 3C01800F */  lui   $at, 0x800f
/* 14BFFC 801A5F8C 000E7880 */  sll   $t7, $t6, 2
/* 14C000 801A5F90 002F0821 */  addu  $at, $at, $t7
/* 14C004 801A5F94 0C02CD48 */  jal   func_800B3520
/* 14C008 801A5F98 AC30C2E0 */   sw    $s0, -0x3d20($at)
/* 14C00C 801A5F9C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14C010 801A5FA0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14C014 801A5FA4 3C01800F */  lui   $at, 0x800f
/* 14C018 801A5FA8 8C780000 */  lw    $t8, ($v1)
/* 14C01C 801A5FAC 00184080 */  sll   $t0, $t8, 2
/* 14C020 801A5FB0 00280821 */  addu  $at, $at, $t0
/* 14C024 801A5FB4 AC309E20 */  sw    $s0, -0x61e0($at)
/* 14C028 801A5FB8 8C790000 */  lw    $t9, ($v1)
/* 14C02C 801A5FBC 3C01800F */  lui   $at, 0x800f
/* 14C030 801A5FC0 00194880 */  sll   $t1, $t9, 2
/* 14C034 801A5FC4 00290821 */  addu  $at, $at, $t1
/* 14C038 801A5FC8 AC30C4A0 */  sw    $s0, -0x3b60($at)
/* 14C03C 801A5FCC 8C6A0000 */  lw    $t2, ($v1)
/* 14C040 801A5FD0 3C01800F */  lui   $at, 0x800f
/* 14C044 801A5FD4 000A5880 */  sll   $t3, $t2, 2
/* 14C048 801A5FD8 002B0821 */  addu  $at, $at, $t3
/* 14C04C 801A5FDC AC309720 */  sw    $s0, -0x68e0($at)
/* 14C050 801A5FE0 8FBF001C */  lw    $ra, 0x1c($sp)
.L801A5FE4_ovl7:
/* 14C054 801A5FE4 8FB00018 */  lw    $s0, 0x18($sp)
/* 14C058 801A5FE8 27BD0058 */  addiu $sp, $sp, 0x58
/* 14C05C 801A5FEC 03E00008 */  jr    $ra
/* 14C060 801A5FF0 00000000 */   nop   

.type func_801A5DE8_ovl7, @function
.size func_801A5DE8_ovl7, . - func_801A5DE8_ovl7

glabel func_801A5FF4_ovl7
/* 14C064 801A5FF4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14C068 801A5FF8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14C06C 801A5FFC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 14C070 801A6000 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14C074 801A6004 AFA40028 */  sw    $a0, 0x28($sp)
/* 14C078 801A6008 8C620000 */  lw    $v0, ($v1)
/* 14C07C 801A600C 3C05800D */  lui   $a1, %hi(D_800D7118) # $a1, 0x800d
/* 14C080 801A6010 24A57118 */  addiu $a1, %lo(D_800D7118) # addiu $a1, $a1, 0x7118
/* 14C084 801A6014 3C09800E */  lui   $t1, 0x800e
/* 14C088 801A6018 00021080 */  sll   $v0, $v0, 2
/* 14C08C 801A601C 8CAE0000 */  lw    $t6, ($a1)
/* 14C090 801A6020 01224821 */  addu  $t1, $t1, $v0
/* 14C094 801A6024 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 14C098 801A6028 AFAE0020 */  sw    $t6, 0x20($sp)
/* 14C09C 801A602C 44807000 */  mtc1  $zero, $f14
/* 14C0A0 801A6030 8D2F0088 */  lw    $t7, 0x88($t1)
/* 14C0A4 801A6034 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 14C0A8 801A6038 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 14C0AC 801A603C 3C01801D */  lui   $at, %hi(D_801CDFD0) # $at, 0x801d
/* 14C0B0 801A6040 C42CDFD0 */  lwc1  $f12, %lo(D_801CDFD0)($at)
/* 14C0B4 801A6044 00C2C021 */  addu  $t8, $a2, $v0
/* 14C0B8 801A6048 AFAF001C */  sw    $t7, 0x1c($sp)
/* 14C0BC 801A604C E70E0000 */  swc1  $f14, ($t8)
/* 14C0C0 801A6050 8C620000 */  lw    $v0, ($v1)
/* 14C0C4 801A6054 3C01800E */  lui   $at, 0x800e
/* 14C0C8 801A6058 3C07800E */  lui   $a3, %hi(D_800E3910) # $a3, 0x800e
/* 14C0CC 801A605C 00021080 */  sll   $v0, $v0, 2
/* 14C0D0 801A6060 00C2C821 */  addu  $t9, $a2, $v0
/* 14C0D4 801A6064 C7240000 */  lwc1  $f4, ($t9)
/* 14C0D8 801A6068 00220821 */  addu  $at, $at, $v0
/* 14C0DC 801A606C 24E73910 */  addiu $a3, %lo(D_800E3910) # addiu $a3, $a3, 0x3910
/* 14C0E0 801A6070 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14C0E4 801A6074 8C6A0000 */  lw    $t2, ($v1)
/* 14C0E8 801A6078 3C01800E */  lui   $at, 0x800e
/* 14C0EC 801A607C 3C08800E */  lui   $t0, %hi(D_800E3E50) # $t0, 0x800e
/* 14C0F0 801A6080 000A5880 */  sll   $t3, $t2, 2
/* 14C0F4 801A6084 002B0821 */  addu  $at, $at, $t3
/* 14C0F8 801A6088 E42C6850 */  swc1  $f12, 0x6850($at)
/* 14C0FC 801A608C 8C6C0000 */  lw    $t4, ($v1)
/* 14C100 801A6090 3C01800E */  lui   $at, 0x800e
/* 14C104 801A6094 25083E50 */  addiu $t0, %lo(D_800E3E50) # addiu $t0, $t0, 0x3e50
/* 14C108 801A6098 000C6880 */  sll   $t5, $t4, 2
/* 14C10C 801A609C 00ED7021 */  addu  $t6, $a3, $t5
/* 14C110 801A60A0 E5CE0000 */  swc1  $f14, ($t6)
/* 14C114 801A60A4 8C620000 */  lw    $v0, ($v1)
/* 14C118 801A60A8 00021080 */  sll   $v0, $v0, 2
/* 14C11C 801A60AC 00E27821 */  addu  $t7, $a3, $v0
/* 14C120 801A60B0 C5E00000 */  lwc1  $f0, ($t7)
/* 14C124 801A60B4 00220821 */  addu  $at, $at, $v0
/* 14C128 801A60B8 E4203750 */  swc1  $f0, 0x3750($at)
/* 14C12C 801A60BC 8C780000 */  lw    $t8, ($v1)
/* 14C130 801A60C0 3C01800E */  lui   $at, 0x800e
/* 14C134 801A60C4 0018C880 */  sll   $t9, $t8, 2
/* 14C138 801A60C8 00390821 */  addu  $at, $at, $t9
/* 14C13C 801A60CC E4203590 */  swc1  $f0, 0x3590($at)
/* 14C140 801A60D0 8C6A0000 */  lw    $t2, ($v1)
/* 14C144 801A60D4 3C01800E */  lui   $at, 0x800e
/* 14C148 801A60D8 000A5880 */  sll   $t3, $t2, 2
/* 14C14C 801A60DC 002B0821 */  addu  $at, $at, $t3
/* 14C150 801A60E0 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14C154 801A60E4 8C6C0000 */  lw    $t4, ($v1)
/* 14C158 801A60E8 3C01800E */  lui   $at, 0x800e
/* 14C15C 801A60EC 000C6880 */  sll   $t5, $t4, 2
/* 14C160 801A60F0 002D0821 */  addu  $at, $at, $t5
/* 14C164 801A60F4 E4203210 */  swc1  $f0, 0x3210($at)
/* 14C168 801A60F8 8C6E0000 */  lw    $t6, ($v1)
/* 14C16C 801A60FC 3C01800E */  lui   $at, 0x800e
/* 14C170 801A6100 000E7880 */  sll   $t7, $t6, 2
/* 14C174 801A6104 002F0821 */  addu  $at, $at, $t7
/* 14C178 801A6108 E4203050 */  swc1  $f0, 0x3050($at)
/* 14C17C 801A610C 8C780000 */  lw    $t8, ($v1)
/* 14C180 801A6110 3C01800E */  lui   $at, 0x800e
/* 14C184 801A6114 0018C880 */  sll   $t9, $t8, 2
/* 14C188 801A6118 01195021 */  addu  $t2, $t0, $t9
/* 14C18C 801A611C E54C0000 */  swc1  $f12, ($t2)
/* 14C190 801A6120 8C620000 */  lw    $v0, ($v1)
/* 14C194 801A6124 00021080 */  sll   $v0, $v0, 2
/* 14C198 801A6128 01025821 */  addu  $t3, $t0, $v0
/* 14C19C 801A612C C5620000 */  lwc1  $f2, ($t3)
/* 14C1A0 801A6130 00220821 */  addu  $at, $at, $v0
/* 14C1A4 801A6134 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14C1A8 801A6138 8C6C0000 */  lw    $t4, ($v1)
/* 14C1AC 801A613C 3C01800E */  lui   $at, 0x800e
/* 14C1B0 801A6140 AFA90024 */  sw    $t1, 0x24($sp)
/* 14C1B4 801A6144 000C6880 */  sll   $t5, $t4, 2
/* 14C1B8 801A6148 002D0821 */  addu  $at, $at, $t5
/* 14C1BC 801A614C 0C02BD02 */  jal   func_800AF408
/* 14C1C0 801A6150 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 14C1C4 801A6154 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C1C8 801A6158 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C1CC 801A615C 3C01800F */  lui   $at, 0x800f
/* 14C1D0 801A6160 240400C4 */  li    $a0, 196
/* 14C1D4 801A6164 8DCF0000 */  lw    $t7, ($t6)
/* 14C1D8 801A6168 000FC080 */  sll   $t8, $t7, 2
/* 14C1DC 801A616C 00380821 */  addu  $at, $at, $t8
/* 14C1E0 801A6170 0C029D9E */  jal   play_sound
/* 14C1E4 801A6174 AC2098E0 */   sw    $zero, -0x6720($at)
/* 14C1E8 801A6178 3C05800D */  lui   $a1, %hi(D_800D7118) # $a1, 0x800d
/* 14C1EC 801A617C 24A57118 */  addiu $a1, %lo(D_800D7118) # addiu $a1, $a1, 0x7118
/* 14C1F0 801A6180 8CA20000 */  lw    $v0, ($a1)
/* 14C1F4 801A6184 24060001 */  li    $a2, 1
/* 14C1F8 801A6188 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 14C1FC 801A618C 54C2000C */  bnel  $a2, $v0, .L801A61C0_ovl7
/* 14C200 801A6190 2401FFFF */   li    $at, -1
/* 14C204 801A6194 8CA30038 */  lw    $v1, 0x38($a1)
/* 14C208 801A6198 24630001 */  addiu $v1, $v1, 1
/* 14C20C 801A619C 28610006 */  slti  $at, $v1, 6
/* 14C210 801A61A0 54200005 */  bnezl $at, .L801A61B8_ovl7
/* 14C214 801A61A4 ACA30038 */   sw    $v1, 0x38($a1)
/* 14C218 801A61A8 ACA60038 */  sw    $a2, 0x38($a1)
/* 14C21C 801A61AC 10000003 */  b     .L801A61BC_ovl7
/* 14C220 801A61B0 8CA20000 */   lw    $v0, ($a1)
/* 14C224 801A61B4 ACA30038 */  sw    $v1, 0x38($a1)
.L801A61B8_ovl7:
/* 14C228 801A61B8 8CA20000 */  lw    $v0, ($a1)
.L801A61BC_ovl7:
/* 14C22C 801A61BC 2401FFFF */  li    $at, -1
.L801A61C0_ovl7:
/* 14C230 801A61C0 1441000A */  bne   $v0, $at, .L801A61EC_ovl7
/* 14C234 801A61C4 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14C238 801A61C8 ACA60000 */  sw    $a2, ($a1)
/* 14C23C 801A61CC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 14C240 801A61D0 AFA60020 */  sw    $a2, 0x20($sp)
/* 14C244 801A61D4 3C01800F */  lui   $at, 0x800f
/* 14C248 801A61D8 8D4B0000 */  lw    $t3, ($t2)
/* 14C24C 801A61DC 000B6080 */  sll   $t4, $t3, 2
/* 14C250 801A61E0 002C0821 */  addu  $at, $at, $t4
/* 14C254 801A61E4 AC2698E0 */  sw    $a2, -0x6720($at)
/* 14C258 801A61E8 ACA60038 */  sw    $a2, 0x38($a1)
.L801A61EC_ovl7:
/* 14C25C 801A61EC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14C260 801A61F0 8FAD0020 */  lw    $t5, 0x20($sp)
/* 14C264 801A61F4 3C19800E */  lui   $t9, 0x800e
/* 14C268 801A61F8 8C6F0000 */  lw    $t7, ($v1)
/* 14C26C 801A61FC 8FAA001C */  lw    $t2, 0x1c($sp)
/* 14C270 801A6200 000D7080 */  sll   $t6, $t5, 2
/* 14C274 801A6204 000FC040 */  sll   $t8, $t7, 1
/* 14C278 801A6208 0338C821 */  addu  $t9, $t9, $t8
/* 14C27C 801A620C 973977A0 */  lhu   $t9, 0x77a0($t9)
/* 14C280 801A6210 00AE1021 */  addu  $v0, $a1, $t6
/* 14C284 801A6214 AC4A0014 */  sw    $t2, 0x14($v0)
/* 14C288 801A6218 AC590000 */  sw    $t9, ($v0)
/* 14C28C 801A621C 8CA40000 */  lw    $a0, ($a1)
/* 14C290 801A6220 3C0B800B */  lui   $t3, %hi(D_800B7790) # $t3, 0x800b
/* 14C294 801A6224 24840001 */  addiu $a0, $a0, 1
/* 14C298 801A6228 28810006 */  slti  $at, $a0, 6
/* 14C29C 801A622C 54200004 */  bnezl $at, .L801A6240_ovl7
/* 14C2A0 801A6230 ACA40000 */   sw    $a0, ($a1)
/* 14C2A4 801A6234 10000002 */  b     .L801A6240_ovl7
/* 14C2A8 801A6238 ACA60000 */   sw    $a2, ($a1)
/* 14C2AC 801A623C ACA40000 */  sw    $a0, ($a1)
.L801A6240_ovl7:
/* 14C2B0 801A6240 8C6C0000 */  lw    $t4, ($v1)
/* 14C2B4 801A6244 3C01800E */  lui   $at, 0x800e
/* 14C2B8 801A6248 256B7790 */  addiu $t3, %lo(D_800B7790) # addiu $t3, $t3, 0x7790
/* 14C2BC 801A624C 000C6880 */  sll   $t5, $t4, 2
/* 14C2C0 801A6250 002D0821 */  addu  $at, $at, $t5
/* 14C2C4 801A6254 AC2BEF90 */  sw    $t3, -0x1070($at)
/* 14C2C8 801A6258 8C6E0000 */  lw    $t6, ($v1)
/* 14C2CC 801A625C 3C01800F */  lui   $at, 0x800f
/* 14C2D0 801A6260 000E7880 */  sll   $t7, $t6, 2
/* 14C2D4 801A6264 002F0821 */  addu  $at, $at, $t7
/* 14C2D8 801A6268 0C0698C3 */  jal   func_801A630C_ovl7
/* 14C2DC 801A626C AC268E60 */   sw    $a2, -0x71a0($at)
/* 14C2E0 801A6270 0C002DAF */  jal   finish_current_thread
/* 14C2E4 801A6274 24040005 */   li    $a0, 5
/* 14C2E8 801A6278 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14C2EC 801A627C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14C2F0 801A6280 44803000 */  mtc1  $zero, $f6
/* 14C2F4 801A6284 3C04800E */  lui   $a0, %hi(D_800E33D0) # $a0, 0x800e
/* 14C2F8 801A6288 8C780000 */  lw    $t8, ($v1)
/* 14C2FC 801A628C 248433D0 */  addiu $a0, %lo(D_800E33D0) # addiu $a0, $a0, 0x33d0
/* 14C300 801A6290 3C01800E */  lui   $at, 0x800e
/* 14C304 801A6294 0018C880 */  sll   $t9, $t8, 2
/* 14C308 801A6298 00995021 */  addu  $t2, $a0, $t9
/* 14C30C 801A629C E5460000 */  swc1  $f6, ($t2)
/* 14C310 801A62A0 8C620000 */  lw    $v0, ($v1)
/* 14C314 801A62A4 3C18800F */  lui   $t8, 0x800f
/* 14C318 801A62A8 00021080 */  sll   $v0, $v0, 2
/* 14C31C 801A62AC 00826021 */  addu  $t4, $a0, $v0
/* 14C320 801A62B0 C5800000 */  lwc1  $f0, ($t4)
/* 14C324 801A62B4 00220821 */  addu  $at, $at, $v0
/* 14C328 801A62B8 E4203210 */  swc1  $f0, 0x3210($at)
/* 14C32C 801A62BC 8C6B0000 */  lw    $t3, ($v1)
/* 14C330 801A62C0 3C01800E */  lui   $at, 0x800e
/* 14C334 801A62C4 000B6880 */  sll   $t5, $t3, 2
/* 14C338 801A62C8 002D0821 */  addu  $at, $at, $t5
/* 14C33C 801A62CC E4203050 */  swc1  $f0, 0x3050($at)
/* 14C340 801A62D0 8C6E0000 */  lw    $t6, ($v1)
/* 14C344 801A62D4 000E7880 */  sll   $t7, $t6, 2
/* 14C348 801A62D8 030FC021 */  addu  $t8, $t8, $t7
/* 14C34C 801A62DC 8F1898E0 */  lw    $t8, -0x6720($t8)
/* 14C350 801A62E0 53000004 */  beql  $t8, $zero, .L801A62F4_ovl7
/* 14C354 801A62E4 8FAA0024 */   lw    $t2, 0x24($sp)
/* 14C358 801A62E8 0C0698EF */  jal   func_801A63BC_ovl7
/* 14C35C 801A62EC 8FA40028 */   lw    $a0, 0x28($sp)
/* 14C360 801A62F0 8FAA0024 */  lw    $t2, 0x24($sp)
.L801A62F4_ovl7:
/* 14C364 801A62F4 24190001 */  li    $t9, 1
/* 14C368 801A62F8 A1590040 */  sb    $t9, 0x40($t2)
/* 14C36C 801A62FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14C370 801A6300 27BD0028 */  addiu $sp, $sp, 0x28
/* 14C374 801A6304 03E00008 */  jr    $ra
/* 14C378 801A6308 00000000 */   nop   

.type func_801A5FF4_ovl7, @function
.size func_801A5FF4_ovl7, . - func_801A5FF4_ovl7

glabel func_801A630C_ovl7
/* 14C37C 801A630C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14C380 801A6310 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14C384 801A6314 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 14C388 801A6318 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 14C38C 801A631C 8C430000 */  lw    $v1, ($v0)
/* 14C390 801A6320 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 14C394 801A6324 44817000 */  mtc1  $at, $f14
/* 14C398 801A6328 00031880 */  sll   $v1, $v1, 2
/* 14C39C 801A632C 00837021 */  addu  $t6, $a0, $v1
/* 14C3A0 801A6330 C5C60000 */  lwc1  $f6, ($t6)
/* 14C3A4 801A6334 C4840000 */  lwc1  $f4, ($a0)
/* 14C3A8 801A6338 3C05800E */  lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 14C3AC 801A633C 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 14C3B0 801A6340 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 14C3B4 801A6344 44815000 */  mtc1  $at, $f10
/* 14C3B8 801A6348 C4A80000 */  lwc1  $f8, ($a1)
/* 14C3BC 801A634C 46062001 */  sub.s $f0, $f4, $f6
/* 14C3C0 801A6350 00A37821 */  addu  $t7, $a1, $v1
/* 14C3C4 801A6354 C5F20000 */  lwc1  $f18, ($t7)
/* 14C3C8 801A6358 460A4400 */  add.s $f16, $f8, $f10
/* 14C3CC 801A635C 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 14C3D0 801A6360 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 14C3D4 801A6364 460E0003 */  div.s $f0, $f0, $f14
/* 14C3D8 801A6368 00C3C021 */  addu  $t8, $a2, $v1
/* 14C3DC 801A636C C7060000 */  lwc1  $f6, ($t8)
/* 14C3E0 801A6370 C4C40000 */  lwc1  $f4, ($a2)
/* 14C3E4 801A6374 46128081 */  sub.s $f2, $f16, $f18
/* 14C3E8 801A6378 3C01800E */  lui   $at, 0x800e
/* 14C3EC 801A637C 00230821 */  addu  $at, $at, $v1
/* 14C3F0 801A6380 46062301 */  sub.s $f12, $f4, $f6
/* 14C3F4 801A6384 460E1083 */  div.s $f2, $f2, $f14
/* 14C3F8 801A6388 E4203050 */  swc1  $f0, 0x3050($at)
/* 14C3FC 801A638C 8C590000 */  lw    $t9, ($v0)
/* 14C400 801A6390 3C01800E */  lui   $at, 0x800e
/* 14C404 801A6394 00194080 */  sll   $t0, $t9, 2
/* 14C408 801A6398 00280821 */  addu  $at, $at, $t0
/* 14C40C 801A639C 460E6303 */  div.s $f12, $f12, $f14
/* 14C410 801A63A0 E4223210 */  swc1  $f2, 0x3210($at)
/* 14C414 801A63A4 8C490000 */  lw    $t1, ($v0)
/* 14C418 801A63A8 3C01800E */  lui   $at, 0x800e
/* 14C41C 801A63AC 00095080 */  sll   $t2, $t1, 2
/* 14C420 801A63B0 002A0821 */  addu  $at, $at, $t2
/* 14C424 801A63B4 03E00008 */  jr    $ra
/* 14C428 801A63B8 E42C33D0 */   swc1  $f12, 0x33d0($at)

.type func_801A630C_ovl7, @function
.size func_801A630C_ovl7, . - func_801A630C_ovl7

glabel func_801A63BC_ovl7
/* 14C42C 801A63BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14C430 801A63C0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 14C434 801A63C4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 14C438 801A63C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14C43C 801A63CC AFB00018 */  sw    $s0, 0x18($sp)
/* 14C440 801A63D0 AFA40020 */  sw    $a0, 0x20($sp)
/* 14C444 801A63D4 8CAE0000 */  lw    $t6, ($a1)
/* 14C448 801A63D8 3C01800E */  lui   $at, 0x800e
/* 14C44C 801A63DC 00002025 */  move  $a0, $zero
/* 14C450 801A63E0 000E7880 */  sll   $t7, $t6, 2
/* 14C454 801A63E4 002F0821 */  addu  $at, $at, $t7
/* 14C458 801A63E8 0C02BEED */  jal   func_800AFBB4
/* 14C45C 801A63EC AC20EF90 */   sw    $zero, -0x1070($at)
/* 14C460 801A63F0 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 14C464 801A63F4 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 14C468 801A63F8 8E1800A0 */  lw    $t8, 0xa0($s0)
/* 14C46C 801A63FC 13000006 */  beqz  $t8, .L801A6418_ovl7
/* 14C470 801A6400 00000000 */   nop   
.L801A6404_ovl7:
/* 14C474 801A6404 0C002DAF */  jal   finish_current_thread
/* 14C478 801A6408 24040001 */   li    $a0, 1
/* 14C47C 801A640C 8E1900A0 */  lw    $t9, 0xa0($s0)
/* 14C480 801A6410 1720FFFC */  bnez  $t9, .L801A6404_ovl7
/* 14C484 801A6414 00000000 */   nop   
.L801A6418_ovl7:
/* 14C488 801A6418 0C06990D */  jal   func_801A6434_ovl7
/* 14C48C 801A641C 00000000 */   nop   
/* 14C490 801A6420 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14C494 801A6424 8FB00018 */  lw    $s0, 0x18($sp)
/* 14C498 801A6428 27BD0020 */  addiu $sp, $sp, 0x20
/* 14C49C 801A642C 03E00008 */  jr    $ra
/* 14C4A0 801A6430 00000000 */   nop   

.type func_801A63BC_ovl7, @function
.size func_801A63BC_ovl7, . - func_801A63BC_ovl7

glabel func_801A6434_ovl7
/* 14C4A4 801A6434 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 14C4A8 801A6438 3C02800D */  lui   $v0, %hi(D_800D7118) # $v0, 0x800d
/* 14C4AC 801A643C 24427118 */  addiu $v0, %lo(D_800D7118) # addiu $v0, $v0, 0x7118
/* 14C4B0 801A6440 AFB3002C */  sw    $s3, 0x2c($sp)
/* 14C4B4 801A6444 8C530038 */  lw    $s3, 0x38($v0)
/* 14C4B8 801A6448 AFB00020 */  sw    $s0, 0x20($sp)
/* 14C4BC 801A644C AFB20028 */  sw    $s2, 0x28($sp)
/* 14C4C0 801A6450 00137080 */  sll   $t6, $s3, 2
/* 14C4C4 801A6454 004E8021 */  addu  $s0, $v0, $t6
/* 14C4C8 801A6458 8E0F0000 */  lw    $t7, ($s0)
/* 14C4CC 801A645C 2412FFFF */  li    $s2, -1
/* 14C4D0 801A6460 AFB10024 */  sw    $s1, 0x24($sp)
/* 14C4D4 801A6464 AFBF0044 */  sw    $ra, 0x44($sp)
/* 14C4D8 801A6468 AFBE0040 */  sw    $fp, 0x40($sp)
/* 14C4DC 801A646C AFB7003C */  sw    $s7, 0x3c($sp)
/* 14C4E0 801A6470 AFB60038 */  sw    $s6, 0x38($sp)
/* 14C4E4 801A6474 AFB50034 */  sw    $s5, 0x34($sp)
/* 14C4E8 801A6478 AFB40030 */  sw    $s4, 0x30($sp)
/* 14C4EC 801A647C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 14C4F0 801A6480 124F004C */  beq   $s2, $t7, .L801A65B4_ovl7
/* 14C4F4 801A6484 00008825 */   move  $s1, $zero
/* 14C4F8 801A6488 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 14C4FC 801A648C 3C1E800E */  lui   $fp, %hi(D_800E6BD0) # $fp, 0x800e
/* 14C500 801A6490 3C17800E */  lui   $s7, %hi(D_800E5F90) # $s7, 0x800e
/* 14C504 801A6494 3C16800E */  lui   $s6, %hi(gEntitiesNextPosZArray) # $s6, 0x800e
/* 14C508 801A6498 3C15800E */  lui   $s5, %hi(gEntitiesNextPosYArray) # $s5, 0x800e
/* 14C50C 801A649C 3C14800E */  lui   $s4, %hi(gEntitiesNextPosXArray) # $s4, 0x800e
/* 14C510 801A64A0 4481A000 */  mtc1  $at, $f20
/* 14C514 801A64A4 269425D0 */  addiu $s4, %lo(gEntitiesNextPosXArray) # addiu $s4, $s4, 0x25d0
/* 14C518 801A64A8 26B52790 */  addiu $s5, %lo(gEntitiesNextPosYArray) # addiu $s5, $s5, 0x2790
/* 14C51C 801A64AC 26D62950 */  addiu $s6, %lo(gEntitiesNextPosZArray) # addiu $s6, $s6, 0x2950
/* 14C520 801A64B0 26F75F90 */  addiu $s7, %lo(D_800E5F90) # addiu $s7, $s7, 0x5f90
/* 14C524 801A64B4 27DE6BD0 */  addiu $fp, %lo(D_800E6BD0) # addiu $fp, $fp, 0x6bd0
.L801A64B8_ovl7:
/* 14C528 801A64B8 0C06B9F8 */  jal   func_801AE7E0_ovl7
/* 14C52C 801A64BC 24040014 */   li    $a0, 20
/* 14C530 801A64C0 5040002D */  beql  $v0, $zero, .L801A6578_ovl7
/* 14C534 801A64C4 26620001 */   addiu $v0, $s3, 1
/* 14C538 801A64C8 C6840000 */  lwc1  $f4, ($s4)
/* 14C53C 801A64CC 00021880 */  sll   $v1, $v0, 2
/* 14C540 801A64D0 0283C021 */  addu  $t8, $s4, $v1
/* 14C544 801A64D4 E7040000 */  swc1  $f4, ($t8)
/* 14C548 801A64D8 C6A60000 */  lwc1  $f6, ($s5)
/* 14C54C 801A64DC 02A3C821 */  addu  $t9, $s5, $v1
/* 14C550 801A64E0 02C34021 */  addu  $t0, $s6, $v1
/* 14C554 801A64E4 46143200 */  add.s $f8, $f6, $f20
/* 14C558 801A64E8 3C01800F */  lui   $at, 0x800f
/* 14C55C 801A64EC 3C0A801C */  lui   $t2, 0x801c
/* 14C560 801A64F0 00230821 */  addu  $at, $at, $v1
/* 14C564 801A64F4 E7280000 */  swc1  $f8, ($t9)
/* 14C568 801A64F8 C6CA0000 */  lwc1  $f10, ($s6)
/* 14C56C 801A64FC 02E36821 */  addu  $t5, $s7, $v1
/* 14C570 801A6500 03C37021 */  addu  $t6, $fp, $v1
/* 14C574 801A6504 E50A0000 */  swc1  $f10, ($t0)
/* 14C578 801A6508 8E040000 */  lw    $a0, ($s0)
/* 14C57C 801A650C 00044880 */  sll   $t1, $a0, 2
/* 14C580 801A6510 01495021 */  addu  $t2, $t2, $t1
/* 14C584 801A6514 8D4A2E84 */  lw    $t2, 0x2e84($t2)
/* 14C588 801A6518 AC2498E0 */  sw    $a0, -0x6720($at)
/* 14C58C 801A651C 3C01800F */  lui   $at, 0x800f
/* 14C590 801A6520 00230821 */  addu  $at, $at, $v1
/* 14C594 801A6524 AC2A9AA0 */  sw    $t2, -0x6560($at)
/* 14C598 801A6528 3C01800F */  lui   $at, 0x800f
/* 14C59C 801A652C 00230821 */  addu  $at, $at, $v1
/* 14C5A0 801A6530 AC319C60 */  sw    $s1, -0x63a0($at)
/* 14C5A4 801A6534 8E0B0014 */  lw    $t3, 0x14($s0)
/* 14C5A8 801A6538 3C01800F */  lui   $at, 0x800f
/* 14C5AC 801A653C 00230821 */  addu  $at, $at, $v1
/* 14C5B0 801A6540 AC2B9E20 */  sw    $t3, -0x61e0($at)
/* 14C5B4 801A6544 3C01800F */  lui   $at, 0x800f
/* 14C5B8 801A6548 00230821 */  addu  $at, $at, $v1
/* 14C5BC 801A654C AC208E60 */  sw    $zero, -0x71a0($at)
/* 14C5C0 801A6550 8EEC0000 */  lw    $t4, ($s7)
/* 14C5C4 801A6554 3C01800E */  lui   $at, %hi(D_800E6A10) # $at, 0x800e
/* 14C5C8 801A6558 ADAC0000 */  sw    $t4, ($t5)
/* 14C5CC 801A655C C7D00000 */  lwc1  $f16, ($fp)
/* 14C5D0 801A6560 E5D00000 */  swc1  $f16, ($t6)
/* 14C5D4 801A6564 C4326A10 */  lwc1  $f18, %lo(D_800E6A10)($at)
/* 14C5D8 801A6568 3C01800E */  lui   $at, 0x800e
/* 14C5DC 801A656C 00230821 */  addu  $at, $at, $v1
/* 14C5E0 801A6570 E4326A10 */  swc1  $f18, 0x6a10($at)
/* 14C5E4 801A6574 26620001 */  addiu $v0, $s3, 1
.L801A6578_ovl7:
/* 14C5E8 801A6578 28410006 */  slti  $at, $v0, 6
/* 14C5EC 801A657C 14200005 */  bnez  $at, .L801A6594_ovl7
/* 14C5F0 801A6580 26310001 */   addiu $s1, $s1, 1
/* 14C5F4 801A6584 3C10800D */  lui   $s0, %hi(D_800D711C) # $s0, 0x800d
/* 14C5F8 801A6588 2610711C */  addiu $s0, %lo(D_800D711C) # addiu $s0, $s0, 0x711c
/* 14C5FC 801A658C 10000003 */  b     .L801A659C_ovl7
/* 14C600 801A6590 24130001 */   li    $s3, 1
.L801A6594_ovl7:
/* 14C604 801A6594 00409825 */  move  $s3, $v0
/* 14C608 801A6598 26100004 */  addiu $s0, $s0, 4
.L801A659C_ovl7:
/* 14C60C 801A659C 8E0F0000 */  lw    $t7, ($s0)
/* 14C610 801A65A0 24010005 */  li    $at, 5
/* 14C614 801A65A4 124F0003 */  beq   $s2, $t7, .L801A65B4_ovl7
/* 14C618 801A65A8 00000000 */   nop   
/* 14C61C 801A65AC 1621FFC2 */  bne   $s1, $at, .L801A64B8_ovl7
/* 14C620 801A65B0 00000000 */   nop   
.L801A65B4_ovl7:
/* 14C624 801A65B4 3C02800D */  lui   $v0, %hi(D_800D7118) # $v0, 0x800d
/* 14C628 801A65B8 3C03800D */  lui   $v1, %hi(D_800D7158) # $v1, 0x800d
/* 14C62C 801A65BC 24637158 */  addiu $v1, %lo(D_800D7158) # addiu $v1, $v1, 0x7158
/* 14C630 801A65C0 24427118 */  addiu $v0, %lo(D_800D7118) # addiu $v0, $v0, 0x7118
.L801A65C4_ovl7:
/* 14C634 801A65C4 24420010 */  addiu $v0, $v0, 0x10
/* 14C638 801A65C8 AC52FFF0 */  sw    $s2, -0x10($v0)
/* 14C63C 801A65CC AC52FFF4 */  sw    $s2, -0xc($v0)
/* 14C640 801A65D0 AC52FFF8 */  sw    $s2, -8($v0)
/* 14C644 801A65D4 1443FFFB */  bne   $v0, $v1, .L801A65C4_ovl7
/* 14C648 801A65D8 AC52FFFC */   sw    $s2, -4($v0)
/* 14C64C 801A65DC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 14C650 801A65E0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 14C654 801A65E4 8FB00020 */  lw    $s0, 0x20($sp)
/* 14C658 801A65E8 8FB10024 */  lw    $s1, 0x24($sp)
/* 14C65C 801A65EC 8FB20028 */  lw    $s2, 0x28($sp)
/* 14C660 801A65F0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 14C664 801A65F4 8FB40030 */  lw    $s4, 0x30($sp)
/* 14C668 801A65F8 8FB50034 */  lw    $s5, 0x34($sp)
/* 14C66C 801A65FC 8FB60038 */  lw    $s6, 0x38($sp)
/* 14C670 801A6600 8FB7003C */  lw    $s7, 0x3c($sp)
/* 14C674 801A6604 8FBE0040 */  lw    $fp, 0x40($sp)
/* 14C678 801A6608 03E00008 */  jr    $ra
/* 14C67C 801A660C 27BD0048 */   addiu $sp, $sp, 0x48

.type func_801A6434_ovl7, @function
.size func_801A6434_ovl7, . - func_801A6434_ovl7

glabel func_801A6610_ovl7
/* 14C680 801A6610 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C684 801A6614 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C688 801A6618 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14C68C 801A661C AFBF001C */  sw    $ra, 0x1c($sp)
/* 14C690 801A6620 AFB00018 */  sw    $s0, 0x18($sp)
/* 14C694 801A6624 8DCF0000 */  lw    $t7, ($t6)
/* 14C698 801A6628 3C10800E */  lui   $s0, 0x800e
/* 14C69C 801A662C 000FC080 */  sll   $t8, $t7, 2
/* 14C6A0 801A6630 02188021 */  addu  $s0, $s0, $t8
/* 14C6A4 801A6634 0C068F2A */  jal   func_801A3CA8_ovl7
/* 14C6A8 801A6638 8E101B50 */   lw    $s0, 0x1b50($s0)
/* 14C6AC 801A663C 8E020094 */  lw    $v0, 0x94($s0)
/* 14C6B0 801A6640 2401FFFF */  li    $at, -1
/* 14C6B4 801A6644 8C59000C */  lw    $t9, 0xc($v0)
/* 14C6B8 801A6648 13210013 */  beq   $t9, $at, .L801A6698_ovl7
/* 14C6BC 801A664C 00000000 */   nop   
/* 14C6C0 801A6650 0C02BB30 */  jal   func_800AECC0
/* 14C6C4 801A6654 C44C0014 */   lwc1  $f12, 0x14($v0)
/* 14C6C8 801A6658 8E080094 */  lw    $t0, 0x94($s0)
/* 14C6CC 801A665C 0C02BB48 */  jal   func_800AED20
/* 14C6D0 801A6660 C50C0014 */   lwc1  $f12, 0x14($t0)
/* 14C6D4 801A6664 8E090094 */  lw    $t1, 0x94($s0)
/* 14C6D8 801A6668 3C053F80 */  lui   $a1, 0x3f80
/* 14C6DC 801A666C 0C02A7E6 */  jal   func_800A9F98
/* 14C6E0 801A6670 8D24000C */   lw    $a0, 0xc($t1)
/* 14C6E4 801A6674 8E0A0094 */  lw    $t2, 0x94($s0)
/* 14C6E8 801A6678 2401FFFF */  li    $at, -1
/* 14C6EC 801A667C 8D440010 */  lw    $a0, 0x10($t2)
/* 14C6F0 801A6680 50810008 */  beql  $a0, $at, .L801A66A4_ovl7
/* 14C6F4 801A6684 8FBF001C */   lw    $ra, 0x1c($sp)
/* 14C6F8 801A6688 0C02A7E6 */  jal   func_800A9F98
/* 14C6FC 801A668C 3C053F80 */   lui   $a1, 0x3f80
/* 14C700 801A6690 10000004 */  b     .L801A66A4_ovl7
/* 14C704 801A6694 8FBF001C */   lw    $ra, 0x1c($sp)
.L801A6698_ovl7:
/* 14C708 801A6698 0C02BD02 */  jal   func_800AF408
/* 14C70C 801A669C 00000000 */   nop   
/* 14C710 801A66A0 8FBF001C */  lw    $ra, 0x1c($sp)
.L801A66A4_ovl7:
/* 14C714 801A66A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 14C718 801A66A8 27BD0020 */  addiu $sp, $sp, 0x20
/* 14C71C 801A66AC 03E00008 */  jr    $ra
/* 14C720 801A66B0 00000000 */   nop   

.type func_801A6610_ovl7, @function
.size func_801A6610_ovl7, . - func_801A6610_ovl7

glabel func_801A66B4_ovl7
/* 14C724 801A66B4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C728 801A66B8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C72C 801A66BC 3C02800E */  lui   $v0, 0x800e
/* 14C730 801A66C0 24010006 */  li    $at, 6
/* 14C734 801A66C4 8DCF0000 */  lw    $t7, ($t6)
/* 14C738 801A66C8 000FC080 */  sll   $t8, $t7, 2
/* 14C73C 801A66CC 00581021 */  addu  $v0, $v0, $t8
/* 14C740 801A66D0 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14C744 801A66D4 8C590094 */  lw    $t9, 0x94($v0)
/* 14C748 801A66D8 8F230018 */  lw    $v1, 0x18($t9)
/* 14C74C 801A66DC 10610003 */  beq   $v1, $at, .L801A66EC_ovl7
/* 14C750 801A66E0 24010007 */   li    $at, 7
/* 14C754 801A66E4 14610003 */  bne   $v1, $at, .L801A66F4_ovl7
/* 14C758 801A66E8 00001025 */   move  $v0, $zero
.L801A66EC_ovl7:
/* 14C75C 801A66EC 03E00008 */  jr    $ra
/* 14C760 801A66F0 24020001 */   li    $v0, 1
.L801A66F4_ovl7:
/* 14C764 801A66F4 03E00008 */  jr    $ra
/* 14C768 801A66F8 00000000 */   nop   
.type func_801A66B4_ovl7, @function
.size func_801A66B4_ovl7, . - func_801A66B4_ovl7

glabel func_801A66FC_ovl7
/* 14C76C 801A66FC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C770 801A6700 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C774 801A6704 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 14C778 801A6708 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14C77C 801A670C 8DC40000 */  lw    $a0, ($t6)
/* 14C780 801A6710 3C02800E */  lui   $v0, 0x800e
/* 14C784 801A6714 3C18800E */  lui   $t8, 0x800e
/* 14C788 801A6718 00047880 */  sll   $t7, $a0, 2
/* 14C78C 801A671C 004F1021 */  addu  $v0, $v0, $t7
/* 14C790 801A6720 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14C794 801A6724 0304C021 */  addu  $t8, $t8, $a0
/* 14C798 801A6728 90430043 */  lbu   $v1, 0x43($v0)
/* 14C79C 801A672C 8C460084 */  lw    $a2, 0x84($v0)
/* 14C7A0 801A6730 2861000D */  slti  $at, $v1, 0xd
/* 14C7A4 801A6734 14200003 */  bnez  $at, .L801A6744_ovl7
/* 14C7A8 801A6738 00602825 */   move  $a1, $v1
/* 14C7AC 801A673C 00001825 */  move  $v1, $zero
/* 14C7B0 801A6740 00002825 */  move  $a1, $zero
.L801A6744_ovl7:
/* 14C7B4 801A6744 93187730 */  lbu   $t8, 0x7730($t8)
/* 14C7B8 801A6748 57000019 */  bnezl $t8, .L801A67B0_ovl7
/* 14C7BC 801A674C 24010001 */   li    $at, 1
/* 14C7C0 801A6750 54C00017 */  bnezl $a2, .L801A67B0_ovl7
/* 14C7C4 801A6754 24010001 */   li    $at, 1
/* 14C7C8 801A6758 8C590088 */  lw    $t9, 0x88($v0)
/* 14C7CC 801A675C 8F240010 */  lw    $a0, 0x10($t9)
/* 14C7D0 801A6760 10800009 */  beqz  $a0, .L801A6788_ovl7
/* 14C7D4 801A6764 00000000 */   nop   
/* 14C7D8 801A6768 AFA2002C */  sw    $v0, 0x2c($sp)
/* 14C7DC 801A676C A3A3002B */  sb    $v1, 0x2b($sp)
/* 14C7E0 801A6770 0C068956 */  jal   func_801A2558_ovl7
/* 14C7E4 801A6774 AFA5001C */   sw    $a1, 0x1c($sp)
/* 14C7E8 801A6778 8FA2002C */  lw    $v0, 0x2c($sp)
/* 14C7EC 801A677C 93A3002B */  lbu   $v1, 0x2b($sp)
/* 14C7F0 801A6780 1000000A */  b     .L801A67AC_ovl7
/* 14C7F4 801A6784 8FA5001C */   lw    $a1, 0x1c($sp)
.L801A6788_ovl7:
/* 14C7F8 801A6788 3C04801D */  lui   $a0, %hi(D_801CA9F8) # $a0, 0x801d
/* 14C7FC 801A678C 2484A9F8 */  addiu $a0, %lo(D_801CA9F8) # addiu $a0, $a0, -0x5608
/* 14C800 801A6790 AFA2002C */  sw    $v0, 0x2c($sp)
/* 14C804 801A6794 A3A3002B */  sb    $v1, 0x2b($sp)
/* 14C808 801A6798 0C068956 */  jal   func_801A2558_ovl7
/* 14C80C 801A679C AFA5001C */   sw    $a1, 0x1c($sp)
/* 14C810 801A67A0 8FA2002C */  lw    $v0, 0x2c($sp)
/* 14C814 801A67A4 93A3002B */  lbu   $v1, 0x2b($sp)
/* 14C818 801A67A8 8FA5001C */  lw    $a1, 0x1c($sp)
.L801A67AC_ovl7:
/* 14C81C 801A67AC 24010001 */  li    $at, 1
.L801A67B0_ovl7:
/* 14C820 801A67B0 54A1000C */  bnel  $a1, $at, .L801A67E4_ovl7
/* 14C824 801A67B4 2CA1000D */   sltiu $at, $a1, 0xd
/* 14C828 801A67B8 9048003E */  lbu   $t0, 0x3e($v0)
/* 14C82C 801A67BC 24010002 */  li    $at, 2
/* 14C830 801A67C0 55010008 */  bnel  $t0, $at, .L801A67E4_ovl7
/* 14C834 801A67C4 2CA1000D */   sltiu $at, $a1, 0xd
/* 14C838 801A67C8 9049003F */  lbu   $t1, 0x3f($v0)
/* 14C83C 801A67CC 24010006 */  li    $at, 6
/* 14C840 801A67D0 55210004 */  bnel  $t1, $at, .L801A67E4_ovl7
/* 14C844 801A67D4 2CA1000D */   sltiu $at, $a1, 0xd
/* 14C848 801A67D8 10000018 */  b     .L801A683C_ovl7
/* 14C84C 801A67DC 24030007 */   li    $v1, 7
/* 14C850 801A67E0 2CA1000D */  sltiu $at, $a1, 0xd
.L801A67E4_ovl7:
/* 14C854 801A67E4 10200015 */  beqz  $at, .L801A683C_ovl7
/* 14C858 801A67E8 00055080 */   sll   $t2, $a1, 2
/* 14C85C 801A67EC 3C01801D */  lui   $at, 0x801d
/* 14C860 801A67F0 002A0821 */  addu  $at, $at, $t2
/* 14C864 801A67F4 8C2ADFD4 */  lw    $t2, -0x202c($at)
/* 14C868 801A67F8 01400008 */  jr    $t2
/* 14C86C 801A67FC 00000000 */   nop   
/* 14C870 801A6800 1000000E */  b     .L801A683C_ovl7
/* 14C874 801A6804 00001825 */   move  $v1, $zero
/* 14C878 801A6808 1000000C */  b     .L801A683C_ovl7
/* 14C87C 801A680C 24030001 */   li    $v1, 1
/* 14C880 801A6810 1000000A */  b     .L801A683C_ovl7
/* 14C884 801A6814 24030002 */   li    $v1, 2
/* 14C888 801A6818 10000008 */  b     .L801A683C_ovl7
/* 14C88C 801A681C 24030003 */   li    $v1, 3
/* 14C890 801A6820 10000006 */  b     .L801A683C_ovl7
/* 14C894 801A6824 24030004 */   li    $v1, 4
/* 14C898 801A6828 10000004 */  b     .L801A683C_ovl7
/* 14C89C 801A682C 24030005 */   li    $v1, 5
/* 14C8A0 801A6830 10000002 */  b     .L801A683C_ovl7
/* 14C8A4 801A6834 24030006 */   li    $v1, 6
/* 14C8A8 801A6838 24030008 */  li    $v1, 8
.L801A683C_ovl7:
/* 14C8AC 801A683C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14C8B0 801A6840 27BD0030 */  addiu $sp, $sp, 0x30
/* 14C8B4 801A6844 00601025 */  move  $v0, $v1
/* 14C8B8 801A6848 03E00008 */  jr    $ra
/* 14C8BC 801A684C 00000000 */   nop   

.type func_801A66FC_ovl7, @function
.size func_801A66FC_ovl7, . - func_801A66FC_ovl7

glabel func_801A6850_ovl7
/* 14C8C0 801A6850 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C8C4 801A6854 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C8C8 801A6858 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14C8CC 801A685C AFBF001C */  sw    $ra, 0x1c($sp)
/* 14C8D0 801A6860 AFA40020 */  sw    $a0, 0x20($sp)
/* 14C8D4 801A6864 8DCF0000 */  lw    $t7, ($t6)
/* 14C8D8 801A6868 3C02800E */  lui   $v0, 0x800e
/* 14C8DC 801A686C 44800000 */  mtc1  $zero, $f0
/* 14C8E0 801A6870 000FC080 */  sll   $t8, $t7, 2
/* 14C8E4 801A6874 00581021 */  addu  $v0, $v0, $t8
/* 14C8E8 801A6878 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14C8EC 801A687C 44060000 */  mfc1  $a2, $f0
/* 14C8F0 801A6880 44070000 */  mfc1  $a3, $f0
/* 14C8F4 801A6884 8C590094 */  lw    $t9, 0x94($v0)
/* 14C8F8 801A6888 00002025 */  move  $a0, $zero
/* 14C8FC 801A688C 8F250018 */  lw    $a1, 0x18($t9)
/* 14C900 801A6890 0C03F55C */  jal   func_800FD570
/* 14C904 801A6894 E7A00010 */   swc1  $f0, 0x10($sp)
/* 14C908 801A6898 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14C90C 801A689C 27BD0020 */  addiu $sp, $sp, 0x20
/* 14C910 801A68A0 03E00008 */  jr    $ra
/* 14C914 801A68A4 00000000 */   nop   

.type func_801A6850_ovl7, @function
.size func_801A6850_ovl7, . - func_801A6850_ovl7

glabel func_801A68A8_ovl7
/* 14C918 801A68A8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C91C 801A68AC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C920 801A68B0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14C924 801A68B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14C928 801A68B8 AFA40020 */  sw    $a0, 0x20($sp)
/* 14C92C 801A68BC 8DCF0000 */  lw    $t7, ($t6)
/* 14C930 801A68C0 3C02800E */  lui   $v0, 0x800e
/* 14C934 801A68C4 44800000 */  mtc1  $zero, $f0
/* 14C938 801A68C8 000FC080 */  sll   $t8, $t7, 2
/* 14C93C 801A68CC 00581021 */  addu  $v0, $v0, $t8
/* 14C940 801A68D0 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14C944 801A68D4 44060000 */  mfc1  $a2, $f0
/* 14C948 801A68D8 44070000 */  mfc1  $a3, $f0
/* 14C94C 801A68DC 8C590094 */  lw    $t9, 0x94($v0)
/* 14C950 801A68E0 00002025 */  move  $a0, $zero
/* 14C954 801A68E4 8F250018 */  lw    $a1, 0x18($t9)
/* 14C958 801A68E8 0C03F55C */  jal   func_800FD570
/* 14C95C 801A68EC E7A00010 */   swc1  $f0, 0x10($sp)
/* 14C960 801A68F0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14C964 801A68F4 27BD0020 */  addiu $sp, $sp, 0x20
/* 14C968 801A68F8 03E00008 */  jr    $ra
/* 14C96C 801A68FC 00000000 */   nop   

.type func_801A68A8_ovl7, @function
.size func_801A68A8_ovl7, . - func_801A68A8_ovl7

glabel func_801A6900_ovl7
/* 14C970 801A6900 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C974 801A6904 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C978 801A6908 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14C97C 801A690C AFBF001C */  sw    $ra, 0x1c($sp)
/* 14C980 801A6910 AFA40020 */  sw    $a0, 0x20($sp)
/* 14C984 801A6914 8DCF0000 */  lw    $t7, ($t6)
/* 14C988 801A6918 3C02800E */  lui   $v0, 0x800e
/* 14C98C 801A691C 44800000 */  mtc1  $zero, $f0
/* 14C990 801A6920 000FC080 */  sll   $t8, $t7, 2
/* 14C994 801A6924 00581021 */  addu  $v0, $v0, $t8
/* 14C998 801A6928 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14C99C 801A692C 44060000 */  mfc1  $a2, $f0
/* 14C9A0 801A6930 44070000 */  mfc1  $a3, $f0
/* 14C9A4 801A6934 8C590094 */  lw    $t9, 0x94($v0)
/* 14C9A8 801A6938 00002025 */  move  $a0, $zero
/* 14C9AC 801A693C 8F250018 */  lw    $a1, 0x18($t9)
/* 14C9B0 801A6940 0C03F55C */  jal   func_800FD570
/* 14C9B4 801A6944 E7A00010 */   swc1  $f0, 0x10($sp)
/* 14C9B8 801A6948 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14C9BC 801A694C 27BD0020 */  addiu $sp, $sp, 0x20
/* 14C9C0 801A6950 03E00008 */  jr    $ra
/* 14C9C4 801A6954 00000000 */   nop   

.type func_801A6900_ovl7, @function
.size func_801A6900_ovl7, . - func_801A6900_ovl7

glabel func_801A6958_ovl7
/* 14C9C8 801A6958 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14C9CC 801A695C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14C9D0 801A6960 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14C9D4 801A6964 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14C9D8 801A6968 AFA40020 */  sw    $a0, 0x20($sp)
/* 14C9DC 801A696C 8DCF0000 */  lw    $t7, ($t6)
/* 14C9E0 801A6970 3C02800E */  lui   $v0, 0x800e
/* 14C9E4 801A6974 44800000 */  mtc1  $zero, $f0
/* 14C9E8 801A6978 000FC080 */  sll   $t8, $t7, 2
/* 14C9EC 801A697C 00581021 */  addu  $v0, $v0, $t8
/* 14C9F0 801A6980 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14C9F4 801A6984 44060000 */  mfc1  $a2, $f0
/* 14C9F8 801A6988 44070000 */  mfc1  $a3, $f0
/* 14C9FC 801A698C 8C590094 */  lw    $t9, 0x94($v0)
/* 14CA00 801A6990 00002025 */  move  $a0, $zero
/* 14CA04 801A6994 8F250018 */  lw    $a1, 0x18($t9)
/* 14CA08 801A6998 0C03F55C */  jal   func_800FD570
/* 14CA0C 801A699C E7A00010 */   swc1  $f0, 0x10($sp)
/* 14CA10 801A69A0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14CA14 801A69A4 27BD0020 */  addiu $sp, $sp, 0x20
/* 14CA18 801A69A8 03E00008 */  jr    $ra
/* 14CA1C 801A69AC 00000000 */   nop   

.type func_801A6958_ovl7, @function
.size func_801A6958_ovl7, . - func_801A6958_ovl7

glabel func_801A69B0_ovl7
/* 14CA20 801A69B0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14CA24 801A69B4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14CA28 801A69B8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14CA2C 801A69BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 14CA30 801A69C0 AFB10018 */  sw    $s1, 0x18($sp)
/* 14CA34 801A69C4 AFB00014 */  sw    $s0, 0x14($sp)
/* 14CA38 801A69C8 AFA40020 */  sw    $a0, 0x20($sp)
/* 14CA3C 801A69CC 8C430000 */  lw    $v1, ($v0)
/* 14CA40 801A69D0 3C10800E */  lui   $s0, 0x800e
/* 14CA44 801A69D4 3C01800E */  lui   $at, 0x800e
/* 14CA48 801A69D8 00031880 */  sll   $v1, $v1, 2
/* 14CA4C 801A69DC 02038021 */  addu  $s0, $s0, $v1
/* 14CA50 801A69E0 8E101B50 */  lw    $s0, 0x1b50($s0)
/* 14CA54 801A69E4 00230821 */  addu  $at, $at, $v1
/* 14CA58 801A69E8 3C0E800B */  lui   $t6, %hi(D_800B6474) # $t6, 0x800b
/* 14CA5C 801A69EC 8E110044 */  lw    $s1, 0x44($s0)
/* 14CA60 801A69F0 16200002 */  bnez  $s1, .L801A69FC_ovl7
/* 14CA64 801A69F4 00000000 */   nop   
/* 14CA68 801A69F8 24110001 */  li    $s1, 1
.L801A69FC_ovl7:
/* 14CA6C 801A69FC AC20F150 */  sw    $zero, -0xeb0($at)
/* 14CA70 801A6A00 8C4F0000 */  lw    $t7, ($v0)
/* 14CA74 801A6A04 3C01800E */  lui   $at, 0x800e
/* 14CA78 801A6A08 25CE6474 */  addiu $t6, %lo(D_800B6474) # addiu $t6, $t6, 0x6474
/* 14CA7C 801A6A0C 000FC080 */  sll   $t8, $t7, 2
/* 14CA80 801A6A10 00380821 */  addu  $at, $at, $t8
/* 14CA84 801A6A14 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 14CA88 801A6A18 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 14CA8C 801A6A1C 0C02BB30 */  jal   func_800AECC0
/* 14CA90 801A6A20 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 14CA94 801A6A24 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 14CA98 801A6A28 0C02BB48 */  jal   func_800AED20
/* 14CA9C 801A6A2C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 14CAA0 801A6A30 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14CAA4 801A6A34 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14CAA8 801A6A38 44806000 */  mtc1  $zero, $f12
/* 14CAAC 801A6A3C 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 14CAB0 801A6A40 8C590000 */  lw    $t9, ($v0)
/* 14CAB4 801A6A44 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 14CAB8 801A6A48 3C01801D */  lui   $at, %hi(D_801CE008) # $at, 0x801d
/* 14CABC 801A6A4C 00194080 */  sll   $t0, $t9, 2
/* 14CAC0 801A6A50 C42EE008 */  lwc1  $f14, %lo(D_801CE008)($at)
/* 14CAC4 801A6A54 00884821 */  addu  $t1, $a0, $t0
/* 14CAC8 801A6A58 E52C0000 */  swc1  $f12, ($t1)
/* 14CACC 801A6A5C 8C430000 */  lw    $v1, ($v0)
/* 14CAD0 801A6A60 3C01800E */  lui   $at, 0x800e
/* 14CAD4 801A6A64 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 14CAD8 801A6A68 00031880 */  sll   $v1, $v1, 2
/* 14CADC 801A6A6C 00835021 */  addu  $t2, $a0, $v1
/* 14CAE0 801A6A70 C5440000 */  lwc1  $f4, ($t2)
/* 14CAE4 801A6A74 00230821 */  addu  $at, $at, $v1
/* 14CAE8 801A6A78 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 14CAEC 801A6A7C E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14CAF0 801A6A80 8C4B0000 */  lw    $t3, ($v0)
/* 14CAF4 801A6A84 3C01800E */  lui   $at, 0x800e
/* 14CAF8 801A6A88 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 14CAFC 801A6A8C 000B6080 */  sll   $t4, $t3, 2
/* 14CB00 801A6A90 002C0821 */  addu  $at, $at, $t4
/* 14CB04 801A6A94 E42E6850 */  swc1  $f14, 0x6850($at)
/* 14CB08 801A6A98 8C4D0000 */  lw    $t5, ($v0)
/* 14CB0C 801A6A9C 3C01800E */  lui   $at, 0x800e
/* 14CB10 801A6AA0 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 14CB14 801A6AA4 000D7880 */  sll   $t7, $t5, 2
/* 14CB18 801A6AA8 00CF7021 */  addu  $t6, $a2, $t7
/* 14CB1C 801A6AAC E5CC0000 */  swc1  $f12, ($t6)
/* 14CB20 801A6AB0 8C430000 */  lw    $v1, ($v0)
/* 14CB24 801A6AB4 00031880 */  sll   $v1, $v1, 2
/* 14CB28 801A6AB8 00C3C021 */  addu  $t8, $a2, $v1
/* 14CB2C 801A6ABC C7000000 */  lwc1  $f0, ($t8)
/* 14CB30 801A6AC0 00230821 */  addu  $at, $at, $v1
/* 14CB34 801A6AC4 E4203750 */  swc1  $f0, 0x3750($at)
/* 14CB38 801A6AC8 8C590000 */  lw    $t9, ($v0)
/* 14CB3C 801A6ACC 3C01800E */  lui   $at, 0x800e
/* 14CB40 801A6AD0 00194080 */  sll   $t0, $t9, 2
/* 14CB44 801A6AD4 00280821 */  addu  $at, $at, $t0
/* 14CB48 801A6AD8 E4203590 */  swc1  $f0, 0x3590($at)
/* 14CB4C 801A6ADC 8C490000 */  lw    $t1, ($v0)
/* 14CB50 801A6AE0 3C01800E */  lui   $at, 0x800e
/* 14CB54 801A6AE4 00095080 */  sll   $t2, $t1, 2
/* 14CB58 801A6AE8 002A0821 */  addu  $at, $at, $t2
/* 14CB5C 801A6AEC E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14CB60 801A6AF0 8C4B0000 */  lw    $t3, ($v0)
/* 14CB64 801A6AF4 3C01800E */  lui   $at, 0x800e
/* 14CB68 801A6AF8 000B6080 */  sll   $t4, $t3, 2
/* 14CB6C 801A6AFC 002C0821 */  addu  $at, $at, $t4
/* 14CB70 801A6B00 E4203210 */  swc1  $f0, 0x3210($at)
/* 14CB74 801A6B04 8C4D0000 */  lw    $t5, ($v0)
/* 14CB78 801A6B08 3C01800E */  lui   $at, 0x800e
/* 14CB7C 801A6B0C 000D7880 */  sll   $t7, $t5, 2
/* 14CB80 801A6B10 002F0821 */  addu  $at, $at, $t7
/* 14CB84 801A6B14 E4203050 */  swc1  $f0, 0x3050($at)
/* 14CB88 801A6B18 8C4E0000 */  lw    $t6, ($v0)
/* 14CB8C 801A6B1C 3C01800E */  lui   $at, 0x800e
/* 14CB90 801A6B20 000EC080 */  sll   $t8, $t6, 2
/* 14CB94 801A6B24 00F8C821 */  addu  $t9, $a3, $t8
/* 14CB98 801A6B28 E72E0000 */  swc1  $f14, ($t9)
/* 14CB9C 801A6B2C 8C430000 */  lw    $v1, ($v0)
/* 14CBA0 801A6B30 00031880 */  sll   $v1, $v1, 2
/* 14CBA4 801A6B34 00E34021 */  addu  $t0, $a3, $v1
/* 14CBA8 801A6B38 C5020000 */  lwc1  $f2, ($t0)
/* 14CBAC 801A6B3C 00230821 */  addu  $at, $at, $v1
/* 14CBB0 801A6B40 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14CBB4 801A6B44 8C490000 */  lw    $t1, ($v0)
/* 14CBB8 801A6B48 3C01800E */  lui   $at, 0x800e
/* 14CBBC 801A6B4C 00095080 */  sll   $t2, $t1, 2
/* 14CBC0 801A6B50 002A0821 */  addu  $at, $at, $t2
/* 14CBC4 801A6B54 E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 14CBC8 801A6B58 8E050034 */  lw    $a1, 0x34($s0)
/* 14CBCC 801A6B5C 10A00003 */  beqz  $a1, .L801A6B6C_ovl7
/* 14CBD0 801A6B60 00000000 */   nop   
/* 14CBD4 801A6B64 0C0288B5 */  jal   func_800A22D4
/* 14CBD8 801A6B68 00A02025 */   move  $a0, $a1
.L801A6B6C_ovl7:
/* 14CBDC 801A6B6C 0C0288C0 */  jal   func_800A2300
/* 14CBE0 801A6B70 8FA40020 */   lw    $a0, 0x20($sp)
/* 14CBE4 801A6B74 24010001 */  li    $at, 1
/* 14CBE8 801A6B78 16210004 */  bne   $s1, $at, .L801A6B8C_ovl7
/* 14CBEC 801A6B7C AE000034 */   sw    $zero, 0x34($s0)
/* 14CBF0 801A6B80 240B0001 */  li    $t3, 1
/* 14CBF4 801A6B84 1000001B */  b     .L801A6BF4_ovl7
/* 14CBF8 801A6B88 A20B0043 */   sb    $t3, 0x43($s0)
.L801A6B8C_ovl7:
/* 14CBFC 801A6B8C 8E0C0094 */  lw    $t4, 0x94($s0)
/* 14CC00 801A6B90 3C018000 */  lui   $at, 0x8000
/* 14CC04 801A6B94 8D84001C */  lw    $a0, 0x1c($t4)
/* 14CC08 801A6B98 10810003 */  beq   $a0, $at, .L801A6BA8_ovl7
/* 14CC0C 801A6B9C 00000000 */   nop   
/* 14CC10 801A6BA0 0C029D9E */  jal   play_sound
/* 14CC14 801A6BA4 00000000 */   nop   
.L801A6BA8_ovl7:
/* 14CC18 801A6BA8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14CC1C 801A6BAC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14CC20 801A6BB0 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 14CC24 801A6BB4 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 14CC28 801A6BB8 8C4F0000 */  lw    $t7, ($v0)
/* 14CC2C 801A6BBC 262DFFFF */  addiu $t5, $s1, -1
/* 14CC30 801A6BC0 3C06801C */  lui   $a2, %hi(D_801C2994) # $a2, 0x801c
/* 14CC34 801A6BC4 000F7080 */  sll   $t6, $t7, 2
/* 14CC38 801A6BC8 006EC021 */  addu  $t8, $v1, $t6
/* 14CC3C 801A6BCC AF0D0000 */  sw    $t5, ($t8)
/* 14CC40 801A6BD0 8C590000 */  lw    $t9, ($v0)
/* 14CC44 801A6BD4 24C62994 */  addiu $a2, %lo(D_801C2994) # addiu $a2, $a2, 0x2994
/* 14CC48 801A6BD8 24050004 */  li    $a1, 4
/* 14CC4C 801A6BDC 00194080 */  sll   $t0, $t9, 2
/* 14CC50 801A6BE0 00684821 */  addu  $t1, $v1, $t0
/* 14CC54 801A6BE4 0C02911F */  jal   call_virtual_function
/* 14CC58 801A6BE8 8D240000 */   lw    $a0, ($t1)
/* 14CC5C 801A6BEC 240A0001 */  li    $t2, 1
/* 14CC60 801A6BF0 A20A0040 */  sb    $t2, 0x40($s0)
.L801A6BF4_ovl7:
/* 14CC64 801A6BF4 0C068FA0 */  jal   func_801A3E80
/* 14CC68 801A6BF8 8FA40020 */   lw    $a0, 0x20($sp)
/* 14CC6C 801A6BFC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14CC70 801A6C00 8FB00014 */  lw    $s0, 0x14($sp)
/* 14CC74 801A6C04 8FB10018 */  lw    $s1, 0x18($sp)
/* 14CC78 801A6C08 03E00008 */  jr    $ra
/* 14CC7C 801A6C0C 27BD0020 */   addiu $sp, $sp, 0x20

.type func_801A69B0_ovl7, @function
.size func_801A69B0_ovl7, . - func_801A69B0_ovl7

glabel func_801A6C10_ovl7
/* 14CC80 801A6C10 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 14CC84 801A6C14 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14CC88 801A6C18 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14CC8C 801A6C1C AFBF002C */  sw    $ra, 0x2c($sp)
/* 14CC90 801A6C20 AFB00028 */  sw    $s0, 0x28($sp)
/* 14CC94 801A6C24 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 14CC98 801A6C28 AFA40030 */  sw    $a0, 0x30($sp)
/* 14CC9C 801A6C2C 8C430000 */  lw    $v1, ($v0)
/* 14CCA0 801A6C30 4480A000 */  mtc1  $zero, $f20
/* 14CCA4 801A6C34 3C01800F */  lui   $at, 0x800f
/* 14CCA8 801A6C38 00031880 */  sll   $v1, $v1, 2
/* 14CCAC 801A6C3C 00230821 */  addu  $at, $at, $v1
/* 14CCB0 801A6C40 E4349020 */  swc1  $f20, -0x6fe0($at)
/* 14CCB4 801A6C44 8C4F0000 */  lw    $t7, ($v0)
/* 14CCB8 801A6C48 3C10800E */  lui   $s0, 0x800e
/* 14CCBC 801A6C4C 02038021 */  addu  $s0, $s0, $v1
/* 14CCC0 801A6C50 8E101B50 */  lw    $s0, 0x1b50($s0)
/* 14CCC4 801A6C54 3C01800E */  lui   $at, 0x800e
/* 14CCC8 801A6C58 3C0E801A */  lui   $t6, %hi(D_801A6DD0) # $t6, 0x801a
/* 14CCCC 801A6C5C 000FC080 */  sll   $t8, $t7, 2
/* 14CCD0 801A6C60 00380821 */  addu  $at, $at, $t8
/* 14CCD4 801A6C64 25CE6DD0 */  addiu $t6, %lo(D_801A6DD0) # addiu $t6, $t6, 0x6dd0
/* 14CCD8 801A6C68 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 14CCDC 801A6C6C 8E050034 */  lw    $a1, 0x34($s0)
/* 14CCE0 801A6C70 3C19801D */  lui   $t9, %hi(D_801CB470) # $t9, 0x801d
/* 14CCE4 801A6C74 2739B470 */  addiu $t9, %lo(D_801CB470) # addiu $t9, $t9, -0x4b90
/* 14CCE8 801A6C78 AE000048 */  sw    $zero, 0x48($s0)
/* 14CCEC 801A6C7C 10A00003 */  beqz  $a1, .L801A6C8C_ovl7
/* 14CCF0 801A6C80 AE190098 */   sw    $t9, 0x98($s0)
/* 14CCF4 801A6C84 0C0288B5 */  jal   func_800A22D4
/* 14CCF8 801A6C88 00A02025 */   move  $a0, $a1
.L801A6C8C_ovl7:
/* 14CCFC 801A6C8C 0C0288C0 */  jal   func_800A2300
/* 14CD00 801A6C90 8FA40030 */   lw    $a0, 0x30($sp)
/* 14CD04 801A6C94 0C068F5B */  jal   func_801A3D6C_ovl7
/* 14CD08 801A6C98 AE000034 */   sw    $zero, 0x34($s0)
/* 14CD0C 801A6C9C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 14CD10 801A6CA0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 14CD14 801A6CA4 3C05800E */  lui   $a1, %hi(D_800E6690) # $a1, 0x800e
/* 14CD18 801A6CA8 24A56690 */  addiu $a1, %lo(D_800E6690) # addiu $a1, $a1, 0x6690
/* 14CD1C 801A6CAC 8C480000 */  lw    $t0, ($v0)
/* 14CD20 801A6CB0 3C01800E */  lui   $at, 0x800e
/* 14CD24 801A6CB4 24040003 */  li    $a0, 3
/* 14CD28 801A6CB8 00084880 */  sll   $t1, $t0, 2
/* 14CD2C 801A6CBC 00A95021 */  addu  $t2, $a1, $t1
/* 14CD30 801A6CC0 E5540000 */  swc1  $f20, ($t2)
/* 14CD34 801A6CC4 8C430000 */  lw    $v1, ($v0)
/* 14CD38 801A6CC8 00031880 */  sll   $v1, $v1, 2
/* 14CD3C 801A6CCC 00A35821 */  addu  $t3, $a1, $v1
/* 14CD40 801A6CD0 C5640000 */  lwc1  $f4, ($t3)
/* 14CD44 801A6CD4 00230821 */  addu  $at, $at, $v1
/* 14CD48 801A6CD8 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14CD4C 801A6CDC 8C4C0000 */  lw    $t4, ($v0)
/* 14CD50 801A6CE0 3C01801D */  lui   $at, %hi(D_801CE00C) # $at, 0x801d
/* 14CD54 801A6CE4 C426E00C */  lwc1  $f6, %lo(D_801CE00C)($at)
/* 14CD58 801A6CE8 3C01800E */  lui   $at, 0x800e
/* 14CD5C 801A6CEC 000C6880 */  sll   $t5, $t4, 2
/* 14CD60 801A6CF0 002D0821 */  addu  $at, $at, $t5
/* 14CD64 801A6CF4 E4266850 */  swc1  $f6, 0x6850($at)
/* 14CD68 801A6CF8 8C4F0000 */  lw    $t7, ($v0)
/* 14CD6C 801A6CFC 3C01C040 */  li    $at, 0xC0400000 # -3.000000
/* 14CD70 801A6D00 44814000 */  mtc1  $at, $f8
/* 14CD74 801A6D04 3C01800E */  lui   $at, 0x800e
/* 14CD78 801A6D08 000F7080 */  sll   $t6, $t7, 2
/* 14CD7C 801A6D0C 002E0821 */  addu  $at, $at, $t6
/* 14CD80 801A6D10 E4283210 */  swc1  $f8, 0x3210($at)
/* 14CD84 801A6D14 8C580000 */  lw    $t8, ($v0)
/* 14CD88 801A6D18 3C01800E */  lui   $at, 0x800e
/* 14CD8C 801A6D1C 0018C880 */  sll   $t9, $t8, 2
/* 14CD90 801A6D20 00390821 */  addu  $at, $at, $t9
/* 14CD94 801A6D24 E4343750 */  swc1  $f20, 0x3750($at)
/* 14CD98 801A6D28 8C480000 */  lw    $t0, ($v0)
/* 14CD9C 801A6D2C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 14CDA0 801A6D30 44815000 */  mtc1  $at, $f10
/* 14CDA4 801A6D34 3C01800E */  lui   $at, 0x800e
/* 14CDA8 801A6D38 00084880 */  sll   $t1, $t0, 2
/* 14CDAC 801A6D3C 00290821 */  addu  $at, $at, $t1
/* 14CDB0 801A6D40 0C002DAF */  jal   finish_current_thread
/* 14CDB4 801A6D44 E42A3C90 */   swc1  $f10, 0x3c90($at)
/* 14CDB8 801A6D48 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 14CDBC 801A6D4C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 14CDC0 801A6D50 3C01801D */  lui   $at, %hi(D_801CE010) # $at, 0x801d
/* 14CDC4 801A6D54 C430E010 */  lwc1  $f16, %lo(D_801CE010)($at)
/* 14CDC8 801A6D58 8D4B0000 */  lw    $t3, ($t2)
/* 14CDCC 801A6D5C 3C01800E */  lui   $at, 0x800e
/* 14CDD0 801A6D60 2404000C */  li    $a0, 12
/* 14CDD4 801A6D64 000B6080 */  sll   $t4, $t3, 2
/* 14CDD8 801A6D68 002C0821 */  addu  $at, $at, $t4
/* 14CDDC 801A6D6C 0C002DAF */  jal   finish_current_thread
/* 14CDE0 801A6D70 E4303750 */   swc1  $f16, 0x3750($at)
/* 14CDE4 801A6D74 8E0D0094 */  lw    $t5, 0x94($s0)
/* 14CDE8 801A6D78 4406A000 */  mfc1  $a2, $f20
/* 14CDEC 801A6D7C 4407A000 */  mfc1  $a3, $f20
/* 14CDF0 801A6D80 8DA50018 */  lw    $a1, 0x18($t5)
/* 14CDF4 801A6D84 E7B40010 */  swc1  $f20, 0x10($sp)
/* 14CDF8 801A6D88 0C03F55C */  jal   func_800FD570
/* 14CDFC 801A6D8C 00002025 */   move  $a0, $zero
/* 14CE00 801A6D90 8E0F0094 */  lw    $t7, 0x94($s0)
/* 14CE04 801A6D94 3C018000 */  lui   $at, 0x8000
/* 14CE08 801A6D98 8DE4001C */  lw    $a0, 0x1c($t7)
/* 14CE0C 801A6D9C 50810004 */  beql  $a0, $at, .L801A6DB0_ovl7
/* 14CE10 801A6DA0 240E0001 */   li    $t6, 1
/* 14CE14 801A6DA4 0C029D9E */  jal   play_sound
/* 14CE18 801A6DA8 00000000 */   nop   
/* 14CE1C 801A6DAC 240E0001 */  li    $t6, 1
.L801A6DB0_ovl7:
/* 14CE20 801A6DB0 A20E0040 */  sb    $t6, 0x40($s0)
/* 14CE24 801A6DB4 0C068FA0 */  jal   func_801A3E80
/* 14CE28 801A6DB8 8FA40030 */   lw    $a0, 0x30($sp)
/* 14CE2C 801A6DBC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 14CE30 801A6DC0 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 14CE34 801A6DC4 8FB00028 */  lw    $s0, 0x28($sp)
/* 14CE38 801A6DC8 03E00008 */  jr    $ra
/* 14CE3C 801A6DCC 27BD0030 */   addiu $sp, $sp, 0x30

.type func_801A6C10_ovl7, @function
.size func_801A6C10_ovl7, . - func_801A6C10_ovl7

glabel func_801A6DD0_ovl7
/* 14CE40 801A6DD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14CE44 801A6DD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14CE48 801A6DD8 0C06835D */  jal   func_801A0D74_ovl7
/* 14CE4C 801A6DDC 00000000 */   nop   
/* 14CE50 801A6DE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14CE54 801A6DE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 14CE58 801A6DE8 03E00008 */  jr    $ra
/* 14CE5C 801A6DEC 00000000 */   nop   

.type func_801A6DD0_ovl7, @function
.size func_801A6DD0_ovl7, . - func_801A6DD0_ovl7

glabel func_801A6DF0_ovl7
/* 14CE60 801A6DF0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 14CE64 801A6DF4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14CE68 801A6DF8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 14CE6C 801A6DFC AFBF001C */  sw    $ra, 0x1c($sp)
/* 14CE70 801A6E00 AFA40028 */  sw    $a0, 0x28($sp)
/* 14CE74 801A6E04 8DCF0000 */  lw    $t7, ($t6)
/* 14CE78 801A6E08 3C19800E */  lui   $t9, 0x800e
/* 14CE7C 801A6E0C 000FC080 */  sll   $t8, $t7, 2
/* 14CE80 801A6E10 0338C821 */  addu  $t9, $t9, $t8
/* 14CE84 801A6E14 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 14CE88 801A6E18 0C066DF6 */  jal   func_8019B7D8_ovl7
/* 14CE8C 801A6E1C AFB90024 */   sw    $t9, 0x24($sp)
/* 14CE90 801A6E20 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 14CE94 801A6E24 0C02BB30 */  jal   func_800AECC0
/* 14CE98 801A6E28 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 14CE9C 801A6E2C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 14CEA0 801A6E30 0C02BB48 */  jal   func_800AED20
/* 14CEA4 801A6E34 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 14CEA8 801A6E38 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14CEAC 801A6E3C 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 14CEB0 801A6E40 8D020000 */  lw    $v0, ($t0)
/* 14CEB4 801A6E44 44806000 */  mtc1  $zero, $f12
/* 14CEB8 801A6E48 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 14CEBC 801A6E4C 8C490000 */  lw    $t1, ($v0)
/* 14CEC0 801A6E50 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 14CEC4 801A6E54 3C01801D */  lui   $at, %hi(D_801CE014) # $at, 0x801d
/* 14CEC8 801A6E58 00095080 */  sll   $t2, $t1, 2
/* 14CECC 801A6E5C C42EE014 */  lwc1  $f14, %lo(D_801CE014)($at)
/* 14CED0 801A6E60 008A5821 */  addu  $t3, $a0, $t2
/* 14CED4 801A6E64 E56C0000 */  swc1  $f12, ($t3)
/* 14CED8 801A6E68 8C430000 */  lw    $v1, ($v0)
/* 14CEDC 801A6E6C 3C01800E */  lui   $at, 0x800e
/* 14CEE0 801A6E70 3C06800E */  lui   $a2, %hi(D_800E3910) # $a2, 0x800e
/* 14CEE4 801A6E74 00031880 */  sll   $v1, $v1, 2
/* 14CEE8 801A6E78 00836021 */  addu  $t4, $a0, $v1
/* 14CEEC 801A6E7C C5840000 */  lwc1  $f4, ($t4)
/* 14CEF0 801A6E80 00230821 */  addu  $at, $at, $v1
/* 14CEF4 801A6E84 24C63910 */  addiu $a2, %lo(D_800E3910) # addiu $a2, $a2, 0x3910
/* 14CEF8 801A6E88 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 14CEFC 801A6E8C 8C4D0000 */  lw    $t5, ($v0)
/* 14CF00 801A6E90 3C01800E */  lui   $at, 0x800e
/* 14CF04 801A6E94 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 14CF08 801A6E98 000D7080 */  sll   $t6, $t5, 2
/* 14CF0C 801A6E9C 002E0821 */  addu  $at, $at, $t6
/* 14CF10 801A6EA0 E42E6850 */  swc1  $f14, 0x6850($at)
/* 14CF14 801A6EA4 8C4F0000 */  lw    $t7, ($v0)
/* 14CF18 801A6EA8 3C01800E */  lui   $at, 0x800e
/* 14CF1C 801A6EAC 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 14CF20 801A6EB0 000FC080 */  sll   $t8, $t7, 2
/* 14CF24 801A6EB4 00D8C821 */  addu  $t9, $a2, $t8
/* 14CF28 801A6EB8 E72C0000 */  swc1  $f12, ($t9)
/* 14CF2C 801A6EBC 8C430000 */  lw    $v1, ($v0)
/* 14CF30 801A6EC0 00031880 */  sll   $v1, $v1, 2
/* 14CF34 801A6EC4 00C34821 */  addu  $t1, $a2, $v1
/* 14CF38 801A6EC8 C5200000 */  lwc1  $f0, ($t1)
/* 14CF3C 801A6ECC 00230821 */  addu  $at, $at, $v1
/* 14CF40 801A6ED0 E4203750 */  swc1  $f0, 0x3750($at)
/* 14CF44 801A6ED4 8C4A0000 */  lw    $t2, ($v0)
/* 14CF48 801A6ED8 3C01800E */  lui   $at, 0x800e
/* 14CF4C 801A6EDC 000A5880 */  sll   $t3, $t2, 2
/* 14CF50 801A6EE0 002B0821 */  addu  $at, $at, $t3
/* 14CF54 801A6EE4 E4203590 */  swc1  $f0, 0x3590($at)
/* 14CF58 801A6EE8 8C4C0000 */  lw    $t4, ($v0)
/* 14CF5C 801A6EEC 3C01800E */  lui   $at, 0x800e
/* 14CF60 801A6EF0 000C6880 */  sll   $t5, $t4, 2
/* 14CF64 801A6EF4 002D0821 */  addu  $at, $at, $t5
/* 14CF68 801A6EF8 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 14CF6C 801A6EFC 8C4E0000 */  lw    $t6, ($v0)
/* 14CF70 801A6F00 3C01800E */  lui   $at, 0x800e
/* 14CF74 801A6F04 000E7880 */  sll   $t7, $t6, 2
/* 14CF78 801A6F08 002F0821 */  addu  $at, $at, $t7
/* 14CF7C 801A6F0C E4203210 */  swc1  $f0, 0x3210($at)
/* 14CF80 801A6F10 8C580000 */  lw    $t8, ($v0)
/* 14CF84 801A6F14 3C01800E */  lui   $at, 0x800e
/* 14CF88 801A6F18 0018C880 */  sll   $t9, $t8, 2
/* 14CF8C 801A6F1C 00390821 */  addu  $at, $at, $t9
/* 14CF90 801A6F20 E4203050 */  swc1  $f0, 0x3050($at)
/* 14CF94 801A6F24 8C490000 */  lw    $t1, ($v0)
/* 14CF98 801A6F28 3C01800E */  lui   $at, 0x800e
/* 14CF9C 801A6F2C 00095080 */  sll   $t2, $t1, 2
/* 14CFA0 801A6F30 00EA5821 */  addu  $t3, $a3, $t2
/* 14CFA4 801A6F34 E56E0000 */  swc1  $f14, ($t3)
/* 14CFA8 801A6F38 8C430000 */  lw    $v1, ($v0)
/* 14CFAC 801A6F3C 8FAF0028 */  lw    $t7, 0x28($sp)
/* 14CFB0 801A6F40 00031880 */  sll   $v1, $v1, 2
/* 14CFB4 801A6F44 00E36021 */  addu  $t4, $a3, $v1
/* 14CFB8 801A6F48 C5820000 */  lwc1  $f2, ($t4)
/* 14CFBC 801A6F4C 00230821 */  addu  $at, $at, $v1
/* 14CFC0 801A6F50 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 14CFC4 801A6F54 8C4D0000 */  lw    $t5, ($v0)
/* 14CFC8 801A6F58 3C01800E */  lui   $at, 0x800e
/* 14CFCC 801A6F5C 000D7080 */  sll   $t6, $t5, 2
/* 14CFD0 801A6F60 002E0821 */  addu  $at, $at, $t6
/* 14CFD4 801A6F64 E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 14CFD8 801A6F68 ADE00048 */  sw    $zero, 0x48($t7)
/* 14CFDC 801A6F6C 8D180000 */  lw    $t8, ($t0)
/* 14CFE0 801A6F70 8FAA0024 */  lw    $t2, 0x24($sp)
/* 14CFE4 801A6F74 3C01800E */  lui   $at, 0x800e
/* 14CFE8 801A6F78 8F190000 */  lw    $t9, ($t8)
/* 14CFEC 801A6F7C 00194880 */  sll   $t1, $t9, 2
/* 14CFF0 801A6F80 00290821 */  addu  $at, $at, $t1
/* 14CFF4 801A6F84 AC20F310 */  sw    $zero, -0xcf0($at)
/* 14CFF8 801A6F88 8D450034 */  lw    $a1, 0x34($t2)
/* 14CFFC 801A6F8C 10A00003 */  beqz  $a1, .L801A6F9C_ovl7
/* 14D000 801A6F90 00000000 */   nop   
/* 14D004 801A6F94 0C0288B5 */  jal   func_800A22D4
/* 14D008 801A6F98 00A02025 */   move  $a0, $a1
.L801A6F9C_ovl7:
/* 14D00C 801A6F9C 0C0288C0 */  jal   func_800A2300
/* 14D010 801A6FA0 8FA40028 */   lw    $a0, 0x28($sp)
/* 14D014 801A6FA4 44806000 */  mtc1  $zero, $f12
/* 14D018 801A6FA8 8FAB0024 */  lw    $t3, 0x24($sp)
/* 14D01C 801A6FAC 00002025 */  move  $a0, $zero
/* 14D020 801A6FB0 44066000 */  mfc1  $a2, $f12
/* 14D024 801A6FB4 AD600034 */  sw    $zero, 0x34($t3)
/* 14D028 801A6FB8 44076000 */  mfc1  $a3, $f12
/* 14D02C 801A6FBC 24050006 */  li    $a1, 6
/* 14D030 801A6FC0 0C03F55C */  jal   func_800FD570
/* 14D034 801A6FC4 E7AC0010 */   swc1  $f12, 0x10($sp)
/* 14D038 801A6FC8 0C029D9E */  jal   play_sound
/* 14D03C 801A6FCC 24040092 */   li    $a0, 146
/* 14D040 801A6FD0 0C069075 */  jal   func_801A41D4_ovl7
/* 14D044 801A6FD4 8FA40028 */   lw    $a0, 0x28($sp)
/* 14D048 801A6FD8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14D04C 801A6FDC 27BD0028 */  addiu $sp, $sp, 0x28
/* 14D050 801A6FE0 03E00008 */  jr    $ra
/* 14D054 801A6FE4 00000000 */   nop   

.type func_801A6DF0_ovl7, @function
.size func_801A6DF0_ovl7, . - func_801A6DF0_ovl7

glabel func_801A6FE8_ovl7
/* 14D058 801A6FE8 00000000 */  nop   
/* 14D05C 801A6FEC 00000000 */  nop   
/* 14D060 801A6FF0 00000000 */  nop   
/* 14D064 801A6FF4 00000000 */  nop   
/* 14D068 801A6FF8 00000000 */  nop   
/* 14D06C 801A6FFC 00000000 */  nop   

.type func_801A6FE8_ovl7, @function
.size func_801A6FE8_ovl7, . - func_801A6FE8_ovl7
