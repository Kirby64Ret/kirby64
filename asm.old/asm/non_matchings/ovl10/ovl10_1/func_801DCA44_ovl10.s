glabel func_801DCA44_ovl10
/* 1CD7B4 801DCA44 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1CD7B8 801DCA48 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1CD7BC 801DCA4C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1CD7C0 801DCA50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CD7C4 801DCA54 AFA40020 */  sw    $a0, 0x20($sp)
/* 1CD7C8 801DCA58 8DCF0000 */  lw    $t7, ($t6)
/* 1CD7CC 801DCA5C 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 1CD7D0 801DCA60 000FC080 */  sll   $t8, $t7, 2
/* 1CD7D4 801DCA64 0338C821 */  addu  $t9, $t9, $t8
/* 1CD7D8 801DCA68 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1CD7DC 801DCA6C 0C068CA0 */  jal   func_801A3280_ovl10
/* 1CD7E0 801DCA70 AFB90018 */   sw    $t9, 0x18($sp)
/* 1CD7E4 801DCA74 3C040001 */  lui   $a0, (0x000100D8 >> 16) # lui $a0, 1
/* 1CD7E8 801DCA78 348400D8 */  ori   $a0, (0x000100D8 & 0xFFFF) # ori $a0, $a0, 0xd8
/* 1CD7EC 801DCA7C 24050023 */  li    $a1, 35
/* 1CD7F0 801DCA80 0C02A619 */  jal   func_800A9864
/* 1CD7F4 801DCA84 24060010 */   li    $a2, 16
/* 1CD7F8 801DCA88 0C066ED6 */  jal   func_8019BB58_ovl10
/* 1CD7FC 801DCA8C 00000000 */   nop   
/* 1CD800 801DCA90 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1CD804 801DCA94 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1CD808 801DCA98 3C0E800B */  lui   $t6, %hi(func_800B4954) # $t6, 0x800b
/* 1CD80C 801DCA9C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1CD810 801DCAA0 8C4F0000 */  lw    $t7, ($v0)
/* 1CD814 801DCAA4 25CE4954 */  addiu $t6, %lo(func_800B4954) # addiu $t6, $t6, 0x4954
/* 1CD818 801DCAA8 8FA30018 */  lw    $v1, 0x18($sp)
/* 1CD81C 801DCAAC 000FC080 */  sll   $t8, $t7, 2
/* 1CD820 801DCAB0 00380821 */  addu  $at, $at, $t8
/* 1CD824 801DCAB4 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1CD828 801DCAB8 8C590000 */  lw    $t9, ($v0)
/* 1CD82C 801DCABC 3C01800E */ lui $at, %hi(D_800DF150)
/* 1CD830 801DCAC0 3C06800E */  lui   $a2, %hi(D_800E5F90) # $a2, 0x800e
/* 1CD834 801DCAC4 00197880 */  sll   $t7, $t9, 2
/* 1CD838 801DCAC8 002F0821 */  addu  $at, $at, $t7
/* 1CD83C 801DCACC AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 1CD840 801DCAD0 8C580000 */  lw    $t8, ($v0)
/* 1CD844 801DCAD4 24C65F90 */  addiu $a2, %lo(D_800E5F90) # addiu $a2, $a2, 0x5f90
/* 1CD848 801DCAD8 00031880 */  sll   $v1, $v1, 2
/* 1CD84C 801DCADC 00C37021 */  addu  $t6, $a2, $v1
/* 1CD850 801DCAE0 8DC50000 */  lw    $a1, ($t6)
/* 1CD854 801DCAE4 3C01800E */ lui $at, %hi(D_800E6150)
/* 1CD858 801DCAE8 0018C880 */  sll   $t9, $t8, 2
/* 1CD85C 801DCAEC 00390821 */  addu  $at, $at, $t9
/* 1CD860 801DCAF0 AC256150 */ sw $a1, %lo(D_800E6150)($at)
/* 1CD864 801DCAF4 8C4F0000 */  lw    $t7, ($v0)
/* 1CD868 801DCAF8 3C07800E */  lui   $a3, %hi(D_800E6BD0) # $a3, 0x800e
/* 1CD86C 801DCAFC 24E76BD0 */  addiu $a3, %lo(D_800E6BD0) # addiu $a3, $a3, 0x6bd0
/* 1CD870 801DCB00 000F7080 */  sll   $t6, $t7, 2
/* 1CD874 801DCB04 00CEC021 */  addu  $t8, $a2, $t6
/* 1CD878 801DCB08 AF050000 */  sw    $a1, ($t8)
/* 1CD87C 801DCB0C 8C4F0000 */  lw    $t7, ($v0)
/* 1CD880 801DCB10 00E3C821 */  addu  $t9, $a3, $v1
/* 1CD884 801DCB14 C7200000 */  lwc1  $f0, ($t9)
/* 1CD888 801DCB18 3C01800E */ lui $at, %hi(D_800E6D90)
/* 1CD88C 801DCB1C 000F7080 */  sll   $t6, $t7, 2
/* 1CD890 801DCB20 002E0821 */  addu  $at, $at, $t6
/* 1CD894 801DCB24 E4206D90 */ swc1 $f0, %lo(D_800E6D90)($at)
/* 1CD898 801DCB28 8C580000 */  lw    $t8, ($v0)
/* 1CD89C 801DCB2C 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 1CD8A0 801DCB30 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 1CD8A4 801DCB34 0018C880 */  sll   $t9, $t8, 2
/* 1CD8A8 801DCB38 00F97821 */  addu  $t7, $a3, $t9
/* 1CD8AC 801DCB3C E5E00000 */  swc1  $f0, ($t7)
/* 1CD8B0 801DCB40 8C580000 */  lw    $t8, ($v0)
/* 1CD8B4 801DCB44 01037021 */  addu  $t6, $t0, $v1
/* 1CD8B8 801DCB48 C5C00000 */  lwc1  $f0, ($t6)
/* 1CD8BC 801DCB4C 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 1CD8C0 801DCB50 0018C880 */  sll   $t9, $t8, 2
/* 1CD8C4 801DCB54 00390821 */  addu  $at, $at, $t9
/* 1CD8C8 801DCB58 E4202B10 */ swc1 $f0, %lo(gEntitiesPosXArray)($at)
/* 1CD8CC 801DCB5C 8C4F0000 */  lw    $t7, ($v0)
/* 1CD8D0 801DCB60 3C09800E */  lui   $t1, %hi(gEntitiesNextPosZArray) # $t1, 0x800e
/* 1CD8D4 801DCB64 25292950 */  addiu $t1, %lo(gEntitiesNextPosZArray) # addiu $t1, $t1, 0x2950
/* 1CD8D8 801DCB68 000F7080 */  sll   $t6, $t7, 2
/* 1CD8DC 801DCB6C 010EC021 */  addu  $t8, $t0, $t6
/* 1CD8E0 801DCB70 E7000000 */  swc1  $f0, ($t8)
/* 1CD8E4 801DCB74 8C4F0000 */  lw    $t7, ($v0)
/* 1CD8E8 801DCB78 0123C821 */  addu  $t9, $t1, $v1
/* 1CD8EC 801DCB7C C7200000 */  lwc1  $f0, ($t9)
/* 1CD8F0 801DCB80 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 1CD8F4 801DCB84 000F7080 */  sll   $t6, $t7, 2
/* 1CD8F8 801DCB88 002E0821 */  addu  $at, $at, $t6
/* 1CD8FC 801DCB8C E4202E90 */ swc1 $f0, %lo(gEntitiesPosZArray)($at)
/* 1CD900 801DCB90 8C580000 */  lw    $t8, ($v0)
/* 1CD904 801DCB94 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosYArray) # $t2, 0x800e
/* 1CD908 801DCB98 254A2790 */  addiu $t2, %lo(gEntitiesNextPosYArray) # addiu $t2, $t2, 0x2790
/* 1CD90C 801DCB9C 0018C880 */  sll   $t9, $t8, 2
/* 1CD910 801DCBA0 01397821 */  addu  $t7, $t1, $t9
/* 1CD914 801DCBA4 E5E00000 */  swc1  $f0, ($t7)
/* 1CD918 801DCBA8 8C580000 */  lw    $t8, ($v0)
/* 1CD91C 801DCBAC 01437021 */  addu  $t6, $t2, $v1
/* 1CD920 801DCBB0 C5C00000 */  lwc1  $f0, ($t6)
/* 1CD924 801DCBB4 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 1CD928 801DCBB8 0018C880 */  sll   $t9, $t8, 2
/* 1CD92C 801DCBBC 00390821 */  addu  $at, $at, $t9
/* 1CD930 801DCBC0 E4202CD0 */ swc1 $f0, %lo(gEntitiesPosYArray)($at)
/* 1CD934 801DCBC4 8C4F0000 */  lw    $t7, ($v0)
/* 1CD938 801DCBC8 3C0B800E */  lui   $t3, %hi(D_800E6A10) # $t3, 0x800e
/* 1CD93C 801DCBCC 256B6A10 */  addiu $t3, %lo(D_800E6A10) # addiu $t3, $t3, 0x6a10
/* 1CD940 801DCBD0 000F7080 */  sll   $t6, $t7, 2
/* 1CD944 801DCBD4 014EC021 */  addu  $t8, $t2, $t6
/* 1CD948 801DCBD8 E7000000 */  swc1  $f0, ($t8)
/* 1CD94C 801DCBDC 8C4F0000 */  lw    $t7, ($v0)
/* 1CD950 801DCBE0 0163C821 */  addu  $t9, $t3, $v1
/* 1CD954 801DCBE4 C7240000 */  lwc1  $f4, ($t9)
/* 1CD958 801DCBE8 000F7080 */  sll   $t6, $t7, 2
/* 1CD95C 801DCBEC 016EC021 */  addu  $t8, $t3, $t6
/* 1CD960 801DCBF0 E7040000 */  swc1  $f4, ($t8)
/* 1CD964 801DCBF4 8C440000 */  lw    $a0, ($v0)
/* 1CD968 801DCBF8 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 1CD96C 801DCBFC 3C0C800F */  lui   $t4, %hi(D_800E9020) # $t4, 0x800f
/* 1CD970 801DCC00 00042080 */  sll   $a0, $a0, 2
/* 1CD974 801DCC04 0324C821 */  addu  $t9, $t9, $a0
/* 1CD978 801DCC08 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1CD97C 801DCC0C 258C9020 */  addiu $t4, %lo(D_800E9020) # addiu $t4, $t4, -0x6fe0
/* 1CD980 801DCC10 0184C021 */  addu  $t8, $t4, $a0
/* 1CD984 801DCC14 00197880 */  sll   $t7, $t9, 2
/* 1CD988 801DCC18 018F7021 */  addu  $t6, $t4, $t7
/* 1CD98C 801DCC1C C5C60000 */  lwc1  $f6, ($t6)
/* 1CD990 801DCC20 3C0D800E */  lui   $t5, %hi(D_800E17D0) # $t5, 0x800e
/* 1CD994 801DCC24 25AD17D0 */  addiu $t5, %lo(D_800E17D0) # addiu $t5, $t5, 0x17d0
/* 1CD998 801DCC28 E7060000 */  swc1  $f6, ($t8)
/* 1CD99C 801DCC2C 8C4F0000 */  lw    $t7, ($v0)
/* 1CD9A0 801DCC30 01A3C821 */  addu  $t9, $t5, $v1
/* 1CD9A4 801DCC34 C7280000 */  lwc1  $f8, ($t9)
/* 1CD9A8 801DCC38 000F7080 */  sll   $t6, $t7, 2
/* 1CD9AC 801DCC3C 01AEC021 */  addu  $t8, $t5, $t6
/* 1CD9B0 801DCC40 0C02CCFD */  jal   func_800B33F4
/* 1CD9B4 801DCC44 E7080000 */   swc1  $f8, ($t8)
/* 1CD9B8 801DCC48 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1CD9BC 801DCC4C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1CD9C0 801DCC50 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1CD9C4 801DCC54 8F220000 */  lw    $v0, ($t9)
/* 1CD9C8 801DCC58 00027880 */  sll   $t7, $v0, 2
/* 1CD9CC 801DCC5C 002F0821 */  addu  $at, $at, $t7
/* 1CD9D0 801DCC60 C42A6A10 */ lwc1 $f10, %lo(D_800E6A10)($at)
/* 1CD9D4 801DCC64 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 1CD9D8 801DCC68 44818000 */  mtc1  $at, $f16
/* 1CD9DC 801DCC6C 00402025 */  move  $a0, $v0
/* 1CD9E0 801DCC70 46105482 */  mul.s $f18, $f10, $f16
/* 1CD9E4 801DCC74 44059000 */  mfc1  $a1, $f18
/* 1CD9E8 801DCC78 0C03E63B */  jal   func_800F98EC
/* 1CD9EC 801DCC7C 00000000 */   nop   
/* 1CD9F0 801DCC80 3C040001 */  lui   $a0, (0x00010615 >> 16) # lui $a0, 1
/* 1CD9F4 801DCC84 0C02A806 */  jal   func_800AA018
/* 1CD9F8 801DCC88 34840615 */   ori   $a0, (0x00010615 & 0xFFFF) # ori $a0, $a0, 0x615
/* 1CD9FC 801DCC8C 3C040001 */  lui   $a0, (0x00010614 >> 16) # lui $a0, 1
/* 1CDA00 801DCC90 0C02A855 */  jal   func_800AA154
/* 1CDA04 801DCC94 34840614 */   ori   $a0, (0x00010614 & 0xFFFF) # ori $a0, $a0, 0x614
/* 1CDA08 801DCC98 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1CDA0C 801DCC9C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1CDA10 801DCCA0 0C067656 */  jal   func_8019D958_ovl10
/* 1CDA14 801DCCA4 95C40002 */   lhu   $a0, 2($t6)
/* 1CDA18 801DCCA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CDA1C 801DCCAC 27BD0020 */  addiu $sp, $sp, 0x20
/* 1CDA20 801DCCB0 03E00008 */  jr    $ra
/* 1CDA24 801DCCB4 00000000 */   nop   
.type func_801DCA44_ovl10, @function
.size func_801DCA44_ovl10, . - func_801DCA44_ovl10
