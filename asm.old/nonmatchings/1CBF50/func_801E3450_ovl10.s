glabel func_801E3450_ovl10
/* 1D41C0 801E3450 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D41C4 801E3454 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D41C8 801E3458 0C067694 */  jal        func_8019DA50_ovl7
.L801E345C_ovl13:
/* 1D41CC 801E345C AFA40018 */   sw        $a0, 0x18($sp)
/* 1D41D0 801E3460 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1D41D4 801E3464 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 1D41D8 801E3468 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1D41DC 801E346C 3C04800E */  lui        $a0, %hi(D_800E6A10)
/* 1D41E0 801E3470 24846A10 */  addiu      $a0, $a0, %lo(D_800E6A10)
/* 1D41E4 801E3474 8DC20000 */  lw         $v0, 0x0($t6)
/* 1D41E8 801E3478 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1D41EC 801E347C 44819000 */  mtc1       $at, $f18
/* 1D41F0 801E3480 00021080 */  sll        $v0, $v0, 2
/* 1D41F4 801E3484 00827821 */  addu       $t7, $a0, $v0
/* 1D41F8 801E3488 C5E40000 */  lwc1       $f4, 0x0($t7)
.L801E348C_ovl15:
/* 1D41FC 801E348C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 1D4200 801E3490 3C03800E */  lui        $v1, %hi(gEntitiesNextPosYArray)
/* 1D4204 801E3494 46049032 */  c.eq.s     $f18, $f4
/* 1D4208 801E3498 44814000 */  mtc1       $at, $f8
/* 1D420C 801E349C 46000306 */  mov.s      $f12, $f0
glabel func_801E34A0_ovl16
/* 1D4210 801E34A0 24632790 */  addiu      $v1, $v1, %lo(gEntitiesNextPosYArray)
/* 1D4214 801E34A4 4502000A */  bc1fl      .L801E34D0_ovl10
/* 1D4218 801E34A8 44808000 */   mtc1      $zero, $f16
/* 1D421C 801E34AC 44808000 */  mtc1       $zero, $f16
/* 1D4220 801E34B0 00000000 */  nop
/* 1D4224 801E34B4 4610003C */  c.lt.s     $f0, $f16
/* 1D4228 801E34B8 00000000 */  nop
.L801E34BC_ovl9:
/* 1D422C 801E34BC 4502000E */  bc1fl      func_801E34F8_ovl10
/* 1D4230 801E34C0 C4660000 */   lwc1      $f6, 0x0($v1)
/* 1D4234 801E34C4 1000000B */  b          func_801E34F4_ovl17
/* 1D4238 801E34C8 46000307 */   neg.s     $f12, $f0
/* 1D423C 801E34CC 44808000 */  mtc1       $zero, $f16
.L801E34D0_ovl10:
/* 1D4240 801E34D0 00000000 */  nop
/* 1D4244 801E34D4 4610003C */  c.lt.s     $f0, $f16
/* 1D4248 801E34D8 00000000 */  nop
/* 1D424C 801E34DC 45020005 */  bc1fl      func_801E34F4_ovl17
/* 1D4250 801E34E0 46000307 */   neg.s     $f12, $f0
.L801E34E4_ovl15:
/* 1D4254 801E34E4 46000307 */  neg.s      $f12, $f0
/* 1D4258 801E34E8 10000002 */  b          func_801E34F4_ovl17
/* 1D425C 801E34EC 46006307 */   neg.s     $f12, $f12
/* 1D4260 801E34F0 46000307 */  neg.s      $f12, $f0
glabel func_801E34F4_ovl17
/* 1D4264 801E34F4 C4660000 */  lwc1       $f6, 0x0($v1)
glabel func_801E34F8_ovl10
/* 1D4268 801E34F8 0062C021 */  addu       $t8, $v1, $v0
glabel func_801E34FC_ovl15
/* 1D426C 801E34FC C7040000 */  lwc1       $f4, 0x0($t8)
/* 1D4270 801E3500 46083280 */  add.s      $f10, $f6, $f8
/* 1D4274 801E3504 0C0061C3 */  jal        atan2f
/* 1D4278 801E3508 46045381 */   sub.s     $f14, $f10, $f4
/* 1D427C 801E350C 44808000 */  mtc1       $zero, $f16
/* 1D4280 801E3510 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1D4284 801E3514 44819000 */  mtc1       $at, $f18
glabel func_801E3518_ovl16
/* 1D4288 801E3518 4610003C */  c.lt.s     $f0, $f16
/* 1D428C 801E351C 3C04800E */  lui        $a0, %hi(D_800E6A10)
/* 1D4290 801E3520 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1D4294 801E3524 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 1D4298 801E3528 24846A10 */  addiu      $a0, $a0, %lo(D_800E6A10)
.L801E352C_ovl9:
/* 1D429C 801E352C 45000003 */  bc1f       .L801E353C_ovl10
/* 1D42A0 801E3530 46000306 */   mov.s     $f12, $f0
/* 1D42A4 801E3534 10000002 */  b          .L801E3540_ovl10
/* 1D42A8 801E3538 46000087 */   neg.s     $f2, $f0
.L801E353C_ovl10:
/* 1D42AC 801E353C 46000086 */  mov.s      $f2, $f0
.L801E3540_ovl10:
/* 1D42B0 801E3540 3C01801F */  lui        $at, %hi(func_801F4A14_ovl9 + 0x3C)
/* 1D42B4 801E3544 D42E4A50 */  ldc1       $f14, %lo(func_801F4A14_ovl9 + 0x3C)($at)
/* 1D42B8 801E3548 460011A1 */  cvt.d.s    $f6, $f2
/* 1D42BC 801E354C 3C01801F */  lui        $at, %hi(func_801F4A14_ovl9 + 0x4C)
/* 1D42C0 801E3550 4626703C */  c.lt.d     $f14, $f6
/* 1D42C4 801E3554 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D42C8 801E3558 45020011 */  bc1fl      .L801E35A0_ovl10
/* 1D42CC 801E355C 4610003C */   c.lt.s    $f0, $f16
/* 1D42D0 801E3560 8CB90000 */  lw         $t9, 0x0($a1)
/* 1D42D4 801E3564 3C01801F */  lui        $at, %hi(func_801F4A14_ovl9 + 0x44)
.L801E3568_ovl15:
/* 1D42D8 801E3568 8F280000 */  lw         $t0, 0x0($t9)
/* 1D42DC 801E356C 00084880 */  sll        $t1, $t0, 2
/* 1D42E0 801E3570 00895021 */  addu       $t2, $a0, $t1
/* 1D42E4 801E3574 C5480000 */  lwc1       $f8, 0x0($t2)
glabel func_801E3578_ovl9
/* 1D42E8 801E3578 46089032 */  c.eq.s     $f18, $f8
/* 1D42EC 801E357C 00000000 */  nop
/* 1D42F0 801E3580 45000003 */  bc1f       .L801E3590_ovl10
/* 1D42F4 801E3584 00000000 */   nop
/* 1D42F8 801E3588 1000001F */  b          .L801E3608_ovl10
/* 1D42FC 801E358C 46207320 */   cvt.s.d   $f12, $f14
.L801E3590_ovl10:
/* 1D4300 801E3590 D42A4A58 */  ldc1       $f10, %lo(func_801F4A14_ovl9 + 0x44)($at)
/* 1D4304 801E3594 1000001C */  b          .L801E3608_ovl10
/* 1D4308 801E3598 46205320 */   cvt.s.d   $f12, $f10
/* 1D430C 801E359C 4610003C */  c.lt.s     $f0, $f16
.L801E35A0_ovl10:
/* 1D4310 801E35A0 00000000 */  nop
/* 1D4314 801E35A4 45020004 */  bc1fl      func_801E35B8_ovl15
/* 1D4318 801E35A8 46000086 */   mov.s     $f2, $f0
/* 1D431C 801E35AC 10000002 */  b          func_801E35B8_ovl15
/* 1D4320 801E35B0 46000087 */   neg.s     $f2, $f0
/* 1D4324 801E35B4 46000086 */  mov.s      $f2, $f0
glabel func_801E35B8_ovl15
/* 1D4328 801E35B8 D4204A60 */  ldc1       $f0, %lo(func_801F4A14_ovl9 + 0x4C)($at)
/* 1D432C 801E35BC 46001121 */  cvt.d.s    $f4, $f2
/* 1D4330 801E35C0 4620203C */  c.lt.d     $f4, $f0
/* 1D4334 801E35C4 00000000 */  nop
/* 1D4338 801E35C8 45020010 */  bc1fl      .L801E360C_ovl10
.L801E35CC_ovl13:
/* 1D433C 801E35CC 46006006 */   mov.s     $f0, $f12
/* 1D4340 801E35D0 8CAB0000 */  lw         $t3, 0x0($a1)
glabel func_801E35D4_ovl16
/* 1D4344 801E35D4 3C01801F */  lui        $at, %hi(func_801F4A68_ovl10)
/* 1D4348 801E35D8 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1D434C 801E35DC 000C6880 */  sll        $t5, $t4, 2
/* 1D4350 801E35E0 008D7021 */  addu       $t6, $a0, $t5
/* 1D4354 801E35E4 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 1D4358 801E35E8 46069032 */  c.eq.s     $f18, $f6
/* 1D435C 801E35EC 00000000 */  nop
/* 1D4360 801E35F0 45000003 */  bc1f       .L801E3600_ovl17
glabel func_801E35F4_ovl13
/* 1D4364 801E35F4 00000000 */   nop
/* 1D4368 801E35F8 10000003 */  b          .L801E3608_ovl10
/* 1D436C 801E35FC 46200320 */   cvt.s.d   $f12, $f0
.L801E3600_ovl17:
/* 1D4370 801E3600 D4284A68 */  ldc1       $f8, %lo(func_801F4A68_ovl10)($at)
/* 1D4374 801E3604 46204320 */  cvt.s.d    $f12, $f8
.L801E3608_ovl10:
/* 1D4378 801E3608 46006006 */  mov.s      $f0, $f12
.L801E360C_ovl10:
/* 1D437C 801E360C 03E00008 */  jr         $ra
/* 1D4380 801E3610 27BD0018 */   addiu     $sp, $sp, 0x18
