glabel func_801B3EC8_ovl7
/* 159F38 801B3EC8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 159F3C 801B3ECC AFB00014 */  sw         $s0, 0x14($sp)
/* 159F40 801B3ED0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 159F44 801B3ED4 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 159F48 801B3ED8 8E0E0000 */  lw         $t6, 0x0($s0)
/* 159F4C 801B3EDC AFBF001C */  sw         $ra, 0x1C($sp)
/* 159F50 801B3EE0 AFB10018 */  sw         $s1, 0x18($sp)
/* 159F54 801B3EE4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 159F58 801B3EE8 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 159F5C 801B3EEC 3C08800B */  lui        $t0, %hi(func_800B0F28)
/* 159F60 801B3EF0 000FC080 */  sll        $t8, $t7, 2
/* 159F64 801B3EF4 0338C821 */  addu       $t9, $t9, $t8
/* 159F68 801B3EF8 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 159F6C 801B3EFC 25080F28 */  addiu      $t0, $t0, %lo(func_800B0F28)
/* 159F70 801B3F00 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 159F74 801B3F04 AFB90024 */  sw         $t9, 0x24($sp)
/* 159F78 801B3F08 AC880048 */  sw         $t0, 0x48($a0)
/* 159F7C 801B3F0C 8E020000 */  lw         $v0, 0x0($s0)
/* 159F80 801B3F10 44812000 */  mtc1       $at, $f4
/* 159F84 801B3F14 3C01800F */  lui        $at, %hi(D_800EC660)
/* 159F88 801B3F18 8C490000 */  lw         $t1, 0x0($v0)
/* 159F8C 801B3F1C 44803000 */  mtc1       $zero, $f6
/* 159F90 801B3F20 240D0001 */  addiu      $t5, $zero, 0x1
/* 159F94 801B3F24 00095080 */  sll        $t2, $t1, 2
/* 159F98 801B3F28 002A0821 */  addu       $at, $at, $t2
/* 159F9C 801B3F2C E424C660 */  swc1       $f4, %lo(D_800EC660)($at)
/* 159FA0 801B3F30 8C4B0000 */  lw         $t3, 0x0($v0)
/* 159FA4 801B3F34 3C01800F */  lui        $at, %hi(D_800EC820)
/* 159FA8 801B3F38 000B6080 */  sll        $t4, $t3, 2
/* 159FAC 801B3F3C 002C0821 */  addu       $at, $at, $t4
/* 159FB0 801B3F40 E426C820 */  swc1       $f6, %lo(D_800EC820)($at)
/* 159FB4 801B3F44 8C4E0000 */  lw         $t6, 0x0($v0)
/* 159FB8 801B3F48 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 159FBC 801B3F4C AFA40028 */  sw         $a0, 0x28($sp)
/* 159FC0 801B3F50 000E7880 */  sll        $t7, $t6, 2
/* 159FC4 801B3F54 002F0821 */  addu       $at, $at, $t7
/* 159FC8 801B3F58 0C06AEE8 */  jal        func_801ABBA0_ovl7
/* 159FCC 801B3F5C AC2DC2E0 */   sw        $t5, %lo(D_800EC2E0)($at)
/* 159FD0 801B3F60 8E190000 */  lw         $t9, 0x0($s0)
/* 159FD4 801B3F64 8FA20024 */  lw         $v0, 0x24($sp)
/* 159FD8 801B3F68 3C18801B */  lui        $t8, %hi(func_801B41BC_ovl7)
/* 159FDC 801B3F6C 8F280000 */  lw         $t0, 0x0($t9)
/* 159FE0 801B3F70 3C01800E */  lui        $at, %hi(D_800DF150)
/* 159FE4 801B3F74 271841BC */  addiu      $t8, $t8, %lo(func_801B41BC_ovl7)
/* 159FE8 801B3F78 00084880 */  sll        $t1, $t0, 2
/* 159FEC 801B3F7C 00290821 */  addu       $at, $at, $t1
/* 159FF0 801B3F80 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* 159FF4 801B3F84 3C0A801D */  lui        $t2, %hi(D_801CB500_ovl7)
/* 159FF8 801B3F88 254AB500 */  addiu      $t2, $t2, %lo(D_801CB500_ovl7)
/* 159FFC 801B3F8C AC400048 */  sw         $zero, 0x48($v0)
/* 15A000 801B3F90 AC4A0098 */  sw         $t2, 0x98($v0)
/* 15A004 801B3F94 8E0B0000 */  lw         $t3, 0x0($s0)
/* 15A008 801B3F98 3C11800F */  lui        $s1, %hi(D_800E8920)
/* 15A00C 801B3F9C 26318920 */  addiu      $s1, $s1, %lo(D_800E8920)
/* 15A010 801B3FA0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 15A014 801B3FA4 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 15A018 801B3FA8 000C7080 */  sll        $t6, $t4, 2
/* 15A01C 801B3FAC 022E6821 */  addu       $t5, $s1, $t6
/* 15A020 801B3FB0 ADA00000 */  sw         $zero, 0x0($t5)
/* 15A024 801B3FB4 0C02BB30 */  jal        func_800AECC0
/* 15A028 801B3FB8 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 15A02C 801B3FBC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 15A030 801B3FC0 0C02BB48 */  jal        func_800AED20
/* 15A034 801B3FC4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 15A038 801B3FC8 3C040001 */  lui        $a0, (0x100B2 >> 16)
/* 15A03C 801B3FCC 0C02A806 */  jal        func_800AA018
/* 15A040 801B3FD0 348400B2 */   ori       $a0, $a0, (0x100B2 & 0xFFFF)
/* 15A044 801B3FD4 8E020000 */  lw         $v0, 0x0($s0)
/* 15A048 801B3FD8 3C04800E */  lui        $a0, %hi(D_800E6A10)
/* 15A04C 801B3FDC 3C01801D */  lui        $at, %hi(D_801CE328_ovl7)
/* 15A050 801B3FE0 8C430000 */  lw         $v1, 0x0($v0)
/* 15A054 801B3FE4 C420E328 */  lwc1       $f0, %lo(D_801CE328_ovl7)($at)
/* 15A058 801B3FE8 24846A10 */  addiu      $a0, $a0, %lo(D_800E6A10)
/* 15A05C 801B3FEC 00031880 */  sll        $v1, $v1, 2
/* 15A060 801B3FF0 00837821 */  addu       $t7, $a0, $v1
/* 15A064 801B3FF4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 15A068 801B3FF8 44815000 */  mtc1       $at, $f10
/* 15A06C 801B3FFC C5E80000 */  lwc1       $f8, 0x0($t7)
/* 15A070 801B4000 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 15A074 801B4004 00230821 */  addu       $at, $at, $v1
/* 15A078 801B4008 460A4402 */  mul.s      $f16, $f8, $f10
/* 15A07C 801B400C 44802000 */  mtc1       $zero, $f4
/* 15A080 801B4010 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 15A084 801B4014 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 15A088 801B4018 44801000 */  mtc1       $zero, $f2
/* 15A08C 801B401C 3C07800E */  lui        $a3, %hi(D_800E3750)
/* 15A090 801B4020 24E73750 */  addiu      $a3, $a3, %lo(D_800E3750)
/* 15A094 801B4024 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* 15A098 801B4028 8C430000 */  lw         $v1, 0x0($v0)
/* 15A09C 801B402C 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 15A0A0 801B4030 44814000 */  mtc1       $at, $f8
/* 15A0A4 801B4034 00031880 */  sll        $v1, $v1, 2
/* 15A0A8 801B4038 0083C821 */  addu       $t9, $a0, $v1
/* 15A0AC 801B403C C7320000 */  lwc1       $f18, 0x0($t9)
/* 15A0B0 801B4040 00C34021 */  addu       $t0, $a2, $v1
/* 15A0B4 801B4044 3C01800E */  lui        $at, %hi(D_800E6850)
/* 15A0B8 801B4048 46049182 */  mul.s      $f6, $f18, $f4
/* 15A0BC 801B404C E5060000 */  swc1       $f6, 0x0($t0)
/* 15A0C0 801B4050 8C580000 */  lw         $t8, 0x0($v0)
/* 15A0C4 801B4054 00184880 */  sll        $t1, $t8, 2
/* 15A0C8 801B4058 00290821 */  addu       $at, $at, $t1
/* 15A0CC 801B405C E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* 15A0D0 801B4060 8C4A0000 */  lw         $t2, 0x0($v0)
/* 15A0D4 801B4064 3C01800E */  lui        $at, %hi(D_800E3210)
/* 15A0D8 801B4068 000A5880 */  sll        $t3, $t2, 2
/* 15A0DC 801B406C 002B0821 */  addu       $at, $at, $t3
/* 15A0E0 801B4070 E4223210 */  swc1       $f2, %lo(D_800E3210)($at)
/* 15A0E4 801B4074 8C4C0000 */  lw         $t4, 0x0($v0)
/* 15A0E8 801B4078 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 15A0EC 801B407C 44815000 */  mtc1       $at, $f10
/* 15A0F0 801B4080 000C7080 */  sll        $t6, $t4, 2
/* 15A0F4 801B4084 00EE6821 */  addu       $t5, $a3, $t6
/* 15A0F8 801B4088 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 15A0FC 801B408C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 15A100 801B4090 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 15A104 801B4094 000FC880 */  sll        $t9, $t7, 2
/* 15A108 801B4098 00390821 */  addu       $at, $at, $t9
/* 15A10C 801B409C E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
/* 15A110 801B40A0 8C430000 */  lw         $v1, 0x0($v0)
/* 15A114 801B40A4 00031880 */  sll        $v1, $v1, 2
/* 15A118 801B40A8 02234021 */  addu       $t0, $s1, $v1
/* 15A11C 801B40AC 8D180000 */  lw         $t8, 0x0($t0)
/* 15A120 801B40B0 57000012 */  bnel       $t8, $zero, .L801B40FC_ovl7
/* 15A124 801B40B4 00E35821 */   addu      $t3, $a3, $v1
.L801B40B8_ovl7:
/* 15A128 801B40B8 0C002DAF */  jal        finish_current_thread
/* 15A12C 801B40BC 24040001 */   addiu     $a0, $zero, 0x1
/* 15A130 801B40C0 8E020000 */  lw         $v0, 0x0($s0)
/* 15A134 801B40C4 8C430000 */  lw         $v1, 0x0($v0)
/* 15A138 801B40C8 00031880 */  sll        $v1, $v1, 2
/* 15A13C 801B40CC 02234821 */  addu       $t1, $s1, $v1
/* 15A140 801B40D0 8D2A0000 */  lw         $t2, 0x0($t1)
/* 15A144 801B40D4 1140FFF8 */  beqz       $t2, .L801B40B8_ovl7
/* 15A148 801B40D8 00000000 */   nop
/* 15A14C 801B40DC 3C01801D */  lui        $at, %hi(D_801CE330_ovl7)
/* 15A150 801B40E0 3C07800E */  lui        $a3, %hi(D_800E3750)
/* 15A154 801B40E4 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 15A158 801B40E8 44801000 */  mtc1       $zero, $f2
/* 15A15C 801B40EC 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 15A160 801B40F0 24E73750 */  addiu      $a3, $a3, %lo(D_800E3750)
/* 15A164 801B40F4 C420E330 */  lwc1       $f0, %lo(D_801CE330_ovl7)($at)
/* 15A168 801B40F8 00E35821 */  addu       $t3, $a3, $v1
.L801B40FC_ovl7:
/* 15A16C 801B40FC E5620000 */  swc1       $f2, 0x0($t3)
/* 15A170 801B4100 8C430000 */  lw         $v1, 0x0($v0)
/* 15A174 801B4104 3C01800E */  lui        $at, %hi(D_800E3210)
/* 15A178 801B4108 3C040001 */  lui        $a0, (0x100AC >> 16)
/* 15A17C 801B410C 00031880 */  sll        $v1, $v1, 2
/* 15A180 801B4110 00E36021 */  addu       $t4, $a3, $v1
/* 15A184 801B4114 C5900000 */  lwc1       $f16, 0x0($t4)
/* 15A188 801B4118 00230821 */  addu       $at, $at, $v1
/* 15A18C 801B411C 348400AC */  ori        $a0, $a0, (0x100AC & 0xFFFF)
/* 15A190 801B4120 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* 15A194 801B4124 8C4E0000 */  lw         $t6, 0x0($v0)
/* 15A198 801B4128 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 15A19C 801B412C 24050001 */  addiu      $a1, $zero, 0x1
/* 15A1A0 801B4130 000E6880 */  sll        $t5, $t6, 2
/* 15A1A4 801B4134 002D0821 */  addu       $at, $at, $t5
/* 15A1A8 801B4138 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
/* 15A1AC 801B413C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 15A1B0 801B4140 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 15A1B4 801B4144 000FC880 */  sll        $t9, $t7, 2
/* 15A1B8 801B4148 00D94021 */  addu       $t0, $a2, $t9
/* 15A1BC 801B414C E5020000 */  swc1       $f2, 0x0($t0)
/* 15A1C0 801B4150 8C430000 */  lw         $v1, 0x0($v0)
/* 15A1C4 801B4154 00031880 */  sll        $v1, $v1, 2
/* 15A1C8 801B4158 00C3C021 */  addu       $t8, $a2, $v1
/* 15A1CC 801B415C C7120000 */  lwc1       $f18, 0x0($t8)
/* 15A1D0 801B4160 00230821 */  addu       $at, $at, $v1
/* 15A1D4 801B4164 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
/* 15A1D8 801B4168 8C490000 */  lw         $t1, 0x0($v0)
/* 15A1DC 801B416C 3C01800E */  lui        $at, %hi(D_800E6850)
/* 15A1E0 801B4170 00095080 */  sll        $t2, $t1, 2
/* 15A1E4 801B4174 002A0821 */  addu       $at, $at, $t2
/* 15A1E8 801B4178 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
/* 15A1EC 801B417C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 15A1F0 801B4180 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 15A1F4 801B4184 000B6080 */  sll        $t4, $t3, 2
/* 15A1F8 801B4188 002C0821 */  addu       $at, $at, $t4
/* 15A1FC 801B418C 0C02AA19 */  jal        func_800AA864
/* 15A200 801B4190 AC20C2E0 */   sw        $zero, %lo(D_800EC2E0)($at)
/* 15A204 801B4194 8FAD0024 */  lw         $t5, 0x24($sp)
/* 15A208 801B4198 240E0001 */  addiu      $t6, $zero, 0x1
/* 15A20C 801B419C A1AE0040 */  sb         $t6, 0x40($t5)
/* 15A210 801B41A0 0C06B047 */  jal        func_801AC11C_ovl7
/* 15A214 801B41A4 8FA40028 */   lw        $a0, 0x28($sp)
/* 15A218 801B41A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 15A21C 801B41AC 8FB00014 */  lw         $s0, 0x14($sp)
/* 15A220 801B41B0 8FB10018 */  lw         $s1, 0x18($sp)
/* 15A224 801B41B4 03E00008 */  jr         $ra
/* 15A228 801B41B8 27BD0028 */   addiu     $sp, $sp, 0x28
