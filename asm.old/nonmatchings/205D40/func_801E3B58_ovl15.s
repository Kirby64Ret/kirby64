glabel func_801E3B58_ovl15
/* 20E6B8 801E3B58 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 20E6BC 801E3B5C 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 20E6C0 801E3B60 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 20E6C4 801E3B64 8D030000 */  lw         $v1, 0x0($t0)
/* 20E6C8 801E3B68 AFBF0024 */  sw         $ra, 0x24($sp)
.L801E3B6C_ovl16:
/* 20E6CC 801E3B6C AFB00020 */  sw         $s0, 0x20($sp)
/* 20E6D0 801E3B70 AFA40048 */  sw         $a0, 0x48($sp)
/* 20E6D4 801E3B74 8C6E0000 */  lw         $t6, 0x0($v1)
/* 20E6D8 801E3B78 3C07800F */  lui        $a3, %hi(D_800E9560)
/* 20E6DC 801E3B7C 24E79560 */  addiu      $a3, $a3, %lo(D_800E9560)
/* 20E6E0 801E3B80 000E7880 */  sll        $t7, $t6, 2
.L801E3B84_ovl17:
/* 20E6E4 801E3B84 00EF2021 */  addu       $a0, $a3, $t7
.L801E3B88_ovl13:
/* 20E6E8 801E3B88 8C980000 */  lw         $t8, 0x0($a0)
/* 20E6EC 801E3B8C 3C10800E */  lui        $s0, %hi(D_800DFBD0)
.L801E3B90_ovl16:
/* 20E6F0 801E3B90 2610FBD0 */  addiu      $s0, $s0, %lo(D_800DFBD0)
/* 20E6F4 801E3B94 27190001 */  addiu      $t9, $t8, 0x1
/* 20E6F8 801E3B98 AC990000 */  sw         $t9, 0x0($a0)
.L801E3B9C_ovl17:
/* 20E6FC 801E3B9C 8C690000 */  lw         $t1, 0x0($v1)
/* 20E700 801E3BA0 44801000 */  mtc1       $zero, $f2
/* 20E704 801E3BA4 00095080 */  sll        $t2, $t1, 2
/* 20E708 801E3BA8 020A5821 */  addu       $t3, $s0, $t2
.L801E3BAC_ovl13:
/* 20E70C 801E3BAC 8D6C0000 */  lw         $t4, 0x0($t3)
/* 20E710 801E3BB0 8D8D0004 */  lw         $t5, 0x4($t4)
/* 20E714 801E3BB4 E5A20024 */  swc1       $f2, 0x24($t5)
.L801E3BB8_ovl16:
/* 20E718 801E3BB8 8D0E0000 */  lw         $t6, 0x0($t0)
/* 20E71C 801E3BBC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 20E720 801E3BC0 000FC080 */  sll        $t8, $t7, 2
/* 20E724 801E3BC4 0218C821 */  addu       $t9, $s0, $t8
/* 20E728 801E3BC8 8F290000 */  lw         $t1, 0x0($t9)
/* 20E72C 801E3BCC 8D250004 */  lw         $a1, 0x4($t1)
/* 20E730 801E3BD0 C4A00024 */  lwc1       $f0, 0x24($a1)
/* 20E734 801E3BD4 E4A00020 */  swc1       $f0, 0x20($a1)
/* 20E738 801E3BD8 8D0A0000 */  lw         $t2, 0x0($t0)
/* 20E73C 801E3BDC 8D4B0000 */  lw         $t3, 0x0($t2)
.L801E3BE0_ovl16:
/* 20E740 801E3BE0 000B6080 */  sll        $t4, $t3, 2
glabel func_801E3BE4_ovl10
/* 20E744 801E3BE4 020C6821 */  addu       $t5, $s0, $t4
/* 20E748 801E3BE8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 20E74C 801E3BEC 8DCF0004 */  lw         $t7, 0x4($t6)
/* 20E750 801E3BF0 E5E0001C */  swc1       $f0, 0x1C($t7)
/* 20E754 801E3BF4 8D180000 */  lw         $t8, 0x0($t0)
/* 20E758 801E3BF8 8F190000 */  lw         $t9, 0x0($t8)
.L801E3BFC_ovl13:
/* 20E75C 801E3BFC 00194880 */  sll        $t1, $t9, 2
/* 20E760 801E3C00 02095021 */  addu       $t2, $s0, $t1
/* 20E764 801E3C04 8D4B0000 */  lw         $t3, 0x0($t2)
.L801E3C08_ovl17:
/* 20E768 801E3C08 8D6C0008 */  lw         $t4, 0x8($t3)
/* 20E76C 801E3C0C E5820024 */  swc1       $f2, 0x24($t4)
/* 20E770 801E3C10 8D0D0000 */  lw         $t5, 0x0($t0)
/* 20E774 801E3C14 8DAE0000 */  lw         $t6, 0x0($t5)
/* 20E778 801E3C18 000E7880 */  sll        $t7, $t6, 2
/* 20E77C 801E3C1C 020FC021 */  addu       $t8, $s0, $t7
/* 20E780 801E3C20 8F190000 */  lw         $t9, 0x0($t8)
/* 20E784 801E3C24 3C18800F */  lui        $t8, %hi(D_800EA360)
/* 20E788 801E3C28 8F260008 */  lw         $a2, 0x8($t9)
glabel func_801E3C2C_ovl10
/* 20E78C 801E3C2C C4C00024 */  lwc1       $f0, 0x24($a2)
/* 20E790 801E3C30 E4C00020 */  swc1       $f0, 0x20($a2)
/* 20E794 801E3C34 8D090000 */  lw         $t1, 0x0($t0)
.L801E3C38_ovl16:
/* 20E798 801E3C38 8D2A0000 */  lw         $t2, 0x0($t1)
/* 20E79C 801E3C3C 000A5880 */  sll        $t3, $t2, 2
.L801E3C40_ovl13:
/* 20E7A0 801E3C40 020B6021 */  addu       $t4, $s0, $t3
.L801E3C44_ovl17:
/* 20E7A4 801E3C44 8D8D0000 */  lw         $t5, 0x0($t4)
/* 20E7A8 801E3C48 8DAE0008 */  lw         $t6, 0x8($t5)
/* 20E7AC 801E3C4C E5C0001C */  swc1       $f0, 0x1C($t6)
/* 20E7B0 801E3C50 8D0F0000 */  lw         $t7, 0x0($t0)
/* 20E7B4 801E3C54 8DE20000 */  lw         $v0, 0x0($t7)
.L801E3C58_ovl16:
/* 20E7B8 801E3C58 00021080 */  sll        $v0, $v0, 2
/* 20E7BC 801E3C5C 0302C021 */  addu       $t8, $t8, $v0
/* 20E7C0 801E3C60 8F18A360 */  lw         $t8, %lo(D_800EA360)($t8)
/* 20E7C4 801E3C64 02025821 */  addu       $t3, $s0, $v0
/* 20E7C8 801E3C68 0202C821 */  addu       $t9, $s0, $v0
/* 20E7CC 801E3C6C 53000008 */  beql       $t8, $zero, .L801E3C90_ovl15
/* 20E7D0 801E3C70 8D6C0000 */   lw        $t4, 0x0($t3)
/* 20E7D4 801E3C74 8F290000 */  lw         $t1, 0x0($t9)
.L801E3C78_ovl16:
/* 20E7D8 801E3C78 3C01801E */  lui        $at, %hi(D_801E68EC_ovl15)
/* 20E7DC 801E3C7C C42468EC */  lwc1       $f4, %lo(D_801E68EC_ovl15)($at)
/* 20E7E0 801E3C80 8D2A0004 */  lw         $t2, 0x4($t1)
/* 20E7E4 801E3C84 10000006 */  b          .L801E3CA0_ovl15
/* 20E7E8 801E3C88 E5440030 */   swc1      $f4, 0x30($t2)
/* 20E7EC 801E3C8C 8D6C0000 */  lw         $t4, 0x0($t3)
.L801E3C90_ovl15:
/* 20E7F0 801E3C90 3C01801E */  lui        $at, %hi(D_801E68F0_ovl15)
/* 20E7F4 801E3C94 C42668F0 */  lwc1       $f6, %lo(D_801E68F0_ovl15)($at)
/* 20E7F8 801E3C98 8D8D0004 */  lw         $t5, 0x4($t4)
.L801E3C9C_ovl17:
/* 20E7FC 801E3C9C E5A60030 */  swc1       $f6, 0x30($t5)
.L801E3CA0_ovl15:
/* 20E800 801E3CA0 8D0E0000 */  lw         $t6, 0x0($t0)
/* 20E804 801E3CA4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 20E808 801E3CA8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 20E80C 801E3CAC 000FC080 */  sll        $t8, $t7, 2
.L801E3CB0_ovl13:
/* 20E810 801E3CB0 0218C821 */  addu       $t9, $s0, $t8
/* 20E814 801E3CB4 8F290000 */  lw         $t1, 0x0($t9)
/* 20E818 801E3CB8 8D2A0004 */  lw         $t2, 0x4($t1)
/* 20E81C 801E3CBC E5420038 */  swc1       $f2, 0x38($t2)
/* 20E820 801E3CC0 8D0B0000 */  lw         $t3, 0x0($t0)
/* 20E824 801E3CC4 8D6C0000 */  lw         $t4, 0x0($t3)
/* 20E828 801E3CC8 000C6880 */  sll        $t5, $t4, 2
.L801E3CCC_ovl13:
/* 20E82C 801E3CCC 020D7021 */  addu       $t6, $s0, $t5
glabel func_801E3CD0_ovl9
/* 20E830 801E3CD0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 20E834 801E3CD4 8DE50004 */  lw         $a1, 0x4($t7)
.L801E3CD8_ovl17:
/* 20E838 801E3CD8 C4A80038 */  lwc1       $f8, 0x38($a1)
/* 20E83C 801E3CDC E4A80034 */  swc1       $f8, 0x34($a1)
/* 20E840 801E3CE0 8D030000 */  lw         $v1, 0x0($t0)
/* 20E844 801E3CE4 8C620000 */  lw         $v0, 0x0($v1)
/* 20E848 801E3CE8 00021080 */  sll        $v0, $v0, 2
.L801E3CEC_ovl10:
/* 20E84C 801E3CEC 00220821 */  addu       $at, $at, $v0
glabel func_801E3CF0_ovl16
/* 20E850 801E3CF0 C42A3210 */  lwc1       $f10, %lo(D_800E3210)($at)
/* 20E854 801E3CF4 0202C021 */  addu       $t8, $s0, $v0
/* 20E858 801E3CF8 00E24821 */  addu       $t1, $a3, $v0
/* 20E85C 801E3CFC 460A103C */  c.lt.s     $f2, $f10
/* 20E860 801E3D00 00000000 */  nop
/* 20E864 801E3D04 45020016 */  bc1fl      .L801E3D60_ovl15
/* 20E868 801E3D08 8D2A0000 */   lw        $t2, 0x0($t1)
/* 20E86C 801E3D0C 8F190000 */  lw         $t9, 0x0($t8)
/* 20E870 801E3D10 27A4003C */  addiu      $a0, $sp, 0x3C
/* 20E874 801E3D14 0C0291E5 */  jal        func_800A4794
/* 20E878 801E3D18 8F25000C */   lw        $a1, 0xC($t9)
/* 20E87C 801E3D1C C7B00040 */  lwc1       $f16, 0x40($sp)
/* 20E880 801E3D20 C7B20044 */  lwc1       $f18, 0x44($sp)
/* 20E884 801E3D24 24040006 */  addiu      $a0, $zero, 0x6
/* 20E888 801E3D28 24050002 */  addiu      $a1, $zero, 0x2
/* 20E88C 801E3D2C 2406000B */  addiu      $a2, $zero, 0xB
.L801E3D30_ovl17:
/* 20E890 801E3D30 8FA7003C */  lw         $a3, 0x3C($sp)
/* 20E894 801E3D34 E7B00010 */  swc1       $f16, 0x10($sp)
/* 20E898 801E3D38 0C029FDD */  jal        func_800A7F74
/* 20E89C 801E3D3C E7B20014 */   swc1      $f18, 0x14($sp)
/* 20E8A0 801E3D40 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 20E8A4 801E3D44 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 20E8A8 801E3D48 8D030000 */  lw         $v1, 0x0($t0)
/* 20E8AC 801E3D4C 44801000 */  mtc1       $zero, $f2
/* 20E8B0 801E3D50 8C620000 */  lw         $v0, 0x0($v1)
/* 20E8B4 801E3D54 10000027 */  b          .L801E3DF4_ovl15
/* 20E8B8 801E3D58 00021080 */   sll       $v0, $v0, 2
/* 20E8BC 801E3D5C 8D2A0000 */  lw         $t2, 0x0($t1)
.L801E3D60_ovl15:
/* 20E8C0 801E3D60 3C04800E */  lui        $a0, %hi(D_800DFF50)
/* 20E8C4 801E3D64 00822021 */  addu       $a0, $a0, $v0
/* 20E8C8 801E3D68 05410004 */  bgez       $t2, .L801E3D7C_ovl15
/* 20E8CC 801E3D6C 314B0001 */   andi      $t3, $t2, 0x1
/* 20E8D0 801E3D70 11600002 */  beqz       $t3, .L801E3D7C_ovl15
.L801E3D74_ovl17:
/* 20E8D4 801E3D74 00000000 */   nop
.L801E3D78_ovl13:
/* 20E8D8 801E3D78 256BFFFE */  addiu      $t3, $t3, -0x2
.L801E3D7C_ovl15:
/* 20E8DC 801E3D7C 1160001D */  beqz       $t3, .L801E3DF4_ovl15
.L801E3D80_ovl16:
/* 20E8E0 801E3D80 00000000 */   nop
/* 20E8E4 801E3D84 8C84FF50 */  lw         $a0, %lo(D_800DFF50)($a0)
/* 20E8E8 801E3D88 3C010001 */  lui        $at, (0x10532 >> 16)
/* 20E8EC 801E3D8C 34210532 */  ori        $at, $at, (0x10532 & 0xFFFF)
/* 20E8F0 801E3D90 10810005 */  beq        $a0, $at, func_801E3DA8_ovl15
/* 20E8F4 801E3D94 02026021 */   addu      $t4, $s0, $v0
/* 20E8F8 801E3D98 3C010001 */  lui        $at, (0x1052F >> 16)
/* 20E8FC 801E3D9C 3421052F */  ori        $at, $at, (0x1052F & 0xFFFF)
.L801E3DA0_ovl13:
/* 20E900 801E3DA0 14810014 */  bne        $a0, $at, .L801E3DF4_ovl15
/* 20E904 801E3DA4 00000000 */   nop
glabel func_801E3DA8_ovl15
/* 20E908 801E3DA8 8D8D0000 */  lw         $t5, 0x0($t4)
.L801E3DAC_ovl13:
/* 20E90C 801E3DAC 27A4003C */  addiu      $a0, $sp, 0x3C
/* 20E910 801E3DB0 0C0291E5 */  jal        func_800A4794
/* 20E914 801E3DB4 8DA5000C */   lw        $a1, 0xC($t5)
/* 20E918 801E3DB8 C7A40040 */  lwc1       $f4, 0x40($sp)
/* 20E91C 801E3DBC C7A60044 */  lwc1       $f6, 0x44($sp)
glabel func_801E3DC0_ovl13
/* 20E920 801E3DC0 24040006 */  addiu      $a0, $zero, 0x6
/* 20E924 801E3DC4 24050002 */  addiu      $a1, $zero, 0x2
/* 20E928 801E3DC8 2406000B */  addiu      $a2, $zero, 0xB
.L801E3DCC_ovl17:
/* 20E92C 801E3DCC 8FA7003C */  lw         $a3, 0x3C($sp)
/* 20E930 801E3DD0 E7A40010 */  swc1       $f4, 0x10($sp)
/* 20E934 801E3DD4 0C029FDD */  jal        func_800A7F74
/* 20E938 801E3DD8 E7A60014 */   swc1      $f6, 0x14($sp)
/* 20E93C 801E3DDC 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 20E940 801E3DE0 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 20E944 801E3DE4 8D030000 */  lw         $v1, 0x0($t0)
/* 20E948 801E3DE8 44801000 */  mtc1       $zero, $f2
/* 20E94C 801E3DEC 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801E3DF0_ovl9
/* 20E950 801E3DF0 00021080 */  sll        $v0, $v0, 2
.L801E3DF4_ovl15:
/* 20E954 801E3DF4 3C0E800F */  lui        $t6, %hi(D_800EA1A0)
/* 20E958 801E3DF8 01C27021 */  addu       $t6, $t6, $v0
/* 20E95C 801E3DFC 8DCEA1A0 */  lw         $t6, %lo(D_800EA1A0)($t6)
/* 20E960 801E3E00 02027821 */  addu       $t7, $s0, $v0
glabel func_801E3E04_ovl16
/* 20E964 801E3E04 11C0000C */  beqz       $t6, .L801E3E38_ovl15
.L801E3E08_ovl17:
/* 20E968 801E3E08 00000000 */   nop
/* 20E96C 801E3E0C 8DF80000 */  lw         $t8, 0x0($t7)
/* 20E970 801E3E10 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 20E974 801E3E14 44815000 */  mtc1       $at, $f10
/* 20E978 801E3E18 8F190008 */  lw         $t9, 0x8($t8)
/* 20E97C 801E3E1C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L801E3E20_ovl16:
/* 20E980 801E3E20 00220821 */  addu       $at, $at, $v0
.L801E3E24_ovl16:
/* 20E984 801E3E24 C7280044 */  lwc1       $f8, 0x44($t9)
/* 20E988 801E3E28 460A4402 */  mul.s      $f16, $f8, $f10
/* 20E98C 801E3E2C E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 20E990 801E3E30 8C620000 */  lw         $v0, 0x0($v1)
/* 20E994 801E3E34 00021080 */  sll        $v0, $v0, 2
.L801E3E38_ovl15:
/* 20E998 801E3E38 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 20E99C 801E3E3C 00220821 */  addu       $at, $at, $v0
.L801E3E40_ovl16:
/* 20E9A0 801E3E40 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 20E9A4 801E3E44 02024821 */  addu       $t1, $s0, $v0
/* 20E9A8 801E3E48 46121032 */  c.eq.s     $f2, $f18
/* 20E9AC 801E3E4C 00000000 */  nop
.L801E3E50_ovl16:
/* 20E9B0 801E3E50 45000008 */  bc1f       .L801E3E74_ovl15
.L801E3E54_ovl16:
/* 20E9B4 801E3E54 00000000 */   nop
.L801E3E58_ovl10:
/* 20E9B8 801E3E58 8D230000 */  lw         $v1, 0x0($t1)
/* 20E9BC 801E3E5C 8C6A0008 */  lw         $t2, 0x8($v1)
.L801E3E60_ovl17:
/* 20E9C0 801E3E60 8C640004 */  lw         $a0, 0x4($v1)
/* 20E9C4 801E3E64 0C079755 */  jal        func_801E5D54_ovl15
/* 20E9C8 801E3E68 8D450044 */   lw        $a1, 0x44($t2)
/* 20E9CC 801E3E6C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 20E9D0 801E3E70 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
.L801E3E74_ovl15:
/* 20E9D4 801E3E74 3C0B800D */  lui        $t3, %hi(D_800D7118 + 0x3C)
/* 20E9D8 801E3E78 8D6B7154 */  lw         $t3, %lo(D_800D7118 + 0x3C)($t3)
/* 20E9DC 801E3E7C 55600011 */  bnel       $t3, $zero, .L801E3EC4_ovl15
.L801E3E80_ovl16:
/* 20E9E0 801E3E80 8FBF0024 */   lw        $ra, 0x24($sp)
/* 20E9E4 801E3E84 8D030000 */  lw         $v1, 0x0($t0)
/* 20E9E8 801E3E88 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 20E9EC 801E3E8C 240CFFFF */  addiu      $t4, $zero, -0x1
/* 20E9F0 801E3E90 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E3E94_ovl16:
/* 20E9F4 801E3E94 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 20E9F8 801E3E98 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
.L801E3E9C_ovl17:
/* 20E9FC 801E3E9C 000D7080 */  sll        $t6, $t5, 2
/* 20EA00 801E3EA0 002E0821 */  addu       $at, $at, $t6
.L801E3EA4_ovl10:
/* 20EA04 801E3EA4 AC2CDC50 */  sw         $t4, %lo(gEntityVtableIndexArray)($at)
.L801E3EA8_ovl16:
/* 20EA08 801E3EA8 8C6F0000 */  lw         $t7, 0x0($v1)
/* 20EA0C 801E3EAC 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
/* 20EA10 801E3EB0 000FC080 */  sll        $t8, $t7, 2
/* 20EA14 801E3EB4 00982021 */  addu       $a0, $a0, $t8
.L801E3EB8_ovl9:
/* 20EA18 801E3EB8 0C02C7B2 */  jal        assign_new_process_entry
.L801E3EBC_ovl16:
/* 20EA1C 801E3EBC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 20EA20 801E3EC0 8FBF0024 */  lw         $ra, 0x24($sp)
.L801E3EC4_ovl15:
/* 20EA24 801E3EC4 8FB00020 */  lw         $s0, 0x20($sp)
/* 20EA28 801E3EC8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 20EA2C 801E3ECC 03E00008 */  jr         $ra
.L801E3ED0_ovl13:
/* 20EA30 801E3ED0 00000000 */   nop
