glabel func_80106C5C
/* 08F6CC 80106C5C 27BDFF70 */  addiu $sp, $sp, -0x90
/* 08F6D0 80106C60 44800000 */  mtc1  $zero, $f0
/* 08F6D4 80106C64 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08F6D8 80106C68 44812000 */  mtc1  $at, $f4
/* 08F6DC 80106C6C AFBF002C */  sw    $ra, 0x2c($sp)
/* 08F6E0 80106C70 AFB10028 */  sw    $s1, 0x28($sp)
/* 08F6E4 80106C74 AFB00024 */  sw    $s0, 0x24($sp)
/* 08F6E8 80106C78 E7A00068 */  swc1  $f0, 0x68($sp)
/* 08F6EC 80106C7C E7A00070 */  swc1  $f0, 0x70($sp)
/* 08F6F0 80106C80 E7A4006C */  swc1  $f4, 0x6c($sp)
/* 08F6F4 80106C84 C4860028 */  lwc1  $f6, 0x28($a0)
/* 08F6F8 80106C88 00A08825 */  move  $s1, $a1
/* 08F6FC 80106C8C 3C0E8013 */  lui   $t6, %hi(D_8012BD34) # $t6, 0x8013
/* 08F700 80106C90 E7A60080 */  swc1  $f6, 0x80($sp)
/* 08F704 80106C94 C4880044 */  lwc1  $f8, 0x44($a0)
/* 08F708 80106C98 00808025 */  move  $s0, $a0
/* 08F70C 80106C9C 25CEBD34 */  addiu $t6, %lo(D_8012BD34) # addiu $t6, $t6, -0x42cc
/* 08F710 80106CA0 E7A80084 */  swc1  $f8, 0x84($sp)
/* 08F714 80106CA4 C48A0030 */  lwc1  $f10, 0x30($a0)
/* 08F718 80106CA8 262F0018 */  addiu $t7, $s1, 0x18
/* 08F71C 80106CAC 26380014 */  addiu $t8, $s1, 0x14
/* 08F720 80106CB0 E7AA0088 */  swc1  $f10, 0x88($sp)
/* 08F724 80106CB4 C4900004 */  lwc1  $f16, 4($a0)
/* 08F728 80106CB8 26390010 */  addiu $t9, $s1, 0x10
/* 08F72C 80106CBC 27A50074 */  addiu $a1, $sp, 0x74
/* 08F730 80106CC0 E7B00074 */  swc1  $f16, 0x74($sp)
/* 08F734 80106CC4 C4840014 */  lwc1  $f4, 0x14($a0)
/* 08F738 80106CC8 C4920008 */  lwc1  $f18, 8($a0)
/* 08F73C 80106CCC 27A60068 */  addiu $a2, $sp, 0x68
/* 08F740 80106CD0 00003825 */  move  $a3, $zero
/* 08F744 80106CD4 46049180 */  add.s $f6, $f18, $f4
/* 08F748 80106CD8 E7A60078 */  swc1  $f6, 0x78($sp)
/* 08F74C 80106CDC C488000C */  lwc1  $f8, 0xc($a0)
/* 08F750 80106CE0 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08F754 80106CE4 AFB9001C */  sw    $t9, 0x1c($sp)
/* 08F758 80106CE8 AFB80018 */  sw    $t8, 0x18($sp)
/* 08F75C 80106CEC AFAF0014 */  sw    $t7, 0x14($sp)
/* 08F760 80106CF0 AFAE0010 */  sw    $t6, 0x10($sp)
/* 08F764 80106CF4 27A40080 */  addiu $a0, $sp, 0x80
/* 08F768 80106CF8 0C040E7A */  jal   func_801039E8
/* 08F76C 80106CFC E7A8007C */   swc1  $f8, 0x7c($sp)
/* 08F770 80106D00 10400007 */  beqz  $v0, .L80106D20_ovl2
/* 08F774 80106D04 8FA9004C */   lw    $t1, 0x4c($sp)
/* 08F778 80106D08 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 08F77C 80106D0C 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 08F780 80106D10 C46A0038 */  lwc1  $f10, 0x38($v1)
/* 08F784 80106D14 24090040 */  li    $t1, 64
/* 08F788 80106D18 10000003 */  b     .L80106D28_ovl2
/* 08F78C 80106D1C E7AA0044 */   swc1  $f10, 0x44($sp)
.L80106D20_ovl2:
/* 08F790 80106D20 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 08F794 80106D24 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
.L80106D28_ovl2:
/* 08F798 80106D28 C6100034 */  lwc1  $f16, 0x34($s0)
/* 08F79C 80106D2C C4660004 */  lwc1  $f6, 4($v1)
/* 08F7A0 80106D30 27AA005C */  addiu $t2, $sp, 0x5c
/* 08F7A4 80106D34 E7B00080 */  swc1  $f16, 0x80($sp)
/* 08F7A8 80106D38 C6120038 */  lwc1  $f18, 0x38($s0)
/* 08F7AC 80106D3C C4700008 */  lwc1  $f16, 8($v1)
/* 08F7B0 80106D40 27AB0058 */  addiu $t3, $sp, 0x58
/* 08F7B4 80106D44 E7B20088 */  swc1  $f18, 0x88($sp)
/* 08F7B8 80106D48 C6040004 */  lwc1  $f4, 4($s0)
/* 08F7BC 80106D4C 27AC0054 */  addiu $t4, $sp, 0x54
/* 08F7C0 80106D50 27AD0050 */  addiu $t5, $sp, 0x50
/* 08F7C4 80106D54 46062200 */  add.s $f8, $f4, $f6
/* 08F7C8 80106D58 27A40080 */  addiu $a0, $sp, 0x80
/* 08F7CC 80106D5C 27A50074 */  addiu $a1, $sp, 0x74
/* 08F7D0 80106D60 27A60068 */  addiu $a2, $sp, 0x68
/* 08F7D4 80106D64 E7A80074 */  swc1  $f8, 0x74($sp)
/* 08F7D8 80106D68 C60A000C */  lwc1  $f10, 0xc($s0)
/* 08F7DC 80106D6C AFA9004C */  sw    $t1, 0x4c($sp)
/* 08F7E0 80106D70 AFAD001C */  sw    $t5, 0x1c($sp)
/* 08F7E4 80106D74 46105480 */  add.s $f18, $f10, $f16
/* 08F7E8 80106D78 AFAC0018 */  sw    $t4, 0x18($sp)
/* 08F7EC 80106D7C AFAB0014 */  sw    $t3, 0x14($sp)
/* 08F7F0 80106D80 AFAA0010 */  sw    $t2, 0x10($sp)
/* 08F7F4 80106D84 E7B2007C */  swc1  $f18, 0x7c($sp)
/* 08F7F8 80106D88 0C040E7A */  jal   func_801039E8
/* 08F7FC 80106D8C 00003825 */   move  $a3, $zero
/* 08F800 80106D90 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 08F804 80106D94 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 08F808 80106D98 10400050 */  beqz  $v0, .L80106EDC_ovl2
/* 08F80C 80106D9C 8FA9004C */   lw    $t1, 0x4c($sp)
/* 08F810 80106DA0 15200015 */  bnez  $t1, .L80106DF8_ovl2
/* 08F814 80106DA4 00004025 */   move  $t0, $zero
/* 08F818 80106DA8 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 08F81C 80106DAC C4660004 */  lwc1  $f6, 4($v1)
/* 08F820 80106DB0 8FAE0058 */  lw    $t6, 0x58($sp)
/* 08F824 80106DB4 C7B20064 */  lwc1  $f18, 0x64($sp)
/* 08F828 80106DB8 46062201 */  sub.s $f8, $f4, $f6
/* 08F82C 80106DBC C4640008 */  lwc1  $f4, 8($v1)
/* 08F830 80106DC0 C5CA0000 */  lwc1  $f10, ($t6)
/* 08F834 80106DC4 24080001 */  li    $t0, 1
/* 08F838 80106DC8 46049181 */  sub.s $f6, $f18, $f4
/* 08F83C 80106DCC 46085402 */  mul.s $f16, $f10, $f8
/* 08F840 80106DD0 C5CA0008 */  lwc1  $f10, 8($t6)
/* 08F844 80106DD4 C5C4000C */  lwc1  $f4, 0xc($t6)
/* 08F848 80106DD8 46065202 */  mul.s $f8, $f10, $f6
/* 08F84C 80106DDC 46088480 */  add.s $f18, $f16, $f8
/* 08F850 80106DE0 C5D00004 */  lwc1  $f16, 4($t6)
/* 08F854 80106DE4 46049280 */  add.s $f10, $f18, $f4
/* 08F858 80106DE8 46005187 */  neg.s $f6, $f10
/* 08F85C 80106DEC 46103203 */  div.s $f8, $f6, $f16
/* 08F860 80106DF0 10000027 */  b     .L80106E90_ovl2
/* 08F864 80106DF4 E7A8003C */   swc1  $f8, 0x3c($sp)
.L80106DF8_ovl2:
/* 08F868 80106DF8 8E260018 */  lw    $a2, 0x18($s1)
/* 08F86C 80106DFC 8FAF0058 */  lw    $t7, 0x58($sp)
/* 08F870 80106E00 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* 08F874 80106E04 11E60022 */  beq   $t7, $a2, .L80106E90_ovl2
/* 08F878 80106E08 00000000 */   nop   
/* 08F87C 80106E0C C4640004 */  lwc1  $f4, 4($v1)
/* 08F880 80106E10 C5E60000 */  lwc1  $f6, ($t7)
/* 08F884 80106E14 C7A80064 */  lwc1  $f8, 0x64($sp)
/* 08F888 80106E18 46049281 */  sub.s $f10, $f18, $f4
/* 08F88C 80106E1C C4720008 */  lwc1  $f18, 8($v1)
/* 08F890 80106E20 3C048013 */  lui   $a0, %hi(D_8012BD34) # $a0, 0x8013
/* 08F894 80106E24 2484BD34 */  addiu $a0, %lo(D_8012BD34) # addiu $a0, $a0, -0x42cc
/* 08F898 80106E28 460A3402 */  mul.s $f16, $f6, $f10
/* 08F89C 80106E2C 46124101 */  sub.s $f4, $f8, $f18
/* 08F8A0 80106E30 C5E60008 */  lwc1  $f6, 8($t7)
/* 08F8A4 80106E34 C5F2000C */  lwc1  $f18, 0xc($t7)
/* 08F8A8 80106E38 27A5005C */  addiu $a1, $sp, 0x5c
/* 08F8AC 80106E3C 46043282 */  mul.s $f10, $f6, $f4
/* 08F8B0 80106E40 3C07BF80 */  lui   $a3, 0xbf80
/* 08F8B4 80106E44 460A8200 */  add.s $f8, $f16, $f10
/* 08F8B8 80106E48 C5F00004 */  lwc1  $f16, 4($t7)
/* 08F8BC 80106E4C 46124180 */  add.s $f6, $f8, $f18
/* 08F8C0 80106E50 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 08F8C4 80106E54 46003107 */  neg.s $f4, $f6
/* 08F8C8 80106E58 46102283 */  div.s $f10, $f4, $f16
/* 08F8CC 80106E5C 4608503C */  c.lt.s $f10, $f8
/* 08F8D0 80106E60 E7AA003C */  swc1  $f10, 0x3c($sp)
/* 08F8D4 80106E64 4500000A */  bc1f  .L80106E90_ovl2
/* 08F8D8 80106E68 00000000 */   nop   
/* 08F8DC 80106E6C AFA80040 */  sw    $t0, 0x40($sp)
/* 08F8E0 80106E70 0C042216 */  jal   func_80108858
/* 08F8E4 80106E74 AFA9004C */   sw    $t1, 0x4c($sp)
/* 08F8E8 80106E78 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 08F8EC 80106E7C 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 08F8F0 80106E80 8FA80040 */  lw    $t0, 0x40($sp)
/* 08F8F4 80106E84 10400002 */  beqz  $v0, .L80106E90_ovl2
/* 08F8F8 80106E88 8FA9004C */   lw    $t1, 0x4c($sp)
/* 08F8FC 80106E8C 24080001 */  li    $t0, 1
.L80106E90_ovl2:
/* 08F900 80106E90 11000012 */  beqz  $t0, .L80106EDC_ovl2
/* 08F904 80106E94 3C188013 */   lui   $t8, %hi(D_8012BD34) # $t8, 0x8013
/* 08F908 80106E98 27B9005C */  addiu $t9, $sp, 0x5c
/* 08F90C 80106E9C 8F2B0000 */  lw    $t3, ($t9)
/* 08F910 80106EA0 2718BD34 */  addiu $t8, %lo(D_8012BD34) # addiu $t8, $t8, -0x42cc
/* 08F914 80106EA4 8F2A0004 */  lw    $t2, 4($t9)
/* 08F918 80106EA8 AF0B0000 */  sw    $t3, ($t8)
/* 08F91C 80106EAC 8F2B0008 */  lw    $t3, 8($t9)
/* 08F920 80106EB0 AF0A0004 */  sw    $t2, 4($t8)
/* 08F924 80106EB4 24090100 */  li    $t1, 256
/* 08F928 80106EB8 AF0B0008 */  sw    $t3, 8($t8)
/* 08F92C 80106EBC 8FAC0058 */  lw    $t4, 0x58($sp)
/* 08F930 80106EC0 AE2C0018 */  sw    $t4, 0x18($s1)
/* 08F934 80106EC4 8FAD0054 */  lw    $t5, 0x54($sp)
/* 08F938 80106EC8 AE2D0014 */  sw    $t5, 0x14($s1)
/* 08F93C 80106ECC 8FAE0050 */  lw    $t6, 0x50($sp)
/* 08F940 80106ED0 AE2E0010 */  sw    $t6, 0x10($s1)
/* 08F944 80106ED4 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 08F948 80106ED8 E7B20044 */  swc1  $f18, 0x44($sp)
.L80106EDC_ovl2:
/* 08F94C 80106EDC C606003C */  lwc1  $f6, 0x3c($s0)
/* 08F950 80106EE0 C46A000C */  lwc1  $f10, 0xc($v1)
/* 08F954 80106EE4 27AF005C */  addiu $t7, $sp, 0x5c
/* 08F958 80106EE8 E7A60080 */  swc1  $f6, 0x80($sp)
/* 08F95C 80106EEC C6040040 */  lwc1  $f4, 0x40($s0)
/* 08F960 80106EF0 C4660010 */  lwc1  $f6, 0x10($v1)
/* 08F964 80106EF4 27B80058 */  addiu $t8, $sp, 0x58
/* 08F968 80106EF8 E7A40088 */  swc1  $f4, 0x88($sp)
/* 08F96C 80106EFC C6100004 */  lwc1  $f16, 4($s0)
/* 08F970 80106F00 27B90054 */  addiu $t9, $sp, 0x54
/* 08F974 80106F04 27AA0050 */  addiu $t2, $sp, 0x50
/* 08F978 80106F08 460A8200 */  add.s $f8, $f16, $f10
/* 08F97C 80106F0C 27A40080 */  addiu $a0, $sp, 0x80
/* 08F980 80106F10 27A50074 */  addiu $a1, $sp, 0x74
/* 08F984 80106F14 27A60068 */  addiu $a2, $sp, 0x68
/* 08F988 80106F18 E7A80074 */  swc1  $f8, 0x74($sp)
/* 08F98C 80106F1C C612000C */  lwc1  $f18, 0xc($s0)
/* 08F990 80106F20 AFA9004C */  sw    $t1, 0x4c($sp)
/* 08F994 80106F24 AFAA001C */  sw    $t2, 0x1c($sp)
/* 08F998 80106F28 46069100 */  add.s $f4, $f18, $f6
/* 08F99C 80106F2C AFB90018 */  sw    $t9, 0x18($sp)
/* 08F9A0 80106F30 AFB80014 */  sw    $t8, 0x14($sp)
/* 08F9A4 80106F34 AFAF0010 */  sw    $t7, 0x10($sp)
/* 08F9A8 80106F38 E7A4007C */  swc1  $f4, 0x7c($sp)
/* 08F9AC 80106F3C 0C040E7A */  jal   func_801039E8
/* 08F9B0 80106F40 00003825 */   move  $a3, $zero
/* 08F9B4 80106F44 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 08F9B8 80106F48 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 08F9BC 80106F4C 10400038 */  beqz  $v0, .L80107030_ovl2
/* 08F9C0 80106F50 8FA9004C */   lw    $t1, 0x4c($sp)
/* 08F9C4 80106F54 15200003 */  bnez  $t1, .L80106F64_ovl2
/* 08F9C8 80106F58 00008025 */   move  $s0, $zero
/* 08F9CC 80106F5C 10000023 */  b     .L80106FEC_ovl2
/* 08F9D0 80106F60 24100001 */   li    $s0, 1
.L80106F64_ovl2:
/* 08F9D4 80106F64 8E260018 */  lw    $a2, 0x18($s1)
/* 08F9D8 80106F68 8FAB0058 */  lw    $t3, 0x58($sp)
/* 08F9DC 80106F6C C7B0005C */  lwc1  $f16, 0x5c($sp)
/* 08F9E0 80106F70 1166001E */  beq   $t3, $a2, .L80106FEC_ovl2
/* 08F9E4 80106F74 00000000 */   nop   
/* 08F9E8 80106F78 C46A000C */  lwc1  $f10, 0xc($v1)
/* 08F9EC 80106F7C C5720000 */  lwc1  $f18, ($t3)
/* 08F9F0 80106F80 C7A40064 */  lwc1  $f4, 0x64($sp)
/* 08F9F4 80106F84 460A8201 */  sub.s $f8, $f16, $f10
/* 08F9F8 80106F88 C4700010 */  lwc1  $f16, 0x10($v1)
/* 08F9FC 80106F8C 3C048013 */  lui   $a0, %hi(D_8012BD34) # $a0, 0x8013
/* 08FA00 80106F90 2484BD34 */  addiu $a0, %lo(D_8012BD34) # addiu $a0, $a0, -0x42cc
/* 08FA04 80106F94 46089182 */  mul.s $f6, $f18, $f8
/* 08FA08 80106F98 46102281 */  sub.s $f10, $f4, $f16
/* 08FA0C 80106F9C C5720008 */  lwc1  $f18, 8($t3)
/* 08FA10 80106FA0 C570000C */  lwc1  $f16, 0xc($t3)
/* 08FA14 80106FA4 27A5005C */  addiu $a1, $sp, 0x5c
/* 08FA18 80106FA8 460A9202 */  mul.s $f8, $f18, $f10
/* 08FA1C 80106FAC 3C07BF80 */  lui   $a3, 0xbf80
/* 08FA20 80106FB0 46083100 */  add.s $f4, $f6, $f8
/* 08FA24 80106FB4 C5660004 */  lwc1  $f6, 4($t3)
/* 08FA28 80106FB8 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 08FA2C 80106FBC 46102480 */  add.s $f18, $f4, $f16
/* 08FA30 80106FC0 46009287 */  neg.s $f10, $f18
/* 08FA34 80106FC4 46065003 */  div.s $f0, $f10, $f6
/* 08FA38 80106FC8 4608003C */  c.lt.s $f0, $f8
/* 08FA3C 80106FCC 00000000 */  nop   
/* 08FA40 80106FD0 45000006 */  bc1f  .L80106FEC_ovl2
/* 08FA44 80106FD4 00000000 */   nop   
/* 08FA48 80106FD8 0C042216 */  jal   func_80108858
/* 08FA4C 80106FDC AFA9004C */   sw    $t1, 0x4c($sp)
/* 08FA50 80106FE0 10400002 */  beqz  $v0, .L80106FEC_ovl2
/* 08FA54 80106FE4 8FA9004C */   lw    $t1, 0x4c($sp)
/* 08FA58 80106FE8 24100001 */  li    $s0, 1
.L80106FEC_ovl2:
/* 08FA5C 80106FEC 12000010 */  beqz  $s0, .L80107030_ovl2
/* 08FA60 80106FF0 3C0C8013 */   lui   $t4, %hi(D_8012BD34) # $t4, 0x8013
/* 08FA64 80106FF4 27AD005C */  addiu $t5, $sp, 0x5c
/* 08FA68 80106FF8 8DAF0000 */  lw    $t7, ($t5)
/* 08FA6C 80106FFC 258CBD34 */  addiu $t4, %lo(D_8012BD34) # addiu $t4, $t4, -0x42cc
/* 08FA70 80107000 8DAE0004 */  lw    $t6, 4($t5)
/* 08FA74 80107004 AD8F0000 */  sw    $t7, ($t4)
/* 08FA78 80107008 8DAF0008 */  lw    $t7, 8($t5)
/* 08FA7C 8010700C AD8E0004 */  sw    $t6, 4($t4)
/* 08FA80 80107010 24090080 */  li    $t1, 128
/* 08FA84 80107014 AD8F0008 */  sw    $t7, 8($t4)
/* 08FA88 80107018 8FB80058 */  lw    $t8, 0x58($sp)
/* 08FA8C 8010701C AE380018 */  sw    $t8, 0x18($s1)
/* 08FA90 80107020 8FB90054 */  lw    $t9, 0x54($sp)
/* 08FA94 80107024 AE390014 */  sw    $t9, 0x14($s1)
/* 08FA98 80107028 8FAA0050 */  lw    $t2, 0x50($sp)
/* 08FA9C 8010702C AE2A0010 */  sw    $t2, 0x10($s1)
.L80107030_ovl2:
/* 08FAA0 80107030 1120000B */  beqz  $t1, .L80107060_ovl2
/* 08FAA4 80107034 00001025 */   move  $v0, $zero
/* 08FAA8 80107038 8E2B0000 */  lw    $t3, ($s1)
/* 08FAAC 8010703C 96380000 */  lhu   $t8, ($s1)
/* 08FAB0 80107040 24020001 */  li    $v0, 1
/* 08FAB4 80107044 000B64C2 */  srl   $t4, $t3, 0x13
/* 08FAB8 80107048 01896825 */  or    $t5, $t4, $t1
/* 08FABC 8010704C 000D78C0 */  sll   $t7, $t5, 3
/* 08FAC0 80107050 33190007 */  andi  $t9, $t8, 7
/* 08FAC4 80107054 01F95025 */  or    $t2, $t7, $t9
/* 08FAC8 80107058 10000001 */  b     .L80107060_ovl2
/* 08FACC 8010705C A62A0000 */   sh    $t2, ($s1)
.L80107060_ovl2:
/* 08FAD0 80107060 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08FAD4 80107064 8FB00024 */  lw    $s0, 0x24($sp)
/* 08FAD8 80107068 8FB10028 */  lw    $s1, 0x28($sp)
/* 08FADC 8010706C 03E00008 */  jr    $ra
/* 08FAE0 80107070 27BD0090 */   addiu $sp, $sp, 0x90
.type func_80106C5C, @function
.size func_80106C5C, . - func_80106C5C
