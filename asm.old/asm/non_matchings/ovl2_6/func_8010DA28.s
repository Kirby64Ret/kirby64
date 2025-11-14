glabel func_8010DA28
/* 096498 8010DA28 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 09649C 8010DA2C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0964A0 8010DA30 AFB00028 */  sw    $s0, 0x28($sp)
/* 0964A4 8010DA34 0C0413EE */  jal   func_80104FB8
/* 0964A8 8010DA38 00808025 */   move  $s0, $a0
/* 0964AC 8010DA3C 44800000 */  mtc1  $zero, $f0
/* 0964B0 8010DA40 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0964B4 8010DA44 44812000 */  mtc1  $at, $f4
/* 0964B8 8010DA48 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 0964BC 8010DA4C 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 0964C0 8010DA50 E7A00038 */  swc1  $f0, 0x38($sp)
/* 0964C4 8010DA54 E7A00040 */  swc1  $f0, 0x40($sp)
/* 0964C8 8010DA58 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 0964CC 8010DA5C C6060004 */  lwc1  $f6, 4($s0)
/* 0964D0 8010DA60 C4680004 */  lwc1  $f8, 4($v1)
/* 0964D4 8010DA64 26020010 */  addiu $v0, $s0, 0x10
/* 0964D8 8010DA68 27A40050 */  addiu $a0, $sp, 0x50
/* 0964DC 8010DA6C 46083280 */  add.s $f10, $f6, $f8
/* 0964E0 8010DA70 C4680008 */  lwc1  $f8, 8($v1)
/* 0964E4 8010DA74 27A50044 */  addiu $a1, $sp, 0x44
/* 0964E8 8010DA78 27A60038 */  addiu $a2, $sp, 0x38
/* 0964EC 8010DA7C E7AA0050 */  swc1  $f10, 0x50($sp)
/* 0964F0 8010DA80 C6100008 */  lwc1  $f16, 8($s0)
/* 0964F4 8010DA84 C4520008 */  lwc1  $f18, 8($v0)
/* 0964F8 8010DA88 00003825 */  move  $a3, $zero
/* 0964FC 8010DA8C 46128100 */  add.s $f4, $f16, $f18
/* 096500 8010DA90 C7B00050 */  lwc1  $f16, 0x50($sp)
/* 096504 8010DA94 E7A40054 */  swc1  $f4, 0x54($sp)
/* 096508 8010DA98 C606000C */  lwc1  $f6, 0xc($s0)
/* 09650C 8010DA9C E7B00044 */  swc1  $f16, 0x44($sp)
/* 096510 8010DAA0 46083280 */  add.s $f10, $f6, $f8
/* 096514 8010DAA4 E7AA0058 */  swc1  $f10, 0x58($sp)
/* 096518 8010DAA8 C4440004 */  lwc1  $f4, 4($v0)
/* 09651C 8010DAAC C6120008 */  lwc1  $f18, 8($s0)
/* 096520 8010DAB0 C7A80058 */  lwc1  $f8, 0x58($sp)
/* 096524 8010DAB4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 096528 8010DAB8 46049180 */  add.s $f6, $f18, $f4
/* 09652C 8010DABC AFA00018 */  sw    $zero, 0x18($sp)
/* 096530 8010DAC0 AFA00014 */  sw    $zero, 0x14($sp)
/* 096534 8010DAC4 AFA00010 */  sw    $zero, 0x10($sp)
/* 096538 8010DAC8 E7A60048 */  swc1  $f6, 0x48($sp)
/* 09653C 8010DACC 0C040FA8 */  jal   func_80103EA0
/* 096540 8010DAD0 E7A8004C */   swc1  $f8, 0x4c($sp)
/* 096544 8010DAD4 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 096548 8010DAD8 10400003 */  beqz  $v0, .L8010DAE8_ovl2
/* 09654C 8010DADC 2463BD00 */   addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 096550 8010DAE0 1000001B */  b     .L8010DB50_ovl2
/* 096554 8010DAE4 24020001 */   li    $v0, 1
.L8010DAE8_ovl2:
/* 096558 8010DAE8 C60A0004 */  lwc1  $f10, 4($s0)
/* 09655C 8010DAEC C470000C */  lwc1  $f16, 0xc($v1)
/* 096560 8010DAF0 C4660010 */  lwc1  $f6, 0x10($v1)
/* 096564 8010DAF4 27A40050 */  addiu $a0, $sp, 0x50
/* 096568 8010DAF8 46105480 */  add.s $f18, $f10, $f16
/* 09656C 8010DAFC 27A50044 */  addiu $a1, $sp, 0x44
/* 096570 8010DB00 27A60038 */  addiu $a2, $sp, 0x38
/* 096574 8010DB04 00003825 */  move  $a3, $zero
/* 096578 8010DB08 E7B20050 */  swc1  $f18, 0x50($sp)
/* 09657C 8010DB0C C604000C */  lwc1  $f4, 0xc($s0)
/* 096580 8010DB10 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* 096584 8010DB14 AFA0001C */  sw    $zero, 0x1c($sp)
/* 096588 8010DB18 46062200 */  add.s $f8, $f4, $f6
/* 09658C 8010DB1C AFA00018 */  sw    $zero, 0x18($sp)
/* 096590 8010DB20 AFA00014 */  sw    $zero, 0x14($sp)
/* 096594 8010DB24 AFA00010 */  sw    $zero, 0x10($sp)
/* 096598 8010DB28 E7A80058 */  swc1  $f8, 0x58($sp)
/* 09659C 8010DB2C C7B00058 */  lwc1  $f16, 0x58($sp)
/* 0965A0 8010DB30 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 0965A4 8010DB34 0C040FA8 */  jal   func_80103EA0
/* 0965A8 8010DB38 E7B0004C */   swc1  $f16, 0x4c($sp)
/* 0965AC 8010DB3C 50400004 */  beql  $v0, $zero, .L8010DB50_ovl2
/* 0965B0 8010DB40 00001025 */   move  $v0, $zero
/* 0965B4 8010DB44 10000002 */  b     .L8010DB50_ovl2
/* 0965B8 8010DB48 24020001 */   li    $v0, 1
/* 0965BC 8010DB4C 00001025 */  move  $v0, $zero
.L8010DB50_ovl2:
/* 0965C0 8010DB50 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0965C4 8010DB54 8FB00028 */  lw    $s0, 0x28($sp)
/* 0965C8 8010DB58 27BD0060 */  addiu $sp, $sp, 0x60
/* 0965CC 8010DB5C 03E00008 */  jr    $ra
/* 0965D0 8010DB60 00000000 */   nop   
.type func_8010DA28, @function
.size func_8010DA28, . - func_8010DA28
