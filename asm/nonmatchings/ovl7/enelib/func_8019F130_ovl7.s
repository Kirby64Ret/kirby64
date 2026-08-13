nonmatching func_8019F130_ovl7, 0xBC

glabel func_8019F130_ovl7
    /* 1451A0 8019F130 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1451A4 8019F134 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 1451A8 8019F138 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1451AC 8019F13C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1451B0 8019F140 8CC20000 */  lw         $v0, 0x0($a2)
    /* 1451B4 8019F144 3C09800E */  lui        $t1, %hi(D_800E7CE0)
    /* 1451B8 8019F148 25297CE0 */  addiu      $t1, $t1, %lo(D_800E7CE0)
    /* 1451BC 8019F14C 00021080 */  sll        $v0, $v0, 2
    /* 1451C0 8019F150 01221821 */  addu       $v1, $t1, $v0
    /* 1451C4 8019F154 8C650000 */  lw         $a1, 0x0($v1)
    /* 1451C8 8019F158 3C08800E */  lui        $t0, %hi(D_800E1B50)
    /* 1451CC 8019F15C 01024021 */  addu       $t0, $t0, $v0
    /* 1451D0 8019F160 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
    /* 1451D4 8019F164 24AEFFFF */  addiu      $t6, $a1, -0x1
    /* 1451D8 8019F168 1CA00005 */  bgtz       $a1, .L8019F180_ovl7
    /* 1451DC 8019F16C AC6E0000 */   sw        $t6, 0x0($v1)
    /* 1451E0 8019F170 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 1451E4 8019F174 000FC080 */  sll        $t8, $t7, 2
    /* 1451E8 8019F178 0138C821 */  addu       $t9, $t1, $t8
    /* 1451EC 8019F17C AF200000 */  sw         $zero, 0x0($t9)
  .L8019F180_ovl7:
    /* 1451F0 8019F180 910A003D */  lbu        $t2, 0x3D($t0)
    /* 1451F4 8019F184 51400016 */  beql       $t2, $zero, .L8019F1E0_ovl7
    /* 1451F8 8019F188 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1451FC 8019F18C 8CCB0000 */  lw         $t3, 0x0($a2)
    /* 145200 8019F190 3C02800E */  lui        $v0, %hi(D_800E77A0)
    /* 145204 8019F194 000B6040 */  sll        $t4, $t3, 1
    /* 145208 8019F198 004C1021 */  addu       $v0, $v0, $t4
    /* 14520C 8019F19C 944277A0 */  lhu        $v0, %lo(D_800E77A0)($v0)
    /* 145210 8019F1A0 2841004E */  slti       $at, $v0, 0x4E
    /* 145214 8019F1A4 14200003 */  bnez       $at, .L8019F1B4_ovl7
    /* 145218 8019F1A8 2841005D */   slti      $at, $v0, 0x5D
    /* 14521C 8019F1AC 5420000C */  bnel       $at, $zero, .L8019F1E0_ovl7
    /* 145220 8019F1B0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8019F1B4_ovl7:
    /* 145224 8019F1B4 8D0D006C */  lw         $t5, 0x6C($t0)
    /* 145228 8019F1B8 24010002 */  addiu      $at, $zero, 0x2
    /* 14522C 8019F1BC 15A10005 */  bne        $t5, $at, .L8019F1D4_ovl7
    /* 145230 8019F1C0 00000000 */   nop
    /* 145234 8019F1C4 0C068EB8 */  jal        func_801A3AE0_ovl7
    /* 145238 8019F1C8 00000000 */   nop
    /* 14523C 8019F1CC 10000004 */  b          .L8019F1E0_ovl7
    /* 145240 8019F1D0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8019F1D4_ovl7:
    /* 145244 8019F1D4 0C068F83 */  jal        func_801A3E0C_ovl7
    /* 145248 8019F1D8 00000000 */   nop
    /* 14524C 8019F1DC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8019F1E0_ovl7:
    /* 145250 8019F1E0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 145254 8019F1E4 03E00008 */  jr         $ra
    /* 145258 8019F1E8 00000000 */   nop
endlabel func_8019F130_ovl7
.size func_8019F130_ovl7, . - func_8019F130_ovl7
