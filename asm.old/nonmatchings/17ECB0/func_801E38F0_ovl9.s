glabel func_801E38F0_ovl9
/* 191940 801E38F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 191944 801E38F4 AFB00018 */  sw         $s0, 0x18($sp)
/* 191948 801E38F8 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 19194C 801E38FC 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 191950 801E3900 8E0E0000 */  lw         $t6, 0x0($s0)
.L801E3904_ovl16:
/* 191954 801E3904 AFBF001C */  sw         $ra, 0x1C($sp)
.L801E3908_ovl17:
/* 191958 801E3908 AFA40028 */  sw         $a0, 0x28($sp)
.L801E390C_ovl13:
/* 19195C 801E390C 8DCF0000 */  lw         $t7, 0x0($t6)
.L801E3910_ovl17:
/* 191960 801E3910 3C19800E */  lui        $t9, %hi(D_800E1B50)
.L801E3914_ovl16:
/* 191964 801E3914 3C04801C */  lui        $a0, %hi(D_801C36F4)
/* 191968 801E3918 000FC080 */  sll        $t8, $t7, 2
/* 19196C 801E391C 0338C821 */  addu       $t9, $t9, $t8
/* 191970 801E3920 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 191974 801E3924 248436F4 */  addiu      $a0, $a0, %lo(D_801C36F4)
/* 191978 801E3928 0C066220 */  jal        func_80198880_ovl7
.L801E392C_ovl16:
/* 19197C 801E392C AFB90024 */   sw        $t9, 0x24($sp)
/* 191980 801E3930 8E030000 */  lw         $v1, 0x0($s0)
/* 191984 801E3934 3C0B800B */  lui        $t3, %hi(func_800B6B8C)
/* 191988 801E3938 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19198C 801E393C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 191990 801E3940 256B6B8C */  addiu      $t3, $t3, %lo(func_800B6B8C)
/* 191994 801E3944 3C0E801E */  lui        $t6, %hi(func_801E3DA8_ovl15)
.L801E3948_ovl16:
/* 191998 801E3948 000C6880 */  sll        $t5, $t4, 2
.L801E394C_ovl16:
/* 19199C 801E394C 002D0821 */  addu       $at, $at, $t5
.L801E3950_ovl10:
/* 1919A0 801E3950 AC2BEF90 */  sw         $t3, %lo(D_800DEF90)($at)
/* 1919A4 801E3954 8C6F0000 */  lw         $t7, 0x0($v1)
glabel func_801E3958_ovl13
/* 1919A8 801E3958 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1919AC 801E395C 25CE3DA8 */  addiu      $t6, $t6, %lo(func_801E3DA8_ovl15)
/* 1919B0 801E3960 000FC080 */  sll        $t8, $t7, 2
/* 1919B4 801E3964 00380821 */  addu       $at, $at, $t8
/* 1919B8 801E3968 3C040001 */  lui        $a0, (0x10011 >> 16)
/* 1919BC 801E396C AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* 1919C0 801E3970 0C02A5D8 */  jal        func_800A9760
.L801E3974_ovl16:
/* 1919C4 801E3974 34840011 */   ori       $a0, $a0, (0x10011 & 0xFFFF)
/* 1919C8 801E3978 3C04801E */  lui        $a0, %hi(func_801E34F8_ovl10)
/* 1919CC 801E397C 0C068354 */  jal        func_801A0D50_ovl7
/* 1919D0 801E3980 248434F8 */   addiu     $a0, $a0, %lo(func_801E34F8_ovl10)
/* 1919D4 801E3984 8E190000 */  lw         $t9, 0x0($s0)
/* 1919D8 801E3988 3C0D800E */  lui        $t5, %hi(D_800E1B50)
/* 1919DC 801E398C 8F2C0000 */  lw         $t4, 0x0($t9)
glabel func_801E3990_ovl17
/* 1919E0 801E3990 000C5880 */  sll        $t3, $t4, 2
/* 1919E4 801E3994 01AB6821 */  addu       $t5, $t5, $t3
/* 1919E8 801E3998 8DAD1B50 */  lw         $t5, %lo(D_800E1B50)($t5)
/* 1919EC 801E399C 8DAF0088 */  lw         $t7, 0x88($t5)
/* 1919F0 801E39A0 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 1919F4 801E39A4 8DE40010 */   lw        $a0, 0x10($t7)
/* 1919F8 801E39A8 8FB80024 */  lw         $t8, 0x24($sp)
.L801E39AC_ovl10:
/* 1919FC 801E39AC 240EFFFF */  addiu      $t6, $zero, -0x1
.L801E39B0_ovl15:
/* 191A00 801E39B0 3C04801D */  lui        $a0, %hi(D_801CAA34)
/* 191A04 801E39B4 A30E0039 */  sb         $t6, 0x39($t8)
/* 191A08 801E39B8 8E190000 */  lw         $t9, 0x0($s0)
.L801E39BC_ovl16:
/* 191A0C 801E39BC 3C01800E */  lui        $at, %hi(D_800E0490)
/* 191A10 801E39C0 2484AA34 */  addiu      $a0, $a0, %lo(D_801CAA34)
/* 191A14 801E39C4 8F2C0000 */  lw         $t4, 0x0($t9)
/* 191A18 801E39C8 000C5880 */  sll        $t3, $t4, 2
/* 191A1C 801E39CC 002B0821 */  addu       $at, $at, $t3
.L801E39D0_ovl10:
/* 191A20 801E39D0 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 191A24 801E39D4 AC240490 */   sw        $a0, %lo(D_800E0490)($at)
/* 191A28 801E39D8 8E030000 */  lw         $v1, 0x0($s0)
/* 191A2C 801E39DC 3C01800F */  lui        $at, %hi(D_800E8920)
.L801E39E0_ovl16:
/* 191A30 801E39E0 240D0001 */  addiu      $t5, $zero, 0x1
.L801E39E4_ovl15:
/* 191A34 801E39E4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 191A38 801E39E8 3C18800E */  lui        $t8, %hi(D_800E7880)
/* 191A3C 801E39EC 24040044 */  addiu      $a0, $zero, 0x44
.L801E39F0_ovl16:
/* 191A40 801E39F0 000F7080 */  sll        $t6, $t7, 2
/* 191A44 801E39F4 002E0821 */  addu       $at, $at, $t6
/* 191A48 801E39F8 AC2D8920 */  sw         $t5, %lo(D_800E8920)($at)
/* 191A4C 801E39FC 8C670000 */  lw         $a3, 0x0($v1)
/* 191A50 801E3A00 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 191A54 801E3A04 0307C021 */  addu       $t8, $t8, $a3
.L801E3A08_ovl16:
/* 191A58 801E3A08 93187880 */  lbu        $t8, %lo(D_800E7880)($t8)
/* 191A5C 801E3A0C 00075880 */  sll        $t3, $a3, 2
.L801E3A10_ovl15:
/* 191A60 801E3A10 00076080 */  sll        $t4, $a3, 2
/* 191A64 801E3A14 33190001 */  andi       $t9, $t8, 0x1
/* 191A68 801E3A18 53200008 */  beql       $t9, $zero, .L801E3A3C_ovl15
/* 191A6C 801E3A1C 44813000 */   mtc1      $at, $f6
glabel func_801E3A20_ovl17
/* 191A70 801E3A20 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
.L801E3A24_ovl16:
/* 191A74 801E3A24 44812000 */  mtc1       $at, $f4
.L801E3A28_ovl16:
/* 191A78 801E3A28 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 191A7C 801E3A2C 002C0821 */  addu       $at, $at, $t4
/* 191A80 801E3A30 10000005 */  b          .L801E3A48_ovl9
/* 191A84 801E3A34 E4246A10 */   swc1      $f4, %lo(D_800E6A10)($at)
/* 191A88 801E3A38 44813000 */  mtc1       $at, $f6
.L801E3A3C_ovl15:
/* 191A8C 801E3A3C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 191A90 801E3A40 002B0821 */  addu       $at, $at, $t3
/* 191A94 801E3A44 E4266A10 */  swc1       $f6, %lo(D_800E6A10)($at)
.L801E3A48_ovl9:
/* 191A98 801E3A48 0C06775E */  jal        func_8019DD78_ovl7
.L801E3A4C_ovl10:
/* 191A9C 801E3A4C 24050004 */   addiu     $a1, $zero, 0x4
.L801E3A50_ovl10:
/* 191AA0 801E3A50 8E030000 */  lw         $v1, 0x0($s0)
/* 191AA4 801E3A54 AFA20020 */  sw         $v0, 0x20($sp)
/* 191AA8 801E3A58 3C01800F */  lui        $at, %hi(D_800EBDA0)
/* 191AAC 801E3A5C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 191AB0 801E3A60 3C19800E */  lui        $t9, %hi(D_800E0D50)
glabel func_801E3A64_ovl10
/* 191AB4 801E3A64 000F6880 */  sll        $t5, $t7, 2
/* 191AB8 801E3A68 002D0821 */  addu       $at, $at, $t5
.L801E3A6C_ovl17:
/* 191ABC 801E3A6C AC22BDA0 */  sw         $v0, %lo(D_800EBDA0)($at)
/* 191AC0 801E3A70 8C6E0000 */  lw         $t6, 0x0($v1)
/* 191AC4 801E3A74 3C01800F */  lui        $at, %hi(D_800EBDA0)
.L801E3A78_ovl13:
/* 191AC8 801E3A78 8FAF0024 */  lw         $t7, 0x24($sp)
/* 191ACC 801E3A7C 000EC080 */  sll        $t8, $t6, 2
/* 191AD0 801E3A80 0338C821 */  addu       $t9, $t9, $t8
glabel func_801E3A84_ovl16
/* 191AD4 801E3A84 8F390D50 */  lw         $t9, %lo(D_800E0D50)($t9)
/* 191AD8 801E3A88 00196080 */  sll        $t4, $t9, 2
.L801E3A8C_ovl16:
/* 191ADC 801E3A8C 002C0821 */  addu       $at, $at, $t4
/* 191AE0 801E3A90 AC22BDA0 */  sw         $v0, %lo(D_800EBDA0)($at)
/* 191AE4 801E3A94 2401FFFF */  addiu      $at, $zero, -0x1
/* 191AE8 801E3A98 14410005 */  bne        $v0, $at, .L801E3AB0_ovl17
/* 191AEC 801E3A9C 240B0001 */   addiu     $t3, $zero, 0x1
/* 191AF0 801E3AA0 A1EB0040 */  sb         $t3, 0x40($t7)
/* 191AF4 801E3AA4 0C068FA0 */  jal        func_801A3E80_ovl7
/* 191AF8 801E3AA8 8FA40028 */   lw        $a0, 0x28($sp)
/* 191AFC 801E3AAC 8E030000 */  lw         $v1, 0x0($s0)
.L801E3AB0_ovl17:
/* 191B00 801E3AB0 8C680000 */  lw         $t0, 0x0($v1)
/* 191B04 801E3AB4 3C0A800E */  lui        $t2, %hi(D_800E6A10)
/* 191B08 801E3AB8 254A6A10 */  addiu      $t2, $t2, %lo(D_800E6A10)
/* 191B0C 801E3ABC 00084080 */  sll        $t0, $t0, 2
/* 191B10 801E3AC0 01486821 */  addu       $t5, $t2, $t0
/* 191B14 801E3AC4 C5A00000 */  lwc1       $f0, 0x0($t5)
/* 191B18 801E3AC8 8FA20020 */  lw         $v0, 0x20($sp)
/* 191B1C 801E3ACC 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 191B20 801E3AD0 00280821 */  addu       $at, $at, $t0
/* 191B24 801E3AD4 3C18800E */  lui        $t8, %hi(gEntitiesNextPosYArray)
.L801E3AD8_ovl17:
/* 191B28 801E3AD8 E420A6E0 */  swc1       $f0, %lo(D_800EA6E0)($at)
.L801E3ADC_ovl10:
/* 191B2C 801E3ADC 00021080 */  sll        $v0, $v0, 2
/* 191B30 801E3AE0 01427021 */  addu       $t6, $t2, $v0
/* 191B34 801E3AE4 27182790 */  addiu      $t8, $t8, %lo(gEntitiesNextPosYArray)
.L801E3AE8_ovl16:
/* 191B38 801E3AE8 00583021 */  addu       $a2, $v0, $t8
/* 191B3C 801E3AEC 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 191B40 801E3AF0 E5C00000 */  swc1       $f0, 0x0($t6)
/* 191B44 801E3AF4 C4C80000 */  lwc1       $f8, 0x0($a2)
/* 191B48 801E3AF8 44815000 */  mtc1       $at, $f10
.L801E3AFC_ovl10:
/* 191B4C 801E3AFC 3C09800F */  lui        $t1, %hi(D_800E98E0)
/* 191B50 801E3B00 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
.L801E3B04_ovl16:
/* 191B54 801E3B04 460A4401 */  sub.s      $f16, $f8, $f10
/* 191B58 801E3B08 252998E0 */  addiu      $t1, $t1, %lo(D_800E98E0)
/* 191B5C 801E3B0C 01225821 */  addu       $t3, $t1, $v0
/* 191B60 801E3B10 E4D00000 */  swc1       $f16, 0x0($a2)
/* 191B64 801E3B14 8C790000 */  lw         $t9, 0x0($v1)
.L801E3B18_ovl15:
/* 191B68 801E3B18 C4D20000 */  lwc1       $f18, 0x0($a2)
.L801E3B1C_ovl16:
/* 191B6C 801E3B1C 00196080 */  sll        $t4, $t9, 2
.L801E3B20_ovl10:
/* 191B70 801E3B20 002C0821 */  addu       $at, $at, $t4
/* 191B74 801E3B24 E4322CD0 */  swc1       $f18, %lo(gEntitiesPosYArray)($at)
/* 191B78 801E3B28 AD600000 */  sw         $zero, 0x0($t3)
.L801E3B2C_ovl16:
/* 191B7C 801E3B2C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 191B80 801E3B30 3C014270 */  lui        $at, (0x42700000 >> 16)
.L801E3B34_ovl17:
/* 191B84 801E3B34 44813000 */  mtc1       $at, $f6
/* 191B88 801E3B38 000F6880 */  sll        $t5, $t7, 2
.L801E3B3C_ovl13:
/* 191B8C 801E3B3C 012D7021 */  addu       $t6, $t1, $t5
.L801E3B40_ovl13:
/* 191B90 801E3B40 ADC00000 */  sw         $zero, 0x0($t6)
/* 191B94 801E3B44 8C670000 */  lw         $a3, 0x0($v1)
/* 191B98 801E3B48 0007C080 */  sll        $t8, $a3, 2
/* 191B9C 801E3B4C 0158C821 */  addu       $t9, $t2, $t8
/* 191BA0 801E3B50 C7240000 */  lwc1       $f4, 0x0($t9)
.L801E3B54_ovl16:
/* 191BA4 801E3B54 00E02025 */  or         $a0, $a3, $zero
glabel func_801E3B58_ovl15
/* 191BA8 801E3B58 46062202 */  mul.s      $f8, $f4, $f6
/* 191BAC 801E3B5C 44054000 */  mfc1       $a1, $f8
/* 191BB0 801E3B60 0C03E63B */  jal        func_800F98EC
/* 191BB4 801E3B64 00000000 */   nop
/* 191BB8 801E3B68 5040001E */  beql       $v0, $zero, func_801E3BE4_ovl10
.L801E3B6C_ovl16:
/* 191BBC 801E3B6C 8E030000 */   lw        $v1, 0x0($s0)
/* 191BC0 801E3B70 0C067656 */  jal        func_8019D958_ovl7
/* 191BC4 801E3B74 97A40022 */   lhu       $a0, 0x22($sp)
/* 191BC8 801E3B78 8FAB0024 */  lw         $t3, 0x24($sp)
/* 191BCC 801E3B7C 240C0001 */  addiu      $t4, $zero, 0x1
/* 191BD0 801E3B80 A16C0040 */  sb         $t4, 0x40($t3)
.L801E3B84_ovl17:
/* 191BD4 801E3B84 0C068FA0 */  jal        func_801A3E80_ovl7
.L801E3B88_ovl13:
/* 191BD8 801E3B88 8FA40028 */   lw        $a0, 0x28($sp)
/* 191BDC 801E3B8C 8E030000 */  lw         $v1, 0x0($s0)
.L801E3B90_ovl16:
/* 191BE0 801E3B90 3C18800E */  lui        $t8, %hi(D_800E0D50)
/* 191BE4 801E3B94 3C01800F */  lui        $at, %hi(D_800EBBE0)
/* 191BE8 801E3B98 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E3B9C_ovl17:
/* 191BEC 801E3B9C 240FFFFF */  addiu      $t7, $zero, -0x1
/* 191BF0 801E3BA0 240CFFFF */  addiu      $t4, $zero, -0x1
/* 191BF4 801E3BA4 000D7080 */  sll        $t6, $t5, 2
/* 191BF8 801E3BA8 030EC021 */  addu       $t8, $t8, $t6
.L801E3BAC_ovl13:
/* 191BFC 801E3BAC 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
/* 191C00 801E3BB0 3C0E800E */  lui        $t6, %hi(D_800E0D50)
/* 191C04 801E3BB4 0018C880 */  sll        $t9, $t8, 2
.L801E3BB8_ovl16:
/* 191C08 801E3BB8 00390821 */  addu       $at, $at, $t9
/* 191C0C 801E3BBC AC2FBBE0 */  sw         $t7, %lo(D_800EBBE0)($at)
/* 191C10 801E3BC0 8C6B0000 */  lw         $t3, 0x0($v1)
/* 191C14 801E3BC4 3C01800F */  lui        $at, %hi(D_800EBDA0)
/* 191C18 801E3BC8 000B6880 */  sll        $t5, $t3, 2
/* 191C1C 801E3BCC 01CD7021 */  addu       $t6, $t6, $t5
/* 191C20 801E3BD0 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
/* 191C24 801E3BD4 000EC080 */  sll        $t8, $t6, 2
/* 191C28 801E3BD8 00380821 */  addu       $at, $at, $t8
/* 191C2C 801E3BDC AC2CBDA0 */  sw         $t4, %lo(D_800EBDA0)($at)
.L801E3BE0_ovl16:
/* 191C30 801E3BE0 8E030000 */  lw         $v1, 0x0($s0)
glabel func_801E3BE4_ovl10
/* 191C34 801E3BE4 3C018022 */  lui        $at, %hi(D_8021CFCC_ovl9)
/* 191C38 801E3BE8 C42ACFCC */  lwc1       $f10, %lo(D_8021CFCC_ovl9)($at)
/* 191C3C 801E3BEC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 191C40 801E3BF0 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 191C44 801E3BF4 44806000 */  mtc1       $zero, $f12
/* 191C48 801E3BF8 000FC880 */  sll        $t9, $t7, 2
.L801E3BFC_ovl13:
/* 191C4C 801E3BFC 00390821 */  addu       $at, $at, $t9
/* 191C50 801E3C00 E42AADE0 */  swc1       $f10, %lo(D_800EADE0)($at)
/* 191C54 801E3C04 8C6B0000 */  lw         $t3, 0x0($v1)
.L801E3C08_ovl17:
/* 191C58 801E3C08 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 191C5C 801E3C0C 3C02800F */  lui        $v0, %hi(D_800EB320)
/* 191C60 801E3C10 000B6880 */  sll        $t5, $t3, 2
/* 191C64 801E3C14 002D0821 */  addu       $at, $at, $t5
/* 191C68 801E3C18 E42CAFA0 */  swc1       $f12, %lo(D_800EAFA0)($at)
/* 191C6C 801E3C1C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 191C70 801E3C20 2442B320 */  addiu      $v0, $v0, %lo(D_800EB320)
/* 191C74 801E3C24 3C01800F */  lui        $at, %hi(D_800EB160)
/* 191C78 801E3C28 000E6080 */  sll        $t4, $t6, 2
glabel func_801E3C2C_ovl10
/* 191C7C 801E3C2C 004CC021 */  addu       $t8, $v0, $t4
/* 191C80 801E3C30 E70C0000 */  swc1       $f12, 0x0($t8)
/* 191C84 801E3C34 8C680000 */  lw         $t0, 0x0($v1)
.L801E3C38_ovl16:
/* 191C88 801E3C38 00084080 */  sll        $t0, $t0, 2
/* 191C8C 801E3C3C 00487821 */  addu       $t7, $v0, $t0
.L801E3C40_ovl13:
/* 191C90 801E3C40 C5F00000 */  lwc1       $f16, 0x0($t7)
.L801E3C44_ovl17:
/* 191C94 801E3C44 00280821 */  addu       $at, $at, $t0
/* 191C98 801E3C48 0C02BB30 */  jal        func_800AECC0
/* 191C9C 801E3C4C E430B160 */   swc1      $f16, %lo(D_800EB160)($at)
/* 191CA0 801E3C50 44806000 */  mtc1       $zero, $f12
/* 191CA4 801E3C54 0C02BB48 */  jal        func_800AED20
.L801E3C58_ovl16:
/* 191CA8 801E3C58 00000000 */   nop
/* 191CAC 801E3C5C 8E190000 */  lw         $t9, 0x0($s0)
/* 191CB0 801E3C60 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 191CB4 801E3C64 44819000 */  mtc1       $at, $f18
/* 191CB8 801E3C68 8F2B0000 */  lw         $t3, 0x0($t9)
/* 191CBC 801E3C6C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 191CC0 801E3C70 3C040001 */  lui        $a0, (0x10048 >> 16)
/* 191CC4 801E3C74 000B6880 */  sll        $t5, $t3, 2
.L801E3C78_ovl16:
/* 191CC8 801E3C78 002D0821 */  addu       $at, $at, $t5
/* 191CCC 801E3C7C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 191CD0 801E3C80 34840048 */  ori        $a0, $a0, (0x10048 & 0xFFFF)
/* 191CD4 801E3C84 46049032 */  c.eq.s     $f18, $f4
/* 191CD8 801E3C88 00000000 */  nop
/* 191CDC 801E3C8C 45000004 */  bc1f       .L801E3CA0_ovl15
.L801E3C90_ovl15:
/* 191CE0 801E3C90 00000000 */   nop
/* 191CE4 801E3C94 3C040001 */  lui        $a0, (0x10047 >> 16)
/* 191CE8 801E3C98 10000001 */  b          .L801E3CA0_ovl15
.L801E3C9C_ovl17:
/* 191CEC 801E3C9C 34840047 */   ori       $a0, $a0, (0x10047 & 0xFFFF)
.L801E3CA0_ovl15:
/* 191CF0 801E3CA0 0C02A7A9 */  jal        func_800A9EA4
/* 191CF4 801E3CA4 00000000 */   nop
/* 191CF8 801E3CA8 8E0E0000 */  lw         $t6, 0x0($s0)
/* 191CFC 801E3CAC 8FBF001C */  lw         $ra, 0x1C($sp)
.L801E3CB0_ovl13:
/* 191D00 801E3CB0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 191D04 801E3CB4 8DCC0000 */  lw         $t4, 0x0($t6)
/* 191D08 801E3CB8 8FB00018 */  lw         $s0, 0x18($sp)
/* 191D0C 801E3CBC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 191D10 801E3CC0 000CC080 */  sll        $t8, $t4, 2
/* 191D14 801E3CC4 00380821 */  addu       $at, $at, $t8
/* 191D18 801E3CC8 03E00008 */  jr         $ra
.L801E3CCC_ovl13:
/* 191D1C 801E3CCC AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
