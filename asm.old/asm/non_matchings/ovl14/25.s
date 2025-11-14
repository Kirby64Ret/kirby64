glabel func_801DCBCC_ovl14 # 25
/* 1FF7BC 801DCBCC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 1FF7C0 801DCBD0 AFB10018 */  sw          $s1, 0x18($sp)
/* 1FF7C4 801DCBD4 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1FF7C8 801DCBD8 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1FF7CC 801DCBDC 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1FF7D0 801DCBE0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 1FF7D4 801DCBE4 AFB00014 */  sw          $s0, 0x14($sp)
/* 1FF7D8 801DCBE8 AFA40038 */  sw          $a0, 0x38($sp)
/* 1FF7DC 801DCBEC 8DC30000 */  lw          $v1, 0x0($t6)
/* 1FF7E0 801DCBF0 3C02800E */  lui         $v0, %hi(D_800E1B50)
/* 1FF7E4 801DCBF4 3C0F800B */  lui         $t7, %hi(D_800B6474)
/* 1FF7E8 801DCBF8 00031880 */  sll         $v1, $v1, 2
/* 1FF7EC 801DCBFC 00431021 */  addu        $v0, $v0, $v1
/* 1FF7F0 801DCC00 8C421B50 */  lw          $v0, %lo(D_800E1B50)($v0)
/* 1FF7F4 801DCC04 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1FF7F8 801DCC08 00230821 */  addu        $at, $at, $v1
/* 1FF7FC 801DCC0C 25EF6474 */  addiu       $t7, $t7, %lo(D_800B6474)
/* 1FF800 801DCC10 3C04801E */  lui         $a0, %hi(func_801DCE1C_ovl14)
/* 1FF804 801DCC14 8C500084 */  lw          $s0, 0x84($v0)
/* 1FF808 801DCC18 AC2FEF90 */  sw          $t7, %lo(D_800DEF90)($at)
/* 1FF80C 801DCC1C 2484CE1C */  addiu       $a0, $a0, %lo(func_801DCE1C_ovl14)
/* 1FF810 801DCC20 0C068354 */  jal         func_801A0D50
/* 1FF814 801DCC24 AFA2002C */   sw         $v0, 0x2C($sp)
/* 1FF818 801DCC28 3C040001 */  lui         $a0, (0x1006C >> 16)
/* 1FF81C 801DCC2C 0C02A5D8 */  jal         func_800A9760
/* 1FF820 801DCC30 3484006C */   ori        $a0, $a0, (0x1006C & 0xFFFF)
/* 1FF824 801DCC34 0C06B9F8 */  jal         func_801AE7E0_ovl7
/* 1FF828 801DCC38 2404000E */   addiu      $a0, $zero, 0xE
/* 1FF82C 801DCC3C 0C077D45 */  jal         func_801DF514_ovl14
/* 1FF830 801DCC40 00000000 */   nop
/* 1FF834 801DCC44 0C077DC8 */  jal         func_801DF720_ovl14
/* 1FF838 801DCC48 00000000 */   nop
/* 1FF83C 801DCC4C 8E220000 */  lw          $v0, 0x0($s1)
/* 1FF840 801DCC50 3C01800E */  lui         $at, %hi(D_800DDA90)
/* 1FF844 801DCC54 24180024 */  addiu       $t8, $zero, 0x24
/* 1FF848 801DCC58 8C590000 */  lw          $t9, 0x0($v0)
/* 1FF84C 801DCC5C 2409FFFF */  addiu       $t1, $zero, -0x1
/* 1FF850 801DCC60 3C0C800E */  lui         $t4, %hi(D_800E5F90)
/* 1FF854 801DCC64 00194080 */  sll         $t0, $t9, 2
/* 1FF858 801DCC68 00280821 */  addu        $at, $at, $t0
/* 1FF85C 801DCC6C AC38DA90 */  sw          $t8, %lo(D_800DDA90)($at)
/* 1FF860 801DCC70 3C01800D */  lui         $at, %hi(D_800D7154)
/* 1FF864 801DCC74 AC297154 */  sw          $t1, %lo(D_800D7154)($at)
/* 1FF868 801DCC78 8C4A0000 */  lw          $t2, 0x0($v0)
/* 1FF86C 801DCC7C 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 1FF870 801DCC80 27A40030 */  addiu       $a0, $sp, 0x30
/* 1FF874 801DCC84 000A5880 */  sll         $t3, $t2, 2
/* 1FF878 801DCC88 018B6021 */  addu        $t4, $t4, $t3
/* 1FF87C 801DCC8C 8D8C5F90 */  lw          $t4, %lo(D_800E5F90)($t4)
/* 1FF880 801DCC90 3C05C3A0 */  lui         $a1, (0xC3A00000 >> 16)
/* 1FF884 801DCC94 AFAC0030 */  sw          $t4, 0x30($sp)
/* 1FF888 801DCC98 8C4D0000 */  lw          $t5, 0x0($v0)
/* 1FF88C 801DCC9C 000D7080 */  sll         $t6, $t5, 2
/* 1FF890 801DCCA0 002E0821 */  addu        $at, $at, $t6
/* 1FF894 801DCCA4 C4246BD0 */  lwc1        $f4, %lo(D_800E6BD0)($at)
/* 1FF898 801DCCA8 0C03E622 */  jal         func_800F9888
/* 1FF89C 801DCCAC E7A40034 */   swc1       $f4, 0x34($sp)
/* 1FF8A0 801DCCB0 5440001F */  bnel        $v0, $zero, .L801DCD30
/* 1FF8A4 801DCCB4 8E220000 */   lw         $v0, 0x0($s1)
/* 1FF8A8 801DCCB8 8E220000 */  lw          $v0, 0x0($s1)
/* 1FF8AC 801DCCBC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 1FF8B0 801DCCC0 3C04800E */  lui         $a0, %hi(D_800E6150)
/* 1FF8B4 801DCCC4 8C590000 */  lw          $t9, 0x0($v0)
/* 1FF8B8 801DCCC8 24846150 */  addiu       $a0, $a0, %lo(D_800E6150)
/* 1FF8BC 801DCCCC 3C01800E */  lui         $at, %hi(D_800E5F90)
/* 1FF8C0 801DCCD0 0019C080 */  sll         $t8, $t9, 2
/* 1FF8C4 801DCCD4 00984021 */  addu        $t0, $a0, $t8
/* 1FF8C8 801DCCD8 AD0F0000 */  sw          $t7, 0x0($t0)
/* 1FF8CC 801DCCDC 8C430000 */  lw          $v1, 0x0($v0)
/* 1FF8D0 801DCCE0 C7A60034 */  lwc1        $f6, 0x34($sp)
/* 1FF8D4 801DCCE4 3C05800E */  lui         $a1, %hi(D_800E6D90)
/* 1FF8D8 801DCCE8 00031880 */  sll         $v1, $v1, 2
/* 1FF8DC 801DCCEC 00834821 */  addu        $t1, $a0, $v1
/* 1FF8E0 801DCCF0 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1FF8E4 801DCCF4 00230821 */  addu        $at, $at, $v1
/* 1FF8E8 801DCCF8 24A56D90 */  addiu       $a1, $a1, %lo(D_800E6D90)
/* 1FF8EC 801DCCFC AC2A5F90 */  sw          $t2, %lo(D_800E5F90)($at)
/* 1FF8F0 801DCD00 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1FF8F4 801DCD04 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 1FF8F8 801DCD08 000B6080 */  sll         $t4, $t3, 2
/* 1FF8FC 801DCD0C 00AC6821 */  addu        $t5, $a1, $t4
/* 1FF900 801DCD10 E5A60000 */  swc1        $f6, 0x0($t5)
/* 1FF904 801DCD14 8C430000 */  lw          $v1, 0x0($v0)
/* 1FF908 801DCD18 00031880 */  sll         $v1, $v1, 2
/* 1FF90C 801DCD1C 00A37021 */  addu        $t6, $a1, $v1
/* 1FF910 801DCD20 C5C80000 */  lwc1        $f8, 0x0($t6)
/* 1FF914 801DCD24 00230821 */  addu        $at, $at, $v1
/* 1FF918 801DCD28 E4286BD0 */  swc1        $f8, %lo(D_800E6BD0)($at)
/* 1FF91C 801DCD2C 8E220000 */  lw          $v0, 0x0($s1)
.L801DCD30:
/* 1FF920 801DCD30 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1FF924 801DCD34 44815000 */  mtc1        $at, $f10
/* 1FF928 801DCD38 8C590000 */  lw          $t9, 0x0($v0)
/* 1FF92C 801DCD3C 8FAF002C */  lw          $t7, 0x2C($sp)
/* 1FF930 801DCD40 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1FF934 801DCD44 0019C080 */  sll         $t8, $t9, 2
/* 1FF938 801DCD48 00380821 */  addu        $at, $at, $t8
/* 1FF93C 801DCD4C E42A6A10 */  swc1        $f10, %lo(D_800E6A10)($at)
/* 1FF940 801DCD50 8DE80088 */  lw          $t0, 0x88($t7)
/* 1FF944 801DCD54 8C490000 */  lw          $t1, 0x0($v0)
/* 1FF948 801DCD58 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1FF94C 801DCD5C C5100000 */  lwc1        $f16, 0x0($t0)
/* 1FF950 801DCD60 00095080 */  sll         $t2, $t1, 2
/* 1FF954 801DCD64 002A0821 */  addu        $at, $at, $t2
/* 1FF958 801DCD68 E4307B20 */  swc1        $f16, %lo(D_800E7B20)($at)
/* 1FF95C 801DCD6C 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1FF960 801DCD70 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 1FF964 801DCD74 000B6080 */  sll         $t4, $t3, 2
/* 1FF968 801DCD78 002C0821 */  addu        $at, $at, $t4
/* 1FF96C 801DCD7C AC209AA0 */  sw          $zero, %lo(D_800E9AA0)($at)
/* 1FF970 801DCD80 3C01800D */  lui         $at, %hi(D_800D70A8)
/* 1FF974 801DCD84 12000019 */  beqz        $s0, .L801DCDEC
/* 1FF978 801DCD88 AC2070A8 */   sw         $zero, %lo(D_800D70A8)($at)
/* 1FF97C 801DCD8C 8C4D0000 */  lw          $t5, 0x0($v0)
/* 1FF980 801DCD90 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF984 801DCD94 02002025 */  move        $a0, $s0
/* 1FF988 801DCD98 000D7080 */  sll         $t6, $t5, 2
/* 1FF98C 801DCD9C 002E0821 */  addu        $at, $at, $t6
/* 1FF990 801DCDA0 C43225D0 */  lwc1        $f18, %lo(gEntitiesNextPosXArray)($at)
/* 1FF994 801DCDA4 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 1FF998 801DCDA8 E6120004 */  swc1        $f18, 0x4($s0)
/* 1FF99C 801DCDAC 8E390000 */  lw          $t9, 0x0($s1)
/* 1FF9A0 801DCDB0 8F380000 */  lw          $t8, 0x0($t9)
/* 1FF9A4 801DCDB4 00187880 */  sll         $t7, $t8, 2
/* 1FF9A8 801DCDB8 002F0821 */  addu        $at, $at, $t7
/* 1FF9AC 801DCDBC C4242790 */  lwc1        $f4, %lo(gEntitiesNextPosYArray)($at)
/* 1FF9B0 801DCDC0 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 1FF9B4 801DCDC4 E6040008 */  swc1        $f4, 0x8($s0)
/* 1FF9B8 801DCDC8 8E280000 */  lw          $t0, 0x0($s1)
/* 1FF9BC 801DCDCC 8D090000 */  lw          $t1, 0x0($t0)
/* 1FF9C0 801DCDD0 00095080 */  sll         $t2, $t1, 2
/* 1FF9C4 801DCDD4 002A0821 */  addu        $at, $at, $t2
/* 1FF9C8 801DCDD8 C4262950 */  lwc1        $f6, %lo(gEntitiesNextPosZArray)($at)
/* 1FF9CC 801DCDDC 0C04146B */  jal         func_801051AC
/* 1FF9D0 801DCDE0 E606000C */   swc1       $f6, 0xC($s0)
/* 1FF9D4 801DCDE4 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FF9D8 801DCDE8 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
.L801DCDEC:
/* 1FF9DC 801DCDEC 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1FF9E0 801DCDF0 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FF9E4 801DCDF4 8FA40038 */  lw          $a0, 0x38($sp)
/* 1FF9E8 801DCDF8 000B6080 */  sll         $t4, $t3, 2
/* 1FF9EC 801DCDFC 002C0821 */  addu        $at, $at, $t4
/* 1FF9F0 801DCE00 0C077387 */  jal         func_801DCE1C_ovl14
/* 1FF9F4 801DCE04 AC20DC50 */   sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 1FF9F8 801DCE08 8FBF001C */  lw          $ra, 0x1C($sp)
/* 1FF9FC 801DCE0C 8FB00014 */  lw          $s0, 0x14($sp)
/* 1FFA00 801DCE10 8FB10018 */  lw          $s1, 0x18($sp)
/* 1FFA04 801DCE14 03E00008 */  jr          $ra
/* 1FFA08 801DCE18 27BD0038 */   addiu      $sp, $sp, 0x38
.type func_801DCBCC_ovl14, @function
.size func_801DCBCC_ovl14, . - func_801DCBCC_ovl14
