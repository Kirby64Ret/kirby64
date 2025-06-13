glabel func_801E91F8_ovl10
/* 1D9F68 801E91F8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D9F6C 801E91FC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D9F70 801E9200 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1D9F74 801E9204 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9F78 801E9208 AFA40020 */  sw    $a0, 0x20($sp)
/* 1D9F7C 801E920C 8DC30000 */  lw    $v1, ($t6)
/* 1D9F80 801E9210 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 1D9F84 801E9214 3C18801F */  lui   $t8, %hi(D_801E932C) # $t8, 0x801f
/* 1D9F88 801E9218 00031880 */  sll   $v1, $v1, 2
/* 1D9F8C 801E921C 01E37821 */  addu  $t7, $t7, $v1
/* 1D9F90 801E9220 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 1D9F94 801E9224 3C01800E */ lui $at, %hi(D_800DF150)
/* 1D9F98 801E9228 00230821 */  addu  $at, $at, $v1
/* 1D9F9C 801E922C 2718932C */  addiu $t8, %lo(D_801E932C) # addiu $t8, $t8, -0x6cd4
/* 1D9FA0 801E9230 3C04801F */  lui   $a0, %hi(D_801F35A8_ovl10) # $a0, 0x801f
/* 1D9FA4 801E9234 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1D9FA8 801E9238 248435A8 */  addiu $a0, %lo(D_801F35A8_ovl10) # addiu $a0, $a0, 0x35a8
/* 1D9FAC 801E923C 0C066220 */  jal   func_80198880_ovl10
/* 1D9FB0 801E9240 AFAF001C */   sw    $t7, 0x1c($sp)
/* 1D9FB4 801E9244 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9FB8 801E9248 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9FBC 801E924C 3C19800E */ lui $t9, %hi(D_800D9E20)
/* 1D9FC0 801E9250 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D9FC4 801E9254 8C430000 */  lw    $v1, ($v0)
/* 1D9FC8 801E9258 3C040001 */  lui   $a0, (0x00010062 >> 16) # lui $a0, 1
/* 1D9FCC 801E925C 34840062 */  ori   $a0, (0x00010062 & 0xFFFF) # ori $a0, $a0, 0x62
/* 1D9FD0 801E9260 00031880 */  sll   $v1, $v1, 2
/* 1D9FD4 801E9264 0323C821 */  addu  $t9, $t9, $v1
/* 1D9FD8 801E9268 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1D9FDC 801E926C 00230821 */  addu  $at, $at, $v1
/* 1D9FE0 801E9270 AC39A520 */ sw $t9, %lo(D_800EA520)($at)
/* 1D9FE4 801E9274 8C480000 */  lw    $t0, ($v0)
/* 1D9FE8 801E9278 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D9FEC 801E927C 00084880 */  sll   $t1, $t0, 2
/* 1D9FF0 801E9280 00290821 */  addu  $at, $at, $t1
/* 1D9FF4 801E9284 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D9FF8 801E9288 8C4A0000 */  lw    $t2, ($v0)
/* 1D9FFC 801E928C 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 1DA000 801E9290 000A5880 */  sll   $t3, $t2, 2
/* 1DA004 801E9294 002B0821 */  addu  $at, $at, $t3
/* 1DA008 801E9298 AC20A1A0 */ sw $zero, %lo(D_800EA1A0)($at)
/* 1DA00C 801E929C 8C430000 */  lw    $v1, ($v0)
/* 1DA010 801E92A0 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1DA014 801E92A4 00031880 */  sll   $v1, $v1, 2
/* 1DA018 801E92A8 00230821 */  addu  $at, $at, $v1
/* 1DA01C 801E92AC C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 1DA020 801E92B0 3C01800F */ lui $at, %hi(D_800EB160)
/* 1DA024 801E92B4 00230821 */  addu  $at, $at, $v1
/* 1DA028 801E92B8 E424B160 */ swc1 $f4, %lo(D_800EB160)($at)
/* 1DA02C 801E92BC 8C4C0000 */  lw    $t4, ($v0)
/* 1DA030 801E92C0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DA034 801E92C4 000C6880 */  sll   $t5, $t4, 2
/* 1DA038 801E92C8 002D0821 */  addu  $at, $at, $t5
/* 1DA03C 801E92CC 0C02A5D8 */  jal   func_800A9760
/* 1DA040 801E92D0 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1DA044 801E92D4 8FAF001C */  lw    $t7, 0x1c($sp)
/* 1DA048 801E92D8 3C0E801F */  lui   $t6, %hi(D_801F4124_ovl10) # $t6, 0x801f
/* 1DA04C 801E92DC 25CE4124 */  addiu $t6, %lo(D_801F4124_ovl10) # addiu $t6, $t6, 0x4124
/* 1DA050 801E92E0 3C04801F */  lui   $a0, %hi(D_801E91B0) # $a0, 0x801f
/* 1DA054 801E92E4 248491B0 */  addiu $a0, %lo(D_801E91B0) # addiu $a0, $a0, -0x6e50
/* 1DA058 801E92E8 0C068354 */  jal   func_801A0D50
/* 1DA05C 801E92EC ADEE0098 */   sw    $t6, 0x98($t7)
/* 1DA060 801E92F0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1DA064 801E92F4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1DA068 801E92F8 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1DA06C 801E92FC 3C06801F */  lui   $a2, %hi(D_801F4588_ovl10) # $a2, 0x801f
/* 1DA070 801E9300 8F190000 */  lw    $t9, ($t8)
/* 1DA074 801E9304 24C64588 */  addiu $a2, %lo(D_801F4588_ovl10) # addiu $a2, $a2, 0x4588
/* 1DA078 801E9308 24050006 */  li    $a1, 6
/* 1DA07C 801E930C 00194080 */  sll   $t0, $t9, 2
/* 1DA080 801E9310 00882021 */  addu  $a0, $a0, $t0
/* 1DA084 801E9314 0C02911F */  jal   call_virtual_function
/* 1DA088 801E9318 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1DA08C 801E931C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DA090 801E9320 27BD0020 */  addiu $sp, $sp, 0x20
/* 1DA094 801E9324 03E00008 */  jr    $ra
/* 1DA098 801E9328 00000000 */   nop   
.type func_801E91F8_ovl10, @function
.size func_801E91F8_ovl10, . - func_801E91F8_ovl10
