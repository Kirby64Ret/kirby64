glabel func_801E0E78_ovl10
/* 1D1BE8 801E0E78 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1D1BEC 801E0E7C 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1D1BF0 801E0E80 8D020000 */  lw    $v0, ($t0)
/* 1D1BF4 801E0E84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D1BF8 801E0E88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D1BFC 801E0E8C AFA40018 */  sw    $a0, 0x18($sp)
/* 1D1C00 801E0E90 8C430000 */  lw    $v1, ($v0)
/* 1D1C04 801E0E94 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1D1C08 801E0E98 24E79AA0 */  addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1D1C0C 801E0E9C 00031880 */  sll   $v1, $v1, 2
/* 1D1C10 801E0EA0 00E33021 */  addu  $a2, $a3, $v1
/* 1D1C14 801E0EA4 8CC50000 */  lw    $a1, ($a2)
/* 1D1C18 801E0EA8 24010001 */  li    $at, 1
/* 1D1C1C 801E0EAC 240E0001 */  li    $t6, 1
/* 1D1C20 801E0EB0 50A0000A */  beql  $a1, $zero, .L801E0EDC_ovl10
/* 1D1C24 801E0EB4 ACCE0000 */   sw    $t6, ($a2)
/* 1D1C28 801E0EB8 10A1000E */  beq   $a1, $at, .L801E0EF4_ovl10
/* 1D1C2C 801E0EBC 24010002 */   li    $at, 2
/* 1D1C30 801E0EC0 10A10025 */  beq   $a1, $at, .L801E0F58_ovl10
/* 1D1C34 801E0EC4 24010003 */   li    $at, 3
/* 1D1C38 801E0EC8 50A1003D */  beql  $a1, $at, .L801E0FC0_ovl10
/* 1D1C3C 801E0ECC ACC00000 */   sw    $zero, ($a2)
/* 1D1C40 801E0ED0 10000040 */  b     .L801E0FD4_ovl10
/* 1D1C44 801E0ED4 00000000 */   nop   
/* 1D1C48 801E0ED8 ACCE0000 */  sw    $t6, ($a2)
.L801E0EDC_ovl10:
/* 1D1C4C 801E0EDC 8C430000 */  lw    $v1, ($v0)
/* 1D1C50 801E0EE0 3C05800F */ lui $a1, %hi(D_800E9AA0)
/* 1D1C54 801E0EE4 00031880 */  sll   $v1, $v1, 2
/* 1D1C58 801E0EE8 00A32821 */  addu  $a1, $a1, $v1
/* 1D1C5C 801E0EEC 10000039 */  b     .L801E0FD4_ovl10
/* 1D1C60 801E0EF0 8CA59AA0 */ lw $a1, %lo(D_800E9AA0)($a1)
.L801E0EF4_ovl10:
/* 1D1C64 801E0EF4 0C006291 */  jal   random_soft_s32_range
/* 1D1C68 801E0EF8 24040008 */   li    $a0, 8
/* 1D1C6C 801E0EFC 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1D1C70 801E0F00 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1D1C74 801E0F04 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1D1C78 801E0F08 14400007 */  bnez  $v0, .L801E0F28_ovl10
/* 1D1C7C 801E0F0C 24E79AA0 */   addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1D1C80 801E0F10 8D020000 */  lw    $v0, ($t0)
/* 1D1C84 801E0F14 8C4F0000 */  lw    $t7, ($v0)
/* 1D1C88 801E0F18 000FC080 */  sll   $t8, $t7, 2
/* 1D1C8C 801E0F1C 00F8C821 */  addu  $t9, $a3, $t8
/* 1D1C90 801E0F20 10000007 */  b     .L801E0F40_ovl10
/* 1D1C94 801E0F24 AF200000 */   sw    $zero, ($t9)
.L801E0F28_ovl10:
/* 1D1C98 801E0F28 8D020000 */  lw    $v0, ($t0)
/* 1D1C9C 801E0F2C 24090002 */  li    $t1, 2
/* 1D1CA0 801E0F30 8C4A0000 */  lw    $t2, ($v0)
/* 1D1CA4 801E0F34 000A5880 */  sll   $t3, $t2, 2
/* 1D1CA8 801E0F38 00EB6021 */  addu  $t4, $a3, $t3
/* 1D1CAC 801E0F3C AD890000 */  sw    $t1, ($t4)
.L801E0F40_ovl10:
/* 1D1CB0 801E0F40 8C430000 */  lw    $v1, ($v0)
/* 1D1CB4 801E0F44 3C05800F */ lui $a1, %hi(D_800E9AA0)
/* 1D1CB8 801E0F48 00031880 */  sll   $v1, $v1, 2
/* 1D1CBC 801E0F4C 00A32821 */  addu  $a1, $a1, $v1
/* 1D1CC0 801E0F50 10000020 */  b     .L801E0FD4_ovl10
/* 1D1CC4 801E0F54 8CA59AA0 */ lw $a1, %lo(D_800E9AA0)($a1)
.L801E0F58_ovl10:
/* 1D1CC8 801E0F58 0C006291 */  jal   random_soft_s32_range
/* 1D1CCC 801E0F5C 24040008 */   li    $a0, 8
/* 1D1CD0 801E0F60 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1D1CD4 801E0F64 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1D1CD8 801E0F68 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1D1CDC 801E0F6C 14400007 */  bnez  $v0, .L801E0F8C_ovl10
/* 1D1CE0 801E0F70 24E79AA0 */   addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1D1CE4 801E0F74 8D020000 */  lw    $v0, ($t0)
/* 1D1CE8 801E0F78 8C4D0000 */  lw    $t5, ($v0)
/* 1D1CEC 801E0F7C 000D7080 */  sll   $t6, $t5, 2
/* 1D1CF0 801E0F80 00EE7821 */  addu  $t7, $a3, $t6
/* 1D1CF4 801E0F84 10000007 */  b     .L801E0FA4_ovl10
/* 1D1CF8 801E0F88 ADE00000 */   sw    $zero, ($t7)
.L801E0F8C_ovl10:
/* 1D1CFC 801E0F8C 8D020000 */  lw    $v0, ($t0)
/* 1D1D00 801E0F90 24180003 */  li    $t8, 3
/* 1D1D04 801E0F94 8C590000 */  lw    $t9, ($v0)
/* 1D1D08 801E0F98 00195080 */  sll   $t2, $t9, 2
/* 1D1D0C 801E0F9C 00EA5821 */  addu  $t3, $a3, $t2
/* 1D1D10 801E0FA0 AD780000 */  sw    $t8, ($t3)
.L801E0FA4_ovl10:
/* 1D1D14 801E0FA4 8C430000 */  lw    $v1, ($v0)
/* 1D1D18 801E0FA8 3C05800F */ lui $a1, %hi(D_800E9AA0)
/* 1D1D1C 801E0FAC 00031880 */  sll   $v1, $v1, 2
/* 1D1D20 801E0FB0 00A32821 */  addu  $a1, $a1, $v1
/* 1D1D24 801E0FB4 10000007 */  b     .L801E0FD4_ovl10
/* 1D1D28 801E0FB8 8CA59AA0 */ lw $a1, %lo(D_800E9AA0)($a1)
/* 1D1D2C 801E0FBC ACC00000 */  sw    $zero, ($a2)
.L801E0FC0_ovl10:
/* 1D1D30 801E0FC0 8C430000 */  lw    $v1, ($v0)
/* 1D1D34 801E0FC4 3C05800F */ lui $a1, %hi(D_800E9AA0)
/* 1D1D38 801E0FC8 00031880 */  sll   $v1, $v1, 2
/* 1D1D3C 801E0FCC 00A32821 */  addu  $a1, $a1, $v1
/* 1D1D40 801E0FD0 8CA59AA0 */ lw $a1, %lo(D_800E9AA0)($a1)
.L801E0FD4_ovl10:
/* 1D1D44 801E0FD4 14A00006 */  bnez  $a1, .L801E0FF0_ovl10
/* 1D1D48 801E0FD8 240C0010 */   li    $t4, 16
/* 1D1D4C 801E0FDC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D1D50 801E0FE0 00230821 */  addu  $at, $at, $v1
/* 1D1D54 801E0FE4 2409000E */  li    $t1, 14
/* 1D1D58 801E0FE8 10000004 */  b     .L801E0FFC_ovl10
/* 1D1D5C 801E0FEC AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
.L801E0FF0_ovl10:
/* 1D1D60 801E0FF0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D1D64 801E0FF4 00230821 */  addu  $at, $at, $v1
/* 1D1D68 801E0FF8 AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
.L801E0FFC_ovl10:
/* 1D1D6C 801E0FFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D1D70 801E1000 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D1D74 801E1004 03E00008 */  jr    $ra
/* 1D1D78 801E1008 00000000 */   nop   
.type func_801E0E78_ovl10, @function
.size func_801E0E78_ovl10, . - func_801E0E78_ovl10
