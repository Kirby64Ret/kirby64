glabel func_8016E8A0_ovl3
/* CF2E0 8016E8A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF2E4 8016E8A4 AFB10018 */  sw         $s1, 0x18($sp)
/* CF2E8 8016E8A8 3C118013 */  lui        $s1, %hi(gKirbyState)
/* CF2EC 8016E8AC 2631E7C0 */  addiu      $s1, $s1, %lo(gKirbyState)
/* CF2F0 8016E8B0 AFBF001C */  sw         $ra, 0x1C($sp)
/* CF2F4 8016E8B4 240F0001 */  addiu      $t7, $zero, 0x1
/* CF2F8 8016E8B8 AFB00014 */  sw         $s0, 0x14($sp)
/* CF2FC 8016E8BC AFA40020 */  sw         $a0, 0x20($sp)
/* CF300 8016E8C0 AE200044 */  sw         $zero, 0x44($s1)
/* CF304 8016E8C4 AE200030 */  sw         $zero, 0x30($s1)
/* CF308 8016E8C8 0C0473D6 */  jal        func_8011CF58
/* CF30C 8016E8CC A62F00D2 */   sh        $t7, 0xD2($s1)
glabel func_8016E8D0_ovl5
/* CF310 8016E8D0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* CF314 8016E8D4 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* CF318 8016E8D8 8E060000 */  lw         $a2, 0x0($s0)
/* CF31C 8016E8DC 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* CF320 8016E8E0 24180004 */  addiu      $t8, $zero, 0x4
/* CF324 8016E8E4 8CD90000 */  lw         $t9, 0x0($a2)
/* CF328 8016E8E8 3C07800E */  lui        $a3, %hi(D_800E6690)
/* CF32C 8016E8EC 00195880 */  sll        $t3, $t9, 2
/* CF330 8016E8F0 002B0821 */  addu       $at, $at, $t3
/* CF334 8016E8F4 AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
/* CF338 8016E8F8 92220004 */  lbu        $v0, 0x4($s1)
/* CF33C 8016E8FC 24010001 */  addiu      $at, $zero, 0x1
/* CF340 8016E900 14410004 */  bne        $v0, $at, .L8016E914_ovl3
/* CF344 8016E904 3C0C8019 */   lui       $t4, %hi(D_801903E0_ovl3)
/* CF348 8016E908 258C03E0 */  addiu      $t4, $t4, %lo(D_801903E0_ovl3)
/* CF34C 8016E90C 10000004 */  b          .L8016E920_ovl3
/* CF350 8016E910 AE2C015C */   sw        $t4, 0x15C($s1)
.L8016E914_ovl3:
/* CF354 8016E914 3C0D8019 */  lui        $t5, %hi(D_80190358_ovl3)
.L8016E918_ovl5:
/* CF358 8016E918 25AD0358 */  addiu      $t5, $t5, %lo(D_80190358_ovl3)
/* CF35C 8016E91C AE2D015C */  sw         $t5, 0x15C($s1)
.L8016E920_ovl3:
/* CF360 8016E920 8CC30000 */  lw         $v1, 0x0($a2)
/* CF364 8016E924 3C018019 */  lui        $at, %hi(D_80197370_ovl3)
/* CF368 8016E928 C4227370 */  lwc1       $f2, %lo(D_80197370_ovl3)($at)
/* CF36C 8016E92C 3C01800E */  lui        $at, %hi(D_800E3210)
/* CF370 8016E930 00031880 */  sll        $v1, $v1, 2
/* CF374 8016E934 00230821 */  addu       $at, $at, $v1
/* CF378 8016E938 C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
.L8016E93C_ovl5:
/* CF37C 8016E93C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* CF380 8016E940 00230821 */  addu       $at, $at, $v1
/* CF384 8016E944 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
/* CF388 8016E948 8CC30000 */  lw         $v1, 0x0($a2)
/* CF38C 8016E94C 3C08800E */  lui        $t0, %hi(D_800E64D0)
/* CF390 8016E950 250864D0 */  addiu      $t0, $t0, %lo(D_800E64D0)
/* CF394 8016E954 00031880 */  sll        $v1, $v1, 2
/* CF398 8016E958 01037021 */  addu       $t6, $t0, $v1
/* CF39C 8016E95C C5C60000 */  lwc1       $f6, 0x0($t6)
/* CF3A0 8016E960 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* CF3A4 8016E964 00230821 */  addu       $at, $at, $v1
/* CF3A8 8016E968 E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
/* CF3AC 8016E96C 8CC30000 */  lw         $v1, 0x0($a2)
/* CF3B0 8016E970 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* CF3B4 8016E974 3C01800F */  lui        $at, %hi(D_800EAA60)
/* CF3B8 8016E978 00031880 */  sll        $v1, $v1, 2
/* CF3BC 8016E97C 00E37821 */  addu       $t7, $a3, $v1
/* CF3C0 8016E980 C5E80000 */  lwc1       $f8, 0x0($t7)
/* CF3C4 8016E984 00230821 */  addu       $at, $at, $v1
/* CF3C8 8016E988 3C09800E */  lui        $t1, %hi(D_800E6850)
/* CF3CC 8016E98C E428AA60 */  swc1       $f8, %lo(D_800EAA60)($at)
/* CF3D0 8016E990 8CC30000 */  lw         $v1, 0x0($a2)
/* CF3D4 8016E994 25296850 */  addiu      $t1, $t1, %lo(D_800E6850)
/* CF3D8 8016E998 3C01800F */  lui        $at, %hi(D_800EAC20)
/* CF3DC 8016E99C 00031880 */  sll        $v1, $v1, 2
/* CF3E0 8016E9A0 0123C821 */  addu       $t9, $t1, $v1
/* CF3E4 8016E9A4 C72A0000 */  lwc1       $f10, 0x0($t9)
/* CF3E8 8016E9A8 00230821 */  addu       $at, $at, $v1
/* CF3EC 8016E9AC 44800000 */  mtc1       $zero, $f0
/* CF3F0 8016E9B0 E42AAC20 */  swc1       $f10, %lo(D_800EAC20)($at)
/* CF3F4 8016E9B4 8CD80000 */  lw         $t8, 0x0($a2)
/* CF3F8 8016E9B8 3C0A800E */  lui        $t2, %hi(D_800E3750)
/* CF3FC 8016E9BC 254A3750 */  addiu      $t2, $t2, %lo(D_800E3750)
/* CF400 8016E9C0 00185880 */  sll        $t3, $t8, 2
/* CF404 8016E9C4 014B6021 */  addu       $t4, $t2, $t3
/* CF408 8016E9C8 E5800000 */  swc1       $f0, 0x0($t4)
/* CF40C 8016E9CC 8CC30000 */  lw         $v1, 0x0($a2)
/* CF410 8016E9D0 3C01800E */  lui        $at, %hi(D_800E3210)
/* CF414 8016E9D4 3C05800F */  lui        $a1, %hi(D_800E9720)
/* CF418 8016E9D8 00031880 */  sll        $v1, $v1, 2
/* CF41C 8016E9DC 01436821 */  addu       $t5, $t2, $v1
/* CF420 8016E9E0 C5B00000 */  lwc1       $f16, 0x0($t5)
/* CF424 8016E9E4 00230821 */  addu       $at, $at, $v1
/* CF428 8016E9E8 24A59720 */  addiu      $a1, $a1, %lo(D_800E9720)
/* CF42C 8016E9EC E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* CF430 8016E9F0 8CCE0000 */  lw         $t6, 0x0($a2)
/* CF434 8016E9F4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CF438 8016E9F8 000E7880 */  sll        $t7, $t6, 2
/* CF43C 8016E9FC 002F0821 */  addu       $at, $at, $t7
/* CF440 8016EA00 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* CF444 8016EA04 8CD90000 */  lw         $t9, 0x0($a2)
/* CF448 8016EA08 0019C080 */  sll        $t8, $t9, 2
/* CF44C 8016EA0C 00F85821 */  addu       $t3, $a3, $t8
/* CF450 8016EA10 E5600000 */  swc1       $f0, 0x0($t3)
/* CF454 8016EA14 8CC30000 */  lw         $v1, 0x0($a2)
/* CF458 8016EA18 00031880 */  sll        $v1, $v1, 2
/* CF45C 8016EA1C 00E36021 */  addu       $t4, $a3, $v1
/* CF460 8016EA20 C5920000 */  lwc1       $f18, 0x0($t4)
/* CF464 8016EA24 01036821 */  addu       $t5, $t0, $v1
/* CF468 8016EA28 E5B20000 */  swc1       $f18, 0x0($t5)
/* CF46C 8016EA2C 8CCE0000 */  lw         $t6, 0x0($a2)
/* CF470 8016EA30 000E7880 */  sll        $t7, $t6, 2
/* CF474 8016EA34 012FC821 */  addu       $t9, $t1, $t7
/* CF478 8016EA38 E7220000 */  swc1       $f2, 0x0($t9)
/* CF47C 8016EA3C 8CD80000 */  lw         $t8, 0x0($a2)
/* CF480 8016EA40 00185880 */  sll        $t3, $t8, 2
/* CF484 8016EA44 00AB6021 */  addu       $t4, $a1, $t3
/* CF488 8016EA48 AD800000 */  sw         $zero, 0x0($t4)
glabel func_8016EA4C_ovl5
/* CF48C 8016EA4C 8CC30000 */  lw         $v1, 0x0($a2)
/* CF490 8016EA50 00031880 */  sll        $v1, $v1, 2
glabel func_8016EA54_ovl5
/* CF494 8016EA54 00A36821 */  addu       $t5, $a1, $v1
/* CF498 8016EA58 8DAE0000 */  lw         $t6, 0x0($t5)
/* CF49C 8016EA5C 29C10002 */  slti       $at, $t6, 0x2
/* CF4A0 8016EA60 1020001C */  beqz       $at, .L8016EAD4_ovl3
/* CF4A4 8016EA64 00000000 */   nop
.L8016EA68_ovl3:
/* CF4A8 8016EA68 0C002DAF */  jal        finish_current_thread
/* CF4AC 8016EA6C 24040001 */   addiu     $a0, $zero, 0x1
/* CF4B0 8016EA70 8E060000 */  lw         $a2, 0x0($s0)
/* CF4B4 8016EA74 3C05800F */  lui        $a1, %hi(D_800E9720)
/* CF4B8 8016EA78 24A59720 */  addiu      $a1, $a1, %lo(D_800E9720)
/* CF4BC 8016EA7C 8CCF0000 */  lw         $t7, 0x0($a2)
.L8016EA80_ovl5:
/* CF4C0 8016EA80 000FC880 */  sll        $t9, $t7, 2
/* CF4C4 8016EA84 00B91021 */  addu       $v0, $a1, $t9
/* CF4C8 8016EA88 8C580000 */  lw         $t8, 0x0($v0)
/* CF4CC 8016EA8C 270B0001 */  addiu      $t3, $t8, 0x1
/* CF4D0 8016EA90 AC4B0000 */  sw         $t3, 0x0($v0)
/* CF4D4 8016EA94 8CC30000 */  lw         $v1, 0x0($a2)
/* CF4D8 8016EA98 00031880 */  sll        $v1, $v1, 2
/* CF4DC 8016EA9C 00A36021 */  addu       $t4, $a1, $v1
/* CF4E0 8016EAA0 8D8D0000 */  lw         $t5, 0x0($t4)
/* CF4E4 8016EAA4 29A10002 */  slti       $at, $t5, 0x2
.L8016EAA8_ovl5:
/* CF4E8 8016EAA8 1420FFEF */  bnez       $at, .L8016EA68_ovl3
/* CF4EC 8016EAAC 00000000 */   nop
/* CF4F0 8016EAB0 3C0A800E */  lui        $t2, %hi(D_800E3750)
/* CF4F4 8016EAB4 3C09800E */  lui        $t1, %hi(D_800E6850)
/* CF4F8 8016EAB8 3C08800E */  lui        $t0, %hi(D_800E64D0)
/* CF4FC 8016EABC 3C07800E */  lui        $a3, %hi(D_800E6690)
/* CF500 8016EAC0 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* CF504 8016EAC4 250864D0 */  addiu      $t0, $t0, %lo(D_800E64D0)
/* CF508 8016EAC8 25296850 */  addiu      $t1, $t1, %lo(D_800E6850)
/* CF50C 8016EACC 254A3750 */  addiu      $t2, $t2, %lo(D_800E3750)
.L8016EAD0_ovl5:
/* CF510 8016EAD0 92220004 */  lbu        $v0, 0x4($s1)
.L8016EAD4_ovl3:
/* CF514 8016EAD4 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* CF518 8016EAD8 00230821 */  addu       $at, $at, $v1
/* CF51C 8016EADC C424A6E0 */  lwc1       $f4, %lo(D_800EA6E0)($at)
/* CF520 8016EAE0 3C01800E */  lui        $at, %hi(D_800E3210)
/* CF524 8016EAE4 00230821 */  addu       $at, $at, $v1
/* CF528 8016EAE8 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* CF52C 8016EAEC 8CC30000 */  lw         $v1, 0x0($a2)
/* CF530 8016EAF0 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* CF534 8016EAF4 24180003 */  addiu      $t8, $zero, 0x3
/* CF538 8016EAF8 00031880 */  sll        $v1, $v1, 2
glabel func_8016EAFC_ovl5
/* CF53C 8016EAFC 00230821 */  addu       $at, $at, $v1
/* CF540 8016EB00 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* CF544 8016EB04 01037021 */  addu       $t6, $t0, $v1
/* CF548 8016EB08 3C01800F */  lui        $at, %hi(D_800EAA60)
/* CF54C 8016EB0C E5C60000 */  swc1       $f6, 0x0($t6)
/* CF550 8016EB10 8CC30000 */  lw         $v1, 0x0($a2)
/* CF554 8016EB14 00031880 */  sll        $v1, $v1, 2
/* CF558 8016EB18 00230821 */  addu       $at, $at, $v1
/* CF55C 8016EB1C C428AA60 */  lwc1       $f8, %lo(D_800EAA60)($at)
/* CF560 8016EB20 00E37821 */  addu       $t7, $a3, $v1
/* CF564 8016EB24 3C01800F */  lui        $at, %hi(D_800EAC20)
/* CF568 8016EB28 E5E80000 */  swc1       $f8, 0x0($t7)
/* CF56C 8016EB2C 8CC30000 */  lw         $v1, 0x0($a2)
/* CF570 8016EB30 00031880 */  sll        $v1, $v1, 2
/* CF574 8016EB34 00230821 */  addu       $at, $at, $v1
/* CF578 8016EB38 C42AAC20 */  lwc1       $f10, %lo(D_800EAC20)($at)
/* CF57C 8016EB3C 0123C821 */  addu       $t9, $t1, $v1
/* CF580 8016EB40 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* CF584 8016EB44 E72A0000 */  swc1       $f10, 0x0($t9)
/* CF588 8016EB48 8CCB0000 */  lw         $t3, 0x0($a2)
/* CF58C 8016EB4C 3C198019 */  lui        $t9, %hi(D_80190358_ovl3)
/* CF590 8016EB50 27390358 */  addiu      $t9, $t9, %lo(D_80190358_ovl3)
/* CF594 8016EB54 000B6080 */  sll        $t4, $t3, 2
/* CF598 8016EB58 002C0821 */  addu       $at, $at, $t4
/* CF59C 8016EB5C AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
/* CF5A0 8016EB60 8CCD0000 */  lw         $t5, 0x0($a2)
/* CF5A4 8016EB64 3C01800F */  lui        $at, %hi(D_800E8920)
/* CF5A8 8016EB68 000D7080 */  sll        $t6, $t5, 2
/* CF5AC 8016EB6C 002E0821 */  addu       $at, $at, $t6
/* CF5B0 8016EB70 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* CF5B4 8016EB74 24010001 */  addiu      $at, $zero, 0x1
/* CF5B8 8016EB78 14410004 */  bne        $v0, $at, .L8016EB8C_ovl3
/* CF5BC 8016EB7C 3C0F8019 */   lui       $t7, %hi(D_801903E0_ovl3)
/* CF5C0 8016EB80 25EF03E0 */  addiu      $t7, $t7, %lo(D_801903E0_ovl3)
/* CF5C4 8016EB84 10000002 */  b          .L8016EB90_ovl3
/* CF5C8 8016EB88 AE2F015C */   sw        $t7, 0x15C($s1)
.L8016EB8C_ovl3:
/* CF5CC 8016EB8C AE39015C */  sw         $t9, 0x15C($s1)
.L8016EB90_ovl3:
/* CF5D0 8016EB90 8CC30000 */  lw         $v1, 0x0($a2)
/* CF5D4 8016EB94 3C04800F */  lui        $a0, %hi(D_800EC2E0)
/* CF5D8 8016EB98 3C018000 */  lui        $at, (0x80000000 >> 16)
/* CF5DC 8016EB9C 00031880 */  sll        $v1, $v1, 2
/* CF5E0 8016EBA0 00832021 */  addu       $a0, $a0, $v1
/* CF5E4 8016EBA4 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
/* CF5E8 8016EBA8 10810008 */  beq        $a0, $at, .L8016EBCC_ovl3
/* CF5EC 8016EBAC 00000000 */   nop
/* CF5F0 8016EBB0 0C029D9E */  jal        play_sound
/* CF5F4 8016EBB4 00000000 */   nop
/* CF5F8 8016EBB8 8E060000 */  lw         $a2, 0x0($s0)
/* CF5FC 8016EBBC 3C0A800E */  lui        $t2, %hi(D_800E3750)
/* CF600 8016EBC0 254A3750 */  addiu      $t2, $t2, %lo(D_800E3750)
/* CF604 8016EBC4 8CC30000 */  lw         $v1, 0x0($a2)
/* CF608 8016EBC8 00031880 */  sll        $v1, $v1, 2
.L8016EBCC_ovl3:
/* CF60C 8016EBCC 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
/* CF610 8016EBD0 01635821 */  addu       $t3, $t3, $v1
/* CF614 8016EBD4 8D6B8AE0 */  lw         $t3, %lo(D_800E8AE0)($t3)
/* CF618 8016EBD8 24010006 */  addiu      $at, $zero, 0x6
/* CF61C 8016EBDC 00001025 */  or         $v0, $zero, $zero
/* CF620 8016EBE0 31780006 */  andi       $t8, $t3, 0x6
/* CF624 8016EBE4 17010003 */  bne        $t8, $at, .L8016EBF4_ovl3
/* CF628 8016EBE8 00000000 */   nop
/* CF62C 8016EBEC 10000001 */  b          .L8016EBF4_ovl3
/* CF630 8016EBF0 24020001 */   addiu     $v0, $zero, 0x1
.L8016EBF4_ovl3:
/* CF634 8016EBF4 10400012 */  beqz       $v0, .L8016EC40_ovl3
/* CF638 8016EBF8 3C014100 */   lui       $at, (0x41000000 >> 16)
/* CF63C 8016EBFC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* CF640 8016EC00 44818000 */  mtc1       $at, $f16
/* CF644 8016EC04 3C018019 */  lui        $at, %hi(D_80197374_ovl3)
/* CF648 8016EC08 E63000CC */  swc1       $f16, 0xCC($s1)
/* CF64C 8016EC0C 8CCC0000 */  lw         $t4, 0x0($a2)
/* CF650 8016EC10 C4327374 */  lwc1       $f18, %lo(D_80197374_ovl3)($at)
/* CF654 8016EC14 3C014108 */  lui        $at, (0x41080000 >> 16)
/* CF658 8016EC18 000C6880 */  sll        $t5, $t4, 2
/* CF65C 8016EC1C 014D7021 */  addu       $t6, $t2, $t5
/* CF660 8016EC20 E5D20000 */  swc1       $f18, 0x0($t6)
/* CF664 8016EC24 8CCF0000 */  lw         $t7, 0x0($a2)
/* CF668 8016EC28 44812000 */  mtc1       $at, $f4
/* CF66C 8016EC2C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CF670 8016EC30 000FC880 */  sll        $t9, $t7, 2
/* CF674 8016EC34 00390821 */  addu       $at, $at, $t9
/* CF678 8016EC38 10000025 */  b          .L8016ECD0_ovl3
/* CF67C 8016EC3C E4243C90 */   swc1      $f4, %lo(D_800E3C90)($at)
.L8016EC40_ovl3:
/* CF680 8016EC40 44813000 */  mtc1       $at, $f6
/* CF684 8016EC44 3C018019 */  lui        $at, %hi(D_80197378_ovl3)
/* CF688 8016EC48 E62600CC */  swc1       $f6, 0xCC($s1)
/* CF68C 8016EC4C 8CCB0000 */  lw         $t3, 0x0($a2)
/* CF690 8016EC50 C4287378 */  lwc1       $f8, %lo(D_80197378_ovl3)($at)
/* CF694 8016EC54 3C014188 */  lui        $at, (0x41880000 >> 16)
/* CF698 8016EC58 000BC080 */  sll        $t8, $t3, 2
/* CF69C 8016EC5C 01586021 */  addu       $t4, $t2, $t8
/* CF6A0 8016EC60 44816000 */  mtc1       $at, $f12
/* CF6A4 8016EC64 0C048C51 */  jal        func_80123144
/* CF6A8 8016EC68 E5880000 */   swc1      $f8, 0x0($t4)
/* CF6AC 8016EC6C 44805000 */  mtc1       $zero, $f10
/* CF6B0 8016EC70 3C014188 */  lui        $at, (0x41880000 >> 16)
/* CF6B4 8016EC74 44816000 */  mtc1       $at, $f12
/* CF6B8 8016EC78 460A003C */  c.lt.s     $f0, $f10
/* CF6BC 8016EC7C 00000000 */  nop
/* CF6C0 8016EC80 4500000B */  bc1f       .L8016ECB0_ovl3
/* CF6C4 8016EC84 00000000 */   nop
/* CF6C8 8016EC88 0C048C51 */  jal        func_80123144
/* CF6CC 8016EC8C 00000000 */   nop
/* CF6D0 8016EC90 8E060000 */  lw         $a2, 0x0($s0)
/* CF6D4 8016EC94 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CF6D8 8016EC98 46000407 */  neg.s      $f16, $f0
/* CF6DC 8016EC9C 8CCD0000 */  lw         $t5, 0x0($a2)
/* CF6E0 8016ECA0 000D7080 */  sll        $t6, $t5, 2
/* CF6E4 8016ECA4 002E0821 */  addu       $at, $at, $t6
/* CF6E8 8016ECA8 10000009 */  b          .L8016ECD0_ovl3
/* CF6EC 8016ECAC E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
.L8016ECB0_ovl3:
/* CF6F0 8016ECB0 0C048C51 */  jal        func_80123144
.L8016ECB4_ovl5:
/* CF6F4 8016ECB4 00000000 */   nop
/* CF6F8 8016ECB8 8E060000 */  lw         $a2, 0x0($s0)
/* CF6FC 8016ECBC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CF700 8016ECC0 8CCF0000 */  lw         $t7, 0x0($a2)
/* CF704 8016ECC4 000FC880 */  sll        $t9, $t7, 2
/* CF708 8016ECC8 00390821 */  addu       $at, $at, $t9
/* CF70C 8016ECCC E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L8016ECD0_ovl3:
/* CF710 8016ECD0 8CCB0000 */  lw         $t3, 0x0($a2)
/* CF714 8016ECD4 3C04800E */  lui        $a0, %hi(D_800DFA10)
/* CF718 8016ECD8 000BC080 */  sll        $t8, $t3, 2
/* CF71C 8016ECDC 00982021 */  addu       $a0, $a0, $t8
.L8016ECE0_ovl5:
/* CF720 8016ECE0 0C02BE95 */  jal        func_800AFA54
/* CF724 8016ECE4 8C84FA10 */   lw        $a0, %lo(D_800DFA10)($a0)
/* CF728 8016ECE8 92220004 */  lbu        $v0, 0x4($s1)
/* CF72C 8016ECEC 3C040002 */  lui        $a0, (0x2009F >> 16)
/* CF730 8016ECF0 3484009F */  ori        $a0, $a0, (0x2009F & 0xFFFF)
/* CF734 8016ECF4 10400009 */  beqz       $v0, .L8016ED1C_ovl3
/* CF738 8016ECF8 3C050002 */   lui       $a1, (0x200A0 >> 16)
/* CF73C 8016ECFC 24010001 */  addiu      $at, $zero, 0x1
/* CF740 8016ED00 1041000B */  beq        $v0, $at, .L8016ED30_ovl3
/* CF744 8016ED04 3C040002 */   lui       $a0, (0x2016D >> 16)
.L8016ED08_ovl5:
/* CF748 8016ED08 24010002 */  addiu      $at, $zero, 0x2
/* CF74C 8016ED0C 1041000F */  beq        $v0, $at, .L8016ED4C_ovl3
/* CF750 8016ED10 3C040002 */   lui       $a0, (0x200C7 >> 16)
/* CF754 8016ED14 10000013 */  b          .L8016ED64_ovl3
/* CF758 8016ED18 8E0C0000 */   lw        $t4, 0x0($s0)
.L8016ED1C_ovl3:
/* CF75C 8016ED1C 34A500A0 */  ori        $a1, $a1, (0x200A0 & 0xFFFF)
/* CF760 8016ED20 0C048C3A */  jal        func_801230E8
/* CF764 8016ED24 00003025 */   or        $a2, $zero, $zero
/* CF768 8016ED28 1000000E */  b          .L8016ED64_ovl3
.L8016ED2C_ovl5:
/* CF76C 8016ED2C 8E0C0000 */   lw        $t4, 0x0($s0)
.L8016ED30_ovl3:
/* CF770 8016ED30 3C050002 */  lui        $a1, (0x2016E >> 16)
/* CF774 8016ED34 34A5016E */  ori        $a1, $a1, (0x2016E & 0xFFFF)
/* CF778 8016ED38 3484016D */  ori        $a0, $a0, (0x2016D & 0xFFFF)
/* CF77C 8016ED3C 0C048C3A */  jal        func_801230E8
/* CF780 8016ED40 00003025 */   or        $a2, $zero, $zero
/* CF784 8016ED44 10000007 */  b          .L8016ED64_ovl3
/* CF788 8016ED48 8E0C0000 */   lw        $t4, 0x0($s0)
.L8016ED4C_ovl3:
/* CF78C 8016ED4C 3C050002 */  lui        $a1, (0x200C8 >> 16)
/* CF790 8016ED50 34A500C8 */  ori        $a1, $a1, (0x200C8 & 0xFFFF)
/* CF794 8016ED54 348400C7 */  ori        $a0, $a0, (0x200C7 & 0xFFFF)
/* CF798 8016ED58 0C048C3A */  jal        func_801230E8
/* CF79C 8016ED5C 00003025 */   or        $a2, $zero, $zero
/* CF7A0 8016ED60 8E0C0000 */  lw         $t4, 0x0($s0)
.L8016ED64_ovl3:
/* CF7A4 8016ED64 3C01800E */  lui        $at, %hi(D_800E3210)
.L8016ED68_ovl5:
/* CF7A8 8016ED68 C63200CC */  lwc1       $f18, 0xCC($s1)
/* CF7AC 8016ED6C 8D8D0000 */  lw         $t5, 0x0($t4)
/* CF7B0 8016ED70 000D7080 */  sll        $t6, $t5, 2
/* CF7B4 8016ED74 002E0821 */  addu       $at, $at, $t6
/* CF7B8 8016ED78 C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
/* CF7BC 8016ED7C 4604903C */  c.lt.s     $f18, $f4
/* CF7C0 8016ED80 00000000 */  nop
/* CF7C4 8016ED84 4502000F */  bc1fl      .L8016EDC4_ovl3
/* CF7C8 8016ED88 92220004 */   lbu       $v0, 0x4($s1)
.L8016ED8C_ovl3:
/* CF7CC 8016ED8C 0C002DAF */  jal        finish_current_thread
.L8016ED90_ovl5:
/* CF7D0 8016ED90 24040001 */   addiu     $a0, $zero, 0x1
/* CF7D4 8016ED94 8E0F0000 */  lw         $t7, 0x0($s0)
/* CF7D8 8016ED98 3C01800E */  lui        $at, %hi(D_800E3210)
/* CF7DC 8016ED9C C62600CC */  lwc1       $f6, 0xCC($s1)
/* CF7E0 8016EDA0 8DF90000 */  lw         $t9, 0x0($t7)
/* CF7E4 8016EDA4 00195880 */  sll        $t3, $t9, 2
/* CF7E8 8016EDA8 002B0821 */  addu       $at, $at, $t3
/* CF7EC 8016EDAC C4283210 */  lwc1       $f8, %lo(D_800E3210)($at)
/* CF7F0 8016EDB0 4608303C */  c.lt.s     $f6, $f8
/* CF7F4 8016EDB4 00000000 */  nop
.L8016EDB8_ovl5:
/* CF7F8 8016EDB8 4501FFF4 */  bc1t       .L8016ED8C_ovl3
/* CF7FC 8016EDBC 00000000 */   nop
/* CF800 8016EDC0 92220004 */  lbu        $v0, 0x4($s1)
.L8016EDC4_ovl3:
/* CF804 8016EDC4 3C040002 */  lui        $a0, (0x200A1 >> 16)
/* CF808 8016EDC8 348400A1 */  ori        $a0, $a0, (0x200A1 & 0xFFFF)
/* CF80C 8016EDCC 10400009 */  beqz       $v0, .L8016EDF4_ovl3
/* CF810 8016EDD0 3C050002 */   lui       $a1, (0x200A2 >> 16)
/* CF814 8016EDD4 24010001 */  addiu      $at, $zero, 0x1
/* CF818 8016EDD8 1041000B */  beq        $v0, $at, .L8016EE08_ovl3
.L8016EDDC_ovl5:
/* CF81C 8016EDDC 3C040002 */   lui       $a0, (0x2016F >> 16)
/* CF820 8016EDE0 24010002 */  addiu      $at, $zero, 0x2
/* CF824 8016EDE4 1041000F */  beq        $v0, $at, .L8016EE24_ovl3
/* CF828 8016EDE8 3C040002 */   lui       $a0, (0x200C9 >> 16)
/* CF82C 8016EDEC 10000013 */  b          .L8016EE3C_ovl3
/* CF830 8016EDF0 8E380030 */   lw        $t8, 0x30($s1)
.L8016EDF4_ovl3:
/* CF834 8016EDF4 34A500A2 */  ori        $a1, $a1, (0x200A2 & 0xFFFF)
/* CF838 8016EDF8 0C048C3A */  jal        func_801230E8
/* CF83C 8016EDFC 24060001 */   addiu     $a2, $zero, 0x1
/* CF840 8016EE00 1000000E */  b          .L8016EE3C_ovl3
/* CF844 8016EE04 8E380030 */   lw        $t8, 0x30($s1)
.L8016EE08_ovl3:
/* CF848 8016EE08 3C050002 */  lui        $a1, (0x20170 >> 16)
/* CF84C 8016EE0C 34A50170 */  ori        $a1, $a1, (0x20170 & 0xFFFF)
/* CF850 8016EE10 3484016F */  ori        $a0, $a0, (0x2016F & 0xFFFF)
/* CF854 8016EE14 0C048C3A */  jal        func_801230E8
.L8016EE18_ovl5:
/* CF858 8016EE18 24060001 */   addiu     $a2, $zero, 0x1
/* CF85C 8016EE1C 10000007 */  b          .L8016EE3C_ovl3
/* CF860 8016EE20 8E380030 */   lw        $t8, 0x30($s1)
.L8016EE24_ovl3:
/* CF864 8016EE24 3C050002 */  lui        $a1, (0x200CA >> 16)
/* CF868 8016EE28 34A500CA */  ori        $a1, $a1, (0x200CA & 0xFFFF)
/* CF86C 8016EE2C 348400C9 */  ori        $a0, $a0, (0x200C9 & 0xFFFF)
/* CF870 8016EE30 0C048C3A */  jal        func_801230E8
/* CF874 8016EE34 24060001 */   addiu     $a2, $zero, 0x1
/* CF878 8016EE38 8E380030 */  lw         $t8, 0x30($s1)
.L8016EE3C_ovl3:
/* CF87C 8016EE3C 270C0001 */  addiu      $t4, $t8, 0x1
/* CF880 8016EE40 0C02BE85 */  jal        func_800AFA14
/* CF884 8016EE44 AE2C0030 */   sw        $t4, 0x30($s1)
/* CF888 8016EE48 8FBF001C */  lw         $ra, 0x1C($sp)
/* CF88C 8016EE4C 8FB00014 */  lw         $s0, 0x14($sp)
/* CF890 8016EE50 8FB10018 */  lw         $s1, 0x18($sp)
/* CF894 8016EE54 03E00008 */  jr         $ra
/* CF898 8016EE58 27BD0020 */   addiu     $sp, $sp, 0x20
