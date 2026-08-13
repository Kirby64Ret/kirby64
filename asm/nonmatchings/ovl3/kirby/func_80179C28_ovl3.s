nonmatching func_80179C28_ovl3, 0x698

glabel func_80179C28_ovl3
    /* DA668 80179C28 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* DA66C 80179C2C AFB60044 */  sw         $s6, 0x44($sp)
    /* DA670 80179C30 3C168013 */  lui        $s6, %hi(gKirbyState)
    /* DA674 80179C34 26D6E7C0 */  addiu      $s6, $s6, %lo(gKirbyState)
    /* DA678 80179C38 8ECE00A0 */  lw         $t6, 0xA0($s6)
    /* DA67C 80179C3C AFB50040 */  sw         $s5, 0x40($sp)
    /* DA680 80179C40 0080A825 */  or         $s5, $a0, $zero
    /* DA684 80179C44 AFBF004C */  sw         $ra, 0x4C($sp)
    /* DA688 80179C48 AFB70048 */  sw         $s7, 0x48($sp)
    /* DA68C 80179C4C AFB4003C */  sw         $s4, 0x3C($sp)
    /* DA690 80179C50 AFB30038 */  sw         $s3, 0x38($sp)
    /* DA694 80179C54 AFB20034 */  sw         $s2, 0x34($sp)
    /* DA698 80179C58 AFB10030 */  sw         $s1, 0x30($sp)
    /* DA69C 80179C5C AFB0002C */  sw         $s0, 0x2C($sp)
    /* DA6A0 80179C60 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* DA6A4 80179C64 15C00097 */  bnez       $t6, .L80179EC4_ovl3
    /* DA6A8 80179C68 F7B40018 */   sdc1      $f20, 0x18($sp)
    /* DA6AC 80179C6C 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* DA6B0 80179C70 4480A000 */  mtc1       $zero, $f20
    /* DA6B4 80179C74 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* DA6B8 80179C78 8E4F0000 */  lw         $t7, 0x0($s2)
    /* DA6BC 80179C7C A2C00007 */  sb         $zero, 0x7($s6)
    /* DA6C0 80179C80 A2C0000A */  sb         $zero, 0xA($s6)
    /* DA6C4 80179C84 E6D40040 */  swc1       $f20, 0x40($s6)
    /* DA6C8 80179C88 8DF80000 */  lw         $t8, 0x0($t7)
    /* DA6CC 80179C8C 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* DA6D0 80179C90 240A0020 */  addiu      $t2, $zero, 0x20
    /* DA6D4 80179C94 0018C880 */  sll        $t9, $t8, 2
    /* DA6D8 80179C98 01194021 */  addu       $t0, $t0, $t9
    /* DA6DC 80179C9C 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
    /* DA6E0 80179CA0 240B0010 */  addiu      $t3, $zero, 0x10
    /* DA6E4 80179CA4 31090006 */  andi       $t1, $t0, 0x6
    /* DA6E8 80179CA8 51200004 */  beql       $t1, $zero, .L80179CBC_ovl3
    /* DA6EC 80179CAC A2CB0016 */   sb        $t3, 0x16($s6)
    /* DA6F0 80179CB0 10000002 */  b          .L80179CBC_ovl3
    /* DA6F4 80179CB4 A2CA0016 */   sb        $t2, 0x16($s6)
    /* DA6F8 80179CB8 A2CB0016 */  sb         $t3, 0x16($s6)
  .L80179CBC_ovl3:
    /* DA6FC 80179CBC 0C0473D6 */  jal        func_8011CF58
    /* DA700 80179CC0 00000000 */   nop
    /* DA704 80179CC4 8ECC0090 */  lw         $t4, 0x90($s6)
    /* DA708 80179CC8 8E430000 */  lw         $v1, 0x0($s2)
    /* DA70C 80179CCC 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* DA710 80179CD0 AECC00A0 */  sw         $t4, 0xA0($s6)
    /* DA714 80179CD4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* DA718 80179CD8 240D0022 */  addiu      $t5, $zero, 0x22
    /* DA71C 80179CDC 2418FFFF */  addiu      $t8, $zero, -0x1
    /* DA720 80179CE0 000E7880 */  sll        $t7, $t6, 2
    /* DA724 80179CE4 002F0821 */  addu       $at, $at, $t7
    /* DA728 80179CE8 AC2DDFD0 */  sw         $t5, %lo(D_800DDFD0)($at)
    /* DA72C 80179CEC AED8003C */  sw         $t8, 0x3C($s6)
    /* DA730 80179CF0 AED80044 */  sw         $t8, 0x44($s6)
    /* DA734 80179CF4 8C620000 */  lw         $v0, 0x0($v1)
    /* DA738 80179CF8 3C11800F */  lui        $s1, %hi(D_800E8920)
    /* DA73C 80179CFC 26318920 */  addiu      $s1, $s1, %lo(D_800E8920)
    /* DA740 80179D00 00021080 */  sll        $v0, $v0, 2
    /* DA744 80179D04 02224021 */  addu       $t0, $s1, $v0
    /* DA748 80179D08 8D090000 */  lw         $t1, 0x0($t0)
    /* DA74C 80179D0C 3C0A800D */  lui        $t2, %hi(gKirbyController)
    /* DA750 80179D10 15200053 */  bnez       $t1, .L80179E60_ovl3
    /* DA754 80179D14 00000000 */   nop
    /* DA758 80179D18 954A6FE8 */  lhu        $t2, %lo(gKirbyController)($t2)
    /* DA75C 80179D1C 24014400 */  addiu      $at, $zero, 0x4400
    /* DA760 80179D20 3C04800E */  lui        $a0, %hi(D_800E6690)
    /* DA764 80179D24 314B4400 */  andi       $t3, $t2, 0x4400
    /* DA768 80179D28 1561003A */  bne        $t3, $at, .L80179E14_ovl3
    /* DA76C 80179D2C 24846690 */   addiu     $a0, $a0, %lo(D_800E6690)
    /* DA770 80179D30 44801000 */  mtc1       $zero, $f2
    /* DA774 80179D34 3C018019 */  lui        $at, %hi(D_8019758C_ovl3)
    /* DA778 80179D38 C42C758C */  lwc1       $f12, %lo(D_8019758C_ovl3)($at)
    /* DA77C 80179D3C 00826021 */  addu       $t4, $a0, $v0
    /* DA780 80179D40 E5820000 */  swc1       $f2, 0x0($t4)
    /* DA784 80179D44 8C620000 */  lw         $v0, 0x0($v1)
    /* DA788 80179D48 3C17800E */  lui        $s7, %hi(D_800E64D0)
    /* DA78C 80179D4C 26F764D0 */  addiu      $s7, $s7, %lo(D_800E64D0)
    /* DA790 80179D50 00021080 */  sll        $v0, $v0, 2
    /* DA794 80179D54 00827021 */  addu       $t6, $a0, $v0
    /* DA798 80179D58 C5C40000 */  lwc1       $f4, 0x0($t6)
    /* DA79C 80179D5C 02E26821 */  addu       $t5, $s7, $v0
    /* DA7A0 80179D60 3C10800E */  lui        $s0, %hi(D_800E6850)
    /* DA7A4 80179D64 E5A40000 */  swc1       $f4, 0x0($t5)
    /* DA7A8 80179D68 8C6F0000 */  lw         $t7, 0x0($v1)
    /* DA7AC 80179D6C 26106850 */  addiu      $s0, $s0, %lo(D_800E6850)
    /* DA7B0 80179D70 3C05800E */  lui        $a1, %hi(D_800E3910)
    /* DA7B4 80179D74 000FC080 */  sll        $t8, $t7, 2
    /* DA7B8 80179D78 0218C821 */  addu       $t9, $s0, $t8
    /* DA7BC 80179D7C E72C0000 */  swc1       $f12, 0x0($t9)
    /* DA7C0 80179D80 8C680000 */  lw         $t0, 0x0($v1)
    /* DA7C4 80179D84 24A53910 */  addiu      $a1, $a1, %lo(D_800E3910)
    /* DA7C8 80179D88 3C01800E */  lui        $at, %hi(D_800E3590)
    /* DA7CC 80179D8C 00084880 */  sll        $t1, $t0, 2
    /* DA7D0 80179D90 00A95021 */  addu       $t2, $a1, $t1
    /* DA7D4 80179D94 E5420000 */  swc1       $f2, 0x0($t2)
    /* DA7D8 80179D98 8C620000 */  lw         $v0, 0x0($v1)
    /* DA7DC 80179D9C 3C06800E */  lui        $a2, %hi(D_800E3E50)
    /* DA7E0 80179DA0 24C63E50 */  addiu      $a2, $a2, %lo(D_800E3E50)
    /* DA7E4 80179DA4 00021080 */  sll        $v0, $v0, 2
    /* DA7E8 80179DA8 00A25821 */  addu       $t3, $a1, $v0
    /* DA7EC 80179DAC C5600000 */  lwc1       $f0, 0x0($t3)
    /* DA7F0 80179DB0 00220821 */  addu       $at, $at, $v0
    /* DA7F4 80179DB4 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
    /* DA7F8 80179DB8 8C6C0000 */  lw         $t4, 0x0($v1)
    /* DA7FC 80179DBC 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* DA800 80179DC0 000C7080 */  sll        $t6, $t4, 2
    /* DA804 80179DC4 002E0821 */  addu       $at, $at, $t6
    /* DA808 80179DC8 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* DA80C 80179DCC 8C6D0000 */  lw         $t5, 0x0($v1)
    /* DA810 80179DD0 3C01800E */  lui        $at, %hi(D_800E3050)
    /* DA814 80179DD4 000D7880 */  sll        $t7, $t5, 2
    /* DA818 80179DD8 002F0821 */  addu       $at, $at, $t7
    /* DA81C 80179DDC E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* DA820 80179DE0 8C780000 */  lw         $t8, 0x0($v1)
    /* DA824 80179DE4 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* DA828 80179DE8 0018C880 */  sll        $t9, $t8, 2
    /* DA82C 80179DEC 00D94021 */  addu       $t0, $a2, $t9
    /* DA830 80179DF0 E50C0000 */  swc1       $f12, 0x0($t0)
    /* DA834 80179DF4 8C620000 */  lw         $v0, 0x0($v1)
    /* DA838 80179DF8 00021080 */  sll        $v0, $v0, 2
    /* DA83C 80179DFC 00C24821 */  addu       $t1, $a2, $v0
    /* DA840 80179E00 C5260000 */  lwc1       $f6, 0x0($t1)
    /* DA844 80179E04 00220821 */  addu       $at, $at, $v0
    /* DA848 80179E08 E4263AD0 */  swc1       $f6, %lo(D_800E3AD0)($at)
    /* DA84C 80179E0C 8C620000 */  lw         $v0, 0x0($v1)
    /* DA850 80179E10 00021080 */  sll        $v0, $v0, 2
  .L80179E14_ovl3:
    /* DA854 80179E14 3C01800E */  lui        $at, %hi(D_800E3210)
    /* DA858 80179E18 00220821 */  addu       $at, $at, $v0
    /* DA85C 80179E1C E4343210 */  swc1       $f20, %lo(D_800E3210)($at)
    /* DA860 80179E20 8C6A0000 */  lw         $t2, 0x0($v1)
    /* DA864 80179E24 3C018019 */  lui        $at, %hi(D_80197590_ovl3)
    /* DA868 80179E28 C4287590 */  lwc1       $f8, %lo(D_80197590_ovl3)($at)
    /* DA86C 80179E2C 3C01800E */  lui        $at, %hi(D_800E3750)
    /* DA870 80179E30 000A5880 */  sll        $t3, $t2, 2
    /* DA874 80179E34 002B0821 */  addu       $at, $at, $t3
    /* DA878 80179E38 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
    /* DA87C 80179E3C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* DA880 80179E40 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* DA884 80179E44 44815000 */  mtc1       $at, $f10
    /* DA888 80179E48 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* DA88C 80179E4C 000C7080 */  sll        $t6, $t4, 2
    /* DA890 80179E50 002E0821 */  addu       $at, $at, $t6
    /* DA894 80179E54 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
    /* DA898 80179E58 8C620000 */  lw         $v0, 0x0($v1)
    /* DA89C 80179E5C 00021080 */  sll        $v0, $v0, 2
  .L80179E60_ovl3:
    /* DA8A0 80179E60 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DA8A4 80179E64 00220821 */  addu       $at, $at, $v0
    /* DA8A8 80179E68 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* DA8AC 80179E6C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* DA8B0 80179E70 00220821 */  addu       $at, $at, $v0
    /* DA8B4 80179E74 4600848D */  trunc.w.s  $f18, $f16
    /* DA8B8 80179E78 2404011C */  addiu      $a0, $zero, 0x11C
    /* DA8BC 80179E7C 440F9000 */  mfc1       $t7, $f18
    /* DA8C0 80179E80 0C029D9E */  jal        play_sound
    /* DA8C4 80179E84 AC2F98E0 */   sw        $t7, %lo(D_800E98E0)($at)
    /* DA8C8 80179E88 3C040002 */  lui        $a0, (0x20007 >> 16)
    /* DA8CC 80179E8C 0C048BC2 */  jal        func_80122F08
    /* DA8D0 80179E90 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* DA8D4 80179E94 3C188019 */  lui        $t8, %hi(D_80190518_ovl3)
    /* DA8D8 80179E98 27180518 */  addiu      $t8, $t8, %lo(D_80190518_ovl3)
    /* DA8DC 80179E9C 3C040002 */  lui        $a0, (0x2018C >> 16)
    /* DA8E0 80179EA0 3C050002 */  lui        $a1, (0x2018D >> 16)
    /* DA8E4 80179EA4 AED8015C */  sw         $t8, 0x15C($s6)
    /* DA8E8 80179EA8 34A5018D */  ori        $a1, $a1, (0x2018D & 0xFFFF)
    /* DA8EC 80179EAC 3484018C */  ori        $a0, $a0, (0x2018C & 0xFFFF)
    /* DA8F0 80179EB0 0C048C3A */  jal        func_801230E8
    /* DA8F4 80179EB4 24060001 */   addiu     $a2, $zero, 0x1
    /* DA8F8 80179EB8 24130001 */  addiu      $s3, $zero, 0x1
    /* DA8FC 80179EBC AED30044 */  sw         $s3, 0x44($s6)
    /* DA900 80179EC0 AED3003C */  sw         $s3, 0x3C($s6)
  .L80179EC4_ovl3:
    /* DA904 80179EC4 8EC20044 */  lw         $v0, 0x44($s6)
    /* DA908 80179EC8 3C10800E */  lui        $s0, %hi(D_800E6850)
    /* DA90C 80179ECC 3C11800F */  lui        $s1, %hi(D_800E8920)
    /* DA910 80179ED0 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* DA914 80179ED4 3C17800E */  lui        $s7, %hi(D_800E64D0)
    /* DA918 80179ED8 4480A000 */  mtc1       $zero, $f20
    /* DA91C 80179EDC 26F764D0 */  addiu      $s7, $s7, %lo(D_800E64D0)
    /* DA920 80179EE0 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* DA924 80179EE4 26318920 */  addiu      $s1, $s1, %lo(D_800E8920)
    /* DA928 80179EE8 26106850 */  addiu      $s0, $s0, %lo(D_800E6850)
    /* DA92C 80179EEC 1040002F */  beqz       $v0, .L80179FAC_ovl3
    /* DA930 80179EF0 24130001 */   addiu     $s3, $zero, 0x1
    /* DA934 80179EF4 10530007 */  beq        $v0, $s3, .L80179F14_ovl3
    /* DA938 80179EF8 24010002 */   addiu     $at, $zero, 0x2
    /* DA93C 80179EFC 1041002B */  beq        $v0, $at, .L80179FAC_ovl3
    /* DA940 80179F00 24010003 */   addiu     $at, $zero, 0x3
    /* DA944 80179F04 504100B6 */  beql       $v0, $at, .L8017A1E0_ovl3
    /* DA948 80179F08 8E4C0000 */   lw        $t4, 0x0($s2)
    /* DA94C 80179F0C 100000DD */  b          .L8017A284_ovl3
    /* DA950 80179F10 00000000 */   nop
  .L80179F14_ovl3:
    /* DA954 80179F14 8E480000 */  lw         $t0, 0x0($s2)
    /* DA958 80179F18 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* DA95C 80179F1C 3C040002 */  lui        $a0, (0x2000C >> 16)
    /* DA960 80179F20 8D090000 */  lw         $t1, 0x0($t0)
    /* DA964 80179F24 3484000C */  ori        $a0, $a0, (0x2000C & 0xFFFF)
    /* DA968 80179F28 00095080 */  sll        $t2, $t1, 2
    /* DA96C 80179F2C 002A0821 */  addu       $at, $at, $t2
    /* DA970 80179F30 0C048BC2 */  jal        func_80122F08
    /* DA974 80179F34 E434A6E0 */   swc1      $f20, %lo(D_800EA6E0)($at)
    /* DA978 80179F38 8E4B0000 */  lw         $t3, 0x0($s2)
    /* DA97C 80179F3C AED30154 */  sw         $s3, 0x154($s6)
    /* DA980 80179F40 E6D40040 */  swc1       $f20, 0x40($s6)
    /* DA984 80179F44 8D620000 */  lw         $v0, 0x0($t3)
    /* DA988 80179F48 00021080 */  sll        $v0, $v0, 2
    /* DA98C 80179F4C 02226021 */  addu       $t4, $s1, $v0
    /* DA990 80179F50 8D8E0000 */  lw         $t6, 0x0($t4)
    /* DA994 80179F54 02E26821 */  addu       $t5, $s7, $v0
    /* DA998 80179F58 11C000CA */  beqz       $t6, .L8017A284_ovl3
    /* DA99C 80179F5C 00000000 */   nop
    /* DA9A0 80179F60 4480A000 */  mtc1       $zero, $f20
    /* DA9A4 80179F64 C5A40000 */  lwc1       $f4, 0x0($t5)
    /* DA9A8 80179F68 3C05800E */  lui        $a1, %hi(D_800E17D0)
    /* DA9AC 80179F6C 00A22821 */  addu       $a1, $a1, $v0
    /* DA9B0 80179F70 4604A032 */  c.eq.s     $f20, $f4
    /* DA9B4 80179F74 00000000 */  nop
    /* DA9B8 80179F78 45000008 */  bc1f       .L80179F9C_ovl3
    /* DA9BC 80179F7C 00000000 */   nop
    /* DA9C0 80179F80 8EC40124 */  lw         $a0, 0x124($s6)
    /* DA9C4 80179F84 0C03E209 */  jal        func_800F8824
    /* DA9C8 80179F88 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
    /* DA9CC 80179F8C 46140032 */  c.eq.s     $f0, $f20
    /* DA9D0 80179F90 00000000 */  nop
    /* DA9D4 80179F94 450100BB */  bc1t       .L8017A284_ovl3
    /* DA9D8 80179F98 00000000 */   nop
  .L80179F9C_ovl3:
    /* DA9DC 80179F9C 0C029D9E */  jal        play_sound
    /* DA9E0 80179FA0 24040121 */   addiu     $a0, $zero, 0x121
    /* DA9E4 80179FA4 100000B7 */  b          .L8017A284_ovl3
    /* DA9E8 80179FA8 00000000 */   nop
  .L80179FAC_ovl3:
    /* DA9EC 80179FAC 8E430000 */  lw         $v1, 0x0($s2)
    /* DA9F0 80179FB0 3C13800F */  lui        $s3, %hi(D_800EA8A0)
    /* DA9F4 80179FB4 2673A8A0 */  addiu      $s3, $s3, %lo(D_800EA8A0)
    /* DA9F8 80179FB8 8C6F0000 */  lw         $t7, 0x0($v1)
    /* DA9FC 80179FBC 3C14800F */  lui        $s4, %hi(D_800E9720)
    /* DAA00 80179FC0 26949720 */  addiu      $s4, $s4, %lo(D_800E9720)
    /* DAA04 80179FC4 000FC080 */  sll        $t8, $t7, 2
    /* DAA08 80179FC8 0278C821 */  addu       $t9, $s3, $t8
    /* DAA0C 80179FCC E7340000 */  swc1       $f20, 0x0($t9)
    /* DAA10 80179FD0 8C680000 */  lw         $t0, 0x0($v1)
    /* DAA14 80179FD4 3C040002 */  lui        $a0, (0x2000B >> 16)
    /* DAA18 80179FD8 3484000B */  ori        $a0, $a0, (0x2000B & 0xFFFF)
    /* DAA1C 80179FDC 00084880 */  sll        $t1, $t0, 2
    /* DAA20 80179FE0 02895021 */  addu       $t2, $s4, $t1
    /* DAA24 80179FE4 0C048BC2 */  jal        func_80122F08
    /* DAA28 80179FE8 AD400000 */   sw        $zero, 0x0($t2)
    /* DAA2C 80179FEC 240B0002 */  addiu      $t3, $zero, 0x2
    /* DAA30 80179FF0 3C040002 */  lui        $a0, (0x2018F >> 16)
    /* DAA34 80179FF4 AECB0154 */  sw         $t3, 0x154($s6)
    /* DAA38 80179FF8 0C02A855 */  jal        func_800AA154
    /* DAA3C 80179FFC 3484018F */   ori       $a0, $a0, (0x2018F & 0xFFFF)
    /* DAA40 8017A000 3C0C8018 */  lui        $t4, %hi(func_8017A2C0_ovl3)
    /* DAA44 8017A004 258CA2C0 */  addiu      $t4, $t4, %lo(func_8017A2C0_ovl3)
    /* DAA48 8017A008 3C018019 */  lui        $at, %hi(D_80197594_ovl3)
    /* DAA4C 8017A00C 4480A000 */  mtc1       $zero, $f20
    /* DAA50 8017A010 C4367594 */  lwc1       $f22, %lo(D_80197594_ovl3)($at)
    /* DAA54 8017A014 AFAC0054 */  sw         $t4, 0x54($sp)
    /* DAA58 8017A018 3C040002 */  lui        $a0, (0x20191 >> 16)
  .L8017A01C_ovl3:
    /* DAA5C 8017A01C 0C02A806 */  jal        func_800AA018
    /* DAA60 8017A020 34840191 */   ori       $a0, $a0, (0x20191 & 0xFFFF)
    /* DAA64 8017A024 8E430000 */  lw         $v1, 0x0($s2)
    /* DAA68 8017A028 8FAE0054 */  lw         $t6, 0x54($sp)
    /* DAA6C 8017A02C 3C01800E */  lui        $at, %hi(D_800DF310)
    /* DAA70 8017A030 8C6D0000 */  lw         $t5, 0x0($v1)
    /* DAA74 8017A034 000D7880 */  sll        $t7, $t5, 2
    /* DAA78 8017A038 002F0821 */  addu       $at, $at, $t7
    /* DAA7C 8017A03C AC2EF310 */  sw         $t6, %lo(D_800DF310)($at)
  .L8017A040_ovl3:
    /* DAA80 8017A040 8C620000 */  lw         $v0, 0x0($v1)
    /* DAA84 8017A044 00021080 */  sll        $v0, $v0, 2
    /* DAA88 8017A048 02E2C021 */  addu       $t8, $s7, $v0
    /* DAA8C 8017A04C C7000000 */  lwc1       $f0, 0x0($t8)
    /* DAA90 8017A050 0202C821 */  addu       $t9, $s0, $v0
    /* DAA94 8017A054 02224021 */  addu       $t0, $s1, $v0
    /* DAA98 8017A058 4600A032 */  c.eq.s     $f20, $f0
    /* DAA9C 8017A05C 02625021 */  addu       $t2, $s3, $v0
    /* DAAA0 8017A060 45020007 */  bc1fl      .L8017A080_ovl3
    /* DAAA4 8017A064 8D090000 */   lw        $t1, 0x0($t0)
    /* DAAA8 8017A068 C7260000 */  lwc1       $f6, 0x0($t9)
    /* DAAAC 8017A06C 4606A032 */  c.eq.s     $f20, $f6
    /* DAAB0 8017A070 00000000 */  nop
    /* DAAB4 8017A074 45030012 */  bc1tl      .L8017A0C0_ovl3
    /* DAAB8 8017A078 240B001E */   addiu     $t3, $zero, 0x1E
    /* DAABC 8017A07C 8D090000 */  lw         $t1, 0x0($t0)
  .L8017A080_ovl3:
    /* DAAC0 8017A080 5120004D */  beql       $t1, $zero, .L8017A1B8_ovl3
    /* DAAC4 8017A084 3C040002 */   lui       $a0, (0x20190 >> 16)
    /* DAAC8 8017A088 C5480000 */  lwc1       $f8, 0x0($t2)
    /* DAACC 8017A08C 4608B03C */  c.lt.s     $f22, $f8
    /* DAAD0 8017A090 00000000 */  nop
    /* DAAD4 8017A094 45000005 */  bc1f       .L8017A0AC_ovl3
    /* DAAD8 8017A098 00000000 */   nop
    /* DAADC 8017A09C 4600A032 */  c.eq.s     $f20, $f0
    /* DAAE0 8017A0A0 00000000 */  nop
    /* DAAE4 8017A0A4 45030044 */  bc1tl      .L8017A1B8_ovl3
    /* DAAE8 8017A0A8 3C040002 */   lui       $a0, (0x20190 >> 16)
  .L8017A0AC_ovl3:
    /* DAAEC 8017A0AC 0C002DAF */  jal        ohSleep
    /* DAAF0 8017A0B0 24040001 */   addiu     $a0, $zero, 0x1
    /* DAAF4 8017A0B4 1000FFE2 */  b          .L8017A040_ovl3
    /* DAAF8 8017A0B8 8E430000 */   lw        $v1, 0x0($s2)
    /* DAAFC 8017A0BC 240B001E */  addiu      $t3, $zero, 0x1E
  .L8017A0C0_ovl3:
    /* DAB00 8017A0C0 02826021 */  addu       $t4, $s4, $v0
    /* DAB04 8017A0C4 3C040002 */  lui        $a0, (0x2018E >> 16)
    /* DAB08 8017A0C8 3C050002 */  lui        $a1, (0x2000B >> 16)
    /* DAB0C 8017A0CC AD8B0000 */  sw         $t3, 0x0($t4)
    /* DAB10 8017A0D0 34A5000B */  ori        $a1, $a1, (0x2000B & 0xFFFF)
    /* DAB14 8017A0D4 3484018E */  ori        $a0, $a0, (0x2018E & 0xFFFF)
    /* DAB18 8017A0D8 0C02A971 */  jal        func_800AA5C4
    /* DAB1C 8017A0DC 3C0640C0 */   lui       $a2, (0x40C00000 >> 16)
    /* DAB20 8017A0E0 8EAD003C */  lw         $t5, 0x3C($s5)
    /* DAB24 8017A0E4 0C02A8DA */  jal        func_800AA368
    /* DAB28 8017A0E8 8DA40010 */   lw        $a0, 0x10($t5)
    /* DAB2C 8017A0EC 54400016 */  bnel       $v0, $zero, .L8017A148_ovl3
    /* DAB30 8017A0F0 3C040002 */   lui       $a0, (0x2018E >> 16)
    /* DAB34 8017A0F4 8E4E0000 */  lw         $t6, 0x0($s2)
  .L8017A0F8_ovl3:
    /* DAB38 8017A0F8 8DC20000 */  lw         $v0, 0x0($t6)
    /* DAB3C 8017A0FC 00021080 */  sll        $v0, $v0, 2
    /* DAB40 8017A100 02027821 */  addu       $t7, $s0, $v0
    /* DAB44 8017A104 C5EA0000 */  lwc1       $f10, 0x0($t7)
    /* DAB48 8017A108 0222C021 */  addu       $t8, $s1, $v0
    /* DAB4C 8017A10C 460AA032 */  c.eq.s     $f20, $f10
    /* DAB50 8017A110 00000000 */  nop
    /* DAB54 8017A114 4502FFC1 */  bc1fl      .L8017A01C_ovl3
    /* DAB58 8017A118 3C040002 */   lui       $a0, (0x20191 >> 16)
    /* DAB5C 8017A11C 8F190000 */  lw         $t9, 0x0($t8)
    /* DAB60 8017A120 53200025 */  beql       $t9, $zero, .L8017A1B8_ovl3
    /* DAB64 8017A124 3C040002 */   lui       $a0, (0x20190 >> 16)
    /* DAB68 8017A128 0C002DAF */  jal        ohSleep
    /* DAB6C 8017A12C 24040001 */   addiu     $a0, $zero, 0x1
    /* DAB70 8017A130 8EA8003C */  lw         $t0, 0x3C($s5)
    /* DAB74 8017A134 0C02A8DA */  jal        func_800AA368
    /* DAB78 8017A138 8D040010 */   lw        $a0, 0x10($t0)
    /* DAB7C 8017A13C 5040FFEE */  beql       $v0, $zero, .L8017A0F8_ovl3
    /* DAB80 8017A140 8E4E0000 */   lw        $t6, 0x0($s2)
    /* DAB84 8017A144 3C040002 */  lui        $a0, (0x2018E >> 16)
  .L8017A148_ovl3:
    /* DAB88 8017A148 0C02A806 */  jal        func_800AA018
    /* DAB8C 8017A14C 3484018E */   ori       $a0, $a0, (0x2018E & 0xFFFF)
    /* DAB90 8017A150 8E490000 */  lw         $t1, 0x0($s2)
  .L8017A154_ovl3:
    /* DAB94 8017A154 8D220000 */  lw         $v0, 0x0($t1)
    /* DAB98 8017A158 00021080 */  sll        $v0, $v0, 2
    /* DAB9C 8017A15C 02025021 */  addu       $t2, $s0, $v0
    /* DABA0 8017A160 C5500000 */  lwc1       $f16, 0x0($t2)
    /* DABA4 8017A164 02225821 */  addu       $t3, $s1, $v0
    /* DABA8 8017A168 02827821 */  addu       $t7, $s4, $v0
    /* DABAC 8017A16C 4610A032 */  c.eq.s     $f20, $f16
    /* DABB0 8017A170 00000000 */  nop
    /* DABB4 8017A174 4502FFA9 */  bc1fl      .L8017A01C_ovl3
    /* DABB8 8017A178 3C040002 */   lui       $a0, (0x20191 >> 16)
    /* DABBC 8017A17C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DABC0 8017A180 5180000D */  beql       $t4, $zero, .L8017A1B8_ovl3
    /* DABC4 8017A184 3C040002 */   lui       $a0, (0x20190 >> 16)
    /* DABC8 8017A188 8ECD0034 */  lw         $t5, 0x34($s6)
    /* DABCC 8017A18C 31AE0001 */  andi       $t6, $t5, 0x1
    /* DABD0 8017A190 15C00004 */  bnez       $t6, .L8017A1A4_ovl3
    /* DABD4 8017A194 00000000 */   nop
    /* DABD8 8017A198 8DF80000 */  lw         $t8, 0x0($t7)
    /* DABDC 8017A19C 53000006 */  beql       $t8, $zero, .L8017A1B8_ovl3
    /* DABE0 8017A1A0 3C040002 */   lui       $a0, (0x20190 >> 16)
  .L8017A1A4_ovl3:
    /* DABE4 8017A1A4 0C002DAF */  jal        ohSleep
    /* DABE8 8017A1A8 24040001 */   addiu     $a0, $zero, 0x1
    /* DABEC 8017A1AC 1000FFE9 */  b          .L8017A154_ovl3
    /* DABF0 8017A1B0 8E490000 */   lw        $t1, 0x0($s2)
    /* DABF4 8017A1B4 3C040002 */  lui        $a0, (0x20190 >> 16)
  .L8017A1B8_ovl3:
    /* DABF8 8017A1B8 0C02A855 */  jal        func_800AA154
    /* DABFC 8017A1BC 34840190 */   ori       $a0, $a0, (0x20190 & 0xFFFF)
    /* DAC00 8017A1C0 8E480000 */  lw         $t0, 0x0($s2)
    /* DAC04 8017A1C4 2419FFFF */  addiu      $t9, $zero, -0x1
    /* DAC08 8017A1C8 8D090000 */  lw         $t1, 0x0($t0)
    /* DAC0C 8017A1CC 00095080 */  sll        $t2, $t1, 2
    /* DAC10 8017A1D0 028A5821 */  addu       $t3, $s4, $t2
    /* DAC14 8017A1D4 1000002B */  b          .L8017A284_ovl3
    /* DAC18 8017A1D8 AD790000 */   sw        $t9, 0x0($t3)
    /* DAC1C 8017A1DC 8E4C0000 */  lw         $t4, 0x0($s2)
  .L8017A1E0_ovl3:
    /* DAC20 8017A1E0 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* DAC24 8017A1E4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* DAC28 8017A1E8 000D7080 */  sll        $t6, $t5, 2
    /* DAC2C 8017A1EC 002E0821 */  addu       $at, $at, $t6
    /* DAC30 8017A1F0 0C04828A */  jal        func_80120A28
    /* DAC34 8017A1F4 E4344010 */   swc1      $f20, %lo(gEntitiesAngleXArray)($at)
    /* DAC38 8017A1F8 0C029D9E */  jal        play_sound
    /* DAC3C 8017A1FC 2404011D */   addiu     $a0, $zero, 0x11D
    /* DAC40 8017A200 8E4F0000 */  lw         $t7, 0x0($s2)
    /* DAC44 8017A204 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* DAC48 8017A208 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
    /* DAC4C 8017A20C 8DE20000 */  lw         $v0, 0x0($t7)
    /* DAC50 8017A210 24040002 */  addiu      $a0, $zero, 0x2
    /* DAC54 8017A214 24050001 */  addiu      $a1, $zero, 0x1
    /* DAC58 8017A218 00021080 */  sll        $v0, $v0, 2
    /* DAC5C 8017A21C 00220821 */  addu       $at, $at, $v0
    /* DAC60 8017A220 C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
    /* DAC64 8017A224 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* DAC68 8017A228 44812000 */  mtc1       $at, $f4
    /* DAC6C 8017A22C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* DAC70 8017A230 00220821 */  addu       $at, $at, $v0
    /* DAC74 8017A234 46049180 */  add.s      $f6, $f18, $f4
    /* DAC78 8017A238 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* DAC7C 8017A23C 00E23821 */  addu       $a3, $a3, $v0
    /* DAC80 8017A240 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
    /* DAC84 8017A244 E7A60010 */  swc1       $f6, 0x10($sp)
    /* DAC88 8017A248 24060030 */  addiu      $a2, $zero, 0x30
    /* DAC8C 8017A24C 0C029FDD */  jal        func_800A7F74
    /* DAC90 8017A250 E7A80014 */   swc1      $f8, 0x14($sp)
    /* DAC94 8017A254 0C047585 */  jal        func_8011D614
    /* DAC98 8017A258 00000000 */   nop
    /* DAC9C 8017A25C 3C040002 */  lui        $a0, (0x2018A >> 16)
    /* DACA0 8017A260 3C050002 */  lui        $a1, (0x2018B >> 16)
    /* DACA4 8017A264 34A5018B */  ori        $a1, $a1, (0x2018B & 0xFFFF)
    /* DACA8 8017A268 3484018A */  ori        $a0, $a0, (0x2018A & 0xFFFF)
    /* DACAC 8017A26C 0C048C3A */  jal        func_801230E8
    /* DACB0 8017A270 24060001 */   addiu     $a2, $zero, 0x1
    /* DACB4 8017A274 8ED80030 */  lw         $t8, 0x30($s6)
    /* DACB8 8017A278 AEC000A0 */  sw         $zero, 0xA0($s6)
    /* DACBC 8017A27C 27080001 */  addiu      $t0, $t8, 0x1
    /* DACC0 8017A280 AEC80030 */  sw         $t0, 0x30($s6)
  .L8017A284_ovl3:
    /* DACC4 8017A284 0C02BE85 */  jal        curObjSleepForever
    /* DACC8 8017A288 00000000 */   nop
    /* DACCC 8017A28C 8FBF004C */  lw         $ra, 0x4C($sp)
    /* DACD0 8017A290 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* DACD4 8017A294 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* DACD8 8017A298 8FB0002C */  lw         $s0, 0x2C($sp)
    /* DACDC 8017A29C 8FB10030 */  lw         $s1, 0x30($sp)
    /* DACE0 8017A2A0 8FB20034 */  lw         $s2, 0x34($sp)
    /* DACE4 8017A2A4 8FB30038 */  lw         $s3, 0x38($sp)
    /* DACE8 8017A2A8 8FB4003C */  lw         $s4, 0x3C($sp)
    /* DACEC 8017A2AC 8FB50040 */  lw         $s5, 0x40($sp)
    /* DACF0 8017A2B0 8FB60044 */  lw         $s6, 0x44($sp)
    /* DACF4 8017A2B4 8FB70048 */  lw         $s7, 0x48($sp)
    /* DACF8 8017A2B8 03E00008 */  jr         $ra
    /* DACFC 8017A2BC 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_80179C28_ovl3
.size func_80179C28_ovl3, . - func_80179C28_ovl3
