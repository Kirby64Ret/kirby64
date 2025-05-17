glabel func_801E6444_ovl10
/* 1D71B4 801E6444 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D71B8 801E6448 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D71BC 801E644C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1D71C0 801E6450 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D71C4 801E6454 AFA40020 */  sw    $a0, 0x20($sp)
/* 1D71C8 801E6458 8DC30000 */  lw    $v1, ($t6)
/* 1D71CC 801E645C 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 1D71D0 801E6460 3C18801E */  lui   $t8, %hi(D_801E6564) # $t8, 0x801e
/* 1D71D4 801E6464 00031880 */  sll   $v1, $v1, 2
/* 1D71D8 801E6468 01E37821 */  addu  $t7, $t7, $v1
/* 1D71DC 801E646C 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 1D71E0 801E6470 3C01800E */ lui $at, %hi(D_800DF150)
/* 1D71E4 801E6474 00230821 */  addu  $at, $at, $v1
/* 1D71E8 801E6478 27186564 */  addiu $t8, %lo(D_801E6564) # addiu $t8, $t8, 0x6564
/* 1D71EC 801E647C 3C04801F */  lui   $a0, %hi(D_801F34D4_ovl10) # $a0, 0x801f
/* 1D71F0 801E6480 AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1D71F4 801E6484 248434D4 */  addiu $a0, %lo(D_801F34D4_ovl10) # addiu $a0, $a0, 0x34d4
/* 1D71F8 801E6488 0C066220 */  jal   func_80198880_ovl10
/* 1D71FC 801E648C AFAF001C */   sw    $t7, 0x1c($sp)
/* 1D7200 801E6490 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D7204 801E6494 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7208 801E6498 3C19800E */ lui $t9, %hi(D_800D9E20)
/* 1D720C 801E649C 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D7210 801E64A0 8C430000 */  lw    $v1, ($v0)
/* 1D7214 801E64A4 3C040001 */  lui   $a0, (0x0001005F >> 16) # lui $a0, 1
/* 1D7218 801E64A8 3484005F */  ori   $a0, (0x0001005F & 0xFFFF) # ori $a0, $a0, 0x5f
/* 1D721C 801E64AC 00031880 */  sll   $v1, $v1, 2
/* 1D7220 801E64B0 0323C821 */  addu  $t9, $t9, $v1
/* 1D7224 801E64B4 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1D7228 801E64B8 00230821 */  addu  $at, $at, $v1
/* 1D722C 801E64BC AC39A520 */ sw $t9, %lo(D_800EA520)($at)
/* 1D7230 801E64C0 8C480000 */  lw    $t0, ($v0)
/* 1D7234 801E64C4 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D7238 801E64C8 00084880 */  sll   $t1, $t0, 2
/* 1D723C 801E64CC 00290821 */  addu  $at, $at, $t1
/* 1D7240 801E64D0 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D7244 801E64D4 8C430000 */  lw    $v1, ($v0)
/* 1D7248 801E64D8 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1D724C 801E64DC 00031880 */  sll   $v1, $v1, 2
/* 1D7250 801E64E0 00230821 */  addu  $at, $at, $v1
/* 1D7254 801E64E4 C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 1D7258 801E64E8 3C01800F */ lui $at, %hi(D_800EB160)
/* 1D725C 801E64EC 00230821 */  addu  $at, $at, $v1
/* 1D7260 801E64F0 E424B160 */ swc1 $f4, %lo(D_800EB160)($at)
/* 1D7264 801E64F4 8C4A0000 */  lw    $t2, ($v0)
/* 1D7268 801E64F8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D726C 801E64FC 000A5880 */  sll   $t3, $t2, 2
/* 1D7270 801E6500 002B0821 */  addu  $at, $at, $t3
/* 1D7274 801E6504 0C02A5D8 */  jal   func_800A9760
/* 1D7278 801E6508 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1D727C 801E650C 8FAD001C */  lw    $t5, 0x1c($sp)
/* 1D7280 801E6510 3C0C801D */  lui   $t4, %hi(D_801CB494) # $t4, 0x801d
/* 1D7284 801E6514 258CB494 */  addiu $t4, %lo(D_801CB494) # addiu $t4, $t4, -0x4b6c
/* 1D7288 801E6518 3C04801E */  lui   $a0, %hi(D_801E63FC) # $a0, 0x801e
/* 1D728C 801E651C 248463FC */  addiu $a0, %lo(D_801E63FC) # addiu $a0, $a0, 0x63fc
/* 1D7290 801E6520 0C068354 */  jal   func_801A0D50
/* 1D7294 801E6524 ADAC0098 */   sw    $t4, 0x98($t5)
/* 1D7298 801E6528 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D729C 801E652C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D72A0 801E6530 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D72A4 801E6534 3C06801F */  lui   $a2, %hi(D_801F4510_ovl10) # $a2, 0x801f
/* 1D72A8 801E6538 8DCF0000 */  lw    $t7, ($t6)
/* 1D72AC 801E653C 24C64510 */  addiu $a2, %lo(D_801F4510_ovl10) # addiu $a2, $a2, 0x4510
/* 1D72B0 801E6540 24050003 */  li    $a1, 3
/* 1D72B4 801E6544 000FC080 */  sll   $t8, $t7, 2
/* 1D72B8 801E6548 00982021 */  addu  $a0, $a0, $t8
/* 1D72BC 801E654C 0C02911F */  jal   call_virtual_function
/* 1D72C0 801E6550 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D72C4 801E6554 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D72C8 801E6558 27BD0020 */  addiu $sp, $sp, 0x20
/* 1D72CC 801E655C 03E00008 */  jr    $ra
/* 1D72D0 801E6560 00000000 */   nop   
.type func_801E6444_ovl10, @function
.size func_801E6444_ovl10, . - func_801E6444_ovl10
