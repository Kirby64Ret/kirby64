glabel func_802161F0_ovl9
/* 1C4240 802161F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1C4244 802161F4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C4248 802161F8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C424C 802161FC AFBF002C */  sw         $ra, 0x2C($sp)
/* 1C4250 80216200 AFB10028 */  sw         $s1, 0x28($sp)
/* 1C4254 80216204 AFB00024 */  sw         $s0, 0x24($sp)
/* 1C4258 80216208 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1C425C 8021620C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1C4260 80216210 AFA40030 */  sw         $a0, 0x30($sp)
/* 1C4264 80216214 8DC20000 */  lw         $v0, 0x0($t6)
/* 1C4268 80216218 3C11800E */  lui        $s1, %hi(D_800E1B50)
/* 1C426C 8021621C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C4270 80216220 00021080 */  sll        $v0, $v0, 2
/* 1C4274 80216224 02228821 */  addu       $s1, $s1, $v0
/* 1C4278 80216228 8E311B50 */  lw         $s1, %lo(D_800E1B50)($s1)
/* 1C427C 8021622C 00220821 */  addu       $at, $at, $v0
/* 1C4280 80216230 3C0F801D */  lui        $t7, %hi(D_801CCD54)
/* 1C4284 80216234 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 1C4288 80216238 25EFCD54 */  addiu      $t7, $t7, %lo(D_801CCD54)
/* 1C428C 8021623C 0C02CD48 */  jal        func_800B3520
/* 1C4290 80216240 AE2F0098 */   sw        $t7, 0x98($s1)
/* 1C4294 80216244 3C040001 */  lui        $a0, (0x10045 >> 16)
/* 1C4298 80216248 0C02A7A9 */  jal        func_800A9EA4
/* 1C429C 8021624C 34840045 */   ori       $a0, $a0, (0x10045 & 0xFFFF)
/* 1C42A0 80216250 0C02BC9F */  jal        func_800AF27C
/* 1C42A4 80216254 00000000 */   nop
/* 1C42A8 80216258 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
/* 1C42AC 8021625C 4481B000 */  mtc1       $at, $f22
/* 1C42B0 80216260 3C0143A0 */  lui        $at, (0x43A00000 >> 16)
/* 1C42B4 80216264 4481A000 */  mtc1       $at, $f20
/* 1C42B8 80216268 24100003 */  addiu      $s0, $zero, 0x3
/* 1C42BC 8021626C 4600A306 */  mov.s      $f12, $f20
.L80216270_ovl9:
/* 1C42C0 80216270 0C066A6B */  jal        func_8019A9AC_ovl7
/* 1C42C4 80216274 4600B386 */   mov.s     $f14, $f22
/* 1C42C8 80216278 9238003C */  lbu        $t8, 0x3C($s1)
/* 1C42CC 8021627C 1700000D */  bnez       $t8, .L802162B4_ovl9
/* 1C42D0 80216280 00000000 */   nop
/* 1C42D4 80216284 1450000B */  bne        $v0, $s0, .L802162B4_ovl9
/* 1C42D8 80216288 3C088005 */   lui       $t0, %hi(D_8004A7C4)
/* 1C42DC 8021628C 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 1C42E0 80216290 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1C42E4 80216294 24190002 */  addiu      $t9, $zero, 0x2
/* 1C42E8 80216298 8D090000 */  lw         $t1, 0x0($t0)
/* 1C42EC 8021629C D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1C42F0 802162A0 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1C42F4 802162A4 00095080 */  sll        $t2, $t1, 2
/* 1C42F8 802162A8 002A0821 */  addu       $at, $at, $t2
/* 1C42FC 802162AC 10000005 */  b          .L802162C4_ovl9
/* 1C4300 802162B0 AC39DC50 */   sw        $t9, %lo(gEntityVtableIndexArray)($at)
.L802162B4_ovl9:
/* 1C4304 802162B4 0C002DAF */  jal        finish_current_thread
/* 1C4308 802162B8 24040001 */   addiu     $a0, $zero, 0x1
/* 1C430C 802162BC 1000FFEC */  b          .L80216270_ovl9
/* 1C4310 802162C0 4600A306 */   mov.s     $f12, $f20
.L802162C4_ovl9:
/* 1C4314 802162C4 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1C4318 802162C8 8FB00024 */  lw         $s0, 0x24($sp)
/* 1C431C 802162CC 8FB10028 */  lw         $s1, 0x28($sp)
/* 1C4320 802162D0 03E00008 */  jr         $ra
/* 1C4324 802162D4 27BD0030 */   addiu     $sp, $sp, 0x30
