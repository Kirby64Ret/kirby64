glabel func_8001BCE0
/* 01C8E0 8001BCE0 3C018004 */  lui   $at, %hi(D_80040C88) # $at, 0x8004
/* 01C8E4 8001BCE4 C4200C88 */  lwc1  $f0, %lo(D_80040C88)($at)
/* 01C8E8 8001BCE8 44856000 */  mtc1  $a1, $f12
/* 01C8EC 8001BCEC 44867000 */  mtc1  $a2, $f14
/* 01C8F0 8001BCF0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01C8F4 8001BCF4 46006102 */  mul.s $f4, $f12, $f0
/* 01C8F8 8001BCF8 AFA70044 */  sw    $a3, 0x44($sp)
/* 01C8FC 8001BCFC C7B00044 */  lwc1  $f16, 0x44($sp)
/* 01C900 8001BD00 46007202 */  mul.s $f8, $f14, $f0
/* 01C904 8001BD04 3C0C8004 */  lui   $t4, %hi(lbreflect_Int16SinTable) # $t4, 0x8004
/* 01C908 8001BD08 258CE330 */  addiu $t4, %lo(lbreflect_Int16SinTable) # addiu $t4, $t4, -0x1cd0
/* 01C90C 8001BD0C 46008482 */  mul.s $f18, $f16, $f0
/* 01C910 8001BD10 AFB00004 */  sw    $s0, 4($sp)
/* 01C914 8001BD14 4600218D */  trunc.w.s $f6, $f4
/* 01C918 8001BD18 4600428D */  trunc.w.s $f10, $f8
/* 01C91C 8001BD1C 44033000 */  mfc1  $v1, $f6
/* 01C920 8001BD20 4600910D */  trunc.w.s $f4, $f18
/* 01C924 8001BD24 30630FFF */  andi  $v1, $v1, 0xfff
/* 01C928 8001BD28 3066FFFF */  andi  $a2, $v1, 0xffff
/* 01C92C 8001BD2C 30CF07FF */  andi  $t7, $a2, 0x7ff
/* 01C930 8001BD30 000FC040 */  sll   $t8, $t7, 1
/* 01C934 8001BD34 0198C821 */  addu  $t9, $t4, $t8
/* 01C938 8001BD38 30CE0800 */  andi  $t6, $a2, 0x800
/* 01C93C 8001BD3C 44035000 */  mfc1  $v1, $f10
/* 01C940 8001BD40 44092000 */  mfc1  $t1, $f4
/* 01C944 8001BD44 11C00002 */  beqz  $t6, .L8001BD50_ovl0
/* 01C948 8001BD48 97270000 */   lhu   $a3, ($t9)
/* 01C94C 8001BD4C 00073823 */  negu  $a3, $a3
.L8001BD50_ovl0:
/* 01C950 8001BD50 24C20400 */  addiu $v0, $a2, 0x400
/* 01C954 8001BD54 304F07FF */  andi  $t7, $v0, 0x7ff
/* 01C958 8001BD58 000FC040 */  sll   $t8, $t7, 1
/* 01C95C 8001BD5C 0198C821 */  addu  $t9, $t4, $t8
/* 01C960 8001BD60 304E0800 */  andi  $t6, $v0, 0x800
/* 01C964 8001BD64 11C00002 */  beqz  $t6, .L8001BD70_ovl0
/* 01C968 8001BD68 97250000 */   lhu   $a1, ($t9)
/* 01C96C 8001BD6C 00052823 */  negu  $a1, $a1
.L8001BD70_ovl0:
/* 01C970 8001BD70 30630FFF */  andi  $v1, $v1, 0xfff
/* 01C974 8001BD74 3068FFFF */  andi  $t0, $v1, 0xffff
/* 01C978 8001BD78 311807FF */  andi  $t8, $t0, 0x7ff
/* 01C97C 8001BD7C 0018C840 */  sll   $t9, $t8, 1
/* 01C980 8001BD80 01997021 */  addu  $t6, $t4, $t9
/* 01C984 8001BD84 310F0800 */  andi  $t7, $t0, 0x800
/* 01C988 8001BD88 11E00002 */  beqz  $t7, .L8001BD94_ovl0
/* 01C98C 8001BD8C 95C60000 */   lhu   $a2, ($t6)
/* 01C990 8001BD90 00063023 */  negu  $a2, $a2
.L8001BD94_ovl0:
/* 01C994 8001BD94 25020400 */  addiu $v0, $t0, 0x400
/* 01C998 8001BD98 305807FF */  andi  $t8, $v0, 0x7ff
/* 01C99C 8001BD9C 0018C840 */  sll   $t9, $t8, 1
/* 01C9A0 8001BDA0 01997021 */  addu  $t6, $t4, $t9
/* 01C9A4 8001BDA4 304F0800 */  andi  $t7, $v0, 0x800
/* 01C9A8 8001BDA8 11E00002 */  beqz  $t7, .L8001BDB4_ovl0
/* 01C9AC 8001BDAC 95C30000 */   lhu   $v1, ($t6)
/* 01C9B0 8001BDB0 00031823 */  negu  $v1, $v1
.L8001BDB4_ovl0:
/* 01C9B4 8001BDB4 31290FFF */  andi  $t1, $t1, 0xfff
/* 01C9B8 8001BDB8 312AFFFF */  andi  $t2, $t1, 0xffff
/* 01C9BC 8001BDBC 315907FF */  andi  $t9, $t2, 0x7ff
/* 01C9C0 8001BDC0 00197040 */  sll   $t6, $t9, 1
/* 01C9C4 8001BDC4 018E7821 */  addu  $t7, $t4, $t6
/* 01C9C8 8001BDC8 31580800 */  andi  $t8, $t2, 0x800
/* 01C9CC 8001BDCC 13000002 */  beqz  $t8, .L8001BDD8_ovl0
/* 01C9D0 8001BDD0 95E20000 */   lhu   $v0, ($t7)
/* 01C9D4 8001BDD4 00021023 */  negu  $v0, $v0
.L8001BDD8_ovl0:
/* 01C9D8 8001BDD8 25480400 */  addiu $t0, $t2, 0x400
/* 01C9DC 8001BDDC 311907FF */  andi  $t9, $t0, 0x7ff
/* 01C9E0 8001BDE0 00197040 */  sll   $t6, $t9, 1
/* 01C9E4 8001BDE4 018E7821 */  addu  $t7, $t4, $t6
/* 01C9E8 8001BDE8 31180800 */  andi  $t8, $t0, 0x800
/* 01C9EC 8001BDEC 13000002 */  beqz  $t8, .L8001BDF8_ovl0
/* 01C9F0 8001BDF0 95EB0000 */   lhu   $t3, ($t7)
/* 01C9F4 8001BDF4 000B5823 */  negu  $t3, $t3
.L8001BDF8_ovl0:
/* 01C9F8 8001BDF8 006B0019 */  multu $v1, $t3
/* 01C9FC 8001BDFC 3C10FFFF */  lui   $s0, 0xffff
/* 01CA00 8001BE00 00065023 */  negu  $t2, $a2
/* 01CA04 8001BE04 000A5040 */  sll   $t2, $t2, 1
/* 01CA08 8001BE08 00004012 */  mflo  $t0
/* 01CA0C 8001BE0C 00084383 */  sra   $t0, $t0, 0xe
/* 01CA10 8001BE10 0110C824 */  and   $t9, $t0, $s0
/* 01CA14 8001BE14 00620019 */  multu $v1, $v0
/* 01CA18 8001BE18 0008C400 */  sll   $t8, $t0, 0x10
/* 01CA1C 8001BE1C 00004812 */  mflo  $t1
/* 01CA20 8001BE20 00094B83 */  sra   $t1, $t1, 0xe
/* 01CA24 8001BE24 00097402 */  srl   $t6, $t1, 0x10
/* 01CA28 8001BE28 00E60019 */  multu $a3, $a2
/* 01CA2C 8001BE2C 032E7825 */  or    $t7, $t9, $t6
/* 01CA30 8001BE30 3139FFFF */  andi  $t9, $t1, 0xffff
/* 01CA34 8001BE34 03197025 */  or    $t6, $t8, $t9
/* 01CA38 8001BE38 AC8F0000 */  sw    $t7, ($a0)
/* 01CA3C 8001BE3C 01507824 */  and   $t7, $t2, $s0
/* 01CA40 8001BE40 AC8F0004 */  sw    $t7, 4($a0)
/* 01CA44 8001BE44 AC8E0020 */  sw    $t6, 0x20($a0)
/* 01CA48 8001BE48 000AC400 */  sll   $t8, $t2, 0x10
/* 01CA4C 8001BE4C AC980024 */  sw    $t8, 0x24($a0)
/* 01CA50 8001BE50 00006012 */  mflo  $t4
/* 01CA54 8001BE54 000C63C3 */  sra   $t4, $t4, 0xf
/* 01CA58 8001BE58 00000000 */  nop   
/* 01CA5C 8001BE5C 018B0019 */  multu $t4, $t3
/* 01CA60 8001BE60 0000C812 */  mflo  $t9
/* 01CA64 8001BE64 00197383 */  sra   $t6, $t9, 0xe
/* 01CA68 8001BE68 00000000 */  nop   
/* 01CA6C 8001BE6C 00A20019 */  multu $a1, $v0
/* 01CA70 8001BE70 00007812 */  mflo  $t7
/* 01CA74 8001BE74 000FC383 */  sra   $t8, $t7, 0xe
/* 01CA78 8001BE78 01D86823 */  subu  $t5, $t6, $t8
/* 01CA7C 8001BE7C 01820019 */  multu $t4, $v0
/* 01CA80 8001BE80 0000C812 */  mflo  $t9
/* 01CA84 8001BE84 00197B83 */  sra   $t7, $t9, 0xe
/* 01CA88 8001BE88 00000000 */  nop   
/* 01CA8C 8001BE8C 00AB0019 */  multu $a1, $t3
/* 01CA90 8001BE90 00007012 */  mflo  $t6
/* 01CA94 8001BE94 000EC383 */  sra   $t8, $t6, 0xe
/* 01CA98 8001BE98 01F8C821 */  addu  $t9, $t7, $t8
/* 01CA9C 8001BE9C 00E30019 */  multu $a3, $v1
/* 01CAA0 8001BEA0 00197402 */  srl   $t6, $t9, 0x10
/* 01CAA4 8001BEA4 01B07824 */  and   $t7, $t5, $s0
/* 01CAA8 8001BEA8 01EEC025 */  or    $t8, $t7, $t6
/* 01CAAC 8001BEAC AFB90008 */  sw    $t9, 8($sp)
/* 01CAB0 8001BEB0 AC980008 */  sw    $t8, 8($a0)
/* 01CAB4 8001BEB4 8FAF0008 */  lw    $t7, 8($sp)
/* 01CAB8 8001BEB8 000DCC00 */  sll   $t9, $t5, 0x10
/* 01CABC 8001BEBC AC800018 */  sw    $zero, 0x18($a0)
/* 01CAC0 8001BEC0 31EEFFFF */  andi  $t6, $t7, 0xffff
/* 01CAC4 8001BEC4 00004012 */  mflo  $t0
/* 01CAC8 8001BEC8 032EC025 */  or    $t8, $t9, $t6
/* 01CACC 8001BECC 00084383 */  sra   $t0, $t0, 0xe
/* 01CAD0 8001BED0 00A60019 */  multu $a1, $a2
/* 01CAD4 8001BED4 01107824 */  and   $t7, $t0, $s0
/* 01CAD8 8001BED8 AC8F000C */  sw    $t7, 0xc($a0)
/* 01CADC 8001BEDC AC980028 */  sw    $t8, 0x28($a0)
/* 01CAE0 8001BEE0 0008CC00 */  sll   $t9, $t0, 0x10
/* 01CAE4 8001BEE4 AC99002C */  sw    $t9, 0x2c($a0)
/* 01CAE8 8001BEE8 AC800038 */  sw    $zero, 0x38($a0)
/* 01CAEC 8001BEEC AC80003C */  sw    $zero, 0x3c($a0)
/* 01CAF0 8001BEF0 00004812 */  mflo  $t1
/* 01CAF4 8001BEF4 00094BC3 */  sra   $t1, $t1, 0xf
/* 01CAF8 8001BEF8 00000000 */  nop   
/* 01CAFC 8001BEFC 012B0019 */  multu $t1, $t3
/* 01CB00 8001BF00 00007012 */  mflo  $t6
/* 01CB04 8001BF04 000EC383 */  sra   $t8, $t6, 0xe
/* 01CB08 8001BF08 00000000 */  nop   
/* 01CB0C 8001BF0C 00E20019 */  multu $a3, $v0
/* 01CB10 8001BF10 00007812 */  mflo  $t7
/* 01CB14 8001BF14 000FCB83 */  sra   $t9, $t7, 0xe
/* 01CB18 8001BF18 03196021 */  addu  $t4, $t8, $t9
/* 01CB1C 8001BF1C 01220019 */  multu $t1, $v0
/* 01CB20 8001BF20 00007012 */  mflo  $t6
/* 01CB24 8001BF24 000E7B83 */  sra   $t7, $t6, 0xe
/* 01CB28 8001BF28 01907024 */  and   $t6, $t4, $s0
/* 01CB2C 8001BF2C 00EB0019 */  multu $a3, $t3
/* 01CB30 8001BF30 0000C012 */  mflo  $t8
/* 01CB34 8001BF34 0018CB83 */  sra   $t9, $t8, 0xe
/* 01CB38 8001BF38 01F95023 */  subu  $t2, $t7, $t9
/* 01CB3C 8001BF3C 00A30019 */  multu $a1, $v1
/* 01CB40 8001BF40 000AC402 */  srl   $t8, $t2, 0x10
/* 01CB44 8001BF44 01D87825 */  or    $t7, $t6, $t8
/* 01CB48 8001BF48 314EFFFF */  andi  $t6, $t2, 0xffff
/* 01CB4C 8001BF4C 000CCC00 */  sll   $t9, $t4, 0x10
/* 01CB50 8001BF50 032EC025 */  or    $t8, $t9, $t6
/* 01CB54 8001BF54 AC8F0010 */  sw    $t7, 0x10($a0)
/* 01CB58 8001BF58 240E0001 */  li    $t6, 1
/* 01CB5C 8001BF5C AC980030 */  sw    $t8, 0x30($a0)
/* 01CB60 8001BF60 AC8E001C */  sw    $t6, 0x1c($a0)
/* 01CB64 8001BF64 00001012 */  mflo  $v0
/* 01CB68 8001BF68 00021383 */  sra   $v0, $v0, 0xe
/* 01CB6C 8001BF6C 00507824 */  and   $t7, $v0, $s0
/* 01CB70 8001BF70 0002CC00 */  sll   $t9, $v0, 0x10
/* 01CB74 8001BF74 AC8F0014 */  sw    $t7, 0x14($a0)
/* 01CB78 8001BF78 AC990034 */  sw    $t9, 0x34($a0)
/* 01CB7C 8001BF7C 8FB00004 */  lw    $s0, 4($sp)
/* 01CB80 8001BF80 03E00008 */  jr    $ra
/* 01CB84 8001BF84 27BD0038 */   addiu $sp, $sp, 0x38
.type func_8001BCE0, @function
.size func_8001BCE0, . - func_8001BCE0
