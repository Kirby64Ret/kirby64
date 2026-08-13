nonmatching func_8017D430_ovl3, 0x4B8

glabel func_8017D430_ovl3
    /* DDE70 8017D430 3C0E8013 */  lui        $t6, %hi(D_8012E7E8 + 0x8)
    /* DDE74 8017D434 8DCEE7F0 */  lw         $t6, %lo(D_8012E7E8 + 0x8)($t6)
    /* DDE78 8017D438 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* DDE7C 8017D43C AFBF001C */  sw         $ra, 0x1C($sp)
    /* DDE80 8017D440 AFB00018 */  sw         $s0, 0x18($sp)
    /* DDE84 8017D444 11C00009 */  beqz       $t6, .L8017D46C_ovl3
    /* DDE88 8017D448 AFA40048 */   sw        $a0, 0x48($sp)
    /* DDE8C 8017D44C 0C054E61 */  jal        func_80153984_ovl3
    /* DDE90 8017D450 00000000 */   nop
    /* DDE94 8017D454 0C0485EE */  jal        func_801217B8
    /* DDE98 8017D458 00000000 */   nop
    /* DDE9C 8017D45C 0C04759F */  jal        func_8011D67C
    /* DDEA0 8017D460 00000000 */   nop
    /* DDEA4 8017D464 1000011C */  b          .L8017D8D8_ovl3
    /* DDEA8 8017D468 8FBF001C */   lw        $ra, 0x1C($sp)
  .L8017D46C_ovl3:
    /* DDEAC 8017D46C 3C0F8013 */  lui        $t7, %hi(D_8012E7FC + 0x8)
    /* DDEB0 8017D470 8DEFE804 */  lw         $t7, %lo(D_8012E7FC + 0x8)($t7)
    /* DDEB4 8017D474 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* DDEB8 8017D478 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* DDEBC 8017D47C 05E00063 */  bltz       $t7, .L8017D60C_ovl3
    /* DDEC0 8017D480 3C08800F */   lui       $t0, %hi(D_800EA6E0)
    /* DDEC4 8017D484 8E180000 */  lw         $t8, 0x0($s0)
    /* DDEC8 8017D488 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* DDECC 8017D48C 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
    /* DDED0 8017D490 8F020000 */  lw         $v0, 0x0($t8)
    /* DDED4 8017D494 3C048019 */  lui        $a0, %hi(D_8019139C_ovl3)
    /* DDED8 8017D498 2484139C */  addiu      $a0, $a0, %lo(D_8019139C_ovl3)
    /* DDEDC 8017D49C 00021080 */  sll        $v0, $v0, 2
    /* DDEE0 8017D4A0 0322C821 */  addu       $t9, $t9, $v0
    /* DDEE4 8017D4A4 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* DDEE8 8017D4A8 01024821 */  addu       $t1, $t0, $v0
    /* DDEEC 8017D4AC 8D260000 */  lw         $a2, 0x0($t1)
    /* DDEF0 8017D4B0 0C05A102 */  jal        func_80168408_ovl3
    /* DDEF4 8017D4B4 8F250008 */   lw        $a1, 0x8($t9)
    /* DDEF8 8017D4B8 3C08800F */  lui        $t0, %hi(D_800EA6E0)
    /* DDEFC 8017D4BC 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
    /* DDF00 8017D4C0 10400028 */  beqz       $v0, .L8017D564_ovl3
    /* DDF04 8017D4C4 00402825 */   or        $a1, $v0, $zero
    /* DDF08 8017D4C8 8C4A001C */  lw         $t2, 0x1C($v0)
    /* DDF0C 8017D4CC 00002025 */  or         $a0, $zero, $zero
    /* DDF10 8017D4D0 8C430020 */  lw         $v1, 0x20($v0)
    /* DDF14 8017D4D4 1940001F */  blez       $t2, .L8017D554_ovl3
    /* DDF18 8017D4D8 00000000 */   nop
    /* DDF1C 8017D4DC 8E0B0000 */  lw         $t3, 0x0($s0)
  .L8017D4E0_ovl3:
    /* DDF20 8017D4E0 C464000C */  lwc1       $f4, 0xC($v1)
    /* DDF24 8017D4E4 C46A0010 */  lwc1       $f10, 0x10($v1)
    /* DDF28 8017D4E8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DDF2C 8017D4EC 24840001 */  addiu      $a0, $a0, 0x1
    /* DDF30 8017D4F0 24630028 */  addiu      $v1, $v1, 0x28
    /* DDF34 8017D4F4 000C6880 */  sll        $t5, $t4, 2
    /* DDF38 8017D4F8 010D7021 */  addu       $t6, $t0, $t5
    /* DDF3C 8017D4FC C5C60000 */  lwc1       $f6, 0x0($t6)
    /* DDF40 8017D500 46062202 */  mul.s      $f8, $f4, $f6
    /* DDF44 8017D504 C464FFEC */  lwc1       $f4, -0x14($v1)
    /* DDF48 8017D508 E468FFE4 */  swc1       $f8, -0x1C($v1)
    /* DDF4C 8017D50C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDF50 8017D510 8DF80000 */  lw         $t8, 0x0($t7)
    /* DDF54 8017D514 0018C880 */  sll        $t9, $t8, 2
    /* DDF58 8017D518 01194821 */  addu       $t1, $t0, $t9
    /* DDF5C 8017D51C C5300000 */  lwc1       $f16, 0x0($t1)
    /* DDF60 8017D520 46105482 */  mul.s      $f18, $f10, $f16
    /* DDF64 8017D524 E472FFE8 */  swc1       $f18, -0x18($v1)
    /* DDF68 8017D528 8E0A0000 */  lw         $t2, 0x0($s0)
    /* DDF6C 8017D52C 8D4B0000 */  lw         $t3, 0x0($t2)
    /* DDF70 8017D530 000B6080 */  sll        $t4, $t3, 2
    /* DDF74 8017D534 010C6821 */  addu       $t5, $t0, $t4
    /* DDF78 8017D538 C5A60000 */  lwc1       $f6, 0x0($t5)
    /* DDF7C 8017D53C 46062202 */  mul.s      $f8, $f4, $f6
    /* DDF80 8017D540 E468FFEC */  swc1       $f8, -0x14($v1)
    /* DDF84 8017D544 8CAE001C */  lw         $t6, 0x1C($a1)
    /* DDF88 8017D548 008E082A */  slt        $at, $a0, $t6
    /* DDF8C 8017D54C 5420FFE4 */  bnel       $at, $zero, .L8017D4E0_ovl3
    /* DDF90 8017D550 8E0B0000 */   lw        $t3, 0x0($s0)
  .L8017D554_ovl3:
    /* DDF94 8017D554 0C044713 */  jal        func_80111C4C
    /* DDF98 8017D558 00A02025 */   or        $a0, $a1, $zero
    /* DDF9C 8017D55C 3C08800F */  lui        $t0, %hi(D_800EA6E0)
    /* DDFA0 8017D560 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
  .L8017D564_ovl3:
    /* DDFA4 8017D564 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DDFA8 8017D568 3C048019 */  lui        $a0, %hi(D_80193D70_ovl3)
    /* DDFAC 8017D56C 3C058013 */  lui        $a1, %hi(D_8012E9B8 + 0x10)
    /* DDFB0 8017D570 8DF80000 */  lw         $t8, 0x0($t7)
    /* DDFB4 8017D574 3C068019 */  lui        $a2, %hi(D_80193DC0_ovl3)
    /* DDFB8 8017D578 90C63DC0 */  lbu        $a2, %lo(D_80193DC0_ovl3)($a2)
    /* DDFBC 8017D57C 0018C880 */  sll        $t9, $t8, 2
    /* DDFC0 8017D580 01194821 */  addu       $t1, $t0, $t9
    /* DDFC4 8017D584 8D270000 */  lw         $a3, 0x0($t1)
    /* DDFC8 8017D588 24A5E9C8 */  addiu      $a1, $a1, %lo(D_8012E9B8 + 0x10)
    /* DDFCC 8017D58C 0C05487C */  jal        func_801521F0_ovl3
    /* DDFD0 8017D590 24843D70 */   addiu     $a0, $a0, %lo(D_80193D70_ovl3)
    /* DDFD4 8017D594 3C048019 */  lui        $a0, %hi(D_80193DC0_ovl3)
    /* DDFD8 8017D598 24843DC0 */  addiu      $a0, $a0, %lo(D_80193DC0_ovl3)
    /* DDFDC 8017D59C 0C055127 */  jal        func_8015449C_ovl3
    /* DDFE0 8017D5A0 00002825 */   or        $a1, $zero, $zero
    /* DDFE4 8017D5A4 8E030000 */  lw         $v1, 0x0($s0)
    /* DDFE8 8017D5A8 3C08800F */  lui        $t0, %hi(D_800EA6E0)
    /* DDFEC 8017D5AC 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
    /* DDFF0 8017D5B0 8C6A0000 */  lw         $t2, 0x0($v1)
    /* DDFF4 8017D5B4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* DDFF8 8017D5B8 44811000 */  mtc1       $at, $f2
    /* DDFFC 8017D5BC 000A5880 */  sll        $t3, $t2, 2
    /* DE000 8017D5C0 010B2021 */  addu       $a0, $t0, $t3
    /* DE004 8017D5C4 C4800000 */  lwc1       $f0, 0x0($a0)
    /* DE008 8017D5C8 3C018019 */  lui        $at, %hi(D_80197674_ovl3)
    /* DE00C 8017D5CC 46001032 */  c.eq.s     $f2, $f0
    /* DE010 8017D5D0 00000000 */  nop
    /* DE014 8017D5D4 4501000D */  bc1t       .L8017D60C_ovl3
    /* DE018 8017D5D8 00000000 */   nop
    /* DE01C 8017D5DC C42A7674 */  lwc1       $f10, %lo(D_80197674_ovl3)($at)
    /* DE020 8017D5E0 460A0400 */  add.s      $f16, $f0, $f10
    /* DE024 8017D5E4 E4900000 */  swc1       $f16, 0x0($a0)
    /* DE028 8017D5E8 8C6C0000 */  lw         $t4, 0x0($v1)
    /* DE02C 8017D5EC 000C6880 */  sll        $t5, $t4, 2
    /* DE030 8017D5F0 010D2021 */  addu       $a0, $t0, $t5
    /* DE034 8017D5F4 C4920000 */  lwc1       $f18, 0x0($a0)
    /* DE038 8017D5F8 4612103C */  c.lt.s     $f2, $f18
    /* DE03C 8017D5FC 00000000 */  nop
    /* DE040 8017D600 45000002 */  bc1f       .L8017D60C_ovl3
    /* DE044 8017D604 00000000 */   nop
    /* DE048 8017D608 E4820000 */  swc1       $f2, 0x0($a0)
  .L8017D60C_ovl3:
    /* DE04C 8017D60C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* DE050 8017D610 0C054E61 */  jal        func_80153984_ovl3
    /* DE054 8017D614 2610A7C4 */   addiu     $s0, $s0, %lo(omCurrentObj)
    /* DE058 8017D618 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DE05C 8017D61C 3C19800E */  lui        $t9, %hi(gEntitiesNextPosYArray)
    /* DE060 8017D620 27392790 */  addiu      $t9, $t9, %lo(gEntitiesNextPosYArray)
    /* DE064 8017D624 8DCF0000 */  lw         $t7, 0x0($t6)
    /* DE068 8017D628 3C01800F */  lui        $at, %hi(D_800EC9E4)
    /* DE06C 8017D62C C426C9E4 */  lwc1       $f6, %lo(D_800EC9E4)($at)
    /* DE070 8017D630 000FC080 */  sll        $t8, $t7, 2
    /* DE074 8017D634 03191821 */  addu       $v1, $t8, $t9
    /* DE078 8017D638 C4640000 */  lwc1       $f4, 0x0($v1)
    /* DE07C 8017D63C 46062201 */  sub.s      $f8, $f4, $f6
    /* DE080 8017D640 0C0473D6 */  jal        func_8011CF58
    /* DE084 8017D644 E4680000 */   swc1      $f8, 0x0($v1)
    /* DE088 8017D648 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* DE08C 8017D64C 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
    /* DE090 8017D650 8CA900A0 */  lw         $t1, 0xA0($a1)
    /* DE094 8017D654 51200036 */  beql       $t1, $zero, .L8017D730_ovl3
    /* DE098 8017D658 8CAA00FC */   lw        $t2, 0xFC($a1)
    /* DE09C 8017D65C 8E030000 */  lw         $v1, 0x0($s0)
    /* DE0A0 8017D660 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DE0A4 8017D664 3C04800F */  lui        $a0, %hi(D_800E8AE0)
    /* DE0A8 8017D668 8C620000 */  lw         $v0, 0x0($v1)
    /* DE0AC 8017D66C 44802000 */  mtc1       $zero, $f4
    /* DE0B0 8017D670 00021080 */  sll        $v0, $v0, 2
    /* DE0B4 8017D674 00220821 */  addu       $at, $at, $v0
    /* DE0B8 8017D678 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
    /* DE0BC 8017D67C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* DE0C0 8017D680 44818000 */  mtc1       $at, $f16
    /* DE0C4 8017D684 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DE0C8 8017D688 00220821 */  addu       $at, $at, $v0
    /* DE0CC 8017D68C 46105482 */  mul.s      $f18, $f10, $f16
    /* DE0D0 8017D690 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
    /* DE0D4 8017D694 8C620000 */  lw         $v0, 0x0($v1)
    /* DE0D8 8017D698 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* DE0DC 8017D69C 00021080 */  sll        $v0, $v0, 2
    /* DE0E0 8017D6A0 00822021 */  addu       $a0, $a0, $v0
    /* DE0E4 8017D6A4 8C848AE0 */  lw         $a0, %lo(D_800E8AE0)($a0)
    /* DE0E8 8017D6A8 30840006 */  andi       $a0, $a0, 0x6
    /* DE0EC 8017D6AC 54800008 */  bnel       $a0, $zero, .L8017D6D0_ovl3
    /* DE0F0 8017D6B0 44816000 */   mtc1      $at, $f12
    /* DE0F4 8017D6B4 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* DE0F8 8017D6B8 44811000 */  mtc1       $at, $f2
    /* DE0FC 8017D6BC 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* DE100 8017D6C0 44816000 */  mtc1       $at, $f12
    /* DE104 8017D6C4 10000005 */  b          .L8017D6DC_ovl3
    /* DE108 8017D6C8 46001006 */   mov.s     $f0, $f2
    /* DE10C 8017D6CC 44816000 */  mtc1       $at, $f12
  .L8017D6D0_ovl3:
    /* DE110 8017D6D0 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* DE114 8017D6D4 44811000 */  mtc1       $at, $f2
    /* DE118 8017D6D8 46006006 */  mov.s      $f0, $f12
  .L8017D6DC_ovl3:
    /* DE11C 8017D6DC 4604003C */  c.lt.s     $f0, $f4
    /* DE120 8017D6E0 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DE124 8017D6E4 00220821 */  addu       $at, $at, $v0
    /* DE128 8017D6E8 4500000A */  bc1f       .L8017D714_ovl3
    /* DE12C 8017D6EC 00000000 */   nop
    /* DE130 8017D6F0 14800003 */  bnez       $a0, .L8017D700_ovl3
    /* DE134 8017D6F4 3C01800E */   lui       $at, %hi(D_800E6850)
    /* DE138 8017D6F8 10000002 */  b          .L8017D704_ovl3
    /* DE13C 8017D6FC 46001006 */   mov.s     $f0, $f2
  .L8017D700_ovl3:
    /* DE140 8017D700 46006006 */  mov.s      $f0, $f12
  .L8017D704_ovl3:
    /* DE144 8017D704 46000187 */  neg.s      $f6, $f0
    /* DE148 8017D708 00220821 */  addu       $at, $at, $v0
    /* DE14C 8017D70C 10000007 */  b          .L8017D72C_ovl3
    /* DE150 8017D710 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
  .L8017D714_ovl3:
    /* DE154 8017D714 54800004 */  bnel       $a0, $zero, .L8017D728_ovl3
    /* DE158 8017D718 46006006 */   mov.s     $f0, $f12
    /* DE15C 8017D71C 10000002 */  b          .L8017D728_ovl3
    /* DE160 8017D720 46001006 */   mov.s     $f0, $f2
    /* DE164 8017D724 46006006 */  mov.s      $f0, $f12
  .L8017D728_ovl3:
    /* DE168 8017D728 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L8017D72C_ovl3:
    /* DE16C 8017D72C 8CAA00FC */  lw         $t2, 0xFC($a1)
  .L8017D730_ovl3:
    /* DE170 8017D730 3C040002 */  lui        $a0, (0x20007 >> 16)
    /* DE174 8017D734 11400008 */  beqz       $t2, .L8017D758_ovl3
    /* DE178 8017D738 00000000 */   nop
    /* DE17C 8017D73C 8E0B0000 */  lw         $t3, 0x0($s0)
    /* DE180 8017D740 44804000 */  mtc1       $zero, $f8
    /* DE184 8017D744 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* DE188 8017D748 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DE18C 8017D74C 000C6880 */  sll        $t5, $t4, 2
    /* DE190 8017D750 002D0821 */  addu       $at, $at, $t5
    /* DE194 8017D754 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
  .L8017D758_ovl3:
    /* DE198 8017D758 0C02AA22 */  jal        func_800AA888
    /* DE19C 8017D75C 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* DE1A0 8017D760 3C08800F */  lui        $t0, %hi(D_800EA6E0)
    /* DE1A4 8017D764 14400008 */  bnez       $v0, .L8017D788_ovl3
    /* DE1A8 8017D768 2508A6E0 */   addiu     $t0, $t0, %lo(D_800EA6E0)
    /* DE1AC 8017D76C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DE1B0 8017D770 3C01800F */  lui        $at, %hi(D_800E8920)
    /* DE1B4 8017D774 8DCF0000 */  lw         $t7, 0x0($t6)
    /* DE1B8 8017D778 000FC080 */  sll        $t8, $t7, 2
    /* DE1BC 8017D77C 00380821 */  addu       $at, $at, $t8
    /* DE1C0 8017D780 10000005 */  b          .L8017D798_ovl3
    /* DE1C4 8017D784 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
  .L8017D788_ovl3:
    /* DE1C8 8017D788 0C0485EE */  jal        func_801217B8
    /* DE1CC 8017D78C 00000000 */   nop
    /* DE1D0 8017D790 3C08800F */  lui        $t0, %hi(D_800EA6E0)
    /* DE1D4 8017D794 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
  .L8017D798_ovl3:
    /* DE1D8 8017D798 3C198013 */  lui        $t9, %hi(D_8012E860)
    /* DE1DC 8017D79C 8F39E860 */  lw         $t9, %lo(D_8012E860)($t9)
    /* DE1E0 8017D7A0 3C098013 */  lui        $t1, %hi(D_8012E7FC + 0x8)
    /* DE1E4 8017D7A4 5320004C */  beql       $t9, $zero, .L8017D8D8_ovl3
    /* DE1E8 8017D7A8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* DE1EC 8017D7AC 8D29E804 */  lw         $t1, %lo(D_8012E7FC + 0x8)($t1)
    /* DE1F0 8017D7B0 8FAA0048 */  lw         $t2, 0x48($sp)
    /* DE1F4 8017D7B4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* DE1F8 8017D7B8 55200047 */  bnel       $t1, $zero, .L8017D8D8_ovl3
    /* DE1FC 8017D7BC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* DE200 8017D7C0 C54A0040 */  lwc1       $f10, 0x40($t2)
    /* DE204 8017D7C4 44818000 */  mtc1       $at, $f16
    /* DE208 8017D7C8 3C048019 */  lui        $a0, %hi(D_80197570_ovl3)
    /* DE20C 8017D7CC 3C0D8019 */  lui        $t5, %hi(D_80191424_ovl3)
    /* DE210 8017D7D0 46105482 */  mul.s      $f18, $f10, $f16
    /* DE214 8017D7D4 24847570 */  addiu      $a0, $a0, %lo(D_80197570_ovl3)
    /* DE218 8017D7D8 25AD1424 */  addiu      $t5, $t5, %lo(D_80191424_ovl3)
    /* DE21C 8017D7DC 4600910D */  trunc.w.s  $f4, $f18
    /* DE220 8017D7E0 44072000 */  mfc1       $a3, $f4
    /* DE224 8017D7E4 00000000 */  nop
    /* DE228 8017D7E8 28E10018 */  slti       $at, $a3, 0x18
    /* DE22C 8017D7EC 14200006 */  bnez       $at, .L8017D808_ovl3
    /* DE230 8017D7F0 000760C0 */   sll       $t4, $a3, 3
    /* DE234 8017D7F4 00E02825 */  or         $a1, $a3, $zero
    /* DE238 8017D7F8 0C02909C */  jal        utilPrintf
    /* DE23C 8017D7FC AFA70038 */   sw        $a3, 0x38($sp)
    /* DE240 8017D800 1000002C */  b          .L8017D8B4_ovl3
    /* DE244 8017D804 8FA70038 */   lw        $a3, 0x38($sp)
  .L8017D808_ovl3:
    /* DE248 8017D808 018D1821 */  addu       $v1, $t4, $t5
    /* DE24C 8017D80C 3C018019 */  lui        $at, %hi(D_80197678_ovl3)
    /* DE250 8017D810 C4267678 */  lwc1       $f6, %lo(D_80197678_ovl3)($at)
    /* DE254 8017D814 C4680000 */  lwc1       $f8, 0x0($v1)
    /* DE258 8017D818 46083032 */  c.eq.s     $f6, $f8
    /* DE25C 8017D81C 00000000 */  nop
    /* DE260 8017D820 45030025 */  bc1tl      .L8017D8B8_ovl3
    /* DE264 8017D824 00075080 */   sll       $t2, $a3, 2
    /* DE268 8017D828 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DE26C 8017D82C 3C048019 */  lui        $a0, %hi(D_80191404_ovl3)
    /* DE270 8017D830 24841404 */  addiu      $a0, $a0, %lo(D_80191404_ovl3)
    /* DE274 8017D834 8DCF0000 */  lw         $t7, 0x0($t6)
    /* DE278 8017D838 00002825 */  or         $a1, $zero, $zero
    /* DE27C 8017D83C 000FC080 */  sll        $t8, $t7, 2
    /* DE280 8017D840 0118C821 */  addu       $t9, $t0, $t8
    /* DE284 8017D844 8F260000 */  lw         $a2, 0x0($t9)
    /* DE288 8017D848 AFA70038 */  sw         $a3, 0x38($sp)
    /* DE28C 8017D84C 0C05A102 */  jal        func_80168408_ovl3
    /* DE290 8017D850 AFA30024 */   sw        $v1, 0x24($sp)
    /* DE294 8017D854 44800000 */  mtc1       $zero, $f0
    /* DE298 8017D858 8C490020 */  lw         $t1, 0x20($v0)
    /* DE29C 8017D85C 8FA30024 */  lw         $v1, 0x24($sp)
    /* DE2A0 8017D860 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* DE2A4 8017D864 E520000C */  swc1       $f0, 0xC($t1)
    /* DE2A8 8017D868 8C4A0020 */  lw         $t2, 0x20($v0)
    /* DE2AC 8017D86C 00402025 */  or         $a0, $v0, $zero
    /* DE2B0 8017D870 E5400010 */  swc1       $f0, 0x10($t2)
    /* DE2B4 8017D874 8C4B0020 */  lw         $t3, 0x20($v0)
    /* DE2B8 8017D878 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* DE2BC 8017D87C E56A0014 */  swc1       $f10, 0x14($t3)
    /* DE2C0 8017D880 8C4C0020 */  lw         $t4, 0x20($v0)
    /* DE2C4 8017D884 C4700004 */  lwc1       $f16, 0x4($v1)
    /* DE2C8 8017D888 E5900018 */  swc1       $f16, 0x18($t4)
    /* DE2CC 8017D88C 8E0D0000 */  lw         $t5, 0x0($s0)
    /* DE2D0 8017D890 8C490020 */  lw         $t1, 0x20($v0)
    /* DE2D4 8017D894 8DAE0000 */  lw         $t6, 0x0($t5)
    /* DE2D8 8017D898 000E7880 */  sll        $t7, $t6, 2
    /* DE2DC 8017D89C 030FC021 */  addu       $t8, $t8, $t7
    /* DE2E0 8017D8A0 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* DE2E4 8017D8A4 8F190008 */  lw         $t9, 0x8($t8)
    /* DE2E8 8017D8A8 0C044713 */  jal        func_80111C4C
    /* DE2EC 8017D8AC AD390008 */   sw        $t9, 0x8($t1)
    /* DE2F0 8017D8B0 8FA70038 */  lw         $a3, 0x38($sp)
  .L8017D8B4_ovl3:
    /* DE2F4 8017D8B4 00075080 */  sll        $t2, $a3, 2
  .L8017D8B8_ovl3:
    /* DE2F8 8017D8B8 3C048019 */  lui        $a0, %hi(D_80194348_ovl3)
    /* DE2FC 8017D8BC 008A2021 */  addu       $a0, $a0, $t2
    /* DE300 8017D8C0 8C844348 */  lw         $a0, %lo(D_80194348_ovl3)($a0)
    /* DE304 8017D8C4 50800004 */  beql       $a0, $zero, .L8017D8D8_ovl3
    /* DE308 8017D8C8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* DE30C 8017D8CC 0C055127 */  jal        func_8015449C_ovl3
    /* DE310 8017D8D0 00002825 */   or        $a1, $zero, $zero
    /* DE314 8017D8D4 8FBF001C */  lw         $ra, 0x1C($sp)
  .L8017D8D8_ovl3:
    /* DE318 8017D8D8 8FB00018 */  lw         $s0, 0x18($sp)
    /* DE31C 8017D8DC 27BD0048 */  addiu      $sp, $sp, 0x48
    /* DE320 8017D8E0 03E00008 */  jr         $ra
    /* DE324 8017D8E4 00000000 */   nop
endlabel func_8017D430_ovl3
.size func_8017D430_ovl3, . - func_8017D430_ovl3
