glabel func_801E8F90_ovl10
/* 1D9D00 801E8F90 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D9D04 801E8F94 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D9D08 801E8F98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D9D0C 801E8F9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D9D10 801E8FA0 AFA40018 */  sw         $a0, 0x18($sp)
/* 1D9D14 801E8FA4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1D9D18 801E8FA8 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D9D1C 801E8FAC 24180001 */  addiu      $t8, $zero, 0x1
/* 1D9D20 801E8FB0 000E7880 */  sll        $t7, $t6, 2
/* 1D9D24 801E8FB4 002F0821 */  addu       $at, $at, $t7
/* 1D9D28 801E8FB8 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1D9D2C 801E8FBC 8C590000 */  lw         $t9, 0x0($v0)
/* 1D9D30 801E8FC0 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1D9D34 801E8FC4 24090002 */  addiu      $t1, $zero, 0x2
/* 1D9D38 801E8FC8 00194080 */  sll        $t0, $t9, 2
/* 1D9D3C 801E8FCC 00280821 */  addu       $at, $at, $t0
/* 1D9D40 801E8FD0 AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
/* 1D9D44 801E8FD4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1D9D48 801E8FD8 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D9D4C 801E8FDC 3C0C801E */  lui        $t4, %hi(func_801DB1E0_ovl17)
/* 1D9D50 801E8FE0 000A5880 */  sll        $t3, $t2, 2
/* 1D9D54 801E8FE4 002B0821 */  addu       $at, $at, $t3
/* 1D9D58 801E8FE8 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
/* 1D9D5C 801E8FEC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1D9D60 801E8FF0 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1D9D64 801E8FF4 258CB1E0 */  addiu      $t4, $t4, %lo(func_801DB1E0_ovl17)
/* 1D9D68 801E8FF8 000D7080 */  sll        $t6, $t5, 2
/* 1D9D6C 801E8FFC 002E0821 */  addu       $at, $at, $t6
/* 1D9D70 801E9000 AC2CEF90 */  sw         $t4, %lo(D_800DEF90)($at)
/* 1D9D74 801E9004 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1D9D78 801E9008 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1D9D7C 801E900C 000FC880 */  sll        $t9, $t7, 2
/* 1D9D80 801E9010 00390821 */  addu       $at, $at, $t9
/* 1D9D84 801E9014 0C07973C */  jal        func_801E5CF0_ovl13
/* 1D9D88 801E9018 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 1D9D8C 801E901C 0C066D09 */  jal        func_8019B424_ovl7
/* 1D9D90 801E9020 8FA40018 */   lw        $a0, 0x18($sp)
/* 1D9D94 801E9024 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1D9D98 801E9028 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1D9D9C 801E902C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1D9DA0 801E9030 3C040001 */  lui        $a0, (0x10360 >> 16)
/* 1D9DA4 801E9034 8F080000 */  lw         $t0, 0x0($t8)
/* 1D9DA8 801E9038 34840360 */  ori        $a0, $a0, (0x10360 & 0xFFFF)
/* 1D9DAC 801E903C 00085080 */  sll        $t2, $t0, 2
/* 1D9DB0 801E9040 002A0821 */  addu       $at, $at, $t2
/* 1D9DB4 801E9044 0C02A7A9 */  jal        func_800A9EA4
/* 1D9DB8 801E9048 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1D9DBC 801E904C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D9DC0 801E9050 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D9DC4 801E9054 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1D9DC8 801E9058 8C430000 */  lw         $v1, 0x0($v0)
/* 1D9DCC 801E905C 00031880 */  sll        $v1, $v1, 2
/* 1D9DD0 801E9060 00230821 */  addu       $at, $at, $v1
/* 1D9DD4 801E9064 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1D9DD8 801E9068 3C01801F */  lui        $at, %hi(func_801F4B30_ovl10 + 0x1C)
/* 1D9DDC 801E906C C4264B4C */  lwc1       $f6, %lo(func_801F4B30_ovl10 + 0x1C)($at)
/* 1D9DE0 801E9070 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D9DE4 801E9074 00230821 */  addu       $at, $at, $v1
/* 1D9DE8 801E9078 46062202 */  mul.s      $f8, $f4, $f6
.L801E907C_ovl9:
/* 1D9DEC 801E907C E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1D9DF0 801E9080 8C490000 */  lw         $t1, 0x0($v0)
/* 1D9DF4 801E9084 3C014150 */  lui        $at, (0x41500000 >> 16)
/* 1D9DF8 801E9088 44815000 */  mtc1       $at, $f10
.L801E908C_ovl9:
/* 1D9DFC 801E908C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1D9E00 801E9090 00095880 */  sll        $t3, $t1, 2
/* 1D9E04 801E9094 002B0821 */  addu       $at, $at, $t3
/* 1D9E08 801E9098 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1D9E0C 801E909C 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1D9E10 801E90A0 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 1D9E14 801E90A4 44818000 */  mtc1       $at, $f16
/* 1D9E18 801E90A8 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1D9E1C 801E90AC 000D6080 */  sll        $t4, $t5, 2
/* 1D9E20 801E90B0 002C0821 */  addu       $at, $at, $t4
.L801E90B4_ovl9:
/* 1D9E24 801E90B4 0C02BE85 */  jal        func_800AFA14
/* 1D9E28 801E90B8 E4303750 */   swc1      $f16, %lo(D_800E3750)($at)
/* 1D9E2C 801E90BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D9E30 801E90C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D9E34 801E90C4 03E00008 */  jr         $ra
.L801E90C8_ovl9:
/* 1D9E38 801E90C8 00000000 */   nop
