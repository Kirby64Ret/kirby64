glabel func_801E9128_ovl10
/* 1D9E98 801E9128 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D9E9C 801E912C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D9EA0 801E9130 AFA40000 */  sw         $a0, 0x0($sp)
/* 1D9EA4 801E9134 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1D9EA8 801E9138 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1D9EAC 801E913C 000E7880 */  sll        $t7, $t6, 2
/* 1D9EB0 801E9140 002F0821 */  addu       $at, $at, $t7
/* 1D9EB4 801E9144 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1D9EB8 801E9148 8C430000 */  lw         $v1, 0x0($v0)
.L801E914C_ovl9:
/* 1D9EBC 801E914C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1D9EC0 801E9150 00031880 */  sll        $v1, $v1, 2
/* 1D9EC4 801E9154 00230821 */  addu       $at, $at, $v1
/* 1D9EC8 801E9158 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1D9ECC 801E915C 3C01801F */  lui        $at, %hi(func_801F4B30_ovl10 + 0x20)
.L801E9160_ovl9:
/* 1D9ED0 801E9160 C4264B50 */  lwc1       $f6, %lo(func_801F4B30_ovl10 + 0x20)($at)
/* 1D9ED4 801E9164 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D9ED8 801E9168 00230821 */  addu       $at, $at, $v1
/* 1D9EDC 801E916C 46062202 */  mul.s      $f8, $f4, $f6
.L801E9170_ovl9:
/* 1D9EE0 801E9170 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1D9EE4 801E9174 8C580000 */  lw         $t8, 0x0($v0)
glabel func_801E9178_ovl16
/* 1D9EE8 801E9178 3C014150 */  lui        $at, (0x41500000 >> 16)
/* 1D9EEC 801E917C 44815000 */  mtc1       $at, $f10
.L801E9180_ovl9:
/* 1D9EF0 801E9180 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1D9EF4 801E9184 0018C880 */  sll        $t9, $t8, 2
/* 1D9EF8 801E9188 00390821 */  addu       $at, $at, $t9
/* 1D9EFC 801E918C E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1D9F00 801E9190 8C480000 */  lw         $t0, 0x0($v0)
/* 1D9F04 801E9194 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 1D9F08 801E9198 44818000 */  mtc1       $at, $f16
/* 1D9F0C 801E919C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1D9F10 801E91A0 00084880 */  sll        $t1, $t0, 2
/* 1D9F14 801E91A4 00290821 */  addu       $at, $at, $t1
/* 1D9F18 801E91A8 03E00008 */  jr         $ra
/* 1D9F1C 801E91AC E4303750 */   swc1      $f16, %lo(D_800E3750)($at)
