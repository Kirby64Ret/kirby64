glabel func_801B0C20_ovl7
/* 156C90 801B0C20 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 156C94 801B0C24 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 156C98 801B0C28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 156C9C 801B0C2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 156CA0 801B0C30 8C8E003C */  lw         $t6, 0x3C($a0)
/* 156CA4 801B0C34 8C430000 */  lw         $v1, 0x0($v0)
/* 156CA8 801B0C38 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 156CAC 801B0C3C 44812000 */  mtc1       $at, $f4
/* 156CB0 801B0C40 8DCF0010 */  lw         $t7, 0x10($t6)
/* 156CB4 801B0C44 3C01800F */  lui        $at, %hi(D_800EC660)
/* 156CB8 801B0C48 00031880 */  sll        $v1, $v1, 2
/* 156CBC 801B0C4C 00230821 */  addu       $at, $at, $v1
/* 156CC0 801B0C50 AFAF0018 */  sw         $t7, 0x18($sp)
/* 156CC4 801B0C54 E424C660 */  swc1       $f4, %lo(D_800EC660)($at)
/* 156CC8 801B0C58 8C580000 */  lw         $t8, 0x0($v0)
/* 156CCC 801B0C5C 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 156CD0 801B0C60 00A32821 */  addu       $a1, $a1, $v1
/* 156CD4 801B0C64 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 156CD8 801B0C68 44803000 */  mtc1       $zero, $f6
/* 156CDC 801B0C6C 3C01800F */  lui        $at, %hi(D_800EC820)
/* 156CE0 801B0C70 0018C880 */  sll        $t9, $t8, 2
/* 156CE4 801B0C74 00390821 */  addu       $at, $at, $t9
/* 156CE8 801B0C78 AFA40020 */  sw         $a0, 0x20($sp)
/* 156CEC 801B0C7C AFA5001C */  sw         $a1, 0x1C($sp)
/* 156CF0 801B0C80 0C06AEE8 */  jal        func_801ABBA0_ovl7
/* 156CF4 801B0C84 E426C820 */   swc1      $f6, %lo(D_800EC820)($at)
/* 156CF8 801B0C88 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 156CFC 801B0C8C 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 156D00 801B0C90 8C620000 */  lw         $v0, 0x0($v1)
/* 156D04 801B0C94 3C08800B */  lui        $t0, %hi(func_800B6FD8)
/* 156D08 801B0C98 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 156D0C 801B0C9C 8C490000 */  lw         $t1, 0x0($v0)
/* 156D10 801B0CA0 25086FD8 */  addiu      $t0, $t0, %lo(func_800B6FD8)
/* 156D14 801B0CA4 8FA5001C */  lw         $a1, 0x1C($sp)
/* 156D18 801B0CA8 00095080 */  sll        $t2, $t1, 2
/* 156D1C 801B0CAC 002A0821 */  addu       $at, $at, $t2
/* 156D20 801B0CB0 AC28EF90 */  sw         $t0, %lo(D_800DEF90)($at)
/* 156D24 801B0CB4 8C4C0000 */  lw         $t4, 0x0($v0)
/* 156D28 801B0CB8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 156D2C 801B0CBC 3C0B801B */  lui        $t3, %hi(func_801AC840_ovl7)
/* 156D30 801B0CC0 000C6880 */  sll        $t5, $t4, 2
/* 156D34 801B0CC4 002D0821 */  addu       $at, $at, $t5
/* 156D38 801B0CC8 256BC840 */  addiu      $t3, $t3, %lo(func_801AC840_ovl7)
/* 156D3C 801B0CCC AC2BF150 */  sw         $t3, %lo(D_800DF150)($at)
/* 156D40 801B0CD0 3C0E8011 */  lui        $t6, %hi(func_8010C274)
/* 156D44 801B0CD4 3C0F801D */  lui        $t7, %hi(D_801CB4DC_ovl7)
/* 156D48 801B0CD8 25CEC274 */  addiu      $t6, $t6, %lo(func_8010C274)
/* 156D4C 801B0CDC 25EFB4DC */  addiu      $t7, $t7, %lo(D_801CB4DC_ovl7)
/* 156D50 801B0CE0 ACAE0048 */  sw         $t6, 0x48($a1)
/* 156D54 801B0CE4 ACAF0098 */  sw         $t7, 0x98($a1)
/* 156D58 801B0CE8 8C620000 */  lw         $v0, 0x0($v1)
/* 156D5C 801B0CEC 3C01800F */  lui        $at, %hi(D_800E8920)
/* 156D60 801B0CF0 8FAA0018 */  lw         $t2, 0x18($sp)
/* 156D64 801B0CF4 8C580000 */  lw         $t8, 0x0($v0)
/* 156D68 801B0CF8 0018C880 */  sll        $t9, $t8, 2
/* 156D6C 801B0CFC 00390821 */  addu       $at, $at, $t9
/* 156D70 801B0D00 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 156D74 801B0D04 8C490000 */  lw         $t1, 0x0($v0)
/* 156D78 801B0D08 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 156D7C 801B0D0C 00094080 */  sll        $t0, $t1, 2
/* 156D80 801B0D10 00280821 */  addu       $at, $at, $t0
/* 156D84 801B0D14 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 156D88 801B0D18 3C01801D */  lui        $at, %hi(D_801CE298_ovl7)
/* 156D8C 801B0D1C C430E298 */  lwc1       $f16, %lo(D_801CE298_ovl7)($at)
/* 156D90 801B0D20 46004287 */  neg.s      $f10, $f8
/* 156D94 801B0D24 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 156D98 801B0D28 46105482 */  mul.s      $f18, $f10, $f16
/* 156D9C 801B0D2C E5520038 */  swc1       $f18, 0x38($t2)
/* 156DA0 801B0D30 0C02BB30 */  jal        func_800AECC0
/* 156DA4 801B0D34 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 156DA8 801B0D38 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 156DAC 801B0D3C 0C02BB48 */  jal        func_800AED20
/* 156DB0 801B0D40 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 156DB4 801B0D44 3C040001 */  lui        $a0, (0x101AF >> 16)
/* 156DB8 801B0D48 0C02A806 */  jal        func_800AA018
/* 156DBC 801B0D4C 348401AF */   ori       $a0, $a0, (0x101AF & 0xFFFF)
/* 156DC0 801B0D50 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 156DC4 801B0D54 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 156DC8 801B0D58 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 156DCC 801B0D5C 44810000 */  mtc1       $at, $f0
/* 156DD0 801B0D60 8C430000 */  lw         $v1, 0x0($v0)
/* 156DD4 801B0D64 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 156DD8 801B0D68 44801000 */  mtc1       $zero, $f2
/* 156DDC 801B0D6C 00031880 */  sll        $v1, $v1, 2
/* 156DE0 801B0D70 00230821 */  addu       $at, $at, $v1
/* 156DE4 801B0D74 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 156DE8 801B0D78 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 156DEC 801B0D7C 00230821 */  addu       $at, $at, $v1
/* 156DF0 801B0D80 46002182 */  mul.s      $f6, $f4, $f0
/* 156DF4 801B0D84 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 156DF8 801B0D88 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 156DFC 801B0D8C 2404003C */  addiu      $a0, $zero, 0x3C
/* 156E00 801B0D90 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 156E04 801B0D94 8C4C0000 */  lw         $t4, 0x0($v0)
/* 156E08 801B0D98 3C01800E */  lui        $at, %hi(D_800E6690)
/* 156E0C 801B0D9C 000C5880 */  sll        $t3, $t4, 2
/* 156E10 801B0DA0 002B0821 */  addu       $at, $at, $t3
/* 156E14 801B0DA4 E4226690 */  swc1       $f2, %lo(D_800E6690)($at)
/* 156E18 801B0DA8 8C4D0000 */  lw         $t5, 0x0($v0)
/* 156E1C 801B0DAC 3C01800E */  lui        $at, %hi(D_800E6850)
/* 156E20 801B0DB0 000D7080 */  sll        $t6, $t5, 2
/* 156E24 801B0DB4 002E0821 */  addu       $at, $at, $t6
/* 156E28 801B0DB8 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
/* 156E2C 801B0DBC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 156E30 801B0DC0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 156E34 801B0DC4 000FC080 */  sll        $t8, $t7, 2
/* 156E38 801B0DC8 00B8C821 */  addu       $t9, $a1, $t8
/* 156E3C 801B0DCC E7220000 */  swc1       $f2, 0x0($t9)
/* 156E40 801B0DD0 8C430000 */  lw         $v1, 0x0($v0)
/* 156E44 801B0DD4 00031880 */  sll        $v1, $v1, 2
/* 156E48 801B0DD8 00A34821 */  addu       $t1, $a1, $v1
/* 156E4C 801B0DDC C5280000 */  lwc1       $f8, 0x0($t1)
/* 156E50 801B0DE0 00230821 */  addu       $at, $at, $v1
/* 156E54 801B0DE4 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 156E58 801B0DE8 8C480000 */  lw         $t0, 0x0($v0)
/* 156E5C 801B0DEC 3C01801D */  lui        $at, %hi(D_801CE29C_ovl7)
/* 156E60 801B0DF0 C42AE29C */  lwc1       $f10, %lo(D_801CE29C_ovl7)($at)
/* 156E64 801B0DF4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 156E68 801B0DF8 00085080 */  sll        $t2, $t0, 2
/* 156E6C 801B0DFC 002A0821 */  addu       $at, $at, $t2
/* 156E70 801B0E00 0C002DAF */  jal        finish_current_thread
/* 156E74 801B0E04 E42A3C90 */   swc1      $f10, %lo(D_800E3C90)($at)
/* 156E78 801B0E08 0C06B047 */  jal        func_801AC11C_ovl7
/* 156E7C 801B0E0C 8FA40020 */   lw        $a0, 0x20($sp)
/* 156E80 801B0E10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 156E84 801B0E14 27BD0020 */  addiu      $sp, $sp, 0x20
/* 156E88 801B0E18 03E00008 */  jr         $ra
/* 156E8C 801B0E1C 00000000 */   nop
