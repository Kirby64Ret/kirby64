glabel func_8015BBE4_ovl3
/* BC624 8015BBE4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BC628 8015BBE8 AFBF0024 */  sw         $ra, 0x24($sp)
/* BC62C 8015BBEC AFB20020 */  sw         $s2, 0x20($sp)
/* BC630 8015BBF0 AFB1001C */  sw         $s1, 0x1C($sp)
/* BC634 8015BBF4 0C058738 */  jal        func_80161CE0_ovl3
/* BC638 8015BBF8 AFB00018 */   sw        $s0, 0x18($sp)
/* BC63C 8015BBFC 00002025 */  or         $a0, $zero, $zero
/* BC640 8015BC00 24050000 */  addiu      $a1, $zero, 0x0
/* BC644 8015BC04 0C0587B0 */  jal        func_80161EC0_ovl3
/* BC648 8015BC08 3C0641A0 */   lui       $a2, (0x41A00000 >> 16)
/* BC64C 8015BC0C 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* BC650 8015BC10 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* BC654 8015BC14 8E430000 */  lw         $v1, 0x0($s2)
/* BC658 8015BC18 3C01800E */  lui        $at, %hi(D_800E0650)
/* BC65C 8015BC1C 240E0001 */  addiu      $t6, $zero, 0x1
/* BC660 8015BC20 8C6F0000 */  lw         $t7, 0x0($v1)
/* BC664 8015BC24 3C19800B */  lui        $t9, %hi(func_800B4954)
/* BC668 8015BC28 27394954 */  addiu      $t9, $t9, %lo(func_800B4954)
/* BC66C 8015BC2C 000FC080 */  sll        $t8, $t7, 2
/* BC670 8015BC30 00380821 */  addu       $at, $at, $t8
/* BC674 8015BC34 AC2E0650 */  sw         $t6, %lo(D_800E0650)($at)
/* BC678 8015BC38 8C690000 */  lw         $t1, 0x0($v1)
/* BC67C 8015BC3C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BC680 8015BC40 3C0B8016 */  lui        $t3, %hi(func_8015C00C_ovl4)
/* BC684 8015BC44 00095080 */  sll        $t2, $t1, 2
/* BC688 8015BC48 002A0821 */  addu       $at, $at, $t2
/* BC68C 8015BC4C AC39EF90 */  sw         $t9, %lo(D_800DEF90)($at)
/* BC690 8015BC50 8C6C0000 */  lw         $t4, 0x0($v1)
/* BC694 8015BC54 3C01800E */  lui        $at, %hi(D_800DF150)
/* BC698 8015BC58 256BC00C */  addiu      $t3, $t3, %lo(func_8015C00C_ovl4)
/* BC69C 8015BC5C 000C6880 */  sll        $t5, $t4, 2
/* BC6A0 8015BC60 002D0821 */  addu       $at, $at, $t5
/* BC6A4 8015BC64 AC2BF150 */  sw         $t3, %lo(D_800DF150)($at)
/* BC6A8 8015BC68 8C6E0000 */  lw         $t6, 0x0($v1)
/* BC6AC 8015BC6C 3C01800E */  lui        $at, %hi(D_800E0490)
/* BC6B0 8015BC70 3C0F8019 */  lui        $t7, %hi(D_80192B94_ovl3)
/* BC6B4 8015BC74 000EC080 */  sll        $t8, $t6, 2
/* BC6B8 8015BC78 00380821 */  addu       $at, $at, $t8
/* BC6BC 8015BC7C 25EF2B94 */  addiu      $t7, $t7, %lo(D_80192B94_ovl3)
/* BC6C0 8015BC80 AC2F0490 */  sw         $t7, %lo(D_800E0490)($at)
/* BC6C4 8015BC84 8C670000 */  lw         $a3, 0x0($v1)
/* BC6C8 8015BC88 3C10800E */  lui        $s0, %hi(D_800E0D50)
/* BC6CC 8015BC8C 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
/* BC6D0 8015BC90 24E8FFFC */  addiu      $t0, $a3, -0x4
/* BC6D4 8015BC94 00085080 */  sll        $t2, $t0, 2
/* BC6D8 8015BC98 01485023 */  subu       $t2, $t2, $t0
/* BC6DC 8015BC9C 000A50C0 */  sll        $t2, $t2, 3
/* BC6E0 8015BCA0 01485023 */  subu       $t2, $t2, $t0
/* BC6E4 8015BCA4 3C0D801A */  lui        $t5, %hi(D_801982F8_ovl3)
/* BC6E8 8015BCA8 3C0C8019 */  lui        $t4, %hi(D_80197F60_ovl3)
/* BC6EC 8015BCAC 00074880 */  sll        $t1, $a3, 2
/* BC6F0 8015BCB0 0209C821 */  addu       $t9, $s0, $t1
/* BC6F4 8015BCB4 258C7F60 */  addiu      $t4, $t4, %lo(D_80197F60_ovl3)
/* BC6F8 8015BCB8 25AD82F8 */  addiu      $t5, $t5, %lo(D_801982F8_ovl3)
/* BC6FC 8015BCBC 000A5080 */  sll        $t2, $t2, 2
/* BC700 8015BCC0 00085940 */  sll        $t3, $t0, 5
/* BC704 8015BCC4 016D3021 */  addu       $a2, $t3, $t5
/* BC708 8015BCC8 014C2821 */  addu       $a1, $t2, $t4
/* BC70C 8015BCCC 0C055192 */  jal        func_80154648_ovl3
/* BC710 8015BCD0 8F240000 */   lw        $a0, 0x0($t9)
/* BC714 8015BCD4 8E430000 */  lw         $v1, 0x0($s2)
/* BC718 8015BCD8 3C02800F */  lui        $v0, %hi(D_800E8920)
/* BC71C 8015BCDC 24428920 */  addiu      $v0, $v0, %lo(D_800E8920)
/* BC720 8015BCE0 8C670000 */  lw         $a3, 0x0($v1)
/* BC724 8015BCE4 3C018019 */  lui        $at, %hi(D_80197068_ovl3)
/* BC728 8015BCE8 C4207068 */  lwc1       $f0, %lo(D_80197068_ovl3)($at)
/* BC72C 8015BCEC 00073880 */  sll        $a3, $a3, 2
/* BC730 8015BCF0 02077021 */  addu       $t6, $s0, $a3
/* BC734 8015BCF4 8DCF0000 */  lw         $t7, 0x0($t6)
/* BC738 8015BCF8 00475021 */  addu       $t2, $v0, $a3
/* BC73C 8015BCFC 3C11800F */  lui        $s1, %hi(D_800E8AE0)
/* BC740 8015BD00 000FC080 */  sll        $t8, $t7, 2
/* BC744 8015BD04 00584821 */  addu       $t1, $v0, $t8
/* BC748 8015BD08 8D390000 */  lw         $t9, 0x0($t1)
/* BC74C 8015BD0C 26318AE0 */  addiu      $s1, $s1, %lo(D_800E8AE0)
/* BC750 8015BD10 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* BC754 8015BD14 AD590000 */  sw         $t9, 0x0($t2)
/* BC758 8015BD18 8C670000 */  lw         $a3, 0x0($v1)
/* BC75C 8015BD1C 3C040002 */  lui        $a0, (0x2002E >> 16)
/* BC760 8015BD20 3484002E */  ori        $a0, $a0, (0x2002E & 0xFFFF)
/* BC764 8015BD24 00073880 */  sll        $a3, $a3, 2
/* BC768 8015BD28 02076021 */  addu       $t4, $s0, $a3
/* BC76C 8015BD2C 8D8B0000 */  lw         $t3, 0x0($t4)
/* BC770 8015BD30 0227C021 */  addu       $t8, $s1, $a3
/* BC774 8015BD34 24050021 */  addiu      $a1, $zero, 0x21
/* BC778 8015BD38 000B6880 */  sll        $t5, $t3, 2
/* BC77C 8015BD3C 022D7021 */  addu       $t6, $s1, $t5
/* BC780 8015BD40 8DCF0000 */  lw         $t7, 0x0($t6)
/* BC784 8015BD44 24060010 */  addiu      $a2, $zero, 0x10
/* BC788 8015BD48 AF0F0000 */  sw         $t7, 0x0($t8)
/* BC78C 8015BD4C 8C690000 */  lw         $t1, 0x0($v1)
/* BC790 8015BD50 0009C880 */  sll        $t9, $t1, 2
/* BC794 8015BD54 00390821 */  addu       $at, $at, $t9
/* BC798 8015BD58 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* BC79C 8015BD5C 8C6A0000 */  lw         $t2, 0x0($v1)
/* BC7A0 8015BD60 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BC7A4 8015BD64 000A6080 */  sll        $t4, $t2, 2
/* BC7A8 8015BD68 002C0821 */  addu       $at, $at, $t4
/* BC7AC 8015BD6C E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* BC7B0 8015BD70 8C6B0000 */  lw         $t3, 0x0($v1)
/* BC7B4 8015BD74 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* BC7B8 8015BD78 000B6880 */  sll        $t5, $t3, 2
/* BC7BC 8015BD7C 002D0821 */  addu       $at, $at, $t5
/* BC7C0 8015BD80 0C02A619 */  jal        func_800A9864
/* BC7C4 8015BD84 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* BC7C8 8015BD88 3C040002 */  lui        $a0, (0x2027E >> 16)
/* BC7CC 8015BD8C 0C02A806 */  jal        func_800AA018
/* BC7D0 8015BD90 3484027E */   ori       $a0, $a0, (0x2027E & 0xFFFF)
/* BC7D4 8015BD94 8E430000 */  lw         $v1, 0x0($s2)
/* BC7D8 8015BD98 3C01800F */  lui        $at, %hi(D_800E98E0)
/* BC7DC 8015BD9C 2418000A */  addiu      $t8, $zero, 0xA
/* BC7E0 8015BDA0 8C6E0000 */  lw         $t6, 0x0($v1)
/* BC7E4 8015BDA4 2404022D */  addiu      $a0, $zero, 0x22D
/* BC7E8 8015BDA8 000E7880 */  sll        $t7, $t6, 2
/* BC7EC 8015BDAC 002F0821 */  addu       $at, $at, $t7
/* BC7F0 8015BDB0 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* BC7F4 8015BDB4 8C690000 */  lw         $t1, 0x0($v1)
/* BC7F8 8015BDB8 3C01800F */  lui        $at, %hi(D_800E9560)
/* BC7FC 8015BDBC 0009C880 */  sll        $t9, $t1, 2
/* BC800 8015BDC0 00390821 */  addu       $at, $at, $t9
/* BC804 8015BDC4 AC389560 */  sw         $t8, %lo(D_800E9560)($at)
/* BC808 8015BDC8 8C670000 */  lw         $a3, 0x0($v1)
/* BC80C 8015BDCC 3C014120 */  lui        $at, (0x41200000 >> 16)
/* BC810 8015BDD0 00073880 */  sll        $a3, $a3, 2
/* BC814 8015BDD4 02275021 */  addu       $t2, $s1, $a3
/* BC818 8015BDD8 8D4C0000 */  lw         $t4, 0x0($t2)
/* BC81C 8015BDDC 318B0004 */  andi       $t3, $t4, 0x4
/* BC820 8015BDE0 51600011 */  beql       $t3, $zero, .L8015BE28_ovl3
/* BC824 8015BDE4 44810000 */   mtc1      $at, $f0
/* BC828 8015BDE8 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* BC82C 8015BDEC 44810000 */  mtc1       $at, $f0
/* BC830 8015BDF0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BC834 8015BDF4 00270821 */  addu       $at, $at, $a3
/* BC838 8015BDF8 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* BC83C 8015BDFC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BC840 8015BE00 00270821 */  addu       $at, $at, $a3
/* BC844 8015BE04 46002182 */  mul.s      $f6, $f4, $f0
/* BC848 8015BE08 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* BC84C 8015BE0C 8C6D0000 */  lw         $t5, 0x0($v1)
/* BC850 8015BE10 3C01800E */  lui        $at, %hi(D_800E6850)
/* BC854 8015BE14 000D7080 */  sll        $t6, $t5, 2
/* BC858 8015BE18 002E0821 */  addu       $at, $at, $t6
/* BC85C 8015BE1C 1000000E */  b          .L8015BE58_ovl3
/* BC860 8015BE20 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* BC864 8015BE24 44810000 */  mtc1       $at, $f0
.L8015BE28_ovl3:
/* BC868 8015BE28 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BC86C 8015BE2C 00270821 */  addu       $at, $at, $a3
/* BC870 8015BE30 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* BC874 8015BE34 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BC878 8015BE38 00270821 */  addu       $at, $at, $a3
/* BC87C 8015BE3C 46004282 */  mul.s      $f10, $f8, $f0
/* BC880 8015BE40 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* BC884 8015BE44 8C6F0000 */  lw         $t7, 0x0($v1)
/* BC888 8015BE48 3C01800E */  lui        $at, %hi(D_800E6850)
/* BC88C 8015BE4C 000F4880 */  sll        $t1, $t7, 2
/* BC890 8015BE50 00290821 */  addu       $at, $at, $t1
/* BC894 8015BE54 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8015BE58_ovl3:
/* BC898 8015BE58 8C780000 */  lw         $t8, 0x0($v1)
/* BC89C 8015BE5C 3C01800F */  lui        $at, %hi(D_800EA360)
/* BC8A0 8015BE60 27A50030 */  addiu      $a1, $sp, 0x30
/* BC8A4 8015BE64 0018C880 */  sll        $t9, $t8, 2
/* BC8A8 8015BE68 00390821 */  addu       $at, $at, $t9
/* BC8AC 8015BE6C AC25A360 */  sw         $a1, %lo(D_800EA360)($at)
/* BC8B0 8015BE70 8C6A0000 */  lw         $t2, 0x0($v1)
/* BC8B4 8015BE74 3C0B800F */  lui        $t3, %hi(D_800E8920)
/* BC8B8 8015BE78 000A6080 */  sll        $t4, $t2, 2
/* BC8BC 8015BE7C 016C5821 */  addu       $t3, $t3, $t4
/* BC8C0 8015BE80 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
/* BC8C4 8015BE84 5160001A */  beql       $t3, $zero, .L8015BEF0_ovl3
/* BC8C8 8015BE88 AFA00030 */   sw        $zero, 0x30($sp)
/* BC8CC 8015BE8C 0C029DFA */  jal        func_800A77E8
/* BC8D0 8015BE90 27A60034 */   addiu     $a2, $sp, 0x34
/* BC8D4 8015BE94 24040002 */  addiu      $a0, $zero, 0x2
/* BC8D8 8015BE98 24050001 */  addiu      $a1, $zero, 0x1
/* BC8DC 8015BE9C 0C02A08D */  jal        func_800A8234
/* BC8E0 8015BEA0 24060050 */   addiu     $a2, $zero, 0x50
/* BC8E4 8015BEA4 8E4D0000 */  lw         $t5, 0x0($s2)
/* BC8E8 8015BEA8 3C01800F */  lui        $at, %hi(D_800EA520)
/* BC8EC 8015BEAC 24040001 */  addiu      $a0, $zero, 0x1
/* BC8F0 8015BEB0 8DAE0000 */  lw         $t6, 0x0($t5)
/* BC8F4 8015BEB4 24050001 */  addiu      $a1, $zero, 0x1
/* BC8F8 8015BEB8 24060051 */  addiu      $a2, $zero, 0x51
/* BC8FC 8015BEBC 000E7880 */  sll        $t7, $t6, 2
/* BC900 8015BEC0 002F0821 */  addu       $at, $at, $t7
/* BC904 8015BEC4 0C02A08D */  jal        func_800A8234
/* BC908 8015BEC8 AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* BC90C 8015BECC 8E430000 */  lw         $v1, 0x0($s2)
/* BC910 8015BED0 3C04800F */  lui        $a0, %hi(D_800EB4E0)
/* BC914 8015BED4 2484B4E0 */  addiu      $a0, $a0, %lo(D_800EB4E0)
/* BC918 8015BED8 8C690000 */  lw         $t1, 0x0($v1)
/* BC91C 8015BEDC 0009C080 */  sll        $t8, $t1, 2
/* BC920 8015BEE0 0098C821 */  addu       $t9, $a0, $t8
/* BC924 8015BEE4 1000000F */  b          .L8015BF24_ovl3
/* BC928 8015BEE8 AF220000 */   sw        $v0, 0x0($t9)
/* BC92C 8015BEEC AFA00030 */  sw         $zero, 0x30($sp)
.L8015BEF0_ovl3:
/* BC930 8015BEF0 8C6A0000 */  lw         $t2, 0x0($v1)
/* BC934 8015BEF4 3C04800F */  lui        $a0, %hi(D_800EB4E0)
/* BC938 8015BEF8 2484B4E0 */  addiu      $a0, $a0, %lo(D_800EB4E0)
/* BC93C 8015BEFC 000A6080 */  sll        $t4, $t2, 2
/* BC940 8015BF00 008C5821 */  addu       $t3, $a0, $t4
/* BC944 8015BF04 AD600000 */  sw         $zero, 0x0($t3)
/* BC948 8015BF08 8C670000 */  lw         $a3, 0x0($v1)
/* BC94C 8015BF0C 3C01800F */  lui        $at, %hi(D_800EA520)
/* BC950 8015BF10 00073880 */  sll        $a3, $a3, 2
/* BC954 8015BF14 00876821 */  addu       $t5, $a0, $a3
/* BC958 8015BF18 8DAE0000 */  lw         $t6, 0x0($t5)
/* BC95C 8015BF1C 00270821 */  addu       $at, $at, $a3
/* BC960 8015BF20 AC2EA520 */  sw         $t6, %lo(D_800EA520)($at)
.L8015BF24_ovl3:
/* BC964 8015BF24 8C6F0000 */  lw         $t7, 0x0($v1)
/* BC968 8015BF28 3C10800F */  lui        $s0, %hi(D_800E9720)
/* BC96C 8015BF2C 26109720 */  addiu      $s0, $s0, %lo(D_800E9720)
/* BC970 8015BF30 000F4880 */  sll        $t1, $t7, 2
/* BC974 8015BF34 0209C021 */  addu       $t8, $s0, $t1
/* BC978 8015BF38 AF000000 */  sw         $zero, 0x0($t8)
/* BC97C 8015BF3C 8C670000 */  lw         $a3, 0x0($v1)
/* BC980 8015BF40 3C11800E */  lui        $s1, %hi(D_800E6310)
/* BC984 8015BF44 26316310 */  addiu      $s1, $s1, %lo(D_800E6310)
/* BC988 8015BF48 00073880 */  sll        $a3, $a3, 2
/* BC98C 8015BF4C 0207C821 */  addu       $t9, $s0, $a3
/* BC990 8015BF50 8F2A0000 */  lw         $t2, 0x0($t9)
/* BC994 8015BF54 2941001E */  slti       $at, $t2, 0x1E
/* BC998 8015BF58 1020001C */  beqz       $at, .L8015BFCC_ovl3
/* BC99C 8015BF5C 02276021 */   addu      $t4, $s1, $a3
.L8015BF60_ovl3:
/* BC9A0 8015BF60 8D8B0000 */  lw         $t3, 0x0($t4)
/* BC9A4 8015BF64 3C0D800E */  lui        $t5, %hi(D_800E64D0)
/* BC9A8 8015BF68 25AD64D0 */  addiu      $t5, $t5, %lo(D_800E64D0)
/* BC9AC 8015BF6C 11600007 */  beqz       $t3, .L8015BF8C_ovl3
/* BC9B0 8015BF70 00ED1021 */   addu      $v0, $a3, $t5
/* BC9B4 8015BF74 C4500000 */  lwc1       $f16, 0x0($v0)
/* BC9B8 8015BF78 46008487 */  neg.s      $f18, $f16
/* BC9BC 8015BF7C E4520000 */  swc1       $f18, 0x0($v0)
/* BC9C0 8015BF80 8C670000 */  lw         $a3, 0x0($v1)
/* BC9C4 8015BF84 10000011 */  b          .L8015BFCC_ovl3
/* BC9C8 8015BF88 00073880 */   sll       $a3, $a3, 2
.L8015BF8C_ovl3:
/* BC9CC 8015BF8C 0C002DAF */  jal        finish_current_thread
/* BC9D0 8015BF90 24040001 */   addiu     $a0, $zero, 0x1
/* BC9D4 8015BF94 8E430000 */  lw         $v1, 0x0($s2)
/* BC9D8 8015BF98 8C6E0000 */  lw         $t6, 0x0($v1)
/* BC9DC 8015BF9C 000E7880 */  sll        $t7, $t6, 2
/* BC9E0 8015BFA0 020F1021 */  addu       $v0, $s0, $t7
/* BC9E4 8015BFA4 8C490000 */  lw         $t1, 0x0($v0)
/* BC9E8 8015BFA8 25380001 */  addiu      $t8, $t1, 0x1
/* BC9EC 8015BFAC AC580000 */  sw         $t8, 0x0($v0)
/* BC9F0 8015BFB0 8C670000 */  lw         $a3, 0x0($v1)
/* BC9F4 8015BFB4 00073880 */  sll        $a3, $a3, 2
/* BC9F8 8015BFB8 0207C821 */  addu       $t9, $s0, $a3
/* BC9FC 8015BFBC 8F2A0000 */  lw         $t2, 0x0($t9)
/* BCA00 8015BFC0 2941001E */  slti       $at, $t2, 0x1E
/* BCA04 8015BFC4 5420FFE6 */  bnel       $at, $zero, .L8015BF60_ovl3
/* BCA08 8015BFC8 02276021 */   addu      $t4, $s1, $a3
.L8015BFCC_ovl3:
/* BCA0C 8015BFCC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BCA10 8015BFD0 00270821 */  addu       $at, $at, $a3
/* BCA14 8015BFD4 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* BCA18 8015BFD8 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* BCA1C 8015BFDC 44813000 */  mtc1       $at, $f6
/* BCA20 8015BFE0 3C01800E */  lui        $at, %hi(D_800E6690)
/* BCA24 8015BFE4 00270821 */  addu       $at, $at, $a3
/* BCA28 8015BFE8 46062202 */  mul.s      $f8, $f4, $f6
/* BCA2C 8015BFEC 0C02BE85 */  jal        func_800AFA14
glabel D_8015BFF0_ovl4
/* BCA30 8015BFF0 E4286690 */   swc1      $f8, %lo(D_800E6690)($at)
/* BCA34 8015BFF4 8FBF0024 */  lw         $ra, 0x24($sp)
/* BCA38 8015BFF8 8FB00018 */  lw         $s0, 0x18($sp)
/* BCA3C 8015BFFC 8FB1001C */  lw         $s1, 0x1C($sp)
/* BCA40 8015C000 8FB20020 */  lw         $s2, 0x20($sp)
/* BCA44 8015C004 03E00008 */  jr         $ra
/* BCA48 8015C008 27BD0038 */   addiu     $sp, $sp, 0x38
