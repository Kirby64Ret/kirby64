glabel func_801E7ED4_ovl10
/* 1D8C44 801E7ED4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D8C48 801E7ED8 AFA40018 */  sw         $a0, 0x18($sp)
.L801E7EDC_ovl9:
/* 1D8C4C 801E7EDC 3C048005 */  lui        $a0, %hi(D_8004A7C4)
glabel func_801E7EE0_ovl16
/* 1D8C50 801E7EE0 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 1D8C54 801E7EE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D8C58 801E7EE8 3C0E800E */  lui        $t6, %hi(D_800E6310)
.L801E7EEC_ovl9:
/* 1D8C5C 801E7EEC 8C820000 */  lw         $v0, 0x0($a0)
.L801E7EF0_ovl9:
/* 1D8C60 801E7EF0 00021080 */  sll        $v0, $v0, 2
/* 1D8C64 801E7EF4 01C27021 */  addu       $t6, $t6, $v0
/* 1D8C68 801E7EF8 8DCE6310 */  lw         $t6, %lo(D_800E6310)($t6)
/* 1D8C6C 801E7EFC 51C0003F */  beql       $t6, $zero, .L801E7FFC_ovl10
/* 1D8C70 801E7F00 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1D8C74 801E7F04 44802000 */  mtc1       $zero, $f4
/* 1D8C78 801E7F08 3C01800E */  lui        $at, %hi(D_800E64D0)
glabel func_801E7F0C_ovl16
/* 1D8C7C 801E7F0C 00220821 */  addu       $at, $at, $v0
/* 1D8C80 801E7F10 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 1D8C84 801E7F14 8C820000 */  lw         $v0, 0x0($a0)
/* 1D8C88 801E7F18 3C0F800E */  lui        $t7, %hi(D_800DD8D0)
/* 1D8C8C 801E7F1C 3C05800F */  lui        $a1, %hi(D_800E9FE0)
/* 1D8C90 801E7F20 00021080 */  sll        $v0, $v0, 2
/* 1D8C94 801E7F24 01E27821 */  addu       $t7, $t7, $v0
/* 1D8C98 801E7F28 8DEFD8D0 */  lw         $t7, %lo(D_800DD8D0)($t7)
/* 1D8C9C 801E7F2C 24A59FE0 */  addiu      $a1, $a1, %lo(D_800E9FE0)
/* 1D8CA0 801E7F30 00A21821 */  addu       $v1, $a1, $v0
glabel func_801E7F34_ovl9
/* 1D8CA4 801E7F34 000FC782 */  srl        $t8, $t7, 30
/* 1D8CA8 801E7F38 53000030 */  beql       $t8, $zero, .L801E7FFC_ovl10
/* 1D8CAC 801E7F3C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1D8CB0 801E7F40 8C790000 */  lw         $t9, 0x0($v1)
/* 1D8CB4 801E7F44 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1D8CB8 801E7F48 44813000 */  mtc1       $at, $f6
/* 1D8CBC 801E7F4C 00194023 */  negu       $t0, $t9
/* 1D8CC0 801E7F50 AC680000 */  sw         $t0, 0x0($v1)
/* 1D8CC4 801E7F54 8C890000 */  lw         $t1, 0x0($a0)
/* 1D8CC8 801E7F58 3C040001 */  lui        $a0, (0x103BA >> 16)
/* 1D8CCC 801E7F5C 00095080 */  sll        $t2, $t1, 2
/* 1D8CD0 801E7F60 00AA5821 */  addu       $t3, $a1, $t2
/* 1D8CD4 801E7F64 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1D8CD8 801E7F68 448C4000 */  mtc1       $t4, $f8
/* 1D8CDC 801E7F6C 00000000 */  nop
/* 1D8CE0 801E7F70 468042A0 */  cvt.s.w    $f10, $f8
/* 1D8CE4 801E7F74 460A3032 */  c.eq.s     $f6, $f10
/* 1D8CE8 801E7F78 00000000 */  nop
/* 1D8CEC 801E7F7C 45000009 */  bc1f       .L801E7FA4_ovl10
/* 1D8CF0 801E7F80 00000000 */   nop
/* 1D8CF4 801E7F84 3C040001 */  lui        $a0, (0x103B8 >> 16)
/* 1D8CF8 801E7F88 0C02A7A9 */  jal        func_800A9EA4
/* 1D8CFC 801E7F8C 348403B8 */   ori       $a0, $a0, (0x103B8 & 0xFFFF)
/* 1D8D00 801E7F90 3C040001 */  lui        $a0, (0x103B7 >> 16)
/* 1D8D04 801E7F94 0C02A7A9 */  jal        func_800A9EA4
/* 1D8D08 801E7F98 348403B7 */   ori       $a0, $a0, (0x103B7 & 0xFFFF)
/* 1D8D0C 801E7F9C 10000006 */  b          .L801E7FB8_ovl10
/* 1D8D10 801E7FA0 00000000 */   nop
.L801E7FA4_ovl10:
/* 1D8D14 801E7FA4 0C02A7A9 */  jal        func_800A9EA4
/* 1D8D18 801E7FA8 348403BA */   ori       $a0, $a0, (0x103BA & 0xFFFF)
/* 1D8D1C 801E7FAC 3C040001 */  lui        $a0, (0x103B9 >> 16)
/* 1D8D20 801E7FB0 0C02A7A9 */  jal        func_800A9EA4
/* 1D8D24 801E7FB4 348403B9 */   ori       $a0, $a0, (0x103B9 & 0xFFFF)
.L801E7FB8_ovl10:
/* 1D8D28 801E7FB8 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1D8D2C 801E7FBC 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1D8D30 801E7FC0 3C0E800F */  lui        $t6, %hi(D_800E9FE0)
/* 1D8D34 801E7FC4 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 1D8D38 801E7FC8 8DA20000 */  lw         $v0, 0x0($t5)
/* 1D8D3C 801E7FCC 44812000 */  mtc1       $at, $f4
/* 1D8D40 801E7FD0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D8D44 801E7FD4 00021080 */  sll        $v0, $v0, 2
/* 1D8D48 801E7FD8 01C27021 */  addu       $t6, $t6, $v0
/* 1D8D4C 801E7FDC 8DCE9FE0 */  lw         $t6, %lo(D_800E9FE0)($t6)
/* 1D8D50 801E7FE0 00220821 */  addu       $at, $at, $v0
/* 1D8D54 801E7FE4 448E8000 */  mtc1       $t6, $f16
/* 1D8D58 801E7FE8 00000000 */  nop
/* 1D8D5C 801E7FEC 468084A0 */  cvt.s.w    $f18, $f16
/* 1D8D60 801E7FF0 46049202 */  mul.s      $f8, $f18, $f4
/* 1D8D64 801E7FF4 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1D8D68 801E7FF8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E7FFC_ovl10:
/* 1D8D6C 801E7FFC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D8D70 801E8000 03E00008 */  jr         $ra
/* 1D8D74 801E8004 00000000 */   nop
