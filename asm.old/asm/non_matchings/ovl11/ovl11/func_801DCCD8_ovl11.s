glabel func_801DCCD8_ovl11
/* 1E7598 801DCCD8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E759C 801DCCDC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E75A0 801DCCE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E75A4 801DCCE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E75A8 801DCCE8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E75AC 801DCCEC 8C4E0000 */  lw    $t6, ($v0)
/* 1E75B0 801DCCF0 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E75B4 801DCCF4 24180001 */  li    $t8, 1
/* 1E75B8 801DCCF8 000E7880 */  sll   $t7, $t6, 2
/* 1E75BC 801DCCFC 002F0821 */  addu  $at, $at, $t7
/* 1E75C0 801DCD00 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1E75C4 801DCD04 8C590000 */  lw    $t9, ($v0)
/* 1E75C8 801DCD08 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1E75CC 801DCD0C 24090002 */  li    $t1, 2
/* 1E75D0 801DCD10 00194080 */  sll   $t0, $t9, 2
/* 1E75D4 801DCD14 00280821 */  addu  $at, $at, $t0
/* 1E75D8 801DCD18 AC389FE0 */ sw $t8, %lo(D_800E9FE0)($at)
/* 1E75DC 801DCD1C 8C4A0000 */  lw    $t2, ($v0)
/* 1E75E0 801DCD20 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1E75E4 801DCD24 24040174 */  li    $a0, 372
/* 1E75E8 801DCD28 000A5880 */  sll   $t3, $t2, 2
/* 1E75EC 801DCD2C 002B0821 */  addu  $at, $at, $t3
/* 1E75F0 801DCD30 0C029D9E */  jal   play_sound
/* 1E75F4 801DCD34 AC29DFD0 */ sw $t1, %lo(D_800DDFD0)($at)
/* 1E75F8 801DCD38 3C040001 */  lui   $a0, (0x000103FE >> 16) # lui $a0, 1
/* 1E75FC 801DCD3C 0C02A7A9 */  jal   func_800A9EA4
/* 1E7600 801DCD40 348403FE */   ori   $a0, (0x000103FE & 0xFFFF) # ori $a0, $a0, 0x3fe
/* 1E7604 801DCD44 3C040001 */  lui   $a0, (0x000103FD >> 16) # lui $a0, 1
/* 1E7608 801DCD48 0C02A7A9 */  jal   func_800A9EA4
/* 1E760C 801DCD4C 348403FD */   ori   $a0, (0x000103FD & 0xFFFF) # ori $a0, $a0, 0x3fd
/* 1E7610 801DCD50 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1E7614 801DCD54 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1E7618 801DCD58 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E761C 801DCD5C 240C0001 */  li    $t4, 1
/* 1E7620 801DCD60 8DAE0000 */  lw    $t6, ($t5)
/* 1E7624 801DCD64 000E7880 */  sll   $t7, $t6, 2
/* 1E7628 801DCD68 002F0821 */  addu  $at, $at, $t7
/* 1E762C 801DCD6C 0C02BE85 */  jal   func_800AFA14
/* 1E7630 801DCD70 AC2C9E20 */ sw $t4, %lo(D_800E9E20)($at)
/* 1E7634 801DCD74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E7638 801DCD78 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E763C 801DCD7C 03E00008 */  jr    $ra
/* 1E7640 801DCD80 00000000 */   nop   
.type func_801DCCD8_ovl11, @function
.size func_801DCCD8_ovl11, . - func_801DCCD8_ovl11
