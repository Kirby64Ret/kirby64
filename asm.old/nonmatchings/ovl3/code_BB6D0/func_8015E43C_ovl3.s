glabel func_8015E43C_ovl3
/* BEE7C 8015E43C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* BEE80 8015E440 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* BEE84 8015E444 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BEE88 8015E448 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEE8C 8015E44C 8DCF0000 */  lw         $t7, 0x0($t6)
/* BEE90 8015E450 3C19800F */  lui        $t9, %hi(D_800EC2E0)
/* BEE94 8015E454 000FC080 */  sll        $t8, $t7, 2
/* BEE98 8015E458 0338C821 */  addu       $t9, $t9, $t8
/* BEE9C 8015E45C 8F39C2E0 */  lw         $t9, %lo(D_800EC2E0)($t9)
/* BEEA0 8015E460 0C058738 */  jal        func_80161CE0_ovl3
/* BEEA4 8015E464 AFB90024 */   sw        $t9, 0x24($sp)
/* BEEA8 8015E468 00002025 */  or         $a0, $zero, $zero
/* BEEAC 8015E46C 24050000 */  addiu      $a1, $zero, 0x0
/* BEEB0 8015E470 0C0587B0 */  jal        func_80161EC0_ovl3
/* BEEB4 8015E474 3C0641A0 */   lui       $a2, (0x41A00000 >> 16)
/* BEEB8 8015E478 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* BEEBC 8015E47C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* BEEC0 8015E480 3C01800E */  lui        $at, %hi(D_800E0650)
/* BEEC4 8015E484 24090001 */  addiu      $t1, $zero, 0x1
/* BEEC8 8015E488 8C4A0000 */  lw         $t2, 0x0($v0)
/* BEECC 8015E48C 3C0C800B */  lui        $t4, %hi(func_800B4954)
/* BEED0 8015E490 258C4954 */  addiu      $t4, $t4, %lo(func_800B4954)
/* BEED4 8015E494 000A5880 */  sll        $t3, $t2, 2
/* BEED8 8015E498 002B0821 */  addu       $at, $at, $t3
/* BEEDC 8015E49C AC290650 */  sw         $t1, %lo(D_800E0650)($at)
/* BEEE0 8015E4A0 8C4D0000 */  lw         $t5, 0x0($v0)
/* BEEE4 8015E4A4 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BEEE8 8015E4A8 3C0F8016 */  lui        $t7, %hi(func_8015E754_ovl3)
/* BEEEC 8015E4AC 000D7080 */  sll        $t6, $t5, 2
/* BEEF0 8015E4B0 002E0821 */  addu       $at, $at, $t6
/* BEEF4 8015E4B4 AC2CEF90 */  sw         $t4, %lo(D_800DEF90)($at)
/* BEEF8 8015E4B8 8C580000 */  lw         $t8, 0x0($v0)
/* BEEFC 8015E4BC 3C01800E */  lui        $at, %hi(D_800DF150)
/* BEF00 8015E4C0 25EFE754 */  addiu      $t7, $t7, %lo(func_8015E754_ovl3)
/* BEF04 8015E4C4 0018C880 */  sll        $t9, $t8, 2
.L8015E4C8_ovl5:
/* BEF08 8015E4C8 00390821 */  addu       $at, $at, $t9
/* BEF0C 8015E4CC AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* BEF10 8015E4D0 8C490000 */  lw         $t1, 0x0($v0)
/* BEF14 8015E4D4 8FA80024 */  lw         $t0, 0x24($sp)
/* BEF18 8015E4D8 3C01800F */  lui        $at, %hi(D_800E9720)
/* BEF1C 8015E4DC 00095880 */  sll        $t3, $t1, 2
/* BEF20 8015E4E0 002B0821 */  addu       $at, $at, $t3
/* BEF24 8015E4E4 240A000A */  addiu      $t2, $zero, 0xA
/* BEF28 8015E4E8 AC2A9720 */  sw         $t2, %lo(D_800E9720)($at)
/* BEF2C 8015E4EC 2D010005 */  sltiu      $at, $t0, 0x5
/* BEF30 8015E4F0 14200009 */  bnez       $at, .L8015E518_ovl3
/* BEF34 8015E4F4 00087880 */   sll       $t7, $t0, 2
/* BEF38 8015E4F8 8C4D0000 */  lw         $t5, 0x0($v0)
/* BEF3C 8015E4FC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* BEF40 8015E500 44812000 */  mtc1       $at, $f4
/* BEF44 8015E504 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BEF48 8015E508 000D6080 */  sll        $t4, $t5, 2
/* BEF4C 8015E50C 002C0821 */  addu       $at, $at, $t4
/* BEF50 8015E510 10000008 */  b          .L8015E534_ovl3
/* BEF54 8015E514 E4246A10 */   swc1      $f4, %lo(D_800E6A10)($at)
.L8015E518_ovl3:
/* BEF58 8015E518 8C4E0000 */  lw         $t6, 0x0($v0)
/* BEF5C 8015E51C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BEF60 8015E520 44813000 */  mtc1       $at, $f6
/* BEF64 8015E524 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BEF68 8015E528 000EC080 */  sll        $t8, $t6, 2
/* BEF6C 8015E52C 00380821 */  addu       $at, $at, $t8
/* BEF70 8015E530 E4266A10 */  swc1       $f6, %lo(D_800E6A10)($at)
.L8015E534_ovl3:
/* BEF74 8015E534 8C490000 */  lw         $t1, 0x0($v0)
/* BEF78 8015E538 3C198019 */  lui        $t9, %hi(D_801967A4_ovl3)
/* BEF7C 8015E53C 032FC821 */  addu       $t9, $t9, $t7
/* BEF80 8015E540 8F3967A4 */  lw         $t9, %lo(D_801967A4_ovl3)($t9)
/* BEF84 8015E544 3C01800E */  lui        $at, %hi(D_800E0490)
/* BEF88 8015E548 00095080 */  sll        $t2, $t1, 2
/* BEF8C 8015E54C 002A0821 */  addu       $at, $at, $t2
/* BEF90 8015E550 AC390490 */  sw         $t9, %lo(D_800E0490)($at)
/* BEF94 8015E554 8C430000 */  lw         $v1, 0x0($v0)
/* BEF98 8015E558 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* BEF9C 8015E55C 3C0C8019 */  lui        $t4, %hi(D_80197F60_ovl3)
/* BEFA0 8015E560 2467FFFC */  addiu      $a3, $v1, -0x4
/* BEFA4 8015E564 00076880 */  sll        $t5, $a3, 2
/* BEFA8 8015E568 01A76823 */  subu       $t5, $t5, $a3
/* BEFAC 8015E56C 000D68C0 */  sll        $t5, $t5, 3
/* BEFB0 8015E570 01A76823 */  subu       $t5, $t5, $a3
/* BEFB4 8015E574 3C18801A */  lui        $t8, %hi(D_801982F8_ovl3)
/* BEFB8 8015E578 00035880 */  sll        $t3, $v1, 2
/* BEFBC 8015E57C 008B2021 */  addu       $a0, $a0, $t3
/* BEFC0 8015E580 271882F8 */  addiu      $t8, $t8, %lo(D_801982F8_ovl3)
/* BEFC4 8015E584 000D6880 */  sll        $t5, $t5, 2
/* BEFC8 8015E588 00077140 */  sll        $t6, $a3, 5
/* BEFCC 8015E58C 258C7F60 */  addiu      $t4, $t4, %lo(D_80197F60_ovl3)
/* BEFD0 8015E590 01AC2821 */  addu       $a1, $t5, $t4
/* BEFD4 8015E594 01D83021 */  addu       $a2, $t6, $t8
/* BEFD8 8015E598 0C055192 */  jal        func_80154648_ovl3
/* BEFDC 8015E59C 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
/* BEFE0 8015E5A0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* BEFE4 8015E5A4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* BEFE8 8015E5A8 3C018019 */  lui        $at, %hi(D_80197098_ovl3)
/* BEFEC 8015E5AC C4207098 */  lwc1       $f0, %lo(D_80197098_ovl3)($at)
/* BEFF0 8015E5B0 8C4F0000 */  lw         $t7, 0x0($v0)
/* BEFF4 8015E5B4 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* BEFF8 8015E5B8 3C040002 */  lui        $a0, (0x2003C >> 16)
/* BEFFC 8015E5BC 000F4880 */  sll        $t1, $t7, 2
/* BF000 8015E5C0 00290821 */  addu       $at, $at, $t1
/* BF004 8015E5C4 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
.L8015E5C8_ovl5:
/* BF008 8015E5C8 8C590000 */  lw         $t9, 0x0($v0)
/* BF00C 8015E5CC 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BF010 8015E5D0 3484003C */  ori        $a0, $a0, (0x2003C & 0xFFFF)
/* BF014 8015E5D4 00195080 */  sll        $t2, $t9, 2
/* BF018 8015E5D8 002A0821 */  addu       $at, $at, $t2
/* BF01C 8015E5DC E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* BF020 8015E5E0 8C4B0000 */  lw         $t3, 0x0($v0)
/* BF024 8015E5E4 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* BF028 8015E5E8 24050021 */  addiu      $a1, $zero, 0x21
/* BF02C 8015E5EC 000B6880 */  sll        $t5, $t3, 2
/* BF030 8015E5F0 002D0821 */  addu       $at, $at, $t5
/* BF034 8015E5F4 24060010 */  addiu      $a2, $zero, 0x10
/* BF038 8015E5F8 0C02A619 */  jal        func_800A9864
/* BF03C 8015E5FC E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* BF040 8015E600 8FAC0024 */  lw         $t4, 0x24($sp)
/* BF044 8015E604 3C188019 */  lui        $t8, %hi(D_80196764_ovl3)
/* BF048 8015E608 27186764 */  addiu      $t8, $t8, %lo(D_80196764_ovl3)
/* BF04C 8015E60C 000C70C0 */  sll        $t6, $t4, 3
/* BF050 8015E610 01D81021 */  addu       $v0, $t6, $t8
/* BF054 8015E614 C44C0000 */  lwc1       $f12, 0x0($v0)
/* BF058 8015E618 0C00B5B8 */  jal        sinf
/* BF05C 8015E61C AFA2001C */   sw        $v0, 0x1C($sp)
/* BF060 8015E620 3C014190 */  lui        $at, (0x41900000 >> 16)
/* BF064 8015E624 44814000 */  mtc1       $at, $f8
/* BF068 8015E628 8FAF001C */  lw         $t7, 0x1C($sp)
/* BF06C 8015E62C 46080082 */  mul.s      $f2, $f0, $f8
/* BF070 8015E630 C5EC0000 */  lwc1       $f12, 0x0($t7)
/* BF074 8015E634 0C00D604 */  jal        cosf
/* BF078 8015E638 E7A2002C */   swc1      $f2, 0x2C($sp)
/* BF07C 8015E63C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* BF080 8015E640 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* BF084 8015E644 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* BF088 8015E648 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BF08C 8015E64C 8C490000 */  lw         $t1, 0x0($v0)
/* BF090 8015E650 44806000 */  mtc1       $zero, $f12
/* BF094 8015E654 44807000 */  mtc1       $zero, $f14
/* BF098 8015E658 0009C880 */  sll        $t9, $t1, 2
/* BF09C 8015E65C 00390821 */  addu       $at, $at, $t9
/* BF0A0 8015E660 E42264D0 */  swc1       $f2, %lo(D_800E64D0)($at)
.L8015E664_ovl5:
/* BF0A4 8015E664 8C4A0000 */  lw         $t2, 0x0($v0)
/* BF0A8 8015E668 460C103C */  c.lt.s     $f2, $f12
/* BF0AC 8015E66C 3C01800E */  lui        $at, %hi(D_800E6690)
/* BF0B0 8015E670 000A5880 */  sll        $t3, $t2, 2
/* BF0B4 8015E674 002B0821 */  addu       $at, $at, $t3
/* BF0B8 8015E678 45000008 */  bc1f       .L8015E69C_ovl5
/* BF0BC 8015E67C E42E6690 */   swc1      $f14, %lo(D_800E6690)($at)
/* BF0C0 8015E680 8C4D0000 */  lw         $t5, 0x0($v0)
/* BF0C4 8015E684 3C01800E */  lui        $at, %hi(D_800E6850)
/* BF0C8 8015E688 46001287 */  neg.s      $f10, $f2
/* BF0CC 8015E68C 000D6080 */  sll        $t4, $t5, 2
/* BF0D0 8015E690 002C0821 */  addu       $at, $at, $t4
/* BF0D4 8015E694 10000006 */  b          .L8015E6B0_ovl3
/* BF0D8 8015E698 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L8015E69C_ovl5:
/* BF0DC 8015E69C 8C4E0000 */  lw         $t6, 0x0($v0)
/* BF0E0 8015E6A0 3C01800E */  lui        $at, %hi(D_800E6850)
/* BF0E4 8015E6A4 000EC080 */  sll        $t8, $t6, 2
/* BF0E8 8015E6A8 00380821 */  addu       $at, $at, $t8
/* BF0EC 8015E6AC E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
.L8015E6B0_ovl3:
/* BF0F0 8015E6B0 3C014190 */  lui        $at, (0x41900000 >> 16)
/* BF0F4 8015E6B4 44818000 */  mtc1       $at, $f16
/* BF0F8 8015E6B8 8C4F0000 */  lw         $t7, 0x0($v0)
/* BF0FC 8015E6BC 3C01800E */  lui        $at, %hi(D_800E3210)
/* BF100 8015E6C0 46100082 */  mul.s      $f2, $f0, $f16
/* BF104 8015E6C4 000F4880 */  sll        $t1, $t7, 2
/* BF108 8015E6C8 00290821 */  addu       $at, $at, $t1
/* BF10C 8015E6CC E4223210 */  swc1       $f2, %lo(D_800E3210)($at)
/* BF110 8015E6D0 8C590000 */  lw         $t9, 0x0($v0)
/* BF114 8015E6D4 460C103C */  c.lt.s     $f2, $f12
/* BF118 8015E6D8 3C01800E */  lui        $at, %hi(D_800E3750)
/* BF11C 8015E6DC 00195080 */  sll        $t2, $t9, 2
/* BF120 8015E6E0 002A0821 */  addu       $at, $at, $t2
/* BF124 8015E6E4 45000008 */  bc1f       .L8015E708_ovl3
/* BF128 8015E6E8 E42E3750 */   swc1      $f14, %lo(D_800E3750)($at)
/* BF12C 8015E6EC 8C4B0000 */  lw         $t3, 0x0($v0)
/* BF130 8015E6F0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BF134 8015E6F4 46001487 */  neg.s      $f18, $f2
/* BF138 8015E6F8 000B6880 */  sll        $t5, $t3, 2
/* BF13C 8015E6FC 002D0821 */  addu       $at, $at, $t5
.L8015E700_ovl5:
/* BF140 8015E700 10000006 */  b          .L8015E71C_ovl3
/* BF144 8015E704 E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
.L8015E708_ovl3:
/* BF148 8015E708 8C4C0000 */  lw         $t4, 0x0($v0)
/* BF14C 8015E70C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BF150 8015E710 000C7080 */  sll        $t6, $t4, 2
/* BF154 8015E714 002E0821 */  addu       $at, $at, $t6
/* BF158 8015E718 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
.L8015E71C_ovl3:
/* BF15C 8015E71C 8C4F0000 */  lw         $t7, 0x0($v0)
/* BF160 8015E720 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* BF164 8015E724 8FB8001C */  lw         $t8, 0x1C($sp)
/* BF168 8015E728 000F4880 */  sll        $t1, $t7, 2
/* BF16C 8015E72C 0329C821 */  addu       $t9, $t9, $t1
/* BF170 8015E730 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
.L8015E734_ovl5:
/* BF174 8015E734 C7040004 */  lwc1       $f4, 0x4($t8)
/* BF178 8015E738 8F2A0004 */  lw         $t2, 0x4($t9)
/* BF17C 8015E73C 0C02BE85 */  jal        func_800AFA14
/* BF180 8015E740 E5440030 */   swc1      $f4, 0x30($t2)
/* BF184 8015E744 8FBF0014 */  lw         $ra, 0x14($sp)
/* BF188 8015E748 27BD0030 */  addiu      $sp, $sp, 0x30
/* BF18C 8015E74C 03E00008 */  jr         $ra
/* BF190 8015E750 00000000 */   nop
