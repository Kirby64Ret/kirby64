glabel func_801C0048_ovl7
/* 1660B8 801C0048 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1660BC 801C004C 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 1660C0 801C0050 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1660C4 801C0054 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1660C8 801C0058 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1660CC 801C005C AFA40018 */  sw         $a0, 0x18($sp)
/* 1660D0 801C0060 8DC30000 */  lw         $v1, 0x0($t6)
/* 1660D4 801C0064 3C04800E */  lui        $a0, %hi(D_800E1B50)
/* 1660D8 801C0068 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1660DC 801C006C 00031880 */  sll        $v1, $v1, 2
/* 1660E0 801C0070 00832021 */  addu       $a0, $a0, $v1
/* 1660E4 801C0074 8C841B50 */  lw         $a0, %lo(D_800E1B50)($a0)
/* 1660E8 801C0078 00230821 */  addu       $at, $at, $v1
/* 1660EC 801C007C 240F0003 */  addiu      $t7, $zero, 0x3
/* 1660F0 801C0080 3C18801D */  lui        $t8, %hi(D_801CD120_ovl7)
/* 1660F4 801C0084 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 1660F8 801C0088 2718D120 */  addiu      $t8, $t8, %lo(D_801CD120_ovl7)
/* 1660FC 801C008C AC980098 */  sw         $t8, 0x98($a0)
/* 166100 801C0090 8CA20000 */  lw         $v0, 0x0($a1)
/* 166104 801C0094 3C01800F */  lui        $at, %hi(D_800E8920)
/* 166108 801C0098 44802000 */  mtc1       $zero, $f4
/* 16610C 801C009C 8C590000 */  lw         $t9, 0x0($v0)
/* 166110 801C00A0 00194080 */  sll        $t0, $t9, 2
/* 166114 801C00A4 00280821 */  addu       $at, $at, $t0
/* 166118 801C00A8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 16611C 801C00AC 8C490000 */  lw         $t1, 0x0($v0)
/* 166120 801C00B0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 166124 801C00B4 00095080 */  sll        $t2, $t1, 2
/* 166128 801C00B8 002A0821 */  addu       $at, $at, $t2
/* 16612C 801C00BC E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
/* 166130 801C00C0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 166134 801C00C4 3C01801D */  lui        $at, %hi(D_801CE630_ovl7)
/* 166138 801C00C8 C426E630 */  lwc1       $f6, %lo(D_801CE630_ovl7)($at)
/* 16613C 801C00CC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 166140 801C00D0 000B6080 */  sll        $t4, $t3, 2
/* 166144 801C00D4 002C0821 */  addu       $at, $at, $t4
/* 166148 801C00D8 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 16614C 801C00DC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 166150 801C00E0 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 166154 801C00E4 44814000 */  mtc1       $at, $f8
/* 166158 801C00E8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 16615C 801C00EC 000D7080 */  sll        $t6, $t5, 2
/* 166160 801C00F0 002E0821 */  addu       $at, $at, $t6
/* 166164 801C00F4 0C02BE85 */  jal        func_800AFA14
/* 166168 801C00F8 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
/* 16616C 801C00FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 166170 801C0100 27BD0018 */  addiu      $sp, $sp, 0x18
/* 166174 801C0104 03E00008 */  jr         $ra
/* 166178 801C0108 00000000 */   nop
