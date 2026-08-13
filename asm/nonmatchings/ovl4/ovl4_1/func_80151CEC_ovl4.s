nonmatching func_80151CEC_ovl4, 0xEC

glabel func_80151CEC_ovl4
    /* F921C 80151CEC 3C01800D */  lui        $at, %hi(D_800D6B54 + 0x8)
    /* F9220 80151CF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F9224 80151CF4 AC246B5C */  sw         $a0, %lo(D_800D6B54 + 0x8)($at)
    /* F9228 80151CF8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F922C 80151CFC 3C01800D */  lui        $at, %hi(D_800D6B74)
    /* F9230 80151D00 240E0001 */  addiu      $t6, $zero, 0x1
    /* F9234 80151D04 0C000AE2 */  jal        scRemovePostProcessFunc
    /* F9238 80151D08 AC2E6B74 */   sw        $t6, %lo(D_800D6B74)($at)
    /* F923C 80151D0C 0C029D36 */  jal        func_800A74D8
    /* F9240 80151D10 00000000 */   nop
    /* F9244 80151D14 00002025 */  or         $a0, $zero, $zero
    /* F9248 80151D18 0C008266 */  jal        auSetBGMVolume
    /* F924C 80151D1C 24057800 */   addiu     $a1, $zero, 0x7800
    /* F9250 80151D20 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* F9254 80151D24 44816000 */  mtc1       $at, $f12
    /* F9258 80151D28 0C02906C */  jal        gameSetUpdateRate
    /* F925C 80151D2C 00000000 */   nop
    /* F9260 80151D30 3C0F8013 */  lui        $t7, %hi(D_8012EB00)
    /* F9264 80151D34 3C048016 */  lui        $a0, %hi(D_8015A048_ovl4)
    /* F9268 80151D38 25EFEB00 */  addiu      $t7, $t7, %lo(D_8012EB00)
    /* F926C 80151D3C 2484A048 */  addiu      $a0, $a0, %lo(D_8015A048_ovl4)
    /* F9270 80151D40 25F8E700 */  addiu      $t8, $t7, -0x1900
    /* F9274 80151D44 0C001EE9 */  jal        viApplyScreenSettings
    /* F9278 80151D48 AC98000C */   sw        $t8, 0xC($a0)
    /* F927C 80151D4C 3C19803B */  lui        $t9, %hi(gFrameBuffer)
    /* F9280 80151D50 3C088019 */  lui        $t0, %hi(D_8018EE60)
    /* F9284 80151D54 3C068016 */  lui        $a2, %hi(D_8015A064_ovl4)
    /* F9288 80151D58 2508EE60 */  addiu      $t0, $t0, %lo(D_8018EE60)
    /* F928C 80151D5C 27396900 */  addiu      $t9, $t9, %lo(gFrameBuffer)
    /* F9290 80151D60 24C6A064 */  addiu      $a2, $a2, %lo(D_8015A064_ovl4)
    /* F9294 80151D64 03284823 */  subu       $t1, $t9, $t0
    /* F9298 80151D68 3C04803B */  lui        $a0, %hi(gFrameBuffer)
    /* F929C 80151D6C 3C02803D */  lui        $v0, %hi(D_803D6900)
    /* F92A0 80151D70 3C058040 */  lui        $a1, %hi(D_803FC100)
    /* F92A4 80151D74 ACC90010 */  sw         $t1, 0x10($a2)
    /* F92A8 80151D78 24A5C100 */  addiu      $a1, $a1, %lo(D_803FC100)
    /* F92AC 80151D7C 24426900 */  addiu      $v0, $v0, %lo(D_803D6900)
    /* F92B0 80151D80 24846900 */  addiu      $a0, $a0, %lo(gFrameBuffer)
    /* F92B4 80151D84 24030001 */  addiu      $v1, $zero, 0x1
  .L80151D88_ovl4:
    /* F92B8 80151D88 A4433F00 */  sh         $v1, 0x3F00($v0)
    /* F92BC 80151D8C A4830000 */  sh         $v1, 0x0($a0)
    /* F92C0 80151D90 A4433F02 */  sh         $v1, 0x3F02($v0)
    /* F92C4 80151D94 A4830002 */  sh         $v1, 0x2($a0)
    /* F92C8 80151D98 A4433F04 */  sh         $v1, 0x3F04($v0)
    /* F92CC 80151D9C A4830004 */  sh         $v1, 0x4($a0)
    /* F92D0 80151DA0 A4433F06 */  sh         $v1, 0x3F06($v0)
    /* F92D4 80151DA4 24420008 */  addiu      $v0, $v0, 0x8
    /* F92D8 80151DA8 A4830006 */  sh         $v1, 0x6($a0)
    /* F92DC 80151DAC 1445FFF6 */  bne        $v0, $a1, .L80151D88_ovl4
    /* F92E0 80151DB0 24840008 */   addiu     $a0, $a0, 0x8
    /* F92E4 80151DB4 0C001CE0 */  jal        gtlCreateScene
    /* F92E8 80151DB8 00C02025 */   or        $a0, $a2, $zero
    /* F92EC 80151DBC 0C02ECFC */  jal        func_800BB3F0
    /* F92F0 80151DC0 00000000 */   nop
    /* F92F4 80151DC4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F92F8 80151DC8 3C02800D */  lui        $v0, %hi(D_800D6B74)
    /* F92FC 80151DCC 8C426B74 */  lw         $v0, %lo(D_800D6B74)($v0)
    /* F9300 80151DD0 03E00008 */  jr         $ra
    /* F9304 80151DD4 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_80151CEC_ovl4
.size func_80151CEC_ovl4, . - func_80151CEC_ovl4
    /* F9308 80151DD8 00000000 */  nop
    /* F930C 80151DDC 00000000 */  nop
