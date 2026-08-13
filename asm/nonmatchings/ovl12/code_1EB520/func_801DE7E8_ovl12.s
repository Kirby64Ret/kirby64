nonmatching func_801DE7E8_ovl12, 0xC0

glabel func_801DE7E8_ovl12
    /* 1EEB28 801DE7E8 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1EEB2C 801DE7EC 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1EEB30 801DE7F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EEB34 801DE7F4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EEB38 801DE7F8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EEB3C 801DE7FC 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EEB40 801DE800 3C04800D */  lui        $a0, %hi(D_800D7098)
    /* 1EEB44 801DE804 3C09800E */  lui        $t1, %hi(gEntityFuncListIDArray)
    /* 1EEB48 801DE808 3C0E800F */  lui        $t6, %hi(D_800E9560)
    /* 1EEB4C 801DE80C 00021080 */  sll        $v0, $v0, 2
    /* 1EEB50 801DE810 2529DC50 */  addiu      $t1, $t1, %lo(gEntityFuncListIDArray)
    /* 1EEB54 801DE814 24847098 */  addiu      $a0, $a0, %lo(D_800D7098)
    /* 1EEB58 801DE818 25CE9560 */  addiu      $t6, $t6, %lo(D_800E9560)
    /* 1EEB5C 801DE81C 8C990008 */  lw         $t9, 0x8($a0)
    /* 1EEB60 801DE820 004E3821 */  addu       $a3, $v0, $t6
    /* 1EEB64 801DE824 01227821 */  addu       $t7, $t1, $v0
    /* 1EEB68 801DE828 8DF80000 */  lw         $t8, 0x0($t7)
    /* 1EEB6C 801DE82C 8CE80000 */  lw         $t0, 0x0($a3)
    /* 1EEB70 801DE830 24010001 */  addiu      $at, $zero, 0x1
    /* 1EEB74 801DE834 13210003 */  beq        $t9, $at, .L801DE844_ovl12
    /* 1EEB78 801DE838 01183021 */   addu      $a2, $t0, $t8
    /* 1EEB7C 801DE83C 8C820010 */  lw         $v0, 0x10($a0)
    /* 1EEB80 801DE840 14400011 */  bnez       $v0, .L801DE888_ovl12
  .L801DE844_ovl12:
    /* 1EEB84 801DE844 250A0001 */   addiu     $t2, $t0, 0x1
    /* 1EEB88 801DE848 ACEA0000 */  sw         $t2, 0x0($a3)
    /* 1EEB8C 801DE84C 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 1EEB90 801DE850 24C6FFFE */  addiu      $a2, $a2, -0x2
    /* 1EEB94 801DE854 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1EEB98 801DE858 000B6080 */  sll        $t4, $t3, 2
    /* 1EEB9C 801DE85C 012C6821 */  addu       $t5, $t1, $t4
    /* 1EEBA0 801DE860 ADA60000 */  sw         $a2, 0x0($t5)
    /* 1EEBA4 801DE864 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1EEBA8 801DE868 3C05801E */  lui        $a1, %hi(func_801DE3D4_ovl12)
    /* 1EEBAC 801DE86C 24A5E3D4 */  addiu      $a1, $a1, %lo(func_801DE3D4_ovl12)
    /* 1EEBB0 801DE870 000E7880 */  sll        $t7, $t6, 2
    /* 1EEBB4 801DE874 008F2021 */  addu       $a0, $a0, $t7
    /* 1EEBB8 801DE878 0C02C7B2 */  jal        assign_new_process_entry
    /* 1EEBBC 801DE87C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1EEBC0 801DE880 10000006 */  b          .L801DE89C_ovl12
    /* 1EEBC4 801DE884 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801DE888_ovl12:
    /* 1EEBC8 801DE888 54400004 */  bnel       $v0, $zero, .L801DE89C_ovl12
    /* 1EEBCC 801DE88C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EEBD0 801DE890 0C07737F */  jal        func_801DCDFC_ovl12
    /* 1EEBD4 801DE894 00000000 */   nop
    /* 1EEBD8 801DE898 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DE89C_ovl12:
    /* 1EEBDC 801DE89C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EEBE0 801DE8A0 03E00008 */  jr         $ra
    /* 1EEBE4 801DE8A4 00000000 */   nop
endlabel func_801DE7E8_ovl12
.size func_801DE7E8_ovl12, . - func_801DE7E8_ovl12
