glabel func_801E6D50_ovl10
/* 1D7AC0 801E6D50 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D7AC4 801E6D54 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D7AC8 801E6D58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1D7ACC 801E6D5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7AD0 801E6D60 AFA40020 */  sw    $a0, 0x20($sp)
/* 1D7AD4 801E6D64 8DC30000 */  lw    $v1, ($t6)
/* 1D7AD8 801E6D68 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 1D7ADC 801E6D6C 3C18801E */  lui   $t8, %hi(D_801E6E84) # $t8, 0x801e
/* 1D7AE0 801E6D70 00031880 */  sll   $v1, $v1, 2
/* 1D7AE4 801E6D74 01E37821 */  addu  $t7, $t7, $v1
/* 1D7AE8 801E6D78 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 1D7AEC 801E6D7C 3C01800E */ lui $at, %hi(D_800DF150)
/* 1D7AF0 801E6D80 00230821 */  addu  $at, $at, $v1
/* 1D7AF4 801E6D84 27186E84 */  addiu $t8, %lo(D_801E6E84) # addiu $t8, $t8, 0x6e84
/* 1D7AF8 801E6D88 3C04801F */  lui   $a0, %hi(D_801F34F8_ovl10) # $a0, 0x801f
/* 1D7AFC 801E6D8C AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1D7B00 801E6D90 248434F8 */  addiu $a0, %lo(D_801F34F8_ovl10) # addiu $a0, $a0, 0x34f8
/* 1D7B04 801E6D94 0C066220 */  jal   func_80198880_ovl10
/* 1D7B08 801E6D98 AFAF001C */   sw    $t7, 0x1c($sp)
/* 1D7B0C 801E6D9C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D7B10 801E6DA0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7B14 801E6DA4 3C19800E */ lui $t9, %hi(D_800D9E20)
/* 1D7B18 801E6DA8 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D7B1C 801E6DAC 8C430000 */  lw    $v1, ($v0)
/* 1D7B20 801E6DB0 3C040001 */  lui   $a0, (0x00010060 >> 16) # lui $a0, 1
/* 1D7B24 801E6DB4 34840060 */  ori   $a0, (0x00010060 & 0xFFFF) # ori $a0, $a0, 0x60
/* 1D7B28 801E6DB8 00031880 */  sll   $v1, $v1, 2
/* 1D7B2C 801E6DBC 0323C821 */  addu  $t9, $t9, $v1
/* 1D7B30 801E6DC0 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1D7B34 801E6DC4 00230821 */  addu  $at, $at, $v1
/* 1D7B38 801E6DC8 AC39A520 */ sw $t9, %lo(D_800EA520)($at)
/* 1D7B3C 801E6DCC 8C480000 */  lw    $t0, ($v0)
/* 1D7B40 801E6DD0 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D7B44 801E6DD4 00084880 */  sll   $t1, $t0, 2
/* 1D7B48 801E6DD8 00290821 */  addu  $at, $at, $t1
/* 1D7B4C 801E6DDC AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D7B50 801E6DE0 8C430000 */  lw    $v1, ($v0)
/* 1D7B54 801E6DE4 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1D7B58 801E6DE8 00031880 */  sll   $v1, $v1, 2
/* 1D7B5C 801E6DEC 00230821 */  addu  $at, $at, $v1
/* 1D7B60 801E6DF0 C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 1D7B64 801E6DF4 3C01800F */ lui $at, %hi(D_800EB160)
/* 1D7B68 801E6DF8 00230821 */  addu  $at, $at, $v1
/* 1D7B6C 801E6DFC E424B160 */ swc1 $f4, %lo(D_800EB160)($at)
/* 1D7B70 801E6E00 8C4A0000 */  lw    $t2, ($v0)
/* 1D7B74 801E6E04 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D7B78 801E6E08 000A5880 */  sll   $t3, $t2, 2
/* 1D7B7C 801E6E0C 002B0821 */  addu  $at, $at, $t3
/* 1D7B80 801E6E10 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D7B84 801E6E14 8C4C0000 */  lw    $t4, ($v0)
/* 1D7B88 801E6E18 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D7B8C 801E6E1C 000C6880 */  sll   $t5, $t4, 2
/* 1D7B90 801E6E20 002D0821 */  addu  $at, $at, $t5
/* 1D7B94 801E6E24 0C02A5D8 */  jal   func_800A9760
/* 1D7B98 801E6E28 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1D7B9C 801E6E2C 8FAF001C */  lw    $t7, 0x1c($sp)
/* 1D7BA0 801E6E30 3C0E801D */  lui   $t6, %hi(D_801CB590) # $t6, 0x801d
/* 1D7BA4 801E6E34 25CEB590 */  addiu $t6, %lo(D_801CB590) # addiu $t6, $t6, -0x4a70
/* 1D7BA8 801E6E38 3C04801E */  lui   $a0, %hi(D_801E6D08) # $a0, 0x801e
/* 1D7BAC 801E6E3C 24846D08 */  addiu $a0, %lo(D_801E6D08) # addiu $a0, $a0, 0x6d08
/* 1D7BB0 801E6E40 0C068354 */  jal   func_801A0D50
/* 1D7BB4 801E6E44 ADEE0098 */   sw    $t6, 0x98($t7)
/* 1D7BB8 801E6E48 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1D7BBC 801E6E4C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1D7BC0 801E6E50 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D7BC4 801E6E54 3C06801F */  lui   $a2, %hi(D_801F4528_ovl10) # $a2, 0x801f
/* 1D7BC8 801E6E58 8F190000 */  lw    $t9, ($t8)
/* 1D7BCC 801E6E5C 24C64528 */  addiu $a2, %lo(D_801F4528_ovl10) # addiu $a2, $a2, 0x4528
/* 1D7BD0 801E6E60 24050003 */  li    $a1, 3
/* 1D7BD4 801E6E64 00194080 */  sll   $t0, $t9, 2
/* 1D7BD8 801E6E68 00882021 */  addu  $a0, $a0, $t0
/* 1D7BDC 801E6E6C 0C02911F */  jal   call_virtual_function
/* 1D7BE0 801E6E70 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D7BE4 801E6E74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D7BE8 801E6E78 27BD0020 */  addiu $sp, $sp, 0x20
/* 1D7BEC 801E6E7C 03E00008 */  jr    $ra
/* 1D7BF0 801E6E80 00000000 */   nop   
.type func_801E6D50_ovl10, @function
.size func_801E6D50_ovl10, . - func_801E6D50_ovl10
