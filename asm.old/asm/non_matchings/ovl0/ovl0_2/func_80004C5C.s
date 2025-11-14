glabel func_80004C5C
/* 00585C 80004C5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 005860 80004C60 3C038005 */  lui   $v1, %hi(D_800490D0) # $v1, 0x8005
/* 005864 80004C64 246390D0 */  addiu $v1, %lo(D_800490D0) # addiu $v1, $v1, -0x6f30
/* 005868 80004C68 AFA40020 */  sw    $a0, 0x20($sp)
/* 00586C 80004C6C AFA50024 */  sw    $a1, 0x24($sp)
/* 005870 80004C70 93AE0023 */  lbu   $t6, 0x23($sp)
/* 005874 80004C74 93AF0027 */  lbu   $t7, 0x27($sp)
/* 005878 80004C78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00587C 80004C7C AFA60028 */  sw    $a2, 0x28($sp)
/* 005880 80004C80 AC660014 */  sw    $a2, 0x14($v1)
/* 005884 80004C84 3C058005 */  lui   $a1, %hi(D_800490D4) # $a1, 0x8005
/* 005888 80004C88 3C048005 */  lui   $a0, %hi(D_80048DE8) # $a0, 0x8005
/* 00588C 80004C8C AC670018 */  sw    $a3, 0x18($v1)
/* 005890 80004C90 24848DE8 */  addiu $a0, %lo(D_80048DE8) # addiu $a0, $a0, -0x7218
/* 005894 80004C94 24A590D4 */  addiu $a1, %lo(D_800490D4) # addiu $a1, $a1, -0x6f2c
/* 005898 80004C98 24060001 */  li    $a2, 1
/* 00589C 80004C9C A06E0010 */  sb    $t6, 0x10($v1)
/* 0058A0 80004CA0 0C00B4BC */  jal   osSendMesg
/* 0058A4 80004CA4 A06F0011 */   sb    $t7, 0x11($v1)
/* 0058A8 80004CA8 3C048005 */  lui   $a0, %hi(D_80048E58) # $a0, 0x8005
/* 0058AC 80004CAC 24848E58 */  addiu $a0, %lo(D_80048E58) # addiu $a0, $a0, -0x71a8
/* 0058B0 80004CB0 27A5001C */  addiu $a1, $sp, 0x1c
/* 0058B4 80004CB4 0C00B540 */  jal   osRecvMesg
/* 0058B8 80004CB8 24060001 */   li    $a2, 1
/* 0058BC 80004CBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0058C0 80004CC0 3C038005 */  lui   $v1, %hi(D_800490D0) # $v1, 0x8005
/* 0058C4 80004CC4 246390D0 */  addiu $v1, %lo(D_800490D0) # addiu $v1, $v1, -0x6f30
/* 0058C8 80004CC8 8C62001C */  lw    $v0, 0x1c($v1)
/* 0058CC 80004CCC 03E00008 */  jr    $ra
/* 0058D0 80004CD0 27BD0020 */   addiu $sp, $sp, 0x20
.type func_80004C5C, @function
.size func_80004C5C, . - func_80004C5C
