glabel func_80227308_ovl18
/* 239CA8 80227308 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 239CAC 8022730C AFBF0014 */  sw    $ra, 0x14($sp)
/* 239CB0 80227310 3C01800D */  lui   $at, %hi(D_800D6B64) # $at, 0x800d
/* 239CB4 80227314 0C000AE2 */  jal   func_80002B88_ovl18
/* 239CB8 80227318 AC246B64 */   sw    $a0, %lo(D_800D6B64)($at)
/* 239CBC 8022731C 00002025 */  move  $a0, $zero
/* 239CC0 80227320 0C008266 */  jal   func_80020998_ovl18
/* 239CC4 80227324 24057800 */   li    $a1, 30720
/* 239CC8 80227328 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 239CCC 8022732C 44816000 */  mtc1  $at, $f12
/* 239CD0 80227330 0C02906C */  jal   func_800A41B0
/* 239CD4 80227334 00000000 */   nop   
/* 239CD8 80227338 3C0E8013 */  lui   $t6, %hi(D_8012E700) # $t6, 0x8013
/* 239CDC 8022733C 3C048023 */  lui   $a0, %hi(D_8022AE30) # $a0, 0x8023
/* 239CE0 80227340 25CEEB00 */  addiu $t6, %lo(D_8012EB00) # addiu $t6, $t6, -0x1500
/* 239CE4 80227344 2484AE30 */  addiu $a0, %lo(D_8022AE30) # addiu $a0, $a0, -0x51d0
/* 239CE8 80227348 25CFE700 */  addiu $t7, $t6, %lo(D_8012E700)
/* 239CEC 8022734C 0C001EE9 */  jal   func_80007BA4_ovl18
/* 239CF0 80227350 AC8F000C */   sw    $t7, 0xc($a0)
/* 239CF4 80227354 3C18803B */  lui   $t8, %hi(gFrameBuffer) # $t8, 0x803b
/* 239CF8 80227358 3C198023 */  lui   $t9, %hi(_ovl19SegNoloadEnd) # $t9, 0x8023
/* 239CFC 8022735C 3C068023 */  lui   $a2, %hi(D_8022AE4C) # $a2, 0x8023
/* 239D00 80227360 2739FB50 */  addiu $t9, %lo(_ovl19SegNoloadEnd) # addiu $t9, $t9, -0x4b0
/* 239D04 80227364 27186900 */  addiu $t8, %lo(gFrameBuffer) # addiu $t8, $t8, 0x6900
/* 239D08 80227368 24C6AE4C */  addiu $a2, %lo(D_8022AE4C) # addiu $a2, $a2, -0x51b4
/* 239D0C 8022736C 03194023 */  subu  $t0, $t8, $t9
/* 239D10 80227370 3C04803B */  lui   $a0, %hi(gFrameBuffer) # $a0, 0x803b
/* 239D14 80227374 3C02803D */  lui   $v0, %hi(D_803D6900) # $v0, 0x803d
/* 239D18 80227378 3C058040 */  lui   $a1, %hi(D_803FC100) # $a1, 0x8040
/* 239D1C 8022737C ACC80010 */  sw    $t0, 0x10($a2)
/* 239D20 80227380 24A5C100 */  addiu $a1, %lo(D_803FC100) # addiu $a1, $a1, -0x3f00
/* 239D24 80227384 24426900 */  addiu $v0, %lo(D_803D6900) # addiu $v0, $v0, 0x6900
/* 239D28 80227388 24846900 */  addiu $a0, %lo(gFrameBuffer) # addiu $a0, $a0, 0x6900
/* 239D2C 8022738C 24030001 */  li    $v1, 1
.L80227390_ovl18:
/* 239D30 80227390 A4433F00 */  sh    $v1, 0x3f00($v0)
/* 239D34 80227394 A4830000 */  sh    $v1, ($a0)
/* 239D38 80227398 A4433F02 */  sh    $v1, 0x3f02($v0)
/* 239D3C 8022739C A4830002 */  sh    $v1, 2($a0)
/* 239D40 802273A0 A4433F04 */  sh    $v1, 0x3f04($v0)
/* 239D44 802273A4 A4830004 */  sh    $v1, 4($a0)
/* 239D48 802273A8 A4433F06 */  sh    $v1, 0x3f06($v0)
/* 239D4C 802273AC 24420008 */  addiu $v0, $v0, 8
/* 239D50 802273B0 A4830006 */  sh    $v1, 6($a0)
/* 239D54 802273B4 1445FFF6 */  bne   $v0, $a1, .L80227390_ovl18
/* 239D58 802273B8 24840008 */   addiu $a0, $a0, 8
/* 239D5C 802273BC 0C001CE0 */  jal   func_80007380
/* 239D60 802273C0 00C02025 */   move  $a0, $a2
/* 239D64 802273C4 0C02ECFC */  jal   func_800BB3F0
/* 239D68 802273C8 00000000 */   nop   
/* 239D6C 802273CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 239D70 802273D0 3C02800D */  lui   $v0, %hi(D_800D6B74) # $v0, 0x800d
/* 239D74 802273D4 8C426B74 */  lw    $v0, %lo(D_800D6B74)($v0)
/* 239D78 802273D8 03E00008 */  jr    $ra
/* 239D7C 802273DC 27BD0018 */   addiu $sp, $sp, 0x18
# Unknown region 239D80-23E630 [48B0]
.type func_80227308_ovl18, @function
.size func_80227308_ovl18, . - func_80227308_ovl18
