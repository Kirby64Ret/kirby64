glabel func_80151CEC_ovl4
/* 0F921C 80151CEC 3C01800D */  lui   $at, %hi(D_800D6B5C) # $at, 0x800d
/* 0F9220 80151CF0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0F9224 80151CF4 AC246B5C */  sw    $a0, %lo(D_800D6B5C)($at)
/* 0F9228 80151CF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0F922C 80151CFC 3C01800D */  lui   $at, %hi(D_800D6B74) # $at, 0x800d
/* 0F9230 80151D00 240E0001 */  li    $t6, 1
/* 0F9234 80151D04 0C000AE2 */  jal   func_80002B88_ovl4
/* 0F9238 80151D08 AC2E6B74 */   sw    $t6, %lo(D_800D6B74)($at)
/* 0F923C 80151D0C 0C029D36 */  jal   func_800A74D8
/* 0F9240 80151D10 00000000 */   nop   
/* 0F9244 80151D14 00002025 */  move  $a0, $zero
/* 0F9248 80151D18 0C008266 */  jal   func_80020998_ovl4
/* 0F924C 80151D1C 24057800 */   li    $a1, 30720
/* 0F9250 80151D20 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0F9254 80151D24 44816000 */  mtc1  $at, $f12
/* 0F9258 80151D28 0C02906C */  jal   func_800A41B0
/* 0F925C 80151D2C 00000000 */   nop   
/* 0F9260 80151D30 3C0F8013 */  lui   $t7, %hi(D_8012EB00) # $t7, 0x8013
/* 0F9264 80151D34 3C048016 */  lui   $a0, %hi(D_8015A048) # $a0, 0x8016
/* 0F9268 80151D38 25EFEB00 */  addiu $t7, %lo(D_8012EB00) # addiu $t7, $t7, -0x1500
/* 0F926C 80151D3C 2484A048 */  addiu $a0, %lo(D_8015A048) # addiu $a0, $a0, -0x5fb8
/* 0F9270 80151D40 25F8E700 */  addiu $t8, $t7, -0x1900
/* 0F9274 80151D44 0C001EE9 */  jal   func_80007BA4_ovl4
/* 0F9278 80151D48 AC98000C */   sw    $t8, 0xc($a0)
/* 0F927C 80151D4C 3C19803B */  lui   $t9, %hi(gFrameBuffer) # $t9, 0x803b
/* 0F9280 80151D50 3C088019 */  lui   $t0, %hi(D_8018EE60) # $t0, 0x8019
/* 0F9284 80151D54 3C068016 */  lui   $a2, %hi(D_8015A064) # $a2, 0x8016
/* 0F9288 80151D58 2508EE60 */  addiu $t0, %lo(D_8018EE60) # addiu $t0, $t0, -0x11a0
/* 0F928C 80151D5C 27396900 */  addiu $t9, %lo(gFrameBuffer) # addiu $t9, $t9, 0x6900
/* 0F9290 80151D60 24C6A064 */  addiu $a2, %lo(D_8015A064) # addiu $a2, $a2, -0x5f9c
/* 0F9294 80151D64 03284823 */  subu  $t1, $t9, $t0
/* 0F9298 80151D68 3C04803B */  lui   $a0, %hi(gFrameBuffer) # $a0, 0x803b
/* 0F929C 80151D6C 3C02803D */  lui   $v0, %hi(D_803D6900) # $v0, 0x803d
/* 0F92A0 80151D70 3C058040 */  lui   $a1, %hi(D_803FC100) # $a1, 0x8040
/* 0F92A4 80151D74 ACC90010 */  sw    $t1, 0x10($a2)
/* 0F92A8 80151D78 24A5C100 */  addiu $a1, %lo(D_803FC100) # addiu $a1, $a1, -0x3f00
/* 0F92AC 80151D7C 24426900 */  addiu $v0, %lo(D_803D6900) # addiu $v0, $v0, 0x6900
/* 0F92B0 80151D80 24846900 */  addiu $a0, %lo(gFrameBuffer) # addiu $a0, $a0, 0x6900
/* 0F92B4 80151D84 24030001 */  li    $v1, 1
.L80151D88_ovl4:
/* 0F92B8 80151D88 A4433F00 */  sh    $v1, 0x3f00($v0)
/* 0F92BC 80151D8C A4830000 */  sh    $v1, ($a0)
/* 0F92C0 80151D90 A4433F02 */  sh    $v1, 0x3f02($v0)
/* 0F92C4 80151D94 A4830002 */  sh    $v1, 2($a0)
/* 0F92C8 80151D98 A4433F04 */  sh    $v1, 0x3f04($v0)
/* 0F92CC 80151D9C A4830004 */  sh    $v1, 4($a0)
/* 0F92D0 80151DA0 A4433F06 */  sh    $v1, 0x3f06($v0)
/* 0F92D4 80151DA4 24420008 */  addiu $v0, $v0, 8
/* 0F92D8 80151DA8 A4830006 */  sh    $v1, 6($a0)
/* 0F92DC 80151DAC 1445FFF6 */  bne   $v0, $a1, .L80151D88_ovl4
/* 0F92E0 80151DB0 24840008 */   addiu $a0, $a0, 8
/* 0F92E4 80151DB4 0C001CE0 */  jal   func_80007380
/* 0F92E8 80151DB8 00C02025 */   move  $a0, $a2
/* 0F92EC 80151DBC 0C02ECFC */  jal   func_800BB3F0
/* 0F92F0 80151DC0 00000000 */   nop   
/* 0F92F4 80151DC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0F92F8 80151DC8 3C02800D */  lui   $v0, %hi(D_800D6B74) # $v0, 0x800d
/* 0F92FC 80151DCC 8C426B74 */  lw    $v0, %lo(D_800D6B74)($v0)
/* 0F9300 80151DD0 03E00008 */  jr    $ra
/* 0F9304 80151DD4 27BD0018 */   addiu $sp, $sp, 0x18
.type func_80151CEC_ovl4, @function

/* 0F9308 80151DD8 00000000 */  nop
/* 0F930C 80151DDC 00000000 */  nop
.type func_80151CEC_ovl4, @function
.size func_80151CEC_ovl4, . - func_80151CEC_ovl4
