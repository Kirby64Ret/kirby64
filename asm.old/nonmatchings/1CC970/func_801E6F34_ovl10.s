glabel func_801E6F34_ovl10
/* 1D7CA4 801E6F34 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D7CA8 801E6F38 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D7CAC 801E6F3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D7CB0 801E6F40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D7CB4 801E6F44 AFA40018 */  sw         $a0, 0x18($sp)
/* 1D7CB8 801E6F48 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1D7CBC 801E6F4C 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801E6F50_ovl9:
/* 1D7CC0 801E6F50 3C040001 */  lui        $a0, (0x10359 >> 16)
/* 1D7CC4 801E6F54 000E7880 */  sll        $t7, $t6, 2
/* 1D7CC8 801E6F58 002F0821 */  addu       $at, $at, $t7
/* 1D7CCC 801E6F5C AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 1D7CD0 801E6F60 8C580000 */  lw         $t8, 0x0($v0)
.L801E6F64_ovl16:
/* 1D7CD4 801E6F64 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D7CD8 801E6F68 34840359 */  ori        $a0, $a0, (0x10359 & 0xFFFF)
/* 1D7CDC 801E6F6C 0018C880 */  sll        $t9, $t8, 2
/* 1D7CE0 801E6F70 00390821 */  addu       $at, $at, $t9
/* 1D7CE4 801E6F74 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1D7CE8 801E6F78 8C480000 */  lw         $t0, 0x0($v0)
/* 1D7CEC 801E6F7C 3C01800F */  lui        $at, %hi(D_800EA360)
/* 1D7CF0 801E6F80 00084880 */  sll        $t1, $t0, 2
/* 1D7CF4 801E6F84 00290821 */  addu       $at, $at, $t1
.L801E6F88_ovl16:
/* 1D7CF8 801E6F88 AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
/* 1D7CFC 801E6F8C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1D7D00 801E6F90 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D7D04 801E6F94 000A5880 */  sll        $t3, $t2, 2
/* 1D7D08 801E6F98 002B0821 */  addu       $at, $at, $t3
glabel func_801E6F9C_ovl9
/* 1D7D0C 801E6F9C 0C02A7A9 */  jal        func_800A9EA4
.L801E6FA0_ovl16:
/* 1D7D10 801E6FA0 AC20DFD0 */   sw        $zero, %lo(D_800DDFD0)($at)
/* 1D7D14 801E6FA4 3C040001 */  lui        $a0, (0x10358 >> 16)
/* 1D7D18 801E6FA8 34840358 */  ori        $a0, $a0, (0x10358 & 0xFFFF)
/* 1D7D1C 801E6FAC 0C02AA19 */  jal        func_800AA864
/* 1D7D20 801E6FB0 24050001 */   addiu     $a1, $zero, 0x1
/* 1D7D24 801E6FB4 44806000 */  mtc1       $zero, $f12
/* 1D7D28 801E6FB8 0C02BB30 */  jal        func_800AECC0
/* 1D7D2C 801E6FBC 00000000 */   nop
.L801E6FC0_ovl16:
/* 1D7D30 801E6FC0 44806000 */  mtc1       $zero, $f12
/* 1D7D34 801E6FC4 0C02BB48 */  jal        func_800AED20
/* 1D7D38 801E6FC8 00000000 */   nop
/* 1D7D3C 801E6FCC 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1D7D40 801E6FD0 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1D7D44 801E6FD4 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D7D48 801E6FD8 240C0001 */  addiu      $t4, $zero, 0x1
/* 1D7D4C 801E6FDC 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1D7D50 801E6FE0 000E7880 */  sll        $t7, $t6, 2
.L801E6FE4_ovl9:
/* 1D7D54 801E6FE4 002F0821 */  addu       $at, $at, $t7
/* 1D7D58 801E6FE8 0C02BE85 */  jal        func_800AFA14
/* 1D7D5C 801E6FEC AC2C9E20 */   sw        $t4, %lo(D_800E9E20)($at)
/* 1D7D60 801E6FF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D7D64 801E6FF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D7D68 801E6FF8 03E00008 */  jr         $ra
/* 1D7D6C 801E6FFC 00000000 */   nop
