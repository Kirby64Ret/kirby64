glabel func_800A3058
/* 04B2A8 800A3058 3C028000 */  lui   $v0, %hi(osTvType) # $v0, 0x8000
/* 04B2AC 800A305C 8C420300 */  lw    $v0, %lo(osTvType)($v0)
/* 04B2B0 800A3060 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04B2B4 800A3064 24010001 */  li    $at, 1
/* 04B2B8 800A3068 10410008 */  beq   $v0, $at, .L800A308C_ovl1
/* 04B2BC 800A306C AFBF0014 */   sw    $ra, 0x14($sp)
/* 04B2C0 800A3070 24010002 */  li    $at, 2
/* 04B2C4 800A3074 10410005 */  beq   $v0, $at, .L800A308C_ovl1
/* 04B2C8 800A3078 00000000 */   nop   
/* 04B2CC 800A307C 0C029AC8 */  jal   load_overlay
/* 04B2D0 800A3080 24040002 */   li    $a0, 2
/* 04B2D4 800A3084 0C05473B */  jal   func_80151CEC_ovl1
/* 04B2D8 800A3088 24040005 */   li    $a0, 5
.L800A308C_ovl1:
/* 04B2DC 800A308C 0C001189 */  jal   D_80004624_ovl1
/* 04B2E0 800A3090 00000000 */   nop   
/* 04B2E4 800A3094 0C001189 */  jal   D_80004624_ovl1
/* 04B2E8 800A3098 00000000 */   nop   
/* 04B2EC 800A309C 3C028005 */  lui   $v0, %hi(D_80048E9C) # $v0, 0x8005
/* 04B2F0 800A30A0 3C048005 */  lui   $a0, %hi(gControllers) # $a0, 0x8005
/* 04B2F4 800A30A4 24848EA0 */  addiu $a0, %lo(gControllers) # addiu $a0, $a0, -0x7160
/* 04B2F8 800A30A8 24428E9C */  addiu $v0, %lo(D_80048E9C) # addiu $v0, $v0, -0x7164
/* 04B2FC 800A30AC 2403FFFF */  li    $v1, -1
/* 04B300 800A30B0 804E0000 */  lb    $t6, ($v0)
.L800A30B4_ovl1:
/* 04B304 800A30B4 24420001 */  addiu $v0, $v0, 1
/* 04B308 800A30B8 546E0008 */  bnel  $v1, $t6, .L800A30DC_ovl1
/* 04B30C 800A30BC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 04B310 800A30C0 5444FFFC */  bnel  $v0, $a0, .L800A30B4_ovl1
/* 04B314 800A30C4 804E0000 */   lb    $t6, ($v0)
/* 04B318 800A30C8 0C029AC8 */  jal   load_overlay
/* 04B31C 800A30CC 24040002 */   li    $a0, 2
/* 04B320 800A30D0 0C05473B */  jal   func_80151CEC_ovl1
/* 04B324 800A30D4 24040004 */   li    $a0, 4
/* 04B328 800A30D8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A30DC_ovl1:
/* 04B32C 800A30DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 04B330 800A30E0 03E00008 */  jr    $ra
/* 04B334 800A30E4 00000000 */   nop   
