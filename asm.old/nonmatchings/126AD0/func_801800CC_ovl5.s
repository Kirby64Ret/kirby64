glabel func_801800CC_ovl5
/* 12753C 801800CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 127540 801800D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 127544 801800D4 00002025 */  or         $a0, $zero, $zero
/* 127548 801800D8 00002825 */  or         $a1, $zero, $zero
/* 12754C 801800DC 0C0295D1 */  jal        func_800A5744
/* 127550 801800E0 00003025 */   or        $a2, $zero, $zero
/* 127554 801800E4 00002025 */  or         $a0, $zero, $zero
/* 127558 801800E8 24050010 */  addiu      $a1, $zero, 0x10
/* 12755C 801800EC 0C029685 */  jal        func_800A5A14
/* 127560 801800F0 24060002 */   addiu     $a2, $zero, 0x2
/* 127564 801800F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 127568 801800F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 12756C 801800FC 03E00008 */  jr         $ra
/* 127570 80180100 00000000 */   nop
