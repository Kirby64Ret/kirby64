glabel func_8010A2C4
/* 092D34 8010A2C4 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 092D38 8010A2C8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 092D3C 8010A2CC AFB10028 */  sw    $s1, 0x28($sp)
/* 092D40 8010A2D0 AFB00024 */  sw    $s0, 0x24($sp)
/* 092D44 8010A2D4 C4840028 */  lwc1  $f4, 0x28($a0)
/* 092D48 8010A2D8 00A08025 */  move  $s0, $a1
/* 092D4C 8010A2DC 00808825 */  move  $s1, $a0
/* 092D50 8010A2E0 E7A40098 */  swc1  $f4, 0x98($sp)
/* 092D54 8010A2E4 C4860048 */  lwc1  $f6, 0x48($a0)
/* 092D58 8010A2E8 27A50098 */  addiu $a1, $sp, 0x98
/* 092D5C 8010A2EC 27A60068 */  addiu $a2, $sp, 0x68
/* 092D60 8010A2F0 E7A6009C */  swc1  $f6, 0x9c($sp)
/* 092D64 8010A2F4 C4880030 */  lwc1  $f8, 0x30($a0)
/* 092D68 8010A2F8 E7A800A0 */  swc1  $f8, 0xa0($sp)
/* 092D6C 8010A2FC 0C044A90 */  jal   func_80112A40_ovl2
/* 092D70 8010A300 90840050 */   lbu   $a0, 0x50($a0)
/* 092D74 8010A304 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 092D78 8010A308 C7B00068 */  lwc1  $f16, 0x68($sp)
/* 092D7C 8010A30C C7A4009C */  lwc1  $f4, 0x9c($sp)
/* 092D80 8010A310 C7A6006C */  lwc1  $f6, 0x6c($sp)
/* 092D84 8010A314 46105480 */  add.s $f18, $f10, $f16
/* 092D88 8010A318 3C018013 */  lui   $at, %hi(D_80128AB0) # $at, 0x8013
/* 092D8C 8010A31C C42A8AB0 */  lwc1  $f10, %lo(D_80128AB0)($at)
/* 092D90 8010A320 46062200 */  add.s $f8, $f4, $f6
/* 092D94 8010A324 E7B2008C */  swc1  $f18, 0x8c($sp)
/* 092D98 8010A328 C7B200A0 */  lwc1  $f18, 0xa0($sp)
/* 092D9C 8010A32C C7A40070 */  lwc1  $f4, 0x70($sp)
/* 092DA0 8010A330 460A4401 */  sub.s $f16, $f8, $f10
/* 092DA4 8010A334 44800000 */  mtc1  $zero, $f0
/* 092DA8 8010A338 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 092DAC 8010A33C 46049180 */  add.s $f6, $f18, $f4
/* 092DB0 8010A340 44814000 */  mtc1  $at, $f8
/* 092DB4 8010A344 3C0E8013 */  lui   $t6, %hi(D_8012BD34) # $t6, 0x8013
/* 092DB8 8010A348 25CEBD34 */  addiu $t6, %lo(D_8012BD34) # addiu $t6, $t6, -0x42cc
/* 092DBC 8010A34C 260F000C */  addiu $t7, $s0, 0xc
/* 092DC0 8010A350 26180008 */  addiu $t8, $s0, 8
/* 092DC4 8010A354 26190004 */  addiu $t9, $s0, 4
/* 092DC8 8010A358 E7B00090 */  swc1  $f16, 0x90($sp)
/* 092DCC 8010A35C E7A60094 */  swc1  $f6, 0x94($sp)
/* 092DD0 8010A360 AFB9001C */  sw    $t9, 0x1c($sp)
/* 092DD4 8010A364 AFB80018 */  sw    $t8, 0x18($sp)
/* 092DD8 8010A368 AFAF0014 */  sw    $t7, 0x14($sp)
/* 092DDC 8010A36C AFAE0010 */  sw    $t6, 0x10($sp)
/* 092DE0 8010A370 27A40098 */  addiu $a0, $sp, 0x98
/* 092DE4 8010A374 27A5008C */  addiu $a1, $sp, 0x8c
/* 092DE8 8010A378 27A60080 */  addiu $a2, $sp, 0x80
/* 092DEC 8010A37C 00003825 */  move  $a3, $zero
/* 092DF0 8010A380 AFA00058 */  sw    $zero, 0x58($sp)
/* 092DF4 8010A384 E7A00080 */  swc1  $f0, 0x80($sp)
/* 092DF8 8010A388 E7A00088 */  swc1  $f0, 0x88($sp)
/* 092DFC 8010A38C 0C040E7A */  jal   func_801039E8_ovl2
/* 092E00 8010A390 E7A80084 */   swc1  $f8, 0x84($sp)
/* 092E04 8010A394 10400006 */  beqz  $v0, .L8010A3B0_ovl2
/* 092E08 8010A398 8FA90058 */   lw    $t1, 0x58($sp)
/* 092E0C 8010A39C 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 092E10 8010A3A0 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 092E14 8010A3A4 C46A0038 */  lwc1  $f10, 0x38($v1)
/* 092E18 8010A3A8 24090200 */  li    $t1, 512
/* 092E1C 8010A3AC E7AA0054 */  swc1  $f10, 0x54($sp)
.L8010A3B0_ovl2:
/* 092E20 8010A3B0 C6300034 */  lwc1  $f16, 0x34($s1)
/* 092E24 8010A3B4 C7A60068 */  lwc1  $f6, 0x68($sp)
/* 092E28 8010A3B8 27AA0074 */  addiu $t2, $sp, 0x74
/* 092E2C 8010A3BC E7B00098 */  swc1  $f16, 0x98($sp)
/* 092E30 8010A3C0 C6320038 */  lwc1  $f18, 0x38($s1)
/* 092E34 8010A3C4 C7A40098 */  lwc1  $f4, 0x98($sp)
/* 092E38 8010A3C8 C7B00070 */  lwc1  $f16, 0x70($sp)
/* 092E3C 8010A3CC E7B200A0 */  swc1  $f18, 0xa0($sp)
/* 092E40 8010A3D0 C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* 092E44 8010A3D4 46062200 */  add.s $f8, $f4, $f6
/* 092E48 8010A3D8 27AB0064 */  addiu $t3, $sp, 0x64
/* 092E4C 8010A3DC 27AC0060 */  addiu $t4, $sp, 0x60
/* 092E50 8010A3E0 46105480 */  add.s $f18, $f10, $f16
/* 092E54 8010A3E4 27AD005C */  addiu $t5, $sp, 0x5c
/* 092E58 8010A3E8 E7A8008C */  swc1  $f8, 0x8c($sp)
/* 092E5C 8010A3EC AFAD001C */  sw    $t5, 0x1c($sp)
/* 092E60 8010A3F0 E7B20094 */  swc1  $f18, 0x94($sp)
/* 092E64 8010A3F4 AFAC0018 */  sw    $t4, 0x18($sp)
/* 092E68 8010A3F8 AFAB0014 */  sw    $t3, 0x14($sp)
/* 092E6C 8010A3FC AFA90058 */  sw    $t1, 0x58($sp)
/* 092E70 8010A400 AFAA0010 */  sw    $t2, 0x10($sp)
/* 092E74 8010A404 27A40098 */  addiu $a0, $sp, 0x98
/* 092E78 8010A408 27A5008C */  addiu $a1, $sp, 0x8c
/* 092E7C 8010A40C 27A60080 */  addiu $a2, $sp, 0x80
/* 092E80 8010A410 0C040E7A */  jal   func_801039E8_ovl2
/* 092E84 8010A414 00003825 */   move  $a3, $zero
/* 092E88 8010A418 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 092E8C 8010A41C 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 092E90 8010A420 1040004E */  beqz  $v0, .L8010A55C_ovl2
/* 092E94 8010A424 8FA90058 */   lw    $t1, 0x58($sp)
/* 092E98 8010A428 15200015 */  bnez  $t1, .L8010A480_ovl2
/* 092E9C 8010A42C 00004025 */   move  $t0, $zero
/* 092EA0 8010A430 C7A40074 */  lwc1  $f4, 0x74($sp)
/* 092EA4 8010A434 C4660004 */  lwc1  $f6, 4($v1)
/* 092EA8 8010A438 8FAE0064 */  lw    $t6, 0x64($sp)
/* 092EAC 8010A43C C7B2007C */  lwc1  $f18, 0x7c($sp)
/* 092EB0 8010A440 46062201 */  sub.s $f8, $f4, $f6
/* 092EB4 8010A444 C4640008 */  lwc1  $f4, 8($v1)
/* 092EB8 8010A448 C5CA0000 */  lwc1  $f10, ($t6)
/* 092EBC 8010A44C 24080001 */  li    $t0, 1
/* 092EC0 8010A450 46049181 */  sub.s $f6, $f18, $f4
/* 092EC4 8010A454 46085402 */  mul.s $f16, $f10, $f8
/* 092EC8 8010A458 C5CA0008 */  lwc1  $f10, 8($t6)
/* 092ECC 8010A45C C5C4000C */  lwc1  $f4, 0xc($t6)
/* 092ED0 8010A460 46065202 */  mul.s $f8, $f10, $f6
/* 092ED4 8010A464 46088480 */  add.s $f18, $f16, $f8
/* 092ED8 8010A468 C5D00004 */  lwc1  $f16, 4($t6)
/* 092EDC 8010A46C 46049280 */  add.s $f10, $f18, $f4
/* 092EE0 8010A470 46005187 */  neg.s $f6, $f10
/* 092EE4 8010A474 46103203 */  div.s $f8, $f6, $f16
/* 092EE8 8010A478 10000025 */  b     .L8010A510_ovl2
/* 092EEC 8010A47C E7A8004C */   swc1  $f8, 0x4c($sp)
.L8010A480_ovl2:
/* 092EF0 8010A480 8E06000C */  lw    $a2, 0xc($s0)
/* 092EF4 8010A484 8FAF0064 */  lw    $t7, 0x64($sp)
/* 092EF8 8010A488 C7B20074 */  lwc1  $f18, 0x74($sp)
/* 092EFC 8010A48C 11E60020 */  beq   $t7, $a2, .L8010A510_ovl2
/* 092F00 8010A490 00000000 */   nop   
/* 092F04 8010A494 C4640004 */  lwc1  $f4, 4($v1)
/* 092F08 8010A498 C5E60000 */  lwc1  $f6, ($t7)
/* 092F0C 8010A49C C7A8007C */  lwc1  $f8, 0x7c($sp)
/* 092F10 8010A4A0 46049281 */  sub.s $f10, $f18, $f4
/* 092F14 8010A4A4 C4720008 */  lwc1  $f18, 8($v1)
/* 092F18 8010A4A8 3C048013 */  lui   $a0, %hi(D_8012BD34) # $a0, 0x8013
/* 092F1C 8010A4AC 2484BD34 */  addiu $a0, %lo(D_8012BD34) # addiu $a0, $a0, -0x42cc
/* 092F20 8010A4B0 460A3402 */  mul.s $f16, $f6, $f10
/* 092F24 8010A4B4 46124101 */  sub.s $f4, $f8, $f18
/* 092F28 8010A4B8 C5E60008 */  lwc1  $f6, 8($t7)
/* 092F2C 8010A4BC C5F2000C */  lwc1  $f18, 0xc($t7)
/* 092F30 8010A4C0 27A50074 */  addiu $a1, $sp, 0x74
/* 092F34 8010A4C4 46043282 */  mul.s $f10, $f6, $f4
/* 092F38 8010A4C8 3C073F80 */  lui   $a3, 0x3f80
/* 092F3C 8010A4CC 460A8200 */  add.s $f8, $f16, $f10
/* 092F40 8010A4D0 C5F00004 */  lwc1  $f16, 4($t7)
/* 092F44 8010A4D4 46124180 */  add.s $f6, $f8, $f18
/* 092F48 8010A4D8 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 092F4C 8010A4DC 46003107 */  neg.s $f4, $f6
/* 092F50 8010A4E0 46102283 */  div.s $f10, $f4, $f16
/* 092F54 8010A4E4 460A403C */  c.lt.s $f8, $f10
/* 092F58 8010A4E8 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 092F5C 8010A4EC 45000008 */  bc1f  .L8010A510_ovl2
/* 092F60 8010A4F0 00000000 */   nop   
/* 092F64 8010A4F4 AFA80050 */  sw    $t0, 0x50($sp)
/* 092F68 8010A4F8 0C042216 */  jal   func_80108858_ovl2
/* 092F6C 8010A4FC AFA90058 */   sw    $t1, 0x58($sp)
/* 092F70 8010A500 8FA80050 */  lw    $t0, 0x50($sp)
/* 092F74 8010A504 10400002 */  beqz  $v0, .L8010A510_ovl2
/* 092F78 8010A508 8FA90058 */   lw    $t1, 0x58($sp)
/* 092F7C 8010A50C 24080001 */  li    $t0, 1
.L8010A510_ovl2:
/* 092F80 8010A510 11000012 */  beqz  $t0, .L8010A55C_ovl2
/* 092F84 8010A514 3C188013 */   lui   $t8, %hi(D_8012BD34) # $t8, 0x8013
/* 092F88 8010A518 27B90074 */  addiu $t9, $sp, 0x74
/* 092F8C 8010A51C 8F2B0000 */  lw    $t3, ($t9)
/* 092F90 8010A520 2718BD34 */  addiu $t8, %lo(D_8012BD34) # addiu $t8, $t8, -0x42cc
/* 092F94 8010A524 8F2A0004 */  lw    $t2, 4($t9)
/* 092F98 8010A528 AF0B0000 */  sw    $t3, ($t8)
/* 092F9C 8010A52C 8F2B0008 */  lw    $t3, 8($t9)
/* 092FA0 8010A530 AF0A0004 */  sw    $t2, 4($t8)
/* 092FA4 8010A534 24090800 */  li    $t1, 2048
/* 092FA8 8010A538 AF0B0008 */  sw    $t3, 8($t8)
/* 092FAC 8010A53C 8FAC0064 */  lw    $t4, 0x64($sp)
/* 092FB0 8010A540 AE0C000C */  sw    $t4, 0xc($s0)
/* 092FB4 8010A544 8FAD0060 */  lw    $t5, 0x60($sp)
/* 092FB8 8010A548 AE0D0008 */  sw    $t5, 8($s0)
/* 092FBC 8010A54C 8FAE005C */  lw    $t6, 0x5c($sp)
/* 092FC0 8010A550 AE0E0004 */  sw    $t6, 4($s0)
/* 092FC4 8010A554 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 092FC8 8010A558 E7B20054 */  swc1  $f18, 0x54($sp)
.L8010A55C_ovl2:
/* 092FCC 8010A55C C626003C */  lwc1  $f6, 0x3c($s1)
/* 092FD0 8010A560 C7A80068 */  lwc1  $f8, 0x68($sp)
/* 092FD4 8010A564 27AF0074 */  addiu $t7, $sp, 0x74
/* 092FD8 8010A568 E7A60098 */  swc1  $f6, 0x98($sp)
/* 092FDC 8010A56C C6240040 */  lwc1  $f4, 0x40($s1)
/* 092FE0 8010A570 C7B00098 */  lwc1  $f16, 0x98($sp)
/* 092FE4 8010A574 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 092FE8 8010A578 E7A400A0 */  swc1  $f4, 0xa0($sp)
/* 092FEC 8010A57C C7B200A0 */  lwc1  $f18, 0xa0($sp)
/* 092FF0 8010A580 46088280 */  add.s $f10, $f16, $f8
/* 092FF4 8010A584 27B80064 */  addiu $t8, $sp, 0x64
/* 092FF8 8010A588 27B90060 */  addiu $t9, $sp, 0x60
/* 092FFC 8010A58C 46069100 */  add.s $f4, $f18, $f6
/* 093000 8010A590 27AA005C */  addiu $t2, $sp, 0x5c
/* 093004 8010A594 E7AA008C */  swc1  $f10, 0x8c($sp)
/* 093008 8010A598 AFAA001C */  sw    $t2, 0x1c($sp)
/* 09300C 8010A59C E7A40094 */  swc1  $f4, 0x94($sp)
/* 093010 8010A5A0 AFB90018 */  sw    $t9, 0x18($sp)
/* 093014 8010A5A4 AFB80014 */  sw    $t8, 0x14($sp)
/* 093018 8010A5A8 AFA90058 */  sw    $t1, 0x58($sp)
/* 09301C 8010A5AC AFAF0010 */  sw    $t7, 0x10($sp)
/* 093020 8010A5B0 27A40098 */  addiu $a0, $sp, 0x98
/* 093024 8010A5B4 27A5008C */  addiu $a1, $sp, 0x8c
/* 093028 8010A5B8 27A60080 */  addiu $a2, $sp, 0x80
/* 09302C 8010A5BC 0C040E7A */  jal   func_801039E8_ovl2
/* 093030 8010A5C0 00003825 */   move  $a3, $zero
/* 093034 8010A5C4 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 093038 8010A5C8 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 09303C 8010A5CC 10400050 */  beqz  $v0, .L8010A710_ovl2
/* 093040 8010A5D0 8FA90058 */   lw    $t1, 0x58($sp)
/* 093044 8010A5D4 15200015 */  bnez  $t1, .L8010A62C_ovl2
/* 093048 8010A5D8 00004025 */   move  $t0, $zero
/* 09304C 8010A5DC C7B00074 */  lwc1  $f16, 0x74($sp)
/* 093050 8010A5E0 C468000C */  lwc1  $f8, 0xc($v1)
/* 093054 8010A5E4 8FAB0064 */  lw    $t3, 0x64($sp)
/* 093058 8010A5E8 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* 09305C 8010A5EC 46088281 */  sub.s $f10, $f16, $f8
/* 093060 8010A5F0 C4700010 */  lwc1  $f16, 0x10($v1)
/* 093064 8010A5F4 C5720000 */  lwc1  $f18, ($t3)
/* 093068 8010A5F8 24080001 */  li    $t0, 1
/* 09306C 8010A5FC 46102201 */  sub.s $f8, $f4, $f16
/* 093070 8010A600 460A9182 */  mul.s $f6, $f18, $f10
/* 093074 8010A604 C5720008 */  lwc1  $f18, 8($t3)
/* 093078 8010A608 C570000C */  lwc1  $f16, 0xc($t3)
/* 09307C 8010A60C 46089282 */  mul.s $f10, $f18, $f8
/* 093080 8010A610 460A3100 */  add.s $f4, $f6, $f10
/* 093084 8010A614 C5660004 */  lwc1  $f6, 4($t3)
/* 093088 8010A618 46102480 */  add.s $f18, $f4, $f16
/* 09308C 8010A61C 46009207 */  neg.s $f8, $f18
/* 093090 8010A620 46064283 */  div.s $f10, $f8, $f6
/* 093094 8010A624 10000027 */  b     .L8010A6C4_ovl2
/* 093098 8010A628 E7AA0044 */   swc1  $f10, 0x44($sp)
.L8010A62C_ovl2:
/* 09309C 8010A62C 8E06000C */  lw    $a2, 0xc($s0)
/* 0930A0 8010A630 8FAC0064 */  lw    $t4, 0x64($sp)
/* 0930A4 8010A634 C7A40074 */  lwc1  $f4, 0x74($sp)
/* 0930A8 8010A638 11860022 */  beq   $t4, $a2, .L8010A6C4_ovl2
/* 0930AC 8010A63C 00000000 */   nop   
/* 0930B0 8010A640 C470000C */  lwc1  $f16, 0xc($v1)
/* 0930B4 8010A644 C5880000 */  lwc1  $f8, ($t4)
/* 0930B8 8010A648 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 0930BC 8010A64C 46102481 */  sub.s $f18, $f4, $f16
/* 0930C0 8010A650 C4640010 */  lwc1  $f4, 0x10($v1)
/* 0930C4 8010A654 3C048013 */  lui   $a0, %hi(D_8012BD34) # $a0, 0x8013
/* 0930C8 8010A658 2484BD34 */  addiu $a0, %lo(D_8012BD34) # addiu $a0, $a0, -0x42cc
/* 0930CC 8010A65C 46124182 */  mul.s $f6, $f8, $f18
/* 0930D0 8010A660 46045401 */  sub.s $f16, $f10, $f4
/* 0930D4 8010A664 C5880008 */  lwc1  $f8, 8($t4)
/* 0930D8 8010A668 C584000C */  lwc1  $f4, 0xc($t4)
/* 0930DC 8010A66C 27A50074 */  addiu $a1, $sp, 0x74
/* 0930E0 8010A670 46104482 */  mul.s $f18, $f8, $f16
/* 0930E4 8010A674 3C073F80 */  lui   $a3, 0x3f80
/* 0930E8 8010A678 46123280 */  add.s $f10, $f6, $f18
/* 0930EC 8010A67C C5860004 */  lwc1  $f6, 4($t4)
/* 0930F0 8010A680 46045200 */  add.s $f8, $f10, $f4
/* 0930F4 8010A684 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 0930F8 8010A688 46004407 */  neg.s $f16, $f8
/* 0930FC 8010A68C 46068483 */  div.s $f18, $f16, $f6
/* 093100 8010A690 4612503C */  c.lt.s $f10, $f18
/* 093104 8010A694 E7B20044 */  swc1  $f18, 0x44($sp)
/* 093108 8010A698 4500000A */  bc1f  .L8010A6C4_ovl2
/* 09310C 8010A69C 00000000 */   nop   
/* 093110 8010A6A0 AFA80048 */  sw    $t0, 0x48($sp)
/* 093114 8010A6A4 0C042216 */  jal   func_80108858_ovl2
/* 093118 8010A6A8 AFA90058 */   sw    $t1, 0x58($sp)
/* 09311C 8010A6AC 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 093120 8010A6B0 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 093124 8010A6B4 8FA80048 */  lw    $t0, 0x48($sp)
/* 093128 8010A6B8 10400002 */  beqz  $v0, .L8010A6C4_ovl2
/* 09312C 8010A6BC 8FA90058 */   lw    $t1, 0x58($sp)
/* 093130 8010A6C0 24080001 */  li    $t0, 1
.L8010A6C4_ovl2:
/* 093134 8010A6C4 11000012 */  beqz  $t0, .L8010A710_ovl2
/* 093138 8010A6C8 3C0D8013 */   lui   $t5, %hi(D_8012BD34) # $t5, 0x8013
/* 09313C 8010A6CC 27AE0074 */  addiu $t6, $sp, 0x74
/* 093140 8010A6D0 8DD80000 */  lw    $t8, ($t6)
/* 093144 8010A6D4 25ADBD34 */  addiu $t5, %lo(D_8012BD34) # addiu $t5, $t5, -0x42cc
/* 093148 8010A6D8 8DCF0004 */  lw    $t7, 4($t6)
/* 09314C 8010A6DC ADB80000 */  sw    $t8, ($t5)
/* 093150 8010A6E0 8DD80008 */  lw    $t8, 8($t6)
/* 093154 8010A6E4 ADAF0004 */  sw    $t7, 4($t5)
/* 093158 8010A6E8 24090400 */  li    $t1, 1024
/* 09315C 8010A6EC ADB80008 */  sw    $t8, 8($t5)
/* 093160 8010A6F0 8FB90064 */  lw    $t9, 0x64($sp)
/* 093164 8010A6F4 AE19000C */  sw    $t9, 0xc($s0)
/* 093168 8010A6F8 8FAA0060 */  lw    $t2, 0x60($sp)
/* 09316C 8010A6FC AE0A0008 */  sw    $t2, 8($s0)
/* 093170 8010A700 8FAB005C */  lw    $t3, 0x5c($sp)
/* 093174 8010A704 AE0B0004 */  sw    $t3, 4($s0)
/* 093178 8010A708 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 09317C 8010A70C E7A40054 */  swc1  $f4, 0x54($sp)
.L8010A710_ovl2:
/* 093180 8010A710 C6280004 */  lwc1  $f8, 4($s1)
/* 093184 8010A714 C4700004 */  lwc1  $f16, 4($v1)
/* 093188 8010A718 26220010 */  addiu $v0, $s1, 0x10
/* 09318C 8010A71C 27AC0074 */  addiu $t4, $sp, 0x74
/* 093190 8010A720 46104180 */  add.s $f6, $f8, $f16
/* 093194 8010A724 C4700008 */  lwc1  $f16, 8($v1)
/* 093198 8010A728 27AD0064 */  addiu $t5, $sp, 0x64
/* 09319C 8010A72C 27AE0060 */  addiu $t6, $sp, 0x60
/* 0931A0 8010A730 E7A60098 */  swc1  $f6, 0x98($sp)
/* 0931A4 8010A734 C62A0008 */  lwc1  $f10, 8($s1)
/* 0931A8 8010A738 C4520004 */  lwc1  $f18, 4($v0)
/* 0931AC 8010A73C 27AF005C */  addiu $t7, $sp, 0x5c
/* 0931B0 8010A740 27A40098 */  addiu $a0, $sp, 0x98
/* 0931B4 8010A744 46125100 */  add.s $f4, $f10, $f18
/* 0931B8 8010A748 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 0931BC 8010A74C 27A5008C */  addiu $a1, $sp, 0x8c
/* 0931C0 8010A750 27A60080 */  addiu $a2, $sp, 0x80
/* 0931C4 8010A754 E7A4009C */  swc1  $f4, 0x9c($sp)
/* 0931C8 8010A758 C628000C */  lwc1  $f8, 0xc($s1)
/* 0931CC 8010A75C E7AA008C */  swc1  $f10, 0x8c($sp)
/* 0931D0 8010A760 00003825 */  move  $a3, $zero
/* 0931D4 8010A764 46104180 */  add.s $f6, $f8, $f16
/* 0931D8 8010A768 E7A600A0 */  swc1  $f6, 0xa0($sp)
/* 0931DC 8010A76C C4440008 */  lwc1  $f4, 8($v0)
/* 0931E0 8010A770 C6320008 */  lwc1  $f18, 8($s1)
/* 0931E4 8010A774 C7B000A0 */  lwc1  $f16, 0xa0($sp)
/* 0931E8 8010A778 AFA90058 */  sw    $t1, 0x58($sp)
/* 0931EC 8010A77C 46049200 */  add.s $f8, $f18, $f4
/* 0931F0 8010A780 AFAF001C */  sw    $t7, 0x1c($sp)
/* 0931F4 8010A784 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0931F8 8010A788 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0931FC 8010A78C E7A80090 */  swc1  $f8, 0x90($sp)
/* 093200 8010A790 AFAC0010 */  sw    $t4, 0x10($sp)
/* 093204 8010A794 0C040FA8 */  jal   func_80103EA0_ovl2
/* 093208 8010A798 E7B00094 */   swc1  $f16, 0x94($sp)
/* 09320C 8010A79C 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 093210 8010A7A0 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 093214 8010A7A4 10400050 */  beqz  $v0, .L8010A8E8_ovl2
/* 093218 8010A7A8 8FA90058 */   lw    $t1, 0x58($sp)
/* 09321C 8010A7AC 15200015 */  bnez  $t1, .L8010A804_ovl2
/* 093220 8010A7B0 00004025 */   move  $t0, $zero
/* 093224 8010A7B4 C7A60074 */  lwc1  $f6, 0x74($sp)
/* 093228 8010A7B8 C46A0004 */  lwc1  $f10, 4($v1)
/* 09322C 8010A7BC 8FB80064 */  lw    $t8, 0x64($sp)
/* 093230 8010A7C0 C7B0007C */  lwc1  $f16, 0x7c($sp)
/* 093234 8010A7C4 460A3481 */  sub.s $f18, $f6, $f10
/* 093238 8010A7C8 C4660008 */  lwc1  $f6, 8($v1)
/* 09323C 8010A7CC C7040000 */  lwc1  $f4, ($t8)
/* 093240 8010A7D0 24080001 */  li    $t0, 1
/* 093244 8010A7D4 46068281 */  sub.s $f10, $f16, $f6
/* 093248 8010A7D8 46122202 */  mul.s $f8, $f4, $f18
/* 09324C 8010A7DC C7040008 */  lwc1  $f4, 8($t8)
/* 093250 8010A7E0 C706000C */  lwc1  $f6, 0xc($t8)
/* 093254 8010A7E4 460A2482 */  mul.s $f18, $f4, $f10
/* 093258 8010A7E8 46124400 */  add.s $f16, $f8, $f18
/* 09325C 8010A7EC C7080004 */  lwc1  $f8, 4($t8)
/* 093260 8010A7F0 46068100 */  add.s $f4, $f16, $f6
/* 093264 8010A7F4 46002287 */  neg.s $f10, $f4
/* 093268 8010A7F8 46085483 */  div.s $f18, $f10, $f8
/* 09326C 8010A7FC 10000027 */  b     .L8010A89C_ovl2
/* 093270 8010A800 E7B2003C */   swc1  $f18, 0x3c($sp)
.L8010A804_ovl2:
/* 093274 8010A804 8E06000C */  lw    $a2, 0xc($s0)
/* 093278 8010A808 8FB90064 */  lw    $t9, 0x64($sp)
/* 09327C 8010A80C C7B00074 */  lwc1  $f16, 0x74($sp)
/* 093280 8010A810 13260022 */  beq   $t9, $a2, .L8010A89C_ovl2
/* 093284 8010A814 00000000 */   nop   
/* 093288 8010A818 C4660004 */  lwc1  $f6, 4($v1)
/* 09328C 8010A81C C72A0000 */  lwc1  $f10, ($t9)
/* 093290 8010A820 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* 093294 8010A824 46068101 */  sub.s $f4, $f16, $f6
/* 093298 8010A828 C4700008 */  lwc1  $f16, 8($v1)
/* 09329C 8010A82C 3C048013 */  lui   $a0, %hi(D_8012BD34) # $a0, 0x8013
/* 0932A0 8010A830 2484BD34 */  addiu $a0, %lo(D_8012BD34) # addiu $a0, $a0, -0x42cc
/* 0932A4 8010A834 46045202 */  mul.s $f8, $f10, $f4
/* 0932A8 8010A838 46109181 */  sub.s $f6, $f18, $f16
/* 0932AC 8010A83C C72A0008 */  lwc1  $f10, 8($t9)
/* 0932B0 8010A840 C730000C */  lwc1  $f16, 0xc($t9)
/* 0932B4 8010A844 27A50074 */  addiu $a1, $sp, 0x74
/* 0932B8 8010A848 46065102 */  mul.s $f4, $f10, $f6
/* 0932BC 8010A84C 3C073F80 */  lui   $a3, 0x3f80
/* 0932C0 8010A850 46044480 */  add.s $f18, $f8, $f4
/* 0932C4 8010A854 C7280004 */  lwc1  $f8, 4($t9)
/* 0932C8 8010A858 46109280 */  add.s $f10, $f18, $f16
/* 0932CC 8010A85C C7B20054 */  lwc1  $f18, 0x54($sp)
/* 0932D0 8010A860 46005187 */  neg.s $f6, $f10
/* 0932D4 8010A864 46083103 */  div.s $f4, $f6, $f8
/* 0932D8 8010A868 4604903C */  c.lt.s $f18, $f4
/* 0932DC 8010A86C E7A4003C */  swc1  $f4, 0x3c($sp)
/* 0932E0 8010A870 4500000A */  bc1f  .L8010A89C_ovl2
/* 0932E4 8010A874 00000000 */   nop   
/* 0932E8 8010A878 AFA80040 */  sw    $t0, 0x40($sp)
/* 0932EC 8010A87C 0C042216 */  jal   func_80108858_ovl2
/* 0932F0 8010A880 AFA90058 */   sw    $t1, 0x58($sp)
/* 0932F4 8010A884 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 0932F8 8010A888 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 0932FC 8010A88C 8FA80040 */  lw    $t0, 0x40($sp)
/* 093300 8010A890 10400002 */  beqz  $v0, .L8010A89C_ovl2
/* 093304 8010A894 8FA90058 */   lw    $t1, 0x58($sp)
/* 093308 8010A898 24080001 */  li    $t0, 1
.L8010A89C_ovl2:
/* 09330C 8010A89C 11000012 */  beqz  $t0, .L8010A8E8_ovl2
/* 093310 8010A8A0 3C0A8013 */   lui   $t2, %hi(D_8012BD34) # $t2, 0x8013
/* 093314 8010A8A4 27AB0074 */  addiu $t3, $sp, 0x74
/* 093318 8010A8A8 8D6D0000 */  lw    $t5, ($t3)
/* 09331C 8010A8AC 254ABD34 */  addiu $t2, %lo(D_8012BD34) # addiu $t2, $t2, -0x42cc
/* 093320 8010A8B0 8D6C0004 */  lw    $t4, 4($t3)
/* 093324 8010A8B4 AD4D0000 */  sw    $t5, ($t2)
/* 093328 8010A8B8 8D6D0008 */  lw    $t5, 8($t3)
/* 09332C 8010A8BC AD4C0004 */  sw    $t4, 4($t2)
/* 093330 8010A8C0 24090800 */  li    $t1, 2048
/* 093334 8010A8C4 AD4D0008 */  sw    $t5, 8($t2)
/* 093338 8010A8C8 8FAE0064 */  lw    $t6, 0x64($sp)
/* 09333C 8010A8CC AE0E000C */  sw    $t6, 0xc($s0)
/* 093340 8010A8D0 8FAF0060 */  lw    $t7, 0x60($sp)
/* 093344 8010A8D4 AE0F0008 */  sw    $t7, 8($s0)
/* 093348 8010A8D8 8FB8005C */  lw    $t8, 0x5c($sp)
/* 09334C 8010A8DC AE180004 */  sw    $t8, 4($s0)
/* 093350 8010A8E0 C7B0003C */  lwc1  $f16, 0x3c($sp)
/* 093354 8010A8E4 E7B00054 */  swc1  $f16, 0x54($sp)
.L8010A8E8_ovl2:
/* 093358 8010A8E8 C62A0004 */  lwc1  $f10, 4($s1)
/* 09335C 8010A8EC C466000C */  lwc1  $f6, 0xc($v1)
/* 093360 8010A8F0 C4640010 */  lwc1  $f4, 0x10($v1)
/* 093364 8010A8F4 27B90074 */  addiu $t9, $sp, 0x74
/* 093368 8010A8F8 46065200 */  add.s $f8, $f10, $f6
/* 09336C 8010A8FC 27AA0064 */  addiu $t2, $sp, 0x64
/* 093370 8010A900 27AB0060 */  addiu $t3, $sp, 0x60
/* 093374 8010A904 27AC005C */  addiu $t4, $sp, 0x5c
/* 093378 8010A908 E7A80098 */  swc1  $f8, 0x98($sp)
/* 09337C 8010A90C C632000C */  lwc1  $f18, 0xc($s1)
/* 093380 8010A910 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 093384 8010A914 AFA90058 */  sw    $t1, 0x58($sp)
/* 093388 8010A918 46049400 */  add.s $f16, $f18, $f4
/* 09338C 8010A91C AFAC001C */  sw    $t4, 0x1c($sp)
/* 093390 8010A920 AFAB0018 */  sw    $t3, 0x18($sp)
/* 093394 8010A924 AFAA0014 */  sw    $t2, 0x14($sp)
/* 093398 8010A928 E7B000A0 */  swc1  $f16, 0xa0($sp)
/* 09339C 8010A92C C7A600A0 */  lwc1  $f6, 0xa0($sp)
/* 0933A0 8010A930 AFB90010 */  sw    $t9, 0x10($sp)
/* 0933A4 8010A934 27A40098 */  addiu $a0, $sp, 0x98
/* 0933A8 8010A938 27A5008C */  addiu $a1, $sp, 0x8c
/* 0933AC 8010A93C 27A60080 */  addiu $a2, $sp, 0x80
/* 0933B0 8010A940 00003825 */  move  $a3, $zero
/* 0933B4 8010A944 E7AA008C */  swc1  $f10, 0x8c($sp)
/* 0933B8 8010A948 0C040FA8 */  jal   func_80103EA0_ovl2
/* 0933BC 8010A94C E7A60094 */   swc1  $f6, 0x94($sp)
/* 0933C0 8010A950 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 0933C4 8010A954 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 0933C8 8010A958 10400038 */  beqz  $v0, .L8010AA3C_ovl2
/* 0933CC 8010A95C 8FA90058 */   lw    $t1, 0x58($sp)
/* 0933D0 8010A960 15200003 */  bnez  $t1, .L8010A970_ovl2
/* 0933D4 8010A964 00008825 */   move  $s1, $zero
/* 0933D8 8010A968 10000023 */  b     .L8010A9F8_ovl2
/* 0933DC 8010A96C 24110001 */   li    $s1, 1
.L8010A970_ovl2:
/* 0933E0 8010A970 8E06000C */  lw    $a2, 0xc($s0)
/* 0933E4 8010A974 8FAD0064 */  lw    $t5, 0x64($sp)
/* 0933E8 8010A978 C7A80074 */  lwc1  $f8, 0x74($sp)
/* 0933EC 8010A97C 11A6001E */  beq   $t5, $a2, .L8010A9F8_ovl2
/* 0933F0 8010A980 00000000 */   nop   
/* 0933F4 8010A984 C472000C */  lwc1  $f18, 0xc($v1)
/* 0933F8 8010A988 C5B00000 */  lwc1  $f16, ($t5)
/* 0933FC 8010A98C C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 093400 8010A990 46124101 */  sub.s $f4, $f8, $f18
/* 093404 8010A994 C4680010 */  lwc1  $f8, 0x10($v1)
/* 093408 8010A998 3C048013 */  lui   $a0, %hi(D_8012BD34) # $a0, 0x8013
/* 09340C 8010A99C 2484BD34 */  addiu $a0, %lo(D_8012BD34) # addiu $a0, $a0, -0x42cc
/* 093410 8010A9A0 46048282 */  mul.s $f10, $f16, $f4
/* 093414 8010A9A4 46083481 */  sub.s $f18, $f6, $f8
/* 093418 8010A9A8 C5B00008 */  lwc1  $f16, 8($t5)
/* 09341C 8010A9AC C5A8000C */  lwc1  $f8, 0xc($t5)
/* 093420 8010A9B0 27A50074 */  addiu $a1, $sp, 0x74
/* 093424 8010A9B4 46128102 */  mul.s $f4, $f16, $f18
/* 093428 8010A9B8 3C073F80 */  lui   $a3, 0x3f80
/* 09342C 8010A9BC 46045180 */  add.s $f6, $f10, $f4
/* 093430 8010A9C0 C5AA0004 */  lwc1  $f10, 4($t5)
/* 093434 8010A9C4 C7A40054 */  lwc1  $f4, 0x54($sp)
/* 093438 8010A9C8 46083400 */  add.s $f16, $f6, $f8
/* 09343C 8010A9CC 46008487 */  neg.s $f18, $f16
/* 093440 8010A9D0 460A9003 */  div.s $f0, $f18, $f10
/* 093444 8010A9D4 4600203C */  c.lt.s $f4, $f0
/* 093448 8010A9D8 00000000 */  nop   
/* 09344C 8010A9DC 45000006 */  bc1f  .L8010A9F8_ovl2
/* 093450 8010A9E0 00000000 */   nop   
/* 093454 8010A9E4 0C042216 */  jal   func_80108858_ovl2
/* 093458 8010A9E8 AFA90058 */   sw    $t1, 0x58($sp)
/* 09345C 8010A9EC 10400002 */  beqz  $v0, .L8010A9F8_ovl2
/* 093460 8010A9F0 8FA90058 */   lw    $t1, 0x58($sp)
/* 093464 8010A9F4 24110001 */  li    $s1, 1
.L8010A9F8_ovl2:
/* 093468 8010A9F8 12200010 */  beqz  $s1, .L8010AA3C_ovl2
/* 09346C 8010A9FC 3C0E8013 */   lui   $t6, %hi(D_8012BD34) # $t6, 0x8013
/* 093470 8010AA00 27AF0074 */  addiu $t7, $sp, 0x74
/* 093474 8010AA04 8DF90000 */  lw    $t9, ($t7)
/* 093478 8010AA08 25CEBD34 */  addiu $t6, %lo(D_8012BD34) # addiu $t6, $t6, -0x42cc
/* 09347C 8010AA0C 8DF80004 */  lw    $t8, 4($t7)
/* 093480 8010AA10 ADD90000 */  sw    $t9, ($t6)
/* 093484 8010AA14 8DF90008 */  lw    $t9, 8($t7)
/* 093488 8010AA18 ADD80004 */  sw    $t8, 4($t6)
/* 09348C 8010AA1C 24090400 */  li    $t1, 1024
/* 093490 8010AA20 ADD90008 */  sw    $t9, 8($t6)
/* 093494 8010AA24 8FAA0064 */  lw    $t2, 0x64($sp)
/* 093498 8010AA28 AE0A000C */  sw    $t2, 0xc($s0)
/* 09349C 8010AA2C 8FAB0060 */  lw    $t3, 0x60($sp)
/* 0934A0 8010AA30 AE0B0008 */  sw    $t3, 8($s0)
/* 0934A4 8010AA34 8FAC005C */  lw    $t4, 0x5c($sp)
/* 0934A8 8010AA38 AE0C0004 */  sw    $t4, 4($s0)
.L8010AA3C_ovl2:
/* 0934AC 8010AA3C 1120000B */  beqz  $t1, .L8010AA6C_ovl2
/* 0934B0 8010AA40 00001025 */   move  $v0, $zero
/* 0934B4 8010AA44 8E0D0000 */  lw    $t5, ($s0)
/* 0934B8 8010AA48 960A0000 */  lhu   $t2, ($s0)
/* 0934BC 8010AA4C 24020001 */  li    $v0, 1
/* 0934C0 8010AA50 000D74C2 */  srl   $t6, $t5, 0x13
/* 0934C4 8010AA54 01C97825 */  or    $t7, $t6, $t1
/* 0934C8 8010AA58 000FC8C0 */  sll   $t9, $t7, 3
/* 0934CC 8010AA5C 314B0007 */  andi  $t3, $t2, 7
/* 0934D0 8010AA60 032B6025 */  or    $t4, $t9, $t3
/* 0934D4 8010AA64 10000001 */  b     .L8010AA6C_ovl2
/* 0934D8 8010AA68 A60C0000 */   sh    $t4, ($s0)
.L8010AA6C_ovl2:
/* 0934DC 8010AA6C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0934E0 8010AA70 8FB00024 */  lw    $s0, 0x24($sp)
/* 0934E4 8010AA74 8FB10028 */  lw    $s1, 0x28($sp)
/* 0934E8 8010AA78 03E00008 */  jr    $ra
/* 0934EC 8010AA7C 27BD00A8 */   addiu $sp, $sp, 0xa8
