glabel func_801EDBEC_ovl9
/* 19BC3C 801EDBEC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 19BC40 801EDBF0 AFB10024 */  sw         $s1, 0x24($sp)
/* 19BC44 801EDBF4 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 19BC48 801EDBF8 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 19BC4C 801EDBFC 8E2E0000 */  lw         $t6, 0x0($s1)
/* 19BC50 801EDC00 AFBF002C */  sw         $ra, 0x2C($sp)
/* 19BC54 801EDC04 AFB20028 */  sw         $s2, 0x28($sp)
/* 19BC58 801EDC08 AFB00020 */  sw         $s0, 0x20($sp)
/* 19BC5C 801EDC0C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 19BC60 801EDC10 AFA40038 */  sw         $a0, 0x38($sp)
/* 19BC64 801EDC14 8DC20000 */  lw         $v0, 0x0($t6)
/* 19BC68 801EDC18 3C18800E */  lui        $t8, %hi(D_800E7880)
/* 19BC6C 801EDC1C 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 19BC70 801EDC20 0302C021 */  addu       $t8, $t8, $v0
/* 19BC74 801EDC24 93187880 */  lbu        $t8, %lo(D_800E7880)($t8)
/* 19BC78 801EDC28 00027880 */  sll        $t7, $v0, 2
/* 19BC7C 801EDC2C 020F8021 */  addu       $s0, $s0, $t7
/* 19BC80 801EDC30 3C04801F */  lui        $a0, %hi(func_801ECAD8_ovl9)
/* 19BC84 801EDC34 2719FFFB */  addiu      $t9, $t8, -0x5
/* 19BC88 801EDC38 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
/* 19BC8C 801EDC3C AFB90030 */  sw         $t9, 0x30($sp)
/* 19BC90 801EDC40 0C068354 */  jal        func_801A0D50_ovl7
.L801EDC44_ovl16:
/* 19BC94 801EDC44 2484CAD8 */   addiu     $a0, $a0, %lo(func_801ECAD8_ovl9)
/* 19BC98 801EDC48 8E290000 */  lw         $t1, 0x0($s1)
/* 19BC9C 801EDC4C 3C08800B */  lui        $t0, %hi(func_800B72AC)
/* 19BCA0 801EDC50 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19BCA4 801EDC54 8D2A0000 */  lw         $t2, 0x0($t1)
/* 19BCA8 801EDC58 250872AC */  addiu      $t0, $t0, %lo(func_800B72AC)
/* 19BCAC 801EDC5C 000A5880 */  sll        $t3, $t2, 2
.L801EDC60_ovl16:
/* 19BCB0 801EDC60 002B0821 */  addu       $at, $at, $t3
/* 19BCB4 801EDC64 0C02CCFD */  jal        func_800B33F4
/* 19BCB8 801EDC68 AC28EF90 */   sw        $t0, %lo(D_800DEF90)($at)
/* 19BCBC 801EDC6C 8E240000 */  lw         $a0, 0x0($s1)
.L801EDC70_ovl16:
/* 19BCC0 801EDC70 3C01800F */  lui        $at, %hi(D_800E8920)
/* 19BCC4 801EDC74 3C18800E */  lui        $t8, %hi(D_800E77A0)
.L801EDC78_ovl10:
/* 19BCC8 801EDC78 8C8C0000 */  lw         $t4, 0x0($a0)
/* 19BCCC 801EDC7C 000C6880 */  sll        $t5, $t4, 2
/* 19BCD0 801EDC80 002D0821 */  addu       $at, $at, $t5
/* 19BCD4 801EDC84 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
.L801EDC88_ovl16:
/* 19BCD8 801EDC88 8C8E0000 */  lw         $t6, 0x0($a0)
.L801EDC8C_ovl16:
/* 19BCDC 801EDC8C 000E7840 */  sll        $t7, $t6, 1
/* 19BCE0 801EDC90 030FC021 */  addu       $t8, $t8, $t7
/* 19BCE4 801EDC94 971877A0 */  lhu        $t8, %lo(D_800E77A0)($t8)
/* 19BCE8 801EDC98 2719FFBE */  addiu      $t9, $t8, -0x42
/* 19BCEC 801EDC9C 2F210029 */  sltiu      $at, $t9, 0x29
/* 19BCF0 801EDCA0 10200028 */  beqz       $at, .L801EDD44_ovl9
/* 19BCF4 801EDCA4 0019C880 */   sll       $t9, $t9, 2
/* 19BCF8 801EDCA8 3C018022 */  lui        $at, %hi(jtbl_8021D470_ovl9)
/* 19BCFC 801EDCAC 00390821 */  addu       $at, $at, $t9
/* 19BD00 801EDCB0 8C39D470 */  lw         $t9, %lo(jtbl_8021D470_ovl9)($at)
.L801EDCB4_ovl10:
/* 19BD04 801EDCB4 03200008 */  jr         $t9
/* 19BD08 801EDCB8 00000000 */   nop
/* 19BD0C 801EDCBC 8FB20030 */  lw         $s2, 0x30($sp)
.L801EDCC0_ovl16:
/* 19BD10 801EDCC0 3C098022 */  lui        $t1, %hi(D_8021C1E4_ovl9)
/* 19BD14 801EDCC4 3C048022 */  lui        $a0, %hi(D_8021C208_ovl9)
/* 19BD18 801EDCC8 00129080 */  sll        $s2, $s2, 2
/* 19BD1C 801EDCCC 01324821 */  addu       $t1, $t1, $s2
/* 19BD20 801EDCD0 8D29C1E4 */  lw         $t1, %lo(D_8021C1E4_ovl9)($t1)
.L801EDCD4_ovl10:
/* 19BD24 801EDCD4 00922021 */  addu       $a0, $a0, $s2
/* 19BD28 801EDCD8 AE090088 */  sw         $t1, 0x88($s0)
/* 19BD2C 801EDCDC 0C02A5D8 */  jal        func_800A9760
/* 19BD30 801EDCE0 8C84C208 */   lw        $a0, %lo(D_8021C208_ovl9)($a0)
.L801EDCE4_ovl16:
/* 19BD34 801EDCE4 1000001A */  b          .L801EDD50_ovl9
/* 19BD38 801EDCE8 8E020088 */   lw        $v0, 0x88($s0)
.L801EDCEC_ovl10:
/* 19BD3C 801EDCEC 8FB20030 */  lw         $s2, 0x30($sp)
/* 19BD40 801EDCF0 3C0A8022 */  lui        $t2, %hi(D_8021C1F0_ovl9)
/* 19BD44 801EDCF4 3C048022 */  lui        $a0, %hi(D_8021C214_ovl9)
/* 19BD48 801EDCF8 00129080 */  sll        $s2, $s2, 2
.L801EDCFC_ovl16:
/* 19BD4C 801EDCFC 01525021 */  addu       $t2, $t2, $s2
/* 19BD50 801EDD00 8D4AC1F0 */  lw         $t2, %lo(D_8021C1F0_ovl9)($t2)
/* 19BD54 801EDD04 00922021 */  addu       $a0, $a0, $s2
/* 19BD58 801EDD08 AE0A0088 */  sw         $t2, 0x88($s0)
/* 19BD5C 801EDD0C 0C02A5D8 */  jal        func_800A9760
/* 19BD60 801EDD10 8C84C214 */   lw        $a0, %lo(D_8021C214_ovl9)($a0)
/* 19BD64 801EDD14 1000000E */  b          .L801EDD50_ovl9
/* 19BD68 801EDD18 8E020088 */   lw        $v0, 0x88($s0)
glabel func_801EDD1C_ovl10
/* 19BD6C 801EDD1C 8FB20030 */  lw         $s2, 0x30($sp)
/* 19BD70 801EDD20 3C088022 */  lui        $t0, %hi(D_8021C1FC_ovl9)
glabel func_801EDD24_ovl16
/* 19BD74 801EDD24 3C048022 */  lui        $a0, %hi(D_8021C220_ovl9)
/* 19BD78 801EDD28 00129080 */  sll        $s2, $s2, 2
/* 19BD7C 801EDD2C 01124021 */  addu       $t0, $t0, $s2
/* 19BD80 801EDD30 8D08C1FC */  lw         $t0, %lo(D_8021C1FC_ovl9)($t0)
/* 19BD84 801EDD34 00922021 */  addu       $a0, $a0, $s2
/* 19BD88 801EDD38 AE080088 */  sw         $t0, 0x88($s0)
/* 19BD8C 801EDD3C 0C02A5D8 */  jal        func_800A9760
/* 19BD90 801EDD40 8C84C220 */   lw        $a0, %lo(D_8021C220_ovl9)($a0)
.L801EDD44_ovl9:
/* 19BD94 801EDD44 8FB20030 */  lw         $s2, 0x30($sp)
/* 19BD98 801EDD48 00129080 */  sll        $s2, $s2, 2
/* 19BD9C 801EDD4C 8E020088 */  lw         $v0, 0x88($s0)
.L801EDD50_ovl9:
/* 19BDA0 801EDD50 3C01800E */  lui        $at, %hi(D_800E0490)
/* 19BDA4 801EDD54 8C4B0014 */  lw         $t3, 0x14($v0)
/* 19BDA8 801EDD58 AE0B008C */  sw         $t3, 0x8C($s0)
/* 19BDAC 801EDD5C 8C4C0018 */  lw         $t4, 0x18($v0)
/* 19BDB0 801EDD60 AE0C0094 */  sw         $t4, 0x94($s0)
/* 19BDB4 801EDD64 8E2E0000 */  lw         $t6, 0x0($s1)
/* 19BDB8 801EDD68 8C4D0010 */  lw         $t5, 0x10($v0)
/* 19BDBC 801EDD6C 8DCF0000 */  lw         $t7, 0x0($t6)
.L801EDD70_ovl16:
/* 19BDC0 801EDD70 000FC080 */  sll        $t8, $t7, 2
.L801EDD74_ovl16:
/* 19BDC4 801EDD74 00380821 */  addu       $at, $at, $t8
/* 19BDC8 801EDD78 AC2D0490 */  sw         $t5, %lo(D_800E0490)($at)
/* 19BDCC 801EDD7C 8E190088 */  lw         $t9, 0x88($s0)
/* 19BDD0 801EDD80 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 19BDD4 801EDD84 8F240010 */   lw        $a0, 0x10($t9)
/* 19BDD8 801EDD88 8E2A0000 */  lw         $t2, 0x0($s1)
.L801EDD8C_ovl16:
/* 19BDDC 801EDD8C 8E090088 */  lw         $t1, 0x88($s0)
/* 19BDE0 801EDD90 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 19BDE4 801EDD94 8D480000 */  lw         $t0, 0x0($t2)
/* 19BDE8 801EDD98 C5240000 */  lwc1       $f4, 0x0($t1)
/* 19BDEC 801EDD9C 24040041 */  addiu      $a0, $zero, 0x41
/* 19BDF0 801EDDA0 00085880 */  sll        $t3, $t0, 2
.L801EDDA4_ovl16:
/* 19BDF4 801EDDA4 002B0821 */  addu       $at, $at, $t3
.L801EDDA8_ovl16:
/* 19BDF8 801EDDA8 E4247B20 */  swc1       $f4, %lo(D_800E7B20)($at)
/* 19BDFC 801EDDAC 3C018022 */  lui        $at, %hi(D_8021C244_ovl9)
/* 19BE00 801EDDB0 00320821 */  addu       $at, $at, $s2
/* 19BE04 801EDDB4 C426C244 */  lwc1       $f6, %lo(D_8021C244_ovl9)($at)
/* 19BE08 801EDDB8 8E0C0080 */  lw         $t4, 0x80($s0)
.L801EDDBC_ovl16:
/* 19BE0C 801EDDBC 3C01C448 */  lui        $at, (0xC4480000 >> 16)
/* 19BE10 801EDDC0 44814000 */  mtc1       $at, $f8
/* 19BE14 801EDDC4 E5860010 */  swc1       $f6, 0x10($t4)
/* 19BE18 801EDDC8 8E0E0080 */  lw         $t6, 0x80($s0)
/* 19BE1C 801EDDCC 3C01C080 */  lui        $at, (0xC0800000 >> 16)
/* 19BE20 801EDDD0 44815000 */  mtc1       $at, $f10
/* 19BE24 801EDDD4 E5C80018 */  swc1       $f8, 0x18($t6)
/* 19BE28 801EDDD8 8E2F0000 */  lw         $t7, 0x0($s1)
/* 19BE2C 801EDDDC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19BE30 801EDDE0 8DED0000 */  lw         $t5, 0x0($t7)
/* 19BE34 801EDDE4 000DC080 */  sll        $t8, $t5, 2
/* 19BE38 801EDDE8 00380821 */  addu       $at, $at, $t8
/* 19BE3C 801EDDEC 0C006291 */  jal        random_soft_s32_range
.L801EDDF0_ovl10:
/* 19BE40 801EDDF0 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
/* 19BE44 801EDDF4 44828000 */  mtc1       $v0, $f16
/* 19BE48 801EDDF8 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 19BE4C 801EDDFC 44812000 */  mtc1       $at, $f4
/* 19BE50 801EDE00 468084A0 */  cvt.s.w    $f18, $f16
/* 19BE54 801EDE04 3C0143A0 */  lui        $at, (0x43A00000 >> 16)
/* 19BE58 801EDE08 44814000 */  mtc1       $at, $f8
/* 19BE5C 801EDE0C 8E390000 */  lw         $t9, 0x0($s1)
/* 19BE60 801EDE10 3C09800E */  lui        $t1, %hi(D_800E5F90)
/* 19BE64 801EDE14 3C0A800E */  lui        $t2, %hi(D_800E6BD0)
/* 19BE68 801EDE18 46049182 */  mul.s      $f6, $f18, $f4
/* 19BE6C 801EDE1C 8F230000 */  lw         $v1, 0x0($t9)
/* 19BE70 801EDE20 254A6BD0 */  addiu      $t2, $t2, %lo(D_800E6BD0)
/* 19BE74 801EDE24 25295F90 */  addiu      $t1, $t1, %lo(D_800E5F90)
.L801EDE28_ovl10:
/* 19BE78 801EDE28 00031880 */  sll        $v1, $v1, 2
/* 19BE7C 801EDE2C 00692021 */  addu       $a0, $v1, $t1
/* 19BE80 801EDE30 006A2821 */  addu       $a1, $v1, $t2
.L801EDE34_ovl10:
/* 19BE84 801EDE34 46083501 */  sub.s      $f20, $f6, $f8
/* 19BE88 801EDE38 4406A000 */  mfc1       $a2, $f20
.L801EDE3C_ovl10:
/* 19BE8C 801EDE3C 0C03E65D */  jal        func_800F9974
/* 19BE90 801EDE40 00000000 */   nop
/* 19BE94 801EDE44 10400011 */  beqz       $v0, .L801EDE8C_ovl9
/* 19BE98 801EDE48 3C0B800E */   lui       $t3, %hi(D_800E5F90)
/* 19BE9C 801EDE4C 8E280000 */  lw         $t0, 0x0($s1)
glabel func_801EDE50_ovl16
/* 19BEA0 801EDE50 4600A507 */  neg.s      $f20, $f20
.L801EDE54_ovl10:
/* 19BEA4 801EDE54 3C0C800E */  lui        $t4, %hi(D_800E6BD0)
/* 19BEA8 801EDE58 8D030000 */  lw         $v1, 0x0($t0)
/* 19BEAC 801EDE5C 258C6BD0 */  addiu      $t4, $t4, %lo(D_800E6BD0)
/* 19BEB0 801EDE60 4406A000 */  mfc1       $a2, $f20
/* 19BEB4 801EDE64 256B5F90 */  addiu      $t3, $t3, %lo(D_800E5F90)
/* 19BEB8 801EDE68 00031880 */  sll        $v1, $v1, 2
/* 19BEBC 801EDE6C 006B2021 */  addu       $a0, $v1, $t3
/* 19BEC0 801EDE70 0C03E65D */  jal        func_800F9974
/* 19BEC4 801EDE74 006C2821 */   addu      $a1, $v1, $t4
/* 19BEC8 801EDE78 50400005 */  beql       $v0, $zero, .L801EDE90_ovl9
/* 19BECC 801EDE7C 8E240000 */   lw        $a0, 0x0($s1)
/* 19BED0 801EDE80 8E2E0000 */  lw         $t6, 0x0($s1)
/* 19BED4 801EDE84 0C067656 */  jal        func_8019D958_ovl7
/* 19BED8 801EDE88 95C40002 */   lhu       $a0, 0x2($t6)
.L801EDE8C_ovl9:
/* 19BEDC 801EDE8C 8E240000 */  lw         $a0, 0x0($s1)
.L801EDE90_ovl9:
/* 19BEE0 801EDE90 3C02800E */  lui        $v0, %hi(D_800E5F90)
.L801EDE94_ovl10:
/* 19BEE4 801EDE94 24010002 */  addiu      $at, $zero, 0x2
/* 19BEE8 801EDE98 8C830000 */  lw         $v1, 0x0($a0)
/* 19BEEC 801EDE9C 240F0001 */  addiu      $t7, $zero, 0x1
/* 19BEF0 801EDEA0 00031880 */  sll        $v1, $v1, 2
/* 19BEF4 801EDEA4 00431021 */  addu       $v0, $v0, $v1
/* 19BEF8 801EDEA8 8C425F90 */  lw         $v0, %lo(D_800E5F90)($v0)
/* 19BEFC 801EDEAC 10410003 */  beq        $v0, $at, .L801EDEBC_ovl9
/* 19BF00 801EDEB0 24010004 */   addiu     $at, $zero, 0x4
/* 19BF04 801EDEB4 14410007 */  bne        $v0, $at, .L801EDED4_ovl9
/* 19BF08 801EDEB8 00000000 */   nop
.L801EDEBC_ovl9:
/* 19BF0C 801EDEBC A20F0040 */  sb         $t7, 0x40($s0)
/* 19BF10 801EDEC0 0C068FA0 */  jal        func_801A3E80_ovl7
/* 19BF14 801EDEC4 8FA40038 */   lw        $a0, 0x38($sp)
/* 19BF18 801EDEC8 8E240000 */  lw         $a0, 0x0($s1)
/* 19BF1C 801EDECC 8C830000 */  lw         $v1, 0x0($a0)
/* 19BF20 801EDED0 00031880 */  sll        $v1, $v1, 2
.L801EDED4_ovl9:
/* 19BF24 801EDED4 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
/* 19BF28 801EDED8 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
/* 19BF2C 801EDEDC 00436821 */  addu       $t5, $v0, $v1
/* 19BF30 801EDEE0 C5AA0000 */  lwc1       $f10, 0x0($t5)
.L801EDEE4_ovl10:
/* 19BF34 801EDEE4 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 19BF38 801EDEE8 00230821 */  addu       $at, $at, $v1
/* 19BF3C 801EDEEC E42AA6E0 */  swc1       $f10, %lo(D_800EA6E0)($at)
/* 19BF40 801EDEF0 8C830000 */  lw         $v1, 0x0($a0)
.L801EDEF4_ovl16:
/* 19BF44 801EDEF4 3C05800E */  lui        $a1, %hi(gEntitiesNextPosZArray)
/* 19BF48 801EDEF8 24A52950 */  addiu      $a1, $a1, %lo(gEntitiesNextPosZArray)
/* 19BF4C 801EDEFC 00031880 */  sll        $v1, $v1, 2
/* 19BF50 801EDF00 00A3C021 */  addu       $t8, $a1, $v1
.L801EDF04_ovl16:
/* 19BF54 801EDF04 C7100000 */  lwc1       $f16, 0x0($t8)
.L801EDF08_ovl16:
/* 19BF58 801EDF08 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19BF5C 801EDF0C 00230821 */  addu       $at, $at, $v1
/* 19BF60 801EDF10 E430A8A0 */  swc1       $f16, %lo(D_800EA8A0)($at)
/* 19BF64 801EDF14 8C990000 */  lw         $t9, 0x0($a0)
/* 19BF68 801EDF18 C4520000 */  lwc1       $f18, 0x0($v0)
/* 19BF6C 801EDF1C 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
/* 19BF70 801EDF20 00194880 */  sll        $t1, $t9, 2
/* 19BF74 801EDF24 00495021 */  addu       $t2, $v0, $t1
/* 19BF78 801EDF28 E5520000 */  swc1       $f18, 0x0($t2)
/* 19BF7C 801EDF2C 8C880000 */  lw         $t0, 0x0($a0)
/* 19BF80 801EDF30 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
.L801EDF34_ovl10:
/* 19BF84 801EDF34 C6040000 */  lwc1       $f4, 0x0($s0)
/* 19BF88 801EDF38 00085880 */  sll        $t3, $t0, 2
/* 19BF8C 801EDF3C 020B6021 */  addu       $t4, $s0, $t3
/* 19BF90 801EDF40 E5840000 */  swc1       $f4, 0x0($t4)
/* 19BF94 801EDF44 8C8E0000 */  lw         $t6, 0x0($a0)
/* 19BF98 801EDF48 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 19BF9C 801EDF4C 000E7880 */  sll        $t7, $t6, 2
/* 19BFA0 801EDF50 00AF6821 */  addu       $t5, $a1, $t7
/* 19BFA4 801EDF54 0C066E46 */  jal        func_8019B918_ovl7
glabel func_801EDF58_ovl10
/* 19BFA8 801EDF58 E5A60000 */   swc1      $f6, 0x0($t5)
/* 19BFAC 801EDF5C 1440000D */  bnez       $v0, .L801EDF94_ovl9
/* 19BFB0 801EDF60 3C014220 */   lui       $at, (0x42200000 >> 16)
/* 19BFB4 801EDF64 4481A000 */  mtc1       $at, $f20
/* 19BFB8 801EDF68 00000000 */  nop
/* 19BFBC 801EDF6C 8E380000 */  lw         $t8, 0x0($s1)
.L801EDF70_ovl9:
/* 19BFC0 801EDF70 8F190000 */  lw         $t9, 0x0($t8)
/* 19BFC4 801EDF74 00194880 */  sll        $t1, $t9, 2
/* 19BFC8 801EDF78 02091021 */  addu       $v0, $s0, $t1
/* 19BFCC 801EDF7C C4480000 */  lwc1       $f8, 0x0($v0)
/* 19BFD0 801EDF80 46144280 */  add.s      $f10, $f8, $f20
glabel func_801EDF84_ovl10
/* 19BFD4 801EDF84 0C066E46 */  jal        func_8019B918_ovl7
/* 19BFD8 801EDF88 E44A0000 */   swc1      $f10, 0x0($v0)
/* 19BFDC 801EDF8C 5040FFF8 */  beql       $v0, $zero, .L801EDF70_ovl9
/* 19BFE0 801EDF90 8E380000 */   lw        $t8, 0x0($s1)
.L801EDF94_ovl9:
/* 19BFE4 801EDF94 8E240000 */  lw         $a0, 0x0($s1)
/* 19BFE8 801EDF98 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 19BFEC 801EDF9C 3C0B8022 */  lui        $t3, %hi(D_8021C238_ovl9)
/* 19BFF0 801EDFA0 8C830000 */  lw         $v1, 0x0($a0)
/* 19BFF4 801EDFA4 01725821 */  addu       $t3, $t3, $s2
/* 19BFF8 801EDFA8 240F0001 */  addiu      $t7, $zero, 0x1
/* 19BFFC 801EDFAC 00031880 */  sll        $v1, $v1, 2
/* 19C000 801EDFB0 00230821 */  addu       $at, $at, $v1
/* 19C004 801EDFB4 C430A6E0 */  lwc1       $f16, %lo(D_800EA6E0)($at)
/* 19C008 801EDFB8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 19C00C 801EDFBC 00230821 */  addu       $at, $at, $v1
/* 19C010 801EDFC0 E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
/* 19C014 801EDFC4 8C8A0000 */  lw         $t2, 0x0($a0)
/* 19C018 801EDFC8 3C018022 */  lui        $at, %hi(D_8021C22C_ovl9)
/* 19C01C 801EDFCC 00320821 */  addu       $at, $at, $s2
/* 19C020 801EDFD0 000A4080 */  sll        $t0, $t2, 2
/* 19C024 801EDFD4 02081021 */  addu       $v0, $s0, $t0
/* 19C028 801EDFD8 C4520000 */  lwc1       $f18, 0x0($v0)
/* 19C02C 801EDFDC C424C22C */  lwc1       $f4, %lo(D_8021C22C_ovl9)($at)
/* 19C030 801EDFE0 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19C034 801EDFE4 8FBF002C */  lw         $ra, 0x2C($sp)
/* 19C038 801EDFE8 46049180 */  add.s      $f6, $f18, $f4
/* 19C03C 801EDFEC 8FB00020 */  lw         $s0, 0x20($sp)
/* 19C040 801EDFF0 8FB20028 */  lw         $s2, 0x28($sp)
/* 19C044 801EDFF4 8FB10024 */  lw         $s1, 0x24($sp)
/* 19C048 801EDFF8 E4460000 */  swc1       $f6, 0x0($v0)
/* 19C04C 801EDFFC 8C830000 */  lw         $v1, 0x0($a0)
/* 19C050 801EE000 8D6BC238 */  lw         $t3, %lo(D_8021C238_ovl9)($t3)
/* 19C054 801EE004 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 19C058 801EE008 00031880 */  sll        $v1, $v1, 2
/* 19C05C 801EE00C 00230821 */  addu       $at, $at, $v1
/* 19C060 801EE010 C428A8A0 */  lwc1       $f8, %lo(D_800EA8A0)($at)
.L801EE014_ovl16:
/* 19C064 801EE014 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 19C068 801EE018 00230821 */  addu       $at, $at, $v1
/* 19C06C 801EE01C E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 19C070 801EE020 8C8C0000 */  lw         $t4, 0x0($a0)
/* 19C074 801EE024 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 19C078 801EE028 000C7080 */  sll        $t6, $t4, 2
/* 19C07C 801EE02C 002E0821 */  addu       $at, $at, $t6
/* 19C080 801EE030 AC2B9E20 */  sw         $t3, %lo(D_800E9E20)($at)
/* 19C084 801EE034 8C8D0000 */  lw         $t5, 0x0($a0)
/* 19C088 801EE038 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 19C08C 801EE03C 000DC080 */  sll        $t8, $t5, 2
/* 19C090 801EE040 00380821 */  addu       $at, $at, $t8
/* 19C094 801EE044 AC2F9FE0 */  sw         $t7, %lo(D_800E9FE0)($at)
glabel func_801EE048_ovl10
/* 19C098 801EE048 8C990000 */  lw         $t9, 0x0($a0)
/* 19C09C 801EE04C 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
glabel func_801EE050_ovl10
/* 19C0A0 801EE050 27BD0038 */  addiu      $sp, $sp, 0x38
/* 19C0A4 801EE054 00194880 */  sll        $t1, $t9, 2
/* 19C0A8 801EE058 00290821 */  addu       $at, $at, $t1
/* 19C0AC 801EE05C 03E00008 */  jr         $ra
/* 19C0B0 801EE060 AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
