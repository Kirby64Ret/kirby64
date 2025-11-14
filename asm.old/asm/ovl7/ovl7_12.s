.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801B79B0
/* 15DA20 801B79B0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15DA24 801B79B4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15DA28 801B79B8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 15DA2C 801B79BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 15DA30 801B79C0 AFA40028 */  sw    $a0, 0x28($sp)
/* 15DA34 801B79C4 8C620000 */  lw    $v0, ($v1)
/* 15DA38 801B79C8 3C05800E */  lui   $a1, 0x800e
/* 15DA3C 801B79CC 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 15DA40 801B79D0 00021080 */  sll   $v0, $v0, 2
/* 15DA44 801B79D4 00A22821 */  addu  $a1, $a1, $v0
/* 15DA48 801B79D8 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15DA4C 801B79DC 44812000 */  mtc1  $at, $f4
/* 15DA50 801B79E0 3C01800F */  lui   $at, 0x800f
/* 15DA54 801B79E4 8CAE0088 */  lw    $t6, 0x88($a1)
/* 15DA58 801B79E8 00220821 */  addu  $at, $at, $v0
/* 15DA5C 801B79EC 44803000 */  mtc1  $zero, $f6
/* 15DA60 801B79F0 8DC6000C */  lw    $a2, 0xc($t6)
/* 15DA64 801B79F4 8CCF0004 */  lw    $t7, 4($a2)
/* 15DA68 801B79F8 E424C660 */  swc1  $f4, -0x39a0($at)
/* 15DA6C 801B79FC 3C01800F */  lui   $at, 0x800f
/* 15DA70 801B7A00 AFAF001C */  sw    $t7, 0x1c($sp)
/* 15DA74 801B7A04 8C780000 */  lw    $t8, ($v1)
/* 15DA78 801B7A08 AFA50024 */  sw    $a1, 0x24($sp)
/* 15DA7C 801B7A0C 0018C880 */  sll   $t9, $t8, 2
/* 15DA80 801B7A10 00390821 */  addu  $at, $at, $t9
/* 15DA84 801B7A14 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15DA88 801B7A18 E426C820 */   swc1  $f6, -0x37e0($at)
/* 15DA8C 801B7A1C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15DA90 801B7A20 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 15DA94 801B7A24 8C4A0000 */  lw    $t2, ($v0)
/* 15DA98 801B7A28 8FA50024 */  lw    $a1, 0x24($sp)
/* 15DA9C 801B7A2C 3C09801B */  lui   $t1, %hi(D_801AC908) # $t1, 0x801b
/* 15DAA0 801B7A30 8D4B0000 */  lw    $t3, ($t2)
/* 15DAA4 801B7A34 3C01800E */  lui   $at, 0x800e
/* 15DAA8 801B7A38 2529C908 */  addiu $t1, %lo(D_801AC908) # addiu $t1, $t1, -0x36f8
/* 15DAAC 801B7A3C 000B6080 */  sll   $t4, $t3, 2
/* 15DAB0 801B7A40 002C0821 */  addu  $at, $at, $t4
/* 15DAB4 801B7A44 AC29F150 */  sw    $t1, -0xeb0($at)
/* 15DAB8 801B7A48 3C0D8011 */  lui   $t5, %hi(func_8010C274) # $t5, 0x8011
/* 15DABC 801B7A4C 3C0E801D */  lui   $t6, %hi(D_801CB56C) # $t6, 0x801d
/* 15DAC0 801B7A50 25ADC274 */  addiu $t5, %lo(func_8010C274) # addiu $t5, $t5, -0x3d8c
/* 15DAC4 801B7A54 25CEB56C */  addiu $t6, %lo(D_801CB56C) # addiu $t6, $t6, -0x4a94
/* 15DAC8 801B7A58 ACAD0048 */  sw    $t5, 0x48($a1)
/* 15DACC 801B7A5C ACAE0098 */  sw    $t6, 0x98($a1)
/* 15DAD0 801B7A60 8C4F0000 */  lw    $t7, ($v0)
/* 15DAD4 801B7A64 3C01800F */  lui   $at, 0x800f
/* 15DAD8 801B7A68 8DF80000 */  lw    $t8, ($t7)
/* 15DADC 801B7A6C 0018C880 */  sll   $t9, $t8, 2
/* 15DAE0 801B7A70 00390821 */  addu  $at, $at, $t9
/* 15DAE4 801B7A74 AC208920 */  sw    $zero, -0x76e0($at)
/* 15DAE8 801B7A78 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15DAEC 801B7A7C 0C02BB30 */  jal   func_800AECC0
/* 15DAF0 801B7A80 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15DAF4 801B7A84 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15DAF8 801B7A88 0C02BB48 */  jal   func_800AED20
/* 15DAFC 801B7A8C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15DB00 801B7A90 8FAA001C */  lw    $t2, 0x1c($sp)
/* 15DB04 801B7A94 2401FFFF */  li    $at, -1
/* 15DB08 801B7A98 8D440004 */  lw    $a0, 4($t2)
/* 15DB0C 801B7A9C 50810004 */  beql  $a0, $at, .L801B7AB0_ovl7
/* 15DB10 801B7AA0 8FAB001C */   lw    $t3, 0x1c($sp)
/* 15DB14 801B7AA4 0C02A806 */  jal   func_800AA018
/* 15DB18 801B7AA8 00000000 */   nop   
/* 15DB1C 801B7AAC 8FAB001C */  lw    $t3, 0x1c($sp)
.L801B7AB0_ovl7:
/* 15DB20 801B7AB0 2401FFFF */  li    $at, -1
/* 15DB24 801B7AB4 8D640008 */  lw    $a0, 8($t3)
/* 15DB28 801B7AB8 10810003 */  beq   $a0, $at, .L801B7AC8_ovl7
/* 15DB2C 801B7ABC 00000000 */   nop   
/* 15DB30 801B7AC0 0C02A806 */  jal   func_800AA018
/* 15DB34 801B7AC4 00000000 */   nop   
.L801B7AC8_ovl7:
/* 15DB38 801B7AC8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 15DB3C 801B7ACC 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 15DB40 801B7AD0 8C890000 */  lw    $t1, ($a0)
/* 15DB44 801B7AD4 3C0E800F */  lui   $t6, 0x800f
/* 15DB48 801B7AD8 8FA80028 */  lw    $t0, 0x28($sp)
/* 15DB4C 801B7ADC 8D2C0000 */  lw    $t4, ($t1)
/* 15DB50 801B7AE0 3C01801D */  lui   $at, %hi(D_801CE360) # $at, 0x801d
/* 15DB54 801B7AE4 8D0F003C */  lw    $t7, 0x3c($t0)
/* 15DB58 801B7AE8 000C6880 */  sll   $t5, $t4, 2
/* 15DB5C 801B7AEC 01CD7021 */  addu  $t6, $t6, $t5
/* 15DB60 801B7AF0 8DCEA520 */  lw    $t6, -0x5ae0($t6)
/* 15DB64 801B7AF4 3C19800E */  lui   $t9, 0x800e
/* 15DB68 801B7AF8 3C07800E */  lui   $a3, %hi(D_800E64D0) # $a3, 0x800e
/* 15DB6C 801B7AFC AD0E0048 */  sw    $t6, 0x48($t0)
/* 15DB70 801B7B00 C428E360 */  lwc1  $f8, %lo(D_801CE360)($at)
/* 15DB74 801B7B04 8DF80010 */  lw    $t8, 0x10($t7)
/* 15DB78 801B7B08 24E764D0 */  addiu $a3, %lo(D_800E64D0) # addiu $a3, $a3, 0x64d0
/* 15DB7C 801B7B0C 44805000 */  mtc1  $zero, $f10
/* 15DB80 801B7B10 E7080030 */  swc1  $f8, 0x30($t8)
/* 15DB84 801B7B14 8C830000 */  lw    $v1, ($a0)
/* 15DB88 801B7B18 3C014060 */  li    $at, 0x40600000 # 3.500000
/* 15DB8C 801B7B1C 44818000 */  mtc1  $at, $f16
/* 15DB90 801B7B20 8C620000 */  lw    $v0, ($v1)
/* 15DB94 801B7B24 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 15DB98 801B7B28 00021080 */  sll   $v0, $v0, 2
/* 15DB9C 801B7B2C 0322C821 */  addu  $t9, $t9, $v0
/* 15DBA0 801B7B30 8F390D50 */  lw    $t9, 0xd50($t9)
/* 15DBA4 801B7B34 00195080 */  sll   $t2, $t9, 2
/* 15DBA8 801B7B38 00EA5821 */  addu  $t3, $a3, $t2
/* 15DBAC 801B7B3C C5600000 */  lwc1  $f0, ($t3)
/* 15DBB0 801B7B40 460A003C */  c.lt.s $f0, $f10
/* 15DBB4 801B7B44 00000000 */  nop   
/* 15DBB8 801B7B48 45020004 */  bc1fl .L801B7B5C_ovl7
/* 15DBBC 801B7B4C 46000086 */   mov.s $f2, $f0
/* 15DBC0 801B7B50 10000002 */  b     .L801B7B5C_ovl7
/* 15DBC4 801B7B54 46000087 */   neg.s $f2, $f0
/* 15DBC8 801B7B58 46000086 */  mov.s $f2, $f0
.L801B7B5C_ovl7:
/* 15DBCC 801B7B5C 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 15DBD0 801B7B60 46101480 */  add.s $f18, $f2, $f16
/* 15DBD4 801B7B64 00A24821 */  addu  $t1, $a1, $v0
/* 15DBD8 801B7B68 C5240000 */  lwc1  $f4, ($t1)
/* 15DBDC 801B7B6C 00E26021 */  addu  $t4, $a3, $v0
/* 15DBE0 801B7B70 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 15DBE4 801B7B74 46049182 */  mul.s $f6, $f18, $f4
/* 15DBE8 801B7B78 44815000 */  mtc1  $at, $f10
/* 15DBEC 801B7B7C 3C01800E */  lui   $at, 0x800e
/* 15DBF0 801B7B80 44802000 */  mtc1  $zero, $f4
/* 15DBF4 801B7B84 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 15DBF8 801B7B88 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 15DBFC 801B7B8C 2404003C */  li    $a0, 60
/* 15DC00 801B7B90 E5860000 */  swc1  $f6, ($t4)
/* 15DC04 801B7B94 8C620000 */  lw    $v0, ($v1)
/* 15DC08 801B7B98 00021080 */  sll   $v0, $v0, 2
/* 15DC0C 801B7B9C 00A26821 */  addu  $t5, $a1, $v0
/* 15DC10 801B7BA0 C5A80000 */  lwc1  $f8, ($t5)
/* 15DC14 801B7BA4 00220821 */  addu  $at, $at, $v0
/* 15DC18 801B7BA8 460A4402 */  mul.s $f16, $f8, $f10
/* 15DC1C 801B7BAC E4306690 */  swc1  $f16, 0x6690($at)
/* 15DC20 801B7BB0 8C6E0000 */  lw    $t6, ($v1)
/* 15DC24 801B7BB4 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15DC28 801B7BB8 44819000 */  mtc1  $at, $f18
/* 15DC2C 801B7BBC 3C01800E */  lui   $at, 0x800e
/* 15DC30 801B7BC0 000E7880 */  sll   $t7, $t6, 2
/* 15DC34 801B7BC4 002F0821 */  addu  $at, $at, $t7
/* 15DC38 801B7BC8 E4326850 */  swc1  $f18, 0x6850($at)
/* 15DC3C 801B7BCC 8C780000 */  lw    $t8, ($v1)
/* 15DC40 801B7BD0 3C01800E */  lui   $at, 0x800e
/* 15DC44 801B7BD4 0018C880 */  sll   $t9, $t8, 2
/* 15DC48 801B7BD8 00D95021 */  addu  $t2, $a2, $t9
/* 15DC4C 801B7BDC E5440000 */  swc1  $f4, ($t2)
/* 15DC50 801B7BE0 8C620000 */  lw    $v0, ($v1)
/* 15DC54 801B7BE4 00021080 */  sll   $v0, $v0, 2
/* 15DC58 801B7BE8 00C25821 */  addu  $t3, $a2, $v0
/* 15DC5C 801B7BEC C5660000 */  lwc1  $f6, ($t3)
/* 15DC60 801B7BF0 00220821 */  addu  $at, $at, $v0
/* 15DC64 801B7BF4 E4263210 */  swc1  $f6, 0x3210($at)
/* 15DC68 801B7BF8 8C690000 */  lw    $t1, ($v1)
/* 15DC6C 801B7BFC 3C01801D */  lui   $at, %hi(D_801CE364) # $at, 0x801d
/* 15DC70 801B7C00 C428E364 */  lwc1  $f8, %lo(D_801CE364)($at)
/* 15DC74 801B7C04 3C01800E */  lui   $at, 0x800e
/* 15DC78 801B7C08 00096080 */  sll   $t4, $t1, 2
/* 15DC7C 801B7C0C 002C0821 */  addu  $at, $at, $t4
/* 15DC80 801B7C10 0C002DAF */  jal   finish_current_thread
/* 15DC84 801B7C14 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 15DC88 801B7C18 0C06B0D9 */  jal   D_801AC364_ovl7
/* 15DC8C 801B7C1C 8FA40028 */   lw    $a0, 0x28($sp)
/* 15DC90 801B7C20 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15DC94 801B7C24 27BD0028 */  addiu $sp, $sp, 0x28
/* 15DC98 801B7C28 03E00008 */  jr    $ra
/* 15DC9C 801B7C2C 00000000 */   nop   
.size func_801B79B0, . - func_801B79B0

glabel func_801B7C30_ovl7
/* 15DCA0 801B7C30 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15DCA4 801B7C34 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15DCA8 801B7C38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15DCAC 801B7C3C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15DCB0 801B7C40 AFA40020 */  sw    $a0, 0x20($sp)
/* 15DCB4 801B7C44 8C620000 */  lw    $v0, ($v1)
/* 15DCB8 801B7C48 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 15DCBC 801B7C4C 44812000 */  mtc1  $at, $f4
/* 15DCC0 801B7C50 3C01800F */  lui   $at, 0x800f
/* 15DCC4 801B7C54 00021080 */  sll   $v0, $v0, 2
/* 15DCC8 801B7C58 00220821 */  addu  $at, $at, $v0
/* 15DCCC 801B7C5C E424C660 */  swc1  $f4, -0x39a0($at)
/* 15DCD0 801B7C60 8C6E0000 */  lw    $t6, ($v1)
/* 15DCD4 801B7C64 3C05800E */  lui   $a1, 0x800e
/* 15DCD8 801B7C68 00A22821 */  addu  $a1, $a1, $v0
/* 15DCDC 801B7C6C 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15DCE0 801B7C70 44803000 */  mtc1  $zero, $f6
/* 15DCE4 801B7C74 3C01800F */  lui   $at, 0x800f
/* 15DCE8 801B7C78 000E7880 */  sll   $t7, $t6, 2
/* 15DCEC 801B7C7C 002F0821 */  addu  $at, $at, $t7
/* 15DCF0 801B7C80 AFA5001C */  sw    $a1, 0x1c($sp)
/* 15DCF4 801B7C84 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15DCF8 801B7C88 E426C820 */   swc1  $f6, -0x37e0($at)
/* 15DCFC 801B7C8C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15DD00 801B7C90 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 15DD04 801B7C94 8C590000 */  lw    $t9, ($v0)
/* 15DD08 801B7C98 8FA5001C */  lw    $a1, 0x1c($sp)
/* 15DD0C 801B7C9C 3C18801B */  lui   $t8, %hi(D_801B7E80) # $t8, 0x801b
/* 15DD10 801B7CA0 8F280000 */  lw    $t0, ($t9)
/* 15DD14 801B7CA4 3C01800E */  lui   $at, 0x800e
/* 15DD18 801B7CA8 27187E80 */  addiu $t8, %lo(D_801B7E80) # addiu $t8, $t8, 0x7e80
/* 15DD1C 801B7CAC 00084880 */  sll   $t1, $t0, 2
/* 15DD20 801B7CB0 00290821 */  addu  $at, $at, $t1
/* 15DD24 801B7CB4 AC38F150 */  sw    $t8, -0xeb0($at)
/* 15DD28 801B7CB8 3C0A8011 */  lui   $t2, %hi(func_8010C274) # $t2, 0x8011
/* 15DD2C 801B7CBC 3C0B801D */  lui   $t3, %hi(D_801CB56C) # $t3, 0x801d
/* 15DD30 801B7CC0 254AC274 */  addiu $t2, %lo(func_8010C274) # addiu $t2, $t2, -0x3d8c
/* 15DD34 801B7CC4 256BB56C */  addiu $t3, %lo(D_801CB56C) # addiu $t3, $t3, -0x4a94
/* 15DD38 801B7CC8 ACAA0048 */  sw    $t2, 0x48($a1)
/* 15DD3C 801B7CCC ACAB0098 */  sw    $t3, 0x98($a1)
/* 15DD40 801B7CD0 8C4C0000 */  lw    $t4, ($v0)
/* 15DD44 801B7CD4 3C01800F */  lui   $at, 0x800f
/* 15DD48 801B7CD8 8D8D0000 */  lw    $t5, ($t4)
/* 15DD4C 801B7CDC 000D7080 */  sll   $t6, $t5, 2
/* 15DD50 801B7CE0 002E0821 */  addu  $at, $at, $t6
/* 15DD54 801B7CE4 AC208920 */  sw    $zero, -0x76e0($at)
/* 15DD58 801B7CE8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15DD5C 801B7CEC 0C02BB30 */  jal   func_800AECC0
/* 15DD60 801B7CF0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15DD64 801B7CF4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15DD68 801B7CF8 0C02BB48 */  jal   func_800AED20
/* 15DD6C 801B7CFC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15DD70 801B7D00 3C040001 */  lui   $a0, (0x000100EF >> 16) # lui $a0, 1
/* 15DD74 801B7D04 0C02A806 */  jal   func_800AA018
/* 15DD78 801B7D08 348400EF */   ori   $a0, (0x000100EF & 0xFFFF) # ori $a0, $a0, 0xef
/* 15DD7C 801B7D0C 8FAF0020 */  lw    $t7, 0x20($sp)
/* 15DD80 801B7D10 44801000 */  mtc1  $zero, $f2
/* 15DD84 801B7D14 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15DD88 801B7D18 8DF9003C */  lw    $t9, 0x3c($t7)
/* 15DD8C 801B7D1C 3C18800E */  lui   $t8, 0x800e
/* 15DD90 801B7D20 3C0A800F */  lui   $t2, 0x800f
/* 15DD94 801B7D24 8F280010 */  lw    $t0, 0x10($t9)
/* 15DD98 801B7D28 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 15DD9C 801B7D2C 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 15DDA0 801B7D30 E5020030 */  swc1  $f2, 0x30($t0)
/* 15DDA4 801B7D34 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15DDA8 801B7D38 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15DDAC 801B7D3C 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 15DDB0 801B7D40 8C620000 */  lw    $v0, ($v1)
/* 15DDB4 801B7D44 00021080 */  sll   $v0, $v0, 2
/* 15DDB8 801B7D48 0302C021 */  addu  $t8, $t8, $v0
/* 15DDBC 801B7D4C 8F180D50 */  lw    $t8, 0xd50($t8)
/* 15DDC0 801B7D50 0082C821 */  addu  $t9, $a0, $v0
/* 15DDC4 801B7D54 00184880 */  sll   $t1, $t8, 2
/* 15DDC8 801B7D58 01495021 */  addu  $t2, $t2, $t1
/* 15DDCC 801B7D5C 8D4A8AE0 */  lw    $t2, -0x7520($t2)
/* 15DDD0 801B7D60 314B0006 */  andi  $t3, $t2, 6
/* 15DDD4 801B7D64 5160001A */  beql  $t3, $zero, .L801B7DD0_ovl7
/* 15DDD8 801B7D68 44810000 */   mtc1  $at, $f0
/* 15DDDC 801B7D6C 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 15DDE0 801B7D70 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 15DDE4 801B7D74 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 15DDE8 801B7D78 00826021 */  addu  $t4, $a0, $v0
/* 15DDEC 801B7D7C 44810000 */  mtc1  $at, $f0
/* 15DDF0 801B7D80 C5880000 */  lwc1  $f8, ($t4)
/* 15DDF4 801B7D84 3C01800E */  lui   $at, 0x800e
/* 15DDF8 801B7D88 00220821 */  addu  $at, $at, $v0
/* 15DDFC 801B7D8C 46004282 */  mul.s $f10, $f8, $f0
/* 15DE00 801B7D90 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 15DE04 801B7D94 8C620000 */  lw    $v0, ($v1)
/* 15DE08 801B7D98 3C01800E */  lui   $at, 0x800e
/* 15DE0C 801B7D9C 00021080 */  sll   $v0, $v0, 2
/* 15DE10 801B7DA0 00826821 */  addu  $t5, $a0, $v0
/* 15DE14 801B7DA4 C5B00000 */  lwc1  $f16, ($t5)
/* 15DE18 801B7DA8 00220821 */  addu  $at, $at, $v0
/* 15DE1C 801B7DAC 46028482 */  mul.s $f18, $f16, $f2
/* 15DE20 801B7DB0 E4326690 */  swc1  $f18, 0x6690($at)
/* 15DE24 801B7DB4 8C6E0000 */  lw    $t6, ($v1)
/* 15DE28 801B7DB8 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 15DE2C 801B7DBC 000E7880 */  sll   $t7, $t6, 2
/* 15DE30 801B7DC0 002F0821 */  addu  $at, $at, $t7
/* 15DE34 801B7DC4 10000012 */  b     .L801B7E10_ovl7
/* 15DE38 801B7DC8 E4206850 */   swc1  $f0, 0x6850($at)
/* 15DE3C 801B7DCC 44810000 */  mtc1  $at, $f0
.L801B7DD0_ovl7:
/* 15DE40 801B7DD0 C7240000 */  lwc1  $f4, ($t9)
/* 15DE44 801B7DD4 3C01800E */  lui   $at, 0x800e
/* 15DE48 801B7DD8 00220821 */  addu  $at, $at, $v0
/* 15DE4C 801B7DDC 46002182 */  mul.s $f6, $f4, $f0
/* 15DE50 801B7DE0 44804000 */  mtc1  $zero, $f8
/* 15DE54 801B7DE4 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 15DE58 801B7DE8 8C680000 */  lw    $t0, ($v1)
/* 15DE5C 801B7DEC 3C01800E */  lui   $at, 0x800e
/* 15DE60 801B7DF0 0008C080 */  sll   $t8, $t0, 2
/* 15DE64 801B7DF4 00380821 */  addu  $at, $at, $t8
/* 15DE68 801B7DF8 E4286690 */  swc1  $f8, 0x6690($at)
/* 15DE6C 801B7DFC 8C690000 */  lw    $t1, ($v1)
/* 15DE70 801B7E00 3C01800E */  lui   $at, 0x800e
/* 15DE74 801B7E04 00095080 */  sll   $t2, $t1, 2
/* 15DE78 801B7E08 002A0821 */  addu  $at, $at, $t2
/* 15DE7C 801B7E0C E4206850 */  swc1  $f0, 0x6850($at)
.L801B7E10_ovl7:
/* 15DE80 801B7E10 8C6B0000 */  lw    $t3, ($v1)
/* 15DE84 801B7E14 44805000 */  mtc1  $zero, $f10
/* 15DE88 801B7E18 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 15DE8C 801B7E1C 000B6080 */  sll   $t4, $t3, 2
/* 15DE90 801B7E20 00AC6821 */  addu  $t5, $a1, $t4
/* 15DE94 801B7E24 E5AA0000 */  swc1  $f10, ($t5)
/* 15DE98 801B7E28 8C620000 */  lw    $v0, ($v1)
/* 15DE9C 801B7E2C 3C01800E */  lui   $at, 0x800e
/* 15DEA0 801B7E30 2404003C */  li    $a0, 60
/* 15DEA4 801B7E34 00021080 */  sll   $v0, $v0, 2
/* 15DEA8 801B7E38 00A27021 */  addu  $t6, $a1, $v0
/* 15DEAC 801B7E3C C5D00000 */  lwc1  $f16, ($t6)
/* 15DEB0 801B7E40 00220821 */  addu  $at, $at, $v0
/* 15DEB4 801B7E44 E4303210 */  swc1  $f16, 0x3210($at)
/* 15DEB8 801B7E48 8C6F0000 */  lw    $t7, ($v1)
/* 15DEBC 801B7E4C 3C01801D */  lui   $at, %hi(D_801CE368) # $at, 0x801d
/* 15DEC0 801B7E50 C432E368 */  lwc1  $f18, %lo(D_801CE368)($at)
/* 15DEC4 801B7E54 3C01800E */  lui   $at, 0x800e
/* 15DEC8 801B7E58 000FC880 */  sll   $t9, $t7, 2
/* 15DECC 801B7E5C 00390821 */  addu  $at, $at, $t9
/* 15DED0 801B7E60 0C002DAF */  jal   finish_current_thread
/* 15DED4 801B7E64 E4323C90 */   swc1  $f18, 0x3c90($at)
/* 15DED8 801B7E68 0C06B0D9 */  jal   D_801AC364_ovl7
/* 15DEDC 801B7E6C 8FA40020 */   lw    $a0, 0x20($sp)
/* 15DEE0 801B7E70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15DEE4 801B7E74 27BD0020 */  addiu $sp, $sp, 0x20
/* 15DEE8 801B7E78 03E00008 */  jr    $ra
/* 15DEEC 801B7E7C 00000000 */   nop   
.size func_801B7C30_ovl7, . - func_801B7C30_ovl7

glabel func_801B7E80_ovl7
/* 15DEF0 801B7E80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15DEF4 801B7E84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15DEF8 801B7E88 0C06E890 */  jal   func_801BA240_ovl7
/* 15DEFC 801B7E8C AFA40018 */   sw    $a0, 0x18($sp)
/* 15DF00 801B7E90 0C06B242 */  jal   D_801AC908_ovl7
/* 15DF04 801B7E94 8FA40018 */   lw    $a0, 0x18($sp)
/* 15DF08 801B7E98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15DF0C 801B7E9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15DF10 801B7EA0 03E00008 */  jr    $ra
/* 15DF14 801B7EA4 00000000 */   nop   
.size func_801B7E80_ovl7, . - func_801B7E80_ovl7

glabel func_801B7EA8_ovl7
/* 15DF18 801B7EA8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15DF1C 801B7EAC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15DF20 801B7EB0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15DF24 801B7EB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15DF28 801B7EB8 AFA40020 */  sw    $a0, 0x20($sp)
/* 15DF2C 801B7EBC 8C430000 */  lw    $v1, ($v0)
/* 15DF30 801B7EC0 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 15DF34 801B7EC4 44812000 */  mtc1  $at, $f4
/* 15DF38 801B7EC8 3C01800F */  lui   $at, 0x800f
/* 15DF3C 801B7ECC 00031880 */  sll   $v1, $v1, 2
/* 15DF40 801B7ED0 00230821 */  addu  $at, $at, $v1
/* 15DF44 801B7ED4 E424C660 */  swc1  $f4, -0x39a0($at)
/* 15DF48 801B7ED8 8C4E0000 */  lw    $t6, ($v0)
/* 15DF4C 801B7EDC 3C05800E */  lui   $a1, 0x800e
/* 15DF50 801B7EE0 00A32821 */  addu  $a1, $a1, $v1
/* 15DF54 801B7EE4 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15DF58 801B7EE8 44803000 */  mtc1  $zero, $f6
/* 15DF5C 801B7EEC 3C01800F */  lui   $at, 0x800f
/* 15DF60 801B7EF0 000E7880 */  sll   $t7, $t6, 2
/* 15DF64 801B7EF4 002F0821 */  addu  $at, $at, $t7
/* 15DF68 801B7EF8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 15DF6C 801B7EFC 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15DF70 801B7F00 E426C820 */   swc1  $f6, -0x37e0($at)
/* 15DF74 801B7F04 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15DF78 801B7F08 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 15DF7C 801B7F0C 8C590000 */  lw    $t9, ($v0)
/* 15DF80 801B7F10 8FA5001C */  lw    $a1, 0x1c($sp)
/* 15DF84 801B7F14 3C18801C */  lui   $t8, %hi(D_801B8068) # $t8, 0x801c
/* 15DF88 801B7F18 8F280000 */  lw    $t0, ($t9)
/* 15DF8C 801B7F1C 3C01800E */  lui   $at, 0x800e
/* 15DF90 801B7F20 27188068 */  addiu $t8, %lo(D_801B8068) # addiu $t8, $t8, -0x7f98
/* 15DF94 801B7F24 00084880 */  sll   $t1, $t0, 2
/* 15DF98 801B7F28 00290821 */  addu  $at, $at, $t1
/* 15DF9C 801B7F2C AC38F150 */  sw    $t8, -0xeb0($at)
/* 15DFA0 801B7F30 3C0A8011 */  lui   $t2, %hi(func_8010C274) # $t2, 0x8011
/* 15DFA4 801B7F34 3C0B801D */  lui   $t3, %hi(D_801CB56C) # $t3, 0x801d
/* 15DFA8 801B7F38 254AC274 */  addiu $t2, %lo(func_8010C274) # addiu $t2, $t2, -0x3d8c
/* 15DFAC 801B7F3C 256BB56C */  addiu $t3, %lo(D_801CB56C) # addiu $t3, $t3, -0x4a94
/* 15DFB0 801B7F40 ACAA0048 */  sw    $t2, 0x48($a1)
/* 15DFB4 801B7F44 ACAB0098 */  sw    $t3, 0x98($a1)
/* 15DFB8 801B7F48 8C4C0000 */  lw    $t4, ($v0)
/* 15DFBC 801B7F4C 3C01800F */  lui   $at, 0x800f
/* 15DFC0 801B7F50 8D8D0000 */  lw    $t5, ($t4)
/* 15DFC4 801B7F54 000D7080 */  sll   $t6, $t5, 2
/* 15DFC8 801B7F58 002E0821 */  addu  $at, $at, $t6
/* 15DFCC 801B7F5C AC208920 */  sw    $zero, -0x76e0($at)
/* 15DFD0 801B7F60 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15DFD4 801B7F64 0C02BB30 */  jal   func_800AECC0
/* 15DFD8 801B7F68 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15DFDC 801B7F6C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15DFE0 801B7F70 0C02BB48 */  jal   func_800AED20
/* 15DFE4 801B7F74 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15DFE8 801B7F78 3C040001 */  lui   $a0, (0x000100F2 >> 16) # lui $a0, 1
/* 15DFEC 801B7F7C 0C02A806 */  jal   func_800AA018
/* 15DFF0 801B7F80 348400F2 */   ori   $a0, (0x000100F2 & 0xFFFF) # ori $a0, $a0, 0xf2
/* 15DFF4 801B7F84 8FAF0020 */  lw    $t7, 0x20($sp)
/* 15DFF8 801B7F88 44804000 */  mtc1  $zero, $f8
/* 15DFFC 801B7F8C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E000 801B7F90 8DF9003C */  lw    $t9, 0x3c($t7)
/* 15E004 801B7F94 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15E008 801B7F98 44810000 */  mtc1  $at, $f0
/* 15E00C 801B7F9C 8F280010 */  lw    $t0, 0x10($t9)
/* 15E010 801B7FA0 3C01800E */  lui   $at, 0x800e
/* 15E014 801B7FA4 44801000 */  mtc1  $zero, $f2
/* 15E018 801B7FA8 E5080030 */  swc1  $f8, 0x30($t0)
/* 15E01C 801B7FAC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15E020 801B7FB0 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 15E024 801B7FB4 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 15E028 801B7FB8 8C430000 */  lw    $v1, ($v0)
/* 15E02C 801B7FBC 2404003C */  li    $a0, 60
/* 15E030 801B7FC0 00031880 */  sll   $v1, $v1, 2
/* 15E034 801B7FC4 00230821 */  addu  $at, $at, $v1
/* 15E038 801B7FC8 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 15E03C 801B7FCC 3C01800E */  lui   $at, 0x800e
/* 15E040 801B7FD0 00230821 */  addu  $at, $at, $v1
/* 15E044 801B7FD4 46005402 */  mul.s $f16, $f10, $f0
/* 15E048 801B7FD8 E43064D0 */  swc1  $f16, 0x64d0($at)
/* 15E04C 801B7FDC 8C580000 */  lw    $t8, ($v0)
/* 15E050 801B7FE0 3C01800E */  lui   $at, 0x800e
/* 15E054 801B7FE4 00184880 */  sll   $t1, $t8, 2
/* 15E058 801B7FE8 00290821 */  addu  $at, $at, $t1
/* 15E05C 801B7FEC E4226690 */  swc1  $f2, 0x6690($at)
/* 15E060 801B7FF0 8C4A0000 */  lw    $t2, ($v0)
/* 15E064 801B7FF4 3C01800E */  lui   $at, 0x800e
/* 15E068 801B7FF8 000A5880 */  sll   $t3, $t2, 2
/* 15E06C 801B7FFC 002B0821 */  addu  $at, $at, $t3
/* 15E070 801B8000 E4206850 */  swc1  $f0, 0x6850($at)
/* 15E074 801B8004 8C4C0000 */  lw    $t4, ($v0)
/* 15E078 801B8008 3C01800E */  lui   $at, 0x800e
/* 15E07C 801B800C 000C6880 */  sll   $t5, $t4, 2
/* 15E080 801B8010 00AD7021 */  addu  $t6, $a1, $t5
/* 15E084 801B8014 E5C20000 */  swc1  $f2, ($t6)
/* 15E088 801B8018 8C430000 */  lw    $v1, ($v0)
/* 15E08C 801B801C 00031880 */  sll   $v1, $v1, 2
/* 15E090 801B8020 00A37821 */  addu  $t7, $a1, $v1
/* 15E094 801B8024 C5F20000 */  lwc1  $f18, ($t7)
/* 15E098 801B8028 00230821 */  addu  $at, $at, $v1
/* 15E09C 801B802C E4323210 */  swc1  $f18, 0x3210($at)
/* 15E0A0 801B8030 8C590000 */  lw    $t9, ($v0)
/* 15E0A4 801B8034 3C01801D */  lui   $at, %hi(D_801CE36C) # $at, 0x801d
/* 15E0A8 801B8038 C424E36C */  lwc1  $f4, %lo(D_801CE36C)($at)
/* 15E0AC 801B803C 3C01800E */  lui   $at, 0x800e
/* 15E0B0 801B8040 00194080 */  sll   $t0, $t9, 2
/* 15E0B4 801B8044 00280821 */  addu  $at, $at, $t0
/* 15E0B8 801B8048 0C002DAF */  jal   finish_current_thread
/* 15E0BC 801B804C E4243C90 */   swc1  $f4, 0x3c90($at)
/* 15E0C0 801B8050 0C06B0D9 */  jal   D_801AC364_ovl7
/* 15E0C4 801B8054 8FA40020 */   lw    $a0, 0x20($sp)
/* 15E0C8 801B8058 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15E0CC 801B805C 27BD0020 */  addiu $sp, $sp, 0x20
/* 15E0D0 801B8060 03E00008 */  jr    $ra
/* 15E0D4 801B8064 00000000 */   nop   
.size func_801B7EA8_ovl7, . - func_801B7EA8_ovl7

glabel func_801B8068_ovl7
/* 15E0D8 801B8068 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15E0DC 801B806C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E0E0 801B8070 0C083F1A */  jal   func_8020FC68_ovl7
/* 15E0E4 801B8074 AFA40018 */   sw    $a0, 0x18($sp)
/* 15E0E8 801B8078 0C06B242 */  jal   D_801AC908_ovl7
/* 15E0EC 801B807C 8FA40018 */   lw    $a0, 0x18($sp)
/* 15E0F0 801B8080 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15E0F4 801B8084 27BD0018 */  addiu $sp, $sp, 0x18
/* 15E0F8 801B8088 03E00008 */  jr    $ra
/* 15E0FC 801B808C 00000000 */   nop   
.size func_801B8068_ovl7, . - func_801B8068_ovl7

glabel func_801B8090_ovl7
/* 15E100 801B8090 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E104 801B8094 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15E108 801B8098 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15E10C 801B809C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E110 801B80A0 AFA40020 */  sw    $a0, 0x20($sp)
/* 15E114 801B80A4 8C430000 */  lw    $v1, ($v0)
/* 15E118 801B80A8 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 15E11C 801B80AC 44812000 */  mtc1  $at, $f4
/* 15E120 801B80B0 3C01800F */  lui   $at, 0x800f
/* 15E124 801B80B4 00031880 */  sll   $v1, $v1, 2
/* 15E128 801B80B8 00230821 */  addu  $at, $at, $v1
/* 15E12C 801B80BC E424C660 */  swc1  $f4, -0x39a0($at)
/* 15E130 801B80C0 8C4E0000 */  lw    $t6, ($v0)
/* 15E134 801B80C4 3C05800E */  lui   $a1, 0x800e
/* 15E138 801B80C8 00A32821 */  addu  $a1, $a1, $v1
/* 15E13C 801B80CC 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15E140 801B80D0 44803000 */  mtc1  $zero, $f6
/* 15E144 801B80D4 3C01800F */  lui   $at, 0x800f
/* 15E148 801B80D8 000E7880 */  sll   $t7, $t6, 2
/* 15E14C 801B80DC 002F0821 */  addu  $at, $at, $t7
/* 15E150 801B80E0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 15E154 801B80E4 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15E158 801B80E8 E426C820 */   swc1  $f6, -0x37e0($at)
/* 15E15C 801B80EC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E160 801B80F0 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 15E164 801B80F4 8C590000 */  lw    $t9, ($v0)
/* 15E168 801B80F8 8FA5001C */  lw    $a1, 0x1c($sp)
/* 15E16C 801B80FC 3C18801C */  lui   $t8, %hi(D_801B8238) # $t8, 0x801c
/* 15E170 801B8100 8F280000 */  lw    $t0, ($t9)
/* 15E174 801B8104 3C01800E */  lui   $at, 0x800e
/* 15E178 801B8108 27188238 */  addiu $t8, %lo(D_801B8238) # addiu $t8, $t8, -0x7dc8
/* 15E17C 801B810C 00084880 */  sll   $t1, $t0, 2
/* 15E180 801B8110 00290821 */  addu  $at, $at, $t1
/* 15E184 801B8114 AC38F150 */  sw    $t8, -0xeb0($at)
/* 15E188 801B8118 3C0A8011 */  lui   $t2, %hi(func_8010C274) # $t2, 0x8011
/* 15E18C 801B811C 3C0B801D */  lui   $t3, %hi(D_801CB4DC) # $t3, 0x801d
/* 15E190 801B8120 254AC274 */  addiu $t2, %lo(func_8010C274) # addiu $t2, $t2, -0x3d8c
/* 15E194 801B8124 256BB4DC */  addiu $t3, %lo(D_801CB4DC) # addiu $t3, $t3, -0x4b24
/* 15E198 801B8128 ACAA0048 */  sw    $t2, 0x48($a1)
/* 15E19C 801B812C ACAB0098 */  sw    $t3, 0x98($a1)
/* 15E1A0 801B8130 8C4C0000 */  lw    $t4, ($v0)
/* 15E1A4 801B8134 3C01800F */  lui   $at, 0x800f
/* 15E1A8 801B8138 8D8D0000 */  lw    $t5, ($t4)
/* 15E1AC 801B813C 000D7080 */  sll   $t6, $t5, 2
/* 15E1B0 801B8140 002E0821 */  addu  $at, $at, $t6
/* 15E1B4 801B8144 AC208920 */  sw    $zero, -0x76e0($at)
/* 15E1B8 801B8148 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15E1BC 801B814C 0C02BB30 */  jal   func_800AECC0
/* 15E1C0 801B8150 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15E1C4 801B8154 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15E1C8 801B8158 0C02BB48 */  jal   func_800AED20
/* 15E1CC 801B815C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15E1D0 801B8160 3C040001 */  lui   $a0, (0x00010161 >> 16) # lui $a0, 1
/* 15E1D4 801B8164 0C02A806 */  jal   func_800AA018
/* 15E1D8 801B8168 34840161 */   ori   $a0, (0x00010161 & 0xFFFF) # ori $a0, $a0, 0x161
/* 15E1DC 801B816C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E1E0 801B8170 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15E1E4 801B8174 44800000 */  mtc1  $zero, $f0
/* 15E1E8 801B8178 3C01800E */  lui   $at, 0x800e
/* 15E1EC 801B817C 8C4F0000 */  lw    $t7, ($v0)
/* 15E1F0 801B8180 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 15E1F4 801B8184 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 15E1F8 801B8188 000FC880 */  sll   $t9, $t7, 2
/* 15E1FC 801B818C 00390821 */  addu  $at, $at, $t9
/* 15E200 801B8190 E42064D0 */  swc1  $f0, 0x64d0($at)
/* 15E204 801B8194 8C430000 */  lw    $v1, ($v0)
/* 15E208 801B8198 3C01800E */  lui   $at, 0x800e
/* 15E20C 801B819C 2404003C */  li    $a0, 60
/* 15E210 801B81A0 00031880 */  sll   $v1, $v1, 2
/* 15E214 801B81A4 00230821 */  addu  $at, $at, $v1
/* 15E218 801B81A8 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 15E21C 801B81AC 3C01800E */  lui   $at, 0x800e
/* 15E220 801B81B0 00230821 */  addu  $at, $at, $v1
/* 15E224 801B81B4 E4286690 */  swc1  $f8, 0x6690($at)
/* 15E228 801B81B8 8C480000 */  lw    $t0, ($v0)
/* 15E22C 801B81BC 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15E230 801B81C0 44815000 */  mtc1  $at, $f10
/* 15E234 801B81C4 3C01800E */  lui   $at, 0x800e
/* 15E238 801B81C8 0008C080 */  sll   $t8, $t0, 2
/* 15E23C 801B81CC 00380821 */  addu  $at, $at, $t8
/* 15E240 801B81D0 E42A6850 */  swc1  $f10, 0x6850($at)
/* 15E244 801B81D4 8C490000 */  lw    $t1, ($v0)
/* 15E248 801B81D8 3C01800E */  lui   $at, 0x800e
/* 15E24C 801B81DC 00095080 */  sll   $t2, $t1, 2
/* 15E250 801B81E0 00AA5821 */  addu  $t3, $a1, $t2
/* 15E254 801B81E4 E5600000 */  swc1  $f0, ($t3)
/* 15E258 801B81E8 8C430000 */  lw    $v1, ($v0)
/* 15E25C 801B81EC 00031880 */  sll   $v1, $v1, 2
/* 15E260 801B81F0 00A36021 */  addu  $t4, $a1, $v1
/* 15E264 801B81F4 C5900000 */  lwc1  $f16, ($t4)
/* 15E268 801B81F8 00230821 */  addu  $at, $at, $v1
/* 15E26C 801B81FC E4303210 */  swc1  $f16, 0x3210($at)
/* 15E270 801B8200 8C4D0000 */  lw    $t5, ($v0)
/* 15E274 801B8204 3C01801D */  lui   $at, %hi(D_801CE370) # $at, 0x801d
/* 15E278 801B8208 C432E370 */  lwc1  $f18, %lo(D_801CE370)($at)
/* 15E27C 801B820C 3C01800E */  lui   $at, 0x800e
/* 15E280 801B8210 000D7080 */  sll   $t6, $t5, 2
/* 15E284 801B8214 002E0821 */  addu  $at, $at, $t6
/* 15E288 801B8218 0C002DAF */  jal   finish_current_thread
/* 15E28C 801B821C E4323C90 */   swc1  $f18, 0x3c90($at)
/* 15E290 801B8220 0C06B047 */  jal   func_801AC11C_ovl7
/* 15E294 801B8224 8FA40020 */   lw    $a0, 0x20($sp)
/* 15E298 801B8228 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15E29C 801B822C 27BD0020 */  addiu $sp, $sp, 0x20
/* 15E2A0 801B8230 03E00008 */  jr    $ra
/* 15E2A4 801B8234 00000000 */   nop   
.size func_801B8090_ovl7, . - func_801B8090_ovl7

glabel func_801B8238_ovl7
/* 15E2A8 801B8238 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15E2AC 801B823C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15E2B0 801B8240 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15E2B4 801B8244 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E2B8 801B8248 8DC20000 */  lw    $v0, ($t6)
/* 15E2BC 801B824C 3C03800F */  lui   $v1, 0x800f
/* 15E2C0 801B8250 24010012 */  li    $at, 18
/* 15E2C4 801B8254 00021080 */  sll   $v0, $v0, 2
/* 15E2C8 801B8258 00621821 */  addu  $v1, $v1, $v0
/* 15E2CC 801B825C 8C6383E0 */  lw    $v1, -0x7c20($v1)
/* 15E2D0 801B8260 10600012 */  beqz  $v1, .L801B82AC_ovl7
/* 15E2D4 801B8264 00000000 */   nop   
/* 15E2D8 801B8268 14610009 */  bne   $v1, $at, .L801B8290_ovl7
/* 15E2DC 801B826C 3C04800E */   lui   $a0, 0x800e
/* 15E2E0 801B8270 3C04800E */  lui   $a0, 0x800e
/* 15E2E4 801B8274 00822021 */  addu  $a0, $a0, $v0
/* 15E2E8 801B8278 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 15E2EC 801B827C 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 15E2F0 801B8280 0C02C7B2 */  jal   assign_new_process_entry
/* 15E2F4 801B8284 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15E2F8 801B8288 1000001A */  b     .L801B82F4_ovl7
/* 15E2FC 801B828C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801B8290_ovl7:
/* 15E300 801B8290 00822021 */  addu  $a0, $a0, $v0
/* 15E304 801B8294 3C05801B */  lui   $a1, %hi(func_801AC11C) # $a1, 0x801b
/* 15E308 801B8298 24A5C11C */  addiu $a1, %lo(func_801AC11C) # addiu $a1, $a1, -0x3ee4
/* 15E30C 801B829C 0C02C7B2 */  jal   assign_new_process_entry
/* 15E310 801B82A0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15E314 801B82A4 10000013 */  b     .L801B82F4_ovl7
/* 15E318 801B82A8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801B82AC_ovl7:
/* 15E31C 801B82AC 0C06835D */  jal   func_801A0D74_ovl7
/* 15E320 801B82B0 00000000 */   nop   
/* 15E324 801B82B4 10400006 */  beqz  $v0, .L801B82D0_ovl7
/* 15E328 801B82B8 3C04801D */   lui   $a0, %hi(D_801CB044) # $a0, 0x801d
/* 15E32C 801B82BC 0C068E4E */  jal   func_801A3938_ovl7
/* 15E330 801B82C0 2484B044 */   addiu $a0, %lo(D_801CB044) # addiu $a0, $a0, -0x4fbc
/* 15E334 801B82C4 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 15E338 801B82C8 0C068DB3 */  jal   func_801A36CC_ovl7
/* 15E33C 801B82CC 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801B82D0_ovl7:
/* 15E340 801B82D0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 15E344 801B82D4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 15E348 801B82D8 3C04801D */  lui   $a0, %hi(D_801CA7BC) # $a0, 0x801d
/* 15E34C 801B82DC 2484A7BC */  addiu $a0, %lo(D_801CA7BC) # addiu $a0, $a0, -0x5844
/* 15E350 801B82E0 0C0445EF */  jal   func_801117BC
/* 15E354 801B82E4 8DE50000 */   lw    $a1, ($t7)
/* 15E358 801B82E8 0C044713 */  jal   func_80111C4C
/* 15E35C 801B82EC 00402025 */   move  $a0, $v0
/* 15E360 801B82F0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B82F4_ovl7:
/* 15E364 801B82F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 15E368 801B82F8 03E00008 */  jr    $ra
/* 15E36C 801B82FC 00000000 */   nop   
.size func_801B8238_ovl7, . - func_801B8238_ovl7

glabel func_801B8300_ovl7
/* 15E370 801B8300 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E374 801B8304 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15E378 801B8308 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15E37C 801B830C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E380 801B8310 AFA40020 */  sw    $a0, 0x20($sp)
/* 15E384 801B8314 8C430000 */  lw    $v1, ($v0)
/* 15E388 801B8318 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 15E38C 801B831C 44812000 */  mtc1  $at, $f4
/* 15E390 801B8320 3C01800F */  lui   $at, 0x800f
/* 15E394 801B8324 00031880 */  sll   $v1, $v1, 2
/* 15E398 801B8328 00230821 */  addu  $at, $at, $v1
/* 15E39C 801B832C E424C660 */  swc1  $f4, -0x39a0($at)
/* 15E3A0 801B8330 8C4E0000 */  lw    $t6, ($v0)
/* 15E3A4 801B8334 3C05800E */  lui   $a1, 0x800e
/* 15E3A8 801B8338 00A32821 */  addu  $a1, $a1, $v1
/* 15E3AC 801B833C 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15E3B0 801B8340 44803000 */  mtc1  $zero, $f6
/* 15E3B4 801B8344 3C01800F */  lui   $at, 0x800f
/* 15E3B8 801B8348 000E7880 */  sll   $t7, $t6, 2
/* 15E3BC 801B834C 002F0821 */  addu  $at, $at, $t7
/* 15E3C0 801B8350 AFA5001C */  sw    $a1, 0x1c($sp)
/* 15E3C4 801B8354 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15E3C8 801B8358 E426C820 */   swc1  $f6, -0x37e0($at)
/* 15E3CC 801B835C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E3D0 801B8360 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 15E3D4 801B8364 8C590000 */  lw    $t9, ($v0)
/* 15E3D8 801B8368 8FA5001C */  lw    $a1, 0x1c($sp)
/* 15E3DC 801B836C 3C18801C */  lui   $t8, %hi(D_801B84B4) # $t8, 0x801c
/* 15E3E0 801B8370 8F280000 */  lw    $t0, ($t9)
/* 15E3E4 801B8374 3C01800E */  lui   $at, 0x800e
/* 15E3E8 801B8378 271884B4 */  addiu $t8, %lo(D_801B84B4) # addiu $t8, $t8, -0x7b4c
/* 15E3EC 801B837C 00084880 */  sll   $t1, $t0, 2
/* 15E3F0 801B8380 00290821 */  addu  $at, $at, $t1
/* 15E3F4 801B8384 AC38F150 */  sw    $t8, -0xeb0($at)
/* 15E3F8 801B8388 3C0A8011 */  lui   $t2, %hi(func_8010C274) # $t2, 0x8011
/* 15E3FC 801B838C 3C0B801D */  lui   $t3, %hi(D_801CB4DC) # $t3, 0x801d
/* 15E400 801B8390 254AC274 */  addiu $t2, %lo(func_8010C274) # addiu $t2, $t2, -0x3d8c
/* 15E404 801B8394 256BB4DC */  addiu $t3, %lo(D_801CB4DC) # addiu $t3, $t3, -0x4b24
/* 15E408 801B8398 ACAA0048 */  sw    $t2, 0x48($a1)
/* 15E40C 801B839C ACAB0098 */  sw    $t3, 0x98($a1)
/* 15E410 801B83A0 8C4C0000 */  lw    $t4, ($v0)
/* 15E414 801B83A4 3C01800F */  lui   $at, 0x800f
/* 15E418 801B83A8 8D8D0000 */  lw    $t5, ($t4)
/* 15E41C 801B83AC 000D7080 */  sll   $t6, $t5, 2
/* 15E420 801B83B0 002E0821 */  addu  $at, $at, $t6
/* 15E424 801B83B4 AC208920 */  sw    $zero, -0x76e0($at)
/* 15E428 801B83B8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15E42C 801B83BC 0C02BB30 */  jal   func_800AECC0
/* 15E430 801B83C0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15E434 801B83C4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15E438 801B83C8 0C02BB48 */  jal   func_800AED20
/* 15E43C 801B83CC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15E440 801B83D0 3C040001 */  lui   $a0, (0x0001012C >> 16) # lui $a0, 1
/* 15E444 801B83D4 0C02A806 */  jal   func_800AA018
/* 15E448 801B83D8 3484012C */   ori   $a0, (0x0001012C & 0xFFFF) # ori $a0, $a0, 0x12c
/* 15E44C 801B83DC 3C040001 */  lui   $a0, (0x0001012B >> 16) # lui $a0, 1
/* 15E450 801B83E0 0C02A806 */  jal   func_800AA018
/* 15E454 801B83E4 3484012B */   ori   $a0, (0x0001012B & 0xFFFF) # ori $a0, $a0, 0x12b
/* 15E458 801B83E8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E45C 801B83EC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15E460 801B83F0 44800000 */  mtc1  $zero, $f0
/* 15E464 801B83F4 3C01800E */  lui   $at, 0x800e
/* 15E468 801B83F8 8C4F0000 */  lw    $t7, ($v0)
/* 15E46C 801B83FC 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 15E470 801B8400 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 15E474 801B8404 000FC880 */  sll   $t9, $t7, 2
/* 15E478 801B8408 00390821 */  addu  $at, $at, $t9
/* 15E47C 801B840C E42064D0 */  swc1  $f0, 0x64d0($at)
/* 15E480 801B8410 8C430000 */  lw    $v1, ($v0)
/* 15E484 801B8414 3C01800E */  lui   $at, 0x800e
/* 15E488 801B8418 2404003C */  li    $a0, 60
/* 15E48C 801B841C 00031880 */  sll   $v1, $v1, 2
/* 15E490 801B8420 00230821 */  addu  $at, $at, $v1
/* 15E494 801B8424 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 15E498 801B8428 3C01800E */  lui   $at, 0x800e
/* 15E49C 801B842C 00230821 */  addu  $at, $at, $v1
/* 15E4A0 801B8430 E4286690 */  swc1  $f8, 0x6690($at)
/* 15E4A4 801B8434 8C480000 */  lw    $t0, ($v0)
/* 15E4A8 801B8438 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15E4AC 801B843C 44815000 */  mtc1  $at, $f10
/* 15E4B0 801B8440 3C01800E */  lui   $at, 0x800e
/* 15E4B4 801B8444 0008C080 */  sll   $t8, $t0, 2
/* 15E4B8 801B8448 00380821 */  addu  $at, $at, $t8
/* 15E4BC 801B844C E42A6850 */  swc1  $f10, 0x6850($at)
/* 15E4C0 801B8450 8C490000 */  lw    $t1, ($v0)
/* 15E4C4 801B8454 3C01800E */  lui   $at, 0x800e
/* 15E4C8 801B8458 00095080 */  sll   $t2, $t1, 2
/* 15E4CC 801B845C 00AA5821 */  addu  $t3, $a1, $t2
/* 15E4D0 801B8460 E5600000 */  swc1  $f0, ($t3)
/* 15E4D4 801B8464 8C430000 */  lw    $v1, ($v0)
/* 15E4D8 801B8468 00031880 */  sll   $v1, $v1, 2
/* 15E4DC 801B846C 00A36021 */  addu  $t4, $a1, $v1
/* 15E4E0 801B8470 C5900000 */  lwc1  $f16, ($t4)
/* 15E4E4 801B8474 00230821 */  addu  $at, $at, $v1
/* 15E4E8 801B8478 E4303210 */  swc1  $f16, 0x3210($at)
/* 15E4EC 801B847C 8C4D0000 */  lw    $t5, ($v0)
/* 15E4F0 801B8480 3C01801D */  lui   $at, %hi(D_801CE374) # $at, 0x801d
/* 15E4F4 801B8484 C432E374 */  lwc1  $f18, %lo(D_801CE374)($at)
/* 15E4F8 801B8488 3C01800E */  lui   $at, 0x800e
/* 15E4FC 801B848C 000D7080 */  sll   $t6, $t5, 2
/* 15E500 801B8490 002E0821 */  addu  $at, $at, $t6
/* 15E504 801B8494 0C002DAF */  jal   finish_current_thread
/* 15E508 801B8498 E4323C90 */   swc1  $f18, 0x3c90($at)
/* 15E50C 801B849C 0C06B047 */  jal   func_801AC11C_ovl7
/* 15E510 801B84A0 8FA40020 */   lw    $a0, 0x20($sp)
/* 15E514 801B84A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15E518 801B84A8 27BD0020 */  addiu $sp, $sp, 0x20
/* 15E51C 801B84AC 03E00008 */  jr    $ra
/* 15E520 801B84B0 00000000 */   nop   
.size func_801B8300_ovl7, . - func_801B8300_ovl7

glabel func_801B84B4_ovl7
/* 15E524 801B84B4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15E528 801B84B8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15E52C 801B84BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15E530 801B84C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E534 801B84C4 8DC20000 */  lw    $v0, ($t6)
/* 15E538 801B84C8 3C03800F */  lui   $v1, 0x800f
/* 15E53C 801B84CC 24010012 */  li    $at, 18
/* 15E540 801B84D0 00021080 */  sll   $v0, $v0, 2
/* 15E544 801B84D4 00621821 */  addu  $v1, $v1, $v0
/* 15E548 801B84D8 8C6383E0 */  lw    $v1, -0x7c20($v1)
/* 15E54C 801B84DC 10600012 */  beqz  $v1, .L801B8528_ovl7
/* 15E550 801B84E0 00000000 */   nop   
/* 15E554 801B84E4 14610009 */  bne   $v1, $at, .L801B850C_ovl7
/* 15E558 801B84E8 3C04800E */   lui   $a0, 0x800e
/* 15E55C 801B84EC 3C04800E */  lui   $a0, 0x800e
/* 15E560 801B84F0 00822021 */  addu  $a0, $a0, $v0
/* 15E564 801B84F4 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 15E568 801B84F8 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 15E56C 801B84FC 0C02C7B2 */  jal   assign_new_process_entry
/* 15E570 801B8500 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15E574 801B8504 1000001A */  b     .L801B8570_ovl7
/* 15E578 801B8508 8FBF0014 */   lw    $ra, 0x14($sp)
.L801B850C_ovl7:
/* 15E57C 801B850C 00822021 */  addu  $a0, $a0, $v0
/* 15E580 801B8510 3C05801B */  lui   $a1, %hi(func_801AC11C) # $a1, 0x801b
/* 15E584 801B8514 24A5C11C */  addiu $a1, %lo(func_801AC11C) # addiu $a1, $a1, -0x3ee4
/* 15E588 801B8518 0C02C7B2 */  jal   assign_new_process_entry
/* 15E58C 801B851C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 15E590 801B8520 10000013 */  b     .L801B8570_ovl7
/* 15E594 801B8524 8FBF0014 */   lw    $ra, 0x14($sp)
.L801B8528_ovl7:
/* 15E598 801B8528 0C06835D */  jal   func_801A0D74_ovl7
/* 15E59C 801B852C 00000000 */   nop   
/* 15E5A0 801B8530 10400006 */  beqz  $v0, .L801B854C_ovl7
/* 15E5A4 801B8534 3C04801D */   lui   $a0, %hi(D_801CB044) # $a0, 0x801d
/* 15E5A8 801B8538 0C068E4E */  jal   func_801A3938_ovl7
/* 15E5AC 801B853C 2484B044 */   addiu $a0, %lo(D_801CB044) # addiu $a0, $a0, -0x4fbc
/* 15E5B0 801B8540 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 15E5B4 801B8544 0C068DB3 */  jal   func_801A36CC_ovl7
/* 15E5B8 801B8548 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801B854C_ovl7:
/* 15E5BC 801B854C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 15E5C0 801B8550 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 15E5C4 801B8554 3C04801D */  lui   $a0, %hi(D_801CA79C) # $a0, 0x801d
/* 15E5C8 801B8558 2484A79C */  addiu $a0, %lo(D_801CA79C) # addiu $a0, $a0, -0x5864
/* 15E5CC 801B855C 0C0445EF */  jal   func_801117BC
/* 15E5D0 801B8560 8DE50000 */   lw    $a1, ($t7)
/* 15E5D4 801B8564 0C044713 */  jal   func_80111C4C
/* 15E5D8 801B8568 00402025 */   move  $a0, $v0
/* 15E5DC 801B856C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B8570_ovl7:
/* 15E5E0 801B8570 27BD0018 */  addiu $sp, $sp, 0x18
/* 15E5E4 801B8574 03E00008 */  jr    $ra
/* 15E5E8 801B8578 00000000 */   nop   
.size func_801B84B4_ovl7, . - func_801B84B4_ovl7

glabel func_801B857C_ovl7
/* 15E5EC 801B857C 10800035 */  beqz  $a0, .L801B8654_ovl7
/* 15E5F0 801B8580 00000000 */   nop   
/* 15E5F4 801B8584 8C82004C */  lw    $v0, 0x4c($a0)
/* 15E5F8 801B8588 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15E5FC 801B858C 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 15E600 801B8590 10400030 */  beqz  $v0, .L801B8654_ovl7
/* 15E604 801B8594 00000000 */   nop   
/* 15E608 801B8598 8C6E0000 */  lw    $t6, ($v1)
/* 15E60C 801B859C 3C01800E */  lui   $at, 0x800e
/* 15E610 801B85A0 8DCF0000 */  lw    $t7, ($t6)
/* 15E614 801B85A4 000FC080 */  sll   $t8, $t7, 2
/* 15E618 801B85A8 00380821 */  addu  $at, $at, $t8
/* 15E61C 801B85AC C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 15E620 801B85B0 3C01800E */  lui   $at, 0x800e
/* 15E624 801B85B4 E4440004 */  swc1  $f4, 4($v0)
/* 15E628 801B85B8 8C790000 */  lw    $t9, ($v1)
/* 15E62C 801B85BC 8C8A004C */  lw    $t2, 0x4c($a0)
/* 15E630 801B85C0 8F280000 */  lw    $t0, ($t9)
/* 15E634 801B85C4 00084880 */  sll   $t1, $t0, 2
/* 15E638 801B85C8 00290821 */  addu  $at, $at, $t1
/* 15E63C 801B85CC C4262790 */  lwc1  $f6, 0x2790($at)
/* 15E640 801B85D0 3C01800E */  lui   $at, 0x800e
/* 15E644 801B85D4 E5460008 */  swc1  $f6, 8($t2)
/* 15E648 801B85D8 8C6B0000 */  lw    $t3, ($v1)
/* 15E64C 801B85DC 8C8E004C */  lw    $t6, 0x4c($a0)
/* 15E650 801B85E0 8D6C0000 */  lw    $t4, ($t3)
/* 15E654 801B85E4 000C6880 */  sll   $t5, $t4, 2
/* 15E658 801B85E8 002D0821 */  addu  $at, $at, $t5
/* 15E65C 801B85EC C4282950 */  lwc1  $f8, 0x2950($at)
/* 15E660 801B85F0 3C01800E */  lui   $at, 0x800e
/* 15E664 801B85F4 E5C8000C */  swc1  $f8, 0xc($t6)
/* 15E668 801B85F8 8C6F0000 */  lw    $t7, ($v1)
/* 15E66C 801B85FC 8C88004C */  lw    $t0, 0x4c($a0)
/* 15E670 801B8600 8DF80000 */  lw    $t8, ($t7)
/* 15E674 801B8604 0018C880 */  sll   $t9, $t8, 2
/* 15E678 801B8608 00390821 */  addu  $at, $at, $t9
/* 15E67C 801B860C C42A4010 */  lwc1  $f10, 0x4010($at)
/* 15E680 801B8610 3C01800E */  lui   $at, 0x800e
/* 15E684 801B8614 E50A0010 */  swc1  $f10, 0x10($t0)
/* 15E688 801B8618 8C690000 */  lw    $t1, ($v1)
/* 15E68C 801B861C 8C8C004C */  lw    $t4, 0x4c($a0)
/* 15E690 801B8620 8D2A0000 */  lw    $t2, ($t1)
/* 15E694 801B8624 000A5880 */  sll   $t3, $t2, 2
/* 15E698 801B8628 002B0821 */  addu  $at, $at, $t3
/* 15E69C 801B862C C43041D0 */  lwc1  $f16, 0x41d0($at)
/* 15E6A0 801B8630 3C01800E */  lui   $at, 0x800e
/* 15E6A4 801B8634 E5900014 */  swc1  $f16, 0x14($t4)
/* 15E6A8 801B8638 8C6D0000 */  lw    $t5, ($v1)
/* 15E6AC 801B863C 8C98004C */  lw    $t8, 0x4c($a0)
/* 15E6B0 801B8640 8DAE0000 */  lw    $t6, ($t5)
/* 15E6B4 801B8644 000E7880 */  sll   $t7, $t6, 2
/* 15E6B8 801B8648 002F0821 */  addu  $at, $at, $t7
/* 15E6BC 801B864C C4324390 */  lwc1  $f18, 0x4390($at)
/* 15E6C0 801B8650 E7120018 */  swc1  $f18, 0x18($t8)
.L801B8654_ovl7:
/* 15E6C4 801B8654 03E00008 */  jr    $ra
/* 15E6C8 801B8658 00000000 */   nop   
.size func_801B857C_ovl7, . - func_801B857C_ovl7

glabel func_801B865C_ovl7
/* 15E6CC 801B865C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15E6D0 801B8660 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15E6D4 801B8664 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15E6D8 801B8668 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E6DC 801B866C AFA40020 */  sw    $a0, 0x20($sp)
/* 15E6E0 801B8670 8DCF0000 */  lw    $t7, ($t6)
/* 15E6E4 801B8674 3C19801D */  lui   $t9, %hi(D_801D0A98) # $t9, 0x801d
/* 15E6E8 801B8678 8F390A98 */  lw    $t9, %lo(D_801D0A98)($t9)
/* 15E6EC 801B867C 3C03800E */  lui   $v1, 0x800e
/* 15E6F0 801B8680 000FC080 */  sll   $t8, $t7, 2
/* 15E6F4 801B8684 00781821 */  addu  $v1, $v1, $t8
/* 15E6F8 801B8688 1320001E */  beqz  $t9, .L801B8704_ovl7
/* 15E6FC 801B868C 8C631B50 */   lw    $v1, 0x1b50($v1)
/* 15E700 801B8690 3C08801D */  lui   $t0, %hi(D_801D0A9C) # $t0, 0x801d
/* 15E704 801B8694 8D080A9C */  lw    $t0, %lo(D_801D0A9C)($t0)
/* 15E708 801B8698 24040003 */  li    $a0, 3
/* 15E70C 801B869C 24050002 */  li    $a1, 2
/* 15E710 801B86A0 15000008 */  bnez  $t0, .L801B86C4_ovl7
/* 15E714 801B86A4 240600DE */   li    $a2, 222
/* 15E718 801B86A8 0C02A08D */  jal   func_800A8234
/* 15E71C 801B86AC AFA3001C */   sw    $v1, 0x1c($sp)
/* 15E720 801B86B0 8FA3001C */  lw    $v1, 0x1c($sp)
/* 15E724 801B86B4 24090001 */  li    $t1, 1
/* 15E728 801B86B8 3C01801D */  lui   $at, %hi(D_801D0A9C) # $at, 0x801d
/* 15E72C 801B86BC AC620034 */  sw    $v0, 0x34($v1)
/* 15E730 801B86C0 AC290A9C */  sw    $t1, %lo(D_801D0A9C)($at)
.L801B86C4_ovl7:
/* 15E734 801B86C4 0C06E15F */  jal   func_801B857C_ovl7
/* 15E738 801B86C8 8C640034 */   lw    $a0, 0x34($v1)
/* 15E73C 801B86CC 3C04801D */  lui   $a0, %hi(D_801CB3B4) # $a0, 0x801d
/* 15E740 801B86D0 0C068E4E */  jal   func_801A3938_ovl7
/* 15E744 801B86D4 2484B3B4 */   addiu $a0, %lo(D_801CB3B4) # addiu $a0, $a0, -0x4c4c
/* 15E748 801B86D8 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 15E74C 801B86DC 0C068DD3 */  jal   func_801A374C_ovl7
/* 15E750 801B86E0 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
/* 15E754 801B86E4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 15E758 801B86E8 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15E75C 801B86EC 3C04801D */  lui   $a0, %hi(D_801C97A8) # $a0, 0x801d
/* 15E760 801B86F0 248497A8 */  addiu $a0, %lo(D_801C97A8) # addiu $a0, $a0, -0x6858
/* 15E764 801B86F4 0C044681 */  jal   func_80111A04
/* 15E768 801B86F8 8D450000 */   lw    $a1, ($t2)
/* 15E76C 801B86FC 0C044713 */  jal   func_80111C4C
/* 15E770 801B8700 00402025 */   move  $a0, $v0
.L801B8704_ovl7:
/* 15E774 801B8704 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15E778 801B8708 27BD0020 */  addiu $sp, $sp, 0x20
/* 15E77C 801B870C 03E00008 */  jr    $ra
/* 15E780 801B8710 00000000 */   nop   
.size func_801B865C_ovl7, . - func_801B865C_ovl7

glabel func_801B8714_ovl7
/* 15E784 801B8714 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15E788 801B8718 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15E78C 801B871C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15E790 801B8720 AFA50024 */  sw    $a1, 0x24($sp)
/* 15E794 801B8724 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E798 801B8728 AFA40020 */  sw    $a0, 0x20($sp)
/* 15E79C 801B872C 8DCF0000 */  lw    $t7, ($t6)
/* 15E7A0 801B8730 3C05801D */  lui   $a1, %hi(D_801D0A98) # $a1, 0x801d
/* 15E7A4 801B8734 24A50A98 */  addiu $a1, %lo(D_801D0A98) # addiu $a1, $a1, 0xa98
/* 15E7A8 801B8738 8CB90000 */  lw    $t9, ($a1)
/* 15E7AC 801B873C 3C03800E */  lui   $v1, 0x800e
/* 15E7B0 801B8740 000FC080 */  sll   $t8, $t7, 2
/* 15E7B4 801B8744 44866000 */  mtc1  $a2, $f12
/* 15E7B8 801B8748 00781821 */  addu  $v1, $v1, $t8
/* 15E7BC 801B874C 1720000E */  bnez  $t9, .L801B8788_ovl7
/* 15E7C0 801B8750 8C631B50 */   lw    $v1, 0x1b50($v1)
/* 15E7C4 801B8754 4600610D */  trunc.w.s $f4, $f12
/* 15E7C8 801B8758 2404015F */  li    $a0, 351
/* 15E7CC 801B875C 44092000 */  mfc1  $t1, $f4
/* 15E7D0 801B8760 00000000 */  nop   
/* 15E7D4 801B8764 51200009 */  beql  $t1, $zero, .L801B878C_ovl7
/* 15E7D8 801B8768 4600618D */   trunc.w.s $f6, $f12
/* 15E7DC 801B876C AFA3001C */  sw    $v1, 0x1c($sp)
/* 15E7E0 801B8770 0C029D9E */  jal   play_sound
/* 15E7E4 801B8774 E7AC0028 */   swc1  $f12, 0x28($sp)
/* 15E7E8 801B8778 3C05801D */  lui   $a1, %hi(D_801D0A98) # $a1, 0x801d
/* 15E7EC 801B877C 24A50A98 */  addiu $a1, %lo(D_801D0A98) # addiu $a1, $a1, 0xa98
/* 15E7F0 801B8780 8FA3001C */  lw    $v1, 0x1c($sp)
/* 15E7F4 801B8784 C7AC0028 */  lwc1  $f12, 0x28($sp)
.L801B8788_ovl7:
/* 15E7F8 801B8788 4600618D */  trunc.w.s $f6, $f12
.L801B878C_ovl7:
/* 15E7FC 801B878C 440B3000 */  mfc1  $t3, $f6
/* 15E800 801B8790 00000000 */  nop   
/* 15E804 801B8794 1560000D */  bnez  $t3, .L801B87CC_ovl7
/* 15E808 801B8798 ACAB0000 */   sw    $t3, ($a1)
/* 15E80C 801B879C 8C620034 */  lw    $v0, 0x34($v1)
/* 15E810 801B87A0 1040000A */  beqz  $v0, .L801B87CC_ovl7
/* 15E814 801B87A4 00402025 */   move  $a0, $v0
/* 15E818 801B87A8 0C0288B5 */  jal   func_800A22D4
/* 15E81C 801B87AC AFA3001C */   sw    $v1, 0x1c($sp)
/* 15E820 801B87B0 8FA3001C */  lw    $v1, 0x1c($sp)
/* 15E824 801B87B4 3C05801D */  lui   $a1, %hi(D_801D0A98) # $a1, 0x801d
/* 15E828 801B87B8 24A50A98 */  addiu $a1, %lo(D_801D0A98) # addiu $a1, $a1, 0xa98
/* 15E82C 801B87BC AC600034 */  sw    $zero, 0x34($v1)
/* 15E830 801B87C0 8CAD0000 */  lw    $t5, ($a1)
/* 15E834 801B87C4 3C01801D */  lui   $at, %hi(D_801D0A9C) # $at, 0x801d
/* 15E838 801B87C8 AC2D0A9C */  sw    $t5, %lo(D_801D0A9C)($at)
.L801B87CC_ovl7:
/* 15E83C 801B87CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15E840 801B87D0 27BD0020 */  addiu $sp, $sp, 0x20
/* 15E844 801B87D4 03E00008 */  jr    $ra
/* 15E848 801B87D8 00000000 */   nop   
.size func_801B8714_ovl7, . - func_801B8714_ovl7

glabel func_801B87DC_ovl7
/* 15E84C 801B87DC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E850 801B87E0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15E854 801B87E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15E858 801B87E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15E85C 801B87EC AFA40020 */  sw    $a0, 0x20($sp)
/* 15E860 801B87F0 8C430000 */  lw    $v1, ($v0)
/* 15E864 801B87F4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 15E868 801B87F8 44812000 */  mtc1  $at, $f4
/* 15E86C 801B87FC 3C01800F */  lui   $at, 0x800f
/* 15E870 801B8800 00031880 */  sll   $v1, $v1, 2
/* 15E874 801B8804 00230821 */  addu  $at, $at, $v1
/* 15E878 801B8808 E424C660 */  swc1  $f4, -0x39a0($at)
/* 15E87C 801B880C 8C4E0000 */  lw    $t6, ($v0)
/* 15E880 801B8810 3C05800E */  lui   $a1, 0x800e
/* 15E884 801B8814 00A32821 */  addu  $a1, $a1, $v1
/* 15E888 801B8818 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 15E88C 801B881C 44803000 */  mtc1  $zero, $f6
/* 15E890 801B8820 3C01800F */  lui   $at, 0x800f
/* 15E894 801B8824 000E7880 */  sll   $t7, $t6, 2
/* 15E898 801B8828 002F0821 */  addu  $at, $at, $t7
/* 15E89C 801B882C AFA5001C */  sw    $a1, 0x1c($sp)
/* 15E8A0 801B8830 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15E8A4 801B8834 E426C820 */   swc1  $f6, -0x37e0($at)
/* 15E8A8 801B8838 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15E8AC 801B883C 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 15E8B0 801B8840 8C620000 */  lw    $v0, ($v1)
/* 15E8B4 801B8844 3C18800B */  lui   $t8, %hi(D_800B6FD8) # $t8, 0x800b
/* 15E8B8 801B8848 3C01800E */  lui   $at, 0x800e
/* 15E8BC 801B884C 8C590000 */  lw    $t9, ($v0)
/* 15E8C0 801B8850 27186FD8 */  addiu $t8, %lo(D_800B6FD8) # addiu $t8, $t8, 0x6fd8
/* 15E8C4 801B8854 8FA5001C */  lw    $a1, 0x1c($sp)
/* 15E8C8 801B8858 00194080 */  sll   $t0, $t9, 2
/* 15E8CC 801B885C 00280821 */  addu  $at, $at, $t0
/* 15E8D0 801B8860 AC38EF90 */  sw    $t8, -0x1070($at)
/* 15E8D4 801B8864 8C4A0000 */  lw    $t2, ($v0)
/* 15E8D8 801B8868 3C01800E */  lui   $at, 0x800e
/* 15E8DC 801B886C 3C09801B */  lui   $t1, %hi(D_801AC840) # $t1, 0x801b
/* 15E8E0 801B8870 000A5880 */  sll   $t3, $t2, 2
/* 15E8E4 801B8874 002B0821 */  addu  $at, $at, $t3
/* 15E8E8 801B8878 2529C840 */  addiu $t1, %lo(D_801AC840) # addiu $t1, $t1, -0x37c0
/* 15E8EC 801B887C AC29F150 */  sw    $t1, -0xeb0($at)
/* 15E8F0 801B8880 3C0C8011 */  lui   $t4, %hi(func_8010C274) # $t4, 0x8011
/* 15E8F4 801B8884 3C0D801D */  lui   $t5, %hi(D_801CB4DC) # $t5, 0x801d
/* 15E8F8 801B8888 258CC274 */  addiu $t4, %lo(func_8010C274) # addiu $t4, $t4, -0x3d8c
/* 15E8FC 801B888C 25ADB4DC */  addiu $t5, %lo(D_801CB4DC) # addiu $t5, $t5, -0x4b24
/* 15E900 801B8890 ACAC0048 */  sw    $t4, 0x48($a1)
/* 15E904 801B8894 ACAD0098 */  sw    $t5, 0x98($a1)
/* 15E908 801B8898 8C6E0000 */  lw    $t6, ($v1)
/* 15E90C 801B889C 3C01800F */  lui   $at, 0x800f
/* 15E910 801B88A0 8DCF0000 */  lw    $t7, ($t6)
/* 15E914 801B88A4 000FC880 */  sll   $t9, $t7, 2
/* 15E918 801B88A8 00390821 */  addu  $at, $at, $t9
/* 15E91C 801B88AC AC208920 */  sw    $zero, -0x76e0($at)
/* 15E920 801B88B0 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15E924 801B88B4 0C02BB30 */  jal   func_800AECC0
/* 15E928 801B88B8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15E92C 801B88BC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 15E930 801B88C0 0C02BB48 */  jal   func_800AED20
/* 15E934 801B88C4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15E938 801B88C8 3C040001 */  lui   $a0, (0x0001023A >> 16) # lui $a0, 1
/* 15E93C 801B88CC 0C02A806 */  jal   func_800AA018
/* 15E940 801B88D0 3484023A */   ori   $a0, (0x0001023A & 0xFFFF) # ori $a0, $a0, 0x23a
/* 15E944 801B88D4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15E948 801B88D8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15E94C 801B88DC 3C01800E */  lui   $at, 0x800e
/* 15E950 801B88E0 44800000 */  mtc1  $zero, $f0
/* 15E954 801B88E4 8C430000 */  lw    $v1, ($v0)
/* 15E958 801B88E8 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 15E95C 801B88EC 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 15E960 801B88F0 00031880 */  sll   $v1, $v1, 2
/* 15E964 801B88F4 00230821 */  addu  $at, $at, $v1
/* 15E968 801B88F8 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 15E96C 801B88FC 3C014128 */  li    $at, 0x41280000 # 10.500000
/* 15E970 801B8900 44815000 */  mtc1  $at, $f10
/* 15E974 801B8904 3C01800E */  lui   $at, 0x800e
/* 15E978 801B8908 00230821 */  addu  $at, $at, $v1
/* 15E97C 801B890C 460A4402 */  mul.s $f16, $f8, $f10
/* 15E980 801B8910 2404003C */  li    $a0, 60
/* 15E984 801B8914 E43064D0 */  swc1  $f16, 0x64d0($at)
/* 15E988 801B8918 8C580000 */  lw    $t8, ($v0)
/* 15E98C 801B891C 3C01800E */  lui   $at, 0x800e
/* 15E990 801B8920 00184080 */  sll   $t0, $t8, 2
/* 15E994 801B8924 00280821 */  addu  $at, $at, $t0
/* 15E998 801B8928 E4206690 */  swc1  $f0, 0x6690($at)
/* 15E99C 801B892C 8C4A0000 */  lw    $t2, ($v0)
/* 15E9A0 801B8930 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15E9A4 801B8934 44819000 */  mtc1  $at, $f18
/* 15E9A8 801B8938 3C01800E */  lui   $at, 0x800e
/* 15E9AC 801B893C 000A4880 */  sll   $t1, $t2, 2
/* 15E9B0 801B8940 00290821 */  addu  $at, $at, $t1
/* 15E9B4 801B8944 E4326850 */  swc1  $f18, 0x6850($at)
/* 15E9B8 801B8948 8C4B0000 */  lw    $t3, ($v0)
/* 15E9BC 801B894C 3C01800E */  lui   $at, 0x800e
/* 15E9C0 801B8950 000B6080 */  sll   $t4, $t3, 2
/* 15E9C4 801B8954 00AC6821 */  addu  $t5, $a1, $t4
/* 15E9C8 801B8958 E5A00000 */  swc1  $f0, ($t5)
/* 15E9CC 801B895C 8C430000 */  lw    $v1, ($v0)
/* 15E9D0 801B8960 00031880 */  sll   $v1, $v1, 2
/* 15E9D4 801B8964 00A37021 */  addu  $t6, $a1, $v1
/* 15E9D8 801B8968 C5C40000 */  lwc1  $f4, ($t6)
/* 15E9DC 801B896C 00230821 */  addu  $at, $at, $v1
/* 15E9E0 801B8970 E4243210 */  swc1  $f4, 0x3210($at)
/* 15E9E4 801B8974 8C4F0000 */  lw    $t7, ($v0)
/* 15E9E8 801B8978 3C01801D */  lui   $at, %hi(D_801CE378) # $at, 0x801d
/* 15E9EC 801B897C C426E378 */  lwc1  $f6, %lo(D_801CE378)($at)
/* 15E9F0 801B8980 3C01800E */  lui   $at, 0x800e
/* 15E9F4 801B8984 000FC880 */  sll   $t9, $t7, 2
/* 15E9F8 801B8988 00390821 */  addu  $at, $at, $t9
/* 15E9FC 801B898C 0C002DAF */  jal   finish_current_thread
/* 15EA00 801B8990 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 15EA04 801B8994 0C06B047 */  jal   func_801AC11C_ovl7
/* 15EA08 801B8998 8FA40020 */   lw    $a0, 0x20($sp)
/* 15EA0C 801B899C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15EA10 801B89A0 27BD0020 */  addiu $sp, $sp, 0x20
/* 15EA14 801B89A4 03E00008 */  jr    $ra
/* 15EA18 801B89A8 00000000 */   nop   
.size func_801B87DC_ovl7, . - func_801B87DC_ovl7

glabel func_801B89AC_ovl7
/* 15EA1C 801B89AC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15EA20 801B89B0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15EA24 801B89B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 15EA28 801B89B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 15EA2C 801B89BC AFA40028 */  sw    $a0, 0x28($sp)
/* 15EA30 801B89C0 8DC20000 */  lw    $v0, ($t6)
/* 15EA34 801B89C4 3C01800E */  lui   $at, 0x800e
/* 15EA38 801B89C8 3C03800E */  lui   $v1, 0x800e
/* 15EA3C 801B89CC 00021080 */  sll   $v0, $v0, 2
/* 15EA40 801B89D0 00220821 */  addu  $at, $at, $v0
/* 15EA44 801B89D4 C4242790 */  lwc1  $f4, 0x2790($at)
/* 15EA48 801B89D8 00621821 */  addu  $v1, $v1, $v0
/* 15EA4C 801B89DC 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 15EA50 801B89E0 3C01800F */  lui   $at, 0x800f
/* 15EA54 801B89E4 00220821 */  addu  $at, $at, $v0
/* 15EA58 801B89E8 E424A8A0 */  swc1  $f4, -0x5760($at)
/* 15EA5C 801B89EC 0C02CD48 */  jal   func_800B3520
/* 15EA60 801B89F0 AFA30024 */   sw    $v1, 0x24($sp)
/* 15EA64 801B89F4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 15EA68 801B89F8 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 15EA6C 801B89FC 8D180000 */  lw    $t8, ($t0)
/* 15EA70 801B8A00 8FA30024 */  lw    $v1, 0x24($sp)
/* 15EA74 801B8A04 3C0F801B */  lui   $t7, %hi(D_801AC840) # $t7, 0x801b
/* 15EA78 801B8A08 8F190000 */  lw    $t9, ($t8)
/* 15EA7C 801B8A0C 3C01800E */  lui   $at, 0x800e
/* 15EA80 801B8A10 25EFC840 */  addiu $t7, %lo(D_801AC840) # addiu $t7, $t7, -0x37c0
/* 15EA84 801B8A14 00194880 */  sll   $t1, $t9, 2
/* 15EA88 801B8A18 00290821 */  addu  $at, $at, $t1
/* 15EA8C 801B8A1C AC2FF150 */  sw    $t7, -0xeb0($at)
/* 15EA90 801B8A20 3C0A8011 */  lui   $t2, %hi(func_8010C274) # $t2, 0x8011
/* 15EA94 801B8A24 3C0B801D */  lui   $t3, %hi(D_801CB4DC) # $t3, 0x801d
/* 15EA98 801B8A28 254AC274 */  addiu $t2, %lo(func_8010C274) # addiu $t2, $t2, -0x3d8c
/* 15EA9C 801B8A2C 256BB4DC */  addiu $t3, %lo(D_801CB4DC) # addiu $t3, $t3, -0x4b24
/* 15EAA0 801B8A30 AC6A0048 */  sw    $t2, 0x48($v1)
/* 15EAA4 801B8A34 AC6B0098 */  sw    $t3, 0x98($v1)
/* 15EAA8 801B8A38 8D0C0000 */  lw    $t4, ($t0)
/* 15EAAC 801B8A3C 3C01800F */  lui   $at, 0x800f
/* 15EAB0 801B8A40 24180001 */  li    $t8, 1
/* 15EAB4 801B8A44 8D8D0000 */  lw    $t5, ($t4)
/* 15EAB8 801B8A48 00002025 */  move  $a0, $zero
/* 15EABC 801B8A4C 000D7080 */  sll   $t6, $t5, 2
/* 15EAC0 801B8A50 002E0821 */  addu  $at, $at, $t6
/* 15EAC4 801B8A54 AC208920 */  sw    $zero, -0x76e0($at)
/* 15EAC8 801B8A58 A0780040 */  sb    $t8, 0x40($v1)
/* 15EACC 801B8A5C 0C02BEED */  jal   func_800AFBB4
/* 15EAD0 801B8A60 8D050000 */   lw    $a1, ($t0)
/* 15EAD4 801B8A64 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 15EAD8 801B8A68 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 15EADC 801B8A6C 8D190000 */  lw    $t9, ($t0)
/* 15EAE0 801B8A70 3C01800E */  lui   $at, 0x800e
/* 15EAE4 801B8A74 3C07800E */  lui   $a3, 0x800e
/* 15EAE8 801B8A78 8F220000 */  lw    $v0, ($t9)
/* 15EAEC 801B8A7C 24040003 */  li    $a0, 3
/* 15EAF0 801B8A80 24050002 */  li    $a1, 2
/* 15EAF4 801B8A84 00021080 */  sll   $v0, $v0, 2
/* 15EAF8 801B8A88 00220821 */  addu  $at, $at, $v0
/* 15EAFC 801B8A8C C4262790 */  lwc1  $f6, 0x2790($at)
/* 15EB00 801B8A90 3C01800E */  lui   $at, 0x800e
/* 15EB04 801B8A94 00220821 */  addu  $at, $at, $v0
/* 15EB08 801B8A98 C4282950 */  lwc1  $f8, 0x2950($at)
/* 15EB0C 801B8A9C 00E23821 */  addu  $a3, $a3, $v0
/* 15EB10 801B8AA0 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 15EB14 801B8AA4 240600D4 */  li    $a2, 212
/* 15EB18 801B8AA8 E7A60010 */  swc1  $f6, 0x10($sp)
/* 15EB1C 801B8AAC 0C029FDD */  jal   func_800A7F74
/* 15EB20 801B8AB0 E7A80014 */   swc1  $f8, 0x14($sp)
/* 15EB24 801B8AB4 0C029D9E */  jal   play_sound
/* 15EB28 801B8AB8 24040220 */   li    $a0, 544
/* 15EB2C 801B8ABC 0C068FA0 */  jal   func_801A3E80
/* 15EB30 801B8AC0 8FA40028 */   lw    $a0, 0x28($sp)
/* 15EB34 801B8AC4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 15EB38 801B8AC8 27BD0028 */  addiu $sp, $sp, 0x28
/* 15EB3C 801B8ACC 03E00008 */  jr    $ra
/* 15EB40 801B8AD0 00000000 */   nop   
.size func_801B89AC_ovl7, . - func_801B89AC_ovl7

glabel func_801B8AD4_ovl7
/* 15EB44 801B8AD4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15EB48 801B8AD8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15EB4C 801B8ADC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 15EB50 801B8AE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15EB54 801B8AE4 AFA40050 */  sw    $a0, 0x50($sp)
/* 15EB58 801B8AE8 8C620000 */  lw    $v0, ($v1)
/* 15EB5C 801B8AEC 3C0E800E */  lui   $t6, 0x800e
/* 15EB60 801B8AF0 3C05800E */  lui   $a1, 0x800e
/* 15EB64 801B8AF4 00021080 */  sll   $v0, $v0, 2
/* 15EB68 801B8AF8 01C27021 */  addu  $t6, $t6, $v0
/* 15EB6C 801B8AFC 8DCE1B50 */  lw    $t6, 0x1b50($t6)
/* 15EB70 801B8B00 00A22821 */  addu  $a1, $a1, $v0
/* 15EB74 801B8B04 8CA5FBD0 */  lw    $a1, -0x430($a1)
/* 15EB78 801B8B08 AFAE004C */  sw    $t6, 0x4c($sp)
/* 15EB7C 801B8B0C 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 15EB80 801B8B10 8CAF0014 */  lw    $t7, 0x14($a1)
/* 15EB84 801B8B14 44812000 */  mtc1  $at, $f4
/* 15EB88 801B8B18 3C01800F */  lui   $at, 0x800f
/* 15EB8C 801B8B1C AFAF0048 */  sw    $t7, 0x48($sp)
/* 15EB90 801B8B20 8CB80024 */  lw    $t8, 0x24($a1)
/* 15EB94 801B8B24 00220821 */  addu  $at, $at, $v0
/* 15EB98 801B8B28 E424C660 */  swc1  $f4, -0x39a0($at)
/* 15EB9C 801B8B2C AFB80044 */  sw    $t8, 0x44($sp)
/* 15EBA0 801B8B30 8C790000 */  lw    $t9, ($v1)
/* 15EBA4 801B8B34 44803000 */  mtc1  $zero, $f6
/* 15EBA8 801B8B38 3C01800F */  lui   $at, 0x800f
/* 15EBAC 801B8B3C 00194080 */  sll   $t0, $t9, 2
/* 15EBB0 801B8B40 00280821 */  addu  $at, $at, $t0
/* 15EBB4 801B8B44 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15EBB8 801B8B48 E426C820 */   swc1  $f6, -0x37e0($at)
/* 15EBBC 801B8B4C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 15EBC0 801B8B50 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 15EBC4 801B8B54 27A40038 */  addiu $a0, $sp, 0x38
/* 15EBC8 801B8B58 8FA50048 */  lw    $a1, 0x48($sp)
/* 15EBCC 801B8B5C 0C02C8D0 */  jal   func_800B2340
/* 15EBD0 801B8B60 8D260000 */   lw    $a2, ($t1)
/* 15EBD4 801B8B64 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 15EBD8 801B8B68 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15EBDC 801B8B6C 27A4002C */  addiu $a0, $sp, 0x2c
/* 15EBE0 801B8B70 8FA50044 */  lw    $a1, 0x44($sp)
/* 15EBE4 801B8B74 0C02C8D0 */  jal   func_800B2340
/* 15EBE8 801B8B78 8D460000 */   lw    $a2, ($t2)
/* 15EBEC 801B8B7C 24040043 */  li    $a0, 67
/* 15EBF0 801B8B80 0C06B30D */  jal   func_801ACC34_ovl7
/* 15EBF4 801B8B84 00002825 */   move  $a1, $zero
/* 15EBF8 801B8B88 10400009 */  beqz  $v0, .L801B8BB0_ovl7
/* 15EBFC 801B8B8C 24040043 */   li    $a0, 67
/* 15EC00 801B8B90 00021880 */  sll   $v1, $v0, 2
/* 15EC04 801B8B94 3C01800E */  lui   $at, 0x800e
/* 15EC08 801B8B98 00230821 */  addu  $at, $at, $v1
/* 15EC0C 801B8B9C C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 15EC10 801B8BA0 AC200D50 */  sw    $zero, 0xd50($at)
/* 15EC14 801B8BA4 3C01800E */  lui   $at, 0x800e
/* 15EC18 801B8BA8 00230821 */  addu  $at, $at, $v1
/* 15EC1C 801B8BAC E4282790 */  swc1  $f8, 0x2790($at)
.L801B8BB0_ovl7:
/* 15EC20 801B8BB0 0C06B30D */  jal   func_801ACC34_ovl7
/* 15EC24 801B8BB4 24050001 */   li    $a1, 1
/* 15EC28 801B8BB8 10400008 */  beqz  $v0, .L801B8BDC_ovl7
/* 15EC2C 801B8BBC 00021880 */   sll   $v1, $v0, 2
/* 15EC30 801B8BC0 3C01800E */  lui   $at, 0x800e
/* 15EC34 801B8BC4 00230821 */  addu  $at, $at, $v1
/* 15EC38 801B8BC8 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 15EC3C 801B8BCC AC200D50 */  sw    $zero, 0xd50($at)
/* 15EC40 801B8BD0 3C01800E */  lui   $at, 0x800e
/* 15EC44 801B8BD4 00230821 */  addu  $at, $at, $v1
/* 15EC48 801B8BD8 E42A2790 */  swc1  $f10, 0x2790($at)
.L801B8BDC_ovl7:
/* 15EC4C 801B8BDC 8FAC004C */  lw    $t4, 0x4c($sp)
/* 15EC50 801B8BE0 240B0001 */  li    $t3, 1
/* 15EC54 801B8BE4 A18B0040 */  sb    $t3, 0x40($t4)
/* 15EC58 801B8BE8 0C068FA0 */  jal   func_801A3E80
/* 15EC5C 801B8BEC 8FA40050 */   lw    $a0, 0x50($sp)
/* 15EC60 801B8BF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15EC64 801B8BF4 27BD0050 */  addiu $sp, $sp, 0x50
/* 15EC68 801B8BF8 03E00008 */  jr    $ra
/* 15EC6C 801B8BFC 00000000 */   nop   
.size func_801B8AD4_ovl7, . - func_801B8AD4_ovl7

glabel func_801B8C00_ovl7
/* 15EC70 801B8C00 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15EC74 801B8C04 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15EC78 801B8C08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15EC7C 801B8C0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15EC80 801B8C10 AFA40018 */  sw    $a0, 0x18($sp)
/* 15EC84 801B8C14 8C4F0000 */  lw    $t7, ($v0)
/* 15EC88 801B8C18 3C0E800B */  lui   $t6, %hi(D_800B6FD8) # $t6, 0x800b
/* 15EC8C 801B8C1C 3C01800E */  lui   $at, 0x800e
/* 15EC90 801B8C20 000FC080 */  sll   $t8, $t7, 2
/* 15EC94 801B8C24 00380821 */  addu  $at, $at, $t8
/* 15EC98 801B8C28 25CE6FD8 */  addiu $t6, %lo(D_800B6FD8) # addiu $t6, $t6, 0x6fd8
/* 15EC9C 801B8C2C AC2EEF90 */  sw    $t6, -0x1070($at)
/* 15ECA0 801B8C30 8C590000 */  lw    $t9, ($v0)
/* 15ECA4 801B8C34 3C04800E */  lui   $a0, 0x800e
/* 15ECA8 801B8C38 3C06801D */  lui   $a2, %hi(D_801CD720) # $a2, 0x801d
/* 15ECAC 801B8C3C 00992021 */  addu  $a0, $a0, $t9
/* 15ECB0 801B8C40 90847880 */  lbu   $a0, 0x7880($a0)
/* 15ECB4 801B8C44 24C6D720 */  addiu $a2, %lo(D_801CD720) # addiu $a2, $a2, -0x28e0
/* 15ECB8 801B8C48 0C02911F */  jal   call_virtual_function
/* 15ECBC 801B8C4C 24050002 */   li    $a1, 2
/* 15ECC0 801B8C50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15ECC4 801B8C54 27BD0018 */  addiu $sp, $sp, 0x18
/* 15ECC8 801B8C58 03E00008 */  jr    $ra
/* 15ECCC 801B8C5C 00000000 */   nop   
.size func_801B8C00_ovl7, . - func_801B8C00_ovl7

glabel func_801B8C60_ovl7
/* 15ECD0 801B8C60 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15ECD4 801B8C64 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15ECD8 801B8C68 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15ECDC 801B8C6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15ECE0 801B8C70 AFA40020 */  sw    $a0, 0x20($sp)
/* 15ECE4 801B8C74 8DC30000 */  lw    $v1, ($t6)
/* 15ECE8 801B8C78 3C0F800E */  lui   $t7, 0x800e
/* 15ECEC 801B8C7C 3C18801B */  lui   $t8, %hi(D_801AC840) # $t8, 0x801b
/* 15ECF0 801B8C80 00031880 */  sll   $v1, $v1, 2
/* 15ECF4 801B8C84 01E37821 */  addu  $t7, $t7, $v1
/* 15ECF8 801B8C88 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 15ECFC 801B8C8C 3C01800E */  lui   $at, 0x800e
/* 15ED00 801B8C90 00230821 */  addu  $at, $at, $v1
/* 15ED04 801B8C94 2718C840 */  addiu $t8, %lo(D_801AC840) # addiu $t8, $t8, -0x37c0
/* 15ED08 801B8C98 3C040001 */  lui   $a0, (0x0001000D >> 16) # lui $a0, 1
/* 15ED0C 801B8C9C AC38F150 */  sw    $t8, -0xeb0($at)
/* 15ED10 801B8CA0 3484000D */  ori   $a0, (0x0001000D & 0xFFFF) # ori $a0, $a0, 0xd
/* 15ED14 801B8CA4 24050023 */  li    $a1, 35
/* 15ED18 801B8CA8 24060010 */  li    $a2, 16
/* 15ED1C 801B8CAC 0C02A619 */  jal   func_800A9864
/* 15ED20 801B8CB0 AFAF001C */   sw    $t7, 0x1c($sp)
/* 15ED24 801B8CB4 3C04801D */  lui   $a0, %hi(D_801CA994) # $a0, 0x801d
/* 15ED28 801B8CB8 0C068956 */  jal   func_801A2558_ovl7
/* 15ED2C 801B8CBC 2484A994 */   addiu $a0, %lo(D_801CA994) # addiu $a0, $a0, -0x566c
/* 15ED30 801B8CC0 8FA4001C */  lw    $a0, 0x1c($sp)
/* 15ED34 801B8CC4 3C198011 */  lui   $t9, %hi(func_8010C274) # $t9, 0x8011
/* 15ED38 801B8CC8 3C08801D */  lui   $t0, %hi(D_801CB4DC) # $t0, 0x801d
/* 15ED3C 801B8CCC 2739C274 */  addiu $t9, %lo(func_8010C274) # addiu $t9, $t9, -0x3d8c
/* 15ED40 801B8CD0 2508B4DC */  addiu $t0, %lo(D_801CB4DC) # addiu $t0, $t0, -0x4b24
/* 15ED44 801B8CD4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15ED48 801B8CD8 AC990048 */  sw    $t9, 0x48($a0)
/* 15ED4C 801B8CDC AC880098 */  sw    $t0, 0x98($a0)
/* 15ED50 801B8CE0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15ED54 801B8CE4 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 15ED58 801B8CE8 44810000 */  mtc1  $at, $f0
/* 15ED5C 801B8CEC 8C490000 */  lw    $t1, ($v0)
/* 15ED60 801B8CF0 3C01800F */  lui   $at, 0x800f
/* 15ED64 801B8CF4 44805000 */  mtc1  $zero, $f10
/* 15ED68 801B8CF8 00095080 */  sll   $t2, $t1, 2
/* 15ED6C 801B8CFC 002A0821 */  addu  $at, $at, $t2
/* 15ED70 801B8D00 AC208920 */  sw    $zero, -0x76e0($at)
/* 15ED74 801B8D04 8C430000 */  lw    $v1, ($v0)
/* 15ED78 801B8D08 3C01800E */  lui   $at, 0x800e
/* 15ED7C 801B8D0C 00031880 */  sll   $v1, $v1, 2
/* 15ED80 801B8D10 00230821 */  addu  $at, $at, $v1
/* 15ED84 801B8D14 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 15ED88 801B8D18 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 15ED8C 801B8D1C 44813000 */  mtc1  $at, $f6
/* 15ED90 801B8D20 3C01800E */  lui   $at, 0x800e
/* 15ED94 801B8D24 00230821 */  addu  $at, $at, $v1
/* 15ED98 801B8D28 46062202 */  mul.s $f8, $f4, $f6
/* 15ED9C 801B8D2C E42864D0 */  swc1  $f8, 0x64d0($at)
/* 15EDA0 801B8D30 8C4B0000 */  lw    $t3, ($v0)
/* 15EDA4 801B8D34 3C01800E */  lui   $at, 0x800e
/* 15EDA8 801B8D38 000B6080 */  sll   $t4, $t3, 2
/* 15EDAC 801B8D3C 002C0821 */  addu  $at, $at, $t4
/* 15EDB0 801B8D40 E42A6690 */  swc1  $f10, 0x6690($at)
/* 15EDB4 801B8D44 8C4D0000 */  lw    $t5, ($v0)
/* 15EDB8 801B8D48 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15EDBC 801B8D4C 44818000 */  mtc1  $at, $f16
/* 15EDC0 801B8D50 3C01800E */  lui   $at, 0x800e
/* 15EDC4 801B8D54 000D7080 */  sll   $t6, $t5, 2
/* 15EDC8 801B8D58 002E0821 */  addu  $at, $at, $t6
/* 15EDCC 801B8D5C E4306850 */  swc1  $f16, 0x6850($at)
/* 15EDD0 801B8D60 8C4F0000 */  lw    $t7, ($v0)
/* 15EDD4 801B8D64 3C01800E */  lui   $at, 0x800e
/* 15EDD8 801B8D68 000FC080 */  sll   $t8, $t7, 2
/* 15EDDC 801B8D6C 00380821 */  addu  $at, $at, $t8
/* 15EDE0 801B8D70 E4203210 */  swc1  $f0, 0x3210($at)
/* 15EDE4 801B8D74 8C590000 */  lw    $t9, ($v0)
/* 15EDE8 801B8D78 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 15EDEC 801B8D7C 44819000 */  mtc1  $at, $f18
/* 15EDF0 801B8D80 3C01800E */  lui   $at, 0x800e
/* 15EDF4 801B8D84 00194080 */  sll   $t0, $t9, 2
/* 15EDF8 801B8D88 00280821 */  addu  $at, $at, $t0
/* 15EDFC 801B8D8C E4323750 */  swc1  $f18, 0x3750($at)
/* 15EE00 801B8D90 8C490000 */  lw    $t1, ($v0)
/* 15EE04 801B8D94 3C01800E */  lui   $at, 0x800e
/* 15EE08 801B8D98 00095080 */  sll   $t2, $t1, 2
/* 15EE0C 801B8D9C 002A0821 */  addu  $at, $at, $t2
/* 15EE10 801B8DA0 0C02BE85 */  jal   func_800AFA14
/* 15EE14 801B8DA4 E4203C90 */   swc1  $f0, 0x3c90($at)
/* 15EE18 801B8DA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15EE1C 801B8DAC 27BD0020 */  addiu $sp, $sp, 0x20
/* 15EE20 801B8DB0 03E00008 */  jr    $ra
/* 15EE24 801B8DB4 00000000 */   nop   
.size func_801B8C60_ovl7, . - func_801B8C60_ovl7

glabel func_801B8DB8_ovl7
/* 15EE28 801B8DB8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15EE2C 801B8DBC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15EE30 801B8DC0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15EE34 801B8DC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15EE38 801B8DC8 AFA40020 */  sw    $a0, 0x20($sp)
/* 15EE3C 801B8DCC 8DC30000 */  lw    $v1, ($t6)
/* 15EE40 801B8DD0 3C07800E */  lui   $a3, 0x800e
/* 15EE44 801B8DD4 3C0F801B */  lui   $t7, %hi(D_801AC840) # $t7, 0x801b
/* 15EE48 801B8DD8 00031880 */  sll   $v1, $v1, 2
/* 15EE4C 801B8DDC 00E33821 */  addu  $a3, $a3, $v1
/* 15EE50 801B8DE0 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 15EE54 801B8DE4 3C01800E */  lui   $at, 0x800e
/* 15EE58 801B8DE8 00230821 */  addu  $at, $at, $v1
/* 15EE5C 801B8DEC 25EFC840 */  addiu $t7, %lo(D_801AC840) # addiu $t7, $t7, -0x37c0
/* 15EE60 801B8DF0 3C040001 */  lui   $a0, (0x0001000E >> 16) # lui $a0, 1
/* 15EE64 801B8DF4 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 15EE68 801B8DF8 3484000E */  ori   $a0, (0x0001000E & 0xFFFF) # ori $a0, $a0, 0xe
/* 15EE6C 801B8DFC 24050023 */  li    $a1, 35
/* 15EE70 801B8E00 24060010 */  li    $a2, 16
/* 15EE74 801B8E04 0C02A619 */  jal   func_800A9864
/* 15EE78 801B8E08 AFA7001C */   sw    $a3, 0x1c($sp)
/* 15EE7C 801B8E0C 8FA7001C */  lw    $a3, 0x1c($sp)
/* 15EE80 801B8E10 3C188011 */  lui   $t8, %hi(func_8010C274) # $t8, 0x8011
/* 15EE84 801B8E14 3C19801D */  lui   $t9, %hi(D_801CB4DC) # $t9, 0x801d
/* 15EE88 801B8E18 2718C274 */  addiu $t8, %lo(func_8010C274) # addiu $t8, $t8, -0x3d8c
/* 15EE8C 801B8E1C 2739B4DC */  addiu $t9, %lo(D_801CB4DC) # addiu $t9, $t9, -0x4b24
/* 15EE90 801B8E20 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15EE94 801B8E24 ACF80048 */  sw    $t8, 0x48($a3)
/* 15EE98 801B8E28 ACF90098 */  sw    $t9, 0x98($a3)
/* 15EE9C 801B8E2C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15EEA0 801B8E30 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 15EEA4 801B8E34 44810000 */  mtc1  $at, $f0
/* 15EEA8 801B8E38 8C480000 */  lw    $t0, ($v0)
/* 15EEAC 801B8E3C 3C01800F */  lui   $at, 0x800f
/* 15EEB0 801B8E40 44805000 */  mtc1  $zero, $f10
/* 15EEB4 801B8E44 00084880 */  sll   $t1, $t0, 2
/* 15EEB8 801B8E48 00290821 */  addu  $at, $at, $t1
/* 15EEBC 801B8E4C AC208920 */  sw    $zero, -0x76e0($at)
/* 15EEC0 801B8E50 8C430000 */  lw    $v1, ($v0)
/* 15EEC4 801B8E54 3C01800E */  lui   $at, 0x800e
/* 15EEC8 801B8E58 00031880 */  sll   $v1, $v1, 2
/* 15EECC 801B8E5C 00230821 */  addu  $at, $at, $v1
/* 15EED0 801B8E60 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 15EED4 801B8E64 3C01801D */  lui   $at, %hi(D_801CE37C) # $at, 0x801d
/* 15EED8 801B8E68 C426E37C */  lwc1  $f6, %lo(D_801CE37C)($at)
/* 15EEDC 801B8E6C 3C01800E */  lui   $at, 0x800e
/* 15EEE0 801B8E70 00230821 */  addu  $at, $at, $v1
/* 15EEE4 801B8E74 46062202 */  mul.s $f8, $f4, $f6
/* 15EEE8 801B8E78 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 15EEEC 801B8E7C 8C4A0000 */  lw    $t2, ($v0)
/* 15EEF0 801B8E80 3C01800E */  lui   $at, 0x800e
/* 15EEF4 801B8E84 000A5880 */  sll   $t3, $t2, 2
/* 15EEF8 801B8E88 002B0821 */  addu  $at, $at, $t3
/* 15EEFC 801B8E8C E42A6690 */  swc1  $f10, 0x6690($at)
/* 15EF00 801B8E90 8C4C0000 */  lw    $t4, ($v0)
/* 15EF04 801B8E94 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 15EF08 801B8E98 44818000 */  mtc1  $at, $f16
/* 15EF0C 801B8E9C 3C01800E */  lui   $at, 0x800e
/* 15EF10 801B8EA0 000C6880 */  sll   $t5, $t4, 2
/* 15EF14 801B8EA4 002D0821 */  addu  $at, $at, $t5
/* 15EF18 801B8EA8 E4306850 */  swc1  $f16, 0x6850($at)
/* 15EF1C 801B8EAC 8C4E0000 */  lw    $t6, ($v0)
/* 15EF20 801B8EB0 3C01800E */  lui   $at, 0x800e
/* 15EF24 801B8EB4 000E7880 */  sll   $t7, $t6, 2
/* 15EF28 801B8EB8 002F0821 */  addu  $at, $at, $t7
/* 15EF2C 801B8EBC E4203210 */  swc1  $f0, 0x3210($at)
/* 15EF30 801B8EC0 8C580000 */  lw    $t8, ($v0)
/* 15EF34 801B8EC4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 15EF38 801B8EC8 44819000 */  mtc1  $at, $f18
/* 15EF3C 801B8ECC 3C01800E */  lui   $at, 0x800e
/* 15EF40 801B8ED0 0018C880 */  sll   $t9, $t8, 2
/* 15EF44 801B8ED4 00390821 */  addu  $at, $at, $t9
/* 15EF48 801B8ED8 E4323750 */  swc1  $f18, 0x3750($at)
/* 15EF4C 801B8EDC 8C480000 */  lw    $t0, ($v0)
/* 15EF50 801B8EE0 3C01800E */  lui   $at, 0x800e
/* 15EF54 801B8EE4 00084880 */  sll   $t1, $t0, 2
/* 15EF58 801B8EE8 00290821 */  addu  $at, $at, $t1
/* 15EF5C 801B8EEC 0C02BE85 */  jal   func_800AFA14
/* 15EF60 801B8EF0 E4203C90 */   swc1  $f0, 0x3c90($at)
/* 15EF64 801B8EF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15EF68 801B8EF8 27BD0020 */  addiu $sp, $sp, 0x20
/* 15EF6C 801B8EFC 03E00008 */  jr    $ra
/* 15EF70 801B8F00 00000000 */   nop   
.size func_801B8DB8_ovl7, . - func_801B8DB8_ovl7

glabel func_801B8F04_ovl7
/* 15EF74 801B8F04 00000000 */  nop   
/* 15EF78 801B8F08 00000000 */  nop   
/* 15EF7C 801B8F0C 00000000 */  nop   
/* 15EF80 801B8F10 00000000 */  nop   
/* 15EF84 801B8F14 00000000 */  nop   
/* 15EF88 801B8F18 00000000 */  nop   
/* 15EF8C 801B8F1C 00000000 */  nop   
.size func_801B8F04_ovl7, . - func_801B8F04_ovl7
