glabel func_801EF3F0_ovl10
/* 1E0160 801EF3F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E0164 801EF3F4 AFB10018 */  sw         $s1, 0x18($sp)
/* 1E0168 801EF3F8 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 1E016C 801EF3FC 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 1E0170 801EF400 8E2E0000 */  lw         $t6, 0x0($s1)
/* 1E0174 801EF404 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1E0178 801EF408 AFB00014 */  sw         $s0, 0x14($sp)
/* 1E017C 801EF40C AFA40020 */  sw         $a0, 0x20($sp)
/* 1E0180 801EF410 8DC30000 */  lw         $v1, 0x0($t6)
/* 1E0184 801EF414 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 1E0188 801EF418 3C0F801F */  lui        $t7, %hi(func_801EF760_ovl16)
/* 1E018C 801EF41C 00031880 */  sll        $v1, $v1, 2
/* 1E0190 801EF420 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1E0194 801EF424 02038021 */  addu       $s0, $s0, $v1
/* 1E0198 801EF428 00230821 */  addu       $at, $at, $v1
/* 1E019C 801EF42C 25EFF760 */  addiu      $t7, $t7, %lo(func_801EF760_ovl16)
/* 1E01A0 801EF430 3C040001 */  lui        $a0, (0x1008D >> 16)
/* 1E01A4 801EF434 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
/* 1E01A8 801EF438 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 1E01AC 801EF43C 3484008D */  ori        $a0, $a0, (0x1008D & 0xFFFF)
/* 1E01B0 801EF440 24050023 */  addiu      $a1, $zero, 0x23
/* 1E01B4 801EF444 0C02A619 */  jal        func_800A9864
/* 1E01B8 801EF448 24060010 */   addiu     $a2, $zero, 0x10
/* 1E01BC 801EF44C 0C066E6C */  jal        func_8019B9B0_ovl7
/* 1E01C0 801EF450 00000000 */   nop
.L801EF454_ovl9:
/* 1E01C4 801EF454 3C18801D */  lui        $t8, %hi(D_801CB470_ovl7)
/* 1E01C8 801EF458 2718B470 */  addiu      $t8, $t8, %lo(D_801CB470_ovl7)
/* 1E01CC 801EF45C 3C040001 */  lui        $a0, (0x10521 >> 16)
/* 1E01D0 801EF460 AE180098 */  sw         $t8, 0x98($s0)
/* 1E01D4 801EF464 0C02A806 */  jal        func_800AA018
/* 1E01D8 801EF468 34840521 */   ori       $a0, $a0, (0x10521 & 0xFFFF)
/* 1E01DC 801EF46C 8E220000 */  lw         $v0, 0x0($s1)
/* 1E01E0 801EF470 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1E01E4 801EF474 44811000 */  mtc1       $at, $f2
/* 1E01E8 801EF478 8C430000 */  lw         $v1, 0x0($v0)
/* 1E01EC 801EF47C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1E01F0 801EF480 3C08800E */  lui        $t0, %hi(D_800E64D0)
.L801EF484_ovl9:
/* 1E01F4 801EF484 00031880 */  sll        $v1, $v1, 2
/* 1E01F8 801EF488 00230821 */  addu       $at, $at, $v1
/* 1E01FC 801EF48C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1E0200 801EF490 3C014080 */  lui        $at, (0x40800000 >> 16)
.L801EF494_ovl9:
/* 1E0204 801EF494 44813000 */  mtc1       $at, $f6
/* 1E0208 801EF498 250864D0 */  addiu      $t0, $t0, %lo(D_800E64D0)
/* 1E020C 801EF49C 0103C821 */  addu       $t9, $t0, $v1
/* 1E0210 801EF4A0 46062202 */  mul.s      $f8, $f4, $f6
/* 1E0214 801EF4A4 3C09800E */  lui        $t1, %hi(D_800E3210)
/* 1E0218 801EF4A8 25293210 */  addiu      $t1, $t1, %lo(D_800E3210)
/* 1E021C 801EF4AC 3C01801F */  lui        $at, %hi(D_801F4C20_ovl10)
/* 1E0220 801EF4B0 3C0A800E */  lui        $t2, %hi(D_800E3750)
/* 1E0224 801EF4B4 254A3750 */  addiu      $t2, $t2, %lo(D_800E3750)
/* 1E0228 801EF4B8 3C07800F */  lui        $a3, %hi(D_800EC2E0)
/* 1E022C 801EF4BC E7280000 */  swc1       $f8, 0x0($t9)
glabel D_801EF4C0_ovl16
/* 1E0230 801EF4C0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E0234 801EF4C4 3C10800F */  lui        $s0, %hi(D_800E8920)
/* 1E0238 801EF4C8 26108920 */  addiu      $s0, $s0, %lo(D_800E8920)
/* 1E023C 801EF4CC 000B6080 */  sll        $t4, $t3, 2
/* 1E0240 801EF4D0 012C6821 */  addu       $t5, $t1, $t4
/* 1E0244 801EF4D4 E5A20000 */  swc1       $f2, 0x0($t5)
.L801EF4D8_ovl9:
/* 1E0248 801EF4D8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E024C 801EF4DC C42A4C20 */  lwc1       $f10, %lo(D_801F4C20_ovl10)($at)
/* 1E0250 801EF4E0 3C01800E */  lui        $at, %hi(D_800E3C90)
glabel D_801EF4E4_ovl16
/* 1E0254 801EF4E4 000E7880 */  sll        $t7, $t6, 2
/* 1E0258 801EF4E8 014FC021 */  addu       $t8, $t2, $t7
/* 1E025C 801EF4EC E70A0000 */  swc1       $f10, 0x0($t8)
/* 1E0260 801EF4F0 8C590000 */  lw         $t9, 0x0($v0)
/* 1E0264 801EF4F4 00195880 */  sll        $t3, $t9, 2
/* 1E0268 801EF4F8 002B0821 */  addu       $at, $at, $t3
/* 1E026C 801EF4FC E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 1E0270 801EF500 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0274 801EF504 24010001 */  addiu      $at, $zero, 0x1
/* 1E0278 801EF508 00031880 */  sll        $v1, $v1, 2
/* 1E027C 801EF50C 00E33821 */  addu       $a3, $a3, $v1
/* 1E0280 801EF510 8CE7C2E0 */  lw         $a3, %lo(D_800EC2E0)($a3)
/* 1E0284 801EF514 01032021 */  addu       $a0, $t0, $v1
.L801EF518_ovl9:
/* 1E0288 801EF518 14E10016 */  bne        $a3, $at, .L801EF574_ovl10
/* 1E028C 801EF51C 3C01801F */   lui       $at, %hi(D_801F4C24_ovl10)
/* 1E0290 801EF520 C4204C24 */  lwc1       $f0, %lo(D_801F4C24_ovl10)($at)
glabel func_801EF524_ovl9
/* 1E0294 801EF524 C4900000 */  lwc1       $f16, 0x0($a0)
/* 1E0298 801EF528 3C07800F */  lui        $a3, %hi(D_800EC2E0)
/* 1E029C 801EF52C 46008482 */  mul.s      $f18, $f16, $f0
/* 1E02A0 801EF530 E4920000 */  swc1       $f18, 0x0($a0)
/* 1E02A4 801EF534 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1E02A8 801EF538 000C6880 */  sll        $t5, $t4, 2
/* 1E02AC 801EF53C 014D3021 */  addu       $a2, $t2, $t5
/* 1E02B0 801EF540 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 1E02B4 801EF544 46002182 */  mul.s      $f6, $f4, $f0
/* 1E02B8 801EF548 E4C60000 */  swc1       $f6, 0x0($a2)
/* 1E02BC 801EF54C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E02C0 801EF550 000E7880 */  sll        $t7, $t6, 2
/* 1E02C4 801EF554 012F2821 */  addu       $a1, $t1, $t7
/* 1E02C8 801EF558 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 1E02CC 801EF55C 46004282 */  mul.s      $f10, $f8, $f0
/* 1E02D0 801EF560 E4AA0000 */  swc1       $f10, 0x0($a1)
/* 1E02D4 801EF564 8C430000 */  lw         $v1, 0x0($v0)
/* 1E02D8 801EF568 00031880 */  sll        $v1, $v1, 2
/* 1E02DC 801EF56C 00E33821 */  addu       $a3, $a3, $v1
/* 1E02E0 801EF570 8CE7C2E0 */  lw         $a3, %lo(D_800EC2E0)($a3)
.L801EF574_ovl10:
/* 1E02E4 801EF574 24010002 */  addiu      $at, $zero, 0x2
/* 1E02E8 801EF578 14E10017 */  bne        $a3, $at, .L801EF5D8_ovl10
/* 1E02EC 801EF57C 01032021 */   addu      $a0, $t0, $v1
/* 1E02F0 801EF580 3C01801F */  lui        $at, %hi(D_801F4C28_ovl10)
/* 1E02F4 801EF584 C4204C28 */  lwc1       $f0, %lo(D_801F4C28_ovl10)($at)
/* 1E02F8 801EF588 C4900000 */  lwc1       $f16, 0x0($a0)
/* 1E02FC 801EF58C 3C07800F */  lui        $a3, %hi(D_800EC2E0)
/* 1E0300 801EF590 46008482 */  mul.s      $f18, $f16, $f0
/* 1E0304 801EF594 E4920000 */  swc1       $f18, 0x0($a0)
/* 1E0308 801EF598 8C580000 */  lw         $t8, 0x0($v0)
/* 1E030C 801EF59C 0018C880 */  sll        $t9, $t8, 2
/* 1E0310 801EF5A0 01593021 */  addu       $a2, $t2, $t9
/* 1E0314 801EF5A4 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 1E0318 801EF5A8 46002182 */  mul.s      $f6, $f4, $f0
/* 1E031C 801EF5AC E4C60000 */  swc1       $f6, 0x0($a2)
/* 1E0320 801EF5B0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E0324 801EF5B4 000B6080 */  sll        $t4, $t3, 2
/* 1E0328 801EF5B8 012C2821 */  addu       $a1, $t1, $t4
/* 1E032C 801EF5BC C4A80000 */  lwc1       $f8, 0x0($a1)
/* 1E0330 801EF5C0 46004282 */  mul.s      $f10, $f8, $f0
/* 1E0334 801EF5C4 E4AA0000 */  swc1       $f10, 0x0($a1)
/* 1E0338 801EF5C8 8C430000 */  lw         $v1, 0x0($v0)
/* 1E033C 801EF5CC 00031880 */  sll        $v1, $v1, 2
/* 1E0340 801EF5D0 00E33821 */  addu       $a3, $a3, $v1
/* 1E0344 801EF5D4 8CE7C2E0 */  lw         $a3, %lo(D_800EC2E0)($a3)
.L801EF5D8_ovl10:
/* 1E0348 801EF5D8 24010003 */  addiu      $at, $zero, 0x3
/* 1E034C 801EF5DC 14E10012 */  bne        $a3, $at, .L801EF628_ovl10
glabel D_801EF5E0_ovl16
/* 1E0350 801EF5E0 3C0D800E */   lui       $t5, %hi(gEntitiesNextPosYArray)
/* 1E0354 801EF5E4 25AD2790 */  addiu      $t5, $t5, %lo(gEntitiesNextPosYArray)
/* 1E0358 801EF5E8 006D2821 */  addu       $a1, $v1, $t5
/* 1E035C 801EF5EC 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 1E0360 801EF5F0 44819000 */  mtc1       $at, $f18
/* 1E0364 801EF5F4 C4B00000 */  lwc1       $f16, 0x0($a1)
/* 1E0368 801EF5F8 3C01801F */  lui        $at, %hi(D_801F4C2C_ovl10)
glabel D_801EF5FC_ovl16
/* 1E036C 801EF5FC 46128100 */  add.s      $f4, $f16, $f18
/* 1E0370 801EF600 E4A40000 */  swc1       $f4, 0x0($a1)
/* 1E0374 801EF604 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E0378 801EF608 C4284C2C */  lwc1       $f8, %lo(D_801F4C2C_ovl10)($at)
/* 1E037C 801EF60C 000E7880 */  sll        $t7, $t6, 2
/* 1E0380 801EF610 010F2021 */  addu       $a0, $t0, $t7
/* 1E0384 801EF614 C4860000 */  lwc1       $f6, 0x0($a0)
glabel D_801EF618_ovl16
/* 1E0388 801EF618 46083282 */  mul.s      $f10, $f6, $f8
/* 1E038C 801EF61C E48A0000 */  swc1       $f10, 0x0($a0)
/* 1E0390 801EF620 8C430000 */  lw         $v1, 0x0($v0)
/* 1E0394 801EF624 00031880 */  sll        $v1, $v1, 2
.L801EF628_ovl10:
/* 1E0398 801EF628 0203C021 */  addu       $t8, $s0, $v1
/* 1E039C 801EF62C AF000000 */  sw         $zero, 0x0($t8)
/* 1E03A0 801EF630 8C430000 */  lw         $v1, 0x0($v0)
glabel D_801EF634_ovl16
/* 1E03A4 801EF634 00031880 */  sll        $v1, $v1, 2
/* 1E03A8 801EF638 0203C821 */  addu       $t9, $s0, $v1
/* 1E03AC 801EF63C 8F2B0000 */  lw         $t3, 0x0($t9)
/* 1E03B0 801EF640 55600013 */  bnel       $t3, $zero, .L801EF690_ovl10
/* 1E03B4 801EF644 01032021 */   addu      $a0, $t0, $v1
.L801EF648_ovl10:
/* 1E03B8 801EF648 0C002DAF */  jal        finish_current_thread
/* 1E03BC 801EF64C 24040001 */   addiu     $a0, $zero, 0x1
glabel D_801EF650_ovl16
/* 1E03C0 801EF650 8E220000 */  lw         $v0, 0x0($s1)
/* 1E03C4 801EF654 8C430000 */  lw         $v1, 0x0($v0)
/* 1E03C8 801EF658 00031880 */  sll        $v1, $v1, 2
/* 1E03CC 801EF65C 02036021 */  addu       $t4, $s0, $v1
/* 1E03D0 801EF660 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1E03D4 801EF664 11A0FFF8 */  beqz       $t5, .L801EF648_ovl10
/* 1E03D8 801EF668 00000000 */   nop
/* 1E03DC 801EF66C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1E03E0 801EF670 3C0A800E */  lui        $t2, %hi(D_800E3750)
/* 1E03E4 801EF674 3C09800E */  lui        $t1, %hi(D_800E3210)
/* 1E03E8 801EF678 3C08800E */  lui        $t0, %hi(D_800E64D0)
/* 1E03EC 801EF67C 44811000 */  mtc1       $at, $f2
/* 1E03F0 801EF680 250864D0 */  addiu      $t0, $t0, %lo(D_800E64D0)
.L801EF684_ovl9:
/* 1E03F4 801EF684 25293210 */  addiu      $t1, $t1, %lo(D_800E3210)
/* 1E03F8 801EF688 254A3750 */  addiu      $t2, $t2, %lo(D_800E3750)
/* 1E03FC 801EF68C 01032021 */  addu       $a0, $t0, $v1
.L801EF690_ovl10:
/* 1E0400 801EF690 3C01801F */  lui        $at, %hi(D_801F4C30_ovl10)
/* 1E0404 801EF694 C4324C30 */  lwc1       $f18, %lo(D_801F4C30_ovl10)($at)
/* 1E0408 801EF698 C4900000 */  lwc1       $f16, 0x0($a0)
/* 1E040C 801EF69C 3C01801F */  lui        $at, %hi(D_801F4C34_ovl10)
/* 1E0410 801EF6A0 46128102 */  mul.s      $f4, $f16, $f18
/* 1E0414 801EF6A4 E4840000 */  swc1       $f4, 0x0($a0)
.L801EF6A8_ovl9:
/* 1E0418 801EF6A8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E041C 801EF6AC C4264C34 */  lwc1       $f6, %lo(D_801F4C34_ovl10)($at)
/* 1E0420 801EF6B0 3C01801F */  lui        $at, %hi(D_801F4C38_ovl10)
/* 1E0424 801EF6B4 000E7880 */  sll        $t7, $t6, 2
/* 1E0428 801EF6B8 012FC021 */  addu       $t8, $t1, $t7
/* 1E042C 801EF6BC E7060000 */  swc1       $f6, 0x0($t8)
/* 1E0430 801EF6C0 8C590000 */  lw         $t9, 0x0($v0)
/* 1E0434 801EF6C4 C4284C38 */  lwc1       $f8, %lo(D_801F4C38_ovl10)($at)
.L801EF6C8_ovl9:
/* 1E0438 801EF6C8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1E043C 801EF6CC 00195880 */  sll        $t3, $t9, 2
glabel D_801EF6D0_ovl16
/* 1E0440 801EF6D0 014B6021 */  addu       $t4, $t2, $t3
glabel D_801EF6D4_ovl16
/* 1E0444 801EF6D4 E5880000 */  swc1       $f8, 0x0($t4)
glabel D_801EF6D8_ovl16
/* 1E0448 801EF6D8 8C4D0000 */  lw         $t5, 0x0($v0)
glabel D_801EF6DC_ovl16
/* 1E044C 801EF6DC 000D7080 */  sll        $t6, $t5, 2
glabel D_801EF6E0_ovl16
/* 1E0450 801EF6E0 002E0821 */  addu       $at, $at, $t6
glabel D_801EF6E4_ovl16
/* 1E0454 801EF6E4 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
glabel D_801EF6E8_ovl16
/* 1E0458 801EF6E8 8C4F0000 */  lw         $t7, 0x0($v0)
glabel D_801EF6EC_ovl16
/* 1E045C 801EF6EC 000FC080 */  sll        $t8, $t7, 2
glabel D_801EF6F0_ovl16
/* 1E0460 801EF6F0 0218C821 */  addu       $t9, $s0, $t8
/* 1E0464 801EF6F4 AF200000 */  sw         $zero, 0x0($t9)
/* 1E0468 801EF6F8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1E046C 801EF6FC 000B6080 */  sll        $t4, $t3, 2
/* 1E0470 801EF700 020C6821 */  addu       $t5, $s0, $t4
/* 1E0474 801EF704 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1E0478 801EF708 15C0000A */  bnez       $t6, .L801EF734_ovl10
glabel D_801EF70C_ovl16
/* 1E047C 801EF70C 00000000 */   nop
.L801EF710_ovl10:
/* 1E0480 801EF710 0C002DAF */  jal        finish_current_thread
/* 1E0484 801EF714 24040001 */   addiu     $a0, $zero, 0x1
/* 1E0488 801EF718 8E2F0000 */  lw         $t7, 0x0($s1)
/* 1E048C 801EF71C 8DF80000 */  lw         $t8, 0x0($t7)
/* 1E0490 801EF720 0018C880 */  sll        $t9, $t8, 2
/* 1E0494 801EF724 02195821 */  addu       $t3, $s0, $t9
glabel D_801EF728_ovl16
/* 1E0498 801EF728 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1E049C 801EF72C 1180FFF8 */  beqz       $t4, .L801EF710_ovl10
glabel D_801EF730_ovl16
/* 1E04A0 801EF730 00000000 */   nop
.L801EF734_ovl10:
/* 1E04A4 801EF734 0C02CD48 */  jal        func_800B3520
glabel D_801EF738_ovl16
/* 1E04A8 801EF738 00000000 */   nop
/* 1E04AC 801EF73C 0C002DAF */  jal        finish_current_thread
glabel D_801EF740_ovl16
/* 1E04B0 801EF740 2404003C */   addiu     $a0, $zero, 0x3C
/* 1E04B4 801EF744 0C06B3E1 */  jal        func_801ACF84_ovl7
glabel D_801EF748_ovl16
/* 1E04B8 801EF748 8FA40020 */   lw        $a0, 0x20($sp)
/* 1E04BC 801EF74C 8FBF001C */  lw         $ra, 0x1C($sp)
glabel D_801EF750_ovl16
/* 1E04C0 801EF750 8FB00014 */  lw         $s0, 0x14($sp)
/* 1E04C4 801EF754 8FB10018 */  lw         $s1, 0x18($sp)
glabel D_801EF758_ovl16
/* 1E04C8 801EF758 03E00008 */  jr         $ra
/* 1E04CC 801EF75C 27BD0020 */   addiu     $sp, $sp, 0x20
