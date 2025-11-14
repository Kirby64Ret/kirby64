glabel func_8015229C_ovl3
/* 0B2CDC 8015229C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B2CE0 801522A0 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B2CE4 801522A4 30C600FF */  andi  $a2, $a2, 0xff
/* 0B2CE8 801522A8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0B2CEC 801522AC AFB00014 */  sw    $s0, 0x14($sp)
/* 0B2CF0 801522B0 44876000 */  mtc1  $a3, $f12
/* 0B2CF4 801522B4 28C10011 */  slti  $at, $a2, 0x11
/* 0B2CF8 801522B8 00A08025 */  move  $s0, $a1
/* 0B2CFC 801522BC 00808825 */  move  $s1, $a0
/* 0B2D00 801522C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B2D04 801522C4 14200007 */  bnez  $at, .L801522E4_ovl3
/* 0B2D08 801522C8 00C03825 */   move  $a3, $a2
/* 0B2D0C 801522CC 3C048019 */  lui   $a0, %hi(D_80196E94) # $a0, 0x8019
/* 0B2D10 801522D0 24846E94 */  addiu $a0, %lo(D_80196E94) # addiu $a0, $a0, 0x6e94
/* 0B2D14 801522D4 0C02909C */  jal   print_error_stub
/* 0B2D18 801522D8 24050010 */   li    $a1, 16
/* 0B2D1C 801522DC 10000015 */  b     .L80152334_ovl3
/* 0B2D20 801522E0 00001025 */   move  $v0, $zero
.L801522E4_ovl3:
/* 0B2D24 801522E4 18E00012 */  blez  $a3, .L80152330_ovl3
/* 0B2D28 801522E8 00002825 */   move  $a1, $zero
.L801522EC_ovl3:
/* 0B2D2C 801522EC 00052100 */  sll   $a0, $a1, 4
/* 0B2D30 801522F0 02241821 */  addu  $v1, $s1, $a0
/* 0B2D34 801522F4 C4640000 */  lwc1  $f4, ($v1)
/* 0B2D38 801522F8 02041021 */  addu  $v0, $s0, $a0
/* 0B2D3C 801522FC 24A50001 */  addiu $a1, $a1, 1
/* 0B2D40 80152300 460C2182 */  mul.s $f6, $f4, $f12
/* 0B2D44 80152304 30A500FF */  andi  $a1, $a1, 0xff
/* 0B2D48 80152308 00A7082A */  slt   $at, $a1, $a3
/* 0B2D4C 8015230C E4460000 */  swc1  $f6, ($v0)
/* 0B2D50 80152310 C4680004 */  lwc1  $f8, 4($v1)
/* 0B2D54 80152314 E4480004 */  swc1  $f8, 4($v0)
/* 0B2D58 80152318 C46A0008 */  lwc1  $f10, 8($v1)
/* 0B2D5C 8015231C 460C5402 */  mul.s $f16, $f10, $f12
/* 0B2D60 80152320 E4500008 */  swc1  $f16, 8($v0)
/* 0B2D64 80152324 C472000C */  lwc1  $f18, 0xc($v1)
/* 0B2D68 80152328 1420FFF0 */  bnez  $at, .L801522EC_ovl3
/* 0B2D6C 8015232C E452000C */   swc1  $f18, 0xc($v0)
.L80152330_ovl3:
/* 0B2D70 80152330 24020001 */  li    $v0, 1
.L80152334_ovl3:
/* 0B2D74 80152334 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B2D78 80152338 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B2D7C 8015233C 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B2D80 80152340 03E00008 */  jr    $ra
/* 0B2D84 80152344 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8015229C_ovl3, @function
.size func_8015229C_ovl3, . - func_8015229C_ovl3
