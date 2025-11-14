glabel func_8001F24C
/* 01FE4C 8001F24C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01FE50 8001F250 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01FE54 8001F254 3C048009 */  lui   $a0, %hi(D_80095DE0) # $a0, 0x8009
/* 01FE58 8001F258 3C058009 */  lui   $a1, %hi(D_80095DE8) # $a1, 0x8009
/* 01FE5C 8001F25C 3C068009 */  lui   $a2, %hi(D_80095E48) # $a2, 0x8009
/* 01FE60 8001F260 24C65E48 */  addiu $a2, %lo(D_80095E48) # addiu $a2, $a2, 0x5e48
/* 01FE64 8001F264 24A55DE8 */  addiu $a1, %lo(D_80095DE8) # addiu $a1, $a1, 0x5de8
/* 01FE68 8001F268 24845DE0 */  addiu $a0, %lo(D_80095DE0) # addiu $a0, $a0, 0x5de0
/* 01FE6C 8001F26C 0C00027A */  jal   func_800009E8
/* 01FE70 8001F270 24070001 */   li    $a3, 1
/* 01FE74 8001F274 3C048009 */  lui   $a0, %hi(D_80095E18) # $a0, 0x8009
/* 01FE78 8001F278 3C058009 */  lui   $a1, %hi(D_80095E58) # $a1, 0x8009
/* 01FE7C 8001F27C 24A55E58 */  addiu $a1, %lo(D_80095E58) # addiu $a1, $a1, 0x5e58
/* 01FE80 8001F280 24845E18 */  addiu $a0, %lo(D_80095E18) # addiu $a0, $a0, 0x5e18
/* 01FE84 8001F284 0C00CEB8 */  jal   osCreateMesgQueue
/* 01FE88 8001F288 24060032 */   li    $a2, 50
/* 01FE8C 8001F28C 3C048009 */  lui   $a0, %hi(D_80095E30) # $a0, 0x8009
/* 01FE90 8001F290 3C058009 */  lui   $a1, %hi(D_80095E50) # $a1, 0x8009
/* 01FE94 8001F294 24A55E50 */  addiu $a1, %lo(D_80095E50) # addiu $a1, $a1, 0x5e50
/* 01FE98 8001F298 24845E30 */  addiu $a0, %lo(D_80095E30) # addiu $a0, $a0, 0x5e30
/* 01FE9C 8001F29C 0C00CEB8 */  jal   osCreateMesgQueue
/* 01FEA0 8001F2A0 24060001 */   li    $a2, 1
/* 01FEA4 8001F2A4 3C048009 */  lui   $a0, %hi(D_80095E00) # $a0, 0x8009
/* 01FEA8 8001F2A8 3C058009 */  lui   $a1, %hi(D_80095E4C) # $a1, 0x8009
/* 01FEAC 8001F2AC 24A55E4C */  addiu $a1, %lo(D_80095E4C) # addiu $a1, $a1, 0x5e4c
/* 01FEB0 8001F2B0 24845E00 */  addiu $a0, %lo(D_80095E00) # addiu $a0, $a0, 0x5e00
/* 01FEB4 8001F2B4 0C00CEB8 */  jal   osCreateMesgQueue
/* 01FEB8 8001F2B8 24060001 */   li    $a2, 1
/* 01FEBC 8001F2BC 3C048009 */  lui   $a0, %hi(D_80095E00) # $a0, 0x8009
/* 01FEC0 8001F2C0 24845E00 */  addiu $a0, %lo(D_80095E00) # addiu $a0, $a0, 0x5e00
/* 01FEC4 8001F2C4 00002825 */  move  $a1, $zero
/* 01FEC8 8001F2C8 0C00B4BC */  jal   osSendMesg
/* 01FECC 8001F2CC 24060001 */   li    $a2, 1
/* 01FED0 8001F2D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01FED4 8001F2D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 01FED8 8001F2D8 03E00008 */  jr    $ra
/* 01FEDC 8001F2DC 00000000 */   nop   
.type func_8001F24C, @function
.size func_8001F24C, . - func_8001F24C
