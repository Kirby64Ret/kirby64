glabel func_80154B14_ovl6
/* 138EA4 80154B14 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x1C)
/* 138EA8 80154B18 AC20A694 */  sw         $zero, %lo(gFrameBuffers + 0x1C)($at)
/* 138EAC 80154B1C 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x18)
/* 138EB0 80154B20 AC20A690 */  sw         $zero, %lo(gFrameBuffers + 0x18)($at)
/* 138EB4 80154B24 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x24)
.L80154B28_ovl3:
/* 138EB8 80154B28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 138EBC 80154B2C AC20A69C */  sw         $zero, %lo(gFrameBuffers + 0x24)($at)
/* 138EC0 80154B30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 138EC4 80154B34 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x28)
/* 138EC8 80154B38 0C054C10 */  jal        func_80153040_ovl6
/* 138ECC 80154B3C AC20A6A0 */   sw        $zero, %lo(gFrameBuffers + 0x28)($at)
/* 138ED0 80154B40 0C0551A4 */  jal        func_80154690_ovl6
/* 138ED4 80154B44 00000000 */   nop
/* 138ED8 80154B48 0C055290 */  jal        func_80154A40_ovl6
/* 138EDC 80154B4C 00000000 */   nop
/* 138EE0 80154B50 0C02B812 */  jal        func_800AE048
/* 138EE4 80154B54 00402025 */   or        $a0, $v0, $zero
/* 138EE8 80154B58 0C02B83C */  jal        func_800AE0F0
/* 138EEC 80154B5C 00000000 */   nop
/* 138EF0 80154B60 0C029B99 */  jal        func_800A6E64
/* 138EF4 80154B64 00000000 */   nop
/* 138EF8 80154B68 0C0544BC */  jal        func_801512F0_ovl6
/* 138EFC 80154B6C 00000000 */   nop
/* 138F00 80154B70 0C02A1C9 */  jal        func_800A8724
/* 138F04 80154B74 24040001 */   addiu     $a0, $zero, 0x1
/* 138F08 80154B78 0C0544F2 */  jal        func_801513C8_ovl6
/* 138F0C 80154B7C 00000000 */   nop
/* 138F10 80154B80 0C0551D2 */  jal        func_80154748_ovl6
/* 138F14 80154B84 00000000 */   nop
/* 138F18 80154B88 0C05524E */  jal        func_80154938_ovl6
.L80154B8C_ovl4:
/* 138F1C 80154B8C 00000000 */   nop
/* 138F20 80154B90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 138F24 80154B94 27BD0018 */  addiu      $sp, $sp, 0x18
/* 138F28 80154B98 03E00008 */  jr         $ra
/* 138F2C 80154B9C 00000000 */   nop
