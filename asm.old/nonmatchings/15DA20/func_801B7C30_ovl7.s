glabel func_801B7C30_ovl7
/* 15DCA0 801B7C30 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 15DCA4 801B7C34 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 15DCA8 801B7C38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 15DCAC 801B7C3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 15DCB0 801B7C40 AFA40020 */  sw         $a0, 0x20($sp)
/* 15DCB4 801B7C44 8C620000 */  lw         $v0, 0x0($v1)
/* 15DCB8 801B7C48 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 15DCBC 801B7C4C 44812000 */  mtc1       $at, $f4
/* 15DCC0 801B7C50 3C01800F */  lui        $at, %hi(D_800EC660)
/* 15DCC4 801B7C54 00021080 */  sll        $v0, $v0, 2
/* 15DCC8 801B7C58 00220821 */  addu       $at, $at, $v0
/* 15DCCC 801B7C5C E424C660 */  swc1       $f4, %lo(D_800EC660)($at)
/* 15DCD0 801B7C60 8C6E0000 */  lw         $t6, 0x0($v1)
/* 15DCD4 801B7C64 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 15DCD8 801B7C68 00A22821 */  addu       $a1, $a1, $v0
/* 15DCDC 801B7C6C 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 15DCE0 801B7C70 44803000 */  mtc1       $zero, $f6
/* 15DCE4 801B7C74 3C01800F */  lui        $at, %hi(D_800EC820)
/* 15DCE8 801B7C78 000E7880 */  sll        $t7, $t6, 2
/* 15DCEC 801B7C7C 002F0821 */  addu       $at, $at, $t7
/* 15DCF0 801B7C80 AFA5001C */  sw         $a1, 0x1C($sp)
/* 15DCF4 801B7C84 0C06AEE8 */  jal        func_801ABBA0_ovl7
/* 15DCF8 801B7C88 E426C820 */   swc1      $f6, %lo(D_800EC820)($at)
/* 15DCFC 801B7C8C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 15DD00 801B7C90 2442A7C4 */  addiu      $v0, $v0, %lo(D_8004A7C4)
/* 15DD04 801B7C94 8C590000 */  lw         $t9, 0x0($v0)
/* 15DD08 801B7C98 8FA5001C */  lw         $a1, 0x1C($sp)
/* 15DD0C 801B7C9C 3C18801B */  lui        $t8, %hi(func_801B7E80_ovl7)
/* 15DD10 801B7CA0 8F280000 */  lw         $t0, 0x0($t9)
/* 15DD14 801B7CA4 3C01800E */  lui        $at, %hi(D_800DF150)
/* 15DD18 801B7CA8 27187E80 */  addiu      $t8, $t8, %lo(func_801B7E80_ovl7)
/* 15DD1C 801B7CAC 00084880 */  sll        $t1, $t0, 2
/* 15DD20 801B7CB0 00290821 */  addu       $at, $at, $t1
/* 15DD24 801B7CB4 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* 15DD28 801B7CB8 3C0A8011 */  lui        $t2, %hi(func_8010C274)
/* 15DD2C 801B7CBC 3C0B801D */  lui        $t3, %hi(D_801CB56C_ovl7)
/* 15DD30 801B7CC0 254AC274 */  addiu      $t2, $t2, %lo(func_8010C274)
/* 15DD34 801B7CC4 256BB56C */  addiu      $t3, $t3, %lo(D_801CB56C_ovl7)
/* 15DD38 801B7CC8 ACAA0048 */  sw         $t2, 0x48($a1)
/* 15DD3C 801B7CCC ACAB0098 */  sw         $t3, 0x98($a1)
/* 15DD40 801B7CD0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 15DD44 801B7CD4 3C01800F */  lui        $at, %hi(D_800E8920)
/* 15DD48 801B7CD8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 15DD4C 801B7CDC 000D7080 */  sll        $t6, $t5, 2
/* 15DD50 801B7CE0 002E0821 */  addu       $at, $at, $t6
/* 15DD54 801B7CE4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 15DD58 801B7CE8 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 15DD5C 801B7CEC 0C02BB30 */  jal        func_800AECC0
/* 15DD60 801B7CF0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 15DD64 801B7CF4 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 15DD68 801B7CF8 0C02BB48 */  jal        func_800AED20
/* 15DD6C 801B7CFC C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 15DD70 801B7D00 3C040001 */  lui        $a0, (0x100EF >> 16)
/* 15DD74 801B7D04 0C02A806 */  jal        func_800AA018
/* 15DD78 801B7D08 348400EF */   ori       $a0, $a0, (0x100EF & 0xFFFF)
/* 15DD7C 801B7D0C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 15DD80 801B7D10 44801000 */  mtc1       $zero, $f2
/* 15DD84 801B7D14 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 15DD88 801B7D18 8DF9003C */  lw         $t9, 0x3C($t7)
/* 15DD8C 801B7D1C 3C18800E */  lui        $t8, %hi(D_800E0D50)
/* 15DD90 801B7D20 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
/* 15DD94 801B7D24 8F280010 */  lw         $t0, 0x10($t9)
/* 15DD98 801B7D28 3C04800E */  lui        $a0, %hi(D_800E6A10)
/* 15DD9C 801B7D2C 24846A10 */  addiu      $a0, $a0, %lo(D_800E6A10)
/* 15DDA0 801B7D30 E5020030 */  swc1       $f2, 0x30($t0)
/* 15DDA4 801B7D34 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 15DDA8 801B7D38 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 15DDAC 801B7D3C 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 15DDB0 801B7D40 8C620000 */  lw         $v0, 0x0($v1)
/* 15DDB4 801B7D44 00021080 */  sll        $v0, $v0, 2
/* 15DDB8 801B7D48 0302C021 */  addu       $t8, $t8, $v0
/* 15DDBC 801B7D4C 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
/* 15DDC0 801B7D50 0082C821 */  addu       $t9, $a0, $v0
/* 15DDC4 801B7D54 00184880 */  sll        $t1, $t8, 2
/* 15DDC8 801B7D58 01495021 */  addu       $t2, $t2, $t1
/* 15DDCC 801B7D5C 8D4A8AE0 */  lw         $t2, %lo(D_800E8AE0)($t2)
/* 15DDD0 801B7D60 314B0006 */  andi       $t3, $t2, 0x6
/* 15DDD4 801B7D64 5160001A */  beql       $t3, $zero, .L801B7DD0_ovl7
/* 15DDD8 801B7D68 44810000 */   mtc1      $at, $f0
/* 15DDDC 801B7D6C 3C04800E */  lui        $a0, %hi(D_800E6A10)
/* 15DDE0 801B7D70 24846A10 */  addiu      $a0, $a0, %lo(D_800E6A10)
/* 15DDE4 801B7D74 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 15DDE8 801B7D78 00826021 */  addu       $t4, $a0, $v0
/* 15DDEC 801B7D7C 44810000 */  mtc1       $at, $f0
/* 15DDF0 801B7D80 C5880000 */  lwc1       $f8, 0x0($t4)
/* 15DDF4 801B7D84 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 15DDF8 801B7D88 00220821 */  addu       $at, $at, $v0
/* 15DDFC 801B7D8C 46004282 */  mul.s      $f10, $f8, $f0
/* 15DE00 801B7D90 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* 15DE04 801B7D94 8C620000 */  lw         $v0, 0x0($v1)
/* 15DE08 801B7D98 3C01800E */  lui        $at, %hi(D_800E6690)
/* 15DE0C 801B7D9C 00021080 */  sll        $v0, $v0, 2
/* 15DE10 801B7DA0 00826821 */  addu       $t5, $a0, $v0
/* 15DE14 801B7DA4 C5B00000 */  lwc1       $f16, 0x0($t5)
/* 15DE18 801B7DA8 00220821 */  addu       $at, $at, $v0
/* 15DE1C 801B7DAC 46028482 */  mul.s      $f18, $f16, $f2
/* 15DE20 801B7DB0 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
/* 15DE24 801B7DB4 8C6E0000 */  lw         $t6, 0x0($v1)
/* 15DE28 801B7DB8 3C01800E */  lui        $at, %hi(D_800E6850)
/* 15DE2C 801B7DBC 000E7880 */  sll        $t7, $t6, 2
/* 15DE30 801B7DC0 002F0821 */  addu       $at, $at, $t7
/* 15DE34 801B7DC4 10000012 */  b          .L801B7E10_ovl7
/* 15DE38 801B7DC8 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* 15DE3C 801B7DCC 44810000 */  mtc1       $at, $f0
.L801B7DD0_ovl7:
/* 15DE40 801B7DD0 C7240000 */  lwc1       $f4, 0x0($t9)
/* 15DE44 801B7DD4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 15DE48 801B7DD8 00220821 */  addu       $at, $at, $v0
/* 15DE4C 801B7DDC 46002182 */  mul.s      $f6, $f4, $f0
/* 15DE50 801B7DE0 44804000 */  mtc1       $zero, $f8
/* 15DE54 801B7DE4 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 15DE58 801B7DE8 8C680000 */  lw         $t0, 0x0($v1)
/* 15DE5C 801B7DEC 3C01800E */  lui        $at, %hi(D_800E6690)
/* 15DE60 801B7DF0 0008C080 */  sll        $t8, $t0, 2
/* 15DE64 801B7DF4 00380821 */  addu       $at, $at, $t8
/* 15DE68 801B7DF8 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* 15DE6C 801B7DFC 8C690000 */  lw         $t1, 0x0($v1)
/* 15DE70 801B7E00 3C01800E */  lui        $at, %hi(D_800E6850)
/* 15DE74 801B7E04 00095080 */  sll        $t2, $t1, 2
/* 15DE78 801B7E08 002A0821 */  addu       $at, $at, $t2
/* 15DE7C 801B7E0C E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801B7E10_ovl7:
/* 15DE80 801B7E10 8C6B0000 */  lw         $t3, 0x0($v1)
/* 15DE84 801B7E14 44805000 */  mtc1       $zero, $f10
/* 15DE88 801B7E18 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 15DE8C 801B7E1C 000B6080 */  sll        $t4, $t3, 2
/* 15DE90 801B7E20 00AC6821 */  addu       $t5, $a1, $t4
/* 15DE94 801B7E24 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 15DE98 801B7E28 8C620000 */  lw         $v0, 0x0($v1)
/* 15DE9C 801B7E2C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 15DEA0 801B7E30 2404003C */  addiu      $a0, $zero, 0x3C
/* 15DEA4 801B7E34 00021080 */  sll        $v0, $v0, 2
/* 15DEA8 801B7E38 00A27021 */  addu       $t6, $a1, $v0
/* 15DEAC 801B7E3C C5D00000 */  lwc1       $f16, 0x0($t6)
/* 15DEB0 801B7E40 00220821 */  addu       $at, $at, $v0
/* 15DEB4 801B7E44 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* 15DEB8 801B7E48 8C6F0000 */  lw         $t7, 0x0($v1)
/* 15DEBC 801B7E4C 3C01801D */  lui        $at, %hi(D_801CE368_ovl7)
/* 15DEC0 801B7E50 C432E368 */  lwc1       $f18, %lo(D_801CE368_ovl7)($at)
/* 15DEC4 801B7E54 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 15DEC8 801B7E58 000FC880 */  sll        $t9, $t7, 2
/* 15DECC 801B7E5C 00390821 */  addu       $at, $at, $t9
/* 15DED0 801B7E60 0C002DAF */  jal        finish_current_thread
/* 15DED4 801B7E64 E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
/* 15DED8 801B7E68 0C06B0D9 */  jal        func_801AC364_ovl7
/* 15DEDC 801B7E6C 8FA40020 */   lw        $a0, 0x20($sp)
/* 15DEE0 801B7E70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15DEE4 801B7E74 27BD0020 */  addiu      $sp, $sp, 0x20
/* 15DEE8 801B7E78 03E00008 */  jr         $ra
/* 15DEEC 801B7E7C 00000000 */   nop
