glabel func_80161058_ovl3
/* C1A98 80161058 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C1A9C 8016105C AFB20020 */  sw         $s2, 0x20($sp)
/* C1AA0 80161060 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* C1AA4 80161064 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* C1AA8 80161068 8E4F0000 */  lw         $t7, 0x0($s2)
/* C1AAC 8016106C AFBF0024 */  sw         $ra, 0x24($sp)
/* C1AB0 80161070 AFB1001C */  sw         $s1, 0x1C($sp)
/* C1AB4 80161074 AFB00018 */  sw         $s0, 0x18($sp)
glabel func_80161078_ovl5
/* C1AB8 80161078 8DF80000 */  lw         $t8, 0x0($t7)
/* C1ABC 8016107C 3C01800E */  lui        $at, %hi(D_800E0650)
/* C1AC0 80161080 240E0001 */  addiu      $t6, $zero, 0x1
/* C1AC4 80161084 0018C880 */  sll        $t9, $t8, 2
/* C1AC8 80161088 00390821 */  addu       $at, $at, $t9
/* C1ACC 8016108C 0C058738 */  jal        func_80161CE0_ovl3
/* C1AD0 80161090 AC2E0650 */   sw        $t6, %lo(D_800E0650)($at)
/* C1AD4 80161094 00002025 */  or         $a0, $zero, $zero
/* C1AD8 80161098 24050000 */  addiu      $a1, $zero, 0x0
/* C1ADC 8016109C 0C0587B0 */  jal        func_80161EC0_ovl3
/* C1AE0 801610A0 3C0641A0 */   lui       $a2, (0x41A00000 >> 16)
/* C1AE4 801610A4 8E430000 */  lw         $v1, 0x0($s2)
/* C1AE8 801610A8 3C09800B */  lui        $t1, %hi(func_800B4954)
/* C1AEC 801610AC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* C1AF0 801610B0 8C6A0000 */  lw         $t2, 0x0($v1)
/* C1AF4 801610B4 25294954 */  addiu      $t1, $t1, %lo(func_800B4954)
/* C1AF8 801610B8 3C0C8016 */  lui        $t4, %hi(func_801614D8_ovl3)
/* C1AFC 801610BC 000A5880 */  sll        $t3, $t2, 2
/* C1B00 801610C0 002B0821 */  addu       $at, $at, $t3
/* C1B04 801610C4 AC29EF90 */  sw         $t1, %lo(D_800DEF90)($at)
/* C1B08 801610C8 8C6D0000 */  lw         $t5, 0x0($v1)
/* C1B0C 801610CC 3C01800E */  lui        $at, %hi(D_800DF150)
/* C1B10 801610D0 258C14D8 */  addiu      $t4, $t4, %lo(func_801614D8_ovl3)
/* C1B14 801610D4 000D7880 */  sll        $t7, $t5, 2
/* C1B18 801610D8 002F0821 */  addu       $at, $at, $t7
/* C1B1C 801610DC AC2CF150 */  sw         $t4, %lo(D_800DF150)($at)
/* C1B20 801610E0 8C6E0000 */  lw         $t6, 0x0($v1)
/* C1B24 801610E4 3C01800E */  lui        $at, %hi(D_800E0490)
/* C1B28 801610E8 3C188019 */  lui        $t8, %hi(D_80192F48_ovl3)
/* C1B2C 801610EC 000EC880 */  sll        $t9, $t6, 2
/* C1B30 801610F0 00390821 */  addu       $at, $at, $t9
/* C1B34 801610F4 27182F48 */  addiu      $t8, $t8, %lo(D_80192F48_ovl3)
/* C1B38 801610F8 AC380490 */  sw         $t8, %lo(D_800E0490)($at)
/* C1B3C 801610FC 8C670000 */  lw         $a3, 0x0($v1)
/* C1B40 80161100 3C10800E */  lui        $s0, %hi(D_800E0D50)
/* C1B44 80161104 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
/* C1B48 80161108 24E8FFFC */  addiu      $t0, $a3, -0x4
/* C1B4C 8016110C 00085880 */  sll        $t3, $t0, 2
/* C1B50 80161110 01685823 */  subu       $t3, $t3, $t0
/* C1B54 80161114 000B58C0 */  sll        $t3, $t3, 3
/* C1B58 80161118 01685823 */  subu       $t3, $t3, $t0
/* C1B5C 8016111C 3C0F801A */  lui        $t7, %hi(D_801982F8_ovl3)
/* C1B60 80161120 3C0D8019 */  lui        $t5, %hi(D_80197F60_ovl3)
/* C1B64 80161124 00075080 */  sll        $t2, $a3, 2
/* C1B68 80161128 020A4821 */  addu       $t1, $s0, $t2
/* C1B6C 8016112C 25AD7F60 */  addiu      $t5, $t5, %lo(D_80197F60_ovl3)
/* C1B70 80161130 25EF82F8 */  addiu      $t7, $t7, %lo(D_801982F8_ovl3)
/* C1B74 80161134 000B5880 */  sll        $t3, $t3, 2
/* C1B78 80161138 00086140 */  sll        $t4, $t0, 5
/* C1B7C 8016113C 018F3021 */  addu       $a2, $t4, $t7
/* C1B80 80161140 016D2821 */  addu       $a1, $t3, $t5
/* C1B84 80161144 0C055192 */  jal        func_80154648_ovl3
/* C1B88 80161148 8D240000 */   lw        $a0, 0x0($t1)
/* C1B8C 8016114C 8E4E0000 */  lw         $t6, 0x0($s2)
/* C1B90 80161150 3C11800E */  lui        $s1, %hi(D_800E09D0)
/* C1B94 80161154 263109D0 */  addiu      $s1, $s1, %lo(D_800E09D0)
/* C1B98 80161158 8DD80000 */  lw         $t8, 0x0($t6)
/* C1B9C 8016115C 0018C880 */  sll        $t9, $t8, 2
/* C1BA0 80161160 02195021 */  addu       $t2, $s0, $t9
/* C1BA4 80161164 8D490000 */  lw         $t1, 0x0($t2)
/* C1BA8 80161168 00095880 */  sll        $t3, $t1, 2
/* C1BAC 8016116C 022B6821 */  addu       $t5, $s1, $t3
/* C1BB0 80161170 0C02BB30 */  jal        func_800AECC0
/* C1BB4 80161174 C5AC0000 */   lwc1      $f12, 0x0($t5)
/* C1BB8 80161178 8E4C0000 */  lw         $t4, 0x0($s2)
/* C1BBC 8016117C 8D8F0000 */  lw         $t7, 0x0($t4)
/* C1BC0 80161180 000F7080 */  sll        $t6, $t7, 2
/* C1BC4 80161184 020EC021 */  addu       $t8, $s0, $t6
/* C1BC8 80161188 8F190000 */  lw         $t9, 0x0($t8)
/* C1BCC 8016118C 00195080 */  sll        $t2, $t9, 2
/* C1BD0 80161190 022A4821 */  addu       $t1, $s1, $t2
/* C1BD4 80161194 0C02BB48 */  jal        func_800AED20
/* C1BD8 80161198 C52C0000 */   lwc1      $f12, 0x0($t1)
/* C1BDC 8016119C 8E430000 */  lw         $v1, 0x0($s2)
/* C1BE0 801611A0 3C11800F */  lui        $s1, %hi(D_800E8920)
/* C1BE4 801611A4 26318920 */  addiu      $s1, $s1, %lo(D_800E8920)
glabel func_801611A8_ovl5
/* C1BE8 801611A8 8C670000 */  lw         $a3, 0x0($v1)
/* C1BEC 801611AC 3C018019 */  lui        $at, %hi(D_801970E8_ovl3)
/* C1BF0 801611B0 C42070E8 */  lwc1       $f0, %lo(D_801970E8_ovl3)($at)
/* C1BF4 801611B4 00073880 */  sll        $a3, $a3, 2
/* C1BF8 801611B8 02075821 */  addu       $t3, $s0, $a3
/* C1BFC 801611BC 8D6D0000 */  lw         $t5, 0x0($t3)
/* C1C00 801611C0 0227C021 */  addu       $t8, $s1, $a3
/* C1C04 801611C4 3C02800F */  lui        $v0, %hi(D_800E8AE0)
/* C1C08 801611C8 000D6080 */  sll        $t4, $t5, 2
/* C1C0C 801611CC 022C7821 */  addu       $t7, $s1, $t4
/* C1C10 801611D0 8DEE0000 */  lw         $t6, 0x0($t7)
/* C1C14 801611D4 24428AE0 */  addiu      $v0, $v0, %lo(D_800E8AE0)
/* C1C18 801611D8 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* C1C1C 801611DC AF0E0000 */  sw         $t6, 0x0($t8)
/* C1C20 801611E0 8C670000 */  lw         $a3, 0x0($v1)
/* C1C24 801611E4 3C040002 */  lui        $a0, (0x20040 >> 16)
/* C1C28 801611E8 34840040 */  ori        $a0, $a0, (0x20040 & 0xFFFF)
/* C1C2C 801611EC 00073880 */  sll        $a3, $a3, 2
/* C1C30 801611F0 0207C821 */  addu       $t9, $s0, $a3
/* C1C34 801611F4 8F2A0000 */  lw         $t2, 0x0($t9)
.L801611F8_ovl5:
/* C1C38 801611F8 00476021 */  addu       $t4, $v0, $a3
/* C1C3C 801611FC 24050021 */  addiu      $a1, $zero, 0x21
/* C1C40 80161200 000A4880 */  sll        $t1, $t2, 2
/* C1C44 80161204 00495821 */  addu       $t3, $v0, $t1
/* C1C48 80161208 8D6D0000 */  lw         $t5, 0x0($t3)
/* C1C4C 8016120C 24060010 */  addiu      $a2, $zero, 0x10
/* C1C50 80161210 AD8D0000 */  sw         $t5, 0x0($t4)
/* C1C54 80161214 8C6F0000 */  lw         $t7, 0x0($v1)
/* C1C58 80161218 000F7080 */  sll        $t6, $t7, 2
/* C1C5C 8016121C 002E0821 */  addu       $at, $at, $t6
/* C1C60 80161220 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* C1C64 80161224 8C780000 */  lw         $t8, 0x0($v1)
/* C1C68 80161228 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* C1C6C 8016122C 0018C880 */  sll        $t9, $t8, 2
/* C1C70 80161230 00390821 */  addu       $at, $at, $t9
/* C1C74 80161234 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* C1C78 80161238 8C6A0000 */  lw         $t2, 0x0($v1)
/* C1C7C 8016123C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* C1C80 80161240 000A4880 */  sll        $t1, $t2, 2
/* C1C84 80161244 00290821 */  addu       $at, $at, $t1
/* C1C88 80161248 0C02A619 */  jal        func_800A9864
/* C1C8C 8016124C E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* C1C90 80161250 8E430000 */  lw         $v1, 0x0($s2)
/* C1C94 80161254 3C01800F */  lui        $at, %hi(D_800EA360)
/* C1C98 80161258 27A50030 */  addiu      $a1, $sp, 0x30
/* C1C9C 8016125C 8C6B0000 */  lw         $t3, 0x0($v1)
/* C1CA0 80161260 24040034 */  addiu      $a0, $zero, 0x34
/* C1CA4 80161264 000B6880 */  sll        $t5, $t3, 2
/* C1CA8 80161268 002D0821 */  addu       $at, $at, $t5
/* C1CAC 8016126C AC25A360 */  sw         $a1, %lo(D_800EA360)($at)
/* C1CB0 80161270 8C6C0000 */  lw         $t4, 0x0($v1)
/* C1CB4 80161274 000C7880 */  sll        $t7, $t4, 2
/* C1CB8 80161278 022F7021 */  addu       $t6, $s1, $t7
/* C1CBC 8016127C 8DD80000 */  lw         $t8, 0x0($t6)
/* C1CC0 80161280 5300001A */  beql       $t8, $zero, .L801612EC_ovl3
/* C1CC4 80161284 AFA00030 */   sw        $zero, 0x30($sp)
/* C1CC8 80161288 0C029DFA */  jal        func_800A77E8
/* C1CCC 8016128C 27A60034 */   addiu     $a2, $sp, 0x34
/* C1CD0 80161290 24040002 */  addiu      $a0, $zero, 0x2
/* C1CD4 80161294 24050001 */  addiu      $a1, $zero, 0x1
glabel func_80161298_ovl5
/* C1CD8 80161298 0C02A08D */  jal        func_800A8234
/* C1CDC 8016129C 24060011 */   addiu     $a2, $zero, 0x11
/* C1CE0 801612A0 8E590000 */  lw         $t9, 0x0($s2)
/* C1CE4 801612A4 3C01800F */  lui        $at, %hi(D_800EA520)
/* C1CE8 801612A8 24040002 */  addiu      $a0, $zero, 0x2
/* C1CEC 801612AC 8F2A0000 */  lw         $t2, 0x0($t9)
/* C1CF0 801612B0 24050001 */  addiu      $a1, $zero, 0x1
/* C1CF4 801612B4 24060012 */  addiu      $a2, $zero, 0x12
/* C1CF8 801612B8 000A4880 */  sll        $t1, $t2, 2
/* C1CFC 801612BC 00290821 */  addu       $at, $at, $t1
/* C1D00 801612C0 0C02A08D */  jal        func_800A8234
/* C1D04 801612C4 AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* C1D08 801612C8 8E4B0000 */  lw         $t3, 0x0($s2)
/* C1D0C 801612CC 3C04800F */  lui        $a0, %hi(D_800EB4E0)
glabel func_801612D0_ovl5
/* C1D10 801612D0 2484B4E0 */  addiu      $a0, $a0, %lo(D_800EB4E0)
/* C1D14 801612D4 8D6D0000 */  lw         $t5, 0x0($t3)
/* C1D18 801612D8 000D6080 */  sll        $t4, $t5, 2
/* C1D1C 801612DC 008C7821 */  addu       $t7, $a0, $t4
/* C1D20 801612E0 1000000F */  b          .L80161320_ovl3
/* C1D24 801612E4 ADE20000 */   sw        $v0, 0x0($t7)
/* C1D28 801612E8 AFA00030 */  sw         $zero, 0x30($sp)
.L801612EC_ovl3:
/* C1D2C 801612EC 8C6E0000 */  lw         $t6, 0x0($v1)
/* C1D30 801612F0 3C04800F */  lui        $a0, %hi(D_800EB4E0)
/* C1D34 801612F4 2484B4E0 */  addiu      $a0, $a0, %lo(D_800EB4E0)
/* C1D38 801612F8 000EC080 */  sll        $t8, $t6, 2
/* C1D3C 801612FC 0098C821 */  addu       $t9, $a0, $t8
/* C1D40 80161300 AF200000 */  sw         $zero, 0x0($t9)
/* C1D44 80161304 8C670000 */  lw         $a3, 0x0($v1)
/* C1D48 80161308 3C01800F */  lui        $at, %hi(D_800EA520)
/* C1D4C 8016130C 00073880 */  sll        $a3, $a3, 2
/* C1D50 80161310 00875021 */  addu       $t2, $a0, $a3
/* C1D54 80161314 8D490000 */  lw         $t1, 0x0($t2)
/* C1D58 80161318 00270821 */  addu       $at, $at, $a3
/* C1D5C 8016131C AC29A520 */  sw         $t1, %lo(D_800EA520)($at)
.L80161320_ovl3:
/* C1D60 80161320 3C040002 */  lui        $a0, (0x20288 >> 16)
/* C1D64 80161324 0C02A806 */  jal        func_800AA018
/* C1D68 80161328 34840288 */   ori       $a0, $a0, (0x20288 & 0xFFFF)
/* C1D6C 8016132C 8E430000 */  lw         $v1, 0x0($s2)
/* C1D70 80161330 3C01800F */  lui        $at, %hi(D_800E98E0)
/* C1D74 80161334 240C000A */  addiu      $t4, $zero, 0xA
/* C1D78 80161338 8C6B0000 */  lw         $t3, 0x0($v1)
/* C1D7C 8016133C 3C18800F */  lui        $t8, %hi(D_800E8AE0)
/* C1D80 80161340 3C11800E */  lui        $s1, %hi(D_800E6310)
/* C1D84 80161344 000B6880 */  sll        $t5, $t3, 2
/* C1D88 80161348 002D0821 */  addu       $at, $at, $t5
/* C1D8C 8016134C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* C1D90 80161350 8C6F0000 */  lw         $t7, 0x0($v1)
/* C1D94 80161354 3C01800F */  lui        $at, %hi(D_800E9560)
/* C1D98 80161358 26316310 */  addiu      $s1, $s1, %lo(D_800E6310)
/* C1D9C 8016135C 000F7080 */  sll        $t6, $t7, 2
/* C1DA0 80161360 002E0821 */  addu       $at, $at, $t6
/* C1DA4 80161364 AC2C9560 */  sw         $t4, %lo(D_800E9560)($at)
/* C1DA8 80161368 8C670000 */  lw         $a3, 0x0($v1)
/* C1DAC 8016136C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* C1DB0 80161370 00073880 */  sll        $a3, $a3, 2
/* C1DB4 80161374 0307C021 */  addu       $t8, $t8, $a3
/* C1DB8 80161378 8F188AE0 */  lw         $t8, %lo(D_800E8AE0)($t8)
/* C1DBC 8016137C 33190004 */  andi       $t9, $t8, 0x4
/* C1DC0 80161380 53200011 */  beql       $t9, $zero, .L801613C8_ovl3
/* C1DC4 80161384 44810000 */   mtc1      $at, $f0
/* C1DC8 80161388 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* C1DCC 8016138C 44810000 */  mtc1       $at, $f0
/* C1DD0 80161390 3C01800E */  lui        $at, %hi(D_800E6A10)
/* C1DD4 80161394 00270821 */  addu       $at, $at, $a3
/* C1DD8 80161398 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* C1DDC 8016139C 3C01800E */  lui        $at, %hi(D_800E64D0)
.L801613A0_ovl5:
/* C1DE0 801613A0 00270821 */  addu       $at, $at, $a3
/* C1DE4 801613A4 46002182 */  mul.s      $f6, $f4, $f0
/* C1DE8 801613A8 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* C1DEC 801613AC 8C6A0000 */  lw         $t2, 0x0($v1)
/* C1DF0 801613B0 3C01800E */  lui        $at, %hi(D_800E6850)
/* C1DF4 801613B4 000A4880 */  sll        $t1, $t2, 2
.L801613B8_ovl5:
/* C1DF8 801613B8 00290821 */  addu       $at, $at, $t1
/* C1DFC 801613BC 1000000E */  b          .L801613F8_ovl3
glabel func_801613C0_ovl5
/* C1E00 801613C0 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* C1E04 801613C4 44810000 */  mtc1       $at, $f0
.L801613C8_ovl3:
/* C1E08 801613C8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* C1E0C 801613CC 00270821 */  addu       $at, $at, $a3
/* C1E10 801613D0 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* C1E14 801613D4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C1E18 801613D8 00270821 */  addu       $at, $at, $a3
/* C1E1C 801613DC 46004282 */  mul.s      $f10, $f8, $f0
/* C1E20 801613E0 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* C1E24 801613E4 8C6B0000 */  lw         $t3, 0x0($v1)
/* C1E28 801613E8 3C01800E */  lui        $at, %hi(D_800E6850)
/* C1E2C 801613EC 000B6880 */  sll        $t5, $t3, 2
/* C1E30 801613F0 002D0821 */  addu       $at, $at, $t5
/* C1E34 801613F4 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801613F8_ovl3:
/* C1E38 801613F8 8C6F0000 */  lw         $t7, 0x0($v1)
/* C1E3C 801613FC 3C10800F */  lui        $s0, %hi(D_800E9720)
/* C1E40 80161400 26109720 */  addiu      $s0, $s0, %lo(D_800E9720)
/* C1E44 80161404 000F6080 */  sll        $t4, $t7, 2
/* C1E48 80161408 020C7021 */  addu       $t6, $s0, $t4
/* C1E4C 8016140C ADC00000 */  sw         $zero, 0x0($t6)
/* C1E50 80161410 8C670000 */  lw         $a3, 0x0($v1)
/* C1E54 80161414 00073880 */  sll        $a3, $a3, 2
/* C1E58 80161418 0207C021 */  addu       $t8, $s0, $a3
.L8016141C_ovl5:
/* C1E5C 8016141C 8F190000 */  lw         $t9, 0x0($t8)
/* C1E60 80161420 2B21001E */  slti       $at, $t9, 0x1E
/* C1E64 80161424 1020001C */  beqz       $at, .L80161498_ovl3
/* C1E68 80161428 02275021 */   addu      $t2, $s1, $a3
glabel func_8016142C_ovl5
/* C1E6C 8016142C 8D490000 */  lw         $t1, 0x0($t2)
/* C1E70 80161430 3C0B800E */  lui        $t3, %hi(D_800E64D0)
/* C1E74 80161434 256B64D0 */  addiu      $t3, $t3, %lo(D_800E64D0)
/* C1E78 80161438 11200007 */  beqz       $t1, .L80161458_ovl3
/* C1E7C 8016143C 00EB1021 */   addu      $v0, $a3, $t3
/* C1E80 80161440 C4500000 */  lwc1       $f16, 0x0($v0)
/* C1E84 80161444 46008487 */  neg.s      $f18, $f16
/* C1E88 80161448 E4520000 */  swc1       $f18, 0x0($v0)
/* C1E8C 8016144C 8C670000 */  lw         $a3, 0x0($v1)
/* C1E90 80161450 10000011 */  b          .L80161498_ovl3
/* C1E94 80161454 00073880 */   sll       $a3, $a3, 2
.L80161458_ovl3:
/* C1E98 80161458 0C002DAF */  jal        finish_current_thread
/* C1E9C 8016145C 24040001 */   addiu     $a0, $zero, 0x1
/* C1EA0 80161460 8E430000 */  lw         $v1, 0x0($s2)
/* C1EA4 80161464 8C6D0000 */  lw         $t5, 0x0($v1)
/* C1EA8 80161468 000D7880 */  sll        $t7, $t5, 2
/* C1EAC 8016146C 020F1021 */  addu       $v0, $s0, $t7
glabel func_80161470_ovl5
/* C1EB0 80161470 8C4C0000 */  lw         $t4, 0x0($v0)
/* C1EB4 80161474 258E0001 */  addiu      $t6, $t4, 0x1
/* C1EB8 80161478 AC4E0000 */  sw         $t6, 0x0($v0)
/* C1EBC 8016147C 8C670000 */  lw         $a3, 0x0($v1)
/* C1EC0 80161480 00073880 */  sll        $a3, $a3, 2
/* C1EC4 80161484 0207C021 */  addu       $t8, $s0, $a3
/* C1EC8 80161488 8F190000 */  lw         $t9, 0x0($t8)
/* C1ECC 8016148C 2B21001E */  slti       $at, $t9, 0x1E
/* C1ED0 80161490 5420FFE6 */  bnel       $at, $zero, func_8016142C_ovl5
/* C1ED4 80161494 02275021 */   addu      $t2, $s1, $a3
.L80161498_ovl3:
/* C1ED8 80161498 3C01800E */  lui        $at, %hi(D_800E6A10)
/* C1EDC 8016149C 00270821 */  addu       $at, $at, $a3
/* C1EE0 801614A0 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* C1EE4 801614A4 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* C1EE8 801614A8 44813000 */  mtc1       $at, $f6
/* C1EEC 801614AC 3C01800E */  lui        $at, %hi(D_800E6690)
/* C1EF0 801614B0 00270821 */  addu       $at, $at, $a3
/* C1EF4 801614B4 46062202 */  mul.s      $f8, $f4, $f6
/* C1EF8 801614B8 0C02BE85 */  jal        func_800AFA14
/* C1EFC 801614BC E4286690 */   swc1      $f8, %lo(D_800E6690)($at)
/* C1F00 801614C0 8FBF0024 */  lw         $ra, 0x24($sp)
/* C1F04 801614C4 8FB00018 */  lw         $s0, 0x18($sp)
/* C1F08 801614C8 8FB1001C */  lw         $s1, 0x1C($sp)
/* C1F0C 801614CC 8FB20020 */  lw         $s2, 0x20($sp)
/* C1F10 801614D0 03E00008 */  jr         $ra
/* C1F14 801614D4 27BD0038 */   addiu     $sp, $sp, 0x38
