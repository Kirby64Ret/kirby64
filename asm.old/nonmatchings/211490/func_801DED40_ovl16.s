glabel func_801DED40_ovl16
/* 214FF0 801DED40 27BDFFD0 */  addiu      $sp, $sp, -0x30
.L801DED44_ovl14:
/* 214FF4 801DED44 AFA40030 */  sw         $a0, 0x30($sp)
/* 214FF8 801DED48 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 214FFC 801DED4C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 215000 801DED50 AFBF002C */  sw         $ra, 0x2C($sp)
/* 215004 801DED54 AFB40028 */  sw         $s4, 0x28($sp)
/* 215008 801DED58 AFB30024 */  sw         $s3, 0x24($sp)
.L801DED5C_ovl17:
/* 21500C 801DED5C AFB20020 */  sw         $s2, 0x20($sp)
/* 215010 801DED60 AFB1001C */  sw         $s1, 0x1C($sp)
/* 215014 801DED64 AFB00018 */  sw         $s0, 0x18($sp)
/* 215018 801DED68 8C820000 */  lw         $v0, 0x0($a0)
.L801DED6C_ovl13:
/* 21501C 801DED6C 3C07800E */  lui        $a3, %hi(D_800E1B50)
/* 215020 801DED70 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
/* 215024 801DED74 00027080 */  sll        $t6, $v0, 2
.L801DED78_ovl17:
/* 215028 801DED78 3C13800D */  lui        $s3, %hi(D_800D7098)
/* 21502C 801DED7C 00EE7821 */  addu       $t7, $a3, $t6
/* 215030 801DED80 26737098 */  addiu      $s3, $s3, %lo(D_800D7098)
/* 215034 801DED84 8DF40000 */  lw         $s4, 0x0($t7)
.L801DED88_ovl11:
/* 215038 801DED88 AE620034 */  sw         $v0, 0x34($s3)
/* 21503C 801DED8C 8C990000 */  lw         $t9, 0x0($a0)
/* 215040 801DED90 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L801DED94_ovl12:
/* 215044 801DED94 24180002 */  addiu      $t8, $zero, 0x2
.L801DED98_ovl10:
/* 215048 801DED98 00194080 */  sll        $t0, $t9, 2
glabel func_801DED9C_ovl12
/* 21504C 801DED9C 00280821 */  addu       $at, $at, $t0
/* 215050 801DEDA0 AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
/* 215054 801DEDA4 8C8A0000 */  lw         $t2, 0x0($a0)
/* 215058 801DEDA8 3C09801E */  lui        $t1, %hi(D_801D9438)
/* 21505C 801DEDAC 25299438 */  addiu      $t1, $t1, %lo(D_801D9438)
.L801DEDB0_ovl17:
/* 215060 801DEDB0 000A5880 */  sll        $t3, $t2, 2
.L801DEDB4_ovl17:
/* 215064 801DEDB4 00EB6021 */  addu       $t4, $a3, $t3
.L801DEDB8_ovl14:
/* 215068 801DEDB8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 21506C 801DEDBC 24120001 */  addiu      $s2, $zero, 0x1
/* 215070 801DEDC0 ADA9008C */  sw         $t1, 0x8C($t5)
/* 215074 801DEDC4 8E66000C */  lw         $a2, 0xC($s3)
.L801DEDC8_ovl17:
/* 215078 801DEDC8 8E630004 */  lw         $v1, 0x4($s3)
.L801DEDCC_ovl17:
/* 21507C 801DEDCC 10D20006 */  beq        $a2, $s2, func_801DEDE8_ovl16
/* 215080 801DEDD0 AE630014 */   sw        $v1, 0x14($s3)
.L801DEDD4_ovl14:
/* 215084 801DEDD4 24010002 */  addiu      $at, $zero, 0x2
.L801DEDD8_ovl14:
/* 215088 801DEDD8 10C10008 */  beq        $a2, $at, .L801DEDFC_ovl17
/* 21508C 801DEDDC 3C10801F */   lui       $s0, %hi(D_801F0120_ovl16 + 0x20)
/* 215090 801DEDE0 1000000F */  b          .L801DEE20_ovl16
/* 215094 801DEDE4 00000000 */   nop
glabel func_801DEDE8_ovl16
/* 215098 801DEDE8 3C10801F */  lui        $s0, %hi(D_801F0120_ovl16 + 0x20)
/* 21509C 801DEDEC 26100140 */  addiu      $s0, $s0, %lo(D_801F0120_ovl16 + 0x20)
/* 2150A0 801DEDF0 8E0E0000 */  lw         $t6, 0x0($s0)
/* 2150A4 801DEDF4 1000001E */  b          .L801DEE70_ovl16
/* 2150A8 801DEDF8 AE6E0004 */   sw        $t6, 0x4($s3)
.L801DEDFC_ovl17:
/* 2150AC 801DEDFC 26100140 */  addiu      $s0, $s0, %lo(D_801F0120_ovl16 + 0x20)
/* 2150B0 801DEE00 8E0F0000 */  lw         $t7, 0x0($s0)
/* 2150B4 801DEE04 006FC826 */  xor        $t9, $v1, $t7
.L801DEE08_ovl12:
/* 2150B8 801DEE08 2F390001 */  sltiu      $t9, $t9, 0x1
/* 2150BC 801DEE0C 0019C080 */  sll        $t8, $t9, 2
/* 2150C0 801DEE10 02184021 */  addu       $t0, $s0, $t8
/* 2150C4 801DEE14 8D0A0000 */  lw         $t2, 0x0($t0)
/* 2150C8 801DEE18 10000015 */  b          .L801DEE70_ovl16
.L801DEE1C_ovl14:
/* 2150CC 801DEE1C AE6A0004 */   sw        $t2, 0x4($s3)
.L801DEE20_ovl16:
/* 2150D0 801DEE20 0C006291 */  jal        random_soft_s32_range
.L801DEE24_ovl15:
/* 2150D4 801DEE24 00C02025 */   or        $a0, $a2, $zero
.L801DEE28_ovl17:
/* 2150D8 801DEE28 3C10801F */  lui        $s0, %hi(D_801F0120_ovl16 + 0x20)
/* 2150DC 801DEE2C 26100140 */  addiu      $s0, $s0, %lo(D_801F0120_ovl16 + 0x20)
/* 2150E0 801DEE30 00025880 */  sll        $t3, $v0, 2
/* 2150E4 801DEE34 020B6021 */  addu       $t4, $s0, $t3
.L801DEE38_ovl12:
/* 2150E8 801DEE38 8D830000 */  lw         $v1, 0x0($t4)
.L801DEE3C_ovl14:
/* 2150EC 801DEE3C 8E690004 */  lw         $t1, 0x4($s3)
.L801DEE40_ovl10:
/* 2150F0 801DEE40 15230009 */  bne        $t1, $v1, .L801DEE68_ovl16
/* 2150F4 801DEE44 00000000 */   nop
.L801DEE48_ovl16:
/* 2150F8 801DEE48 0C006291 */  jal        random_soft_s32_range
.L801DEE4C_ovl15:
/* 2150FC 801DEE4C 8E64000C */   lw        $a0, 0xC($s3)
glabel func_801DEE50_ovl17
/* 215100 801DEE50 00026880 */  sll        $t5, $v0, 2
/* 215104 801DEE54 020D7021 */  addu       $t6, $s0, $t5
.L801DEE58_ovl10:
/* 215108 801DEE58 8DC30000 */  lw         $v1, 0x0($t6)
.L801DEE5C_ovl10:
/* 21510C 801DEE5C 8E6F0004 */  lw         $t7, 0x4($s3)
/* 215110 801DEE60 11E3FFF9 */  beq        $t7, $v1, .L801DEE48_ovl16
.L801DEE64_ovl12:
/* 215114 801DEE64 00000000 */   nop
.L801DEE68_ovl16:
/* 215118 801DEE68 3C01800D */  lui        $at, %hi(D_800D7098 + 0x4)
.L801DEE6C_ovl9:
/* 21511C 801DEE6C AC23709C */  sw         $v1, %lo(D_800D7098 + 0x4)($at)
.L801DEE70_ovl16:
/* 215120 801DEE70 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 215124 801DEE74 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 215128 801DEE78 0C02BB30 */  jal        func_800AECC0
/* 21512C 801DEE7C C60C0000 */   lwc1      $f12, 0x0($s0)
/* 215130 801DEE80 8E790004 */  lw         $t9, 0x4($s3)
.L801DEE84_ovl12:
/* 215134 801DEE84 3C11801F */  lui        $s1, %hi(.L801EF848_ovl16)
.L801DEE88_ovl17:
/* 215138 801DEE88 2631F848 */  addiu      $s1, $s1, %lo(.L801EF848_ovl16)
/* 21513C 801DEE8C 0019C080 */  sll        $t8, $t9, 2
/* 215140 801DEE90 02384021 */  addu       $t0, $s1, $t8
/* 215144 801DEE94 C5040000 */  lwc1       $f4, 0x0($t0)
.L801DEE98_ovl17:
/* 215148 801DEE98 C6060000 */  lwc1       $f6, 0x0($s0)
.L801DEE9C_ovl17:
/* 21514C 801DEE9C 46062302 */  mul.s      $f12, $f4, $f6
.L801DEEA0_ovl12:
/* 215150 801DEEA0 0C02BB48 */  jal        func_800AED20
.L801DEEA4_ovl9:
/* 215154 801DEEA4 00000000 */   nop
/* 215158 801DEEA8 8E6A0004 */  lw         $t2, 0x4($s3)
/* 21515C 801DEEAC 3C04801F */  lui        $a0, %hi(func_801EF790_ovl10 + 0x10)
.L801DEEB0_ovl12:
/* 215160 801DEEB0 000A5880 */  sll        $t3, $t2, 2
/* 215164 801DEEB4 008B2021 */  addu       $a0, $a0, $t3
/* 215168 801DEEB8 0C02A5D8 */  jal        func_800A9760
/* 21516C 801DEEBC 8C84F7A0 */   lw        $a0, %lo(func_801EF790_ovl10 + 0x10)($a0)
/* 215170 801DEEC0 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 215174 801DEEC4 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 215178 801DEEC8 3C0F800F */  lui        $t7, %hi(D_800EBBE0)
.L801DEECC_ovl12:
/* 21517C 801DEECC 3C01800F */  lui        $at, %hi(D_800E98E0)
glabel func_801DEED0_ovl15
/* 215180 801DEED0 8D2D0000 */  lw         $t5, 0x0($t1)
/* 215184 801DEED4 240C0002 */  addiu      $t4, $zero, 0x2
.L801DEED8_ovl9:
/* 215188 801DEED8 3C04801F */  lui        $a0, %hi(D_801EF7D8_ovl16)
/* 21518C 801DEEDC 000D7080 */  sll        $t6, $t5, 2
.L801DEEE0_ovl12:
/* 215190 801DEEE0 01EE7821 */  addu       $t7, $t7, $t6
/* 215194 801DEEE4 8DEFBBE0 */  lw         $t7, %lo(D_800EBBE0)($t7)
.L801DEEE8_ovl15:
/* 215198 801DEEE8 000FC880 */  sll        $t9, $t7, 2
/* 21519C 801DEEEC 00390821 */  addu       $at, $at, $t9
/* 2151A0 801DEEF0 AC2C98E0 */  sw         $t4, %lo(D_800E98E0)($at)
/* 2151A4 801DEEF4 8E630004 */  lw         $v1, 0x4($s3)
/* 2151A8 801DEEF8 00031880 */  sll        $v1, $v1, 2
.L801DEEFC_ovl12:
/* 2151AC 801DEEFC 00832021 */  addu       $a0, $a0, $v1
/* 2151B0 801DEF00 8C84F7D8 */  lw         $a0, %lo(D_801EF7D8_ovl16)($a0)
/* 2151B4 801DEF04 10800011 */  beqz       $a0, .L801DEF4C_ovl16
/* 2151B8 801DEF08 0223C021 */   addu      $t8, $s1, $v1
.L801DEF0C_ovl12:
/* 2151BC 801DEF0C C70A0000 */  lwc1       $f10, 0x0($t8)
/* 2151C0 801DEF10 44804000 */  mtc1       $zero, $f8
/* 2151C4 801DEF14 00000000 */  nop
.L801DEF18_ovl10:
/* 2151C8 801DEF18 460A4032 */  c.eq.s     $f8, $f10
/* 2151CC 801DEF1C 00000000 */  nop
/* 2151D0 801DEF20 45010006 */  bc1t       .L801DEF3C_ovl16
/* 2151D4 801DEF24 00000000 */   nop
.L801DEF28_ovl12:
/* 2151D8 801DEF28 0C02A806 */  jal        func_800AA018
/* 2151DC 801DEF2C 00000000 */   nop
/* 2151E0 801DEF30 8E630004 */  lw         $v1, 0x4($s3)
/* 2151E4 801DEF34 10000005 */  b          .L801DEF4C_ovl16
/* 2151E8 801DEF38 00031880 */   sll       $v1, $v1, 2
.L801DEF3C_ovl16:
/* 2151EC 801DEF3C 0C02A7E6 */  jal        func_800A9F98
.L801DEF40_ovl11:
/* 2151F0 801DEF40 3C054000 */   lui       $a1, (0x40000000 >> 16)
/* 2151F4 801DEF44 8E630004 */  lw         $v1, 0x4($s3)
.L801DEF48_ovl9:
/* 2151F8 801DEF48 00031880 */  sll        $v1, $v1, 2
.L801DEF4C_ovl16:
/* 2151FC 801DEF4C 3C04801F */  lui        $a0, %hi(func_801EF790_ovl10 + 0x2C)
/* 215200 801DEF50 00832021 */  addu       $a0, $a0, $v1
.L801DEF54_ovl11:
/* 215204 801DEF54 0C02A806 */  jal        func_800AA018
.L801DEF58_ovl12:
/* 215208 801DEF58 8C84F7BC */   lw        $a0, %lo(func_801EF790_ovl10 + 0x2C)($a0)
/* 21520C 801DEF5C 8E680004 */  lw         $t0, 0x4($s3)
/* 215210 801DEF60 2D010007 */  sltiu      $at, $t0, 0x7
/* 215214 801DEF64 10200098 */  beqz       $at, .L801DF1C8_ovl17
.L801DEF68_ovl12:
/* 215218 801DEF68 00084080 */   sll       $t0, $t0, 2
/* 21521C 801DEF6C 3C01801F */  lui        $at, %hi(jtbl_801EFE6C_ovl16)
/* 215220 801DEF70 00280821 */  addu       $at, $at, $t0
.L801DEF74_ovl9:
/* 215224 801DEF74 8C28FE6C */  lw         $t0, %lo(jtbl_801EFE6C_ovl16)($at)
/* 215228 801DEF78 01000008 */  jr         $t0
.L801DEF7C_ovl13:
/* 21522C 801DEF7C 00000000 */   nop
.L801DEF80_ovl12:
/* 215230 801DEF80 3C11800F */  lui        $s1, %hi(D_800E8E60)
/* 215234 801DEF84 AE720010 */  sw         $s2, 0x10($s3)
glabel func_801DEF88_ovl12
/* 215238 801DEF88 26318E60 */  addiu      $s1, $s1, %lo(D_800E8E60)
.L801DEF8C_ovl11:
/* 21523C 801DEF8C 00008025 */  or         $s0, $zero, $zero
/* 215240 801DEF90 24040031 */  addiu      $a0, $zero, 0x31
.L801DEF94_ovl16:
/* 215244 801DEF94 0C06B30D */  jal        func_801ACC34_ovl7
/* 215248 801DEF98 32050001 */   andi      $a1, $s0, 0x1
glabel func_801DEF9C_ovl11
/* 21524C 801DEF9C 10400006 */  beqz       $v0, .L801DEFB8_ovl16
/* 215250 801DEFA0 00021880 */   sll       $v1, $v0, 2
/* 215254 801DEFA4 02235021 */  addu       $t2, $s1, $v1
/* 215258 801DEFA8 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 21525C 801DEFAC AD520000 */  sw         $s2, 0x0($t2)
glabel func_801DEFB0_ovl15
/* 215260 801DEFB0 00230821 */  addu       $at, $at, $v1
/* 215264 801DEFB4 AC309C60 */  sw         $s0, %lo(D_800E9C60)($at)
.L801DEFB8_ovl16:
/* 215268 801DEFB8 26100001 */  addiu      $s0, $s0, 0x1
.L801DEFBC_ovl14:
/* 21526C 801DEFBC 24010006 */  addiu      $at, $zero, 0x6
/* 215270 801DEFC0 5601FFF4 */  bnel       $s0, $at, .L801DEF94_ovl16
.L801DEFC4_ovl17:
/* 215274 801DEFC4 24040031 */   addiu     $a0, $zero, 0x31
/* 215278 801DEFC8 1000007F */  b          .L801DF1C8_ovl17
/* 21527C 801DEFCC 00000000 */   nop
/* 215280 801DEFD0 0C006291 */  jal        random_soft_s32_range
/* 215284 801DEFD4 24040002 */   addiu     $a0, $zero, 0x2
/* 215288 801DEFD8 1040000B */  beqz       $v0, .L801DF008_ovl16
.L801DEFDC_ovl9:
/* 21528C 801DEFDC 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 215290 801DEFE0 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
glabel func_801DEFE4_ovl11
/* 215294 801DEFE4 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
.L801DEFE8_ovl12:
/* 215298 801DEFE8 3C01801F */  lui        $at, %hi(D_801EFE88_ovl16)
/* 21529C 801DEFEC C430FE88 */  lwc1       $f16, %lo(D_801EFE88_ovl16)($at)
/* 2152A0 801DEFF0 8D690000 */  lw         $t1, 0x0($t3)
.L801DEFF4_ovl9:
/* 2152A4 801DEFF4 3C01800F */  lui        $at, %hi(D_800EA8A0)
.L801DEFF8_ovl17:
/* 2152A8 801DEFF8 00096880 */  sll        $t5, $t1, 2
/* 2152AC 801DEFFC 002D0821 */  addu       $at, $at, $t5
.L801DF000_ovl17:
/* 2152B0 801DF000 10000071 */  b          .L801DF1C8_ovl17
.L801DF004_ovl14:
/* 2152B4 801DF004 E430A8A0 */   swc1      $f16, %lo(D_800EA8A0)($at)
.L801DF008_ovl16:
/* 2152B8 801DF008 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801DF00C_ovl13:
/* 2152BC 801DF00C 3C01801F */  lui        $at, %hi(D_801EFE8C_ovl16)
/* 2152C0 801DF010 C432FE8C */  lwc1       $f18, %lo(D_801EFE8C_ovl16)($at)
.L801DF014_ovl17:
/* 2152C4 801DF014 8DCF0000 */  lw         $t7, 0x0($t6)
/* 2152C8 801DF018 3C01800F */  lui        $at, %hi(D_800EA8A0)
glabel func_801DF01C_ovl14
/* 2152CC 801DF01C 000F6080 */  sll        $t4, $t7, 2
/* 2152D0 801DF020 002C0821 */  addu       $at, $at, $t4
.L801DF024_ovl13:
/* 2152D4 801DF024 10000068 */  b          .L801DF1C8_ovl17
/* 2152D8 801DF028 E432A8A0 */   swc1      $f18, %lo(D_800EA8A0)($at)
/* 2152DC 801DF02C AE72002C */  sw         $s2, 0x2C($s3)
/* 2152E0 801DF030 24040005 */  addiu      $a0, $zero, 0x5
/* 2152E4 801DF034 0C067829 */  jal        func_8019E0A4_ovl7
.L801DF038_ovl17:
/* 2152E8 801DF038 24050005 */   addiu     $a1, $zero, 0x5
/* 2152EC 801DF03C AE720010 */  sw         $s2, 0x10($s3)
/* 2152F0 801DF040 24040035 */  addiu      $a0, $zero, 0x35
.L801DF044_ovl13:
/* 2152F4 801DF044 0C06B30D */  jal        func_801ACC34_ovl7
/* 2152F8 801DF048 00002825 */   or        $a1, $zero, $zero
/* 2152FC 801DF04C 1040005E */  beqz       $v0, .L801DF1C8_ovl17
/* 215300 801DF050 00021880 */   sll       $v1, $v0, 2
.L801DF054_ovl14:
/* 215304 801DF054 3C11800F */  lui        $s1, %hi(D_800E8E60)
/* 215308 801DF058 26318E60 */  addiu      $s1, $s1, %lo(D_800E8E60)
.L801DF05C_ovl12:
/* 21530C 801DF05C 0223C821 */  addu       $t9, $s1, $v1
/* 215310 801DF060 AF320000 */  sw         $s2, 0x0($t9)
glabel func_801DF064_ovl15
/* 215314 801DF064 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 215318 801DF068 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L801DF06C_ovl17:
/* 21531C 801DF06C 3C01800E */  lui        $at, %hi(D_800E0D50)
/* 215320 801DF070 00230821 */  addu       $at, $at, $v1
.L801DF074_ovl14:
/* 215324 801DF074 8C980000 */  lw         $t8, 0x0($a0)
/* 215328 801DF078 AC380D50 */  sw         $t8, %lo(D_800E0D50)($at)
/* 21532C 801DF07C 8C880000 */  lw         $t0, 0x0($a0)
/* 215330 801DF080 3C01800F */  lui        $at, %hi(D_800EC120)
.L801DF084_ovl17:
/* 215334 801DF084 00085080 */  sll        $t2, $t0, 2
/* 215338 801DF088 002A0821 */  addu       $at, $at, $t2
/* 21533C 801DF08C AC22C120 */  sw         $v0, %lo(D_800EC120)($at)
/* 215340 801DF090 3C01800F */  lui        $at, %hi(D_800E9AA0)
.L801DF094_ovl17:
/* 215344 801DF094 00230821 */  addu       $at, $at, $v1
.L801DF098_ovl17:
/* 215348 801DF098 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 21534C 801DF09C 8C8B0000 */  lw         $t3, 0x0($a0)
/* 215350 801DF0A0 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 215354 801DF0A4 000B4880 */  sll        $t1, $t3, 2
/* 215358 801DF0A8 00290821 */  addu       $at, $at, $t1
/* 21535C 801DF0AC AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
.L801DF0B0_ovl12:
/* 215360 801DF0B0 10000045 */  b          .L801DF1C8_ovl17
glabel func_801DF0B4_ovl11
/* 215364 801DF0B4 AE600038 */   sw        $zero, 0x38($s3)
/* 215368 801DF0B8 0C006291 */  jal        random_soft_s32_range
/* 21536C 801DF0BC 24040002 */   addiu     $a0, $zero, 0x2
/* 215370 801DF0C0 1040000B */  beqz       $v0, .L801DF0F0_ovl17
/* 215374 801DF0C4 3C0C8005 */   lui       $t4, %hi(D_8004A7C4)
/* 215378 801DF0C8 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
.L801DF0CC_ovl17:
/* 21537C 801DF0CC 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
.L801DF0D0_ovl12:
/* 215380 801DF0D0 3C01801F */  lui        $at, %hi(D_801EFE90_ovl16)
/* 215384 801DF0D4 C424FE90 */  lwc1       $f4, %lo(D_801EFE90_ovl16)($at)
glabel func_801DF0D8_ovl12
/* 215388 801DF0D8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 21538C 801DF0DC 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 215390 801DF0E0 000E7880 */  sll        $t7, $t6, 2
/* 215394 801DF0E4 002F0821 */  addu       $at, $at, $t7
/* 215398 801DF0E8 10000009 */  b          .L801DF110_ovl16
/* 21539C 801DF0EC E424A8A0 */   swc1      $f4, %lo(D_800EA8A0)($at)
.L801DF0F0_ovl17:
/* 2153A0 801DF0F0 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 2153A4 801DF0F4 3C01801F */  lui        $at, %hi(D_801EFE94_ovl16)
/* 2153A8 801DF0F8 C426FE94 */  lwc1       $f6, %lo(D_801EFE94_ovl16)($at)
/* 2153AC 801DF0FC 8D990000 */  lw         $t9, 0x0($t4)
/* 2153B0 801DF100 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 2153B4 801DF104 0019C080 */  sll        $t8, $t9, 2
/* 2153B8 801DF108 00380821 */  addu       $at, $at, $t8
/* 2153BC 801DF10C E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
.L801DF110_ovl16:
/* 2153C0 801DF110 0C006291 */  jal        random_soft_s32_range
/* 2153C4 801DF114 2404000F */   addiu     $a0, $zero, 0xF
/* 2153C8 801DF118 24480002 */  addiu      $t0, $v0, 0x2
/* 2153CC 801DF11C 44884000 */  mtc1       $t0, $f8
/* 2153D0 801DF120 3C01801F */  lui        $at, %hi(D_801EFE98_ovl16)
.L801DF124_ovl15:
/* 2153D4 801DF124 C430FE98 */  lwc1       $f16, %lo(D_801EFE98_ovl16)($at)
.L801DF128_ovl17:
/* 2153D8 801DF128 468042A0 */  cvt.s.w    $f10, $f8
.L801DF12C_ovl17:
/* 2153DC 801DF12C 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 2153E0 801DF130 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L801DF134_ovl12:
/* 2153E4 801DF134 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 2153E8 801DF138 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
/* 2153EC 801DF13C 8C8A0000 */  lw         $t2, 0x0($a0)
.L801DF140_ovl17:
/* 2153F0 801DF140 46105002 */  mul.s      $f0, $f10, $f16
.L801DF144_ovl17:
/* 2153F4 801DF144 3C11800F */  lui        $s1, %hi(D_800E8E60)
glabel func_801DF148_ovl15
/* 2153F8 801DF148 000A5880 */  sll        $t3, $t2, 2
/* 2153FC 801DF14C 002B0821 */  addu       $at, $at, $t3
/* 215400 801DF150 26318E60 */  addiu      $s1, $s1, %lo(D_800E8E60)
glabel func_801DF154_ovl9
/* 215404 801DF154 00008025 */  or         $s0, $zero, $zero
/* 215408 801DF158 E420A6E0 */  swc1       $f0, %lo(D_800EA6E0)($at)
/* 21540C 801DF15C 8C890000 */  lw         $t1, 0x0($a0)
/* 215410 801DF160 00096880 */  sll        $t5, $t1, 2
/* 215414 801DF164 01CD7021 */  addu       $t6, $t6, $t5
/* 215418 801DF168 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
.L801DF16C_ovl11:
/* 21541C 801DF16C 8DCF000C */  lw         $t7, 0xC($t6)
/* 215420 801DF170 E5E00038 */  swc1       $f0, 0x38($t7)
.L801DF174_ovl17:
/* 215424 801DF174 AE720010 */  sw         $s2, 0x10($s3)
/* 215428 801DF178 24040036 */  addiu      $a0, $zero, 0x36
.L801DF17C_ovl16:
/* 21542C 801DF17C 0C06B30D */  jal        func_801ACC34_ovl7
.L801DF180_ovl12:
/* 215430 801DF180 00002825 */   or        $a1, $zero, $zero
/* 215434 801DF184 1040000C */  beqz       $v0, .L801DF1B8_ovl16
/* 215438 801DF188 00021880 */   sll       $v1, $v0, 2
glabel func_801DF18C_ovl12
/* 21543C 801DF18C 02236021 */  addu       $t4, $s1, $v1
/* 215440 801DF190 AD920000 */  sw         $s2, 0x0($t4)
/* 215444 801DF194 3C198005 */  lui        $t9, %hi(D_8004A7C4)
glabel func_801DF198_ovl11
/* 215448 801DF198 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 21544C 801DF19C 3C01800E */  lui        $at, %hi(D_800E0D50)
.L801DF1A0_ovl17:
/* 215450 801DF1A0 00230821 */  addu       $at, $at, $v1
/* 215454 801DF1A4 8F380000 */  lw         $t8, 0x0($t9)
/* 215458 801DF1A8 AC380D50 */  sw         $t8, %lo(D_800E0D50)($at)
/* 21545C 801DF1AC 3C01800F */  lui        $at, %hi(D_800E98E0)
glabel func_801DF1B0_ovl9
/* 215460 801DF1B0 00230821 */  addu       $at, $at, $v1
/* 215464 801DF1B4 AC3098E0 */  sw         $s0, %lo(D_800E98E0)($at)
.L801DF1B8_ovl16:
/* 215468 801DF1B8 26100001 */  addiu      $s0, $s0, 0x1
/* 21546C 801DF1BC 24010004 */  addiu      $at, $zero, 0x4
/* 215470 801DF1C0 5601FFEE */  bnel       $s0, $at, .L801DF17C_ovl16
/* 215474 801DF1C4 24040036 */   addiu     $a0, $zero, 0x36
.L801DF1C8_ovl17:
/* 215478 801DF1C8 3C12801F */  lui        $s2, %hi(D_801EF810_ovl16)
/* 21547C 801DF1CC 2652F810 */  addiu      $s2, $s2, %lo(D_801EF810_ovl16)
/* 215480 801DF1D0 00008025 */  or         $s0, $zero, $zero
/* 215484 801DF1D4 8E680004 */  lw         $t0, 0x4($s3)
.L801DF1D8_ovl16:
/* 215488 801DF1D8 8E820080 */  lw         $v0, 0x80($s4)
/* 21548C 801DF1DC 24040001 */  addiu      $a0, $zero, 0x1
/* 215490 801DF1E0 00085080 */  sll        $t2, $t0, 2
/* 215494 801DF1E4 024A5821 */  addu       $t3, $s2, $t2
.L801DF1E8_ovl10:
/* 215498 801DF1E8 C5640000 */  lwc1       $f4, 0x0($t3)
/* 21549C 801DF1EC C4520010 */  lwc1       $f18, 0x10($v0)
/* 2154A0 801DF1F0 46049181 */  sub.s      $f6, $f18, $f4
.L801DF1F4_ovl11:
/* 2154A4 801DF1F4 0C002DAF */  jal        finish_current_thread
.L801DF1F8_ovl11:
/* 2154A8 801DF1F8 E4460010 */   swc1      $f6, 0x10($v0)
/* 2154AC 801DF1FC 26100001 */  addiu      $s0, $s0, 0x1
/* 2154B0 801DF200 2A01000F */  slti       $at, $s0, 0xF
glabel func_801DF204_ovl17
/* 2154B4 801DF204 5420FFF4 */  bnel       $at, $zero, .L801DF1D8_ovl16
.L801DF208_ovl12:
/* 2154B8 801DF208 8E680004 */   lw        $t0, 0x4($s3)
.L801DF20C_ovl9:
/* 2154BC 801DF20C 8E690004 */  lw         $t1, 0x4($s3)
.L801DF210_ovl9:
/* 2154C0 801DF210 2D210007 */  sltiu      $at, $t1, 0x7
.L801DF214_ovl17:
/* 2154C4 801DF214 1020000C */  beqz       $at, .L801DF248_ovl16
.L801DF218_ovl17:
/* 2154C8 801DF218 00094880 */   sll       $t1, $t1, 2
/* 2154CC 801DF21C 3C01801F */  lui        $at, %hi(jtbl_801EFE9C_ovl16)
glabel func_801DF220_ovl9
/* 2154D0 801DF220 00290821 */  addu       $at, $at, $t1
/* 2154D4 801DF224 8C29FE9C */  lw         $t1, %lo(jtbl_801EFE9C_ovl16)($at)
/* 2154D8 801DF228 01200008 */  jr         $t1
/* 2154DC 801DF22C 00000000 */   nop
/* 2154E0 801DF230 0C029D9E */  jal        play_sound
glabel func_801DF234_ovl10
/* 2154E4 801DF234 240401AC */   addiu     $a0, $zero, 0x1AC
/* 2154E8 801DF238 10000004 */  b          .L801DF24C_ovl16
/* 2154EC 801DF23C 00008025 */   or        $s0, $zero, $zero
.L801DF240_ovl12:
/* 2154F0 801DF240 0C029D9E */  jal        play_sound
/* 2154F4 801DF244 240401A9 */   addiu     $a0, $zero, 0x1A9
.L801DF248_ovl16:
/* 2154F8 801DF248 00008025 */  or         $s0, $zero, $zero
.L801DF24C_ovl16:
/* 2154FC 801DF24C 2411000F */  addiu      $s1, $zero, 0xF
/* 215500 801DF250 8E6D0004 */  lw         $t5, 0x4($s3)
.L801DF254_ovl16:
/* 215504 801DF254 8E820080 */  lw         $v0, 0x80($s4)
/* 215508 801DF258 24040001 */  addiu      $a0, $zero, 0x1
/* 21550C 801DF25C 000D7080 */  sll        $t6, $t5, 2
glabel func_801DF260_ovl15
/* 215510 801DF260 024E7821 */  addu       $t7, $s2, $t6
/* 215514 801DF264 C5EA0000 */  lwc1       $f10, 0x0($t7)
/* 215518 801DF268 C4480010 */  lwc1       $f8, 0x10($v0)
/* 21551C 801DF26C 460A4401 */  sub.s      $f16, $f8, $f10
/* 215520 801DF270 0C002DAF */  jal        finish_current_thread
/* 215524 801DF274 E4500010 */   swc1      $f16, 0x10($v0)
.L801DF278_ovl12:
/* 215528 801DF278 26100001 */  addiu      $s0, $s0, 0x1
.L801DF27C_ovl14:
/* 21552C 801DF27C 5611FFF5 */  bnel       $s0, $s1, .L801DF254_ovl16
/* 215530 801DF280 8E6D0004 */   lw        $t5, 0x4($s3)
/* 215534 801DF284 8E6C0004 */  lw         $t4, 0x4($s3)
/* 215538 801DF288 3C01801F */  lui        $at, %hi(D_801EF82C_ovl16)
/* 21553C 801DF28C 8E980080 */  lw         $t8, 0x80($s4)
glabel func_801DF290_ovl14
/* 215540 801DF290 000CC880 */  sll        $t9, $t4, 2
glabel func_801DF294_ovl13
/* 215544 801DF294 00390821 */  addu       $at, $at, $t9
/* 215548 801DF298 C432F82C */  lwc1       $f18, %lo(D_801EF82C_ovl16)($at)
glabel func_801DF29C_ovl9
/* 21554C 801DF29C 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 215550 801DF2A0 3C0B800F */  lui        $t3, %hi(D_800EBBE0)
/* 215554 801DF2A4 E7120010 */  swc1       $f18, 0x10($t8)
/* 215558 801DF2A8 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 21555C 801DF2AC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 215560 801DF2B0 3C0F801F */  lui        $t7, %hi(D_801EF7F4_ovl16)
/* 215564 801DF2B4 8C880000 */  lw         $t0, 0x0($a0)
/* 215568 801DF2B8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 21556C 801DF2BC 8FB40028 */  lw         $s4, 0x28($sp)
/* 215570 801DF2C0 00085080 */  sll        $t2, $t0, 2
.L801DF2C4_ovl14:
/* 215574 801DF2C4 016A5821 */  addu       $t3, $t3, $t2
.L801DF2C8_ovl12:
/* 215578 801DF2C8 8D6BBBE0 */  lw         $t3, %lo(D_800EBBE0)($t3)
/* 21557C 801DF2CC 8FB20020 */  lw         $s2, 0x20($sp)
/* 215580 801DF2D0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 215584 801DF2D4 000B4880 */  sll        $t1, $t3, 2
.L801DF2D8_ovl12:
/* 215588 801DF2D8 00290821 */  addu       $at, $at, $t1
/* 21558C 801DF2DC AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 215590 801DF2E0 8E6D0004 */  lw         $t5, 0x4($s3)
.L801DF2E4_ovl14:
/* 215594 801DF2E4 8C8C0000 */  lw         $t4, 0x0($a0)
/* 215598 801DF2E8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 21559C 801DF2EC 000D7080 */  sll        $t6, $t5, 2
.L801DF2F0_ovl17:
/* 2155A0 801DF2F0 01EE7821 */  addu       $t7, $t7, $t6
/* 2155A4 801DF2F4 8DEFF7F4 */  lw         $t7, %lo(D_801EF7F4_ovl16)($t7)
/* 2155A8 801DF2F8 000CC880 */  sll        $t9, $t4, 2
.L801DF2FC_ovl10:
/* 2155AC 801DF2FC 00390821 */  addu       $at, $at, $t9
/* 2155B0 801DF300 8FB30024 */  lw         $s3, 0x24($sp)
/* 2155B4 801DF304 8FB00018 */  lw         $s0, 0x18($sp)
/* 2155B8 801DF308 27BD0030 */  addiu      $sp, $sp, 0x30
/* 2155BC 801DF30C 03E00008 */  jr         $ra
glabel func_801DF310_ovl10
/* 2155C0 801DF310 AC2FDC50 */   sw        $t7, %lo(gEntityVtableIndexArray)($at)
