glabel func_800A2E98
/* 04B0E8 800A2E98 3C0E800D */  lui   $t6, %hi(gKirbyLives) # $t6, 0x800d
/* 04B0EC 800A2E9C 8DCE6E4C */  lw    $t6, %lo(gKirbyLives)($t6)
/* 04B0F0 800A2EA0 3C01800D */  lui   $at, %hi(D_800D6E88) # $at, 0x800d
/* 04B0F4 800A2EA4 3C19800D */  lui   $t9, %hi(D_800D6E54) # $t9, 0x800d
/* 04B0F8 800A2EA8 AC2E6E88 */  sw    $t6, %lo(D_800D6E88)($at)
/* 04B0FC 800A2EAC 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 04B100 800A2EB0 C4246E50 */  lwc1  $f4, %lo(gKirbyHp)($at)
/* 04B104 800A2EB4 8F396E54 */  lw    $t9, %lo(D_800D6E54)($t9)
/* 04B108 800A2EB8 3C01800D */  lui   $at, %hi(D_800D6E8C) # $at, 0x800d
/* 04B10C 800A2EBC 4600218D */  trunc.w.s $f6, $f4
/* 04B110 800A2EC0 3C08800D */  lui   $t0, %hi(gKirbyStars) # $t0, 0x800d
/* 04B114 800A2EC4 8D086E60 */  lw    $t0, %lo(gKirbyStars)($t0)
/* 04B118 800A2EC8 44804000 */  mtc1  $zero, $f8
/* 04B11C 800A2ECC 44183000 */  mfc1  $t8, $f6
/* 04B120 800A2ED0 3C02800D */  lui   $v0, %hi(D_800D6E5C) # $v0, 0x800d
/* 04B124 800A2ED4 24426E5C */  addiu $v0, %lo(D_800D6E5C) # addiu $v0, $v0, 0x6e5c
/* 04B128 800A2ED8 AC386E8C */  sw    $t8, %lo(D_800D6E8C)($at)
/* 04B12C 800A2EDC 3C01800D */  lui   $at, %hi(D_800D6E90) # $at, 0x800d
/* 04B130 800A2EE0 AC396E90 */  sw    $t9, %lo(D_800D6E90)($at)
/* 04B134 800A2EE4 3C01800D */  lui   $at, %hi(D_800D6E98) # $at, 0x800d
/* 04B138 800A2EE8 AC286E98 */  sw    $t0, %lo(D_800D6E98)($at)
/* 04B13C 800A2EEC E4480000 */  swc1  $f8, ($v0)
/* 04B140 800A2EF0 C44A0000 */  lwc1  $f10, ($v0)
/* 04B144 800A2EF4 3C03800D */  lui   $v1, %hi(D_800D6E58) # $v1, 0x800d
/* 04B148 800A2EF8 24636E58 */  addiu $v1, %lo(D_800D6E58) # addiu $v1, $v1, 0x6e58
/* 04B14C 800A2EFC E46A0000 */  swc1  $f10, ($v1)
/* 04B150 800A2F00 C4700000 */  lwc1  $f16, ($v1)
/* 04B154 800A2F04 3C05800D */  lui   $a1, %hi(D_800D6E9C) # $a1, 0x800d
/* 04B158 800A2F08 24A56E9C */  addiu $a1, %lo(D_800D6E9C) # addiu $a1, $a1, 0x6e9c
/* 04B15C 800A2F0C 4600848D */  trunc.w.s $f18, $f16
/* 04B160 800A2F10 3C01800D */  lui   $at, %hi(D_800D6E94) # $at, 0x800d
/* 04B164 800A2F14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04B168 800A2F18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04B16C 800A2F1C 440A9000 */  mfc1  $t2, $f18
/* 04B170 800A2F20 2404FFFF */  li    $a0, -1
/* 04B174 800A2F24 ACAA0000 */  sw    $t2, ($a1)
/* 04B178 800A2F28 AC2A6E94 */  sw    $t2, %lo(D_800D6E94)($at)
/* 04B17C 800A2F2C 3C01800D */  lui   $at, %hi(D_800D6B54) # $at, 0x800d
/* 04B180 800A2F30 AC206B54 */  sw    $zero, %lo(D_800D6B54)($at)
/* 04B184 800A2F34 3C01800D */  lui   $at, %hi(D_800D7090) # $at, 0x800d
/* 04B188 800A2F38 0C047234 */  jal   func_8011C8D0
/* 04B18C 800A2F3C AC247090 */   sw    $a0, %lo(D_800D7090)($at)
/* 04B190 800A2F40 240C0001 */  li    $t4, 1
/* 04B194 800A2F44 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 04B198 800A2F48 AC2CE4F8 */  sw    $t4, %lo(D_800BE4F8)($at)
/* 04B19C 800A2F4C 3C01800C */  lui   $at, %hi(D_800BE544) # $at, 0x800c
/* 04B1A0 800A2F50 240DFFE2 */  li    $t5, -30
/* 04B1A4 800A2F54 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 04B1A8 800A2F58 3C03800D */  lui   $v1, %hi(D_800D70D8) # $v1, 0x800d
/* 04B1AC 800A2F5C 2404FFFF */  li    $a0, -1
/* 04B1B0 800A2F60 AC2DE544 */  sw    $t5, %lo(D_800BE544)($at)
/* 04B1B4 800A2F64 246370D8 */  addiu $v1, %lo(D_800D70D8) # addiu $v1, $v1, 0x70d8
/* 04B1B8 800A2F68 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
.L800A2F6C_ovl1:
/* 04B1BC 800A2F6C 24420004 */  addiu $v0, $v0, 4
/* 04B1C0 800A2F70 0043082B */  sltu  $at, $v0, $v1
/* 04B1C4 800A2F74 1420FFFD */  bnez  $at, .L800A2F6C_ovl1
/* 04B1C8 800A2F78 AC40FFFC */   sw    $zero, -4($v0)
/* 04B1CC 800A2F7C 3C02800D */  lui   $v0, %hi(D_800D70D8) # $v0, 0x800d
/* 04B1D0 800A2F80 3C03800D */  lui   $v1, %hi(D_800D7118) # $v1, 0x800d
/* 04B1D4 800A2F84 44800000 */  mtc1  $zero, $f0
/* 04B1D8 800A2F88 24637118 */  addiu $v1, %lo(D_800D7118) # addiu $v1, $v1, 0x7118
/* 04B1DC 800A2F8C 244270D8 */  addiu $v0, %lo(D_800D70D8) # addiu $v0, $v0, 0x70d8
.L800A2F90_ovl1:
/* 04B1E0 800A2F90 24420004 */  addiu $v0, $v0, 4
/* 04B1E4 800A2F94 0043082B */  sltu  $at, $v0, $v1
/* 04B1E8 800A2F98 1420FFFD */  bnez  $at, .L800A2F90_ovl1
/* 04B1EC 800A2F9C E440FFFC */   swc1  $f0, -4($v0)
/* 04B1F0 800A2FA0 3C02800D */  lui   $v0, %hi(D_800D7118) # $v0, 0x800d
/* 04B1F4 800A2FA4 3C03800D */  lui   $v1, %hi(D_800D7158) # $v1, 0x800d
/* 04B1F8 800A2FA8 24637158 */  addiu $v1, %lo(D_800D7158) # addiu $v1, $v1, 0x7158
/* 04B1FC 800A2FAC 24427118 */  addiu $v0, %lo(D_800D7118) # addiu $v0, $v0, 0x7118
.L800A2FB0_ovl1:
/* 04B200 800A2FB0 24420004 */  addiu $v0, $v0, 4
/* 04B204 800A2FB4 0043082B */  sltu  $at, $v0, $v1
/* 04B208 800A2FB8 1420FFFD */  bnez  $at, .L800A2FB0_ovl1
/* 04B20C 800A2FBC AC44FFFC */   sw    $a0, -4($v0)
/* 04B210 800A2FC0 3C01800D */  lui   $at, %hi(D_800D6E10) # $at, 0x800d
/* 04B214 800A2FC4 AC206E10 */  sw    $zero, %lo(D_800D6E10)($at)
/* 04B218 800A2FC8 3C01800D */  lui   $at, %hi(D_800D7088) # $at, 0x800d
/* 04B21C 800A2FCC AC207088 */  sw    $zero, %lo(D_800D7088)($at)
/* 04B220 800A2FD0 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 04B224 800A2FD4 3C02800D */  lui   $v0, %hi(D_800D6E40) # $v0, 0x800d
/* 04B228 800A2FD8 E420C9E4 */  swc1  $f0, %lo(D_800EC9E4)($at)
/* 04B22C 800A2FDC 24426E40 */  addiu $v0, %lo(D_800D6E40) # addiu $v0, $v0, 0x6e40
/* 04B230 800A2FE0 AC400000 */  sw    $zero, ($v0)
/* 04B234 800A2FE4 3C01800D */  lui   $at, %hi(D_800D6E44) # $at, 0x800d
/* 04B238 800A2FE8 AC206E44 */  sw    $zero, %lo(D_800D6E44)($at)
/* 04B23C 800A2FEC 3C03800D */  lui   $v1, %hi(D_800D6E1C) # $v1, 0x800d
/* 04B240 800A2FF0 3C04800D */  lui   $a0, %hi(D_800D6E18) # $a0, 0x800d
/* 04B244 800A2FF4 24846E18 */  addiu $a0, %lo(D_800D6E18) # addiu $a0, $a0, 0x6e18
/* 04B248 800A2FF8 24636E1C */  addiu $v1, %lo(D_800D6E1C) # addiu $v1, $v1, 0x6e1c
/* 04B24C 800A2FFC AC600000 */  sw    $zero, ($v1)
/* 04B250 800A3000 AC800000 */  sw    $zero, ($a0)
/* 04B254 800A3004 3C01800D */  lui   $at, %hi(D_800D6E14) # $at, 0x800d
/* 04B258 800A3008 AC206E14 */  sw    $zero, %lo(D_800D6E14)($at)
/* 04B25C 800A300C 3C01800D */  lui   $at, %hi(D_800D6E78) # $at, 0x800d
/* 04B260 800A3010 AC206E78 */  sw    $zero, %lo(D_800D6E78)($at)
/* 04B264 800A3014 3C01800D */  lui   $at, %hi(D_800D6E68) # $at, 0x800d
/* 04B268 800A3018 AC206E68 */  sw    $zero, %lo(D_800D6E68)($at)
/* 04B26C 800A301C 3C01800D */  lui   $at, %hi(D_800D6E7C) # $at, 0x800d
/* 04B270 800A3020 AC206E7C */  sw    $zero, %lo(D_800D6E7C)($at)
/* 04B274 800A3024 3C01800D */  lui   $at, %hi(D_800D6E6C) # $at, 0x800d
/* 04B278 800A3028 AC206E6C */  sw    $zero, %lo(D_800D6E6C)($at)
/* 04B27C 800A302C 3C01800D */  lui   $at, %hi(D_800D6E80) # $at, 0x800d
/* 04B280 800A3030 AC206E80 */  sw    $zero, %lo(D_800D6E80)($at)
/* 04B284 800A3034 3C01800D */  lui   $at, %hi(D_800D6E70) # $at, 0x800d
/* 04B288 800A3038 AC206E70 */  sw    $zero, %lo(D_800D6E70)($at)
/* 04B28C 800A303C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04B290 800A3040 3C01800D */  lui   $at, %hi(D_800D6E84) # $at, 0x800d
/* 04B294 800A3044 AC206E84 */  sw    $zero, %lo(D_800D6E84)($at)
/* 04B298 800A3048 3C01800D */  lui   $at, %hi(D_800D6E74) # $at, 0x800d
/* 04B29C 800A304C AC206E74 */  sw    $zero, %lo(D_800D6E74)($at)
/* 04B2A0 800A3050 03E00008 */  jr    $ra
/* 04B2A4 800A3054 27BD0018 */   addiu $sp, $sp, 0x18
.type func_800A2E98, @function
.size func_800A2E98, . - func_800A2E98
