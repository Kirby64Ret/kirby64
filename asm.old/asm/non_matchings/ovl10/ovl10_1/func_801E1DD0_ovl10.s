glabel func_801E1DD0_ovl10
/* 1D2B40 801E1DD0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1D2B44 801E1DD4 AFB00024 */  sw    $s0, 0x24($sp)
/* 1D2B48 801E1DD8 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 1D2B4C 801E1DDC 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 1D2B50 801E1DE0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 1D2B54 801E1DE4 AFB30030 */  sw    $s3, 0x30($sp)
/* 1D2B58 801E1DE8 AFB2002C */  sw    $s2, 0x2c($sp)
/* 1D2B5C 801E1DEC AFB10028 */  sw    $s1, 0x28($sp)
/* 1D2B60 801E1DF0 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 1D2B64 801E1DF4 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1D2B68 801E1DF8 AFA40038 */  sw    $a0, 0x38($sp)
/* 1D2B6C 801E1DFC 0C02BB30 */  jal   func_800AECC0
/* 1D2B70 801E1E00 C60C0000 */   lwc1  $f12, ($s0)
/* 1D2B74 801E1E04 0C02BB48 */  jal   func_800AED20
/* 1D2B78 801E1E08 C60C0000 */   lwc1  $f12, ($s0)
/* 1D2B7C 801E1E0C 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1D2B80 801E1E10 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1D2B84 801E1E14 8E630000 */  lw    $v1, ($s3)
/* 1D2B88 801E1E18 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D2B8C 801E1E1C 240E000F */  li    $t6, 15
/* 1D2B90 801E1E20 8C6F0000 */  lw    $t7, ($v1)
/* 1D2B94 801E1E24 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1D2B98 801E1E28 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1D2B9C 801E1E2C 000FC080 */  sll   $t8, $t7, 2
/* 1D2BA0 801E1E30 00380821 */  addu  $at, $at, $t8
/* 1D2BA4 801E1E34 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1D2BA8 801E1E38 8C680000 */  lw    $t0, ($v1)
/* 1D2BAC 801E1E3C 3C19801F */  lui   $t9, %hi(D_801F3AA8_ovl10) # $t9, 0x801f
/* 1D2BB0 801E1E40 27393AA8 */  addiu $t9, %lo(D_801F3AA8_ovl10) # addiu $t9, $t9, 0x3aa8
/* 1D2BB4 801E1E44 00084880 */  sll   $t1, $t0, 2
/* 1D2BB8 801E1E48 00495021 */  addu  $t2, $v0, $t1
/* 1D2BBC 801E1E4C 8D4B0000 */  lw    $t3, ($t2)
/* 1D2BC0 801E1E50 3C0C801F */  lui   $t4, %hi(D_801F4094_ovl10) # $t4, 0x801f
/* 1D2BC4 801E1E54 258C4094 */  addiu $t4, %lo(D_801F4094_ovl10) # addiu $t4, $t4, 0x4094
/* 1D2BC8 801E1E58 AD79008C */  sw    $t9, 0x8c($t3)
/* 1D2BCC 801E1E5C 8E6D0000 */  lw    $t5, ($s3)
/* 1D2BD0 801E1E60 8DAF0000 */  lw    $t7, ($t5)
/* 1D2BD4 801E1E64 000F7080 */  sll   $t6, $t7, 2
/* 1D2BD8 801E1E68 004EC021 */  addu  $t8, $v0, $t6
/* 1D2BDC 801E1E6C 8F080000 */  lw    $t0, ($t8)
/* 1D2BE0 801E1E70 0C02CCFD */  jal   func_800B33F4
/* 1D2BE4 801E1E74 AD0C0098 */   sw    $t4, 0x98($t0)
/* 1D2BE8 801E1E78 0C029D9E */  jal   play_sound
/* 1D2BEC 801E1E7C 240401DE */   li    $a0, 478
/* 1D2BF0 801E1E80 3C040001 */  lui   $a0, (0x000102F9 >> 16) # lui $a0, 1
/* 1D2BF4 801E1E84 0C02A806 */  jal   func_800AA018
/* 1D2BF8 801E1E88 348402F9 */   ori   $a0, (0x000102F9 & 0xFFFF) # ori $a0, $a0, 0x2f9
/* 1D2BFC 801E1E8C 3C040001 */  lui   $a0, (0x000102F8 >> 16) # lui $a0, 1
/* 1D2C00 801E1E90 0C02A855 */  jal   func_800AA154
/* 1D2C04 801E1E94 348402F8 */   ori   $a0, (0x000102F8 & 0xFFFF) # ori $a0, $a0, 0x2f8
/* 1D2C08 801E1E98 3C040001 */  lui   $a0, (0x000102FB >> 16) # lui $a0, 1
/* 1D2C0C 801E1E9C 0C02A806 */  jal   func_800AA018
/* 1D2C10 801E1EA0 348402FB */   ori   $a0, (0x000102FB & 0xFFFF) # ori $a0, $a0, 0x2fb
/* 1D2C14 801E1EA4 3C040001 */  lui   $a0, (0x000102FA >> 16) # lui $a0, 1
/* 1D2C18 801E1EA8 0C02A855 */  jal   func_800AA154
/* 1D2C1C 801E1EAC 348402FA */   ori   $a0, (0x000102FA & 0xFFFF) # ori $a0, $a0, 0x2fa
/* 1D2C20 801E1EB0 8E630000 */  lw    $v1, ($s3)
/* 1D2C24 801E1EB4 3C10800F */  lui   $s0, %hi(D_800EA520) # $s0, 0x800f
/* 1D2C28 801E1EB8 2610A520 */  addiu $s0, %lo(D_800EA520) # addiu $s0, $s0, -0x5ae0
/* 1D2C2C 801E1EBC 8C690000 */  lw    $t1, ($v1)
/* 1D2C30 801E1EC0 3C120001 */  lui   $s2, (0x000102FC >> 16) # lui $s2, 1
/* 1D2C34 801E1EC4 365202FC */  ori   $s2, (0x000102FC & 0xFFFF) # ori $s2, $s2, 0x2fc
/* 1D2C38 801E1EC8 00095080 */  sll   $t2, $t1, 2
/* 1D2C3C 801E1ECC 020AC821 */  addu  $t9, $s0, $t2
/* 1D2C40 801E1ED0 AF200000 */  sw    $zero, ($t9)
/* 1D2C44 801E1ED4 8C6B0000 */  lw    $t3, ($v1)
/* 1D2C48 801E1ED8 3C110001 */  lui   $s1, (0x000102FD >> 16) # lui $s1, 1
/* 1D2C4C 801E1EDC 000B6880 */  sll   $t5, $t3, 2
/* 1D2C50 801E1EE0 020D7821 */  addu  $t7, $s0, $t5
/* 1D2C54 801E1EE4 8DEE0000 */  lw    $t6, ($t7)
/* 1D2C58 801E1EE8 29C10003 */  slti  $at, $t6, 3
/* 1D2C5C 801E1EEC 10200024 */  beqz  $at, .L801E1F80_ovl10
/* 1D2C60 801E1EF0 3C01420C */   li    $at, 0x420C0000 # 35.000000
/* 1D2C64 801E1EF4 4481B000 */  mtc1  $at, $f22
/* 1D2C68 801E1EF8 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 1D2C6C 801E1EFC 4481A000 */  mtc1  $at, $f20
/* 1D2C70 801E1F00 363102FD */  ori   $s1, (0x000102FD & 0xFFFF) # ori $s1, $s1, 0x2fd
.L801E1F04_ovl10:
/* 1D2C74 801E1F04 0C02A806 */  jal   func_800AA018
/* 1D2C78 801E1F08 02202025 */   move  $a0, $s1
/* 1D2C7C 801E1F0C 0C02A806 */  jal   func_800AA018
/* 1D2C80 801E1F10 02402025 */   move  $a0, $s2
/* 1D2C84 801E1F14 0C002DAF */  jal   finish_current_thread
/* 1D2C88 801E1F18 24040005 */   li    $a0, 5
/* 1D2C8C 801E1F1C 4406A000 */  mfc1  $a2, $f20
/* 1D2C90 801E1F20 4407B000 */  mfc1  $a3, $f22
/* 1D2C94 801E1F24 24040007 */  li    $a0, 7
/* 1D2C98 801E1F28 0C06B328 */  jal   func_801ACCA0_ovl10
/* 1D2C9C 801E1F2C 24050002 */   li    $a1, 2
/* 1D2CA0 801E1F30 0C029D9E */  jal   play_sound
/* 1D2CA4 801E1F34 240401E0 */   li    $a0, 480
/* 1D2CA8 801E1F38 0C02BC9F */  jal   func_800AF27C
/* 1D2CAC 801E1F3C 00000000 */   nop   
/* 1D2CB0 801E1F40 0C002DAF */  jal   finish_current_thread
/* 1D2CB4 801E1F44 2404000F */   li    $a0, 15
/* 1D2CB8 801E1F48 8E630000 */  lw    $v1, ($s3)
/* 1D2CBC 801E1F4C 8C780000 */  lw    $t8, ($v1)
/* 1D2CC0 801E1F50 00186080 */  sll   $t4, $t8, 2
/* 1D2CC4 801E1F54 020C1021 */  addu  $v0, $s0, $t4
/* 1D2CC8 801E1F58 8C480000 */  lw    $t0, ($v0)
/* 1D2CCC 801E1F5C 25090001 */  addiu $t1, $t0, 1
/* 1D2CD0 801E1F60 AC490000 */  sw    $t1, ($v0)
/* 1D2CD4 801E1F64 8C6A0000 */  lw    $t2, ($v1)
/* 1D2CD8 801E1F68 000AC880 */  sll   $t9, $t2, 2
/* 1D2CDC 801E1F6C 02195821 */  addu  $t3, $s0, $t9
/* 1D2CE0 801E1F70 8D6D0000 */  lw    $t5, ($t3)
/* 1D2CE4 801E1F74 29A10003 */  slti  $at, $t5, 3
/* 1D2CE8 801E1F78 1420FFE2 */  bnez  $at, .L801E1F04_ovl10
/* 1D2CEC 801E1F7C 00000000 */   nop   
.L801E1F80_ovl10:
/* 1D2CF0 801E1F80 3C040001 */  lui   $a0, (0x000102FF >> 16) # lui $a0, 1
/* 1D2CF4 801E1F84 0C02A806 */  jal   func_800AA018
/* 1D2CF8 801E1F88 348402FF */   ori   $a0, (0x000102FF & 0xFFFF) # ori $a0, $a0, 0x2ff
/* 1D2CFC 801E1F8C 3C040001 */  lui   $a0, (0x000102FE >> 16) # lui $a0, 1
/* 1D2D00 801E1F90 0C02A855 */  jal   func_800AA154
/* 1D2D04 801E1F94 348402FE */   ori   $a0, (0x000102FE & 0xFFFF) # ori $a0, $a0, 0x2fe
/* 1D2D08 801E1F98 8E6E0000 */  lw    $t6, ($s3)
/* 1D2D0C 801E1F9C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 1D2D10 801E1FA0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D2D14 801E1FA4 8DD80000 */  lw    $t8, ($t6)
/* 1D2D18 801E1FA8 240F000B */  li    $t7, 11
/* 1D2D1C 801E1FAC 8FB30030 */  lw    $s3, 0x30($sp)
/* 1D2D20 801E1FB0 00186080 */  sll   $t4, $t8, 2
/* 1D2D24 801E1FB4 002C0821 */  addu  $at, $at, $t4
/* 1D2D28 801E1FB8 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1D2D2C 801E1FBC D7B60018 */  ldc1  $f22, 0x18($sp)
/* 1D2D30 801E1FC0 8FB00024 */  lw    $s0, 0x24($sp)
/* 1D2D34 801E1FC4 8FB10028 */  lw    $s1, 0x28($sp)
/* 1D2D38 801E1FC8 8FB2002C */  lw    $s2, 0x2c($sp)
/* 1D2D3C 801E1FCC AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1D2D40 801E1FD0 03E00008 */  jr    $ra
/* 1D2D44 801E1FD4 27BD0038 */   addiu $sp, $sp, 0x38
.type func_801E1DD0_ovl10, @function
.size func_801E1DD0_ovl10, . - func_801E1DD0_ovl10
