glabel func_8001E9EC
/* 01F5EC 8001E9EC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01F5F0 8001E9F0 3C088009 */  lui   $t0, %hi(D_80096510) # $t0, 0x8009
/* 01F5F4 8001E9F4 25086510 */  addiu $t0, %lo(D_80096510) # addiu $t0, $t0, 0x6510
/* 01F5F8 8001E9F8 8D030000 */  lw    $v1, ($t0)
/* 01F5FC 8001E9FC AFB10018 */  sw    $s1, 0x18($sp)
/* 01F600 8001EA00 AFA60038 */  sw    $a2, 0x38($sp)
/* 01F604 8001EA04 AFA7003C */  sw    $a3, 0x3c($sp)
/* 01F608 8001EA08 30E700FF */  andi  $a3, $a3, 0xff
/* 01F60C 8001EA0C 30C600FF */  andi  $a2, $a2, 0xff
/* 01F610 8001EA10 00A08825 */  move  $s1, $a1
/* 01F614 8001EA14 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01F618 8001EA18 AFB00014 */  sw    $s0, 0x14($sp)
/* 01F61C 8001EA1C 106000A2 */  beqz  $v1, .L8001ECA8_ovl0
/* 01F620 8001EA20 AFA00028 */   sw    $zero, 0x28($sp)
/* 01F624 8001EA24 8C6E0000 */  lw    $t6, ($v1)
/* 01F628 8001EA28 24010001 */  li    $at, 1
/* 01F62C 8001EA2C 00608025 */  move  $s0, $v1
/* 01F630 8001EA30 AD0E0000 */  sw    $t6, ($t0)
/* 01F634 8001EA34 A0660004 */  sb    $a2, 4($v1)
/* 01F638 8001EA38 AC830000 */  sw    $v1, ($a0)
/* 01F63C 8001EA3C 93AF0047 */  lbu   $t7, 0x47($sp)
/* 01F640 8001EA40 93A40043 */  lbu   $a0, 0x43($sp)
/* 01F644 8001EA44 24190103 */  li    $t9, 259
/* 01F648 8001EA48 000FC380 */  sll   $t8, $t7, 0xe
/* 01F64C 8001EA4C 10C10018 */  beq   $a2, $at, .L8001EAB0_ovl0
/* 01F650 8001EA50 AFB80028 */   sw    $t8, 0x28($sp)
/* 01F654 8001EA54 24010002 */  li    $at, 2
/* 01F658 8001EA58 10C10027 */  beq   $a2, $at, .L8001EAF8_ovl0
/* 01F65C 8001EA5C 2402007F */   li    $v0, 127
/* 01F660 8001EA60 24010003 */  li    $at, 3
/* 01F664 8001EA64 10C10033 */  beq   $a2, $at, .L8001EB34_ovl0
/* 01F668 8001EA68 2402007F */   li    $v0, 127
/* 01F66C 8001EA6C 24010004 */  li    $at, 4
/* 01F670 8001EA70 10C10041 */  beq   $a2, $at, .L8001EB78_ovl0
/* 01F674 8001EA74 93A40043 */   lbu   $a0, 0x43($sp)
/* 01F678 8001EA78 24010080 */  li    $at, 128
/* 01F67C 8001EA7C 10C10050 */  beq   $a2, $at, .L8001EBC0_ovl0
/* 01F680 8001EA80 93A40043 */   lbu   $a0, 0x43($sp)
/* 01F684 8001EA84 24010081 */  li    $at, 129
/* 01F688 8001EA88 10C10059 */  beq   $a2, $at, .L8001EBF0_ovl0
/* 01F68C 8001EA8C 93A40043 */   lbu   $a0, 0x43($sp)
/* 01F690 8001EA90 24010082 */  li    $at, 130
/* 01F694 8001EA94 10C10068 */  beq   $a2, $at, .L8001EC38_ovl0
/* 01F698 8001EA98 93A40043 */   lbu   $a0, 0x43($sp)
/* 01F69C 8001EA9C 24010083 */  li    $at, 131
/* 01F6A0 8001EAA0 10C10073 */  beq   $a2, $at, .L8001EC70_ovl0
/* 01F6A4 8001EAA4 93A40043 */   lbu   $a0, 0x43($sp)
/* 01F6A8 8001EAA8 10000080 */  b     .L8001ECAC_ovl0
/* 01F6AC 8001EAAC 8FBF001C */   lw    $ra, 0x1c($sp)
.L8001EAB0_ovl0:
/* 01F6B0 8001EAB0 00045843 */  sra   $t3, $a0, 1
/* 01F6B4 8001EAB4 240C007F */  li    $t4, 127
/* 01F6B8 8001EAB8 018B6823 */  subu  $t5, $t4, $t3
/* 01F6BC 8001EABC 31AE00FF */  andi  $t6, $t5, 0xff
/* 01F6C0 8001EAC0 448E2000 */  mtc1  $t6, $f4
/* 01F6C4 8001EAC4 03274823 */  subu  $t1, $t9, $a3
/* 01F6C8 8001EAC8 A6000008 */  sh    $zero, 8($s0)
/* 01F6CC 8001EACC A6090006 */  sh    $t1, 6($s0)
/* 01F6D0 8001EAD0 A20B000C */  sb    $t3, 0xc($s0)
/* 01F6D4 8001EAD4 A20D000D */  sb    $t5, 0xd($s0)
/* 01F6D8 8001EAD8 05C10005 */  bgez  $t6, .L8001EAF0_ovl0
/* 01F6DC 8001EADC 468021A0 */   cvt.s.w $f6, $f4
/* 01F6E0 8001EAE0 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 01F6E4 8001EAE4 44814000 */  mtc1  $at, $f8
/* 01F6E8 8001EAE8 00000000 */  nop   
/* 01F6EC 8001EAEC 46083180 */  add.s $f6, $f6, $f8
.L8001EAF0_ovl0:
/* 01F6F0 8001EAF0 1000006D */  b     .L8001ECA8_ovl0
/* 01F6F4 8001EAF4 E6260000 */   swc1  $f6, ($s1)
.L8001EAF8_ovl0:
/* 01F6F8 8001EAF8 93A40043 */  lbu   $a0, 0x43($sp)
/* 01F6FC 8001EAFC 240F0100 */  li    $t7, 256
/* 01F700 8001EB00 01E7C823 */  subu  $t9, $t7, $a3
/* 01F704 8001EB04 2409007F */  li    $t1, 127
/* 01F708 8001EB08 3C0142FE */  li    $at, 0x42FE0000 # 127.000000
/* 01F70C 8001EB0C 44815000 */  mtc1  $at, $f10
/* 01F710 8001EB10 01245023 */  subu  $t2, $t1, $a0
/* 01F714 8001EB14 A6190006 */  sh    $t9, 6($s0)
/* 01F718 8001EB18 A6190008 */  sh    $t9, 8($s0)
/* 01F71C 8001EB1C A2000005 */  sb    $zero, 5($s0)
/* 01F720 8001EB20 A20A000E */  sb    $t2, 0xe($s0)
/* 01F724 8001EB24 A202000D */  sb    $v0, 0xd($s0)
/* 01F728 8001EB28 A202000C */  sb    $v0, 0xc($s0)
/* 01F72C 8001EB2C 1000005E */  b     .L8001ECA8_ovl0
/* 01F730 8001EB30 E62A0000 */   swc1  $f10, ($s1)
.L8001EB34_ovl0:
/* 01F734 8001EB34 93A40043 */  lbu   $a0, 0x43($sp)
/* 01F738 8001EB38 304D00FF */  andi  $t5, $v0, 0xff
/* 01F73C 8001EB3C 448D8000 */  mtc1  $t5, $f16
/* 01F740 8001EB40 240C0100 */  li    $t4, 256
/* 01F744 8001EB44 01875823 */  subu  $t3, $t4, $a3
/* 01F748 8001EB48 A60B0006 */  sh    $t3, 6($s0)
/* 01F74C 8001EB4C A6000008 */  sh    $zero, 8($s0)
/* 01F750 8001EB50 A202000C */  sb    $v0, 0xc($s0)
/* 01F754 8001EB54 A204000D */  sb    $a0, 0xd($s0)
/* 01F758 8001EB58 05A10005 */  bgez  $t5, .L8001EB70_ovl0
/* 01F75C 8001EB5C 468084A0 */   cvt.s.w $f18, $f16
/* 01F760 8001EB60 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 01F764 8001EB64 44812000 */  mtc1  $at, $f4
/* 01F768 8001EB68 00000000 */  nop   
/* 01F76C 8001EB6C 46049480 */  add.s $f18, $f18, $f4
.L8001EB70_ovl0:
/* 01F770 8001EB70 1000004D */  b     .L8001ECA8_ovl0
/* 01F774 8001EB74 E6320000 */   swc1  $f18, ($s1)
.L8001EB78_ovl0:
/* 01F778 8001EB78 2418007F */  li    $t8, 127
/* 01F77C 8001EB7C 0304C823 */  subu  $t9, $t8, $a0
/* 01F780 8001EB80 332900FF */  andi  $t1, $t9, 0xff
/* 01F784 8001EB84 44894000 */  mtc1  $t1, $f8
/* 01F788 8001EB88 240E0100 */  li    $t6, 256
/* 01F78C 8001EB8C 01C77823 */  subu  $t7, $t6, $a3
/* 01F790 8001EB90 A60F0006 */  sh    $t7, 6($s0)
/* 01F794 8001EB94 A6000008 */  sh    $zero, 8($s0)
/* 01F798 8001EB98 A204000D */  sb    $a0, 0xd($s0)
/* 01F79C 8001EB9C A219000C */  sb    $t9, 0xc($s0)
/* 01F7A0 8001EBA0 05210005 */  bgez  $t1, .L8001EBB8_ovl0
/* 01F7A4 8001EBA4 468041A0 */   cvt.s.w $f6, $f8
/* 01F7A8 8001EBA8 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 01F7AC 8001EBAC 44815000 */  mtc1  $at, $f10
/* 01F7B0 8001EBB0 00000000 */  nop   
/* 01F7B4 8001EBB4 460A3180 */  add.s $f6, $f6, $f10
.L8001EBB8_ovl0:
/* 01F7B8 8001EBB8 1000003B */  b     .L8001ECA8_ovl0
/* 01F7BC 8001EBBC E6260000 */   swc1  $f6, ($s1)
.L8001EBC0_ovl0:
/* 01F7C0 8001EBC0 0C007A68 */  jal   func_8001E9A0
/* 01F7C4 8001EBC4 A3A7003F */   sb    $a3, 0x3f($sp)
/* 01F7C8 8001EBC8 93A7003F */  lbu   $a3, 0x3f($sp)
/* 01F7CC 8001EBCC 240A0103 */  li    $t2, 259
/* 01F7D0 8001EBD0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01F7D4 8001EBD4 44818000 */  mtc1  $at, $f16
/* 01F7D8 8001EBD8 01476023 */  subu  $t4, $t2, $a3
/* 01F7DC 8001EBDC E600000C */  swc1  $f0, 0xc($s0)
/* 01F7E0 8001EBE0 A6000008 */  sh    $zero, 8($s0)
/* 01F7E4 8001EBE4 A60C0006 */  sh    $t4, 6($s0)
/* 01F7E8 8001EBE8 1000002F */  b     .L8001ECA8_ovl0
/* 01F7EC 8001EBEC E6300000 */   swc1  $f16, ($s1)
.L8001EBF0_ovl0:
/* 01F7F0 8001EBF0 240B0100 */  li    $t3, 256
/* 01F7F4 8001EBF4 01677023 */  subu  $t6, $t3, $a3
/* 01F7F8 8001EBF8 A60E0006 */  sh    $t6, 6($s0)
/* 01F7FC 8001EBFC A60E0008 */  sh    $t6, 8($s0)
/* 01F800 8001EC00 0C007A68 */  jal   func_8001E9A0
/* 01F804 8001EC04 A2000005 */   sb    $zero, 5($s0)
/* 01F808 8001EC08 4600010D */  trunc.w.s $f4, $f0
/* 01F80C 8001EC0C 44052000 */  mfc1  $a1, $f4
/* 01F810 8001EC10 00000000 */  nop   
/* 01F814 8001EC14 AFA50024 */  sw    $a1, 0x24($sp)
/* 01F818 8001EC18 0C00DC20 */  jal   alCents2Ratio
/* 01F81C 8001EC1C 00052023 */   negu  $a0, $a1
/* 01F820 8001EC20 E600000C */  swc1  $f0, 0xc($s0)
/* 01F824 8001EC24 0C00DC20 */  jal   alCents2Ratio
/* 01F828 8001EC28 8FA40024 */   lw    $a0, 0x24($sp)
/* 01F82C 8001EC2C E6000010 */  swc1  $f0, 0x10($s0)
/* 01F830 8001EC30 1000001D */  b     .L8001ECA8_ovl0
/* 01F834 8001EC34 E6200000 */   swc1  $f0, ($s1)
.L8001EC38_ovl0:
/* 01F838 8001EC38 24180100 */  li    $t8, 256
/* 01F83C 8001EC3C 03074823 */  subu  $t1, $t8, $a3
/* 01F840 8001EC40 A6090006 */  sh    $t1, 6($s0)
/* 01F844 8001EC44 0C007A68 */  jal   func_8001E9A0
/* 01F848 8001EC48 A6090008 */   sh    $t1, 8($s0)
/* 01F84C 8001EC4C 4600048D */  trunc.w.s $f18, $f0
/* 01F850 8001EC50 44049000 */  mfc1  $a0, $f18
/* 01F854 8001EC54 00000000 */  nop   
/* 01F858 8001EC58 00046040 */  sll   $t4, $a0, 1
/* 01F85C 8001EC5C AE0C0010 */  sw    $t4, 0x10($s0)
/* 01F860 8001EC60 0C00DC20 */  jal   alCents2Ratio
/* 01F864 8001EC64 AE04000C */   sw    $a0, 0xc($s0)
/* 01F868 8001EC68 1000000F */  b     .L8001ECA8_ovl0
/* 01F86C 8001EC6C E6200000 */   swc1  $f0, ($s1)
.L8001EC70_ovl0:
/* 01F870 8001EC70 240B0100 */  li    $t3, 256
/* 01F874 8001EC74 01677023 */  subu  $t6, $t3, $a3
/* 01F878 8001EC78 A60E0006 */  sh    $t6, 6($s0)
/* 01F87C 8001EC7C 0C007A68 */  jal   func_8001E9A0
/* 01F880 8001EC80 A60E0008 */   sh    $t6, 8($s0)
/* 01F884 8001EC84 4600020D */  trunc.w.s $f8, $f0
/* 01F888 8001EC88 44054000 */  mfc1  $a1, $f8
/* 01F88C 8001EC8C 00000000 */  nop   
/* 01F890 8001EC90 00052023 */  negu  $a0, $a1
/* 01F894 8001EC94 0005C040 */  sll   $t8, $a1, 1
/* 01F898 8001EC98 AE04000C */  sw    $a0, 0xc($s0)
/* 01F89C 8001EC9C 0C00DC20 */  jal   alCents2Ratio
/* 01F8A0 8001ECA0 AE180010 */   sw    $t8, 0x10($s0)
/* 01F8A4 8001ECA4 E6200000 */  swc1  $f0, ($s1)
.L8001ECA8_ovl0:
/* 01F8A8 8001ECA8 8FBF001C */  lw    $ra, 0x1c($sp)
.L8001ECAC_ovl0:
/* 01F8AC 8001ECAC 8FA20028 */  lw    $v0, 0x28($sp)
/* 01F8B0 8001ECB0 8FB00014 */  lw    $s0, 0x14($sp)
/* 01F8B4 8001ECB4 8FB10018 */  lw    $s1, 0x18($sp)
/* 01F8B8 8001ECB8 03E00008 */  jr    $ra
/* 01F8BC 8001ECBC 27BD0030 */   addiu $sp, $sp, 0x30
.type func_8001E9EC, @function
.size func_8001E9EC, . - func_8001E9EC
