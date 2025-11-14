glabel func_801DE454_ovl11
/* 1E8D14 801DE454 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E8D18 801DE458 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E8D1C 801DE45C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E8D20 801DE460 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E8D24 801DE464 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E8D28 801DE468 8DC20000 */  lw    $v0, ($t6)
/* 1E8D2C 801DE46C 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 1E8D30 801DE470 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 1E8D34 801DE474 00021080 */  sll   $v0, $v0, 2
/* 1E8D38 801DE478 00621821 */  addu  $v1, $v1, $v0
/* 1E8D3C 801DE47C 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 1E8D40 801DE480 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 1E8D44 801DE484 906F003C */  lbu   $t7, 0x3c($v1)
/* 1E8D48 801DE488 00581821 */  addu  $v1, $v0, $t8
/* 1E8D4C 801DE48C 55E0002B */  bnezl $t7, .L801DE53C_ovl11
/* 1E8D50 801DE490 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E8D54 801DE494 8C640000 */  lw    $a0, ($v1)
/* 1E8D58 801DE498 2419003C */  li    $t9, 60
/* 1E8D5C 801DE49C 14800025 */  bnez  $a0, .L801DE534_ovl11
/* 1E8D60 801DE4A0 248FFFFF */   addiu $t7, $a0, -1
/* 1E8D64 801DE4A4 0C077896 */  jal   func_801DE258_ovl11
/* 1E8D68 801DE4A8 AC790000 */   sw    $t9, ($v1)
/* 1E8D6C 801DE4AC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1E8D70 801DE4B0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1E8D74 801DE4B4 44802000 */  mtc1  $zero, $f4
/* 1E8D78 801DE4B8 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1E8D7C 801DE4BC 8C680000 */  lw    $t0, ($v1)
/* 1E8D80 801DE4C0 3C0A800F */ lui $t2, %hi(D_800E9560)
/* 1E8D84 801DE4C4 240B0004 */  li    $t3, 4
/* 1E8D88 801DE4C8 00084880 */  sll   $t1, $t0, 2
/* 1E8D8C 801DE4CC 00290821 */  addu  $at, $at, $t1
/* 1E8D90 801DE4D0 E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 1E8D94 801DE4D4 8C620000 */  lw    $v0, ($v1)
/* 1E8D98 801DE4D8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E8D9C 801DE4DC 240C0002 */  li    $t4, 2
/* 1E8DA0 801DE4E0 00021080 */  sll   $v0, $v0, 2
/* 1E8DA4 801DE4E4 01425021 */  addu  $t2, $t2, $v0
/* 1E8DA8 801DE4E8 8D4A9560 */ lw $t2, %lo(D_800E9560)($t2)
/* 1E8DAC 801DE4EC 00220821 */  addu  $at, $at, $v0
/* 1E8DB0 801DE4F0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E8DB4 801DE4F4 11400005 */  beqz  $t2, .L801DE50C_ovl11
/* 1E8DB8 801DE4F8 00000000 */   nop   
/* 1E8DBC 801DE4FC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E8DC0 801DE500 00220821 */  addu  $at, $at, $v0
/* 1E8DC4 801DE504 10000002 */  b     .L801DE510_ovl11
/* 1E8DC8 801DE508 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
.L801DE50C_ovl11:
/* 1E8DCC 801DE50C AC2CDC50 */  sw    $t4, %lo(gEntityVtableIndexArray)($at)
.L801DE510_ovl11:
/* 1E8DD0 801DE510 8C6D0000 */  lw    $t5, ($v1)
/* 1E8DD4 801DE514 3C05801E */  lui   $a1, %hi(D_801DDEC0) # $a1, 0x801e
/* 1E8DD8 801DE518 24A5DEC0 */  addiu $a1, %lo(D_801DDEC0) # addiu $a1, $a1, -0x2140
/* 1E8DDC 801DE51C 000D7080 */  sll   $t6, $t5, 2
/* 1E8DE0 801DE520 008E2021 */  addu  $a0, $a0, $t6
/* 1E8DE4 801DE524 0C02C7B2 */  jal   assign_new_process_entry
/* 1E8DE8 801DE528 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E8DEC 801DE52C 10000003 */  b     .L801DE53C_ovl11
/* 1E8DF0 801DE530 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DE534_ovl11:
/* 1E8DF4 801DE534 AC6F0000 */  sw    $t7, ($v1)
/* 1E8DF8 801DE538 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DE53C_ovl11:
/* 1E8DFC 801DE53C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E8E00 801DE540 03E00008 */  jr    $ra
/* 1E8E04 801DE544 00000000 */   nop   
.type func_801DE454_ovl11, @function
.size func_801DE454_ovl11, . - func_801DE454_ovl11
