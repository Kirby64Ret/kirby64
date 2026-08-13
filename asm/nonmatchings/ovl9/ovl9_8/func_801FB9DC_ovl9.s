nonmatching func_801FB9DC_ovl9, 0xA8

glabel func_801FB9DC_ovl9
    /* 1A9A2C 801FB9DC 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1A9A30 801FB9E0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1A9A34 801FB9E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1A9A38 801FB9E8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1A9A3C 801FB9EC AFA40020 */  sw         $a0, 0x20($sp)
    /* 1A9A40 801FB9F0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 1A9A44 801FB9F4 3C03800F */  lui        $v1, %hi(D_800E9AA0)
    /* 1A9A48 801FB9F8 24040003 */  addiu      $a0, $zero, 0x3
    /* 1A9A4C 801FB9FC 000FC080 */  sll        $t8, $t7, 2
    /* 1A9A50 801FBA00 00781821 */  addu       $v1, $v1, $t8
    /* 1A9A54 801FBA04 8C639AA0 */  lw         $v1, %lo(D_800E9AA0)($v1)
    /* 1A9A58 801FBA08 0C006291 */  jal        random_soft_s32_range
    /* 1A9A5C 801FBA0C AFA3001C */   sw        $v1, 0x1C($sp)
    /* 1A9A60 801FBA10 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 1A9A64 801FBA14 3C04800F */  lui        $a0, %hi(D_800E9AA0)
    /* 1A9A68 801FBA18 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1A9A6C 801FBA1C 0062C823 */  subu       $t9, $v1, $v0
    /* 1A9A70 801FBA20 2728FFFD */  addiu      $t0, $t9, -0x3
    /* 1A9A74 801FBA24 24A5A7C4 */  addiu      $a1, $a1, %lo(omCurrentObj)
    /* 1A9A78 801FBA28 05000009 */  bltz       $t0, .L801FBA50_ovl9
    /* 1A9A7C 801FBA2C 24849AA0 */   addiu     $a0, $a0, %lo(D_800E9AA0)
    /* 1A9A80 801FBA30 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 1A9A84 801FBA34 00624823 */  subu       $t1, $v1, $v0
    /* 1A9A88 801FBA38 252AFFFD */  addiu      $t2, $t1, -0x3
    /* 1A9A8C 801FBA3C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 1A9A90 801FBA40 000C6880 */  sll        $t5, $t4, 2
    /* 1A9A94 801FBA44 008D7021 */  addu       $t6, $a0, $t5
    /* 1A9A98 801FBA48 10000008 */  b          .L801FBA6C_ovl9
    /* 1A9A9C 801FBA4C ADCA0000 */   sw        $t2, 0x0($t6)
  .L801FBA50_ovl9:
    /* 1A9AA0 801FBA50 8CB90000 */  lw         $t9, 0x0($a1)
    /* 1A9AA4 801FBA54 00627823 */  subu       $t7, $v1, $v0
    /* 1A9AA8 801FBA58 25F80005 */  addiu      $t8, $t7, 0x5
    /* 1A9AAC 801FBA5C 8F280000 */  lw         $t0, 0x0($t9)
    /* 1A9AB0 801FBA60 00084880 */  sll        $t1, $t0, 2
    /* 1A9AB4 801FBA64 00895821 */  addu       $t3, $a0, $t1
    /* 1A9AB8 801FBA68 AD780000 */  sw         $t8, 0x0($t3)
  .L801FBA6C_ovl9:
    /* 1A9ABC 801FBA6C 0C07ED85 */  jal        func_801FB614_ovl9
    /* 1A9AC0 801FBA70 00000000 */   nop
    /* 1A9AC4 801FBA74 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1A9AC8 801FBA78 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1A9ACC 801FBA7C 03E00008 */  jr         $ra
    /* 1A9AD0 801FBA80 00000000 */   nop
endlabel func_801FB9DC_ovl9
.size func_801FB9DC_ovl9, . - func_801FB9DC_ovl9
    /* 1A9AD4 801FBA84 00000000 */  nop
    /* 1A9AD8 801FBA88 00000000 */  nop
    /* 1A9ADC 801FBA8C 00000000 */  nop
    /* 1A9AE0 801FBA90 00000000 */  nop
    /* 1A9AE4 801FBA94 00000000 */  nop
    /* 1A9AE8 801FBA98 00000000 */  nop
    /* 1A9AEC 801FBA9C 00000000 */  nop
