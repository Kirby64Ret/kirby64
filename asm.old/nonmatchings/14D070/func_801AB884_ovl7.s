glabel func_801AB884_ovl7
/* 1518F4 801AB884 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1518F8 801AB888 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1518FC 801AB88C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 151900 801AB890 AFBF0014 */  sw         $ra, 0x14($sp)
/* 151904 801AB894 AFA40018 */  sw         $a0, 0x18($sp)
/* 151908 801AB898 8DC60000 */  lw         $a2, 0x0($t6)
/* 15190C 801AB89C 3C0F800E */  lui        $t7, %hi(D_800E7730)
/* 151910 801AB8A0 24010006 */  addiu      $at, $zero, 0x6
/* 151914 801AB8A4 01E67821 */  addu       $t7, $t7, $a2
/* 151918 801AB8A8 91EF7730 */  lbu        $t7, %lo(D_800E7730)($t7)
/* 15191C 801AB8AC 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 151920 801AB8B0 0006C040 */  sll        $t8, $a2, 1
/* 151924 801AB8B4 15E10009 */  bne        $t7, $at, .L801AB8DC_ovl7
/* 151928 801AB8B8 00781821 */   addu      $v1, $v1, $t8
/* 15192C 801AB8BC 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 151930 801AB8C0 18600006 */  blez       $v1, .L801AB8DC_ovl7
/* 151934 801AB8C4 2861002C */   slti      $at, $v1, 0x2C
/* 151938 801AB8C8 10200004 */  beqz       $at, .L801AB8DC_ovl7
/* 15193C 801AB8CC 00000000 */   nop
/* 151940 801AB8D0 0C070162 */  jal        func_801C0588_ovl7
/* 151944 801AB8D4 00000000 */   nop
/* 151948 801AB8D8 144000AD */  bnez       $v0, .L801ABB90_ovl7
.L801AB8DC_ovl7:
/* 15194C 801AB8DC 3C198005 */   lui       $t9, %hi(D_8004A7C4)
/* 151950 801AB8E0 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 151954 801AB8E4 3C02800F */  lui        $v0, %hi(D_800E83E0)
/* 151958 801AB8E8 3C08800F */  lui        $t0, %hi(D_800E8760)
/* 15195C 801AB8EC 8F230000 */  lw         $v1, 0x0($t9)
/* 151960 801AB8F0 24010012 */  addiu      $at, $zero, 0x12
/* 151964 801AB8F4 00031880 */  sll        $v1, $v1, 2
/* 151968 801AB8F8 00431021 */  addu       $v0, $v0, $v1
/* 15196C 801AB8FC 8C4283E0 */  lw         $v0, %lo(D_800E83E0)($v0)
/* 151970 801AB900 01034021 */  addu       $t0, $t0, $v1
/* 151974 801AB904 14400004 */  bnez       $v0, .L801AB918_ovl7
/* 151978 801AB908 00000000 */   nop
/* 15197C 801AB90C 8D088760 */  lw         $t0, %lo(D_800E8760)($t0)
/* 151980 801AB910 11000012 */  beqz       $t0, .L801AB95C_ovl7
/* 151984 801AB914 00000000 */   nop
.L801AB918_ovl7:
/* 151988 801AB918 14410009 */  bne        $v0, $at, .L801AB940_ovl7
/* 15198C 801AB91C 3C04800E */   lui       $a0, %hi(gEntityGObjProcessArray)
/* 151990 801AB920 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 151994 801AB924 00832021 */  addu       $a0, $a0, $v1
/* 151998 801AB928 3C05801B */  lui        $a1, %hi(func_801AC33C_ovl7)
/* 15199C 801AB92C 24A5C33C */  addiu      $a1, $a1, %lo(func_801AC33C_ovl7)
/* 1519A0 801AB930 0C02C7B2 */  jal        assign_new_process_entry
/* 1519A4 801AB934 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1519A8 801AB938 10000096 */  b          .L801ABB94_ovl7
/* 1519AC 801AB93C 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AB940_ovl7:
/* 1519B0 801AB940 00832021 */  addu       $a0, $a0, $v1
/* 1519B4 801AB944 3C05801B */  lui        $a1, %hi(func_801AC11C_ovl7)
/* 1519B8 801AB948 24A5C11C */  addiu      $a1, $a1, %lo(func_801AC11C_ovl7)
/* 1519BC 801AB94C 0C02C7B2 */  jal        assign_new_process_entry
/* 1519C0 801AB950 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1519C4 801AB954 1000008F */  b          .L801ABB94_ovl7
/* 1519C8 801AB958 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AB95C_ovl7:
/* 1519CC 801AB95C 0C06AC02 */  jal        func_801AB008_ovl7
/* 1519D0 801AB960 00000000 */   nop
/* 1519D4 801AB964 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1519D8 801AB968 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1519DC 801AB96C 3C09800F */  lui        $t1, %hi(D_800E8AE0)
/* 1519E0 801AB970 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 1519E4 801AB974 8C430000 */  lw         $v1, 0x0($v0)
/* 1519E8 801AB978 00031880 */  sll        $v1, $v1, 2
/* 1519EC 801AB97C 01234821 */  addu       $t1, $t1, $v1
/* 1519F0 801AB980 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
/* 1519F4 801AB984 312A0001 */  andi       $t2, $t1, 0x1
/* 1519F8 801AB988 51400013 */  beql       $t2, $zero, .L801AB9D8_ovl7
/* 1519FC 801AB98C 44810000 */   mtc1      $at, $f0
/* 151A00 801AB990 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 151A04 801AB994 44810000 */  mtc1       $at, $f0
/* 151A08 801AB998 3C01800E */  lui        $at, %hi(D_800E3210)
/* 151A0C 801AB99C 00230821 */  addu       $at, $at, $v1
/* 151A10 801AB9A0 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 151A14 801AB9A4 8C4B0000 */  lw         $t3, 0x0($v0)
/* 151A18 801AB9A8 44802000 */  mtc1       $zero, $f4
/* 151A1C 801AB9AC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 151A20 801AB9B0 000B6080 */  sll        $t4, $t3, 2
/* 151A24 801AB9B4 002C0821 */  addu       $at, $at, $t4
/* 151A28 801AB9B8 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
/* 151A2C 801AB9BC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 151A30 801AB9C0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 151A34 801AB9C4 000D7080 */  sll        $t6, $t5, 2
/* 151A38 801AB9C8 002E0821 */  addu       $at, $at, $t6
/* 151A3C 801AB9CC 10000010 */  b          .L801ABA10_ovl7
/* 151A40 801AB9D0 E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
/* 151A44 801AB9D4 44810000 */  mtc1       $at, $f0
.L801AB9D8_ovl7:
/* 151A48 801AB9D8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 151A4C 801AB9DC 00230821 */  addu       $at, $at, $v1
/* 151A50 801AB9E0 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 151A54 801AB9E4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 151A58 801AB9E8 44803000 */  mtc1       $zero, $f6
/* 151A5C 801AB9EC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 151A60 801AB9F0 000FC080 */  sll        $t8, $t7, 2
/* 151A64 801AB9F4 00380821 */  addu       $at, $at, $t8
/* 151A68 801AB9F8 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 151A6C 801AB9FC 8C590000 */  lw         $t9, 0x0($v0)
/* 151A70 801ABA00 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 151A74 801ABA04 00194080 */  sll        $t0, $t9, 2
/* 151A78 801ABA08 00280821 */  addu       $at, $at, $t0
/* 151A7C 801ABA0C E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L801ABA10_ovl7:
/* 151A80 801ABA10 8C460000 */  lw         $a2, 0x0($v0)
/* 151A84 801ABA14 3C04800E */  lui        $a0, %hi(D_800E7730)
/* 151A88 801ABA18 24010006 */  addiu      $at, $zero, 0x6
/* 151A8C 801ABA1C 00862021 */  addu       $a0, $a0, $a2
/* 151A90 801ABA20 90847730 */  lbu        $a0, %lo(D_800E7730)($a0)
/* 151A94 801ABA24 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 151A98 801ABA28 00064840 */  sll        $t1, $a2, 1
/* 151A9C 801ABA2C 1481002A */  bne        $a0, $at, .L801ABAD8_ovl7
/* 151AA0 801ABA30 00691821 */   addu      $v1, $v1, $t1
/* 151AA4 801ABA34 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 151AA8 801ABA38 28610008 */  slti       $at, $v1, 0x8
/* 151AAC 801ABA3C 14200026 */  bnez       $at, .L801ABAD8_ovl7
/* 151AB0 801ABA40 2861002C */   slti      $at, $v1, 0x2C
/* 151AB4 801ABA44 50200025 */  beql       $at, $zero, .L801ABADC_ovl7
/* 151AB8 801ABA48 24010006 */   addiu     $at, $zero, 0x6
/* 151ABC 801ABA4C 3C04801D */  lui        $a0, %hi(D_801CB170_ovl7)
/* 151AC0 801ABA50 0C068E4E */  jal        func_801A3938
/* 151AC4 801ABA54 2484B170 */   addiu     $a0, $a0, %lo(D_801CB170_ovl7)
/* 151AC8 801ABA58 3C04801A */  lui        $a0, %hi(func_801A3864_ovl7)
/* 151ACC 801ABA5C 0C068DB3 */  jal        func_801A36CC
/* 151AD0 801ABA60 24843864 */   addiu     $a0, $a0, %lo(func_801A3864_ovl7)
/* 151AD4 801ABA64 0C06835D */  jal        func_801A0D74_ovl7
/* 151AD8 801ABA68 8FA40018 */   lw        $a0, 0x18($sp)
/* 151ADC 801ABA6C 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 151AE0 801ABA70 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 151AE4 801ABA74 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 151AE8 801ABA78 3C04801D */  lui        $a0, %hi(D_801CA7DC_ovl7)
/* 151AEC 801ABA7C 8D460000 */  lw         $a2, 0x0($t2)
/* 151AF0 801ABA80 2484A7DC */  addiu      $a0, $a0, %lo(D_801CA7DC_ovl7)
/* 151AF4 801ABA84 00065840 */  sll        $t3, $a2, 1
/* 151AF8 801ABA88 006B1821 */  addu       $v1, $v1, $t3
/* 151AFC 801ABA8C 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 151B00 801ABA90 28610008 */  slti       $at, $v1, 0x8
/* 151B04 801ABA94 1420000A */  bnez       $at, .L801ABAC0_ovl7
/* 151B08 801ABA98 28610024 */   slti      $at, $v1, 0x24
/* 151B0C 801ABA9C 10200008 */  beqz       $at, .L801ABAC0_ovl7
/* 151B10 801ABAA0 00C02825 */   or        $a1, $a2, $zero
/* 151B14 801ABAA4 3C04801D */  lui        $a0, %hi(D_801D0A38_ovl7)
/* 151B18 801ABAA8 0C0445EF */  jal        func_801117BC
/* 151B1C 801ABAAC 24840A38 */   addiu     $a0, $a0, %lo(D_801D0A38_ovl7)
/* 151B20 801ABAB0 0C044713 */  jal        func_80111C4C
/* 151B24 801ABAB4 00402025 */   or        $a0, $v0, $zero
/* 151B28 801ABAB8 10000036 */  b          .L801ABB94_ovl7
/* 151B2C 801ABABC 8FBF0014 */   lw        $ra, 0x14($sp)
.L801ABAC0_ovl7:
/* 151B30 801ABAC0 0C0445EF */  jal        func_801117BC
/* 151B34 801ABAC4 00C02825 */   or        $a1, $a2, $zero
/* 151B38 801ABAC8 0C044713 */  jal        func_80111C4C
/* 151B3C 801ABACC 00402025 */   or        $a0, $v0, $zero
/* 151B40 801ABAD0 10000030 */  b          .L801ABB94_ovl7
/* 151B44 801ABAD4 8FBF0014 */   lw        $ra, 0x14($sp)
.L801ABAD8_ovl7:
/* 151B48 801ABAD8 24010006 */  addiu      $at, $zero, 0x6
.L801ABADC_ovl7:
/* 151B4C 801ABADC 1481001B */  bne        $a0, $at, .L801ABB4C_ovl7
/* 151B50 801ABAE0 00066040 */   sll       $t4, $a2, 1
/* 151B54 801ABAE4 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 151B58 801ABAE8 006C1821 */  addu       $v1, $v1, $t4
/* 151B5C 801ABAEC 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 151B60 801ABAF0 18600016 */  blez       $v1, .L801ABB4C_ovl7
/* 151B64 801ABAF4 28610008 */   slti      $at, $v1, 0x8
/* 151B68 801ABAF8 10200014 */  beqz       $at, .L801ABB4C_ovl7
/* 151B6C 801ABAFC 00000000 */   nop
/* 151B70 801ABB00 0C06835D */  jal        func_801A0D74_ovl7
/* 151B74 801ABB04 8FA40018 */   lw        $a0, 0x18($sp)
/* 151B78 801ABB08 10400006 */  beqz       $v0, .L801ABB24_ovl7
/* 151B7C 801ABB0C 3C04801D */   lui       $a0, %hi(D_801CB080_ovl7)
/* 151B80 801ABB10 0C068E4E */  jal        func_801A3938
/* 151B84 801ABB14 2484B080 */   addiu     $a0, $a0, %lo(D_801CB080_ovl7)
/* 151B88 801ABB18 3C04801A */  lui        $a0, %hi(func_801A3864_ovl7)
/* 151B8C 801ABB1C 0C068DB3 */  jal        func_801A36CC
/* 151B90 801ABB20 24843864 */   addiu     $a0, $a0, %lo(func_801A3864_ovl7)
.L801ABB24_ovl7:
/* 151B94 801ABB24 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 151B98 801ABB28 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 151B9C 801ABB2C 3C04801D */  lui        $a0, %hi(D_801D0A58_ovl7)
/* 151BA0 801ABB30 24840A58 */  addiu      $a0, $a0, %lo(D_801D0A58_ovl7)
/* 151BA4 801ABB34 0C0445EF */  jal        func_801117BC
/* 151BA8 801ABB38 8DA50000 */   lw        $a1, 0x0($t5)
/* 151BAC 801ABB3C 0C044713 */  jal        func_80111C4C
/* 151BB0 801ABB40 00402025 */   or        $a0, $v0, $zero
/* 151BB4 801ABB44 10000013 */  b          .L801ABB94_ovl7
/* 151BB8 801ABB48 8FBF0014 */   lw        $ra, 0x14($sp)
.L801ABB4C_ovl7:
/* 151BBC 801ABB4C 0C06835D */  jal        func_801A0D74_ovl7
/* 151BC0 801ABB50 8FA40018 */   lw        $a0, 0x18($sp)
/* 151BC4 801ABB54 10400006 */  beqz       $v0, .L801ABB70_ovl7
/* 151BC8 801ABB58 3C04801D */   lui       $a0, %hi(D_801CB080_ovl7)
/* 151BCC 801ABB5C 0C068E4E */  jal        func_801A3938
/* 151BD0 801ABB60 2484B080 */   addiu     $a0, $a0, %lo(D_801CB080_ovl7)
/* 151BD4 801ABB64 3C04801A */  lui        $a0, %hi(func_801A3864_ovl7)
/* 151BD8 801ABB68 0C068DB3 */  jal        func_801A36CC
/* 151BDC 801ABB6C 24843864 */   addiu     $a0, $a0, %lo(func_801A3864_ovl7)
.L801ABB70_ovl7:
/* 151BE0 801ABB70 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 151BE4 801ABB74 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 151BE8 801ABB78 3C04801D */  lui        $a0, %hi(D_801CA738_ovl7)
/* 151BEC 801ABB7C 2484A738 */  addiu      $a0, $a0, %lo(D_801CA738_ovl7)
/* 151BF0 801ABB80 0C0445EF */  jal        func_801117BC
/* 151BF4 801ABB84 8DC50000 */   lw        $a1, 0x0($t6)
/* 151BF8 801ABB88 0C044713 */  jal        func_80111C4C
/* 151BFC 801ABB8C 00402025 */   or        $a0, $v0, $zero
.L801ABB90_ovl7:
/* 151C00 801ABB90 8FBF0014 */  lw         $ra, 0x14($sp)
.L801ABB94_ovl7:
/* 151C04 801ABB94 27BD0018 */  addiu      $sp, $sp, 0x18
/* 151C08 801ABB98 03E00008 */  jr         $ra
/* 151C0C 801ABB9C 00000000 */   nop
