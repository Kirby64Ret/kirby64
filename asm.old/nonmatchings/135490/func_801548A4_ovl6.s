glabel func_801548A4_ovl6
/* 138C34 801548A4 3C03800E */  lui        $v1, %hi(D_800DE350 + 0xF8)
/* 138C38 801548A8 8C63E448 */  lw         $v1, %lo(D_800DE350 + 0xF8)($v1)
/* 138C3C 801548AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 138C40 801548B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 138C44 801548B4 1060000C */  beqz       $v1, .L801548E8_ovl6
/* 138C48 801548B8 3C048016 */   lui       $a0, %hi(gFrameBuffers + 0x10)
glabel func_801548BC_ovl4
/* 138C4C 801548BC 8C84A688 */  lw         $a0, %lo(gFrameBuffers + 0x10)($a0)
/* 138C50 801548C0 50800006 */  beql       $a0, $zero, func_801548DC_ovl6
/* 138C54 801548C4 8C62004C */   lw        $v0, 0x4C($v1)
/* 138C58 801548C8 0C00236A */  jal        func_80008DA8
/* 138C5C 801548CC 00000000 */   nop
/* 138C60 801548D0 10000006 */  b          .L801548EC_ovl6
/* 138C64 801548D4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 138C68 801548D8 8C62004C */  lw         $v0, 0x4C($v1)
glabel func_801548DC_ovl6
/* 138C6C 801548DC 904E0013 */  lbu        $t6, 0x13($v0)
/* 138C70 801548E0 31CFFFF7 */  andi       $t7, $t6, 0xFFF7
/* 138C74 801548E4 A04F0013 */  sb         $t7, 0x13($v0)
.L801548E8_ovl6:
/* 138C78 801548E8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801548EC_ovl6:
/* 138C7C 801548EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 138C80 801548F0 03E00008 */  jr         $ra
/* 138C84 801548F4 00000000 */   nop
