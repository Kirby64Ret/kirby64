glabel func_801E1C1C_ovl16
/* 217ECC 801E1C1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
glabel func_801E1C20_ovl15
/* 217ED0 801E1C20 AFBF001C */  sw         $ra, 0x1C($sp)
/* 217ED4 801E1C24 AFB00018 */  sw         $s0, 0x18($sp)
/* 217ED8 801E1C28 0C077F73 */  jal        func_801DFDCC_ovl16
/* 217EDC 801E1C2C AFA40020 */   sw        $a0, 0x20($sp)
/* 217EE0 801E1C30 0C077FB2 */  jal        func_801DFEC8_ovl16
/* 217EE4 801E1C34 00000000 */   nop
.L801E1C38_ovl10:
/* 217EE8 801E1C38 0C0781AB */  jal        func_801E06AC_ovl16
/* 217EEC 801E1C3C 00000000 */   nop
/* 217EF0 801E1C40 0C0781EA */  jal        func_801E07A8_ovl16
/* 217EF4 801E1C44 00000000 */   nop
/* 217EF8 801E1C48 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 217EFC 801E1C4C 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 217F00 801E1C50 8E0E0000 */  lw         $t6, 0x0($s0)
/* 217F04 801E1C54 3C01800F */  lui        $at, %hi(D_800E8920)
/* 217F08 801E1C58 8DCF0000 */  lw         $t7, 0x0($t6)
/* 217F0C 801E1C5C 000FC080 */  sll        $t8, $t7, 2
.L801E1C60_ovl12:
/* 217F10 801E1C60 00380821 */  addu       $at, $at, $t8
/* 217F14 801E1C64 0C076D00 */  jal        func_801DB400_ovl16
.L801E1C68_ovl13:
/* 217F18 801E1C68 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 217F1C 801E1C6C 8E080000 */  lw         $t0, 0x0($s0)
.L801E1C70_ovl12:
/* 217F20 801E1C70 3C0B800E */  lui        $t3, %hi(D_800E1B50)
/* 217F24 801E1C74 3C19801E */  lui        $t9, %hi(func_801D9558_ovl9)
/* 217F28 801E1C78 8D090000 */  lw         $t1, 0x0($t0)
/* 217F2C 801E1C7C 27399558 */  addiu      $t9, $t9, %lo(func_801D9558_ovl9)
.L801E1C80_ovl12:
/* 217F30 801E1C80 00002025 */  or         $a0, $zero, $zero
/* 217F34 801E1C84 00095080 */  sll        $t2, $t1, 2
.L801E1C88_ovl9:
/* 217F38 801E1C88 016A5821 */  addu       $t3, $t3, $t2
.L801E1C8C_ovl12:
/* 217F3C 801E1C8C 8D6B1B50 */  lw         $t3, %lo(D_800E1B50)($t3)
/* 217F40 801E1C90 00002825 */  or         $a1, $zero, $zero
/* 217F44 801E1C94 00003025 */  or         $a2, $zero, $zero
.L801E1C98_ovl10:
/* 217F48 801E1C98 0C0770C5 */  jal        func_801DC314_ovl16
/* 217F4C 801E1C9C AD79008C */   sw        $t9, 0x8C($t3)
/* 217F50 801E1CA0 8E0C0000 */  lw         $t4, 0x0($s0)
/* 217F54 801E1CA4 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 217F58 801E1CA8 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 217F5C 801E1CAC 8D830000 */  lw         $v1, 0x0($t4)
/* 217F60 801E1CB0 3C014120 */  lui        $at, (0x41200000 >> 16)
glabel func_801E1CB4_ovl17
/* 217F64 801E1CB4 44810000 */  mtc1       $at, $f0
/* 217F68 801E1CB8 00031880 */  sll        $v1, $v1, 2
/* 217F6C 801E1CBC 00C36821 */  addu       $t5, $a2, $v1
/* 217F70 801E1CC0 8DA20000 */  lw         $v0, 0x0($t5)
/* 217F74 801E1CC4 3C0A800E */  lui        $t2, %hi(D_800E1B50)
.L801E1CC8_ovl15:
/* 217F78 801E1CC8 01435021 */  addu       $t2, $t2, $v1
/* 217F7C 801E1CCC 8C4E0014 */  lw         $t6, 0x14($v0)
/* 217F80 801E1CD0 C5C40020 */  lwc1       $f4, 0x20($t6)
glabel func_801E1CD4_ovl12
/* 217F84 801E1CD4 4604003C */  c.lt.s     $f0, $f4
/* 217F88 801E1CD8 00000000 */  nop
/* 217F8C 801E1CDC 45010015 */  bc1t       .L801E1D34_ovl16
glabel func_801E1CE0_ovl14
/* 217F90 801E1CE0 00000000 */   nop
/* 217F94 801E1CE4 8C4F001C */  lw         $t7, 0x1C($v0)
glabel func_801E1CE8_ovl14
/* 217F98 801E1CE8 C5E6001C */  lwc1       $f6, 0x1C($t7)
.L801E1CEC_ovl13:
/* 217F9C 801E1CEC 4606003C */  c.lt.s     $f0, $f6
.L801E1CF0_ovl13:
/* 217FA0 801E1CF0 00000000 */  nop
/* 217FA4 801E1CF4 4501000F */  bc1t       .L801E1D34_ovl16
/* 217FA8 801E1CF8 00000000 */   nop
/* 217FAC 801E1CFC 8C580024 */  lw         $t8, 0x24($v0)
.L801E1D00_ovl13:
/* 217FB0 801E1D00 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* 217FB4 801E1D04 44810000 */  mtc1       $at, $f0
.L801E1D08_ovl9:
/* 217FB8 801E1D08 C7080020 */  lwc1       $f8, 0x20($t8)
/* 217FBC 801E1D0C 4600403C */  c.lt.s     $f8, $f0
/* 217FC0 801E1D10 00000000 */  nop
/* 217FC4 801E1D14 45010007 */  bc1t       .L801E1D34_ovl16
/* 217FC8 801E1D18 00000000 */   nop
/* 217FCC 801E1D1C 8C48000C */  lw         $t0, 0xC($v0)
/* 217FD0 801E1D20 C50A001C */  lwc1       $f10, 0x1C($t0)
/* 217FD4 801E1D24 4600503C */  c.lt.s     $f10, $f0
.L801E1D28_ovl14:
/* 217FD8 801E1D28 00000000 */  nop
/* 217FDC 801E1D2C 45020051 */  bc1fl      .L801E1E74_ovl16
/* 217FE0 801E1D30 8FBF001C */   lw        $ra, 0x1C($sp)
.L801E1D34_ovl16:
/* 217FE4 801E1D34 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 217FE8 801E1D38 3C09801E */  lui        $t1, %hi(func_801D9558_ovl9 + 0x6C)
glabel func_801E1D3C_ovl10
/* 217FEC 801E1D3C 252995C4 */  addiu      $t1, $t1, %lo(func_801D9558_ovl9 + 0x6C)
/* 217FF0 801E1D40 AD49008C */  sw         $t1, 0x8C($t2)
/* 217FF4 801E1D44 8E190000 */  lw         $t9, 0x0($s0)
/* 217FF8 801E1D48 8F2B0000 */  lw         $t3, 0x0($t9)
/* 217FFC 801E1D4C 000B6080 */  sll        $t4, $t3, 2
/* 218000 801E1D50 00CC6821 */  addu       $t5, $a2, $t4
.L801E1D54_ovl13:
/* 218004 801E1D54 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E1D58_ovl15:
/* 218008 801E1D58 8DC40000 */  lw         $a0, 0x0($t6)
.L801E1D5C_ovl13:
/* 21800C 801E1D5C 0C0771B9 */  jal        func_801DC6E4_ovl16
.L801E1D60_ovl13:
/* 218010 801E1D60 00802825 */   or        $a1, $a0, $zero
/* 218014 801E1D64 3C02800D */  lui        $v0, %hi(D_800D7098 + 0x8)
/* 218018 801E1D68 8C4270A0 */  lw         $v0, %lo(D_800D7098 + 0x8)($v0)
.L801E1D6C_ovl12:
/* 21801C 801E1D6C 24010001 */  addiu      $at, $zero, 0x1
.L801E1D70_ovl12:
/* 218020 801E1D70 50400008 */  beql       $v0, $zero, .L801E1D94_ovl16
/* 218024 801E1D74 8E180000 */   lw        $t8, 0x0($s0)
/* 218028 801E1D78 1041002B */  beq        $v0, $at, .L801E1E28_ovl16
glabel func_801E1D7C_ovl12
/* 21802C 801E1D7C 24010002 */   addiu     $at, $zero, 0x2
/* 218030 801E1D80 50410018 */  beql       $v0, $at, .L801E1DE4_ovl16
/* 218034 801E1D84 8E0E0000 */   lw        $t6, 0x0($s0)
/* 218038 801E1D88 1000003A */  b          .L801E1E74_ovl16
/* 21803C 801E1D8C 8FBF001C */   lw        $ra, 0x1C($sp)
/* 218040 801E1D90 8E180000 */  lw         $t8, 0x0($s0)
.L801E1D94_ovl16:
/* 218044 801E1D94 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 218048 801E1D98 3C0F801E */  lui        $t7, %hi(D_801D9678)
.L801E1D9C_ovl9:
/* 21804C 801E1D9C 8F080000 */  lw         $t0, 0x0($t8)
/* 218050 801E1DA0 25EF9678 */  addiu      $t7, $t7, %lo(D_801D9678)
.L801E1DA4_ovl14:
/* 218054 801E1DA4 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 218058 801E1DA8 00084880 */  sll        $t1, $t0, 2
/* 21805C 801E1DAC 01495021 */  addu       $t2, $t2, $t1
/* 218060 801E1DB0 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 218064 801E1DB4 AD4F008C */  sw         $t7, 0x8C($t2)
/* 218068 801E1DB8 8E190000 */  lw         $t9, 0x0($s0)
.L801E1DBC_ovl9:
/* 21806C 801E1DBC 8F2B0000 */  lw         $t3, 0x0($t9)
.L801E1DC0_ovl10:
/* 218070 801E1DC0 000B6080 */  sll        $t4, $t3, 2
glabel func_801E1DC4_ovl12
/* 218074 801E1DC4 004C1021 */  addu       $v0, $v0, $t4
/* 218078 801E1DC8 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
/* 21807C 801E1DCC 8C440014 */  lw         $a0, 0x14($v0)
glabel func_801E1DD0_ovl10
/* 218080 801E1DD0 0C07720F */  jal        func_801DC83C_ovl16
/* 218084 801E1DD4 8C450024 */   lw        $a1, 0x24($v0)
/* 218088 801E1DD8 10000026 */  b          .L801E1E74_ovl16
/* 21808C 801E1DDC 8FBF001C */   lw        $ra, 0x1C($sp)
/* 218090 801E1DE0 8E0E0000 */  lw         $t6, 0x0($s0)
.L801E1DE4_ovl16:
/* 218094 801E1DE4 3C09800E */  lui        $t1, %hi(D_800E1B50)
.L801E1DE8_ovl15:
/* 218098 801E1DE8 3C0D801E */  lui        $t5, %hi(D_801D9678)
/* 21809C 801E1DEC 8DD80000 */  lw         $t8, 0x0($t6)
/* 2180A0 801E1DF0 25AD9678 */  addiu      $t5, $t5, %lo(D_801D9678)
.L801E1DF4_ovl13:
/* 2180A4 801E1DF4 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 2180A8 801E1DF8 00184080 */  sll        $t0, $t8, 2
/* 2180AC 801E1DFC 01284821 */  addu       $t1, $t1, $t0
.L801E1E00_ovl13:
/* 2180B0 801E1E00 8D291B50 */  lw         $t1, %lo(D_800E1B50)($t1)
/* 2180B4 801E1E04 AD2D008C */  sw         $t5, 0x8C($t1)
/* 2180B8 801E1E08 8E0F0000 */  lw         $t7, 0x0($s0)
/* 2180BC 801E1E0C 8DEA0000 */  lw         $t2, 0x0($t7)
/* 2180C0 801E1E10 000AC880 */  sll        $t9, $t2, 2
/* 2180C4 801E1E14 00591021 */  addu       $v0, $v0, $t9
/* 2180C8 801E1E18 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
/* 2180CC 801E1E1C 8C440014 */  lw         $a0, 0x14($v0)
/* 2180D0 801E1E20 0C07720F */  jal        func_801DC83C_ovl16
glabel func_801E1E24_ovl9
/* 2180D4 801E1E24 8C450024 */   lw        $a1, 0x24($v0)
.L801E1E28_ovl16:
/* 2180D8 801E1E28 8E0C0000 */  lw         $t4, 0x0($s0)
/* 2180DC 801E1E2C 3C08800E */  lui        $t0, %hi(D_800E1B50)
/* 2180E0 801E1E30 3C0B801E */  lui        $t3, %hi(func_801D9698_ovl9 + 0x4)
/* 2180E4 801E1E34 8D8E0000 */  lw         $t6, 0x0($t4)
glabel func_801E1E38_ovl12
/* 2180E8 801E1E38 256B969C */  addiu      $t3, $t3, %lo(func_801D9698_ovl9 + 0x4)
.L801E1E3C_ovl13:
/* 2180EC 801E1E3C 3C02800E */  lui        $v0, %hi(D_800DFBD0)
.L801E1E40_ovl13:
/* 2180F0 801E1E40 000EC080 */  sll        $t8, $t6, 2
.L801E1E44_ovl13:
/* 2180F4 801E1E44 01184021 */  addu       $t0, $t0, $t8
/* 2180F8 801E1E48 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
/* 2180FC 801E1E4C AD0B008C */  sw         $t3, 0x8C($t0)
/* 218100 801E1E50 8E0D0000 */  lw         $t5, 0x0($s0)
/* 218104 801E1E54 8DA90000 */  lw         $t1, 0x0($t5)
/* 218108 801E1E58 00097880 */  sll        $t7, $t1, 2
/* 21810C 801E1E5C 004F1021 */  addu       $v0, $v0, $t7
/* 218110 801E1E60 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
/* 218114 801E1E64 8C44001C */  lw         $a0, 0x1C($v0)
/* 218118 801E1E68 0C07720F */  jal        func_801DC83C_ovl16
/* 21811C 801E1E6C 8C45000C */   lw        $a1, 0xC($v0)
/* 218120 801E1E70 8FBF001C */  lw         $ra, 0x1C($sp)
.L801E1E74_ovl16:
/* 218124 801E1E74 8FB00018 */  lw         $s0, 0x18($sp)
/* 218128 801E1E78 27BD0020 */  addiu      $sp, $sp, 0x20
/* 21812C 801E1E7C 03E00008 */  jr         $ra
/* 218130 801E1E80 00000000 */   nop
