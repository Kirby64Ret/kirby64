glabel func_80179C28_ovl3
/* 0DA668 80179C28 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0DA66C 80179C2C AFB60044 */  sw    $s6, 0x44($sp)
/* 0DA670 80179C30 3C168013 */  lui   $s6, %hi(gKirbyState) # $s6, 0x8013
/* 0DA674 80179C34 26D6E7C0 */  addiu $s6, %lo(gKirbyState) # addiu $s6, $s6, -0x1840
/* 0DA678 80179C38 8ECE00A0 */  lw    $t6, 0xa0($s6)
/* 0DA67C 80179C3C AFB50040 */  sw    $s5, 0x40($sp)
/* 0DA680 80179C40 0080A825 */  move  $s5, $a0
/* 0DA684 80179C44 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0DA688 80179C48 AFB70048 */  sw    $s7, 0x48($sp)
/* 0DA68C 80179C4C AFB4003C */  sw    $s4, 0x3c($sp)
/* 0DA690 80179C50 AFB30038 */  sw    $s3, 0x38($sp)
/* 0DA694 80179C54 AFB20034 */  sw    $s2, 0x34($sp)
/* 0DA698 80179C58 AFB10030 */  sw    $s1, 0x30($sp)
/* 0DA69C 80179C5C AFB0002C */  sw    $s0, 0x2c($sp)
/* 0DA6A0 80179C60 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 0DA6A4 80179C64 15C00097 */  bnez  $t6, .L80179EC4_ovl3
/* 0DA6A8 80179C68 F7B40018 */   sdc1  $f20, 0x18($sp)
/* 0DA6AC 80179C6C 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0DA6B0 80179C70 4480A000 */  mtc1  $zero, $f20
/* 0DA6B4 80179C74 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0DA6B8 80179C78 8E4F0000 */  lw    $t7, ($s2)
/* 0DA6BC 80179C7C A2C00007 */  sb    $zero, 7($s6)
/* 0DA6C0 80179C80 A2C0000A */  sb    $zero, 0xa($s6)
/* 0DA6C4 80179C84 E6D40040 */  swc1  $f20, 0x40($s6)
/* 0DA6C8 80179C88 8DF80000 */  lw    $t8, ($t7)
/* 0DA6CC 80179C8C 3C08800F */ lui $t0, %hi(D_800E8AE0)
/* 0DA6D0 80179C90 240A0020 */  li    $t2, 32
/* 0DA6D4 80179C94 0018C880 */  sll   $t9, $t8, 2
/* 0DA6D8 80179C98 01194021 */  addu  $t0, $t0, $t9
/* 0DA6DC 80179C9C 8D088AE0 */ lw $t0, %lo(D_800E8AE0)($t0)
/* 0DA6E0 80179CA0 240B0010 */  li    $t3, 16
/* 0DA6E4 80179CA4 31090006 */  andi  $t1, $t0, 6
/* 0DA6E8 80179CA8 51200004 */  beql  $t1, $zero, .L80179CBC_ovl3
/* 0DA6EC 80179CAC A2CB0016 */   sb    $t3, 0x16($s6)
/* 0DA6F0 80179CB0 10000002 */  b     .L80179CBC_ovl3
/* 0DA6F4 80179CB4 A2CA0016 */   sb    $t2, 0x16($s6)
/* 0DA6F8 80179CB8 A2CB0016 */  sb    $t3, 0x16($s6)
.L80179CBC_ovl3:
/* 0DA6FC 80179CBC 0C0473D6 */  jal   func_8011CF58
/* 0DA700 80179CC0 00000000 */   nop   
/* 0DA704 80179CC4 8ECC0090 */  lw    $t4, 0x90($s6)
/* 0DA708 80179CC8 8E430000 */  lw    $v1, ($s2)
/* 0DA70C 80179CCC 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0DA710 80179CD0 AECC00A0 */  sw    $t4, 0xa0($s6)
/* 0DA714 80179CD4 8C6E0000 */  lw    $t6, ($v1)
/* 0DA718 80179CD8 240D0022 */  li    $t5, 34
/* 0DA71C 80179CDC 2418FFFF */  li    $t8, -1
/* 0DA720 80179CE0 000E7880 */  sll   $t7, $t6, 2
/* 0DA724 80179CE4 002F0821 */  addu  $at, $at, $t7
/* 0DA728 80179CE8 AC2DDFD0 */ sw $t5, %lo(D_800DDFD0)($at)
/* 0DA72C 80179CEC AED8003C */  sw    $t8, 0x3c($s6)
/* 0DA730 80179CF0 AED80044 */  sw    $t8, 0x44($s6)
/* 0DA734 80179CF4 8C620000 */  lw    $v0, ($v1)
/* 0DA738 80179CF8 3C11800F */  lui   $s1, %hi(D_800E8920) # $s1, 0x800f
/* 0DA73C 80179CFC 26318920 */  addiu $s1, %lo(D_800E8920) # addiu $s1, $s1, -0x76e0
/* 0DA740 80179D00 00021080 */  sll   $v0, $v0, 2
/* 0DA744 80179D04 02224021 */  addu  $t0, $s1, $v0
/* 0DA748 80179D08 8D090000 */  lw    $t1, ($t0)
/* 0DA74C 80179D0C 3C0A800D */  lui   $t2, %hi(D_800D6FE8) # $t2, 0x800d
/* 0DA750 80179D10 15200053 */  bnez  $t1, .L80179E60_ovl3
/* 0DA754 80179D14 00000000 */   nop   
/* 0DA758 80179D18 954A6FE8 */  lhu   $t2, %lo(D_800D6FE8)($t2)
/* 0DA75C 80179D1C 24014400 */  li    $at, 17408
/* 0DA760 80179D20 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0DA764 80179D24 314B4400 */  andi  $t3, $t2, 0x4400
/* 0DA768 80179D28 1561003A */  bne   $t3, $at, .L80179E14_ovl3
/* 0DA76C 80179D2C 24846690 */   addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0DA770 80179D30 44801000 */  mtc1  $zero, $f2
/* 0DA774 80179D34 3C018019 */  lui   $at, %hi(D_8019758C) # $at, 0x8019
/* 0DA778 80179D38 C42C758C */  lwc1  $f12, %lo(D_8019758C)($at)
/* 0DA77C 80179D3C 00826021 */  addu  $t4, $a0, $v0
/* 0DA780 80179D40 E5820000 */  swc1  $f2, ($t4)
/* 0DA784 80179D44 8C620000 */  lw    $v0, ($v1)
/* 0DA788 80179D48 3C17800E */  lui   $s7, %hi(D_800E64D0) # $s7, 0x800e
/* 0DA78C 80179D4C 26F764D0 */  addiu $s7, %lo(D_800E64D0) # addiu $s7, $s7, 0x64d0
/* 0DA790 80179D50 00021080 */  sll   $v0, $v0, 2
/* 0DA794 80179D54 00827021 */  addu  $t6, $a0, $v0
/* 0DA798 80179D58 C5C40000 */  lwc1  $f4, ($t6)
/* 0DA79C 80179D5C 02E26821 */  addu  $t5, $s7, $v0
/* 0DA7A0 80179D60 3C10800E */  lui   $s0, %hi(D_800E6850) # $s0, 0x800e
/* 0DA7A4 80179D64 E5A40000 */  swc1  $f4, ($t5)
/* 0DA7A8 80179D68 8C6F0000 */  lw    $t7, ($v1)
/* 0DA7AC 80179D6C 26106850 */  addiu $s0, %lo(D_800E6850) # addiu $s0, $s0, 0x6850
/* 0DA7B0 80179D70 3C05800E */  lui   $a1, %hi(D_800E3910) # $a1, 0x800e
/* 0DA7B4 80179D74 000FC080 */  sll   $t8, $t7, 2
/* 0DA7B8 80179D78 0218C821 */  addu  $t9, $s0, $t8
/* 0DA7BC 80179D7C E72C0000 */  swc1  $f12, ($t9)
/* 0DA7C0 80179D80 8C680000 */  lw    $t0, ($v1)
/* 0DA7C4 80179D84 24A53910 */  addiu $a1, %lo(D_800E3910) # addiu $a1, $a1, 0x3910
/* 0DA7C8 80179D88 3C01800E */ lui $at, %hi(D_800E3590)
/* 0DA7CC 80179D8C 00084880 */  sll   $t1, $t0, 2
/* 0DA7D0 80179D90 00A95021 */  addu  $t2, $a1, $t1
/* 0DA7D4 80179D94 E5420000 */  swc1  $f2, ($t2)
/* 0DA7D8 80179D98 8C620000 */  lw    $v0, ($v1)
/* 0DA7DC 80179D9C 3C06800E */  lui   $a2, %hi(D_800E3E50) # $a2, 0x800e
/* 0DA7E0 80179DA0 24C63E50 */  addiu $a2, %lo(D_800E3E50) # addiu $a2, $a2, 0x3e50
/* 0DA7E4 80179DA4 00021080 */  sll   $v0, $v0, 2
/* 0DA7E8 80179DA8 00A25821 */  addu  $t3, $a1, $v0
/* 0DA7EC 80179DAC C5600000 */  lwc1  $f0, ($t3)
/* 0DA7F0 80179DB0 00220821 */  addu  $at, $at, $v0
/* 0DA7F4 80179DB4 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 0DA7F8 80179DB8 8C6C0000 */  lw    $t4, ($v1)
/* 0DA7FC 80179DBC 3C01800E */ lui $at, %hi(D_800E33D0)
/* 0DA800 80179DC0 000C7080 */  sll   $t6, $t4, 2
/* 0DA804 80179DC4 002E0821 */  addu  $at, $at, $t6
/* 0DA808 80179DC8 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 0DA80C 80179DCC 8C6D0000 */  lw    $t5, ($v1)
/* 0DA810 80179DD0 3C01800E */ lui $at, %hi(D_800E3050)
/* 0DA814 80179DD4 000D7880 */  sll   $t7, $t5, 2
/* 0DA818 80179DD8 002F0821 */  addu  $at, $at, $t7
/* 0DA81C 80179DDC E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 0DA820 80179DE0 8C780000 */  lw    $t8, ($v1)
/* 0DA824 80179DE4 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 0DA828 80179DE8 0018C880 */  sll   $t9, $t8, 2
/* 0DA82C 80179DEC 00D94021 */  addu  $t0, $a2, $t9
/* 0DA830 80179DF0 E50C0000 */  swc1  $f12, ($t0)
/* 0DA834 80179DF4 8C620000 */  lw    $v0, ($v1)
/* 0DA838 80179DF8 00021080 */  sll   $v0, $v0, 2
/* 0DA83C 80179DFC 00C24821 */  addu  $t1, $a2, $v0
/* 0DA840 80179E00 C5260000 */  lwc1  $f6, ($t1)
/* 0DA844 80179E04 00220821 */  addu  $at, $at, $v0
/* 0DA848 80179E08 E4263AD0 */ swc1 $f6, %lo(D_800E3AD0)($at)
/* 0DA84C 80179E0C 8C620000 */  lw    $v0, ($v1)
/* 0DA850 80179E10 00021080 */  sll   $v0, $v0, 2
.L80179E14_ovl3:
/* 0DA854 80179E14 3C01800E */ lui $at, %hi(D_800E3210)
/* 0DA858 80179E18 00220821 */  addu  $at, $at, $v0
/* 0DA85C 80179E1C E4343210 */ swc1 $f20, %lo(D_800E3210)($at)
/* 0DA860 80179E20 8C6A0000 */  lw    $t2, ($v1)
/* 0DA864 80179E24 3C018019 */  lui   $at, %hi(D_80197590) # $at, 0x8019
/* 0DA868 80179E28 C4287590 */  lwc1  $f8, %lo(D_80197590)($at)
/* 0DA86C 80179E2C 3C01800E */ lui $at, %hi(D_800E3750)
/* 0DA870 80179E30 000A5880 */  sll   $t3, $t2, 2
/* 0DA874 80179E34 002B0821 */  addu  $at, $at, $t3
/* 0DA878 80179E38 E4283750 */ swc1 $f8, %lo(D_800E3750)($at)
/* 0DA87C 80179E3C 8C6C0000 */  lw    $t4, ($v1)
/* 0DA880 80179E40 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0DA884 80179E44 44815000 */  mtc1  $at, $f10
/* 0DA888 80179E48 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0DA88C 80179E4C 000C7080 */  sll   $t6, $t4, 2
/* 0DA890 80179E50 002E0821 */  addu  $at, $at, $t6
/* 0DA894 80179E54 E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
/* 0DA898 80179E58 8C620000 */  lw    $v0, ($v1)
/* 0DA89C 80179E5C 00021080 */  sll   $v0, $v0, 2
.L80179E60_ovl3:
/* 0DA8A0 80179E60 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0DA8A4 80179E64 00220821 */  addu  $at, $at, $v0
/* 0DA8A8 80179E68 C4306A10 */ lwc1 $f16, %lo(D_800E6A10)($at)
/* 0DA8AC 80179E6C 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0DA8B0 80179E70 00220821 */  addu  $at, $at, $v0
/* 0DA8B4 80179E74 4600848D */  trunc.w.s $f18, $f16
/* 0DA8B8 80179E78 2404011C */  li    $a0, 284
/* 0DA8BC 80179E7C 440F9000 */  mfc1  $t7, $f18
/* 0DA8C0 80179E80 0C029D9E */  jal   play_sound
/* 0DA8C4 80179E84 AC2F98E0 */ sw $t7, %lo(D_800E98E0)($at)
/* 0DA8C8 80179E88 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0DA8CC 80179E8C 0C048BC2 */  jal   func_80122F08
/* 0DA8D0 80179E90 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0DA8D4 80179E94 3C188019 */  lui   $t8, %hi(D_80190518) # $t8, 0x8019
/* 0DA8D8 80179E98 27180518 */  addiu $t8, %lo(D_80190518) # addiu $t8, $t8, 0x518
/* 0DA8DC 80179E9C 3C040002 */  lui   $a0, (0x0002018C >> 16) # lui $a0, 2
/* 0DA8E0 80179EA0 3C050002 */  lui   $a1, (0x0002018D >> 16) # lui $a1, 2
/* 0DA8E4 80179EA4 AED8015C */  sw    $t8, 0x15c($s6)
/* 0DA8E8 80179EA8 34A5018D */  ori   $a1, (0x0002018D & 0xFFFF) # ori $a1, $a1, 0x18d
/* 0DA8EC 80179EAC 3484018C */  ori   $a0, (0x0002018C & 0xFFFF) # ori $a0, $a0, 0x18c
/* 0DA8F0 80179EB0 0C048C3A */  jal   func_801230E8
/* 0DA8F4 80179EB4 24060001 */   li    $a2, 1
/* 0DA8F8 80179EB8 24130001 */  li    $s3, 1
/* 0DA8FC 80179EBC AED30044 */  sw    $s3, 0x44($s6)
/* 0DA900 80179EC0 AED3003C */  sw    $s3, 0x3c($s6)
.L80179EC4_ovl3:
/* 0DA904 80179EC4 8EC20044 */  lw    $v0, 0x44($s6)
/* 0DA908 80179EC8 3C10800E */  lui   $s0, %hi(D_800E6850) # $s0, 0x800e
/* 0DA90C 80179ECC 3C11800F */  lui   $s1, %hi(D_800E8920) # $s1, 0x800f
/* 0DA910 80179ED0 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0DA914 80179ED4 3C17800E */  lui   $s7, %hi(D_800E64D0) # $s7, 0x800e
/* 0DA918 80179ED8 4480A000 */  mtc1  $zero, $f20
/* 0DA91C 80179EDC 26F764D0 */  addiu $s7, %lo(D_800E64D0) # addiu $s7, $s7, 0x64d0
/* 0DA920 80179EE0 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0DA924 80179EE4 26318920 */  addiu $s1, %lo(D_800E8920) # addiu $s1, $s1, -0x76e0
/* 0DA928 80179EE8 26106850 */  addiu $s0, %lo(D_800E6850) # addiu $s0, $s0, 0x6850
/* 0DA92C 80179EEC 1040002F */  beqz  $v0, .L80179FAC_ovl3
/* 0DA930 80179EF0 24130001 */   li    $s3, 1
/* 0DA934 80179EF4 10530007 */  beq   $v0, $s3, .L80179F14_ovl3
/* 0DA938 80179EF8 24010002 */   li    $at, 2
/* 0DA93C 80179EFC 1041002B */  beq   $v0, $at, .L80179FAC_ovl3
/* 0DA940 80179F00 24010003 */   li    $at, 3
/* 0DA944 80179F04 504100B6 */  beql  $v0, $at, .L8017A1E0_ovl3
/* 0DA948 80179F08 8E4C0000 */   lw    $t4, ($s2)
/* 0DA94C 80179F0C 100000DD */  b     .L8017A284_ovl3
/* 0DA950 80179F10 00000000 */   nop   
.L80179F14_ovl3:
/* 0DA954 80179F14 8E480000 */  lw    $t0, ($s2)
/* 0DA958 80179F18 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 0DA95C 80179F1C 3C040002 */  lui   $a0, (0x0002000C >> 16) # lui $a0, 2
/* 0DA960 80179F20 8D090000 */  lw    $t1, ($t0)
/* 0DA964 80179F24 3484000C */  ori   $a0, (0x0002000C & 0xFFFF) # ori $a0, $a0, 0xc
/* 0DA968 80179F28 00095080 */  sll   $t2, $t1, 2
/* 0DA96C 80179F2C 002A0821 */  addu  $at, $at, $t2
/* 0DA970 80179F30 0C048BC2 */  jal   func_80122F08
/* 0DA974 80179F34 E434A6E0 */ swc1 $f20, %lo(D_800EA6E0)($at)
/* 0DA978 80179F38 8E4B0000 */  lw    $t3, ($s2)
/* 0DA97C 80179F3C AED30154 */  sw    $s3, 0x154($s6)
/* 0DA980 80179F40 E6D40040 */  swc1  $f20, 0x40($s6)
/* 0DA984 80179F44 8D620000 */  lw    $v0, ($t3)
/* 0DA988 80179F48 00021080 */  sll   $v0, $v0, 2
/* 0DA98C 80179F4C 02226021 */  addu  $t4, $s1, $v0
/* 0DA990 80179F50 8D8E0000 */  lw    $t6, ($t4)
/* 0DA994 80179F54 02E26821 */  addu  $t5, $s7, $v0
/* 0DA998 80179F58 11C000CA */  beqz  $t6, .L8017A284_ovl3
/* 0DA99C 80179F5C 00000000 */   nop   
/* 0DA9A0 80179F60 4480A000 */  mtc1  $zero, $f20
/* 0DA9A4 80179F64 C5A40000 */  lwc1  $f4, ($t5)
/* 0DA9A8 80179F68 3C05800E */ lui $a1, %hi(D_800E17D0)
/* 0DA9AC 80179F6C 00A22821 */  addu  $a1, $a1, $v0
/* 0DA9B0 80179F70 4604A032 */  c.eq.s $f20, $f4
/* 0DA9B4 80179F74 00000000 */  nop   
/* 0DA9B8 80179F78 45000008 */  bc1f  .L80179F9C_ovl3
/* 0DA9BC 80179F7C 00000000 */   nop   
/* 0DA9C0 80179F80 8EC40124 */  lw    $a0, 0x124($s6)
/* 0DA9C4 80179F84 0C03E209 */  jal   func_800F8824
/* 0DA9C8 80179F88 8CA517D0 */ lw $a1, %lo(D_800E17D0)($a1)
/* 0DA9CC 80179F8C 46140032 */  c.eq.s $f0, $f20
/* 0DA9D0 80179F90 00000000 */  nop   
/* 0DA9D4 80179F94 450100BB */  bc1t  .L8017A284_ovl3
/* 0DA9D8 80179F98 00000000 */   nop   
.L80179F9C_ovl3:
/* 0DA9DC 80179F9C 0C029D9E */  jal   play_sound
/* 0DA9E0 80179FA0 24040121 */   li    $a0, 289
/* 0DA9E4 80179FA4 100000B7 */  b     .L8017A284_ovl3
/* 0DA9E8 80179FA8 00000000 */   nop   
.L80179FAC_ovl3:
/* 0DA9EC 80179FAC 8E430000 */  lw    $v1, ($s2)
/* 0DA9F0 80179FB0 3C13800F */  lui   $s3, %hi(D_800EA8A0) # $s3, 0x800f
/* 0DA9F4 80179FB4 2673A8A0 */  addiu $s3, %lo(D_800EA8A0) # addiu $s3, $s3, -0x5760
/* 0DA9F8 80179FB8 8C6F0000 */  lw    $t7, ($v1)
/* 0DA9FC 80179FBC 3C14800F */  lui   $s4, %hi(D_800E9720) # $s4, 0x800f
/* 0DAA00 80179FC0 26949720 */  addiu $s4, %lo(D_800E9720) # addiu $s4, $s4, -0x68e0
/* 0DAA04 80179FC4 000FC080 */  sll   $t8, $t7, 2
/* 0DAA08 80179FC8 0278C821 */  addu  $t9, $s3, $t8
/* 0DAA0C 80179FCC E7340000 */  swc1  $f20, ($t9)
/* 0DAA10 80179FD0 8C680000 */  lw    $t0, ($v1)
/* 0DAA14 80179FD4 3C040002 */  lui   $a0, (0x0002000B >> 16) # lui $a0, 2
/* 0DAA18 80179FD8 3484000B */  ori   $a0, (0x0002000B & 0xFFFF) # ori $a0, $a0, 0xb
/* 0DAA1C 80179FDC 00084880 */  sll   $t1, $t0, 2
/* 0DAA20 80179FE0 02895021 */  addu  $t2, $s4, $t1
/* 0DAA24 80179FE4 0C048BC2 */  jal   func_80122F08
/* 0DAA28 80179FE8 AD400000 */   sw    $zero, ($t2)
/* 0DAA2C 80179FEC 240B0002 */  li    $t3, 2
/* 0DAA30 80179FF0 3C040002 */  lui   $a0, (0x0002018F >> 16) # lui $a0, 2
/* 0DAA34 80179FF4 AECB0154 */  sw    $t3, 0x154($s6)
/* 0DAA38 80179FF8 0C02A855 */  jal   func_800AA154
/* 0DAA3C 80179FFC 3484018F */   ori   $a0, (0x0002018F & 0xFFFF) # ori $a0, $a0, 0x18f
/* 0DAA40 8017A000 3C0C8018 */  lui   $t4, %hi(D_8017A2C0) # $t4, 0x8018
/* 0DAA44 8017A004 258CA2C0 */  addiu $t4, %lo(D_8017A2C0) # addiu $t4, $t4, -0x5d40
/* 0DAA48 8017A008 3C018019 */  lui   $at, %hi(D_80197594) # $at, 0x8019
/* 0DAA4C 8017A00C 4480A000 */  mtc1  $zero, $f20
/* 0DAA50 8017A010 C4367594 */  lwc1  $f22, %lo(D_80197594)($at)
/* 0DAA54 8017A014 AFAC0054 */  sw    $t4, 0x54($sp)
/* 0DAA58 8017A018 3C040002 */  lui   $a0, (0x00020191 >> 16) # lui $a0, 2
.L8017A01C_ovl3:
/* 0DAA5C 8017A01C 0C02A806 */  jal   func_800AA018
/* 0DAA60 8017A020 34840191 */   ori   $a0, (0x00020191 & 0xFFFF) # ori $a0, $a0, 0x191
/* 0DAA64 8017A024 8E430000 */  lw    $v1, ($s2)
/* 0DAA68 8017A028 8FAE0054 */  lw    $t6, 0x54($sp)
/* 0DAA6C 8017A02C 3C01800E */ lui $at, %hi(D_800DF310)
/* 0DAA70 8017A030 8C6D0000 */  lw    $t5, ($v1)
/* 0DAA74 8017A034 000D7880 */  sll   $t7, $t5, 2
/* 0DAA78 8017A038 002F0821 */  addu  $at, $at, $t7
/* 0DAA7C 8017A03C AC2EF310 */ sw $t6, %lo(D_800DF310)($at)
.L8017A040_ovl3:
/* 0DAA80 8017A040 8C620000 */  lw    $v0, ($v1)
/* 0DAA84 8017A044 00021080 */  sll   $v0, $v0, 2
/* 0DAA88 8017A048 02E2C021 */  addu  $t8, $s7, $v0
/* 0DAA8C 8017A04C C7000000 */  lwc1  $f0, ($t8)
/* 0DAA90 8017A050 0202C821 */  addu  $t9, $s0, $v0
/* 0DAA94 8017A054 02224021 */  addu  $t0, $s1, $v0
/* 0DAA98 8017A058 4600A032 */  c.eq.s $f20, $f0
/* 0DAA9C 8017A05C 02625021 */  addu  $t2, $s3, $v0
/* 0DAAA0 8017A060 45020007 */  bc1fl .L8017A080_ovl3
/* 0DAAA4 8017A064 8D090000 */   lw    $t1, ($t0)
/* 0DAAA8 8017A068 C7260000 */  lwc1  $f6, ($t9)
/* 0DAAAC 8017A06C 4606A032 */  c.eq.s $f20, $f6
/* 0DAAB0 8017A070 00000000 */  nop   
/* 0DAAB4 8017A074 45030012 */  bc1tl .L8017A0C0_ovl3
/* 0DAAB8 8017A078 240B001E */   li    $t3, 30
/* 0DAABC 8017A07C 8D090000 */  lw    $t1, ($t0)
.L8017A080_ovl3:
/* 0DAAC0 8017A080 5120004D */  beql  $t1, $zero, .L8017A1B8_ovl3
/* 0DAAC4 8017A084 3C040002 */   lui   $a0, 2
/* 0DAAC8 8017A088 C5480000 */  lwc1  $f8, ($t2)
/* 0DAACC 8017A08C 4608B03C */  c.lt.s $f22, $f8
/* 0DAAD0 8017A090 00000000 */  nop   
/* 0DAAD4 8017A094 45000005 */  bc1f  .L8017A0AC_ovl3
/* 0DAAD8 8017A098 00000000 */   nop   
/* 0DAADC 8017A09C 4600A032 */  c.eq.s $f20, $f0
/* 0DAAE0 8017A0A0 00000000 */  nop   
/* 0DAAE4 8017A0A4 45030044 */  bc1tl .L8017A1B8_ovl3
/* 0DAAE8 8017A0A8 3C040002 */   lui   $a0, 2
.L8017A0AC_ovl3:
/* 0DAAEC 8017A0AC 0C002DAF */  jal   func_8000B6BC
/* 0DAAF0 8017A0B0 24040001 */   li    $a0, 1
/* 0DAAF4 8017A0B4 1000FFE2 */  b     .L8017A040_ovl3
/* 0DAAF8 8017A0B8 8E430000 */   lw    $v1, ($s2)
/* 0DAAFC 8017A0BC 240B001E */  li    $t3, 30
.L8017A0C0_ovl3:
/* 0DAB00 8017A0C0 02826021 */  addu  $t4, $s4, $v0
/* 0DAB04 8017A0C4 3C040002 */  lui   $a0, (0x0002018E >> 16) # lui $a0, 2
/* 0DAB08 8017A0C8 3C050002 */  lui   $a1, (0x0002000B >> 16) # lui $a1, 2
/* 0DAB0C 8017A0CC AD8B0000 */  sw    $t3, ($t4)
/* 0DAB10 8017A0D0 34A5000B */  ori   $a1, (0x0002000B & 0xFFFF) # ori $a1, $a1, 0xb
/* 0DAB14 8017A0D4 3484018E */  ori   $a0, (0x0002018E & 0xFFFF) # ori $a0, $a0, 0x18e
/* 0DAB18 8017A0D8 0C02A971 */  jal   func_800AA5C4
/* 0DAB1C 8017A0DC 3C0640C0 */   lui   $a2, 0x40c0
/* 0DAB20 8017A0E0 8EAD003C */  lw    $t5, 0x3c($s5)
/* 0DAB24 8017A0E4 0C02A8DA */  jal   func_800AA368
/* 0DAB28 8017A0E8 8DA40010 */   lw    $a0, 0x10($t5)
/* 0DAB2C 8017A0EC 54400016 */  bnezl $v0, .L8017A148_ovl3
/* 0DAB30 8017A0F0 3C040002 */   lui   $a0, 2
/* 0DAB34 8017A0F4 8E4E0000 */  lw    $t6, ($s2)
.L8017A0F8_ovl3:
/* 0DAB38 8017A0F8 8DC20000 */  lw    $v0, ($t6)
/* 0DAB3C 8017A0FC 00021080 */  sll   $v0, $v0, 2
/* 0DAB40 8017A100 02027821 */  addu  $t7, $s0, $v0
/* 0DAB44 8017A104 C5EA0000 */  lwc1  $f10, ($t7)
/* 0DAB48 8017A108 0222C021 */  addu  $t8, $s1, $v0
/* 0DAB4C 8017A10C 460AA032 */  c.eq.s $f20, $f10
/* 0DAB50 8017A110 00000000 */  nop   
/* 0DAB54 8017A114 4502FFC1 */  bc1fl .L8017A01C_ovl3
/* 0DAB58 8017A118 3C040002 */   lui   $a0, 2
/* 0DAB5C 8017A11C 8F190000 */  lw    $t9, ($t8)
/* 0DAB60 8017A120 53200025 */  beql  $t9, $zero, .L8017A1B8_ovl3
/* 0DAB64 8017A124 3C040002 */   lui   $a0, 2
/* 0DAB68 8017A128 0C002DAF */  jal   func_8000B6BC
/* 0DAB6C 8017A12C 24040001 */   li    $a0, 1
/* 0DAB70 8017A130 8EA8003C */  lw    $t0, 0x3c($s5)
/* 0DAB74 8017A134 0C02A8DA */  jal   func_800AA368
/* 0DAB78 8017A138 8D040010 */   lw    $a0, 0x10($t0)
/* 0DAB7C 8017A13C 5040FFEE */  beql  $v0, $zero, .L8017A0F8_ovl3
/* 0DAB80 8017A140 8E4E0000 */   lw    $t6, ($s2)
/* 0DAB84 8017A144 3C040002 */  lui   $a0, (0x0002018E >> 16) # lui $a0, 2
.L8017A148_ovl3:
/* 0DAB88 8017A148 0C02A806 */  jal   func_800AA018
/* 0DAB8C 8017A14C 3484018E */   ori   $a0, (0x0002018E & 0xFFFF) # ori $a0, $a0, 0x18e
/* 0DAB90 8017A150 8E490000 */  lw    $t1, ($s2)
.L8017A154_ovl3:
/* 0DAB94 8017A154 8D220000 */  lw    $v0, ($t1)
/* 0DAB98 8017A158 00021080 */  sll   $v0, $v0, 2
/* 0DAB9C 8017A15C 02025021 */  addu  $t2, $s0, $v0
/* 0DABA0 8017A160 C5500000 */  lwc1  $f16, ($t2)
/* 0DABA4 8017A164 02225821 */  addu  $t3, $s1, $v0
/* 0DABA8 8017A168 02827821 */  addu  $t7, $s4, $v0
/* 0DABAC 8017A16C 4610A032 */  c.eq.s $f20, $f16
/* 0DABB0 8017A170 00000000 */  nop   
/* 0DABB4 8017A174 4502FFA9 */  bc1fl .L8017A01C_ovl3
/* 0DABB8 8017A178 3C040002 */   lui   $a0, 2
/* 0DABBC 8017A17C 8D6C0000 */  lw    $t4, ($t3)
/* 0DABC0 8017A180 5180000D */  beql  $t4, $zero, .L8017A1B8_ovl3
/* 0DABC4 8017A184 3C040002 */   lui   $a0, 2
/* 0DABC8 8017A188 8ECD0034 */  lw    $t5, 0x34($s6)
/* 0DABCC 8017A18C 31AE0001 */  andi  $t6, $t5, 1
/* 0DABD0 8017A190 15C00004 */  bnez  $t6, .L8017A1A4_ovl3
/* 0DABD4 8017A194 00000000 */   nop   
/* 0DABD8 8017A198 8DF80000 */  lw    $t8, ($t7)
/* 0DABDC 8017A19C 53000006 */  beql  $t8, $zero, .L8017A1B8_ovl3
/* 0DABE0 8017A1A0 3C040002 */   lui   $a0, 2
.L8017A1A4_ovl3:
/* 0DABE4 8017A1A4 0C002DAF */  jal   func_8000B6BC
/* 0DABE8 8017A1A8 24040001 */   li    $a0, 1
/* 0DABEC 8017A1AC 1000FFE9 */  b     .L8017A154_ovl3
/* 0DABF0 8017A1B0 8E490000 */   lw    $t1, ($s2)
/* 0DABF4 8017A1B4 3C040002 */  lui   $a0, (0x00020190 >> 16) # lui $a0, 2
.L8017A1B8_ovl3:
/* 0DABF8 8017A1B8 0C02A855 */  jal   func_800AA154
/* 0DABFC 8017A1BC 34840190 */   ori   $a0, (0x00020190 & 0xFFFF) # ori $a0, $a0, 0x190
/* 0DAC00 8017A1C0 8E480000 */  lw    $t0, ($s2)
/* 0DAC04 8017A1C4 2419FFFF */  li    $t9, -1
/* 0DAC08 8017A1C8 8D090000 */  lw    $t1, ($t0)
/* 0DAC0C 8017A1CC 00095080 */  sll   $t2, $t1, 2
/* 0DAC10 8017A1D0 028A5821 */  addu  $t3, $s4, $t2
/* 0DAC14 8017A1D4 1000002B */  b     .L8017A284_ovl3
/* 0DAC18 8017A1D8 AD790000 */   sw    $t9, ($t3)
/* 0DAC1C 8017A1DC 8E4C0000 */  lw    $t4, ($s2)
.L8017A1E0_ovl3:
/* 0DAC20 8017A1E0 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 0DAC24 8017A1E4 8D8D0000 */  lw    $t5, ($t4)
/* 0DAC28 8017A1E8 000D7080 */  sll   $t6, $t5, 2
/* 0DAC2C 8017A1EC 002E0821 */  addu  $at, $at, $t6
/* 0DAC30 8017A1F0 0C04828A */  jal   func_80120A28
/* 0DAC34 8017A1F4 E4344010 */ swc1 $f20, %lo(gEntitiesAngleXArray)($at)
/* 0DAC38 8017A1F8 0C029D9E */  jal   play_sound
/* 0DAC3C 8017A1FC 2404011D */   li    $a0, 285
/* 0DAC40 8017A200 8E4F0000 */  lw    $t7, ($s2)
/* 0DAC44 8017A204 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 0DAC48 8017A208 3C07800E */ lui $a3, %hi(gEntitiesPosXArray)
/* 0DAC4C 8017A20C 8DE20000 */  lw    $v0, ($t7)
/* 0DAC50 8017A210 24040002 */  li    $a0, 2
/* 0DAC54 8017A214 24050001 */  li    $a1, 1
/* 0DAC58 8017A218 00021080 */  sll   $v0, $v0, 2
/* 0DAC5C 8017A21C 00220821 */  addu  $at, $at, $v0
/* 0DAC60 8017A220 C4322790 */ lwc1 $f18, %lo(gEntitiesPosYArray)($at)
/* 0DAC64 8017A224 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0DAC68 8017A228 44812000 */  mtc1  $at, $f4
/* 0DAC6C 8017A22C 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 0DAC70 8017A230 00220821 */  addu  $at, $at, $v0
/* 0DAC74 8017A234 46049180 */  add.s $f6, $f18, $f4
/* 0DAC78 8017A238 C4282950 */ lwc1 $f8, %lo(gEntitiesPosZArray)($at)
/* 0DAC7C 8017A23C 00E23821 */  addu  $a3, $a3, $v0
/* 0DAC80 8017A240 8CE725D0 */ lw $a3, %lo(gEntitiesPosXArray)($a3)
/* 0DAC84 8017A244 E7A60010 */  swc1  $f6, 0x10($sp)
/* 0DAC88 8017A248 24060030 */  li    $a2, 48
/* 0DAC8C 8017A24C 0C029FDD */  jal   func_800A7F74
/* 0DAC90 8017A250 E7A80014 */   swc1  $f8, 0x14($sp)
/* 0DAC94 8017A254 0C047585 */  jal   func_8011D614
/* 0DAC98 8017A258 00000000 */   nop   
/* 0DAC9C 8017A25C 3C040002 */  lui   $a0, (0x0002018A >> 16) # lui $a0, 2
/* 0DACA0 8017A260 3C050002 */  lui   $a1, (0x0002018B >> 16) # lui $a1, 2
/* 0DACA4 8017A264 34A5018B */  ori   $a1, (0x0002018B & 0xFFFF) # ori $a1, $a1, 0x18b
/* 0DACA8 8017A268 3484018A */  ori   $a0, (0x0002018A & 0xFFFF) # ori $a0, $a0, 0x18a
/* 0DACAC 8017A26C 0C048C3A */  jal   func_801230E8
/* 0DACB0 8017A270 24060001 */   li    $a2, 1
/* 0DACB4 8017A274 8ED80030 */  lw    $t8, 0x30($s6)
/* 0DACB8 8017A278 AEC000A0 */  sw    $zero, 0xa0($s6)
/* 0DACBC 8017A27C 27080001 */  addiu $t0, $t8, 1
/* 0DACC0 8017A280 AEC80030 */  sw    $t0, 0x30($s6)
.L8017A284_ovl3:
/* 0DACC4 8017A284 0C02BE85 */  jal   func_800AFA14
/* 0DACC8 8017A288 00000000 */   nop   
/* 0DACCC 8017A28C 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0DACD0 8017A290 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0DACD4 8017A294 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0DACD8 8017A298 8FB0002C */  lw    $s0, 0x2c($sp)
/* 0DACDC 8017A29C 8FB10030 */  lw    $s1, 0x30($sp)
/* 0DACE0 8017A2A0 8FB20034 */  lw    $s2, 0x34($sp)
/* 0DACE4 8017A2A4 8FB30038 */  lw    $s3, 0x38($sp)
/* 0DACE8 8017A2A8 8FB4003C */  lw    $s4, 0x3c($sp)
/* 0DACEC 8017A2AC 8FB50040 */  lw    $s5, 0x40($sp)
/* 0DACF0 8017A2B0 8FB60044 */  lw    $s6, 0x44($sp)
/* 0DACF4 8017A2B4 8FB70048 */  lw    $s7, 0x48($sp)
/* 0DACF8 8017A2B8 03E00008 */  jr    $ra
/* 0DACFC 8017A2BC 27BD0070 */   addiu $sp, $sp, 0x70
