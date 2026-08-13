nonmatching func_80173260_ovl3, 0x45C

glabel func_80173260_ovl3
    /* D3CA0 80173260 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D3CA4 80173264 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* D3CA8 80173268 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* D3CAC 8017326C AFBF0014 */  sw         $ra, 0x14($sp)
    /* D3CB0 80173270 AFA40020 */  sw         $a0, 0x20($sp)
    /* D3CB4 80173274 AFA0001C */  sw         $zero, 0x1C($sp)
    /* D3CB8 80173278 8DCF0000 */  lw         $t7, 0x0($t6)
    /* D3CBC 8017327C 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* D3CC0 80173280 000FC080 */  sll        $t8, $t7, 2
    /* D3CC4 80173284 0338C821 */  addu       $t9, $t9, $t8
    /* D3CC8 80173288 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* D3CCC 8017328C 8F280020 */  lw         $t0, 0x20($t9)
    /* D3CD0 80173290 0C054E61 */  jal        func_80153984_ovl3
    /* D3CD4 80173294 AFA80018 */   sw        $t0, 0x18($sp)
    /* D3CD8 80173298 3C01801A */  lui        $at, %hi(D_80198820_ovl3)
    /* D3CDC 8017329C C4248820 */  lwc1       $f4, %lo(D_80198820_ovl3)($at)
    /* D3CE0 801732A0 8FA90018 */  lw         $t1, 0x18($sp)
    /* D3CE4 801732A4 0C0485EE */  jal        func_801217B8
    /* D3CE8 801732A8 E5240030 */   swc1      $f4, 0x30($t1)
    /* D3CEC 801732AC 14400015 */  bnez       $v0, .L80173304_ovl3
    /* D3CF0 801732B0 3C038013 */   lui       $v1, %hi(gKirbyState)
    /* D3CF4 801732B4 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* D3CF8 801732B8 8C6A00E4 */  lw         $t2, 0xE4($v1)
    /* D3CFC 801732BC 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* D3D00 801732C0 11400010 */  beqz       $t2, .L80173304_ovl3
    /* D3D04 801732C4 00000000 */   nop
    /* D3D08 801732C8 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* D3D0C 801732CC 3C0E800E */  lui        $t6, %hi(D_800E3210)
    /* D3D10 801732D0 25CE3210 */  addiu      $t6, $t6, %lo(D_800E3210)
    /* D3D14 801732D4 8D6C0000 */  lw         $t4, 0x0($t3)
    /* D3D18 801732D8 44803000 */  mtc1       $zero, $f6
    /* D3D1C 801732DC 000C6880 */  sll        $t5, $t4, 2
    /* D3D20 801732E0 01AE1021 */  addu       $v0, $t5, $t6
    /* D3D24 801732E4 C4480000 */  lwc1       $f8, 0x0($v0)
    /* D3D28 801732E8 4608303C */  c.lt.s     $f6, $f8
    /* D3D2C 801732EC 00000000 */  nop
    /* D3D30 801732F0 45000004 */  bc1f       .L80173304_ovl3
    /* D3D34 801732F4 00000000 */   nop
    /* D3D38 801732F8 44805000 */  mtc1       $zero, $f10
    /* D3D3C 801732FC 00000000 */  nop
    /* D3D40 80173300 E44A0000 */  swc1       $f10, 0x0($v0)
  .L80173304_ovl3:
    /* D3D44 80173304 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* D3D48 80173308 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* D3D4C 8017330C 906F0017 */  lbu        $t7, 0x17($v1)
    /* D3D50 80173310 2418FFFF */  addiu      $t8, $zero, -0x1
    /* D3D54 80173314 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* D3D58 80173318 51E0000F */  beql       $t7, $zero, .L80173358_ovl3
    /* D3D5C 8017331C 906C0004 */   lbu       $t4, 0x4($v1)
    /* D3D60 80173320 A06000B0 */  sb         $zero, 0xB0($v1)
    /* D3D64 80173324 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* D3D68 80173328 3C01800F */  lui        $at, %hi(D_800E8060)
    /* D3D6C 8017332C 240A0003 */  addiu      $t2, $zero, 0x3
    /* D3D70 80173330 8F280000 */  lw         $t0, 0x0($t9)
    /* D3D74 80173334 240B0001 */  addiu      $t3, $zero, 0x1
    /* D3D78 80173338 AFAB001C */  sw         $t3, 0x1C($sp)
    /* D3D7C 8017333C 00084880 */  sll        $t1, $t0, 2
    /* D3D80 80173340 00290821 */  addu       $at, $at, $t1
    /* D3D84 80173344 AC388060 */  sw         $t8, %lo(D_800E8060)($at)
    /* D3D88 80173348 3C01801A */  lui        $at, %hi(D_80198838_ovl3)
    /* D3D8C 8017334C 1000005E */  b          .L801734C8_ovl3
    /* D3D90 80173350 A42A8838 */   sh        $t2, %lo(D_80198838_ovl3)($at)
    /* D3D94 80173354 906C0004 */  lbu        $t4, 0x4($v1)
  .L80173358_ovl3:
    /* D3D98 80173358 24010001 */  addiu      $at, $zero, 0x1
    /* D3D9C 8017335C 55810044 */  bnel       $t4, $at, .L80173470_ovl3
    /* D3DA0 80173360 8C680030 */   lw        $t0, 0x30($v1)
    /* D3DA4 80173364 906D0008 */  lbu        $t5, 0x8($v1)
    /* D3DA8 80173368 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* D3DAC 8017336C 55A00040 */  bnel       $t5, $zero, .L80173470_ovl3
    /* D3DB0 80173370 8C680030 */   lw        $t0, 0x30($v1)
    /* D3DB4 80173374 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* D3DB8 80173378 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* D3DBC 8017337C 3C08800D */  lui        $t0, %hi(gKirbyController)
    /* D3DC0 80173380 8DCF0000 */  lw         $t7, 0x0($t6)
    /* D3DC4 80173384 3C0B800D */  lui        $t3, %hi(gKirbyController + 0x2)
    /* D3DC8 80173388 000FC880 */  sll        $t9, $t7, 2
    /* D3DCC 8017338C 00992021 */  addu       $a0, $a0, $t9
    /* D3DD0 80173390 8C848920 */  lw         $a0, %lo(D_800E8920)($a0)
    /* D3DD4 80173394 10800010 */  beqz       $a0, .L801733D8_ovl3
    /* D3DD8 80173398 00000000 */   nop
    /* D3DDC 8017339C 95086FE8 */  lhu        $t0, %lo(gKirbyController)($t0)
    /* D3DE0 801733A0 3C09800D */  lui        $t1, %hi(gKirbyController + 0x2)
    /* D3DE4 801733A4 31180400 */  andi       $t8, $t0, 0x400
    /* D3DE8 801733A8 1700000B */  bnez       $t8, .L801733D8_ovl3
    /* D3DEC 801733AC 00000000 */   nop
    /* D3DF0 801733B0 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* D3DF4 801733B4 24050005 */  addiu      $a1, $zero, 0x5
    /* D3DF8 801733B8 312A8000 */  andi       $t2, $t1, 0x8000
    /* D3DFC 801733BC 11400006 */  beqz       $t2, .L801733D8_ovl3
    /* D3E00 801733C0 00000000 */   nop
    /* D3E04 801733C4 0C048BDB */  jal        set_kirby_action_1
    /* D3E08 801733C8 24040003 */   addiu     $a0, $zero, 0x3
    /* D3E0C 801733CC 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* D3E10 801733D0 1000001F */  b          .L80173450_ovl3
    /* D3E14 801733D4 2463E7C0 */   addiu     $v1, $v1, %lo(gKirbyState)
  .L801733D8_ovl3:
    /* D3E18 801733D8 956B6FEA */  lhu        $t3, %lo(gKirbyController + 0x2)($t3)
    /* D3E1C 801733DC 24050019 */  addiu      $a1, $zero, 0x19
    /* D3E20 801733E0 3C02800D */  lui        $v0, %hi(gKirbyController)
    /* D3E24 801733E4 316C4000 */  andi       $t4, $t3, 0x4000
    /* D3E28 801733E8 11800006 */  beqz       $t4, .L80173404_ovl3
    /* D3E2C 801733EC 00000000 */   nop
    /* D3E30 801733F0 0C048BDB */  jal        set_kirby_action_1
    /* D3E34 801733F4 2404001A */   addiu     $a0, $zero, 0x1A
    /* D3E38 801733F8 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* D3E3C 801733FC 10000014 */  b          .L80173450_ovl3
    /* D3E40 80173400 2463E7C0 */   addiu     $v1, $v1, %lo(gKirbyState)
  .L80173404_ovl3:
    /* D3E44 80173404 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
    /* D3E48 80173408 24050011 */  addiu      $a1, $zero, 0x11
    /* D3E4C 8017340C 304D003F */  andi       $t5, $v0, 0x3F
    /* D3E50 80173410 11A00007 */  beqz       $t5, .L80173430_ovl3
    /* D3E54 80173414 00000000 */   nop
    /* D3E58 80173418 A0600007 */  sb         $zero, 0x7($v1)
    /* D3E5C 8017341C 0C048BDB */  jal        set_kirby_action_1
    /* D3E60 80173420 24040011 */   addiu     $a0, $zero, 0x11
    /* D3E64 80173424 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* D3E68 80173428 10000009 */  b          .L80173450_ovl3
    /* D3E6C 8017342C 2463E7C0 */   addiu     $v1, $v1, %lo(gKirbyState)
  .L80173430_ovl3:
    /* D3E70 80173430 10800007 */  beqz       $a0, .L80173450_ovl3
    /* D3E74 80173434 304E0400 */   andi      $t6, $v0, 0x400
    /* D3E78 80173438 11C00005 */  beqz       $t6, .L80173450_ovl3
    /* D3E7C 8017343C 2404000B */   addiu     $a0, $zero, 0xB
    /* D3E80 80173440 0C048BDB */  jal        set_kirby_action_1
    /* D3E84 80173444 24050010 */   addiu     $a1, $zero, 0x10
    /* D3E88 80173448 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* D3E8C 8017344C 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
  .L80173450_ovl3:
    /* D3E90 80173450 906F0005 */  lbu        $t7, 0x5($v1)
    /* D3E94 80173454 24010018 */  addiu      $at, $zero, 0x18
    /* D3E98 80173458 51E10005 */  beql       $t7, $at, .L80173470_ovl3
    /* D3E9C 8017345C 8C680030 */   lw        $t0, 0x30($v1)
    /* D3EA0 80173460 A06000B1 */  sb         $zero, 0xB1($v1)
    /* D3EA4 80173464 10000091 */  b          .L801736AC_ovl3
    /* D3EA8 80173468 A06000B0 */   sb        $zero, 0xB0($v1)
    /* D3EAC 8017346C 8C680030 */  lw         $t0, 0x30($v1)
  .L80173470_ovl3:
    /* D3EB0 80173470 24180001 */  addiu      $t8, $zero, 0x1
    /* D3EB4 80173474 51000004 */  beql       $t0, $zero, .L80173488_ovl3
    /* D3EB8 80173478 906900B0 */   lbu       $t1, 0xB0($v1)
    /* D3EBC 8017347C 10000012 */  b          .L801734C8_ovl3
    /* D3EC0 80173480 AFB8001C */   sw        $t8, 0x1C($sp)
    /* D3EC4 80173484 906900B0 */  lbu        $t1, 0xB0($v1)
  .L80173488_ovl3:
    /* D3EC8 80173488 51200010 */  beql       $t1, $zero, .L801734CC_ovl3
    /* D3ECC 8017348C 8FAF001C */   lw        $t7, 0x1C($sp)
    /* D3ED0 80173490 846A00B2 */  lh         $t2, 0xB2($v1)
    /* D3ED4 80173494 3C0B800D */  lui        $t3, %hi(gKirbyController)
    /* D3ED8 80173498 5540000C */  bnel       $t2, $zero, .L801734CC_ovl3
    /* D3EDC 8017349C 8FAF001C */   lw        $t7, 0x1C($sp)
    /* D3EE0 801734A0 956B6FE8 */  lhu        $t3, %lo(gKirbyController)($t3)
    /* D3EE4 801734A4 240E0001 */  addiu      $t6, $zero, 0x1
    /* D3EE8 801734A8 316C4000 */  andi       $t4, $t3, 0x4000
    /* D3EEC 801734AC 55800007 */  bnel       $t4, $zero, .L801734CC_ovl3
    /* D3EF0 801734B0 8FAF001C */   lw        $t7, 0x1C($sp)
    /* D3EF4 801734B4 906D0008 */  lbu        $t5, 0x8($v1)
    /* D3EF8 801734B8 51A00003 */  beql       $t5, $zero, .L801734C8_ovl3
    /* D3EFC 801734BC AFAE001C */   sw        $t6, 0x1C($sp)
    /* D3F00 801734C0 A0600008 */  sb         $zero, 0x8($v1)
    /* D3F04 801734C4 AFAE001C */  sw         $t6, 0x1C($sp)
  .L801734C8_ovl3:
    /* D3F08 801734C8 8FAF001C */  lw         $t7, 0x1C($sp)
  .L801734CC_ovl3:
    /* D3F0C 801734CC 11E00031 */  beqz       $t7, .L80173594_ovl3
    /* D3F10 801734D0 00000000 */   nop
    /* D3F14 801734D4 90790004 */  lbu        $t9, 0x4($v1)
    /* D3F18 801734D8 3C048019 */  lui        $a0, %hi(D_80196D48_ovl3)
    /* D3F1C 801734DC 00194080 */  sll        $t0, $t9, 2
    /* D3F20 801734E0 00882021 */  addu       $a0, $a0, $t0
    /* D3F24 801734E4 0C048BC2 */  jal        func_80122F08
    /* D3F28 801734E8 8C846D48 */   lw        $a0, %lo(D_80196D48_ovl3)($a0)
    /* D3F2C 801734EC 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* D3F30 801734F0 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* D3F34 801734F4 906A0008 */  lbu        $t2, 0x8($v1)
    /* D3F38 801734F8 24180002 */  addiu      $t8, $zero, 0x2
    /* D3F3C 801734FC AC780154 */  sw         $t8, 0x154($v1)
    /* D3F40 80173500 A06000B1 */  sb         $zero, 0xB1($v1)
    /* D3F44 80173504 1540001E */  bnez       $t2, .L80173580_ovl3
    /* D3F48 80173508 A06000B0 */   sb        $zero, 0xB0($v1)
    /* D3F4C 8017350C 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* D3F50 80173510 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* D3F54 80173514 3C0E800F */  lui        $t6, %hi(D_800E8920)
    /* D3F58 80173518 24040006 */  addiu      $a0, $zero, 0x6
    /* D3F5C 8017351C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* D3F60 80173520 3C0F800D */  lui        $t7, %hi(gKirbyController)
    /* D3F64 80173524 000C6880 */  sll        $t5, $t4, 2
    /* D3F68 80173528 01CD7021 */  addu       $t6, $t6, $t5
    /* D3F6C 8017352C 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
    /* D3F70 80173530 15C00005 */  bnez       $t6, .L80173548_ovl3
    /* D3F74 80173534 00000000 */   nop
    /* D3F78 80173538 0C048BDB */  jal        set_kirby_action_1
    /* D3F7C 8017353C 24050006 */   addiu     $a1, $zero, 0x6
    /* D3F80 80173540 1000005B */  b          .L801736B0_ovl3
    /* D3F84 80173544 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80173548_ovl3:
    /* D3F88 80173548 95EF6FE8 */  lhu        $t7, %lo(gKirbyController)($t7)
    /* D3F8C 8017354C 24050001 */  addiu      $a1, $zero, 0x1
    /* D3F90 80173550 24040001 */  addiu      $a0, $zero, 0x1
    /* D3F94 80173554 31F90300 */  andi       $t9, $t7, 0x300
    /* D3F98 80173558 17200005 */  bnez       $t9, .L80173570_ovl3
    /* D3F9C 8017355C 00000000 */   nop
    /* D3FA0 80173560 0C048BDB */  jal        set_kirby_action_1
    /* D3FA4 80173564 00002025 */   or        $a0, $zero, $zero
    /* D3FA8 80173568 10000051 */  b          .L801736B0_ovl3
    /* D3FAC 8017356C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80173570_ovl3:
    /* D3FB0 80173570 0C048BDB */  jal        set_kirby_action_1
    /* D3FB4 80173574 24050003 */   addiu     $a1, $zero, 0x3
    /* D3FB8 80173578 1000004D */  b          .L801736B0_ovl3
    /* D3FBC 8017357C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80173580_ovl3:
    /* D3FC0 80173580 2404000B */  addiu      $a0, $zero, 0xB
    /* D3FC4 80173584 0C048BDB */  jal        set_kirby_action_1
    /* D3FC8 80173588 24050010 */   addiu     $a1, $zero, 0x10
    /* D3FCC 8017358C 10000048 */  b          .L801736B0_ovl3
    /* D3FD0 80173590 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80173594_ovl3:
    /* D3FD4 80173594 0C047B5A */  jal        func_8011ED68
    /* D3FD8 80173598 00000000 */   nop
    /* D3FDC 8017359C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* D3FE0 801735A0 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* D3FE4 801735A4 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* D3FE8 801735A8 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* D3FEC 801735AC 8D020000 */  lw         $v0, 0x0($t0)
    /* D3FF0 801735B0 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
    /* D3FF4 801735B4 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* D3FF8 801735B8 00021080 */  sll        $v0, $v0, 2
    /* D3FFC 801735BC 0302C021 */  addu       $t8, $t8, $v0
    /* D4000 801735C0 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* D4004 801735C4 01A26821 */  addu       $t5, $t5, $v0
    /* D4008 801735C8 13000022 */  beqz       $t8, .L80173654_ovl3
    /* D400C 801735CC 00000000 */   nop
    /* D4010 801735D0 90690004 */  lbu        $t1, 0x4($v1)
    /* D4014 801735D4 24010001 */  addiu      $at, $zero, 0x1
    /* D4018 801735D8 1121001E */  beq        $t1, $at, .L80173654_ovl3
    /* D401C 801735DC 00000000 */   nop
    /* D4020 801735E0 906A00B0 */  lbu        $t2, 0xB0($v1)
    /* D4024 801735E4 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
    /* D4028 801735E8 01625821 */  addu       $t3, $t3, $v0
    /* D402C 801735EC 11400019 */  beqz       $t2, .L80173654_ovl3
    /* D4030 801735F0 00000000 */   nop
    /* D4034 801735F4 8D6B8AE0 */  lw         $t3, %lo(D_800E8AE0)($t3)
    /* D4038 801735F8 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* D403C 801735FC 316C0006 */  andi       $t4, $t3, 0x6
    /* D4040 80173600 5180000C */  beql       $t4, $zero, .L80173634_ovl3
    /* D4044 80173604 44816000 */   mtc1      $at, $f12
    /* D4048 80173608 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* D404C 8017360C 44816000 */  mtc1       $at, $f12
    /* D4050 80173610 0C02BB30 */  jal        func_800AECC0
    /* D4054 80173614 00000000 */   nop
    /* D4058 80173618 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* D405C 8017361C 44816000 */  mtc1       $at, $f12
    /* D4060 80173620 0C02BB48 */  jal        func_800AED20
    /* D4064 80173624 00000000 */   nop
    /* D4068 80173628 10000021 */  b          .L801736B0_ovl3
    /* D406C 8017362C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* D4070 80173630 44816000 */  mtc1       $at, $f12
  .L80173634_ovl3:
    /* D4074 80173634 0C02BB30 */  jal        func_800AECC0
    /* D4078 80173638 00000000 */   nop
    /* D407C 8017363C 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* D4080 80173640 44816000 */  mtc1       $at, $f12
    /* D4084 80173644 0C02BB48 */  jal        func_800AED20
    /* D4088 80173648 00000000 */   nop
    /* D408C 8017364C 10000018 */  b          .L801736B0_ovl3
    /* D4090 80173650 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80173654_ovl3:
    /* D4094 80173654 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
    /* D4098 80173658 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* D409C 8017365C 31AE0006 */  andi       $t6, $t5, 0x6
    /* D40A0 80173660 51C0000C */  beql       $t6, $zero, .L80173694_ovl3
    /* D40A4 80173664 44816000 */   mtc1      $at, $f12
    /* D40A8 80173668 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* D40AC 8017366C 44816000 */  mtc1       $at, $f12
    /* D40B0 80173670 0C02BB30 */  jal        func_800AECC0
    /* D40B4 80173674 00000000 */   nop
    /* D40B8 80173678 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* D40BC 8017367C 44816000 */  mtc1       $at, $f12
    /* D40C0 80173680 0C02BB48 */  jal        func_800AED20
    /* D40C4 80173684 00000000 */   nop
    /* D40C8 80173688 10000009 */  b          .L801736B0_ovl3
    /* D40CC 8017368C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* D40D0 80173690 44816000 */  mtc1       $at, $f12
  .L80173694_ovl3:
    /* D40D4 80173694 0C02BB30 */  jal        func_800AECC0
    /* D40D8 80173698 00000000 */   nop
    /* D40DC 8017369C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* D40E0 801736A0 44816000 */  mtc1       $at, $f12
    /* D40E4 801736A4 0C02BB48 */  jal        func_800AED20
    /* D40E8 801736A8 00000000 */   nop
  .L801736AC_ovl3:
    /* D40EC 801736AC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801736B0_ovl3:
    /* D40F0 801736B0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D40F4 801736B4 03E00008 */  jr         $ra
    /* D40F8 801736B8 00000000 */   nop
endlabel func_80173260_ovl3
.size func_80173260_ovl3, . - func_80173260_ovl3
