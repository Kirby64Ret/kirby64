glabel func_80153C28
/* 137FB8 80153C28 3C0E8016 */  lui   $t6, %hi(D_8015A690) # $t6, 0x8016
/* 137FBC 80153C2C 8DCEA690 */  lw    $t6, %lo(D_8015A690)($t6)
/* 137FC0 80153C30 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 137FC4 80153C34 3C04800E */  lui   $a0, %hi(D_800DE44C) # $a0, 0x800e
/* 137FC8 80153C38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 137FCC 80153C3C 15C0001B */  bnez  $t6, .L80153CAC_ovl6
/* 137FD0 80153C40 8C84E44C */   lw    $a0, %lo(D_800DE44C)($a0)
/* 137FD4 80153C44 10800019 */  beqz  $a0, .L80153CAC_ovl6
/* 137FD8 80153C48 3C058015 */   lui   $a1, %hi(D_80153B34) # $a1, 0x8015
/* 137FDC 80153C4C 24A53B34 */  addiu $a1, %lo(D_80153B34) # addiu $a1, $a1, 0x3b34
/* 137FE0 80153C50 24060001 */  li    $a2, 1
/* 137FE4 80153C54 24070003 */  li    $a3, 3
/* 137FE8 80153C58 0C002286 */  jal   func_80008A18
/* 137FEC 80153C5C AFA4001C */   sw    $a0, 0x1c($sp)
/* 137FF0 80153C60 8FA4001C */  lw    $a0, 0x1c($sp)
/* 137FF4 80153C64 2405000C */  li    $a1, 12
/* 137FF8 80153C68 0C002A41 */  jal   func_8000A904_ovl6
/* 137FFC 80153C6C 00003025 */   move  $a2, $zero
/* 138000 80153C70 8FA4001C */  lw    $a0, 0x1c($sp)
/* 138004 80153C74 3C0F8015 */  lui   $t7, %hi(D_8015392C) # $t7, 0x8015
/* 138008 80153C78 25EF392C */  addiu $t7, %lo(D_8015392C) # addiu $t7, $t7, 0x392c
/* 13800C 80153C7C 3C188016 */  lui   $t8, %hi(D_8015A6A0) # $t8, 0x8016
/* 138010 80153C80 AC8F002C */  sw    $t7, 0x2c($a0)
/* 138014 80153C84 8F18A6A0 */  lw    $t8, %lo(D_8015A6A0)($t8)
/* 138018 80153C88 3C058015 */  lui   $a1, %hi(D_80153B80) # $a1, 0x8015
/* 13801C 80153C8C 24A53B80 */  addiu $a1, %lo(D_80153B80) # addiu $a1, $a1, 0x3b80
/* 138020 80153C90 17000006 */  bnez  $t8, .L80153CAC_ovl6
/* 138024 80153C94 00002025 */   move  $a0, $zero
/* 138028 80153C98 00003025 */  move  $a2, $zero
/* 13802C 80153C9C 0C002860 */  jal   func_8000A180
/* 138030 80153CA0 3C078000 */   lui   $a3, 0x8000
/* 138034 80153CA4 3C018016 */  lui   $at, %hi(D_8015A6A0) # $at, 0x8016
/* 138038 80153CA8 AC22A6A0 */  sw    $v0, %lo(D_8015A6A0)($at)
.L80153CAC_ovl6:
/* 13803C 80153CAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 138040 80153CB0 27BD0020 */  addiu $sp, $sp, 0x20
/* 138044 80153CB4 03E00008 */  jr    $ra
/* 138048 80153CB8 00000000 */   nop   
.type func_80153C28, @function
.size func_80153C28, . - func_80153C28
