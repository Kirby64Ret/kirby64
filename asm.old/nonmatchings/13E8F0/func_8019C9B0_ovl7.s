glabel func_8019C9B0_ovl7
/* 142A20 8019C9B0 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 142A24 8019C9B4 2484A7C4 */  addiu      $a0, $a0, %lo(D_8004A7C4)
/* 142A28 8019C9B8 8C8E0000 */  lw         $t6, 0x0($a0)
/* 142A2C 8019C9BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 142A30 8019C9C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 142A34 8019C9C4 AFA50024 */  sw         $a1, 0x24($sp)
/* 142A38 8019C9C8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 142A3C 8019C9CC 3C06800E */  lui        $a2, %hi(D_800E1B50)
/* 142A40 8019C9D0 30A500FF */  andi       $a1, $a1, 0xFF
/* 142A44 8019C9D4 000FC080 */  sll        $t8, $t7, 2
/* 142A48 8019C9D8 00D83021 */  addu       $a2, $a2, $t8
/* 142A4C 8019C9DC 8CC61B50 */  lw         $a2, %lo(D_800E1B50)($a2)
/* 142A50 8019C9E0 24010001 */  addiu      $at, $zero, 0x1
/* 142A54 8019C9E4 90C2003C */  lbu        $v0, 0x3C($a2)
/* 142A58 8019C9E8 504000C4 */  beql       $v0, $zero, .L8019CCFC_ovl7
/* 142A5C 8019C9EC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 142A60 8019C9F0 5441000B */  bnel       $v0, $at, .L8019CA20_ovl7
/* 142A64 8019C9F4 24010001 */   addiu     $at, $zero, 0x1
/* 142A68 8019C9F8 A3A50027 */  sb         $a1, 0x27($sp)
/* 142A6C 8019C9FC AFA6001C */  sw         $a2, 0x1C($sp)
/* 142A70 8019CA00 0C0671E7 */  jal        func_8019C79C_ovl7
/* 142A74 8019CA04 E7AC0020 */   swc1      $f12, 0x20($sp)
/* 142A78 8019CA08 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 142A7C 8019CA0C 2484A7C4 */  addiu      $a0, $a0, %lo(D_8004A7C4)
/* 142A80 8019CA10 93A50027 */  lbu        $a1, 0x27($sp)
/* 142A84 8019CA14 8FA6001C */  lw         $a2, 0x1C($sp)
/* 142A88 8019CA18 C7AC0020 */  lwc1       $f12, 0x20($sp)
/* 142A8C 8019CA1C 24010001 */  addiu      $at, $zero, 0x1
.L8019CA20_ovl7:
/* 142A90 8019CA20 10A100B5 */  beq        $a1, $at, .L8019CCF8_ovl7
/* 142A94 8019CA24 00A01825 */   or        $v1, $a1, $zero
/* 142A98 8019CA28 90C2003C */  lbu        $v0, 0x3C($a2)
/* 142A9C 8019CA2C 44854000 */  mtc1       $a1, $f8
/* 142AA0 8019CA30 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 142AA4 8019CA34 44822000 */  mtc1       $v0, $f4
/* 142AA8 8019CA38 04410004 */  bgez       $v0, .L8019CA4C_ovl7
/* 142AAC 8019CA3C 46802020 */   cvt.s.w   $f0, $f4
/* 142AB0 8019CA40 44813000 */  mtc1       $at, $f6
/* 142AB4 8019CA44 00000000 */  nop
/* 142AB8 8019CA48 46060000 */  add.s      $f0, $f0, $f6
.L8019CA4C_ovl7:
/* 142ABC 8019CA4C 04A10005 */  bgez       $a1, .L8019CA64_ovl7
/* 142AC0 8019CA50 468042A0 */   cvt.s.w   $f10, $f8
/* 142AC4 8019CA54 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 142AC8 8019CA58 44818000 */  mtc1       $at, $f16
/* 142ACC 8019CA5C 00000000 */  nop
/* 142AD0 8019CA60 46105280 */  add.s      $f10, $f10, $f16
.L8019CA64_ovl7:
/* 142AD4 8019CA64 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 142AD8 8019CA68 44819000 */  mtc1       $at, $f18
/* 142ADC 8019CA6C 00000000 */  nop
/* 142AE0 8019CA70 46125082 */  mul.s      $f2, $f10, $f18
/* 142AE4 8019CA74 4602003C */  c.lt.s     $f0, $f2
/* 142AE8 8019CA78 00000000 */  nop
/* 142AEC 8019CA7C 45020028 */  bc1fl      .L8019CB20_ovl7
/* 142AF0 8019CA80 46001032 */   c.eq.s    $f2, $f0
/* 142AF4 8019CA84 8C990000 */  lw         $t9, 0x0($a0)
/* 142AF8 8019CA88 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 142AFC 8019CA8C 44812000 */  mtc1       $at, $f4
/* 142B00 8019CA90 8F230000 */  lw         $v1, 0x0($t9)
/* 142B04 8019CA94 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 142B08 8019CA98 00031880 */  sll        $v1, $v1, 2
/* 142B0C 8019CA9C 00230821 */  addu       $at, $at, $v1
/* 142B10 8019CAA0 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 142B14 8019CAA4 3C01801D */  lui        $at, %hi(D_801CDC64_ovl7)
/* 142B18 8019CAA8 46062032 */  c.eq.s     $f4, $f6
/* 142B1C 8019CAAC 00000000 */  nop
/* 142B20 8019CAB0 4500000E */  bc1f       .L8019CAEC_ovl7
/* 142B24 8019CAB4 00000000 */   nop
/* 142B28 8019CAB8 3C01801D */  lui        $at, %hi(D_801CDC60_ovl7)
/* 142B2C 8019CABC C428DC60 */  lwc1       $f8, %lo(D_801CDC60_ovl7)($at)
/* 142B30 8019CAC0 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 142B34 8019CAC4 44815000 */  mtc1       $at, $f10
/* 142B38 8019CAC8 46086402 */  mul.s      $f16, $f12, $f8
/* 142B3C 8019CACC 3C05800F */  lui        $a1, %hi(D_800E9020)
/* 142B40 8019CAD0 24A59020 */  addiu      $a1, $a1, %lo(D_800E9020)
/* 142B44 8019CAD4 00A31021 */  addu       $v0, $a1, $v1
/* 142B48 8019CAD8 C4440000 */  lwc1       $f4, 0x0($v0)
/* 142B4C 8019CADC 460A8483 */  div.s      $f18, $f16, $f10
/* 142B50 8019CAE0 46122181 */  sub.s      $f6, $f4, $f18
/* 142B54 8019CAE4 10000081 */  b          .L8019CCEC_ovl7
/* 142B58 8019CAE8 E4460000 */   swc1      $f6, 0x0($v0)
.L8019CAEC_ovl7:
/* 142B5C 8019CAEC C428DC64 */  lwc1       $f8, %lo(D_801CDC64_ovl7)($at)
/* 142B60 8019CAF0 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 142B64 8019CAF4 44815000 */  mtc1       $at, $f10
/* 142B68 8019CAF8 46086402 */  mul.s      $f16, $f12, $f8
/* 142B6C 8019CAFC 3C05800F */  lui        $a1, %hi(D_800E9020)
/* 142B70 8019CB00 24A59020 */  addiu      $a1, $a1, %lo(D_800E9020)
/* 142B74 8019CB04 00A31021 */  addu       $v0, $a1, $v1
/* 142B78 8019CB08 C4520000 */  lwc1       $f18, 0x0($v0)
/* 142B7C 8019CB0C 460A8103 */  div.s      $f4, $f16, $f10
/* 142B80 8019CB10 46049180 */  add.s      $f6, $f18, $f4
/* 142B84 8019CB14 10000075 */  b          .L8019CCEC_ovl7
/* 142B88 8019CB18 E4460000 */   swc1      $f6, 0x0($v0)
/* 142B8C 8019CB1C 46001032 */  c.eq.s     $f2, $f0
.L8019CB20_ovl7:
/* 142B90 8019CB20 0043082A */  slt        $at, $v0, $v1
/* 142B94 8019CB24 45000027 */  bc1f       .L8019CBC4_ovl7
/* 142B98 8019CB28 00000000 */   nop
/* 142B9C 8019CB2C 8C880000 */  lw         $t0, 0x0($a0)
/* 142BA0 8019CB30 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 142BA4 8019CB34 44814000 */  mtc1       $at, $f8
/* 142BA8 8019CB38 8D030000 */  lw         $v1, 0x0($t0)
/* 142BAC 8019CB3C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 142BB0 8019CB40 00031880 */  sll        $v1, $v1, 2
/* 142BB4 8019CB44 00230821 */  addu       $at, $at, $v1
/* 142BB8 8019CB48 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
/* 142BBC 8019CB4C 3C01801D */  lui        $at, %hi(D_801CDC6C_ovl7)
/* 142BC0 8019CB50 46104032 */  c.eq.s     $f8, $f16
/* 142BC4 8019CB54 00000000 */  nop
/* 142BC8 8019CB58 4500000E */  bc1f       .L8019CB94_ovl7
/* 142BCC 8019CB5C 00000000 */   nop
/* 142BD0 8019CB60 3C01801D */  lui        $at, %hi(D_801CDC68_ovl7)
/* 142BD4 8019CB64 C42ADC68 */  lwc1       $f10, %lo(D_801CDC68_ovl7)($at)
/* 142BD8 8019CB68 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 142BDC 8019CB6C 44812000 */  mtc1       $at, $f4
/* 142BE0 8019CB70 460A6482 */  mul.s      $f18, $f12, $f10
/* 142BE4 8019CB74 3C05800F */  lui        $a1, %hi(D_800E9020)
/* 142BE8 8019CB78 24A59020 */  addiu      $a1, $a1, %lo(D_800E9020)
/* 142BEC 8019CB7C 00A31021 */  addu       $v0, $a1, $v1
/* 142BF0 8019CB80 C4480000 */  lwc1       $f8, 0x0($v0)
/* 142BF4 8019CB84 46049183 */  div.s      $f6, $f18, $f4
/* 142BF8 8019CB88 46064401 */  sub.s      $f16, $f8, $f6
/* 142BFC 8019CB8C 10000057 */  b          .L8019CCEC_ovl7
/* 142C00 8019CB90 E4500000 */   swc1      $f16, 0x0($v0)
.L8019CB94_ovl7:
/* 142C04 8019CB94 C42ADC6C */  lwc1       $f10, %lo(D_801CDC6C_ovl7)($at)
/* 142C08 8019CB98 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 142C0C 8019CB9C 44812000 */  mtc1       $at, $f4
/* 142C10 8019CBA0 460A6482 */  mul.s      $f18, $f12, $f10
/* 142C14 8019CBA4 3C05800F */  lui        $a1, %hi(D_800E9020)
/* 142C18 8019CBA8 24A59020 */  addiu      $a1, $a1, %lo(D_800E9020)
/* 142C1C 8019CBAC 00A31021 */  addu       $v0, $a1, $v1
/* 142C20 8019CBB0 C4460000 */  lwc1       $f6, 0x0($v0)
/* 142C24 8019CBB4 46049203 */  div.s      $f8, $f18, $f4
/* 142C28 8019CBB8 46083400 */  add.s      $f16, $f6, $f8
/* 142C2C 8019CBBC 1000004B */  b          .L8019CCEC_ovl7
/* 142C30 8019CBC0 E4500000 */   swc1      $f16, 0x0($v0)
.L8019CBC4_ovl7:
/* 142C34 8019CBC4 50200028 */  beql       $at, $zero, .L8019CC68_ovl7
/* 142C38 8019CBC8 A0C0003C */   sb        $zero, 0x3C($a2)
/* 142C3C 8019CBCC 8C890000 */  lw         $t1, 0x0($a0)
/* 142C40 8019CBD0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 142C44 8019CBD4 44815000 */  mtc1       $at, $f10
/* 142C48 8019CBD8 8D230000 */  lw         $v1, 0x0($t1)
/* 142C4C 8019CBDC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 142C50 8019CBE0 00031880 */  sll        $v1, $v1, 2
/* 142C54 8019CBE4 00230821 */  addu       $at, $at, $v1
/* 142C58 8019CBE8 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* 142C5C 8019CBEC 3C01801D */  lui        $at, %hi(D_801CDC74_ovl7)
/* 142C60 8019CBF0 46125032 */  c.eq.s     $f10, $f18
/* 142C64 8019CBF4 00000000 */  nop
/* 142C68 8019CBF8 4500000E */  bc1f       .L8019CC34_ovl7
/* 142C6C 8019CBFC 00000000 */   nop
/* 142C70 8019CC00 3C01801D */  lui        $at, %hi(D_801CDC70_ovl7)
/* 142C74 8019CC04 C424DC70 */  lwc1       $f4, %lo(D_801CDC70_ovl7)($at)
/* 142C78 8019CC08 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 142C7C 8019CC0C 44814000 */  mtc1       $at, $f8
/* 142C80 8019CC10 46046182 */  mul.s      $f6, $f12, $f4
/* 142C84 8019CC14 3C05800F */  lui        $a1, %hi(D_800E9020)
/* 142C88 8019CC18 24A59020 */  addiu      $a1, $a1, %lo(D_800E9020)
/* 142C8C 8019CC1C 00A31021 */  addu       $v0, $a1, $v1
/* 142C90 8019CC20 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 142C94 8019CC24 46083403 */  div.s      $f16, $f6, $f8
/* 142C98 8019CC28 46105481 */  sub.s      $f18, $f10, $f16
/* 142C9C 8019CC2C 1000002F */  b          .L8019CCEC_ovl7
/* 142CA0 8019CC30 E4520000 */   swc1      $f18, 0x0($v0)
.L8019CC34_ovl7:
/* 142CA4 8019CC34 C424DC74 */  lwc1       $f4, %lo(D_801CDC74_ovl7)($at)
/* 142CA8 8019CC38 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 142CAC 8019CC3C 44814000 */  mtc1       $at, $f8
/* 142CB0 8019CC40 46046182 */  mul.s      $f6, $f12, $f4
/* 142CB4 8019CC44 3C05800F */  lui        $a1, %hi(D_800E9020)
/* 142CB8 8019CC48 24A59020 */  addiu      $a1, $a1, %lo(D_800E9020)
/* 142CBC 8019CC4C 00A31021 */  addu       $v0, $a1, $v1
/* 142CC0 8019CC50 C4500000 */  lwc1       $f16, 0x0($v0)
/* 142CC4 8019CC54 46083283 */  div.s      $f10, $f6, $f8
/* 142CC8 8019CC58 460A8480 */  add.s      $f18, $f16, $f10
/* 142CCC 8019CC5C 10000023 */  b          .L8019CCEC_ovl7
/* 142CD0 8019CC60 E4520000 */   swc1      $f18, 0x0($v0)
/* 142CD4 8019CC64 A0C0003C */  sb         $zero, 0x3C($a2)
.L8019CC68_ovl7:
/* 142CD8 8019CC68 8C820000 */  lw         $v0, 0x0($a0)
/* 142CDC 8019CC6C 44802000 */  mtc1       $zero, $f4
/* 142CE0 8019CC70 3C05800F */  lui        $a1, %hi(D_800E9020)
/* 142CE4 8019CC74 8C4A0000 */  lw         $t2, 0x0($v0)
/* 142CE8 8019CC78 24A59020 */  addiu      $a1, $a1, %lo(D_800E9020)
/* 142CEC 8019CC7C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 142CF0 8019CC80 000A5880 */  sll        $t3, $t2, 2
/* 142CF4 8019CC84 00AB6021 */  addu       $t4, $a1, $t3
/* 142CF8 8019CC88 E5840000 */  swc1       $f4, 0x0($t4)
/* 142CFC 8019CC8C 8C430000 */  lw         $v1, 0x0($v0)
/* 142D00 8019CC90 44813000 */  mtc1       $at, $f6
/* 142D04 8019CC94 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 142D08 8019CC98 00031880 */  sll        $v1, $v1, 2
/* 142D0C 8019CC9C 00230821 */  addu       $at, $at, $v1
/* 142D10 8019CCA0 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 142D14 8019CCA4 3C01801D */  lui        $at, %hi(D_801CDC7C_ovl7)
/* 142D18 8019CCA8 00A31021 */  addu       $v0, $a1, $v1
/* 142D1C 8019CCAC 46083032 */  c.eq.s     $f6, $f8
/* 142D20 8019CCB0 00000000 */  nop
/* 142D24 8019CCB4 45020009 */  bc1fl      .L8019CCDC_ovl7
/* 142D28 8019CCB8 C4440000 */   lwc1      $f4, 0x0($v0)
/* 142D2C 8019CCBC 00A31021 */  addu       $v0, $a1, $v1
/* 142D30 8019CCC0 3C01801D */  lui        $at, %hi(D_801CDC78_ovl7)
/* 142D34 8019CCC4 C42ADC78 */  lwc1       $f10, %lo(D_801CDC78_ovl7)($at)
/* 142D38 8019CCC8 C4500000 */  lwc1       $f16, 0x0($v0)
/* 142D3C 8019CCCC 460A8480 */  add.s      $f18, $f16, $f10
/* 142D40 8019CCD0 10000009 */  b          .L8019CCF8_ovl7
/* 142D44 8019CCD4 E4520000 */   swc1      $f18, 0x0($v0)
/* 142D48 8019CCD8 C4440000 */  lwc1       $f4, 0x0($v0)
.L8019CCDC_ovl7:
/* 142D4C 8019CCDC C426DC7C */  lwc1       $f6, %lo(D_801CDC7C_ovl7)($at)
/* 142D50 8019CCE0 46062201 */  sub.s      $f8, $f4, $f6
/* 142D54 8019CCE4 10000004 */  b          .L8019CCF8_ovl7
/* 142D58 8019CCE8 E4480000 */   swc1      $f8, 0x0($v0)
.L8019CCEC_ovl7:
/* 142D5C 8019CCEC 90CD003C */  lbu        $t5, 0x3C($a2)
/* 142D60 8019CCF0 25AE0001 */  addiu      $t6, $t5, 0x1
/* 142D64 8019CCF4 A0CE003C */  sb         $t6, 0x3C($a2)
.L8019CCF8_ovl7:
/* 142D68 8019CCF8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8019CCFC_ovl7:
/* 142D6C 8019CCFC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 142D70 8019CD00 03E00008 */  jr         $ra
/* 142D74 8019CD04 00000000 */   nop
