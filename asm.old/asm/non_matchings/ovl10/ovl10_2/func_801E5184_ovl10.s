glabel func_801E5184_ovl10
/* 1D5EF4 801E5184 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D5EF8 801E5188 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D5EFC 801E518C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D5F00 801E5190 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D5F04 801E5194 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D5F08 801E5198 8C4E0000 */  lw    $t6, ($v0)
/* 1D5F0C 801E519C 44802000 */  mtc1  $zero, $f4
/* 1D5F10 801E51A0 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 1D5F14 801E51A4 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 1D5F18 801E51A8 000E7880 */  sll   $t7, $t6, 2
/* 1D5F1C 801E51AC 006FC021 */  addu  $t8, $v1, $t7
/* 1D5F20 801E51B0 E7040000 */  swc1  $f4, ($t8)
/* 1D5F24 801E51B4 8C480000 */  lw    $t0, ($v0)
/* 1D5F28 801E51B8 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D5F2C 801E51BC 24190001 */  li    $t9, 1
/* 1D5F30 801E51C0 00084880 */  sll   $t1, $t0, 2
/* 1D5F34 801E51C4 00290821 */  addu  $at, $at, $t1
/* 1D5F38 801E51C8 AC399C60 */ sw $t9, %lo(D_800E9C60)($at)
/* 1D5F3C 801E51CC 8C4A0000 */  lw    $t2, ($v0)
/* 1D5F40 801E51D0 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D5F44 801E51D4 240C0008 */  li    $t4, 8
/* 1D5F48 801E51D8 000A5880 */  sll   $t3, $t2, 2
/* 1D5F4C 801E51DC 002B0821 */  addu  $at, $at, $t3
/* 1D5F50 801E51E0 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1D5F54 801E51E4 8C4D0000 */  lw    $t5, ($v0)
/* 1D5F58 801E51E8 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D5F5C 801E51EC 3C0F801E */  lui   $t7, %hi(D_801DB478) # $t7, 0x801e
/* 1D5F60 801E51F0 000D7080 */  sll   $t6, $t5, 2
/* 1D5F64 801E51F4 002E0821 */  addu  $at, $at, $t6
/* 1D5F68 801E51F8 AC2CDFD0 */ sw $t4, %lo(D_800DDFD0)($at)
/* 1D5F6C 801E51FC 8C580000 */  lw    $t8, ($v0)
/* 1D5F70 801E5200 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1D5F74 801E5204 25EFB478 */  addiu $t7, %lo(D_801DB478) # addiu $t7, $t7, -0x4b88
/* 1D5F78 801E5208 00184080 */  sll   $t0, $t8, 2
/* 1D5F7C 801E520C 00280821 */  addu  $at, $at, $t0
/* 1D5F80 801E5210 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 1D5F84 801E5214 8C590000 */  lw    $t9, ($v0)
/* 1D5F88 801E5218 00194880 */  sll   $t1, $t9, 2
/* 1D5F8C 801E521C 00695021 */  addu  $t2, $v1, $t1
/* 1D5F90 801E5220 0C07973C */  jal   func_801E5CF0_ovl10
/* 1D5F94 801E5224 C54C0000 */   lwc1  $f12, ($t2)
/* 1D5F98 801E5228 3C040001 */  lui   $a0, (0x00010329 >> 16) # lui $a0, 1
/* 1D5F9C 801E522C 0C02A7A9 */  jal   func_800A9EA4
/* 1D5FA0 801E5230 34840329 */   ori   $a0, (0x00010329 & 0xFFFF) # ori $a0, $a0, 0x329
/* 1D5FA4 801E5234 3C040001 */  lui   $a0, (0x00010328 >> 16) # lui $a0, 1
/* 1D5FA8 801E5238 34840328 */  ori   $a0, (0x00010328 & 0xFFFF) # ori $a0, $a0, 0x328
/* 1D5FAC 801E523C 0C02AA19 */  jal   func_800AA864
/* 1D5FB0 801E5240 24050001 */   li    $a1, 1
/* 1D5FB4 801E5244 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1D5FB8 801E5248 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1D5FBC 801E524C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D5FC0 801E5250 240B0001 */  li    $t3, 1
/* 1D5FC4 801E5254 8DAC0000 */  lw    $t4, ($t5)
/* 1D5FC8 801E5258 000C7080 */  sll   $t6, $t4, 2
/* 1D5FCC 801E525C 002E0821 */  addu  $at, $at, $t6
/* 1D5FD0 801E5260 0C02BE85 */  jal   func_800AFA14
/* 1D5FD4 801E5264 AC2B9E20 */ sw $t3, %lo(D_800E9E20)($at)
/* 1D5FD8 801E5268 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D5FDC 801E526C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D5FE0 801E5270 03E00008 */  jr    $ra
/* 1D5FE4 801E5274 00000000 */   nop   
.type func_801E5184_ovl10, @function
.size func_801E5184_ovl10, . - func_801E5184_ovl10
