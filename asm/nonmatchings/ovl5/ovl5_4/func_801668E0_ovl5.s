nonmatching func_801668E0_ovl5, 0x248

glabel func_801668E0_ovl5
    /* 10DD50 801668E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 10DD54 801668E4 3C0E8019 */  lui        $t6, %hi(D_8018E298_ovl5)
    /* 10DD58 801668E8 91CEE298 */  lbu        $t6, %lo(D_8018E298_ovl5)($t6)
    /* 10DD5C 801668EC AFA40038 */  sw         $a0, 0x38($sp)
    /* 10DD60 801668F0 3C048018 */  lui        $a0, %hi(D_8018736C_ovl5)
    /* 10DD64 801668F4 000E7880 */  sll        $t7, $t6, 2
    /* 10DD68 801668F8 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 10DD6C 801668FC 008F2021 */  addu       $a0, $a0, $t7
    /* 10DD70 80166900 AFB40030 */  sw         $s4, 0x30($sp)
    /* 10DD74 80166904 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 10DD78 80166908 AFB20028 */  sw         $s2, 0x28($sp)
    /* 10DD7C 8016690C AFB10024 */  sw         $s1, 0x24($sp)
    /* 10DD80 80166910 AFB00020 */  sw         $s0, 0x20($sp)
    /* 10DD84 80166914 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 10DD88 80166918 8C84736C */  lw         $a0, %lo(D_8018736C_ovl5)($a0)
    /* 10DD8C 8016691C 0C02A7E6 */  jal        func_800A9F98
    /* 10DD90 80166920 3C0540A0 */   lui       $a1, (0x40A00000 >> 16)
    /* 10DD94 80166924 3C148005 */  lui        $s4, %hi(omCurrentObj)
    /* 10DD98 80166928 2694A7C4 */  addiu      $s4, $s4, %lo(omCurrentObj)
    /* 10DD9C 8016692C 8E820000 */  lw         $v0, 0x0($s4)
    /* 10DDA0 80166930 44802000 */  mtc1       $zero, $f4
    /* 10DDA4 80166934 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 10DDA8 80166938 8C580000 */  lw         $t8, 0x0($v0)
    /* 10DDAC 8016693C 00008025 */  or         $s0, $zero, $zero
    /* 10DDB0 80166940 0018C880 */  sll        $t9, $t8, 2
    /* 10DDB4 80166944 00390821 */  addu       $at, $at, $t9
    /* 10DDB8 80166948 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
    /* 10DDBC 8016694C 8C480000 */  lw         $t0, 0x0($v0)
    /* 10DDC0 80166950 3C01C140 */  lui        $at, (0xC1400000 >> 16)
    /* 10DDC4 80166954 44813000 */  mtc1       $at, $f6
    /* 10DDC8 80166958 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 10DDCC 8016695C 00084880 */  sll        $t1, $t0, 2
    /* 10DDD0 80166960 00290821 */  addu       $at, $at, $t1
    /* 10DDD4 80166964 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
    /* 10DDD8 80166968 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 10DDDC 8016696C 3C014296 */  lui        $at, (0x42960000 >> 16)
    /* 10DDE0 80166970 44814000 */  mtc1       $at, $f8
    /* 10DDE4 80166974 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 10DDE8 80166978 000A5880 */  sll        $t3, $t2, 2
    /* 10DDEC 8016697C 002B0821 */  addu       $at, $at, $t3
    /* 10DDF0 80166980 E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
  .L80166984_ovl5:
    /* 10DDF4 80166984 0C002DAF */  jal        ohSleep
    /* 10DDF8 80166988 24040001 */   addiu     $a0, $zero, 0x1
    /* 10DDFC 8016698C 26100001 */  addiu      $s0, $s0, 0x1
    /* 10DE00 80166990 2A01003C */  slti       $at, $s0, 0x3C
    /* 10DE04 80166994 1420FFFB */  bnez       $at, .L80166984_ovl5
    /* 10DE08 80166998 00000000 */   nop
    /* 10DE0C 8016699C 3C018019 */  lui        $at, %hi(D_8018D6C0_ovl5)
    /* 10DE10 801669A0 3C13800E */  lui        $s3, %hi(gEntitiesScaleZArray)
    /* 10DE14 801669A4 3C12800E */  lui        $s2, %hi(gEntitiesScaleYArray)
    /* 10DE18 801669A8 3C11800E */  lui        $s1, %hi(gEntitiesScaleXArray)
    /* 10DE1C 801669AC 26314550 */  addiu      $s1, $s1, %lo(gEntitiesScaleXArray)
    /* 10DE20 801669B0 26524710 */  addiu      $s2, $s2, %lo(gEntitiesScaleYArray)
    /* 10DE24 801669B4 267348D0 */  addiu      $s3, $s3, %lo(gEntitiesScaleZArray)
    /* 10DE28 801669B8 D434D6C0 */  ldc1       $f20, %lo(D_8018D6C0_ovl5)($at)
    /* 10DE2C 801669BC 2410000A */  addiu      $s0, $zero, 0xA
    /* 10DE30 801669C0 44905000 */  mtc1       $s0, $f10
  .L801669C4_ovl5:
    /* 10DE34 801669C4 8E820000 */  lw         $v0, 0x0($s4)
    /* 10DE38 801669C8 24040001 */  addiu      $a0, $zero, 0x1
    /* 10DE3C 801669CC 46805421 */  cvt.d.w    $f16, $f10
    /* 10DE40 801669D0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 10DE44 801669D4 000C6880 */  sll        $t5, $t4, 2
    /* 10DE48 801669D8 46348482 */  mul.d      $f18, $f16, $f20
    /* 10DE4C 801669DC 022D7021 */  addu       $t6, $s1, $t5
    /* 10DE50 801669E0 46209020 */  cvt.s.d    $f0, $f18
    /* 10DE54 801669E4 E5C00000 */  swc1       $f0, 0x0($t6)
    /* 10DE58 801669E8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 10DE5C 801669EC 000FC080 */  sll        $t8, $t7, 2
    /* 10DE60 801669F0 0258C821 */  addu       $t9, $s2, $t8
    /* 10DE64 801669F4 E7200000 */  swc1       $f0, 0x0($t9)
    /* 10DE68 801669F8 8C480000 */  lw         $t0, 0x0($v0)
    /* 10DE6C 801669FC 00084880 */  sll        $t1, $t0, 2
    /* 10DE70 80166A00 02695021 */  addu       $t2, $s3, $t1
    /* 10DE74 80166A04 0C002DAF */  jal        ohSleep
    /* 10DE78 80166A08 E5400000 */   swc1      $f0, 0x0($t2)
    /* 10DE7C 80166A0C 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 10DE80 80166A10 0603FFEC */  bgezl      $s0, .L801669C4_ovl5
    /* 10DE84 80166A14 44905000 */   mtc1      $s0, $f10
    /* 10DE88 80166A18 00002025 */  or         $a0, $zero, $zero
    /* 10DE8C 80166A1C 0C02BEED */  jal        func_800AFBB4
    /* 10DE90 80166A20 8E850000 */   lw        $a1, 0x0($s4)
    /* 10DE94 80166A24 8E820000 */  lw         $v0, 0x0($s4)
    /* 10DE98 80166A28 44802000 */  mtc1       $zero, $f4
    /* 10DE9C 80166A2C 3C04800E */  lui        $a0, %hi(D_800E3910)
    /* 10DEA0 80166A30 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 10DEA4 80166A34 24843910 */  addiu      $a0, $a0, %lo(D_800E3910)
    /* 10DEA8 80166A38 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 10DEAC 80166A3C 000B6080 */  sll        $t4, $t3, 2
    /* 10DEB0 80166A40 008C6821 */  addu       $t5, $a0, $t4
    /* 10DEB4 80166A44 E5A40000 */  swc1       $f4, 0x0($t5)
    /* 10DEB8 80166A48 8C430000 */  lw         $v1, 0x0($v0)
    /* 10DEBC 80166A4C 3C05800E */  lui        $a1, %hi(D_800E3E50)
    /* 10DEC0 80166A50 24A53E50 */  addiu      $a1, $a1, %lo(D_800E3E50)
    /* 10DEC4 80166A54 00031880 */  sll        $v1, $v1, 2
    /* 10DEC8 80166A58 00837021 */  addu       $t6, $a0, $v1
    /* 10DECC 80166A5C C5C00000 */  lwc1       $f0, 0x0($t6)
    /* 10DED0 80166A60 00230821 */  addu       $at, $at, $v1
    /* 10DED4 80166A64 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
    /* 10DED8 80166A68 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 10DEDC 80166A6C 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 10DEE0 80166A70 000FC080 */  sll        $t8, $t7, 2
    /* 10DEE4 80166A74 00380821 */  addu       $at, $at, $t8
    /* 10DEE8 80166A78 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
    /* 10DEEC 80166A7C 8C590000 */  lw         $t9, 0x0($v0)
    /* 10DEF0 80166A80 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 10DEF4 80166A84 00194080 */  sll        $t0, $t9, 2
    /* 10DEF8 80166A88 00280821 */  addu       $at, $at, $t0
    /* 10DEFC 80166A8C E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* 10DF00 80166A90 8C490000 */  lw         $t1, 0x0($v0)
    /* 10DF04 80166A94 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 10DF08 80166A98 00095080 */  sll        $t2, $t1, 2
    /* 10DF0C 80166A9C 002A0821 */  addu       $at, $at, $t2
    /* 10DF10 80166AA0 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* 10DF14 80166AA4 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 10DF18 80166AA8 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 10DF1C 80166AAC 000B6080 */  sll        $t4, $t3, 2
    /* 10DF20 80166AB0 002C0821 */  addu       $at, $at, $t4
    /* 10DF24 80166AB4 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* 10DF28 80166AB8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 10DF2C 80166ABC 3C018019 */  lui        $at, %hi(D_8018D6C8_ovl5)
    /* 10DF30 80166AC0 C426D6C8 */  lwc1       $f6, %lo(D_8018D6C8_ovl5)($at)
    /* 10DF34 80166AC4 000D7080 */  sll        $t6, $t5, 2
    /* 10DF38 80166AC8 00AE7821 */  addu       $t7, $a1, $t6
    /* 10DF3C 80166ACC E5E60000 */  swc1       $f6, 0x0($t7)
    /* 10DF40 80166AD0 8C430000 */  lw         $v1, 0x0($v0)
    /* 10DF44 80166AD4 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 10DF48 80166AD8 00031880 */  sll        $v1, $v1, 2
    /* 10DF4C 80166ADC 00A3C021 */  addu       $t8, $a1, $v1
    /* 10DF50 80166AE0 C7020000 */  lwc1       $f2, 0x0($t8)
    /* 10DF54 80166AE4 00230821 */  addu       $at, $at, $v1
    /* 10DF58 80166AE8 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
    /* 10DF5C 80166AEC 8C590000 */  lw         $t9, 0x0($v0)
    /* 10DF60 80166AF0 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* 10DF64 80166AF4 00194080 */  sll        $t0, $t9, 2
    /* 10DF68 80166AF8 00280821 */  addu       $at, $at, $t0
    /* 10DF6C 80166AFC 0C02BE85 */  jal        curObjSleepForever
    /* 10DF70 80166B00 E4223AD0 */   swc1      $f2, %lo(D_800E3AD0)($at)
    /* 10DF74 80166B04 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 10DF78 80166B08 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 10DF7C 80166B0C 8FB00020 */  lw         $s0, 0x20($sp)
    /* 10DF80 80166B10 8FB10024 */  lw         $s1, 0x24($sp)
    /* 10DF84 80166B14 8FB20028 */  lw         $s2, 0x28($sp)
    /* 10DF88 80166B18 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 10DF8C 80166B1C 8FB40030 */  lw         $s4, 0x30($sp)
    /* 10DF90 80166B20 03E00008 */  jr         $ra
    /* 10DF94 80166B24 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_801668E0_ovl5
.size func_801668E0_ovl5, . - func_801668E0_ovl5
