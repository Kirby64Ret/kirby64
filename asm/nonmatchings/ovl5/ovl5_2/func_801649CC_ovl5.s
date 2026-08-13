nonmatching func_801649CC_ovl5, 0x68

glabel func_801649CC_ovl5
    /* 10BE3C 801649CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 10BE40 801649D0 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 10BE44 801649D4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 10BE48 801649D8 AFB30020 */  sw         $s3, 0x20($sp)
    /* 10BE4C 801649DC AFB00014 */  sw         $s0, 0x14($sp)
    /* 10BE50 801649E0 3C11800D */  lui        $s1, %hi(D_800D7178)
    /* 10BE54 801649E4 3C128019 */  lui        $s2, %hi(D_8018E224_ovl5)
    /* 10BE58 801649E8 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 10BE5C 801649EC 2652E224 */  addiu      $s2, $s2, %lo(D_8018E224_ovl5)
    /* 10BE60 801649F0 26317178 */  addiu      $s1, $s1, %lo(D_800D7178)
    /* 10BE64 801649F4 00008025 */  or         $s0, $zero, $zero
    /* 10BE68 801649F8 24130004 */  addiu      $s3, $zero, 0x4
  .L801649FC_ovl5:
    /* 10BE6C 801649FC 0C059245 */  jal        func_80164914_ovl5
    /* 10BE70 80164A00 02002025 */   or        $a0, $s0, $zero
    /* 10BE74 80164A04 AE22000C */  sw         $v0, 0xC($s1)
    /* 10BE78 80164A08 26100001 */  addiu      $s0, $s0, 0x1
    /* 10BE7C 80164A0C 26310010 */  addiu      $s1, $s1, 0x10
    /* 10BE80 80164A10 1613FFFA */  bne        $s0, $s3, .L801649FC_ovl5
    /* 10BE84 80164A14 26520001 */   addiu     $s2, $s2, 0x1
    /* 10BE88 80164A18 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 10BE8C 80164A1C 8FB00014 */  lw         $s0, 0x14($sp)
    /* 10BE90 80164A20 8FB10018 */  lw         $s1, 0x18($sp)
    /* 10BE94 80164A24 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 10BE98 80164A28 8FB30020 */  lw         $s3, 0x20($sp)
    /* 10BE9C 80164A2C 03E00008 */  jr         $ra
    /* 10BEA0 80164A30 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_801649CC_ovl5
.size func_801649CC_ovl5, . - func_801649CC_ovl5
