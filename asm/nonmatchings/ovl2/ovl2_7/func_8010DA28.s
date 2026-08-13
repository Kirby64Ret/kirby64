nonmatching func_8010DA28, 0x13C

glabel func_8010DA28
    /* 96498 8010DA28 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 9649C 8010DA2C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 964A0 8010DA30 AFB00028 */  sw         $s0, 0x28($sp)
    /* 964A4 8010DA34 0C0413EE */  jal        func_80104FB8
    /* 964A8 8010DA38 00808025 */   or        $s0, $a0, $zero
    /* 964AC 8010DA3C 44800000 */  mtc1       $zero, $f0
    /* 964B0 8010DA40 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 964B4 8010DA44 44812000 */  mtc1       $at, $f4
    /* 964B8 8010DA48 3C038013 */  lui        $v1, %hi(D_8012BD00)
    /* 964BC 8010DA4C 2463BD00 */  addiu      $v1, $v1, %lo(D_8012BD00)
    /* 964C0 8010DA50 E7A00038 */  swc1       $f0, 0x38($sp)
    /* 964C4 8010DA54 E7A00040 */  swc1       $f0, 0x40($sp)
    /* 964C8 8010DA58 E7A4003C */  swc1       $f4, 0x3C($sp)
    /* 964CC 8010DA5C C6060004 */  lwc1       $f6, 0x4($s0)
    /* 964D0 8010DA60 C4680004 */  lwc1       $f8, 0x4($v1)
    /* 964D4 8010DA64 26020010 */  addiu      $v0, $s0, 0x10
    /* 964D8 8010DA68 27A40050 */  addiu      $a0, $sp, 0x50
    /* 964DC 8010DA6C 46083280 */  add.s      $f10, $f6, $f8
    /* 964E0 8010DA70 C4680008 */  lwc1       $f8, 0x8($v1)
    /* 964E4 8010DA74 27A50044 */  addiu      $a1, $sp, 0x44
    /* 964E8 8010DA78 27A60038 */  addiu      $a2, $sp, 0x38
    /* 964EC 8010DA7C E7AA0050 */  swc1       $f10, 0x50($sp)
    /* 964F0 8010DA80 C6100008 */  lwc1       $f16, 0x8($s0)
    /* 964F4 8010DA84 C4520008 */  lwc1       $f18, 0x8($v0)
    /* 964F8 8010DA88 00003825 */  or         $a3, $zero, $zero
    /* 964FC 8010DA8C 46128100 */  add.s      $f4, $f16, $f18
    /* 96500 8010DA90 C7B00050 */  lwc1       $f16, 0x50($sp)
    /* 96504 8010DA94 E7A40054 */  swc1       $f4, 0x54($sp)
    /* 96508 8010DA98 C606000C */  lwc1       $f6, 0xC($s0)
    /* 9650C 8010DA9C E7B00044 */  swc1       $f16, 0x44($sp)
    /* 96510 8010DAA0 46083280 */  add.s      $f10, $f6, $f8
    /* 96514 8010DAA4 E7AA0058 */  swc1       $f10, 0x58($sp)
    /* 96518 8010DAA8 C4440004 */  lwc1       $f4, 0x4($v0)
    /* 9651C 8010DAAC C6120008 */  lwc1       $f18, 0x8($s0)
    /* 96520 8010DAB0 C7A80058 */  lwc1       $f8, 0x58($sp)
    /* 96524 8010DAB4 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 96528 8010DAB8 46049180 */  add.s      $f6, $f18, $f4
    /* 9652C 8010DABC AFA00018 */  sw         $zero, 0x18($sp)
    /* 96530 8010DAC0 AFA00014 */  sw         $zero, 0x14($sp)
    /* 96534 8010DAC4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 96538 8010DAC8 E7A60048 */  swc1       $f6, 0x48($sp)
    /* 9653C 8010DACC 0C040FA8 */  jal        func_80103EA0
    /* 96540 8010DAD0 E7A8004C */   swc1      $f8, 0x4C($sp)
    /* 96544 8010DAD4 3C038013 */  lui        $v1, %hi(D_8012BD00)
    /* 96548 8010DAD8 10400003 */  beqz       $v0, .L8010DAE8
    /* 9654C 8010DADC 2463BD00 */   addiu     $v1, $v1, %lo(D_8012BD00)
    /* 96550 8010DAE0 1000001B */  b          .L8010DB50
    /* 96554 8010DAE4 24020001 */   addiu     $v0, $zero, 0x1
  .L8010DAE8:
    /* 96558 8010DAE8 C60A0004 */  lwc1       $f10, 0x4($s0)
    /* 9655C 8010DAEC C470000C */  lwc1       $f16, 0xC($v1)
    /* 96560 8010DAF0 C4660010 */  lwc1       $f6, 0x10($v1)
    /* 96564 8010DAF4 27A40050 */  addiu      $a0, $sp, 0x50
    /* 96568 8010DAF8 46105480 */  add.s      $f18, $f10, $f16
    /* 9656C 8010DAFC 27A50044 */  addiu      $a1, $sp, 0x44
    /* 96570 8010DB00 27A60038 */  addiu      $a2, $sp, 0x38
    /* 96574 8010DB04 00003825 */  or         $a3, $zero, $zero
    /* 96578 8010DB08 E7B20050 */  swc1       $f18, 0x50($sp)
    /* 9657C 8010DB0C C604000C */  lwc1       $f4, 0xC($s0)
    /* 96580 8010DB10 C7AA0050 */  lwc1       $f10, 0x50($sp)
    /* 96584 8010DB14 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 96588 8010DB18 46062200 */  add.s      $f8, $f4, $f6
    /* 9658C 8010DB1C AFA00018 */  sw         $zero, 0x18($sp)
    /* 96590 8010DB20 AFA00014 */  sw         $zero, 0x14($sp)
    /* 96594 8010DB24 AFA00010 */  sw         $zero, 0x10($sp)
    /* 96598 8010DB28 E7A80058 */  swc1       $f8, 0x58($sp)
    /* 9659C 8010DB2C C7B00058 */  lwc1       $f16, 0x58($sp)
    /* 965A0 8010DB30 E7AA0044 */  swc1       $f10, 0x44($sp)
    /* 965A4 8010DB34 0C040FA8 */  jal        func_80103EA0
    /* 965A8 8010DB38 E7B0004C */   swc1      $f16, 0x4C($sp)
    /* 965AC 8010DB3C 50400004 */  beql       $v0, $zero, .L8010DB50
    /* 965B0 8010DB40 00001025 */   or        $v0, $zero, $zero
    /* 965B4 8010DB44 10000002 */  b          .L8010DB50
    /* 965B8 8010DB48 24020001 */   addiu     $v0, $zero, 0x1
    /* 965BC 8010DB4C 00001025 */  or         $v0, $zero, $zero
  .L8010DB50:
    /* 965C0 8010DB50 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 965C4 8010DB54 8FB00028 */  lw         $s0, 0x28($sp)
    /* 965C8 8010DB58 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 965CC 8010DB5C 03E00008 */  jr         $ra
    /* 965D0 8010DB60 00000000 */   nop
endlabel func_8010DA28
.size func_8010DA28, . - func_8010DA28
