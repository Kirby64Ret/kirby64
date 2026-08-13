nonmatching func_801B793C_ovl7, 0x70

glabel func_801B793C_ovl7
    /* 15D9AC 801B793C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 15D9B0 801B7940 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 15D9B4 801B7944 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 15D9B8 801B7948 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 15D9BC 801B794C 8DC20000 */  lw         $v0, 0x0($t6)
    /* 15D9C0 801B7950 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* 15D9C4 801B7954 25EF98E0 */  addiu      $t7, $t7, %lo(D_800E98E0)
    /* 15D9C8 801B7958 00021080 */  sll        $v0, $v0, 2
    /* 15D9CC 801B795C 004F1821 */  addu       $v1, $v0, $t7
    /* 15D9D0 801B7960 8C650000 */  lw         $a1, 0x0($v1)
    /* 15D9D4 801B7964 14A00009 */  bnez       $a1, .L801B798C_ovl7
    /* 15D9D8 801B7968 24B8FFFF */   addiu     $t8, $a1, -0x1
    /* 15D9DC 801B796C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 15D9E0 801B7970 00822021 */  addu       $a0, $a0, $v0
    /* 15D9E4 801B7974 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
    /* 15D9E8 801B7978 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
    /* 15D9EC 801B797C 0C02C7B2 */  jal        assign_new_process_entry
    /* 15D9F0 801B7980 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 15D9F4 801B7984 10000006 */  b          .L801B79A0_ovl7
    /* 15D9F8 801B7988 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801B798C_ovl7:
    /* 15D9FC 801B798C 0C06835D */  jal        func_801A0D74_ovl7
    /* 15DA00 801B7990 AC780000 */   sw        $t8, 0x0($v1)
    /* 15DA04 801B7994 0C0680ED */  jal        func_801A03B4_ovl7
    /* 15DA08 801B7998 00000000 */   nop
    /* 15DA0C 801B799C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801B79A0_ovl7:
    /* 15DA10 801B79A0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 15DA14 801B79A4 03E00008 */  jr         $ra
    /* 15DA18 801B79A8 00000000 */   nop
endlabel func_801B793C_ovl7
.size func_801B793C_ovl7, . - func_801B793C_ovl7
    /* 15DA1C 801B79AC 00000000 */  nop
