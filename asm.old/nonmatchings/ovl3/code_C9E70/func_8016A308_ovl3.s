glabel func_8016A308_ovl3
/* CAD48 8016A308 27BDFF88 */  addiu      $sp, $sp, -0x78
/* CAD4C 8016A30C AFB6003C */  sw         $s6, 0x3C($sp)
/* CAD50 8016A310 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* CAD54 8016A314 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* CAD58 8016A318 AFB00024 */  sw         $s0, 0x24($sp)
/* CAD5C 8016A31C 8ED00000 */  lw         $s0, 0x0($s6)
/* CAD60 8016A320 AFBF0044 */  sw         $ra, 0x44($sp)
/* CAD64 8016A324 AFB70040 */  sw         $s7, 0x40($sp)
/* CAD68 8016A328 AFB50038 */  sw         $s5, 0x38($sp)
/* CAD6C 8016A32C AFB40034 */  sw         $s4, 0x34($sp)
/* CAD70 8016A330 AFB30030 */  sw         $s3, 0x30($sp)
/* CAD74 8016A334 AFB2002C */  sw         $s2, 0x2C($sp)
/* CAD78 8016A338 AFB10028 */  sw         $s1, 0x28($sp)
/* CAD7C 8016A33C F7B60018 */  sdc1       $f22, 0x18($sp)
/* CAD80 8016A340 F7B40010 */  sdc1       $f20, 0x10($sp)
/* CAD84 8016A344 AFA40078 */  sw         $a0, 0x78($sp)
/* CAD88 8016A348 8E060000 */  lw         $a2, 0x0($s0)
/* CAD8C 8016A34C 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* CAD90 8016A350 00063080 */  sll        $a2, $a2, 2
/* CAD94 8016A354 01C67021 */  addu       $t6, $t6, $a2
/* CAD98 8016A358 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* CAD9C 8016A35C 31CF00FF */  andi       $t7, $t6, 0xFF
/* CADA0 8016A360 15E00006 */  bnez       $t7, .L8016A37C_ovl3
/* CADA4 8016A364 3C040002 */   lui       $a0, (0x20007 >> 16)
/* CADA8 8016A368 0C02A5D8 */  jal        func_800A9760
.L8016A36C_ovl5:
/* CADAC 8016A36C 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
/* CADB0 8016A370 8ED00000 */  lw         $s0, 0x0($s6)
/* CADB4 8016A374 8E060000 */  lw         $a2, 0x0($s0)
/* CADB8 8016A378 00063080 */  sll        $a2, $a2, 2
.L8016A37C_ovl3:
/* CADBC 8016A37C 3C188017 */  lui        $t8, %hi(func_8016A934_ovl3)
/* CADC0 8016A380 3C01800E */  lui        $at, %hi(D_800DF150)
/* CADC4 8016A384 00260821 */  addu       $at, $at, $a2
.L8016A388_ovl5:
/* CADC8 8016A388 2718A934 */  addiu      $t8, $t8, %lo(func_8016A934_ovl3)
/* CADCC 8016A38C AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* CADD0 8016A390 8E080000 */  lw         $t0, 0x0($s0)
/* CADD4 8016A394 3C01800E */  lui        $at, %hi(D_800DEF90)
/* CADD8 8016A398 3C19800B */  lui        $t9, %hi(func_800B4954)
/* CADDC 8016A39C 00084880 */  sll        $t1, $t0, 2
/* CADE0 8016A3A0 00290821 */  addu       $at, $at, $t1
/* CADE4 8016A3A4 27394954 */  addiu      $t9, $t9, %lo(func_800B4954)
/* CADE8 8016A3A8 AC39EF90 */  sw         $t9, %lo(D_800DEF90)($at)
/* CADEC 8016A3AC 8E0B0000 */  lw         $t3, 0x0($s0)
/* CADF0 8016A3B0 3C11800F */  lui        $s1, %hi(D_800E8920)
/* CADF4 8016A3B4 26318920 */  addiu      $s1, $s1, %lo(D_800E8920)
/* CADF8 8016A3B8 000B6080 */  sll        $t4, $t3, 2
/* CADFC 8016A3BC 022C6821 */  addu       $t5, $s1, $t4
/* CAE00 8016A3C0 240A0001 */  addiu      $t2, $zero, 0x1
/* CAE04 8016A3C4 3C04801D */  lui        $a0, %hi(D_801CA980)
/* CAE08 8016A3C8 ADAA0000 */  sw         $t2, 0x0($t5)
/* CAE0C 8016A3CC 0C068CBB */  jal        func_801A32EC
/* CAE10 8016A3D0 2484A980 */   addiu     $a0, $a0, %lo(D_801CA980)
/* CAE14 8016A3D4 8ECE0000 */  lw         $t6, 0x0($s6)
/* CAE18 8016A3D8 3C0F800E */  lui        $t7, %hi(D_800E0D50)
/* CAE1C 8016A3DC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CAE20 8016A3E0 8DC60000 */  lw         $a2, 0x0($t6)
/* CAE24 8016A3E4 44802000 */  mtc1       $zero, $f4
/* CAE28 8016A3E8 3C17800F */  lui        $s7, %hi(D_800E98E0)
/* CAE2C 8016A3EC 00063080 */  sll        $a2, $a2, 2
/* CAE30 8016A3F0 01E67821 */  addu       $t7, $t7, $a2
.L8016A3F4_ovl5:
/* CAE34 8016A3F4 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
.L8016A3F8_ovl5:
/* CAE38 8016A3F8 26F798E0 */  addiu      $s7, $s7, %lo(D_800E98E0)
.L8016A3FC_ovl5:
/* CAE3C 8016A3FC 02E66821 */  addu       $t5, $s7, $a2
.L8016A400_ovl5:
/* CAE40 8016A400 000FC080 */  sll        $t8, $t7, 2
/* CAE44 8016A404 00380821 */  addu       $at, $at, $t8
/* CAE48 8016A408 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* CAE4C 8016A40C 4604003C */  c.lt.s     $f0, $f4
/* CAE50 8016A410 00000000 */  nop
/* CAE54 8016A414 45020007 */  bc1fl      .L8016A434_ovl3
/* CAE58 8016A418 4600028D */   trunc.w.s $f10, $f0
/* CAE5C 8016A41C 46000187 */  neg.s      $f6, $f0
/* CAE60 8016A420 4600320D */  trunc.w.s  $f8, $f6
/* CAE64 8016A424 44194000 */  mfc1       $t9, $f8
/* CAE68 8016A428 10000005 */  b          .L8016A440_ovl3
/* CAE6C 8016A42C AFB90064 */   sw        $t9, 0x64($sp)
/* CAE70 8016A430 4600028D */  trunc.w.s  $f10, $f0
.L8016A434_ovl3:
/* CAE74 8016A434 440B5000 */  mfc1       $t3, $f10
/* CAE78 8016A438 00000000 */  nop
/* CAE7C 8016A43C AFAB0064 */  sw         $t3, 0x64($sp)
.L8016A440_ovl3:
/* CAE80 8016A440 8FAC0064 */  lw         $t4, 0x64($sp)
/* CAE84 8016A444 29810006 */  slti       $at, $t4, 0x6
/* CAE88 8016A448 14200002 */  bnez       $at, .L8016A454_ovl5
.L8016A44C_ovl5:
/* CAE8C 8016A44C 240A0005 */   addiu     $t2, $zero, 0x5
/* CAE90 8016A450 AFAA0064 */  sw         $t2, 0x64($sp)
.L8016A454_ovl5:
/* CAE94 8016A454 0C05AEF4 */  jal        func_8016BBD0_ovl3
/* CAE98 8016A458 ADA00000 */   sw        $zero, 0x0($t5)
.L8016A45C_ovl5:
/* CAE9C 8016A45C 0C02CCFD */  jal        func_800B33F4
/* CAEA0 8016A460 00000000 */   nop
.L8016A464_ovl5:
/* CAEA4 8016A464 0C03EF87 */  jal        func_800FBE1C
.L8016A468_ovl5:
/* CAEA8 8016A468 00000000 */   nop
/* CAEAC 8016A46C 0C03E905 */  jal        func_800FA414
/* CAEB0 8016A470 24040005 */   addiu     $a0, $zero, 0x5
/* CAEB4 8016A474 8ED00000 */  lw         $s0, 0x0($s6)
/* CAEB8 8016A478 3C14800E */  lui        $s4, %hi(gEntitiesAngleXArray)
/* CAEBC 8016A47C 26944010 */  addiu      $s4, $s4, %lo(gEntitiesAngleXArray)
/* CAEC0 8016A480 8E060000 */  lw         $a2, 0x0($s0)
/* CAEC4 8016A484 3C12800F */  lui        $s2, %hi(D_800EAA60)
/* CAEC8 8016A488 2652AA60 */  addiu      $s2, $s2, %lo(D_800EAA60)
/* CAECC 8016A48C 00063080 */  sll        $a2, $a2, 2
/* CAED0 8016A490 02867021 */  addu       $t6, $s4, $a2
.L8016A494_ovl5:
/* CAED4 8016A494 C5C00000 */  lwc1       $f0, 0x0($t6)
/* CAED8 8016A498 02467821 */  addu       $t7, $s2, $a2
.L8016A49C_ovl5:
/* CAEDC 8016A49C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* CAEE0 8016A4A0 E5E00000 */  swc1       $f0, 0x0($t7)
/* CAEE4 8016A4A4 8E180000 */  lw         $t8, 0x0($s0)
/* CAEE8 8016A4A8 3C15800E */  lui        $s5, %hi(gEntitiesScaleYArray)
/* CAEEC 8016A4AC 26B54710 */  addiu      $s5, $s5, %lo(gEntitiesScaleYArray)
/* CAEF0 8016A4B0 00184080 */  sll        $t0, $t8, 2
/* CAEF4 8016A4B4 00280821 */  addu       $at, $at, $t0
/* CAEF8 8016A4B8 E420A6E0 */  swc1       $f0, %lo(D_800EA6E0)($at)
/* CAEFC 8016A4BC 8E060000 */  lw         $a2, 0x0($s0)
/* CAF00 8016A4C0 3C13800F */  lui        $s3, %hi(D_800EAC20)
/* CAF04 8016A4C4 2673AC20 */  addiu      $s3, $s3, %lo(D_800EAC20)
/* CAF08 8016A4C8 00063080 */  sll        $a2, $a2, 2
/* CAF0C 8016A4CC 02A6C821 */  addu       $t9, $s5, $a2
/* CAF10 8016A4D0 C7200000 */  lwc1       $f0, 0x0($t9)
/* CAF14 8016A4D4 02664821 */  addu       $t1, $s3, $a2
/* CAF18 8016A4D8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* CAF1C 8016A4DC E5200000 */  swc1       $f0, 0x0($t1)
/* CAF20 8016A4E0 8E0B0000 */  lw         $t3, 0x0($s0)
/* CAF24 8016A4E4 00002025 */  or         $a0, $zero, $zero
/* CAF28 8016A4E8 00002825 */  or         $a1, $zero, $zero
/* CAF2C 8016A4EC 000B6080 */  sll        $t4, $t3, 2
/* CAF30 8016A4F0 002C0821 */  addu       $at, $at, $t4
/* CAF34 8016A4F4 0C02ED1A */  jal        func_800BB468
/* CAF38 8016A4F8 E420A8A0 */   swc1      $f0, %lo(D_800EA8A0)($at)
/* CAF3C 8016A4FC 8ECD0000 */  lw         $t5, 0x0($s6)
.L8016A500_ovl5:
/* CAF40 8016A500 240A0001 */  addiu      $t2, $zero, 0x1
/* CAF44 8016A504 8DAE0000 */  lw         $t6, 0x0($t5)
.L8016A508_ovl5:
/* CAF48 8016A508 000E7880 */  sll        $t7, $t6, 2
/* CAF4C 8016A50C 022FC021 */  addu       $t8, $s1, $t7
/* CAF50 8016A510 0C054E86 */  jal        func_80153A18_ovl3
/* CAF54 8016A514 AF0A0000 */   sw        $t2, 0x0($t8)
/* CAF58 8016A518 8EC80000 */  lw         $t0, 0x0($s6)
/* CAF5C 8016A51C 3C05800E */  lui        $a1, %hi(D_800E17D0)
/* CAF60 8016A520 3C048013 */  lui        $a0, %hi(D_8012BCA8 + 0x4)
/* CAF64 8016A524 8D190000 */  lw         $t9, 0x0($t0)
/* CAF68 8016A528 8C84BCAC */  lw         $a0, %lo(D_8012BCA8 + 0x4)($a0)
.L8016A52C_ovl5:
/* CAF6C 8016A52C 00194880 */  sll        $t1, $t9, 2
/* CAF70 8016A530 00A92821 */  addu       $a1, $a1, $t1
.L8016A534_ovl5:
/* CAF74 8016A534 0C03E209 */  jal        func_800F8824
/* CAF78 8016A538 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
/* CAF7C 8016A53C 8ED00000 */  lw         $s0, 0x0($s6)
/* CAF80 8016A540 3C03800F */  lui        $v1, %hi(D_800EB160)
/* CAF84 8016A544 46000407 */  neg.s      $f16, $f0
/* CAF88 8016A548 8E0B0000 */  lw         $t3, 0x0($s0)
/* CAF8C 8016A54C 2463B160 */  addiu      $v1, $v1, %lo(D_800EB160)
/* CAF90 8016A550 3C018019 */  lui        $at, %hi(D_80197204_ovl3)
/* CAF94 8016A554 000B6080 */  sll        $t4, $t3, 2
/* CAF98 8016A558 C42C7204 */  lwc1       $f12, %lo(D_80197204_ovl3)($at)
.L8016A55C_ovl5:
/* CAF9C 8016A55C 006C6821 */  addu       $t5, $v1, $t4
/* CAFA0 8016A560 E5B00000 */  swc1       $f16, 0x0($t5)
.L8016A564_ovl5:
/* CAFA4 8016A564 8E060000 */  lw         $a2, 0x0($s0)
/* CAFA8 8016A568 3C0A8019 */  lui        $t2, %hi(D_80196954_ovl3)
/* CAFAC 8016A56C 254A6954 */  addiu      $t2, $t2, %lo(D_80196954_ovl3)
/* CAFB0 8016A570 00063080 */  sll        $a2, $a2, 2
/* CAFB4 8016A574 00661021 */  addu       $v0, $v1, $a2
/* CAFB8 8016A578 C4420000 */  lwc1       $f2, 0x0($v0)
/* CAFBC 8016A57C 00008825 */  or         $s1, $zero, $zero
/* CAFC0 8016A580 4602603C */  c.lt.s     $f12, $f2
/* CAFC4 8016A584 00000000 */  nop
/* CAFC8 8016A588 4500000C */  bc1f       .L8016A5BC_ovl3
.L8016A58C_ovl5:
/* CAFCC 8016A58C 3C018019 */   lui       $at, %hi(D_80197208_ovl3)
/* CAFD0 8016A590 C4207208 */  lwc1       $f0, %lo(D_80197208_ovl3)($at)
.L8016A594_ovl5:
/* CAFD4 8016A594 46001481 */  sub.s      $f18, $f2, $f0
.L8016A598_ovl3:
/* CAFD8 8016A598 E4520000 */  swc1       $f18, 0x0($v0)
/* CAFDC 8016A59C 8E060000 */  lw         $a2, 0x0($s0)
/* CAFE0 8016A5A0 00063080 */  sll        $a2, $a2, 2
/* CAFE4 8016A5A4 00661021 */  addu       $v0, $v1, $a2
/* CAFE8 8016A5A8 C4420000 */  lwc1       $f2, 0x0($v0)
/* CAFEC 8016A5AC 4602603C */  c.lt.s     $f12, $f2
/* CAFF0 8016A5B0 00000000 */  nop
/* CAFF4 8016A5B4 4503FFF8 */  bc1tl      .L8016A598_ovl3
/* CAFF8 8016A5B8 46001481 */   sub.s     $f18, $f2, $f0
.L8016A5BC_ovl3:
/* CAFFC 8016A5BC 3C018019 */  lui        $at, %hi(D_8019720C_ovl3)
/* CB000 8016A5C0 C420720C */  lwc1       $f0, %lo(D_8019720C_ovl3)($at)
/* CB004 8016A5C4 3C018019 */  lui        $at, %hi(D_80197210_ovl3)
/* CB008 8016A5C8 C42C7210 */  lwc1       $f12, %lo(D_80197210_ovl3)($at)
/* CB00C 8016A5CC 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* CB010 8016A5D0 460C103C */  c.lt.s     $f2, $f12
/* CB014 8016A5D4 00000000 */  nop
/* CB018 8016A5D8 4502000C */  bc1fl      .L8016A60C_ovl3
/* CB01C 8016A5DC 8FAE0064 */   lw        $t6, 0x64($sp)
/* CB020 8016A5E0 46001100 */  add.s      $f4, $f2, $f0
.L8016A5E4_ovl3:
/* CB024 8016A5E4 E4440000 */  swc1       $f4, 0x0($v0)
/* CB028 8016A5E8 8E060000 */  lw         $a2, 0x0($s0)
/* CB02C 8016A5EC 00063080 */  sll        $a2, $a2, 2
/* CB030 8016A5F0 00661021 */  addu       $v0, $v1, $a2
/* CB034 8016A5F4 C4420000 */  lwc1       $f2, 0x0($v0)
/* CB038 8016A5F8 460C103C */  c.lt.s     $f2, $f12
.L8016A5FC_ovl5:
/* CB03C 8016A5FC 00000000 */  nop
/* CB040 8016A600 4503FFF8 */  bc1tl      .L8016A5E4_ovl3
.L8016A604_ovl5:
/* CB044 8016A604 46001100 */   add.s     $f4, $f2, $f0
/* CB048 8016A608 8FAE0064 */  lw         $t6, 0x64($sp)
.L8016A60C_ovl3:
/* CB04C 8016A60C 00260821 */  addu       $at, $at, $a2
/* CB050 8016A610 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* CB054 8016A614 000E7880 */  sll        $t7, $t6, 2
/* CB058 8016A618 01EA2821 */  addu       $a1, $t7, $t2
glabel func_8016A61C_ovl5
/* CB05C 8016A61C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CB060 8016A620 C4A00000 */  lwc1       $f0, 0x0($a1)
/* CB064 8016A624 44814000 */  mtc1       $at, $f8
/* CB068 8016A628 AFAF0054 */  sw         $t7, 0x54($sp)
/* CB06C 8016A62C 46001503 */  div.s      $f20, $f2, $f0
/* CB070 8016A630 46080281 */  sub.s      $f10, $f0, $f8
/* CB074 8016A634 4600540D */  trunc.w.s  $f16, $f10
/* CB078 8016A638 44088000 */  mfc1       $t0, $f16
/* CB07C 8016A63C 00000000 */  nop
/* CB080 8016A640 19000031 */  blez       $t0, .L8016A708_ovl3
.L8016A644_ovl5:
/* CB084 8016A644 46003583 */   div.s     $f22, $f6, $f0
/* CB088 8016A648 8E190000 */  lw         $t9, 0x0($s0)
.L8016A64C_ovl3:
/* CB08C 8016A64C 24040001 */  addiu      $a0, $zero, 0x1
/* CB090 8016A650 00194880 */  sll        $t1, $t9, 2
/* CB094 8016A654 02491021 */  addu       $v0, $s2, $t1
/* CB098 8016A658 C4520000 */  lwc1       $f18, 0x0($v0)
/* CB09C 8016A65C 46149100 */  add.s      $f4, $f18, $f20
/* CB0A0 8016A660 E4440000 */  swc1       $f4, 0x0($v0)
/* CB0A4 8016A664 8E060000 */  lw         $a2, 0x0($s0)
/* CB0A8 8016A668 00063080 */  sll        $a2, $a2, 2
.L8016A66C_ovl5:
/* CB0AC 8016A66C 02465821 */  addu       $t3, $s2, $a2
/* CB0B0 8016A670 C5660000 */  lwc1       $f6, 0x0($t3)
.L8016A674_ovl5:
/* CB0B4 8016A674 02866021 */  addu       $t4, $s4, $a2
/* CB0B8 8016A678 E5860000 */  swc1       $f6, 0x0($t4)
.L8016A67C_ovl5:
/* CB0BC 8016A67C 8E0D0000 */  lw         $t5, 0x0($s0)
/* CB0C0 8016A680 000D7080 */  sll        $t6, $t5, 2
.L8016A684_ovl5:
/* CB0C4 8016A684 026E1821 */  addu       $v1, $s3, $t6
/* CB0C8 8016A688 C4680000 */  lwc1       $f8, 0x0($v1)
.L8016A68C_ovl5:
/* CB0CC 8016A68C 46164281 */  sub.s      $f10, $f8, $f22
/* CB0D0 8016A690 E46A0000 */  swc1       $f10, 0x0($v1)
/* CB0D4 8016A694 8E060000 */  lw         $a2, 0x0($s0)
/* CB0D8 8016A698 00063080 */  sll        $a2, $a2, 2
glabel func_8016A69C_ovl5
/* CB0DC 8016A69C 02667821 */  addu       $t7, $s3, $a2
/* CB0E0 8016A6A0 C5F00000 */  lwc1       $f16, 0x0($t7)
/* CB0E4 8016A6A4 02A65021 */  addu       $t2, $s5, $a2
/* CB0E8 8016A6A8 E5500000 */  swc1       $f16, 0x0($t2)
/* CB0EC 8016A6AC 0C002DAF */  jal        finish_current_thread
glabel func_8016A6B0_ovl5
/* CB0F0 8016A6B0 AFA5004C */   sw        $a1, 0x4C($sp)
/* CB0F4 8016A6B4 8ED00000 */  lw         $s0, 0x0($s6)
/* CB0F8 8016A6B8 8FA5004C */  lw         $a1, 0x4C($sp)
/* CB0FC 8016A6BC 24180001 */  addiu      $t8, $zero, 0x1
/* CB100 8016A6C0 8E080000 */  lw         $t0, 0x0($s0)
/* CB104 8016A6C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CB108 8016A6C8 44812000 */  mtc1       $at, $f4
/* CB10C 8016A6CC 0008C880 */  sll        $t9, $t0, 2
/* CB110 8016A6D0 02F94821 */  addu       $t1, $s7, $t9
/* CB114 8016A6D4 AD380000 */  sw         $t8, 0x0($t1)
/* CB118 8016A6D8 C4B20000 */  lwc1       $f18, 0x0($a1)
/* CB11C 8016A6DC 26310001 */  addiu      $s1, $s1, 0x1
/* CB120 8016A6E0 46049181 */  sub.s      $f6, $f18, $f4
/* CB124 8016A6E4 4600320D */  trunc.w.s  $f8, $f6
/* CB128 8016A6E8 440C4000 */  mfc1       $t4, $f8
/* CB12C 8016A6EC 00000000 */  nop
/* CB130 8016A6F0 022C082A */  slt        $at, $s1, $t4
/* CB134 8016A6F4 5420FFD5 */  bnel       $at, $zero, .L8016A64C_ovl3
/* CB138 8016A6F8 8E190000 */   lw        $t9, 0x0($s0)
.L8016A6FC_ovl5:
/* CB13C 8016A6FC 8E060000 */  lw         $a2, 0x0($s0)
/* CB140 8016A700 00008825 */  or         $s1, $zero, $zero
/* CB144 8016A704 00063080 */  sll        $a2, $a2, 2
.L8016A708_ovl3:
/* CB148 8016A708 02461021 */  addu       $v0, $s2, $a2
/* CB14C 8016A70C C44A0000 */  lwc1       $f10, 0x0($v0)
/* CB150 8016A710 24040003 */  addiu      $a0, $zero, 0x3
/* CB154 8016A714 46145400 */  add.s      $f16, $f10, $f20
/* CB158 8016A718 E4500000 */  swc1       $f16, 0x0($v0)
/* CB15C 8016A71C 8E060000 */  lw         $a2, 0x0($s0)
/* CB160 8016A720 00063080 */  sll        $a2, $a2, 2
/* CB164 8016A724 02466821 */  addu       $t5, $s2, $a2
/* CB168 8016A728 C5B20000 */  lwc1       $f18, 0x0($t5)
/* CB16C 8016A72C 02867021 */  addu       $t6, $s4, $a2
/* CB170 8016A730 0C03E905 */  jal        func_800FA414
/* CB174 8016A734 E5D20000 */   swc1      $f18, 0x0($t6)
/* CB178 8016A738 8ECA0000 */  lw         $t2, 0x0($s6)
.L8016A73C_ovl5:
/* CB17C 8016A73C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
.L8016A740_ovl5:
/* CB180 8016A740 240F0002 */  addiu      $t7, $zero, 0x2
/* CB184 8016A744 8D480000 */  lw         $t0, 0x0($t2)
/* CB188 8016A748 44816000 */  mtc1       $at, $f12
.L8016A74C_ovl5:
/* CB18C 8016A74C 0008C880 */  sll        $t9, $t0, 2
/* CB190 8016A750 02F9C021 */  addu       $t8, $s7, $t9
/* CB194 8016A754 0C02EFF8 */  jal        change_kirby_hp
/* CB198 8016A758 AF0F0000 */   sw        $t7, 0x0($t8)
/* CB19C 8016A75C 3C01800D */  lui        $at, %hi(gKirbyHp)
/* CB1A0 8016A760 C4266E50 */  lwc1       $f6, %lo(gKirbyHp)($at)
/* CB1A4 8016A764 44802000 */  mtc1       $zero, $f4
/* CB1A8 8016A768 00000000 */  nop
/* CB1AC 8016A76C 4606203C */  c.lt.s     $f4, $f6
/* CB1B0 8016A770 00000000 */  nop
glabel func_8016A774_ovl5
/* CB1B4 8016A774 45020004 */  bc1fl      .L8016A788_ovl3
/* CB1B8 8016A778 8ED00000 */   lw        $s0, 0x0($s6)
/* CB1BC 8016A77C 0C029D9E */  jal        play_sound
/* CB1C0 8016A780 240400D9 */   addiu     $a0, $zero, 0xD9
/* CB1C4 8016A784 8ED00000 */  lw         $s0, 0x0($s6)
.L8016A788_ovl3:
/* CB1C8 8016A788 24040001 */  addiu      $a0, $zero, 0x1
/* CB1CC 8016A78C 8E060000 */  lw         $a2, 0x0($s0)
/* CB1D0 8016A790 00063080 */  sll        $a2, $a2, 2
/* CB1D4 8016A794 02464821 */  addu       $t1, $s2, $a2
/* CB1D8 8016A798 C5280000 */  lwc1       $f8, 0x0($t1)
/* CB1DC 8016A79C 02865821 */  addu       $t3, $s4, $a2
/* CB1E0 8016A7A0 E5680000 */  swc1       $f8, 0x0($t3)
/* CB1E4 8016A7A4 8E060000 */  lw         $a2, 0x0($s0)
/* CB1E8 8016A7A8 00063080 */  sll        $a2, $a2, 2
/* CB1EC 8016A7AC 02666021 */  addu       $t4, $s3, $a2
/* CB1F0 8016A7B0 C58A0000 */  lwc1       $f10, 0x0($t4)
/* CB1F4 8016A7B4 02A66821 */  addu       $t5, $s5, $a2
/* CB1F8 8016A7B8 0C002DAF */  jal        finish_current_thread
/* CB1FC 8016A7BC E5AA0000 */   swc1      $f10, 0x0($t5)
/* CB200 8016A7C0 26310001 */  addiu      $s1, $s1, 0x1
/* CB204 8016A7C4 2A21001E */  slti       $at, $s1, 0x1E
/* CB208 8016A7C8 5420FFEF */  bnel       $at, $zero, .L8016A788_ovl3
/* CB20C 8016A7CC 8ED00000 */   lw        $s0, 0x0($s6)
/* CB210 8016A7D0 8ECA0000 */  lw         $t2, 0x0($s6)
/* CB214 8016A7D4 240E0003 */  addiu      $t6, $zero, 0x3
/* CB218 8016A7D8 3C098019 */  lui        $t1, %hi(D_8019696C_ovl3)
/* CB21C 8016A7DC 8D480000 */  lw         $t0, 0x0($t2)
/* CB220 8016A7E0 2529696C */  addiu      $t1, $t1, %lo(D_8019696C_ovl3)
/* CB224 8016A7E4 00008825 */  or         $s1, $zero, $zero
/* CB228 8016A7E8 0008C880 */  sll        $t9, $t0, 2
/* CB22C 8016A7EC 02F97821 */  addu       $t7, $s7, $t9
/* CB230 8016A7F0 ADEE0000 */  sw         $t6, 0x0($t7)
.L8016A7F4_ovl5:
/* CB234 8016A7F4 8FB80054 */  lw         $t8, 0x54($sp)
/* CB238 8016A7F8 03092821 */  addu       $a1, $t8, $t1
/* CB23C 8016A7FC AFA5005C */  sw         $a1, 0x5C($sp)
/* CB240 8016A800 8ED00000 */  lw         $s0, 0x0($s6)
.L8016A804_ovl3:
/* CB244 8016A804 8FA5005C */  lw         $a1, 0x5C($sp)
/* CB248 8016A808 24040001 */  addiu      $a0, $zero, 0x1
/* CB24C 8016A80C 8E0B0000 */  lw         $t3, 0x0($s0)
/* CB250 8016A810 C4A20000 */  lwc1       $f2, 0x0($a1)
/* CB254 8016A814 000B6080 */  sll        $t4, $t3, 2
/* CB258 8016A818 024C1021 */  addu       $v0, $s2, $t4
/* CB25C 8016A81C C4500000 */  lwc1       $f16, 0x0($v0)
/* CB260 8016A820 46148001 */  sub.s      $f0, $f16, $f20
/* CB264 8016A824 46001482 */  mul.s      $f18, $f2, $f0
/* CB268 8016A828 E4400000 */  swc1       $f0, 0x0($v0)
/* CB26C 8016A82C 8E0D0000 */  lw         $t5, 0x0($s0)
/* CB270 8016A830 000D5080 */  sll        $t2, $t5, 2
/* CB274 8016A834 028A4021 */  addu       $t0, $s4, $t2
/* CB278 8016A838 E5120000 */  swc1       $f18, 0x0($t0)
/* CB27C 8016A83C 8E190000 */  lw         $t9, 0x0($s0)
.L8016A840_ovl5:
/* CB280 8016A840 00197080 */  sll        $t6, $t9, 2
/* CB284 8016A844 026E1821 */  addu       $v1, $s3, $t6
/* CB288 8016A848 C4640000 */  lwc1       $f4, 0x0($v1)
/* CB28C 8016A84C 46162000 */  add.s      $f0, $f4, $f22
/* CB290 8016A850 46001182 */  mul.s      $f6, $f2, $f0
/* CB294 8016A854 E4600000 */  swc1       $f0, 0x0($v1)
/* CB298 8016A858 8E0F0000 */  lw         $t7, 0x0($s0)
/* CB29C 8016A85C 000FC080 */  sll        $t8, $t7, 2
/* CB2A0 8016A860 02B84821 */  addu       $t1, $s5, $t8
/* CB2A4 8016A864 0C002DAF */  jal        finish_current_thread
/* CB2A8 8016A868 E5260000 */   swc1      $f6, 0x0($t1)
/* CB2AC 8016A86C 26310001 */  addiu      $s1, $s1, 0x1
/* CB2B0 8016A870 24010004 */  addiu      $at, $zero, 0x4
/* CB2B4 8016A874 5621FFE3 */  bnel       $s1, $at, .L8016A804_ovl3
/* CB2B8 8016A878 8ED00000 */   lw        $s0, 0x0($s6)
.L8016A87C_ovl5:
/* CB2BC 8016A87C 8ECC0000 */  lw         $t4, 0x0($s6)
/* CB2C0 8016A880 3C0B800B */  lui        $t3, %hi(func_800B531C)
/* CB2C4 8016A884 3C01800E */  lui        $at, %hi(D_800DEF90)
/* CB2C8 8016A888 8D8D0000 */  lw         $t5, 0x0($t4)
/* CB2CC 8016A88C 256B531C */  addiu      $t3, $t3, %lo(func_800B531C)
/* CB2D0 8016A890 000D5080 */  sll        $t2, $t5, 2
/* CB2D4 8016A894 002A0821 */  addu       $at, $at, $t2
.L8016A898_ovl5:
/* CB2D8 8016A898 0C02CCFD */  jal        func_800B33F4
/* CB2DC 8016A89C AC2BEF90 */   sw        $t3, %lo(D_800DEF90)($at)
/* CB2E0 8016A8A0 8ED00000 */  lw         $s0, 0x0($s6)
/* CB2E4 8016A8A4 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* CB2E8 8016A8A8 24040001 */  addiu      $a0, $zero, 0x1
/* CB2EC 8016A8AC 8E060000 */  lw         $a2, 0x0($s0)
.L8016A8B0_ovl5:
/* CB2F0 8016A8B0 00063080 */  sll        $a2, $a2, 2
/* CB2F4 8016A8B4 00260821 */  addu       $at, $at, $a2
/* CB2F8 8016A8B8 C428A6E0 */  lwc1       $f8, %lo(D_800EA6E0)($at)
/* CB2FC 8016A8BC 02864021 */  addu       $t0, $s4, $a2
/* CB300 8016A8C0 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* CB304 8016A8C4 E5080000 */  swc1       $f8, 0x0($t0)
/* CB308 8016A8C8 8E060000 */  lw         $a2, 0x0($s0)
/* CB30C 8016A8CC 00063080 */  sll        $a2, $a2, 2
/* CB310 8016A8D0 00260821 */  addu       $at, $at, $a2
/* CB314 8016A8D4 C42AA8A0 */  lwc1       $f10, %lo(D_800EA8A0)($at)
/* CB318 8016A8D8 02A6C821 */  addu       $t9, $s5, $a2
/* CB31C 8016A8DC 0C002DAF */  jal        finish_current_thread
/* CB320 8016A8E0 E72A0000 */   swc1      $f10, 0x0($t9)
/* CB324 8016A8E4 8ECF0000 */  lw         $t7, 0x0($s6)
/* CB328 8016A8E8 240E0004 */  addiu      $t6, $zero, 0x4
/* CB32C 8016A8EC 8DF80000 */  lw         $t8, 0x0($t7)
/* CB330 8016A8F0 00184880 */  sll        $t1, $t8, 2
/* CB334 8016A8F4 02E96021 */  addu       $t4, $s7, $t1
/* CB338 8016A8F8 0C02BE85 */  jal        func_800AFA14
/* CB33C 8016A8FC AD8E0000 */   sw        $t6, 0x0($t4)
/* CB340 8016A900 8FBF0044 */  lw         $ra, 0x44($sp)
/* CB344 8016A904 D7B40010 */  ldc1       $f20, 0x10($sp)
/* CB348 8016A908 D7B60018 */  ldc1       $f22, 0x18($sp)
/* CB34C 8016A90C 8FB00024 */  lw         $s0, 0x24($sp)
/* CB350 8016A910 8FB10028 */  lw         $s1, 0x28($sp)
/* CB354 8016A914 8FB2002C */  lw         $s2, 0x2C($sp)
/* CB358 8016A918 8FB30030 */  lw         $s3, 0x30($sp)
/* CB35C 8016A91C 8FB40034 */  lw         $s4, 0x34($sp)
/* CB360 8016A920 8FB50038 */  lw         $s5, 0x38($sp)
/* CB364 8016A924 8FB6003C */  lw         $s6, 0x3C($sp)
/* CB368 8016A928 8FB70040 */  lw         $s7, 0x40($sp)
/* CB36C 8016A92C 03E00008 */  jr         $ra
/* CB370 8016A930 27BD0078 */   addiu     $sp, $sp, 0x78
