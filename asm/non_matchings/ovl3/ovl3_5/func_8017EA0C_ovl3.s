glabel func_8017EA0C_ovl3
/* 0DF44C 8017EA0C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0DF450 8017EA10 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0DF454 8017EA14 8C6E00A0 */  lw    $t6, 0xa0($v1)
/* 0DF458 8017EA18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0DF45C 8017EA1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0DF460 8017EA20 15C00020 */  bnez  $t6, .L8017EAA4_ovl3
/* 0DF464 8017EA24 AFA40018 */   sw    $a0, 0x18($sp)
/* 0DF468 8017EA28 AC600030 */  sw    $zero, 0x30($v1)
/* 0DF46C 8017EA2C AC60004C */  sw    $zero, 0x4c($v1)
/* 0DF470 8017EA30 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0DF474 8017EA34 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0DF478 8017EA38 3C01800E */  lui   $at, 0x800e
/* 0DF47C 8017EA3C 8DE20000 */  lw    $v0, ($t7)
/* 0DF480 8017EA40 00021080 */  sll   $v0, $v0, 2
/* 0DF484 8017EA44 00220821 */  addu  $at, $at, $v0
/* 0DF488 8017EA48 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0DF48C 8017EA4C 3C01800F */  lui   $at, 0x800f
/* 0DF490 8017EA50 00220821 */  addu  $at, $at, $v0
/* 0DF494 8017EA54 0C0473D6 */  jal   func_8011CF58_ovl3
/* 0DF498 8017EA58 E424A6E0 */   swc1  $f4, -0x5920($at)
/* 0DF49C 8017EA5C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0DF4A0 8017EA60 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0DF4A4 8017EA64 8C580090 */  lw    $t8, 0x90($v0)
/* 0DF4A8 8017EA68 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0DF4AC 8017EA6C 3C01800E */  lui   $at, 0x800e
/* 0DF4B0 8017EA70 AC5800A0 */  sw    $t8, 0xa0($v0)
/* 0DF4B4 8017EA74 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0DF4B8 8017EA78 2419002C */  li    $t9, 44
/* 0DF4BC 8017EA7C 3C040002 */  lui   $a0, (0x00020016 >> 16) # lui $a0, 2
/* 0DF4C0 8017EA80 8D6C0000 */  lw    $t4, ($t3)
/* 0DF4C4 8017EA84 34840016 */  ori   $a0, (0x00020016 & 0xFFFF) # ori $a0, $a0, 0x16
/* 0DF4C8 8017EA88 000C6880 */  sll   $t5, $t4, 2
/* 0DF4CC 8017EA8C 002D0821 */  addu  $at, $at, $t5
/* 0DF4D0 8017EA90 0C048BC2 */  jal   func_80122F08_ovl3
/* 0DF4D4 8017EA94 AC39DFD0 */   sw    $t9, -0x2030($at)
/* 0DF4D8 8017EA98 240E0002 */  li    $t6, 2
/* 0DF4DC 8017EA9C 3C018013 */  lui   $at, %hi(D_8012E914) # $at, 0x8013
/* 0DF4E0 8017EAA0 AC2EE914 */  sw    $t6, %lo(D_8012E914)($at)
.L8017EAA4_ovl3:
/* 0DF4E4 8017EAA4 0C05A4F1 */  jal   func_801693C4_ovl3
/* 0DF4E8 8017EAA8 24040008 */   li    $a0, 8
/* 0DF4EC 8017EAAC 3C09801A */  lui   $t1, %hi(D_80198830) # $t1, 0x801a
/* 0DF4F0 8017EAB0 25298830 */  addiu $t1, %lo(D_80198830) # addiu $t1, $t1, -0x77d0
/* 0DF4F4 8017EAB4 85230008 */  lh    $v1, 8($t1)
/* 0DF4F8 8017EAB8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0DF4FC 8017EABC 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0DF500 8017EAC0 00027880 */  sll   $t7, $v0, 2
/* 0DF504 8017EAC4 3C01800F */  lui   $at, 0x800f
/* 0DF508 8017EAC8 002F0821 */  addu  $at, $at, $t7
/* 0DF50C 8017EACC AC23C2E0 */  sw    $v1, -0x3d20($at)
/* 0DF510 8017EAD0 8D180000 */  lw    $t8, ($t0)
/* 0DF514 8017EAD4 3C01800F */  lui   $at, 0x800f
/* 0DF518 8017EAD8 3C0A800F */  lui   $t2, %hi(D_800E8AE0) # $t2, 0x800f
/* 0DF51C 8017EADC 00185880 */  sll   $t3, $t8, 2
/* 0DF520 8017EAE0 002B0821 */  addu  $at, $at, $t3
/* 0DF524 8017EAE4 AC208920 */  sw    $zero, -0x76e0($at)
/* 0DF528 8017EAE8 8D0C0000 */  lw    $t4, ($t0)
/* 0DF52C 8017EAEC 254A8AE0 */  addiu $t2, %lo(D_800E8AE0) # addiu $t2, $t2, -0x7520
/* 0DF530 8017EAF0 3C05800D */  lui   $a1, %hi(D_800D7238) # $a1, 0x800d
/* 0DF534 8017EAF4 000CC880 */  sll   $t9, $t4, 2
/* 0DF538 8017EAF8 01596821 */  addu  $t5, $t2, $t9
/* 0DF53C 8017EAFC 8DAE0000 */  lw    $t6, ($t5)
/* 0DF540 8017EB00 3C018019 */  lui   $at, 0x8019
/* 0DF544 8017EB04 00036880 */  sll   $t5, $v1, 2
/* 0DF548 8017EB08 31CF0006 */  andi  $t7, $t6, 6
/* 0DF54C 8017EB0C 11E00006 */  beqz  $t7, .L8017EB28_ovl3
/* 0DF550 8017EB10 0003C880 */   sll   $t9, $v1, 2
/* 0DF554 8017EB14 3C018019 */  lui   $at, %hi(D_801976BC) # $at, 0x8019
/* 0DF558 8017EB18 C42676B8 */  lwc1  $f6, %lo(D_801976B8)($at)
/* 0DF55C 8017EB1C 24A57238 */  addiu $a1, %lo(D_800D7238) # addiu $a1, $a1, 0x7238
/* 0DF560 8017EB20 10000005 */  b     .L8017EB38_ovl3
/* 0DF564 8017EB24 E4A60000 */   swc1  $f6, ($a1)
.L8017EB28_ovl3:
/* 0DF568 8017EB28 C42876BC */  lwc1  $f8, %lo(D_801976BC)($at)
/* 0DF56C 8017EB2C 3C05800D */  lui   $a1, %hi(D_800D7238) # $a1, 0x800d
/* 0DF570 8017EB30 24A57238 */  addiu $a1, %lo(D_800D7238) # addiu $a1, $a1, 0x7238
/* 0DF574 8017EB34 E4A80000 */  swc1  $f8, ($a1)
.L8017EB38_ovl3:
/* 0DF578 8017EB38 8D020000 */  lw    $v0, ($t0)
/* 0DF57C 8017EB3C 44804000 */  mtc1  $zero, $f8
/* 0DF580 8017EB40 3C018019 */  lui   $at, 0x8019
/* 0DF584 8017EB44 00021080 */  sll   $v0, $v0, 2
/* 0DF588 8017EB48 0142C021 */  addu  $t8, $t2, $v0
/* 0DF58C 8017EB4C 8F0B0000 */  lw    $t3, ($t8)
/* 0DF590 8017EB50 002D0821 */  addu  $at, $at, $t5
/* 0DF594 8017EB54 316C0006 */  andi  $t4, $t3, 6
/* 0DF598 8017EB58 15800008 */  bnez  $t4, .L8017EB7C_ovl3
/* 0DF59C 8017EB5C 00000000 */   nop   
/* 0DF5A0 8017EB60 3C018019 */  lui   $at, 0x8019
/* 0DF5A4 8017EB64 00390821 */  addu  $at, $at, $t9
/* 0DF5A8 8017EB68 C42A6D98 */  lwc1  $f10, 0x6d98($at)
/* 0DF5AC 8017EB6C 3C01800E */  lui   $at, 0x800e
/* 0DF5B0 8017EB70 00220821 */  addu  $at, $at, $v0
/* 0DF5B4 8017EB74 10000008 */  b     .L8017EB98_ovl3
/* 0DF5B8 8017EB78 E42A3210 */   swc1  $f10, 0x3210($at)
.L8017EB7C_ovl3:
/* 0DF5BC 8017EB7C C4306D98 */  lwc1  $f16, 0x6d98($at)
/* 0DF5C0 8017EB80 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0DF5C4 8017EB84 44819000 */  mtc1  $at, $f18
/* 0DF5C8 8017EB88 3C01800E */  lui   $at, 0x800e
/* 0DF5CC 8017EB8C 00220821 */  addu  $at, $at, $v0
/* 0DF5D0 8017EB90 46128102 */  mul.s $f4, $f16, $f18
/* 0DF5D4 8017EB94 E4243210 */  swc1  $f4, 0x3210($at)
.L8017EB98_ovl3:
/* 0DF5D8 8017EB98 8D0E0000 */  lw    $t6, ($t0)
/* 0DF5DC 8017EB9C C4A60000 */  lwc1  $f6, ($a1)
/* 0DF5E0 8017EBA0 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0DF5E4 8017EBA4 000E7880 */  sll   $t7, $t6, 2
/* 0DF5E8 8017EBA8 002F0821 */  addu  $at, $at, $t7
/* 0DF5EC 8017EBAC E4263750 */  swc1  $f6, 0x3750($at)
/* 0DF5F0 8017EBB0 8D020000 */  lw    $v0, ($t0)
/* 0DF5F4 8017EBB4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0DF5F8 8017EBB8 00021080 */  sll   $v0, $v0, 2
/* 0DF5FC 8017EBBC 0142C021 */  addu  $t8, $t2, $v0
/* 0DF600 8017EBC0 8F040000 */  lw    $a0, ($t8)
/* 0DF604 8017EBC4 30840006 */  andi  $a0, $a0, 6
/* 0DF608 8017EBC8 54800008 */  bnezl $a0, .L8017EBEC_ovl3
/* 0DF60C 8017EBCC 44816000 */   mtc1  $at, $f12
/* 0DF610 8017EBD0 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0DF614 8017EBD4 44811000 */  mtc1  $at, $f2
/* 0DF618 8017EBD8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0DF61C 8017EBDC 44816000 */  mtc1  $at, $f12
/* 0DF620 8017EBE0 10000005 */  b     .L8017EBF8_ovl3
/* 0DF624 8017EBE4 46001006 */   mov.s $f0, $f2
/* 0DF628 8017EBE8 44816000 */  mtc1  $at, $f12
.L8017EBEC_ovl3:
/* 0DF62C 8017EBEC 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0DF630 8017EBF0 44811000 */  mtc1  $at, $f2
/* 0DF634 8017EBF4 46006006 */  mov.s $f0, $f12
.L8017EBF8_ovl3:
/* 0DF638 8017EBF8 4608003C */  c.lt.s $f0, $f8
/* 0DF63C 8017EBFC 3C01800E */  lui   $at, 0x800e
/* 0DF640 8017EC00 00220821 */  addu  $at, $at, $v0
/* 0DF644 8017EC04 2405000A */  li    $a1, 10
/* 0DF648 8017EC08 4500000A */  bc1f  .L8017EC34_ovl3
/* 0DF64C 8017EC0C 00000000 */   nop   
/* 0DF650 8017EC10 14800003 */  bnez  $a0, .L8017EC20_ovl3
/* 0DF654 8017EC14 3C01800E */   lui   $at, 0x800e
/* 0DF658 8017EC18 10000002 */  b     .L8017EC24_ovl3
/* 0DF65C 8017EC1C 46001006 */   mov.s $f0, $f2
.L8017EC20_ovl3:
/* 0DF660 8017EC20 46006006 */  mov.s $f0, $f12
.L8017EC24_ovl3:
/* 0DF664 8017EC24 46000287 */  neg.s $f10, $f0
/* 0DF668 8017EC28 00220821 */  addu  $at, $at, $v0
/* 0DF66C 8017EC2C 10000007 */  b     .L8017EC4C_ovl3
/* 0DF670 8017EC30 E42A3C90 */   swc1  $f10, 0x3c90($at)
.L8017EC34_ovl3:
/* 0DF674 8017EC34 54800004 */  bnezl $a0, .L8017EC48_ovl3
/* 0DF678 8017EC38 46006006 */   mov.s $f0, $f12
/* 0DF67C 8017EC3C 10000002 */  b     .L8017EC48_ovl3
/* 0DF680 8017EC40 46001006 */   mov.s $f0, $f2
/* 0DF684 8017EC44 46006006 */  mov.s $f0, $f12
.L8017EC48_ovl3:
/* 0DF688 8017EC48 E4203C90 */  swc1  $f0, 0x3c90($at)
.L8017EC4C_ovl3:
/* 0DF68C 8017EC4C 24010003 */  li    $at, 3
/* 0DF690 8017EC50 5461000B */  bnel  $v1, $at, .L8017EC80_ovl3
/* 0DF694 8017EC54 24010002 */   li    $at, 2
/* 0DF698 8017EC58 0C02ED1A */  jal   func_800BB468_ovl3
/* 0DF69C 8017EC5C 2404000B */   li    $a0, 11
/* 0DF6A0 8017EC60 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0DF6A4 8017EC64 3C03801A */  lui   $v1, %hi(D_80198838) # $v1, 0x801a
/* 0DF6A8 8017EC68 3C09801A */  lui   $t1, %hi(D_80198830) # $t1, 0x801a
/* 0DF6AC 8017EC6C 25298830 */  addiu $t1, %lo(D_80198830) # addiu $t1, $t1, -0x77d0
/* 0DF6B0 8017EC70 84638838 */  lh    $v1, %lo(D_80198838)($v1)
/* 0DF6B4 8017EC74 10000018 */  b     .L8017ECD8_ovl3
/* 0DF6B8 8017EC78 8D08A7C4 */   lw    $t0, %lo(D_8004A7C4)($t0)
/* 0DF6BC 8017EC7C 24010002 */  li    $at, 2
.L8017EC80_ovl3:
/* 0DF6C0 8017EC80 1461000A */  bne   $v1, $at, .L8017ECAC_ovl3
/* 0DF6C4 8017EC84 24040006 */   li    $a0, 6
/* 0DF6C8 8017EC88 0C02ED1A */  jal   func_800BB468_ovl3
/* 0DF6CC 8017EC8C 24050010 */   li    $a1, 16
/* 0DF6D0 8017EC90 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0DF6D4 8017EC94 3C03801A */  lui   $v1, %hi(D_80198838) # $v1, 0x801a
/* 0DF6D8 8017EC98 3C09801A */  lui   $t1, %hi(D_80198830) # $t1, 0x801a
/* 0DF6DC 8017EC9C 25298830 */  addiu $t1, %lo(D_80198830) # addiu $t1, $t1, -0x77d0
/* 0DF6E0 8017ECA0 84638838 */  lh    $v1, %lo(D_80198838)($v1)
/* 0DF6E4 8017ECA4 1000000C */  b     .L8017ECD8_ovl3
/* 0DF6E8 8017ECA8 8D08A7C4 */   lw    $t0, %lo(D_8004A7C4)($t0)
.L8017ECAC_ovl3:
/* 0DF6EC 8017ECAC 24010001 */  li    $at, 1
/* 0DF6F0 8017ECB0 14610009 */  bne   $v1, $at, .L8017ECD8_ovl3
/* 0DF6F4 8017ECB4 00002025 */   move  $a0, $zero
/* 0DF6F8 8017ECB8 0C02ED1A */  jal   func_800BB468_ovl3
/* 0DF6FC 8017ECBC 00002825 */   move  $a1, $zero
/* 0DF700 8017ECC0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0DF704 8017ECC4 3C03801A */  lui   $v1, %hi(D_80198838) # $v1, 0x801a
/* 0DF708 8017ECC8 3C09801A */  lui   $t1, %hi(D_80198830) # $t1, 0x801a
/* 0DF70C 8017ECCC 25298830 */  addiu $t1, %lo(D_80198830) # addiu $t1, $t1, -0x77d0
/* 0DF710 8017ECD0 84638838 */  lh    $v1, %lo(D_80198838)($v1)
/* 0DF714 8017ECD4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
.L8017ECD8_ovl3:
/* 0DF718 8017ECD8 8D0C0000 */  lw    $t4, ($t0)
/* 0DF71C 8017ECDC 3C01800F */  lui   $at, 0x800f
/* 0DF720 8017ECE0 240B000A */  li    $t3, 10
/* 0DF724 8017ECE4 000CC880 */  sll   $t9, $t4, 2
/* 0DF728 8017ECE8 00390821 */  addu  $at, $at, $t9
/* 0DF72C 8017ECEC AC2B9720 */  sw    $t3, -0x68e0($at)
/* 0DF730 8017ECF0 246EFFFF */  addiu $t6, $v1, -1
/* 0DF734 8017ECF4 A52E0008 */  sh    $t6, 8($t1)
/* 0DF738 8017ECF8 852F0008 */  lh    $t7, 8($t1)
/* 0DF73C 8017ECFC 240D000F */  li    $t5, 15
/* 0DF740 8017ED00 A52D000A */  sh    $t5, 0xa($t1)
/* 0DF744 8017ED04 11E00007 */  beqz  $t7, .L8017ED24_ovl3
/* 0DF748 8017ED08 24180014 */   li    $t8, 20
/* 0DF74C 8017ED0C 3C040002 */  lui   $a0, (0x000201C5 >> 16) # lui $a0, 2
/* 0DF750 8017ED10 348401C5 */  ori   $a0, (0x000201C5 & 0xFFFF) # ori $a0, $a0, 0x1c5
/* 0DF754 8017ED14 0C02AA19 */  jal   func_800AA864_ovl3
/* 0DF758 8017ED18 24050002 */   li    $a1, 2
/* 0DF75C 8017ED1C 10000025 */  b     .L8017EDB4_ovl3
/* 0DF760 8017ED20 00000000 */   nop   
.L8017ED24_ovl3:
/* 0DF764 8017ED24 A538000A */  sh    $t8, 0xa($t1)
/* 0DF768 8017ED28 8D0C0000 */  lw    $t4, ($t0)
/* 0DF76C 8017ED2C 3C19800E */  lui   $t9, 0x800e
/* 0DF770 8017ED30 24040001 */  li    $a0, 1
/* 0DF774 8017ED34 000C5880 */  sll   $t3, $t4, 2
/* 0DF778 8017ED38 032BC821 */  addu  $t9, $t9, $t3
/* 0DF77C 8017ED3C 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 0DF780 8017ED40 24050001 */  li    $a1, 1
/* 0DF784 8017ED44 24060022 */  li    $a2, 34
/* 0DF788 8017ED48 0C02A040 */  jal   func_800A8100_ovl3
/* 0DF78C 8017ED4C 8F270008 */   lw    $a3, 8($t9)
/* 0DF790 8017ED50 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0DF794 8017ED54 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0DF798 8017ED58 3C018013 */  lui   $at, %hi(D_8012E80C) # $at, 0x8013
/* 0DF79C 8017ED5C AC22E80C */  sw    $v0, %lo(D_8012E80C)($at)
/* 0DF7A0 8017ED60 8DAE0000 */  lw    $t6, ($t5)
/* 0DF7A4 8017ED64 3C18800F */  lui   $t8, 0x800f
/* 0DF7A8 8017ED68 3C040002 */  lui   $a0, (0x000201C5 >> 16) # lui $a0, 2
/* 0DF7AC 8017ED6C 000E7880 */  sll   $t7, $t6, 2
/* 0DF7B0 8017ED70 030FC021 */  addu  $t8, $t8, $t7
/* 0DF7B4 8017ED74 8F188AE0 */  lw    $t8, -0x7520($t8)
/* 0DF7B8 8017ED78 24050004 */  li    $a1, 4
/* 0DF7BC 8017ED7C 348401C5 */  ori   $a0, (0x000201C5 & 0xFFFF) # ori $a0, $a0, 0x1c5
/* 0DF7C0 8017ED80 330C0006 */  andi  $t4, $t8, 6
/* 0DF7C4 8017ED84 11800006 */  beqz  $t4, .L8017EDA0_ovl3
/* 0DF7C8 8017ED88 00000000 */   nop   
/* 0DF7CC 8017ED8C 3C040002 */  lui   $a0, (0x000201C5 >> 16) # lui $a0, 2
/* 0DF7D0 8017ED90 0C02AA19 */  jal   func_800AA864_ovl3
/* 0DF7D4 8017ED94 348401C5 */   ori   $a0, (0x000201C5 & 0xFFFF) # ori $a0, $a0, 0x1c5
/* 0DF7D8 8017ED98 10000004 */  b     .L8017EDAC_ovl3
/* 0DF7DC 8017ED9C 240B0003 */   li    $t3, 3
.L8017EDA0_ovl3:
/* 0DF7E0 8017EDA0 0C02AA19 */  jal   func_800AA864_ovl3
/* 0DF7E4 8017EDA4 24050008 */   li    $a1, 8
/* 0DF7E8 8017EDA8 240B0003 */  li    $t3, 3
.L8017EDAC_ovl3:
/* 0DF7EC 8017EDAC 3C01801A */  lui   $at, %hi(D_80198838) # $at, 0x801a
/* 0DF7F0 8017EDB0 A42B8838 */  sh    $t3, %lo(D_80198838)($at)
.L8017EDB4_ovl3:
/* 0DF7F4 8017EDB4 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0DF7F8 8017EDB8 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0DF7FC 8017EDBC 8C590030 */  lw    $t9, 0x30($v0)
/* 0DF800 8017EDC0 272D0001 */  addiu $t5, $t9, 1
/* 0DF804 8017EDC4 0C02BE85 */  jal   func_800AFA14_ovl3
/* 0DF808 8017EDC8 AC4D0030 */   sw    $t5, 0x30($v0)
/* 0DF80C 8017EDCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0DF810 8017EDD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0DF814 8017EDD4 03E00008 */  jr    $ra
/* 0DF818 8017EDD8 00000000 */   nop   
