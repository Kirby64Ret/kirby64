glabel func_801E0CC8_ovl16
/* 216F78 801E0CC8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 216F7C 801E0CCC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 216F80 801E0CD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 216F84 801E0CD4 AFBF0014 */  sw         $ra, 0x14($sp)
.L801E0CD8_ovl17:
/* 216F88 801E0CD8 AFA40018 */  sw         $a0, 0x18($sp)
/* 216F8C 801E0CDC 8DC30000 */  lw         $v1, 0x0($t6)
.L801E0CE0_ovl15:
/* 216F90 801E0CE0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 216F94 801E0CE4 44801000 */  mtc1       $zero, $f2
/* 216F98 801E0CE8 00031880 */  sll        $v1, $v1, 2
/* 216F9C 801E0CEC 00230821 */  addu       $at, $at, $v1
/* 216FA0 801E0CF0 C420A6E0 */  lwc1       $f0, %lo(D_800EA6E0)($at)
/* 216FA4 801E0CF4 46001032 */  c.eq.s     $f2, $f0
/* 216FA8 801E0CF8 00000000 */  nop
/* 216FAC 801E0CFC 45010016 */  bc1t       .L801E0D58_ovl16
glabel func_801E0D00_ovl17
/* 216FB0 801E0D00 00000000 */   nop
/* 216FB4 801E0D04 4600103C */  c.lt.s     $f2, $f0
.L801E0D08_ovl12:
/* 216FB8 801E0D08 00000000 */  nop
glabel func_801E0D0C_ovl12
/* 216FBC 801E0D0C 4500000A */  bc1f       .L801E0D38_ovl16
/* 216FC0 801E0D10 00000000 */   nop
.L801E0D14_ovl10:
/* 216FC4 801E0D14 0C07818A */  jal        func_801E0628_ovl16
/* 216FC8 801E0D18 00000000 */   nop
/* 216FCC 801E0D1C 0C0781C9 */  jal        func_801E0724_ovl16
/* 216FD0 801E0D20 00000000 */   nop
glabel func_801E0D24_ovl15
/* 216FD4 801E0D24 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 216FD8 801E0D28 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 216FDC 801E0D2C 8DE30000 */  lw         $v1, 0x0($t7)
/* 216FE0 801E0D30 10000009 */  b          .L801E0D58_ovl16
/* 216FE4 801E0D34 00031880 */   sll       $v1, $v1, 2
.L801E0D38_ovl16:
/* 216FE8 801E0D38 0C0781AB */  jal        func_801E06AC_ovl16
/* 216FEC 801E0D3C 00000000 */   nop
.L801E0D40_ovl15:
/* 216FF0 801E0D40 0C0781EA */  jal        func_801E07A8_ovl16
.L801E0D44_ovl17:
/* 216FF4 801E0D44 00000000 */   nop
/* 216FF8 801E0D48 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 216FFC 801E0D4C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 217000 801E0D50 8F030000 */  lw         $v1, 0x0($t8)
/* 217004 801E0D54 00031880 */  sll        $v1, $v1, 2
.L801E0D58_ovl16:
/* 217008 801E0D58 3C01800F */  lui        $at, %hi(D_800E8920)
/* 21700C 801E0D5C 00230821 */  addu       $at, $at, $v1
.L801E0D60_ovl15:
/* 217010 801E0D60 0C076D00 */  jal        func_801DB400_ovl16
glabel func_801E0D64_ovl12
/* 217014 801E0D64 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 217018 801E0D68 3C02801F */  lui        $v0, %hi(D_801F0120_ovl16)
/* 21701C 801E0D6C 24420120 */  addiu      $v0, $v0, %lo(D_801F0120_ovl16)
glabel func_801E0D70_ovl14
/* 217020 801E0D70 8C590000 */  lw         $t9, 0x0($v0)
/* 217024 801E0D74 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
glabel func_801E0D78_ovl14
/* 217028 801E0D78 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 21702C 801E0D7C 1F20000B */  bgtz       $t9, .L801E0DAC_ovl16
.L801E0D80_ovl10:
/* 217030 801E0D80 00002025 */   or        $a0, $zero, $zero
/* 217034 801E0D84 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
.L801E0D88_ovl15:
/* 217038 801E0D88 3C0C800E */  lui        $t4, %hi(D_800E1B50)
/* 21703C 801E0D8C 3C08801E */  lui        $t0, %hi(func_801D9558_ovl9)
/* 217040 801E0D90 8D2A0000 */  lw         $t2, 0x0($t1)
.L801E0D94_ovl15:
/* 217044 801E0D94 25089558 */  addiu      $t0, $t0, %lo(func_801D9558_ovl9)
/* 217048 801E0D98 000A5880 */  sll        $t3, $t2, 2
/* 21704C 801E0D9C 018B6021 */  addu       $t4, $t4, $t3
/* 217050 801E0DA0 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 217054 801E0DA4 1000000A */  b          .L801E0DD0_ovl16
/* 217058 801E0DA8 AD88008C */   sw        $t0, 0x8C($t4)
.L801E0DAC_ovl16:
/* 21705C 801E0DAC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 217060 801E0DB0 3C19800E */  lui        $t9, %hi(D_800E1B50)
.L801E0DB4_ovl17:
/* 217064 801E0DB4 3C0D801E */  lui        $t5, %hi(func_801D94D4_ovl9 + 0x3C)
/* 217068 801E0DB8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21706C 801E0DBC 25AD9510 */  addiu      $t5, $t5, %lo(func_801D94D4_ovl9 + 0x3C)
.L801E0DC0_ovl17:
/* 217070 801E0DC0 000FC080 */  sll        $t8, $t7, 2
/* 217074 801E0DC4 0338C821 */  addu       $t9, $t9, $t8
/* 217078 801E0DC8 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 21707C 801E0DCC AF2D008C */  sw         $t5, 0x8C($t9)
.L801E0DD0_ovl16:
/* 217080 801E0DD0 3C09800D */  lui        $t1, %hi(D_800D7098 + 0x18)
.L801E0DD4_ovl15:
/* 217084 801E0DD4 8D2970B0 */  lw         $t1, %lo(D_800D7098 + 0x18)($t1)
/* 217088 801E0DD8 00002825 */  or         $a1, $zero, $zero
/* 21708C 801E0DDC 15200004 */  bnez       $t1, .L801E0DF0_ovl16
.L801E0DE0_ovl12:
/* 217090 801E0DE0 00000000 */   nop
.L801E0DE4_ovl15:
/* 217094 801E0DE4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 217098 801E0DE8 1D400005 */  bgtz       $t2, .L801E0E00_ovl16
/* 21709C 801E0DEC 00000000 */   nop
.L801E0DF0_ovl16:
/* 2170A0 801E0DF0 0C0770C5 */  jal        func_801DC314_ovl16
/* 2170A4 801E0DF4 00003025 */   or        $a2, $zero, $zero
glabel func_801E0DF8_ovl12
/* 2170A8 801E0DF8 10000003 */  b          .L801E0E08_ovl16
.L801E0DFC_ovl9:
/* 2170AC 801E0DFC 00000000 */   nop
.L801E0E00_ovl16:
/* 2170B0 801E0E00 0C076DA6 */  jal        func_801DB698_ovl16
/* 2170B4 801E0E04 00002025 */   or        $a0, $zero, $zero
.L801E0E08_ovl16:
/* 2170B8 801E0E08 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 2170BC 801E0E0C 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 2170C0 801E0E10 3C06800E */  lui        $a2, %hi(D_800DFBD0)
/* 2170C4 801E0E14 24C6FBD0 */  addiu      $a2, $a2, %lo(D_800DFBD0)
/* 2170C8 801E0E18 8D630000 */  lw         $v1, 0x0($t3)
/* 2170CC 801E0E1C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 2170D0 801E0E20 44812000 */  mtc1       $at, $f4
glabel func_801E0E24_ovl9
/* 2170D4 801E0E24 00031880 */  sll        $v1, $v1, 2
/* 2170D8 801E0E28 00C34021 */  addu       $t0, $a2, $v1
/* 2170DC 801E0E2C 8D020000 */  lw         $v0, 0x0($t0)
.L801E0E30_ovl15:
/* 2170E0 801E0E30 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 2170E4 801E0E34 0303C021 */  addu       $t8, $t8, $v1
/* 2170E8 801E0E38 8C4C001C */  lw         $t4, 0x1C($v0)
.L801E0E3C_ovl17:
/* 2170EC 801E0E3C 3C0F801E */  lui        $t7, %hi(func_801D9558_ovl9 + 0x6C)
.L801E0E40_ovl15:
/* 2170F0 801E0E40 C586001C */  lwc1       $f6, 0x1C($t4)
.L801E0E44_ovl15:
/* 2170F4 801E0E44 4606203C */  c.lt.s     $f4, $f6
/* 2170F8 801E0E48 00000000 */  nop
/* 2170FC 801E0E4C 45010009 */  bc1t       .L801E0E74_ovl16
/* 217100 801E0E50 00000000 */   nop
/* 217104 801E0E54 8C4E000C */  lw         $t6, 0xC($v0)
/* 217108 801E0E58 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* 21710C 801E0E5C 44815000 */  mtc1       $at, $f10
/* 217110 801E0E60 C5C8001C */  lwc1       $f8, 0x1C($t6)
/* 217114 801E0E64 460A403C */  c.lt.s     $f8, $f10
.L801E0E68_ovl10:
/* 217118 801E0E68 00000000 */  nop
/* 21711C 801E0E6C 45020022 */  bc1fl      .L801E0EF8_ovl16
/* 217120 801E0E70 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E0E74_ovl16:
/* 217124 801E0E74 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
glabel func_801E0E78_ovl10
/* 217128 801E0E78 25EF95C4 */  addiu      $t7, $t7, %lo(func_801D9558_ovl9 + 0x6C)
/* 21712C 801E0E7C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
.L801E0E80_ovl13:
/* 217130 801E0E80 AF0F008C */  sw         $t7, 0x8C($t8)
/* 217134 801E0E84 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 217138 801E0E88 8DB90000 */  lw         $t9, 0x0($t5)
/* 21713C 801E0E8C 00194880 */  sll        $t1, $t9, 2
/* 217140 801E0E90 00C95021 */  addu       $t2, $a2, $t1
/* 217144 801E0E94 8D4B0000 */  lw         $t3, 0x0($t2)
/* 217148 801E0E98 8D640000 */  lw         $a0, 0x0($t3)
/* 21714C 801E0E9C 0C0771B9 */  jal        func_801DC6E4_ovl16
/* 217150 801E0EA0 00802825 */   or        $a1, $a0, $zero
/* 217154 801E0EA4 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 217158 801E0EA8 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 21715C 801E0EAC 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 217160 801E0EB0 3C08801E */  lui        $t0, %hi(func_801D9698_ovl9 + 0x4)
/* 217164 801E0EB4 8D8E0000 */  lw         $t6, 0x0($t4)
/* 217168 801E0EB8 2508969C */  addiu      $t0, $t0, %lo(func_801D9698_ovl9 + 0x4)
.L801E0EBC_ovl12:
/* 21716C 801E0EBC 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 217170 801E0EC0 000E7880 */  sll        $t7, $t6, 2
/* 217174 801E0EC4 030FC021 */  addu       $t8, $t8, $t7
/* 217178 801E0EC8 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 21717C 801E0ECC 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 217180 801E0ED0 AF08008C */  sw         $t0, 0x8C($t8)
/* 217184 801E0ED4 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 217188 801E0ED8 8DB90000 */  lw         $t9, 0x0($t5)
.L801E0EDC_ovl10:
/* 21718C 801E0EDC 00194880 */  sll        $t1, $t9, 2
/* 217190 801E0EE0 00491021 */  addu       $v0, $v0, $t1
/* 217194 801E0EE4 8C42FBD0 */  lw         $v0, %lo(D_800DFBD0)($v0)
/* 217198 801E0EE8 8C44001C */  lw         $a0, 0x1C($v0)
/* 21719C 801E0EEC 0C07720F */  jal        func_801DC83C_ovl16
.L801E0EF0_ovl12:
/* 2171A0 801E0EF0 8C45000C */   lw        $a1, 0xC($v0)
.L801E0EF4_ovl10:
/* 2171A4 801E0EF4 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E0EF8_ovl16:
/* 2171A8 801E0EF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2171AC 801E0EFC 03E00008 */  jr         $ra
/* 2171B0 801E0F00 00000000 */   nop
