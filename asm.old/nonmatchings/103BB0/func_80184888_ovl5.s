glabel func_80184888_ovl5
/* 12BCF8 80184888 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 12BCFC 8018488C AFB70058 */  sw         $s7, 0x58($sp)
/* 12BD00 80184890 3C178019 */  lui        $s7, %hi(D_8018D380_ovl5)
/* 12BD04 80184894 AFB4004C */  sw         $s4, 0x4C($sp)
/* 12BD08 80184898 0080A025 */  or         $s4, $a0, $zero
/* 12BD0C 8018489C 26F7D380 */  addiu      $s7, $s7, %lo(D_8018D380_ovl5)
/* 12BD10 801848A0 AFBF005C */  sw         $ra, 0x5C($sp)
glabel func_801848A4_ovl3
/* 12BD14 801848A4 AFB60054 */  sw         $s6, 0x54($sp)
/* 12BD18 801848A8 AFB50050 */  sw         $s5, 0x50($sp)
/* 12BD1C 801848AC AFB30048 */  sw         $s3, 0x48($sp)
/* 12BD20 801848B0 AFB20044 */  sw         $s2, 0x44($sp)
/* 12BD24 801848B4 AFB10040 */  sw         $s1, 0x40($sp)
/* 12BD28 801848B8 AFB0003C */  sw         $s0, 0x3C($sp)
/* 12BD2C 801848BC F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 12BD30 801848C0 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 12BD34 801848C4 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 12BD38 801848C8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 12BD3C 801848CC F7B40010 */  sdc1       $f20, 0x10($sp)
/* 12BD40 801848D0 0C02A422 */  jal        func_800A9088
/* 12BD44 801848D4 8EE40000 */   lw        $a0, 0x0($s7)
/* 12BD48 801848D8 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 12BD4C 801848DC 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* 12BD50 801848E0 3C028019 */  lui        $v0, %hi(D_8018C300_ovl5)
/* 12BD54 801848E4 8EC60000 */  lw         $a2, 0x0($s6)
/* 12BD58 801848E8 2442C300 */  addiu      $v0, $v0, %lo(D_8018C300_ovl5)
/* 12BD5C 801848EC C4440000 */  lwc1       $f4, 0x0($v0)
/* 12BD60 801848F0 C6E60028 */  lwc1       $f6, 0x28($s7)
/* 12BD64 801848F4 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12BD68 801848F8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 12BD6C 801848FC 46062200 */  add.s      $f8, $f4, $f6
/* 12BD70 80184900 000E7880 */  sll        $t7, $t6, 2
/* 12BD74 80184904 002F0821 */  addu       $at, $at, $t7
/* 12BD78 80184908 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 12BD7C 8018490C C6F0002C */  lwc1       $f16, 0x2C($s7)
.L80184910_ovl3:
/* 12BD80 80184910 C44A0004 */  lwc1       $f10, 0x4($v0)
/* 12BD84 80184914 8CD80000 */  lw         $t8, 0x0($a2)
/* 12BD88 80184918 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 12BD8C 8018491C 46105480 */  add.s      $f18, $f10, $f16
/* 12BD90 80184920 0018C880 */  sll        $t9, $t8, 2
/* 12BD94 80184924 00390821 */  addu       $at, $at, $t9
.L80184928_ovl3:
/* 12BD98 80184928 E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 12BD9C 8018492C C6E60030 */  lwc1       $f6, 0x30($s7)
/* 12BDA0 80184930 C4440008 */  lwc1       $f4, 0x8($v0)
/* 12BDA4 80184934 8CC80000 */  lw         $t0, 0x0($a2)
/* 12BDA8 80184938 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 12BDAC 8018493C 46062200 */  add.s      $f8, $f4, $f6
/* 12BDB0 80184940 00084880 */  sll        $t1, $t0, 2
/* 12BDB4 80184944 00290821 */  addu       $at, $at, $t1
/* 12BDB8 80184948 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 12BDBC 8018494C 8EE40004 */  lw         $a0, 0x4($s7)
/* 12BDC0 80184950 50800004 */  beql       $a0, $zero, .L80184964_ovl5
/* 12BDC4 80184954 8EE40008 */   lw        $a0, 0x8($s7)
/* 12BDC8 80184958 0C02A806 */  jal        func_800AA018
/* 12BDCC 8018495C 00000000 */   nop
/* 12BDD0 80184960 8EE40008 */  lw         $a0, 0x8($s7)
.L80184964_ovl5:
/* 12BDD4 80184964 10800003 */  beqz       $a0, .L80184974_ovl5
/* 12BDD8 80184968 00000000 */   nop
/* 12BDDC 8018496C 0C02A806 */  jal        func_800AA018
/* 12BDE0 80184970 00000000 */   nop
.L80184974_ovl5:
/* 12BDE4 80184974 3C018019 */  lui        $at, %hi(D_8018E010_ovl5)
/* 12BDE8 80184978 C43AE010 */  lwc1       $f26, %lo(D_8018E010_ovl5)($at)
/* 12BDEC 8018497C AE800048 */  sw         $zero, 0x48($s4)
/* 12BDF0 80184980 8EC60000 */  lw         $a2, 0x0($s6)
/* 12BDF4 80184984 3C014334 */  lui        $at, (0x43340000 >> 16)
.L80184988_ovl3:
/* 12BDF8 80184988 4481E000 */  mtc1       $at, $f28
/* 12BDFC 8018498C 8CCA0000 */  lw         $t2, 0x0($a2)
/* 12BE00 80184990 3C01800E */  lui        $at, %hi(D_800DF310)
/* 12BE04 80184994 3C15800E */  lui        $s5, %hi(gEntitiesAngleYArray)
/* 12BE08 80184998 000A5880 */  sll        $t3, $t2, 2
/* 12BE0C 8018499C 002B0821 */  addu       $at, $at, $t3
/* 12BE10 801849A0 AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
/* 12BE14 801849A4 C6EA001C */  lwc1       $f10, 0x1C($s7)
/* 12BE18 801849A8 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12BE1C 801849AC 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 12BE20 801849B0 461A5402 */  mul.s      $f16, $f10, $f26
/* 12BE24 801849B4 000C6880 */  sll        $t5, $t4, 2
/* 12BE28 801849B8 002D0821 */  addu       $at, $at, $t5
/* 12BE2C 801849BC 26B541D0 */  addiu      $s5, $s5, %lo(gEntitiesAngleYArray)
/* 12BE30 801849C0 4480B000 */  mtc1       $zero, $f22
/* 12BE34 801849C4 3C11800E */  lui        $s1, %hi(gEntitiesScaleXArray)
.L801849C8_ovl3:
/* 12BE38 801849C8 26314550 */  addiu      $s1, $s1, %lo(gEntitiesScaleXArray)
/* 12BE3C 801849CC 461C8483 */  div.s      $f18, $f16, $f28
/* 12BE40 801849D0 3C12800E */  lui        $s2, %hi(gEntitiesScaleYArray)
/* 12BE44 801849D4 26524710 */  addiu      $s2, $s2, %lo(gEntitiesScaleYArray)
/* 12BE48 801849D8 3C13800E */  lui        $s3, %hi(gEntitiesScaleZArray)
/* 12BE4C 801849DC 267348D0 */  addiu      $s3, $s3, %lo(gEntitiesScaleZArray)
/* 12BE50 801849E0 24140004 */  addiu      $s4, $zero, 0x4
.L801849E4_ovl3:
/* 12BE54 801849E4 00008025 */  or         $s0, $zero, $zero
/* 12BE58 801849E8 E4324010 */  swc1       $f18, %lo(gEntitiesAngleXArray)($at)
/* 12BE5C 801849EC C6E40020 */  lwc1       $f4, 0x20($s7)
/* 12BE60 801849F0 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12BE64 801849F4 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
/* 12BE68 801849F8 461A2182 */  mul.s      $f6, $f4, $f26
/* 12BE6C 801849FC 000E7880 */  sll        $t7, $t6, 2
/* 12BE70 80184A00 02AFC021 */  addu       $t8, $s5, $t7
/* 12BE74 80184A04 461C3203 */  div.s      $f8, $f6, $f28
/* 12BE78 80184A08 E7080000 */  swc1       $f8, 0x0($t8)
/* 12BE7C 80184A0C C6EA0024 */  lwc1       $f10, 0x24($s7)
/* 12BE80 80184A10 8CD90000 */  lw         $t9, 0x0($a2)
/* 12BE84 80184A14 461A5402 */  mul.s      $f16, $f10, $f26
/* 12BE88 80184A18 00194080 */  sll        $t0, $t9, 2
/* 12BE8C 80184A1C 00280821 */  addu       $at, $at, $t0
/* 12BE90 80184A20 461C8483 */  div.s      $f18, $f16, $f28
/* 12BE94 80184A24 E4324390 */  swc1       $f18, %lo(gEntitiesAngleZArray)($at)
/* 12BE98 80184A28 8CC90000 */  lw         $t1, 0x0($a2)
/* 12BE9C 80184A2C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 12BEA0 80184A30 44813000 */  mtc1       $at, $f6
/* 12BEA4 80184A34 00095080 */  sll        $t2, $t1, 2
/* 12BEA8 80184A38 022A5821 */  addu       $t3, $s1, $t2
/* 12BEAC 80184A3C E5760000 */  swc1       $f22, 0x0($t3)
/* 12BEB0 80184A40 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12BEB4 80184A44 000C6880 */  sll        $t5, $t4, 2
.L80184A48_ovl3:
/* 12BEB8 80184A48 024D7021 */  addu       $t6, $s2, $t5
/* 12BEBC 80184A4C E5D60000 */  swc1       $f22, 0x0($t6)
/* 12BEC0 80184A50 8CCF0000 */  lw         $t7, 0x0($a2)
/* 12BEC4 80184A54 000FC080 */  sll        $t8, $t7, 2
/* 12BEC8 80184A58 0278C821 */  addu       $t9, $s3, $t8
/* 12BECC 80184A5C E7360000 */  swc1       $f22, 0x0($t9)
/* 12BED0 80184A60 C6E4000C */  lwc1       $f4, 0xC($s7)
/* 12BED4 80184A64 46062503 */  div.s      $f20, $f4, $f6
/* 12BED8 80184A68 8EC60000 */  lw         $a2, 0x0($s6)
.L80184A6C_ovl5:
/* 12BEDC 80184A6C 24040001 */  addiu      $a0, $zero, 0x1
/* 12BEE0 80184A70 8CC80000 */  lw         $t0, 0x0($a2)
/* 12BEE4 80184A74 00084880 */  sll        $t1, $t0, 2
/* 12BEE8 80184A78 02291021 */  addu       $v0, $s1, $t1
/* 12BEEC 80184A7C C4480000 */  lwc1       $f8, 0x0($v0)
.L80184A80_ovl3:
/* 12BEF0 80184A80 46144280 */  add.s      $f10, $f8, $f20
/* 12BEF4 80184A84 E44A0000 */  swc1       $f10, 0x0($v0)
/* 12BEF8 80184A88 8CCA0000 */  lw         $t2, 0x0($a2)
/* 12BEFC 80184A8C 000A5880 */  sll        $t3, $t2, 2
/* 12BF00 80184A90 024B1821 */  addu       $v1, $s2, $t3
/* 12BF04 80184A94 C4700000 */  lwc1       $f16, 0x0($v1)
.L80184A98_ovl3:
/* 12BF08 80184A98 46148480 */  add.s      $f18, $f16, $f20
/* 12BF0C 80184A9C E4720000 */  swc1       $f18, 0x0($v1)
/* 12BF10 80184AA0 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12BF14 80184AA4 000C6880 */  sll        $t5, $t4, 2
/* 12BF18 80184AA8 026D2821 */  addu       $a1, $s3, $t5
/* 12BF1C 80184AAC C4A40000 */  lwc1       $f4, 0x0($a1)
/* 12BF20 80184AB0 46142180 */  add.s      $f6, $f4, $f20
/* 12BF24 80184AB4 0C002DAF */  jal        finish_current_thread
/* 12BF28 80184AB8 E4A60000 */   swc1      $f6, 0x0($a1)
/* 12BF2C 80184ABC 26100001 */  addiu      $s0, $s0, 0x1
/* 12BF30 80184AC0 5614FFEA */  bnel       $s0, $s4, .L80184A6C_ovl5
/* 12BF34 80184AC4 8EC60000 */   lw        $a2, 0x0($s6)
/* 12BF38 80184AC8 8EC60000 */  lw         $a2, 0x0($s6)
/* 12BF3C 80184ACC C6E0000C */  lwc1       $f0, 0xC($s7)
/* 12BF40 80184AD0 3C014080 */  lui        $at, (0x40800000 >> 16)
.L80184AD4_ovl3:
/* 12BF44 80184AD4 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12BF48 80184AD8 4481C000 */  mtc1       $at, $f24
/* 12BF4C 80184ADC 4600B506 */  mov.s      $f20, $f22
/* 12BF50 80184AE0 000E7880 */  sll        $t7, $t6, 2
/* 12BF54 80184AE4 022FC021 */  addu       $t8, $s1, $t7
.L80184AE8_ovl3:
/* 12BF58 80184AE8 E7000000 */  swc1       $f0, 0x0($t8)
/* 12BF5C 80184AEC 8CD90000 */  lw         $t9, 0x0($a2)
/* 12BF60 80184AF0 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 12BF64 80184AF4 4481B000 */  mtc1       $at, $f22
/* 12BF68 80184AF8 00194080 */  sll        $t0, $t9, 2
/* 12BF6C 80184AFC 02484821 */  addu       $t1, $s2, $t0
.L80184B00_ovl3:
/* 12BF70 80184B00 E5200000 */  swc1       $f0, 0x0($t1)
/* 12BF74 80184B04 8CCA0000 */  lw         $t2, 0x0($a2)
/* 12BF78 80184B08 000A5880 */  sll        $t3, $t2, 2
/* 12BF7C 80184B0C 026B6021 */  addu       $t4, $s3, $t3
/* 12BF80 80184B10 E5800000 */  swc1       $f0, 0x0($t4)
.L80184B14_ovl5:
/* 12BF84 80184B14 461AA202 */  mul.s      $f8, $f20, $f26
.L80184B18_ovl3:
/* 12BF88 80184B18 4618A500 */  add.s      $f20, $f20, $f24
/* 12BF8C 80184B1C 8CCD0000 */  lw         $t5, 0x0($a2)
/* 12BF90 80184B20 4614B03C */  c.lt.s     $f22, $f20
glabel func_80184B24_ovl3
/* 12BF94 80184B24 000D7080 */  sll        $t6, $t5, 2
/* 12BF98 80184B28 461C4283 */  div.s      $f10, $f8, $f28
/* 12BF9C 80184B2C 02AE7821 */  addu       $t7, $s5, $t6
/* 12BFA0 80184B30 45000002 */  bc1f       .L80184B3C_ovl5
/* 12BFA4 80184B34 E5EA0000 */   swc1      $f10, 0x0($t7)
/* 12BFA8 80184B38 4616A501 */  sub.s      $f20, $f20, $f22
.L80184B3C_ovl5:
/* 12BFAC 80184B3C 0C002DAF */  jal        finish_current_thread
/* 12BFB0 80184B40 24040001 */   addiu     $a0, $zero, 0x1
/* 12BFB4 80184B44 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 12BFB8 80184B48 1000FFF2 */  b          .L80184B14_ovl5
/* 12BFBC 80184B4C 8CC6A7C4 */   lw        $a2, %lo(D_8004A7C4)($a2)
/* 12BFC0 80184B50 00000000 */  nop
/* 12BFC4 80184B54 00000000 */  nop
/* 12BFC8 80184B58 00000000 */  nop
/* 12BFCC 80184B5C 00000000 */  nop
/* 12BFD0 80184B60 8FBF005C */  lw         $ra, 0x5C($sp)
/* 12BFD4 80184B64 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 12BFD8 80184B68 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 12BFDC 80184B6C D7B80020 */  ldc1       $f24, 0x20($sp)
/* 12BFE0 80184B70 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 12BFE4 80184B74 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 12BFE8 80184B78 8FB0003C */  lw         $s0, 0x3C($sp)
/* 12BFEC 80184B7C 8FB10040 */  lw         $s1, 0x40($sp)
/* 12BFF0 80184B80 8FB20044 */  lw         $s2, 0x44($sp)
/* 12BFF4 80184B84 8FB30048 */  lw         $s3, 0x48($sp)
/* 12BFF8 80184B88 8FB4004C */  lw         $s4, 0x4C($sp)
/* 12BFFC 80184B8C 8FB50050 */  lw         $s5, 0x50($sp)
/* 12C000 80184B90 8FB60054 */  lw         $s6, 0x54($sp)
/* 12C004 80184B94 8FB70058 */  lw         $s7, 0x58($sp)
/* 12C008 80184B98 03E00008 */  jr         $ra
/* 12C00C 80184B9C 27BD0060 */   addiu     $sp, $sp, 0x60
