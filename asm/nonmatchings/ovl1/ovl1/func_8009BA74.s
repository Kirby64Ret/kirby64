nonmatching func_8009BA74, 0x1D8

glabel func_8009BA74
    /* 43CC4 8009BA74 3C08800D */  lui        $t0, %hi(D_800D69C0)
    /* 43CC8 8009BA78 250869C0 */  addiu      $t0, $t0, %lo(D_800D69C0)
    /* 43CCC 8009BA7C 8D030000 */  lw         $v1, 0x0($t0)
    /* 43CD0 8009BA80 AFA7000C */  sw         $a3, 0xC($sp)
    /* 43CD4 8009BA84 30E7FFFF */  andi       $a3, $a3, 0xFFFF
    /* 43CD8 8009BA88 14600003 */  bnez       $v1, .L8009BA98
    /* 43CDC 8009BA8C AFA40000 */   sw        $a0, 0x0($sp)
    /* 43CE0 8009BA90 03E00008 */  jr         $ra
    /* 43CE4 8009BA94 00001025 */   or        $v0, $zero, $zero
  .L8009BA98:
    /* 43CE8 8009BA98 3C04800D */  lui        $a0, %hi(D_800D6AE0)
    /* 43CEC 8009BA9C 24846AE0 */  addiu      $a0, $a0, %lo(D_800D6AE0)
    /* 43CF0 8009BAA0 948E0000 */  lhu        $t6, 0x0($a0)
    /* 43CF4 8009BAA4 3C09800D */  lui        $t1, %hi(D_800D6AE6)
    /* 43CF8 8009BAA8 25296AE6 */  addiu      $t1, $t1, %lo(D_800D6AE6)
    /* 43CFC 8009BAAC 95380000 */  lhu        $t8, 0x0($t1)
    /* 43D00 8009BAB0 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 43D04 8009BAB4 31E2FFFF */  andi       $v0, $t7, 0xFFFF
    /* 43D08 8009BAB8 0302082A */  slt        $at, $t8, $v0
    /* 43D0C 8009BABC 10200002 */  beqz       $at, .L8009BAC8
    /* 43D10 8009BAC0 A48F0000 */   sh        $t7, 0x0($a0)
    /* 43D14 8009BAC4 A5220000 */  sh         $v0, 0x0($t1)
  .L8009BAC8:
    /* 43D18 8009BAC8 8FA40040 */  lw         $a0, 0x40($sp)
    /* 43D1C 8009BACC 3C02800C */  lui        $v0, %hi(D_800BE3E8)
    /* 43D20 8009BAD0 2442E3E8 */  addiu      $v0, $v0, %lo(D_800BE3E8)
    /* 43D24 8009BAD4 50800005 */  beql       $a0, $zero, .L8009BAEC
    /* 43D28 8009BAD8 944A0000 */   lhu       $t2, 0x0($v0)
    /* 43D2C 8009BADC 94990004 */  lhu        $t9, 0x4($a0)
    /* 43D30 8009BAE0 10000005 */  b          .L8009BAF8
    /* 43D34 8009BAE4 A4790004 */   sh        $t9, 0x4($v1)
    /* 43D38 8009BAE8 944A0000 */  lhu        $t2, 0x0($v0)
  .L8009BAEC:
    /* 43D3C 8009BAEC 254C0001 */  addiu      $t4, $t2, 0x1
    /* 43D40 8009BAF0 A44C0000 */  sh         $t4, 0x0($v0)
    /* 43D44 8009BAF4 A46C0004 */  sh         $t4, 0x4($v1)
  .L8009BAF8:
    /* 43D48 8009BAF8 10800008 */  beqz       $a0, .L8009BB1C
    /* 43D4C 8009BAFC 000550C3 */   sra       $t2, $a1, 3
    /* 43D50 8009BB00 8C8D004C */  lw         $t5, 0x4C($a0)
    /* 43D54 8009BB04 11A00006 */  beqz       $t5, .L8009BB20
    /* 43D58 8009BB08 AC6D0060 */   sw        $t5, 0x60($v1)
    /* 43D5C 8009BB0C 95AE002A */  lhu        $t6, 0x2A($t5)
    /* 43D60 8009BB10 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 43D64 8009BB14 10000002 */  b          .L8009BB20
    /* 43D68 8009BB18 A5AF002A */   sh        $t7, 0x2A($t5)
  .L8009BB1C:
    /* 43D6C 8009BB1C AC600060 */  sw         $zero, 0x60($v1)
  .L8009BB20:
    /* 43D70 8009BB20 8FB90000 */  lw         $t9, 0x0($sp)
    /* 43D74 8009BB24 8C780000 */  lw         $t8, 0x0($v1)
    /* 43D78 8009BB28 000A5880 */  sll        $t3, $t2, 2
    /* 43D7C 8009BB2C 17200008 */  bnez       $t9, .L8009BB50
    /* 43D80 8009BB30 AD180000 */   sw        $t8, 0x0($t0)
    /* 43D84 8009BB34 3C0C800D */  lui        $t4, %hi(D_800D69C8)
    /* 43D88 8009BB38 258C69C8 */  addiu      $t4, $t4, %lo(D_800D69C8)
    /* 43D8C 8009BB3C 016C1021 */  addu       $v0, $t3, $t4
    /* 43D90 8009BB40 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 43D94 8009BB44 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 43D98 8009BB48 10000006 */  b          .L8009BB64
    /* 43D9C 8009BB4C AC430000 */   sw        $v1, 0x0($v0)
  .L8009BB50:
    /* 43DA0 8009BB50 8FAE0000 */  lw         $t6, 0x0($sp)
    /* 43DA4 8009BB54 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 43DA8 8009BB58 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 43DAC 8009BB5C 8FB80000 */  lw         $t8, 0x0($sp)
    /* 43DB0 8009BB60 AF030000 */  sw         $v1, 0x0($t8)
  .L8009BB64:
    /* 43DB4 8009BB64 A0650008 */  sb         $a1, 0x8($v1)
    /* 43DB8 8009BB68 A4660006 */  sh         $a2, 0x6($v1)
    /* 43DBC 8009BB6C A067000A */  sb         $a3, 0xA($v1)
    /* 43DC0 8009BB70 C7A40018 */  lwc1       $f4, 0x18($sp)
    /* 43DC4 8009BB74 34CE0010 */  ori        $t6, $a2, 0x10
    /* 43DC8 8009BB78 240F0001 */  addiu      $t7, $zero, 0x1
    /* 43DCC 8009BB7C E4640024 */  swc1       $f4, 0x24($v1)
    /* 43DD0 8009BB80 C7A6001C */  lwc1       $f6, 0x1C($sp)
    /* 43DD4 8009BB84 E4660028 */  swc1       $f6, 0x28($v1)
    /* 43DD8 8009BB88 C7A80020 */  lwc1       $f8, 0x20($sp)
    /* 43DDC 8009BB8C E468002C */  swc1       $f8, 0x2C($v1)
    /* 43DE0 8009BB90 C7AA0024 */  lwc1       $f10, 0x24($sp)
    /* 43DE4 8009BB94 E46A0030 */  swc1       $f10, 0x30($v1)
    /* 43DE8 8009BB98 C7B00028 */  lwc1       $f16, 0x28($sp)
    /* 43DEC 8009BB9C E4700034 */  swc1       $f16, 0x34($v1)
    /* 43DF0 8009BBA0 C7B2002C */  lwc1       $f18, 0x2C($sp)
    /* 43DF4 8009BBA4 E4720038 */  swc1       $f18, 0x38($v1)
    /* 43DF8 8009BBA8 C7A40030 */  lwc1       $f4, 0x30($sp)
    /* 43DFC 8009BBAC E4640044 */  swc1       $f4, 0x44($v1)
    /* 43E00 8009BBB0 C7A60034 */  lwc1       $f6, 0x34($sp)
    /* 43E04 8009BBB4 8FA20010 */  lw         $v0, 0x10($sp)
    /* 43E08 8009BBB8 E466003C */  swc1       $f6, 0x3C($v1)
    /* 43E0C 8009BBBC C7A80038 */  lwc1       $f8, 0x38($sp)
    /* 43E10 8009BBC0 E4680040 */  swc1       $f8, 0x40($v1)
    /* 43E14 8009BBC4 8FB90014 */  lw         $t9, 0x14($sp)
    /* 43E18 8009BBC8 A460001C */  sh         $zero, 0x1C($v1)
    /* 43E1C 8009BBCC A460001E */  sh         $zero, 0x1E($v1)
    /* 43E20 8009BBD0 272A0001 */  addiu      $t2, $t9, 0x1
    /* 43E24 8009BBD4 A46A0022 */  sh         $t2, 0x22($v1)
    /* 43E28 8009BBD8 AC620018 */  sw         $v0, 0x18($v1)
    /* 43E2C 8009BBDC 8FAC003C */  lw         $t4, 0x3C($sp)
    /* 43E30 8009BBE0 11800002 */  beqz       $t4, .L8009BBEC
    /* 43E34 8009BBE4 00000000 */   nop
    /* 43E38 8009BBE8 A46E0006 */  sh         $t6, 0x6($v1)
  .L8009BBEC:
    /* 43E3C 8009BBEC 50400004 */  beql       $v0, $zero, .L8009BC00
    /* 43E40 8009BBF0 A4600010 */   sh        $zero, 0x10($v1)
    /* 43E44 8009BBF4 10000002 */  b          .L8009BC00
    /* 43E48 8009BBF8 A46F0010 */   sh        $t7, 0x10($v1)
    /* 43E4C 8009BBFC A4600010 */  sh         $zero, 0x10($v1)
  .L8009BC00:
    /* 43E50 8009BC00 240200FF */  addiu      $v0, $zero, 0xFF
    /* 43E54 8009BC04 A062000C */  sb         $v0, 0xC($v1)
    /* 43E58 8009BC08 A062004F */  sb         $v0, 0x4F($v1)
    /* 43E5C 8009BC0C A062004E */  sb         $v0, 0x4E($v1)
    /* 43E60 8009BC10 A062004D */  sb         $v0, 0x4D($v1)
    /* 43E64 8009BC14 A062004C */  sb         $v0, 0x4C($v1)
    /* 43E68 8009BC18 00001025 */  or         $v0, $zero, $zero
    /* 43E6C 8009BC1C A0620056 */  sb         $v0, 0x56($v1)
    /* 43E70 8009BC20 A0620055 */  sb         $v0, 0x55($v1)
    /* 43E74 8009BC24 A0620054 */  sb         $v0, 0x54($v1)
    /* 43E78 8009BC28 A060000B */  sb         $zero, 0xB($v1)
    /* 43E7C 8009BC2C A0600057 */  sb         $zero, 0x57($v1)
    /* 43E80 8009BC30 A4600016 */  sh         $zero, 0x16($v1)
    /* 43E84 8009BC34 A4600014 */  sh         $zero, 0x14($v1)
    /* 43E88 8009BC38 A4600012 */  sh         $zero, 0x12($v1)
    /* 43E8C 8009BC3C AC64005C */  sw         $a0, 0x5C($v1)
    /* 43E90 8009BC40 00601025 */  or         $v0, $v1, $zero
    /* 43E94 8009BC44 03E00008 */  jr         $ra
    /* 43E98 8009BC48 00000000 */   nop
endlabel func_8009BA74
.size func_8009BA74, . - func_8009BA74
