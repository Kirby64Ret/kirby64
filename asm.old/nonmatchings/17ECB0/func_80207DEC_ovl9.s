glabel func_80207DEC_ovl9
/* 1B5E3C 80207DEC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1B5E40 80207DF0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1B5E44 80207DF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B5E48 80207DF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B5E4C 80207DFC AFA40018 */  sw         $a0, 0x18($sp)
/* 1B5E50 80207E00 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1B5E54 80207E04 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1B5E58 80207E08 44802000 */  mtc1       $zero, $f4
/* 1B5E5C 80207E0C 000E7880 */  sll        $t7, $t6, 2
/* 1B5E60 80207E10 002F0821 */  addu       $at, $at, $t7
/* 1B5E64 80207E14 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 1B5E68 80207E18 8C580000 */  lw         $t8, 0x0($v0)
/* 1B5E6C 80207E1C 3C04800E */  lui        $a0, %hi(D_800E3750)
/* 1B5E70 80207E20 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* 1B5E74 80207E24 0018C880 */  sll        $t9, $t8, 2
/* 1B5E78 80207E28 00994021 */  addu       $t0, $a0, $t9
/* 1B5E7C 80207E2C E5040000 */  swc1       $f4, 0x0($t0)
/* 1B5E80 80207E30 8C430000 */  lw         $v1, 0x0($v0)
/* 1B5E84 80207E34 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1B5E88 80207E38 00031880 */  sll        $v1, $v1, 2
/* 1B5E8C 80207E3C 00834821 */  addu       $t1, $a0, $v1
/* 1B5E90 80207E40 C5260000 */  lwc1       $f6, 0x0($t1)
/* 1B5E94 80207E44 00230821 */  addu       $at, $at, $v1
/* 1B5E98 80207E48 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 1B5E9C 80207E4C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1B5EA0 80207E50 3C018022 */  lui        $at, %hi(D_8021DAD4_ovl9)
/* 1B5EA4 80207E54 C428DAD4 */  lwc1       $f8, %lo(D_8021DAD4_ovl9)($at)
/* 1B5EA8 80207E58 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1B5EAC 80207E5C 000A5880 */  sll        $t3, $t2, 2
/* 1B5EB0 80207E60 002B0821 */  addu       $at, $at, $t3
/* 1B5EB4 80207E64 E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
/* 1B5EB8 80207E68 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1B5EBC 80207E6C 0C02BB30 */  jal        func_800AECC0
/* 1B5EC0 80207E70 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1B5EC4 80207E74 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1B5EC8 80207E78 0C02BB48 */  jal        func_800AED20
/* 1B5ECC 80207E7C C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1B5ED0 80207E80 3C040001 */  lui        $a0, (0x101BD >> 16)
/* 1B5ED4 80207E84 0C02A7A9 */  jal        func_800A9EA4
/* 1B5ED8 80207E88 348401BD */   ori       $a0, $a0, (0x101BD & 0xFFFF)
/* 1B5EDC 80207E8C 0C02BE85 */  jal        func_800AFA14
/* 1B5EE0 80207E90 00000000 */   nop
/* 1B5EE4 80207E94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B5EE8 80207E98 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B5EEC 80207E9C 03E00008 */  jr         $ra
/* 1B5EF0 80207EA0 00000000 */   nop
