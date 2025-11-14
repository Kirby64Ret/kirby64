glabel func_80152124_ovl3
/* 0B2B64 80152124 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B2B68 80152128 AFA60028 */  sw    $a2, 0x28($sp)
/* 0B2B6C 8015212C 30C600FF */  andi  $a2, $a2, 0xff
/* 0B2B70 80152130 AFB10018 */  sw    $s1, 0x18($sp)
/* 0B2B74 80152134 AFB00014 */  sw    $s0, 0x14($sp)
/* 0B2B78 80152138 44876000 */  mtc1  $a3, $f12
/* 0B2B7C 8015213C 28C10011 */  slti  $at, $a2, 0x11
/* 0B2B80 80152140 00A08025 */  move  $s0, $a1
/* 0B2B84 80152144 00808825 */  move  $s1, $a0
/* 0B2B88 80152148 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B2B8C 8015214C 14200007 */  bnez  $at, .L8015216C_ovl3
/* 0B2B90 80152150 00C03825 */   move  $a3, $a2
/* 0B2B94 80152154 3C048019 */  lui   $a0, %hi(D_80196E3C) # $a0, 0x8019
/* 0B2B98 80152158 24846E3C */  addiu $a0, %lo(D_80196E3C) # addiu $a0, $a0, 0x6e3c
/* 0B2B9C 8015215C 0C02909C */  jal   print_error_stub
/* 0B2BA0 80152160 24050010 */   li    $a1, 16
/* 0B2BA4 80152164 1000001D */  b     .L801521DC_ovl3
/* 0B2BA8 80152168 00001025 */   move  $v0, $zero
.L8015216C_ovl3:
/* 0B2BAC 8015216C 18E0001A */  blez  $a3, .L801521D8_ovl3
/* 0B2BB0 80152170 00002825 */   move  $a1, $zero
/* 0B2BB4 80152174 C7A20034 */  lwc1  $f2, 0x34($sp)
/* 0B2BB8 80152178 C7A00030 */  lwc1  $f0, 0x30($sp)
.L8015217C_ovl3:
/* 0B2BBC 8015217C 00052100 */  sll   $a0, $a1, 4
/* 0B2BC0 80152180 02241821 */  addu  $v1, $s1, $a0
/* 0B2BC4 80152184 C4640000 */  lwc1  $f4, ($v1)
/* 0B2BC8 80152188 02041021 */  addu  $v0, $s0, $a0
/* 0B2BCC 8015218C 24A50001 */  addiu $a1, $a1, 1
/* 0B2BD0 80152190 460C2182 */  mul.s $f6, $f4, $f12
/* 0B2BD4 80152194 30A500FF */  andi  $a1, $a1, 0xff
/* 0B2BD8 80152198 00A7082A */  slt   $at, $a1, $a3
/* 0B2BDC 8015219C 46003200 */  add.s $f8, $f6, $f0
/* 0B2BE0 801521A0 E4480000 */  swc1  $f8, ($v0)
/* 0B2BE4 801521A4 C46A0004 */  lwc1  $f10, 4($v1)
/* 0B2BE8 801521A8 460C5402 */  mul.s $f16, $f10, $f12
/* 0B2BEC 801521AC 46028480 */  add.s $f18, $f16, $f2
/* 0B2BF0 801521B0 E4520004 */  swc1  $f18, 4($v0)
/* 0B2BF4 801521B4 C4640008 */  lwc1  $f4, 8($v1)
/* 0B2BF8 801521B8 460C2182 */  mul.s $f6, $f4, $f12
/* 0B2BFC 801521BC 46003200 */  add.s $f8, $f6, $f0
/* 0B2C00 801521C0 E4480008 */  swc1  $f8, 8($v0)
/* 0B2C04 801521C4 C46A000C */  lwc1  $f10, 0xc($v1)
/* 0B2C08 801521C8 460C5402 */  mul.s $f16, $f10, $f12
/* 0B2C0C 801521CC 46028480 */  add.s $f18, $f16, $f2
/* 0B2C10 801521D0 1420FFEA */  bnez  $at, .L8015217C_ovl3
/* 0B2C14 801521D4 E452000C */   swc1  $f18, 0xc($v0)
.L801521D8_ovl3:
/* 0B2C18 801521D8 24020001 */  li    $v0, 1
.L801521DC_ovl3:
/* 0B2C1C 801521DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B2C20 801521E0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B2C24 801521E4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B2C28 801521E8 03E00008 */  jr    $ra
/* 0B2C2C 801521EC 27BD0020 */   addiu $sp, $sp, 0x20
.type func_80152124_ovl3, @function
.size func_80152124_ovl3, . - func_80152124_ovl3
