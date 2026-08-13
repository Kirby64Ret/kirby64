nonmatching func_801E1CE8_ovl14, 0x340

glabel func_801E1CE8_ovl14
    /* 2048D8 801E1CE8 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 2048DC 801E1CEC 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 2048E0 801E1CF0 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 2048E4 801E1CF4 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 2048E8 801E1CF8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2048EC 801E1CFC 8DC20000 */  lw         $v0, 0x0($t6)
    /* 2048F0 801E1D00 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 2048F4 801E1D04 00027880 */  sll        $t7, $v0, 2
    /* 2048F8 801E1D08 006F1821 */  addu       $v1, $v1, $t7
    /* 2048FC 801E1D0C 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
    /* 204900 801E1D10 00402025 */  or         $a0, $v0, $zero
    /* 204904 801E1D14 8C78008C */  lw         $t8, 0x8C($v1)
    /* 204908 801E1D18 17000003 */  bnez       $t8, .L801E1D28_ovl14
    /* 20490C 801E1D1C 00000000 */   nop
    /* 204910 801E1D20 100000BD */  b          .L801E2018_ovl14
    /* 204914 801E1D24 00001025 */   or        $v0, $zero, $zero
  .L801E1D28_ovl14:
    /* 204918 801E1D28 0C044554 */  jal        func_80111550
    /* 20491C 801E1D2C AFA30044 */   sw        $v1, 0x44($sp)
    /* 204920 801E1D30 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 204924 801E1D34 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 204928 801E1D38 8CC80000 */  lw         $t0, 0x0($a2)
    /* 20492C 801E1D3C 8FB90044 */  lw         $t9, 0x44($sp)
    /* 204930 801E1D40 8D050000 */  lw         $a1, 0x0($t0)
    /* 204934 801E1D44 0C044722 */  jal        func_80111C88
    /* 204938 801E1D48 8F24008C */   lw        $a0, 0x8C($t9)
    /* 20493C 801E1D4C 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 204940 801E1D50 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 204944 801E1D54 8CC90000 */  lw         $t1, 0x0($a2)
    /* 204948 801E1D58 3C03800F */  lui        $v1, %hi(D_800E98E0)
    /* 20494C 801E1D5C 3C04800E */  lui        $a0, %hi(D_800DFBD0)
    /* 204950 801E1D60 8D250000 */  lw         $a1, 0x0($t1)
    /* 204954 801E1D64 2484FBD0 */  addiu      $a0, $a0, %lo(D_800DFBD0)
    /* 204958 801E1D68 24010001 */  addiu      $at, $zero, 0x1
    /* 20495C 801E1D6C 00052880 */  sll        $a1, $a1, 2
    /* 204960 801E1D70 00651821 */  addu       $v1, $v1, $a1
    /* 204964 801E1D74 8C6398E0 */  lw         $v1, %lo(D_800E98E0)($v1)
    /* 204968 801E1D78 00403825 */  or         $a3, $v0, $zero
    /* 20496C 801E1D7C 00855021 */  addu       $t2, $a0, $a1
    /* 204970 801E1D80 10610008 */  beq        $v1, $at, .L801E1DA4_ovl14
    /* 204974 801E1D84 24010002 */   addiu     $at, $zero, 0x2
    /* 204978 801E1D88 10610043 */  beq        $v1, $at, .L801E1E98_ovl14
    /* 20497C 801E1D8C 3C04800E */   lui       $a0, %hi(D_800DFBD0)
    /* 204980 801E1D90 24010003 */  addiu      $at, $zero, 0x3
    /* 204984 801E1D94 10610056 */  beq        $v1, $at, .L801E1EF0_ovl14
    /* 204988 801E1D98 00000000 */   nop
    /* 20498C 801E1D9C 10000054 */  b          .L801E1EF0_ovl14
    /* 204990 801E1DA0 00000000 */   nop
  .L801E1DA4_ovl14:
    /* 204994 801E1DA4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 204998 801E1DA8 8C4C0024 */  lw         $t4, 0x24($v0)
    /* 20499C 801E1DAC 8D63000C */  lw         $v1, 0xC($t3)
    /* 2049A0 801E1DB0 AD830030 */  sw         $v1, 0x30($t4)
    /* 2049A4 801E1DB4 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 2049A8 801E1DB8 8C480024 */  lw         $t0, 0x24($v0)
    /* 2049AC 801E1DBC 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 2049B0 801E1DC0 000E7880 */  sll        $t7, $t6, 2
    /* 2049B4 801E1DC4 008FC021 */  addu       $t8, $a0, $t7
    /* 2049B8 801E1DC8 8F190000 */  lw         $t9, 0x0($t8)
    /* 2049BC 801E1DCC 8F230010 */  lw         $v1, 0x10($t9)
    /* 2049C0 801E1DD0 AD030058 */  sw         $v1, 0x58($t0)
    /* 2049C4 801E1DD4 8CC90000 */  lw         $t1, 0x0($a2)
    /* 2049C8 801E1DD8 8C4E0024 */  lw         $t6, 0x24($v0)
    /* 2049CC 801E1DDC 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 2049D0 801E1DE0 000A5880 */  sll        $t3, $t2, 2
    /* 2049D4 801E1DE4 008B6021 */  addu       $t4, $a0, $t3
    /* 2049D8 801E1DE8 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 2049DC 801E1DEC 8DA30014 */  lw         $v1, 0x14($t5)
    /* 2049E0 801E1DF0 ADC30080 */  sw         $v1, 0x80($t6)
    /* 2049E4 801E1DF4 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 2049E8 801E1DF8 8C4A0024 */  lw         $t2, 0x24($v0)
    /* 2049EC 801E1DFC 8DF80000 */  lw         $t8, 0x0($t7)
    /* 2049F0 801E1E00 0018C880 */  sll        $t9, $t8, 2
    /* 2049F4 801E1E04 00994021 */  addu       $t0, $a0, $t9
    /* 2049F8 801E1E08 8D090000 */  lw         $t1, 0x0($t0)
    /* 2049FC 801E1E0C 8D230018 */  lw         $v1, 0x18($t1)
    /* 204A00 801E1E10 AD4300A8 */  sw         $v1, 0xA8($t2)
    /* 204A04 801E1E14 8CCB0000 */  lw         $t3, 0x0($a2)
    /* 204A08 801E1E18 8C580024 */  lw         $t8, 0x24($v0)
    /* 204A0C 801E1E1C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 204A10 801E1E20 000C6880 */  sll        $t5, $t4, 2
    /* 204A14 801E1E24 008D7021 */  addu       $t6, $a0, $t5
    /* 204A18 801E1E28 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 204A1C 801E1E2C 8DE3001C */  lw         $v1, 0x1C($t7)
    /* 204A20 801E1E30 AF0300D0 */  sw         $v1, 0xD0($t8)
    /* 204A24 801E1E34 8CD90000 */  lw         $t9, 0x0($a2)
    /* 204A28 801E1E38 8C4C0024 */  lw         $t4, 0x24($v0)
    /* 204A2C 801E1E3C 8F280000 */  lw         $t0, 0x0($t9)
    /* 204A30 801E1E40 00084880 */  sll        $t1, $t0, 2
    /* 204A34 801E1E44 00895021 */  addu       $t2, $a0, $t1
    /* 204A38 801E1E48 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 204A3C 801E1E4C 8D630020 */  lw         $v1, 0x20($t3)
    /* 204A40 801E1E50 AD8300F8 */  sw         $v1, 0xF8($t4)
    /* 204A44 801E1E54 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 204A48 801E1E58 8C480024 */  lw         $t0, 0x24($v0)
    /* 204A4C 801E1E5C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 204A50 801E1E60 000E7880 */  sll        $t7, $t6, 2
    /* 204A54 801E1E64 008FC021 */  addu       $t8, $a0, $t7
    /* 204A58 801E1E68 8F190000 */  lw         $t9, 0x0($t8)
    /* 204A5C 801E1E6C 8F230024 */  lw         $v1, 0x24($t9)
    /* 204A60 801E1E70 AD030120 */  sw         $v1, 0x120($t0)
    /* 204A64 801E1E74 8CC90000 */  lw         $t1, 0x0($a2)
    /* 204A68 801E1E78 8C4E0024 */  lw         $t6, 0x24($v0)
    /* 204A6C 801E1E7C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 204A70 801E1E80 000A5880 */  sll        $t3, $t2, 2
    /* 204A74 801E1E84 008B6021 */  addu       $t4, $a0, $t3
    /* 204A78 801E1E88 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 204A7C 801E1E8C 8DA30028 */  lw         $v1, 0x28($t5)
    /* 204A80 801E1E90 10000017 */  b          .L801E1EF0_ovl14
    /* 204A84 801E1E94 ADC30148 */   sw        $v1, 0x148($t6)
  .L801E1E98_ovl14:
    /* 204A88 801E1E98 2484FBD0 */  addiu      $a0, $a0, %lo(D_800DFBD0)
    /* 204A8C 801E1E9C 00857821 */  addu       $t7, $a0, $a1
    /* 204A90 801E1EA0 8DF80000 */  lw         $t8, 0x0($t7)
    /* 204A94 801E1EA4 8C590024 */  lw         $t9, 0x24($v0)
    /* 204A98 801E1EA8 8F030008 */  lw         $v1, 0x8($t8)
    /* 204A9C 801E1EAC AF230030 */  sw         $v1, 0x30($t9)
    /* 204AA0 801E1EB0 8CC80000 */  lw         $t0, 0x0($a2)
    /* 204AA4 801E1EB4 8C4D0024 */  lw         $t5, 0x24($v0)
    /* 204AA8 801E1EB8 8D090000 */  lw         $t1, 0x0($t0)
    /* 204AAC 801E1EBC 00095080 */  sll        $t2, $t1, 2
    /* 204AB0 801E1EC0 008A5821 */  addu       $t3, $a0, $t2
    /* 204AB4 801E1EC4 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 204AB8 801E1EC8 8D83000C */  lw         $v1, 0xC($t4)
    /* 204ABC 801E1ECC ADA30058 */  sw         $v1, 0x58($t5)
    /* 204AC0 801E1ED0 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 204AC4 801E1ED4 8C490024 */  lw         $t1, 0x24($v0)
    /* 204AC8 801E1ED8 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 204ACC 801E1EDC 000FC080 */  sll        $t8, $t7, 2
    /* 204AD0 801E1EE0 0098C821 */  addu       $t9, $a0, $t8
    /* 204AD4 801E1EE4 8F280000 */  lw         $t0, 0x0($t9)
    /* 204AD8 801E1EE8 8D030010 */  lw         $v1, 0x10($t0)
    /* 204ADC 801E1EEC AD230080 */  sw         $v1, 0x80($t1)
  .L801E1EF0_ovl14:
    /* 204AE0 801E1EF0 0C0447B3 */  jal        func_80111ECC
    /* 204AE4 801E1EF4 00E02025 */   or        $a0, $a3, $zero
    /* 204AE8 801E1EF8 0C0442C0 */  jal        func_80110B00
    /* 204AEC 801E1EFC 27A40024 */   addiu     $a0, $sp, 0x24
    /* 204AF0 801E1F00 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 204AF4 801E1F04 1040000D */  beqz       $v0, .L801E1F3C_ovl14
    /* 204AF8 801E1F08 24C6A7C4 */   addiu     $a2, $a2, %lo(omCurrentObj)
    /* 204AFC 801E1F0C 8CCB0000 */  lw         $t3, 0x0($a2)
    /* 204B00 801E1F10 93AA0026 */  lbu        $t2, 0x26($sp)
    /* 204B04 801E1F14 3C02800F */  lui        $v0, %hi(D_800E83E0)
    /* 204B08 801E1F18 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 204B0C 801E1F1C 244283E0 */  addiu      $v0, $v0, %lo(D_800E83E0)
    /* 204B10 801E1F20 000C6880 */  sll        $t5, $t4, 2
    /* 204B14 801E1F24 004D7021 */  addu       $t6, $v0, $t5
    /* 204B18 801E1F28 ADCA0000 */  sw         $t2, 0x0($t6)
    /* 204B1C 801E1F2C 8FB80044 */  lw         $t8, 0x44($sp)
    /* 204B20 801E1F30 93AF0027 */  lbu        $t7, 0x27($sp)
    /* 204B24 801E1F34 1000002C */  b          .L801E1FE8_ovl14
    /* 204B28 801E1F38 A30F0043 */   sb        $t7, 0x43($t8)
  .L801E1F3C_ovl14:
    /* 204B2C 801E1F3C 0C0443F5 */  jal        func_80110FD4
    /* 204B30 801E1F40 27A40024 */   addiu     $a0, $sp, 0x24
    /* 204B34 801E1F44 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 204B38 801E1F48 1040000D */  beqz       $v0, .L801E1F80_ovl14
    /* 204B3C 801E1F4C 24C6A7C4 */   addiu     $a2, $a2, %lo(omCurrentObj)
    /* 204B40 801E1F50 8CC80000 */  lw         $t0, 0x0($a2)
    /* 204B44 801E1F54 93B90026 */  lbu        $t9, 0x26($sp)
    /* 204B48 801E1F58 3C02800F */  lui        $v0, %hi(D_800E83E0)
    /* 204B4C 801E1F5C 8D090000 */  lw         $t1, 0x0($t0)
    /* 204B50 801E1F60 244283E0 */  addiu      $v0, $v0, %lo(D_800E83E0)
    /* 204B54 801E1F64 00095880 */  sll        $t3, $t1, 2
    /* 204B58 801E1F68 004B6021 */  addu       $t4, $v0, $t3
    /* 204B5C 801E1F6C AD990000 */  sw         $t9, 0x0($t4)
    /* 204B60 801E1F70 8FAA0044 */  lw         $t2, 0x44($sp)
    /* 204B64 801E1F74 93AD0027 */  lbu        $t5, 0x27($sp)
    /* 204B68 801E1F78 1000001B */  b          .L801E1FE8_ovl14
    /* 204B6C 801E1F7C A14D0043 */   sb        $t5, 0x43($t2)
  .L801E1F80_ovl14:
    /* 204B70 801E1F80 0C044054 */  jal        func_80110150
    /* 204B74 801E1F84 27A40024 */   addiu     $a0, $sp, 0x24
    /* 204B78 801E1F88 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 204B7C 801E1F8C 1040000D */  beqz       $v0, .L801E1FC4_ovl14
    /* 204B80 801E1F90 24C6A7C4 */   addiu     $a2, $a2, %lo(omCurrentObj)
    /* 204B84 801E1F94 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 204B88 801E1F98 93AE0026 */  lbu        $t6, 0x26($sp)
    /* 204B8C 801E1F9C 3C02800F */  lui        $v0, %hi(D_800E83E0)
    /* 204B90 801E1FA0 8DF80000 */  lw         $t8, 0x0($t7)
    /* 204B94 801E1FA4 244283E0 */  addiu      $v0, $v0, %lo(D_800E83E0)
    /* 204B98 801E1FA8 00184080 */  sll        $t0, $t8, 2
    /* 204B9C 801E1FAC 00484821 */  addu       $t1, $v0, $t0
    /* 204BA0 801E1FB0 AD2E0000 */  sw         $t6, 0x0($t1)
    /* 204BA4 801E1FB4 8FB90044 */  lw         $t9, 0x44($sp)
    /* 204BA8 801E1FB8 93AB0027 */  lbu        $t3, 0x27($sp)
    /* 204BAC 801E1FBC 1000000A */  b          .L801E1FE8_ovl14
    /* 204BB0 801E1FC0 A32B0043 */   sb        $t3, 0x43($t9)
  .L801E1FC4_ovl14:
    /* 204BB4 801E1FC4 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 204BB8 801E1FC8 3C02800F */  lui        $v0, %hi(D_800E83E0)
    /* 204BBC 801E1FCC 244283E0 */  addiu      $v0, $v0, %lo(D_800E83E0)
    /* 204BC0 801E1FD0 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 204BC4 801E1FD4 000D5080 */  sll        $t2, $t5, 2
    /* 204BC8 801E1FD8 004A7821 */  addu       $t7, $v0, $t2
    /* 204BCC 801E1FDC ADE00000 */  sw         $zero, 0x0($t7)
    /* 204BD0 801E1FE0 8FB80044 */  lw         $t8, 0x44($sp)
    /* 204BD4 801E1FE4 A3000043 */  sb         $zero, 0x43($t8)
  .L801E1FE8_ovl14:
    /* 204BD8 801E1FE8 8CC80000 */  lw         $t0, 0x0($a2)
    /* 204BDC 801E1FEC 24010001 */  addiu      $at, $zero, 0x1
    /* 204BE0 801E1FF0 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 204BE4 801E1FF4 000E4880 */  sll        $t1, $t6, 2
    /* 204BE8 801E1FF8 00495821 */  addu       $t3, $v0, $t1
    /* 204BEC 801E1FFC 8D630000 */  lw         $v1, 0x0($t3)
    /* 204BF0 801E2000 10610003 */  beq        $v1, $at, .L801E2010_ovl14
    /* 204BF4 801E2004 24010002 */   addiu     $at, $zero, 0x2
    /* 204BF8 801E2008 14610003 */  bne        $v1, $at, .L801E2018_ovl14
    /* 204BFC 801E200C 00001025 */   or        $v0, $zero, $zero
  .L801E2010_ovl14:
    /* 204C00 801E2010 10000001 */  b          .L801E2018_ovl14
    /* 204C04 801E2014 24020001 */   addiu     $v0, $zero, 0x1
  .L801E2018_ovl14:
    /* 204C08 801E2018 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 204C0C 801E201C 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 204C10 801E2020 03E00008 */  jr         $ra
    /* 204C14 801E2024 00000000 */   nop
endlabel func_801E1CE8_ovl14
.size func_801E1CE8_ovl14, . - func_801E1CE8_ovl14
