glabel func_80208A58_ovl9
/* 1B6AA8 80208A58 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B6AAC 80208A5C 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 1B6AB0 80208A60 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1B6AB4 80208A64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B6AB8 80208A68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B6ABC 80208A6C AFA40018 */  sw         $a0, 0x18($sp)
/* 1B6AC0 80208A70 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1B6AC4 80208A74 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1B6AC8 80208A78 3C19801D */  lui        $t9, %hi(D_801CC64C)
/* 1B6ACC 80208A7C 000FC080 */  sll        $t8, $t7, 2
/* 1B6AD0 80208A80 00581021 */  addu       $v0, $v0, $t8
/* 1B6AD4 80208A84 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1B6AD8 80208A88 2739C64C */  addiu      $t9, $t9, %lo(D_801CC64C)
/* 1B6ADC 80208A8C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1B6AE0 80208A90 AC590098 */  sw         $t9, 0x98($v0)
/* 1B6AE4 80208A94 8C690000 */  lw         $t1, 0x0($v1)
/* 1B6AE8 80208A98 24080004 */  addiu      $t0, $zero, 0x4
/* 1B6AEC 80208A9C 3C040001 */  lui        $a0, (0x101FF >> 16)
/* 1B6AF0 80208AA0 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1B6AF4 80208AA4 348401FF */  ori        $a0, $a0, (0x101FF & 0xFFFF)
/* 1B6AF8 80208AA8 000A5880 */  sll        $t3, $t2, 2
/* 1B6AFC 80208AAC 002B0821 */  addu       $at, $at, $t3
/* 1B6B00 80208AB0 0C02A7A9 */  jal        func_800A9EA4
/* 1B6B04 80208AB4 AC28DFD0 */   sw        $t0, %lo(D_800DDFD0)($at)
/* 1B6B08 80208AB8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1B6B0C 80208ABC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1B6B10 80208AC0 44800000 */  mtc1       $zero, $f0
/* 1B6B14 80208AC4 3C05800E */  lui        $a1, %hi(D_800E6690)
/* 1B6B18 80208AC8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1B6B1C 80208ACC 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
/* 1B6B20 80208AD0 3C018022 */  lui        $at, %hi(D_8021DAE0_ovl9)
/* 1B6B24 80208AD4 000C6880 */  sll        $t5, $t4, 2
/* 1B6B28 80208AD8 C422DAE0 */  lwc1       $f2, %lo(D_8021DAE0_ovl9)($at)
/* 1B6B2C 80208ADC 00AD7021 */  addu       $t6, $a1, $t5
/* 1B6B30 80208AE0 E5C00000 */  swc1       $f0, 0x0($t6)
/* 1B6B34 80208AE4 8C430000 */  lw         $v1, 0x0($v0)
/* 1B6B38 80208AE8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1B6B3C 80208AEC 8FA40018 */  lw         $a0, 0x18($sp)
/* 1B6B40 80208AF0 00031880 */  sll        $v1, $v1, 2
/* 1B6B44 80208AF4 00A37821 */  addu       $t7, $a1, $v1
/* 1B6B48 80208AF8 C5E40000 */  lwc1       $f4, 0x0($t7)
/* 1B6B4C 80208AFC 00230821 */  addu       $at, $at, $v1
/* 1B6B50 80208B00 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 1B6B54 80208B04 8C580000 */  lw         $t8, 0x0($v0)
/* 1B6B58 80208B08 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1B6B5C 80208B0C 0018C880 */  sll        $t9, $t8, 2
/* 1B6B60 80208B10 00390821 */  addu       $at, $at, $t9
/* 1B6B64 80208B14 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
/* 1B6B68 80208B18 8C490000 */  lw         $t1, 0x0($v0)
/* 1B6B6C 80208B1C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1B6B70 80208B20 00095080 */  sll        $t2, $t1, 2
/* 1B6B74 80208B24 002A0821 */  addu       $at, $at, $t2
/* 1B6B78 80208B28 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1B6B7C 80208B2C 8C480000 */  lw         $t0, 0x0($v0)
/* 1B6B80 80208B30 3C01BFC0 */  lui        $at, (0xBFC00000 >> 16)
/* 1B6B84 80208B34 44813000 */  mtc1       $at, $f6
/* 1B6B88 80208B38 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1B6B8C 80208B3C 00085880 */  sll        $t3, $t0, 2
/* 1B6B90 80208B40 002B0821 */  addu       $at, $at, $t3
/* 1B6B94 80208B44 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 1B6B98 80208B48 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1B6B9C 80208B4C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1B6BA0 80208B50 000C6880 */  sll        $t5, $t4, 2
/* 1B6BA4 80208B54 002D0821 */  addu       $at, $at, $t5
/* 1B6BA8 80208B58 0C082391 */  jal        func_80208E44_ovl9
/* 1B6BAC 80208B5C E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* 1B6BB0 80208B60 0C02BE85 */  jal        func_800AFA14
/* 1B6BB4 80208B64 00000000 */   nop
/* 1B6BB8 80208B68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B6BBC 80208B6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B6BC0 80208B70 03E00008 */  jr         $ra
/* 1B6BC4 80208B74 00000000 */   nop
