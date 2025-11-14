glabel func_801E3A84_ovl13 # 50
/* 1FBA04 801E3A84 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 1FBA08 801E3A88 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1FBA0C 801E3A8C 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1FBA10 801E3A90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FBA14 801E3A94 AFA40058 */  sw          $a0, 0x58($sp)
/* 1FBA18 801E3A98 AFA5005C */  sw          $a1, 0x5C($sp)
/* 1FBA1C 801E3A9C AFA60060 */  sw          $a2, 0x60($sp)
/* 1FBA20 801E3AA0 8DC30000 */  lw          $v1, 0x0($t6)
/* 1FBA24 801E3AA4 3C08800E */  lui         $t0, %hi(D_800E1B50)
/* 1FBA28 801E3AA8 3C04800F */  lui         $a0, %hi(D_800EBDA0)
/* 1FBA2C 801E3AAC 00033880 */  sll         $a3, $v1, 2
/* 1FBA30 801E3AB0 01074021 */  addu        $t0, $t0, $a3
/* 1FBA34 801E3AB4 8D081B50 */  lw          $t0, %lo(D_800E1B50)($t0)
/* 1FBA38 801E3AB8 00005025 */  move        $t2, $zero
/* 1FBA3C 801E3ABC 00872021 */  addu        $a0, $a0, $a3
/* 1FBA40 801E3AC0 8D020088 */  lw          $v0, 0x88($t0)
/* 1FBA44 801E3AC4 01004825 */  move        $t1, $t0
/* 1FBA48 801E3AC8 14400003 */  bnez        $v0, L801E3AD8_ovl13
/* 1FBA4C 801E3ACC 00000000 */   nop
/* 1FBA50 801E3AD0 100000B6 */  b           L801E3DAC_ovl13
/* 1FBA54 801E3AD4 00001025 */   move       $v0, $zero
glabel L801E3AD8_ovl13
/* 1FBA58 801E3AD8 8C84BDA0 */  lw          $a0, %lo(D_800EBDA0)($a0)
/* 1FBA5C 801E3ADC 2405FFFF */  addiu       $a1, $zero, -0x1
/* 1FBA60 801E3AE0 3C0F800E */  lui         $t7, %hi(D_800E0D50)
/* 1FBA64 801E3AE4 10A40015 */  beq         $a1, $a0, L801E3B3C_ovl13
/* 1FBA68 801E3AE8 00041080 */   sll        $v0, $a0, 2
/* 1FBA6C 801E3AEC 01E27821 */  addu        $t7, $t7, $v0
/* 1FBA70 801E3AF0 8DEF0D50 */  lw          $t7, %lo(D_800E0D50)($t7)
/* 1FBA74 801E3AF4 3C18800E */  lui         $t8, %hi(D_800DD710)
/* 1FBA78 801E3AF8 0302C021 */  addu        $t8, $t8, $v0
/* 1FBA7C 801E3AFC 546F0010 */  bnel        $v1, $t7, L801E3B40_ovl13
/* 1FBA80 801E3B00 00602025 */   move       $a0, $v1
/* 1FBA84 801E3B04 8F18D710 */  lw          $t8, %lo(D_800DD710)($t8)
/* 1FBA88 801E3B08 3C19800F */  lui         $t9, %hi(D_800E98E0)
/* 1FBA8C 801E3B0C 0322C821 */  addu        $t9, $t9, $v0
/* 1FBA90 801E3B10 50B8000B */  beql        $a1, $t8, L801E3B40_ovl13
/* 1FBA94 801E3B14 00602025 */   move       $a0, $v1
/* 1FBA98 801E3B18 8F3998E0 */  lw          $t9, %lo(D_800E98E0)($t9)
/* 1FBA9C 801E3B1C 3C0B801E */  lui         $t3, %hi(D_801D9384)
/* 1FBAA0 801E3B20 256B9384 */  addiu       $t3, $t3, %lo(D_801D9384)
/* 1FBAA4 801E3B24 13200005 */  beqz        $t9, L801E3B3C_ovl13
/* 1FBAA8 801E3B28 3C0C8005 */   lui        $t4, %hi(D_8004A7C4)
/* 1FBAAC 801E3B2C 8D0A008C */  lw          $t2, 0x8C($t0)
/* 1FBAB0 801E3B30 AD0B008C */  sw          $t3, 0x8C($t0)
/* 1FBAB4 801E3B34 8D8CA7C4 */  lw          $t4, %lo(D_8004A7C4)($t4)
/* 1FBAB8 801E3B38 8D830000 */  lw          $v1, 0x0($t4)
glabel L801E3B3C_ovl13
/* 1FBABC 801E3B3C 00602025 */  move        $a0, $v1
glabel L801E3B40_ovl13
/* 1FBAC0 801E3B40 AFA90030 */  sw          $t1, 0x30($sp)
/* 1FBAC4 801E3B44 0C044554 */  jal         func_80111550
/* 1FBAC8 801E3B48 AFAA0028 */   sw         $t2, 0x28($sp)
/* 1FBACC 801E3B4C 3C0D8005 */  lui         $t5, %hi(D_8004A7C4)
/* 1FBAD0 801E3B50 8FA90030 */  lw          $t1, 0x30($sp)
/* 1FBAD4 801E3B54 8DADA7C4 */  lw          $t5, %lo(D_8004A7C4)($t5)
/* 1FBAD8 801E3B58 8D24008C */  lw          $a0, 0x8C($t1)
/* 1FBADC 801E3B5C 0C044722 */  jal         func_80111C88
/* 1FBAE0 801E3B60 8DA50000 */   lw         $a1, 0x0($t5)
/* 1FBAE4 801E3B64 8FA90030 */  lw          $t1, 0x30($sp)
/* 1FBAE8 801E3B68 10400013 */  beqz        $v0, L801E3BB8_ovl13
/* 1FBAEC 801E3B6C 00402025 */   move       $a0, $v0
/* 1FBAF0 801E3B70 8FA30058 */  lw          $v1, 0x58($sp)
/* 1FBAF4 801E3B74 50600004 */  beql        $v1, $zero, L801E3B88_ovl13
/* 1FBAF8 801E3B78 8FA3005C */   lw         $v1, 0x5C($sp)
/* 1FBAFC 801E3B7C 8C4E0024 */  lw          $t6, 0x24($v0)
/* 1FBB00 801E3B80 ADC30008 */  sw          $v1, 0x8($t6)
/* 1FBB04 801E3B84 8FA3005C */  lw          $v1, 0x5C($sp)
glabel L801E3B88_ovl13
/* 1FBB08 801E3B88 50600004 */  beql        $v1, $zero, L801E3B9C_ovl13
/* 1FBB0C 801E3B8C 8FA30060 */   lw         $v1, 0x60($sp)
/* 1FBB10 801E3B90 8C4F0024 */  lw          $t7, 0x24($v0)
/* 1FBB14 801E3B94 ADE30030 */  sw          $v1, 0x30($t7)
/* 1FBB18 801E3B98 8FA30060 */  lw          $v1, 0x60($sp)
glabel L801E3B9C_ovl13
/* 1FBB1C 801E3B9C 10600003 */  beqz        $v1, L801E3BAC_ovl13
/* 1FBB20 801E3BA0 00000000 */   nop
/* 1FBB24 801E3BA4 8C580024 */  lw          $t8, 0x24($v0)
/* 1FBB28 801E3BA8 AF030058 */  sw          $v1, 0x58($t8)
glabel L801E3BAC_ovl13
/* 1FBB2C 801E3BAC 0C0447B3 */  jal         func_80111ECC
/* 1FBB30 801E3BB0 AFA90030 */   sw         $t1, 0x30($sp)
/* 1FBB34 801E3BB4 8FA90030 */  lw          $t1, 0x30($sp)
glabel L801E3BB8_ovl13
/* 1FBB38 801E3BB8 27A40038 */  addiu       $a0, $sp, 0x38
/* 1FBB3C 801E3BBC 0C044054 */  jal         func_80110150
/* 1FBB40 801E3BC0 AFA90030 */   sw         $t1, 0x30($sp)
/* 1FBB44 801E3BC4 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1FBB48 801E3BC8 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 1FBB4C 801E3BCC 1040000B */  beqz        $v0, L801E3BFC_ovl13
/* 1FBB50 801E3BD0 8FA90030 */   lw         $t1, 0x30($sp)
/* 1FBB54 801E3BD4 8CCB0000 */  lw          $t3, 0x0($a2)
/* 1FBB58 801E3BD8 93B9003A */  lbu         $t9, 0x3A($sp)
/* 1FBB5C 801E3BDC 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 1FBB60 801E3BE0 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FBB64 801E3BE4 93AE003B */  lbu         $t6, 0x3B($sp)
/* 1FBB68 801E3BE8 000C6880 */  sll         $t5, $t4, 2
/* 1FBB6C 801E3BEC 002D0821 */  addu        $at, $at, $t5
/* 1FBB70 801E3BF0 AC3983E0 */  sw          $t9, %lo(D_800E83E0)($at)
/* 1FBB74 801E3BF4 10000035 */  b           L801E3CCC_ovl13
/* 1FBB78 801E3BF8 A12E0043 */   sb         $t6, 0x43($t1)
glabel L801E3BFC_ovl13
/* 1FBB7C 801E3BFC 27A40038 */  addiu       $a0, $sp, 0x38
/* 1FBB80 801E3C00 0C0442C0 */  jal         func_80110B00
/* 1FBB84 801E3C04 AFA90030 */   sw         $t1, 0x30($sp)
/* 1FBB88 801E3C08 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1FBB8C 801E3C0C 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 1FBB90 801E3C10 1040000B */  beqz        $v0, L801E3C40_ovl13
/* 1FBB94 801E3C14 8FA90030 */   lw         $t1, 0x30($sp)
/* 1FBB98 801E3C18 8CD80000 */  lw          $t8, 0x0($a2)
/* 1FBB9C 801E3C1C 93AF003A */  lbu         $t7, 0x3A($sp)
/* 1FBBA0 801E3C20 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 1FBBA4 801E3C24 8F0B0000 */  lw          $t3, 0x0($t8)
/* 1FBBA8 801E3C28 93B9003B */  lbu         $t9, 0x3B($sp)
/* 1FBBAC 801E3C2C 000B6080 */  sll         $t4, $t3, 2
/* 1FBBB0 801E3C30 002C0821 */  addu        $at, $at, $t4
/* 1FBBB4 801E3C34 AC2F83E0 */  sw          $t7, %lo(D_800E83E0)($at)
/* 1FBBB8 801E3C38 10000024 */  b           L801E3CCC_ovl13
/* 1FBBBC 801E3C3C A1390043 */   sb         $t9, 0x43($t1)
glabel L801E3C40_ovl13
/* 1FBBC0 801E3C40 27A40038 */  addiu       $a0, $sp, 0x38
/* 1FBBC4 801E3C44 0C0443F5 */  jal         func_80110FD4
/* 1FBBC8 801E3C48 AFA90030 */   sw         $t1, 0x30($sp)
/* 1FBBCC 801E3C4C 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1FBBD0 801E3C50 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 1FBBD4 801E3C54 10400016 */  beqz        $v0, L801E3CB0_ovl13
/* 1FBBD8 801E3C58 8FA90030 */   lw         $t1, 0x30($sp)
/* 1FBBDC 801E3C5C 93A2003A */  lbu         $v0, 0x3A($sp)
/* 1FBBE0 801E3C60 2401000A */  addiu       $at, $zero, 0xA
/* 1FBBE4 801E3C64 5441000A */  bnel        $v0, $at, L801E3C90_ovl13
/* 1FBBE8 801E3C68 8CCB0000 */   lw         $t3, 0x0($a2)
/* 1FBBEC 801E3C6C 8CCD0000 */  lw          $t5, 0x0($a2)
/* 1FBBF0 801E3C70 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 1FBBF4 801E3C74 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1FBBF8 801E3C78 000EC080 */  sll         $t8, $t6, 2
/* 1FBBFC 801E3C7C 00380821 */  addu        $at, $at, $t8
/* 1FBC00 801E3C80 AC2083E0 */  sw          $zero, %lo(D_800E83E0)($at)
/* 1FBC04 801E3C84 10000011 */  b           L801E3CCC_ovl13
/* 1FBC08 801E3C88 A1200043 */   sb         $zero, 0x43($t1)
/* 1FBC0C 801E3C8C 8CCB0000 */  lw          $t3, 0x0($a2)
glabel L801E3C90_ovl13
/* 1FBC10 801E3C90 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 1FBC14 801E3C94 93B9003B */  lbu         $t9, 0x3B($sp)
/* 1FBC18 801E3C98 8D6F0000 */  lw          $t7, 0x0($t3)
/* 1FBC1C 801E3C9C 000F6080 */  sll         $t4, $t7, 2
/* 1FBC20 801E3CA0 002C0821 */  addu        $at, $at, $t4
/* 1FBC24 801E3CA4 AC2283E0 */  sw          $v0, %lo(D_800E83E0)($at)
/* 1FBC28 801E3CA8 10000008 */  b           L801E3CCC_ovl13
/* 1FBC2C 801E3CAC A1390043 */   sb         $t9, 0x43($t1)
glabel L801E3CB0_ovl13
/* 1FBC30 801E3CB0 8CCD0000 */  lw          $t5, 0x0($a2)
/* 1FBC34 801E3CB4 3C01800F */  lui         $at, %hi(D_800E83E0)
/* 1FBC38 801E3CB8 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1FBC3C 801E3CBC 000EC080 */  sll         $t8, $t6, 2
/* 1FBC40 801E3CC0 00380821 */  addu        $at, $at, $t8
/* 1FBC44 801E3CC4 AC2083E0 */  sw          $zero, %lo(D_800E83E0)($at)
/* 1FBC48 801E3CC8 A1200043 */  sb          $zero, 0x43($t1)
glabel L801E3CCC_ovl13
/* 1FBC4C 801E3CCC 8CCB0000 */  lw          $t3, 0x0($a2)
/* 1FBC50 801E3CD0 3C0F800F */  lui         $t7, %hi(D_800E83E0)
/* 1FBC54 801E3CD4 24010002 */  addiu       $at, $zero, 0x2
/* 1FBC58 801E3CD8 8D670000 */  lw          $a3, 0x0($t3)
/* 1FBC5C 801E3CDC 24040002 */  addiu       $a0, $zero, 0x2
/* 1FBC60 801E3CE0 00073880 */  sll         $a3, $a3, 2
/* 1FBC64 801E3CE4 01E77821 */  addu        $t7, $t7, $a3
/* 1FBC68 801E3CE8 8DEF83E0 */  lw          $t7, %lo(D_800E83E0)($t7)
/* 1FBC6C 801E3CEC 55E10022 */  bnel        $t7, $at, L801E3D78_ovl13
/* 1FBC70 801E3CF0 8FA20028 */   lw         $v0, 0x28($sp)
/* 1FBC74 801E3CF4 0C06783A */  jal         func_8019E0E8_ovl7
/* 1FBC78 801E3CF8 24050002 */   addiu      $a1, $zero, 0x2
/* 1FBC7C 801E3CFC 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 1FBC80 801E3D00 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 1FBC84 801E3D04 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FBC88 801E3D08 3C04800F */  lui         $a0, %hi(D_800EBDA0)
/* 1FBC8C 801E3D0C 2484BDA0 */  addiu       $a0, $a0, %lo(D_800EBDA0)
/* 1FBC90 801E3D10 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1FBC94 801E3D14 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FBC98 801E3D18 000CC880 */  sll         $t9, $t4, 2
/* 1FBC9C 801E3D1C 00996821 */  addu        $t5, $a0, $t9
/* 1FBCA0 801E3D20 ADA20000 */  sw          $v0, 0x0($t5)
/* 1FBCA4 801E3D24 8C670000 */  lw          $a3, 0x0($v1)
/* 1FBCA8 801E3D28 00073880 */  sll         $a3, $a3, 2
/* 1FBCAC 801E3D2C 00877021 */  addu        $t6, $a0, $a3
/* 1FBCB0 801E3D30 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FBCB4 801E3D34 1301000F */  beq         $t8, $at, L801E3D74_ovl13
/* 1FBCB8 801E3D38 3C01800D */   lui        $at, %hi(D_800D6E5C)
/* 1FBCBC 801E3D3C C4266E5C */  lwc1        $f6, %lo(D_800D6E5C)($at)
/* 1FBCC0 801E3D40 44802000 */  mtc1        $zero, $f4
/* 1FBCC4 801E3D44 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1FBCC8 801E3D48 00270821 */  addu        $at, $at, $a3
/* 1FBCCC 801E3D4C 46062032 */  c.eq.s      $f4, $f6
/* 1FBCD0 801E3D50 00000000 */  nop
/* 1FBCD4 801E3D54 45030008 */  bc1tl       L801E3D78_ovl13
/* 1FBCD8 801E3D58 8FA20028 */   lw         $v0, 0x28($sp)
/* 1FBCDC 801E3D5C 0C02F047 */  jal         func_800BC11C
/* 1FBCE0 801E3D60 C42C7B20 */   lwc1       $f12, %lo(D_800E7B20)($at)
/* 1FBCE4 801E3D64 3C0B8005 */  lui         $t3, %hi(D_8004A7C4)
/* 1FBCE8 801E3D68 8D6BA7C4 */  lw          $t3, %lo(D_8004A7C4)($t3)
/* 1FBCEC 801E3D6C 8D670000 */  lw          $a3, 0x0($t3)
/* 1FBCF0 801E3D70 00073880 */  sll         $a3, $a3, 2
glabel L801E3D74_ovl13
/* 1FBCF4 801E3D74 8FA20028 */  lw          $v0, 0x28($sp)
glabel L801E3D78_ovl13
/* 1FBCF8 801E3D78 3C0F800E */  lui         $t7, %hi(D_800E1B50)
/* 1FBCFC 801E3D7C 01E77821 */  addu        $t7, $t7, $a3
/* 1FBD00 801E3D80 10400007 */  beqz        $v0, L801E3DA0_ovl13
/* 1FBD04 801E3D84 00000000 */   nop
/* 1FBD08 801E3D88 8DEF1B50 */  lw          $t7, %lo(D_800E1B50)($t7)
/* 1FBD0C 801E3D8C 3C0C8005 */  lui         $t4, %hi(D_8004A7C4)
/* 1FBD10 801E3D90 ADE2008C */  sw          $v0, 0x8C($t7)
/* 1FBD14 801E3D94 8D8CA7C4 */  lw          $t4, %lo(D_8004A7C4)($t4)
/* 1FBD18 801E3D98 8D870000 */  lw          $a3, 0x0($t4)
/* 1FBD1C 801E3D9C 00073880 */  sll         $a3, $a3, 2
glabel L801E3DA0_ovl13
/* 1FBD20 801E3DA0 3C02800F */  lui         $v0, %hi(D_800E83E0)
/* 1FBD24 801E3DA4 00471021 */  addu        $v0, $v0, $a3
/* 1FBD28 801E3DA8 8C4283E0 */  lw          $v0, %lo(D_800E83E0)($v0)
glabel L801E3DAC_ovl13
/* 1FBD2C 801E3DAC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FBD30 801E3DB0 27BD0058 */  addiu       $sp, $sp, 0x58
/* 1FBD34 801E3DB4 03E00008 */  jr          $ra
/* 1FBD38 801E3DB8 00000000 */   nop
/* 1FBD3C 801E3DBC 00000000 */  nop
.type func_801E3A84_ovl13, @function
.size func_801E3A84_ovl13, . - func_801E3A84_ovl13

