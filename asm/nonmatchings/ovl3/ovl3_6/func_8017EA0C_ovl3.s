nonmatching func_8017EA0C_ovl3, 0x3D0

glabel func_8017EA0C_ovl3
    /* DF44C 8017EA0C 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* DF450 8017EA10 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* DF454 8017EA14 8C6E00A0 */  lw         $t6, 0xA0($v1)
    /* DF458 8017EA18 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DF45C 8017EA1C AFBF0014 */  sw         $ra, 0x14($sp)
    /* DF460 8017EA20 15C00020 */  bnez       $t6, .L8017EAA4_ovl3
    /* DF464 8017EA24 AFA40018 */   sw        $a0, 0x18($sp)
    /* DF468 8017EA28 AC600030 */  sw         $zero, 0x30($v1)
    /* DF46C 8017EA2C AC60004C */  sw         $zero, 0x4C($v1)
    /* DF470 8017EA30 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* DF474 8017EA34 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* DF478 8017EA38 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DF47C 8017EA3C 8DE20000 */  lw         $v0, 0x0($t7)
    /* DF480 8017EA40 00021080 */  sll        $v0, $v0, 2
    /* DF484 8017EA44 00220821 */  addu       $at, $at, $v0
    /* DF488 8017EA48 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
    /* DF48C 8017EA4C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* DF490 8017EA50 00220821 */  addu       $at, $at, $v0
    /* DF494 8017EA54 0C0473D6 */  jal        func_8011CF58
    /* DF498 8017EA58 E424A6E0 */   swc1      $f4, %lo(D_800EA6E0)($at)
    /* DF49C 8017EA5C 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* DF4A0 8017EA60 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* DF4A4 8017EA64 8C580090 */  lw         $t8, 0x90($v0)
    /* DF4A8 8017EA68 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* DF4AC 8017EA6C 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* DF4B0 8017EA70 AC5800A0 */  sw         $t8, 0xA0($v0)
    /* DF4B4 8017EA74 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* DF4B8 8017EA78 2419002C */  addiu      $t9, $zero, 0x2C
    /* DF4BC 8017EA7C 3C040002 */  lui        $a0, (0x20016 >> 16)
    /* DF4C0 8017EA80 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DF4C4 8017EA84 34840016 */  ori        $a0, $a0, (0x20016 & 0xFFFF)
    /* DF4C8 8017EA88 000C6880 */  sll        $t5, $t4, 2
    /* DF4CC 8017EA8C 002D0821 */  addu       $at, $at, $t5
    /* DF4D0 8017EA90 0C048BC2 */  jal        func_80122F08
    /* DF4D4 8017EA94 AC39DFD0 */   sw        $t9, %lo(D_800DDFD0)($at)
    /* DF4D8 8017EA98 240E0002 */  addiu      $t6, $zero, 0x2
    /* DF4DC 8017EA9C 3C018013 */  lui        $at, %hi(D_8012E90C + 0x8)
    /* DF4E0 8017EAA0 AC2EE914 */  sw         $t6, %lo(D_8012E90C + 0x8)($at)
  .L8017EAA4_ovl3:
    /* DF4E4 8017EAA4 0C05A4F1 */  jal        func_801693C4_ovl3
    /* DF4E8 8017EAA8 24040008 */   addiu     $a0, $zero, 0x8
    /* DF4EC 8017EAAC 3C09801A */  lui        $t1, %hi(D_80198830_ovl3)
    /* DF4F0 8017EAB0 25298830 */  addiu      $t1, $t1, %lo(D_80198830_ovl3)
    /* DF4F4 8017EAB4 85230008 */  lh         $v1, 0x8($t1)
    /* DF4F8 8017EAB8 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* DF4FC 8017EABC 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* DF500 8017EAC0 00027880 */  sll        $t7, $v0, 2
    /* DF504 8017EAC4 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* DF508 8017EAC8 002F0821 */  addu       $at, $at, $t7
    /* DF50C 8017EACC AC23C2E0 */  sw         $v1, %lo(D_800EC2E0)($at)
    /* DF510 8017EAD0 8D180000 */  lw         $t8, 0x0($t0)
    /* DF514 8017EAD4 3C01800F */  lui        $at, %hi(D_800E8920)
    /* DF518 8017EAD8 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
    /* DF51C 8017EADC 00185880 */  sll        $t3, $t8, 2
    /* DF520 8017EAE0 002B0821 */  addu       $at, $at, $t3
    /* DF524 8017EAE4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* DF528 8017EAE8 8D0C0000 */  lw         $t4, 0x0($t0)
    /* DF52C 8017EAEC 254A8AE0 */  addiu      $t2, $t2, %lo(D_800E8AE0)
    /* DF530 8017EAF0 3C05800D */  lui        $a1, %hi(D_800D71E8 + 0x50)
    /* DF534 8017EAF4 000CC880 */  sll        $t9, $t4, 2
    /* DF538 8017EAF8 01596821 */  addu       $t5, $t2, $t9
    /* DF53C 8017EAFC 8DAE0000 */  lw         $t6, 0x0($t5)
    /* DF540 8017EB00 3C018019 */  lui        $at, %hi(D_801976BC_ovl3)
    /* DF544 8017EB04 00036880 */  sll        $t5, $v1, 2
    /* DF548 8017EB08 31CF0006 */  andi       $t7, $t6, 0x6
    /* DF54C 8017EB0C 11E00006 */  beqz       $t7, .L8017EB28_ovl3
    /* DF550 8017EB10 0003C880 */   sll       $t9, $v1, 2
    /* DF554 8017EB14 3C018019 */  lui        $at, %hi(D_801976B8_ovl3)
    /* DF558 8017EB18 C42676B8 */  lwc1       $f6, %lo(D_801976B8_ovl3)($at)
    /* DF55C 8017EB1C 24A57238 */  addiu      $a1, $a1, %lo(D_800D71E8 + 0x50)
    /* DF560 8017EB20 10000005 */  b          .L8017EB38_ovl3
    /* DF564 8017EB24 E4A60000 */   swc1      $f6, 0x0($a1)
  .L8017EB28_ovl3:
    /* DF568 8017EB28 C42876BC */  lwc1       $f8, %lo(D_801976BC_ovl3)($at)
    /* DF56C 8017EB2C 3C05800D */  lui        $a1, %hi(D_800D71E8 + 0x50)
    /* DF570 8017EB30 24A57238 */  addiu      $a1, $a1, %lo(D_800D71E8 + 0x50)
    /* DF574 8017EB34 E4A80000 */  swc1       $f8, 0x0($a1)
  .L8017EB38_ovl3:
    /* DF578 8017EB38 8D020000 */  lw         $v0, 0x0($t0)
    /* DF57C 8017EB3C 44804000 */  mtc1       $zero, $f8
    /* DF580 8017EB40 3C018019 */  lui        $at, %hi(D_80196D98_ovl3)
    /* DF584 8017EB44 00021080 */  sll        $v0, $v0, 2
    /* DF588 8017EB48 0142C021 */  addu       $t8, $t2, $v0
    /* DF58C 8017EB4C 8F0B0000 */  lw         $t3, 0x0($t8)
    /* DF590 8017EB50 002D0821 */  addu       $at, $at, $t5
    /* DF594 8017EB54 316C0006 */  andi       $t4, $t3, 0x6
    /* DF598 8017EB58 15800008 */  bnez       $t4, .L8017EB7C_ovl3
    /* DF59C 8017EB5C 00000000 */   nop
    /* DF5A0 8017EB60 3C018019 */  lui        $at, %hi(D_80196D98_ovl3)
    /* DF5A4 8017EB64 00390821 */  addu       $at, $at, $t9
    /* DF5A8 8017EB68 C42A6D98 */  lwc1       $f10, %lo(D_80196D98_ovl3)($at)
    /* DF5AC 8017EB6C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* DF5B0 8017EB70 00220821 */  addu       $at, $at, $v0
    /* DF5B4 8017EB74 10000008 */  b          .L8017EB98_ovl3
    /* DF5B8 8017EB78 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
  .L8017EB7C_ovl3:
    /* DF5BC 8017EB7C C4306D98 */  lwc1       $f16, %lo(D_80196D98_ovl3)($at)
    /* DF5C0 8017EB80 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* DF5C4 8017EB84 44819000 */  mtc1       $at, $f18
    /* DF5C8 8017EB88 3C01800E */  lui        $at, %hi(D_800E3210)
    /* DF5CC 8017EB8C 00220821 */  addu       $at, $at, $v0
    /* DF5D0 8017EB90 46128102 */  mul.s      $f4, $f16, $f18
    /* DF5D4 8017EB94 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
  .L8017EB98_ovl3:
    /* DF5D8 8017EB98 8D0E0000 */  lw         $t6, 0x0($t0)
    /* DF5DC 8017EB9C C4A60000 */  lwc1       $f6, 0x0($a1)
    /* DF5E0 8017EBA0 3C01800E */  lui        $at, %hi(D_800E3750)
    /* DF5E4 8017EBA4 000E7880 */  sll        $t7, $t6, 2
    /* DF5E8 8017EBA8 002F0821 */  addu       $at, $at, $t7
    /* DF5EC 8017EBAC E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
    /* DF5F0 8017EBB0 8D020000 */  lw         $v0, 0x0($t0)
    /* DF5F4 8017EBB4 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* DF5F8 8017EBB8 00021080 */  sll        $v0, $v0, 2
    /* DF5FC 8017EBBC 0142C021 */  addu       $t8, $t2, $v0
    /* DF600 8017EBC0 8F040000 */  lw         $a0, 0x0($t8)
    /* DF604 8017EBC4 30840006 */  andi       $a0, $a0, 0x6
    /* DF608 8017EBC8 54800008 */  bnel       $a0, $zero, .L8017EBEC_ovl3
    /* DF60C 8017EBCC 44816000 */   mtc1      $at, $f12
    /* DF610 8017EBD0 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* DF614 8017EBD4 44811000 */  mtc1       $at, $f2
    /* DF618 8017EBD8 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* DF61C 8017EBDC 44816000 */  mtc1       $at, $f12
    /* DF620 8017EBE0 10000005 */  b          .L8017EBF8_ovl3
    /* DF624 8017EBE4 46001006 */   mov.s     $f0, $f2
    /* DF628 8017EBE8 44816000 */  mtc1       $at, $f12
  .L8017EBEC_ovl3:
    /* DF62C 8017EBEC 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* DF630 8017EBF0 44811000 */  mtc1       $at, $f2
    /* DF634 8017EBF4 46006006 */  mov.s      $f0, $f12
  .L8017EBF8_ovl3:
    /* DF638 8017EBF8 4608003C */  c.lt.s     $f0, $f8
    /* DF63C 8017EBFC 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* DF640 8017EC00 00220821 */  addu       $at, $at, $v0
    /* DF644 8017EC04 2405000A */  addiu      $a1, $zero, 0xA
    /* DF648 8017EC08 4500000A */  bc1f       .L8017EC34_ovl3
    /* DF64C 8017EC0C 00000000 */   nop
    /* DF650 8017EC10 14800003 */  bnez       $a0, .L8017EC20_ovl3
    /* DF654 8017EC14 3C01800E */   lui       $at, %hi(D_800E3C90)
    /* DF658 8017EC18 10000002 */  b          .L8017EC24_ovl3
    /* DF65C 8017EC1C 46001006 */   mov.s     $f0, $f2
  .L8017EC20_ovl3:
    /* DF660 8017EC20 46006006 */  mov.s      $f0, $f12
  .L8017EC24_ovl3:
    /* DF664 8017EC24 46000287 */  neg.s      $f10, $f0
    /* DF668 8017EC28 00220821 */  addu       $at, $at, $v0
    /* DF66C 8017EC2C 10000007 */  b          .L8017EC4C_ovl3
    /* DF670 8017EC30 E42A3C90 */   swc1      $f10, %lo(D_800E3C90)($at)
  .L8017EC34_ovl3:
    /* DF674 8017EC34 54800004 */  bnel       $a0, $zero, .L8017EC48_ovl3
    /* DF678 8017EC38 46006006 */   mov.s     $f0, $f12
    /* DF67C 8017EC3C 10000002 */  b          .L8017EC48_ovl3
    /* DF680 8017EC40 46001006 */   mov.s     $f0, $f2
    /* DF684 8017EC44 46006006 */  mov.s      $f0, $f12
  .L8017EC48_ovl3:
    /* DF688 8017EC48 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
  .L8017EC4C_ovl3:
    /* DF68C 8017EC4C 24010003 */  addiu      $at, $zero, 0x3
    /* DF690 8017EC50 5461000B */  bnel       $v1, $at, .L8017EC80_ovl3
    /* DF694 8017EC54 24010002 */   addiu     $at, $zero, 0x2
    /* DF698 8017EC58 0C02ED1A */  jal        func_800BB468
    /* DF69C 8017EC5C 2404000B */   addiu     $a0, $zero, 0xB
    /* DF6A0 8017EC60 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* DF6A4 8017EC64 3C03801A */  lui        $v1, %hi(D_80198838_ovl3)
    /* DF6A8 8017EC68 3C09801A */  lui        $t1, %hi(D_80198830_ovl3)
    /* DF6AC 8017EC6C 25298830 */  addiu      $t1, $t1, %lo(D_80198830_ovl3)
    /* DF6B0 8017EC70 84638838 */  lh         $v1, %lo(D_80198838_ovl3)($v1)
    /* DF6B4 8017EC74 10000018 */  b          .L8017ECD8_ovl3
    /* DF6B8 8017EC78 8D08A7C4 */   lw        $t0, %lo(omCurrentObj)($t0)
    /* DF6BC 8017EC7C 24010002 */  addiu      $at, $zero, 0x2
  .L8017EC80_ovl3:
    /* DF6C0 8017EC80 1461000A */  bne        $v1, $at, .L8017ECAC_ovl3
    /* DF6C4 8017EC84 24040006 */   addiu     $a0, $zero, 0x6
    /* DF6C8 8017EC88 0C02ED1A */  jal        func_800BB468
    /* DF6CC 8017EC8C 24050010 */   addiu     $a1, $zero, 0x10
    /* DF6D0 8017EC90 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* DF6D4 8017EC94 3C03801A */  lui        $v1, %hi(D_80198838_ovl3)
    /* DF6D8 8017EC98 3C09801A */  lui        $t1, %hi(D_80198830_ovl3)
    /* DF6DC 8017EC9C 25298830 */  addiu      $t1, $t1, %lo(D_80198830_ovl3)
    /* DF6E0 8017ECA0 84638838 */  lh         $v1, %lo(D_80198838_ovl3)($v1)
    /* DF6E4 8017ECA4 1000000C */  b          .L8017ECD8_ovl3
    /* DF6E8 8017ECA8 8D08A7C4 */   lw        $t0, %lo(omCurrentObj)($t0)
  .L8017ECAC_ovl3:
    /* DF6EC 8017ECAC 24010001 */  addiu      $at, $zero, 0x1
    /* DF6F0 8017ECB0 14610009 */  bne        $v1, $at, .L8017ECD8_ovl3
    /* DF6F4 8017ECB4 00002025 */   or        $a0, $zero, $zero
    /* DF6F8 8017ECB8 0C02ED1A */  jal        func_800BB468
    /* DF6FC 8017ECBC 00002825 */   or        $a1, $zero, $zero
    /* DF700 8017ECC0 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* DF704 8017ECC4 3C03801A */  lui        $v1, %hi(D_80198838_ovl3)
    /* DF708 8017ECC8 3C09801A */  lui        $t1, %hi(D_80198830_ovl3)
    /* DF70C 8017ECCC 25298830 */  addiu      $t1, $t1, %lo(D_80198830_ovl3)
    /* DF710 8017ECD0 84638838 */  lh         $v1, %lo(D_80198838_ovl3)($v1)
    /* DF714 8017ECD4 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
  .L8017ECD8_ovl3:
    /* DF718 8017ECD8 8D0C0000 */  lw         $t4, 0x0($t0)
    /* DF71C 8017ECDC 3C01800F */  lui        $at, %hi(D_800E9720)
    /* DF720 8017ECE0 240B000A */  addiu      $t3, $zero, 0xA
    /* DF724 8017ECE4 000CC880 */  sll        $t9, $t4, 2
    /* DF728 8017ECE8 00390821 */  addu       $at, $at, $t9
    /* DF72C 8017ECEC AC2B9720 */  sw         $t3, %lo(D_800E9720)($at)
    /* DF730 8017ECF0 246EFFFF */  addiu      $t6, $v1, -0x1
    /* DF734 8017ECF4 A52E0008 */  sh         $t6, 0x8($t1)
    /* DF738 8017ECF8 852F0008 */  lh         $t7, 0x8($t1)
    /* DF73C 8017ECFC 240D000F */  addiu      $t5, $zero, 0xF
    /* DF740 8017ED00 A52D000A */  sh         $t5, 0xA($t1)
    /* DF744 8017ED04 11E00007 */  beqz       $t7, .L8017ED24_ovl3
    /* DF748 8017ED08 24180014 */   addiu     $t8, $zero, 0x14
    /* DF74C 8017ED0C 3C040002 */  lui        $a0, (0x201C5 >> 16)
    /* DF750 8017ED10 348401C5 */  ori        $a0, $a0, (0x201C5 & 0xFFFF)
    /* DF754 8017ED14 0C02AA19 */  jal        func_800AA864
    /* DF758 8017ED18 24050002 */   addiu     $a1, $zero, 0x2
    /* DF75C 8017ED1C 10000025 */  b          .L8017EDB4_ovl3
    /* DF760 8017ED20 00000000 */   nop
  .L8017ED24_ovl3:
    /* DF764 8017ED24 A538000A */  sh         $t8, 0xA($t1)
    /* DF768 8017ED28 8D0C0000 */  lw         $t4, 0x0($t0)
    /* DF76C 8017ED2C 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* DF770 8017ED30 24040001 */  addiu      $a0, $zero, 0x1
    /* DF774 8017ED34 000C5880 */  sll        $t3, $t4, 2
    /* DF778 8017ED38 032BC821 */  addu       $t9, $t9, $t3
    /* DF77C 8017ED3C 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* DF780 8017ED40 24050001 */  addiu      $a1, $zero, 0x1
    /* DF784 8017ED44 24060022 */  addiu      $a2, $zero, 0x22
    /* DF788 8017ED48 0C02A040 */  jal        func_800A8100
    /* DF78C 8017ED4C 8F270008 */   lw        $a3, 0x8($t9)
    /* DF790 8017ED50 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* DF794 8017ED54 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* DF798 8017ED58 3C018013 */  lui        $at, %hi(D_8012E80C)
    /* DF79C 8017ED5C AC22E80C */  sw         $v0, %lo(D_8012E80C)($at)
    /* DF7A0 8017ED60 8DAE0000 */  lw         $t6, 0x0($t5)
    /* DF7A4 8017ED64 3C18800F */  lui        $t8, %hi(D_800E8AE0)
    /* DF7A8 8017ED68 3C040002 */  lui        $a0, (0x201C5 >> 16)
    /* DF7AC 8017ED6C 000E7880 */  sll        $t7, $t6, 2
    /* DF7B0 8017ED70 030FC021 */  addu       $t8, $t8, $t7
    /* DF7B4 8017ED74 8F188AE0 */  lw         $t8, %lo(D_800E8AE0)($t8)
    /* DF7B8 8017ED78 24050004 */  addiu      $a1, $zero, 0x4
    /* DF7BC 8017ED7C 348401C5 */  ori        $a0, $a0, (0x201C5 & 0xFFFF)
    /* DF7C0 8017ED80 330C0006 */  andi       $t4, $t8, 0x6
    /* DF7C4 8017ED84 11800006 */  beqz       $t4, .L8017EDA0_ovl3
    /* DF7C8 8017ED88 00000000 */   nop
    /* DF7CC 8017ED8C 3C040002 */  lui        $a0, (0x201C5 >> 16)
    /* DF7D0 8017ED90 0C02AA19 */  jal        func_800AA864
    /* DF7D4 8017ED94 348401C5 */   ori       $a0, $a0, (0x201C5 & 0xFFFF)
    /* DF7D8 8017ED98 10000004 */  b          .L8017EDAC_ovl3
    /* DF7DC 8017ED9C 240B0003 */   addiu     $t3, $zero, 0x3
  .L8017EDA0_ovl3:
    /* DF7E0 8017EDA0 0C02AA19 */  jal        func_800AA864
    /* DF7E4 8017EDA4 24050008 */   addiu     $a1, $zero, 0x8
    /* DF7E8 8017EDA8 240B0003 */  addiu      $t3, $zero, 0x3
  .L8017EDAC_ovl3:
    /* DF7EC 8017EDAC 3C01801A */  lui        $at, %hi(D_80198838_ovl3)
    /* DF7F0 8017EDB0 A42B8838 */  sh         $t3, %lo(D_80198838_ovl3)($at)
  .L8017EDB4_ovl3:
    /* DF7F4 8017EDB4 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* DF7F8 8017EDB8 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* DF7FC 8017EDBC 8C590030 */  lw         $t9, 0x30($v0)
    /* DF800 8017EDC0 272D0001 */  addiu      $t5, $t9, 0x1
    /* DF804 8017EDC4 0C02BE85 */  jal        curObjSleepForever
    /* DF808 8017EDC8 AC4D0030 */   sw        $t5, 0x30($v0)
    /* DF80C 8017EDCC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DF810 8017EDD0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DF814 8017EDD4 03E00008 */  jr         $ra
    /* DF818 8017EDD8 00000000 */   nop
endlabel func_8017EA0C_ovl3
.size func_8017EA0C_ovl3, . - func_8017EA0C_ovl3
