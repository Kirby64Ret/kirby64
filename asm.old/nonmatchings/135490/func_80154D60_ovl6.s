glabel func_80154D60_ovl6
/* 1390F0 80154D60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1390F4 80154D64 AFA40018 */  sw         $a0, 0x18($sp)
/* 1390F8 80154D68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1390FC 80154D6C 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x14)
/* 139100 80154D70 3C048015 */  lui        $a0, %hi(func_80151138_ovl6)
/* 139104 80154D74 AC25A68C */  sw         $a1, %lo(gFrameBuffers + 0x14)($at)
/* 139108 80154D78 0C0014D4 */  jal        func_80005350
/* 13910C 80154D7C 24841138 */   addiu     $a0, $a0, %lo(func_80151138_ovl6)
/* 139110 80154D80 0C055319 */  jal        func_80154C64_ovl6
/* 139114 80154D84 00000000 */   nop
/* 139118 80154D88 0C05530E */  jal        func_80154C38_ovl6
/* 13911C 80154D8C 8FA40018 */   lw        $a0, 0x18($sp)
/* 139120 80154D90 3C048015 */  lui        $a0, %hi(D_80154E9C_ovl6)
/* 139124 80154D94 0C001CE0 */  jal        func_80007380
/* 139128 80154D98 24844E9C */   addiu     $a0, $a0, %lo(D_80154E9C_ovl6)
/* 13912C 80154D9C 0C029D36 */  jal        func_800A74D8
glabel func_80154DA0_ovl4
/* 139130 80154DA0 00000000 */   nop
/* 139134 80154DA4 0C0014D4 */  jal        func_80005350
/* 139138 80154DA8 00002025 */   or        $a0, $zero, $zero
/* 13913C 80154DAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 139140 80154DB0 3C028016 */  lui        $v0, %hi(gFrameBuffers + 0x18)
/* 139144 80154DB4 8C42A690 */  lw         $v0, %lo(gFrameBuffers + 0x18)($v0)
/* 139148 80154DB8 03E00008 */  jr         $ra
/* 13914C 80154DBC 27BD0018 */   addiu     $sp, $sp, 0x18
