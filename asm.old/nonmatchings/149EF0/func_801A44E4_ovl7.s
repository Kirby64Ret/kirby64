glabel func_801A44E4_ovl7
/* 14A554 801A44E4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 14A558 801A44E8 AFB00024 */  sw         $s0, 0x24($sp)
/* 14A55C 801A44EC 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 14A560 801A44F0 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 14A564 801A44F4 8E0E0000 */  lw         $t6, 0x0($s0)
/* 14A568 801A44F8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 14A56C 801A44FC AFB30030 */  sw         $s3, 0x30($sp)
/* 14A570 801A4500 AFB2002C */  sw         $s2, 0x2C($sp)
/* 14A574 801A4504 AFB10028 */  sw         $s1, 0x28($sp)
/* 14A578 801A4508 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 14A57C 801A450C AFA40040 */  sw         $a0, 0x40($sp)
/* 14A580 801A4510 8DC20000 */  lw         $v0, 0x0($t6)
/* 14A584 801A4514 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 14A588 801A4518 3C0F801A */  lui        $t7, %hi(func_801A470C_ovl7)
/* 14A58C 801A451C 00021080 */  sll        $v0, $v0, 2
/* 14A590 801A4520 00621821 */  addu       $v1, $v1, $v0
/* 14A594 801A4524 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 14A598 801A4528 3C01800E */  lui        $at, %hi(D_800DF150)
/* 14A59C 801A452C 00220821 */  addu       $at, $at, $v0
/* 14A5A0 801A4530 25EF470C */  addiu      $t7, $t7, %lo(func_801A470C_ovl7)
/* 14A5A4 801A4534 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 14A5A8 801A4538 AC600048 */  sw         $zero, 0x48($v1)
/* 14A5AC 801A453C AC600098 */  sw         $zero, 0x98($v1)
/* 14A5B0 801A4540 0C068F5B */  jal        func_801A3D6C_ovl7
/* 14A5B4 801A4544 AFA3003C */   sw        $v1, 0x3C($sp)
/* 14A5B8 801A4548 8E020000 */  lw         $v0, 0x0($s0)
/* 14A5BC 801A454C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 14A5C0 801A4550 3C11800E */  lui        $s1, %hi(D_800E3210)
/* 14A5C4 801A4554 8C580000 */  lw         $t8, 0x0($v0)
/* 14A5C8 801A4558 26313210 */  addiu      $s1, $s1, %lo(D_800E3210)
/* 14A5CC 801A455C 3C12800E */  lui        $s2, %hi(D_800E3750)
/* 14A5D0 801A4560 0018C880 */  sll        $t9, $t8, 2
/* 14A5D4 801A4564 00390821 */  addu       $at, $at, $t9
/* 14A5D8 801A4568 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 14A5DC 801A456C 8C480000 */  lw         $t0, 0x0($v0)
/* 14A5E0 801A4570 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 14A5E4 801A4574 44812000 */  mtc1       $at, $f4
/* 14A5E8 801A4578 00084880 */  sll        $t1, $t0, 2
/* 14A5EC 801A457C 02295021 */  addu       $t2, $s1, $t1
/* 14A5F0 801A4580 E5440000 */  swc1       $f4, 0x0($t2)
/* 14A5F4 801A4584 8C4B0000 */  lw         $t3, 0x0($v0)
/* 14A5F8 801A4588 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 14A5FC 801A458C 44813000 */  mtc1       $at, $f6
/* 14A600 801A4590 26523750 */  addiu      $s2, $s2, %lo(D_800E3750)
/* 14A604 801A4594 000B6080 */  sll        $t4, $t3, 2
/* 14A608 801A4598 024C6821 */  addu       $t5, $s2, $t4
/* 14A60C 801A459C E5A60000 */  swc1       $f6, 0x0($t5)
/* 14A610 801A45A0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 14A614 801A45A4 3C13800F */  lui        $s3, %hi(D_800EC2E0)
/* 14A618 801A45A8 2673C2E0 */  addiu      $s3, $s3, %lo(D_800EC2E0)
/* 14A61C 801A45AC 000E7880 */  sll        $t7, $t6, 2
/* 14A620 801A45B0 026FC021 */  addu       $t8, $s3, $t7
/* 14A624 801A45B4 AF000000 */  sw         $zero, 0x0($t8)
/* 14A628 801A45B8 0C029D9E */  jal        play_sound
/* 14A62C 801A45BC 24040157 */   addiu     $a0, $zero, 0x157
/* 14A630 801A45C0 2404000C */  addiu      $a0, $zero, 0xC
/* 14A634 801A45C4 0C02ED1A */  jal        func_800BB468
/* 14A638 801A45C8 00002825 */   or        $a1, $zero, $zero
/* 14A63C 801A45CC 8E190000 */  lw         $t9, 0x0($s0)
/* 14A640 801A45D0 4480A000 */  mtc1       $zero, $f20
/* 14A644 801A45D4 8F220000 */  lw         $v0, 0x0($t9)
/* 14A648 801A45D8 00021080 */  sll        $v0, $v0, 2
/* 14A64C 801A45DC 02224021 */  addu       $t0, $s1, $v0
/* 14A650 801A45E0 C5000000 */  lwc1       $f0, 0x0($t0)
/* 14A654 801A45E4 02424821 */  addu       $t1, $s2, $v0
/* 14A658 801A45E8 02625021 */  addu       $t2, $s3, $v0
/* 14A65C 801A45EC 4614003C */  c.lt.s     $f0, $f20
/* 14A660 801A45F0 00000000 */  nop
/* 14A664 801A45F4 45020004 */  bc1fl      .L801A4608_ovl7
/* 14A668 801A45F8 46000306 */   mov.s     $f12, $f0
/* 14A66C 801A45FC 10000002 */  b          .L801A4608_ovl7
/* 14A670 801A4600 46000307 */   neg.s     $f12, $f0
/* 14A674 801A4604 46000306 */  mov.s      $f12, $f0
.L801A4608_ovl7:
/* 14A678 801A4608 C5200000 */  lwc1       $f0, 0x0($t1)
/* 14A67C 801A460C 4614003C */  c.lt.s     $f0, $f20
/* 14A680 801A4610 00000000 */  nop
/* 14A684 801A4614 45020004 */  bc1fl      .L801A4628_ovl7
/* 14A688 801A4618 46000086 */   mov.s     $f2, $f0
/* 14A68C 801A461C 10000002 */  b          .L801A4628_ovl7
/* 14A690 801A4620 46000087 */   neg.s     $f2, $f0
/* 14A694 801A4624 46000086 */  mov.s      $f2, $f0
.L801A4628_ovl7:
/* 14A698 801A4628 460C103C */  c.lt.s     $f2, $f12
/* 14A69C 801A462C 00000000 */  nop
/* 14A6A0 801A4630 45000023 */  bc1f       .L801A46C0_ovl7
/* 14A6A4 801A4634 00000000 */   nop
/* 14A6A8 801A4638 8D4B0000 */  lw         $t3, 0x0($t2)
/* 14A6AC 801A463C 15600020 */  bnez       $t3, .L801A46C0_ovl7
/* 14A6B0 801A4640 00000000 */   nop
.L801A4644_ovl7:
/* 14A6B4 801A4644 0C002DAF */  jal        finish_current_thread
/* 14A6B8 801A4648 24040001 */   addiu     $a0, $zero, 0x1
/* 14A6BC 801A464C 8E0C0000 */  lw         $t4, 0x0($s0)
/* 14A6C0 801A4650 8D820000 */  lw         $v0, 0x0($t4)
/* 14A6C4 801A4654 00021080 */  sll        $v0, $v0, 2
/* 14A6C8 801A4658 02226821 */  addu       $t5, $s1, $v0
/* 14A6CC 801A465C C5A00000 */  lwc1       $f0, 0x0($t5)
/* 14A6D0 801A4660 02427021 */  addu       $t6, $s2, $v0
/* 14A6D4 801A4664 02627821 */  addu       $t7, $s3, $v0
/* 14A6D8 801A4668 4614003C */  c.lt.s     $f0, $f20
/* 14A6DC 801A466C 00000000 */  nop
/* 14A6E0 801A4670 45020004 */  bc1fl      .L801A4684_ovl7
/* 14A6E4 801A4674 46000306 */   mov.s     $f12, $f0
/* 14A6E8 801A4678 10000002 */  b          .L801A4684_ovl7
/* 14A6EC 801A467C 46000307 */   neg.s     $f12, $f0
/* 14A6F0 801A4680 46000306 */  mov.s      $f12, $f0
.L801A4684_ovl7:
/* 14A6F4 801A4684 C5C00000 */  lwc1       $f0, 0x0($t6)
/* 14A6F8 801A4688 4614003C */  c.lt.s     $f0, $f20
/* 14A6FC 801A468C 00000000 */  nop
/* 14A700 801A4690 45020004 */  bc1fl      .L801A46A4_ovl7
/* 14A704 801A4694 46000086 */   mov.s     $f2, $f0
/* 14A708 801A4698 10000002 */  b          .L801A46A4_ovl7
/* 14A70C 801A469C 46000087 */   neg.s     $f2, $f0
/* 14A710 801A46A0 46000086 */  mov.s      $f2, $f0
.L801A46A4_ovl7:
/* 14A714 801A46A4 460C103C */  c.lt.s     $f2, $f12
/* 14A718 801A46A8 00000000 */  nop
/* 14A71C 801A46AC 45000004 */  bc1f       .L801A46C0_ovl7
/* 14A720 801A46B0 00000000 */   nop
/* 14A724 801A46B4 8DF80000 */  lw         $t8, 0x0($t7)
/* 14A728 801A46B8 1300FFE2 */  beqz       $t8, .L801A4644_ovl7
/* 14A72C 801A46BC 00000000 */   nop
.L801A46C0_ovl7:
/* 14A730 801A46C0 0C02CD48 */  jal        func_800B3520
/* 14A734 801A46C4 00000000 */   nop
/* 14A738 801A46C8 8FB9003C */  lw         $t9, 0x3C($sp)
/* 14A73C 801A46CC 44800000 */  mtc1       $zero, $f0
/* 14A740 801A46D0 00002025 */  or         $a0, $zero, $zero
/* 14A744 801A46D4 8F280094 */  lw         $t0, 0x94($t9)
/* 14A748 801A46D8 44060000 */  mfc1       $a2, $f0
/* 14A74C 801A46DC 44070000 */  mfc1       $a3, $f0
/* 14A750 801A46E0 8D050018 */  lw         $a1, 0x18($t0)
/* 14A754 801A46E4 0C03F55C */  jal        func_800FD570
/* 14A758 801A46E8 E7A00010 */   swc1      $f0, 0x10($sp)
/* 14A75C 801A46EC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 14A760 801A46F0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 14A764 801A46F4 8FB00024 */  lw         $s0, 0x24($sp)
/* 14A768 801A46F8 8FB10028 */  lw         $s1, 0x28($sp)
/* 14A76C 801A46FC 8FB2002C */  lw         $s2, 0x2C($sp)
/* 14A770 801A4700 8FB30030 */  lw         $s3, 0x30($sp)
/* 14A774 801A4704 03E00008 */  jr         $ra
/* 14A778 801A4708 27BD0040 */   addiu     $sp, $sp, 0x40
