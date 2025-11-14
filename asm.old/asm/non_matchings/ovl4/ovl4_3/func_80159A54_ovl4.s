glabel func_80159A54_ovl4
/* 100F84 80159A54 3C0E8013 */  lui   $t6, %hi(D_8012EB00) # $t6, 0x8013
/* 100F88 80159A58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 100F8C 80159A5C 3C048016 */  lui   $a0, %hi(D_8015C058) # $a0, 0x8016
/* 100F90 80159A60 25CEEB00 */  addiu $t6, %lo(D_8012EB00) # addiu $t6, $t6, -0x1500
/* 100F94 80159A64 2484C058 */  addiu $a0, %lo(D_8015C058) # addiu $a0, $a0, -0x3fa8
/* 100F98 80159A68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 100F9C 80159A6C 25CFE700 */  addiu $t7, $t6, -0x1900
/* 100FA0 80159A70 0C001EE9 */  jal   func_80007BA4_ovl4
/* 100FA4 80159A74 AC8F000C */   sw    $t7, 0xc($a0)
/* 100FA8 80159A78 3C18803B */  lui   $t8, %hi(gFrameBuffer) # $t8, 0x803b
/* 100FAC 80159A7C 3C198019 */  lui   $t9, %hi(D_8018EE60) # $t9, 0x8019
/* 100FB0 80159A80 3C068016 */  lui   $a2, %hi(D_8015C074) # $a2, 0x8016
/* 100FB4 80159A84 2739EE60 */  addiu $t9, %lo(D_8018EE60) # addiu $t9, $t9, -0x11a0
/* 100FB8 80159A88 27186900 */  addiu $t8, %lo(gFrameBuffer) # addiu $t8, $t8, 0x6900
/* 100FBC 80159A8C 24C6C074 */  addiu $a2, %lo(D_8015C074) # addiu $a2, $a2, -0x3f8c
/* 100FC0 80159A90 03194023 */  subu  $t0, $t8, $t9
/* 100FC4 80159A94 3C04803B */  lui   $a0, %hi(gFrameBuffer) # $a0, 0x803b
/* 100FC8 80159A98 3C03803D */  lui   $v1, %hi(D_803D6900) # $v1, 0x803d
/* 100FCC 80159A9C 3C058040 */  lui   $a1, %hi(D_803FC100) # $a1, 0x8040
/* 100FD0 80159AA0 ACC80010 */  sw    $t0, 0x10($a2)
/* 100FD4 80159AA4 24A5C100 */  addiu $a1, %lo(D_803FC100) # addiu $a1, $a1, -0x3f00
/* 100FD8 80159AA8 24636900 */  addiu $v1, %lo(D_803D6900) # addiu $v1, $v1, 0x6900
/* 100FDC 80159AAC 24846900 */  addiu $a0, %lo(gFrameBuffer) # addiu $a0, $a0, 0x6900
/* 100FE0 80159AB0 24020001 */  li    $v0, 1
.L80159AB4_ovl4:
/* 100FE4 80159AB4 A4820000 */  sh    $v0, ($a0)
/* 100FE8 80159AB8 A4623F00 */  sh    $v0, 0x3f00($v1)
/* 100FEC 80159ABC A4820002 */  sh    $v0, 2($a0)
/* 100FF0 80159AC0 A4623F02 */  sh    $v0, 0x3f02($v1)
/* 100FF4 80159AC4 A4820004 */  sh    $v0, 4($a0)
/* 100FF8 80159AC8 A4623F04 */  sh    $v0, 0x3f04($v1)
/* 100FFC 80159ACC A4820006 */  sh    $v0, 6($a0)
/* 101000 80159AD0 24630008 */  addiu $v1, $v1, 8
/* 101004 80159AD4 A4623EFE */  sh    $v0, 0x3efe($v1)
/* 101008 80159AD8 1465FFF6 */  bne   $v1, $a1, .L80159AB4_ovl4
/* 10100C 80159ADC 24840008 */   addiu $a0, $a0, 8
/* 101010 80159AE0 3C018016 */  lui   $at, %hi(D_8015C710) # $at, 0x8016
/* 101014 80159AE4 AC20C710 */  sw    $zero, %lo(D_8015C710)($at)
/* 101018 80159AE8 0C001CE0 */  jal   func_80007380
/* 10101C 80159AEC 00C02025 */   move  $a0, $a2
/* 101020 80159AF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 101024 80159AF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 101028 80159AF8 03E00008 */  jr    $ra
/* 10102C 80159AFC 00000000 */   nop   
.type func_80159A54_ovl4, @function
.size func_80159A54_ovl4, . - func_80159A54_ovl4
