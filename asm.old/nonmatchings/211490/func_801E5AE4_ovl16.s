glabel func_801E5AE4_ovl16
/* 21BD94 801E5AE4 27BDFF88 */  addiu      $sp, $sp, -0x78
.L801E5AE8_ovl15:
/* 21BD98 801E5AE8 AFB1004C */  sw         $s1, 0x4C($sp)
.L801E5AEC_ovl15:
/* 21BD9C 801E5AEC 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 21BDA0 801E5AF0 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 21BDA4 801E5AF4 8E2F0000 */  lw         $t7, 0x0($s1)
.L801E5AF8_ovl10:
/* 21BDA8 801E5AF8 AFBF006C */  sw         $ra, 0x6C($sp)
.L801E5AFC_ovl10:
/* 21BDAC 801E5AFC AFBE0068 */  sw         $fp, 0x68($sp)
/* 21BDB0 801E5B00 AFB70064 */  sw         $s7, 0x64($sp)
/* 21BDB4 801E5B04 AFB60060 */  sw         $s6, 0x60($sp)
glabel func_801E5B08_ovl10
/* 21BDB8 801E5B08 AFB5005C */  sw         $s5, 0x5C($sp)
/* 21BDBC 801E5B0C AFB40058 */  sw         $s4, 0x58($sp)
/* 21BDC0 801E5B10 AFB30054 */  sw         $s3, 0x54($sp)
/* 21BDC4 801E5B14 AFB20050 */  sw         $s2, 0x50($sp)
/* 21BDC8 801E5B18 AFB00048 */  sw         $s0, 0x48($sp)
/* 21BDCC 801E5B1C F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 21BDD0 801E5B20 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 21BDD4 801E5B24 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 21BDD8 801E5B28 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 21BDDC 801E5B2C F7B60020 */  sdc1       $f22, 0x20($sp)
/* 21BDE0 801E5B30 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 21BDE4 801E5B34 AFA40078 */  sw         $a0, 0x78($sp)
/* 21BDE8 801E5B38 8DF80000 */  lw         $t8, 0x0($t7)
/* 21BDEC 801E5B3C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 21BDF0 801E5B40 240E0014 */  addiu      $t6, $zero, 0x14
/* 21BDF4 801E5B44 0018C880 */  sll        $t9, $t8, 2
/* 21BDF8 801E5B48 00390821 */  addu       $at, $at, $t9
.L801E5B4C_ovl15:
/* 21BDFC 801E5B4C 3C040001 */  lui        $a0, (0x104D2 >> 16)
/* 21BE00 801E5B50 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 21BE04 801E5B54 0C02A806 */  jal        func_800AA018
/* 21BE08 801E5B58 348404D2 */   ori       $a0, $a0, (0x104D2 & 0xFFFF)
/* 21BE0C 801E5B5C 3C040001 */  lui        $a0, (0x104D6 >> 16)
/* 21BE10 801E5B60 0C02A806 */  jal        func_800AA018
/* 21BE14 801E5B64 348404D6 */   ori       $a0, $a0, (0x104D6 & 0xFFFF)
/* 21BE18 801E5B68 8E220000 */  lw         $v0, 0x0($s1)
/* 21BE1C 801E5B6C 3C01800F */  lui        $at, %hi(D_800E9720)
/* 21BE20 801E5B70 3C12800F */  lui        $s2, %hi(D_800EA6E0)
/* 21BE24 801E5B74 8C480000 */  lw         $t0, 0x0($v0)
/* 21BE28 801E5B78 2652A6E0 */  addiu      $s2, $s2, %lo(D_800EA6E0)
/* 21BE2C 801E5B7C 24040002 */  addiu      $a0, $zero, 0x2
/* 21BE30 801E5B80 00084880 */  sll        $t1, $t0, 2
/* 21BE34 801E5B84 00290821 */  addu       $at, $at, $t1
/* 21BE38 801E5B88 AC209720 */  sw         $zero, %lo(D_800E9720)($at)
/* 21BE3C 801E5B8C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 21BE40 801E5B90 3C01800F */  lui        $at, %hi(D_800E9AA0)
.L801E5B94_ovl15:
/* 21BE44 801E5B94 000A5880 */  sll        $t3, $t2, 2
/* 21BE48 801E5B98 002B0821 */  addu       $at, $at, $t3
/* 21BE4C 801E5B9C AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 21BE50 801E5BA0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 21BE54 801E5BA4 3C01801F */  lui        $at, %hi(func_801EFFC0_ovl16)
.L801E5BA8_ovl9:
/* 21BE58 801E5BA8 C424FFC0 */  lwc1       $f4, %lo(func_801EFFC0_ovl16)($at)
glabel D_801E5BAC_ovl13
/* 21BE5C 801E5BAC 000C6880 */  sll        $t5, $t4, 2
/* 21BE60 801E5BB0 024D7821 */  addu       $t7, $s2, $t5
/* 21BE64 801E5BB4 0C006291 */  jal        random_soft_s32_range
glabel D_801E5BB8_ovl13
/* 21BE68 801E5BB8 E5E40000 */   swc1      $f4, 0x0($t7)
/* 21BE6C 801E5BBC 1040000D */  beqz       $v0, .L801E5BF4_ovl16
/* 21BE70 801E5BC0 24170018 */   addiu     $s7, $zero, 0x18
glabel D_801E5BC4_ovl13
/* 21BE74 801E5BC4 8E220000 */  lw         $v0, 0x0($s1)
/* 21BE78 801E5BC8 3C01801F */  lui        $at, %hi(func_801EFFC0_ovl16 + 0x4)
/* 21BE7C 801E5BCC C438FFC4 */  lwc1       $f24, %lo(func_801EFFC0_ovl16 + 0x4)($at)
/* 21BE80 801E5BD0 8C580000 */  lw         $t8, 0x0($v0)
/* 21BE84 801E5BD4 3C1E800F */  lui        $fp, %hi(D_800EA8A0)
/* 21BE88 801E5BD8 27DEA8A0 */  addiu      $fp, $fp, %lo(D_800EA8A0)
/* 21BE8C 801E5BDC 00187080 */  sll        $t6, $t8, 2
.L801E5BE0_ovl9:
/* 21BE90 801E5BE0 03CEC821 */  addu       $t9, $fp, $t6
/* 21BE94 801E5BE4 3C01801F */  lui        $at, %hi(func_801EFFC0_ovl16 + 0x8)
/* 21BE98 801E5BE8 E7380000 */  swc1       $f24, 0x0($t9)
/* 21BE9C 801E5BEC 1000000C */  b          .L801E5C20_ovl16
glabel D_801E5BF0_ovl13
/* 21BEA0 801E5BF0 C43AFFC8 */   lwc1      $f26, %lo(func_801EFFC0_ovl16 + 0x8)($at)
.L801E5BF4_ovl16:
/* 21BEA4 801E5BF4 8E220000 */  lw         $v0, 0x0($s1)
/* 21BEA8 801E5BF8 3C01801F */  lui        $at, %hi(func_801EFFCC_ovl16)
/* 21BEAC 801E5BFC C43AFFCC */  lwc1       $f26, %lo(func_801EFFCC_ovl16)($at)
glabel D_801E5C00_ovl13
/* 21BEB0 801E5C00 8C480000 */  lw         $t0, 0x0($v0)
glabel D_801E5C04_ovl13
/* 21BEB4 801E5C04 3C1E800F */  lui        $fp, %hi(D_800EA8A0)
glabel D_801E5C08_ovl13
/* 21BEB8 801E5C08 27DEA8A0 */  addiu      $fp, $fp, %lo(D_800EA8A0)
.L801E5C0C_ovl15:
/* 21BEBC 801E5C0C 00084880 */  sll        $t1, $t0, 2
glabel D_801E5C10_ovl13
/* 21BEC0 801E5C10 03C95021 */  addu       $t2, $fp, $t1
glabel D_801E5C14_ovl13
/* 21BEC4 801E5C14 3C01801F */  lui        $at, %hi(func_801EFFCC_ovl16 + 0x4)
.L801E5C18_ovl13:
/* 21BEC8 801E5C18 E55A0000 */  swc1       $f26, 0x0($t2)
glabel D_801E5C1C_ovl13
/* 21BECC 801E5C1C C438FFD0 */  lwc1       $f24, %lo(func_801EFFCC_ovl16 + 0x4)($at)
.L801E5C20_ovl16:
/* 21BED0 801E5C20 8C4B0000 */  lw         $t3, 0x0($v0)
.L801E5C24_ovl9:
/* 21BED4 801E5C24 3C014320 */  lui        $at, (0x43200000 >> 16)
/* 21BED8 801E5C28 44813000 */  mtc1       $at, $f6
/* 21BEDC 801E5C2C 3C01800F */  lui        $at, %hi(D_800EAFA0)
jtbl_801E5C30_ovl13:
/* 21BEE0 801E5C30 000B6080 */  sll        $t4, $t3, 2
glabel func_801E5C34_ovl15
/* 21BEE4 801E5C34 002C0821 */  addu       $at, $at, $t4
/* 21BEE8 801E5C38 E426AFA0 */  swc1       $f6, %lo(D_800EAFA0)($at)
/* 21BEEC 801E5C3C 8C4D0000 */  lw         $t5, 0x0($v0)
/* 21BEF0 801E5C40 4480B000 */  mtc1       $zero, $f22
.L801E5C44_ovl9:
/* 21BEF4 801E5C44 3C01800F */  lui        $at, %hi(D_800EB160)
/* 21BEF8 801E5C48 000D7880 */  sll        $t7, $t5, 2
glabel func_801E5C4C_ovl10
/* 21BEFC 801E5C4C 002F0821 */  addu       $at, $at, $t7
/* 21BF00 801E5C50 E436B160 */  swc1       $f22, %lo(D_800EB160)($at)
/* 21BF04 801E5C54 3C013F00 */  lui        $at, (0x3F000000 >> 16)
jtbl_801E5C58_ovl13:
/* 21BF08 801E5C58 4481F000 */  mtc1       $at, $f30
/* 21BF0C 801E5C5C 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 21BF10 801E5C60 3C15801F */  lui        $s5, %hi(func_801EF9B0_ovl16 + 0x34)
/* 21BF14 801E5C64 3C14800F */  lui        $s4, %hi(D_800EADE0)
/* 21BF18 801E5C68 3C13800F */  lui        $s3, %hi(D_800EAC20)
/* 21BF1C 801E5C6C 4481E000 */  mtc1       $at, $f28
/* 21BF20 801E5C70 4480A000 */  mtc1       $zero, $f20
/* 21BF24 801E5C74 2673AC20 */  addiu      $s3, $s3, %lo(D_800EAC20)
/* 21BF28 801E5C78 2694ADE0 */  addiu      $s4, $s4, %lo(D_800EADE0)
/* 21BF2C 801E5C7C 26B5F9E4 */  addiu      $s5, $s5, %lo(func_801EF9B0_ovl16 + 0x34)
/* 21BF30 801E5C80 AFA00074 */  sw         $zero, 0x74($sp)
/* 21BF34 801E5C84 24160030 */  addiu      $s6, $zero, 0x30
.L801E5C88_ovl16:
/* 21BF38 801E5C88 8FB80074 */  lw         $t8, 0x74($sp)
glabel func_801E5C8C_ovl13
/* 21BF3C 801E5C8C 2F01000E */  sltiu      $at, $t8, 0xE
/* 21BF40 801E5C90 1020016C */  beqz       $at, .L801E6244_ovl16
.L801E5C94_ovl15:
/* 21BF44 801E5C94 0018C080 */   sll       $t8, $t8, 2
/* 21BF48 801E5C98 3C01801F */  lui        $at, %hi(jtbl_801EFFD4_ovl16)
/* 21BF4C 801E5C9C 00380821 */  addu       $at, $at, $t8
/* 21BF50 801E5CA0 8C38FFD4 */  lw         $t8, %lo(jtbl_801EFFD4_ovl16)($at)
/* 21BF54 801E5CA4 03000008 */  jr         $t8
/* 21BF58 801E5CA8 00000000 */   nop
/* 21BF5C 801E5CAC 3C040001 */  lui        $a0, (0x104D2 >> 16)
/* 21BF60 801E5CB0 0C02A7A9 */  jal        func_800A9EA4
jtbl_801E5CB4_ovl13:
/* 21BF64 801E5CB4 348404D2 */   ori       $a0, $a0, (0x104D2 & 0xFFFF)
/* 21BF68 801E5CB8 8E220000 */  lw         $v0, 0x0($s1)
.L801E5CBC_ovl10:
/* 21BF6C 801E5CBC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 21BF70 801E5CC0 000EC880 */  sll        $t9, $t6, 2
/* 21BF74 801E5CC4 03D92821 */  addu       $a1, $fp, $t9
/* 21BF78 801E5CC8 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 21BF7C 801E5CCC 4608B03C */  c.lt.s     $f22, $f8
/* 21BF80 801E5CD0 00000000 */  nop
.L801E5CD4_ovl13:
/* 21BF84 801E5CD4 45020004 */  bc1fl      .L801E5CE8_ovl16
glabel D_801E5CD8_ovl13
/* 21BF88 801E5CD8 4600D086 */   mov.s     $f2, $f26
glabel D_801E5CDC_ovl13
/* 21BF8C 801E5CDC 10000002 */  b          .L801E5CE8_ovl16
.L801E5CE0_ovl15:
/* 21BF90 801E5CE0 4600C086 */   mov.s     $f2, $f24
.L801E5CE4_ovl13:
/* 21BF94 801E5CE4 4600D086 */  mov.s      $f2, $f26
.L801E5CE8_ovl16:
/* 21BF98 801E5CE8 461E1282 */  mul.s      $f10, $f2, $f30
glabel D_801E5CEC_ovl13
/* 21BF9C 801E5CEC 3C01800F */  lui        $at, %hi(D_800EAA60)
glabel func_801E5CF0_ovl13
/* 21BFA0 801E5CF0 00008025 */  or         $s0, $zero, $zero
/* 21BFA4 801E5CF4 E4AA0000 */  swc1       $f10, 0x0($a1)
/* 21BFA8 801E5CF8 8C430000 */  lw         $v1, 0x0($v0)
/* 21BFAC 801E5CFC 00031880 */  sll        $v1, $v1, 2
/* 21BFB0 801E5D00 03C34021 */  addu       $t0, $fp, $v1
/* 21BFB4 801E5D04 C5100000 */  lwc1       $f16, 0x0($t0)
/* 21BFB8 801E5D08 00230821 */  addu       $at, $at, $v1
.L801E5D0C_ovl13:
/* 21BFBC 801E5D0C 461C8482 */  mul.s      $f18, $f16, $f28
glabel D_801E5D10_ovl13
/* 21BFC0 801E5D10 E432AA60 */  swc1       $f18, %lo(D_800EAA60)($at)
glabel D_801E5D14_ovl13
/* 21BFC4 801E5D14 8E290000 */  lw         $t1, 0x0($s1)
.L801E5D18_ovl16:
/* 21BFC8 801E5D18 8D2A0000 */  lw         $t2, 0x0($t1)
glabel D_801E5D1C_ovl13
/* 21BFCC 801E5D1C 000A5880 */  sll        $t3, $t2, 2
.L801E5D20_ovl13:
/* 21BFD0 801E5D20 024B6021 */  addu       $t4, $s2, $t3
glabel D_801E5D24_ovl13
/* 21BFD4 801E5D24 0C00B5B8 */  jal        sinf
glabel D_801E5D28_ovl13
/* 21BFD8 801E5D28 C58C0000 */   lwc1      $f12, 0x0($t4)
glabel func_801E5D2C_ovl13
/* 21BFDC 801E5D2C 4614003C */  c.lt.s     $f0, $f20
/* 21BFE0 801E5D30 00000000 */  nop
/* 21BFE4 801E5D34 4502000A */  bc1fl      .L801E5D60_ovl16
/* 21BFE8 801E5D38 8E390000 */   lw        $t9, 0x0($s1)
/* 21BFEC 801E5D3C 8E2D0000 */  lw         $t5, 0x0($s1)
/* 21BFF0 801E5D40 8DAF0000 */  lw         $t7, 0x0($t5)
/* 21BFF4 801E5D44 000FC080 */  sll        $t8, $t7, 2
.L801E5D48_ovl15:
/* 21BFF8 801E5D48 02587021 */  addu       $t6, $s2, $t8
/* 21BFFC 801E5D4C 0C00B5B8 */  jal        sinf
/* 21C000 801E5D50 C5CC0000 */   lwc1      $f12, 0x0($t6)
glabel func_801E5D54_ovl15
/* 21C004 801E5D54 10000008 */  b          .L801E5D78_ovl16
/* 21C008 801E5D58 46000087 */   neg.s     $f2, $f0
/* 21C00C 801E5D5C 8E390000 */  lw         $t9, 0x0($s1)
.L801E5D60_ovl16:
/* 21C010 801E5D60 8F280000 */  lw         $t0, 0x0($t9)
/* 21C014 801E5D64 00084880 */  sll        $t1, $t0, 2
/* 21C018 801E5D68 02495021 */  addu       $t2, $s2, $t1
/* 21C01C 801E5D6C 0C00B5B8 */  jal        sinf
/* 21C020 801E5D70 C54C0000 */   lwc1      $f12, 0x0($t2)
/* 21C024 801E5D74 46000086 */  mov.s      $f2, $f0
.L801E5D78_ovl16:
/* 21C028 801E5D78 8E220000 */  lw         $v0, 0x0($s1)
/* 21C02C 801E5D7C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 21C030 801E5D80 000B6080 */  sll        $t4, $t3, 2
/* 21C034 801E5D84 026C6821 */  addu       $t5, $s3, $t4
/* 21C038 801E5D88 E5A20000 */  swc1       $f2, 0x0($t5)
/* 21C03C 801E5D8C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 21C040 801E5D90 000FC080 */  sll        $t8, $t7, 2
/* 21C044 801E5D94 02587021 */  addu       $t6, $s2, $t8
glabel func_801E5D98_ovl13
/* 21C048 801E5D98 0C00B5B8 */  jal        sinf
.L801E5D9C_ovl13:
/* 21C04C 801E5D9C C5CC0000 */   lwc1      $f12, 0x0($t6)
glabel D_801E5DA0_ovl13
/* 21C050 801E5DA0 4614003C */  c.lt.s     $f0, $f20
glabel D_801E5DA4_ovl13
/* 21C054 801E5DA4 00000000 */  nop
.L801E5DA8_ovl13:
/* 21C058 801E5DA8 4502000A */  bc1fl      .L801E5DD4_ovl16
glabel D_801E5DAC_ovl13
/* 21C05C 801E5DAC 8E2B0000 */   lw        $t3, 0x0($s1)
glabel D_801E5DB0_ovl13
/* 21C060 801E5DB0 8E390000 */  lw         $t9, 0x0($s1)
glabel D_801E5DB4_ovl13
/* 21C064 801E5DB4 8F280000 */  lw         $t0, 0x0($t9)
glabel D_801E5DB8_ovl13
/* 21C068 801E5DB8 00084880 */  sll        $t1, $t0, 2
glabel D_801E5DBC_ovl13
/* 21C06C 801E5DBC 02495021 */  addu       $t2, $s2, $t1
.L801E5DC0_ovl13:
/* 21C070 801E5DC0 0C00B5B8 */  jal        sinf
glabel D_801E5DC4_ovl13
/* 21C074 801E5DC4 C54C0000 */   lwc1      $f12, 0x0($t2)
glabel func_801E5DC8_ovl13
/* 21C078 801E5DC8 10000008 */  b          .L801E5DEC_ovl16
/* 21C07C 801E5DCC 46000087 */   neg.s     $f2, $f0
/* 21C080 801E5DD0 8E2B0000 */  lw         $t3, 0x0($s1)
.L801E5DD4_ovl16:
/* 21C084 801E5DD4 8D6C0000 */  lw         $t4, 0x0($t3)
/* 21C088 801E5DD8 000C6880 */  sll        $t5, $t4, 2
/* 21C08C 801E5DDC 024D7821 */  addu       $t7, $s2, $t5
glabel func_801E5DE0_ovl13
/* 21C090 801E5DE0 0C00B5B8 */  jal        sinf
/* 21C094 801E5DE4 C5EC0000 */   lwc1      $f12, 0x0($t7)
.L801E5DE8_ovl15:
/* 21C098 801E5DE8 46000086 */  mov.s      $f2, $f0
.L801E5DEC_ovl16:
/* 21C09C 801E5DEC 8E380000 */  lw         $t8, 0x0($s1)
/* 21C0A0 801E5DF0 24040001 */  addiu      $a0, $zero, 0x1
/* 21C0A4 801E5DF4 8F0E0000 */  lw         $t6, 0x0($t8)
/* 21C0A8 801E5DF8 000EC880 */  sll        $t9, $t6, 2
/* 21C0AC 801E5DFC 02994021 */  addu       $t0, $s4, $t9
/* 21C0B0 801E5E00 0C002DAF */  jal        finish_current_thread
/* 21C0B4 801E5E04 E5020000 */   swc1      $f2, 0x0($t0)
/* 21C0B8 801E5E08 26100001 */  addiu      $s0, $s0, 0x1
/* 21C0BC 801E5E0C 5616FFC2 */  bnel       $s0, $s6, .L801E5D18_ovl16
glabel func_801E5E10_ovl15
/* 21C0C0 801E5E10 8E290000 */   lw        $t1, 0x0($s1)
/* 21C0C4 801E5E14 8E220000 */  lw         $v0, 0x0($s1)
/* 21C0C8 801E5E18 8C490000 */  lw         $t1, 0x0($v0)
/* 21C0CC 801E5E1C 00095080 */  sll        $t2, $t1, 2
/* 21C0D0 801E5E20 03CA2821 */  addu       $a1, $fp, $t2
/* 21C0D4 801E5E24 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 21C0D8 801E5E28 4604B03C */  c.lt.s     $f22, $f4
/* 21C0DC 801E5E2C 00000000 */  nop
/* 21C0E0 801E5E30 45020004 */  bc1fl      .L801E5E44_ovl16
/* 21C0E4 801E5E34 E4BA0000 */   swc1      $f26, 0x0($a1)
/* 21C0E8 801E5E38 10000002 */  b          .L801E5E44_ovl16
/* 21C0EC 801E5E3C E4B80000 */   swc1      $f24, 0x0($a1)
/* 21C0F0 801E5E40 E4BA0000 */  swc1       $f26, 0x0($a1)
.L801E5E44_ovl16:
/* 21C0F4 801E5E44 8C4B0000 */  lw         $t3, 0x0($v0)
/* 21C0F8 801E5E48 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 21C0FC 801E5E4C 000B6080 */  sll        $t4, $t3, 2
.L801E5E50_ovl13:
/* 21C100 801E5E50 002C0821 */  addu       $at, $at, $t4
/* 21C104 801E5E54 E436AA60 */  swc1       $f22, %lo(D_800EAA60)($at)
/* 21C108 801E5E58 8C4D0000 */  lw         $t5, 0x0($v0)
/* 21C10C 801E5E5C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 21C110 801E5E60 44813000 */  mtc1       $at, $f6
/* 21C114 801E5E64 000D7880 */  sll        $t7, $t5, 2
/* 21C118 801E5E68 026FC021 */  addu       $t8, $s3, $t7
/* 21C11C 801E5E6C E7060000 */  swc1       $f6, 0x0($t8)
glabel func_801E5E70_ovl9
/* 21C120 801E5E70 8C4E0000 */  lw         $t6, 0x0($v0)
/* 21C124 801E5E74 000EC880 */  sll        $t9, $t6, 2
/* 21C128 801E5E78 02994021 */  addu       $t0, $s4, $t9
/* 21C12C 801E5E7C 100000F1 */  b          .L801E6244_ovl16
/* 21C130 801E5E80 E51E0000 */   swc1      $f30, 0x0($t0)
/* 21C134 801E5E84 3C040001 */  lui        $a0, (0x104D2 >> 16)
/* 21C138 801E5E88 0C02A7A9 */  jal        func_800A9EA4
/* 21C13C 801E5E8C 348404D2 */   ori       $a0, $a0, (0x104D2 & 0xFFFF)
/* 21C140 801E5E90 8E220000 */  lw         $v0, 0x0($s1)
/* 21C144 801E5E94 8C490000 */  lw         $t1, 0x0($v0)
/* 21C148 801E5E98 00095080 */  sll        $t2, $t1, 2
/* 21C14C 801E5E9C 03CA2821 */  addu       $a1, $fp, $t2
.L801E5EA0_ovl10:
/* 21C150 801E5EA0 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 21C154 801E5EA4 4608B03C */  c.lt.s     $f22, $f8
/* 21C158 801E5EA8 00000000 */  nop
/* 21C15C 801E5EAC 45020004 */  bc1fl      .L801E5EC0_ovl16
/* 21C160 801E5EB0 E4BA0000 */   swc1      $f26, 0x0($a1)
/* 21C164 801E5EB4 10000002 */  b          .L801E5EC0_ovl16
/* 21C168 801E5EB8 E4B80000 */   swc1      $f24, 0x0($a1)
/* 21C16C 801E5EBC E4BA0000 */  swc1       $f26, 0x0($a1)
.L801E5EC0_ovl16:
/* 21C170 801E5EC0 8C430000 */  lw         $v1, 0x0($v0)
/* 21C174 801E5EC4 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 21C178 801E5EC8 00008025 */  or         $s0, $zero, $zero
/* 21C17C 801E5ECC 00031880 */  sll        $v1, $v1, 2
/* 21C180 801E5ED0 03C35821 */  addu       $t3, $fp, $v1
/* 21C184 801E5ED4 C56A0000 */  lwc1       $f10, 0x0($t3)
/* 21C188 801E5ED8 00230821 */  addu       $at, $at, $v1
/* 21C18C 801E5EDC 461C5402 */  mul.s      $f16, $f10, $f28
/* 21C190 801E5EE0 E430AA60 */  swc1       $f16, %lo(D_800EAA60)($at)
/* 21C194 801E5EE4 8E2C0000 */  lw         $t4, 0x0($s1)
.L801E5EE8_ovl16:
/* 21C198 801E5EE8 8D8D0000 */  lw         $t5, 0x0($t4)
.L801E5EEC_ovl10:
/* 21C19C 801E5EEC 000D7880 */  sll        $t7, $t5, 2
/* 21C1A0 801E5EF0 024FC021 */  addu       $t8, $s2, $t7
/* 21C1A4 801E5EF4 0C00B5B8 */  jal        sinf
/* 21C1A8 801E5EF8 C70C0000 */   lwc1      $f12, 0x0($t8)
/* 21C1AC 801E5EFC 4614003C */  c.lt.s     $f0, $f20
/* 21C1B0 801E5F00 00000000 */  nop
/* 21C1B4 801E5F04 4502000A */  bc1fl      .L801E5F30_ovl16
/* 21C1B8 801E5F08 8E2A0000 */   lw        $t2, 0x0($s1)
/* 21C1BC 801E5F0C 8E2E0000 */  lw         $t6, 0x0($s1)
/* 21C1C0 801E5F10 8DD90000 */  lw         $t9, 0x0($t6)
/* 21C1C4 801E5F14 00194080 */  sll        $t0, $t9, 2
/* 21C1C8 801E5F18 02484821 */  addu       $t1, $s2, $t0
/* 21C1CC 801E5F1C 0C00B5B8 */  jal        sinf
/* 21C1D0 801E5F20 C52C0000 */   lwc1      $f12, 0x0($t1)
/* 21C1D4 801E5F24 10000008 */  b          .L801E5F48_ovl16
/* 21C1D8 801E5F28 46000087 */   neg.s     $f2, $f0
/* 21C1DC 801E5F2C 8E2A0000 */  lw         $t2, 0x0($s1)
.L801E5F30_ovl16:
/* 21C1E0 801E5F30 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21C1E4 801E5F34 000B6080 */  sll        $t4, $t3, 2
/* 21C1E8 801E5F38 024C6821 */  addu       $t5, $s2, $t4
/* 21C1EC 801E5F3C 0C00B5B8 */  jal        sinf
/* 21C1F0 801E5F40 C5AC0000 */   lwc1      $f12, 0x0($t5)
/* 21C1F4 801E5F44 46000086 */  mov.s      $f2, $f0
.L801E5F48_ovl16:
/* 21C1F8 801E5F48 8E220000 */  lw         $v0, 0x0($s1)
/* 21C1FC 801E5F4C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 21C200 801E5F50 000FC080 */  sll        $t8, $t7, 2
/* 21C204 801E5F54 02787021 */  addu       $t6, $s3, $t8
/* 21C208 801E5F58 E5C20000 */  swc1       $f2, 0x0($t6)
/* 21C20C 801E5F5C 8C590000 */  lw         $t9, 0x0($v0)
glabel func_801E5F60_ovl10
/* 21C210 801E5F60 00194080 */  sll        $t0, $t9, 2
/* 21C214 801E5F64 02484821 */  addu       $t1, $s2, $t0
/* 21C218 801E5F68 0C00B5B8 */  jal        sinf
/* 21C21C 801E5F6C C52C0000 */   lwc1      $f12, 0x0($t1)
/* 21C220 801E5F70 4614003C */  c.lt.s     $f0, $f20
/* 21C224 801E5F74 00000000 */  nop
/* 21C228 801E5F78 4502000A */  bc1fl      .L801E5FA4_ovl16
/* 21C22C 801E5F7C 8E2F0000 */   lw        $t7, 0x0($s1)
/* 21C230 801E5F80 8E2A0000 */  lw         $t2, 0x0($s1)
/* 21C234 801E5F84 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21C238 801E5F88 000B6080 */  sll        $t4, $t3, 2
/* 21C23C 801E5F8C 024C6821 */  addu       $t5, $s2, $t4
/* 21C240 801E5F90 0C00B5B8 */  jal        sinf
/* 21C244 801E5F94 C5AC0000 */   lwc1      $f12, 0x0($t5)
/* 21C248 801E5F98 10000008 */  b          .L801E5FBC_ovl16
/* 21C24C 801E5F9C 46000087 */   neg.s     $f2, $f0
/* 21C250 801E5FA0 8E2F0000 */  lw         $t7, 0x0($s1)
.L801E5FA4_ovl16:
/* 21C254 801E5FA4 8DF80000 */  lw         $t8, 0x0($t7)
/* 21C258 801E5FA8 00187080 */  sll        $t6, $t8, 2
.L801E5FAC_ovl15:
/* 21C25C 801E5FAC 024EC821 */  addu       $t9, $s2, $t6
/* 21C260 801E5FB0 0C00B5B8 */  jal        sinf
/* 21C264 801E5FB4 C72C0000 */   lwc1      $f12, 0x0($t9)
/* 21C268 801E5FB8 46000086 */  mov.s      $f2, $f0
.L801E5FBC_ovl16:
/* 21C26C 801E5FBC 8E280000 */  lw         $t0, 0x0($s1)
/* 21C270 801E5FC0 24040001 */  addiu      $a0, $zero, 0x1
glabel func_801E5FC4_ovl9
/* 21C274 801E5FC4 8D090000 */  lw         $t1, 0x0($t0)
/* 21C278 801E5FC8 00095080 */  sll        $t2, $t1, 2
/* 21C27C 801E5FCC 028A5821 */  addu       $t3, $s4, $t2
/* 21C280 801E5FD0 0C002DAF */  jal        finish_current_thread
/* 21C284 801E5FD4 E5620000 */   swc1      $f2, 0x0($t3)
/* 21C288 801E5FD8 26100001 */  addiu      $s0, $s0, 0x1
.L801E5FDC_ovl10:
/* 21C28C 801E5FDC 5617FFC2 */  bnel       $s0, $s7, .L801E5EE8_ovl16
/* 21C290 801E5FE0 8E2C0000 */   lw        $t4, 0x0($s1)
/* 21C294 801E5FE4 8E2C0000 */  lw         $t4, 0x0($s1)
/* 21C298 801E5FE8 3C01801F */  lui        $at, %hi(D_801F000C_ovl16)
/* 21C29C 801E5FEC C432000C */  lwc1       $f18, %lo(D_801F000C_ovl16)($at)
/* 21C2A0 801E5FF0 8D8D0000 */  lw         $t5, 0x0($t4)
.L801E5FF4_ovl10:
/* 21C2A4 801E5FF4 000D7880 */  sll        $t7, $t5, 2
/* 21C2A8 801E5FF8 024FC021 */  addu       $t8, $s2, $t7
/* 21C2AC 801E5FFC 10000091 */  b          .L801E6244_ovl16
/* 21C2B0 801E6000 E7120000 */   swc1      $f18, 0x0($t8)
.L801E6004_ovl15:
/* 21C2B4 801E6004 8E2E0000 */  lw         $t6, 0x0($s1)
/* 21C2B8 801E6008 3C01801F */  lui        $at, %hi(D_801F0010_ovl16)
.L801E600C_ovl9:
/* 21C2BC 801E600C C4240010 */  lwc1       $f4, %lo(D_801F0010_ovl16)($at)
/* 21C2C0 801E6010 8DD90000 */  lw         $t9, 0x0($t6)
/* 21C2C4 801E6014 00194080 */  sll        $t0, $t9, 2
/* 21C2C8 801E6018 02484821 */  addu       $t1, $s2, $t0
/* 21C2CC 801E601C E5240000 */  swc1       $f4, 0x0($t1)
.L801E6020_ovl10:
/* 21C2D0 801E6020 0C006291 */  jal        random_soft_s32_range
/* 21C2D4 801E6024 24040005 */   addiu     $a0, $zero, 0x5
/* 21C2D8 801E6028 8E2A0000 */  lw         $t2, 0x0($s1)
/* 21C2DC 801E602C 00026880 */  sll        $t5, $v0, 2
glabel func_801E6030_ovl10
/* 21C2E0 801E6030 02AD7821 */  addu       $t7, $s5, $t5
/* 21C2E4 801E6034 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21C2E8 801E6038 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 21C2EC 801E603C 000B6080 */  sll        $t4, $t3, 2
.L801E6040_ovl9:
/* 21C2F0 801E6040 026C1821 */  addu       $v1, $s3, $t4
/* 21C2F4 801E6044 C4660000 */  lwc1       $f6, 0x0($v1)
/* 21C2F8 801E6048 46003032 */  c.eq.s     $f6, $f0
/* 21C2FC 801E604C 00000000 */  nop
/* 21C300 801E6050 45020010 */  bc1fl      .L801E6094_ovl16
/* 21C304 801E6054 E4600000 */   swc1      $f0, 0x0($v1)
.L801E6058_ovl16:
/* 21C308 801E6058 0C006291 */  jal        random_soft_s32_range
/* 21C30C 801E605C 24040005 */   addiu     $a0, $zero, 0x5
/* 21C310 801E6060 8E380000 */  lw         $t8, 0x0($s1)
/* 21C314 801E6064 00024080 */  sll        $t0, $v0, 2
.L801E6068_ovl9:
/* 21C318 801E6068 02A84821 */  addu       $t1, $s5, $t0
/* 21C31C 801E606C 8F0E0000 */  lw         $t6, 0x0($t8)
.L801E6070_ovl10:
/* 21C320 801E6070 C5200000 */  lwc1       $f0, 0x0($t1)
glabel func_801E6074_ovl15
/* 21C324 801E6074 000EC880 */  sll        $t9, $t6, 2
/* 21C328 801E6078 02791821 */  addu       $v1, $s3, $t9
.L801E607C_ovl9:
/* 21C32C 801E607C C4680000 */  lwc1       $f8, 0x0($v1)
/* 21C330 801E6080 46004032 */  c.eq.s     $f8, $f0
/* 21C334 801E6084 00000000 */  nop
glabel func_801E6088_ovl9
/* 21C338 801E6088 4501FFF3 */  bc1t       .L801E6058_ovl16
/* 21C33C 801E608C 00000000 */   nop
/* 21C340 801E6090 E4600000 */  swc1       $f0, 0x0($v1)
.L801E6094_ovl16:
/* 21C344 801E6094 0C002DAF */  jal        finish_current_thread
/* 21C348 801E6098 02E02025 */   or        $a0, $s7, $zero
/* 21C34C 801E609C 1000006A */  b          .L801E6248_ovl16
/* 21C350 801E60A0 8FAC0074 */   lw        $t4, 0x74($sp)
/* 21C354 801E60A4 8E2A0000 */  lw         $t2, 0x0($s1)
/* 21C358 801E60A8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 21C35C 801E60AC 44815000 */  mtc1       $at, $f10
/* 21C360 801E60B0 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21C364 801E60B4 02E02025 */  or         $a0, $s7, $zero
/* 21C368 801E60B8 000B6080 */  sll        $t4, $t3, 2
/* 21C36C 801E60BC 026C6821 */  addu       $t5, $s3, $t4
/* 21C370 801E60C0 0C002DAF */  jal        finish_current_thread
/* 21C374 801E60C4 E5AA0000 */   swc1      $f10, 0x0($t5)
/* 21C378 801E60C8 1000005F */  b          .L801E6248_ovl16
.L801E60CC_ovl15:
/* 21C37C 801E60CC 8FAC0074 */   lw        $t4, 0x74($sp)
/* 21C380 801E60D0 24040005 */  addiu      $a0, $zero, 0x5
/* 21C384 801E60D4 0C067829 */  jal        func_8019E0A4_ovl7
/* 21C388 801E60D8 24050004 */   addiu     $a1, $zero, 0x4
/* 21C38C 801E60DC 2401FFFF */  addiu      $at, $zero, -0x1
/* 21C390 801E60E0 10410014 */  beq        $v0, $at, .L801E6134_ovl16
/* 21C394 801E60E4 3C040001 */   lui       $a0, (0x104D3 >> 16)
.L801E60E8_ovl15:
/* 21C398 801E60E8 8E2F0000 */  lw         $t7, 0x0($s1)
.L801E60EC_ovl10:
/* 21C39C 801E60EC 00025080 */  sll        $t2, $v0, 2
/* 21C3A0 801E60F0 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 21C3A4 801E60F4 8DF80000 */  lw         $t8, 0x0($t7)
/* 21C3A8 801E60F8 002A0821 */  addu       $at, $at, $t2
/* 21C3AC 801E60FC 24090001 */  addiu      $t1, $zero, 0x1
/* 21C3B0 801E6100 00187080 */  sll        $t6, $t8, 2
/* 21C3B4 801E6104 03CEC821 */  addu       $t9, $fp, $t6
/* 21C3B8 801E6108 C7300000 */  lwc1       $f16, 0x0($t9)
.L801E610C_ovl15:
/* 21C3BC 801E610C 00024080 */  sll        $t0, $v0, 2
/* 21C3C0 801E6110 4610B03C */  c.lt.s     $f22, $f16
/* 21C3C4 801E6114 00000000 */  nop
/* 21C3C8 801E6118 45000005 */  bc1f       .L801E6130_ovl16
/* 21C3CC 801E611C 00000000 */   nop
/* 21C3D0 801E6120 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 21C3D4 801E6124 00280821 */  addu       $at, $at, $t0
/* 21C3D8 801E6128 10000002 */  b          .L801E6134_ovl16
.L801E612C_ovl10:
/* 21C3DC 801E612C AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L801E6130_ovl16:
/* 21C3E0 801E6130 AC2998E0 */  sw         $t1, %lo(D_800E98E0)($at)
.L801E6134_ovl16:
/* 21C3E4 801E6134 0C02A7A9 */  jal        func_800A9EA4
/* 21C3E8 801E6138 348404D3 */   ori       $a0, $a0, (0x104D3 & 0xFFFF)
glabel func_801E613C_ovl15
/* 21C3EC 801E613C 8E220000 */  lw         $v0, 0x0($s1)
/* 21C3F0 801E6140 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 21C3F4 801E6144 44819000 */  mtc1       $at, $f18
/* 21C3F8 801E6148 8C4B0000 */  lw         $t3, 0x0($v0)
/* 21C3FC 801E614C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 21C400 801E6150 2404000C */  addiu      $a0, $zero, 0xC
/* 21C404 801E6154 000B6080 */  sll        $t4, $t3, 2
/* 21C408 801E6158 028C6821 */  addu       $t5, $s4, $t4
/* 21C40C 801E615C E5B20000 */  swc1       $f18, 0x0($t5)
/* 21C410 801E6160 8C430000 */  lw         $v1, 0x0($v0)
/* 21C414 801E6164 00031880 */  sll        $v1, $v1, 2
glabel func_801E6168_ovl9
/* 21C418 801E6168 03C37821 */  addu       $t7, $fp, $v1
.L801E616C_ovl10:
/* 21C41C 801E616C C5E40000 */  lwc1       $f4, 0x0($t7)
/* 21C420 801E6170 00230821 */  addu       $at, $at, $v1
/* 21C424 801E6174 461C2182 */  mul.s      $f6, $f4, $f28
/* 21C428 801E6178 0C002DAF */  jal        finish_current_thread
/* 21C42C 801E617C E426AA60 */   swc1      $f6, %lo(D_800EAA60)($at)
/* 21C430 801E6180 8E220000 */  lw         $v0, 0x0($s1)
/* 21C434 801E6184 3C01801F */  lui        $at, %hi(func_801F0014_ovl16)
/* 21C438 801E6188 C4280014 */  lwc1       $f8, %lo(func_801F0014_ovl16)($at)
/* 21C43C 801E618C 8C580000 */  lw         $t8, 0x0($v0)
/* 21C440 801E6190 3C01800F */  lui        $at, %hi(D_800EAA60)
.L801E6194_ovl10:
/* 21C444 801E6194 00187080 */  sll        $t6, $t8, 2
/* 21C448 801E6198 002E0821 */  addu       $at, $at, $t6
/* 21C44C 801E619C E428AA60 */  swc1       $f8, %lo(D_800EAA60)($at)
/* 21C450 801E61A0 8C590000 */  lw         $t9, 0x0($v0)
/* 21C454 801E61A4 00194080 */  sll        $t0, $t9, 2
/* 21C458 801E61A8 03C82821 */  addu       $a1, $fp, $t0
/* 21C45C 801E61AC C4AA0000 */  lwc1       $f10, 0x0($a1)
.L801E61B0_ovl9:
/* 21C460 801E61B0 460AB03C */  c.lt.s     $f22, $f10
/* 21C464 801E61B4 00000000 */  nop
/* 21C468 801E61B8 45020004 */  bc1fl      .L801E61CC_ovl16
/* 21C46C 801E61BC 4600D086 */   mov.s     $f2, $f26
.L801E61C0_ovl9:
/* 21C470 801E61C0 10000002 */  b          .L801E61CC_ovl16
/* 21C474 801E61C4 4600C086 */   mov.s     $f2, $f24
/* 21C478 801E61C8 4600D086 */  mov.s      $f2, $f26
.L801E61CC_ovl16:
/* 21C47C 801E61CC 461E1402 */  mul.s      $f16, $f2, $f30
.L801E61D0_ovl10:
/* 21C480 801E61D0 02E02025 */  or         $a0, $s7, $zero
/* 21C484 801E61D4 0C002DAF */  jal        finish_current_thread
/* 21C488 801E61D8 E4B00000 */   swc1      $f16, 0x0($a1)
/* 21C48C 801E61DC 1000001A */  b          .L801E6248_ovl16
/* 21C490 801E61E0 8FAC0074 */   lw        $t4, 0x74($sp)
/* 21C494 801E61E4 0C002DAF */  jal        finish_current_thread
.L801E61E8_ovl9:
/* 21C498 801E61E8 02E02025 */   or        $a0, $s7, $zero
/* 21C49C 801E61EC 8E220000 */  lw         $v0, 0x0($s1)
.L801E61F0_ovl10:
/* 21C4A0 801E61F0 8C490000 */  lw         $t1, 0x0($v0)
/* 21C4A4 801E61F4 00095080 */  sll        $t2, $t1, 2
/* 21C4A8 801E61F8 03CA2821 */  addu       $a1, $fp, $t2
.L801E61FC_ovl9:
/* 21C4AC 801E61FC C4B20000 */  lwc1       $f18, 0x0($a1)
.L801E6200_ovl10:
/* 21C4B0 801E6200 4612B03C */  c.lt.s     $f22, $f18
/* 21C4B4 801E6204 00000000 */  nop
glabel func_801E6208_ovl9
/* 21C4B8 801E6208 45020004 */  bc1fl      .L801E621C_ovl16
/* 21C4BC 801E620C E4BA0000 */   swc1      $f26, 0x0($a1)
/* 21C4C0 801E6210 10000002 */  b          .L801E621C_ovl16
/* 21C4C4 801E6214 E4B80000 */   swc1      $f24, 0x0($a1)
/* 21C4C8 801E6218 E4BA0000 */  swc1       $f26, 0x0($a1)
.L801E621C_ovl16:
/* 21C4CC 801E621C 8C430000 */  lw         $v1, 0x0($v0)
.L801E6220_ovl10:
/* 21C4D0 801E6220 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 21C4D4 801E6224 2404000C */  addiu      $a0, $zero, 0xC
/* 21C4D8 801E6228 00031880 */  sll        $v1, $v1, 2
/* 21C4DC 801E622C 03C35821 */  addu       $t3, $fp, $v1
/* 21C4E0 801E6230 C5640000 */  lwc1       $f4, 0x0($t3)
/* 21C4E4 801E6234 00230821 */  addu       $at, $at, $v1
/* 21C4E8 801E6238 461C2182 */  mul.s      $f6, $f4, $f28
/* 21C4EC 801E623C 0C002DAF */  jal        finish_current_thread
/* 21C4F0 801E6240 E426AA60 */   swc1      $f6, %lo(D_800EAA60)($at)
.L801E6244_ovl16:
/* 21C4F4 801E6244 8FAC0074 */  lw         $t4, 0x74($sp)
.L801E6248_ovl16:
/* 21C4F8 801E6248 2401000E */  addiu      $at, $zero, 0xE
/* 21C4FC 801E624C 258D0001 */  addiu      $t5, $t4, 0x1
.L801E6250_ovl10:
/* 21C500 801E6250 15A1FE8D */  bne        $t5, $at, .L801E5C88_ovl16
/* 21C504 801E6254 AFAD0074 */   sw        $t5, 0x74($sp)
/* 21C508 801E6258 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 21C50C 801E625C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 21C510 801E6260 8FBF006C */  lw         $ra, 0x6C($sp)
/* 21C514 801E6264 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 21C518 801E6268 8C580000 */  lw         $t8, 0x0($v0)
/* 21C51C 801E626C 240F001B */  addiu      $t7, $zero, 0x1B
/* 21C520 801E6270 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 21C524 801E6274 00187080 */  sll        $t6, $t8, 2
/* 21C528 801E6278 002E0821 */  addu       $at, $at, $t6
/* 21C52C 801E627C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 21C530 801E6280 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 21C534 801E6284 D7BA0030 */  ldc1       $f26, 0x30($sp)
.L801E6288_ovl10:
/* 21C538 801E6288 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 21C53C 801E628C D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 21C540 801E6290 8FB00048 */  lw         $s0, 0x48($sp)
/* 21C544 801E6294 8FB1004C */  lw         $s1, 0x4C($sp)
glabel func_801E6298_ovl10
/* 21C548 801E6298 8FB20050 */  lw         $s2, 0x50($sp)
/* 21C54C 801E629C 8FB30054 */  lw         $s3, 0x54($sp)
/* 21C550 801E62A0 8FB40058 */  lw         $s4, 0x58($sp)
/* 21C554 801E62A4 8FB5005C */  lw         $s5, 0x5C($sp)
/* 21C558 801E62A8 8FB60060 */  lw         $s6, 0x60($sp)
.L801E62AC_ovl15:
/* 21C55C 801E62AC 8FB70064 */  lw         $s7, 0x64($sp)
/* 21C560 801E62B0 8FBE0068 */  lw         $fp, 0x68($sp)
/* 21C564 801E62B4 AC2FDC50 */  sw         $t7, %lo(gEntityVtableIndexArray)($at)
/* 21C568 801E62B8 03E00008 */  jr         $ra
/* 21C56C 801E62BC 27BD0078 */   addiu     $sp, $sp, 0x78
