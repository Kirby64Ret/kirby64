glabel func_80164A34_ovl5
/* 10BEA4 80164A34 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 10BEA8 80164A38 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 10BEAC 80164A3C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 10BEB0 80164A40 AFBF0044 */  sw         $ra, 0x44($sp)
/* 10BEB4 80164A44 AFBE0040 */  sw         $fp, 0x40($sp)
/* 10BEB8 80164A48 AFB7003C */  sw         $s7, 0x3C($sp)
/* 10BEBC 80164A4C AFB60038 */  sw         $s6, 0x38($sp)
/* 10BEC0 80164A50 AFB50034 */  sw         $s5, 0x34($sp)
/* 10BEC4 80164A54 AFB40030 */  sw         $s4, 0x30($sp)
/* 10BEC8 80164A58 AFB3002C */  sw         $s3, 0x2C($sp)
/* 10BECC 80164A5C AFB20028 */  sw         $s2, 0x28($sp)
/* 10BED0 80164A60 AFB10024 */  sw         $s1, 0x24($sp)
/* 10BED4 80164A64 AFB00020 */  sw         $s0, 0x20($sp)
/* 10BED8 80164A68 AFA40048 */  sw         $a0, 0x48($sp)
/* 10BEDC 80164A6C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 10BEE0 80164A70 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 10BEE4 80164A74 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 10BEE8 80164A78 000E7880 */  sll        $t7, $t6, 2
/* 10BEEC 80164A7C 002F0821 */  addu       $at, $at, $t7
/* 10BEF0 80164A80 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
/* 10BEF4 80164A84 8C580000 */  lw         $t8, 0x0($v0)
/* 10BEF8 80164A88 3C05800B */  lui        $a1, %hi(func_800B1434)
/* 10BEFC 80164A8C 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
/* 10BF00 80164A90 0018C880 */  sll        $t9, $t8, 2
/* 10BF04 80164A94 00992021 */  addu       $a0, $a0, $t9
/* 10BF08 80164A98 0C02C7DA */  jal        func_800B1F68
/* 10BF0C 80164A9C 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 10BF10 80164AA0 3C118019 */  lui        $s1, %hi(func_8018E164_ovl5 + 0xF5)
/* 10BF14 80164AA4 2631E259 */  addiu      $s1, $s1, %lo(func_8018E164_ovl5 + 0xF5)
/* 10BF18 80164AA8 3C05800B */  lui        $a1, %hi(func_800AD1A0)
/* 10BF1C 80164AAC 2408000A */  addiu      $t0, $zero, 0xA
/* 10BF20 80164AB0 A2200000 */  sb         $zero, 0x0($s1)
/* 10BF24 80164AB4 AFA80010 */  sw         $t0, 0x10($sp)
/* 10BF28 80164AB8 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
/* 10BF2C 80164ABC 8FA40048 */  lw         $a0, 0x48($sp)
/* 10BF30 80164AC0 2406000A */  addiu      $a2, $zero, 0xA
/* 10BF34 80164AC4 0C00297F */  jal        func_8000A5FC
/* 10BF38 80164AC8 3C078000 */   lui       $a3, (0x80000000 >> 16)
/* 10BF3C 80164ACC 0C02ECFC */  jal        func_800BB3F0
/* 10BF40 80164AD0 00000000 */   nop
/* 10BF44 80164AD4 3C058018 */  lui        $a1, %hi(D_80186544_ovl5)
/* 10BF48 80164AD8 24A56544 */  addiu      $a1, $a1, %lo(D_80186544_ovl5)
/* 10BF4C 80164ADC 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BF50 80164AE0 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BF54 80164AE4 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 10BF58 80164AE8 44812000 */  mtc1       $at, $f4
/* 10BF5C 80164AEC 3C018019 */  lui        $at, %hi(D_8018D5E0_ovl5)
/* 10BF60 80164AF0 3C058018 */  lui        $a1, %hi(D_801864C4_ovl5)
/* 10BF64 80164AF4 E4440028 */  swc1       $f4, 0x28($v0)
/* 10BF68 80164AF8 C426D5E0 */  lwc1       $f6, %lo(D_8018D5E0_ovl5)($at)
/* 10BF6C 80164AFC 24A564C4 */  addiu      $a1, $a1, %lo(D_801864C4_ovl5)
/* 10BF70 80164B00 E446002C */  swc1       $f6, 0x2C($v0)
/* 10BF74 80164B04 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BF78 80164B08 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BF7C 80164B0C 3C058018 */  lui        $a1, %hi(D_801864E4_ovl5)
/* 10BF80 80164B10 24A564E4 */  addiu      $a1, $a1, %lo(D_801864E4_ovl5)
/* 10BF84 80164B14 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BF88 80164B18 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BF8C 80164B1C 3C058018 */  lui        $a1, %hi(D_80186504_ovl5)
/* 10BF90 80164B20 24A56504 */  addiu      $a1, $a1, %lo(D_80186504_ovl5)
/* 10BF94 80164B24 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BF98 80164B28 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BF9C 80164B2C 3C058018 */  lui        $a1, %hi(D_80186524_ovl5)
/* 10BFA0 80164B30 24A56524 */  addiu      $a1, $a1, %lo(D_80186524_ovl5)
/* 10BFA4 80164B34 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BFA8 80164B38 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BFAC 80164B3C 3C058018 */  lui        $a1, %hi(D_80186564_ovl5)
/* 10BFB0 80164B40 24A56564 */  addiu      $a1, $a1, %lo(D_80186564_ovl5)
/* 10BFB4 80164B44 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BFB8 80164B48 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BFBC 80164B4C 3C058018 */  lui        $a1, %hi(D_80186584_ovl5)
/* 10BFC0 80164B50 24A56584 */  addiu      $a1, $a1, %lo(D_80186584_ovl5)
/* 10BFC4 80164B54 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BFC8 80164B58 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BFCC 80164B5C 3C058018 */  lui        $a1, %hi(D_801865A4_ovl5)
/* 10BFD0 80164B60 24A565A4 */  addiu      $a1, $a1, %lo(D_801865A4_ovl5)
/* 10BFD4 80164B64 0C0571D0 */  jal        func_8015C740_ovl5
/* 10BFD8 80164B68 8FA40048 */   lw        $a0, 0x48($sp)
/* 10BFDC 80164B6C 92290000 */  lbu        $t1, 0x0($s1)
/* 10BFE0 80164B70 3C158018 */  lui        $s5, %hi(D_801865C4_ovl5)
/* 10BFE4 80164B74 26B565C4 */  addiu      $s5, $s5, %lo(D_801865C4_ovl5)
/* 10BFE8 80164B78 000950C0 */  sll        $t2, $t1, 3
/* 10BFEC 80164B7C 02AA5821 */  addu       $t3, $s5, $t2
/* 10BFF0 80164B80 C5680000 */  lwc1       $f8, 0x0($t3)
/* 10BFF4 80164B84 0040A025 */  or         $s4, $v0, $zero
/* 10BFF8 80164B88 24040006 */  addiu      $a0, $zero, 0x6
/* 10BFFC 80164B8C E4480020 */  swc1       $f8, 0x20($v0)
/* 10C000 80164B90 922C0000 */  lbu        $t4, 0x0($s1)
/* 10C004 80164B94 000C68C0 */  sll        $t5, $t4, 3
/* 10C008 80164B98 02AD7021 */  addu       $t6, $s5, $t5
/* 10C00C 80164B9C C5CA0004 */  lwc1       $f10, 0x4($t6)
/* 10C010 80164BA0 0C002DAF */  jal        finish_current_thread
/* 10C014 80164BA4 E44A0024 */   swc1      $f10, 0x24($v0)
/* 10C018 80164BA8 3C16800D */  lui        $s6, %hi(D_800D7158 + 0x20)
/* 10C01C 80164BAC 3C138005 */  lui        $s3, %hi(gPlayerControllers)
/* 10C020 80164BB0 3C12800C */  lui        $s2, %hi(gGameState)
/* 10C024 80164BB4 24100005 */  addiu      $s0, $zero, 0x5
/* 10C028 80164BB8 2652E4F0 */  addiu      $s2, $s2, %lo(gGameState)
/* 10C02C 80164BBC 26738F20 */  addiu      $s3, $s3, %lo(gPlayerControllers)
/* 10C030 80164BC0 26D67178 */  addiu      $s6, $s6, %lo(D_800D7158 + 0x20)
/* 10C034 80164BC4 241E0002 */  addiu      $fp, $zero, 0x2
/* 10C038 80164BC8 24170001 */  addiu      $s7, $zero, 0x1
.L80164BCC_ovl5:
/* 10C03C 80164BCC 52000009 */  beql       $s0, $zero, .L80164BF4_ovl5
/* 10C040 80164BD0 96790002 */   lhu       $t9, 0x2($s3)
/* 10C044 80164BD4 966F0000 */  lhu        $t7, 0x0($s3)
/* 10C048 80164BD8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 10C04C 80164BDC 31F80F00 */  andi       $t8, $t7, 0xF00
/* 10C050 80164BE0 1700005F */  bnez       $t8, .L80164D60_ovl5
/* 10C054 80164BE4 00000000 */   nop
/* 10C058 80164BE8 1000005D */  b          .L80164D60_ovl5
.L80164BEC_ovl3:
/* 10C05C 80164BEC 00008025 */   or        $s0, $zero, $zero
.L80164BF0_ovl3:
/* 10C060 80164BF0 96790002 */  lhu        $t9, 0x2($s3)
.L80164BF4_ovl5:
/* 10C064 80164BF4 33289000 */  andi       $t0, $t9, 0x9000
/* 10C068 80164BF8 51000033 */  beql       $t0, $zero, .L80164CC8_ovl5
/* 10C06C 80164BFC 96620000 */   lhu       $v0, 0x0($s3)
/* 10C070 80164C00 92220000 */  lbu        $v0, 0x0($s1)
/* 10C074 80164C04 AED70078 */  sw         $s7, 0x78($s6)
/* 10C078 80164C08 24040113 */  addiu      $a0, $zero, 0x113
/* 10C07C 80164C0C 10400009 */  beqz       $v0, .L80164C34_ovl5
/* 10C080 80164C10 00000000 */   nop
/* 10C084 80164C14 10570011 */  beq        $v0, $s7, .L80164C5C_ovl5
/* 10C088 80164C18 00000000 */   nop
/* 10C08C 80164C1C 105E0014 */  beq        $v0, $fp, .L80164C70_ovl5
/* 10C090 80164C20 24010003 */   addiu     $at, $zero, 0x3
/* 10C094 80164C24 1041001A */  beq        $v0, $at, .L80164C90_ovl5
/* 10C098 80164C28 00000000 */   nop
/* 10C09C 80164C2C 1000001F */  b          .L80164CAC_ovl5
/* 10C0A0 80164C30 00000000 */   nop
.L80164C34_ovl5:
/* 10C0A4 80164C34 0C029D9E */  jal        play_sound
/* 10C0A8 80164C38 AEDE0078 */   sw        $fp, 0x78($s6)
/* 10C0AC 80164C3C 0C02B2F7 */  jal        func_800ACBDC
/* 10C0B0 80164C40 8FA40048 */   lw        $a0, 0x48($sp)
/* 10C0B4 80164C44 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 10C0B8 80164C48 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
.L80164C4C_ovl3:
/* 10C0BC 80164C4C 0C02C640 */  jal        func_800B1900
/* 10C0C0 80164C50 95240002 */   lhu       $a0, 0x2($t1)
/* 10C0C4 80164C54 10000015 */  b          .L80164CAC_ovl5
/* 10C0C8 80164C58 00000000 */   nop
.L80164C5C_ovl5:
/* 10C0CC 80164C5C 0C029D9E */  jal        play_sound
.L80164C60_ovl3:
/* 10C0D0 80164C60 240400ED */   addiu     $a0, $zero, 0xED
/* 10C0D4 80164C64 240A001F */  addiu      $t2, $zero, 0x1F
/* 10C0D8 80164C68 10000010 */  b          .L80164CAC_ovl5
/* 10C0DC 80164C6C AE4A0000 */   sw        $t2, 0x0($s2)
.L80164C70_ovl5:
/* 10C0E0 80164C70 0C029D9E */  jal        play_sound
/* 10C0E4 80164C74 240400ED */   addiu     $a0, $zero, 0xED
/* 10C0E8 80164C78 8E4B0000 */  lw         $t3, 0x0($s2)
/* 10C0EC 80164C7C 3C01800D */  lui        $at, %hi(D_800D6B68)
/* 10C0F0 80164C80 240C001B */  addiu      $t4, $zero, 0x1B
/* 10C0F4 80164C84 AC2B6B68 */  sw         $t3, %lo(D_800D6B68)($at)
/* 10C0F8 80164C88 10000008 */  b          .L80164CAC_ovl5
.L80164C8C_ovl3:
/* 10C0FC 80164C8C AE4C0000 */   sw        $t4, 0x0($s2)
.L80164C90_ovl5:
/* 10C100 80164C90 0C029D9E */  jal        play_sound
/* 10C104 80164C94 2404002B */   addiu     $a0, $zero, 0x2B
.L80164C98_ovl3:
/* 10C108 80164C98 8E4D0000 */  lw         $t5, 0x0($s2)
/* 10C10C 80164C9C 3C01800D */  lui        $at, %hi(D_800D6B68)
/* 10C110 80164CA0 240E000A */  addiu      $t6, $zero, 0xA
/* 10C114 80164CA4 AC2D6B68 */  sw         $t5, %lo(D_800D6B68)($at)
/* 10C118 80164CA8 AE4E0000 */  sw         $t6, 0x0($s2)
.L80164CAC_ovl5:
/* 10C11C 80164CAC 0C05936C */  jal        func_80164DB0_ovl5
/* 10C120 80164CB0 00000000 */   nop
/* 10C124 80164CB4 0C02BE85 */  jal        func_800AFA14
/* 10C128 80164CB8 00000000 */   nop
/* 10C12C 80164CBC 1000001F */  b          .L80164D3C_ovl5
/* 10C130 80164CC0 922A0000 */   lbu       $t2, 0x0($s1)
/* 10C134 80164CC4 96620000 */  lhu        $v0, 0x0($s3)
.L80164CC8_ovl5:
/* 10C138 80164CC8 304F0800 */  andi       $t7, $v0, 0x800
/* 10C13C 80164CCC 11E0000D */  beqz       $t7, .L80164D04_ovl5
/* 10C140 80164CD0 30480400 */   andi      $t0, $v0, 0x400
/* 10C144 80164CD4 0C029D9E */  jal        play_sound
/* 10C148 80164CD8 24040113 */   addiu     $a0, $zero, 0x113
/* 10C14C 80164CDC 92220000 */  lbu        $v0, 0x0($s1)
/* 10C150 80164CE0 24180003 */  addiu      $t8, $zero, 0x3
/* 10C154 80164CE4 24100005 */  addiu      $s0, $zero, 0x5
/* 10C158 80164CE8 14400004 */  bnez       $v0, .L80164CFC_ovl5
/* 10C15C 80164CEC 2459FFFF */   addiu     $t9, $v0, -0x1
/* 10C160 80164CF0 A2380000 */  sb         $t8, 0x0($s1)
/* 10C164 80164CF4 10000010 */  b          .L80164D38_ovl5
/* 10C168 80164CF8 24100005 */   addiu     $s0, $zero, 0x5
.L80164CFC_ovl5:
/* 10C16C 80164CFC 1000000E */  b          .L80164D38_ovl5
/* 10C170 80164D00 A2390000 */   sb        $t9, 0x0($s1)
.L80164D04_ovl5:
/* 10C174 80164D04 5100000D */  beql       $t0, $zero, .L80164D3C_ovl5
/* 10C178 80164D08 922A0000 */   lbu       $t2, 0x0($s1)
.L80164D0C_ovl3:
/* 10C17C 80164D0C 0C029D9E */  jal        play_sound
.L80164D10_ovl3:
/* 10C180 80164D10 24040113 */   addiu     $a0, $zero, 0x113
/* 10C184 80164D14 92220000 */  lbu        $v0, 0x0($s1)
/* 10C188 80164D18 24010003 */  addiu      $at, $zero, 0x3
/* 10C18C 80164D1C 24100005 */  addiu      $s0, $zero, 0x5
/* 10C190 80164D20 14410004 */  bne        $v0, $at, .L80164D34_ovl5
/* 10C194 80164D24 24490001 */   addiu     $t1, $v0, 0x1
/* 10C198 80164D28 A2200000 */  sb         $zero, 0x0($s1)
/* 10C19C 80164D2C 10000002 */  b          .L80164D38_ovl5
/* 10C1A0 80164D30 24100005 */   addiu     $s0, $zero, 0x5
.L80164D34_ovl5:
/* 10C1A4 80164D34 A2290000 */  sb         $t1, 0x0($s1)
.L80164D38_ovl5:
/* 10C1A8 80164D38 922A0000 */  lbu        $t2, 0x0($s1)
.L80164D3C_ovl5:
/* 10C1AC 80164D3C 000A58C0 */  sll        $t3, $t2, 3
/* 10C1B0 80164D40 02AB6021 */  addu       $t4, $s5, $t3
/* 10C1B4 80164D44 C5900000 */  lwc1       $f16, 0x0($t4)
/* 10C1B8 80164D48 E6900020 */  swc1       $f16, 0x20($s4)
/* 10C1BC 80164D4C 922D0000 */  lbu        $t5, 0x0($s1)
/* 10C1C0 80164D50 000D70C0 */  sll        $t6, $t5, 3
/* 10C1C4 80164D54 02AE7821 */  addu       $t7, $s5, $t6
/* 10C1C8 80164D58 C5F20004 */  lwc1       $f18, 0x4($t7)
/* 10C1CC 80164D5C E6920024 */  swc1       $f18, 0x24($s4)
.L80164D60_ovl5:
/* 10C1D0 80164D60 0C002DAF */  jal        finish_current_thread
/* 10C1D4 80164D64 02E02025 */   or        $a0, $s7, $zero
.L80164D68_ovl3:
/* 10C1D8 80164D68 1000FF98 */  b          .L80164BCC_ovl5
/* 10C1DC 80164D6C 00000000 */   nop
/* 10C1E0 80164D70 00000000 */  nop
/* 10C1E4 80164D74 00000000 */  nop
/* 10C1E8 80164D78 00000000 */  nop
.L80164D7C_ovl3:
/* 10C1EC 80164D7C 00000000 */  nop
/* 10C1F0 80164D80 8FBF0044 */  lw         $ra, 0x44($sp)
/* 10C1F4 80164D84 8FB00020 */  lw         $s0, 0x20($sp)
/* 10C1F8 80164D88 8FB10024 */  lw         $s1, 0x24($sp)
/* 10C1FC 80164D8C 8FB20028 */  lw         $s2, 0x28($sp)
/* 10C200 80164D90 8FB3002C */  lw         $s3, 0x2C($sp)
/* 10C204 80164D94 8FB40030 */  lw         $s4, 0x30($sp)
/* 10C208 80164D98 8FB50034 */  lw         $s5, 0x34($sp)
/* 10C20C 80164D9C 8FB60038 */  lw         $s6, 0x38($sp)
/* 10C210 80164DA0 8FB7003C */  lw         $s7, 0x3C($sp)
/* 10C214 80164DA4 8FBE0040 */  lw         $fp, 0x40($sp)
.L80164DA8_ovl3:
/* 10C218 80164DA8 03E00008 */  jr         $ra
/* 10C21C 80164DAC 27BD0048 */   addiu     $sp, $sp, 0x48
