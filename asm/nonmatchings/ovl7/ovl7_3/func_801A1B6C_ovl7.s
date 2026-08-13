nonmatching func_801A1B6C_ovl7, 0x4FC

glabel func_801A1B6C_ovl7
    /* 147BDC 801A1B6C 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 147BE0 801A1B70 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 147BE4 801A1B74 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 147BE8 801A1B78 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 147BEC 801A1B7C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 147BF0 801A1B80 3C08800E */  lui        $t0, %hi(D_800E1B50)
    /* 147BF4 801A1B84 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 147BF8 801A1B88 00031880 */  sll        $v1, $v1, 2
    /* 147BFC 801A1B8C 01034021 */  addu       $t0, $t0, $v1
    /* 147C00 801A1B90 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
    /* 147C04 801A1B94 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* 147C08 801A1B98 00230821 */  addu       $at, $at, $v1
    /* 147C0C 801A1B9C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 147C10 801A1BA0 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* 147C14 801A1BA4 01237021 */  addu       $t6, $t1, $v1
    /* 147C18 801A1BA8 8DCA0000 */  lw         $t2, 0x0($t6)
    /* 147C1C 801A1BAC 8D060084 */  lw         $a2, 0x84($t0)
    /* 147C20 801A1BB0 E7A40060 */  swc1       $f4, 0x60($sp)
    /* 147C24 801A1BB4 91020042 */  lbu        $v0, 0x42($t0)
    /* 147C28 801A1BB8 24010001 */  addiu      $at, $zero, 0x1
    /* 147C2C 801A1BBC 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
    /* 147C30 801A1BC0 50400008 */  beql       $v0, $zero, .L801A1BE4_ovl7
    /* 147C34 801A1BC4 8CAF0000 */   lw        $t7, 0x0($a1)
    /* 147C38 801A1BC8 10410017 */  beq        $v0, $at, .L801A1C28_ovl7
    /* 147C3C 801A1BCC 24010002 */   addiu     $at, $zero, 0x2
    /* 147C40 801A1BD0 1041000C */  beq        $v0, $at, .L801A1C04_ovl7
    /* 147C44 801A1BD4 3C07800E */   lui       $a3, %hi(gEntitiesNextPosYArray)
    /* 147C48 801A1BD8 10000014 */  b          .L801A1C2C_ovl7
    /* 147C4C 801A1BDC 8CAE0000 */   lw        $t6, 0x0($a1)
    /* 147C50 801A1BE0 8CAF0000 */  lw         $t7, 0x0($a1)
  .L801A1BE4_ovl7:
    /* 147C54 801A1BE4 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
    /* 147C58 801A1BE8 C4C80014 */  lwc1       $f8, 0x14($a2)
    /* 147C5C 801A1BEC 000FC080 */  sll        $t8, $t7, 2
    /* 147C60 801A1BF0 00F8C821 */  addu       $t9, $a3, $t8
    /* 147C64 801A1BF4 C7260000 */  lwc1       $f6, 0x0($t9)
    /* 147C68 801A1BF8 46083280 */  add.s      $f10, $f6, $f8
    /* 147C6C 801A1BFC 10000011 */  b          .L801A1C44_ovl7
    /* 147C70 801A1C00 E7AA0064 */   swc1      $f10, 0x64($sp)
  .L801A1C04_ovl7:
    /* 147C74 801A1C04 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 147C78 801A1C08 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
    /* 147C7C 801A1C0C C4D20018 */  lwc1       $f18, 0x18($a2)
    /* 147C80 801A1C10 000B6080 */  sll        $t4, $t3, 2
    /* 147C84 801A1C14 00EC6821 */  addu       $t5, $a3, $t4
    /* 147C88 801A1C18 C5B00000 */  lwc1       $f16, 0x0($t5)
    /* 147C8C 801A1C1C 46128100 */  add.s      $f4, $f16, $f18
    /* 147C90 801A1C20 10000008 */  b          .L801A1C44_ovl7
    /* 147C94 801A1C24 E7A40064 */   swc1      $f4, 0x64($sp)
  .L801A1C28_ovl7:
    /* 147C98 801A1C28 8CAE0000 */  lw         $t6, 0x0($a1)
  .L801A1C2C_ovl7:
    /* 147C9C 801A1C2C 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
    /* 147CA0 801A1C30 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
    /* 147CA4 801A1C34 000E7880 */  sll        $t7, $t6, 2
    /* 147CA8 801A1C38 00EFC021 */  addu       $t8, $a3, $t7
    /* 147CAC 801A1C3C C7060000 */  lwc1       $f6, 0x0($t8)
    /* 147CB0 801A1C40 E7A60064 */  swc1       $f6, 0x64($sp)
  .L801A1C44_ovl7:
    /* 147CB4 801A1C44 8CB90000 */  lw         $t9, 0x0($a1)
    /* 147CB8 801A1C48 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 147CBC 801A1C4C 27A40060 */  addiu      $a0, $sp, 0x60
    /* 147CC0 801A1C50 00195880 */  sll        $t3, $t9, 2
    /* 147CC4 801A1C54 002B0821 */  addu       $at, $at, $t3
    /* 147CC8 801A1C58 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 147CCC 801A1C5C E7A80068 */  swc1       $f8, 0x68($sp)
    /* 147CD0 801A1C60 8D0C0074 */  lw         $t4, 0x74($t0)
    /* 147CD4 801A1C64 AFAA006C */  sw         $t2, 0x6C($sp)
    /* 147CD8 801A1C68 AFA80038 */  sw         $t0, 0x38($sp)
    /* 147CDC 801A1C6C AFA60034 */  sw         $a2, 0x34($sp)
    /* 147CE0 801A1C70 0C0437E7 */  jal        func_8010DF9C
    /* 147CE4 801A1C74 AFAC0040 */   sw        $t4, 0x40($sp)
    /* 147CE8 801A1C78 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
    /* 147CEC 801A1C7C 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* 147CF0 801A1C80 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* 147CF4 801A1C84 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
    /* 147CF8 801A1C88 8FA60034 */  lw         $a2, 0x34($sp)
    /* 147CFC 801A1C8C 8FA80038 */  lw         $t0, 0x38($sp)
    /* 147D00 801A1C90 10400034 */  beqz       $v0, .L801A1D64_ovl7
    /* 147D04 801A1C94 8FAA006C */   lw        $t2, 0x6C($sp)
    /* 147D08 801A1C98 24010001 */  addiu      $at, $zero, 0x1
    /* 147D0C 801A1C9C 10410021 */  beq        $v0, $at, .L801A1D24_ovl7
    /* 147D10 801A1CA0 3C058005 */   lui       $a1, %hi(omCurrentObj)
    /* 147D14 801A1CA4 24010002 */  addiu      $at, $zero, 0x2
    /* 147D18 801A1CA8 10410010 */  beq        $v0, $at, .L801A1CEC_ovl7
    /* 147D1C 801A1CAC 24010003 */   addiu     $at, $zero, 0x3
    /* 147D20 801A1CB0 1441002C */  bne        $v0, $at, .L801A1D64_ovl7
    /* 147D24 801A1CB4 3C038013 */   lui       $v1, %hi(D_8012BCE0 + 0x8)
    /* 147D28 801A1CB8 8C63BCE8 */  lw         $v1, %lo(D_8012BCE0 + 0x8)($v1)
    /* 147D2C 801A1CBC 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 147D30 801A1CC0 906D0004 */  lbu        $t5, 0x4($v1)
    /* 147D34 801A1CC4 11A00009 */  beqz       $t5, .L801A1CEC_ovl7
    /* 147D38 801A1CC8 00000000 */   nop
    /* 147D3C 801A1CCC AD030074 */  sw         $v1, 0x74($t0)
    /* 147D40 801A1CD0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 147D44 801A1CD4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 147D48 801A1CD8 000FC080 */  sll        $t8, $t7, 2
    /* 147D4C 801A1CDC 01381021 */  addu       $v0, $t1, $t8
    /* 147D50 801A1CE0 8C590000 */  lw         $t9, 0x0($v0)
    /* 147D54 801A1CE4 372B0001 */  ori        $t3, $t9, 0x1
    /* 147D58 801A1CE8 AC4B0000 */  sw         $t3, 0x0($v0)
  .L801A1CEC_ovl7:
    /* 147D5C 801A1CEC 3C038013 */  lui        $v1, %hi(D_8012BCE0 + 0x4)
    /* 147D60 801A1CF0 8C63BCE4 */  lw         $v1, %lo(D_8012BCE0 + 0x4)($v1)
    /* 147D64 801A1CF4 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 147D68 801A1CF8 906C0004 */  lbu        $t4, 0x4($v1)
    /* 147D6C 801A1CFC 11800009 */  beqz       $t4, .L801A1D24_ovl7
    /* 147D70 801A1D00 00000000 */   nop
    /* 147D74 801A1D04 AD030074 */  sw         $v1, 0x74($t0)
    /* 147D78 801A1D08 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 147D7C 801A1D0C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 147D80 801A1D10 000E7880 */  sll        $t7, $t6, 2
    /* 147D84 801A1D14 012F1021 */  addu       $v0, $t1, $t7
    /* 147D88 801A1D18 8C580000 */  lw         $t8, 0x0($v0)
    /* 147D8C 801A1D1C 37190001 */  ori        $t9, $t8, 0x1
    /* 147D90 801A1D20 AC590000 */  sw         $t9, 0x0($v0)
  .L801A1D24_ovl7:
    /* 147D94 801A1D24 3C038013 */  lui        $v1, %hi(D_8012BCE0)
    /* 147D98 801A1D28 8C63BCE0 */  lw         $v1, %lo(D_8012BCE0)($v1)
    /* 147D9C 801A1D2C 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 147DA0 801A1D30 906B0004 */  lbu        $t3, 0x4($v1)
    /* 147DA4 801A1D34 11600009 */  beqz       $t3, .L801A1D5C_ovl7
    /* 147DA8 801A1D38 00000000 */   nop
    /* 147DAC 801A1D3C AD030074 */  sw         $v1, 0x74($t0)
    /* 147DB0 801A1D40 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 147DB4 801A1D44 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 147DB8 801A1D48 000D7080 */  sll        $t6, $t5, 2
    /* 147DBC 801A1D4C 012E1021 */  addu       $v0, $t1, $t6
    /* 147DC0 801A1D50 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 147DC4 801A1D54 35F80001 */  ori        $t8, $t7, 0x1
    /* 147DC8 801A1D58 AC580000 */  sw         $t8, 0x0($v0)
  .L801A1D5C_ovl7:
    /* 147DCC 801A1D5C 1000000D */  b          .L801A1D94_ovl7
    /* 147DD0 801A1D60 8CA5A7C4 */   lw        $a1, %lo(omCurrentObj)($a1)
  .L801A1D64_ovl7:
    /* 147DD4 801A1D64 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 147DD8 801A1D68 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 147DDC 801A1D6C 2401FFFE */  addiu      $at, $zero, -0x2
    /* 147DE0 801A1D70 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 147DE4 801A1D74 8F2B0000 */  lw         $t3, 0x0($t9)
    /* 147DE8 801A1D78 000B6080 */  sll        $t4, $t3, 2
    /* 147DEC 801A1D7C 012C1021 */  addu       $v0, $t1, $t4
    /* 147DF0 801A1D80 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 147DF4 801A1D84 01A17024 */  and        $t6, $t5, $at
    /* 147DF8 801A1D88 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 147DFC 801A1D8C AD000074 */  sw         $zero, 0x74($t0)
    /* 147E00 801A1D90 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
  .L801A1D94_ovl7:
    /* 147E04 801A1D94 31440001 */  andi       $a0, $t2, 0x1
    /* 147E08 801A1D98 54800009 */  bnel       $a0, $zero, .L801A1DC0_ovl7
    /* 147E0C 801A1D9C 8CAB0000 */   lw        $t3, 0x0($a1)
    /* 147E10 801A1DA0 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 147E14 801A1DA4 000FC080 */  sll        $t8, $t7, 2
    /* 147E18 801A1DA8 01381021 */  addu       $v0, $t1, $t8
    /* 147E1C 801A1DAC 8C430000 */  lw         $v1, 0x0($v0)
    /* 147E20 801A1DB0 30790001 */  andi       $t9, $v1, 0x1
    /* 147E24 801A1DB4 5720000A */  bnel       $t9, $zero, .L801A1DE0_ovl7
    /* 147E28 801A1DB8 346E0002 */   ori       $t6, $v1, 0x2
    /* 147E2C 801A1DBC 8CAB0000 */  lw         $t3, 0x0($a1)
  .L801A1DC0_ovl7:
    /* 147E30 801A1DC0 2401FFFD */  addiu      $at, $zero, -0x3
    /* 147E34 801A1DC4 000B6080 */  sll        $t4, $t3, 2
    /* 147E38 801A1DC8 012C1021 */  addu       $v0, $t1, $t4
    /* 147E3C 801A1DCC 1080000C */  beqz       $a0, .L801A1E00_ovl7
    /* 147E40 801A1DD0 8C430000 */   lw        $v1, 0x0($v0)
    /* 147E44 801A1DD4 306D0001 */  andi       $t5, $v1, 0x1
    /* 147E48 801A1DD8 15A00009 */  bnez       $t5, .L801A1E00_ovl7
    /* 147E4C 801A1DDC 346E0002 */   ori       $t6, $v1, 0x2
  .L801A1DE0_ovl7:
    /* 147E50 801A1DE0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 147E54 801A1DE4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 147E58 801A1DE8 000FC080 */  sll        $t8, $t7, 2
    /* 147E5C 801A1DEC 01381021 */  addu       $v0, $t1, $t8
    /* 147E60 801A1DF0 8C590000 */  lw         $t9, 0x0($v0)
    /* 147E64 801A1DF4 372B0010 */  ori        $t3, $t9, 0x10
    /* 147E68 801A1DF8 1000000A */  b          .L801A1E24_ovl7
    /* 147E6C 801A1DFC AC4B0000 */   sw        $t3, 0x0($v0)
  .L801A1E00_ovl7:
    /* 147E70 801A1E00 00616024 */  and        $t4, $v1, $at
    /* 147E74 801A1E04 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 147E78 801A1E08 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 147E7C 801A1E0C 2401FFEF */  addiu      $at, $zero, -0x11
    /* 147E80 801A1E10 000D7080 */  sll        $t6, $t5, 2
    /* 147E84 801A1E14 012E1021 */  addu       $v0, $t1, $t6
    /* 147E88 801A1E18 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 147E8C 801A1E1C 01E1C024 */  and        $t8, $t7, $at
    /* 147E90 801A1E20 AC580000 */  sw         $t8, 0x0($v0)
  .L801A1E24_ovl7:
    /* 147E94 801A1E24 81190038 */  lb         $t9, 0x38($t0)
    /* 147E98 801A1E28 2401FFFF */  addiu      $at, $zero, -0x1
    /* 147E9C 801A1E2C 53210079 */  beql       $t9, $at, .L801A2014_ovl7
    /* 147EA0 801A1E30 81020038 */   lb        $v0, 0x38($t0)
    /* 147EA4 801A1E34 8CA30000 */  lw         $v1, 0x0($a1)
    /* 147EA8 801A1E38 00031880 */  sll        $v1, $v1, 2
    /* 147EAC 801A1E3C 01235821 */  addu       $t3, $t1, $v1
    /* 147EB0 801A1E40 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 147EB4 801A1E44 318D0010 */  andi       $t5, $t4, 0x10
    /* 147EB8 801A1E48 51A00072 */  beql       $t5, $zero, .L801A2014_ovl7
    /* 147EBC 801A1E4C 81020038 */   lb        $v0, 0x38($t0)
    /* 147EC0 801A1E50 91020041 */  lbu        $v0, 0x41($t0)
    /* 147EC4 801A1E54 24010001 */  addiu      $at, $zero, 0x1
    /* 147EC8 801A1E58 00E37021 */  addu       $t6, $a3, $v1
    /* 147ECC 801A1E5C 50400009 */  beql       $v0, $zero, .L801A1E84_ovl7
    /* 147ED0 801A1E60 C5CA0000 */   lwc1      $f10, 0x0($t6)
    /* 147ED4 801A1E64 10410020 */  beq        $v0, $at, .L801A1EE8_ovl7
    /* 147ED8 801A1E68 00E36821 */   addu      $t5, $a3, $v1
    /* 147EDC 801A1E6C 24010002 */  addiu      $at, $zero, 0x2
    /* 147EE0 801A1E70 10410010 */  beq        $v0, $at, .L801A1EB4_ovl7
    /* 147EE4 801A1E74 00E3C821 */   addu      $t9, $a3, $v1
    /* 147EE8 801A1E78 1000001C */  b          .L801A1EEC_ovl7
    /* 147EEC 801A1E7C C5AA0000 */   lwc1      $f10, 0x0($t5)
    /* 147EF0 801A1E80 C5CA0000 */  lwc1       $f10, 0x0($t6)
  .L801A1E84_ovl7:
    /* 147EF4 801A1E84 C4D00014 */  lwc1       $f16, 0x14($a2)
    /* 147EF8 801A1E88 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 147EFC 801A1E8C 46105480 */  add.s      $f18, $f10, $f16
    /* 147F00 801A1E90 E7B20064 */  swc1       $f18, 0x64($sp)
    /* 147F04 801A1E94 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 147F08 801A1E98 C4C60014 */  lwc1       $f6, 0x14($a2)
    /* 147F0C 801A1E9C 000FC080 */  sll        $t8, $t7, 2
    /* 147F10 801A1EA0 00380821 */  addu       $at, $at, $t8
    /* 147F14 801A1EA4 C4242CD0 */  lwc1       $f4, %lo(gEntitiesPosYArray)($at)
    /* 147F18 801A1EA8 46062200 */  add.s      $f8, $f4, $f6
    /* 147F1C 801A1EAC 10000016 */  b          .L801A1F08_ovl7
    /* 147F20 801A1EB0 E7A80058 */   swc1      $f8, 0x58($sp)
  .L801A1EB4_ovl7:
    /* 147F24 801A1EB4 C72A0000 */  lwc1       $f10, 0x0($t9)
    /* 147F28 801A1EB8 C4D00018 */  lwc1       $f16, 0x18($a2)
    /* 147F2C 801A1EBC 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 147F30 801A1EC0 46105480 */  add.s      $f18, $f10, $f16
    /* 147F34 801A1EC4 E7B20064 */  swc1       $f18, 0x64($sp)
    /* 147F38 801A1EC8 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 147F3C 801A1ECC C4C60018 */  lwc1       $f6, 0x18($a2)
    /* 147F40 801A1ED0 000B6080 */  sll        $t4, $t3, 2
    /* 147F44 801A1ED4 002C0821 */  addu       $at, $at, $t4
    /* 147F48 801A1ED8 C4242CD0 */  lwc1       $f4, %lo(gEntitiesPosYArray)($at)
    /* 147F4C 801A1EDC 46062200 */  add.s      $f8, $f4, $f6
    /* 147F50 801A1EE0 10000009 */  b          .L801A1F08_ovl7
    /* 147F54 801A1EE4 E7A80058 */   swc1      $f8, 0x58($sp)
  .L801A1EE8_ovl7:
    /* 147F58 801A1EE8 C5AA0000 */  lwc1       $f10, 0x0($t5)
  .L801A1EEC_ovl7:
    /* 147F5C 801A1EEC 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 147F60 801A1EF0 E7AA0064 */  swc1       $f10, 0x64($sp)
    /* 147F64 801A1EF4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 147F68 801A1EF8 000E7880 */  sll        $t7, $t6, 2
    /* 147F6C 801A1EFC 002F0821 */  addu       $at, $at, $t7
    /* 147F70 801A1F00 C4302CD0 */  lwc1       $f16, %lo(gEntitiesPosYArray)($at)
    /* 147F74 801A1F04 E7B00058 */  swc1       $f16, 0x58($sp)
  .L801A1F08_ovl7:
    /* 147F78 801A1F08 8CB80000 */  lw         $t8, 0x0($a1)
    /* 147F7C 801A1F0C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* 147F80 801A1F10 27A60054 */  addiu      $a2, $sp, 0x54
    /* 147F84 801A1F14 0018C880 */  sll        $t9, $t8, 2
    /* 147F88 801A1F18 00390821 */  addu       $at, $at, $t9
    /* 147F8C 801A1F1C C4322B10 */  lwc1       $f18, %lo(gEntitiesPosXArray)($at)
    /* 147F90 801A1F20 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* 147F94 801A1F24 27A70060 */  addiu      $a3, $sp, 0x60
    /* 147F98 801A1F28 E7B20054 */  swc1       $f18, 0x54($sp)
    /* 147F9C 801A1F2C 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 147FA0 801A1F30 24050014 */  addiu      $a1, $zero, 0x14
    /* 147FA4 801A1F34 27AD003C */  addiu      $t5, $sp, 0x3C
    /* 147FA8 801A1F38 000B6080 */  sll        $t4, $t3, 2
    /* 147FAC 801A1F3C 002C0821 */  addu       $at, $at, $t4
    /* 147FB0 801A1F40 C4242E90 */  lwc1       $f4, %lo(gEntitiesPosZArray)($at)
    /* 147FB4 801A1F44 27AE0048 */  addiu      $t6, $sp, 0x48
    /* 147FB8 801A1F48 E7A4005C */  swc1       $f4, 0x5C($sp)
    /* 147FBC 801A1F4C 8D040074 */  lw         $a0, 0x74($t0)
    /* 147FC0 801A1F50 50800016 */  beql       $a0, $zero, .L801A1FAC_ovl7
    /* 147FC4 801A1F54 8FA40040 */   lw        $a0, 0x40($sp)
    /* 147FC8 801A1F58 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 147FCC 801A1F5C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 147FD0 801A1F60 0C043812 */  jal        func_8010E048
    /* 147FD4 801A1F64 AFA80038 */   sw        $t0, 0x38($sp)
    /* 147FD8 801A1F68 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* 147FDC 801A1F6C 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* 147FE0 801A1F70 10400027 */  beqz       $v0, .L801A2010_ovl7
    /* 147FE4 801A1F74 8FA80038 */   lw        $t0, 0x38($sp)
    /* 147FE8 801A1F78 810F0038 */  lb         $t7, 0x38($t0)
    /* 147FEC 801A1F7C 24040001 */  addiu      $a0, $zero, 0x1
    /* 147FF0 801A1F80 8FA50048 */  lw         $a1, 0x48($sp)
    /* 147FF4 801A1F84 15E00022 */  bnez       $t7, .L801A2010_ovl7
    /* 147FF8 801A1F88 8FA6004C */   lw        $a2, 0x4C($sp)
    /* 147FFC 801A1F8C 8FA70050 */  lw         $a3, 0x50($sp)
    /* 148000 801A1F90 0C06B9CF */  jal        func_801AE73C_ovl7
    /* 148004 801A1F94 AFA80038 */   sw        $t0, 0x38($sp)
    /* 148008 801A1F98 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* 14800C 801A1F9C 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* 148010 801A1FA0 1000001B */  b          .L801A2010_ovl7
    /* 148014 801A1FA4 8FA80038 */   lw        $t0, 0x38($sp)
    /* 148018 801A1FA8 8FA40040 */  lw         $a0, 0x40($sp)
  .L801A1FAC_ovl7:
    /* 14801C 801A1FAC 24050014 */  addiu      $a1, $zero, 0x14
    /* 148020 801A1FB0 27A60054 */  addiu      $a2, $sp, 0x54
    /* 148024 801A1FB4 10800016 */  beqz       $a0, .L801A2010_ovl7
    /* 148028 801A1FB8 27A70060 */   addiu     $a3, $sp, 0x60
    /* 14802C 801A1FBC 27B8003C */  addiu      $t8, $sp, 0x3C
    /* 148030 801A1FC0 27B90048 */  addiu      $t9, $sp, 0x48
    /* 148034 801A1FC4 AFB90014 */  sw         $t9, 0x14($sp)
    /* 148038 801A1FC8 AFB80010 */  sw         $t8, 0x10($sp)
    /* 14803C 801A1FCC 0C043812 */  jal        func_8010E048
    /* 148040 801A1FD0 AFA80038 */   sw        $t0, 0x38($sp)
    /* 148044 801A1FD4 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* 148048 801A1FD8 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* 14804C 801A1FDC 1040000C */  beqz       $v0, .L801A2010_ovl7
    /* 148050 801A1FE0 8FA80038 */   lw        $t0, 0x38($sp)
    /* 148054 801A1FE4 810B0038 */  lb         $t3, 0x38($t0)
    /* 148058 801A1FE8 24040001 */  addiu      $a0, $zero, 0x1
    /* 14805C 801A1FEC 8FA50048 */  lw         $a1, 0x48($sp)
    /* 148060 801A1FF0 15600007 */  bnez       $t3, .L801A2010_ovl7
    /* 148064 801A1FF4 8FA6004C */   lw        $a2, 0x4C($sp)
    /* 148068 801A1FF8 8FA70050 */  lw         $a3, 0x50($sp)
    /* 14806C 801A1FFC 0C06B9CF */  jal        func_801AE73C_ovl7
    /* 148070 801A2000 AFA80038 */   sw        $t0, 0x38($sp)
    /* 148074 801A2004 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* 148078 801A2008 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* 14807C 801A200C 8FA80038 */  lw         $t0, 0x38($sp)
  .L801A2010_ovl7:
    /* 148080 801A2010 81020038 */  lb         $v0, 0x38($t0)
  .L801A2014_ovl7:
    /* 148084 801A2014 2401FFFF */  addiu      $at, $zero, -0x1
    /* 148088 801A2018 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 14808C 801A201C 10410004 */  beq        $v0, $at, .L801A2030_ovl7
    /* 148090 801A2020 00000000 */   nop
    /* 148094 801A2024 18400002 */  blez       $v0, .L801A2030_ovl7
    /* 148098 801A2028 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 14809C 801A202C A10C0038 */  sb         $t4, 0x38($t0)
  .L801A2030_ovl7:
    /* 1480A0 801A2030 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 1480A4 801A2034 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 1480A8 801A2038 000E7880 */  sll        $t7, $t6, 2
    /* 1480AC 801A203C 012FC021 */  addu       $t8, $t1, $t7
    /* 1480B0 801A2040 8F190000 */  lw         $t9, 0x0($t8)
    /* 1480B4 801A2044 332B0001 */  andi       $t3, $t9, 0x1
    /* 1480B8 801A2048 51600004 */  beql       $t3, $zero, .L801A205C_ovl7
    /* 1480BC 801A204C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 1480C0 801A2050 0C0688E7 */  jal        func_801A239C_ovl7
    /* 1480C4 801A2054 00000000 */   nop
    /* 1480C8 801A2058 8FBF001C */  lw         $ra, 0x1C($sp)
  .L801A205C_ovl7:
    /* 1480CC 801A205C 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 1480D0 801A2060 03E00008 */  jr         $ra
    /* 1480D4 801A2064 00000000 */   nop
endlabel func_801A1B6C_ovl7
.size func_801A1B6C_ovl7, . - func_801A1B6C_ovl7
