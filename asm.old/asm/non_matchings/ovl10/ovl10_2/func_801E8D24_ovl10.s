glabel func_801E8D24_ovl10
/* 1D9A94 801E8D24 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9A98 801E8D28 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9A9C 801E8D2C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1D9AA0 801E8D30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9AA4 801E8D34 AFA40048 */  sw    $a0, 0x48($sp)
/* 1D9AA8 801E8D38 8C4E0000 */  lw    $t6, ($v0)
/* 1D9AAC 801E8D3C 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D9AB0 801E8D40 24080001 */  li    $t0, 1
/* 1D9AB4 801E8D44 000E7880 */  sll   $t7, $t6, 2
/* 1D9AB8 801E8D48 002F0821 */  addu  $at, $at, $t7
/* 1D9ABC 801E8D4C AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D9AC0 801E8D50 8C580000 */  lw    $t8, ($v0)
/* 1D9AC4 801E8D54 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D9AC8 801E8D58 3C040001 */  lui   $a0, (0x00010360 >> 16) # lui $a0, 1
/* 1D9ACC 801E8D5C 0018C880 */  sll   $t9, $t8, 2
/* 1D9AD0 801E8D60 00390821 */  addu  $at, $at, $t9
/* 1D9AD4 801E8D64 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1D9AD8 801E8D68 8C490000 */  lw    $t1, ($v0)
/* 1D9ADC 801E8D6C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D9AE0 801E8D70 34840360 */  ori   $a0, (0x00010360 & 0xFFFF) # ori $a0, $a0, 0x360
/* 1D9AE4 801E8D74 00095080 */  sll   $t2, $t1, 2
/* 1D9AE8 801E8D78 002A0821 */  addu  $at, $at, $t2
/* 1D9AEC 801E8D7C AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 1D9AF0 801E8D80 8C4B0000 */  lw    $t3, ($v0)
/* 1D9AF4 801E8D84 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1D9AF8 801E8D88 44812000 */  mtc1  $at, $f4
/* 1D9AFC 801E8D8C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1D9B00 801E8D90 000B6080 */  sll   $t4, $t3, 2
/* 1D9B04 801E8D94 002C0821 */  addu  $at, $at, $t4
/* 1D9B08 801E8D98 24050002 */  li    $a1, 2
/* 1D9B0C 801E8D9C 0C02AA19 */  jal   func_800AA864
/* 1D9B10 801E8DA0 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1D9B14 801E8DA4 0C0798F9 */  jal   func_801E63E4_ovl10
/* 1D9B18 801E8DA8 27A40040 */   addiu $a0, $sp, 0x40
/* 1D9B1C 801E8DAC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9B20 801E8DB0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9B24 801E8DB4 C7A60040 */  lwc1  $f6, 0x40($sp)
/* 1D9B28 801E8DB8 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 1D9B2C 801E8DBC 8C4D0000 */  lw    $t5, ($v0)
/* 1D9B30 801E8DC0 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 1D9B34 801E8DC4 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 1D9B38 801E8DC8 000D7080 */  sll   $t6, $t5, 2
/* 1D9B3C 801E8DCC 006E7821 */  addu  $t7, $v1, $t6
/* 1D9B40 801E8DD0 E5E60000 */  swc1  $f6, ($t7)
/* 1D9B44 801E8DD4 93A50044 */  lbu   $a1, 0x44($sp)
/* 1D9B48 801E8DD8 44815000 */  mtc1  $at, $f10
/* 1D9B4C 801E8DDC 44808000 */  mtc1  $zero, $f16
/* 1D9B50 801E8DE0 A3A5003F */  sb    $a1, 0x3f($sp)
/* 1D9B54 801E8DE4 8C590000 */  lw    $t9, ($v0)
/* 1D9B58 801E8DE8 3C06BECC */  lui   $a2, (0xBECCCCCD >> 16) # lui $a2, 0xbecc
/* 1D9B5C 801E8DEC 34C6CCCD */  ori   $a2, (0xBECCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 1D9B60 801E8DF0 00194880 */  sll   $t1, $t9, 2
/* 1D9B64 801E8DF4 00694021 */  addu  $t0, $v1, $t1
/* 1D9B68 801E8DF8 C5080000 */  lwc1  $f8, ($t0)
/* 1D9B6C 801E8DFC 27A40030 */  addiu $a0, $sp, 0x30
/* 1D9B70 801E8E00 E7AA0034 */  swc1  $f10, 0x34($sp)
/* 1D9B74 801E8E04 E7B00038 */  swc1  $f16, 0x38($sp)
/* 1D9B78 801E8E08 0C0796C2 */  jal   func_801E5B08_ovl10
/* 1D9B7C 801E8E0C E7A80030 */   swc1  $f8, 0x30($sp)
/* 1D9B80 801E8E10 0C002DAF */  jal   finish_current_thread
/* 1D9B84 801E8E14 93A4003F */   lbu   $a0, 0x3f($sp)
/* 1D9B88 801E8E18 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9B8C 801E8E1C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9B90 801E8E20 44809000 */  mtc1  $zero, $f18
/* 1D9B94 801E8E24 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 1D9B98 801E8E28 8C4A0000 */  lw    $t2, ($v0)
/* 1D9B9C 801E8E2C 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 1D9BA0 801E8E30 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D9BA4 801E8E34 000A5880 */  sll   $t3, $t2, 2
/* 1D9BA8 801E8E38 008B6021 */  addu  $t4, $a0, $t3
/* 1D9BAC 801E8E3C E5920000 */  swc1  $f18, ($t4)
/* 1D9BB0 801E8E40 8C430000 */  lw    $v1, ($v0)
/* 1D9BB4 801E8E44 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 1D9BB8 801E8E48 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 1D9BBC 801E8E4C 00031880 */  sll   $v1, $v1, 2
/* 1D9BC0 801E8E50 00836821 */  addu  $t5, $a0, $v1
/* 1D9BC4 801E8E54 C5A00000 */  lwc1  $f0, ($t5)
/* 1D9BC8 801E8E58 00230821 */  addu  $at, $at, $v1
/* 1D9BCC 801E8E5C E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1D9BD0 801E8E60 8C4E0000 */  lw    $t6, ($v0)
/* 1D9BD4 801E8E64 3C01800E */ lui $at, %hi(D_800E3590)
/* 1D9BD8 801E8E68 000E7880 */  sll   $t7, $t6, 2
/* 1D9BDC 801E8E6C 002F0821 */  addu  $at, $at, $t7
/* 1D9BE0 801E8E70 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1D9BE4 801E8E74 8C590000 */  lw    $t9, ($v0)
/* 1D9BE8 801E8E78 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1D9BEC 801E8E7C 00194880 */  sll   $t1, $t9, 2
/* 1D9BF0 801E8E80 00290821 */  addu  $at, $at, $t1
/* 1D9BF4 801E8E84 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1D9BF8 801E8E88 8C480000 */  lw    $t0, ($v0)
/* 1D9BFC 801E8E8C 3C01800E */ lui $at, %hi(D_800E3210)
/* 1D9C00 801E8E90 0008C080 */  sll   $t8, $t0, 2
/* 1D9C04 801E8E94 00380821 */  addu  $at, $at, $t8
/* 1D9C08 801E8E98 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1D9C0C 801E8E9C 8C4A0000 */  lw    $t2, ($v0)
/* 1D9C10 801E8EA0 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D9C14 801E8EA4 24080001 */  li    $t0, 1
/* 1D9C18 801E8EA8 000A5880 */  sll   $t3, $t2, 2
/* 1D9C1C 801E8EAC 002B0821 */  addu  $at, $at, $t3
/* 1D9C20 801E8EB0 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1D9C24 801E8EB4 8C4C0000 */  lw    $t4, ($v0)
/* 1D9C28 801E8EB8 3C01801F */  lui   $at, %hi(D_801F4B48_ovl10) # $at, 0x801f
/* 1D9C2C 801E8EBC C4244B48 */  lwc1  $f4, %lo(D_801F4B48_ovl10)($at)
/* 1D9C30 801E8EC0 000C6880 */  sll   $t5, $t4, 2
/* 1D9C34 801E8EC4 00AD7021 */  addu  $t6, $a1, $t5
/* 1D9C38 801E8EC8 E5C40000 */  swc1  $f4, ($t6)
/* 1D9C3C 801E8ECC 8C430000 */  lw    $v1, ($v0)
/* 1D9C40 801E8ED0 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1D9C44 801E8ED4 00031880 */  sll   $v1, $v1, 2
/* 1D9C48 801E8ED8 00A37821 */  addu  $t7, $a1, $v1
/* 1D9C4C 801E8EDC C5E20000 */  lwc1  $f2, ($t7)
/* 1D9C50 801E8EE0 00230821 */  addu  $at, $at, $v1
/* 1D9C54 801E8EE4 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1D9C58 801E8EE8 8C590000 */  lw    $t9, ($v0)
/* 1D9C5C 801E8EEC 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1D9C60 801E8EF0 00194880 */  sll   $t1, $t9, 2
/* 1D9C64 801E8EF4 00290821 */  addu  $at, $at, $t1
/* 1D9C68 801E8EF8 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1D9C6C 801E8EFC 8C580000 */  lw    $t8, ($v0)
/* 1D9C70 801E8F00 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D9C74 801E8F04 00185080 */  sll   $t2, $t8, 2
/* 1D9C78 801E8F08 002A0821 */  addu  $at, $at, $t2
/* 1D9C7C 801E8F0C 0C02BE85 */  jal   func_800AFA14
/* 1D9C80 801E8F10 AC289E20 */ sw $t0, %lo(D_800E9E20)($at)
/* 1D9C84 801E8F14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D9C88 801E8F18 27BD0048 */  addiu $sp, $sp, 0x48
/* 1D9C8C 801E8F1C 03E00008 */  jr    $ra
/* 1D9C90 801E8F20 00000000 */   nop   
.type func_801E8D24_ovl10, @function
.size func_801E8D24_ovl10, . - func_801E8D24_ovl10
