glabel func_800A2D68
/* 04AFB8 800A2D68 3C03800C */  lui   $v1, %hi(D_800BE518) # $v1, 0x800c
/* 04AFBC 800A2D6C 2463E518 */  addiu $v1, %lo(D_800BE518) # addiu $v1, $v1, -0x1ae8
/* 04AFC0 800A2D70 AC600000 */  sw    $zero, ($v1)
/* 04AFC4 800A2D74 3C01800C */  lui   $at, %hi(D_800BE4FC) # $at, 0x800c
/* 04AFC8 800A2D78 3C05800C */  lui   $a1, %hi(D_800BE51C) # $a1, 0x800c
/* 04AFCC 800A2D7C AC20E4FC */  sw    $zero, %lo(D_800BE4FC)($at)
/* 04AFD0 800A2D80 24A5E51C */  addiu $a1, %lo(D_800BE51C) # addiu $a1, $a1, -0x1ae4
/* 04AFD4 800A2D84 ACA00000 */  sw    $zero, ($a1)
/* 04AFD8 800A2D88 3C01800C */  lui   $at, %hi(D_800BE508) # $at, 0x800c
/* 04AFDC 800A2D8C 3C06800C */  lui   $a2, %hi(D_800BE520) # $a2, 0x800c
/* 04AFE0 800A2D90 AC20E508 */  sw    $zero, %lo(D_800BE508)($at)
/* 04AFE4 800A2D94 44802000 */  mtc1  $zero, $f4
/* 04AFE8 800A2D98 24C6E520 */  addiu $a2, %lo(D_800BE520) # addiu $a2, $a2, -0x1ae0
/* 04AFEC 800A2D9C 3C07800C */  lui   $a3, %hi(D_800BE524) # $a3, 0x800c
/* 04AFF0 800A2DA0 ACC00000 */  sw    $zero, ($a2)
/* 04AFF4 800A2DA4 3C01800C */  lui   $at, %hi(D_800BE50C) # $at, 0x800c
/* 04AFF8 800A2DA8 24E7E524 */  addiu $a3, %lo(D_800BE524) # addiu $a3, $a3, -0x1adc
/* 04AFFC 800A2DAC AC20E50C */  sw    $zero, %lo(D_800BE50C)($at)
/* 04B000 800A2DB0 E4E40000 */  swc1  $f4, ($a3)
/* 04B004 800A2DB4 C4E60000 */  lwc1  $f6, ($a3)
/* 04B008 800A2DB8 3C01800C */  lui   $at, %hi(D_800BE510) # $at, 0x800c
/* 04B00C 800A2DBC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04B010 800A2DC0 E426E510 */  swc1  $f6, %lo(D_800BE510)($at)
/* 04B014 800A2DC4 3C01800D */  lui   $at, %hi(D_800D6F4C) # $at, 0x800d
/* 04B018 800A2DC8 AC206F4C */  sw    $zero, %lo(D_800D6F4C)($at)
/* 04B01C 800A2DCC 3C01800D */  lui   $at, %hi(D_800D6E64) # $at, 0x800d
/* 04B020 800A2DD0 AC206E64 */  sw    $zero, %lo(D_800D6E64)($at)
/* 04B024 800A2DD4 3C01800D */  lui   $at, %hi(D_800D6E48) # $at, 0x800d
/* 04B028 800A2DD8 3C03800D */  lui   $v1, %hi(D_800D6E10) # $v1, 0x800d
/* 04B02C 800A2DDC 3C02800D */  lui   $v0, %hi(D_800D6D10) # $v0, 0x800d
/* 04B030 800A2DE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04B034 800A2DE4 AC206E48 */  sw    $zero, %lo(D_800D6E48)($at)
/* 04B038 800A2DE8 24426D10 */  addiu $v0, %lo(D_800D6D10) # addiu $v0, $v0, 0x6d10
/* 04B03C 800A2DEC 24636E10 */  addiu $v1, %lo(D_800D6E10) # addiu $v1, $v1, 0x6e10
.L800A2DF0_ovl1:
/* 04B040 800A2DF0 24420004 */  addiu $v0, $v0, 4
/* 04B044 800A2DF4 0043082B */  sltu  $at, $v0, $v1
/* 04B048 800A2DF8 1420FFFD */  bnez  $at, .L800A2DF0_ovl1
/* 04B04C 800A2DFC AC40FFFC */   sw    $zero, -4($v0)
/* 04B050 800A2E00 3C02800D */  lui   $v0, %hi(D_800D6E20) # $v0, 0x800d
/* 04B054 800A2E04 3C03800D */  lui   $v1, %hi(D_800D6E30) # $v1, 0x800d
/* 04B058 800A2E08 3C04800D */  lui   $a0, %hi(D_800D6E40) # $a0, 0x800d
/* 04B05C 800A2E0C 24846E40 */  addiu $a0, %lo(D_800D6E40) # addiu $a0, $a0, 0x6e40
/* 04B060 800A2E10 24636E30 */  addiu $v1, %lo(D_800D6E30) # addiu $v1, $v1, 0x6e30
/* 04B064 800A2E14 24426E20 */  addiu $v0, %lo(D_800D6E20) # addiu $v0, $v0, 0x6e20
.L800A2E18_ovl1:
/* 04B068 800A2E18 24630004 */  addiu $v1, $v1, 4
/* 04B06C 800A2E1C A0400001 */  sb    $zero, 1($v0)
/* 04B070 800A2E20 A060FFFD */  sb    $zero, -3($v1)
/* 04B074 800A2E24 A0400002 */  sb    $zero, 2($v0)
/* 04B078 800A2E28 A060FFFE */  sb    $zero, -2($v1)
/* 04B07C 800A2E2C A0400003 */  sb    $zero, 3($v0)
/* 04B080 800A2E30 A060FFFF */  sb    $zero, -1($v1)
/* 04B084 800A2E34 24420004 */  addiu $v0, $v0, 4
/* 04B088 800A2E38 A040FFFC */  sb    $zero, -4($v0)
/* 04B08C 800A2E3C 1464FFF6 */  bne   $v1, $a0, .L800A2E18_ovl1
/* 04B090 800A2E40 A060FFFC */   sb    $zero, -4($v1)
/* 04B094 800A2E44 240B0022 */  li    $t3, 34
/* 04B098 800A2E48 3C01800D */  lui   $at, %hi(D_800D6B48) # $at, 0x800d
/* 04B09C 800A2E4C 0C04721F */  jal   func_8011C87C
/* 04B0A0 800A2E50 AC2B6B48 */   sw    $t3, %lo(D_800D6B48)($at)
/* 04B0A4 800A2E54 3C0C800D */  lui   $t4, %hi(D_800D6B98) # $t4, 0x800d
/* 04B0A8 800A2E58 8D8C6B98 */  lw    $t4, %lo(D_800D6B98)($t4)
/* 04B0AC 800A2E5C 3C02800C */  lui   $v0, %hi(D_800BE52C) # $v0, 0x800c
/* 04B0B0 800A2E60 2442E52C */  addiu $v0, %lo(D_800BE52C) # addiu $v0, $v0, -0x1ad4
/* 04B0B4 800A2E64 3C0E800D */  lui   $t6, %hi(D_800D6B9C) # $t6, 0x800d
/* 04B0B8 800A2E68 AC4C0000 */  sw    $t4, ($v0)
/* 04B0BC 800A2E6C 8DCE6B9C */  lw    $t6, %lo(D_800D6B9C)($t6)
/* 04B0C0 800A2E70 3C01800C */  lui   $at, %hi(D_800BE500) # $at, 0x800c
/* 04B0C4 800A2E74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04B0C8 800A2E78 3C03800C */  lui   $v1, %hi(D_800BE530) # $v1, 0x800c
/* 04B0CC 800A2E7C AC2CE500 */  sw    $t4, %lo(D_800BE500)($at)
/* 04B0D0 800A2E80 2463E530 */  addiu $v1, %lo(D_800BE530) # addiu $v1, $v1, -0x1ad0
/* 04B0D4 800A2E84 3C01800C */ lui $at, %hi(D_800BE504)
/* 04B0D8 800A2E88 AC6E0000 */  sw    $t6, ($v1)
/* 04B0DC 800A2E8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 04B0E0 800A2E90 03E00008 */  jr    $ra
/* 04B0E4 800A2E94 AC2EE504 */ sw $t6, %lo(D_800BE504)($at)
.type func_800A2D68, @function
.size func_800A2D68, . - func_800A2D68
