nonmatching func_8016CB14_ovl5, 0x68

glabel func_8016CB14_ovl5
    /* 113F84 8016CB14 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 113F88 8016CB18 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 113F8C 8016CB1C AFB10018 */  sw         $s1, 0x18($sp)
    /* 113F90 8016CB20 AFB30020 */  sw         $s3, 0x20($sp)
    /* 113F94 8016CB24 AFB00014 */  sw         $s0, 0x14($sp)
    /* 113F98 8016CB28 3C11800D */  lui        $s1, %hi(D_800D7178)
    /* 113F9C 8016CB2C 3C128019 */  lui        $s2, %hi(D_8018E3C8_ovl5)
    /* 113FA0 8016CB30 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 113FA4 8016CB34 2652E3C8 */  addiu      $s2, $s2, %lo(D_8018E3C8_ovl5)
    /* 113FA8 8016CB38 26317178 */  addiu      $s1, $s1, %lo(D_800D7178)
    /* 113FAC 8016CB3C 00008025 */  or         $s0, $zero, $zero
    /* 113FB0 8016CB40 24130004 */  addiu      $s3, $zero, 0x4
  .L8016CB44_ovl5:
    /* 113FB4 8016CB44 0C05B293 */  jal        func_8016CA4C_ovl5
    /* 113FB8 8016CB48 02002025 */   or        $a0, $s0, $zero
    /* 113FBC 8016CB4C AE22000C */  sw         $v0, 0xC($s1)
    /* 113FC0 8016CB50 26100001 */  addiu      $s0, $s0, 0x1
    /* 113FC4 8016CB54 26310010 */  addiu      $s1, $s1, 0x10
    /* 113FC8 8016CB58 1613FFFA */  bne        $s0, $s3, .L8016CB44_ovl5
    /* 113FCC 8016CB5C 26520001 */   addiu     $s2, $s2, 0x1
    /* 113FD0 8016CB60 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 113FD4 8016CB64 8FB00014 */  lw         $s0, 0x14($sp)
    /* 113FD8 8016CB68 8FB10018 */  lw         $s1, 0x18($sp)
    /* 113FDC 8016CB6C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 113FE0 8016CB70 8FB30020 */  lw         $s3, 0x20($sp)
    /* 113FE4 8016CB74 03E00008 */  jr         $ra
    /* 113FE8 8016CB78 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8016CB14_ovl5
.size func_8016CB14_ovl5, . - func_8016CB14_ovl5
