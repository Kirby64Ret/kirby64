glabel func_8015E8E0_ovl3
/* BF320 8015E8E0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* BF324 8015E8E4 AFB2001C */  sw         $s2, 0x1C($sp)
/* BF328 8015E8E8 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* BF32C 8015E8EC 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* BF330 8015E8F0 AFB00014 */  sw         $s0, 0x14($sp)
/* BF334 8015E8F4 8E500000 */  lw         $s0, 0x0($s2)
/* BF338 8015E8F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* BF33C 8015E8FC AFB30020 */  sw         $s3, 0x20($sp)
/* BF340 8015E900 AFB10018 */  sw         $s1, 0x18($sp)
/* BF344 8015E904 8E0E0000 */  lw         $t6, 0x0($s0)
/* BF348 8015E908 44802000 */  mtc1       $zero, $f4
/* BF34C 8015E90C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* BF350 8015E910 000E7880 */  sll        $t7, $t6, 2
/* BF354 8015E914 002F0821 */  addu       $at, $at, $t7
/* BF358 8015E918 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
/* BF35C 8015E91C 8E180000 */  lw         $t8, 0x0($s0)
/* BF360 8015E920 3C05800F */  lui        $a1, %hi(D_800E9FE0)
/* BF364 8015E924 24A59FE0 */  addiu      $a1, $a1, %lo(D_800E9FE0)
.L8015E928_ovl5:
/* BF368 8015E928 0018C880 */  sll        $t9, $t8, 2
/* BF36C 8015E92C 00B95821 */  addu       $t3, $a1, $t9
/* BF370 8015E930 AD600000 */  sw         $zero, 0x0($t3)
/* BF374 8015E934 8E020000 */  lw         $v0, 0x0($s0)
/* BF378 8015E938 3C01800F */  lui        $at, %hi(D_800E9C60)
/* BF37C 8015E93C 3C13800F */  lui        $s3, %hi(D_800E9AA0)
.L8015E940_ovl5:
/* BF380 8015E940 00021080 */  sll        $v0, $v0, 2
/* BF384 8015E944 00A26021 */  addu       $t4, $a1, $v0
/* BF388 8015E948 8D830000 */  lw         $v1, 0x0($t4)
.L8015E94C_ovl5:
/* BF38C 8015E94C 00220821 */  addu       $at, $at, $v0
/* BF390 8015E950 26739AA0 */  addiu      $s3, $s3, %lo(D_800E9AA0)
/* BF394 8015E954 AC239C60 */  sw         $v1, %lo(D_800E9C60)($at)
/* BF398 8015E958 8E0D0000 */  lw         $t5, 0x0($s0)
/* BF39C 8015E95C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* BF3A0 8015E960 000D7080 */  sll        $t6, $t5, 2
/* BF3A4 8015E964 026E7821 */  addu       $t7, $s3, $t6
/* BF3A8 8015E968 ADE30000 */  sw         $v1, 0x0($t7)
/* BF3AC 8015E96C 8E180000 */  lw         $t8, 0x0($s0)
/* BF3B0 8015E970 0018C880 */  sll        $t9, $t8, 2
/* BF3B4 8015E974 00390821 */  addu       $at, $at, $t9
/* BF3B8 8015E978 0C058738 */  jal        func_80161CE0_ovl3
/* BF3BC 8015E97C AC2398E0 */   sw        $v1, %lo(D_800E98E0)($at)
/* BF3C0 8015E980 00002025 */  or         $a0, $zero, $zero
/* BF3C4 8015E984 24050000 */  addiu      $a1, $zero, 0x0
/* BF3C8 8015E988 0C0587B0 */  jal        func_80161EC0_ovl3
/* BF3CC 8015E98C 3C0641A0 */   lui       $a2, (0x41A00000 >> 16)
/* BF3D0 8015E990 8E500000 */  lw         $s0, 0x0($s2)
/* BF3D4 8015E994 3C0B800B */  lui        $t3, %hi(func_800B4954)
/* BF3D8 8015E998 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BF3DC 8015E99C 8E0C0000 */  lw         $t4, 0x0($s0)
.L8015E9A0_ovl5:
/* BF3E0 8015E9A0 256B4954 */  addiu      $t3, $t3, %lo(func_800B4954)
/* BF3E4 8015E9A4 3C0E8016 */  lui        $t6, %hi(func_8015ED2C_ovl3)
/* BF3E8 8015E9A8 000C6880 */  sll        $t5, $t4, 2
/* BF3EC 8015E9AC 002D0821 */  addu       $at, $at, $t5
/* BF3F0 8015E9B0 AC2BEF90 */  sw         $t3, %lo(D_800DEF90)($at)
/* BF3F4 8015E9B4 8E0F0000 */  lw         $t7, 0x0($s0)
/* BF3F8 8015E9B8 3C01800E */  lui        $at, %hi(D_800DF150)
/* BF3FC 8015E9BC 25CEED2C */  addiu      $t6, $t6, %lo(func_8015ED2C_ovl3)
/* BF400 8015E9C0 000FC080 */  sll        $t8, $t7, 2
/* BF404 8015E9C4 00380821 */  addu       $at, $at, $t8
/* BF408 8015E9C8 AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* BF40C 8015E9CC 8E190000 */  lw         $t9, 0x0($s0)
/* BF410 8015E9D0 44803000 */  mtc1       $zero, $f6
/* BF414 8015E9D4 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* BF418 8015E9D8 00196080 */  sll        $t4, $t9, 2
.L8015E9DC_ovl5:
/* BF41C 8015E9DC 002C0821 */  addu       $at, $at, $t4
/* BF420 8015E9E0 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* BF424 8015E9E4 8E0B0000 */  lw         $t3, 0x0($s0)
/* BF428 8015E9E8 3C01800F */  lui        $at, %hi(D_800E8760)
/* BF42C 8015E9EC 3C0F8019 */  lui        $t7, %hi(D_80192EB8_ovl3)
/* BF430 8015E9F0 000B6880 */  sll        $t5, $t3, 2
/* BF434 8015E9F4 002D0821 */  addu       $at, $at, $t5
/* BF438 8015E9F8 AC208760 */  sw         $zero, %lo(D_800E8760)($at)
/* BF43C 8015E9FC 8E0E0000 */  lw         $t6, 0x0($s0)
/* BF440 8015EA00 3C01800E */  lui        $at, %hi(D_800E0490)
/* BF444 8015EA04 25EF2EB8 */  addiu      $t7, $t7, %lo(D_80192EB8_ovl3)
/* BF448 8015EA08 000EC080 */  sll        $t8, $t6, 2
/* BF44C 8015EA0C 00380821 */  addu       $at, $at, $t8
/* BF450 8015EA10 AC2F0490 */  sw         $t7, %lo(D_800E0490)($at)
/* BF454 8015EA14 8E020000 */  lw         $v0, 0x0($s0)
/* BF458 8015EA18 3C09800E */  lui        $t1, %hi(D_800E0D50)
/* BF45C 8015EA1C 25290D50 */  addiu      $t1, $t1, %lo(D_800E0D50)
/* BF460 8015EA20 00021080 */  sll        $v0, $v0, 2
/* BF464 8015EA24 0122C821 */  addu       $t9, $t1, $v0
/* BF468 8015EA28 8F2C0000 */  lw         $t4, 0x0($t9)
/* BF46C 8015EA2C 3C11800F */  lui        $s1, %hi(D_800E8AE0)
/* BF470 8015EA30 26318AE0 */  addiu      $s1, $s1, %lo(D_800E8AE0)
/* BF474 8015EA34 000C5880 */  sll        $t3, $t4, 2
/* BF478 8015EA38 022B6821 */  addu       $t5, $s1, $t3
.L8015EA3C_ovl5:
/* BF47C 8015EA3C 8DAE0000 */  lw         $t6, 0x0($t5)
/* BF480 8015EA40 02227821 */  addu       $t7, $s1, $v0
.L8015EA44_ovl5:
/* BF484 8015EA44 3C0A800F */  lui        $t2, %hi(D_800E8920)
/* BF488 8015EA48 ADEE0000 */  sw         $t6, 0x0($t7)
/* BF48C 8015EA4C 8E020000 */  lw         $v0, 0x0($s0)
/* BF490 8015EA50 254A8920 */  addiu      $t2, $t2, %lo(D_800E8920)
/* BF494 8015EA54 3C01800F */  lui        $at, %hi(D_800E9E20)
/* BF498 8015EA58 00021080 */  sll        $v0, $v0, 2
/* BF49C 8015EA5C 0122C021 */  addu       $t8, $t1, $v0
/* BF4A0 8015EA60 8F190000 */  lw         $t9, 0x0($t8)
/* BF4A4 8015EA64 01426821 */  addu       $t5, $t2, $v0
/* BF4A8 8015EA68 00196080 */  sll        $t4, $t9, 2
/* BF4AC 8015EA6C 014C5821 */  addu       $t3, $t2, $t4
/* BF4B0 8015EA70 8D670000 */  lw         $a3, 0x0($t3)
/* BF4B4 8015EA74 3C0B8019 */  lui        $t3, %hi(D_80197F60_ovl3)
/* BF4B8 8015EA78 256B7F60 */  addiu      $t3, $t3, %lo(D_80197F60_ovl3)
/* BF4BC 8015EA7C ADA70000 */  sw         $a3, 0x0($t5)
/* BF4C0 8015EA80 8E0E0000 */  lw         $t6, 0x0($s0)
/* BF4C4 8015EA84 000E7880 */  sll        $t7, $t6, 2
/* BF4C8 8015EA88 002F0821 */  addu       $at, $at, $t7
/* BF4CC 8015EA8C AC279E20 */  sw         $a3, %lo(D_800E9E20)($at)
/* BF4D0 8015EA90 8E030000 */  lw         $v1, 0x0($s0)
/* BF4D4 8015EA94 3C0E801A */  lui        $t6, %hi(D_801982F8_ovl3)
/* BF4D8 8015EA98 25CE82F8 */  addiu      $t6, $t6, %lo(D_801982F8_ovl3)
/* BF4DC 8015EA9C 2468FFFC */  addiu      $t0, $v1, -0x4
.L8015EAA0_ovl5:
/* BF4E0 8015EAA0 00086080 */  sll        $t4, $t0, 2
.L8015EAA4_ovl5:
/* BF4E4 8015EAA4 01886023 */  subu       $t4, $t4, $t0
.L8015EAA8_ovl5:
/* BF4E8 8015EAA8 000C60C0 */  sll        $t4, $t4, 3
/* BF4EC 8015EAAC 01886023 */  subu       $t4, $t4, $t0
/* BF4F0 8015EAB0 0003C080 */  sll        $t8, $v1, 2
glabel func_8015EAB4_ovl5
/* BF4F4 8015EAB4 0138C821 */  addu       $t9, $t1, $t8
/* BF4F8 8015EAB8 000C6080 */  sll        $t4, $t4, 2
/* BF4FC 8015EABC 00086940 */  sll        $t5, $t0, 5
/* BF500 8015EAC0 01AE3021 */  addu       $a2, $t5, $t6
/* BF504 8015EAC4 018B2821 */  addu       $a1, $t4, $t3
/* BF508 8015EAC8 0C055192 */  jal        func_80154648_ovl3
/* BF50C 8015EACC 8F240000 */   lw        $a0, 0x0($t9)
/* BF510 8015EAD0 8E500000 */  lw         $s0, 0x0($s2)
/* BF514 8015EAD4 3C01800F */  lui        $at, %hi(D_800E7CE0 + 0x380)
/* BF518 8015EAD8 3C040002 */  lui        $a0, (0x2003B >> 16)
/* BF51C 8015EADC 8E0F0000 */  lw         $t7, 0x0($s0)
/* BF520 8015EAE0 3484003B */  ori        $a0, $a0, (0x2003B & 0xFFFF)
/* BF524 8015EAE4 000FC080 */  sll        $t8, $t7, 2
/* BF528 8015EAE8 00380821 */  addu       $at, $at, $t8
/* BF52C 8015EAEC AC208060 */  sw         $zero, %lo(D_800E7CE0 + 0x380)($at)
/* BF530 8015EAF0 8E190000 */  lw         $t9, 0x0($s0)
.L8015EAF4_ovl5:
/* BF534 8015EAF4 3C018013 */  lui        $at, %hi(D_8012E7C5 + 0x11)
/* BF538 8015EAF8 24180010 */  addiu      $t8, $zero, 0x10
/* BF53C 8015EAFC 00196080 */  sll        $t4, $t9, 2
/* BF540 8015EB00 022C5821 */  addu       $t3, $s1, $t4
/* BF544 8015EB04 8D6D0000 */  lw         $t5, 0x0($t3)
/* BF548 8015EB08 31AE0004 */  andi       $t6, $t5, 0x4
.L8015EB0C_ovl5:
/* BF54C 8015EB0C 11C00004 */  beqz       $t6, .L8015EB20_ovl3
/* BF550 8015EB10 240F0020 */   addiu     $t7, $zero, 0x20
/* BF554 8015EB14 3C018013 */  lui        $at, %hi(D_8012E7C5 + 0x11)
/* BF558 8015EB18 10000002 */  b          .L8015EB24_ovl3
/* BF55C 8015EB1C A02FE7D6 */   sb        $t7, %lo(D_8012E7C5 + 0x11)($at)
.L8015EB20_ovl3:
/* BF560 8015EB20 A038E7D6 */  sb         $t8, %lo(D_8012E7C5 + 0x11)($at)
.L8015EB24_ovl3:
/* BF564 8015EB24 8E190000 */  lw         $t9, 0x0($s0)
/* BF568 8015EB28 3C018019 */  lui        $at, %hi(D_8019709C_ovl3)
/* BF56C 8015EB2C C420709C */  lwc1       $f0, %lo(D_8019709C_ovl3)($at)
/* BF570 8015EB30 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
.L8015EB34_ovl5:
/* BF574 8015EB34 00196080 */  sll        $t4, $t9, 2
.L8015EB38_ovl5:
/* BF578 8015EB38 002C0821 */  addu       $at, $at, $t4
/* BF57C 8015EB3C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
.L8015EB40_ovl5:
/* BF580 8015EB40 8E0B0000 */  lw         $t3, 0x0($s0)
/* BF584 8015EB44 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BF588 8015EB48 24050021 */  addiu      $a1, $zero, 0x21
/* BF58C 8015EB4C 000B6880 */  sll        $t5, $t3, 2
.L8015EB50_ovl5:
/* BF590 8015EB50 002D0821 */  addu       $at, $at, $t5
/* BF594 8015EB54 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* BF598 8015EB58 8E0E0000 */  lw         $t6, 0x0($s0)
/* BF59C 8015EB5C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
.L8015EB60_ovl5:
/* BF5A0 8015EB60 24060010 */  addiu      $a2, $zero, 0x10
/* BF5A4 8015EB64 000E7880 */  sll        $t7, $t6, 2
/* BF5A8 8015EB68 002F0821 */  addu       $at, $at, $t7
/* BF5AC 8015EB6C 0C02A619 */  jal        func_800A9864
/* BF5B0 8015EB70 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* BF5B4 8015EB74 8E580000 */  lw         $t8, 0x0($s2)
/* BF5B8 8015EB78 3C01800F */  lui        $at, %hi(D_800EA360)
/* BF5BC 8015EB7C 27A5004C */  addiu      $a1, $sp, 0x4C
/* BF5C0 8015EB80 8F190000 */  lw         $t9, 0x0($t8)
/* BF5C4 8015EB84 24040058 */  addiu      $a0, $zero, 0x58
/* BF5C8 8015EB88 27A60050 */  addiu      $a2, $sp, 0x50
/* BF5CC 8015EB8C 00196080 */  sll        $t4, $t9, 2
/* BF5D0 8015EB90 002C0821 */  addu       $at, $at, $t4
/* BF5D4 8015EB94 0C029DFA */  jal        func_800A77E8
/* BF5D8 8015EB98 AC25A360 */   sw        $a1, %lo(D_800EA360)($at)
/* BF5DC 8015EB9C 8E500000 */  lw         $s0, 0x0($s2)
.L8015EBA0_ovl5:
/* BF5E0 8015EBA0 44804000 */  mtc1       $zero, $f8
/* BF5E4 8015EBA4 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* BF5E8 8015EBA8 8E0B0000 */  lw         $t3, 0x0($s0)
/* BF5EC 8015EBAC 44809000 */  mtc1       $zero, $f18
/* BF5F0 8015EBB0 3C040002 */  lui        $a0, (0x20283 >> 16)
/* BF5F4 8015EBB4 000B6880 */  sll        $t5, $t3, 2
/* BF5F8 8015EBB8 002D0821 */  addu       $at, $at, $t5
/* BF5FC 8015EBBC E428A8A0 */  swc1       $f8, %lo(D_800EA8A0)($at)
/* BF600 8015EBC0 8E020000 */  lw         $v0, 0x0($s0)
/* BF604 8015EBC4 3C050002 */  lui        $a1, (0x20284 >> 16)
/* BF608 8015EBC8 3C014100 */  lui        $at, (0x41000000 >> 16)
/* BF60C 8015EBCC 00021080 */  sll        $v0, $v0, 2
/* BF610 8015EBD0 02227021 */  addu       $t6, $s1, $v0
/* BF614 8015EBD4 8DCF0000 */  lw         $t7, 0x0($t6)
/* BF618 8015EBD8 34A50284 */  ori        $a1, $a1, (0x20284 & 0xFFFF)
/* BF61C 8015EBDC 34840283 */  ori        $a0, $a0, (0x20283 & 0xFFFF)
/* BF620 8015EBE0 31F80004 */  andi       $t8, $t7, 0x4
/* BF624 8015EBE4 57000008 */  bnel       $t8, $zero, .L8015EC08_ovl3
/* BF628 8015EBE8 44816000 */   mtc1      $at, $f12
/* BF62C 8015EBEC 3C014180 */  lui        $at, (0x41800000 >> 16)
/* BF630 8015EBF0 44811000 */  mtc1       $at, $f2
/* BF634 8015EBF4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* BF638 8015EBF8 44816000 */  mtc1       $at, $f12
/* BF63C 8015EBFC 10000005 */  b          .L8015EC14_ovl3
/* BF640 8015EC00 46001006 */   mov.s     $f0, $f2
/* BF644 8015EC04 44816000 */  mtc1       $at, $f12
.L8015EC08_ovl3:
/* BF648 8015EC08 3C014180 */  lui        $at, (0x41800000 >> 16)
/* BF64C 8015EC0C 44811000 */  mtc1       $at, $f2
/* BF650 8015EC10 46006006 */  mov.s      $f0, $f12
.L8015EC14_ovl3:
/* BF654 8015EC14 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BF658 8015EC18 00220821 */  addu       $at, $at, $v0
/* BF65C 8015EC1C C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* BF660 8015EC20 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BF664 8015EC24 00220821 */  addu       $at, $at, $v0
/* BF668 8015EC28 460A0402 */  mul.s      $f16, $f0, $f10
/* BF66C 8015EC2C E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* BF670 8015EC30 8E020000 */  lw         $v0, 0x0($s0)
/* BF674 8015EC34 3C01800E */  lui        $at, %hi(D_800E6850)
.L8015EC38_ovl5:
/* BF678 8015EC38 00021080 */  sll        $v0, $v0, 2
/* BF67C 8015EC3C 0222C821 */  addu       $t9, $s1, $v0
.L8015EC40_ovl5:
/* BF680 8015EC40 8F230000 */  lw         $v1, 0x0($t9)
/* BF684 8015EC44 00220821 */  addu       $at, $at, $v0
/* BF688 8015EC48 30630004 */  andi       $v1, $v1, 0x4
/* BF68C 8015EC4C 54600004 */  bnel       $v1, $zero, .L8015EC60_ovl3
/* BF690 8015EC50 46006006 */   mov.s     $f0, $f12
/* BF694 8015EC54 10000002 */  b          .L8015EC60_ovl3
/* BF698 8015EC58 46001006 */   mov.s     $f0, $f2
/* BF69C 8015EC5C 46006006 */  mov.s      $f0, $f12
.L8015EC60_ovl3:
/* BF6A0 8015EC60 4612003C */  c.lt.s     $f0, $f18
/* BF6A4 8015EC64 00000000 */  nop
/* BF6A8 8015EC68 4500000A */  bc1f       .L8015EC94_ovl3
/* BF6AC 8015EC6C 00000000 */   nop
/* BF6B0 8015EC70 14600003 */  bnez       $v1, .L8015EC80_ovl3
/* BF6B4 8015EC74 3C01800E */   lui       $at, %hi(D_800E6850)
/* BF6B8 8015EC78 10000002 */  b          .L8015EC84_ovl3
/* BF6BC 8015EC7C 46001006 */   mov.s     $f0, $f2
.L8015EC80_ovl3:
/* BF6C0 8015EC80 46006006 */  mov.s      $f0, $f12
.L8015EC84_ovl3:
/* BF6C4 8015EC84 46000107 */  neg.s      $f4, $f0
/* BF6C8 8015EC88 00220821 */  addu       $at, $at, $v0
/* BF6CC 8015EC8C 10000007 */  b          .L8015ECAC_ovl5
/* BF6D0 8015EC90 E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
.L8015EC94_ovl3:
/* BF6D4 8015EC94 54600004 */  bnel       $v1, $zero, .L8015ECA8_ovl5
/* BF6D8 8015EC98 46006006 */   mov.s     $f0, $f12
/* BF6DC 8015EC9C 10000002 */  b          .L8015ECA8_ovl5
/* BF6E0 8015ECA0 46001006 */   mov.s     $f0, $f2
/* BF6E4 8015ECA4 46006006 */  mov.s      $f0, $f12
.L8015ECA8_ovl5:
/* BF6E8 8015ECA8 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8015ECAC_ovl5:
/* BF6EC 8015ECAC 0C048C3A */  jal        func_801230E8
/* BF6F0 8015ECB0 00003025 */   or        $a2, $zero, $zero
/* BF6F4 8015ECB4 00008025 */  or         $s0, $zero, $zero
/* BF6F8 8015ECB8 2411000F */  addiu      $s1, $zero, 0xF
/* BF6FC 8015ECBC 8E4C0000 */  lw         $t4, 0x0($s2)
.L8015ECC0_ovl5:
/* BF700 8015ECC0 8D820000 */  lw         $v0, 0x0($t4)
/* BF704 8015ECC4 00021080 */  sll        $v0, $v0, 2
/* BF708 8015ECC8 02625821 */  addu       $t3, $s3, $v0
/* BF70C 8015ECCC 8D6D0000 */  lw         $t5, 0x0($t3)
/* BF710 8015ECD0 15A0000A */  bnez       $t5, .L8015ECFC_ovl3
/* BF714 8015ECD4 00000000 */   nop
/* BF718 8015ECD8 0C002DAF */  jal        finish_current_thread
/* BF71C 8015ECDC 24040001 */   addiu     $a0, $zero, 0x1
/* BF720 8015ECE0 26100001 */  addiu      $s0, $s0, 0x1
/* BF724 8015ECE4 5611FFF6 */  bnel       $s0, $s1, .L8015ECC0_ovl5
/* BF728 8015ECE8 8E4C0000 */   lw        $t4, 0x0($s2)
/* BF72C 8015ECEC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* BF730 8015ECF0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* BF734 8015ECF4 8DC20000 */  lw         $v0, 0x0($t6)
/* BF738 8015ECF8 00021080 */  sll        $v0, $v0, 2
.L8015ECFC_ovl3:
/* BF73C 8015ECFC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* BF740 8015ED00 00220821 */  addu       $at, $at, $v0
.L8015ED04_ovl5:
/* BF744 8015ED04 240F0001 */  addiu      $t7, $zero, 0x1
/* BF748 8015ED08 0C02BE85 */  jal        func_800AFA14
/* BF74C 8015ED0C AC2F98E0 */   sw        $t7, %lo(D_800E98E0)($at)
/* BF750 8015ED10 8FBF0024 */  lw         $ra, 0x24($sp)
/* BF754 8015ED14 8FB00014 */  lw         $s0, 0x14($sp)
/* BF758 8015ED18 8FB10018 */  lw         $s1, 0x18($sp)
/* BF75C 8015ED1C 8FB2001C */  lw         $s2, 0x1C($sp)
/* BF760 8015ED20 8FB30020 */  lw         $s3, 0x20($sp)
/* BF764 8015ED24 03E00008 */  jr         $ra
/* BF768 8015ED28 27BD0058 */   addiu     $sp, $sp, 0x58
