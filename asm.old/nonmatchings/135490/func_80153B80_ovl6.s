glabel func_80153B80_ovl6
/* 137F10 80153B80 3C028005 */  lui        $v0, %hi(gPlayerControllers + 0x2)
/* 137F14 80153B84 94428F22 */  lhu        $v0, %lo(gPlayerControllers + 0x2)($v0)
.L80153B88_ovl3:
/* 137F18 80153B88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 137F1C 80153B8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 137F20 80153B90 304E9000 */  andi       $t6, $v0, 0x9000
/* 137F24 80153B94 11C0000B */  beqz       $t6, .L80153BC4_ovl6
glabel func_80153B98_ovl3
/* 137F28 80153B98 AFA40018 */   sw        $a0, 0x18($sp)
/* 137F2C 80153B9C 3C038016 */  lui        $v1, %hi(gFrameBuffers + 0x14)
/* 137F30 80153BA0 2463A68C */  addiu      $v1, $v1, %lo(gFrameBuffers + 0x14)
/* 137F34 80153BA4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 137F38 80153BA8 31F80001 */  andi       $t8, $t7, 0x1
/* 137F3C 80153BAC 13000005 */  beqz       $t8, .L80153BC4_ovl6
/* 137F40 80153BB0 00000000 */   nop
/* 137F44 80153BB4 0C054F87 */  jal        func_80153E1C_ovl6
/* 137F48 80153BB8 24040001 */   addiu     $a0, $zero, 0x1
/* 137F4C 80153BBC 10000017 */  b          .L80153C1C_ovl6
/* 137F50 80153BC0 8FBF0014 */   lw        $ra, 0x14($sp)
.L80153BC4_ovl6:
/* 137F54 80153BC4 3C038016 */  lui        $v1, %hi(gFrameBuffers + 0x14)
.L80153BC8_ovl4:
/* 137F58 80153BC8 30591000 */  andi       $t9, $v0, 0x1000
/* 137F5C 80153BCC 13200009 */  beqz       $t9, .L80153BF4_ovl6
/* 137F60 80153BD0 2463A68C */   addiu     $v1, $v1, %lo(gFrameBuffers + 0x14)
/* 137F64 80153BD4 8C680000 */  lw         $t0, 0x0($v1)
/* 137F68 80153BD8 31090002 */  andi       $t1, $t0, 0x2
/* 137F6C 80153BDC 51200006 */  beql       $t1, $zero, .L80153BF8_ovl6
/* 137F70 80153BE0 304A4000 */   andi      $t2, $v0, 0x4000
/* 137F74 80153BE4 0C054F87 */  jal        func_80153E1C_ovl6
/* 137F78 80153BE8 24040002 */   addiu     $a0, $zero, 0x2
/* 137F7C 80153BEC 1000000B */  b          .L80153C1C_ovl6
/* 137F80 80153BF0 8FBF0014 */   lw        $ra, 0x14($sp)
.L80153BF4_ovl6:
/* 137F84 80153BF4 304A4000 */  andi       $t2, $v0, 0x4000
.L80153BF8_ovl6:
/* 137F88 80153BF8 51400008 */  beql       $t2, $zero, .L80153C1C_ovl6
/* 137F8C 80153BFC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 137F90 80153C00 8C6B0000 */  lw         $t3, 0x0($v1)
.L80153C04_ovl4:
/* 137F94 80153C04 316C0010 */  andi       $t4, $t3, 0x10
/* 137F98 80153C08 51800004 */  beql       $t4, $zero, .L80153C1C_ovl6
/* 137F9C 80153C0C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 137FA0 80153C10 0C054F87 */  jal        func_80153E1C_ovl6
/* 137FA4 80153C14 24040003 */   addiu     $a0, $zero, 0x3
/* 137FA8 80153C18 8FBF0014 */  lw         $ra, 0x14($sp)
.L80153C1C_ovl6:
/* 137FAC 80153C1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 137FB0 80153C20 03E00008 */  jr         $ra
/* 137FB4 80153C24 00000000 */   nop
