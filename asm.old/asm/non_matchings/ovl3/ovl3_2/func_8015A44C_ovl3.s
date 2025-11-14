glabel func_8015A44C_ovl3
/* 0BAE8C 8015A44C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BAE90 8015A450 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BAE94 8015A454 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0BAE98 8015A458 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0BAE9C 8015A45C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BAEA0 8015A460 8E4F0000 */  lw    $t7, ($s2)
/* 0BAEA4 8015A464 3C118013 */  lui   $s1, %hi(gKirbyState) # $s1, 0x8013
/* 0BAEA8 8015A468 2631E7C0 */  addiu $s1, %lo(gKirbyState) # addiu $s1, $s1, -0x1840
/* 0BAEAC 8015A46C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BAEB0 8015A470 AFB00018 */  sw    $s0, 0x18($sp)
/* 0BAEB4 8015A474 AE200030 */  sw    $zero, 0x30($s1)
/* 0BAEB8 8015A478 8DF80000 */  lw    $t8, ($t7)
/* 0BAEBC 8015A47C 3C01800E */  lui   $at, 0x800e
/* 0BAEC0 8015A480 240E0045 */  li    $t6, 69
/* 0BAEC4 8015A484 0018C880 */  sll   $t9, $t8, 2
/* 0BAEC8 8015A488 00390821 */  addu  $at, $at, $t9
/* 0BAECC 8015A48C 0C055F17 */  jal   func_80157C5C_ovl3
/* 0BAED0 8015A490 AC2EDFD0 */   sw    $t6, -0x2030($at)
/* 0BAED4 8015A494 8E430000 */  lw    $v1, ($s2)
/* 0BAED8 8015A498 3C01800E */  lui   $at, 0x800e
/* 0BAEDC 8015A49C 44802000 */  mtc1  $zero, $f4
/* 0BAEE0 8015A4A0 8C680000 */  lw    $t0, ($v1)
/* 0BAEE4 8015A4A4 240CFFFF */  li    $t4, -1
/* 0BAEE8 8015A4A8 2418FFFD */  li    $t8, -3
/* 0BAEEC 8015A4AC 00084880 */  sll   $t1, $t0, 2
/* 0BAEF0 8015A4B0 00290821 */  addu  $at, $at, $t1
/* 0BAEF4 8015A4B4 AC20F310 */  sw    $zero, -0xcf0($at)
/* 0BAEF8 8015A4B8 8C6A0000 */  lw    $t2, ($v1)
/* 0BAEFC 8015A4BC 3C01800E */  lui   $at, 0x800e
/* 0BAF00 8015A4C0 000A5880 */  sll   $t3, $t2, 2
/* 0BAF04 8015A4C4 002B0821 */  addu  $at, $at, $t3
/* 0BAF08 8015A4C8 E4244010 */  swc1  $f4, 0x4010($at)
/* 0BAF0C 8015A4CC 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0BAF10 8015A4D0 AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0BAF14 8015A4D4 AE200034 */  sw    $zero, 0x34($s1)
/* 0BAF18 8015A4D8 A2200007 */  sb    $zero, 7($s1)
/* 0BAF1C 8015A4DC A22000B0 */  sb    $zero, 0xb0($s1)
/* 0BAF20 8015A4E0 8C6D0000 */  lw    $t5, ($v1)
/* 0BAF24 8015A4E4 3C01800F */  lui   $at, 0x800f
/* 0BAF28 8015A4E8 000D7880 */  sll   $t7, $t5, 2
/* 0BAF2C 8015A4EC 002F0821 */  addu  $at, $at, $t7
/* 0BAF30 8015A4F0 AC2C8060 */  sw    $t4, -0x7fa0($at)
/* 0BAF34 8015A4F4 A2200004 */  sb    $zero, 4($s1)
/* 0BAF38 8015A4F8 0C04788D */  jal   func_8011E234
/* 0BAF3C 8015A4FC A238000D */   sb    $t8, 0xd($s1)
/* 0BAF40 8015A500 8E4E0000 */  lw    $t6, ($s2)
/* 0BAF44 8015A504 3C01800E */  lui   $at, 0x800e
/* 0BAF48 8015A508 44805000 */  mtc1  $zero, $f10
/* 0BAF4C 8015A50C 8DD90000 */  lw    $t9, ($t6)
/* 0BAF50 8015A510 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 0BAF54 8015A514 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 0BAF58 8015A518 00194080 */  sll   $t0, $t9, 2
/* 0BAF5C 8015A51C 00280821 */  addu  $at, $at, $t0
/* 0BAF60 8015A520 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 0BAF64 8015A524 E62A007C */  swc1  $f10, 0x7c($s1)
/* 0BAF68 8015A528 C630007C */  lwc1  $f16, 0x7c($s1)
/* 0BAF6C 8015A52C 46003207 */  neg.s $f8, $f6
/* 0BAF70 8015A530 C60C0000 */  lwc1  $f12, ($s0)
/* 0BAF74 8015A534 E6280078 */  swc1  $f8, 0x78($s1)
/* 0BAF78 8015A538 0C02BB30 */  jal   func_800AECC0
/* 0BAF7C 8015A53C E6300080 */   swc1  $f16, 0x80($s1)
/* 0BAF80 8015A540 0C02BB48 */  jal   func_800AED20
/* 0BAF84 8015A544 C60C0000 */   lwc1  $f12, ($s0)
/* 0BAF88 8015A548 8E430000 */  lw    $v1, ($s2)
/* 0BAF8C 8015A54C 3C09800F */  lui   $t1, 0x800f
/* 0BAF90 8015A550 3C04800E */  lui   $a0, 0x800e
/* 0BAF94 8015A554 8C620000 */  lw    $v0, ($v1)
/* 0BAF98 8015A558 3C018019 */  lui   $at, 0x8019
/* 0BAF9C 8015A55C 00021080 */  sll   $v0, $v0, 2
/* 0BAFA0 8015A560 01224821 */  addu  $t1, $t1, $v0
/* 0BAFA4 8015A564 8D298AE0 */  lw    $t1, -0x7520($t1)
/* 0BAFA8 8015A568 312A0006 */  andi  $t2, $t1, 6
/* 0BAFAC 8015A56C 1140006B */  beqz  $t2, .L8015A71C_ovl3
/* 0BAFB0 8015A570 00000000 */   nop   
/* 0BAFB4 8015A574 3C018019 */  lui   $at, %hi(D_80196FBC) # $at, 0x8019
/* 0BAFB8 8015A578 C4326FBC */  lwc1  $f18, %lo(D_80196FBC)($at)
/* 0BAFBC 8015A57C 3C01800F */  lui   $at, 0x800f
/* 0BAFC0 8015A580 00220821 */  addu  $at, $at, $v0
/* 0BAFC4 8015A584 E432A6E0 */  swc1  $f18, -0x5920($at)
/* 0BAFC8 8015A588 8C6B0000 */  lw    $t3, ($v1)
/* 0BAFCC 8015A58C 44802000 */  mtc1  $zero, $f4
/* 0BAFD0 8015A590 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0BAFD4 8015A594 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0BAFD8 8015A598 000B6880 */  sll   $t5, $t3, 2
/* 0BAFDC 8015A59C 008D6021 */  addu  $t4, $a0, $t5
/* 0BAFE0 8015A5A0 E5840000 */  swc1  $f4, ($t4)
/* 0BAFE4 8015A5A4 8C620000 */  lw    $v0, ($v1)
/* 0BAFE8 8015A5A8 3C01800E */  lui   $at, 0x800e
/* 0BAFEC 8015A5AC 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0BAFF0 8015A5B0 00021080 */  sll   $v0, $v0, 2
/* 0BAFF4 8015A5B4 00827821 */  addu  $t7, $a0, $v0
/* 0BAFF8 8015A5B8 C5E60000 */  lwc1  $f6, ($t7)
/* 0BAFFC 8015A5BC 00220821 */  addu  $at, $at, $v0
/* 0BB000 8015A5C0 3C040002 */  lui   $a0, (0x00020089 >> 16) # lui $a0, 2
/* 0BB004 8015A5C4 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0BB008 8015A5C8 8C780000 */  lw    $t8, ($v1)
/* 0BB00C 8015A5CC 3C018019 */  lui   $at, %hi(D_80196FC0) # $at, 0x8019
/* 0BB010 8015A5D0 C4286FC0 */  lwc1  $f8, %lo(D_80196FC0)($at)
/* 0BB014 8015A5D4 3C01800E */  lui   $at, 0x800e
/* 0BB018 8015A5D8 00187080 */  sll   $t6, $t8, 2
/* 0BB01C 8015A5DC 002E0821 */  addu  $at, $at, $t6
/* 0BB020 8015A5E0 E4286850 */  swc1  $f8, 0x6850($at)
/* 0BB024 8015A5E4 8C790000 */  lw    $t9, ($v1)
/* 0BB028 8015A5E8 3C018019 */  lui   $at, %hi(D_80196FC4) # $at, 0x8019
/* 0BB02C 8015A5EC C42A6FC4 */  lwc1  $f10, %lo(D_80196FC4)($at)
/* 0BB030 8015A5F0 3C01800E */  lui   $at, 0x800e
/* 0BB034 8015A5F4 00194080 */  sll   $t0, $t9, 2
/* 0BB038 8015A5F8 00280821 */  addu  $at, $at, $t0
/* 0BB03C 8015A5FC E42A3750 */  swc1  $f10, 0x3750($at)
/* 0BB040 8015A600 8C690000 */  lw    $t1, ($v1)
/* 0BB044 8015A604 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BB048 8015A608 44818000 */  mtc1  $at, $f16
/* 0BB04C 8015A60C 3C01800E */  lui   $at, 0x800e
/* 0BB050 8015A610 00095080 */  sll   $t2, $t1, 2
/* 0BB054 8015A614 002A0821 */  addu  $at, $at, $t2
/* 0BB058 8015A618 E4303C90 */  swc1  $f16, 0x3c90($at)
/* 0BB05C 8015A61C 922B0006 */  lbu   $t3, 6($s1)
/* 0BB060 8015A620 2401001B */  li    $at, 27
/* 0BB064 8015A624 34840089 */  ori   $a0, (0x00020089 & 0xFFFF) # ori $a0, $a0, 0x89
/* 0BB068 8015A628 15610003 */  bne   $t3, $at, .L8015A638_ovl3
/* 0BB06C 8015A62C 34A50007 */   ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0BB070 8015A630 0C02A9E3 */  jal   func_800AA78C
/* 0BB074 8015A634 3C0640C0 */   lui   $a2, 0x40c0
.L8015A638_ovl3:
/* 0BB078 8015A638 3C040002 */  lui   $a0, (0x00020089 >> 16) # lui $a0, 2
/* 0BB07C 8015A63C 3C050002 */  lui   $a1, (0x0002008A >> 16) # lui $a1, 2
/* 0BB080 8015A640 34A5008A */  ori   $a1, (0x0002008A & 0xFFFF) # ori $a1, $a1, 0x8a
/* 0BB084 8015A644 34840089 */  ori   $a0, (0x00020089 & 0xFFFF) # ori $a0, $a0, 0x89
/* 0BB088 8015A648 0C048C3A */  jal   func_801230E8
/* 0BB08C 8015A64C 00003025 */   move  $a2, $zero
/* 0BB090 8015A650 922D0014 */  lbu   $t5, 0x14($s1)
/* 0BB094 8015A654 24100001 */  li    $s0, 1
/* 0BB098 8015A658 560D0007 */  bnel  $s0, $t5, .L8015A678_ovl3
/* 0BB09C 8015A65C 8E430000 */   lw    $v1, ($s2)
.L8015A660_ovl3:
/* 0BB0A0 8015A660 0C002DAF */  jal   finish_current_thread
/* 0BB0A4 8015A664 02002025 */   move  $a0, $s0
/* 0BB0A8 8015A668 922C0014 */  lbu   $t4, 0x14($s1)
/* 0BB0AC 8015A66C 120CFFFC */  beq   $s0, $t4, .L8015A660_ovl3
/* 0BB0B0 8015A670 00000000 */   nop   
/* 0BB0B4 8015A674 8E430000 */  lw    $v1, ($s2)
.L8015A678_ovl3:
/* 0BB0B8 8015A678 44809000 */  mtc1  $zero, $f18
/* 0BB0BC 8015A67C 3C01800E */  lui   $at, 0x800e
/* 0BB0C0 8015A680 8C6F0000 */  lw    $t7, ($v1)
/* 0BB0C4 8015A684 3C100002 */  lui   $s0, (0x000200A7 >> 16) # lui $s0, 2
/* 0BB0C8 8015A688 361000A7 */  ori   $s0, (0x000200A7 & 0xFFFF) # ori $s0, $s0, 0xa7
/* 0BB0CC 8015A68C 000FC080 */  sll   $t8, $t7, 2
/* 0BB0D0 8015A690 00380821 */  addu  $at, $at, $t8
/* 0BB0D4 8015A694 E4323750 */  swc1  $f18, 0x3750($at)
/* 0BB0D8 8015A698 8C620000 */  lw    $v0, ($v1)
/* 0BB0DC 8015A69C 3C01800E */  lui   $at, 0x800e
/* 0BB0E0 8015A6A0 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0BB0E4 8015A6A4 00021080 */  sll   $v0, $v0, 2
/* 0BB0E8 8015A6A8 00220821 */  addu  $at, $at, $v0
/* 0BB0EC 8015A6AC C4243750 */  lwc1  $f4, 0x3750($at)
/* 0BB0F0 8015A6B0 3C01800E */  lui   $at, 0x800e
/* 0BB0F4 8015A6B4 00220821 */  addu  $at, $at, $v0
/* 0BB0F8 8015A6B8 E4243210 */  swc1  $f4, 0x3210($at)
/* 0BB0FC 8015A6BC 8C6E0000 */  lw    $t6, ($v1)
/* 0BB100 8015A6C0 3C018019 */  lui   $at, %hi(D_80196FC8) # $at, 0x8019
/* 0BB104 8015A6C4 C4266FC8 */  lwc1  $f6, %lo(D_80196FC8)($at)
/* 0BB108 8015A6C8 3C01800E */  lui   $at, 0x800e
/* 0BB10C 8015A6CC 000EC880 */  sll   $t9, $t6, 2
/* 0BB110 8015A6D0 00390821 */  addu  $at, $at, $t9
/* 0BB114 8015A6D4 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0BB118 8015A6D8 02002025 */  move  $a0, $s0
/* 0BB11C 8015A6DC 3C0640C0 */  lui   $a2, 0x40c0
/* 0BB120 8015A6E0 0C02A9E3 */  jal   func_800AA78C
/* 0BB124 8015A6E4 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 0BB128 8015A6E8 3C050002 */  lui   $a1, (0x000200A8 >> 16) # lui $a1, 2
/* 0BB12C 8015A6EC 34A500A8 */  ori   $a1, (0x000200A8 & 0xFFFF) # ori $a1, $a1, 0xa8
/* 0BB130 8015A6F0 02002025 */  move  $a0, $s0
/* 0BB134 8015A6F4 0C048C3A */  jal   func_801230E8
/* 0BB138 8015A6F8 24060001 */   li    $a2, 1
/* 0BB13C 8015A6FC 3C040002 */  lui   $a0, %hi(D_00026690) # $a0, 2
/* 0BB140 8015A700 3C050002 */  lui   $a1, (0x000200AA >> 16) # lui $a1, 2
/* 0BB144 8015A704 34A500AA */  ori   $a1, (0x000200AA & 0xFFFF) # ori $a1, $a1, 0xaa
/* 0BB148 8015A708 348400A9 */  ori   $a0, (0x000200A9 & 0xFFFF) # ori $a0, $a0, 0xa9
/* 0BB14C 8015A70C 0C048C3A */  jal   func_801230E8
/* 0BB150 8015A710 00003025 */   move  $a2, $zero
/* 0BB154 8015A714 10000075 */  b     .L8015A8EC_ovl3
/* 0BB158 8015A718 8E4D0000 */   lw    $t5, ($s2)
.L8015A71C_ovl3:
/* 0BB15C 8015A71C C4286FCC */  lwc1  $f8, 0x6fcc($at)
/* 0BB160 8015A720 3C01800F */  lui   $at, 0x800f
/* 0BB164 8015A724 00220821 */  addu  $at, $at, $v0
/* 0BB168 8015A728 E428A6E0 */  swc1  $f8, -0x5920($at)
/* 0BB16C 8015A72C 8C680000 */  lw    $t0, ($v1)
/* 0BB170 8015A730 44805000 */  mtc1  $zero, $f10
/* 0BB174 8015A734 24846690 */  addiu $a0, %lo(D_00026690) # addiu $a0, $a0, 0x6690
/* 0BB178 8015A738 00084880 */  sll   $t1, $t0, 2
/* 0BB17C 8015A73C 00895021 */  addu  $t2, $a0, $t1
/* 0BB180 8015A740 E54A0000 */  swc1  $f10, ($t2)
/* 0BB184 8015A744 8C620000 */  lw    $v0, ($v1)
/* 0BB188 8015A748 3C01800E */  lui   $at, 0x800e
/* 0BB18C 8015A74C 3C10800F */  lui   $s0, %hi(D_800E8920) # $s0, 0x800f
/* 0BB190 8015A750 00021080 */  sll   $v0, $v0, 2
/* 0BB194 8015A754 00825821 */  addu  $t3, $a0, $v0
/* 0BB198 8015A758 C5700000 */  lwc1  $f16, ($t3)
/* 0BB19C 8015A75C 00220821 */  addu  $at, $at, $v0
/* 0BB1A0 8015A760 26108920 */  addiu $s0, %lo(D_800E8920) # addiu $s0, $s0, -0x76e0
/* 0BB1A4 8015A764 E43064D0 */  swc1  $f16, 0x64d0($at)
/* 0BB1A8 8015A768 8C6D0000 */  lw    $t5, ($v1)
/* 0BB1AC 8015A76C 3C018019 */  lui   $at, %hi(D_80196FD0) # $at, 0x8019
/* 0BB1B0 8015A770 C4326FD0 */  lwc1  $f18, %lo(D_80196FD0)($at)
/* 0BB1B4 8015A774 3C01800E */  lui   $at, 0x800e
/* 0BB1B8 8015A778 000D6080 */  sll   $t4, $t5, 2
/* 0BB1BC 8015A77C 002C0821 */  addu  $at, $at, $t4
/* 0BB1C0 8015A780 E4326850 */  swc1  $f18, 0x6850($at)
/* 0BB1C4 8015A784 8C620000 */  lw    $v0, ($v1)
/* 0BB1C8 8015A788 3C040002 */  lui   $a0, (0x00020089 >> 16) # lui $a0, 2
/* 0BB1CC 8015A78C 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0BB1D0 8015A790 00021080 */  sll   $v0, $v0, 2
/* 0BB1D4 8015A794 02027821 */  addu  $t7, $s0, $v0
/* 0BB1D8 8015A798 8DF80000 */  lw    $t8, ($t7)
/* 0BB1DC 8015A79C 3C018019 */  lui   $at, %hi(D_80196FD4) # $at, 0x8019
/* 0BB1E0 8015A7A0 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0BB1E4 8015A7A4 17000024 */  bnez  $t8, .L8015A838_ovl3
/* 0BB1E8 8015A7A8 34840089 */   ori   $a0, (0x00020089 & 0xFFFF) # ori $a0, $a0, 0x89
/* 0BB1EC 8015A7AC C4246FD4 */  lwc1  $f4, %lo(D_80196FD4)($at)
/* 0BB1F0 8015A7B0 3C01800E */  lui   $at, 0x800e
/* 0BB1F4 8015A7B4 00220821 */  addu  $at, $at, $v0
/* 0BB1F8 8015A7B8 E4243750 */  swc1  $f4, 0x3750($at)
/* 0BB1FC 8015A7BC 8C6E0000 */  lw    $t6, ($v1)
/* 0BB200 8015A7C0 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BB204 8015A7C4 44813000 */  mtc1  $at, $f6
/* 0BB208 8015A7C8 3C01800E */  lui   $at, 0x800e
/* 0BB20C 8015A7CC 000EC880 */  sll   $t9, $t6, 2
/* 0BB210 8015A7D0 00390821 */  addu  $at, $at, $t9
/* 0BB214 8015A7D4 3C064040 */  lui   $a2, 0x4040
/* 0BB218 8015A7D8 0C02A9E3 */  jal   func_800AA78C
/* 0BB21C 8015A7DC E4263C90 */   swc1  $f6, 0x3c90($at)
/* 0BB220 8015A7E0 3C040002 */  lui   $a0, (0x00020089 >> 16) # lui $a0, 2
/* 0BB224 8015A7E4 3C050002 */  lui   $a1, (0x0002008A >> 16) # lui $a1, 2
/* 0BB228 8015A7E8 34A5008A */  ori   $a1, (0x0002008A & 0xFFFF) # ori $a1, $a1, 0x8a
/* 0BB22C 8015A7EC 34840089 */  ori   $a0, (0x00020089 & 0xFFFF) # ori $a0, $a0, 0x89
/* 0BB230 8015A7F0 0C048C3A */  jal   func_801230E8
/* 0BB234 8015A7F4 00003025 */   move  $a2, $zero
/* 0BB238 8015A7F8 8E480000 */  lw    $t0, ($s2)
/* 0BB23C 8015A7FC 8D090000 */  lw    $t1, ($t0)
/* 0BB240 8015A800 00095080 */  sll   $t2, $t1, 2
/* 0BB244 8015A804 020A5821 */  addu  $t3, $s0, $t2
/* 0BB248 8015A808 8D6D0000 */  lw    $t5, ($t3)
/* 0BB24C 8015A80C 15A0000A */  bnez  $t5, .L8015A838_ovl3
/* 0BB250 8015A810 00000000 */   nop   
.L8015A814_ovl3:
/* 0BB254 8015A814 0C002DAF */  jal   finish_current_thread
/* 0BB258 8015A818 24040001 */   li    $a0, 1
/* 0BB25C 8015A81C 8E4C0000 */  lw    $t4, ($s2)
/* 0BB260 8015A820 8D8F0000 */  lw    $t7, ($t4)
/* 0BB264 8015A824 000FC080 */  sll   $t8, $t7, 2
/* 0BB268 8015A828 02187021 */  addu  $t6, $s0, $t8
/* 0BB26C 8015A82C 8DD90000 */  lw    $t9, ($t6)
/* 0BB270 8015A830 1320FFF8 */  beqz  $t9, .L8015A814_ovl3
/* 0BB274 8015A834 00000000 */   nop   
.L8015A838_ovl3:
/* 0BB278 8015A838 0C048AD0 */  jal   func_80122B40
/* 0BB27C 8015A83C 00000000 */   nop   
/* 0BB280 8015A840 3C040002 */  lui   $a0, (0x000200B5 >> 16) # lui $a0, 2
/* 0BB284 8015A844 3C050002 */  lui   $a1, (0x000200B6 >> 16) # lui $a1, 2
/* 0BB288 8015A848 34A500B6 */  ori   $a1, (0x000200B6 & 0xFFFF) # ori $a1, $a1, 0xb6
/* 0BB28C 8015A84C 348400B5 */  ori   $a0, (0x000200B5 & 0xFFFF) # ori $a0, $a0, 0xb5
/* 0BB290 8015A850 0C048C3A */  jal   func_801230E8
/* 0BB294 8015A854 24060001 */   li    $a2, 1
/* 0BB298 8015A858 92280014 */  lbu   $t0, 0x14($s1)
/* 0BB29C 8015A85C 24010002 */  li    $at, 2
/* 0BB2A0 8015A860 3C040002 */  lui   $a0, (0x0002009B >> 16) # lui $a0, 2
/* 0BB2A4 8015A864 1101000E */  beq   $t0, $at, .L8015A8A0_ovl3
/* 0BB2A8 8015A868 3484009B */   ori   $a0, (0x0002009B & 0xFFFF) # ori $a0, $a0, 0x9b
/* 0BB2AC 8015A86C 3C050002 */  lui   $a1, (0x0002009C >> 16) # lui $a1, 2
/* 0BB2B0 8015A870 34A5009C */  ori   $a1, (0x0002009C & 0xFFFF) # ori $a1, $a1, 0x9c
/* 0BB2B4 8015A874 0C048C3A */  jal   func_801230E8
/* 0BB2B8 8015A878 00003025 */   move  $a2, $zero
/* 0BB2BC 8015A87C 92290014 */  lbu   $t1, 0x14($s1)
/* 0BB2C0 8015A880 24100001 */  li    $s0, 1
/* 0BB2C4 8015A884 56090007 */  bnel  $s0, $t1, .L8015A8A4_ovl3
/* 0BB2C8 8015A888 3C100002 */   lui   $s0, 2
.L8015A88C_ovl3:
/* 0BB2CC 8015A88C 0C002DAF */  jal   finish_current_thread
/* 0BB2D0 8015A890 02002025 */   move  $a0, $s0
/* 0BB2D4 8015A894 922A0014 */  lbu   $t2, 0x14($s1)
/* 0BB2D8 8015A898 120AFFFC */  beq   $s0, $t2, .L8015A88C_ovl3
/* 0BB2DC 8015A89C 00000000 */   nop   
.L8015A8A0_ovl3:
/* 0BB2E0 8015A8A0 3C100002 */  lui   $s0, (0x000200A3 >> 16) # lui $s0, 2
.L8015A8A4_ovl3:
/* 0BB2E4 8015A8A4 361000A3 */  ori   $s0, (0x000200A3 & 0xFFFF) # ori $s0, $s0, 0xa3
/* 0BB2E8 8015A8A8 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0BB2EC 8015A8AC 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0BB2F0 8015A8B0 02002025 */  move  $a0, $s0
/* 0BB2F4 8015A8B4 0C02A9E3 */  jal   func_800AA78C
/* 0BB2F8 8015A8B8 3C0640C0 */   lui   $a2, 0x40c0
/* 0BB2FC 8015A8BC 3C050002 */  lui   $a1, (0x000200A4 >> 16) # lui $a1, 2
/* 0BB300 8015A8C0 34A500A4 */  ori   $a1, (0x000200A4 & 0xFFFF) # ori $a1, $a1, 0xa4
/* 0BB304 8015A8C4 02002025 */  move  $a0, $s0
/* 0BB308 8015A8C8 0C048C3A */  jal   func_801230E8
/* 0BB30C 8015A8CC 24060001 */   li    $a2, 1
/* 0BB310 8015A8D0 3C040002 */  lui   $a0, (0x000200A5 >> 16) # lui $a0, 2
/* 0BB314 8015A8D4 3C050002 */  lui   $a1, (0x000200A6 >> 16) # lui $a1, 2
/* 0BB318 8015A8D8 34A500A6 */  ori   $a1, (0x000200A6 & 0xFFFF) # ori $a1, $a1, 0xa6
/* 0BB31C 8015A8DC 348400A5 */  ori   $a0, (0x000200A5 & 0xFFFF) # ori $a0, $a0, 0xa5
/* 0BB320 8015A8E0 0C048C3A */  jal   func_801230E8
/* 0BB324 8015A8E4 00003025 */   move  $a2, $zero
/* 0BB328 8015A8E8 8E4D0000 */  lw    $t5, ($s2)
.L8015A8EC_ovl3:
/* 0BB32C 8015A8EC 3C01800F */  lui   $at, 0x800f
/* 0BB330 8015A8F0 240B001E */  li    $t3, 30
/* 0BB334 8015A8F4 8DAC0000 */  lw    $t4, ($t5)
/* 0BB338 8015A8F8 000C7880 */  sll   $t7, $t4, 2
/* 0BB33C 8015A8FC 002F0821 */  addu  $at, $at, $t7
/* 0BB340 8015A900 AC2B9720 */  sw    $t3, -0x68e0($at)
/* 0BB344 8015A904 8E380030 */  lw    $t8, 0x30($s1)
/* 0BB348 8015A908 270E0001 */  addiu $t6, $t8, 1
/* 0BB34C 8015A90C 0C02BE85 */  jal   func_800AFA14
/* 0BB350 8015A910 AE2E0030 */   sw    $t6, 0x30($s1)
/* 0BB354 8015A914 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BB358 8015A918 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BB35C 8015A91C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BB360 8015A920 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BB364 8015A924 03E00008 */  jr    $ra
/* 0BB368 8015A928 27BD0028 */   addiu $sp, $sp, 0x28
.type func_8015A44C_ovl3, @function
.size func_8015A44C_ovl3, . - func_8015A44C_ovl3
