glabel func_8021E5DC_ovl19
/* 23ECEC 8021E5DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 23ECF0 8021E5E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23ECF4 8021E5E4 0C02D219 */  jal        func_800B4864
/* 23ECF8 8021E5E8 AFA40020 */   sw        $a0, 0x20($sp)
/* 23ECFC 8021E5EC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L8021E5F0_ovl18:
/* 23ED00 8021E5F0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 23ED04 8021E5F4 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 23ED08 8021E5F8 8DC30000 */  lw         $v1, 0x0($t6)
/* 23ED0C 8021E5FC 00031880 */  sll        $v1, $v1, 2
/* 23ED10 8021E600 00230821 */  addu       $at, $at, $v1
/* 23ED14 8021E604 C4246BD0 */  lwc1       $f4, %lo(D_800E6BD0)($at)
/* 23ED18 8021E608 3C01800E */  lui        $at, %hi(D_800E6D90)
.L8021E60C_ovl18:
/* 23ED1C 8021E60C 00230821 */  addu       $at, $at, $v1
/* 23ED20 8021E610 C4266D90 */  lwc1       $f6, %lo(D_800E6D90)($at)
/* 23ED24 8021E614 46062032 */  c.eq.s     $f4, $f6
/* 23ED28 8021E618 00000000 */  nop
/* 23ED2C 8021E61C 45010022 */  bc1t       .L8021E6A8_ovl19
/* 23ED30 8021E620 00000000 */   nop
/* 23ED34 8021E624 0C02CD7C */  jal        func_800B35F0
/* 23ED38 8021E628 00000000 */   nop
/* 23ED3C 8021E62C 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 23ED40 8021E630 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 23ED44 8021E634 3C01800E */  lui        $at, %hi(D_800E5510)
/* 23ED48 8021E638 3C18800E */  lui        $t8, %hi(D_800E64D0)
/* 23ED4C 8021E63C 8DE30000 */  lw         $v1, 0x0($t7)
/* 23ED50 8021E640 271864D0 */  addiu      $t8, $t8, %lo(D_800E64D0)
/* 23ED54 8021E644 8FA40020 */  lw         $a0, 0x20($sp)
/* 23ED58 8021E648 00031880 */  sll        $v1, $v1, 2
/* 23ED5C 8021E64C 00230821 */  addu       $at, $at, $v1
/* 23ED60 8021E650 C4285510 */  lwc1       $f8, %lo(D_800E5510)($at)
/* 23ED64 8021E654 3C01800E */  lui        $at, %hi(D_800E56D0)
/* 23ED68 8021E658 00230821 */  addu       $at, $at, $v1
/* 23ED6C 8021E65C C42A56D0 */  lwc1       $f10, %lo(D_800E56D0)($at)
/* 23ED70 8021E660 00782821 */  addu       $a1, $v1, $t8
/* 23ED74 8021E664 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 23ED78 8021E668 460A4400 */  add.s      $f16, $f8, $f10
/* 23ED7C 8021E66C E7A0001C */  swc1       $f0, 0x1C($sp)
/* 23ED80 8021E670 46100480 */  add.s      $f18, $f0, $f16
/* 23ED84 8021E674 0C03E39B */  jal        func_800F8E6C
/* 23ED88 8021E678 E4B20000 */   swc1      $f18, 0x0($a1)
/* 23ED8C 8021E67C 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 23ED90 8021E680 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 23ED94 8021E684 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* 23ED98 8021E688 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 23ED9C 8021E68C 8F280000 */  lw         $t0, 0x0($t9)
/* 23EDA0 8021E690 00084880 */  sll        $t1, $t0, 2
/* 23EDA4 8021E694 00290821 */  addu       $at, $at, $t1
/* 23EDA8 8021E698 0C02D190 */  jal        func_800B4640
.L8021E69C_ovl18:
/* 23EDAC 8021E69C E42464D0 */   swc1      $f4, %lo(D_800E64D0)($at)
/* 23EDB0 8021E6A0 0C02CDA7 */  jal        func_800B369C
/* 23EDB4 8021E6A4 00000000 */   nop
.L8021E6A8_ovl19:
/* 23EDB8 8021E6A8 0C02CC56 */  jal        func_800B3158
/* 23EDBC 8021E6AC 00000000 */   nop
/* 23EDC0 8021E6B0 14400046 */  bnez       $v0, .L8021E7CC_ovl19
/* 23EDC4 8021E6B4 3C048005 */   lui       $a0, %hi(D_8004A7C4)
/* 23EDC8 8021E6B8 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 23EDCC 8021E6BC 3C02800F */  lui        $v0, %hi(D_800EBBE0)
/* 23EDD0 8021E6C0 2401FFFF */  addiu      $at, $zero, -0x1
.L8021E6C4_ovl18:
/* 23EDD4 8021E6C4 8C850000 */  lw         $a1, 0x0($a0)
.L8021E6C8_ovl18:
/* 23EDD8 8021E6C8 00051880 */  sll        $v1, $a1, 2
/* 23EDDC 8021E6CC 00431021 */  addu       $v0, $v0, $v1
/* 23EDE0 8021E6D0 8C42BBE0 */  lw         $v0, %lo(D_800EBBE0)($v0)
/* 23EDE4 8021E6D4 10410007 */  beq        $v0, $at, .L8021E6F4_ovl19
/* 23EDE8 8021E6D8 00000000 */   nop
/* 23EDEC 8021E6DC 0C02C640 */  jal        func_800B1900
glabel func_8021E6E0_ovl18
/* 23EDF0 8021E6E0 3044FFFF */   andi      $a0, $v0, 0xFFFF
/* 23EDF4 8021E6E4 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 23EDF8 8021E6E8 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 23EDFC 8021E6EC 8C850000 */  lw         $a1, 0x0($a0)
/* 23EE00 8021E6F0 00051880 */  sll        $v1, $a1, 2
.L8021E6F4_ovl19:
/* 23EE04 8021E6F4 3C02800F */  lui        $v0, %hi(D_800EBDA0)
/* 23EE08 8021E6F8 00431021 */  addu       $v0, $v0, $v1
/* 23EE0C 8021E6FC 8C42BDA0 */  lw         $v0, %lo(D_800EBDA0)($v0)
/* 23EE10 8021E700 2401FFFF */  addiu      $at, $zero, -0x1
/* 23EE14 8021E704 10410007 */  beq        $v0, $at, .L8021E724_ovl19
/* 23EE18 8021E708 00000000 */   nop
/* 23EE1C 8021E70C 0C02C640 */  jal        func_800B1900
/* 23EE20 8021E710 3044FFFF */   andi      $a0, $v0, 0xFFFF
/* 23EE24 8021E714 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 23EE28 8021E718 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 23EE2C 8021E71C 8C850000 */  lw         $a1, 0x0($a0)
/* 23EE30 8021E720 00051880 */  sll        $v1, $a1, 2
.L8021E724_ovl19:
/* 23EE34 8021E724 3C02800F */  lui        $v0, %hi(D_800EBF60)
/* 23EE38 8021E728 00431021 */  addu       $v0, $v0, $v1
/* 23EE3C 8021E72C 8C42BF60 */  lw         $v0, %lo(D_800EBF60)($v0)
/* 23EE40 8021E730 2401FFFF */  addiu      $at, $zero, -0x1
/* 23EE44 8021E734 10410007 */  beq        $v0, $at, .L8021E754_ovl19
/* 23EE48 8021E738 00000000 */   nop
/* 23EE4C 8021E73C 0C02C640 */  jal        func_800B1900
/* 23EE50 8021E740 3044FFFF */   andi      $a0, $v0, 0xFFFF
/* 23EE54 8021E744 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 23EE58 8021E748 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 23EE5C 8021E74C 8C850000 */  lw         $a1, 0x0($a0)
/* 23EE60 8021E750 00051880 */  sll        $v1, $a1, 2
.L8021E754_ovl19:
/* 23EE64 8021E754 3C02800F */  lui        $v0, %hi(D_800EC120)
/* 23EE68 8021E758 00431021 */  addu       $v0, $v0, $v1
/* 23EE6C 8021E75C 8C42C120 */  lw         $v0, %lo(D_800EC120)($v0)
/* 23EE70 8021E760 2401FFFF */  addiu      $at, $zero, -0x1
.L8021E764_ovl18:
/* 23EE74 8021E764 3C0B800E */  lui        $t3, %hi(D_800DE350)
/* 23EE78 8021E768 1041000A */  beq        $v0, $at, .L8021E794_ovl19
/* 23EE7C 8021E76C 00025080 */   sll       $t2, $v0, 2
/* 23EE80 8021E770 016A5821 */  addu       $t3, $t3, $t2
/* 23EE84 8021E774 8D6BE350 */  lw         $t3, %lo(D_800DE350)($t3)
/* 23EE88 8021E778 11600006 */  beqz       $t3, .L8021E794_ovl19
/* 23EE8C 8021E77C 00000000 */   nop
/* 23EE90 8021E780 0C067656 */  jal        func_8019D958_ovl7
.L8021E784_ovl18:
/* 23EE94 8021E784 3044FFFF */   andi      $a0, $v0, 0xFFFF
/* 23EE98 8021E788 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 23EE9C 8021E78C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 23EEA0 8021E790 8C850000 */  lw         $a1, 0x0($a0)
.L8021E794_ovl19:
/* 23EEA4 8021E794 3C03800E */  lui        $v1, %hi(D_800E76C0)
/* 23EEA8 8021E798 00651821 */  addu       $v1, $v1, $a1
.L8021E79C_ovl18:
/* 23EEAC 8021E79C 906376C0 */  lbu        $v1, %lo(D_800E76C0)($v1)
/* 23EEB0 8021E7A0 3C0C800D */  lui        $t4, %hi(D_800D6C68 + 0x28)
/* 23EEB4 8021E7A4 258C6C90 */  addiu      $t4, $t4, %lo(D_800D6C68 + 0x28)
/* 23EEB8 8021E7A8 28610040 */  slti       $at, $v1, 0x40
/* 23EEBC 8021E7AC 10200005 */  beqz       $at, .L8021E7C4_ovl19
/* 23EEC0 8021E7B0 006C1021 */   addu      $v0, $v1, $t4
/* 23EEC4 8021E7B4 904D0000 */  lbu        $t5, 0x0($v0)
.L8021E7B8_ovl18:
/* 23EEC8 8021E7B8 31AE0080 */  andi       $t6, $t5, 0x80
/* 23EECC 8021E7BC A04E0000 */  sb         $t6, 0x0($v0)
/* 23EED0 8021E7C0 8C850000 */  lw         $a1, 0x0($a0)
.L8021E7C4_ovl19:
/* 23EED4 8021E7C4 0C02C640 */  jal        func_800B1900
/* 23EED8 8021E7C8 30A4FFFF */   andi      $a0, $a1, 0xFFFF
.L8021E7CC_ovl19:
/* 23EEDC 8021E7CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23EEE0 8021E7D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 23EEE4 8021E7D4 03E00008 */  jr         $ra
/* 23EEE8 8021E7D8 00000000 */   nop
