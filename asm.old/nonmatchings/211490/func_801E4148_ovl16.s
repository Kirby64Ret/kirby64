glabel func_801E4148_ovl16
/* 21A3F8 801E4148 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 21A3FC 801E414C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 21A400 801E4150 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 21A404 801E4154 AFBF0034 */  sw         $ra, 0x34($sp)
/* 21A408 801E4158 AFB30030 */  sw         $s3, 0x30($sp)
/* 21A40C 801E415C AFB2002C */  sw         $s2, 0x2C($sp)
/* 21A410 801E4160 AFB10028 */  sw         $s1, 0x28($sp)
/* 21A414 801E4164 AFB00024 */  sw         $s0, 0x24($sp)
/* 21A418 801E4168 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 21A41C 801E416C F7B40010 */  sdc1       $f20, 0x10($sp)
.L801E4170_ovl13:
/* 21A420 801E4170 AFA40038 */  sw         $a0, 0x38($sp)
/* 21A424 801E4174 8C4F0000 */  lw         $t7, 0x0($v0)
glabel func_801E4178_ovl17
/* 21A428 801E4178 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 21A42C 801E417C 4481B000 */  mtc1       $at, $f22
/* 21A430 801E4180 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 21A434 801E4184 000FC080 */  sll        $t8, $t7, 2
/* 21A438 801E4188 00380821 */  addu       $at, $at, $t8
/* 21A43C 801E418C 240E0010 */  addiu      $t6, $zero, 0x10
.L801E4190_ovl9:
/* 21A440 801E4190 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 21A444 801E4194 8C590000 */  lw         $t9, 0x0($v0)
.L801E4198_ovl13:
/* 21A448 801E4198 44801000 */  mtc1       $zero, $f2
.L801E419C_ovl9:
/* 21A44C 801E419C 3C04800E */  lui        $a0, %hi(D_800E3750)
/* 21A450 801E41A0 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* 21A454 801E41A4 00194080 */  sll        $t0, $t9, 2
/* 21A458 801E41A8 00884821 */  addu       $t1, $a0, $t0
/* 21A45C 801E41AC E5220000 */  swc1       $f2, 0x0($t1)
/* 21A460 801E41B0 8C430000 */  lw         $v1, 0x0($v0)
/* 21A464 801E41B4 3C01800E */  lui        $at, %hi(D_800E3590)
/* 21A468 801E41B8 3C05800E */  lui        $a1, %hi(D_800E3C90)
/* 21A46C 801E41BC 00031880 */  sll        $v1, $v1, 2
.L801E41C0_ovl9:
/* 21A470 801E41C0 00835021 */  addu       $t2, $a0, $v1
glabel func_801E41C4_ovl17
/* 21A474 801E41C4 C5400000 */  lwc1       $f0, 0x0($t2)
/* 21A478 801E41C8 00230821 */  addu       $at, $at, $v1
/* 21A47C 801E41CC 24A53C90 */  addiu      $a1, $a1, %lo(D_800E3C90)
/* 21A480 801E41D0 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
.L801E41D4_ovl9:
/* 21A484 801E41D4 8C4B0000 */  lw         $t3, 0x0($v0)
.L801E41D8_ovl15:
/* 21A488 801E41D8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 21A48C 801E41DC 4616103C */  c.lt.s     $f2, $f22
/* 21A490 801E41E0 000B6080 */  sll        $t4, $t3, 2
.L801E41E4_ovl15:
/* 21A494 801E41E4 002C0821 */  addu       $at, $at, $t4
.L801E41E8_ovl9:
/* 21A498 801E41E8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
.L801E41EC_ovl9:
/* 21A49C 801E41EC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 21A4A0 801E41F0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 21A4A4 801E41F4 3C12801F */  lui        $s2, %hi(D_801F01D0_ovl16)
/* 21A4A8 801E41F8 000D7880 */  sll        $t7, $t5, 2
/* 21A4AC 801E41FC 002F0821 */  addu       $at, $at, $t7
/* 21A4B0 801E4200 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
.L801E4204_ovl13:
/* 21A4B4 801E4204 8C4E0000 */  lw         $t6, 0x0($v0)
/* 21A4B8 801E4208 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x50)
/* 21A4BC 801E420C C424FF74 */  lwc1       $f4, %lo(func_801EFF24_ovl16 + 0x50)($at)
/* 21A4C0 801E4210 000EC080 */  sll        $t8, $t6, 2
/* 21A4C4 801E4214 00B8C821 */  addu       $t9, $a1, $t8
/* 21A4C8 801E4218 E7240000 */  swc1       $f4, 0x0($t9)
/* 21A4CC 801E421C 8C430000 */  lw         $v1, 0x0($v0)
/* 21A4D0 801E4220 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E4224_ovl15:
/* 21A4D4 801E4224 265201D0 */  addiu      $s2, $s2, %lo(D_801F01D0_ovl16)
/* 21A4D8 801E4228 00031880 */  sll        $v1, $v1, 2
.L801E422C_ovl13:
/* 21A4DC 801E422C 00A34021 */  addu       $t0, $a1, $v1
.L801E4230_ovl9:
/* 21A4E0 801E4230 C5060000 */  lwc1       $f6, 0x0($t0)
.L801E4234_ovl15:
/* 21A4E4 801E4234 00230821 */  addu       $at, $at, $v1
/* 21A4E8 801E4238 3C11801F */  lui        $s1, %hi(D_801F01D8_ovl16)
.L801E423C_ovl9:
/* 21A4EC 801E423C E4263AD0 */  swc1       $f6, %lo(D_800E3AD0)($at)
/* 21A4F0 801E4240 8C490000 */  lw         $t1, 0x0($v0)
/* 21A4F4 801E4244 3C01800F */  lui        $at, %hi(D_800EA360)
/* 21A4F8 801E4248 00009825 */  or         $s3, $zero, $zero
/* 21A4FC 801E424C 00095080 */  sll        $t2, $t1, 2
/* 21A500 801E4250 002A0821 */  addu       $at, $at, $t2
/* 21A504 801E4254 4500002A */  bc1f       .L801E4300_ovl16
/* 21A508 801E4258 AC20A360 */   sw        $zero, %lo(D_800EA360)($at)
.L801E425C_ovl17:
/* 21A50C 801E425C 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x54)
.L801E4260_ovl9:
/* 21A510 801E4260 3C10801F */  lui        $s0, %hi(D_801F0200_ovl16)
/* 21A514 801E4264 26100200 */  addiu      $s0, $s0, %lo(D_801F0200_ovl16)
/* 21A518 801E4268 C434FF78 */  lwc1       $f20, %lo(func_801EFF24_ovl16 + 0x54)($at)
glabel func_801E426C_ovl13
/* 21A51C 801E426C 263101D8 */  addiu      $s1, $s1, %lo(D_801F01D8_ovl16)
.L801E4270_ovl16:
/* 21A520 801E4270 3C04801F */  lui        $a0, %hi(D_801F01B0_ovl16)
glabel func_801E4274_ovl17
/* 21A524 801E4274 248401B0 */  addiu      $a0, $a0, %lo(D_801F01B0_ovl16)
.L801E4278_ovl10:
/* 21A528 801E4278 00002825 */  or         $a1, $zero, $zero
glabel func_801E427C_ovl17
/* 21A52C 801E427C C4880000 */  lwc1       $f8, 0x0($a0)
.L801E4280_ovl9:
/* 21A530 801E4280 02051021 */  addu       $v0, $s0, $a1
glabel func_801E4284_ovl10
/* 21A534 801E4284 4608A032 */  c.eq.s     $f20, $f8
/* 21A538 801E4288 00000000 */  nop
/* 21A53C 801E428C 45030010 */  bc1tl      .L801E42D0_ovl16
/* 21A540 801E4290 24840004 */   addiu     $a0, $a0, 0x4
/* 21A544 801E4294 8C430000 */  lw         $v1, 0x0($v0)
/* 21A548 801E4298 02255821 */  addu       $t3, $s1, $a1
glabel func_801E429C_ovl9
/* 21A54C 801E429C C5700000 */  lwc1       $f16, 0x0($t3)
/* 21A550 801E42A0 C46A0020 */  lwc1       $f10, 0x20($v1)
/* 21A554 801E42A4 46105480 */  add.s      $f18, $f10, $f16
/* 21A558 801E42A8 E4720020 */  swc1       $f18, 0x20($v1)
/* 21A55C 801E42AC 8C430000 */  lw         $v1, 0x0($v0)
/* 21A560 801E42B0 C4800000 */  lwc1       $f0, 0x0($a0)
/* 21A564 801E42B4 C4640020 */  lwc1       $f4, 0x20($v1)
/* 21A568 801E42B8 4604003E */  c.le.s     $f0, $f4
/* 21A56C 801E42BC 00000000 */  nop
/* 21A570 801E42C0 45020003 */  bc1fl      .L801E42D0_ovl16
/* 21A574 801E42C4 24840004 */   addiu     $a0, $a0, 0x4
/* 21A578 801E42C8 E4600020 */  swc1       $f0, 0x20($v1)
glabel func_801E42CC_ovl17
/* 21A57C 801E42CC 24840004 */  addiu      $a0, $a0, 0x4
.L801E42D0_ovl16:
/* 21A580 801E42D0 1492FFEA */  bne        $a0, $s2, func_801E427C_ovl17
.L801E42D4_ovl10:
/* 21A584 801E42D4 24A50004 */   addiu     $a1, $a1, 0x4
.L801E42D8_ovl10:
/* 21A588 801E42D8 0C002DAF */  jal        finish_current_thread
/* 21A58C 801E42DC 24040001 */   addiu     $a0, $zero, 0x1
/* 21A590 801E42E0 26730001 */  addiu      $s3, $s3, 0x1
glabel func_801E42E4_ovl10
/* 21A594 801E42E4 44933000 */  mtc1       $s3, $f6
/* 21A598 801E42E8 00000000 */  nop
glabel func_801E42EC_ovl17
/* 21A59C 801E42EC 46803220 */  cvt.s.w    $f8, $f6
/* 21A5A0 801E42F0 4616403C */  c.lt.s     $f8, $f22
.L801E42F4_ovl13:
/* 21A5A4 801E42F4 00000000 */  nop
/* 21A5A8 801E42F8 4501FFDD */  bc1t       .L801E4270_ovl16
/* 21A5AC 801E42FC 00000000 */   nop
.L801E4300_ovl16:
/* 21A5B0 801E4300 3C040001 */  lui        $a0, (0x104EE >> 16)
/* 21A5B4 801E4304 0C02A855 */  jal        func_800AA154
/* 21A5B8 801E4308 348404EE */   ori       $a0, $a0, (0x104EE & 0xFFFF)
/* 21A5BC 801E430C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 21A5C0 801E4310 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 21A5C4 801E4314 8FBF0034 */  lw         $ra, 0x34($sp)
/* 21A5C8 801E4318 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 21A5CC 801E431C 8DAF0000 */  lw         $t7, 0x0($t5)
.L801E4320_ovl15:
/* 21A5D0 801E4320 240C0013 */  addiu      $t4, $zero, 0x13
/* 21A5D4 801E4324 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 21A5D8 801E4328 000F7080 */  sll        $t6, $t7, 2
/* 21A5DC 801E432C 002E0821 */  addu       $at, $at, $t6
.L801E4330_ovl15:
/* 21A5E0 801E4330 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 21A5E4 801E4334 8FB00024 */  lw         $s0, 0x24($sp)
/* 21A5E8 801E4338 8FB10028 */  lw         $s1, 0x28($sp)
/* 21A5EC 801E433C 8FB2002C */  lw         $s2, 0x2C($sp)
/* 21A5F0 801E4340 8FB30030 */  lw         $s3, 0x30($sp)
/* 21A5F4 801E4344 AC2CDC50 */  sw         $t4, %lo(gEntityVtableIndexArray)($at)
.L801E4348_ovl9:
/* 21A5F8 801E4348 03E00008 */  jr         $ra
/* 21A5FC 801E434C 27BD0038 */   addiu     $sp, $sp, 0x38
