glabel func_801DDFB4_ovl12
/* 1EE2F4 801DDFB4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801DDFB8_ovl16:
/* 1EE2F8 801DDFB8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1EE2FC 801DDFBC 3C07800F */  lui        $a3, %hi(D_800EA520)
/* 1EE300 801DDFC0 24E7A520 */  addiu      $a3, $a3, %lo(D_800EA520)
/* 1EE304 801DDFC4 8C4F0000 */  lw         $t7, 0x0($v0)
.L801DDFC8_ovl13:
/* 1EE308 801DDFC8 240E001E */  addiu      $t6, $zero, 0x1E
/* 1EE30C 801DDFCC 3C0A8013 */  lui        $t2, %hi(D_80129114)
.L801DDFD0_ovl16:
/* 1EE310 801DDFD0 000FC080 */  sll        $t8, $t7, 2
/* 1EE314 801DDFD4 00F8C821 */  addu       $t9, $a3, $t8
/* 1EE318 801DDFD8 AF2E0000 */  sw         $t6, 0x0($t9)
.L801DDFDC_ovl15:
/* 1EE31C 801DDFDC 8C430000 */  lw         $v1, 0x0($v0)
/* 1EE320 801DDFE0 8D4A9114 */  lw         $t2, %lo(D_80129114)($t2)
.L801DDFE4_ovl13:
/* 1EE324 801DDFE4 3C0C800E */  lui        $t4, %hi(D_800E5F90)
.L801DDFE8_ovl16:
/* 1EE328 801DDFE8 00031880 */  sll        $v1, $v1, 2
/* 1EE32C 801DDFEC 01836021 */  addu       $t4, $t4, $v1
/* 1EE330 801DDFF0 8D8C5F90 */  lw         $t4, %lo(D_800E5F90)($t4)
/* 1EE334 801DDFF4 8D4B0004 */  lw         $t3, 0x4($t2)
/* 1EE338 801DDFF8 3C01801E */  lui        $at, %hi(func_801E2D88_ovl16)
/* 1EE33C 801DDFFC 000C6900 */  sll        $t5, $t4, 4
/* 1EE340 801DE000 016D7821 */  addu       $t7, $t3, $t5
/* 1EE344 801DE004 8DE40004 */  lw         $a0, 0x4($t7)
.L801DE008_ovl16:
/* 1EE348 801DE008 C4242D88 */  lwc1       $f4, %lo(func_801E2D88_ovl16)($at)
/* 1EE34C 801DE00C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1EE350 801DE010 C482000C */  lwc1       $f2, 0xC($a0)
.L801DE014_ovl13:
/* 1EE354 801DE014 44813000 */  mtc1       $at, $f6
/* 1EE358 801DE018 3C05800D */  lui        $a1, %hi(D_800D7098 + 0x1C)
.L801DE01C_ovl17:
/* 1EE35C 801DE01C 46022003 */  div.s      $f0, $f4, $f2
/* 1EE360 801DE020 8CA570B4 */  lw         $a1, %lo(D_800D7098 + 0x1C)($a1)
/* 1EE364 801DE024 3C08800E */  lui        $t0, %hi(D_800E6A10)
.L801DE028_ovl13:
/* 1EE368 801DE028 25086A10 */  addiu      $t0, $t0, %lo(D_800E6A10)
.L801DE02C_ovl15:
/* 1EE36C 801DE02C 00052880 */  sll        $a1, $a1, 2
glabel func_801DE030_ovl16
/* 1EE370 801DE030 0105C021 */  addu       $t8, $t0, $a1
/* 1EE374 801DE034 C7120000 */  lwc1       $f18, 0x0($t8)
glabel func_801DE038_ovl11
/* 1EE378 801DE038 01037021 */  addu       $t6, $t0, $v1
/* 1EE37C 801DE03C 3C014120 */  lui        $at, (0x41200000 >> 16)
.L801DE040_ovl15:
/* 1EE380 801DE040 E5D20000 */  swc1       $f18, 0x0($t6)
.L801DE044_ovl13:
/* 1EE384 801DE044 8C430000 */  lw         $v1, 0x0($v0)
/* 1EE388 801DE048 44818000 */  mtc1       $at, $f16
/* 1EE38C 801DE04C 3C09800E */  lui        $t1, %hi(D_800E64D0)
/* 1EE390 801DE050 00031880 */  sll        $v1, $v1, 2
/* 1EE394 801DE054 00E35021 */  addu       $t2, $a3, $v1
.L801DE058_ovl13:
/* 1EE398 801DE058 8D4C0000 */  lw         $t4, 0x0($t2)
.L801DE05C_ovl13:
/* 1EE39C 801DE05C 0103C821 */  addu       $t9, $t0, $v1
/* 1EE3A0 801DE060 C7240000 */  lwc1       $f4, 0x0($t9)
.L801DE064_ovl17:
/* 1EE3A4 801DE064 252964D0 */  addiu      $t1, $t1, %lo(D_800E64D0)
/* 1EE3A8 801DE068 01235821 */  addu       $t3, $t1, $v1
/* 1EE3AC 801DE06C 0125C021 */  addu       $t8, $t1, $a1
.L801DE070_ovl15:
/* 1EE3B0 801DE070 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1EE3B4 801DE074 46023203 */  div.s      $f8, $f6, $f2
/* 1EE3B8 801DE078 448C3000 */  mtc1       $t4, $f6
.L801DE07C_ovl11:
/* 1EE3BC 801DE07C 46080283 */  div.s      $f10, $f0, $f8
/* 1EE3C0 801DE080 46803220 */  cvt.s.w    $f8, $f6
glabel func_801DE084_ovl13
/* 1EE3C4 801DE084 46105302 */  mul.s      $f12, $f10, $f16
/* 1EE3C8 801DE088 46086283 */  div.s      $f10, $f12, $f8
/* 1EE3CC 801DE08C 460A2402 */  mul.s      $f16, $f4, $f10
/* 1EE3D0 801DE090 44802000 */  mtc1       $zero, $f4
.L801DE094_ovl9:
/* 1EE3D4 801DE094 E5700000 */  swc1       $f16, 0x0($t3)
/* 1EE3D8 801DE098 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1EE3DC 801DE09C C7060000 */  lwc1       $f6, 0x0($t8)
/* 1EE3E0 801DE0A0 000D7880 */  sll        $t7, $t5, 2
/* 1EE3E4 801DE0A4 012F3021 */  addu       $a2, $t1, $t7
/* 1EE3E8 801DE0A8 C4D20000 */  lwc1       $f18, 0x0($a2)
.L801DE0AC_ovl9:
/* 1EE3EC 801DE0AC 46069200 */  add.s      $f8, $f18, $f6
/* 1EE3F0 801DE0B0 E4C80000 */  swc1       $f8, 0x0($a2)
/* 1EE3F4 801DE0B4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1EE3F8 801DE0B8 000EC880 */  sll        $t9, $t6, 2
/* 1EE3FC 801DE0BC 00390821 */  addu       $at, $at, $t9
.L801DE0C0_ovl17:
/* 1EE400 801DE0C0 E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
.L801DE0C4_ovl17:
/* 1EE404 801DE0C4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1EE408 801DE0C8 3C01801E */  lui        $at, %hi(func_801E2D88_ovl16 + 0x4)
/* 1EE40C 801DE0CC C42A2D8C */  lwc1       $f10, %lo(func_801E2D88_ovl16 + 0x4)($at)
.L801DE0D0_ovl14:
/* 1EE410 801DE0D0 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1EE414 801DE0D4 000A6080 */  sll        $t4, $t2, 2
/* 1EE418 801DE0D8 002C0821 */  addu       $at, $at, $t4
.L801DE0DC_ovl10:
/* 1EE41C 801DE0DC 03E00008 */  jr         $ra
.L801DE0E0_ovl11:
/* 1EE420 801DE0E0 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
