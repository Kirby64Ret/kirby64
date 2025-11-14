glabel func_800F6AD4
/* 07F544 800F6AD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07F548 800F6AD8 AFA40018 */  sw    $a0, 0x18($sp)
/* 07F54C 800F6ADC AFA5001C */  sw    $a1, 0x1c($sp)
/* 07F550 800F6AE0 8FA50018 */  lw    $a1, 0x18($sp)
/* 07F554 800F6AE4 3C0E8013 */  lui   $t6, %hi(D_8012EB00) # $t6, 0x8013
/* 07F558 800F6AE8 3C048012 */  lui   $a0, %hi(D_80123EC0) # $a0, 0x8012
/* 07F55C 800F6AEC 3C01800D */  lui   $at, %hi(D_800D6B70) # $at, 0x800d
/* 07F560 800F6AF0 25CEEB00 */  addiu $t6, %lo(D_8012EB00) # addiu $t6, $t6, -0x1500
/* 07F564 800F6AF4 24843EC0 */  addiu $a0, %lo(D_80123EC0) # addiu $a0, $a0, 0x3ec0
/* 07F568 800F6AF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07F56C 800F6AFC 25CFE700 */  addiu $t7, $t6, -0x1900
/* 07F570 800F6B00 AC256B70 */  sw    $a1, %lo(D_800D6B70)($at)
/* 07F574 800F6B04 0C001EE9 */  jal   func_80007BA4_ovl2
/* 07F578 800F6B08 AC8F000C */   sw    $t7, 0xc($a0)
/* 07F57C 800F6B0C 3C04803B */  lui   $a0, %hi(gFrameBuffer) # $a0, 0x803b
/* 07F580 800F6B10 3C03803D */  lui   $v1, %hi(D_803D6900) # $v1, 0x803d
/* 07F584 800F6B14 3C058040 */  lui   $a1, %hi(D_803FC100) # $a1, 0x8040
/* 07F588 800F6B18 24A5C100 */  addiu $a1, %lo(D_803FC100) # addiu $a1, $a1, -0x3f00
/* 07F58C 800F6B1C 24636900 */  addiu $v1, %lo(D_803D6900) # addiu $v1, $v1, 0x6900
/* 07F590 800F6B20 24846900 */  addiu $a0, %lo(gFrameBuffer) # addiu $a0, $a0, 0x6900
/* 07F594 800F6B24 24020001 */  li    $v0, 1
.L800F6B28_ovl2:
/* 07F598 800F6B28 A4820000 */  sh    $v0, ($a0)
/* 07F59C 800F6B2C A4623F00 */  sh    $v0, 0x3f00($v1)
/* 07F5A0 800F6B30 A4820002 */  sh    $v0, 2($a0)
/* 07F5A4 800F6B34 A4623F02 */  sh    $v0, 0x3f02($v1)
/* 07F5A8 800F6B38 A4820004 */  sh    $v0, 4($a0)
/* 07F5AC 800F6B3C A4623F04 */  sh    $v0, 0x3f04($v1)
/* 07F5B0 800F6B40 A4820006 */  sh    $v0, 6($a0)
/* 07F5B4 800F6B44 24630008 */  addiu $v1, $v1, 8
/* 07F5B8 800F6B48 A4623EFE */  sh    $v0, 0x3efe($v1)
/* 07F5BC 800F6B4C 1465FFF6 */  bne   $v1, $a1, .L800F6B28_ovl2
/* 07F5C0 800F6B50 24840008 */   addiu $a0, $a0, 8
/* 07F5C4 800F6B54 3C18803B */  lui   $t8, %hi(gFrameBuffer) # $t8, 0x803b
/* 07F5C8 800F6B58 3C198023 */  lui   $t9, %hi(_ovl19SegNoloadEnd) # $t9, 0x8023
/* 07F5CC 800F6B5C 3C028012 */  lui   $v0, %hi(D_80123F68) # $v0, 0x8012
/* 07F5D0 800F6B60 2739FB50 */  addiu $t9, %lo(_ovl19SegNoloadEnd) # addiu $t9, $t9, -0x4b0
/* 07F5D4 800F6B64 27186900 */  addiu $t8, %lo(gFrameBuffer) # addiu $t8, $t8, 0x6900
/* 07F5D8 800F6B68 24423F68 */  addiu $v0, %lo(D_80123F68) # addiu $v0, $v0, 0x3f68
/* 07F5DC 800F6B6C 03194023 */  subu  $t0, $t8, $t9
/* 07F5E0 800F6B70 AC480010 */  sw    $t0, 0x10($v0)
/* 07F5E4 800F6B74 3C018012 */  lui   $at, %hi(D_80123EEC) # $at, 0x8012
/* 07F5E8 800F6B78 AC283EEC */  sw    $t0, %lo(D_80123EEC)($at)
/* 07F5EC 800F6B7C 3C01800D */  lui   $at, %hi(D_800D6FA8) # $at, 0x800d
/* 07F5F0 800F6B80 AC206FA8 */  sw    $zero, %lo(D_800D6FA8)($at)
/* 07F5F4 800F6B84 3C018013 */  lui   $at, %hi(D_8012D920) # $at, 0x8013
/* 07F5F8 800F6B88 AC20D920 */  sw    $zero, %lo(D_8012D920)($at)
/* 07F5FC 800F6B8C 3C01800D */  lui   $at, %hi(D_800D6FAC) # $at, 0x800d
/* 07F600 800F6B90 AC206FAC */  sw    $zero, %lo(D_800D6FAC)($at)
/* 07F604 800F6B94 3C03800D */  lui   $v1, %hi(D_800D7B80) # $v1, 0x800d
/* 07F608 800F6B98 3C04800D */  lui   $a0, %hi(D_800D7B7C) # $a0, 0x800d
/* 07F60C 800F6B9C 24847B7C */  addiu $a0, %lo(D_800D7B7C) # addiu $a0, $a0, 0x7b7c
/* 07F610 800F6BA0 24637B80 */  addiu $v1, %lo(D_800D7B80) # addiu $v1, $v1, 0x7b80
/* 07F614 800F6BA4 AC600000 */  sw    $zero, ($v1)
/* 07F618 800F6BA8 AC800000 */  sw    $zero, ($a0)
/* 07F61C 800F6BAC 3C01800D */  lui   $at, %hi(D_800D7B78) # $at, 0x800d
/* 07F620 800F6BB0 AC207B78 */  sw    $zero, %lo(D_800D7B78)($at)
/* 07F624 800F6BB4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 07F628 800F6BB8 44816000 */  mtc1  $at, $f12
/* 07F62C 800F6BBC 0C02906C */  jal   func_800A41B0
/* 07F630 800F6BC0 00000000 */   nop   
/* 07F634 800F6BC4 3C0C800C */  lui   $t4, %hi(D_800BE500) # $t4, 0x800c
/* 07F638 800F6BC8 8D8CE500 */  lw    $t4, %lo(D_800BE500)($t4)
/* 07F63C 800F6BCC 24010006 */  li    $at, 6
/* 07F640 800F6BD0 3C0D800C */  lui   $t5, %hi(D_800BE504) # $t5, 0x800c
/* 07F644 800F6BD4 1581000E */  bne   $t4, $at, .L800F6C10_ovl2
/* 07F648 800F6BD8 3C048012 */   lui   $a0, 0x8012
/* 07F64C 800F6BDC 8DADE504 */  lw    $t5, %lo(D_800BE504)($t5)
/* 07F650 800F6BE0 3C0E800C */  lui   $t6, %hi(D_800BE534) # $t6, 0x800c
/* 07F654 800F6BE4 15A0000A */  bnez  $t5, .L800F6C10_ovl2
/* 07F658 800F6BE8 00000000 */   nop   
/* 07F65C 800F6BEC 8DCEE534 */  lw    $t6, %lo(D_800BE534)($t6)
/* 07F660 800F6BF0 24010002 */  li    $at, 2
/* 07F664 800F6BF4 15C10006 */  bne   $t6, $at, .L800F6C10_ovl2
/* 07F668 800F6BF8 00000000 */   nop   
/* 07F66C 800F6BFC 3C048012 */  lui   $a0, %hi(D_80123F68) # $a0, 0x8012
/* 07F670 800F6C00 0C001CE0 */  jal   func_80007380
/* 07F674 800F6C04 24843F68 */   addiu $a0, %lo(D_80123F68) # addiu $a0, $a0, 0x3f68
/* 07F678 800F6C08 10000003 */  b     .L800F6C18_ovl2
/* 07F67C 800F6C0C 00000000 */   nop   
.L800F6C10_ovl2:
/* 07F680 800F6C10 0C001CE0 */  jal   func_80007380
/* 07F684 800F6C14 24843EDC */   addiu $a0, $a0, 0x3edc
.L800F6C18_ovl2:
/* 07F688 800F6C18 3C04800C */  lui   $a0, %hi(D_800BE508) # $a0, 0x800c
/* 07F68C 800F6C1C 0C03DD21 */  jal   func_800F7484
/* 07F690 800F6C20 8C84E508 */   lw    $a0, %lo(D_800BE508)($a0)
/* 07F694 800F6C24 0C02ECFC */  jal   func_800BB3F0
/* 07F698 800F6C28 00000000 */   nop   
/* 07F69C 800F6C2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07F6A0 800F6C30 27BD0018 */  addiu $sp, $sp, 0x18
/* 07F6A4 800F6C34 03E00008 */  jr    $ra
/* 07F6A8 800F6C38 00000000 */   nop   
.type func_800F6AD4, @function
.size func_800F6AD4, . - func_800F6AD4
