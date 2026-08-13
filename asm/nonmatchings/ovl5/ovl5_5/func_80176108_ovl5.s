nonmatching func_80176108_ovl5, 0x68

glabel func_80176108_ovl5
    /* 11D578 80176108 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 11D57C 8017610C AFB2001C */  sw         $s2, 0x1C($sp)
    /* 11D580 80176110 AFB10018 */  sw         $s1, 0x18($sp)
    /* 11D584 80176114 AFB30020 */  sw         $s3, 0x20($sp)
    /* 11D588 80176118 AFB00014 */  sw         $s0, 0x14($sp)
    /* 11D58C 8017611C 3C11800D */  lui        $s1, %hi(D_800D7178)
    /* 11D590 80176120 3C128019 */  lui        $s2, %hi(D_8018ECA8_ovl5)
    /* 11D594 80176124 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 11D598 80176128 2652ECA8 */  addiu      $s2, $s2, %lo(D_8018ECA8_ovl5)
    /* 11D59C 8017612C 26317178 */  addiu      $s1, $s1, %lo(D_800D7178)
    /* 11D5A0 80176130 00008025 */  or         $s0, $zero, $zero
    /* 11D5A4 80176134 24130004 */  addiu      $s3, $zero, 0x4
  .L80176138_ovl5:
    /* 11D5A8 80176138 0C05C5DA */  jal        func_80171768_ovl5
    /* 11D5AC 8017613C 02002025 */   or        $a0, $s0, $zero
    /* 11D5B0 80176140 AE22000C */  sw         $v0, 0xC($s1)
    /* 11D5B4 80176144 26100001 */  addiu      $s0, $s0, 0x1
    /* 11D5B8 80176148 26310010 */  addiu      $s1, $s1, 0x10
    /* 11D5BC 8017614C 1613FFFA */  bne        $s0, $s3, .L80176138_ovl5
    /* 11D5C0 80176150 26520004 */   addiu     $s2, $s2, 0x4
    /* 11D5C4 80176154 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 11D5C8 80176158 8FB00014 */  lw         $s0, 0x14($sp)
    /* 11D5CC 8017615C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 11D5D0 80176160 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 11D5D4 80176164 8FB30020 */  lw         $s3, 0x20($sp)
    /* 11D5D8 80176168 03E00008 */  jr         $ra
    /* 11D5DC 8017616C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_80176108_ovl5
.size func_80176108_ovl5, . - func_80176108_ovl5
