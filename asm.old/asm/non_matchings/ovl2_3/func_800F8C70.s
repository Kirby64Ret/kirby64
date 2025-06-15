glabel func_800F8C70
/* 0816E0 800F8C70 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0816E4 800F8C74 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0816E8 800F8C78 AFA40070 */  sw    $a0, 0x70($sp)
/* 0816EC 800F8C7C 8C820000 */  lw    $v0, ($a0)
/* 0816F0 800F8C80 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 0816F4 800F8C84 27AF0050 */  addiu $t7, $sp, 0x50
/* 0816F8 800F8C88 00021880 */  sll   $v1, $v0, 2
/* 0816FC 800F8C8C 00230821 */  addu  $at, $at, $v1
/* 081700 800F8C90 C4242CD0 */ lwc1 $f4, %lo(gEntitiesPosYArray)($at)
/* 081704 800F8C94 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 081708 800F8C98 00230821 */  addu  $at, $at, $v1
/* 08170C 800F8C9C C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 081710 800F8CA0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 081714 800F8CA4 44815000 */  mtc1  $at, $f10
/* 081718 800F8CA8 46062200 */  add.s $f8, $f4, $f6
/* 08171C 800F8CAC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 081720 800F8CB0 44812000 */  mtc1  $at, $f4
/* 081724 800F8CB4 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 081728 800F8CB8 460A4480 */  add.s $f18, $f8, $f10
/* 08172C 800F8CBC 00230821 */  addu  $at, $at, $v1
/* 081730 800F8CC0 C4282B10 */ lwc1 $f8, %lo(gEntitiesPosXArray)($at)
/* 081734 800F8CC4 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 081738 800F8CC8 46049183 */  div.s $f6, $f18, $f4
/* 08173C 800F8CCC 00230821 */  addu  $at, $at, $v1
/* 081740 800F8CD0 C42A2E90 */ lwc1 $f10, %lo(gEntitiesPosZArray)($at)
/* 081744 800F8CD4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 081748 800F8CD8 00230821 */  addu  $at, $at, $v1
/* 08174C 800F8CDC C43225D0 */ lwc1 $f18, %lo(gEntitiesNextPosXArray)($at)
/* 081750 800F8CE0 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 081754 800F8CE4 00230821 */  addu  $at, $at, $v1
/* 081758 800F8CE8 C4242950 */ lwc1 $f4, %lo(gEntitiesNextPosZArray)($at)
/* 08175C 800F8CEC AFA3002C */  sw    $v1, 0x2c($sp)
/* 081760 800F8CF0 AFAF0014 */  sw    $t7, 0x14($sp)
/* 081764 800F8CF4 AFA00010 */  sw    $zero, 0x10($sp)
/* 081768 800F8CF8 27A40060 */  addiu $a0, $sp, 0x60
/* 08176C 800F8CFC 27A50054 */  addiu $a1, $sp, 0x54
/* 081770 800F8D00 00003025 */  move  $a2, $zero
/* 081774 800F8D04 00003825 */  move  $a3, $zero
/* 081778 800F8D08 E7A80060 */  swc1  $f8, 0x60($sp)
/* 08177C 800F8D0C E7AA0068 */  swc1  $f10, 0x68($sp)
/* 081780 800F8D10 E7B20054 */  swc1  $f18, 0x54($sp)
/* 081784 800F8D14 E7A4005C */  swc1  $f4, 0x5c($sp)
/* 081788 800F8D18 E7A60058 */  swc1  $f6, 0x58($sp)
/* 08178C 800F8D1C 0C0411A8 */  jal   func_801046A0
/* 081790 800F8D20 E7A60064 */   swc1  $f6, 0x64($sp)
/* 081794 800F8D24 1040004D */  beqz  $v0, .L800F8E5C_ovl2
/* 081798 800F8D28 8FA3002C */   lw    $v1, 0x2c($sp)
/* 08179C 800F8D2C 8FB80050 */  lw    $t8, 0x50($sp)
/* 0817A0 800F8D30 3C19800E */  lui   $t9, %hi(D_800E5F90) # $t9, 0x800e
/* 0817A4 800F8D34 27395F90 */  addiu $t9, %lo(D_800E5F90) # addiu $t9, $t9, 0x5f90
/* 0817A8 800F8D38 00793821 */  addu  $a3, $v1, $t9
/* 0817AC 800F8D3C 8CE90000 */  lw    $t1, ($a3)
/* 0817B0 800F8D40 9705000E */  lhu   $a1, 0xe($t8)
/* 0817B4 800F8D44 3C0A8013 */  lui   $t2, %hi(D_80129114) # $t2, 0x8013
/* 0817B8 800F8D48 C7A60054 */  lwc1  $f6, 0x54($sp)
/* 0817BC 800F8D4C 50A90044 */  beql  $a1, $t1, .L800F8E60_ovl2
/* 0817C0 800F8D50 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0817C4 800F8D54 8D4A9114 */  lw    $t2, %lo(D_80129114)($t2)
/* 0817C8 800F8D58 00056100 */  sll   $t4, $a1, 4
/* 0817CC 800F8D5C 8FAE0050 */  lw    $t6, 0x50($sp)
/* 0817D0 800F8D60 8D4B0004 */  lw    $t3, 4($t2)
/* 0817D4 800F8D64 95C60012 */  lhu   $a2, 0x12($t6)
/* 0817D8 800F8D68 016C6821 */  addu  $t5, $t3, $t4
/* 0817DC 800F8D6C 8DA40004 */  lw    $a0, 4($t5)
/* 0817E0 800F8D70 00C04025 */  move  $t0, $a2
/* 0817E4 800F8D74 908F0000 */  lbu   $t7, ($a0)
/* 0817E8 800F8D78 51E00003 */  beql  $t7, $zero, .L800F8D88_ovl2
/* 0817EC 800F8D7C 8C980008 */   lw    $t8, 8($a0)
/* 0817F0 800F8D80 24C80001 */  addiu $t0, $a2, 1
/* 0817F4 800F8D84 8C980008 */  lw    $t8, 8($a0)
.L800F8D88_ovl2:
/* 0817F8 800F8D88 0008C880 */  sll   $t9, $t0, 2
/* 0817FC 800F8D8C 0328C823 */  subu  $t9, $t9, $t0
/* 081800 800F8D90 0019C880 */  sll   $t9, $t9, 2
/* 081804 800F8D94 03191021 */  addu  $v0, $t8, $t9
/* 081808 800F8D98 C44E0000 */  lwc1  $f14, ($v0)
/* 08180C 800F8D9C C4500008 */  lwc1  $f16, 8($v0)
/* 081810 800F8DA0 C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 081814 800F8DA4 460E3001 */  sub.s $f0, $f6, $f14
/* 081818 800F8DA8 AFA70028 */  sw    $a3, 0x28($sp)
/* 08181C 800F8DAC AFA60034 */  sw    $a2, 0x34($sp)
/* 081820 800F8DB0 46104081 */  sub.s $f2, $f8, $f16
/* 081824 800F8DB4 46000282 */  mul.s $f10, $f0, $f0
/* 081828 800F8DB8 AFA5004C */  sw    $a1, 0x4c($sp)
/* 08182C 800F8DBC AFA40048 */  sw    $a0, 0x48($sp)
/* 081830 800F8DC0 46021482 */  mul.s $f18, $f2, $f2
/* 081834 800F8DC4 AFA3002C */  sw    $v1, 0x2c($sp)
/* 081838 800F8DC8 0C00CAC8 */  jal   sqrtf
/* 08183C 800F8DCC 46125300 */   add.s $f12, $f10, $f18
/* 081840 800F8DD0 8FA5004C */  lw    $a1, 0x4c($sp)
/* 081844 800F8DD4 8FA70028 */  lw    $a3, 0x28($sp)
/* 081848 800F8DD8 8FA40048 */  lw    $a0, 0x48($sp)
/* 08184C 800F8DDC 8FA60034 */  lw    $a2, 0x34($sp)
/* 081850 800F8DE0 ACE50000 */  sw    $a1, ($a3)
/* 081854 800F8DE4 8C8A0010 */  lw    $t2, 0x10($a0)
/* 081858 800F8DE8 00065880 */  sll   $t3, $a2, 2
/* 08185C 800F8DEC 8FA3002C */  lw    $v1, 0x2c($sp)
/* 081860 800F8DF0 014B6021 */  addu  $t4, $t2, $t3
/* 081864 800F8DF4 C5840000 */  lwc1  $f4, ($t4)
/* 081868 800F8DF8 3C09800E */  lui   $t1, %hi(D_800E6BD0) # $t1, 0x800e
/* 08186C 800F8DFC 25296BD0 */  addiu $t1, %lo(D_800E6BD0) # addiu $t1, $t1, 0x6bd0
/* 081870 800F8E00 3C01800E */ lui $at, %hi(D_800E6A10)
/* 081874 800F8E04 00691021 */  addu  $v0, $v1, $t1
/* 081878 800F8E08 00230821 */  addu  $at, $at, $v1
/* 08187C 800F8E0C E4440000 */  swc1  $f4, ($v0)
/* 081880 800F8E10 C4286A10 */ lwc1 $f8, %lo(D_800E6A10)($at)
/* 081884 800F8E14 44805000 */  mtc1  $zero, $f10
/* 081888 800F8E18 C486000C */  lwc1  $f6, 0xc($a0)
/* 08188C 800F8E1C 3C018013 */  lui   $at, %hi(D_801287AC)
/* 081890 800F8E20 4608503E */  c.le.s $f10, $f8
/* 081894 800F8E24 46060083 */  div.s $f2, $f0, $f6
/* 081898 800F8E28 45000006 */  bc1f  .L800F8E44_ovl2
/* 08189C 800F8E2C 00000000 */   nop   
/* 0818A0 800F8E30 3C018013 */  lui   $at, %hi(D_801287A8) # $at, 0x8013
/* 0818A4 800F8E34 C43287A8 */  lwc1  $f18, %lo(D_801287A8)($at)
/* 0818A8 800F8E38 46121082 */  mul.s $f2, $f2, $f18
/* 0818AC 800F8E3C 10000005 */  b     .L800F8E54_ovl2
/* 0818B0 800F8E40 C4460000 */   lwc1  $f6, ($v0)
.L800F8E44_ovl2:
/* 0818B4 800F8E44 C42487AC */  lwc1  $f4, %lo(D_801287AC)($at)
/* 0818B8 800F8E48 46041082 */  mul.s $f2, $f2, $f4
/* 0818BC 800F8E4C 00000000 */  nop   
/* 0818C0 800F8E50 C4460000 */  lwc1  $f6, ($v0)
.L800F8E54_ovl2:
/* 0818C4 800F8E54 46023200 */  add.s $f8, $f6, $f2
/* 0818C8 800F8E58 E4480000 */  swc1  $f8, ($v0)
.L800F8E5C_ovl2:
/* 0818CC 800F8E5C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800F8E60_ovl2:
/* 0818D0 800F8E60 27BD0070 */  addiu $sp, $sp, 0x70
/* 0818D4 800F8E64 03E00008 */  jr    $ra
/* 0818D8 800F8E68 00000000 */   nop   
.type func_800F8C70, @function
.size func_800F8C70, . - func_800F8C70
