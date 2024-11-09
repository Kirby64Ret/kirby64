glabel func_80152070_ovl3
/* 0B2AB0 80152070 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B2AB4 80152074 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B2AB8 80152078 30C600FF */  andi  $a2, $a2, 0xff
/* 0B2ABC 8015207C AFB10018 */  sw    $s1, 0x18($sp)
/* 0B2AC0 80152080 AFB00014 */  sw    $s0, 0x14($sp)
/* 0B2AC4 80152084 44876000 */  mtc1  $a3, $f12
/* 0B2AC8 80152088 28C10011 */  slti  $at, $a2, 0x11
/* 0B2ACC 8015208C 00A08025 */  move  $s0, $a1
/* 0B2AD0 80152090 00808825 */  move  $s1, $a0
/* 0B2AD4 80152094 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B2AD8 80152098 14200007 */  bnez  $at, .L801520B8_ovl3
/* 0B2ADC 8015209C 00C03825 */   move  $a3, $a2
/* 0B2AE0 801520A0 3C048019 */  lui   $a0, %hi(D_80196E10) # $a0, 0x8019
/* 0B2AE4 801520A4 24846E10 */  addiu $a0, %lo(D_80196E10) # addiu $a0, $a0, 0x6e10
/* 0B2AE8 801520A8 0C02909C */  jal   print_error_stub
/* 0B2AEC 801520AC 24050010 */   li    $a1, 16
/* 0B2AF0 801520B0 10000017 */  b     .L80152110_ovl3
/* 0B2AF4 801520B4 00001025 */   move  $v0, $zero
.L801520B8_ovl3:
/* 0B2AF8 801520B8 18E00014 */  blez  $a3, .L8015210C_ovl3
/* 0B2AFC 801520BC 00002825 */   move  $a1, $zero
.L801520C0_ovl3:
/* 0B2B00 801520C0 00052100 */  sll   $a0, $a1, 4
/* 0B2B04 801520C4 02241821 */  addu  $v1, $s1, $a0
/* 0B2B08 801520C8 C4640000 */  lwc1  $f4, ($v1)
/* 0B2B0C 801520CC 02041021 */  addu  $v0, $s0, $a0
/* 0B2B10 801520D0 24A50001 */  addiu $a1, $a1, 1
/* 0B2B14 801520D4 460C2182 */  mul.s $f6, $f4, $f12
/* 0B2B18 801520D8 30A500FF */  andi  $a1, $a1, 0xff
/* 0B2B1C 801520DC 00A7082A */  slt   $at, $a1, $a3
/* 0B2B20 801520E0 E4460000 */  swc1  $f6, ($v0)
/* 0B2B24 801520E4 C4680004 */  lwc1  $f8, 4($v1)
/* 0B2B28 801520E8 460C4282 */  mul.s $f10, $f8, $f12
/* 0B2B2C 801520EC E44A0004 */  swc1  $f10, 4($v0)
/* 0B2B30 801520F0 C4700008 */  lwc1  $f16, 8($v1)
/* 0B2B34 801520F4 460C8482 */  mul.s $f18, $f16, $f12
/* 0B2B38 801520F8 E4520008 */  swc1  $f18, 8($v0)
/* 0B2B3C 801520FC C464000C */  lwc1  $f4, 0xc($v1)
/* 0B2B40 80152100 460C2182 */  mul.s $f6, $f4, $f12
/* 0B2B44 80152104 1420FFEE */  bnez  $at, .L801520C0_ovl3
/* 0B2B48 80152108 E446000C */   swc1  $f6, 0xc($v0)
.L8015210C_ovl3:
/* 0B2B4C 8015210C 24020001 */  li    $v0, 1
.L80152110_ovl3:
/* 0B2B50 80152110 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B2B54 80152114 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B2B58 80152118 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B2B5C 8015211C 03E00008 */  jr    $ra
/* 0B2B60 80152120 27BD0020 */   addiu $sp, $sp, 0x20
.type func_80152070_ovl3, @function
.size func_80152070_ovl3, . - func_80152070_ovl3
