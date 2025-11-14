glabel func_801DFC4C_ovl16
/* 215EFC 801DFC4C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 215F00 801DFC50 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 215F04 801DFC54 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 215F08 801DFC58 8C620000 */  lw    $v0, ($v1)
/* 215F0C 801DFC5C AFBF001C */  sw    $ra, 0x1c($sp)
/* 215F10 801DFC60 AFB00018 */  sw    $s0, 0x18($sp)
/* 215F14 801DFC64 AFA40020 */  sw    $a0, 0x20($sp)
/* 215F18 801DFC68 8C4F0000 */  lw    $t7, ($v0)
/* 215F1C 801DFC6C 3C0E800B */  lui   $t6, %hi(D_800B7560) # $t6, 0x800b
/* 215F20 801DFC70 3C01800E */ lui $at, %hi(D_800DEF90)
/* 215F24 801DFC74 000FC080 */  sll   $t8, $t7, 2
/* 215F28 801DFC78 00380821 */  addu  $at, $at, $t8
/* 215F2C 801DFC7C 25CE7560 */  addiu $t6, %lo(D_800B7560) # addiu $t6, $t6, 0x7560
/* 215F30 801DFC80 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 215F34 801DFC84 8C480000 */  lw    $t0, ($v0)
/* 215F38 801DFC88 3C0A800E */ lui $t2, %hi(D_800E1B50)
/* 215F3C 801DFC8C 3C19801E */  lui   $t9, %hi(D_801DAEF4) # $t9, 0x801e
/* 215F40 801DFC90 00084880 */  sll   $t1, $t0, 2
/* 215F44 801DFC94 01495021 */  addu  $t2, $t2, $t1
/* 215F48 801DFC98 8D4A1B50 */ lw $t2, %lo(D_800E1B50)($t2)
/* 215F4C 801DFC9C 2739AEF4 */  addiu $t9, %lo(D_801DAEF4) # addiu $t9, $t9, -0x510c
/* 215F50 801DFCA0 3C01800F */ lui $at, %hi(D_800E8920)
/* 215F54 801DFCA4 AD590098 */  sw    $t9, 0x98($t2)
/* 215F58 801DFCA8 8C6B0000 */  lw    $t3, ($v1)
/* 215F5C 801DFCAC 8D6C0000 */  lw    $t4, ($t3)
/* 215F60 801DFCB0 000C6880 */  sll   $t5, $t4, 2
/* 215F64 801DFCB4 002D0821 */  addu  $at, $at, $t5
/* 215F68 801DFCB8 0C02CCFD */  jal   func_800B33F4
/* 215F6C 801DFCBC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 215F70 801DFCC0 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 215F74 801DFCC4 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 215F78 801DFCC8 240F0001 */  li    $t7, 1
/* 215F7C 801DFCCC AE0F0010 */  sw    $t7, 0x10($s0)
/* 215F80 801DFCD0 0C006291 */  jal   random_soft_s32_range
/* 215F84 801DFCD4 24040003 */   li    $a0, 3
/* 215F88 801DFCD8 8E0E001C */  lw    $t6, 0x1c($s0)
/* 215F8C 801DFCDC 144E0006 */  bne   $v0, $t6, .L801DFCF8_ovl16
/* 215F90 801DFCE0 00000000 */   nop   
.L801DFCE4_ovl16:
/* 215F94 801DFCE4 0C006291 */  jal   random_soft_s32_range
/* 215F98 801DFCE8 24040003 */   li    $a0, 3
/* 215F9C 801DFCEC 8E18001C */  lw    $t8, 0x1c($s0)
/* 215FA0 801DFCF0 1058FFFC */  beq   $v0, $t8, .L801DFCE4_ovl16
/* 215FA4 801DFCF4 00000000 */   nop   
.L801DFCF8_ovl16:
/* 215FA8 801DFCF8 3C01800D */  lui   $at, %hi(D_800D70B4) # $at, 0x800d
/* 215FAC 801DFCFC AC2270B4 */  sw    $v0, %lo(D_800D70B4)($at)
/* 215FB0 801DFD00 3C01800D */  lui   $at, %hi(D_800D70A0) # $at, 0x800d
/* 215FB4 801DFD04 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 215FB8 801DFD08 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 215FBC 801DFD0C AC2270A0 */  sw    $v0, %lo(D_800D70A0)($at)
/* 215FC0 801DFD10 8E080008 */  lw    $t0, 8($s0)
/* 215FC4 801DFD14 8D4B0000 */  lw    $t3, ($t2)
/* 215FC8 801DFD18 3C19801F */ lui $t9, %hi(D_801EF864_ovl16)
/* 215FCC 801DFD1C 00084880 */  sll   $t1, $t0, 2
/* 215FD0 801DFD20 8FBF001C */  lw    $ra, 0x1c($sp)
/* 215FD4 801DFD24 0329C821 */  addu  $t9, $t9, $t1
/* 215FD8 801DFD28 8F39F864 */ lw $t9, %lo(D_801EF864_ovl16)($t9)
/* 215FDC 801DFD2C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 215FE0 801DFD30 000B6080 */  sll   $t4, $t3, 2
/* 215FE4 801DFD34 002C0821 */  addu  $at, $at, $t4
/* 215FE8 801DFD38 8FB00018 */  lw    $s0, 0x18($sp)
/* 215FEC 801DFD3C 27BD0020 */  addiu $sp, $sp, 0x20
/* 215FF0 801DFD40 03E00008 */  jr    $ra
/* 215FF4 801DFD44 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.type func_801DFC4C_ovl16, @function
.size func_801DFC4C_ovl16, . - func_801DFC4C_ovl16
