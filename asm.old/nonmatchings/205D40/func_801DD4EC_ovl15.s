glabel func_801DD4EC_ovl15
/* 20804C 801DD4EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 208050 801DD4F0 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 208054 801DD4F4 4480A000 */  mtc1       $zero, $f20
glabel func_801DD4F8_ovl16
/* 208058 801DD4F8 AFBF0024 */  sw         $ra, 0x24($sp)
.L801DD4FC_ovl12:
/* 20805C 801DD4FC AFB10020 */  sw         $s1, 0x20($sp)
/* 208060 801DD500 AFB0001C */  sw         $s0, 0x1C($sp)
.L801DD504_ovl9:
/* 208064 801DD504 AFA40028 */  sw         $a0, 0x28($sp)
glabel func_801DD508_ovl12
/* 208068 801DD508 0C02BB48 */  jal        func_800AED20
glabel func_801DD50C_ovl16
/* 20806C 801DD50C 4600A306 */   mov.s     $f12, $f20
.L801DD510_ovl9:
/* 208070 801DD510 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 208074 801DD514 0C02BB30 */  jal        func_800AECC0
/* 208078 801DD518 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
.L801DD51C_ovl10:
/* 20807C 801DD51C 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 208080 801DD520 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 208084 801DD524 8E2E0000 */  lw         $t6, 0x0($s1)
/* 208088 801DD528 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 20808C 801DD52C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 208090 801DD530 000FC080 */  sll        $t8, $t7, 2
/* 208094 801DD534 00380821 */  addu       $at, $at, $t8
/* 208098 801DD538 0C02CCFD */  jal        func_800B33F4
/* 20809C 801DD53C AC20DFD0 */   sw        $zero, %lo(D_800DDFD0)($at)
/* 2080A0 801DD540 3C040001 */  lui        $a0, (0x103CB >> 16)
/* 2080A4 801DD544 0C02A806 */  jal        func_800AA018
/* 2080A8 801DD548 348403CB */   ori       $a0, $a0, (0x103CB & 0xFFFF)
/* 2080AC 801DD54C 3C040001 */  lui        $a0, (0x103DD >> 16)
glabel func_801DD550_ovl13
/* 2080B0 801DD550 0C02A806 */  jal        func_800AA018
/* 2080B4 801DD554 348403DD */   ori       $a0, $a0, (0x103DD & 0xFFFF)
.L801DD558_ovl9:
/* 2080B8 801DD558 8E280000 */  lw         $t0, 0x0($s1)
/* 2080BC 801DD55C 3C01800F */  lui        $at, %hi(D_800EBDA0)
/* 2080C0 801DD560 2419FFFF */  addiu      $t9, $zero, -0x1
/* 2080C4 801DD564 8D090000 */  lw         $t1, 0x0($t0)
/* 2080C8 801DD568 2404019F */  addiu      $a0, $zero, 0x19F
glabel func_801DD56C_ovl12
/* 2080CC 801DD56C 00095080 */  sll        $t2, $t1, 2
/* 2080D0 801DD570 002A0821 */  addu       $at, $at, $t2
/* 2080D4 801DD574 0C029D9E */  jal        play_sound
/* 2080D8 801DD578 AC39BDA0 */   sw        $t9, %lo(D_800EBDA0)($at)
.L801DD57C_ovl10:
/* 2080DC 801DD57C 8E220000 */  lw         $v0, 0x0($s1)
/* 2080E0 801DD580 3C0D800E */  lui        $t5, %hi(gEntitiesNextPosYArray)
/* 2080E4 801DD584 25AD2790 */  addiu      $t5, $t5, %lo(gEntitiesNextPosYArray)
glabel func_801DD588_ovl14
/* 2080E8 801DD588 8C4B0000 */  lw         $t3, 0x0($v0)
/* 2080EC 801DD58C 3C01801E */  lui        $at, %hi(D_801E682C_ovl15)
glabel func_801DD590_ovl14
/* 2080F0 801DD590 C426682C */  lwc1       $f6, %lo(D_801E682C_ovl15)($at)
/* 2080F4 801DD594 000B6080 */  sll        $t4, $t3, 2
glabel func_801DD598_ovl9
/* 2080F8 801DD598 018D1821 */  addu       $v1, $t4, $t5
/* 2080FC 801DD59C C4640000 */  lwc1       $f4, 0x0($v1)
/* 208100 801DD5A0 3C014270 */  lui        $at, (0x42700000 >> 16)
/* 208104 801DD5A4 44815000 */  mtc1       $at, $f10
/* 208108 801DD5A8 46062201 */  sub.s      $f8, $f4, $f6
/* 20810C 801DD5AC 3C10800E */  lui        $s0, %hi(D_800E3210)
/* 208110 801DD5B0 26103210 */  addiu      $s0, $s0, %lo(D_800E3210)
/* 208114 801DD5B4 3C01BFC0 */  lui        $at, (0xBFC00000 >> 16)
/* 208118 801DD5B8 E4680000 */  swc1       $f8, 0x0($v1)
/* 20811C 801DD5BC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 208120 801DD5C0 44818000 */  mtc1       $at, $f16
/* 208124 801DD5C4 3C01800E */  lui        $at, %hi(D_800E3750)
/* 208128 801DD5C8 000E7880 */  sll        $t7, $t6, 2
.L801DD5CC_ovl12:
/* 20812C 801DD5CC 020FC021 */  addu       $t8, $s0, $t7
/* 208130 801DD5D0 E70A0000 */  swc1       $f10, 0x0($t8)
/* 208134 801DD5D4 8C480000 */  lw         $t0, 0x0($v0)
.L801DD5D8_ovl12:
/* 208138 801DD5D8 00084880 */  sll        $t1, $t0, 2
/* 20813C 801DD5DC 00290821 */  addu       $at, $at, $t1
/* 208140 801DD5E0 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
glabel func_801DD5E4_ovl12
/* 208144 801DD5E4 8C590000 */  lw         $t9, 0x0($v0)
/* 208148 801DD5E8 00195080 */  sll        $t2, $t9, 2
/* 20814C 801DD5EC 020A5821 */  addu       $t3, $s0, $t2
.L801DD5F0_ovl16:
/* 208150 801DD5F0 C5720000 */  lwc1       $f18, 0x0($t3)
/* 208154 801DD5F4 4612A03C */  c.lt.s     $f20, $f18
.L801DD5F8_ovl11:
/* 208158 801DD5F8 00000000 */  nop
.L801DD5FC_ovl13:
/* 20815C 801DD5FC 4500000C */  bc1f       .L801DD630_ovl15
/* 208160 801DD600 00000000 */   nop
.L801DD604_ovl15:
/* 208164 801DD604 0C002DAF */  jal        finish_current_thread
/* 208168 801DD608 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801DD60C_ovl17
/* 20816C 801DD60C 8E2C0000 */  lw         $t4, 0x0($s1)
/* 208170 801DD610 8D8D0000 */  lw         $t5, 0x0($t4)
glabel func_801DD614_ovl13
/* 208174 801DD614 000D7080 */  sll        $t6, $t5, 2
/* 208178 801DD618 020E7821 */  addu       $t7, $s0, $t6
/* 20817C 801DD61C C5E40000 */  lwc1       $f4, 0x0($t7)
.L801DD620_ovl14:
/* 208180 801DD620 4604A03C */  c.lt.s     $f20, $f4
/* 208184 801DD624 00000000 */  nop
/* 208188 801DD628 4501FFF6 */  bc1t       .L801DD604_ovl15
/* 20818C 801DD62C 00000000 */   nop
.L801DD630_ovl15:
/* 208190 801DD630 0C002DAF */  jal        finish_current_thread
/* 208194 801DD634 2404000A */   addiu     $a0, $zero, 0xA
.L801DD638_ovl10:
/* 208198 801DD638 8E380000 */  lw         $t8, 0x0($s1)
glabel func_801DD63C_ovl12
/* 20819C 801DD63C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
.L801DD640_ovl14:
/* 2081A0 801DD640 44813000 */  mtc1       $at, $f6
.L801DD644_ovl10:
/* 2081A4 801DD644 8F080000 */  lw         $t0, 0x0($t8)
/* 2081A8 801DD648 3C01800E */  lui        $at, %hi(D_800E3750)
/* 2081AC 801DD64C 24040028 */  addiu      $a0, $zero, 0x28
/* 2081B0 801DD650 00084880 */  sll        $t1, $t0, 2
/* 2081B4 801DD654 00290821 */  addu       $at, $at, $t1
.L801DD658_ovl11:
/* 2081B8 801DD658 0C002DAF */  jal        finish_current_thread
/* 2081BC 801DD65C E4263750 */   swc1      $f6, %lo(D_800E3750)($at)
/* 2081C0 801DD660 8E390000 */  lw         $t9, 0x0($s1)
/* 2081C4 801DD664 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
.L801DD668_ovl14:
/* 2081C8 801DD668 44814000 */  mtc1       $at, $f8
/* 2081CC 801DD66C 8F2A0000 */  lw         $t2, 0x0($t9)
/* 2081D0 801DD670 3C01800E */  lui        $at, %hi(D_800E3750)
glabel func_801DD674_ovl10
/* 2081D4 801DD674 2404000A */  addiu      $a0, $zero, 0xA
/* 2081D8 801DD678 000A5880 */  sll        $t3, $t2, 2
/* 2081DC 801DD67C 002B0821 */  addu       $at, $at, $t3
/* 2081E0 801DD680 0C002DAF */  jal        finish_current_thread
/* 2081E4 801DD684 E4283750 */   swc1      $f8, %lo(D_800E3750)($at)
/* 2081E8 801DD688 8E220000 */  lw         $v0, 0x0($s1)
/* 2081EC 801DD68C 3C01800E */  lui        $at, %hi(D_800E3750)
.L801DD690_ovl14:
/* 2081F0 801DD690 2404001E */  addiu      $a0, $zero, 0x1E
/* 2081F4 801DD694 8C4C0000 */  lw         $t4, 0x0($v0)
/* 2081F8 801DD698 000C6880 */  sll        $t5, $t4, 2
.L801DD69C_ovl12:
/* 2081FC 801DD69C 002D0821 */  addu       $at, $at, $t5
/* 208200 801DD6A0 E4343750 */  swc1       $f20, %lo(D_800E3750)($at)
/* 208204 801DD6A4 8C430000 */  lw         $v1, 0x0($v0)
/* 208208 801DD6A8 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20820C 801DD6AC 00031880 */  sll        $v1, $v1, 2
.L801DD6B0_ovl12:
/* 208210 801DD6B0 00230821 */  addu       $at, $at, $v1
.L801DD6B4_ovl16:
/* 208214 801DD6B4 C42A3750 */  lwc1       $f10, %lo(D_800E3750)($at)
.L801DD6B8_ovl14:
/* 208218 801DD6B8 02037021 */  addu       $t6, $s0, $v1
glabel func_801DD6BC_ovl12
/* 20821C 801DD6BC 3C01801E */  lui        $at, %hi(.L801E6830_ovl16)
/* 208220 801DD6C0 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 208224 801DD6C4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 208228 801DD6C8 C4306830 */  lwc1       $f16, %lo(.L801E6830_ovl16)($at)
/* 20822C 801DD6CC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 208230 801DD6D0 000FC080 */  sll        $t8, $t7, 2
/* 208234 801DD6D4 00380821 */  addu       $at, $at, $t8
/* 208238 801DD6D8 0C002DAF */  jal        finish_current_thread
/* 20823C 801DD6DC E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
.L801DD6E0_ovl14:
/* 208240 801DD6E0 8E280000 */  lw         $t0, 0x0($s1)
.L801DD6E4_ovl14:
/* 208244 801DD6E4 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 208248 801DD6E8 8D090000 */  lw         $t1, 0x0($t0)
.L801DD6EC_ovl10:
/* 20824C 801DD6EC 0009C880 */  sll        $t9, $t1, 2
/* 208250 801DD6F0 00390821 */  addu       $at, $at, $t9
/* 208254 801DD6F4 C4327B20 */  lwc1       $f18, %lo(D_800E7B20)($at)
/* 208258 801DD6F8 4600910D */  trunc.w.s  $f4, $f18
/* 20825C 801DD6FC 44042000 */  mfc1       $a0, $f4
/* 208260 801DD700 0C02F07F */  jal        func_800BC1FC
glabel func_801DD704_ovl17
/* 208264 801DD704 00000000 */   nop
/* 208268 801DD708 0C02BBFF */  jal        func_800AEFFC
/* 20826C 801DD70C 24040002 */   addiu     $a0, $zero, 0x2
/* 208270 801DD710 24020001 */  addiu      $v0, $zero, 0x1
/* 208274 801DD714 3C01800D */  lui        $at, %hi(D_800D7098 + 0x3C)
/* 208278 801DD718 AC2270D4 */  sw         $v0, %lo(D_800D7098 + 0x3C)($at)
.L801DD71C_ovl9:
/* 20827C 801DD71C 8E2B0000 */  lw         $t3, 0x0($s1)
.L801DD720_ovl11:
/* 208280 801DD720 8FBF0024 */  lw         $ra, 0x24($sp)
.L801DD724_ovl11:
/* 208284 801DD724 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 208288 801DD728 8D6C0000 */  lw         $t4, 0x0($t3)
/* 20828C 801DD72C 8FB10020 */  lw         $s1, 0x20($sp)
glabel func_801DD730_ovl11
/* 208290 801DD730 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 208294 801DD734 000C6880 */  sll        $t5, $t4, 2
/* 208298 801DD738 002D0821 */  addu       $at, $at, $t5
/* 20829C 801DD73C 8FB0001C */  lw         $s0, 0x1C($sp)
/* 2082A0 801DD740 AC22DC50 */  sw         $v0, %lo(gEntityVtableIndexArray)($at)
/* 2082A4 801DD744 03E00008 */  jr         $ra
.L801DD748_ovl9:
/* 2082A8 801DD748 27BD0028 */   addiu     $sp, $sp, 0x28
