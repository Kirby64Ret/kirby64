nonmatching func_801E0380_ovl15, 0x228

glabel func_801E0380_ovl15
    /* 20AEE0 801E0380 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 20AEE4 801E0384 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 20AEE8 801E0388 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 20AEEC 801E038C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 20AEF0 801E0390 AFA40018 */  sw         $a0, 0x18($sp)
    /* 20AEF4 801E0394 8CE20000 */  lw         $v0, 0x0($a3)
    /* 20AEF8 801E0398 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 20AEFC 801E039C 44802000 */  mtc1       $zero, $f4
    /* 20AF00 801E03A0 00021080 */  sll        $v0, $v0, 2
    /* 20AF04 801E03A4 00220821 */  addu       $at, $at, $v0
    /* 20AF08 801E03A8 C4263210 */  lwc1       $f6, %lo(D_800E3210)($at)
    /* 20AF0C 801E03AC 3C05800D */  lui        $a1, %hi(D_800D7098)
    /* 20AF10 801E03B0 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
    /* 20AF14 801E03B4 46062032 */  c.eq.s     $f4, $f6
    /* 20AF18 801E03B8 00000000 */  nop
    /* 20AF1C 801E03BC 45000013 */  bc1f       .L801E040C_ovl15
    /* 20AF20 801E03C0 00000000 */   nop
    /* 20AF24 801E03C4 8CA20004 */  lw         $v0, 0x4($a1)
    /* 20AF28 801E03C8 2C430001 */  sltiu      $v1, $v0, 0x1
    /* 20AF2C 801E03CC 244E0001 */  addiu      $t6, $v0, 0x1
    /* 20AF30 801E03D0 10600007 */  beqz       $v1, .L801E03F0_ovl15
    /* 20AF34 801E03D4 ACAE0004 */   sw        $t6, 0x4($a1)
    /* 20AF38 801E03D8 0C029D9E */  jal        play_sound
    /* 20AF3C 801E03DC 24040224 */   addiu     $a0, $zero, 0x224
    /* 20AF40 801E03E0 3C05800D */  lui        $a1, %hi(D_800D7098)
    /* 20AF44 801E03E4 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 20AF48 801E03E8 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 20AF4C 801E03EC 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
  .L801E03F0_ovl15:
    /* 20AF50 801E03F0 8CAF0004 */  lw         $t7, 0x4($a1)
    /* 20AF54 801E03F4 24010028 */  addiu      $at, $zero, 0x28
    /* 20AF58 801E03F8 01E1001A */  div        $zero, $t7, $at
    /* 20AF5C 801E03FC 0000C010 */  mfhi       $t8
    /* 20AF60 801E0400 ACB80004 */  sw         $t8, 0x4($a1)
    /* 20AF64 801E0404 8CE20000 */  lw         $v0, 0x0($a3)
    /* 20AF68 801E0408 00021080 */  sll        $v0, $v0, 2
  .L801E040C_ovl15:
    /* 20AF6C 801E040C 3C038013 */  lui        $v1, %hi(D_80129210)
    /* 20AF70 801E0410 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* 20AF74 801E0414 24639210 */  addiu      $v1, $v1, %lo(D_80129210)
    /* 20AF78 801E0418 00220821 */  addu       $at, $at, $v0
    /* 20AF7C 801E041C C42AA8A0 */  lwc1       $f10, %lo(D_800EA8A0)($at)
    /* 20AF80 801E0420 C4680004 */  lwc1       $f8, 0x4($v1)
    /* 20AF84 801E0424 3C01800F */  lui        $at, %hi(D_800EAA60)
    /* 20AF88 801E0428 3C0C800E */  lui        $t4, %hi(D_800E0D50)
    /* 20AF8C 801E042C 460A4400 */  add.s      $f16, $f8, $f10
    /* 20AF90 801E0430 3C0A800E */  lui        $t2, %hi(D_800E0D50)
    /* 20AF94 801E0434 E4700004 */  swc1       $f16, 0x4($v1)
    /* 20AF98 801E0438 8CF90000 */  lw         $t9, 0x0($a3)
    /* 20AF9C 801E043C C4600004 */  lwc1       $f0, 0x4($v1)
    /* 20AFA0 801E0440 00194080 */  sll        $t0, $t9, 2
    /* 20AFA4 801E0444 00280821 */  addu       $at, $at, $t0
    /* 20AFA8 801E0448 C422AA60 */  lwc1       $f2, %lo(D_800EAA60)($at)
    /* 20AFAC 801E044C 3C01428C */  lui        $at, (0x428C0000 >> 16)
    /* 20AFB0 801E0450 4600103C */  c.lt.s     $f2, $f0
    /* 20AFB4 801E0454 00000000 */  nop
    /* 20AFB8 801E0458 45020004 */  bc1fl      .L801E046C_ovl15
    /* 20AFBC 801E045C 44811000 */   mtc1      $at, $f2
    /* 20AFC0 801E0460 E4620004 */  swc1       $f2, 0x4($v1)
    /* 20AFC4 801E0464 C4600004 */  lwc1       $f0, 0x4($v1)
    /* 20AFC8 801E0468 44811000 */  mtc1       $at, $f2
  .L801E046C_ovl15:
    /* 20AFCC 801E046C 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 20AFD0 801E0470 4602003C */  c.lt.s     $f0, $f2
    /* 20AFD4 801E0474 00000000 */  nop
    /* 20AFD8 801E0478 45020003 */  bc1fl      .L801E0488_ovl15
    /* 20AFDC 801E047C 8CE20000 */   lw        $v0, 0x0($a3)
    /* 20AFE0 801E0480 E4620004 */  swc1       $f2, 0x4($v1)
    /* 20AFE4 801E0484 8CE20000 */  lw         $v0, 0x0($a3)
  .L801E0488_ovl15:
    /* 20AFE8 801E0488 3C09800F */  lui        $t1, %hi(D_800EA360)
    /* 20AFEC 801E048C 00021080 */  sll        $v0, $v0, 2
    /* 20AFF0 801E0490 01224821 */  addu       $t1, $t1, $v0
    /* 20AFF4 801E0494 8D29A360 */  lw         $t1, %lo(D_800EA360)($t1)
    /* 20AFF8 801E0498 01826021 */  addu       $t4, $t4, $v0
    /* 20AFFC 801E049C 00220821 */  addu       $at, $at, $v0
    /* 20B000 801E04A0 11200008 */  beqz       $t1, .L801E04C4_ovl15
    /* 20B004 801E04A4 01425021 */   addu      $t2, $t2, $v0
    /* 20B008 801E04A8 8D4A0D50 */  lw         $t2, %lo(D_800E0D50)($t2)
    /* 20B00C 801E04AC C4323050 */  lwc1       $f18, %lo(D_800E3050)($at)
    /* 20B010 801E04B0 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 20B014 801E04B4 000A5880 */  sll        $t3, $t2, 2
    /* 20B018 801E04B8 002B0821 */  addu       $at, $at, $t3
    /* 20B01C 801E04BC 10000007 */  b          .L801E04DC_ovl15
    /* 20B020 801E04C0 E432A6E0 */   swc1      $f18, %lo(D_800EA6E0)($at)
  .L801E04C4_ovl15:
    /* 20B024 801E04C4 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
    /* 20B028 801E04C8 44802000 */  mtc1       $zero, $f4
    /* 20B02C 801E04CC 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 20B030 801E04D0 000C6880 */  sll        $t5, $t4, 2
    /* 20B034 801E04D4 002D0821 */  addu       $at, $at, $t5
    /* 20B038 801E04D8 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
  .L801E04DC_ovl15:
    /* 20B03C 801E04DC 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 20B040 801E04E0 3C19800E */  lui        $t9, %hi(D_800E1B50)
    /* 20B044 801E04E4 3C0E801E */  lui        $t6, %hi(D_801D8E98)
    /* 20B048 801E04E8 000FC080 */  sll        $t8, $t7, 2
    /* 20B04C 801E04EC 0338C821 */  addu       $t9, $t9, $t8
    /* 20B050 801E04F0 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
    /* 20B054 801E04F4 25CE8E98 */  addiu      $t6, $t6, %lo(D_801D8E98)
    /* 20B058 801E04F8 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 20B05C 801E04FC AF2E008C */  sw         $t6, 0x8C($t9)
    /* 20B060 801E0500 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 20B064 801E0504 3C02800E */  lui        $v0, %hi(D_800DFBD0)
    /* 20B068 801E0508 00003025 */  or         $a2, $zero, $zero
    /* 20B06C 801E050C 8D090000 */  lw         $t1, 0x0($t0)
    /* 20B070 801E0510 00095080 */  sll        $t2, $t1, 2
    /* 20B074 801E0514 004A1021 */  addu       $v0, $v0, $t2
    /* 20B078 801E0518 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
    /* 20B07C 801E051C 8C440010 */  lw         $a0, 0x10($v0)
    /* 20B080 801E0520 0C078674 */  jal        func_801E19D0_ovl15
    /* 20B084 801E0524 8C450058 */   lw        $a1, 0x58($v0)
    /* 20B088 801E0528 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 20B08C 801E052C 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 20B090 801E0530 3C0C800E */  lui        $t4, %hi(D_800DFF50)
    /* 20B094 801E0534 3C010001 */  lui        $at, (0x103CB >> 16)
    /* 20B098 801E0538 8D620000 */  lw         $v0, 0x0($t3)
    /* 20B09C 801E053C 342103CB */  ori        $at, $at, (0x103CB & 0xFFFF)
    /* 20B0A0 801E0540 3C0F800E */  lui        $t7, %hi(D_800E1B50)
    /* 20B0A4 801E0544 00021080 */  sll        $v0, $v0, 2
    /* 20B0A8 801E0548 01826021 */  addu       $t4, $t4, $v0
    /* 20B0AC 801E054C 8D8CFF50 */  lw         $t4, %lo(D_800DFF50)($t4)
    /* 20B0B0 801E0550 01E27821 */  addu       $t7, $t7, $v0
    /* 20B0B4 801E0554 3C0D801E */  lui        $t5, %hi(D_801D921C)
    /* 20B0B8 801E0558 55810010 */  bnel       $t4, $at, .L801E059C_ovl15
    /* 20B0BC 801E055C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 20B0C0 801E0560 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
    /* 20B0C4 801E0564 25AD921C */  addiu      $t5, $t5, %lo(D_801D921C)
    /* 20B0C8 801E0568 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 20B0CC 801E056C ADED008C */  sw         $t5, 0x8C($t7)
    /* 20B0D0 801E0570 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 20B0D4 801E0574 3C08800E */  lui        $t0, %hi(D_800DFBD0)
    /* 20B0D8 801E0578 00003025 */  or         $a2, $zero, $zero
    /* 20B0DC 801E057C 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 20B0E0 801E0580 000EC880 */  sll        $t9, $t6, 2
    /* 20B0E4 801E0584 01194021 */  addu       $t0, $t0, $t9
    /* 20B0E8 801E0588 8D08FBD0 */  lw         $t0, %lo(D_800DFBD0)($t0)
    /* 20B0EC 801E058C 8D0400B0 */  lw         $a0, 0xB0($t0)
    /* 20B0F0 801E0590 0C078674 */  jal        func_801E19D0_ovl15
    /* 20B0F4 801E0594 00802825 */   or        $a1, $a0, $zero
    /* 20B0F8 801E0598 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801E059C_ovl15:
    /* 20B0FC 801E059C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 20B100 801E05A0 03E00008 */  jr         $ra
    /* 20B104 801E05A4 00000000 */   nop
endlabel func_801E0380_ovl15
.size func_801E0380_ovl15, . - func_801E0380_ovl15
