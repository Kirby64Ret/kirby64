glabel func_801EEC28_ovl9
/* 19CC78 801EEC28 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 19CC7C 801EEC2C AFB20028 */  sw         $s2, 0x28($sp)
/* 19CC80 801EEC30 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 19CC84 801EEC34 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 19CC88 801EEC38 8E4E0000 */  lw         $t6, 0x0($s2)
/* 19CC8C 801EEC3C AFBF002C */  sw         $ra, 0x2C($sp)
/* 19CC90 801EEC40 AFB10024 */  sw         $s1, 0x24($sp)
/* 19CC94 801EEC44 AFB00020 */  sw         $s0, 0x20($sp)
/* 19CC98 801EEC48 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 19CC9C 801EEC4C AFA40038 */  sw         $a0, 0x38($sp)
/* 19CCA0 801EEC50 8DC20000 */  lw         $v0, 0x0($t6)
.L801EEC54_ovl10:
/* 19CCA4 801EEC54 3C18800E */  lui        $t8, %hi(D_800E7880)
/* 19CCA8 801EEC58 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 19CCAC 801EEC5C 0302C021 */  addu       $t8, $t8, $v0
/* 19CCB0 801EEC60 93187880 */  lbu        $t8, %lo(D_800E7880)($t8)
/* 19CCB4 801EEC64 00027880 */  sll        $t7, $v0, 2
/* 19CCB8 801EEC68 020F8021 */  addu       $s0, $s0, $t7
/* 19CCBC 801EEC6C 3C04801F */  lui        $a0, %hi(func_801ECAD8_ovl9)
/* 19CCC0 801EEC70 2719FFF5 */  addiu      $t9, $t8, -0xB
/* 19CCC4 801EEC74 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
.L801EEC78_ovl10:
/* 19CCC8 801EEC78 AFB90030 */  sw         $t9, 0x30($sp)
/* 19CCCC 801EEC7C 0C068354 */  jal        func_801A0D50_ovl7
/* 19CCD0 801EEC80 2484CAD8 */   addiu     $a0, $a0, %lo(func_801ECAD8_ovl9)
/* 19CCD4 801EEC84 8E490000 */  lw         $t1, 0x0($s2)
/* 19CCD8 801EEC88 3C08800B */  lui        $t0, %hi(func_800B72AC)
/* 19CCDC 801EEC8C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19CCE0 801EEC90 8D2A0000 */  lw         $t2, 0x0($t1)
/* 19CCE4 801EEC94 250872AC */  addiu      $t0, $t0, %lo(func_800B72AC)
/* 19CCE8 801EEC98 000A5880 */  sll        $t3, $t2, 2
/* 19CCEC 801EEC9C 002B0821 */  addu       $at, $at, $t3
/* 19CCF0 801EECA0 0C02CCFD */  jal        func_800B33F4
/* 19CCF4 801EECA4 AC28EF90 */   sw        $t0, %lo(D_800DEF90)($at)
/* 19CCF8 801EECA8 8E440000 */  lw         $a0, 0x0($s2)
/* 19CCFC 801EECAC 3C01800F */  lui        $at, %hi(D_800E8920)
/* 19CD00 801EECB0 3C18800E */  lui        $t8, %hi(D_800E77A0)
.L801EECB4_ovl10:
/* 19CD04 801EECB4 8C8C0000 */  lw         $t4, 0x0($a0)
/* 19CD08 801EECB8 000C6880 */  sll        $t5, $t4, 2
/* 19CD0C 801EECBC 002D0821 */  addu       $at, $at, $t5
/* 19CD10 801EECC0 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 19CD14 801EECC4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 19CD18 801EECC8 000E7840 */  sll        $t7, $t6, 1
/* 19CD1C 801EECCC 030FC021 */  addu       $t8, $t8, $t7
/* 19CD20 801EECD0 971877A0 */  lhu        $t8, %lo(D_800E77A0)($t8)
/* 19CD24 801EECD4 2719FFBE */  addiu      $t9, $t8, -0x42
/* 19CD28 801EECD8 2F210029 */  sltiu      $at, $t9, 0x29
/* 19CD2C 801EECDC 10200028 */  beqz       $at, .L801EED80_ovl9
/* 19CD30 801EECE0 0019C880 */   sll       $t9, $t9, 2
/* 19CD34 801EECE4 3C018022 */  lui        $at, %hi(jtbl_8021D708_ovl9)
/* 19CD38 801EECE8 00390821 */  addu       $at, $at, $t9
/* 19CD3C 801EECEC 8C39D708 */  lw         $t9, %lo(jtbl_8021D708_ovl9)($at)
/* 19CD40 801EECF0 03200008 */  jr         $t9
/* 19CD44 801EECF4 00000000 */   nop
/* 19CD48 801EECF8 8FB10030 */  lw         $s1, 0x30($sp)
/* 19CD4C 801EECFC 3C098022 */  lui        $t1, %hi(D_8021C1E4_ovl9)
/* 19CD50 801EED00 3C048022 */  lui        $a0, %hi(D_8021C208_ovl9)
/* 19CD54 801EED04 00118880 */  sll        $s1, $s1, 2
/* 19CD58 801EED08 01314821 */  addu       $t1, $t1, $s1
/* 19CD5C 801EED0C 8D29C1E4 */  lw         $t1, %lo(D_8021C1E4_ovl9)($t1)
.L801EED10_ovl16:
/* 19CD60 801EED10 00912021 */  addu       $a0, $a0, $s1
/* 19CD64 801EED14 AE090088 */  sw         $t1, 0x88($s0)
/* 19CD68 801EED18 0C02A5D8 */  jal        func_800A9760
/* 19CD6C 801EED1C 8C84C208 */   lw        $a0, %lo(D_8021C208_ovl9)($a0)
/* 19CD70 801EED20 1000001A */  b          .L801EED8C_ovl9
/* 19CD74 801EED24 8E020088 */   lw        $v0, 0x88($s0)
/* 19CD78 801EED28 8FB10030 */  lw         $s1, 0x30($sp)
/* 19CD7C 801EED2C 3C0A8022 */  lui        $t2, %hi(D_8021C1F0_ovl9)
/* 19CD80 801EED30 3C048022 */  lui        $a0, %hi(D_8021C214_ovl9)
.L801EED34_ovl16:
/* 19CD84 801EED34 00118880 */  sll        $s1, $s1, 2
/* 19CD88 801EED38 01515021 */  addu       $t2, $t2, $s1
/* 19CD8C 801EED3C 8D4AC1F0 */  lw         $t2, %lo(D_8021C1F0_ovl9)($t2)
/* 19CD90 801EED40 00912021 */  addu       $a0, $a0, $s1
/* 19CD94 801EED44 AE0A0088 */  sw         $t2, 0x88($s0)
/* 19CD98 801EED48 0C02A5D8 */  jal        func_800A9760
.L801EED4C_ovl16:
/* 19CD9C 801EED4C 8C84C214 */   lw        $a0, %lo(D_8021C214_ovl9)($a0)
/* 19CDA0 801EED50 1000000E */  b          .L801EED8C_ovl9
/* 19CDA4 801EED54 8E020088 */   lw        $v0, 0x88($s0)
/* 19CDA8 801EED58 8FB10030 */  lw         $s1, 0x30($sp)
/* 19CDAC 801EED5C 3C088022 */  lui        $t0, %hi(D_8021C1FC_ovl9)
/* 19CDB0 801EED60 3C048022 */  lui        $a0, %hi(D_8021C220_ovl9)
/* 19CDB4 801EED64 00118880 */  sll        $s1, $s1, 2
/* 19CDB8 801EED68 01114021 */  addu       $t0, $t0, $s1
/* 19CDBC 801EED6C 8D08C1FC */  lw         $t0, %lo(D_8021C1FC_ovl9)($t0)
.L801EED70_ovl16:
/* 19CDC0 801EED70 00912021 */  addu       $a0, $a0, $s1
/* 19CDC4 801EED74 AE080088 */  sw         $t0, 0x88($s0)
/* 19CDC8 801EED78 0C02A5D8 */  jal        func_800A9760
/* 19CDCC 801EED7C 8C84C220 */   lw        $a0, %lo(D_8021C220_ovl9)($a0)
.L801EED80_ovl9:
/* 19CDD0 801EED80 8FB10030 */  lw         $s1, 0x30($sp)
/* 19CDD4 801EED84 00118880 */  sll        $s1, $s1, 2
/* 19CDD8 801EED88 8E020088 */  lw         $v0, 0x88($s0)
.L801EED8C_ovl9:
/* 19CDDC 801EED8C 3C01800E */  lui        $at, %hi(D_800E0490)
/* 19CDE0 801EED90 8C4B0014 */  lw         $t3, 0x14($v0)
/* 19CDE4 801EED94 AE0B008C */  sw         $t3, 0x8C($s0)
/* 19CDE8 801EED98 8C4C0018 */  lw         $t4, 0x18($v0)
/* 19CDEC 801EED9C AE0C0094 */  sw         $t4, 0x94($s0)
/* 19CDF0 801EEDA0 8E4E0000 */  lw         $t6, 0x0($s2)
/* 19CDF4 801EEDA4 8C4D0010 */  lw         $t5, 0x10($v0)
/* 19CDF8 801EEDA8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19CDFC 801EEDAC 000FC080 */  sll        $t8, $t7, 2
/* 19CE00 801EEDB0 00380821 */  addu       $at, $at, $t8
/* 19CE04 801EEDB4 AC2D0490 */  sw         $t5, %lo(D_800E0490)($at)
/* 19CE08 801EEDB8 8E190088 */  lw         $t9, 0x88($s0)
/* 19CE0C 801EEDBC 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 19CE10 801EEDC0 8F240010 */   lw        $a0, 0x10($t9)
/* 19CE14 801EEDC4 8E4A0000 */  lw         $t2, 0x0($s2)
/* 19CE18 801EEDC8 8E090088 */  lw         $t1, 0x88($s0)
/* 19CE1C 801EEDCC 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 19CE20 801EEDD0 8D480000 */  lw         $t0, 0x0($t2)
/* 19CE24 801EEDD4 C5240000 */  lwc1       $f4, 0x0($t1)
/* 19CE28 801EEDD8 24040041 */  addiu      $a0, $zero, 0x41
/* 19CE2C 801EEDDC 00085880 */  sll        $t3, $t0, 2
/* 19CE30 801EEDE0 002B0821 */  addu       $at, $at, $t3
/* 19CE34 801EEDE4 E4247B20 */  swc1       $f4, %lo(D_800E7B20)($at)
/* 19CE38 801EEDE8 3C018022 */  lui        $at, %hi(D_8021C244_ovl9)
/* 19CE3C 801EEDEC 00310821 */  addu       $at, $at, $s1
/* 19CE40 801EEDF0 C426C244 */  lwc1       $f6, %lo(D_8021C244_ovl9)($at)
/* 19CE44 801EEDF4 8E0C0080 */  lw         $t4, 0x80($s0)
/* 19CE48 801EEDF8 3C01C448 */  lui        $at, (0xC4480000 >> 16)
/* 19CE4C 801EEDFC 44814000 */  mtc1       $at, $f8
.L801EEE00_ovl16:
/* 19CE50 801EEE00 E5860010 */  swc1       $f6, 0x10($t4)
/* 19CE54 801EEE04 8E0E0080 */  lw         $t6, 0x80($s0)
/* 19CE58 801EEE08 3C01C080 */  lui        $at, (0xC0800000 >> 16)
/* 19CE5C 801EEE0C 44815000 */  mtc1       $at, $f10
.L801EEE10_ovl16:
/* 19CE60 801EEE10 E5C80018 */  swc1       $f8, 0x18($t6)
/* 19CE64 801EEE14 8E4F0000 */  lw         $t7, 0x0($s2)
/* 19CE68 801EEE18 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19CE6C 801EEE1C 8DED0000 */  lw         $t5, 0x0($t7)
/* 19CE70 801EEE20 000DC080 */  sll        $t8, $t5, 2
.L801EEE24_ovl10:
/* 19CE74 801EEE24 00380821 */  addu       $at, $at, $t8
/* 19CE78 801EEE28 0C006291 */  jal        random_soft_s32_range
.L801EEE2C_ovl10:
/* 19CE7C 801EEE2C E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
.L801EEE30_ovl10:
/* 19CE80 801EEE30 44828000 */  mtc1       $v0, $f16
/* 19CE84 801EEE34 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 19CE88 801EEE38 44812000 */  mtc1       $at, $f4
/* 19CE8C 801EEE3C 468084A0 */  cvt.s.w    $f18, $f16
/* 19CE90 801EEE40 3C0143A0 */  lui        $at, (0x43A00000 >> 16)
glabel func_801EEE44_ovl10
/* 19CE94 801EEE44 44814000 */  mtc1       $at, $f8
/* 19CE98 801EEE48 8E590000 */  lw         $t9, 0x0($s2)
/* 19CE9C 801EEE4C 3C10800E */  lui        $s0, %hi(D_800E5F90)
/* 19CEA0 801EEE50 3C09800E */  lui        $t1, %hi(D_800E6BD0)
/* 19CEA4 801EEE54 46049182 */  mul.s      $f6, $f18, $f4
/* 19CEA8 801EEE58 8F230000 */  lw         $v1, 0x0($t9)
/* 19CEAC 801EEE5C 26105F90 */  addiu      $s0, $s0, %lo(D_800E5F90)
/* 19CEB0 801EEE60 25296BD0 */  addiu      $t1, $t1, %lo(D_800E6BD0)
/* 19CEB4 801EEE64 00031880 */  sll        $v1, $v1, 2
.L801EEE68_ovl16:
/* 19CEB8 801EEE68 02032021 */  addu       $a0, $s0, $v1
/* 19CEBC 801EEE6C 00692821 */  addu       $a1, $v1, $t1
/* 19CEC0 801EEE70 46083501 */  sub.s      $f20, $f6, $f8
/* 19CEC4 801EEE74 4406A000 */  mfc1       $a2, $f20
/* 19CEC8 801EEE78 0C03E65D */  jal        func_800F9974
/* 19CECC 801EEE7C 00000000 */   nop
/* 19CED0 801EEE80 50400011 */  beql       $v0, $zero, .L801EEEC8_ovl9
/* 19CED4 801EEE84 8E440000 */   lw        $a0, 0x0($s2)
/* 19CED8 801EEE88 8E4A0000 */  lw         $t2, 0x0($s2)
/* 19CEDC 801EEE8C 4600A507 */  neg.s      $f20, $f20
/* 19CEE0 801EEE90 3C08800E */  lui        $t0, %hi(D_800E6BD0)
/* 19CEE4 801EEE94 8D430000 */  lw         $v1, 0x0($t2)
/* 19CEE8 801EEE98 25086BD0 */  addiu      $t0, $t0, %lo(D_800E6BD0)
/* 19CEEC 801EEE9C 4406A000 */  mfc1       $a2, $f20
/* 19CEF0 801EEEA0 00031880 */  sll        $v1, $v1, 2
/* 19CEF4 801EEEA4 02032021 */  addu       $a0, $s0, $v1
/* 19CEF8 801EEEA8 0C03E65D */  jal        func_800F9974
/* 19CEFC 801EEEAC 00682821 */   addu      $a1, $v1, $t0
/* 19CF00 801EEEB0 50400005 */  beql       $v0, $zero, .L801EEEC8_ovl9
/* 19CF04 801EEEB4 8E440000 */   lw        $a0, 0x0($s2)
/* 19CF08 801EEEB8 8E4B0000 */  lw         $t3, 0x0($s2)
/* 19CF0C 801EEEBC 0C067656 */  jal        func_8019D958_ovl7
.L801EEEC0_ovl10:
/* 19CF10 801EEEC0 95640002 */   lhu       $a0, 0x2($t3)
.L801EEEC4_ovl10:
/* 19CF14 801EEEC4 8E440000 */  lw         $a0, 0x0($s2)
.L801EEEC8_ovl9:
/* 19CF18 801EEEC8 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
/* 19CF1C 801EEECC 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
/* 19CF20 801EEED0 8C830000 */  lw         $v1, 0x0($a0)
glabel func_801EEED4_ovl10
/* 19CF24 801EEED4 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 19CF28 801EEED8 3C05800E */  lui        $a1, %hi(gEntitiesNextPosZArray)
/* 19CF2C 801EEEDC 00031880 */  sll        $v1, $v1, 2
/* 19CF30 801EEEE0 00436021 */  addu       $t4, $v0, $v1
/* 19CF34 801EEEE4 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 19CF38 801EEEE8 00230821 */  addu       $at, $at, $v1
/* 19CF3C 801EEEEC 24A52950 */  addiu      $a1, $a1, %lo(gEntitiesNextPosZArray)
/* 19CF40 801EEEF0 E42AA6E0 */  swc1       $f10, %lo(D_800EA6E0)($at)
/* 19CF44 801EEEF4 8C830000 */  lw         $v1, 0x0($a0)
/* 19CF48 801EEEF8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19CF4C 801EEEFC 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
/* 19CF50 801EEF00 00031880 */  sll        $v1, $v1, 2
/* 19CF54 801EEF04 00A37021 */  addu       $t6, $a1, $v1
/* 19CF58 801EEF08 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 19CF5C 801EEF0C 00230821 */  addu       $at, $at, $v1
/* 19CF60 801EEF10 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 19CF64 801EEF14 E430A8A0 */  swc1       $f16, %lo(D_800EA8A0)($at)
/* 19CF68 801EEF18 8C8F0000 */  lw         $t7, 0x0($a0)
/* 19CF6C 801EEF1C C4520000 */  lwc1       $f18, 0x0($v0)
/* 19CF70 801EEF20 000F6880 */  sll        $t5, $t7, 2
.L801EEF24_ovl16:
/* 19CF74 801EEF24 004DC021 */  addu       $t8, $v0, $t5
.L801EEF28_ovl16:
/* 19CF78 801EEF28 E7120000 */  swc1       $f18, 0x0($t8)
/* 19CF7C 801EEF2C 8C990000 */  lw         $t9, 0x0($a0)
/* 19CF80 801EEF30 C6040000 */  lwc1       $f4, 0x0($s0)
glabel func_801EEF34_ovl16
/* 19CF84 801EEF34 00194880 */  sll        $t1, $t9, 2
.L801EEF38_ovl10:
/* 19CF88 801EEF38 02095021 */  addu       $t2, $s0, $t1
.L801EEF3C_ovl10:
/* 19CF8C 801EEF3C E5440000 */  swc1       $f4, 0x0($t2)
/* 19CF90 801EEF40 8C880000 */  lw         $t0, 0x0($a0)
/* 19CF94 801EEF44 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 19CF98 801EEF48 00085880 */  sll        $t3, $t0, 2
glabel func_801EEF4C_ovl10
/* 19CF9C 801EEF4C 00AB6021 */  addu       $t4, $a1, $t3
/* 19CFA0 801EEF50 0C066E46 */  jal        func_8019B918_ovl7
/* 19CFA4 801EEF54 E5860000 */   swc1      $f6, 0x0($t4)
/* 19CFA8 801EEF58 1440000D */  bnez       $v0, .L801EEF90_ovl9
/* 19CFAC 801EEF5C 3C014220 */   lui       $at, (0x42200000 >> 16)
/* 19CFB0 801EEF60 4481A000 */  mtc1       $at, $f20
/* 19CFB4 801EEF64 00000000 */  nop
/* 19CFB8 801EEF68 8E4E0000 */  lw         $t6, 0x0($s2)
.L801EEF6C_ovl9:
/* 19CFBC 801EEF6C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19CFC0 801EEF70 000F6880 */  sll        $t5, $t7, 2
/* 19CFC4 801EEF74 020D1021 */  addu       $v0, $s0, $t5
/* 19CFC8 801EEF78 C4480000 */  lwc1       $f8, 0x0($v0)
/* 19CFCC 801EEF7C 46144280 */  add.s      $f10, $f8, $f20
/* 19CFD0 801EEF80 0C066E46 */  jal        func_8019B918_ovl7
/* 19CFD4 801EEF84 E44A0000 */   swc1      $f10, 0x0($v0)
/* 19CFD8 801EEF88 5040FFF8 */  beql       $v0, $zero, .L801EEF6C_ovl9
/* 19CFDC 801EEF8C 8E4E0000 */   lw        $t6, 0x0($s2)
.L801EEF90_ovl9:
/* 19CFE0 801EEF90 8E440000 */  lw         $a0, 0x0($s2)
/* 19CFE4 801EEF94 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 19CFE8 801EEF98 3C09800E */  lui        $t1, %hi(D_800E0D50)
/* 19CFEC 801EEF9C 8C830000 */  lw         $v1, 0x0($a0)
/* 19CFF0 801EEFA0 240F0001 */  addiu      $t7, $zero, 0x1
/* 19CFF4 801EEFA4 00031880 */  sll        $v1, $v1, 2
/* 19CFF8 801EEFA8 00230821 */  addu       $at, $at, $v1
/* 19CFFC 801EEFAC C430A6E0 */  lwc1       $f16, %lo(D_800EA6E0)($at)
/* 19D000 801EEFB0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 19D004 801EEFB4 00230821 */  addu       $at, $at, $v1
.L801EEFB8_ovl10:
/* 19D008 801EEFB8 E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
.L801EEFBC_ovl10:
/* 19D00C 801EEFBC 8C980000 */  lw         $t8, 0x0($a0)
/* 19D010 801EEFC0 3C018022 */  lui        $at, %hi(D_8021C22C_ovl9)
/* 19D014 801EEFC4 00310821 */  addu       $at, $at, $s1
/* 19D018 801EEFC8 0018C880 */  sll        $t9, $t8, 2
glabel func_801EEFCC_ovl10
/* 19D01C 801EEFCC 02191021 */  addu       $v0, $s0, $t9
/* 19D020 801EEFD0 C4520000 */  lwc1       $f18, 0x0($v0)
/* 19D024 801EEFD4 C424C22C */  lwc1       $f4, %lo(D_8021C22C_ovl9)($at)
/* 19D028 801EEFD8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19D02C 801EEFDC 46049180 */  add.s      $f6, $f18, $f4
/* 19D030 801EEFE0 E4460000 */  swc1       $f6, 0x0($v0)
/* 19D034 801EEFE4 8C830000 */  lw         $v1, 0x0($a0)
/* 19D038 801EEFE8 00031880 */  sll        $v1, $v1, 2
/* 19D03C 801EEFEC 00230821 */  addu       $at, $at, $v1
.L801EEFF0_ovl16:
/* 19D040 801EEFF0 C428A8A0 */  lwc1       $f8, %lo(D_800EA8A0)($at)
.L801EEFF4_ovl10:
/* 19D044 801EEFF4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 19D048 801EEFF8 00230821 */  addu       $at, $at, $v1
/* 19D04C 801EEFFC E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 19D050 801EF000 8C830000 */  lw         $v1, 0x0($a0)
.L801EF004_ovl16:
/* 19D054 801EF004 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 19D058 801EF008 00031880 */  sll        $v1, $v1, 2
/* 19D05C 801EF00C 01234821 */  addu       $t1, $t1, $v1
/* 19D060 801EF010 8D290D50 */  lw         $t1, %lo(D_800E0D50)($t1)
/* 19D064 801EF014 02035821 */  addu       $t3, $s0, $v1
/* 19D068 801EF018 00095080 */  sll        $t2, $t1, 2
.L801EF01C_ovl10:
/* 19D06C 801EF01C 020A4021 */  addu       $t0, $s0, $t2
/* 19D070 801EF020 C50A0000 */  lwc1       $f10, 0x0($t0)
/* 19D074 801EF024 E56A0000 */  swc1       $f10, 0x0($t3)
/* 19D078 801EF028 8C8C0000 */  lw         $t4, 0x0($a0)
/* 19D07C 801EF02C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 19D080 801EF030 8FB20028 */  lw         $s2, 0x28($sp)
.L801EF034_ovl10:
/* 19D084 801EF034 000C7080 */  sll        $t6, $t4, 2
/* 19D088 801EF038 002E0821 */  addu       $at, $at, $t6
/* 19D08C 801EF03C AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 19D090 801EF040 8C8D0000 */  lw         $t5, 0x0($a0)
/* 19D094 801EF044 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 19D098 801EF048 8FB10024 */  lw         $s1, 0x24($sp)
/* 19D09C 801EF04C 000DC080 */  sll        $t8, $t5, 2
/* 19D0A0 801EF050 00380821 */  addu       $at, $at, $t8
/* 19D0A4 801EF054 AC2F9FE0 */  sw         $t7, %lo(D_800E9FE0)($at)
/* 19D0A8 801EF058 8C990000 */  lw         $t9, 0x0($a0)
/* 19D0AC 801EF05C 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 19D0B0 801EF060 8FB00020 */  lw         $s0, 0x20($sp)
/* 19D0B4 801EF064 00194880 */  sll        $t1, $t9, 2
/* 19D0B8 801EF068 00290821 */  addu       $at, $at, $t1
.L801EF06C_ovl10:
/* 19D0BC 801EF06C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 19D0C0 801EF070 AC20DC50 */  sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 19D0C4 801EF074 03E00008 */  jr         $ra
/* 19D0C8 801EF078 27BD0038 */   addiu     $sp, $sp, 0x38
