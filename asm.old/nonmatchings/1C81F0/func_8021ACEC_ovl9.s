glabel func_8021ACEC_ovl9
/* 1C8D3C 8021ACEC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C8D40 8021ACF0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C8D44 8021ACF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C8D48 8021ACF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C8D4C 8021ACFC AFA40018 */  sw         $a0, 0x18($sp)
/* 1C8D50 8021AD00 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1C8D54 8021AD04 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C8D58 8021AD08 3C040001 */  lui        $a0, (0x105E1 >> 16)
/* 1C8D5C 8021AD0C 000FC080 */  sll        $t8, $t7, 2
/* 1C8D60 8021AD10 00380821 */  addu       $at, $at, $t8
/* 1C8D64 8021AD14 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 1C8D68 8021AD18 0C02A7A9 */  jal        func_800A9EA4
/* 1C8D6C 8021AD1C 348405E1 */   ori       $a0, $a0, (0x105E1 & 0xFFFF)
/* 1C8D70 8021AD20 3C040001 */  lui        $a0, (0x105E0 >> 16)
/* 1C8D74 8021AD24 0C02A7A9 */  jal        func_800A9EA4
/* 1C8D78 8021AD28 348405E0 */   ori       $a0, $a0, (0x105E0 & 0xFFFF)
/* 1C8D7C 8021AD2C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1C8D80 8021AD30 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1C8D84 8021AD34 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1C8D88 8021AD38 8C620000 */  lw         $v0, 0x0($v1)
/* 1C8D8C 8021AD3C 00021080 */  sll        $v0, $v0, 2
/* 1C8D90 8021AD40 00220821 */  addu       $at, $at, $v0
/* 1C8D94 8021AD44 C424A6E0 */  lwc1       $f4, %lo(D_800EA6E0)($at)
/* 1C8D98 8021AD48 3C01800E */  lui        $at, %hi(D_800E3050)
/* 1C8D9C 8021AD4C 00220821 */  addu       $at, $at, $v0
/* 1C8DA0 8021AD50 E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 1C8DA4 8021AD54 8C620000 */  lw         $v0, 0x0($v1)
/* 1C8DA8 8021AD58 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1C8DAC 8021AD5C 00021080 */  sll        $v0, $v0, 2
/* 1C8DB0 8021AD60 00220821 */  addu       $at, $at, $v0
/* 1C8DB4 8021AD64 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* 1C8DB8 8021AD68 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 1C8DBC 8021AD6C 00220821 */  addu       $at, $at, $v0
/* 1C8DC0 8021AD70 0C02BE85 */  jal        func_800AFA14
/* 1C8DC4 8021AD74 E42633D0 */   swc1      $f6, %lo(D_800E33D0)($at)
/* 1C8DC8 8021AD78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C8DCC 8021AD7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C8DD0 8021AD80 03E00008 */  jr         $ra
/* 1C8DD4 8021AD84 00000000 */   nop
