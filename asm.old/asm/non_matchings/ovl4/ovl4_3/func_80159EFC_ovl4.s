glabel func_80159EFC_ovl4
/* 10142C 80159EFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 101430 80159F00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 101434 80159F04 0C008235 */  jal   func_800208D4_ovl4
/* 101438 80159F08 00000000 */   nop   
/* 10143C 80159F0C 3C0E9999 */  lui   $t6, (0x99999999 >> 16) # lui $t6, 0x9999
/* 101440 80159F10 35CE9999 */  ori   $t6, (0x99999999 & 0xFFFF) # ori $t6, $t6, 0x9999
/* 101444 80159F14 3C01800D */  lui   $at, %hi(D_800D6B44) # $at, 0x800d
/* 101448 80159F18 0C008322 */  jal   func_80020C88_ovl4
/* 10144C 80159F1C AC2E6B44 */   sw    $t6, %lo(D_800D6B44)($at)
/* 101450 80159F20 3C0F8013 */  lui   $t7, %hi(D_8012EB00) # $t7, 0x8013
/* 101454 80159F24 3C048016 */  lui   $a0, %hi(D_8015C410) # $a0, 0x8016
/* 101458 80159F28 25EFEB00 */  addiu $t7, %lo(D_8012EB00) # addiu $t7, $t7, -0x1500
/* 10145C 80159F2C 2484C410 */  addiu $a0, %lo(D_8015C410) # addiu $a0, $a0, -0x3bf0
/* 101460 80159F30 25F8E700 */  addiu $t8, $t7, -0x1900
/* 101464 80159F34 0C001EE9 */  jal   func_80007BA4_ovl4
/* 101468 80159F38 AC98000C */   sw    $t8, 0xc($a0)
/* 10146C 80159F3C 3C19803B */  lui   $t9, %hi(gFrameBuffer) # $t9, 0x803b
/* 101470 80159F40 3C088019 */  lui   $t0, %hi(D_8018EE60) # $t0, 0x8019
/* 101474 80159F44 3C068016 */  lui   $a2, %hi(D_8015C42C) # $a2, 0x8016
/* 101478 80159F48 2508EE60 */  addiu $t0, %lo(D_8018EE60) # addiu $t0, $t0, -0x11a0
/* 10147C 80159F4C 27396900 */  addiu $t9, %lo(gFrameBuffer) # addiu $t9, $t9, 0x6900
/* 101480 80159F50 24C6C42C */  addiu $a2, %lo(D_8015C42C) # addiu $a2, $a2, -0x3bd4
/* 101484 80159F54 03284823 */  subu  $t1, $t9, $t0
/* 101488 80159F58 3C04803B */  lui   $a0, %hi(gFrameBuffer) # $a0, 0x803b
/* 10148C 80159F5C 3C03803D */  lui   $v1, %hi(D_803D6900) # $v1, 0x803d
/* 101490 80159F60 3C058040 */  lui   $a1, %hi(D_803FC100) # $a1, 0x8040
/* 101494 80159F64 ACC90010 */  sw    $t1, 0x10($a2)
/* 101498 80159F68 24A5C100 */  addiu $a1, %lo(D_803FC100) # addiu $a1, $a1, -0x3f00
/* 10149C 80159F6C 24636900 */  addiu $v1, %lo(D_803D6900) # addiu $v1, $v1, 0x6900
/* 1014A0 80159F70 24846900 */  addiu $a0, %lo(gFrameBuffer) # addiu $a0, $a0, 0x6900
/* 1014A4 80159F74 24020001 */  li    $v0, 1
.L80159F78_ovl4:
/* 1014A8 80159F78 A4820000 */  sh    $v0, ($a0)
/* 1014AC 80159F7C A4623F00 */  sh    $v0, 0x3f00($v1)
/* 1014B0 80159F80 A4820002 */  sh    $v0, 2($a0)
/* 1014B4 80159F84 A4623F02 */  sh    $v0, 0x3f02($v1)
/* 1014B8 80159F88 A4820004 */  sh    $v0, 4($a0)
/* 1014BC 80159F8C A4623F04 */  sh    $v0, 0x3f04($v1)
/* 1014C0 80159F90 A4820006 */  sh    $v0, 6($a0)
/* 1014C4 80159F94 24630008 */  addiu $v1, $v1, 8
/* 1014C8 80159F98 A4623EFE */  sh    $v0, 0x3efe($v1)
/* 1014CC 80159F9C 1465FFF6 */  bne   $v1, $a1, .L80159F78_ovl4
/* 1014D0 80159FA0 24840008 */   addiu $a0, $a0, 8
/* 1014D4 80159FA4 0C001CE0 */  jal   func_80007380
/* 1014D8 80159FA8 00C02025 */   move  $a0, $a2
/* 1014DC 80159FAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1014E0 80159FB0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1014E4 80159FB4 03E00008 */  jr    $ra
/* 1014E8 80159FB8 00000000 */   nop   
.type func_80159EFC_ovl4, @function

/* 1014EC 80159FBC 00000000 */  nop   
# Unknown region 1014F0-103BB0 [26C0]
# .incbin "bin/kirby.u.1014F0.bin"
.type func_80159EFC_ovl4, @function
.size func_80159EFC_ovl4, . - func_80159EFC_ovl4
