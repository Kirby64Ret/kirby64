glabel func_8022D5F8_ovl19
/* 24DD08 8022D5F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24DD0C 8022D5FC AFB00018 */  sw         $s0, 0x18($sp)
/* 24DD10 8022D600 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 24DD14 8022D604 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 24DD18 8022D608 8E020000 */  lw         $v0, 0x0($s0)
/* 24DD1C 8022D60C AFBF001C */  sw         $ra, 0x1C($sp)
/* 24DD20 8022D610 AFA40020 */  sw         $a0, 0x20($sp)
/* 24DD24 8022D614 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24DD28 8022D618 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 24DD2C 8022D61C 44812000 */  mtc1       $at, $f4
/* 24DD30 8022D620 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 24DD34 8022D624 000E7880 */  sll        $t7, $t6, 2
/* 24DD38 8022D628 002F0821 */  addu       $at, $at, $t7
/* 24DD3C 8022D62C E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
/* 24DD40 8022D630 8C590000 */  lw         $t9, 0x0($v0)
/* 24DD44 8022D634 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 24DD48 8022D638 3C18800B */  lui        $t8, %hi(func_800B4954)
/* 24DD4C 8022D63C 00194880 */  sll        $t1, $t9, 2
/* 24DD50 8022D640 00290821 */  addu       $at, $at, $t1
/* 24DD54 8022D644 27184954 */  addiu      $t8, $t8, %lo(func_800B4954)
/* 24DD58 8022D648 AC38EF90 */  sw         $t8, %lo(D_800DEF90)($at)
/* 24DD5C 8022D64C 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 24DD60 8022D650 0C02BB30 */  jal        func_800AECC0
/* 24DD64 8022D654 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 24DD68 8022D658 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 24DD6C 8022D65C 0C02BB48 */  jal        func_800AED20
/* 24DD70 8022D660 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 24DD74 8022D664 8E020000 */  lw         $v0, 0x0($s0)
/* 24DD78 8022D668 3C0A8023 */  lui        $t2, %hi(func_8022D96C_ovl19)
/* 24DD7C 8022D66C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 24DD80 8022D670 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24DD84 8022D674 254AD96C */  addiu      $t2, $t2, %lo(func_8022D96C_ovl19)
/* 24DD88 8022D678 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* 24DD8C 8022D67C 000B6080 */  sll        $t4, $t3, 2
/* 24DD90 8022D680 002C0821 */  addu       $at, $at, $t4
/* 24DD94 8022D684 AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 24DD98 8022D688 8C4D0000 */  lw         $t5, 0x0($v0)
/* 24DD9C 8022D68C 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
/* 24DDA0 8022D690 C5060000 */  lwc1       $f6, 0x0($t0)
/* 24DDA4 8022D694 000D7080 */  sll        $t6, $t5, 2
/* 24DDA8 8022D698 010E7821 */  addu       $t7, $t0, $t6
/* 24DDAC 8022D69C E5E60000 */  swc1       $f6, 0x0($t7)
/* 24DDB0 8022D6A0 8C590000 */  lw         $t9, 0x0($v0)
/* 24DDB4 8022D6A4 3C03800E */  lui        $v1, %hi(gEntitiesAngleYArray)
/* 24DDB8 8022D6A8 246341D0 */  addiu      $v1, $v1, %lo(gEntitiesAngleYArray)
/* 24DDBC 8022D6AC C4600000 */  lwc1       $f0, 0x0($v1)
/* 24DDC0 8022D6B0 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 24DDC4 8022D6B4 0019C080 */  sll        $t8, $t9, 2
/* 24DDC8 8022D6B8 00380821 */  addu       $at, $at, $t8
/* 24DDCC 8022D6BC E42017D0 */  swc1       $f0, %lo(D_800E17D0)($at)
/* 24DDD0 8022D6C0 8C490000 */  lw         $t1, 0x0($v0)
/* 24DDD4 8022D6C4 00095880 */  sll        $t3, $t1, 2
/* 24DDD8 8022D6C8 006B5021 */  addu       $t2, $v1, $t3
/* 24DDDC 8022D6CC 0C03FC51 */  jal        func_800FF144
/* 24DDE0 8022D6D0 E5400000 */   swc1      $f0, 0x0($t2)
/* 24DDE4 8022D6D4 3C078023 */  lui        $a3, %hi(D_8022FAB0_ovl19)
/* 24DDE8 8022D6D8 24E7FAB0 */  addiu      $a3, $a3, %lo(D_8022FAB0_ovl19)
/* 24DDEC 8022D6DC 1040000F */  beqz       $v0, .L8022D71C_ovl19
/* 24DDF0 8022D6E0 ACE20000 */   sw        $v0, 0x0($a3)
/* 24DDF4 8022D6E4 3C014190 */  lui        $at, (0x41900000 >> 16)
/* 24DDF8 8022D6E8 44814000 */  mtc1       $at, $f8
/* 24DDFC 8022D6EC 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 24DE00 8022D6F0 44815000 */  mtc1       $at, $f10
/* 24DE04 8022D6F4 E4480010 */  swc1       $f8, 0x10($v0)
/* 24DE08 8022D6F8 8CED0000 */  lw         $t5, 0x0($a3)
/* 24DE0C 8022D6FC 3C01C370 */  lui        $at, (0xC3700000 >> 16)
/* 24DE10 8022D700 44818000 */  mtc1       $at, $f16
/* 24DE14 8022D704 E5AA0014 */  swc1       $f10, 0x14($t5)
/* 24DE18 8022D708 8CEE0000 */  lw         $t6, 0x0($a3)
/* 24DE1C 8022D70C 240F0001 */  addiu      $t7, $zero, 0x1
/* 24DE20 8022D710 E5D00018 */  swc1       $f16, 0x18($t6)
/* 24DE24 8022D714 8CF90000 */  lw         $t9, 0x0($a3)
/* 24DE28 8022D718 A32F0021 */  sb         $t7, 0x21($t9)
.L8022D71C_ovl19:
/* 24DE2C 8022D71C 8E020000 */  lw         $v0, 0x0($s0)
/* 24DE30 8022D720 3C018023 */  lui        $at, %hi(D_8022FA40_ovl19)
/* 24DE34 8022D724 C420FA40 */  lwc1       $f0, %lo(D_8022FA40_ovl19)($at)
/* 24DE38 8022D728 8C580000 */  lw         $t8, 0x0($v0)
/* 24DE3C 8022D72C 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 24DE40 8022D730 3C040002 */  lui        $a0, (0x20007 >> 16)
/* 24DE44 8022D734 00184880 */  sll        $t1, $t8, 2
/* 24DE48 8022D738 00290821 */  addu       $at, $at, $t1
/* 24DE4C 8022D73C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 24DE50 8022D740 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24DE54 8022D744 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 24DE58 8022D748 34840007 */  ori        $a0, $a0, (0x20007 & 0xFFFF)
/* 24DE5C 8022D74C 000B5080 */  sll        $t2, $t3, 2
/* 24DE60 8022D750 002A0821 */  addu       $at, $at, $t2
/* 24DE64 8022D754 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 24DE68 8022D758 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24DE6C 8022D75C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 24DE70 8022D760 24050020 */  addiu      $a1, $zero, 0x20
/* 24DE74 8022D764 000C6880 */  sll        $t5, $t4, 2
/* 24DE78 8022D768 002D0821 */  addu       $at, $at, $t5
/* 24DE7C 8022D76C 24060010 */  addiu      $a2, $zero, 0x10
/* 24DE80 8022D770 0C02A619 */  jal        func_800A9864
/* 24DE84 8022D774 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 24DE88 8022D778 3C03800C */  lui        $v1, %hi(D_800BE500)
/* 24DE8C 8022D77C 8C63E500 */  lw         $v1, %lo(D_800BE500)($v1)
/* 24DE90 8022D780 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* 24DE94 8022D784 24010001 */  addiu      $at, $zero, 0x1
/* 24DE98 8022D788 10610008 */  beq        $v1, $at, .L8022D7AC_ovl19
/* 24DE9C 8022D78C 25082790 */   addiu     $t0, $t0, %lo(gEntitiesNextPosYArray)
/* 24DEA0 8022D790 24060003 */  addiu      $a2, $zero, 0x3
/* 24DEA4 8022D794 10660021 */  beq        $v1, $a2, .L8022D81C_ovl19
/* 24DEA8 8022D798 24010004 */   addiu     $at, $zero, 0x4
/* 24DEAC 8022D79C 5061003E */  beql       $v1, $at, .L8022D898_ovl19
/* 24DEB0 8022D7A0 8E020000 */   lw        $v0, 0x0($s0)
/* 24DEB4 8022D7A4 10000059 */  b          .L8022D90C_ovl19
/* 24DEB8 8022D7A8 3C040002 */   lui       $a0, (0x20061 >> 16)
.L8022D7AC_ovl19:
/* 24DEBC 8022D7AC 8E020000 */  lw         $v0, 0x0($s0)
/* 24DEC0 8022D7B0 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24DEC4 8022D7B4 24060003 */  addiu      $a2, $zero, 0x3
/* 24DEC8 8022D7B8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24DECC 8022D7BC 3C05800E */  lui        $a1, %hi(D_800E6D90)
/* 24DED0 8022D7C0 24A56D90 */  addiu      $a1, $a1, %lo(D_800E6D90)
/* 24DED4 8022D7C4 000E7880 */  sll        $t7, $t6, 2
/* 24DED8 8022D7C8 010F2021 */  addu       $a0, $t0, $t7
/* 24DEDC 8022D7CC C4920000 */  lwc1       $f18, 0x0($a0)
/* 24DEE0 8022D7D0 E4920000 */  swc1       $f18, 0x0($a0)
/* 24DEE4 8022D7D4 8C590000 */  lw         $t9, 0x0($v0)
/* 24DEE8 8022D7D8 0019C080 */  sll        $t8, $t9, 2
/* 24DEEC 8022D7DC 00380821 */  addu       $at, $at, $t8
/* 24DEF0 8022D7E0 AC265F90 */  sw         $a2, %lo(D_800E5F90)($at)
/* 24DEF4 8022D7E4 8C490000 */  lw         $t1, 0x0($v0)
/* 24DEF8 8022D7E8 3C018023 */  lui        $at, %hi(D_8022FA44_ovl19)
/* 24DEFC 8022D7EC C424FA44 */  lwc1       $f4, %lo(D_8022FA44_ovl19)($at)
/* 24DF00 8022D7F0 00095880 */  sll        $t3, $t1, 2
/* 24DF04 8022D7F4 00AB5021 */  addu       $t2, $a1, $t3
/* 24DF08 8022D7F8 E5440000 */  swc1       $f4, 0x0($t2)
/* 24DF0C 8022D7FC 8C430000 */  lw         $v1, 0x0($v0)
/* 24DF10 8022D800 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24DF14 8022D804 00031880 */  sll        $v1, $v1, 2
/* 24DF18 8022D808 00A36021 */  addu       $t4, $a1, $v1
/* 24DF1C 8022D80C C5860000 */  lwc1       $f6, 0x0($t4)
/* 24DF20 8022D810 00230821 */  addu       $at, $at, $v1
/* 24DF24 8022D814 1000003C */  b          .L8022D908_ovl19
/* 24DF28 8022D818 E4266BD0 */   swc1      $f6, %lo(D_800E6BD0)($at)
.L8022D81C_ovl19:
/* 24DF2C 8022D81C 8E020000 */  lw         $v0, 0x0($s0)
/* 24DF30 8022D820 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 24DF34 8022D824 44815000 */  mtc1       $at, $f10
/* 24DF38 8022D828 8C4D0000 */  lw         $t5, 0x0($v0)
/* 24DF3C 8022D82C 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24DF40 8022D830 3C05800E */  lui        $a1, %hi(D_800E6D90)
/* 24DF44 8022D834 000D7080 */  sll        $t6, $t5, 2
/* 24DF48 8022D838 010E2021 */  addu       $a0, $t0, $t6
/* 24DF4C 8022D83C C4880000 */  lwc1       $f8, 0x0($a0)
/* 24DF50 8022D840 24A56D90 */  addiu      $a1, $a1, %lo(D_800E6D90)
/* 24DF54 8022D844 460A4400 */  add.s      $f16, $f8, $f10
/* 24DF58 8022D848 E4900000 */  swc1       $f16, 0x0($a0)
/* 24DF5C 8022D84C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24DF60 8022D850 000FC880 */  sll        $t9, $t7, 2
/* 24DF64 8022D854 00390821 */  addu       $at, $at, $t9
/* 24DF68 8022D858 AC265F90 */  sw         $a2, %lo(D_800E5F90)($at)
/* 24DF6C 8022D85C 8C580000 */  lw         $t8, 0x0($v0)
/* 24DF70 8022D860 3C018023 */  lui        $at, %hi(D_8022FA48_ovl19)
/* 24DF74 8022D864 C432FA48 */  lwc1       $f18, %lo(D_8022FA48_ovl19)($at)
/* 24DF78 8022D868 00184880 */  sll        $t1, $t8, 2
/* 24DF7C 8022D86C 00A95821 */  addu       $t3, $a1, $t1
/* 24DF80 8022D870 E5720000 */  swc1       $f18, 0x0($t3)
/* 24DF84 8022D874 8C430000 */  lw         $v1, 0x0($v0)
/* 24DF88 8022D878 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24DF8C 8022D87C 00031880 */  sll        $v1, $v1, 2
/* 24DF90 8022D880 00A35021 */  addu       $t2, $a1, $v1
/* 24DF94 8022D884 C5440000 */  lwc1       $f4, 0x0($t2)
/* 24DF98 8022D888 00230821 */  addu       $at, $at, $v1
/* 24DF9C 8022D88C 1000001E */  b          .L8022D908_ovl19
/* 24DFA0 8022D890 E4246BD0 */   swc1      $f4, %lo(D_800E6BD0)($at)
/* 24DFA4 8022D894 8E020000 */  lw         $v0, 0x0($s0)
.L8022D898_ovl19:
/* 24DFA8 8022D898 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 24DFAC 8022D89C 44814000 */  mtc1       $at, $f8
/* 24DFB0 8022D8A0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24DFB4 8022D8A4 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24DFB8 8022D8A8 3C05800E */  lui        $a1, %hi(D_800E6D90)
/* 24DFBC 8022D8AC 000C6880 */  sll        $t5, $t4, 2
/* 24DFC0 8022D8B0 010D2021 */  addu       $a0, $t0, $t5
/* 24DFC4 8022D8B4 C4860000 */  lwc1       $f6, 0x0($a0)
/* 24DFC8 8022D8B8 24A56D90 */  addiu      $a1, $a1, %lo(D_800E6D90)
/* 24DFCC 8022D8BC 46083280 */  add.s      $f10, $f6, $f8
/* 24DFD0 8022D8C0 E48A0000 */  swc1       $f10, 0x0($a0)
/* 24DFD4 8022D8C4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24DFD8 8022D8C8 000E7880 */  sll        $t7, $t6, 2
/* 24DFDC 8022D8CC 002F0821 */  addu       $at, $at, $t7
/* 24DFE0 8022D8D0 AC205F90 */  sw         $zero, %lo(D_800E5F90)($at)
/* 24DFE4 8022D8D4 8C590000 */  lw         $t9, 0x0($v0)
/* 24DFE8 8022D8D8 3C018023 */  lui        $at, %hi(D_8022FA4C_ovl19)
/* 24DFEC 8022D8DC C430FA4C */  lwc1       $f16, %lo(D_8022FA4C_ovl19)($at)
/* 24DFF0 8022D8E0 0019C080 */  sll        $t8, $t9, 2
/* 24DFF4 8022D8E4 00B84821 */  addu       $t1, $a1, $t8
/* 24DFF8 8022D8E8 E5300000 */  swc1       $f16, 0x0($t1)
/* 24DFFC 8022D8EC 8C430000 */  lw         $v1, 0x0($v0)
/* 24E000 8022D8F0 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24E004 8022D8F4 00031880 */  sll        $v1, $v1, 2
/* 24E008 8022D8F8 00A35821 */  addu       $t3, $a1, $v1
/* 24E00C 8022D8FC C5720000 */  lwc1       $f18, 0x0($t3)
/* 24E010 8022D900 00230821 */  addu       $at, $at, $v1
/* 24E014 8022D904 E4326BD0 */  swc1       $f18, %lo(D_800E6BD0)($at)
.L8022D908_ovl19:
/* 24E018 8022D908 3C040002 */  lui        $a0, (0x20061 >> 16)
.L8022D90C_ovl19:
/* 24E01C 8022D90C 3C050002 */  lui        $a1, (0x20062 >> 16)
/* 24E020 8022D910 34A50062 */  ori        $a1, $a1, (0x20062 & 0xFFFF)
/* 24E024 8022D914 34840061 */  ori        $a0, $a0, (0x20061 & 0xFFFF)
/* 24E028 8022D918 0C048C3A */  jal        func_801230E8
/* 24E02C 8022D91C 24060001 */   addiu     $a2, $zero, 0x1
/* 24E030 8022D920 3C028013 */  lui        $v0, %hi(gKirbyState)
/* 24E034 8022D924 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 24E038 8022D928 8C4A0030 */  lw         $t2, 0x30($v0)
/* 24E03C 8022D92C 24040001 */  addiu      $a0, $zero, 0x1
/* 24E040 8022D930 254C0001 */  addiu      $t4, $t2, 0x1
/* 24E044 8022D934 0C002DAF */  jal        finish_current_thread
/* 24E048 8022D938 AC4C0030 */   sw        $t4, 0x30($v0)
/* 24E04C 8022D93C 3C078023 */  lui        $a3, %hi(D_8022FAB0_ovl19)
/* 24E050 8022D940 24E7FAB0 */  addiu      $a3, $a3, %lo(D_8022FAB0_ovl19)
/* 24E054 8022D944 0C03FC73 */  jal        func_800FF1CC
/* 24E058 8022D948 8CE40000 */   lw        $a0, 0x0($a3)
/* 24E05C 8022D94C 8E0D0000 */  lw         $t5, 0x0($s0)
/* 24E060 8022D950 0C02C640 */  jal        func_800B1900
/* 24E064 8022D954 95A40002 */   lhu       $a0, 0x2($t5)
/* 24E068 8022D958 8FBF001C */  lw         $ra, 0x1C($sp)
/* 24E06C 8022D95C 8FB00018 */  lw         $s0, 0x18($sp)
/* 24E070 8022D960 27BD0020 */  addiu      $sp, $sp, 0x20
/* 24E074 8022D964 03E00008 */  jr         $ra
/* 24E078 8022D968 00000000 */   nop
