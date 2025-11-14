glabel func_8011C8F8
/* 0A5368 8011C8F8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A536C 8011C8FC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A5370 8011C900 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A5374 8011C904 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A5378 8011C908 8C4F0000 */  lw    $t7, ($v0)
/* 0A537C 8011C90C 3C018013 */  lui   $at, %hi(D_80128E24) # $at, 0x8013
/* 0A5380 8011C910 C4208E24 */  lwc1  $f0, %lo(D_80128E24)($at)
/* 0A5384 8011C914 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A5388 8011C918 3C0E800B */  lui   $t6, %hi(D_800B531C) # $t6, 0x800b
/* 0A538C 8011C91C 000FC080 */  sll   $t8, $t7, 2
/* 0A5390 8011C920 00380821 */  addu  $at, $at, $t8
/* 0A5394 8011C924 25CE531C */  addiu $t6, %lo(D_800B531C) # addiu $t6, $t6, 0x531c
/* 0A5398 8011C928 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 0A539C 8011C92C 8C4B0000 */  lw    $t3, ($v0)
/* 0A53A0 8011C930 3C01800E */ lui $at, %hi(D_800DEDD0)
/* 0A53A4 8011C934 3C198012 */  lui   $t9, %hi(D_8011CFF4) # $t9, 0x8012
/* 0A53A8 8011C938 000B6080 */  sll   $t4, $t3, 2
/* 0A53AC 8011C93C 002C0821 */  addu  $at, $at, $t4
/* 0A53B0 8011C940 2739CFF4 */  addiu $t9, %lo(D_8011CFF4) # addiu $t9, $t9, -0x300c
/* 0A53B4 8011C944 AC39EDD0 */ sw $t9, %lo(D_800DEDD0)($at)
/* 0A53B8 8011C948 8C4D0000 */  lw    $t5, ($v0)
/* 0A53BC 8011C94C 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 0A53C0 8011C950 000D7880 */  sll   $t7, $t5, 2
/* 0A53C4 8011C954 002F0821 */  addu  $at, $at, $t7
/* 0A53C8 8011C958 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 0A53CC 8011C95C 8C4E0000 */  lw    $t6, ($v0)
/* 0A53D0 8011C960 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 0A53D4 8011C964 000EC080 */  sll   $t8, $t6, 2
/* 0A53D8 8011C968 00380821 */  addu  $at, $at, $t8
/* 0A53DC 8011C96C E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 0A53E0 8011C970 8C4B0000 */  lw    $t3, ($v0)
/* 0A53E4 8011C974 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 0A53E8 8011C978 000BC880 */  sll   $t9, $t3, 2
/* 0A53EC 8011C97C 00390821 */  addu  $at, $at, $t9
/* 0A53F0 8011C980 0C044A83 */  jal   func_80112A0C
/* 0A53F4 8011C984 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 0A53F8 8011C988 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0A53FC 8011C98C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0A5400 8011C990 0C04454D */  jal   func_80111534
/* 0A5404 8011C994 8D840000 */   lw    $a0, ($t4)
/* 0A5408 8011C998 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0A540C 8011C99C AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0A5410 8011C9A0 3C018013 */  lui   $at, %hi(D_8012EADC) # $at, 0x8013
/* 0A5414 8011C9A4 AC20EADC */  sw    $zero, %lo(D_8012EADC)($at)
/* 0A5418 8011C9A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A541C 8011C9AC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A5420 8011C9B0 3C018013 */  lui   $at, %hi(D_8012EAE0) # $at, 0x8013
/* 0A5424 8011C9B4 AC20EAE0 */  sw    $zero, %lo(D_8012EAE0)($at)
/* 0A5428 8011C9B8 8C4D0000 */  lw    $t5, ($v0)
/* 0A542C 8011C9BC 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 0A5430 8011C9C0 C4246E50 */  lwc1  $f4, %lo(gKirbyHp)($at)
/* 0A5434 8011C9C4 3C01800E */ lui $at, %hi(D_800E7B20)
/* 0A5438 8011C9C8 000D7880 */  sll   $t7, $t5, 2
/* 0A543C 8011C9CC 002F0821 */  addu  $at, $at, $t7
/* 0A5440 8011C9D0 E4247B20 */ swc1 $f4, %lo(D_800E7B20)($at)
/* 0A5444 8011C9D4 8C580000 */  lw    $t8, ($v0)
/* 0A5448 8011C9D8 3C01800F */ lui $at, %hi(D_800E8920)
/* 0A544C 8011C9DC 240E0001 */  li    $t6, 1
/* 0A5450 8011C9E0 00185880 */  sll   $t3, $t8, 2
/* 0A5454 8011C9E4 002B0821 */  addu  $at, $at, $t3
/* 0A5458 8011C9E8 AC2E8920 */ sw $t6, %lo(D_800E8920)($at)
/* 0A545C 8011C9EC 8C590000 */  lw    $t9, ($v0)
/* 0A5460 8011C9F0 3C01800F */ lui $at, %hi(D_800E8AE0)
/* 0A5464 8011C9F4 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0A5468 8011C9F8 00196080 */  sll   $t4, $t9, 2
/* 0A546C 8011C9FC 002C0821 */  addu  $at, $at, $t4
/* 0A5470 8011CA00 AC208AE0 */ sw $zero, %lo(D_800E8AE0)($at)
/* 0A5474 8011CA04 8C4D0000 */  lw    $t5, ($v0)
/* 0A5478 8011CA08 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 0A547C 8011CA0C 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0A5480 8011CA10 000D7880 */  sll   $t7, $t5, 2
/* 0A5484 8011CA14 002F0821 */  addu  $at, $at, $t7
/* 0A5488 8011CA18 AC207CE0 */ sw $zero, %lo(D_800E7CE0)($at)
/* 0A548C 8011CA1C 8C580000 */  lw    $t8, ($v0)
/* 0A5490 8011CA20 3C01800E */ lui $at, %hi(D_800E7EA0)
/* 0A5494 8011CA24 240AFFFF */  li    $t2, -1
/* 0A5498 8011CA28 00187080 */  sll   $t6, $t8, 2
/* 0A549C 8011CA2C 002E0821 */  addu  $at, $at, $t6
/* 0A54A0 8011CA30 AC207EA0 */ sw $zero, %lo(D_800E7EA0)($at)
/* 0A54A4 8011CA34 8C4B0000 */  lw    $t3, ($v0)
/* 0A54A8 8011CA38 3C01800F */ lui $at, %hi(D_800E8060)
/* 0A54AC 8011CA3C 3C18800C */  lui   $t8, %hi(gGameState) # $t8, 0x800c
/* 0A54B0 8011CA40 000BC880 */  sll   $t9, $t3, 2
/* 0A54B4 8011CA44 00390821 */  addu  $at, $at, $t9
/* 0A54B8 8011CA48 AC208060 */ sw $zero, %lo(D_800E8060)($at)
/* 0A54BC 8011CA4C 8C4C0000 */  lw    $t4, ($v0)
/* 0A54C0 8011CA50 3C01800F */ lui $at, %hi(D_800E8760)
/* 0A54C4 8011CA54 3C0B800D */  lui   $t3, %hi(D_800D6E54) # $t3, 0x800d
/* 0A54C8 8011CA58 000C6880 */  sll   $t5, $t4, 2
/* 0A54CC 8011CA5C 002D0821 */  addu  $at, $at, $t5
/* 0A54D0 8011CA60 AC208760 */ sw $zero, %lo(D_800E8760)($at)
/* 0A54D4 8011CA64 AC6A0000 */  sw    $t2, ($v1)
/* 0A54D8 8011CA68 A0600005 */  sb    $zero, 5($v1)
/* 0A54DC 8011CA6C A0600006 */  sb    $zero, 6($v1)
/* 0A54E0 8011CA70 8F18E4F0 */  lw    $t8, %lo(gGameState)($t8)
/* 0A54E4 8011CA74 24010021 */  li    $at, 33
/* 0A54E8 8011CA78 300C00FF */  andi  $t4, $zero, 0xff
/* 0A54EC 8011CA7C 17010004 */  bne   $t8, $at, .L8011CA90_ovl2
/* 0A54F0 8011CA80 300F00FF */   andi  $t7, $zero, 0xff
/* 0A54F4 8011CA84 AC6000A0 */  sw    $zero, 0xa0($v1)
/* 0A54F8 8011CA88 10000004 */  b     .L8011CA9C_ovl2
/* 0A54FC 8011CA8C AC600090 */   sw    $zero, 0x90($v1)
.L8011CA90_ovl2:
/* 0A5500 8011CA90 8D6B6E54 */  lw    $t3, %lo(D_800D6E54)($t3)
/* 0A5504 8011CA94 AC6000A0 */  sw    $zero, 0xa0($v1)
/* 0A5508 8011CA98 AC6B0090 */  sw    $t3, 0x90($v1)
.L8011CA9C_ovl2:
/* 0A550C 8011CA9C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A5510 8011CAA0 44813000 */  mtc1  $at, $f6
/* 0A5514 8011CAA4 31F800FF */  andi  $t8, $t7, 0xff
/* 0A5518 8011CAA8 3C0B8000 */  lui   $t3, 0x8000
/* 0A551C 8011CAAC A0600007 */  sb    $zero, 7($v1)
/* 0A5520 8011CAB0 AC600024 */  sw    $zero, 0x24($v1)
/* 0A5524 8011CAB4 A0600009 */  sb    $zero, 9($v1)
/* 0A5528 8011CAB8 AC6C0034 */  sw    $t4, 0x34($v1)
/* 0A552C 8011CABC AC780030 */  sw    $t8, 0x30($v1)
/* 0A5530 8011CAC0 A060000A */  sb    $zero, 0xa($v1)
/* 0A5534 8011CAC4 AC6F0020 */  sw    $t7, 0x20($v1)
/* 0A5538 8011CAC8 A06F0008 */  sb    $t7, 8($v1)
/* 0A553C 8011CACC A0600014 */  sb    $zero, 0x14($v1)
/* 0A5540 8011CAD0 A0600150 */  sb    $zero, 0x150($v1)
/* 0A5544 8011CAD4 A0600153 */  sb    $zero, 0x153($v1)
/* 0A5548 8011CAD8 A0600015 */  sb    $zero, 0x15($v1)
/* 0A554C 8011CADC A4600088 */  sh    $zero, 0x88($v1)
/* 0A5550 8011CAE0 A06A000D */  sb    $t2, 0xd($v1)
/* 0A5554 8011CAE4 A060000E */  sb    $zero, 0xe($v1)
/* 0A5558 8011CAE8 AC6000A4 */  sw    $zero, 0xa4($v1)
/* 0A555C 8011CAEC AC600010 */  sw    $zero, 0x10($v1)
/* 0A5560 8011CAF0 A46A00D6 */  sh    $t2, 0xd6($v1)
/* 0A5564 8011CAF4 A46000D4 */  sh    $zero, 0xd4($v1)
/* 0A5568 8011CAF8 AC600048 */  sw    $zero, 0x48($v1)
/* 0A556C 8011CAFC AC600050 */  sw    $zero, 0x50($v1)
/* 0A5570 8011CB00 AC60004C */  sw    $zero, 0x4c($v1)
/* 0A5574 8011CB04 AC60006C */  sw    $zero, 0x6c($v1)
/* 0A5578 8011CB08 AC6B0054 */  sw    $t3, 0x54($v1)
/* 0A557C 8011CB0C AC600060 */  sw    $zero, 0x60($v1)
/* 0A5580 8011CB10 AC600058 */  sw    $zero, 0x58($v1)
/* 0A5584 8011CB14 A4600064 */  sh    $zero, 0x64($v1)
/* 0A5588 8011CB18 A460005C */  sh    $zero, 0x5c($v1)
/* 0A558C 8011CB1C A4600068 */  sh    $zero, 0x68($v1)
/* 0A5590 8011CB20 A460006A */  sh    $zero, 0x6a($v1)
/* 0A5594 8011CB24 A06000DC */  sb    $zero, 0xdc($v1)
/* 0A5598 8011CB28 A06000DD */  sb    $zero, 0xdd($v1)
/* 0A559C 8011CB2C A46000E0 */  sh    $zero, 0xe0($v1)
/* 0A55A0 8011CB30 A46000DE */  sh    $zero, 0xde($v1)
/* 0A55A4 8011CB34 AC600070 */  sw    $zero, 0x70($v1)
/* 0A55A8 8011CB38 AC600074 */  sw    $zero, 0x74($v1)
/* 0A55AC 8011CB3C A060000C */  sb    $zero, 0xc($v1)
/* 0A55B0 8011CB40 A06F0018 */  sb    $t7, 0x18($v1)
/* 0A55B4 8011CB44 A06F0017 */  sb    $t7, 0x17($v1)
/* 0A55B8 8011CB48 A060000B */  sb    $zero, 0xb($v1)
/* 0A55BC 8011CB4C AC60015C */  sw    $zero, 0x15c($v1)
/* 0A55C0 8011CB50 AC600154 */  sw    $zero, 0x154($v1)
/* 0A55C4 8011CB54 A06000B0 */  sb    $zero, 0xb0($v1)
/* 0A55C8 8011CB58 A06000B8 */  sb    $zero, 0xb8($v1)
/* 0A55CC 8011CB5C A46000BA */  sh    $zero, 0xba($v1)
/* 0A55D0 8011CB60 0C03E158 */  jal   func_800F8560
/* 0A55D4 8011CB64 E4660158 */   swc1  $f6, 0x158($v1)
/* 0A55D8 8011CB68 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0A55DC 8011CB6C 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0A55E0 8011CB70 10400006 */  beqz  $v0, .L8011CB8C_ovl2
/* 0A55E4 8011CB74 240AFFFF */   li    $t2, -1
/* 0A55E8 8011CB78 2401000A */  li    $at, 10
/* 0A55EC 8011CB7C 10410003 */  beq   $v0, $at, .L8011CB8C_ovl2
/* 0A55F0 8011CB80 00000000 */   nop   
/* 0A55F4 8011CB84 A0600004 */  sb    $zero, 4($v1)
/* 0A55F8 8011CB88 A46000B4 */  sh    $zero, 0xb4($v1)
.L8011CB8C_ovl2:
/* 0A55FC 8011CB8C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A5600 8011CB90 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A5604 8011CB94 3C01800E */ lui $at, %hi(D_800E3050)
/* 0A5608 8011CB98 44800000 */  mtc1  $zero, $f0
/* 0A560C 8011CB9C 8C580000 */  lw    $t8, ($v0)
/* 0A5610 8011CBA0 3C08801A */  lui   $t0, %hi(D_80198830) # $t0, 0x801a
/* 0A5614 8011CBA4 25088830 */  addiu $t0, %lo(D_80198830) # addiu $t0, $t0, -0x77d0
/* 0A5618 8011CBA8 00187080 */  sll   $t6, $t8, 2
/* 0A561C 8011CBAC 002E0821 */  addu  $at, $at, $t6
/* 0A5620 8011CBB0 C4283050 */ lwc1 $f8, %lo(D_800E3050)($at)
/* 0A5624 8011CBB4 3C01800E */ lui $at, %hi(D_800E3210)
/* 0A5628 8011CBB8 240F0014 */  li    $t7, 20
/* 0A562C 8011CBBC E4680178 */  swc1  $f8, 0x178($v1)
/* 0A5630 8011CBC0 8C4B0000 */  lw    $t3, ($v0)
/* 0A5634 8011CBC4 24180003 */  li    $t8, 3
/* 0A5638 8011CBC8 3C09800F */  lui   $t1, %hi(D_800EC820) # $t1, 0x800f
/* 0A563C 8011CBCC 000BC880 */  sll   $t9, $t3, 2
/* 0A5640 8011CBD0 00390821 */  addu  $at, $at, $t9
/* 0A5644 8011CBD4 C42A3210 */ lwc1 $f10, %lo(D_800E3210)($at)
/* 0A5648 8011CBD8 3C01800E */ lui $at, %hi(D_800E33D0)
/* 0A564C 8011CBDC 2529C820 */  addiu $t1, %lo(D_800EC820) # addiu $t1, $t1, -0x37e0
/* 0A5650 8011CBE0 E46A017C */  swc1  $f10, 0x17c($v1)
/* 0A5654 8011CBE4 8C4C0000 */  lw    $t4, ($v0)
/* 0A5658 8011CBE8 3C04800E */ lui $a0, %hi(D_800DE350)
/* 0A565C 8011CBEC 3C05800C */  lui   $a1, %hi(D_800BE50C) # $a1, 0x800c
/* 0A5660 8011CBF0 000C6880 */  sll   $t5, $t4, 2
/* 0A5664 8011CBF4 002D0821 */  addu  $at, $at, $t5
/* 0A5668 8011CBF8 C43033D0 */ lwc1 $f16, %lo(D_800E33D0)($at)
/* 0A566C 8011CBFC E4600168 */  swc1  $f0, 0x168($v1)
/* 0A5670 8011CC00 C4720168 */  lwc1  $f18, 0x168($v1)
/* 0A5674 8011CC04 A4600160 */  sh    $zero, 0x160($v1)
/* 0A5678 8011CC08 A46F0162 */  sh    $t7, 0x162($v1)
/* 0A567C 8011CC0C AC60016C */  sw    $zero, 0x16c($v1)
/* 0A5680 8011CC10 A5180008 */  sh    $t8, 8($t0)
/* 0A5684 8011CC14 AD0A0010 */  sw    $t2, 0x10($t0)
/* 0A5688 8011CC18 E4700180 */  swc1  $f16, 0x180($v1)
/* 0A568C 8011CC1C E4720164 */  swc1  $f18, 0x164($v1)
/* 0A5690 8011CC20 8C4E0000 */  lw    $t6, ($v0)
/* 0A5694 8011CC24 3C01800F */ lui $at, %hi(D_800EC660)
/* 0A5698 8011CC28 3C06800C */  lui   $a2, %hi(D_800BE510) # $a2, 0x800c
/* 0A569C 8011CC2C 000E5880 */  sll   $t3, $t6, 2
/* 0A56A0 8011CC30 012BC821 */  addu  $t9, $t1, $t3
/* 0A56A4 8011CC34 E7200000 */  swc1  $f0, ($t9)
/* 0A56A8 8011CC38 8C470000 */  lw    $a3, ($v0)
/* 0A56AC 8011CC3C 8CC6E510 */  lw    $a2, %lo(D_800BE510)($a2)
/* 0A56B0 8011CC40 8CA5E50C */  lw    $a1, %lo(D_800BE50C)($a1)
/* 0A56B4 8011CC44 00073880 */  sll   $a3, $a3, 2
/* 0A56B8 8011CC48 01276021 */  addu  $t4, $t1, $a3
/* 0A56BC 8011CC4C C5840000 */  lwc1  $f4, ($t4)
/* 0A56C0 8011CC50 00270821 */  addu  $at, $at, $a3
/* 0A56C4 8011CC54 E424C660 */ swc1 $f4, %lo(D_800EC660)($at)
/* 0A56C8 8011CC58 8C4D0000 */  lw    $t5, ($v0)
/* 0A56CC 8011CC5C 000D7880 */  sll   $t7, $t5, 2
/* 0A56D0 8011CC60 008F2021 */  addu  $a0, $a0, $t7
/* 0A56D4 8011CC64 0C03E232 */  jal   func_800F88C8
/* 0A56D8 8011CC68 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 0A56DC 8011CC6C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A56E0 8011CC70 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A56E4 8011CC74 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A56E8 8011CC78 44813000 */  mtc1  $at, $f6
/* 0A56EC 8011CC7C 8C580000 */  lw    $t8, ($v0)
/* 0A56F0 8011CC80 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0A56F4 8011CC84 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A56F8 8011CC88 00187080 */  sll   $t6, $t8, 2
/* 0A56FC 8011CC8C 002E0821 */  addu  $at, $at, $t6
/* 0A5700 8011CC90 E4266A10 */ swc1 $f6, %lo(D_800E6A10)($at)
/* 0A5704 8011CC94 8C4B0000 */  lw    $t3, ($v0)
/* 0A5708 8011CC98 3C018013 */  lui   $at, %hi(D_80128E28) # $at, 0x8013
/* 0A570C 8011CC9C C4288E28 */  lwc1  $f8, %lo(D_80128E28)($at)
/* 0A5710 8011CCA0 3C01800E */ lui $at, %hi(D_800E17D0)
/* 0A5714 8011CCA4 000BC880 */  sll   $t9, $t3, 2
/* 0A5718 8011CCA8 00390821 */  addu  $at, $at, $t9
/* 0A571C 8011CCAC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A5720 8011CCB0 03E00008 */  jr    $ra
/* 0A5724 8011CCB4 E42817D0 */ swc1 $f8, %lo(D_800E17D0)($at)
.type func_8011C8F8, @function
.size func_8011C8F8, . - func_8011C8F8
