.set noat
.set noreorder
.set gp=64

.include "macros.inc"
.section .text, "ax"

glabel func_801DF650_ovl11
/* 1E9F10 801DF650 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1E9F14 801DF654 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1E9F18 801DF658 8D0E0000 */  lw    $t6, ($t0)
/* 1E9F1C 801DF65C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E9F20 801DF660 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9F24 801DF664 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E9F28 801DF668 8DC30000 */  lw    $v1, ($t6)
/* 1E9F2C 801DF66C 3C07800E */  lui   $a3, 0x800e
/* 1E9F30 801DF670 3C0F801E */  lui   $t7, %hi(D_801DF728) # $t7, 0x801e
/* 1E9F34 801DF674 00031880 */  sll   $v1, $v1, 2
/* 1E9F38 801DF678 00E33821 */  addu  $a3, $a3, $v1
/* 1E9F3C 801DF67C 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 1E9F40 801DF680 3C01800E */  lui   $at, 0x800e
/* 1E9F44 801DF684 00230821 */  addu  $at, $at, $v1
/* 1E9F48 801DF688 25EFF728 */  addiu $t7, %lo(D_801DF728) # addiu $t7, $t7, -0x8d8
/* 1E9F4C 801DF68C 3C18801D */  lui   $t8, %hi(D_801CB4DC) # $t8, 0x801d
/* 1E9F50 801DF690 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 1E9F54 801DF694 2718B4DC */  addiu $t8, %lo(D_801CB4DC) # addiu $t8, $t8, -0x4b24
/* 1E9F58 801DF698 ACF80098 */  sw    $t8, 0x98($a3)
/* 1E9F5C 801DF69C 8D020000 */  lw    $v0, ($t0)
/* 1E9F60 801DF6A0 3C01800F */  lui   $at, 0x800f
/* 1E9F64 801DF6A4 2419002D */  li    $t9, 45
/* 1E9F68 801DF6A8 8C490000 */  lw    $t1, ($v0)
/* 1E9F6C 801DF6AC 3C040001 */  lui   $a0, (0x0001009E >> 16) # lui $a0, 1
/* 1E9F70 801DF6B0 3484009E */  ori   $a0, (0x0001009E & 0xFFFF) # ori $a0, $a0, 0x9e
/* 1E9F74 801DF6B4 00095080 */  sll   $t2, $t1, 2
/* 1E9F78 801DF6B8 002A0821 */  addu  $at, $at, $t2
/* 1E9F7C 801DF6BC AC3998E0 */  sw    $t9, -0x6720($at)
/* 1E9F80 801DF6C0 8C4B0000 */  lw    $t3, ($v0)
/* 1E9F84 801DF6C4 3C01800F */  lui   $at, 0x800f
/* 1E9F88 801DF6C8 24050023 */  li    $a1, 35
/* 1E9F8C 801DF6CC 000B6080 */  sll   $t4, $t3, 2
/* 1E9F90 801DF6D0 002C0821 */  addu  $at, $at, $t4
/* 1E9F94 801DF6D4 AC208920 */  sw    $zero, -0x76e0($at)
/* 1E9F98 801DF6D8 0C02A619 */  jal   func_800A9864
/* 1E9F9C 801DF6DC 24060010 */   li    $a2, 16
/* 1E9FA0 801DF6E0 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1E9FA4 801DF6E4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1E9FA8 801DF6E8 3C01800E */  lui   $at, 0x800e
/* 1E9FAC 801DF6EC 8DA30000 */  lw    $v1, ($t5)
/* 1E9FB0 801DF6F0 00031880 */  sll   $v1, $v1, 2
/* 1E9FB4 801DF6F4 00230821 */  addu  $at, $at, $v1
/* 1E9FB8 801DF6F8 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1E9FBC 801DF6FC 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1E9FC0 801DF700 44813000 */  mtc1  $at, $f6
/* 1E9FC4 801DF704 3C01800E */  lui   $at, 0x800e
/* 1E9FC8 801DF708 00230821 */  addu  $at, $at, $v1
/* 1E9FCC 801DF70C 46062202 */  mul.s $f8, $f4, $f6
/* 1E9FD0 801DF710 0C02BE85 */  jal   func_800AFA14
/* 1E9FD4 801DF714 E42864D0 */   swc1  $f8, 0x64d0($at)
/* 1E9FD8 801DF718 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E9FDC 801DF71C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9FE0 801DF720 03E00008 */  jr    $ra
/* 1E9FE4 801DF724 00000000 */   nop   
.size func_801DF650_ovl11, . - func_801DF650_ovl11

glabel func_801DF728_ovl11
/* 1E9FE8 801DF728 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E9FEC 801DF72C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E9FF0 801DF730 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E9FF4 801DF734 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9FF8 801DF738 8DC20000 */  lw    $v0, ($t6)
/* 1E9FFC 801DF73C 3C0F800F */  lui   $t7, %hi(D_800E98E0) # $t7, 0x800f
/* 1EA000 801DF740 25EF98E0 */  addiu $t7, %lo(D_800E98E0) # addiu $t7, $t7, -0x6720
/* 1EA004 801DF744 00021080 */  sll   $v0, $v0, 2
/* 1EA008 801DF748 004F1821 */  addu  $v1, $v0, $t7
/* 1EA00C 801DF74C 8C650000 */  lw    $a1, ($v1)
/* 1EA010 801DF750 14A00009 */  bnez  $a1, .L801DF778_ovl11
/* 1EA014 801DF754 24B8FFFF */   addiu $t8, $a1, -1
/* 1EA018 801DF758 3C04800E */  lui   $a0, 0x800e
/* 1EA01C 801DF75C 00822021 */  addu  $a0, $a0, $v0
/* 1EA020 801DF760 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 1EA024 801DF764 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 1EA028 801DF768 0C02C7B2 */  jal   assign_new_process_entry
/* 1EA02C 801DF76C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1EA030 801DF770 10000006 */  b     .L801DF78C_ovl11
/* 1EA034 801DF774 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DF778_ovl11:
/* 1EA038 801DF778 0C06835D */  jal   func_801A0D74_ovl11
/* 1EA03C 801DF77C AC780000 */   sw    $t8, ($v1)
/* 1EA040 801DF780 0C0680ED */  jal   func_801A03B4_ovl11
/* 1EA044 801DF784 00000000 */   nop   
/* 1EA048 801DF788 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DF78C_ovl11:
/* 1EA04C 801DF78C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EA050 801DF790 03E00008 */  jr    $ra
/* 1EA054 801DF794 00000000 */   nop   
.size func_801DF728_ovl11, . - func_801DF728_ovl11

glabel func_801DF798_ovl11
/* 1EA058 801DF798 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EA05C 801DF79C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EA060 801DF7A0 0C066C51 */  jal   func_8019B144_ovl11
/* 1EA064 801DF7A4 00000000 */   nop   
/* 1EA068 801DF7A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EA06C 801DF7AC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EA070 801DF7B0 3C01800E */  lui   $at, 0x800e
/* 1EA074 801DF7B4 44803000 */  mtc1  $zero, $f6
/* 1EA078 801DF7B8 8C430000 */  lw    $v1, ($v0)
/* 1EA07C 801DF7BC 00031880 */  sll   $v1, $v1, 2
/* 1EA080 801DF7C0 00230821 */  addu  $at, $at, $v1
/* 1EA084 801DF7C4 C4242790 */  lwc1  $f4, 0x2790($at)
/* 1EA088 801DF7C8 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1EA08C 801DF7CC 44814000 */  mtc1  $at, $f8
/* 1EA090 801DF7D0 46040081 */  sub.s $f2, $f0, $f4
/* 1EA094 801DF7D4 4606103C */  c.lt.s $f2, $f6
/* 1EA098 801DF7D8 00000000 */  nop   
/* 1EA09C 801DF7DC 45020004 */  bc1fl .L801DF7F0_ovl11
/* 1EA0A0 801DF7E0 46001006 */   mov.s $f0, $f2
/* 1EA0A4 801DF7E4 10000002 */  b     .L801DF7F0_ovl11
/* 1EA0A8 801DF7E8 46001007 */   neg.s $f0, $f2
/* 1EA0AC 801DF7EC 46001006 */  mov.s $f0, $f2
.L801DF7F0_ovl11:
/* 1EA0B0 801DF7F0 4600403C */  c.lt.s $f8, $f0
/* 1EA0B4 801DF7F4 00000000 */  nop   
/* 1EA0B8 801DF7F8 45020025 */  bc1fl .L801DF890_ovl11
/* 1EA0BC 801DF7FC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EA0C0 801DF800 44800000 */  mtc1  $zero, $f0
/* 1EA0C4 801DF804 3C01C040 */  li    $at, 0xC0400000 # -3.000000
/* 1EA0C8 801DF808 4600103C */  c.lt.s $f2, $f0
/* 1EA0CC 801DF80C 00000000 */  nop   
/* 1EA0D0 801DF810 4502000D */  bc1fl .L801DF848_ovl11
/* 1EA0D4 801DF814 44818000 */   mtc1  $at, $f16
/* 1EA0D8 801DF818 3C01800E */  lui   $at, 0x800e
/* 1EA0DC 801DF81C 00230821 */  addu  $at, $at, $v1
/* 1EA0E0 801DF820 E4203210 */  swc1  $f0, 0x3210($at)
/* 1EA0E4 801DF824 8C4E0000 */  lw    $t6, ($v0)
/* 1EA0E8 801DF828 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 1EA0EC 801DF82C 44815000 */  mtc1  $at, $f10
/* 1EA0F0 801DF830 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 1EA0F4 801DF834 000E7880 */  sll   $t7, $t6, 2
/* 1EA0F8 801DF838 002F0821 */  addu  $at, $at, $t7
/* 1EA0FC 801DF83C 10000013 */  b     .L801DF88C_ovl11
/* 1EA100 801DF840 E42A3750 */   swc1  $f10, 0x3750($at)
/* 1EA104 801DF844 44818000 */  mtc1  $at, $f16
.L801DF848_ovl11:
/* 1EA108 801DF848 3C01800E */  lui   $at, 0x800e
/* 1EA10C 801DF84C 00230821 */  addu  $at, $at, $v1
/* 1EA110 801DF850 E4303210 */  swc1  $f16, 0x3210($at)
/* 1EA114 801DF854 8C580000 */  lw    $t8, ($v0)
/* 1EA118 801DF858 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1EA11C 801DF85C 44819000 */  mtc1  $at, $f18
/* 1EA120 801DF860 3C01800E */  lui   $at, 0x800e
/* 1EA124 801DF864 0018C880 */  sll   $t9, $t8, 2
/* 1EA128 801DF868 00390821 */  addu  $at, $at, $t9
/* 1EA12C 801DF86C E4323750 */  swc1  $f18, 0x3750($at)
/* 1EA130 801DF870 8C480000 */  lw    $t0, ($v0)
/* 1EA134 801DF874 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 1EA138 801DF878 44812000 */  mtc1  $at, $f4
/* 1EA13C 801DF87C 3C01800E */  lui   $at, 0x800e
/* 1EA140 801DF880 00084880 */  sll   $t1, $t0, 2
/* 1EA144 801DF884 00290821 */  addu  $at, $at, $t1
/* 1EA148 801DF888 E4243C90 */  swc1  $f4, 0x3c90($at)
.L801DF88C_ovl11:
/* 1EA14C 801DF88C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DF890_ovl11:
/* 1EA150 801DF890 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EA154 801DF894 03E00008 */  jr    $ra
/* 1EA158 801DF898 00000000 */   nop   
.size func_801DF798_ovl11, . - func_801DF798_ovl11

glabel func_801DF89C_ovl11
/* 1EA15C 801DF89C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1EA160 801DF8A0 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1EA164 801DF8A4 8D020000 */  lw    $v0, ($t0)
/* 1EA168 801DF8A8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1EA16C 801DF8AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EA170 801DF8B0 AFA40048 */  sw    $a0, 0x48($sp)
/* 1EA174 801DF8B4 8C430000 */  lw    $v1, ($v0)
/* 1EA178 801DF8B8 3C0E801E */  lui   $t6, %hi(D_801DFA9C) # $t6, 0x801e
/* 1EA17C 801DF8BC 3C01800E */  lui   $at, 0x800e
/* 1EA180 801DF8C0 00031880 */  sll   $v1, $v1, 2
/* 1EA184 801DF8C4 00230821 */  addu  $at, $at, $v1
/* 1EA188 801DF8C8 25CEFA9C */  addiu $t6, %lo(D_801DFA9C) # addiu $t6, $t6, -0x564
/* 1EA18C 801DF8CC AC2EF150 */  sw    $t6, -0xeb0($at)
/* 1EA190 801DF8D0 8C580000 */  lw    $t8, ($v0)
/* 1EA194 801DF8D4 3C07800E */  lui   $a3, 0x800e
/* 1EA198 801DF8D8 00E33821 */  addu  $a3, $a3, $v1
/* 1EA19C 801DF8DC 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 1EA1A0 801DF8E0 3C01800E */  lui   $at, 0x800e
/* 1EA1A4 801DF8E4 3C0F801D */  lui   $t7, %hi(D_801D1094) # $t7, 0x801d
/* 1EA1A8 801DF8E8 0018C880 */  sll   $t9, $t8, 2
/* 1EA1AC 801DF8EC 00390821 */  addu  $at, $at, $t9
/* 1EA1B0 801DF8F0 25EF1094 */  addiu $t7, %lo(D_801D1094) # addiu $t7, $t7, 0x1094
/* 1EA1B4 801DF8F4 3C09801E */  lui   $t1, %hi(D_801DAFCC) # $t1, 0x801e
/* 1EA1B8 801DF8F8 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 1EA1BC 801DF8FC 2529AFCC */  addiu $t1, %lo(D_801DAFCC) # addiu $t1, $t1, -0x5034
/* 1EA1C0 801DF900 ACE90098 */  sw    $t1, 0x98($a3)
/* 1EA1C4 801DF904 8D0A0000 */  lw    $t2, ($t0)
/* 1EA1C8 801DF908 3C01800F */  lui   $at, 0x800f
/* 1EA1CC 801DF90C 3C040001 */  lui   $a0, (0x0001009A >> 16) # lui $a0, 1
/* 1EA1D0 801DF910 8D4B0000 */  lw    $t3, ($t2)
/* 1EA1D4 801DF914 3484009A */  ori   $a0, (0x0001009A & 0xFFFF) # ori $a0, $a0, 0x9a
/* 1EA1D8 801DF918 24050023 */  li    $a1, 35
/* 1EA1DC 801DF91C 000B6080 */  sll   $t4, $t3, 2
/* 1EA1E0 801DF920 002C0821 */  addu  $at, $at, $t4
/* 1EA1E4 801DF924 AC208920 */  sw    $zero, -0x76e0($at)
/* 1EA1E8 801DF928 0C02A619 */  jal   func_800A9864
/* 1EA1EC 801DF92C 24060010 */   li    $a2, 16
/* 1EA1F0 801DF930 3C040001 */  lui   $a0, (0x00010549 >> 16) # lui $a0, 1
/* 1EA1F4 801DF934 0C02A806 */  jal   func_800AA018
/* 1EA1F8 801DF938 34840549 */   ori   $a0, (0x00010549 & 0xFFFF) # ori $a0, $a0, 0x549
/* 1EA1FC 801DF93C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EA200 801DF940 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EA204 801DF944 3C01800F */  lui   $at, 0x800f
/* 1EA208 801DF948 240D003C */  li    $t5, 60
/* 1EA20C 801DF94C 8C4E0000 */  lw    $t6, ($v0)
/* 1EA210 801DF950 44800000 */  mtc1  $zero, $f0
/* 1EA214 801DF954 3C06800E */  lui   $a2, 0x800e
/* 1EA218 801DF958 000EC080 */  sll   $t8, $t6, 2
/* 1EA21C 801DF95C 00380821 */  addu  $at, $at, $t8
/* 1EA220 801DF960 AC2D9720 */  sw    $t5, -0x68e0($at)
/* 1EA224 801DF964 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1EA228 801DF968 44812000 */  mtc1  $at, $f4
/* 1EA22C 801DF96C E7A0003C */  swc1  $f0, 0x3c($sp)
/* 1EA230 801DF970 E7A00038 */  swc1  $f0, 0x38($sp)
/* 1EA234 801DF974 E7A40040 */  swc1  $f4, 0x40($sp)
/* 1EA238 801DF978 8C4F0000 */  lw    $t7, ($v0)
/* 1EA23C 801DF97C 27A40038 */  addiu $a0, $sp, 0x38
/* 1EA240 801DF980 24050002 */  li    $a1, 2
/* 1EA244 801DF984 000FC880 */  sll   $t9, $t7, 2
/* 1EA248 801DF988 00D93021 */  addu  $a2, $a2, $t9
/* 1EA24C 801DF98C 0C006424 */  jal   lbvector_Rotate
/* 1EA250 801DF990 8CC641D0 */   lw    $a2, 0x41d0($a2)
/* 1EA254 801DF994 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1EA258 801DF998 44810000 */  mtc1  $at, $f0
/* 1EA25C 801DF99C C7A60038 */  lwc1  $f6, 0x38($sp)
/* 1EA260 801DF9A0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EA264 801DF9A4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EA268 801DF9A8 46060202 */  mul.s $f8, $f0, $f6
/* 1EA26C 801DF9AC C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 1EA270 801DF9B0 8C490000 */  lw    $t1, ($v0)
/* 1EA274 801DF9B4 3C01BE00 */  li    $at, 0xBE000000 # -0.125000
/* 1EA278 801DF9B8 44811000 */  mtc1  $at, $f2
/* 1EA27C 801DF9BC 3C01800E */  lui   $at, 0x800e
/* 1EA280 801DF9C0 00095080 */  sll   $t2, $t1, 2
/* 1EA284 801DF9C4 460A0402 */  mul.s $f16, $f0, $f10
/* 1EA288 801DF9C8 002A0821 */  addu  $at, $at, $t2
/* 1EA28C 801DF9CC E4283050 */  swc1  $f8, 0x3050($at)
/* 1EA290 801DF9D0 8C4B0000 */  lw    $t3, ($v0)
/* 1EA294 801DF9D4 C7B20038 */  lwc1  $f18, 0x38($sp)
/* 1EA298 801DF9D8 3C01800E */  lui   $at, 0x800e
/* 1EA29C 801DF9DC 000B6080 */  sll   $t4, $t3, 2
/* 1EA2A0 801DF9E0 46121102 */  mul.s $f4, $f2, $f18
/* 1EA2A4 801DF9E4 002C0821 */  addu  $at, $at, $t4
/* 1EA2A8 801DF9E8 E43033D0 */  swc1  $f16, 0x33d0($at)
/* 1EA2AC 801DF9EC 8C4E0000 */  lw    $t6, ($v0)
/* 1EA2B0 801DF9F0 C7A60040 */  lwc1  $f6, 0x40($sp)
/* 1EA2B4 801DF9F4 3C01800E */  lui   $at, 0x800e
/* 1EA2B8 801DF9F8 000E6880 */  sll   $t5, $t6, 2
/* 1EA2BC 801DF9FC 002D0821 */  addu  $at, $at, $t5
/* 1EA2C0 801DFA00 46061202 */  mul.s $f8, $f2, $f6
/* 1EA2C4 801DFA04 E4243590 */  swc1  $f4, 0x3590($at)
/* 1EA2C8 801DFA08 8C580000 */  lw    $t8, ($v0)
/* 1EA2CC 801DFA0C 3C01800E */  lui   $at, 0x800e
/* 1EA2D0 801DFA10 00187880 */  sll   $t7, $t8, 2
/* 1EA2D4 801DFA14 002F0821 */  addu  $at, $at, $t7
/* 1EA2D8 801DFA18 0C077DE6 */  jal   func_801DF798_ovl11
/* 1EA2DC 801DFA1C E4283910 */   swc1  $f8, 0x3910($at)
/* 1EA2E0 801DFA20 0C02BE85 */  jal   func_800AFA14
/* 1EA2E4 801DFA24 00000000 */   nop   
/* 1EA2E8 801DFA28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1EA2EC 801DFA2C 27BD0048 */  addiu $sp, $sp, 0x48
/* 1EA2F0 801DFA30 03E00008 */  jr    $ra
/* 1EA2F4 801DFA34 00000000 */   nop   
.size func_801DF89C_ovl11, . - func_801DF89C_ovl11

glabel func_801DFA38_ovl11
/* 1EA2F8 801DFA38 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1EA2FC 801DFA3C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1EA300 801DFA40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EA304 801DFA44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EA308 801DFA48 8DC20000 */  lw    $v0, ($t6)
/* 1EA30C 801DFA4C 3C0F800F */  lui   $t7, %hi(D_800E9720) # $t7, 0x800f
/* 1EA310 801DFA50 25EF9720 */  addiu $t7, %lo(D_800E9720) # addiu $t7, $t7, -0x68e0
/* 1EA314 801DFA54 00021080 */  sll   $v0, $v0, 2
/* 1EA318 801DFA58 004F1821 */  addu  $v1, $v0, $t7
/* 1EA31C 801DFA5C 8C640000 */  lw    $a0, ($v1)
/* 1EA320 801DFA60 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 1EA324 801DFA64 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 1EA328 801DFA68 14800007 */  bnez  $a0, .L801DFA88_ovl11
/* 1EA32C 801DFA6C 2498FFFF */   addiu $t8, $a0, -1
/* 1EA330 801DFA70 3C04800E */  lui   $a0, 0x800e
/* 1EA334 801DFA74 00822021 */  addu  $a0, $a0, $v0
/* 1EA338 801DFA78 0C02C7B2 */  jal   assign_new_process_entry
/* 1EA33C 801DFA7C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1EA340 801DFA80 10000003 */  b     .L801DFA90_ovl11
/* 1EA344 801DFA84 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DFA88_ovl11:
/* 1EA348 801DFA88 AC780000 */  sw    $t8, ($v1)
/* 1EA34C 801DFA8C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DFA90_ovl11:
/* 1EA350 801DFA90 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EA354 801DFA94 03E00008 */  jr    $ra
/* 1EA358 801DFA98 00000000 */   nop   
.size func_801DFA38_ovl11, . - func_801DFA38_ovl11

glabel func_801DFA9C_ovl11
/* 1EA35C 801DFA9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EA360 801DFAA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EA364 801DFAA4 0C06835D */  jal   func_801A0D74_ovl11
/* 1EA368 801DFAA8 00000000 */   nop   
/* 1EA36C 801DFAAC 0C077E8E */  jal   func_801DFA38_ovl11
/* 1EA370 801DFAB0 00000000 */   nop   
/* 1EA374 801DFAB4 0C0680ED */  jal   func_801A03B4_ovl11
/* 1EA378 801DFAB8 00000000 */   nop   
/* 1EA37C 801DFABC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1EA380 801DFAC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EA384 801DFAC4 03E00008 */  jr    $ra
/* 1EA388 801DFAC8 00000000 */   nop   
.size func_801DFA9C_ovl11, . - func_801DFA9C_ovl11

glabel func_801DFACC_ovl11
/* 1EA38C 801DFACC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EA390 801DFAD0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EA394 801DFAD4 AFA40000 */  sw    $a0, ($sp)
/* 1EA398 801DFAD8 3C01800F */  lui   $at, 0x800f
/* 1EA39C 801DFADC 8C4E0000 */  lw    $t6, ($v0)
/* 1EA3A0 801DFAE0 44802000 */  mtc1  $zero, $f4
/* 1EA3A4 801DFAE4 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 1EA3A8 801DFAE8 000E7880 */  sll   $t7, $t6, 2
/* 1EA3AC 801DFAEC 002F0821 */  addu  $at, $at, $t7
/* 1EA3B0 801DFAF0 AC208920 */  sw    $zero, -0x76e0($at)
/* 1EA3B4 801DFAF4 8C580000 */  lw    $t8, ($v0)
/* 1EA3B8 801DFAF8 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 1EA3BC 801DFAFC 3C01800E */  lui   $at, 0x800e
/* 1EA3C0 801DFB00 0018C880 */  sll   $t9, $t8, 2
/* 1EA3C4 801DFB04 00994021 */  addu  $t0, $a0, $t9
/* 1EA3C8 801DFB08 E5040000 */  swc1  $f4, ($t0)
/* 1EA3CC 801DFB0C 8C430000 */  lw    $v1, ($v0)
/* 1EA3D0 801DFB10 00031880 */  sll   $v1, $v1, 2
/* 1EA3D4 801DFB14 00834821 */  addu  $t1, $a0, $v1
/* 1EA3D8 801DFB18 C5260000 */  lwc1  $f6, ($t1)
/* 1EA3DC 801DFB1C 00230821 */  addu  $at, $at, $v1
/* 1EA3E0 801DFB20 E4263210 */  swc1  $f6, 0x3210($at)
/* 1EA3E4 801DFB24 8C4A0000 */  lw    $t2, ($v0)
/* 1EA3E8 801DFB28 3C01801E */  lui   $at, %hi(D_801E0C40) # $at, 0x801e
/* 1EA3EC 801DFB2C C4280C40 */  lwc1  $f8, %lo(D_801E0C40)($at)
/* 1EA3F0 801DFB30 3C01800E */  lui   $at, 0x800e
/* 1EA3F4 801DFB34 000A5880 */  sll   $t3, $t2, 2
/* 1EA3F8 801DFB38 002B0821 */  addu  $at, $at, $t3
/* 1EA3FC 801DFB3C 03E00008 */  jr    $ra
/* 1EA400 801DFB40 E4283C90 */   swc1  $f8, 0x3c90($at)
.size func_801DFACC_ovl11, . - func_801DFACC_ovl11

glabel func_801DFB44_ovl11
/* 1EA404 801DFB44 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1EA408 801DFB48 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1EA40C 801DFB4C 8D0E0000 */  lw    $t6, ($t0)
/* 1EA410 801DFB50 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 1EA414 801DFB54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EA418 801DFB58 AFA40050 */  sw    $a0, 0x50($sp)
/* 1EA41C 801DFB5C 8DC30000 */  lw    $v1, ($t6)
/* 1EA420 801DFB60 3C07800E */  lui   $a3, 0x800e
/* 1EA424 801DFB64 3C0F801E */  lui   $t7, %hi(D_801E024C) # $t7, 0x801e
/* 1EA428 801DFB68 00031880 */  sll   $v1, $v1, 2
/* 1EA42C 801DFB6C 00E33821 */  addu  $a3, $a3, $v1
/* 1EA430 801DFB70 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 1EA434 801DFB74 3C01800E */  lui   $at, 0x800e
/* 1EA438 801DFB78 00230821 */  addu  $at, $at, $v1
/* 1EA43C 801DFB7C 25EF024C */  addiu $t7, %lo(D_801E024C) # addiu $t7, $t7, 0x24c
/* 1EA440 801DFB80 3C18801E */  lui   $t8, %hi(D_801DAF84) # $t8, 0x801e
/* 1EA444 801DFB84 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 1EA448 801DFB88 2718AF84 */  addiu $t8, %lo(D_801DAF84) # addiu $t8, $t8, -0x507c
/* 1EA44C 801DFB8C ACF80098 */  sw    $t8, 0x98($a3)
/* 1EA450 801DFB90 8D020000 */  lw    $v0, ($t0)
/* 1EA454 801DFB94 3C01800E */  lui   $at, 0x800e
/* 1EA458 801DFB98 3C19801D */  lui   $t9, %hi(D_801D1094) # $t9, 0x801d
/* 1EA45C 801DFB9C 8C490000 */  lw    $t1, ($v0)
/* 1EA460 801DFBA0 27391094 */  addiu $t9, %lo(D_801D1094) # addiu $t9, $t9, 0x1094
/* 1EA464 801DFBA4 3C040001 */  lui   $a0, (0x0001009B >> 16) # lui $a0, 1
/* 1EA468 801DFBA8 00095080 */  sll   $t2, $t1, 2
/* 1EA46C 801DFBAC 002A0821 */  addu  $at, $at, $t2
/* 1EA470 801DFBB0 AC39EF90 */  sw    $t9, -0x1070($at)
/* 1EA474 801DFBB4 8C4B0000 */  lw    $t3, ($v0)
/* 1EA478 801DFBB8 3C01800F */  lui   $at, 0x800f
/* 1EA47C 801DFBBC 3484009B */  ori   $a0, (0x0001009B & 0xFFFF) # ori $a0, $a0, 0x9b
/* 1EA480 801DFBC0 000B6080 */  sll   $t4, $t3, 2
/* 1EA484 801DFBC4 002C0821 */  addu  $at, $at, $t4
/* 1EA488 801DFBC8 AC208920 */  sw    $zero, -0x76e0($at)
/* 1EA48C 801DFBCC 24050023 */  li    $a1, 35
/* 1EA490 801DFBD0 0C02A619 */  jal   func_800A9864
/* 1EA494 801DFBD4 24060010 */   li    $a2, 16
/* 1EA498 801DFBD8 3C040001 */  lui   $a0, (0x0001054C >> 16) # lui $a0, 1
/* 1EA49C 801DFBDC 0C02A806 */  jal   func_800AA018
/* 1EA4A0 801DFBE0 3484054C */   ori   $a0, (0x0001054C & 0xFFFF) # ori $a0, $a0, 0x54c
/* 1EA4A4 801DFBE4 0C066E6C */  jal   func_8019B9B0_ovl11
/* 1EA4A8 801DFBE8 00000000 */   nop   
/* 1EA4AC 801DFBEC 44800000 */  mtc1  $zero, $f0
/* 1EA4B0 801DFBF0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1EA4B4 801DFBF4 44812000 */  mtc1  $at, $f4
/* 1EA4B8 801DFBF8 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1EA4BC 801DFBFC 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1EA4C0 801DFC00 E7A00044 */  swc1  $f0, 0x44($sp)
/* 1EA4C4 801DFC04 E7A00040 */  swc1  $f0, 0x40($sp)
/* 1EA4C8 801DFC08 E7A40048 */  swc1  $f4, 0x48($sp)
/* 1EA4CC 801DFC0C 8DAE0000 */  lw    $t6, ($t5)
/* 1EA4D0 801DFC10 3C06800E */  lui   $a2, 0x800e
/* 1EA4D4 801DFC14 27A40040 */  addiu $a0, $sp, 0x40
/* 1EA4D8 801DFC18 000E7880 */  sll   $t7, $t6, 2
/* 1EA4DC 801DFC1C 00CF3021 */  addu  $a2, $a2, $t7
/* 1EA4E0 801DFC20 8CC641D0 */  lw    $a2, 0x41d0($a2)
/* 1EA4E4 801DFC24 0C006424 */  jal   lbvector_Rotate
/* 1EA4E8 801DFC28 24050002 */   li    $a1, 2
/* 1EA4EC 801DFC2C 3C0143A0 */  li    $at, 0x43A00000 # 320.000000
/* 1EA4F0 801DFC30 44810000 */  mtc1  $at, $f0
/* 1EA4F4 801DFC34 C7A60040 */  lwc1  $f6, 0x40($sp)
/* 1EA4F8 801DFC38 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EA4FC 801DFC3C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EA500 801DFC40 46060202 */  mul.s $f8, $f0, $f6
/* 1EA504 801DFC44 3C014110 */  li    $at, 0x41100000 # 9.000000
/* 1EA508 801DFC48 44811000 */  mtc1  $at, $f2
/* 1EA50C 801DFC4C 8C580000 */  lw    $t8, ($v0)
/* 1EA510 801DFC50 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 1EA514 801DFC54 3C01BE00 */  li    $at, 0xBE000000 # -0.125000
/* 1EA518 801DFC58 44816000 */  mtc1  $at, $f12
/* 1EA51C 801DFC5C 3C01800F */  lui   $at, 0x800f
/* 1EA520 801DFC60 00184880 */  sll   $t1, $t8, 2
/* 1EA524 801DFC64 460A0402 */  mul.s $f16, $f0, $f10
/* 1EA528 801DFC68 00290821 */  addu  $at, $at, $t1
/* 1EA52C 801DFC6C E428B320 */  swc1  $f8, -0x4ce0($at)
/* 1EA530 801DFC70 8C590000 */  lw    $t9, ($v0)
/* 1EA534 801DFC74 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 1EA538 801DFC78 3C01800F */  lui   $at, 0x800f
/* 1EA53C 801DFC7C 00195080 */  sll   $t2, $t9, 2
/* 1EA540 801DFC80 46121102 */  mul.s $f4, $f2, $f18
/* 1EA544 801DFC84 002A0821 */  addu  $at, $at, $t2
/* 1EA548 801DFC88 E430B160 */  swc1  $f16, -0x4ea0($at)
/* 1EA54C 801DFC8C 8C4B0000 */  lw    $t3, ($v0)
/* 1EA550 801DFC90 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 1EA554 801DFC94 3C01800E */  lui   $at, 0x800e
/* 1EA558 801DFC98 000B6080 */  sll   $t4, $t3, 2
/* 1EA55C 801DFC9C 46061202 */  mul.s $f8, $f2, $f6
/* 1EA560 801DFCA0 002C0821 */  addu  $at, $at, $t4
/* 1EA564 801DFCA4 E4243050 */  swc1  $f4, 0x3050($at)
/* 1EA568 801DFCA8 8C4D0000 */  lw    $t5, ($v0)
/* 1EA56C 801DFCAC C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 1EA570 801DFCB0 3C01800E */  lui   $at, 0x800e
/* 1EA574 801DFCB4 000D7080 */  sll   $t6, $t5, 2
/* 1EA578 801DFCB8 460A6402 */  mul.s $f16, $f12, $f10
/* 1EA57C 801DFCBC 002E0821 */  addu  $at, $at, $t6
/* 1EA580 801DFCC0 E42833D0 */  swc1  $f8, 0x33d0($at)
/* 1EA584 801DFCC4 8C4F0000 */  lw    $t7, ($v0)
/* 1EA588 801DFCC8 C7B20048 */  lwc1  $f18, 0x48($sp)
/* 1EA58C 801DFCCC 3C01800E */  lui   $at, 0x800e
/* 1EA590 801DFCD0 000FC080 */  sll   $t8, $t7, 2
/* 1EA594 801DFCD4 46126102 */  mul.s $f4, $f12, $f18
/* 1EA598 801DFCD8 00380821 */  addu  $at, $at, $t8
/* 1EA59C 801DFCDC E4303590 */  swc1  $f16, 0x3590($at)
/* 1EA5A0 801DFCE0 8C490000 */  lw    $t1, ($v0)
/* 1EA5A4 801DFCE4 3C01800E */  lui   $at, 0x800e
/* 1EA5A8 801DFCE8 44803000 */  mtc1  $zero, $f6
/* 1EA5AC 801DFCEC 0009C880 */  sll   $t9, $t1, 2
/* 1EA5B0 801DFCF0 00390821 */  addu  $at, $at, $t9
/* 1EA5B4 801DFCF4 E4243910 */  swc1  $f4, 0x3910($at)
/* 1EA5B8 801DFCF8 8C4A0000 */  lw    $t2, ($v0)
/* 1EA5BC 801DFCFC 3C01800E */  lui   $at, 0x800e
/* 1EA5C0 801DFD00 000A5880 */  sll   $t3, $t2, 2
/* 1EA5C4 801DFD04 002B0821 */  addu  $at, $at, $t3
/* 1EA5C8 801DFD08 E4263210 */  swc1  $f6, 0x3210($at)
/* 1EA5CC 801DFD0C 8C4C0000 */  lw    $t4, ($v0)
/* 1EA5D0 801DFD10 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 1EA5D4 801DFD14 44814000 */  mtc1  $at, $f8
/* 1EA5D8 801DFD18 3C01800E */  lui   $at, 0x800e
/* 1EA5DC 801DFD1C 000C6880 */  sll   $t5, $t4, 2
/* 1EA5E0 801DFD20 002D0821 */  addu  $at, $at, $t5
/* 1EA5E4 801DFD24 0C02BE85 */  jal   func_800AFA14
/* 1EA5E8 801DFD28 E4283750 */   swc1  $f8, 0x3750($at)
/* 1EA5EC 801DFD2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1EA5F0 801DFD30 27BD0050 */  addiu $sp, $sp, 0x50
/* 1EA5F4 801DFD34 03E00008 */  jr    $ra
/* 1EA5F8 801DFD38 00000000 */   nop   
.size func_801DFB44_ovl11, . - func_801DFB44_ovl11

glabel func_801DFD3C_ovl11
/* 1EA5FC 801DFD3C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EA600 801DFD40 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EA604 801DFD44 3C01800F */  lui   $at, 0x800f
/* 1EA608 801DFD48 44801000 */  mtc1  $zero, $f2
/* 1EA60C 801DFD4C 8C430000 */  lw    $v1, ($v0)
/* 1EA610 801DFD50 00031880 */  sll   $v1, $v1, 2
/* 1EA614 801DFD54 00230821 */  addu  $at, $at, $v1
/* 1EA618 801DFD58 C420B320 */  lwc1  $f0, -0x4ce0($at)
/* 1EA61C 801DFD5C 3C01800E */  lui   $at, 0x800e
/* 1EA620 801DFD60 00230821 */  addu  $at, $at, $v1
/* 1EA624 801DFD64 4600103E */  c.le.s $f2, $f0
/* 1EA628 801DFD68 00000000 */  nop   
/* 1EA62C 801DFD6C 45000015 */  bc1f  .L801DFDC4_ovl11
/* 1EA630 801DFD70 00000000 */   nop   
/* 1EA634 801DFD74 3C01800E */  lui   $at, 0x800e
/* 1EA638 801DFD78 00230821 */  addu  $at, $at, $v1
/* 1EA63C 801DFD7C C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 1EA640 801DFD80 3C04800E */  lui   $a0, %hi(D_800E3590) # $a0, 0x800e
/* 1EA644 801DFD84 24843590 */  addiu $a0, %lo(D_800E3590) # addiu $a0, $a0, 0x3590
/* 1EA648 801DFD88 4604003E */  c.le.s $f0, $f4
/* 1EA64C 801DFD8C 00837021 */  addu  $t6, $a0, $v1
/* 1EA650 801DFD90 4500001D */  bc1f  .L801DFE08_ovl11
/* 1EA654 801DFD94 00000000 */   nop   
/* 1EA658 801DFD98 E5C20000 */  swc1  $f2, ($t6)
/* 1EA65C 801DFD9C 8C430000 */  lw    $v1, ($v0)
/* 1EA660 801DFDA0 3C01800E */  lui   $at, 0x800e
/* 1EA664 801DFDA4 00031880 */  sll   $v1, $v1, 2
/* 1EA668 801DFDA8 00837821 */  addu  $t7, $a0, $v1
/* 1EA66C 801DFDAC C5E60000 */  lwc1  $f6, ($t7)
/* 1EA670 801DFDB0 00230821 */  addu  $at, $at, $v1
/* 1EA674 801DFDB4 E4263050 */  swc1  $f6, 0x3050($at)
/* 1EA678 801DFDB8 8C430000 */  lw    $v1, ($v0)
/* 1EA67C 801DFDBC 10000012 */  b     .L801DFE08_ovl11
/* 1EA680 801DFDC0 00031880 */   sll   $v1, $v1, 2
.L801DFDC4_ovl11:
/* 1EA684 801DFDC4 C42825D0 */  lwc1  $f8, 0x25d0($at)
/* 1EA688 801DFDC8 3C04800E */  lui   $a0, %hi(D_800E3590) # $a0, 0x800e
/* 1EA68C 801DFDCC 24843590 */  addiu $a0, %lo(D_800E3590) # addiu $a0, $a0, 0x3590
/* 1EA690 801DFDD0 4600403E */  c.le.s $f8, $f0
/* 1EA694 801DFDD4 0083C021 */  addu  $t8, $a0, $v1
/* 1EA698 801DFDD8 4500000B */  bc1f  .L801DFE08_ovl11
/* 1EA69C 801DFDDC 00000000 */   nop   
/* 1EA6A0 801DFDE0 E7020000 */  swc1  $f2, ($t8)
/* 1EA6A4 801DFDE4 8C430000 */  lw    $v1, ($v0)
/* 1EA6A8 801DFDE8 3C01800E */  lui   $at, 0x800e
/* 1EA6AC 801DFDEC 00031880 */  sll   $v1, $v1, 2
/* 1EA6B0 801DFDF0 0083C821 */  addu  $t9, $a0, $v1
/* 1EA6B4 801DFDF4 C72A0000 */  lwc1  $f10, ($t9)
/* 1EA6B8 801DFDF8 00230821 */  addu  $at, $at, $v1
/* 1EA6BC 801DFDFC E42A3050 */  swc1  $f10, 0x3050($at)
/* 1EA6C0 801DFE00 8C430000 */  lw    $v1, ($v0)
/* 1EA6C4 801DFE04 00031880 */  sll   $v1, $v1, 2
.L801DFE08_ovl11:
/* 1EA6C8 801DFE08 3C01800F */  lui   $at, 0x800f
/* 1EA6CC 801DFE0C 00230821 */  addu  $at, $at, $v1
/* 1EA6D0 801DFE10 C420B160 */  lwc1  $f0, -0x4ea0($at)
/* 1EA6D4 801DFE14 3C01800E */  lui   $at, 0x800e
/* 1EA6D8 801DFE18 00230821 */  addu  $at, $at, $v1
/* 1EA6DC 801DFE1C 4600103E */  c.le.s $f2, $f0
/* 1EA6E0 801DFE20 00000000 */  nop   
/* 1EA6E4 801DFE24 45000011 */  bc1f  .L801DFE6C_ovl11
/* 1EA6E8 801DFE28 00000000 */   nop   
/* 1EA6EC 801DFE2C 3C01800E */  lui   $at, 0x800e
/* 1EA6F0 801DFE30 00230821 */  addu  $at, $at, $v1
/* 1EA6F4 801DFE34 C4302950 */  lwc1  $f16, 0x2950($at)
/* 1EA6F8 801DFE38 3C01800E */  lui   $at, 0x800e
/* 1EA6FC 801DFE3C 00230821 */  addu  $at, $at, $v1
/* 1EA700 801DFE40 4610003E */  c.le.s $f0, $f16
/* 1EA704 801DFE44 00000000 */  nop   
/* 1EA708 801DFE48 45000015 */  bc1f  .L801DFEA0_ovl11
/* 1EA70C 801DFE4C 00000000 */   nop   
/* 1EA710 801DFE50 E42233D0 */  swc1  $f2, 0x33d0($at)
/* 1EA714 801DFE54 8C480000 */  lw    $t0, ($v0)
/* 1EA718 801DFE58 3C01800E */  lui   $at, 0x800e
/* 1EA71C 801DFE5C 00084880 */  sll   $t1, $t0, 2
/* 1EA720 801DFE60 00290821 */  addu  $at, $at, $t1
/* 1EA724 801DFE64 03E00008 */  jr    $ra
/* 1EA728 801DFE68 E4223910 */   swc1  $f2, 0x3910($at)

.L801DFE6C_ovl11:
/* 1EA72C 801DFE6C C4322950 */  lwc1  $f18, 0x2950($at)
/* 1EA730 801DFE70 3C01800E */  lui   $at, 0x800e
/* 1EA734 801DFE74 00230821 */  addu  $at, $at, $v1
/* 1EA738 801DFE78 4600903E */  c.le.s $f18, $f0
/* 1EA73C 801DFE7C 00000000 */  nop   
/* 1EA740 801DFE80 45000007 */  bc1f  .L801DFEA0_ovl11
/* 1EA744 801DFE84 00000000 */   nop   
/* 1EA748 801DFE88 E42233D0 */  swc1  $f2, 0x33d0($at)
/* 1EA74C 801DFE8C 8C4A0000 */  lw    $t2, ($v0)
/* 1EA750 801DFE90 3C01800E */  lui   $at, 0x800e
/* 1EA754 801DFE94 000A5880 */  sll   $t3, $t2, 2
/* 1EA758 801DFE98 002B0821 */  addu  $at, $at, $t3
/* 1EA75C 801DFE9C E4223910 */  swc1  $f2, 0x3910($at)
.L801DFEA0_ovl11:
/* 1EA760 801DFEA0 03E00008 */  jr    $ra
/* 1EA764 801DFEA4 00000000 */   nop   
.size func_801DFD3C_ovl11, . - func_801DFD3C_ovl11

glabel func_801DFEA8_ovl11
/* 1EA768 801DFEA8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1EA76C 801DFEAC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1EA770 801DFEB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EA774 801DFEB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EA778 801DFEB8 8C620000 */  lw    $v0, ($v1)
/* 1EA77C 801DFEBC 3C01800E */  lui   $at, 0x800e
/* 1EA780 801DFEC0 44806000 */  mtc1  $zero, $f12
/* 1EA784 801DFEC4 00021080 */  sll   $v0, $v0, 2
/* 1EA788 801DFEC8 00220821 */  addu  $at, $at, $v0
/* 1EA78C 801DFECC C42409D0 */  lwc1  $f4, 0x9d0($at)
/* 1EA790 801DFED0 3C0A800E */  lui   $t2, %hi(D_800E3050) # $t2, 0x800e
/* 1EA794 801DFED4 254A3050 */  addiu $t2, %lo(D_800E3050) # addiu $t2, $t2, 0x3050
/* 1EA798 801DFED8 46046032 */  c.eq.s $f12, $f4
/* 1EA79C 801DFEDC 3C0D800F */  lui   $t5, %hi(D_800E9720) # $t5, 0x800f
/* 1EA7A0 801DFEE0 01427021 */  addu  $t6, $t2, $v0
/* 1EA7A4 801DFEE4 25AD9720 */  addiu $t5, %lo(D_800E9720) # addiu $t5, $t5, -0x68e0
/* 1EA7A8 801DFEE8 45030063 */  bc1tl .L801E0078_ovl11
/* 1EA7AC 801DFEEC 004D1821 */   addu  $v1, $v0, $t5
/* 1EA7B0 801DFEF0 44800000 */  mtc1  $zero, $f0
/* 1EA7B4 801DFEF4 C5C60000 */  lwc1  $f6, ($t6)
/* 1EA7B8 801DFEF8 3C0B800E */  lui   $t3, %hi(D_800E33D0) # $t3, 0x800e
/* 1EA7BC 801DFEFC 256B33D0 */  addiu $t3, %lo(D_800E33D0) # addiu $t3, $t3, 0x33d0
/* 1EA7C0 801DFF00 46060032 */  c.eq.s $f0, $f6
/* 1EA7C4 801DFF04 01627821 */  addu  $t7, $t3, $v0
/* 1EA7C8 801DFF08 45020068 */  bc1fl .L801E00AC_ovl11
/* 1EA7CC 801DFF0C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EA7D0 801DFF10 C5E80000 */  lwc1  $f8, ($t7)
/* 1EA7D4 801DFF14 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 1EA7D8 801DFF18 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 1EA7DC 801DFF1C 46080032 */  c.eq.s $f0, $f8
/* 1EA7E0 801DFF20 00C2C021 */  addu  $t8, $a2, $v0
/* 1EA7E4 801DFF24 45020061 */  bc1fl .L801E00AC_ovl11
/* 1EA7E8 801DFF28 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EA7EC 801DFF2C C70A0000 */  lwc1  $f10, ($t8)
/* 1EA7F0 801DFF30 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 1EA7F4 801DFF34 24E73750 */  addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 1EA7F8 801DFF38 460A0032 */  c.eq.s $f0, $f10
/* 1EA7FC 801DFF3C 00E2C821 */  addu  $t9, $a3, $v0
/* 1EA800 801DFF40 4502005A */  bc1fl .L801E00AC_ovl11
/* 1EA804 801DFF44 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EA808 801DFF48 C7300000 */  lwc1  $f16, ($t9)
/* 1EA80C 801DFF4C 3C08800E */  lui   $t0, %hi(D_800E3590) # $t0, 0x800e
/* 1EA810 801DFF50 25083590 */  addiu $t0, %lo(D_800E3590) # addiu $t0, $t0, 0x3590
/* 1EA814 801DFF54 46100032 */  c.eq.s $f0, $f16
/* 1EA818 801DFF58 01026021 */  addu  $t4, $t0, $v0
/* 1EA81C 801DFF5C 45020053 */  bc1fl .L801E00AC_ovl11
/* 1EA820 801DFF60 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EA824 801DFF64 C5920000 */  lwc1  $f18, ($t4)
/* 1EA828 801DFF68 3C09800E */  lui   $t1, %hi(D_800E3910) # $t1, 0x800e
/* 1EA82C 801DFF6C 25293910 */  addiu $t1, %lo(D_800E3910) # addiu $t1, $t1, 0x3910
/* 1EA830 801DFF70 46120032 */  c.eq.s $f0, $f18
/* 1EA834 801DFF74 01222021 */  addu  $a0, $t1, $v0
/* 1EA838 801DFF78 4502004C */  bc1fl .L801E00AC_ovl11
/* 1EA83C 801DFF7C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EA840 801DFF80 C4840000 */  lwc1  $f4, ($a0)
/* 1EA844 801DFF84 46040032 */  c.eq.s $f0, $f4
/* 1EA848 801DFF88 00000000 */  nop   
/* 1EA84C 801DFF8C 45020047 */  bc1fl .L801E00AC_ovl11
/* 1EA850 801DFF90 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EA854 801DFF94 E48C0000 */  swc1  $f12, ($a0)
/* 1EA858 801DFF98 8C620000 */  lw    $v0, ($v1)
/* 1EA85C 801DFF9C 3C01801E */  lui   $at, %hi(D_801E0C44) # $at, 0x801e
/* 1EA860 801DFFA0 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 1EA864 801DFFA4 00021080 */  sll   $v0, $v0, 2
/* 1EA868 801DFFA8 01226821 */  addu  $t5, $t1, $v0
/* 1EA86C 801DFFAC C5A00000 */  lwc1  $f0, ($t5)
/* 1EA870 801DFFB0 00E27021 */  addu  $t6, $a3, $v0
/* 1EA874 801DFFB4 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 1EA878 801DFFB8 E5C00000 */  swc1  $f0, ($t6)
/* 1EA87C 801DFFBC 8C6F0000 */  lw    $t7, ($v1)
/* 1EA880 801DFFC0 000FC080 */  sll   $t8, $t7, 2
/* 1EA884 801DFFC4 0118C821 */  addu  $t9, $t0, $t8
/* 1EA888 801DFFC8 E7200000 */  swc1  $f0, ($t9)
/* 1EA88C 801DFFCC 8C6C0000 */  lw    $t4, ($v1)
/* 1EA890 801DFFD0 000C6880 */  sll   $t5, $t4, 2
/* 1EA894 801DFFD4 016D7021 */  addu  $t6, $t3, $t5
/* 1EA898 801DFFD8 E5C00000 */  swc1  $f0, ($t6)
/* 1EA89C 801DFFDC 8C6F0000 */  lw    $t7, ($v1)
/* 1EA8A0 801DFFE0 000FC080 */  sll   $t8, $t7, 2
/* 1EA8A4 801DFFE4 00D8C821 */  addu  $t9, $a2, $t8
/* 1EA8A8 801DFFE8 E7200000 */  swc1  $f0, ($t9)
/* 1EA8AC 801DFFEC 8C6C0000 */  lw    $t4, ($v1)
/* 1EA8B0 801DFFF0 000C6880 */  sll   $t5, $t4, 2
/* 1EA8B4 801DFFF4 014D7021 */  addu  $t6, $t2, $t5
/* 1EA8B8 801DFFF8 E5C00000 */  swc1  $f0, ($t6)
/* 1EA8BC 801DFFFC 8C6F0000 */  lw    $t7, ($v1)
/* 1EA8C0 801E0000 C4260C44 */  lwc1  $f6, %lo(D_801E0C44)($at)
/* 1EA8C4 801E0004 3C01800E */  lui   $at, 0x800e
/* 1EA8C8 801E0008 000FC080 */  sll   $t8, $t7, 2
/* 1EA8CC 801E000C 00B8C821 */  addu  $t9, $a1, $t8
/* 1EA8D0 801E0010 E7260000 */  swc1  $f6, ($t9)
/* 1EA8D4 801E0014 8C620000 */  lw    $v0, ($v1)
/* 1EA8D8 801E0018 00021080 */  sll   $v0, $v0, 2
/* 1EA8DC 801E001C 00A26021 */  addu  $t4, $a1, $v0
/* 1EA8E0 801E0020 C5820000 */  lwc1  $f2, ($t4)
/* 1EA8E4 801E0024 00220821 */  addu  $at, $at, $v0
/* 1EA8E8 801E0028 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 1EA8EC 801E002C 8C6D0000 */  lw    $t5, ($v1)
/* 1EA8F0 801E0030 3C01800E */  lui   $at, 0x800e
/* 1EA8F4 801E0034 000D7080 */  sll   $t6, $t5, 2
/* 1EA8F8 801E0038 002E0821 */  addu  $at, $at, $t6
/* 1EA8FC 801E003C 0C02BB30 */  jal   func_800AECC0
/* 1EA900 801E0040 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 1EA904 801E0044 44806000 */  mtc1  $zero, $f12
/* 1EA908 801E0048 0C02BB48 */  jal   func_800AED20
/* 1EA90C 801E004C 00000000 */   nop   
/* 1EA910 801E0050 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1EA914 801E0054 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1EA918 801E0058 3C01800F */  lui   $at, 0x800f
/* 1EA91C 801E005C 240F001E */  li    $t7, 30
/* 1EA920 801E0060 8F190000 */  lw    $t9, ($t8)
/* 1EA924 801E0064 00196080 */  sll   $t4, $t9, 2
/* 1EA928 801E0068 002C0821 */  addu  $at, $at, $t4
/* 1EA92C 801E006C 1000000E */  b     .L801E00A8_ovl11
/* 1EA930 801E0070 AC2F9720 */   sw    $t7, -0x68e0($at)
/* 1EA934 801E0074 004D1821 */  addu  $v1, $v0, $t5
.L801E0078_ovl11:
/* 1EA938 801E0078 8C640000 */  lw    $a0, ($v1)
/* 1EA93C 801E007C 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 1EA940 801E0080 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 1EA944 801E0084 14800007 */  bnez  $a0, .L801E00A4_ovl11
/* 1EA948 801E0088 248EFFFF */   addiu $t6, $a0, -1
/* 1EA94C 801E008C 3C04800E */  lui   $a0, 0x800e
/* 1EA950 801E0090 00822021 */  addu  $a0, $a0, $v0
/* 1EA954 801E0094 0C02C7B2 */  jal   assign_new_process_entry
/* 1EA958 801E0098 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1EA95C 801E009C 10000003 */  b     .L801E00AC_ovl11
/* 1EA960 801E00A0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E00A4_ovl11:
/* 1EA964 801E00A4 AC6E0000 */  sw    $t6, ($v1)
.L801E00A8_ovl11:
/* 1EA968 801E00A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E00AC_ovl11:
/* 1EA96C 801E00AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EA970 801E00B0 03E00008 */  jr    $ra
/* 1EA974 801E00B4 00000000 */   nop   
.size func_801DFEA8_ovl11, . - func_801DFEA8_ovl11

glabel func_801E00B8_ovl11
/* 1EA978 801E00B8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1EA97C 801E00BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1EA980 801E00C0 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 1EA984 801E00C4 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 1EA988 801E00C8 8DC20000 */  lw    $v0, ($t6)
/* 1EA98C 801E00CC 3C07800E */  lui   $a3, %hi(gEntitiesNextPosXArray) # $a3, 0x800e
/* 1EA990 801E00D0 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 1EA994 801E00D4 00042880 */  sll   $a1, $a0, 2
/* 1EA998 801E00D8 00021080 */  sll   $v0, $v0, 2
/* 1EA99C 801E00DC 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 1EA9A0 801E00E0 24E725D0 */  addiu $a3, %lo(gEntitiesNextPosXArray) # addiu $a3, $a3, 0x25d0
/* 1EA9A4 801E00E4 00C27821 */  addu  $t7, $a2, $v0
/* 1EA9A8 801E00E8 00C5C021 */  addu  $t8, $a2, $a1
/* 1EA9AC 801E00EC C7060000 */  lwc1  $f6, ($t8)
/* 1EA9B0 801E00F0 C5E40000 */  lwc1  $f4, ($t7)
/* 1EA9B4 801E00F4 01055021 */  addu  $t2, $t0, $a1
/* 1EA9B8 801E00F8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1EA9BC 801E00FC 44819000 */  mtc1  $at, $f18
/* 1EA9C0 801E0100 C5500000 */  lwc1  $f16, ($t2)
/* 1EA9C4 801E0104 00E2C821 */  addu  $t9, $a3, $v0
/* 1EA9C8 801E0108 00E54821 */  addu  $t1, $a3, $a1
/* 1EA9CC 801E010C C52A0000 */  lwc1  $f10, ($t1)
/* 1EA9D0 801E0110 C7280000 */  lwc1  $f8, ($t9)
/* 1EA9D4 801E0114 46062081 */  sub.s $f2, $f4, $f6
/* 1EA9D8 801E0118 01025821 */  addu  $t3, $t0, $v0
/* 1EA9DC 801E011C C5660000 */  lwc1  $f6, ($t3)
/* 1EA9E0 801E0120 46128100 */  add.s $f4, $f16, $f18
/* 1EA9E4 801E0124 3C0144C8 */  li    $at, 0x44C80000 # 1600.000000
/* 1EA9E8 801E0128 00001825 */  move  $v1, $zero
/* 1EA9EC 801E012C 460A4301 */  sub.s $f12, $f8, $f10
/* 1EA9F0 801E0130 46043381 */  sub.s $f14, $f6, $f4
/* 1EA9F4 801E0134 460C6202 */  mul.s $f8, $f12, $f12
/* 1EA9F8 801E0138 44813000 */  mtc1  $at, $f6
/* 1EA9FC 801E013C 460E7282 */  mul.s $f10, $f14, $f14
/* 1EAA00 801E0140 460A4400 */  add.s $f16, $f8, $f10
/* 1EAA04 801E0144 46021482 */  mul.s $f18, $f2, $f2
/* 1EAA08 801E0148 46109000 */  add.s $f0, $f18, $f16
/* 1EAA0C 801E014C 4606003E */  c.le.s $f0, $f6
/* 1EAA10 801E0150 00000000 */  nop   
/* 1EAA14 801E0154 45000002 */  bc1f  .L801E0160_ovl11
/* 1EAA18 801E0158 00000000 */   nop   
/* 1EAA1C 801E015C 24030001 */  li    $v1, 1
.L801E0160_ovl11:
/* 1EAA20 801E0160 03E00008 */  jr    $ra
/* 1EAA24 801E0164 00601025 */   move  $v0, $v1
.size func_801E00B8_ovl11, . - func_801E00B8_ovl11

glabel func_801E0168_ovl11
/* 1EAA28 801E0168 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1EAA2C 801E016C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1EAA30 801E0170 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1EAA34 801E0174 AFBF002C */  sw    $ra, 0x2c($sp)
/* 1EAA38 801E0178 AFB40028 */  sw    $s4, 0x28($sp)
/* 1EAA3C 801E017C AFB30024 */  sw    $s3, 0x24($sp)
/* 1EAA40 801E0180 AFB20020 */  sw    $s2, 0x20($sp)
/* 1EAA44 801E0184 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1EAA48 801E0188 AFB00018 */  sw    $s0, 0x18($sp)
/* 1EAA4C 801E018C 8DCF0000 */  lw    $t7, ($t6)
/* 1EAA50 801E0190 3C01800E */  lui   $at, 0x800e
/* 1EAA54 801E0194 44802000 */  mtc1  $zero, $f4
/* 1EAA58 801E0198 000FC080 */  sll   $t8, $t7, 2
/* 1EAA5C 801E019C 00380821 */  addu  $at, $at, $t8
/* 1EAA60 801E01A0 C42609D0 */  lwc1  $f6, 0x9d0($at)
/* 1EAA64 801E01A4 3C11800E */  lui   $s1, %hi(D_800DE3C8) # $s1, 0x800e
/* 1EAA68 801E01A8 3C13800E */  lui   $s3, %hi(D_800E7880) # $s3, 0x800e
/* 1EAA6C 801E01AC 46062032 */  c.eq.s $f4, $f6
/* 1EAA70 801E01B0 26737880 */  addiu $s3, %lo(D_800E7880) # addiu $s3, $s3, 0x7880
/* 1EAA74 801E01B4 2631E3C8 */  addiu $s1, %lo(D_800DE3C8) # addiu $s1, $s1, -0x1c38
/* 1EAA78 801E01B8 2410001E */  li    $s0, 30
/* 1EAA7C 801E01BC 4500001B */  bc1f  .L801E022C_ovl11
/* 1EAA80 801E01C0 2414003C */   li    $s4, 60
/* 1EAA84 801E01C4 24120002 */  li    $s2, 2
.L801E01C8_ovl11:
/* 1EAA88 801E01C8 8E390000 */  lw    $t9, ($s1)
/* 1EAA8C 801E01CC 02704021 */  addu  $t0, $s3, $s0
/* 1EAA90 801E01D0 53200014 */  beql  $t9, $zero, .L801E0224_ovl11
/* 1EAA94 801E01D4 26100001 */   addiu $s0, $s0, 1
/* 1EAA98 801E01D8 91090000 */  lbu   $t1, ($t0)
/* 1EAA9C 801E01DC 56490011 */  bnel  $s2, $t1, .L801E0224_ovl11
/* 1EAAA0 801E01E0 26100001 */   addiu $s0, $s0, 1
/* 1EAAA4 801E01E4 0C07802E */  jal   func_801E00B8_ovl11
/* 1EAAA8 801E01E8 02002025 */   move  $a0, $s0
/* 1EAAAC 801E01EC 1040000C */  beqz  $v0, .L801E0220_ovl11
/* 1EAAB0 801E01F0 3C0A8005 */   lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1EAAB4 801E01F4 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1EAAB8 801E01F8 3C04800E */  lui   $a0, 0x800e
/* 1EAABC 801E01FC 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 1EAAC0 801E0200 8D4B0000 */  lw    $t3, ($t2)
/* 1EAAC4 801E0204 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 1EAAC8 801E0208 000B6080 */  sll   $t4, $t3, 2
/* 1EAACC 801E020C 008C2021 */  addu  $a0, $a0, $t4
/* 1EAAD0 801E0210 0C02C7B2 */  jal   assign_new_process_entry
/* 1EAAD4 801E0214 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1EAAD8 801E0218 10000005 */  b     .L801E0230_ovl11
/* 1EAADC 801E021C 8FBF002C */   lw    $ra, 0x2c($sp)
.L801E0220_ovl11:
/* 1EAAE0 801E0220 26100001 */  addiu $s0, $s0, 1
.L801E0224_ovl11:
/* 1EAAE4 801E0224 1614FFE8 */  bne   $s0, $s4, .L801E01C8_ovl11
/* 1EAAE8 801E0228 26310004 */   addiu $s1, $s1, 4
.L801E022C_ovl11:
/* 1EAAEC 801E022C 8FBF002C */  lw    $ra, 0x2c($sp)
.L801E0230_ovl11:
/* 1EAAF0 801E0230 8FB00018 */  lw    $s0, 0x18($sp)
/* 1EAAF4 801E0234 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1EAAF8 801E0238 8FB20020 */  lw    $s2, 0x20($sp)
/* 1EAAFC 801E023C 8FB30024 */  lw    $s3, 0x24($sp)
/* 1EAB00 801E0240 8FB40028 */  lw    $s4, 0x28($sp)
/* 1EAB04 801E0244 03E00008 */  jr    $ra
/* 1EAB08 801E0248 27BD0030 */   addiu $sp, $sp, 0x30
.size func_801E0168_ovl11, . - func_801E0168_ovl11

glabel func_801E024C_ovl11
/* 1EAB0C 801E024C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EAB10 801E0250 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EAB14 801E0254 0C06835D */  jal   func_801A0D74_ovl11
/* 1EAB18 801E0258 00000000 */   nop   
/* 1EAB1C 801E025C 0C077F4F */  jal   func_801DFD3C_ovl11
/* 1EAB20 801E0260 00000000 */   nop   
/* 1EAB24 801E0264 0C077FAA */  jal   func_801DFEA8_ovl11
/* 1EAB28 801E0268 00000000 */   nop   
/* 1EAB2C 801E026C 0C07805A */  jal   func_801E0168_ovl11
/* 1EAB30 801E0270 00000000 */   nop   
/* 1EAB34 801E0274 0C0680ED */  jal   func_801A03B4_ovl11
/* 1EAB38 801E0278 00000000 */   nop   
/* 1EAB3C 801E027C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1EAB40 801E0280 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EAB44 801E0284 03E00008 */  jr    $ra
/* 1EAB48 801E0288 00000000 */   nop   
.size func_801E024C_ovl11, . - func_801E024C_ovl11

glabel func_801E028C_ovl11
/* 1EAB4C 801E028C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EAB50 801E0290 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EAB54 801E0294 AFA40000 */  sw    $a0, ($sp)
/* 1EAB58 801E0298 3C01800F */  lui   $at, 0x800f
/* 1EAB5C 801E029C 8C4E0000 */  lw    $t6, ($v0)
/* 1EAB60 801E02A0 44800000 */  mtc1  $zero, $f0
/* 1EAB64 801E02A4 000E7880 */  sll   $t7, $t6, 2
/* 1EAB68 801E02A8 002F0821 */  addu  $at, $at, $t7
/* 1EAB6C 801E02AC AC208920 */  sw    $zero, -0x76e0($at)
/* 1EAB70 801E02B0 8C430000 */  lw    $v1, ($v0)
/* 1EAB74 801E02B4 3C01800E */  lui   $at, 0x800e
/* 1EAB78 801E02B8 00031880 */  sll   $v1, $v1, 2
/* 1EAB7C 801E02BC 00230821 */  addu  $at, $at, $v1
/* 1EAB80 801E02C0 C4243050 */  lwc1  $f4, 0x3050($at)
/* 1EAB84 801E02C4 3C01800E */  lui   $at, 0x800e
/* 1EAB88 801E02C8 00230821 */  addu  $at, $at, $v1
/* 1EAB8C 801E02CC 46040032 */  c.eq.s $f0, $f4
/* 1EAB90 801E02D0 00000000 */  nop   
/* 1EAB94 801E02D4 45000028 */  bc1f  .L801E0378_ovl11
/* 1EAB98 801E02D8 00000000 */   nop   
/* 1EAB9C 801E02DC C42633D0 */  lwc1  $f6, 0x33d0($at)
/* 1EABA0 801E02E0 3C01800E */  lui   $at, 0x800e
/* 1EABA4 801E02E4 00230821 */  addu  $at, $at, $v1
/* 1EABA8 801E02E8 46060032 */  c.eq.s $f0, $f6
/* 1EABAC 801E02EC 00000000 */  nop   
/* 1EABB0 801E02F0 45000021 */  bc1f  .L801E0378_ovl11
/* 1EABB4 801E02F4 00000000 */   nop   
/* 1EABB8 801E02F8 C4283590 */  lwc1  $f8, 0x3590($at)
/* 1EABBC 801E02FC 3C01800E */  lui   $at, 0x800e
/* 1EABC0 801E0300 00230821 */  addu  $at, $at, $v1
/* 1EABC4 801E0304 46080032 */  c.eq.s $f0, $f8
/* 1EABC8 801E0308 00000000 */  nop   
/* 1EABCC 801E030C 4500001A */  bc1f  .L801E0378_ovl11
/* 1EABD0 801E0310 00000000 */   nop   
/* 1EABD4 801E0314 C42A3910 */  lwc1  $f10, 0x3910($at)
/* 1EABD8 801E0318 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 1EABDC 801E031C 460A0032 */  c.eq.s $f0, $f10
/* 1EABE0 801E0320 00000000 */  nop   
/* 1EABE4 801E0324 45000014 */  bc1f  .L801E0378_ovl11
/* 1EABE8 801E0328 00000000 */   nop   
/* 1EABEC 801E032C 44808000 */  mtc1  $zero, $f16
/* 1EABF0 801E0330 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 1EABF4 801E0334 0083C021 */  addu  $t8, $a0, $v1
/* 1EABF8 801E0338 E7100000 */  swc1  $f16, ($t8)
/* 1EABFC 801E033C 8C430000 */  lw    $v1, ($v0)
/* 1EAC00 801E0340 3C01800E */  lui   $at, 0x800e
/* 1EAC04 801E0344 00031880 */  sll   $v1, $v1, 2
/* 1EAC08 801E0348 0083C821 */  addu  $t9, $a0, $v1
/* 1EAC0C 801E034C C7320000 */  lwc1  $f18, ($t9)
/* 1EAC10 801E0350 00230821 */  addu  $at, $at, $v1
/* 1EAC14 801E0354 E4323210 */  swc1  $f18, 0x3210($at)
/* 1EAC18 801E0358 8C480000 */  lw    $t0, ($v0)
/* 1EAC1C 801E035C 3C01801E */  lui   $at, %hi(D_801E0C48) # $at, 0x801e
/* 1EAC20 801E0360 C4240C48 */  lwc1  $f4, %lo(D_801E0C48)($at)
/* 1EAC24 801E0364 3C01800E */  lui   $at, 0x800e
/* 1EAC28 801E0368 00084880 */  sll   $t1, $t0, 2
/* 1EAC2C 801E036C 00290821 */  addu  $at, $at, $t1
/* 1EAC30 801E0370 03E00008 */  jr    $ra
/* 1EAC34 801E0374 E4243C90 */   swc1  $f4, 0x3c90($at)
.L801E0378_ovl11:
/* 1EAC38 801E0378 3C0A800E */  lui   $t2, %hi(D_800E3210) # $t2, 0x800e
/* 1EAC3C 801E037C 254A3210 */  addiu $t2, %lo(D_800E3210) # addiu $t2, $t2, 0x3210
/* 1EAC40 801E0380 006A1021 */  addu  $v0, $v1, $t2
/* 1EAC44 801E0384 C4460000 */  lwc1  $f6, ($v0)
/* 1EAC48 801E0388 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 1EAC4C 801E038C 44815000 */  mtc1  $at, $f10
/* 1EAC50 801E0390 46003207 */  neg.s $f8, $f6
/* 1EAC54 801E0394 460A4402 */  mul.s $f16, $f8, $f10
/* 1EAC58 801E0398 E4500000 */  swc1  $f16, ($v0)
/* 1EAC5C 801E039C 03E00008 */  jr    $ra
/* 1EAC60 801E03A0 00000000 */   nop   
.size func_801E028C_ovl11, . - func_801E028C_ovl11

glabel func_801E03A4_ovl11
/* 1EAC64 801E03A4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1EAC68 801E03A8 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1EAC6C 801E03AC 8D020000 */  lw    $v0, ($t0)
/* 1EAC70 801E03B0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1EAC74 801E03B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EAC78 801E03B8 AFA40048 */  sw    $a0, 0x48($sp)
/* 1EAC7C 801E03BC 8C430000 */  lw    $v1, ($v0)
/* 1EAC80 801E03C0 3C01800F */  lui   $at, 0x800f
/* 1EAC84 801E03C4 3C07800E */  lui   $a3, 0x800e
/* 1EAC88 801E03C8 00031880 */  sll   $v1, $v1, 2
/* 1EAC8C 801E03CC 00230821 */  addu  $at, $at, $v1
/* 1EAC90 801E03D0 AC209C60 */  sw    $zero, -0x63a0($at)
/* 1EAC94 801E03D4 8C4F0000 */  lw    $t7, ($v0)
/* 1EAC98 801E03D8 00E33821 */  addu  $a3, $a3, $v1
/* 1EAC9C 801E03DC 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 1EACA0 801E03E0 3C01800E */  lui   $at, 0x800e
/* 1EACA4 801E03E4 3C0E801E */  lui   $t6, %hi(D_801E098C) # $t6, 0x801e
/* 1EACA8 801E03E8 000FC080 */  sll   $t8, $t7, 2
/* 1EACAC 801E03EC 00380821 */  addu  $at, $at, $t8
/* 1EACB0 801E03F0 25CE098C */  addiu $t6, %lo(D_801E098C) # addiu $t6, $t6, 0x98c
/* 1EACB4 801E03F4 3C19801E */  lui   $t9, %hi(D_801DAFA8) # $t9, 0x801e
/* 1EACB8 801E03F8 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 1EACBC 801E03FC 2739AFA8 */  addiu $t9, %lo(D_801DAFA8) # addiu $t9, $t9, -0x5058
/* 1EACC0 801E0400 ACF90098 */  sw    $t9, 0x98($a3)
/* 1EACC4 801E0404 8D020000 */  lw    $v0, ($t0)
/* 1EACC8 801E0408 3C01800E */  lui   $at, 0x800e
/* 1EACCC 801E040C 3C09801D */  lui   $t1, %hi(D_801D1094) # $t1, 0x801d
/* 1EACD0 801E0410 8C4A0000 */  lw    $t2, ($v0)
/* 1EACD4 801E0414 25291094 */  addiu $t1, %lo(D_801D1094) # addiu $t1, $t1, 0x1094
/* 1EACD8 801E0418 3C040001 */  lui   $a0, (0x0001009B >> 16) # lui $a0, 1
/* 1EACDC 801E041C 000A5880 */  sll   $t3, $t2, 2
/* 1EACE0 801E0420 002B0821 */  addu  $at, $at, $t3
/* 1EACE4 801E0424 AC29EF90 */  sw    $t1, -0x1070($at)
/* 1EACE8 801E0428 8C4C0000 */  lw    $t4, ($v0)
/* 1EACEC 801E042C 3C01800F */  lui   $at, 0x800f
/* 1EACF0 801E0430 3484009B */  ori   $a0, (0x0001009B & 0xFFFF) # ori $a0, $a0, 0x9b
/* 1EACF4 801E0434 000C6880 */  sll   $t5, $t4, 2
/* 1EACF8 801E0438 002D0821 */  addu  $at, $at, $t5
/* 1EACFC 801E043C AC208920 */  sw    $zero, -0x76e0($at)
/* 1EAD00 801E0440 24050023 */  li    $a1, 35
/* 1EAD04 801E0444 0C02A619 */  jal   func_800A9864
/* 1EAD08 801E0448 24060010 */   li    $a2, 16
/* 1EAD0C 801E044C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1EAD10 801E0450 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1EAD14 801E0454 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1EAD18 801E0458 44812000 */  mtc1  $at, $f4
/* 1EAD1C 801E045C 8DE30000 */  lw    $v1, ($t7)
/* 1EAD20 801E0460 3C01800E */  lui   $at, 0x800e
/* 1EAD24 801E0464 3C0E800F */  lui   $t6, 0x800f
/* 1EAD28 801E0468 00031880 */  sll   $v1, $v1, 2
/* 1EAD2C 801E046C 00230821 */  addu  $at, $at, $v1
/* 1EAD30 801E0470 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 1EAD34 801E0474 3C19800F */  lui   $t9, 0x800f
/* 1EAD38 801E0478 01C37021 */  addu  $t6, $t6, $v1
/* 1EAD3C 801E047C 46062032 */  c.eq.s $f4, $f6
/* 1EAD40 801E0480 0323C821 */  addu  $t9, $t9, $v1
/* 1EAD44 801E0484 4500000F */  bc1f  .L801E04C4_ovl11
/* 1EAD48 801E0488 00000000 */   nop   
/* 1EAD4C 801E048C 8DCE93A0 */  lw    $t6, -0x6c60($t6)
/* 1EAD50 801E0490 3C040001 */  lui   $a0, 1
/* 1EAD54 801E0494 31D80002 */  andi  $t8, $t6, 2
/* 1EAD58 801E0498 13000006 */  beqz  $t8, .L801E04B4_ovl11
/* 1EAD5C 801E049C 00000000 */   nop   
/* 1EAD60 801E04A0 3C040001 */  lui   $a0, (0x0001054A >> 16) # lui $a0, 1
/* 1EAD64 801E04A4 0C02A806 */  jal   func_800AA018
/* 1EAD68 801E04A8 3484054B */   ori   $a0, (0x0001054B & 0xFFFF) # ori $a0, $a0, 0x54b
/* 1EAD6C 801E04AC 10000011 */  b     .L801E04F4_ovl11
/* 1EAD70 801E04B0 00000000 */   nop   
.L801E04B4_ovl11:
/* 1EAD74 801E04B4 0C02A806 */  jal   func_800AA018
/* 1EAD78 801E04B8 3484054A */   ori   $a0, (0x0001054A & 0xFFFF) # ori $a0, $a0, 0x54a
/* 1EAD7C 801E04BC 1000000D */  b     .L801E04F4_ovl11
/* 1EAD80 801E04C0 00000000 */   nop   
.L801E04C4_ovl11:
/* 1EAD84 801E04C4 8F3993A0 */  lw    $t9, -0x6c60($t9)
/* 1EAD88 801E04C8 3C040001 */  lui   $a0, 1
/* 1EAD8C 801E04CC 332A0002 */  andi  $t2, $t9, 2
/* 1EAD90 801E04D0 11400006 */  beqz  $t2, .L801E04EC_ovl11
/* 1EAD94 801E04D4 00000000 */   nop   
/* 1EAD98 801E04D8 3C040001 */  lui   $a0, (0x0001054B >> 16) # lui $a0, 1
/* 1EAD9C 801E04DC 0C02A806 */  jal   func_800AA018
/* 1EADA0 801E04E0 3484054A */   ori   $a0, (0x0001054A & 0xFFFF) # ori $a0, $a0, 0x54a
/* 1EADA4 801E04E4 10000003 */  b     .L801E04F4_ovl11
/* 1EADA8 801E04E8 00000000 */   nop   
.L801E04EC_ovl11:
/* 1EADAC 801E04EC 0C02A806 */  jal   func_800AA018
/* 1EADB0 801E04F0 3484054B */   ori   $a0, (0x0001054B & 0xFFFF) # ori $a0, $a0, 0x54b
.L801E04F4_ovl11:
/* 1EADB4 801E04F4 0C066E6C */  jal   func_8019B9B0_ovl11
/* 1EADB8 801E04F8 00000000 */   nop   
/* 1EADBC 801E04FC 44800000 */  mtc1  $zero, $f0
/* 1EADC0 801E0500 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1EADC4 801E0504 44814000 */  mtc1  $at, $f8
/* 1EADC8 801E0508 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1EADCC 801E050C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1EADD0 801E0510 E7A0003C */  swc1  $f0, 0x3c($sp)
/* 1EADD4 801E0514 E7A00038 */  swc1  $f0, 0x38($sp)
/* 1EADD8 801E0518 E7A80040 */  swc1  $f8, 0x40($sp)
/* 1EADDC 801E051C 8D2B0000 */  lw    $t3, ($t1)
/* 1EADE0 801E0520 3C06800E */  lui   $a2, 0x800e
/* 1EADE4 801E0524 27A40038 */  addiu $a0, $sp, 0x38
/* 1EADE8 801E0528 000B6080 */  sll   $t4, $t3, 2
/* 1EADEC 801E052C 00CC3021 */  addu  $a2, $a2, $t4
/* 1EADF0 801E0530 8CC641D0 */  lw    $a2, 0x41d0($a2)
/* 1EADF4 801E0534 0C006424 */  jal   lbvector_Rotate
/* 1EADF8 801E0538 24050002 */   li    $a1, 2
/* 1EADFC 801E053C 3C0143A0 */  li    $at, 0x43A00000 # 320.000000
/* 1EAE00 801E0540 44810000 */  mtc1  $at, $f0
/* 1EAE04 801E0544 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 1EAE08 801E0548 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EAE0C 801E054C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EAE10 801E0550 460A0402 */  mul.s $f16, $f0, $f10
/* 1EAE14 801E0554 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 1EAE18 801E0558 8C4D0000 */  lw    $t5, ($v0)
/* 1EAE1C 801E055C 3C014060 */  li    $at, 0x40600000 # 3.500000
/* 1EAE20 801E0560 44811000 */  mtc1  $at, $f2
/* 1EAE24 801E0564 3C01800F */  lui   $at, 0x800f
/* 1EAE28 801E0568 000D7880 */  sll   $t7, $t5, 2
/* 1EAE2C 801E056C 46120102 */  mul.s $f4, $f0, $f18
/* 1EAE30 801E0570 002F0821 */  addu  $at, $at, $t7
/* 1EAE34 801E0574 E430B320 */  swc1  $f16, -0x4ce0($at)
/* 1EAE38 801E0578 8C4E0000 */  lw    $t6, ($v0)
/* 1EAE3C 801E057C C7A60038 */  lwc1  $f6, 0x38($sp)
/* 1EAE40 801E0580 3C01800F */  lui   $at, 0x800f
/* 1EAE44 801E0584 000EC080 */  sll   $t8, $t6, 2
/* 1EAE48 801E0588 46061202 */  mul.s $f8, $f2, $f6
/* 1EAE4C 801E058C 00380821 */  addu  $at, $at, $t8
/* 1EAE50 801E0590 E424B160 */  swc1  $f4, -0x4ea0($at)
/* 1EAE54 801E0594 8C590000 */  lw    $t9, ($v0)
/* 1EAE58 801E0598 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 1EAE5C 801E059C 3C01800E */  lui   $at, 0x800e
/* 1EAE60 801E05A0 00195080 */  sll   $t2, $t9, 2
/* 1EAE64 801E05A4 460A1402 */  mul.s $f16, $f2, $f10
/* 1EAE68 801E05A8 002A0821 */  addu  $at, $at, $t2
/* 1EAE6C 801E05AC E4283050 */  swc1  $f8, 0x3050($at)
/* 1EAE70 801E05B0 8C490000 */  lw    $t1, ($v0)
/* 1EAE74 801E05B4 3C01800E */  lui   $at, 0x800e
/* 1EAE78 801E05B8 00095880 */  sll   $t3, $t1, 2
/* 1EAE7C 801E05BC 002B0821 */  addu  $at, $at, $t3
/* 1EAE80 801E05C0 E43033D0 */  swc1  $f16, 0x33d0($at)
/* 1EAE84 801E05C4 8C4C0000 */  lw    $t4, ($v0)
/* 1EAE88 801E05C8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1EAE8C 801E05CC 44819000 */  mtc1  $at, $f18
/* 1EAE90 801E05D0 3C01800E */  lui   $at, 0x800e
/* 1EAE94 801E05D4 000C6880 */  sll   $t5, $t4, 2
/* 1EAE98 801E05D8 002D0821 */  addu  $at, $at, $t5
/* 1EAE9C 801E05DC E4323210 */  swc1  $f18, 0x3210($at)
/* 1EAEA0 801E05E0 8C4F0000 */  lw    $t7, ($v0)
/* 1EAEA4 801E05E4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1EAEA8 801E05E8 44812000 */  mtc1  $at, $f4
/* 1EAEAC 801E05EC 3C01800E */  lui   $at, 0x800e
/* 1EAEB0 801E05F0 000F7080 */  sll   $t6, $t7, 2
/* 1EAEB4 801E05F4 002E0821 */  addu  $at, $at, $t6
/* 1EAEB8 801E05F8 0C02BE85 */  jal   func_800AFA14
/* 1EAEBC 801E05FC E4243750 */   swc1  $f4, 0x3750($at)
/* 1EAEC0 801E0600 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1EAEC4 801E0604 27BD0048 */  addiu $sp, $sp, 0x48
/* 1EAEC8 801E0608 03E00008 */  jr    $ra
/* 1EAECC 801E060C 00000000 */   nop   
.size func_801E03A4_ovl11, . - func_801E03A4_ovl11

glabel func_801E0610_ovl11
/* 1EAED0 801E0610 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1EAED4 801E0614 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1EAED8 801E0618 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EAEDC 801E061C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EAEE0 801E0620 8C620000 */  lw    $v0, ($v1)
/* 1EAEE4 801E0624 3C01800E */  lui   $at, 0x800e
/* 1EAEE8 801E0628 44806000 */  mtc1  $zero, $f12
/* 1EAEEC 801E062C 00021080 */  sll   $v0, $v0, 2
/* 1EAEF0 801E0630 00220821 */  addu  $at, $at, $v0
/* 1EAEF4 801E0634 C42409D0 */  lwc1  $f4, 0x9d0($at)
/* 1EAEF8 801E0638 3C0A800E */  lui   $t2, %hi(D_800E3050) # $t2, 0x800e
/* 1EAEFC 801E063C 254A3050 */  addiu $t2, %lo(D_800E3050) # addiu $t2, $t2, 0x3050
/* 1EAF00 801E0640 46046032 */  c.eq.s $f12, $f4
/* 1EAF04 801E0644 3C0D800F */  lui   $t5, %hi(D_800E9720) # $t5, 0x800f
/* 1EAF08 801E0648 01427021 */  addu  $t6, $t2, $v0
/* 1EAF0C 801E064C 25AD9720 */  addiu $t5, %lo(D_800E9720) # addiu $t5, $t5, -0x68e0
/* 1EAF10 801E0650 45030063 */  bc1tl .L801E07E0_ovl11
/* 1EAF14 801E0654 004D1821 */   addu  $v1, $v0, $t5
/* 1EAF18 801E0658 44800000 */  mtc1  $zero, $f0
/* 1EAF1C 801E065C C5C60000 */  lwc1  $f6, ($t6)
/* 1EAF20 801E0660 3C0B800E */  lui   $t3, %hi(D_800E33D0) # $t3, 0x800e
/* 1EAF24 801E0664 256B33D0 */  addiu $t3, %lo(D_800E33D0) # addiu $t3, $t3, 0x33d0
/* 1EAF28 801E0668 46060032 */  c.eq.s $f0, $f6
/* 1EAF2C 801E066C 01627821 */  addu  $t7, $t3, $v0
/* 1EAF30 801E0670 45020068 */  bc1fl .L801E0814_ovl11
/* 1EAF34 801E0674 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EAF38 801E0678 C5E80000 */  lwc1  $f8, ($t7)
/* 1EAF3C 801E067C 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 1EAF40 801E0680 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 1EAF44 801E0684 46080032 */  c.eq.s $f0, $f8
/* 1EAF48 801E0688 00C2C021 */  addu  $t8, $a2, $v0
/* 1EAF4C 801E068C 45020061 */  bc1fl .L801E0814_ovl11
/* 1EAF50 801E0690 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EAF54 801E0694 C70A0000 */  lwc1  $f10, ($t8)
/* 1EAF58 801E0698 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 1EAF5C 801E069C 24E73750 */  addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 1EAF60 801E06A0 460A0032 */  c.eq.s $f0, $f10
/* 1EAF64 801E06A4 00E2C821 */  addu  $t9, $a3, $v0
/* 1EAF68 801E06A8 4502005A */  bc1fl .L801E0814_ovl11
/* 1EAF6C 801E06AC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EAF70 801E06B0 C7300000 */  lwc1  $f16, ($t9)
/* 1EAF74 801E06B4 3C08800E */  lui   $t0, %hi(D_800E3590) # $t0, 0x800e
/* 1EAF78 801E06B8 25083590 */  addiu $t0, %lo(D_800E3590) # addiu $t0, $t0, 0x3590
/* 1EAF7C 801E06BC 46100032 */  c.eq.s $f0, $f16
/* 1EAF80 801E06C0 01026021 */  addu  $t4, $t0, $v0
/* 1EAF84 801E06C4 45020053 */  bc1fl .L801E0814_ovl11
/* 1EAF88 801E06C8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EAF8C 801E06CC C5920000 */  lwc1  $f18, ($t4)
/* 1EAF90 801E06D0 3C09800E */  lui   $t1, %hi(D_800E3910) # $t1, 0x800e
/* 1EAF94 801E06D4 25293910 */  addiu $t1, %lo(D_800E3910) # addiu $t1, $t1, 0x3910
/* 1EAF98 801E06D8 46120032 */  c.eq.s $f0, $f18
/* 1EAF9C 801E06DC 01222021 */  addu  $a0, $t1, $v0
/* 1EAFA0 801E06E0 4502004C */  bc1fl .L801E0814_ovl11
/* 1EAFA4 801E06E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EAFA8 801E06E8 C4840000 */  lwc1  $f4, ($a0)
/* 1EAFAC 801E06EC 46040032 */  c.eq.s $f0, $f4
/* 1EAFB0 801E06F0 00000000 */  nop   
/* 1EAFB4 801E06F4 45020047 */  bc1fl .L801E0814_ovl11
/* 1EAFB8 801E06F8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1EAFBC 801E06FC E48C0000 */  swc1  $f12, ($a0)
/* 1EAFC0 801E0700 8C620000 */  lw    $v0, ($v1)
/* 1EAFC4 801E0704 3C01801E */  lui   $at, %hi(D_801E0C4C) # $at, 0x801e
/* 1EAFC8 801E0708 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 1EAFCC 801E070C 00021080 */  sll   $v0, $v0, 2
/* 1EAFD0 801E0710 01226821 */  addu  $t5, $t1, $v0
/* 1EAFD4 801E0714 C5A00000 */  lwc1  $f0, ($t5)
/* 1EAFD8 801E0718 00E27021 */  addu  $t6, $a3, $v0
/* 1EAFDC 801E071C 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 1EAFE0 801E0720 E5C00000 */  swc1  $f0, ($t6)
/* 1EAFE4 801E0724 8C6F0000 */  lw    $t7, ($v1)
/* 1EAFE8 801E0728 000FC080 */  sll   $t8, $t7, 2
/* 1EAFEC 801E072C 0118C821 */  addu  $t9, $t0, $t8
/* 1EAFF0 801E0730 E7200000 */  swc1  $f0, ($t9)
/* 1EAFF4 801E0734 8C6C0000 */  lw    $t4, ($v1)
/* 1EAFF8 801E0738 000C6880 */  sll   $t5, $t4, 2
/* 1EAFFC 801E073C 016D7021 */  addu  $t6, $t3, $t5
/* 1EB000 801E0740 E5C00000 */  swc1  $f0, ($t6)
/* 1EB004 801E0744 8C6F0000 */  lw    $t7, ($v1)
/* 1EB008 801E0748 000FC080 */  sll   $t8, $t7, 2
/* 1EB00C 801E074C 00D8C821 */  addu  $t9, $a2, $t8
/* 1EB010 801E0750 E7200000 */  swc1  $f0, ($t9)
/* 1EB014 801E0754 8C6C0000 */  lw    $t4, ($v1)
/* 1EB018 801E0758 000C6880 */  sll   $t5, $t4, 2
/* 1EB01C 801E075C 014D7021 */  addu  $t6, $t2, $t5
/* 1EB020 801E0760 E5C00000 */  swc1  $f0, ($t6)
/* 1EB024 801E0764 8C6F0000 */  lw    $t7, ($v1)
/* 1EB028 801E0768 C4260C4C */  lwc1  $f6, %lo(D_801E0C4C)($at)
/* 1EB02C 801E076C 3C01800E */  lui   $at, 0x800e
/* 1EB030 801E0770 000FC080 */  sll   $t8, $t7, 2
/* 1EB034 801E0774 00B8C821 */  addu  $t9, $a1, $t8
/* 1EB038 801E0778 E7260000 */  swc1  $f6, ($t9)
/* 1EB03C 801E077C 8C620000 */  lw    $v0, ($v1)
/* 1EB040 801E0780 00021080 */  sll   $v0, $v0, 2
/* 1EB044 801E0784 00A26021 */  addu  $t4, $a1, $v0
/* 1EB048 801E0788 C5820000 */  lwc1  $f2, ($t4)
/* 1EB04C 801E078C 00220821 */  addu  $at, $at, $v0
/* 1EB050 801E0790 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 1EB054 801E0794 8C6D0000 */  lw    $t5, ($v1)
/* 1EB058 801E0798 3C01800E */  lui   $at, 0x800e
/* 1EB05C 801E079C 000D7080 */  sll   $t6, $t5, 2
/* 1EB060 801E07A0 002E0821 */  addu  $at, $at, $t6
/* 1EB064 801E07A4 0C02BB30 */  jal   func_800AECC0
/* 1EB068 801E07A8 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 1EB06C 801E07AC 44806000 */  mtc1  $zero, $f12
/* 1EB070 801E07B0 0C02BB48 */  jal   func_800AED20
/* 1EB074 801E07B4 00000000 */   nop   
/* 1EB078 801E07B8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1EB07C 801E07BC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1EB080 801E07C0 3C01800F */  lui   $at, 0x800f
/* 1EB084 801E07C4 240F002D */  li    $t7, 45
/* 1EB088 801E07C8 8F190000 */  lw    $t9, ($t8)
/* 1EB08C 801E07CC 00196080 */  sll   $t4, $t9, 2
/* 1EB090 801E07D0 002C0821 */  addu  $at, $at, $t4
/* 1EB094 801E07D4 1000000E */  b     .L801E0810_ovl11
/* 1EB098 801E07D8 AC2F9720 */   sw    $t7, -0x68e0($at)
/* 1EB09C 801E07DC 004D1821 */  addu  $v1, $v0, $t5
.L801E07E0_ovl11:
/* 1EB0A0 801E07E0 8C640000 */  lw    $a0, ($v1)
/* 1EB0A4 801E07E4 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 1EB0A8 801E07E8 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 1EB0AC 801E07EC 14800007 */  bnez  $a0, .L801E080C_ovl11
/* 1EB0B0 801E07F0 248EFFFF */   addiu $t6, $a0, -1
/* 1EB0B4 801E07F4 3C04800E */  lui   $a0, 0x800e
/* 1EB0B8 801E07F8 00822021 */  addu  $a0, $a0, $v0
/* 1EB0BC 801E07FC 0C02C7B2 */  jal   assign_new_process_entry
/* 1EB0C0 801E0800 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1EB0C4 801E0804 10000003 */  b     .L801E0814_ovl11
/* 1EB0C8 801E0808 8FBF0014 */   lw    $ra, 0x14($sp)
.L801E080C_ovl11:
/* 1EB0CC 801E080C AC6E0000 */  sw    $t6, ($v1)
.L801E0810_ovl11:
/* 1EB0D0 801E0810 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E0814_ovl11:
/* 1EB0D4 801E0814 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EB0D8 801E0818 03E00008 */  jr    $ra
/* 1EB0DC 801E081C 00000000 */   nop   
.size func_801E0610_ovl11, . - func_801E0610_ovl11

glabel func_801E0820_ovl11
/* 1EB0E0 801E0820 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1EB0E4 801E0824 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1EB0E8 801E0828 3C01800F */  lui   $at, 0x800f
/* 1EB0EC 801E082C 44801000 */  mtc1  $zero, $f2
/* 1EB0F0 801E0830 8C430000 */  lw    $v1, ($v0)
/* 1EB0F4 801E0834 00031880 */  sll   $v1, $v1, 2
/* 1EB0F8 801E0838 00230821 */  addu  $at, $at, $v1
/* 1EB0FC 801E083C C420B320 */  lwc1  $f0, -0x4ce0($at)
/* 1EB100 801E0840 3C01800E */  lui   $at, 0x800e
/* 1EB104 801E0844 00230821 */  addu  $at, $at, $v1
/* 1EB108 801E0848 4600103E */  c.le.s $f2, $f0
/* 1EB10C 801E084C 00000000 */  nop   
/* 1EB110 801E0850 45000015 */  bc1f  .L801E08A8_ovl11
/* 1EB114 801E0854 00000000 */   nop   
/* 1EB118 801E0858 3C01800E */  lui   $at, 0x800e
/* 1EB11C 801E085C 00230821 */  addu  $at, $at, $v1
/* 1EB120 801E0860 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 1EB124 801E0864 3C04800E */  lui   $a0, %hi(D_800E3590) # $a0, 0x800e
/* 1EB128 801E0868 24843590 */  addiu $a0, %lo(D_800E3590) # addiu $a0, $a0, 0x3590
/* 1EB12C 801E086C 4604003E */  c.le.s $f0, $f4
/* 1EB130 801E0870 00837021 */  addu  $t6, $a0, $v1
/* 1EB134 801E0874 4500001D */  bc1f  .L801E08EC_ovl11
/* 1EB138 801E0878 00000000 */   nop   
/* 1EB13C 801E087C E5C20000 */  swc1  $f2, ($t6)
/* 1EB140 801E0880 8C430000 */  lw    $v1, ($v0)
/* 1EB144 801E0884 3C01800E */  lui   $at, 0x800e
/* 1EB148 801E0888 00031880 */  sll   $v1, $v1, 2
/* 1EB14C 801E088C 00837821 */  addu  $t7, $a0, $v1
/* 1EB150 801E0890 C5E60000 */  lwc1  $f6, ($t7)
/* 1EB154 801E0894 00230821 */  addu  $at, $at, $v1
/* 1EB158 801E0898 E4263050 */  swc1  $f6, 0x3050($at)
/* 1EB15C 801E089C 8C430000 */  lw    $v1, ($v0)
/* 1EB160 801E08A0 10000012 */  b     .L801E08EC_ovl11
/* 1EB164 801E08A4 00031880 */   sll   $v1, $v1, 2
.L801E08A8_ovl11:
/* 1EB168 801E08A8 C42825D0 */  lwc1  $f8, 0x25d0($at)
/* 1EB16C 801E08AC 3C04800E */  lui   $a0, %hi(D_800E3590) # $a0, 0x800e
/* 1EB170 801E08B0 24843590 */  addiu $a0, %lo(D_800E3590) # addiu $a0, $a0, 0x3590
/* 1EB174 801E08B4 4600403E */  c.le.s $f8, $f0
/* 1EB178 801E08B8 0083C021 */  addu  $t8, $a0, $v1
/* 1EB17C 801E08BC 4500000B */  bc1f  .L801E08EC_ovl11
/* 1EB180 801E08C0 00000000 */   nop   
/* 1EB184 801E08C4 E7020000 */  swc1  $f2, ($t8)
/* 1EB188 801E08C8 8C430000 */  lw    $v1, ($v0)
/* 1EB18C 801E08CC 3C01800E */  lui   $at, 0x800e
/* 1EB190 801E08D0 00031880 */  sll   $v1, $v1, 2
/* 1EB194 801E08D4 0083C821 */  addu  $t9, $a0, $v1
/* 1EB198 801E08D8 C72A0000 */  lwc1  $f10, ($t9)
/* 1EB19C 801E08DC 00230821 */  addu  $at, $at, $v1
/* 1EB1A0 801E08E0 E42A3050 */  swc1  $f10, 0x3050($at)
/* 1EB1A4 801E08E4 8C430000 */  lw    $v1, ($v0)
/* 1EB1A8 801E08E8 00031880 */  sll   $v1, $v1, 2
.L801E08EC_ovl11:
/* 1EB1AC 801E08EC 3C01800F */  lui   $at, 0x800f
/* 1EB1B0 801E08F0 00230821 */  addu  $at, $at, $v1
/* 1EB1B4 801E08F4 C420B160 */  lwc1  $f0, -0x4ea0($at)
/* 1EB1B8 801E08F8 3C01800E */  lui   $at, 0x800e
/* 1EB1BC 801E08FC 00230821 */  addu  $at, $at, $v1
/* 1EB1C0 801E0900 4600103E */  c.le.s $f2, $f0
/* 1EB1C4 801E0904 00000000 */  nop   
/* 1EB1C8 801E0908 45000011 */  bc1f  .L801E0950_ovl11
/* 1EB1CC 801E090C 00000000 */   nop   
/* 1EB1D0 801E0910 3C01800E */  lui   $at, 0x800e
/* 1EB1D4 801E0914 00230821 */  addu  $at, $at, $v1
/* 1EB1D8 801E0918 C4302950 */  lwc1  $f16, 0x2950($at)
/* 1EB1DC 801E091C 3C01800E */  lui   $at, 0x800e
/* 1EB1E0 801E0920 00230821 */  addu  $at, $at, $v1
/* 1EB1E4 801E0924 4610003E */  c.le.s $f0, $f16
/* 1EB1E8 801E0928 00000000 */  nop   
/* 1EB1EC 801E092C 45000015 */  bc1f  .L801E0984_ovl11
/* 1EB1F0 801E0930 00000000 */   nop   
/* 1EB1F4 801E0934 E42233D0 */  swc1  $f2, 0x33d0($at)
/* 1EB1F8 801E0938 8C480000 */  lw    $t0, ($v0)
/* 1EB1FC 801E093C 3C01800E */  lui   $at, 0x800e
/* 1EB200 801E0940 00084880 */  sll   $t1, $t0, 2
/* 1EB204 801E0944 00290821 */  addu  $at, $at, $t1
/* 1EB208 801E0948 03E00008 */  jr    $ra
/* 1EB20C 801E094C E4223910 */   swc1  $f2, 0x3910($at)

.L801E0950_ovl11:
/* 1EB210 801E0950 C4322950 */  lwc1  $f18, 0x2950($at)
/* 1EB214 801E0954 3C01800E */  lui   $at, 0x800e
/* 1EB218 801E0958 00230821 */  addu  $at, $at, $v1
/* 1EB21C 801E095C 4600903E */  c.le.s $f18, $f0
/* 1EB220 801E0960 00000000 */  nop   
/* 1EB224 801E0964 45000007 */  bc1f  .L801E0984_ovl11
/* 1EB228 801E0968 00000000 */   nop   
/* 1EB22C 801E096C E42233D0 */  swc1  $f2, 0x33d0($at)
/* 1EB230 801E0970 8C4A0000 */  lw    $t2, ($v0)
/* 1EB234 801E0974 3C01800E */  lui   $at, 0x800e
/* 1EB238 801E0978 000A5880 */  sll   $t3, $t2, 2
/* 1EB23C 801E097C 002B0821 */  addu  $at, $at, $t3
/* 1EB240 801E0980 E4223910 */  swc1  $f2, 0x3910($at)
.L801E0984_ovl11:
/* 1EB244 801E0984 03E00008 */  jr    $ra
/* 1EB248 801E0988 00000000 */   nop   
.size func_801E0820_ovl11, . - func_801E0820_ovl11

glabel func_801E098C_ovl11
/* 1EB24C 801E098C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EB250 801E0990 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EB254 801E0994 0C06835D */  jal   func_801A0D74_ovl11
/* 1EB258 801E0998 00000000 */   nop   
/* 1EB25C 801E099C 0C078208 */  jal   func_801E0820_ovl11
/* 1EB260 801E09A0 00000000 */   nop   
/* 1EB264 801E09A4 0C078184 */  jal   func_801E0610_ovl11
/* 1EB268 801E09A8 00000000 */   nop   
/* 1EB26C 801E09AC 0C0680ED */  jal   func_801A03B4_ovl11
/* 1EB270 801E09B0 00000000 */   nop   
/* 1EB274 801E09B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1EB278 801E09B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EB27C 801E09BC 03E00008 */  jr    $ra
/* 1EB280 801E09C0 00000000 */   nop   
.size func_801E098C_ovl11, . - func_801E098C_ovl11

glabel func_801E09C4_ovl11
/* 1EB284 801E09C4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1EB288 801E09C8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1EB28C 801E09CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1EB290 801E09D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1EB294 801E09D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1EB298 801E09D8 8C6E0000 */  lw    $t6, ($v1)
/* 1EB29C 801E09DC 3C01800F */  lui   $at, 0x800f
/* 1EB2A0 801E09E0 44800000 */  mtc1  $zero, $f0
/* 1EB2A4 801E09E4 000E7880 */  sll   $t7, $t6, 2
/* 1EB2A8 801E09E8 002F0821 */  addu  $at, $at, $t7
/* 1EB2AC 801E09EC AC208920 */  sw    $zero, -0x76e0($at)
/* 1EB2B0 801E09F0 8C620000 */  lw    $v0, ($v1)
/* 1EB2B4 801E09F4 3C01800E */  lui   $at, 0x800e
/* 1EB2B8 801E09F8 00021080 */  sll   $v0, $v0, 2
/* 1EB2BC 801E09FC 00220821 */  addu  $at, $at, $v0
/* 1EB2C0 801E0A00 C4243050 */  lwc1  $f4, 0x3050($at)
/* 1EB2C4 801E0A04 3C01800E */  lui   $at, 0x800e
/* 1EB2C8 801E0A08 00220821 */  addu  $at, $at, $v0
/* 1EB2CC 801E0A0C 46040032 */  c.eq.s $f0, $f4
/* 1EB2D0 801E0A10 00000000 */  nop   
/* 1EB2D4 801E0A14 45000028 */  bc1f  .L801E0AB8_ovl11
/* 1EB2D8 801E0A18 00000000 */   nop   
/* 1EB2DC 801E0A1C C42633D0 */  lwc1  $f6, 0x33d0($at)
/* 1EB2E0 801E0A20 3C01800E */  lui   $at, 0x800e
/* 1EB2E4 801E0A24 00220821 */  addu  $at, $at, $v0
/* 1EB2E8 801E0A28 46060032 */  c.eq.s $f0, $f6
/* 1EB2EC 801E0A2C 00000000 */  nop   
/* 1EB2F0 801E0A30 45000021 */  bc1f  .L801E0AB8_ovl11
/* 1EB2F4 801E0A34 00000000 */   nop   
/* 1EB2F8 801E0A38 C4283590 */  lwc1  $f8, 0x3590($at)
/* 1EB2FC 801E0A3C 3C01800E */  lui   $at, 0x800e
/* 1EB300 801E0A40 00220821 */  addu  $at, $at, $v0
/* 1EB304 801E0A44 46080032 */  c.eq.s $f0, $f8
/* 1EB308 801E0A48 00000000 */  nop   
/* 1EB30C 801E0A4C 4500001A */  bc1f  .L801E0AB8_ovl11
/* 1EB310 801E0A50 00000000 */   nop   
/* 1EB314 801E0A54 C42A3910 */  lwc1  $f10, 0x3910($at)
/* 1EB318 801E0A58 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 1EB31C 801E0A5C 460A0032 */  c.eq.s $f0, $f10
/* 1EB320 801E0A60 00000000 */  nop   
/* 1EB324 801E0A64 45000014 */  bc1f  .L801E0AB8_ovl11
/* 1EB328 801E0A68 00000000 */   nop   
/* 1EB32C 801E0A6C 44808000 */  mtc1  $zero, $f16
/* 1EB330 801E0A70 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 1EB334 801E0A74 0082C021 */  addu  $t8, $a0, $v0
/* 1EB338 801E0A78 E7100000 */  swc1  $f16, ($t8)
/* 1EB33C 801E0A7C 8C620000 */  lw    $v0, ($v1)
/* 1EB340 801E0A80 3C01800E */  lui   $at, 0x800e
/* 1EB344 801E0A84 00021080 */  sll   $v0, $v0, 2
/* 1EB348 801E0A88 0082C821 */  addu  $t9, $a0, $v0
/* 1EB34C 801E0A8C C7320000 */  lwc1  $f18, ($t9)
/* 1EB350 801E0A90 00220821 */  addu  $at, $at, $v0
/* 1EB354 801E0A94 E4323210 */  swc1  $f18, 0x3210($at)
/* 1EB358 801E0A98 8C680000 */  lw    $t0, ($v1)
/* 1EB35C 801E0A9C 3C01801E */  lui   $at, %hi(D_801E0C50) # $at, 0x801e
/* 1EB360 801E0AA0 C4240C50 */  lwc1  $f4, %lo(D_801E0C50)($at)
/* 1EB364 801E0AA4 3C01800E */  lui   $at, 0x800e
/* 1EB368 801E0AA8 00084880 */  sll   $t1, $t0, 2
/* 1EB36C 801E0AAC 00290821 */  addu  $at, $at, $t1
/* 1EB370 801E0AB0 1000000C */  b     .L801E0AE4_ovl11
/* 1EB374 801E0AB4 E4243C90 */   swc1  $f4, 0x3c90($at)
.L801E0AB8_ovl11:
/* 1EB378 801E0AB8 3C0A800E */  lui   $t2, %hi(D_800E3210) # $t2, 0x800e
/* 1EB37C 801E0ABC 254A3210 */  addiu $t2, %lo(D_800E3210) # addiu $t2, $t2, 0x3210
/* 1EB380 801E0AC0 004A1821 */  addu  $v1, $v0, $t2
/* 1EB384 801E0AC4 C4660000 */  lwc1  $f6, ($v1)
/* 1EB388 801E0AC8 3C01801E */  lui   $at, %hi(D_801E0C54) # $at, 0x801e
/* 1EB38C 801E0ACC C42A0C54 */  lwc1  $f10, %lo(D_801E0C54)($at)
/* 1EB390 801E0AD0 46003207 */  neg.s $f8, $f6
/* 1EB394 801E0AD4 240401D9 */  li    $a0, 473
/* 1EB398 801E0AD8 460A4402 */  mul.s $f16, $f8, $f10
/* 1EB39C 801E0ADC 0C029D9E */  jal   play_sound
/* 1EB3A0 801E0AE0 E4700000 */   swc1  $f16, ($v1)
.L801E0AE4_ovl11:
/* 1EB3A4 801E0AE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1EB3A8 801E0AE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1EB3AC 801E0AEC 03E00008 */  jr    $ra
/* 1EB3B0 801E0AF0 00000000 */   nop   

/* 1EB3B4 801E0AF4 00000000 */  nop   
/* 1EB3B8 801E0AF8 00000000 */  nop   
/* 1EB3BC 801E0AFC 00000000 */  nop   
# Unknown region 1EB3C0-1EB520 [160]
# .incbin "bin/kirby.u.1EB3C0.bin"
.size func_801E09C4_ovl11, . - func_801E09C4_ovl11
