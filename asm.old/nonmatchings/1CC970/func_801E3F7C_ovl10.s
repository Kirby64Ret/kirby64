glabel func_801E3F7C_ovl10
/* 1D4CEC 801E3F7C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D4CF0 801E3F80 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D4CF4 801E3F84 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801E3F88_ovl9:
/* 1D4CF8 801E3F88 AFBF0014 */  sw         $ra, 0x14($sp)
.L801E3F8C_ovl17:
/* 1D4CFC 801E3F8C AFA40018 */  sw         $a0, 0x18($sp)
/* 1D4D00 801E3F90 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1D4D04 801E3F94 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1D4D08 801E3F98 3C040001 */  lui        $a0, (0x10339 >> 16)
/* 1D4D0C 801E3F9C 000E7880 */  sll        $t7, $t6, 2
/* 1D4D10 801E3FA0 002F0821 */  addu       $at, $at, $t7
/* 1D4D14 801E3FA4 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 1D4D18 801E3FA8 8C580000 */  lw         $t8, 0x0($v0)
.L801E3FAC_ovl16:
/* 1D4D1C 801E3FAC 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D4D20 801E3FB0 34840339 */  ori        $a0, $a0, (0x10339 & 0xFFFF)
glabel func_801E3FB4_ovl9
/* 1D4D24 801E3FB4 0018C880 */  sll        $t9, $t8, 2
/* 1D4D28 801E3FB8 00390821 */  addu       $at, $at, $t9
/* 1D4D2C 801E3FBC AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1D4D30 801E3FC0 8C480000 */  lw         $t0, 0x0($v0)
.L801E3FC4_ovl17:
/* 1D4D34 801E3FC4 3C01800F */  lui        $at, %hi(D_800EA520)
.L801E3FC8_ovl16:
/* 1D4D38 801E3FC8 00084880 */  sll        $t1, $t0, 2
.L801E3FCC_ovl17:
/* 1D4D3C 801E3FCC 00290821 */  addu       $at, $at, $t1
/* 1D4D40 801E3FD0 AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* 1D4D44 801E3FD4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1D4D48 801E3FD8 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D4D4C 801E3FDC 000A5880 */  sll        $t3, $t2, 2
/* 1D4D50 801E3FE0 002B0821 */  addu       $at, $at, $t3
glabel func_801E3FE4_ovl16
/* 1D4D54 801E3FE4 0C02A806 */  jal        func_800AA018
/* 1D4D58 801E3FE8 AC20DFD0 */   sw        $zero, %lo(D_800DDFD0)($at)
/* 1D4D5C 801E3FEC 3C040001 */  lui        $a0, (0x10338 >> 16)
/* 1D4D60 801E3FF0 34840338 */  ori        $a0, $a0, (0x10338 & 0xFFFF)
.L801E3FF4_ovl16:
/* 1D4D64 801E3FF4 0C02AA19 */  jal        func_800AA864
/* 1D4D68 801E3FF8 24050002 */   addiu     $a1, $zero, 0x2
/* 1D4D6C 801E3FFC 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
.L801E4000_ovl16:
/* 1D4D70 801E4000 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1D4D74 801E4004 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D4D78 801E4008 240C0001 */  addiu      $t4, $zero, 0x1
.L801E400C_ovl17:
/* 1D4D7C 801E400C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1D4D80 801E4010 000E7880 */  sll        $t7, $t6, 2
/* 1D4D84 801E4014 002F0821 */  addu       $at, $at, $t7
/* 1D4D88 801E4018 0C02BE85 */  jal        func_800AFA14
/* 1D4D8C 801E401C AC2C9E20 */   sw        $t4, %lo(D_800E9E20)($at)
.L801E4020_ovl17:
/* 1D4D90 801E4020 8FBF0014 */  lw         $ra, 0x14($sp)
glabel func_801E4024_ovl16
/* 1D4D94 801E4024 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D4D98 801E4028 03E00008 */  jr         $ra
/* 1D4D9C 801E402C 00000000 */   nop
